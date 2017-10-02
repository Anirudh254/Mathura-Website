    <%@page import="java.sql.*"%>
<%
String fora=request.getParameter("for");
String type=request.getParameter("type");
String schName=request.getParameter("schName");
String address=request.getParameter("address");
String website=request.getParameter("website");
 Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
            "system", "oracle");   
PreparedStatement st = con.prepareStatement("insert into schools values('"+fora+"','"+type+"','"+schName+"','"+address+"','"+website+"')");
st.executeUpdate();
con.close();
%>
<script>
    alert("You have added a School !");
    setTimeout(function() {
      document.location = "index.jsp";}, 1000);
</script>