<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/style.css">
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>


<meta charset="UTF-8">
<title>Fruit Store</title>
</head>
<body>

	<div  class="border m-3 p-3 border-dark" >
	
		<h1> Fruit Store </h1>
		
			<div>
				<table class="table" >
				<thead>
				<tr>
					<th scope="col">Name  </th>
					<th scope="col">Price  </th>
				</tr>
				</thead>
				<tbody>
		
				<c:forEach var="x" items="${fruits}">
				<tr>
					<td>
						<c:out value="${x.name}"/>
					</td>
					<td>
					<c:out value="${x.price}"/>
					</td>
				</tr>
				</c:forEach>
				</tbody>
				</table>
			</div>
	</div>
</body>
</html>