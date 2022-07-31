<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title> Book Page</title>
</head>
<body>
	

	<div class="container m-4 p-4 ">
	    <h1><c:out value = "${book.title}"/>title</h1>
        <h5>Description : <c:out value = "${book.description}"/></h5>
        <h5>Language : <c:out value = "${book.language}"/></h5>
        <h5>Number Of Pages<c:out value = "${book.numberOfPages}"/></h5>
    	</div>
        

</body>
</html>
