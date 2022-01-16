package com.takg.hotelxyz;

import com.takg.hotelxyz.domain.model.HallReservation;
import com.takg.hotelxyz.domain.model.Invoice;
import com.takg.hotelxyz.domain.model.Reservation;
import com.takg.hotelxyz.domain.model.RoomReservation;

public class AbstractReservationFactory {
    static Reservation getReservation(ReservationType type)
    {
        Reservation reservation;
        switch (type)
        {
            case Hall:
                reservation  = new HallReservation();
                break;
            case Room:
                reservation = new RoomReservation();
                break;
             default:
                 throw new IllegalArgumentException("Invalid reservation type");
        }

        // every reservation include an invoice
        reservation.setInvoice(new Invoice());
        return reservation;
    }
}
