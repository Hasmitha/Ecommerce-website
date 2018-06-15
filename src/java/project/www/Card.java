/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project.www;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "Card", urlPatterns = {"/Card"})
public class Card extends HttpServlet {

   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }
    
    public void doPost(HttpServletRequest request,
        HttpServletResponse response)
        throws IOException, ServletException
    {
        response.setContentType("text/html");
//       
        
        String nameOnCard = request.getParameter("nameOnCard");
        String creditCardType = request.getParameter("creditCardType");
        String creditCardNumber = request.getParameter("creditCardNumber");


         try{
           
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","root");

          
           String query = " insert into carddetails(Name, CardNo, CardType)"
        + " values (?, ?, ?)";

      // create the mysql insert preparedstatement
      PreparedStatement ps = con.prepareStatement(query);
      ps.setString (1, nameOnCard);
      ps.setString (2, creditCardNumber);
      ps.setString(3, creditCardType);
      ps.executeUpdate();

        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(); 
        String url = "/success.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);


//        }
    }   catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CheckoutServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}