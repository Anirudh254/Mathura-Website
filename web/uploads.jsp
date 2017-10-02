<html>
    <head>    <title>Upload Data</title>
    <link rel="shortcut icon" type="image/x-icon" href="images/icon.ico" />
</head> <body style="background-color: #e6d72a">
<div style="font-size: 20px;margin-left: 50px">
<%
    String ab=request.getParameter("updateradio");
 if("shops".equals(ab)){%>
 <form action="addShops.jsp">
     For     <br><input type="text" name="for"/><br><br>
     Shop Name<br><input type="text" name="shopName"/><br><br>
     Address<br><input type="text" name="address"/><br><br>
     Products<br><input type="text" name="products"/><br><br>
     <input type="submit" value="Submit"/>
 </form>  
 <%}
 else if("exam".equals(ab)){%>
 <form action="addExam.jsp">
     For<br><input type="text" name="for"/><br><br>
     Exam<br><input type="text" name="examName"/><br><br>
     Syllabus<br><input type="text" name="syllabus"/><br><br>
     Important<br><input type="text" name="important"/><br><br>
     Website Link<br><input type="text" name="website"/><br><br>
     <input type="submit" value="Submit"/>
 </form>  
<%}
 else if("college".equals(ab)){%>
 <form action="addCollege.jsp">
     For<br><input type="text" name="for"/><br><br>
     College Name<br><input type="text" name="collegeName"/><br><br>
     Offering<br><input type="text" name="offering"/><br><br>
     Website Link<br><input type="text" name="website"/><br><br>
     <input type="submit" value="Submit"/>
 </form>    
 <%}
 else if("coaching".equals(ab)){%>
  <form action="addCoaching.jsp">
     For<br><input type="text" name="for"/><br><br>
     Coaching Name<br><input type="text" name="coachingName"/><br><br>
     Address<br><input type="text" name="address"/><br><br>
     Website Link<br><input type="text" name="website"/><br><br>
     <input type="submit" value="Submit"/>
 </form>   
 <%}
 else if("schools".equals(ab)){%>
   <form action="addSchool.jsp">
     For<br><input type="text" name="for"/><br><br>
     Type<br><input type="text" name="type"/><br><br>
     School Name<br><input type="text" name="schName"/><br><br>
     Address<br><input type="text" name="address"/><br><br>
     Website Link<br><input type="text" name="website"/><br><br>
     <input type="submit" value="Submit"/>
 </form>  
 <%}
 else if("hospitals".equals(ab)){%>
   <form action="addHospitals.jsp"><br><br>
     For<br><input type="text" name="for"/><br><br>
     Hospital Name<br><input type="text" name="hospitalName"/><br><br>
     Address<br><input type="text" name="address"/><br><br>
     Website Link<br><input type="text" name="website"/><br><br>
     <input type="submit" value="Submit"/>
 </form>  
 <%}
 else if("banks".equals(ab)){%>
   <form action="addBanks.jsp">
     For<br><input type="text" name="for"/><br><br>
     Bank's Name<br><input type="text" name="bankName"/><br><br>
     Address<br><input type="text" name="address"/><br><br>
     Website Link<br><input type="text" name="website"/><br><br>
     <input type="submit" value="Submit"/>
 </form>  
 <%}
 else if("hotels".equals(ab)){%>
   <form action="addHotels.jsp">
     Hotel Name<br><input type="text" name="name"/><br><br>
     Star Rating<br><input type="text" name="rating"/><br><br>
     Address<br><input type="text" name="address"/><br><br>
     Contact<br><input type="text" name="contact"/><br><br>
     Website Link<br><input type="text" name="website"/><br><br>
     <input type="submit" value="Submit"/>
 </form>  
 <%} 
else if("gallery".equals(ab)){%>
<form action="addphoto" method="post" enctype="multipart/form-data">
     Description for the image<br><input type="text" name="description"/><br><br>
     Select Input File<br><input type="file" name="photo"/><br><br>
     <input type="submit" value="Submit Photo"/><br><br>
 </form>  
<%}%>
</div>
    </body>
</html>