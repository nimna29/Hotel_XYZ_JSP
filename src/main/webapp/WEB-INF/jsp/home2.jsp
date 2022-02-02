<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<jsp:include page="_head.jsp">
    <jsp:param name="title" value="${title}"/>
</jsp:include>
<body>
<div class="cursor js-cursor"></div>
<div class="preloader">
    <div class="loadbar"></div>
    <!-- end loadbar -->
    <figure> <span>PLEASE WAIT</span> <img src="_frontend/images/preloader.png" alt="Image"> </figure>
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
                <li><a href="<c:url value="rooms"/>">Rooms</a></li>
                <li><a href="facilities.jsp">Facilities</a></li>
            </ul>
            <ul class="nav-menu">
                <li><a href="<c:url value="/"/>">Home</a></li>
                <li><a href="about.jsp">About Us</a></li>
                <li><a href="<c:url value="rooms"/>">Rooms</a></li>
                <li><a href="facilities.jsp">Facilities</a></li>
                <li><a href="contact-us.jsp">Contact Us</a></li>
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
            <div class="logo"> <a href="<c:url value="/"/>"><img src="_frontend/images/logo.png" alt="Image"></a> </div>
            <!-- end logo -->
            <div class="navbar-text">Booking +94 11 320 3562</div>
            <!-- end navbar-text -->

            <div class="site-menu">
                <ul>
                    <li><a href="<c:url value="rooms"/>">Rooms</a></li>
                    <li><a href="facilities.jsp">Facilities</a></li>
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
                                <form method="GET" name="bookNowForm" action="${pageContext.request.contextPath}/booking">
                                    <div class="user-details">

                                        <div class="input-box">
                                            <span class="details" style='color:white;' for="check_in">Check In Date</span>
                                            <input type="date" id="check_in"  name="check_in" value="${check_in}"/>
                                        </div>

                                        <div class="input-box">
                                            <span class="details" style='color:white;' for="check_out">Check Out Date</span>
                                            <input type="date" id="check_out" name="check_out" value="${check_out}"/>
                                        </div>

                                        <div class="input-box">
                                            <span class="details" style='color:white;' for="rooms">No. Of Rooms</span>
                                            <input type="number" id="rooms" min="1" name="rooms" value="1"/>
                                        </div>

                                        <div class="input-box">
                                            <span class="details" style='color:white;'>Nationality</span>
                                            <select name="nationality" style = "height: 45px; border-radius: 5px;">
                                                <option value="0">Sri Lankan</option>
                                                <option value="1">Foreign</option>
                                            </select>
                                        </div>

                                    </div>
                                    <div class="button">
                                        <input type="submit" value="Search" >
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

    <jsp:include page="_footer.jsp"/>

</main>

<!--JS Files-->
<jsp:include page="_scripts.jsp"/>

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