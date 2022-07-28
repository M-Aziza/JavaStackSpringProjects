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
    <div class=" m-3 p-3">
        <h3 class="text-center">SEND A Omikuji </h3>
        <hr>
        <div class="m-3 h-100 d-flex align-items-center justify-content-center   ">
            <form     style="width:500px;" class="border border-dark-2 m-3  p-4 " action="/send" method="post">
                <div class=" mb-3">
                    <label class="form-label" >Pick up a number from 5 to 25 </label>
                    <input class="form-control"  type="number" name="year" min="5" max="25">
                </div>
                <div class=" mb-3 col">
                <label class="form-label" >Enter the name of any city : </label>
                <input class="form-control"  type="text" name="city" >
                </div>
                <div class=" mb-3 col">
                <label class="form-label" >Enter the name of any real person : </label>
                <input class="form-control"  type="text" name="person" >
                </div>
                <div class=" mb-3 col">
                <label class="form-label" >Enter profissional endeavor or hobby : </label>
                <input class="form-control"  type="text" name="hobby" >
                </div>
                <div class=" mb-3 col">
                <label class="form-label" >Enter any type of living thing : </label>
                <input class="form-control"  type="text" name="thing" >
                </div>
                <div class=" mb-3 col">
                <label class="form-label" >Say something nice to someone : </label>
                <textarea   class="form-control"  type="text" name="say" name="" id="" cols="30" rows="10"></textarea>
                </div>
                <h5 class=" mb-3 col">Send and show a friend</h5>
                <div class="d-grid gap-2" >
                    <input  class="btn btn-secondary"   type="submit" value="Send">
                </div>
            </form>
        </div>
    </div>

</body>
</html>