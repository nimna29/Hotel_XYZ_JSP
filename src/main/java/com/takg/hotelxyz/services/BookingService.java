package com.takg.hotelxyz.services;

import com.takg.hotelxyz.RoomReservationFactory;
import com.takg.hotelxyz.domain.model.Guest;
import com.takg.hotelxyz.domain.model.Reservation;
import com.takg.hotelxyz.domain.model.Room;
import com.takg.hotelxyz.domain.model.RoomType;
import com.takg.hotelxyz.dto.MakeReservationDto;
import com.takg.hotelxyz.repository.GuestRepository;
import com.takg.hotelxyz.repository.InvoiceRepository;
import com.takg.hotelxyz.repository.ReservationRepository;
import com.takg.hotelxyz.repository.RoomRepository;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.transaction.Transactional;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.time.LocalDate;
import java.util.*;
import java.util.stream.Collectors;

@Service
@Scope(value = ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class BookingService {
    private final RoomRepository roomRepository;
    private final GuestRepository guestRepository;
    private final ReservationRepository reservationRepository;
    private final InvoiceRepository invoiceRepository;
    private final JavaMailSender emailSender;

    private final Configuration config;

    public BookingService(RoomRepository roomRepository, GuestRepository guestRepository, ReservationRepository reservationRepository, InvoiceRepository invoiceRepository, JavaMailSender emailSender, Configuration config) {
        this.roomRepository = roomRepository;
        this.guestRepository = guestRepository;
        this.reservationRepository = reservationRepository;
        this.invoiceRepository = invoiceRepository;
        this.emailSender = emailSender;
        this.config = config;
    }


    public List<Room> getAvailableRooms(LocalDate checkInDate, LocalDate checkOutDate)
    {
         return roomRepository.findAvailableRoomsByCheckInAndCheckOut(checkInDate, checkOutDate);
    }

    public List<Room> getAvailableRooms(LocalDate checkInDate, LocalDate checkOutDate, RoomType roomType)
    {
        return roomRepository.findAvailableRoomsByCheckInAndCheckOutAndRoomType(checkInDate, checkOutDate, roomType);
    }


    @Transactional
    public Optional<Reservation> placeReservation(MakeReservationDto reservationDto) throws TemplateException, IOException, MessagingException {

        // Since one reservation does not include two room types
        synchronized (reservationDto.getRoomType())
        {
            var roomsSelected = getAvailableRooms(
                    reservationDto.getCheckInDate(),
                    reservationDto.getCheckOutDate(),
                    reservationDto.getRoomType())
                    .stream().sorted(Comparator.comparing(Room::getCostPerNight))
                    .limit(reservationDto.getPaxRooms())
                    .collect(Collectors.toList());

            if (roomsSelected.isEmpty())
            {
                return Optional.empty();
            }

            Guest guest = new Guest();
            guest.setFirstName(reservationDto.getFirstName());
            guest.setLastName(reservationDto.getLastName());
            guest.setEmail(reservationDto.getEmail());
            guest.setNic(reservationDto.getNic());
            guest.setPassport(reservationDto.getPassport());
            guest.setMobileNo(reservationDto.getMobileNo());

            guestRepository.save(guest);

            var reservation = RoomReservationFactory.getReservation(
                    reservationDto.getCheckInDate(),
                    reservationDto.getCheckOutDate()
            );
            reservation.setGuest(guest);

            var invoice = reservation.getInvoice();
            invoice.setReservation(reservation);

            for(var room : roomsSelected)
            {
                reservation.addRoom(room);
                room.addReservation(reservation);

                invoice.addLine("Room Charge: " + room.getRoomType(), room.getCostPerNight());
            }
            reservation.setInvoice(invoice);

            reservationRepository.save(reservation);
            invoiceRepository.save(invoice);

            for(var room : roomsSelected)
            {
                room.addReservation(reservation);
                roomRepository.save(room);
            }

            MimeMessage message = emailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, MimeMessageHelper.MULTIPART_MODE_MIXED_RELATED,
                    StandardCharsets.UTF_8.name());

            Template t = config.getTemplate("email-template.ftl");

            Map<String, Object> model = new HashMap<>();
            model.put("name", reservation.getGuest().getFirstName());
            model.put("total", reservation.getInvoice().getTotal());
            model.put("reservationId", reservation.getId());
            model.put("roomType", reservationDto.getRoomType());
            model.put("rooms", reservation.getRooms().size());
            model.put("nights", reservation);

            model.put("checkIn", reservation.getCheckInDate());
            model.put("checkOut", reservation.getCheckOutDate());

            String html = FreeMarkerTemplateUtils.processTemplateIntoString(t, model);

            helper.setTo( guest.getEmail());
            helper.setFrom("noreply@hotelxyz.com");
            helper.setSubject("Reservation: #"  +  String.format("%03d" , reservation.getId()));
            helper.setText(html, true);
            emailSender.send(message);


            return Optional.of(reservation);
        }
    }
}
