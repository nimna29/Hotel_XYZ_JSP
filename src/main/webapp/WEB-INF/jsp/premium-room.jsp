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
      <h1>Rooms</h1>
      <p>We love staying in hotels</p>
    </div>
    <!-- end container -->
    <div class="scroll-down"></div>
    <!-- end scroll-down --> 
  </header>
  <!-- end page-header -->
  <section class="content-section">
    <div class="container">
      <div class="row">
        <div class="col-xl-8 col-lg-6">
          <div class="room-type">
            <div class="price-line">STAY FROM <span>$400.00</span></div>
            <!-- end price-line -->
            <h3>Premium Room</h3>
            <small>Hotel XYZ (Sri lanka - Colombo)</small> </div>
          <!-- end room-type --> 
        </div>
        <!-- end col-8 -->
        <div class="col-xl-4 col-lg-6">
          <div class="recent-testimonial"> <span><strong>Very Good</strong> <i class="lni lni-star-filled"></i><i class="lni lni-star-filled"></i><i class="lni lni-star-filled"></i><i class="lni lni-star-filled"></i><i class="lni lni-star-filled"></i></span> <small>17 guest reviews</small>
            <p>Second time at this hotel will be going 
              back next year same time.</p>
          </div>
          <!-- end recent-testimonial --> 
        </div>
        <!-- end col-4 -->
        <div class="col-12">
          <div class="room-gallery-top">
            <div class="swiper-wrapper">
              <div class="swiper-slide"> <a href="_frontend/images/DoubleRoom2.jpg" data-fancybox><img src="_frontend/images/DoubleRoom2.jpg" alt="Image"></a> </div>
              <!-- end swiper-slide -->
              <div class="swiper-slide"> <a href="_frontend/images/DoubleRoom3.jpg" data-fancybox><img src="_frontend/images/DoubleRoom3.jpg" alt="Image"></a> </div>
              <!-- end swiper-slide -->
              <div class="swiper-slide"> <a href="_frontend/images/DoubleRoom4.jpg" data-fancybox><img src="_frontend/images/DoubleRoom4.jpg" alt="Image"></a> </div>
              <!-- end swiper-slide -->
              <div class="swiper-slide"> <a href="_frontend/images/DoubleRoom1.jpg" data-fancybox><img src="_frontend/images/DoubleRoom1.jpg" alt="Image"></a> </div>
              <!-- end swiper-slide -->
              <div class="swiper-slide"> <a href="_frontend/images/DoubleRoom6.jpg" data-fancybox><img src="_frontend/images/DoubleRoom6.jpg" alt="Image"></a> </div>
              <!-- end swiper-slide -->
              <div class="swiper-slide"> <a href="_frontend/images/DoubleRoom7.jpg" data-fancybox><img src="_frontend/images/DoubleRoom7.jpg" alt="Image"></a> </div>
              <!-- end swiper-slide -->
              <!--div class="swiper-slide"> <a href="_frontend/images/room-gallery07.jpg" data-fancybox><img src="_frontend/images/room-gallery07.jpg" alt="Image"></a> </div>
              <!-- end swiper-slide -->
              <!--div class="swiper-slide"> <a href="_frontend/images/room-gallery08.jpg" data-fancybox><img src="_frontend/images/room-gallery08.jpg" alt="Image"></a> </div>
              <!-- end swiper-slide --> 
            </div>
            <!-- end swiper-wrapper --> 
          </div>
          <!-- end room-gallery-top -->
          <div class="room-gallery-thumbs">
            <div class="swiper-wrapper">
              <div class="swiper-slide"><img src="_frontend/images/DoubleRoom2.jpg" alt="Image"> </div>
              <!-- end swiper-slide -->
              <div class="swiper-slide"><img src="_frontend/images/DoubleRoom3.jpg" alt="Image"> </div>
              <!-- end swiper-slide -->
              <div class="swiper-slide"><img src="_frontend/images/DoubleRoom4.jpg" alt="Image"> </div>
              <!-- end swiper-slide -->
              <div class="swiper-slide"><img src="_frontend/images/DoubleRoom1.jpg" alt="Image"> </div>
              <!-- end swiper-slide -->
              <div class="swiper-slide"><img src="_frontend/images/DoubleRoom6.jpg" alt="Image"> </div>
              <!-- end swiper-slide -->
              <div class="swiper-slide"><img src="_frontend/images/DoubleRoom7.jpg" alt="Image"> </div>
              <!-- end swiper-slide -->
              <!--div class="swiper-slide"><img src="_frontend/images/room-gallery07.jpg" alt="Image"> </div> -->
              <!-- end swiper-slide -->
              <!--div class="swiper-slide"><img src="_frontend/images/room-gallery08.jpg" alt="Image"> </div> -->
              <!-- end swiper-slide -->
            </div>
            <!-- end swiper-wrapper --> 
          </div>
          <!-- end room-gallery-thumbs --> 
        </div>
              <!-- end col-12 -->
              <div class="col-lg-7">
                <p>At the heart of Blackpool's busy South Promenade, this Adults Only hotel (strictly over 18s) is just minutes from the famous 
                  Blackpool <u>Pleasure Beach</u> and South Pier. The markets and shops of South Shore are just a short stroll away if you prefer to 
                  indulge in some bargain hunting. Linger over an all-you-can-eat buffet breakfast and 3 course dinner in our beautiful sea view restaurant, then make your way to our .</p>
              </div>
              <!-- end col-7 -->
              <div class="col-lg-5">
                <p> <strong>Cabaret nightclub</strong> 'The Talk of the Coast' and let our line up of top acts entertain you,
                  with hilarious comedy and fantastic vocals, featuring the inimitable. </p>
              </div>
              <!-- end col-5 --> 
            <div class="col-12">
              <div class="room-info-box">
              <h6>Room size 15 m²</h6>
              <p>This room benefits from a TV, tea and coffee making facilities, and <u>nightly entertainment</u> with The Talk of the Coast. 
      Hairdryers and ironing facilities are available from reception.
      
      </p>
              </div>
              <!-- end room-info-box -->
              <div class="room-info-box">
              <h6>Facilities</h6>
              <ul>
              <li><figure><img src="_frontend/images/icon01.png" alt="Image"></figure><b>Room Type</b><span>Hotel Non-Smoking Throughout</span></li>
              <li><figure><img src="_frontend/images/icon02.png" alt="Image"></figure><b>Room services</b><span>24 Hour Reception, Wake Up Call Available</span></li>
              <li><figure><img src="_frontend/images/icon03.png" alt="Image"></figure><b>Parking (charges may apply)	</b><span>Car parking available onsite</span></li>
                <li><figure><img src="_frontend/images/icon04.png" alt="Image"></figure><b>Business</b><span>Wi-Fi Available, Wi-Fi Available In Public Areas</span></li>
                <li><figure><img src="_frontend/images/icon05.png" alt="Image"></figure><b>Dining</b><span>Restaurant, Bar</span></li>
                <li><figure><img src="_frontend/images/icon06.png" alt="Image"></figure><b>In room entertainment</b><span>TV, Air Conditioner</span></li>
                <li><figure><img src="_frontend/images/icon07.png" alt="Image"></figure><b>Other facilities</b><span>Tea/Coffee making facilities in each room, Telephone In Each Room</span></li>
              </ul>
              </div>
              <!-- end room-info-box -->
            </div>
            <!-- end col-12 -->
            </div>
            <!-- end row --> 
          </div>
          <!-- end container --> 
        </section>
        <!-- end content-section -->
        <section class="content-section" data-background="_frontend/images/section-bg02.jpg">
          <div class="container">
            <div class="row">
            <div class="col-12">
            <div class="video-box">
              <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ&ab_channel=RickAstley" class="play-btn"><i class="lni lni-play"></i></a>
              <h2>Great hospitality is the key to Pride of Britain’s <br>
      longstanding reputation for excellence.</h2>
              </div>
              <!-- end video-box -->
            </div>
              <!-- end col-12 --> 
            </div>
            <!-- end row --> 
          </div>
          <!-- end container --> 
        </section>
        <!-- end content-section -->
        <section class="content-section">
          <div class="container">
            <div class="row">
            <div class="col-12">
        <div class="room-info-box">
              <h6>Useful Informations</h6>
              <ul>
              <li><b>Check-in	</b><span>From 14:00 hours</span></li>
              <li><b>Check-out	</b><span>Until 10:30 hours</span></li>
              <li><b>Important information	</b><span>The price shown is based on the occupancy and dates you have searched for. Prices and availability are subject to change based on the arrival date, number of nights and occupancy searched for. All prices are inclusive of all local taxes.</span></li>
              <li><b>Pets</b><span>Pets are not allowed</span></li>
              </ul>
              </div>
              <!-- end room-info-box -->
      
            </div>
            <!-- end col-12 -->
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
                <div class="footer-bar"><i class="lni lni-protection"></i>
      
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
  <jsp:include page="_footer.jsp"/>
        <!-- end footer --> 
      </main>

<!-- JS FILES -->
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
