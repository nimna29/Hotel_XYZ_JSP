package com.takg.hotelxyz.booking.controller;

import com.takg.hotelxyz.booking.controller.dto.RoomSearchRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = "/roombookingform")
public class BookingController {
    @GetMapping
    public String roomBookingForm(Model model){
        model.addAttribute("title","BOOKING FORM");
        return "roombookingform";
    }
}
