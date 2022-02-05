<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<jsp:include page="WEB-INF/jsp/_head.jsp">
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
                <li><a href="<c:url value="facilities"/>">Facilities</a></li>

            </ul>
            <ul class="nav-menu">
                <li><a href="<c:url value="/"/>">Home</a></li>
                <li><a href="about.html">About Us</a></li>
                <li><a href="<c:url value="rooms"/>">Rooms</a></li>
                <li><a href="<c:url value="facilities"/>">Facilities</a></li>
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
            <div class="logo"> <a href="<c:url value="/"/>"><img src="_frontend/images/logo.png" alt="Image"></a> </div>
            <!-- end logo -->
            <div class="navbar-text">Booking +94 11 320 3562</div>
            <!-- end navbar-text -->

            <div class="site-menu">
                <ul>
                    <li><a href="<c:url value="rooms"/>">Rooms</a></li>
                    <li><a href="<c:url value="facilities"/>">Facilities</a></li>

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
        <header class="page-header" data-background="_frontend/images/page-header01.jpg">
            <div class="container">
                <h1>Facilities</h1>
                <p>We love staying in hotels</p>
            </div>
            <!-- end container -->
            <div class="scroll-down"></div>
            <!-- end scroll-down -->
        </header>
        <!-- end page-header -->
        <section class="content-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-4 col-md-6">
                        <div class="special-offer-box">
                            <figure class="reveal-effect"> <img src="_frontend/images/spa.jpg" alt="Image"> </figure>
                            <div class="content">
                                <span></span>
                                <h5>Special SPA Experience</h5>
                                <small>% 20 DISCOUNT</small><p><strong>Promo code : SPA-NOVEMBER</strong></p>
                            </div>
                            <!-- end content -->
                            <div class="info">
                                <h1>Special Spa Experience</h1>
                                <p>We provide a variety of spa treatment packages so there’s something to suit everyone</p>
                                <button class="btn" onclick="spapoppup()">Read More</button>
                            </div>
                        </div>
                        <!-- end special-offer-box -->
                        <div class="popup" id="popup-1">
                            <div class="overlay"></div>
                            <div class="contentp">
                                <div class="close-btn" onclick="spapoppup()">&times;</div>
                                <p>
                                    We provide a variety of spa treatment packages so there’s something to suit everyone, from our Couples Spa Day, to a Pamper Day just for you. We provide a variety of spa treatment packages so there’s something to suit everyone, from our Couples Spa Day, to Mother and Daughter Spa Days, to a Pamper Day just for yo
                                    Detox Spa Experience – Week
                                    Detox Spa Experience – Incl. 25 min Detoxifying Body Scrub. Detoxifying body scrub with a toning serum to finish (25 minutes) Full use of the thermal spa facilities up to 3 hours during the week up to 2 hours at weekends
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- end col-4 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="special-offer-box">
                            <figure class="reveal-effect"> <img src="_frontend/images/ridingHorse.jpg" alt="Image"> </figure>
                            <div class="content">
                                <span></span>
                                <h5>Riding Horses</h5>
                                <small>% 20 DISCOUNT</small><p><strong>Promo code : HORSE</strong></p>
                            </div>
                            <!-- end content -->
                            <div class="info">
                                <h1>Riding Horses</h1>
                                <p>They cater for children and adults from complete beginners needing full training to advanced riders.</p>
                                <button class="btn" onclick="ridepoppup()">Read More</button>
                            </div>
                        </div>
                        <!-- end special-offer-box -->
                        <div class="popup" id="popup-2">
                            <div class="overlay"></div>
                            <div class="contentp">
                                <div class="close-btn" onclick="ridepoppup()">&times;</div>
                                <p>
                                   They cater for children and adults from complete beginners needing full training to advanced riders.The full size all weather arena allows you to hone your riding skills in dressage and jumping, whilst the lunge arena is perfect for individual lessons. More advanced riders can enjoy escorted hacks around the 100 acre estate or longer rides through the beautiful countryside. 
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- end col-4 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="special-offer-box">
                            <figure class="reveal-effect"> <img src="_frontend/images/flywithfriends.jpg" alt="Image"> </figure>
                            <div class="content">
                                <span></span>
                                <h5>Fly with friends</h5>
                                <small>% 20 DISCOUNT</small><p><strong>Promo code : OCTOBERFEST</strong></p>
                            </div>
                            <!-- end content -->
                            <div class="info">
                                <h1>Fly With Friends</h1>
                                <p>There are usually no restrictions on the age you can fly with a guide</p>
                                <button class="btn" onclick="flypoppup()">Read More</button>
                            </div>
                        </div>
                        <!-- end special-offer-box -->
                        <div class="popup" id="popup-3">
                            <div class="overlay"></div>
                            <div class="contentp">
                                <div class="close-btn" onclick="flypoppup()">&times;</div>
                                <p>
                                    There are usually no restrictions on the age you can fly with a guide. Can enjoy escorted hacks around the 100 acre estate or longer rides through the beautiful countryside. 
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- end col-4 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="special-offer-box">
                            <figure class="reveal-effect"> <img src="_frontend/images/go-cart.jpg" alt="Image"> </figure>
                            <div class="content">
                                <span></span>
                                <h5>Go-Cart Weekend</h5>
                                <small>% 20 DISCOUNT</small><p><strong>Promo code : GO-CART</strong></p>
                            </div>
                            <!-- end content -->
                            <div class="info">
                                <h1>Go-cart Weekends</h1>
                                <p>This will cater to everyone from the competitive kart racer out to win trophies to the corporate event designed for basic team building</p>
                                <button class="btn" onclick="cartpoppup()">Read More</button>
                            </div>
                        </div>
                        <!-- end special-offer-box -->
                        <div class="popup" id="popup-4">
                            <div class="overlay"></div>
                            <div class="contentp">
                                <div class="close-btn" onclick="cartpoppup()">&times;</div>
                                <p>
                                    Our go karts are from CRG and made in Italy where all the world’s best racing karts are produced.  SAKC will feature CRG Go Kart Rentals, a 1/2+mile asphalt sprint racing track with 10-turns.
                                    This will cater to everyone from the competitive kart racer out to win trophies to the corporate event designed for basic team building
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- end col-4 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="special-offer-box">
                            <figure class="reveal-effect"> <img src="_frontend/images/discoverforrest.jpg" alt="Image"> </figure>
                            <div class="content">
                                <span></span>
                                <h5>Discover Forrest</h5>
                                <small>% 20 DISCOUNT</small><p><strong>Promo code : FOREST</strong></p>
                            </div>
                            <!-- end content -->
                            <div class="info">
                                <h1>Discover Forrest</h1>
                                <p>Sri Lanka is home to about four different types of forest, which are found in different parts of the island</p>
                                <button class="btn" onclick="discoverpoppup()">Read More</button>
                            </div>
                        </div>
                        <!-- end special-offer-box -->
                        <div class="popup" id="popup-5">
                            <div class="overlay"></div>
                            <div class="contentp">
                                <div class="close-btn" onclick="discoverpoppup()">&times;</div>
                                <p>
                                    Sri Lanka is home to about four different types of forest, which are found in different parts of the island. Very often, these forests have endemic species of fauna and flora which can only be found in this region. If you are a nature enthusiast, we   add a visit to a Sri Lankan forest syour itinerary(Sinharaja Rainforest,Yala National Park,Horton Plains National Park,Kalpitiya)
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- end col-4 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="special-offer-box">
                            <figure class="reveal-effect"> <img src="_frontend/images/valentines.jpg" alt="Image"> </figure>
                            <div class="content">
                                <span></span>
                                <h5>Valentines Days</h5>
                                <small>% 20 DISCOUNT</small><p><strong>Promo code : VALENTINE</strong></p>
                            </div>
                            <!-- end content -->
                            <div class="info">
                                <h1>Valentines Day</h1>
                                <p>Valentine’s days are special occasions where you get to celebrate the love that you and your partner have</p>
                                <button class="btn" onclick="valantinepoppup()">Read More</button>
                            </div>
                        </div>
                        <!-- end special-offer-box -->
                        <div class="popup" id="popup-6">
                            <div class="overlay"></div>
                            <div class="contentp">
                                <div class="close-btn" onclick="valantinepoppup()">&times;</div>
                                <p>
                                    Valentine’s days are special occasions where you get to celebrate the love that you and your partner have. In fact, it is not just one single day but rather a whole week of festivities and gifts to choose from. You have the rose day, propose day, teddy day, hug day, promise day, chocolate day, kiss day and finally the valentine’s day.  In this valentine’s day, many people want s to party. 
                                    
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- end col-4 -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </section>
        <!-- end content-section -->
        <section class="content-section no-spacing" data-background="#856d47">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="footer-bar">
                            <i class="lni lni-protection"></i>
                            <h6>Call a New travel specialist on</h6>
                            <strong>+61 3 8648 8871</strong>
                            <figure><img src="_frontend/images/logo-tripadviser.png" alt="Image"></figure>
                        </div>
                        <!-- end footer-bar -->
                    </div>
                    <!-- end col-12 -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </section>
        <!-- end content-section -->

    <jsp:include page="WEB-INF/jsp/_footer.jsp"/>
        <!-- end footer -->
    </main>

    <!-- JS FILES -->
<jsp:include page="WEB-INF/jsp/_scripts.jsp"/>
<script src="_frontend/js/popup.js"></script>

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

                c.addEventListener("click", function (e) {
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
            a.addEventListener("click", function (e) {
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
