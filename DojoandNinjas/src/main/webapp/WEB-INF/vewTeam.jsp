<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Team Page</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	
        <div class="container-md">
            <div class="card p-4 text-center text-danger" >

                <h1><c:out value="${ninja.name}"/> Ninjas</h1>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th scope="col">First Name </th>
                            <th scope="col" >Last Name </th>
                            <th scope="col" >Age </th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- for loop  -->
                        <c:forEach items="${ninjas}" var="ninja">
                        <tr>
                            <td><c:out value="${ninja.firstName}"/></td>
                            <td><c:out value="${ninja.lastName}"/></td>
                            <td><c:out value="${ninja.age}"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <a href="/">Home Page </a>
            </div>
        </div>    
	
</body>
</html>