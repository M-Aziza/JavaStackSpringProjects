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
    <title>New Dojo</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

    <div class="container-md ">
        <div class="card p-4 text-center" >
        <h1>New Dojo</h1>
        <form:form  class="border border-dark-2 m-3  p-4 " action="/dojos/new" method="post" modelAttribute="dojo">
            <div class=" mb-3" >
                <form:label class="form-label"  path="name"> Dojo Name   </form:label>
                <form:errors class="text-danger" path="name" />
                <form:input path="name" class="form-control" />
            </div>
            
            <input class="btn btn-primary  mt-2"  type="submit" value="Create">
        </form:form>
        <a href="/">Home Page </a>
        <br>
        <a href="/ninjas">ninjas </a>
</div>
    </div>
</body>
</html>