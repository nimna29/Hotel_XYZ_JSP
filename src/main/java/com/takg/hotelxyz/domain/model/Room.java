package com.takg.hotelxyz.domain.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

@Entity
@Getter
@Setter
public class Room   {
    @Id
    @Column(name = "room_number", nullable = false)
    private int roomNumber;

    @Column(nullable = false)
    private Integer floor;

    @Column(nullable = false)
    @Enumerated(EnumType.STRING)
    private RoomType roomType;

    @Column(nullable = false)
    private int beds;

    @Column(nullable = false)
    private BigDecimal costPerNight;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "reservation_room",
            joinColumns = @JoinColumn(name = "room_number", nullable = false),
            inverseJoinColumns = @JoinColumn(name = "reservation_id", nullable = false))
    private Set<RoomReservation> reservations;

    public void addReservation(RoomReservation reservation)
    {
        if (reservations == null) {
            reservations = new HashSet<>();
        }
        reservations.add(reservation);
    }

    @Override
    public String toString() {
        return "Room{" +
                "roomNumber=" + roomNumber +
                ", floor=" + floor +
                ", roomType=" + roomType +
                ", beds=" + beds +
                ", costPerNight=" + costPerNight +
                '}';
    }
}