package com.takg.hotelxyz.repository;

import com.takg.hotelxyz.domain.model.Room;
import com.takg.hotelxyz.domain.model.RoomType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDate;
import java.util.List;

public interface RoomRepository extends JpaRepository<Room, Integer> {
    @Query("FROM Room AS r WHERE NOT EXISTS (SELECT b.id FROM RoomReservation b JOIN b.rooms rm  " +
            "WHERE rm.roomNumber = r.roomNumber AND b.checkInDate < :checkOutDate and b.checkOutDate > :checkInDate)")
    List<Room> findAvailableRoomsByCheckInAndCheckOut(
            @Param("checkInDate") LocalDate checkInDate,
            @Param("checkOutDate") LocalDate checkOutDate);


    @Query("FROM Room AS r WHERE NOT EXISTS (SELECT b.id FROM RoomReservation b JOIN b.rooms rm  " +
            "WHERE rm.roomNumber = r.roomNumber AND b.checkInDate < :checkOutDate and b.checkOutDate > :checkInDate) AND r.roomType = :roomType")
    List<Room> findAvailableRoomsByCheckInAndCheckOutAndRoomType(
            @Param("checkInDate") LocalDate checkInDate,
            @Param("checkOutDate") LocalDate checkOutDate,
            @Param("roomType") RoomType roomType);

    List<Room> findByRoomType(RoomType roomType);

}
