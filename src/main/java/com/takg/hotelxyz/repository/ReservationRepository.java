package com.takg.hotelxyz.repository;

import com.takg.hotelxyz.domain.model.RoomReservation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReservationRepository extends JpaRepository<RoomReservation, Long> {
}
