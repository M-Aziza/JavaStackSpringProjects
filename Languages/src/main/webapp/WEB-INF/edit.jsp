
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
	<form:form style="width:500px;" class="border border-dark-2 m-3  p-4 " action="/languages/update/${language.id}" method="post" modelAttribute="language">
		<input type="hidden" name="_method" value="put"/>
		
		
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