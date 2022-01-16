package com.takg.hotelxyz;

import com.takg.hotelxyz.domain.model.RoomReservation;

import java.time.LocalDate;

public class RoomReservationFactory extends AbstractReservationFactory {

    public static RoomReservation getReservation(LocalDate checkIn, LocalDate checkout) {
        RoomReservation roomReservation = (RoomReservation) getReservation(ReservationType.Room);
        roomReservation.setCheckInDate(checkIn);
        roomReservation.setCheckOutDate(checkout);

        return roomReservation;
    }
}
