<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/css/style.css">
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			<!-- int value=Integer.parseInt((String)request.getAttribute("counter")); %>   -->
			<% Integer count = (Integer) session.getAttribute("counter"); %>

            <div class=" position-absolute top-50 start-50 translate-middle ">
                <h4>You have visit this page <a href="#"> http://localhost:8080</a>  <%= count %> times </h4>
                <a href="/">Test another Visit?</a>

            </div>


</body>
</html>