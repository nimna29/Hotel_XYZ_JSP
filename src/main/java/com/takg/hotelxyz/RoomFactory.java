package com.takg.hotelxyz;

import com.takg.hotelxyz.domain.model.Room;
import com.takg.hotelxyz.domain.model.RoomType;

public class RoomFactory {

    public static Room createRoom(int roomNo, int floor, RoomType type)
    {
        var room  = new Room();
        room.setRoomNumber(roomNo);
        room.setFloor(floor);
        room.setRoomType(type);

        return room;
    }

}