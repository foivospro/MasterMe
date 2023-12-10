<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- java import 
<%@ page import="...." %> 
-->

<%
User user = (User)session.getAttribute("user");		

<!-- Verify that all radio buttons have been selected -->
for (int i = 1; i <= 20; i++) {
    String paramName = "rating" + i;
    String ratingValue = request.getParameter(paramName);
    if (ratingValue == null) {
        request.setAttribute("message", "You have not checked all the radio-buttons");
%>
        <jsp:forward page="form.jsp"/>
<%
        }

<!-- Check if user is logged in -->
if (session.getAttribute("user") == null) {
%>

    <jsp:forward page="login_ex3_8210080.jsp"/>

<% else {
        int [] score = new int[19];
        for (int i = 1; i <= 20; i++) {
                String paramName = "rating" + i;
                String ratingValue = request.getParameter(paramName);
                score[i-1] = ratingValue;
        }

        Questionnaire q = new Questionnaire();
        q.updateCategoryScore(score);
        q.topCategories



}
%>

