

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
        
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title> ${language.name} </title>
</head>
<body>

	<div class="container m-4 p-4 ">
	<table class="table">
		<tr>
			<td><a class="btn btn-primary" href="/languages"> Dashboard </a></td>
			<td>
			<form action="/languages/delete/${language.id}" method="post">
						<input type="hidden" name="_method" value="delete">
						<input class="btn btn-danger tme-md-2" type="submit" value="Delete"> 
		    </form>
			</td>
		</tr>
	</table>
    	
    	
	
	    <h1> Language Details </h1>
        <h5>Language Name  : <c:out value = "${language.name}"/></h5>
        <h5>Language Creator : <c:out value = "${language.creator}"/></h5>
        <h5>Current Version  : <c:out value = "${language.currentVersion}"/></h5>
        <td><a class="btn btn-primary" href="/languages/edit/${language.id}">Edit</a></td>
    </div>
</body>
</html>