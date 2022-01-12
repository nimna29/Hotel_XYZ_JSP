package com.takg.hotelxyz.repository;

import com.takg.hotelxyz.domain.model.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {
}
