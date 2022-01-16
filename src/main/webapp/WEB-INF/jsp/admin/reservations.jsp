<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
  <title>Hotel XYZ | Admin</title>
  <style>
    .flex-container {
      display: flex;
    }

    .flex-child {
      flex: 1;
      border: 4px solid rgb(233, 140, 0);
      border-radius: 6px;
      padding-top: 5px;
      padding-left: 10px;
      padding-right: 10px;
      padding-bottom: 5px;
      margin-left: 20px;
      margin-right: 20px;
      background-color: #fca50352;
    }

    .flex-child:first-child {
      margin-right: 20px;
    }
    /*Button css*/

    .button {
      display: inline-block;
      border-radius: 4px;
      background-color: #f4511e;
      border: none;
      color: #FFFFFF;
      text-align: center;
      font-size: 28px;
      padding: 20px;
      width: 220px;
      transition: all 0.5s;
      cursor: pointer;
      margin: 5px;
    }

    .button span {
      cursor: pointer;
      display: inline-block;
      position: relative;
      transition: 0.5s;
    }

    .button span:after {
      content: '\00bb';
      position: absolute;
      opacity: 0;
      top: 0;
      right: -20px;
      transition: 0.5s;
    }

    .button:hover span {
      padding-right: 25px;
    }

    .button:hover span:after {
      opacity: 1;
      right: 0;
    }
    /*Table Style*/

    table {
      border-collapse: collapse;
      width: 100%;
    }

    th,
    td {
      text-align: left;
      padding: 8px;
    }

    tr:nth-child(even) {
      background-color: #f7e5aa
    }

    th {
      background-color: #ffc13b;
      color: white;
    }
  </style>

  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>

<body style="background: rgba(2, 88, 112, 0.8)">
<h1 style="text-align:center; font-family: Arial, Helvetica, sans-serif;">
  HOTEL XYZ | Admin View</h1>
<hr>

<div class="flex-container">

  <div class="flex-child">
    <h2 style="text-align:center;"><u>Reservations</u></h2>
    <table align="center">
      <tr>
        <th>Reference</th>
        <th>Check-In</th>
        <th>Check-Out</th>
        <th>No Of Rooms</th>
        <th>Payment Status</th>
        <th>Check Details</th>

      </tr>
      <c:forEach var="var" items="${reservations}" >
      <tr>
        <td>#00${var.id}</td>
        <td>${var.checkInDate}</td>
        <td>${var.checkOutDate}</td>
        <td>${var.rooms.size()}</td>
        <td>${var.status}</td>
        <td>
          <a href="/admin/reservation/${var.id}">
            <button class="w3-button w3-yellow w3-border">View</button>
          </a>
        </td>
      </tr>
      </c:forEach>
    </table>

  </div>
</div>
<hr>
<center>
  <a href="adminReviews.html">
    <button class="button" style="vertical-align:middle;"><span>Reviews</span></button>
  </a>
</center>

</body>

</html>