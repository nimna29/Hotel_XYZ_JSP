package com.takg.hotelxyz.booking.controller.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import java.beans.BeanProperty;
import java.time.LocalDate;


public class RoomSearchRequest {

    private LocalDate arrivalDate;
    private LocalDate departureDate;
    private Integer rooms;
    private Integer paxChild;
    private Integer paxAdult;

    public enum Nationality {
        SRI_LANKAN,FOREIGN
    }
    private Nationality nationality;

    RoomSearchRequest() {

    }

    public LocalDate getArrivalDate() {
        return arrivalDate;
    }

    public void setArrivalDate(LocalDate arrivalDate) {
        this.arrivalDate = arrivalDate;
    }

    public LocalDate getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(LocalDate departureDate) {
        this.departureDate = departureDate;
    }

    public Integer getRooms() {
        return rooms;
    }

    public void setRooms(Integer rooms) {
        this.rooms = rooms;
    }

    public Integer getPaxChild() {
        return paxChild;
    }

    public void setPaxChild(Integer paxChild) {
        this.paxChild = paxChild;
    }

    public Integer getPaxAdult() {
        return paxAdult;
    }

    public void setPaxAdult(Integer paxAdult) {
        this.paxAdult = paxAdult;
    }

    public Nationality getNationality() {
        return nationality;
    }

    public void setNationality(Nationality nationality) {
        this.nationality = nationality;
    }
}
