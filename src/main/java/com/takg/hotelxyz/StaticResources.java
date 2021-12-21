package com.takg.hotelxyz;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.Response;
import java.io.InputStream;
import java.util.Objects;

import static javax.ws.rs.core.Response.Status.NOT_FOUND;

@Path("/")
public class StaticResources {

    @Inject
    ServletContext context;

    @GET
    @Path("{path: ^static\\/.*}")
    public Response staticResources(@PathParam("path") final String path) {

        InputStream resource = context.getResourceAsStream(String.format("/WEB-INF/%s", path));

        return Objects.isNull(resource)
                ? Response.status(NOT_FOUND).build()
                : Response.ok().entity(resource).build();
    }
}
