package com.takg.hotelxyz;

import com.github.javafaker.Faker;
import com.takg.hotelxyz.domain.model.RoomType;
import com.takg.hotelxyz.dto.MakeReservationDto;
import com.takg.hotelxyz.repository.RoomRepository;
import com.takg.hotelxyz.services.BookingService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import javax.transaction.Transactional;
import java.math.BigDecimal;
import java.time.LocalDate;

@Slf4j
//@Component
public class DataSeeder implements ApplicationRunner {

    private final RoomRepository roomRepository;
    private final BookingService bookingService;

    public DataSeeder(RoomRepository roomRepository, BookingService bookingService) {
        this.roomRepository = roomRepository;
        this.bookingService = bookingService;
    }

    @Override
    @Transactional
    public void run(ApplicationArguments args) throws Exception {

        // 3 Floors
        for (var j = 1;  j <= 3; j++) {

            // 4 Deluxe Rooms
            for (var i = 1;  i < 5; i++) {
                var room = RoomFactory.createRoom(j*100+i, j, RoomType.Deluxe);
                room.setCostPerNight(BigDecimal.valueOf(100));
                roomRepository.save(room);
            }

            // 2 Premium Rooms
            for (var i = 5;  i <  7; i++) {
                var room = RoomFactory.createRoom(j*100+i, j, RoomType.Premium);
                room.setCostPerNight(BigDecimal.valueOf(150));
                roomRepository.save(room);
            }

            // 1 Suit
            var room = RoomFactory.createRoom(j*100+7, j, RoomType.Suit);
            room.setCostPerNight(BigDecimal.valueOf(300));
            roomRepository.save(room);
        }

        var rooms = roomRepository.findByRoomType(RoomType.Deluxe);

        Faker faker = new Faker();


        for (int i = 0; i < 5; i++) {
            var makeReservation  = new MakeReservationDto();
            makeReservation.setCheckInDate(LocalDate.now());
            makeReservation.setCheckOutDate(LocalDate.now().plusDays(2));
            makeReservation.setFirstName(faker.name().firstName());
            makeReservation.setLastName(faker.name().lastName());
            makeReservation.setEmail(faker.internet().emailAddress());
            makeReservation.setPassport("N" + faker.idNumber());
            makeReservation.setMobileNo(faker.phoneNumber().cellPhone());
            makeReservation.setRoomType(RoomType.Deluxe);
            makeReservation.setPaxRooms(faker.random().nextInt(1,2));

            bookingService.placeReservation(makeReservation);
        }





    }
}
