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
<title>Read Share </title>
</head>
<body>
	<div class="container m-3 ">
        <h1>PokeBook</h1>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th scope="col" >Expense</th>
                    <th scope="col" >Vendor</th>
                    <th scope="col" >Amount</th>
                    <th scope="col" >Action</th>
           
                </tr>
            </thead>
               <tbody>
                <c:forEach var="ex" items="${expenses}">
                <tr>
                <c:out value="${ex.name}" />
                
                    <td scope="row" ><a href="/expenses/${ex.id}"><c:out value="${ex.name}" /></a> </td>
                    <td scope="row" ><c:out value="${ex.vendor}" /></td>
                    <td scope="row" ><c:out value="${ex.amount}" /></td>
                    <td><a class="btn btn-primary" href="/expenses/edit/${ex.id}">Edit</a></td> 
                    <td>
                    	<form action="/expenses/delete/${ex.id}" method="post">
							 <input type="hidden" name="_method" value="delete">
							 <input class="btn btn-danger tme-md-2" type="submit" value="Delete">
						</form>
					</td>
                </tr>
                </c:forEach>
            </tbody>
             </table>
        </div>
<hr>


	<div class="container m-3 ">
	<h1>Track an expense </h1>
	<form:form style="width:500px;" class="border border-dark-2 m-3  p-4 " action="/expenses" method="post" modelAttribute="expense">

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
            <input class="btn btn-primary  mt-2"  type="submit" value="Submit">
        </form:form>
	</div>
	
	
	
</body>
</html>