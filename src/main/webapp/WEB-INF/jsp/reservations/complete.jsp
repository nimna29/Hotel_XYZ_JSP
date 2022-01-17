<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <title>RESERVATION | COMPLETED</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        /* Style the body */
        body {
            font-family: Arial;
            margin: 0;
        }

        /* Header/Logo Title */
        .header {
            padding: 80px;
            text-align: center;
            background: #0079c9;
            color: white;
            font-size: 30px;
        }

        /* Page Content */
        .content {padding:20px;}

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

    </style>
</head>

<body>

<div class="header">
    <h1>Reservation</h1>
    <p><b>Your Reservation Is Completed<br>
    Check Your Email For Reservation Details
    </b></p>
</div>

<div class="content">
    <center>
        <a href="/">
            <button class="button" style="vertical-align:middle;"><span>Home</span></button>
        </a>
    </center>
</div>

</body>
</html>