package com.takg.hotelxyz.domain.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.time.LocalDate;

@Entity
@Getter
@Setter
@DiscriminatorValue("2")
public class HallReservation extends Reservation {

    private LocalDate date;

    @ManyToOne
    @JoinColumn(name = "hall_number")
    private Hall hall;
}
