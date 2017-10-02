    <%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String address=request.getParameter("address");
String contact=request.getParameter("contact");
String website=request.getParameter("website");
 Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
            "system", "oracle");   
PreparedStatement st = con.prepareStatement("insert into hotels values('"+name+"','"+address+"','"+contact+"','"+website+"')");
st.executeUpdate();
con.close();
%>
<script>
    alert("You have added a Hotel !");
    setTimeout(function() {
      document.location = "index.jsp";}, 1000);
</script>