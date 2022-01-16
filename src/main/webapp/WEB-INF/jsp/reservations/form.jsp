<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Reservation</title>
</head>
<body>
<h1>Reservation</h1>

<table>
    <tbody>
    <tr>
        <td>Room Type</td>
        <td>${room_type}</td>
    </tr>
    <tr>
        <td>Check In Date</td>
        <td>${check_in}</td>
    </tr>
    <tr>
        <td>Check Out Type</td>
        <td>${check_out}</td>
    </tr>
    <tr>
        <td>Total Cost</td>
        <td>${total}</td>
    </tr>
    </tbody>
</table>

<form:form method="POST"
           action="/reservations" modelAttribute="reservation">
    <table>
        <tr>
            <td><form:label path="firstName">First Name</form:label></td>
            <td><form:input path="firstName"/></td>
        </tr>
        <tr>
            <td><form:label path="lastName">Last Name</form:label></td>
            <td><form:input path="lastName"/></td>
        </tr>
        <tr>
            <td><form:label path="nic">Nic</form:label></td>
            <td><form:input path="nic"/></td>
        </tr>

        <tr>
            <td><form:label path="passport">Passport</form:label></td>
            <td><form:input path="passport"/></td>
        </tr>
        <tr>
            <td><form:label path="mobileNo">Mobile No</form:label></td>
            <td><form:input path="mobileNo"/></td>
        </tr>
        <tr>
            <td><form:label path="email">Email</form:label></td>
            <td><form:input path="email"/></td>
        </tr>
        <tr>
            <form:hidden  path="checkInDate"/>
            <form:hidden  path="checkOutDate"/>
            <form:hidden  path="paxRooms"/>
            <form:hidden  path="roomType"/>
            <td><input type="submit" value="Submit"/></td>
        </tr>
    </table>
</form:form>
</body>
</html>
