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
<title>Registration and Login</title>
</head>
<body>
    <div class="container-md m-5"  >
        <h1 class="text-success" >Welcome!</h1>
        <h3 >Join our growing community </h3>
        <div class=" row justify-content-between">
            <div class="col-6">
                <form:form class="mt-5 border p-5" action="/register" method="post" modelAttribute="newUser">
                        <form:errors path="confirm" class="text-danger" />
                        <form:errors path="password" class="text-danger" />
                        <form:errors path="email" class="text-danger" />
                        <form:errors path="userName" class="text-danger" />
                    <div class="form-group">
                        <label>User Name:</label>
                        <form:input path="userName" class="mb-2 form-control" />
                    </div>
                    <div class="form-group">
                        <label>Email:</label>
                        <form:input path="email" class="mb-2 form-control" />
                    </div>
                    <div class="form-group">
                        <label>Password:</label>
                        <form:password path="password" class="mb-2 form-control" />
                    </div>
                    <div class="form-group">
                        <label>Confirm Password:</label>
                        <form:password path="confirm" class="mb-2 form-control" />
                    </div>
                    <input type="submit" value="Register" class=" mt-5 btn btn-primary" />
                </form:form>
        
            </div>
            <div class="col-6">
                
                    <form:form class="m-5 border p-5" action="/login" method="post" modelAttribute="newLogin">
                            <form:errors path="password" class="text-danger" />
                            <form:errors path="email" class="text-danger" />
                        <div class="form-group">
                            <label>Email:</label>
                            <form:input path="email" class="mb-2 form-control" />
                        </div>
                        <div class="form-group">
                            <label>Password:</label>
                            <form:password path="password" class="mb-2 form-control" />
                        </div>
                        <input type="submit" value="Login" class=" mt-5 btn btn-success" />
                    </form:form>
        
            </div>
        </div>


    </div>
    

</body>
</html>