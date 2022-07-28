<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />


</head>

<body>

    <div class="container-lg m-3 p-3 d-flex flex-column mb-3 " >
        <!-- <div class="justify-content-center text-center "  > -->
            <h2 class="text-center" >Here's Your Omikuji</h2>
            <div class=" text-center p-3 m-auto border border-dark-3" style="width: 50rem; height: 200px; background-color: rgb(154, 183, 236);">
                <h5>  
                In <c:out value="${year}"/> years , you will live 
                in <c:out value="${city}"/> with <c:out value="${person}"/> as your
                room mate,  <c:out value="${hobby}"/> for a living.
                The next time you see a  <c:out value="${thing}"/> , you will
                have good luck. Also, <c:out value="${say}"/>
                </h5>
            </div>
            <a class=" mt-4 text-center"  href="/omikuji">Go Back</a>
        <!-- </div> -->
    </div>
</body>
</html>