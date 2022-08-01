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
<title>Language</title>
</head>
<body>

	<div class="container m-3 ">
	        <table class="table table-bordered">
	         <thead>
	         	<tr>
	            	<th scope="col" >Name</th>
	                <th scope="col" >Creater</th>
	                <th scope="col" >Current Version</th>
	                <th scope="col" >Action</th>
	           </tr>
	        </thead>
	        <tbody>
	        <c:forEach var="lang" items="${languages}">
	           <tr>
	               <td scope="row" ><a href="/languages/${lang.id}"><c:out value="${lang.name}" /></a> </td>
	               <td scope="row" ><c:out value="${lang.creator}" /></td>
	               <td scope="row" ><c:out value="${lang.currentVersion}" /></td>
	               <td><a class="btn btn-primary" href="/languages/edit/${lang.id}">Edit</a></td> 
	               <td> <form action="/languages/delete/${lang.id}" method="post">
						<input type="hidden" name="_method" value="delete">
						<input class="btn btn-danger tme-md-2" type="submit" value="Delete"> </form>
				   </td>
	           </tr>
	         </c:forEach>
	         </tbody>
		</table>
	</div>
	<hr>
	<div class="container m-3 ">
	<form:form style="width:500px;" class="border border-dark-2 m-3  p-4 " action="/languages" method="post" modelAttribute="language">
		<div class=" mb-3" >
                <form:label class="form-label"  path="name"> Name : </form:label>
                <form:errors class="text-danger" path="name" />
                <form:input path="name" class="form-control" />
            </div>
            
            <div class=" mb-3" >
                <form:label class="form-label"  path="creator"> Creator : </form:label>
                <form:errors class="text-danger" path="creator" />
                <form:input path="creator" class="form-control" />
            </div>
            
            <div class=" mb-3" >
                <form:label class="form-label"  path="currentVersion"> Current Version : </form:label>
                <form:errors class="text-danger" path="currentVersion" />
                <form:input path="currentVersion" class="form-control" />
            </div>
             <input class="btn btn-primary  mt-2"  type="submit" value="Submit">
	</form:form>
	</div>
	
	
	
</body>
</html>