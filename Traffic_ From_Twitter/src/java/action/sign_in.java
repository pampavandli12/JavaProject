/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import DbPack.DatabaseConnection;
import DbPack.TrippleDes;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.Date;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author jp
 */
public class sign_in extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            String user = request.getParameter("email");
            String pass = request.getParameter("password");
            System.out.println(user);
            System.out.println(pass);
            HttpSession session = request.getSession();
         
            Connection con = DatabaseConnection.getCon();
            Statement st = con.createStatement();
            Statement st1 = con.createStatement();
            Statement st2 = con.createStatement();
            ResultSet rs = st.executeQuery("select * from uregister where email = '" + user + "' AND  password = '" + pass + "'");
            System.out.println("Query Executed");
            if (rs.next()){
                if (rs.getString("status").equals("YES")){
//                   String email= rs.getString("email");
                  String usern =rs.getString("name");
//                  String uid =rs.getString("id");
                          //                           Random x = new Random();
//                             int n = x.nextInt(10000);
//                              String otp = ""+n;
//                    mail_Send0.sendMail(otp, user, email);
//                    boolean b = st2.execute("TRUNCATE TABLE otp" );
//              int i = st1.executeUpdate("insert into otp values('0','"+user+"','"+otp+"')"); 
                    session.setAttribute("name", usern);
//                    session.setAttribute("u_idt", uid);
//                     session.setAttribute("age", rs.getString("age"));
//                      session.setAttribute("gender", rs.getString("gender"));
                       response.sendRedirect("welcome_user.jsp?__" + usern);
//                    response.sendRedirect("welcome_user.jsp?__" + usern);
                } else {
                    out.println("Account not yet Activated....!");
                }
            } else {
                out.println("Check username & password");
            }
        } catch (SQLException ex) {
            out.println("exception error");
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
