/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import DbPack.TrippleDes;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

/**
 *
 * @author jp
 */
public class sign_up0 extends HttpServlet {
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String timeslot = null;
            String username = request.getParameter("name");
//            String userid = request.getParameter("user_id");
             System.out.println(username);
            String pass = request.getParameter("password");
            String conpass = request.getParameter("cpassword");
            String email = request.getParameter("email");
            String mobile = request.getParameter("phone");
//            String age = request.getParameter("age");
            
//            String address = request.getParameter("address");
//            String ukey = username+userid;
               
            

            if(pass.equals(conpass)){
            Connection con  =DbPack.DatabaseConnection.getCon();
            Statement st = con.createStatement();
            int i = st.executeUpdate("insert into uregister values('0','"+username+"' ,'"+pass+"','"+email+"', '"+mobile+"', 'YES', 'YES')"); 
            
             if(i!=0){

                 
                 response.sendRedirect("sign_in.jsp?Msg=Registeration_done");
                 System.out.println("Registeration done");
             }
             else{
                   response.sendRedirect("sign_in.jsp?m=register_error...check");
             }
            }
            else{
                response.sendRedirect("sign_in.jsp?m=password_not_match");
            }
        } catch (Exception ex) {
               System.out.println( ex);
                     System.out.println("Registeration done");
//            Logger.getLogger(action.mregister.class.getName()).log(Level.SEVERE, null, ex);
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
//            Logger.getLogger(actionPackage.register.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
//            Logger.getLogger(actionPackage.register.class.getName()).log(Level.SEVERE, null, ex);
        }
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


