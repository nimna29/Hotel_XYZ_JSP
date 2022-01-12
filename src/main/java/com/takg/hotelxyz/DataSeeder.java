package com.takg.hotelxyz;

import com.takg.hotelxyz.domain.model.Guest;
import com.takg.hotelxyz.domain.model.Invoice;
import com.takg.hotelxyz.domain.model.Reservation;
import com.takg.hotelxyz.domain.model.RoomType;
import com.takg.hotelxyz.repository.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import javax.transaction.Transactional;
import java.math.BigDecimal;
import java.time.LocalDate;

@Slf4j
@Component
public class DataSeeder implements ApplicationRunner {

    private final RoomRepository roomRepository;
    private final GuestRepository guestRepository;
    private final ReservationRepository reservationRepository;
    private final InvoiceRepository invoiceRepository;

    private final JavaMailSender emailSender;


    public DataSeeder(RoomRepository roomRepository, GuestRepository guestRepository, ReservationRepository reservationRepository, InvoiceRepository invoiceRepository, JavaMailSender emailSender) {
        this.roomRepository = roomRepository;
        this.guestRepository = guestRepository;
        this.reservationRepository = reservationRepository;
        this.invoiceRepository = invoiceRepository;
        this.emailSender = emailSender;
    }

    @Override
    @Transactional
    public void run(ApplicationArguments args) throws Exception {

        // 3 Floors
        for (var j = 1;  j <= 3; j++) {

            // 4 Deluxe Rooms
            for (var i = 1;  i < 5; i++) {
                var room = RoomFactory.createRoom(j*100+i, j, RoomType.Deluxe);
                room.setCostPerNight(BigDecimal.valueOf(10_000));
                roomRepository.save(room);
            }

            // 2 Premium Rooms
            for (var i = 5;  i <  7; i++) {
                var room = RoomFactory.createRoom(j*100+i, j, RoomType.Premium);
                room.setCostPerNight(BigDecimal.valueOf(15_000));
                roomRepository.save(room);
            }

            // 1 Suit
            var room = RoomFactory.createRoom(j*100+7, j, RoomType.Suit);
            room.setCostPerNight(BigDecimal.valueOf(30_000));
            roomRepository.save(room);
        }

        var rooms = roomRepository.findByRoomType(RoomType.Deluxe);

        var guest = new Guest();
        guest.setFirstName("Nimna");
        guest.setLastName("Galpola");
        guest.setEmail("nimna@google.com");
        guest.setNic("201234566V");
        guest.setMobileNo("0701111000");

        guestRepository.save(guest);

        var reservation = new Reservation();
        reservation.setCheckInDate(LocalDate.now());
        reservation.setCheckOutDate(LocalDate.now().plusDays(2));
        reservation.setAdults(1);
        reservation.setGuest(guest);
        reservation.setRoom(rooms.get(0));

        var invoice = new Invoice();
        invoice.setAmount(reservation.getTotalRoomCost());
        invoice.setReservation(reservation);


        reservation.setInvoice(invoice);

        reservationRepository.save(reservation);
        invoiceRepository.save(invoice);

//        SimpleMailMessage message = new SimpleMailMessage();
//        message.setFrom("noreply@hotelxyz.com");
//        message.setTo(guest.getEmail());
//        message.setSubject("Reservation: #"  +  reservation.getId());
//        message.setText(reservation.toString());
//        emailSender.send(message);

    }
}
