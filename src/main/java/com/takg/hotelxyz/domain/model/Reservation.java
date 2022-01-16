package com.takg.hotelxyz.domain.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@Setter
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name="reservation_type",
        discriminatorType = DiscriminatorType.INTEGER)
public class Reservation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "reservation_id")
    protected Long id;

    @ManyToOne
    @JoinColumn(name = "guest_id", nullable = false)
    private Guest guest;

    @Column(nullable = false)
    @Enumerated(EnumType.ORDINAL)
    private ReservationStatus status = ReservationStatus.Pending;

    @Column(nullable = true)
    private int rating;

    @OneToOne(mappedBy = "reservation")
    private Invoice invoice;
}
