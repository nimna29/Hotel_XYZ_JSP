package com.takg.hotelxyz.booking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = "/rooms")
public class RoomController {
    @GetMapping
    public String rooms(Model model){
        model.addAttribute("title","ROOMS");
        return "rooms";
    }
}
