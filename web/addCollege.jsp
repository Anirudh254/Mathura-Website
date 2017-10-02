    <%@page import="java.sql.*"%>
<%
String fora=request.getParameter("for");
String collegeName=request.getParameter("collgeName");
String offering=request.getParameter("syllabus");
String website=request.getParameter("website");
 Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
            "system", "oracle");   
PreparedStatement st = con.prepareStatement("insert into colleges values('"+fora+"','"+collegeName+"','"+offering+"','"+website+"')");
st.executeUpdate();
con.close();
%>
<script>
    alert("You have added a College !");
    setTimeout(function() {
      document.location = "index.jsp";}, 1000);
</script>