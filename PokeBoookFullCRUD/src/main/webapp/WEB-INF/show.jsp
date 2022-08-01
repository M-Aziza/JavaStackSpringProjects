<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title> Show Expense </title>
</head>
<body>
	

	<div class="container m-4 p-4 ">
	
	    <h1>Expense</h1>
        <h5>Expense Name  : <c:out value = "${expense.name}"/></h5>
        <h5>Expense Description : <c:out value = "${expense.description}"/></h5>
        <h5>Vendor  : <c:out value = "${expense.vendor}"/></h5>
        <h5>Amount Spent :  <c:out value = "${expense.amount}"/></h5>
    	<a class="btn btn-primary" href="/expenses">Go Back</a>
    </div>
    	
        

</body>
</html>