package com.takg.hotelxyz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FacilityController {
    @GetMapping("facilities")
    public String showFacilities(Model model)
    {
        model.addAttribute("title","Facilities");
        return "/facilities";
    }
}
