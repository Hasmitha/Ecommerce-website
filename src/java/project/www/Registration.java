/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project.www;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;

//@WebServlet("/Registration")
public class Registration extends HttpServlet {

    
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html");
             System.out.println("TEST");
            //PrintWriter out = response.getWriter();
            String name = request.getParameter("user");
            String password = request.getParameter("password");
            //System.out.println(Username);
            String message="";
           
            
        try{
           // String sql = "insert into registration (Name,Password) values(?,?)";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","root");
            String sql = "insert into login(Username, password) values('"+name+"','"+password+"')";
            PreparedStatement ps = con.prepareStatement(sql);
            System.out.println("connected");
//            ps.setAttribute(1,name);
//            ps.setString(2,password);
            
            ps.executeUpdate();
          //  message="Success";
            request.setAttribute("message",message);
            PrintWriter out = response.getWriter();
            out.println("REgistration successful");
            String url = "/index.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);

        } 
        
        catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
        }
        out.close();
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>

}
