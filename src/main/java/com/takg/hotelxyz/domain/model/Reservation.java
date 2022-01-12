package com.takg.hotelxyz.domain.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

@Entity
@Getter
@Setter
public class Reservation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "reserv_id")
    private Long id;

    @Column(nullable = false)
    @NotNull(message = "Check in date required")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private LocalDate checkInDate;

    @Column(nullable = false)
    @NotNull(message = "Check out date required")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private LocalDate checkOutDate;

    @ManyToOne
    @JoinColumn(name = "guest_id", nullable = false)
    private Guest guest;

    @ManyToOne
    @JoinColumn(name = "room_no", nullable = false)
    private Room room;

    @OneToOne(mappedBy = "reservation")
    private Invoice invoice;

    @Min(1)
    @Column(nullable = false)
    private int adults;

    @Column(nullable = false)
    @Enumerated(EnumType.ORDINAL)
    private ReservationStatus status = ReservationStatus.Pending;

    @Column(nullable = true)
    private int rating;

    public BigDecimal getTotalRoomCost() {

        if (checkInDate == null || checkOutDate == null) {
            return BigDecimal.ZERO;
        }

        long nights = ChronoUnit.DAYS.between(checkInDate, checkOutDate);
        return room.getCostPerNight().multiply(BigDecimal.valueOf(nights));
    }

    @Override
    public String toString() {
        return "Reservation{" +
                "checkInDate=" + checkInDate +
                ", checkOutDate=" + checkOutDate +
                ", guest=" + guest +
                ", room=" + room +
                ", invoice=" + invoice +
                ", adults=" + adults +
                ", status=" + status +
                '}';
    }
}
