import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class contectuscheck
 */
@WebServlet("/contectuscheck")
public class contectuscheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public contectuscheck() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
			try
			{
				String name=request.getParameter("c_name");
				Long mobile=Long.parseLong(request.getParameter("c_mobile"));
				String message=request.getParameter("message");
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/in_trian","root","");
				PreparedStatement pst=conn.prepareStatement("insert into contect_us values(?,?,?)");
				pst.setString(1, name);
				pst.setLong(2, mobile);
				pst.setString(3,message);
				int i=pst.executeUpdate();
				if(i==1)
				{
					response.getWriter().println("Message send successful...");
					response.setHeader("Refresh","2;url=contectus.jsp");
				}

			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
	}

}
