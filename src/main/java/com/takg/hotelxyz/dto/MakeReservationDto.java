package com.takg.hotelxyz.dto;

import com.takg.hotelxyz.domain.model.Guest;
import com.takg.hotelxyz.domain.model.RoomType;
import lombok.Getter;

import java.time.LocalDate;

@Getter
public class MakeReservationDto {
    private final Guest guest;
    private final int adults;
    private final LocalDate checkInDate;
    private final LocalDate checkOutDate;
    private final RoomType roomType;

    public MakeReservationDto(Guest guest, int adults, LocalDate checkInDate, LocalDate checkOutDate, RoomType roomType) {
        this.guest = guest;
        this.adults = adults;
        this.checkInDate = checkInDate;
        this.checkOutDate = checkOutDate;
        this.roomType = roomType;
    }
}
