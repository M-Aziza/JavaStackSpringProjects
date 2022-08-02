

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
    <!-- Top of the page -->
    <div  class="d-flex  justify-content-evenly  ">
        <div >
            <h4>Songs by Artist : <c:out value="${artist}"></c:out>  </h4>
        </div>
            <form style="width:500px;"   class=" d-flex form-inline input-group mb-3 " method="post" action="/search">
                <input  type="text" name="roll_no" class="form-control " placeholder=" " />
                <button type="submit" name="save" class=" btn btn-outline-secondary"> New Search </button>
            </form>
        <div>
            <a href="/dashboard">Dashboard</a>
        </div>
    </div>
    <!-- Bottom of the page  -->
    <div>
        <table class="table border">
            <thead>
                <tr>
                    <td>Name </td>
                    <td>Rating</td>
                    <td>Action</td>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="s" items="${songs}">
                <tr>
                    <td scope="row" > <a href="songs/${s.id}"><c:out value="${s.titleSong}" /></a></td>
                    <td scope="row" ><c:out value="${s.rating}" /></td>
                    <td scope="row" > <a href="/delete/${s.id}"> Delete</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>