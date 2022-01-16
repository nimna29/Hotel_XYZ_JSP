package com.takg.hotelxyz.domain.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@Entity
@DiscriminatorValue("1")
public class RoomReservation extends Reservation {

    @Column(nullable = false)
    @NotNull(message = "Check in date required")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private LocalDate checkInDate;

    @Column(nullable = false)
    @NotNull(message = "Check out date required")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private LocalDate checkOutDate;

    @ManyToMany(mappedBy = "reservations")
    private Set<Room> rooms;

    public void addRoom(Room room)
    {
        if (rooms == null) {
            rooms = new HashSet<>();
        }
        rooms.add(room);
    }

    public BigDecimal getTotalRoomCost() {

        if (checkInDate == null || checkOutDate == null) {
            return BigDecimal.ZERO;
        }

        long nights = ChronoUnit.DAYS.between(checkInDate, checkOutDate);
        return rooms.stream()
                .map(Room::getCostPerNight)
                .map(s -> s.multiply(BigDecimal.valueOf(nights)))
                .reduce(BigDecimal.ZERO, BigDecimal::add);
    }

    @Override
    public String toString() {
        return "RoomReservation{" +
                "id=" + id +
                ", checkInDate=" + checkInDate +
                ", checkOutDate=" + checkOutDate +
                ", rooms=" + rooms +
                '}';
    }
}
