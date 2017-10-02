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
	<title>College</title>
	<meta name="viewport" content="initial-scale=1.0; maximum-scale=1.0; width=device-width;">
</head>

<body>
    <form action="">    
    <div class="table-title">
<h3>College</h3>
<h6><a href="Add College.jsp">Add Your College
    </a></h6>
</div>
<table class="table-fill">
<thead>
<tr>
    <th class="text-left">S.No</th>
<th class="text-left">For</th>
<th class="text-left">college name</th>
<th class="text-left">Offering</th>

<th class="text-left">Click here</th>
</tr>
</thead>
  


<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
            
              <%
         
try
                    {
                                    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
            "system", "oracle");
                                    Statement st= con.createStatement();
                                    ResultSet rs=st.executeQuery("select * from college");
                                    while(rs.next())
                                         {
                                             out.println("<tr>");
                                             out.println("<td valign='top'>"+rs.getString(1)+"'</td>");
                                             out.println("<td>'"+rs.getString(2)+"'</td>");
                                             out.println("<td>'"+rs.getString(3)+"'</td>");
                                             out.println("<td>'"+rs.getString(4)+"'</td>");
                                             
                                            out.println("<td><a href='http://"+rs.getString(5)+"'>click here</a></td>");
                                             out.println("</tr>");
                                         }
                   }
catch(Exception e)
  {
out.println(e);
  }

%>
   <input type="hidden"  name="t1"  />
</table>           
</div>
</form>
</body>
</html>
