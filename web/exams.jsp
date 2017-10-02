<%@page  import="java.sql.*" %>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Data Table</title>
 <link rel="stylesheet" href="css/tables.css">
  </head>
  <body>
    <html lang="en">
<head>
	<meta charset="utf-8" />
	<title>Table Style</title>
	<meta name="viewport" content="initial-scale=1.0; maximum-scale=1.0; width=device-width;">
</head>

<body style="background-image: url(images/exam.jpg);background-size: 100%">
        <div class="scrollable">
<h3>Exams</h3>
</div>
    <table class="table-fill">
<thead>
<tr>
    <th class="text-left">S.No</th>
<th class="text-left">For</th>
<th class="text-left">Exam</th>
<th class="text-left">Syllabus</th>
<th class="text-left">Important</th>
<th class="text-left">Click here</th>
</tr>
</thead>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
            
              <%
         int i=0;
                                   
 try
 {
                                    Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
            "system", "oracle");
                                    Statement st= con.createStatement();
                                    ResultSet rs=st.executeQuery("select * from exams");
                                    while(rs.next())
                                         {
                                  i++;           
                           %><tr> <td><% out.println(i);%></td>
                                  <td><%= rs.getString("fora")%></td>
                                  <td><%= rs.getString("exam")%></td>
                                  <td><%= rs.getString("syllabus")%></td>
                                  <td><%= rs.getString("important")%></td>
                                  <td><a href='<%= rs.getString("click_here")%>'>click here</a></td>
                              </tr>
                           <%
                           }              }
                   
catch(Exception e)
  {
out.println(e);
  }
%>
   </table>           
</div>
</body>
</html>
