package com.takg.hotelxyz.controller;

import com.takg.hotelxyz.repository.ReservationRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
    private final ReservationRepository reservationRepository;

    public AdminController(ReservationRepository reservationRepository) {
        this.reservationRepository = reservationRepository;
    }

    @GetMapping
    public String viewBookings(Model model)
    {
        var reservations = reservationRepository
                .findAll();

        model.addAttribute("reservations", reservations);

        return "admin/reservations";
    }

    @GetMapping("/reservation/{id}")
    public String viewSingle(@PathVariable("id") long id, Model model)
    {
        var reservation = reservationRepository
                .findById(id);

        model.addAttribute("reservation", reservation.get());

        return "admin/single";
    }
}
