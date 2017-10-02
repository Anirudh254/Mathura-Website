<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="c" %>

<%@page import="java.sql.*" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javazoom.upload.UploadFile"%>
<%@page import="javazoom.upload.UploadBean"%>
<%@page import="java.util.Hashtable"%>
<%@page import="javazoom.upload.MultipartFormDataRequest"%>

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
    <form action="productdata.jsp" method="post" enctype="multipart/form-data">
    <img id="uploadPreview" style="width: default; height: default;" />
<input id="uploadImage" type="file" name="file" onchange="PreviewImage();" /><br/>
<input type="submit" name="Add" value="Add" />
<script type="text/javascript">

    function PreviewImage() {
        var oFReader = new FileReader();
        oFReader.readAsDataURL(document.getElementById("uploadImage").files[0]);

        oFReader.onload = function (oFREvent) {
            document.getElementById("uploadPreview").src = oFREvent.target.result;
        };
    };
</script>
    </form>
   </body>
</html>
