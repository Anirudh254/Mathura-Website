<%-- 
    Document   : addImagesGallery
    Created on : Dec 29, 2016, 8:05:26 PM
    Author     : Go
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Images</title>
    </head>
    <body>
       <div style="margin-left: 50px;font-size: 50px">
        <form enctype="multiform/data" action="addphoto">
            Select the image <input type="file" name="photo"/>
            <input type="submit" value="Add Photo"/>
        </form>
       </div>
    </body>
</html>
