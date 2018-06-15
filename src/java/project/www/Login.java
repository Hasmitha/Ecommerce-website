
package project.www;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class Login extends HttpServlet {
 
       
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String Username = request.getParameter("Username");
        String password = request.getParameter("password");
        
        
        out.println("<br/> <br>");
        try{
        String sql = "select * from login where Username=\""+Username+"\" and password=\""+password+"\"";

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","root");
        PreparedStatement ps = con.prepareStatement(sql);
        //ps.setString(1,Username);
        //ps.setString(2, password);
        ResultSet rs=null;
        String err="";
        try
        {
        rs = ps.executeQuery();}
        catch(Exception e)
        {
             err=e.getMessage();
        }
        if (rs.next())
        {
       HttpSession session=request.getSession(true);
		session.setAttribute("name", Username);
		 
        //out.println("Welcome: " + Username);
        }
        else{
        out.println("Check Credentials");
        return;
        }
        //String message = ("Welcome " + Username);
        
        String url = "/product.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    } 
    catch(Exception e)
    {
        String error=e.getMessage();
    }
    out.close();
    }
}