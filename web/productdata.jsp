<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javazoom.upload.UploadFile"%>
<%@page import="javazoom.upload.UploadBean"%>
<%@page import="java.util.Hashtable"%>
<%@page import="javazoom.upload.MultipartFormDataRequest"%>


<%
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
            "system", "oracle");
    Statement st= con.createStatement();
    
    MultipartFormDataRequest  mrequest=new MultipartFormDataRequest(request);
    Hashtable hs= mrequest.getFiles();
    UploadBean ub=new  UploadBean();
    ub.setFolderstore(getServletContext().getRealPath("")+"//user//");
    UploadFile uf=(UploadFile) hs.get("file");
    String str=uf.getFileName();
    out.println(str);
    uf.setFileName(session.getAttribute("key") +uf.getFileName().substring(uf.getFileName().lastIndexOf("."),uf.getFileName().length()));
    String str1=session.getAttribute("key")+uf.getFileName().substring(uf.getFileName().lastIndexOf("."),uf.getFileName().length());
    int i=st.executeUpdate("insert into add (products,idadd) values('"+str+"','"+session.getAttribute("key") +"')");
        
    if(i>0)
               {
    response.sendRedirect("prefrences.jsp");
    }
    
ub.store(mrequest);


}
catch(Exception e)
               {
    out.println(e);
}

%>
