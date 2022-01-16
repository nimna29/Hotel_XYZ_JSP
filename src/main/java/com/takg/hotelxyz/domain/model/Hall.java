package com.takg.hotelxyz.domain.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.util.Set;

@Entity
@Getter
@Setter
public class Hall  {
    @Id
    @Column(name = "hall_number", nullable = false)
    private Long hallNumber;

    @Column(nullable = false)
    public String name;

    @Column(nullable = false)
    private Integer capacity;

    @OneToMany(mappedBy = "hall")
    private Set<HallReservation> reservations;
}
