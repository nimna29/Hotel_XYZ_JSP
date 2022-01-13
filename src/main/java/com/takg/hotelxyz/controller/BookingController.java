package com.takg.hotelxyz.controller;

import com.takg.hotelxyz.services.BookingService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.time.LocalDate;

@Controller
@RequestMapping("/booking")
public class BookingController {
    private final BookingService bookingService;
    private final Logger logger = LoggerFactory.getLogger(BookingController.class);

    public BookingController(BookingService bookingService) {
        this.bookingService = bookingService;
    }

    @GetMapping
    public String checkAvailability(
            @RequestParam(name = "check_in", required = false)
            @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
                    LocalDate checkInDate,
            @RequestParam(name = "check_out", required = false)
            @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
                    LocalDate checkOutDate,
            @RequestParam(name="adults", required = false,  defaultValue = "1") Integer adults,
            Model model,
            HttpSession session
    )
    {
        logger.info("[checkInDate]  = " + checkInDate + " [checkOutDate]  = " + checkOutDate + " [paxAdults]  = " + adults);



        model.addAttribute("check_in", checkInDate);
        model.addAttribute("check_out", checkOutDate);
        model.addAttribute("adults", adults);

        if (checkOutDate != null)
        {
            var availableTypes = bookingService.getAvailableRoomTypes(checkInDate, checkOutDate);
            model.addAttribute("availableTypes", availableTypes);
        }

        return "roombookingform";
    }
}
