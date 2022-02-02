package com.takg.hotelxyz.dto;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class RoomAvailabilityViewModel {
    private int totalCount;
    private int deluxeCount;
    private int premiumCount;
    private int suitCount;


}
