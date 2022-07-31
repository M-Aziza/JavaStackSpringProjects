<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>All Books </title>
</head>
<body>
    <div class="container m-3 ">
        <h1>All Books</h1>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th scope="col" >ID</th>
                    <th scope="col" >Title</th>
                    <th scope="col" >Language</th>
                    <th scope="col" >Number of Pages</th>
                </tr>
            </thead>

            <c:forEach var="book" items="${books}">
                <tr>
                    <td scope="row" ><c:out value="${book.id}" /></td>
                    <td><a href="/books/${book.id}"><c:out value="${book.title}" /></a> </td>
                    <td><c:out value="${book.language}" /></td>
                    <td><c:out value="${book.numberOfPages}" /></td>
                </tr>
            </c:forEach>
        </table>
        </div>
</body>
</html>
