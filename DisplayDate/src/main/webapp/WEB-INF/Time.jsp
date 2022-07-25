<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date" %>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
     
<!DOCTYPE html>
<html>
<head>

    <!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>Current Time</title>
 <script type="text/javascript" src="/javaScript/timeScript.js"></script>
</head>
<body>
    <div class="text-center position-absolute top-50 start-50 translate-middle">
        <h1 class="  text-success " ><c:out value="${time}"/> </h1>
            <a href="/">Go Back</a>
    </div>
</body>
</html>


