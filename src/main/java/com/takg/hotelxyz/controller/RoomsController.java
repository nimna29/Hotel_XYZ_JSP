package com.takg.hotelxyz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RoomsController {
    @GetMapping("rooms")
    public String showRooms(Model model) {
        model.addAttribute("title", "ROOMS");
        return "rooms";
    }

    @GetMapping("deluxe-room")
    public String showDeluxe(Model model) {
        model.addAttribute("title", "Deluxe");
        return "deluxe-room";
    }

    @GetMapping("premium-room")
    public String showPremium(Model model) {
        model.addAttribute("title", "Premium");
        return "premium-room";

    }

    @GetMapping("suit-room")
    public String showSuit(Model model) {
        model.addAttribute("title", "Suit");
        return "suit-room";

    }

}
