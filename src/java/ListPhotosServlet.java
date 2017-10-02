import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListPhotosServlet extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "oracle");
            PreparedStatement ps = con.prepareStatement("select * from gallery");
            ResultSet rs = ps.executeQuery();
            out.println("<h1>Gallery</h1>");
            out.println("<!DOCTYPE html>\n" +
"\n" +
"<html>\n" +
"<head>\n" +
"<title>Mathura</title>\n" +
"<meta charset=\"utf-8\">\n" +
"<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\">\n" +
"<link href=\"css/layout.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\">\n" +
"</head>\n" +
"<body id=\"top\">\n" +
"<div class=\"wrapper row0\">\n" +
"  <div id=\"topbar\" class=\"hoc clear\"> \n" +
"    \n" +
" \n" +
"    <div class=\"fl_right\">\n" +
"      <ul class=\"nospace\">\n" +
"        <li><a href=\"#\"><i class=\"fa fa-lg fa-home\"></i></a></li>\n" +
"        <li><a href=\"About.jsp\">About</a></li>\n" +
"        <li><a href=\"Contact.jsp\">Contact</a></li>\n" +
"      </ul>\n" +
"    </div  \n" +
"  </div>\n" +
"</div>\n" +
"\n" +
"<div class=\"wrapper row1\">\n" +
"  <header id=\"header\" class=\"hoc clear\"> \n" +
"  \n" +
"    <div id=\"logo\" class=\"fl_left\">\n" +
"      <h1><a href=\"index.jsp\">Mathura</a></h1>\n" +
"      <p>Radhe-Radhe</p>\n" +
"    </div>\n" +
"\n" +
"    <nav id=\"mainav\" class=\"fl_right\">\n" +
"      <ul class=\"nospace\">\n" +
"        <li class=\"active\"><a href=\"index.jsp\">Home</a></li>\n" +
"        <li><a class=\"drop\" href=\"#\">Pages</a>\n" +
"          <ul>   \n" +
"            <li><a href=\"History.jsp\">History</a></li>\n" +
"            <li><a href=\"Services.jsp\">Service</a></li>\n" +
"            <li><a href=\"Open.jsp\">Account</a></li>\n" +
"            <li><a href=\"Downloads.jsp\">Downloads</a></li>\n" +
"          </ul>\n" +
"        </li>\n" +
"      <li><a href=\"listphotos\">Gallery</a></li>\n" +
"      </ul>\n" +
"    </nav>\n" +
"\n" +
"  </header>\n" +
"</div>\n" +
"\n" +
"<div class=\"wrapper bgded overlay\" style=\"background-image:url('../images/demo/backgrounds/01.png');\">\n" +
"  <div id=\"breadcrumb\" class=\"hoc clear\"> \n" +
"\n" +
"    <ul>\n" +
"      <li><a href=\"index.jsp\">Home</a></li>\n" +
"    </ul>\n" +
"\n" +
"  </div>\n" +
"</div>\n" +
"\n" +
"<div class=\"wrapper row3\">\n" +
"  <main class=\"hoc container clear\"> \n" +
"    <!-- main body -->\n" +
"\n" +
"    <div class=\"content\"> \n" +
"   \n" +
"      <div id=\"gallery\">\n" +
"        <figure>\n" +
"          <header class=\"heading\">Gallery</header>\n" +
"          <ul class=\"nospace clear\">\n" +
"          ");
            while ( rs.next()) {
                out.println("<li>" + rs.getString("description") + "</li>");
                out.println("<li><img width='600' height='600' src=displayphoto?id=" +  rs.getString("id") + "></img> </li>");
            }

            con.close();
        }
        catch(Exception ex) {

        }
        finally { 
            out.close();
        }
out.println("</ul>\n" +
"        </figure>\n" +
"      </div>\n" +
"     \n" +
"      <nav class=\"pagination\">\n" +
"        <ul>\n" +
"        \n" +
"          <li><a href=\"#\">1</a></li>\n" +
"   \n" +
"        </ul>\n" +
"      </nav>\n" +
"     \n" +
"    </div>\n" +
"\n" +
"    <!-- / main body -->\n" +
"    <div class=\"clear\"></div>\n" +
"  </main>\n" +
"</div>\n" +
"\n" +
"<div class=\"wrapper row4\">\n" +
"  <footer id=\"footer\" class=\"hoc clear\"> \n" +
"    <ul class=\"nospace inline pushright uppercase\">\n" +
"      <li><a href=\"#\"><i class=\"fa fa-lg fa-home\"></i></a></li>\n" +
"      <li><a href=\"#\">About</a></li>\n" +
"      <li><a href=\"#\">Contact</a></li>\n" +
"    </ul>\n" +
"    <ul class=\"faico clear\">\n" +
"      <li><a class=\"faicon-facebook\" href=\"#\"><i class=\"fa fa-facebook\"></i></a></li>\n" +
"      <li><a class=\"faicon-twitter\" href=\"#\"><i class=\"fa fa-twitter\"></i></a></li>\n" +
"      <li><a class=\"faicon-linkedin\" href=\"#\"><i class=\"fa fa-linkedin\"></i></a></li>\n" +
"      <li><a class=\"faicon-google-plus\" href=\"#\"><i class=\"fa fa-google-plus\"></i></a></li>\n" +
"    </ul>\n" +
"    <div id=\"copyright\">\n" +
"      <p> &copy; Copyright 2016</p>\n" +
"    </div>\n" +
"  </footer>\n" +
"</div>\n" +
"\n" +
"<a id=\"backtotop\" href=\"#top\"><i class=\"fa fa-chevron-up\"></i></a>\n" +
"<!-- JAVASCRIPTS -->\n" +
"<script src=\"images/js/jquery.min.js\"></script>\n" +
"<script src=\"images/js/jquery.backtotop.js\"></script>\n" +
"<script src=\"images/js/jquery.mobilemenu.js\"></script>\n" +
"</body>\n" +
"</html>");
    } 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
}