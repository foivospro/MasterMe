<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>MasterMe</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

</head>
<body>

<% if(request.getAttribute("message") != null) { %>		
    <div class="alert alert-danger text-center" role="alert"><%=(String)request.getAttribute("message") %></div>
<% } %>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a></h1>

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><input type="search_home" placeholder="  Search Masters..."></li>
          <li><a href="index.html">Home</a></li>
          <li><a href="about.html">About</a></li> 
          <li><a href="courses.html">Masters</a></li> 
          <li><a href="form.html">Questionnaire</a></li>          
          <li><a href="login.html">Log in | Sign up</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
    </div>
  </header><!-- End Header -->

     <!-- ======= Breadcrumbs ======= -->
     <div class="breadcrumbs" data-aos="fade-in">
      <div class="container">
        <h2>Questionnaire</h2>
        <p>Aren’t sure about what kind of master in computer science suits you the most? </p>
        <p>Here, by answering this simple questionnaire, we will find you the top 3 computer science fields that fit with your personality! </p>
      </div>
    </div><!-- End Breadcrumbs -->

<!-- den to exo ensomatosei akoma -->
<%
FormQuestions questions = new FormQuestions();
List<String> question = questions.getQuestions();
%>
  <!-- ======= Header ======= -->
  <section id="form" class="form">
    <div class="form-group" id="radio-buttons">
      <form method="post" action="getCourses.jsp">
        <div class="text-center mb-1">
            <p><strong>1. q</strong></p>
            <div class='d-inline mx-3'>Bad</div>
            <input type="radio" id="rating1.1" name="rating1" value="1">
            <label for="rating1.1">1</label>

            <input type="radio" id="rating1.2" name="rating1" value="2">
            <label for="rating1.2">2</label>

            <input type="radio" id="rating1.3" name="rating1" value="3">
            <label for="rating1.3">3</label>

            <input type="radio" id="rating1.4" name="rating1" value="4">
            <label for="rating1.4">4</label>

            <input type="radio" id="rating1.5" name="rating1" value="5">
            <label for="rating1.5">5</label>

            <div class='d-inline mx-3'>Excellent</div>
        </div>
        <div class="text-center">


          <div class="text-center mb-1">
            <p><strong>2. Are you interested in analyzing data sets and looking for patterns in numbers?</strong></p>
            <div class='d-inline mx-3'>Bad</div>
            <input type="radio" id="rating2.1" name="rating2" value="1">
            <label for="rating2.1">1</label>

            <input type="radio" id="rating2.2" name="rating2" value="2">
            <label for="rating2.2">2</label>

            <input type="radio" id="rating2.3" name="rating2" value="3">
            <label for="rating2.3">3</label>

            <input type="radio" id="rating2.4" name="rating2" value="4">
            <label for="rating2.4">4</label>

            <input type="radio" id="rating2.5" name="rating2" value="5">
            <label for="rating2.5">5</label>

            <div class='d-inline mx-3'>Excellent</div>
        </div>
        <div class="text-center">


          <div class="text-center mb-3">
            <p><strong>3. Do you have a collaborative mindset and the ability to improvise as a person?</strong></p>
            <div class='d-inline mx-3'>Bad</div>
            <input type="radio" id="rating3.1" name="rating3" value="1">
            <label for="rating3.1">1</label>

            <input type="radio" id="rating3.2" name="rating3" value="2">
            <label for="rating3.2">2</label>

            <input type="radio" id="rating3.3" name="rating3" value="3">
            <label for="rating3.3">3</label>

            <input type="radio" id="rating3.4" name="rating3" value="4">
            <label for="rating3.4">4</label>

            <input type="radio" id="rating3.5" name="rating3" value="5">
            <label for="rating3.5">5</label>

            <div class='d-inline mx-3'>Excellent</div>
        </div>
        <div class="text-center">


          <div class="text-center mb-3">
            <p><strong>4. Do you find yourself drawn to the challenges and the mission of securing digital systems?</strong></p>
            <div class='d-inline mx-3'>Bad</div>
            <input type="radio" id="rating4.1" name="rating4" value="1">
            <label for="rating4.1">1</label>

            <input type="radio" id="rating4.2" name="rating4" value="2">
            <label for="rating4.2">2</label>

            <input type="radio" id="rating4.3" name="rating4" value="3">
            <label for="rating4.3">3</label>

            <input type="radio" id="rating4.4" name="rating4" value="4">
            <label for="rating4.4">4</label>

            <input type="radio" id="rating4.5" name="rating4" value="5">
            <label for="rating4.5">5</label>

            <div class='d-inline mx-3'>Excellent</div>
        </div>
        <div class="text-center">



          <div class="text-center mb-3">
            <p><strong>5. Do you have a penchant for experimentation and innovation?</strong></p>
            <div class='d-inline mx-3'>Bad</div>
            <input type="radio" id="rating5.1" name="rating5" value="1">
            <label for="rating5.1">1</label>

            <input type="radio" id="rating5.2" name="rating5" value="2">
            <label for="rating5.2">2</label>

            <input type="radio" id="rating5.3" name="rating5" value="3">
            <label for="rating5.3">3</label>

            <input type="radio" id="rating5.4" name="rating5" value="4">
            <label for="rating5.4">4</label>

            <input type="radio" id="rating5.5" name="rating5" value="5">
            <label for="rating5.5">5</label>

            <div class='d-inline mx-3'>Excellent</div>
        </div>
        <div class="text-center">


          <div class="text-center mb-3">
            <p><strong>6. Are you keen on building projects like image recognition, natural language processing, or
              creating a chatbot?</strong></p>
            <div class='d-inline mx-3'>Bad</div>
            <input type="radio" id="rating6.1" name="rating6" value="1">
            <label for="rating6.1">1</label>

            <input type="radio" id="rating6.2" name="rating6" value="2">
            <label for="rating6.2">2</label>

            <input type="radio" id="rating6.3" name="rating6" value="3">
            <label for="rating6.3">3</label>

            <input type="radio" id="rating6.4" name="rating6" value="4">
            <label for="rating6.4">4</label>

            <input type="radio" id="rating6.5" name="rating6" value="5">
            <label for="rating6.5">5</label>

            <div class='d-inline mx-3'>Excellent</div>
        </div>
        <div class="text-center">

          <div class="text-center mb-3">
            <p><strong>7. Do you enjoy working with technologies like React, Angular, and Vue.js?</strong></p>
            <div class='d-inline mx-3'>Bad</div>
            <input type="radio" id="rating7.1" name="rating7" value="1">
            <label for="rating7.1">1</label>

            <input type="radio" id="rating7.2" name="rating7" value="2">
            <label for="rating7.2">2</label>

            <input type="radio" id="rating7.3" name="rating7" value="3">
            <label for="rating7.3">3</label>

            <input type="radio" id="rating7.4" name="rating7" value="4">
            <label for="rating7.4">4</label>

            <input type="radio" id="rating7.5" name="rating7" value="5">
            <label for="rating7.5">5</label>

            <div class='d-inline mx-3'>Excellent</div>
        </div>
        <div class="text-center">



          <div class="text-center mb-3">
            <p><strong>8. Are you naturally curious about how websites and web applications work and eager to create
              your own?</strong></p>
            <div class='d-inline mx-3'>Bad</div>
            <input type="radio" id="rating8.1" name="rating8" value="1">
            <label for="rating1">1</label>

            <input type="radio" id="rating8.2" name="rating8" value="2">
            <label for="rating2">2</label>

            <input type="radio" id="rating8.3" name="rating8" value="3">
            <label for="rating3">3</label>

            <input type="radio" id="rating8.4" name="rating8" value="4">
            <label for="rating4">4</label>

            <input type="radio" id="rating8.5" name="rating8" value="5">
            <label for="rating5">5</label>

            <div class='d-inline mx-3'>Excellent</div>
        </div>
        <div class="text-center">



          <div class="text-center mb-3">
            <p><strong>9. Do you find yourself captivated by the intricacies of network communication?</strong></p>
            <div class='d-inline mx-3'>Bad</div>
            <input type="radio" id="rating9.1" name="rating9" value="1">
            <label for="rating1">1</label>

            <input type="radio" id="rating9.2" name="rating9" value="2">
            <label for="rating2">2</label>

            <input type="radio" id="rating9.3" name="rating9" value="3">
            <label for="rating3">3</label>

            <input type="radio" id="rating9.4" name="rating9" value="4">
            <label for="rating4">4</label>

            <input type="radio" id="rating9.5" name="rating9" value="5">
            <label for="rating5">5</label>

            <div class='d-inline mx-3'>Excellent</div>
        </div>
        <div class="text-center">



          <div class="text-center mb-3">
            <p><strong>10. Are you intrigued by topics like firewalls, encryption, and securing network infrastructure?</strong></p>
            <div class='d-inline mx-3'>Bad</div>
            <input type="radio" id="rating10.1" name="rating10" value="1">
            <label for="rating1">1</label>

            <input type="radio" id="rating10.2" name="rating10" value="2">
            <label for="rating2">2</label>

            <input type="radio" id="rating10.3" name="rating10" value="3">
            <label for="rating3">3</label>

            <input type="radio" id="rating10.4" name="rating10" value="4">
            <label for="rating4">4</label>

            <input type="radio" id="rating10.5" name="rating10" value="5">
            <label for="rating5">5</label>

            <div class='d-inline mx-3'>Excellent</div>
        </div>
        <div class="text-center">





          <div class="text-center mb-3">
            <p><strong>11. Do you enjoy the process of building and troubleshooting hardware systems?</strong></p>
            <div class='d-inline mx-3'>Bad</div>
            <input type="radio" id="rating11.1" name="rating11" value="1">
            <label for="rating1">1</label>

            <input type="radio" id="rating11.2" name="rating11" value="2">
            <label for="rating2">2</label>

            <input type="radio" id="rating11.3" name="rating11" value="3">
            <label for="rating3">3</label>

            <input type="radio" id="rating11.4" name="rating11" value="4">
            <label for="rating4">4</label>

            <input type="radio" id="rating11.5" name="rating11" value="5">
            <label for="rating5">5</label>

            <div class='d-inline mx-3'>Excellent</div>
        </div>
        <div class="text-center">




          <div class="text-center mb-3">
            <p><strong>12. Do you have an interest in electronics and robotics?</strong></p>
            <div class='d-inline mx-3'>Bad</div>
            <input type="radio" id="rating12.1" name="rating12" value="1">
            <label for="rating1">1</label>

            <input type="radio" id="rating12.2" name="rating12" value="2">
            <label for="rating2">2</label>

            <input type="radio" id="rating12.3" name="rating12" value="3">
            <label for="rating3">3</label>

            <input type="radio" id="rating12.4" name="rating12" value="4">
            <label for="rating4">4</label>

            <input type="radio" id="rating12.5" name="rating12" value="5">
            <label for="rating5">5</label>

            <div class='d-inline mx-3'>Excellent</div>
        </div>
        <div class="text-center">



          <div class="text-center mb-3">
            <p><strong>13. Do you have an interest in building functional applications?</strong></p>
            <div class='d-inline mx-3'>Bad</div>
            <input type="radio" id="rating13.1" name="rating13" value="1">
            <label for="rating1">1</label>

            <input type="radio" id="rating13.2" name="rating13" value="2">
            <label for="rating2">2</label>

            <input type="radio" id="rating13.3" name="rating13" value="3">
            <label for="rating3">3</label>

            <input type="radio" id="rating13.4" name="rating13" value="4">
            <label for="rating4">4</label>

            <input type="radio" id="rating13.5" name="rating13" value="5">
            <label for="rating5">5</label>

            <div class='d-inline mx-3'>Excellent</div>
        </div>
        <div class="text-center">



          <div class="text-center mb-3">
            <p><strong>14. Are you familiar with data structures and algorithms?</strong></p>
            <div class='d-inline mx-3'>Bad</div>
            <input type="radio" id="rating14.1" name="rating14" value="1">
            <label for="rating1">1</label>

            <input type="radio" id="rating14.2" name="rating14" value="2">
            <label for="rating2">2</label>

            <input type="radio" id="rating14.3" name="rating14" value="3">
            <label for="rating3">3</label>

            <input type="radio" id="rating14.4" name="rating14" value="4">
            <label for="rating4">4</label>

            <input type="radio" id="rating14.5" name="rating14" value="5">
            <label for="rating5">5</label>

            <div class='d-inline mx-3'>Excellent</div>
        </div>
        <div class="text-center">



          <div class="text-center mb-3">
            <p><strong>15. Do you find analyzing the efficiency and complexity of algorithms intriguing?</strong></p>
            <div class='d-inline mx-3'>Bad</div>
            <input type="radio" id="rating15.1" name="rating15" value="1">
            <label for="rating1">1</label>

            <input type="radio" id="rating15.2" name="rating15" value="2">
            <label for="rating2">2</label>

            <input type="radio" id="rating15.3" name="rating15" value="3">
            <label for="rating3">3</label>

            <input type="radio" id="rating15.4" name="rating15" value="4">
            <label for="rating4">4</label>

            <input type="radio" id="rating15.5" name="rating15" value="5">
            <label for="rating5">5</label>

            <div class='d-inline mx-3'>Excellent</div>
        </div>
        <div class="text-center">



          <div class="text-center mb-3">
            <p><strong>16. Do you enjoy understanding formal mathematical proofs and the theoretical limits of
              computation?</strong></p>
            <div class='d-inline mx-3'>Bad</div>
            <input type="radio" id="rating16.1" name="rating16" value="1">
            <label for="rating1">1</label>

            <input type="radio" id="rating16.2" name="rating16" value="2">
            <label for="rating2">2</label>

            <input type="radio" id="rating16.3" name="rating16" value="3">
            <label for="rating3">3</label>

            <input type="radio" id="rating16.4" name="rating16" value="4">
            <label for="rating4">4</label>

            <input type="radio" id="rating16.5" name="rating16" value="5">
            <label for="rating5">5</label>

            <div class='d-inline mx-3'>Excellent</div>
        </div>
        <div class="text-center">



          <div class="text-center mb-3">
            <p><strong>17. Do you find the idea of aligning technology with organizational goals intriguing?</strong></p>
            <div class='d-inline mx-3'>Bad</div>
            <input type="radio" id="rating17.1" name="rating17" value="1">
            <label for="rating1">1</label>

            <input type="radio" id="rating17.2" name="rating17" value="2">
            <label for="rating2">2</label>

            <input type="radio" id="rating17.3" name="rating17" value="3">
            <label for="rating3">3</label>

            <input type="radio" id="rating17.4" name="rating17" value="4">
            <label for="rating4">4</label>

            <input type="radio" id="rating17.5" name="rating17" value="5">
            <label for="rating5">5</label>

            <div class='d-inline mx-3'>Excellent</div>
        </div>
        <div class="text-center">



          <div class="text-center mb-3">
            <p><strong>18. Do you find interesting topics like database management and how organizations store, retrieve,
              and manage data?</strong></p>
            <div class='d-inline mx-3'>Bad</div>
            <input type="radio" id="rating18.1" name="rating18" value="1">
            <label for="rating1">1</label>

            <input type="radio" id="rating18.2" name="rating18" value="2">
            <label for="rating2">2</label>

            <input type="radio" id="rating18.3" name="rating18" value="3">
            <label for="rating3">3</label>

            <input type="radio" id="rating18.4" name="rating18" value="4">
            <label for="rating4">4</label>

            <input type="radio" id="rating18.5" name="rating18" value="5">
            <label for="rating5">5</label>

            <div class='d-inline mx-3'>Excellent</div>
        </div>
        <div class="text-center">


          <div class="text-center mb-3">
            <p><strong>19. Would you like to combine computer science with a different field like biology, geology, chemistry or physics?</strong></p>
            <div class='d-inline mx-3'>Bad</div>
            <input type="radio" id="rating19.1" name="rating19" value="1">
            <label for="rating1">1</label>

            <input type="radio" id="rating19.2" name="rating19" value="2">
            <label for="rating2">2</label>

            <input type="radio" id="rating19.3" name="rating19" value="3">
            <label for="rating3">3</label>

            <input type="radio" id="rating19.4" name="rating19" value="4">
            <label for="rating4">4</label>

            <input type="radio" id="rating19.5" name="rating19" value="5">
            <label for="rating5">5</label>

            <div class='d-inline mx-3'>Excellent</div>
        </div>
        <div class="text-center">
          <a href="login.html" button type="button" class="btn btn-form">Submit</button> </a>
       </div>
    </form>
   
    </div>
</section>


 <!-- ======= Footer ======= -->
 <footer id="footer">

  <div class="footer-top">
    <div class="container">
      <div class="row">

        <div class="col-lg-2 col-md-4 footer-contact">
          <h3>MasterMe</h3>
          <p>
            76 Patison Street <br>
            Athens, 10431<br>
            Greece <br><br>
            <strong>Phone:</strong> 210-8203 876<br>
            <strong>Email:</strong> masteMe@aueb.com<br>
          </p>
        </div>

        <div class="col-lg-3 col-md-7 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
            <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
            <li><i class="bx bx-chevron-right"></i> <a href="#">Contact</a></li>
            <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
            <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
          </ul>
        </div>

        <div class="col-lg-6 col-md-8 footer-newsletter">
          <h4>Join Our Newsletter</h4>
          <p>Stay ahead of the curve with our coverage of the latest trends in Masters.</p>
          <form action="" method="post">
            <input type="email" name="email"><input type="submit" value="Subscribe">
          </form>
        </div>

      </div>
    </div>
  </div>

  <div class="container d-md-flex py-4">

    <div class="me-md-auto text-center text-md-start">
      <div class="copyright">
        &copy; Copyright <strong><span>MasterMe</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
    <div class="social-links text-center text-md-right pt-3 pt-md-0">
      <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
      <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
      <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
      <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
      <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
    </div>
  </div>
</footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>
