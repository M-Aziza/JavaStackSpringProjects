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

    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<title>Welcome <c:out value="${user.userName}" /></title>
</head>
<body>
    
    <div class="container-md m-5"  >
    <h1 class="text-success" >Welcome! <c:out value="${user.userName}" /></h1>
    <h3 >This is the dashboard, Nothing to see here yet  </h3>
    <a href="/logout">Logout</a>
    </div>
</body>
</html>