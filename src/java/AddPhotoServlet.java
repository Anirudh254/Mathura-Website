import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class AddPhotoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            // Apache Commons-Fileupload library classes
            DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload sfu  = new ServletFileUpload(factory);

            if (! ServletFileUpload.isMultipartContent(request)) {
                System.out.println("sorry. No file uploaded");
                return;
            }

            // parse request
            List items = sfu.parseRequest(request);
            FileItem  desc = (FileItem) items.get(0);
            String photodesc =  desc.getString();
            
            // get uploaded file
            FileItem file = (FileItem) items.get(1);
                        
            // Connect to Oracle
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "oracle");
            con.setAutoCommit(false);
            PreparedStatement ps1 = con.prepareStatement("select count(*) from gallery");
            ResultSet rs=ps1.executeQuery();
            rs.next();
            int count=rs.getInt(1);
            PreparedStatement ps = con.prepareStatement("insert into gallery values(?,?,?)");
            // size must be converted to int otherwise it results in error
            ps.setInt(1,count+1);
            ps.setString(2, photodesc);
            ps.setBinaryStream(3, file.getInputStream(), (int) file.getSize());
            ps.executeUpdate();
            con.commit();
            con.close();
            out.println("Photo Added Successfully. <p> <a href='listphotos'>Click Here to go to Gallery</a>");
        }
        catch(Exception ex) {
            out.println( "Error --> " + ex.getMessage());
        }
    } 
}