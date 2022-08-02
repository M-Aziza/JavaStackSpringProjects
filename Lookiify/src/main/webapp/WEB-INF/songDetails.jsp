
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
    
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Details</title>
</head>
<body>
    <div class="container mt-5" >
        <div>
            <a href="/dashboard">Dashboard</a>
        </div>
        
        <div>
            <h1 class="text-primary">Details</h1>
            <h2>Title : <c:out value = "${topTen.titleSong}"/> </h2>
            <h2>Artist : <c:out value = "${topTen.artist}"/> </h2>
            <h2>Rating(1-10) : <c:out value = "${topTen.rating}"/></h2>
        </div>
        <div>
            <a href="/delete/${song.id}">Delete</a>
        </div>
    </div>


</body>
</html>