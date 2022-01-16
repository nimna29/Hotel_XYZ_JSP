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
        /*List Style*/

        ul {
            background: #3399ff;
            padding: 20px;
            padding-left: 100px;
            padding-right: 100px;
        }

        ul li {
            background: #cce5ff;
            margin: 8px;
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
        <h2 style="text-align:center;"><u>Customer Details</u></h2>

        <ul>
            <li>Guest ID: ${reservation.guest.guestId}</li>
            <li>Email: ${reservation.guest.email}</li>
            <li>First Name: ${reservation.guest.firstName}</li>
            <li>Last Name: ${reservation.guest.lastName}</li>
            <li>Mobile No: ${reservation.guest.mobileNo}</li>
            <li>NIC: ${reservation.guest.nic}</li>
            <li>Passport: ${reservation.guest.passport}</li>
            <li>Reservation ID:${reservation.id}</li> </li>
            <li>Rating: ${reservation.rating}</li></li>
            <li>Status: ${reservation.status}</li></li>
            <li>Check In Date:${reservation.checkInDate}</li> </li>
            <li>Check Out Date:${reservation.checkOutDate}</li> </li>
            <li>Amount: ${reservation.invoice.total}</li></li>
        </ul>

    </div>
</div>
<hr>
<center>
    <a href="/admin">
        <button class="button" style="vertical-align:middle;"><span>Back</span></button>
    </a>
</center>
<br>

</body>

</html>