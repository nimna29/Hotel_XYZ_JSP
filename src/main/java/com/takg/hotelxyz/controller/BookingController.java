package com.takg.hotelxyz.controller;

import com.takg.hotelxyz.domain.model.Room;
import com.takg.hotelxyz.domain.model.RoomType;
import com.takg.hotelxyz.dto.RoomAvailabilityViewModel;
import com.takg.hotelxyz.services.BookingService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.util.stream.Collectors;

import static java.util.stream.Collectors.groupingBy;

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
            @RequestParam(name = "check_in", required = false)  @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate checkInDate,
            @RequestParam(name = "check_out", required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate checkOutDate,
            @RequestParam(name = "rooms", required = false,  defaultValue = "1") Integer paxRooms,
            Model model
    )
    {
        logger.info("[checkInDate]  = " + checkInDate + " [checkOutDate]  = " + checkOutDate + " [paxR]  = " + paxRooms);


        model.addAttribute("check_in", checkInDate);
        model.addAttribute("check_out", checkOutDate);
        model.addAttribute("pax_rooms", paxRooms);

        if (checkOutDate != null)
        {
            var rooms =  bookingService.getAvailableRooms(checkInDate, checkOutDate);
            var roomsByTypes = rooms.stream().collect(groupingBy(Room::getRoomType));

            var roomAvailability = new RoomAvailabilityViewModel();
            roomAvailability.setTotalCount(rooms.size());
            roomAvailability.setDeluxeCount(roomsByTypes.get(RoomType.Deluxe).size());
            roomAvailability.setPremiumCount(roomsByTypes.get(RoomType.Premium).size());
            roomAvailability.setSuitCount(roomsByTypes.get(RoomType.Suit).size());

            model.addAttribute("room_availability", roomAvailability);
//            model.addAttribute("rooms", roomsByTypes);
//            model.addAttribute("deluxe_room_count", deluxeRooms);
        }

        return "roombookingform";
    }
}
