<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search</title>
</head>
<body>
<h1>Check Availability</h1>

<form:form method="Get" action="/booking">
    <table>
        <tr>
            <td><label for="check_in">Check In Date</label></td>
            <td><input type="date" id="check_in"  name="check_in" value="${check_in}"/></td>
        </tr>
        <tr>
            <td><label for="check_out">Check Out Date</label></td>
            <td><input type="date" id="check_out" name="check_out" value="${check_out}"/></td>
        </tr>
        <tr>
            <td><td><label for="adults">No of Adults</label></td>
            <td><input type="number" id="adults" min="1" name="adults" value="${adults}"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="Search"/></td>
        </tr>
    </table>
</form:form>

<c:choose>
    <c:when test="${availableTypes == null}">

    </c:when>
    <c:when test="${availableTypes.size() > 0}">
       <h2>Select Room Type</h2>

        <table>
            <thead>
            <tr>
                <th>Room Type</th>
                <th>Available</th>
                <th>From</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="var" items="${availableTypes}" >
                <tr>
                    <td>
                        <c:out value="${var.roomType.name()}"/>
                    </td>
                    <td>
                        <c:out value="${var.totalRooms}"/>
                    </td>
                    <td>
                        <c:out value="LKR ${var.minPerNightCost}"/>
                    </td>
                    <td>
                        <spring:url value="/reservations/{roomType}?check_in={checkInDate}&check_out={checkOutDate}&adults={adults}" var="reservation_url">
                            <spring:param name="roomType" value="${var.roomType.name()}" />
                            <spring:param name="checkInDate" value="${check_in}" />
                            <spring:param name="checkOutDate" value="${check_out}" />
                            <spring:param name="adults" value="${adults}" />
                        </spring:url>
                        <a href="${reservation_url}">Reserve Now</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:when>

    <c:otherwise>
        <h2>Sorry We are sold out.</h2>
        <p>No rooms are available for these dates</p>
    </c:otherwise>
</c:choose>
</body>
</html>
