package com.takg.hotelxyz.booking.controllers;

import javax.mvc.Controller;
import javax.mvc.View;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

@Controller
@Path("/")
public class HomeController {
    @GET
    @View("home.jsp")
    public void showHome() {

    }
}
