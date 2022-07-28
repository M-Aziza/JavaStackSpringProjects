<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title> Dash Board </title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<style>
    .bottom{
    margin-left: 35px;
    margin-top: 20px;
    height: 200px;
    padding: 10px;
    border: 1px solid;
    overflow-y: scroll;
}
</style>
</head>
<body>


    <div class="container-lg m-3">

        <div id="top">
            <p>Your Gold</p>
            <!-- input with session identifier will show the data from the back in the value -->
            <input readonly type="text" name="gold_amount"   value="<c:out value="${gold}"/>">
            <a class="btn btn-dark" href="/destroy">Reset</a>
        </div>
        <hr>
        <div class="d-flex flex-row mb-3 justify-content-evenly ">
        <!-- Farm Form to post user selection  -->
            <div class="border border-dark-2 text-center m-4 p-4" >
                <form action="/earnGold" method="POST">
                    <h4>Farm</h4>
                    <p>(earn 10-20 gold)</p>
                    <!-- hidden input to determine identifier and use it in the back end  -->
                    <input type="hidden" name="place" value="farm">
                    <button class="btn btn-dark" type="submit">Find Gold</button>
                    <!-- <input type="submit" value="!"> -->
                </form>
            </div>
            <!-- Cave Form to post user selection  -->
            <div class="border border-dark-2 text-center m-4 p-4">
                <form action="/earnGold" method="POST">
                    <h4>Cave</h4>
                    <p>(earns 5-10 gold)</p>
                    <!-- hidden input to determine identifier and use it in the back end  -->
                    <input type="hidden" name="place" value="cave">
                    <button class="btn btn-dark" type="submit">Find Gold</button>
                </form>
            </div>
            <!-- House Form to post user selection  -->
            <div class="border border-dark-2 text-center m-4 p-4" >
                <form action="/earnGold" method="POST">
                    <h4>House</h4>
                    <p>(earns 2-5 gold)</p>
                    <!-- hidden input to determine identifier and use it in the back end  -->
                    <input type="hidden" name="place" value="house">
                    <button class="btn btn-dark" type="submit">Find Gold</button>
                </form>
            </div>
            <!-- Casino Form to post user selection  -->
            <div class="border border-dark-2 text-center m-4 p-4 ">
                <form action="/earnGold" method="POST">
                    <h4>Casino!</h4>
                    <p>(earn/takes0-50 gold)</p>
                    <!-- hidden input to determine identifier and use it in the back end  -->
                    <input type="hidden" name="place" value="casino">
                    <button class="btn btn-dark" type="submit">Find Gold</button>
                </form>
            </div>
        </div>
        <hr>
        <div>
            <div class="bottom" >
                <p>Activities:</p>
                <div >
                <c:forEach var="x" items='${activities}'>
                    <c:choose>
                    <c:when test = "${x.contains('lost')}">
                        <p style="color: red;" ><c:out value="${x}"/></p>
                    </c:when>
                        
                        <c:otherwise>
                    <p style="color: green;" ><c:out value="${x}"/></p>
                        </c:otherwise>
                    </c:choose> 
                </c:forEach>
                    
                </div>
            </div>
        </div>
    </div>
</body>
</html>