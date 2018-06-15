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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hasmi
 */
@WebServlet(name = "CartServlet", urlPatterns = {"/CartServlet"})
public class CartServlet extends HttpServlet {

   

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
            //String user = request.getParameter("${Username}");
             HttpSession session = request.getSession(true);

        String username = (String) session.getAttribute("name");
           
            String quantity = "1";
            String name = request.getParameter("P_Name");
            String image = request.getParameter("Image");
            String price = request.getParameter("Price");
            //System.out.println(Username);
            String message="";
           
            
        try{
           // String sql = "insert into registration (Name,Password) values(?,?)";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","root");
            String query = " insert into cart(Product, Quantity, Image, Price, Username)"
        + " values (?, ?, ?, ?, ?)";

      // create the mysql insert preparedstatement
      PreparedStatement ps = con.prepareStatement(query);
      ps.setString (1, name);
      ps.setString (2, quantity);
      ps.setString (3, image);
      ps.setString(4, price);
      ps.setString (5, username);
     
            
            //String sql = "insert into cart(Product, Image, Price) values('"+name+"','"+image+"','"+price+"')";
           // PreparedStatement ps = con.prepareStatement(sql);
            System.out.println("connected");
//            ps.setAttribute(1,name);
//            ps.setString(2,password);
          //  ps.setInt(2, price);
            ps.executeUpdate();
            
          //  message="Success";
           // request.setAttribute("message",message);
            PrintWriter out = response.getWriter();
            //out.println("REgistration successful");
            String url = "/product.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);

        } 
        
        catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
        }
        out.close();
    }


}
