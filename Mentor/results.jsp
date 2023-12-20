<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="exercise.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <%@ include file="head.jsp" %>
</head>

<body>
  <%
  User user = (User)session.getAttribute("user");	
  UserDAO userdao = new UserDAO();
  MasterDAO md = new MasterDAO();
 
  if (user == null) {
  %> 
    request.setAttribute("message","You don't have access to this page.First Log in"); %>
   <jsp:forward page="login.jsp"/>

    <%}else{
      int userid = userdao.getIdUserDB(user);
      int idquestionnaire = userdao.getIdQuestionnaireDB(userid);

      if (idquestionnaire == -1){ %>
        request.setAttribute("message","Answer the questionnaire to view results"); %>
        <jsp:forward page="questionnaire.jsp"/>
      <%}else{ 
        Questionnaire questionnaire = new Questionnaire();
        int [] topid = questionnaire.topCategories(idquestionnaire);
      %>

     <!-- ======= Header ======= -->
     <header id="header" class="fixed-top">
      <div class="container d-flex align-items-center">
  
        <h1 class="logo me-auto"><a href="index.jsp" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a></h1>
  
        <nav id="navbar" class="navbar order-last order-lg-0">
          <ul>
            <li><input type="search_home" placeholder="  Search Masters..."></li>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="about.jsp">About</a></li> 
            <li><a href="masters.jsp">Masters</a></li> 
            <li class="active"><a href="results.jsp">Results</a></li>    
            <li><a href="contact.jsp">Contact</a></li>        
            <li><a href="logout.jsp">Log out | <%=user.getFirstname()%> <%=user.getLastname()%> </a></li> 
          </ul>
          <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->
      </div>
    </header><!-- End Header -->

  <main id="main" data-aos="fade-in">
    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
      <div class="container">
        <h2>Questionnaire Results</h2>
        <p>In this section you can see your top 3 Masters</p>
        <p></p>
      </div>
    </div><!-- End Breadcrumbs -->
    <br>
    <section id="courses" class="courses">
      <div class="container" data-aos="fade-up">
        <div class="row" data-aos="zoom-in" data-aos-delay="100">
   <%
   int count = 1;
    for (int tm : topid ){ 
      %>
      <h1 style="color: #c91603;"><%=count++%>.</h1>
      <br>
      <%

      List<Master> listm =  md.getTopMasters(tm);

      for (Master mr:listm){
      %>
      <div class="col-lg-12 col-md-12 d-flex align-items-stretch justify-content-center">
              <div class="course-item">
              <div class="course-content">
                <div class="d-flex justify-content-between align-items-center mb-3">
                  <h4><%=mr.getName()%></h4>
                  <p class="year"><%=mr.getCost()%>€</p>
                </div>
              <h3><a href="masterdetails.jsp?masterid=<%=mr.getIdMaster()%>"><%=mr.getTitle()%></a></h3>
              <p><%=mr.getDescription()%></p>
        <div class="trainer d-flex justify-content-between align-items-center">
        <div class="trainer-profile d-flex align-items-center">
          <img src="#" class="img-fluid" alt="">
          <span><%=mr.getUniversity()%></span>
        </div>
        <a href="masterdetails.jsp?masterid=<%=mr.getIdMaster()%>" class="btn-get-started">For more details click here</a>
      </div>
    </div>
  </div>
</div> <!-- End Course Item-->

<%
      }
      } 
    }
%>
</div>
</div>
</section><!-- End Courses Section -->
</main><!-- End #main -->

<%@ include file="footer.jsp" %>

</body>

<%} %>
</html>