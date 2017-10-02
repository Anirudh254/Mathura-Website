    <%@page import="java.sql.*"%>
<%
String fora=request.getParameter("for");
String coachingName=request.getParameter("coachingName");
String address=request.getParameter("address");
String website=request.getParameter("website");
 Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
            "system", "oracle");   
PreparedStatement st = con.prepareStatement("insert into coachings values('"+fora+"','"+coachingName+"','"+address+"','"+website+"')");
st.executeUpdate();
con.close();
%>
<script>
    alert("You have added a Coaching!");
    setTimeout(function() {
      document.location = "index.jsp";}, 1000);
</script>