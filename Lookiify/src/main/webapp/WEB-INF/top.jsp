

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Lookify</title>
<style>
    .d-flex {
    display: flex!important;
    align-items: center;
}
</style>
</head>
<body>

<div class="container mt-3">
    <!-- Bottom of the page  -->
    <h1>Top Ten Songs </h1>
        <div>
            <table class="table border">
                <thead>
                    <tr>
                        <td>Name </td>
                        <td>Rating</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="s" items="${topTen}">
                    <tr>
                        <td scope="row" > <a href="songs/${s.id}"><c:out value="${s.titleSong}" /></a></td>
                        <td scope="row" ><c:out value="${s.rating}" /></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
            
        <div>
            <a href="/dashboard">Dashboard</a>
        </div>
    </div>
    </div>
</body>
</html>