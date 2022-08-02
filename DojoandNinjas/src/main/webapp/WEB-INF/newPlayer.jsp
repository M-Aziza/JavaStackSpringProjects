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
    <title>New Ninja</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

        <div class="container-md ">
        <div class="card p-4 text-center" >
            <h1>New Ninja</h1>
            <form:form class="border border-dark-2 m-3  p-4 " action="/ninjas/new" method="post" modelAttribute="ninja">
                <div class=" mb-3" >
                    <form:label class="form-label"  path="firstName"> First Name  : </form:label>
                    <form:errors class="text-danger" path="firstName" />
                    <form:input path="firstName" class="form-control" />
                </div>

                <div class=" mb-3" >
                    <form:label class="form-label"  path="lastName"> Last Name  : </form:label>
                    <form:errors class="text-danger" path="lastName" />
                    <form:input path="lastName" class="form-control" />
                </div>

                <div class=" mb-3" >
                    <form:label class="form-label"  path="age"> Age : </form:label>
                    <form:errors class="text-danger" path="age" />
                    <form:input path="age" class="form-control" />
                </div>
                <div>
                    <form:select path="dojo">
                                <c:forEach items="${dojos}" var="dojo">
                                    <form:option  value ="${dojo.id}" class="form-control">
                                        <c:out value="${dojo.name}"/>
                                    </form:option>
                                </c:forEach>
                    </form:select>
                </div>
                <input class="btn btn-primary  mt-2"  type="submit" value="Create">
            </form:form>
                    <a href="/">Home Page </a>
                    <br>
        			<a href="/dojos">Dojo</a>
        </div>
        </div>

</body>
</html>