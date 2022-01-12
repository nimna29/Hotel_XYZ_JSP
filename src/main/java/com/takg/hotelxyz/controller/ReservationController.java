package com.takg.hotelxyz.controller;

import com.takg.hotelxyz.domain.model.Reservation;
import com.takg.hotelxyz.domain.model.RoomType;
import com.takg.hotelxyz.services.BookingService;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;

@Controller
@RequestMapping("/reservations")
public class ReservationController {

    private final BookingService bookingService;

    public ReservationController(BookingService bookingService) {
        this.bookingService = bookingService;
    }

    @GetMapping
    @RequestMapping("/{roomType}")
    public String showReservationForm(
            @PathVariable("roomType") RoomType roomType,

            @RequestParam(name = "check_in", required = false)
            @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
            LocalDate checkInDate,

            @RequestParam(name = "check_out", required = false)
            @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
                    LocalDate checkOutDate,

            @RequestParam(name="adults", required = false,  defaultValue = "1") Integer adults,
            Model model) throws Exception {
        var room = bookingService.getAvailableRoom(checkInDate, checkOutDate, roomType);
        if  (room.isEmpty())
        {
            throw new Exception("No Rooms available for reservation");
        }
        var reservation = new Reservation();
        reservation.setCheckInDate(checkInDate);
        reservation.setCheckInDate(checkOutDate);
        reservation.setRoom(room.get());



        model.addAttribute("check_in", checkInDate);
        model.addAttribute("check_out", checkOutDate);
        model.addAttribute("adults", adults);
        model.addAttribute("room", room.get());
        model.addAttribute("total", reservation.getTotalRoomCost());

        return "reservations/form";
    }

    // POST
}
