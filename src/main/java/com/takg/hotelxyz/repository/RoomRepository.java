package com.takg.hotelxyz.repository;

import com.takg.hotelxyz.domain.model.Room;
import com.takg.hotelxyz.domain.model.RoomType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDate;
import java.util.List;

public interface RoomRepository extends JpaRepository<Room, Integer> {
    @Query("SELECT r.roomType AS roomType, COUNT(r.roomType) AS totalRooms, MIN(r.costPerNight) AS minPerNightCost FROM Room AS r " +
            "WHERE NOT EXISTS (SELECT b.id FROM Reservation b " +
            "WHERE b.room.roomNumber = r.roomNumber and b.checkInDate < :checkOutDate and b.checkOutDate > :checkInDate) GROUP BY r.roomType")
    List<IRoomTypeAvailability> findAvailableRoomTypeCountMinCostPerNightByCheckInDateAndCheckOutDate(
            @Param("checkInDate") LocalDate checkInDate,
            @Param("checkOutDate") LocalDate checkOutDate);


    @Query("FROM Room AS r " +
            "WHERE NOT EXISTS (SELECT b.id FROM Reservation b " +
            "WHERE b.room.roomNumber = r.roomNumber and b.checkInDate < :checkOutDate and b.checkOutDate > :checkInDate)" +
            " AND r.roomType = :roomType")
    List<Room> findAvailableRoomsByRoomTypeCheckInDateAndCheckOutDate(
            @Param("checkInDate") LocalDate checkInDate,
            @Param("checkOutDate") LocalDate checkOutDate,
            @Param("roomType") RoomType roomType);


    List<Room> findByRoomType(RoomType roomType);
}
