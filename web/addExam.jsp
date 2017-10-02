    <%@page import="java.sql.*"%>
<%
String fora=request.getParameter("for");
String examName=request.getParameter("examName");
String syllabus=request.getParameter("syllabus");
String important=request.getParameter("important");
String website=request.getParameter("website");
 Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
            "system", "oracle");   
PreparedStatement st = con.prepareStatement("insert into exams values('"+fora+"','"+examName+"','"+syllabus+"','"+important+"','"+website+"')");
st.executeUpdate();
con.close();
%>
<script>
    alert("You have added an Exam !");
    setTimeout(function() {
      document.location = "index.jsp";}, 1000);
</script>