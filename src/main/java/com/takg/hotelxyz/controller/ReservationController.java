package com.takg.hotelxyz.controller;

import com.takg.hotelxyz.domain.model.Room;
import com.takg.hotelxyz.domain.model.RoomReservation;
import com.takg.hotelxyz.domain.model.RoomType;
import com.takg.hotelxyz.dto.MakeReservationDto;
import com.takg.hotelxyz.services.BookingService;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.Comparator;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/reservations")
public class ReservationController {

    private final BookingService bookingService;

    public ReservationController(BookingService bookingService) {
        this.bookingService = bookingService;
    }

    @GetMapping
    public String showReservationForm(
            @RequestParam(name = "room_type") RoomType roomType,
            @RequestParam(name = "check_in", required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate checkInDate,
            @RequestParam(name = "check_out", required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate checkOutDate,
            @RequestParam(name = "rooms", required = false,  defaultValue = "1") Integer paxRooms,
            Model model) throws Exception {
        var rooms = bookingService.getAvailableRooms(checkInDate, checkOutDate, roomType);

        if (rooms.size() < paxRooms)
        {
            throw new Exception("Not Enough rooms available");
        }

        var roomsSelected = rooms.stream().sorted(Comparator.comparing(Room::getCostPerNight))
                .limit(paxRooms)
                .collect(Collectors.toList());

        var reservation = new RoomReservation();
        reservation.setCheckInDate(checkInDate);
        reservation.setCheckOutDate(checkOutDate);

        for(var room : roomsSelected)
        {
            reservation.addRoom(room);
        }

        model.addAttribute("room_type", roomType);
        model.addAttribute("check_in", checkInDate);
        model.addAttribute("check_out", checkOutDate);
        model.addAttribute("pax_rooms", paxRooms);
        model.addAttribute("total", reservation.getTotalRoomCost());

        var createReservation = new MakeReservationDto();
        createReservation.setRoomType(roomType);
        createReservation.setPaxRooms(paxRooms);
        createReservation.setCheckInDate(checkInDate);
        createReservation.setCheckOutDate(checkOutDate);

        model.addAttribute("reservation", createReservation);

        return "reservations/form2";
    }

    @PostMapping()
    public  String handleReservation(@ModelAttribute("reservation")  MakeReservationDto reservationDto) throws Exception {
        var reservation = bookingService.placeReservation(reservationDto);
        if (reservation.isPresent())
        {
            return "reservations/complete";
        }
        return "reservations/form2";
    }
}
