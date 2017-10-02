    <%@page import="java.sql.*"%>
<%
String fora=request.getParameter("for");
String shopName=request.getParameter("shopName");
String address=request.getParameter("address");
String products=request.getParameter("products");
 Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
            "system", "oracle");   
PreparedStatement st = con.prepareStatement("insert into shops values('"+fora+"','"+shopName+"','"+address+"','"+products+"')");
st.executeUpdate();
con.close();
%>
<script>
    alert("You have added one shop !");
    setTimeout(function() {
      document.location = "index.jsp";}, 1000);
</script>