package com.takg.hotelxyz;

import com.takg.hotelxyz.domain.model.HallReservation;

import java.time.LocalDate;

public class HallReservationFactory extends AbstractReservationFactory {

    public static HallReservation getReservation(LocalDate date) {
        HallReservation hallReservation = (HallReservation) getReservation(ReservationType.Hall);
        hallReservation.setDate(date);

        return hallReservation;
    }
}