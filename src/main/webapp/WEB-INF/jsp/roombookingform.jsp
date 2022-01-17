<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.takg.hotelxyz.domain.model.RoomType" %>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<jsp:include page="_head.jsp">
  <jsp:param name="title" value="${title}"/>
</jsp:include>

<body>

<div class="cursor js-cursor"></div>
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
        <li><a href="bonquet.html">Bonquet</a></li>
        <li><a href="facilities.html">Facilities</a></li>
      </ul>
      <ul class="nav-menu">
        <li><a href="<c:url value="/"/>">Home</a></li>
        <li><a href="<c:url value="about"/>">About Us</a></li>
        <li><a href="<c:url value="rooms"/>">Rooms</a></li>
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
      <div class="logo"> <a href="<c:url value="/"/>"><img src="_frontend/images/logo.png" alt="Image"></a> </div>
      <!-- end logo -->
      <div class="navbar-text">Booking +94 11 320 3562</div>
      <!-- end navbar-text -->

      <div class="site-menu">
        <ul>
        <li><a href="<c:url value="rooms"/>">Rooms</a></li>
        <li><a href="bonquet.html">Bonquet</a></li>
        <li><a href="facilities.html">Facilities</a></li>
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
  <header class="page-header" style = "height:200px">
    <div class="container" style = "height:10%">
      <h1>Reservation</h1>
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

          <!--Text Boxes-->
          <div class="containe" style="max-width: 900px;">
            <div class="title" style='color:white;'>RESERVATION</div>
            <div class="content"><br>

              <form method="GET" action="/booking">

                <div class="user-details">

                  <table>
                    <tr>
                    <td>
                      <label for="check_in">Check In Date</label><br>
                      <input type="date" id="check_in"  name="check_in" value="${check_in}"
                             style = " border-radius: 6px;"/>
                    </td>

                    <td>
                        <label for="check_out">Check Out Date</label><br>
                        <input type="date" id="check_out" name="check_out" value="${check_out}"
                               style = " border-radius: 6px;"/>
                    </td>
                    </tr>

                    <tr>
                    <td>
                        <label for="rooms">No of Rooms</label>
                        <input type="number" id="rooms" min="1" name="rooms" value="${pax_rooms}"
                               style = " border-radius: 6px;"/>
                    </td>

                    <td>
                    <span class="details" style='color:white;'>Nationality</span><br>
                    <select name="nationality" style = " border-radius: 6px;">
                      <option value="0">Sri Lankan</option>
                      <option value="1">Foreign</option>
                    </select>
                    </td>
                  </tr>
                  </table>
                </div>
                <br>
                <div class="button">
                  <input type="submit" value="Search" >
                </div>
            </div>
          </div>

<br><br><br>
          <form>
            <div class="button">
            </div>
          </form>

          </div>
          <!-- end rooms-filter -->

        <d:choose>
        <d:when test="${rooms == null}">

        </d:when>
        <d:when test="${room_count > 0}">

          <ul class="rooms-list">
            <li>
              <div class="room-box">
                <div class="content">
                  <h3>Deluxe Room</h3>
                  <div class="price-line"><h4><span>$</span> 100.00</h4></div>
                  <p>Always dreamed of staying in a castle hotel? 
                    This is Deluxe room</p>
                  <div class="bottom-specs">
                    <div class="icons"> <img src="_frontend/images/icon01.png" alt="Image"> <img src="_frontend/images/icon02.png" alt="Image"> <img src="_frontend/images/icon03.png" alt="Image"> <img src="_frontend/images/icon04.png" alt="Image"> <img src="_frontend/images/icon05.png" alt="Image"> </div>
                    <!-- end icons -->
                    <div class="reviews">Available <span>${rooms.get(RoomType.Deluxe).size()}</span></div>
                    <!-- end reviews --> 
                  </div>
                  <!-- end bottom-specs -->
                  <spring:url value="/reservations/?room_type={roomType}&check_in={checkInDate}&check_out={checkOutDate}&rooms={rooms}" var="deluxe_url">
                    <spring:param name="roomType" value="${RoomType.Deluxe}" />
                    <spring:param name="checkInDate" value="${check_in}" />
                    <spring:param name="checkOutDate" value="${check_out}" />
                    <spring:param name="rooms" value="${pax_rooms}" />
                  </spring:url>

                  <form method="GET" name="deluxe">
                    <div class="button">
                    <a href="${deluxe_url}">
                      <input type="submit" value="Select">
                    </a>
                    </div>
                  </form>

                </div>
                <!-- end content --> 
              </div>
              <!-- end room-box --> 
            </li>
            <!-- end li -->
            <li>
              <div class="room-box">
                <div class="content">
                  <h3>Premium Room</h3>
                  <div class="price-line"><h4><span>$</span> 200.00</h4></div>
                  <p>Always dreamed of staying in a castle hotel? 
                    This is Premium room</p>
                  <div class="bottom-specs">
                    <div class="icons"> <img src="_frontend/images/icon01.png" alt="Image"> <img src="_frontend/images/icon02.png" alt="Image"> <img src="_frontend/images/icon03.png" alt="Image"> <img src="_frontend/images/icon04.png" alt="Image"> <img src="_frontend/images/icon05.png" alt="Image"> </div>
                    <!-- end icons -->
                    <div class="reviews">Available <span>${rooms.get(RoomType.Premium).size()}</span></div>
                    <!-- end reviews --> 
                  </div>
                  <!-- end bottom-specs -->
                  <spring:url value="/reservations/?room_type={roomType}&check_in={checkInDate}&check_out={checkOutDate}&rooms={rooms}" var="premium_url">
                    <spring:param name="roomType" value="${RoomType.Premium}" />
                    <spring:param name="checkInDate" value="${check_in}" />
                    <spring:param name="checkOutDate" value="${check_out}" />
                    <spring:param name="rooms" value="${pax_rooms}" />
                  </spring:url>

                  <form method="GET" name="premium">
                    <div class="button">
                      <a href="${premium_url}">
                        <input type="submit" value="Select">
                      </a>
                    </div>
                  </form>
                </div>
                <!-- end content --> 
              </div>
              <!-- end room-box --> 
            </li>
            <!-- end li -->
            <li>
              <div class="room-box">
                <div class="content">
                  <h3>Suit Room</h3>
                  <div class="price-line"><h4><span>$</span> 400.00</h4></div>
                  <p>Always dreamed of staying in a castle hotel? 
                    This is Suite room</p>
                  <div class="bottom-specs">
                    <div class="icons"> <img src="_frontend/images/icon01.png" alt="Image"> <img src="_frontend/images/icon02.png" alt="Image"> <img src="_frontend/images/icon03.png" alt="Image"> <img src="_frontend/images/icon04.png" alt="Image"> <img src="_frontend/images/icon05.png" alt="Image"> </div>
                    <!-- end icons -->
                    <div class="reviews">Available <span>${rooms.get(RoomType.Suit).size()}</span></div>
                    <!-- end reviews --> 
                  </div>
                  <!-- end bottom-specs -->
                  <spring:url value="/reservations/?room_type={roomType}&check_in={checkInDate}&check_out={checkOutDate}&rooms={rooms}" var="suit_url">
                    <spring:param name="roomType" value="${RoomType.Suit}" />
                    <spring:param name="checkInDate" value="${check_in}" />
                    <spring:param name="checkOutDate" value="${check_out}" />
                    <spring:param name="rooms" value="${pax_rooms}" />
                  </spring:url>

                  <form method="GET" name="suit">
                    <div class="button">
                      <a href="${suit_url}">
                        <input type="submit" value="Select">
                      </a>
                    </div>
                  </form>
                </div>
                <!-- end content --> 
              </div>
              <!-- end room-box --> 
            </li>
            <!-- end li -->
          </ul>
        </d:when>

        <d:otherwise>
        <h2>Sorry We are sold out.</h2>
        <p>No rooms are available for these dates</p>
        </d:otherwise>
        </d:choose>

        </form>
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

</body>
</html>