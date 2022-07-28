<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>

    <h3>Here's Your Omikuji</h3>
    <div class="position-absolute top-50 start-50 translate-middle border border-dark-2 mp-3 w-9">

        <p>  In <c:out value="${year}"/> years , you will live in <c:out value="${city}"/> with <c:out value="${person}"/>  as your
room mate,  <c:out value="${hobby}"/> for a living.
The next time you see a  <c:out value="${thing}"/>  , you will
have good luck.
Also, <c:out value="${say}"/>
        </p>
    </div>
</body>
</html>