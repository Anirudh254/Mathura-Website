<%-- 
    Document   : update
    Created on : Dec 29, 2016, 4:20:17 PM
    Author     : Go
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Content</title>
    </head>
    <body style="background-color: #5bc8ac">
        <div style="margin-left: 50px">
        <h1>Select What You want to Update</h1><br><br>
        <form action="uploads.jsp" method="post">
            <input type="radio" value="exam" name="updateradio"/>Update Exams  <br><br>
            <input type="radio" value="college" name="updateradio"/>Update Collges  <br><br>
            <input type="radio" value="coaching" name="updateradio"/>Update Coachings  <br><br>
            <input type="radio" value="schools" name="updateradio"/>Update Schools  <br><br>
              <input type="radio" value="hospitals" name="updateradio"/>Update Hospitals<br><br>
             <input type="radio" value="shops" name="updateradio"/>Update Shops <br><br>
            <input type="radio" value="banks" name="updateradio" />Update Banks  <br><br>
            <input type="radio" value="hotels" name="updateradio"/>Update Hotels<br><br>
            <input type="radio" value="gallery" name="updateradio"/>Update Gallery<br><br>
            <input type="submit" value="Submit"/>
        </form>
        </div>
        </body>
</html>
