package com.takg.hotelxyz.repository;

import com.takg.hotelxyz.domain.model.Guest;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GuestRepository extends JpaRepository<Guest, Long> {
}
