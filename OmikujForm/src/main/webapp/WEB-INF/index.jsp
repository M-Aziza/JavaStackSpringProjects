<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
    <div class="container position-absolute top-50 start-50 translate-middle w-9">
        <h3 class="text-center">SEND A Omikuji </h3>
        <div class="border border-dark-2 mp-3  ">
            <form  action="/send" method="post">
                <div class=" p-4">
                    <label class="form-label" >Pick up a number from 5 to 25 </label>
                    <input type="number" name="year" min="5" max="25">
                </div>
                <div class=" p-4 col">
                <label>Enter the name of any city : </label>
                <input type="text" name="city" >
                </div>
                <div class=" p-4 col">
                <label>Enter the name of any real person : </label>
                <input type="text" name="person" >
                </div>
                <div class=" p-4 col">
                <label>Enter profissional endeavor or hobby : </label>
                <input type="text" name="hobby" >
                </div>
                <div class=" p-4 col">
                <label>Enter any type of living thing : </label>
                <input type="text" name="thing" >
                </div>
                <div class=" p-4 col">
                <label>Say something nice to someone : </label>
                <input type="text" name="say" >
                </div>
                <h5 class=" p-4 col">Send and show a friend</h5>
                <div class="mb-3 p-4" >
                    <input  class="btn btn-primary "   type="submit" value="Send">
                </div>
            </form>
        </div>
    </div>

</body>
</html>