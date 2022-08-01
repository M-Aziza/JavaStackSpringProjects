

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<meta charset="UTF-8">
<meta charset="UTF-8">
<title>Edit My Task</title>
</head>
<body>
<div class="container m-3 ">
	<h1>Edit Expense </h1>

	<form:form style="width:500px;" class="border border-dark-2 m-3  p-4 "  action="/expenses/update/${expense.id}" method="post" modelAttribute="expense">
		<input type="hidden" name="_method" value="put"/>
	
            
    		<div class=" mb-3" >
                <form:label class="form-label"  path="name">PokeBook Name : </form:label>
                <form:errors class="text-danger" path="name" />
                <form:input path="name" class="form-control" />
            </div>

            <div>
                <form:label class="form-label"  path="vendor">Vendor : </form:label>
                <form:errors class="text-danger" path="vendor" />
                <form:input path="vendor" class="form-control" />
            </div>

            <div>
                <form:label class="form-label"  path="description">Description : </form:label>
                <form:errors class="text-danger" path="description" />
                <form:input path="description" class="form-control" />
            </div>

            <div>
                <form:label class="form-label" path="amount">Amount : </form:label>
                <form:errors class="text-danger" path="amount" />
                <form:input path="amount" class="form-control" />
            </div>
          
			<div class="mt-2">
				<input class="btn btn-danger tme-md-2" type="submit" value="Submit"/>
				<a class="btn btn-primary" href="/expenses">Go Back</a>
			</div>
				
	</form:form>
</div>

</body>
</html>