<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="theme-color" content="#856d47"/>
    <title>Hotel XYZ</title>
    <meta name="author" content="Themezinho">
    <meta name="description" content="Beautiful premium look hotels website">
    <meta name="keywords" content="hotel, room, restaurant, events, pool, nightlife, bed, matras, balcony, vacation, honeymoon, suit, premium, deluxe, penthouse, vip">

    <!-- SOCIAL MEDIA META -->
    <meta property="og:description" content="Hotel XYZ">
    <meta property="og:image" content="http://www.themezinho.net/quardo/preview.png">
    <meta property="og:site_name" content="Quardo">
    <meta property="og:title" content="Quardo">
    <meta property="og:type" content="website">
    <meta property="og:url" content="http://www.themezinho.net/quardo">

    <!-- TWITTER META -->
    <meta name="twitter:card" content="summary">
    <meta name="twitter:site" content="@Quardo">
    <meta name="twitter:creator" content="@Quardo">
    <meta name="twitter:title" content="Quardo">
    <meta name="twitter:description" content="Hotel XYZ">
    <meta name="twitter:image" content="http://www.themezinho.net/quardo/preview.png">

    <!-- FAVICON FILES -->

    <link rel="apple-touch-icon" sizes="180x180" href="static/_frontend/ico/apple-touch-icon">
    <link rel="icon" type="image/png" sizes="32x32" href="static/_frontend/ico/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="static/_frontend/ico/favicon-16x16.png">
    <link rel="manifest" href="static/_frontend/ico/site.webmanifest">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">


    <!-- CSS FILES -->
    <link rel="stylesheet" href="static/_frontend/css/lineicons.css">
    <link rel="stylesheet" href="static/_frontend/css/datepicker.min.css">
    <link rel="stylesheet" href="static/_frontend/css/fancybox.min.css">
    <link rel="stylesheet" href="static/_frontend/css/swiper.min.css">
    <link rel="stylesheet" href="static/_frontend/css/bootstrap.min.css">
    <link rel="stylesheet" href="<c:url value="/static/_frontend/css/style.css"/>">
</head>


<body>
<div class="cursor js-cursor"></div>
<div class="preloader">
    <div class="loadbar"></div>
    <!-- end loadbar -->
    <figure> <span>PLEASE WAIT</span> <img src="static/_frontend/images/preloader.png" alt="Image"> </figure>
</div>
<!-- end preloader -->
<div class="page-transition">
    <div class="layer"></div>
    <!-- end layer -->
</div>
<!-- end page-transition -->
<main id="main">
    <nav class="hamburger-navigation">
        <div class="layer"></div>
        <!-- end layer -->
        <div class="container">
            <ul class="nav-menu mobile-menu">
                <li><a href="rooms.html">Rooms</a></li>
                <li><a href="bonquet.html">Bonquet</a></li>
                <li><a href="facilities.html">Facilities</a></li>
                <li>
                    <!--Currency Selection-->
                    <!--surround the select box with a "custom-select" DIV element. Remember to set the width:-->
                    <div class="custom-select" style="width:150px; height:56px; background:transparent; border-color:transparent; margin-left:10px; margin-top: -14px;">
                        <form method="POST" name="currencyForm" action = "#">
                            <select>
                                <option value="0">Currency</option>
                                <option value="1">LKR</option>
                                <option value="2">USD</option>
                                <option value="3">EUR</option>
                                <option value="4">GBP</option>
                            </select>
                        </form>
                    </div>
                    <!--Currency Selection End-->
                </li>
            </ul>
            <ul class="nav-menu">
                <li><a href="index.html">Home</a></li>
                <li><a href="about.html">About Us</a></li>
                <li><a href="rooms.html">Rooms</a></li>
                <li><a href="bonquet.html">Bonquet</a></li>
                <li><a href="facilities.html">Facilities</a></li>
                <li><a href="contact-us.html">Contact Us</a></li>
            </ul>
            <div class="info-box"> <span>Follow Us On Social Media</span>
                <ul class="nav-social">
                    <li><a href="#"><i class="lni lni-facebook-filled"></i></a></li>
                    <li><a href="#"><i class="lni lni-twitter-original"></i></a></li>
                    <li><a href="#"><i class="lni lni-instagram"></i></a></li>
                    <li><a href="#"><i class="lni lni-youtube"></i></a></li>
                    <li><a href="#"><i class="lni lni-pinterest"></i></a></li>
                </ul>
            </div>
            <!-- end info-box -->
        </div>
        <!-- end container -->
    </nav>
    <!-- end hamburger-navigation -->
    <nav class="navbar">
        <div class="container">
            <div class="logo"> <a href="index.html"><img src="static/_frontend/images/logo.png" alt="Image"></a> </div>
            <!-- end logo -->
            <div class="navbar-text">Booking +94 11 320 3562</div>
            <!-- end navbar-text -->

            <div class="site-menu">
                <ul>
                    <li><a href="rooms.html">Rooms</a></li>
                    <li><a href="bonquet.html">Bonquet</a></li>
                    <li><a href="facilities.html">Facilities</a></li>
                    <li>
                        <!--Currency Selection-->
                        <!--surround the select box with a "custom-select" DIV element. Remember to set the width:-->
                        <div class="custom-select" style="width:150px; height:56px; background:transparent; border-color:transparent; margin-left:10px; margin-top: -14px;">
                            <form method="POST" name="currencyForm" action = "#">
                                <select>
                                    <option value="0">Currency</option>
                                    <option value="1">LKR</option>
                                    <option value="2">USD</option>
                                    <option value="3">EUR</option>
                                    <option value="4">GBP</option>
                                </select>
                            </form>
                        </div>
                        <!--Currency Selection End-->
                    </li>
                </ul>
            </div>
            <!-- end site-menu -->

            <div class="hamburger-menu">
                <button class="menu">
                    <svg width="45" height="45" viewBox="0 0 100 100">
                        <path class="line line1" d="M 20,29.000046 H 80.000231 C 80.000231,29.000046 94.498839,28.817352 94.532987,66.711331 94.543142,77.980673 90.966081,81.670246 85.259173,81.668997 79.552261,81.667751 75.000211,74.999942 75.000211,74.999942 L 25.000021,25.000058" />
                        <path class="line line2" d="M 20,50 H 80" />
                        <path class="line line3" d="M 20,70.999954 H 80.000231 C 80.000231,70.999954 94.498839,71.182648 94.532987,33.288669 94.543142,22.019327 90.966081,18.329754 85.259173,18.331003 79.552261,18.332249 75.000211,25.000058 75.000211,25.000058 L 25.000021,74.999942" />
                    </svg>
                </button>
            </div>
            <!-- end hamburger-menu -->
        </div>
        <!-- end container -->
    </nav>
    <!-- end navbar -->
    <header class="slider">
        <div class="main-slider">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="slide-inner" data-background="images/slide01.jpg">

                    </div>
                    <!-- end slide-inner -->
                </div>
                <!-- end swiper-slide -->
                <div class="swiper-slide">
                    <div class="slide-inner" data-background="images/slide02.jpg">

                    </div>
                    <!-- end slide-inner -->
                </div>
                <!-- end swiper-slide -->
                <div class="swiper-slide">
                    <div class="slide-inner" data-background="images/slide03.jpg">

                    </div>
                    <!-- end slide-inner -->
                </div>
                <!-- end swiper-slide -->
            </div>

    </header>
    <!-- end slider -->
    <section class="content-section no-spacing">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="hotel-search">

                        <!--Text Boxes-->
                        <div class="containe">
                            <div class="title" style='color:white;'>RESERVATION</div>
                            <div class="content">
                                <form method="POST" name="bookNowForm" action="#">
                                    <div class="user-details">
                                        <div class="input-box">
                                            <span class="details" style='color:white;'>Arrival</span>
                                            <input type="date" required>
                                        </div>
                                        <div class="input-box">
                                            <span class="details" style='color:white;'>Departure</span>
                                            <input type="date" required>
                                        </div>
                                        <div class="input-box">
                                            <span class="details" style='color:white;'>No. Of Rooms</span>
                                            <input type="number" min = 1 placeholder="Enter number of rooms" required>
                                        </div>
                                        <div class="input-box">
                                            <span class="details" style='color:white;'>No. Of Children</span>
                                            <input type="number" min = 0 placeholder="Enter number of children" required>
                                        </div>
                                        <div class="input-box">
                                            <span class="details" style='color:white;'>No. Of Adults</span>
                                            <input type="number" min = 1 placeholder="Enter number of adults" required>
                                        </div>
                                        <div class="input-box">
                                            <span class="details" style='color:white;'>Nationality</span>
                                            <select style = "height: 45px; border-radius: 5px;">
                                                <option value="1">Local</option>
                                                <option value="2">Foreign</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="button">
                                        <a href = "roombookingfrom.html">
                                            <input type="submit" value="Book Now" ></a>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                    <!-- end hotel-search -->
                </div>
                <!-- end col-12 -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </section>
    <!-- end content-section -->

    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <h6 class="widget-title">Impressive The Hotel XYZ</h6>
                    <p>Welcome to the XYZ where Sri Lanka's hospitality is in full display.
                        Enjoy the beautiful sunset views from our infinity pool before a night of fine dining under the starry skies.
                        Our staff stand ready to make your vacation a truly amazing experience.</p>
                </div>
                <!-- end col-4 -->
                <div class="col-xl-3 col-lg-1"> </div>
                <!-- end col-3 -->
                <div class="col-xl-3 col-lg-3">
                    <h6 class="widget-title">Contact</h6>
                    <p>customer@hotelxyz.com<br>
                        +94 11 320 3562<br>
                        <a href="https://www.google.com/maps/search/?api=1&amp;query=centurylink+field" data-fancybox="" data-width="640" data-height="360">Discover On Map</a></p>
                </div>
                <!-- end col-3 -->
                <div class="col-xl-2 col-lg-4">
                    <h6 class="widget-title">Location</h6>
                    <p> No: 82, Galle Road,
                        Colombo 03 <br>
                        Sri Lanka </p>
                </div>
                <!-- end col-2 -->
                <div class="col-12">
                    <div class="bottom-bar"> <span>© 2021 TAKG Cooperation | HOTEL XYZ</span>
                        <ul class="footer-social">
                            <li><a href="#">Facebook</a></li>
                            <li><a href="#">Twitter</a></li>
                            <li><a href="#">Linkedin</a></li>
                        </ul>
                        <!-- end footer-social -->
                    </div>
                    <!-- end bottom-bar -->
                </div>
                <!-- end col-12 -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </footer>
    <!-- end footer -->

</main>

<!-- JS FILES -->
<script src="static/_frontend/js/jquery.min.js"></script>
<script src="static/_frontend/js/bootstrap.min.js"></script>
<script src="static/_frontend/js/fancybox.min.js"></script>
<script src="static/_frontend/js/swiper.min.js"></script>
<script src="static/_frontend/js/datepicker.min.js"></script>
<script src="static/_frontend/js/smooth-scrollbar.js"></script>
<script src="static/_frontend/js/overscroll.js"></script>
<script src="static/_frontend/js/TweenMax.min.js"></script>
<script src="static/_frontend/js/scripts.js"></script>

<!--Currency JS-->
<script>
    var x, i, j, l, ll, selElmnt, a, b, c;
    /*look for any elements with the class "custom-select":*/
    x = document.getElementsByClassName("custom-select");
    l = x.length;
    for (i = 0; i < l; i++) {
        selElmnt = x[i].getElementsByTagName("select")[0];
        ll = selElmnt.length;

        /*for each element, create a new DIV that will act as the selected item:*/
        a = document.createElement("DIV");
        a.setAttribute("class", "select-selected");
        a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
        x[i].appendChild(a);

        /*for each element, create a new DIV that will contain the option list:*/
        b = document.createElement("DIV");
        b.setAttribute("class", "select-items select-hide");

        for (j = 1; j < ll; j++) {
            /*for each option in the original select element,
            create a new DIV that will act as an option item:*/
            c = document.createElement("DIV");
            c.innerHTML = selElmnt.options[j].innerHTML;

            c.addEventListener("click", function(e) {
                /*when an item is clicked, update the original select box,
                and the selected item:*/
                var y, i, k, s, h, sl, yl;
                s = this.parentNode.parentNode.getElementsByTagName("select")[0];
                sl = s.length;
                h = this.parentNode.previousSibling;

                for (i = 0; i < sl; i++) {
                    if (s.options[i].innerHTML == this.innerHTML) {
                        s.selectedIndex = i;
                        h.innerHTML = this.innerHTML;
                        y = this.parentNode.getElementsByClassName("same-as-selected");
                        yl = y.length;
                        for (k = 0; k < yl; k++) {
                            y[k].removeAttribute("class");
                        }
                        this.setAttribute("class", "same-as-selected");
                        break;
                    }
                }
                h.click();
            });
            b.appendChild(c);
        }

        x[i].appendChild(b);
        a.addEventListener("click", function(e) {
            /*when the select box is clicked, close any other select boxes,
            and open/close the current select box:*/
            e.stopPropagation();
            closeAllSelect(this);
            this.nextSibling.classList.toggle("select-hide");
            this.classList.toggle("select-arrow-active");
        });
    }

    function closeAllSelect(elmnt) {
        /*a function that will close all select boxes in the document,
        except the current select box:*/

        var x, y, i, xl, yl, arrNo = [];
        x = document.getElementsByClassName("select-items");
        y = document.getElementsByClassName("select-selected");
        xl = x.length;
        yl = y.length;
        for (i = 0; i < yl; i++) {
            if (elmnt == y[i]) {
                arrNo.push(i)
            } else {
                y[i].classList.remove("select-arrow-active");
            }
        }
        for (i = 0; i < xl; i++) {
            if (arrNo.indexOf(i)) {
                x[i].classList.add("select-hide");
            }
        }
    }

    /*if the user clicks anywhere outside the select box,
    then close all select boxes:*/
    document.addEventListener("click", closeAllSelect);
</script>

</body>
</html>