<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <title>RESERVATION | CONFIRMATION</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        /* Style the body */
        body {
            font-family: Arial;
            margin: 0;
            font-weight: bold;
        }

        /* Header/Logo Title */
        .header {
            padding: 10px;
            text-align: center;
            background: #0079c9;
            color: white;
            font-size: 30px;
        }

        /* Page Content */
        .content {padding:20px;}

        /*Table Style*/

        table.style1 {
            border-collapse: collapse;
            width: 40%;
            border: #1c7430;
        }

        th,
        td.tdstyle1 {
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even).trstyle1 {
            background-color: #f7e5aa
        }

        th.thstyle1 {
            background-color: #ffc13b;
            color: white;
        }

        /*Reservation Form*/

        input[type=text], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 8px;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 20px 20px;
            margin: 8px 8px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        /*Reservation Form End*/
    </style>
</head>

<body>

<div class="header">
    <h1>Reservation</h1>
    <p><b>Complete Your Reservation</b></p>
</div>

<div class="content">
    <table align="center" class ="style1">
        <tbody>
        <tr class="trstyle1">
            <td class="tdstyle1"></td>
            <td class="tdstyle1"></td>
        </tr>
        <tr class="trstyle1">
            <td class="tdstyle1">Room Type</td>
            <td class="tdstyle1">${room_type}</td>
        </tr>
        <tr class="trstyle1">
            <td class="tdstyle1">Check In Date</td>
            <td class="tdstyle1">${check_in}</td>
        </tr>
        <tr class="trstyle1">
            <td class="tdstyle1">Check Out Type</td>
            <td class="tdstyle1">${check_out}</td>
        </tr>
        <tr class="trstyle1">
            <td class="tdstyle1">Total Cost</td>
            <td class="tdstyle1">$ ${total}</td>
        </tr>
        <tr class="trstyle1">
            <td class="tdstyle1"></td>
            <td class="tdstyle1"></td>
        </tr>
        </tbody>
    </table>
</div>
<hr>

<form:form method="POST"
           action="/reservations" modelAttribute="reservation">
    <table align="center">
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
            <td colspan="2"><input type="submit" value="Submit"/></td>
        </tr>
    </table>
</form:form>
<hr>
</body>
</html>