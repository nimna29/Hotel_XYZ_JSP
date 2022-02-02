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
        <li><a href="bonquet.jsp">Bonquet</a></li>
        <li><a href="facilities.jsp">Facilities</a></li>
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
        <li><a href="<c:url value="/"/>">Home</a></li>
        <li><a href="about.jsp">About Us</a></li>
        <li><a href="<c:url value="rooms"/>">Rooms</a></li>
        <li><a href="bonquet.jsp">Bonquet</a></li>
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
        <li><a href="bonquet.jsp">Bonquet</a></li>
        <li><a href="facilities.jsp">Facilities</a></li>
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
  <header class="page-header" data-background="_frontend/images/rooms-page-header01.jpg">
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
        <div class="col-12">
          <div class="rooms-filter">
            <div class="price-range">
              <div class="range-slider">
                <h6>PRICE RANGE</h6>
                <input class="range-slider__range" type="range" value="50" min="0" max="250" step="25">
                <span class="range-slider__value">0</span> </div>
              <!-- edn range-slider -->

            </div>
            <!-- end price-range -->
            <div class="specifications">
              <h6>SPECIFICATIONS</h6>
              <ul>
                <li>
                  <input type="checkbox">
                  <small>Tv, Wifi</small> </li>
                <li>
                  <input type="checkbox">
                  <small>Air Conditioner </small> </li>
                <li>
                  <input type="checkbox">
                  <small>Packaging</small> </li>
              </ul>
            </div>
            <!-- end speficications -->
          </div>
          <!-- end rooms-filter -->
          <ul class="rooms-list">
            <li>
              <div class="room-box">
                <figure class="reveal-effect wow"><a href="deluxe-room.jsp"><img src="_frontend/images/room-thumb01.jpg" alt="Image"></a></figure>
                <div class="content">
                  <div class="price-line"><span>STAY FROM</span> $50.00</div>
                  <h3><a href="deluxe-room.jsp">Deluxe Room</a></h3>
                  <p>Always dreamed of staying in a castle hotel?
                    The UK has some historic gems, ranging from
                    Norman conquest pads</p>
                  <div class="bottom-specs">
                    <div class="icons"> <img src="_frontend/images/icon01.png" alt="Image"> <img src="_frontend/images/icon02.png" alt="Image"> <img src="_frontend/images/icon03.png" alt="Image"> <img src="_frontend/images/icon04.png" alt="Image"> <img src="_frontend/images/icon05.png" alt="Image"> </div>
                    <!-- end icons -->
                    <div class="reviews">925 guest reviews <span>8.0</span></div>
                    <!-- end reviews -->
                  </div>
                  <!-- end bottom-specs -->

                </div>
                <!-- end content -->
              </div>
              <!-- end room-box -->
            </li>
            <!-- end li -->
            <li>
              <div class="room-box">
                <figure class="reveal-effect wow"><a href="double-room.jsp"><img src="_frontend/images/room-thumb02.jpg" alt="Image"></a></figure>
                <div class="content">
                  <div class="price-line"><span>STAY FROM</span> $60.00</div>
                  <h3><a href="double-room.jsp">Double Room</a></h3>
                  <p>Always dreamed of staying in a castle hotel?
                    The UK has some historic gems, ranging from
                    Norman conquest pads</p>
                  <div class="bottom-specs">
                    <div class="icons"> <img src="_frontend/images/icon01.png" alt="Image"> <img src="_frontend/images/icon02.png" alt="Image"> <img src="_frontend/images/icon03.png" alt="Image"> <img src="_frontend/images/icon04.png" alt="Image"> <img src="_frontend/images/icon05.png" alt="Image"> </div>
                    <!-- end icons -->
                    <div class="reviews">925 guest reviews <span>8.0</span></div>
                    <!-- end reviews -->
                  </div>
                  <!-- end bottom-specs -->

                </div>
                <!-- end content -->
              </div>
              <!-- end room-box -->
            </li>
            <!-- end li -->
            <li>
              <div class="room-box">
                <figure class="reveal-effect wow"><a href="family-room.jsp"><img src="_frontend/images/room-thumb03.jpg" alt="Image"></a></figure>
                <div class="content">
                  <div class="price-line"><span>STAY FROM</span> $75.00</div>
                  <h3><a href="family-room.jsp">Family Room</a></h3>
                  <p>Always dreamed of staying in a castle hotel?
                    The UK has some historic gems, ranging from
                    Norman conquest pads</p>
                  <div class="bottom-specs">
                    <div class="icons"> <img src="_frontend/images/icon01.png" alt="Image"> <img src="_frontend/images/icon02.png" alt="Image"> <img src="_frontend/images/icon03.png" alt="Image"> <img src="_frontend/images/icon04.png" alt="Image"> <img src="_frontend/images/icon05.png" alt="Image"> </div>
                    <!-- end icons -->
                    <div class="reviews">925 guest reviews <span>8.0</span></div>
                    <!-- end reviews -->
                  </div>
                  <!-- end bottom-specs -->

                </div>
                <!-- end content -->
              </div>
              <!-- end room-box -->
            </li>
            <!-- end li -->
            <li>
              <div class="room-box">
                <figure class="reveal-effect wow"><a href="honeymoon-room.jsp"><img src="_frontend/images/room-thumb04.jpg" alt="Image"></a></figure>
                <div class="content">
                  <div class="price-line"><span>STAY FROM</span> $90.00</div>
                  <h3><a href="honeymoon-room.jsp">Honeymoon Room</a></h3>
                  <p>Always dreamed of staying in a castle hotel?
                    The UK has some historic gems, ranging from
                    Norman conquest pads</p>
                  <div class="bottom-specs">
                    <div class="icons"> <img src="_frontend/images/icon01.png" alt="Image"> <img src="_frontend/images/icon02.png" alt="Image"> <img src="_frontend/images/icon03.png" alt="Image"> <img src="_frontend/images/icon04.png" alt="Image"> <img src="_frontend/images/icon05.png" alt="Image"> </div>
                    <!-- end icons -->
                    <div class="reviews">925 guest reviews <span>8.0</span></div>
                    <!-- end reviews -->
                  </div>
                  <!-- end bottom-specs -->

                </div>
                <!-- end content -->
              </div>
              <!-- end room-box -->
            </li>
            <!-- end li -->
          </ul>
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