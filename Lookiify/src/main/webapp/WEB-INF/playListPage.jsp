

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
</head>
<body>
    <div class="container mt-3">
    
    
        <!-- Top of the page -->
        <div  class="d-flex justify-content-evenly">
            <div class="d-flex ">
                <a class="m-5" href="songs/new">Add New</a>
                <a class="m-5" href="/search/topTen">Top Songs</a>
            </div>
            
            <div >
                <form style="width:500px;"   class="m-5 d-flex form-inline input-group " action="/search">
                    <input  type="search" name="artist" class="form-control " placeholder=" Search for artist" aria-label="Search" aria-describedby="search-addon" required />
                    <button type="submit" class=" btn btn-outline-secondary"> Search Artist </button>
                </form>
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