package com.takg.hotelxyz.domain.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.List;

@Entity
@Getter
@Setter
public class Guest {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long guestId;

    @Column(nullable = false)
    @NotNull(message = "required")
    private String firstName;

    @Column(nullable = false)
    @NotNull(message = "required")
    private String lastName;

    @Column
    private String nic;

    @Column
    private String passport;

    @Column(nullable = false)
    private String email;

    @Column(nullable = false)
    private String mobileNo;

    @OneToMany(mappedBy = "guest")
    private List<Reservation> reservations;

    @Override
    public String toString() {
        return "Guest{" +
                "guestId=" + guestId +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", nic='" + nic + '\'' +
                ", passport='" + passport + '\'' +
                ", email='" + email + '\'' +
                ", mobileNo='" + mobileNo + '\'' +
                '}';
    }
}