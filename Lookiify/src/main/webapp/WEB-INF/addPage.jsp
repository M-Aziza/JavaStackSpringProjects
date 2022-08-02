
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
    <div class="container mt-3">

        <div >
            <div class="d-md-flex justify-content-md-end"><a href="/dashboard" class="btn btn-danger ">Dashboard</a></div>

            <form:form style="width:500px;" class="border border-dark-2 m-3  p-4 " action="/dashboard" method="post" modelAttribute="song">
            <p class=" mb-3">
                <form:label class="form-label"  path="titleSong">Title : </form:label>
                <form:input class="form-control" path="titleSong" />
                <form:errors class="text-danger"  path="titleSong" />
            </p>
            <p class=" mb-3">
                <form:label class="form-label"  path="artistName">Artist : </form:label>
                <form:input class="form-control" path="artistName" />
                <form:errors  class="text-danger" path="artistName" />
            </p>
            <p class=" mb-3">
                <form:label class="form-label"  path="rating">Rating : </form:label>
                <form:input class="form-control"  type="number"  min="1" max="10" path="rating" />
                <form:errors class="text-danger"  path="rating" />
            </p>
            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
            <input class="btn btn-primary tme-md-2" type="submit" value="Add Song">
            </div>
            </form:form>

        </div>
    </div>
</body>
</html>