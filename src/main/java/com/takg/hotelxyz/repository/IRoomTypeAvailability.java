package com.takg.hotelxyz.repository;

import com.takg.hotelxyz.domain.model.RoomType;

import java.math.BigDecimal;

public interface IRoomTypeAvailability {
    RoomType getRoomType();
    Long getTotalRooms();
    BigDecimal getMinPerNightCost();
}
