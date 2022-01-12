package com.takg.hotelxyz.services;

import com.takg.hotelxyz.domain.model.Invoice;
import com.takg.hotelxyz.domain.model.Reservation;
import com.takg.hotelxyz.domain.model.Room;
import com.takg.hotelxyz.domain.model.RoomType;
import com.takg.hotelxyz.dto.MakeReservationDto;
import com.takg.hotelxyz.repository.*;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.time.LocalDate;
import java.util.Comparator;
import java.util.List;
import java.util.Optional;

@Service
public class BookingService {
    private final RoomRepository roomRepository;
    private final GuestRepository guestRepository;
    private final ReservationRepository reservationRepository;
    private final InvoiceRepository invoiceRepository;

    public BookingService(RoomRepository roomRepository, GuestRepository guestRepository, ReservationRepository reservationRepository, InvoiceRepository invoiceRepository) {
        this.roomRepository = roomRepository;
        this.guestRepository = guestRepository;
        this.reservationRepository = reservationRepository;
        this.invoiceRepository = invoiceRepository;
    }

    public List<IRoomTypeAvailability> getAvailableRoomTypes(LocalDate checkInDate, LocalDate checkOutDate)
    {
        return roomRepository.findAvailableRoomTypeCountMinCostPerNightByCheckInDateAndCheckOutDate(
                        checkInDate,
                        checkOutDate
                );
    }

    public List<Room> getAvailableRooms(LocalDate checkInDate, LocalDate checkOutDate, RoomType roomType)
    {
        return roomRepository.findAvailableRoomsByRoomTypeCheckInDateAndCheckOutDate(checkInDate, checkOutDate, roomType);
    }

    public Optional<Room> getAvailableRoom(LocalDate checkInDate, LocalDate checkOutDate, RoomType roomType)
    {
        return getAvailableRooms( checkInDate,  checkOutDate,  roomType)
                .stream()
                .min(Comparator.comparing(Room::getCostPerNight));
    }

    @Transactional
    public Optional<Reservation> makeReservation(MakeReservationDto reservationDto)  {

        var availableRooms  = roomRepository
                .findAvailableRoomsByRoomTypeCheckInDateAndCheckOutDate(
                        reservationDto.getCheckInDate(),
                        reservationDto.getCheckOutDate(),
                        reservationDto.getRoomType()
                );

        if (availableRooms.isEmpty())
        {
            return Optional.empty();
        }

        // Since one reservation does not include two room types
        synchronized (reservationDto.getRoomType())
        {
            guestRepository.save(reservationDto.getGuest());

            var reservation = new Reservation();
            reservation.setCheckInDate(reservationDto.getCheckInDate());
            reservation.setCheckOutDate(reservationDto.getCheckOutDate());
            reservation.setAdults(reservationDto.getAdults());
            reservation.setGuest(reservationDto.getGuest());
            reservation.setRoom(availableRooms.get(0));

            var invoice = new Invoice();
            invoice.setAmount(reservation.getTotalRoomCost());
            invoice.setReservation(reservation);

            reservationRepository.save(reservation);
            invoiceRepository.save(invoice);

            return Optional.of(reservation);
        }
    }
}
