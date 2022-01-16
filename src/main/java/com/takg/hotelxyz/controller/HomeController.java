package com.takg.hotelxyz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/")
    public String showHome(Model model)
    {
        model.addAttribute("title","HOME");
        return  "home2";
    }
}
