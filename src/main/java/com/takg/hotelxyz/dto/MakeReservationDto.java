package com.takg.hotelxyz.dto;

import com.takg.hotelxyz.domain.model.RoomType;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

@Getter
@Setter
public class MakeReservationDto {
    private String firstName;

    private String lastName;

    private String nic;

    private String passport;

    private String email;

    private String mobileNo;

    private  int paxRooms;

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private LocalDate checkInDate;

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private LocalDate checkOutDate;

    private RoomType roomType;


}
