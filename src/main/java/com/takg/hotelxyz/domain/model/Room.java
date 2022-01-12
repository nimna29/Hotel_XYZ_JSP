package com.takg.hotelxyz.domain.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;

@Entity
@Getter
@Setter
public class Room {
    @Id
    private Integer roomNumber;

    @Column(nullable = false)
    private Integer floor;

    @Column(nullable = false)
    @Enumerated(EnumType.STRING)
    private RoomType roomType;

    @Column(nullable = false)
    private int beds;

    @Column(nullable = false)
    private BigDecimal costPerNight;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "room")
    private List<Reservation> reservations;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Room room = (Room) o;

        return getRoomNumber() != null ? getRoomNumber().equals(room.getRoomNumber()) : room.getRoomNumber() == null;
    }

    @Override
    public int hashCode() {
        return getRoomNumber() != null ? getRoomNumber().hashCode() : 0;
    }
}