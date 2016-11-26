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
import java.util.List;
import javax.servlet.http.HttpSession;


/**
 *
 * @author jp
 */
public class twitts extends HttpServlet {
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
            String twitts = request.getParameter("twitts");
            HttpSession session = request.getSession();
             String name = session.getAttribute("name").toString();
//            String userid = request.getParameter("user_id");
             System.out.println(twitts);
//            String pass = request.getParameter("password");
//            String conpass = request.getParameter("cpassword");
//            String email = request.getParameter("email");
//            String mobile = request.getParameter("phone");
//            String age = request.getParameter("age");
            
//            String address = request.getParameter("address");
//            String ukey = username+userid;
               WholeWordIndexFinder finder = new WholeWordIndexFinder(twitts);
                List<IndexWrapper> indexes = finder.findIndexesForKeyword("traffic");
                List<IndexWrapper> indexes1 = finder.findIndexesForKeyword("Traffic");
                 List<IndexWrapper> indexes2 = finder.findIndexesForKeyword("TRAFFIC");
                List<IndexWrapper> indexes3 = finder.findIndexesForKeyword("stuck");
                List<IndexWrapper> indexes4 = finder.findIndexesForKeyword("Stuck");
                List<IndexWrapper> indexes5 = finder.findIndexesForKeyword("STUCK");
                 List<IndexWrapper> indexes6 = finder.findIndexesForKeyword("STRUCK");
                 List<IndexWrapper> indexes7 = finder.findIndexesForKeyword("Struck");
                 List<IndexWrapper> indexes8 = finder.findIndexesForKeyword("struck");
                 List<IndexWrapper> indexes9 = finder.findIndexesForKeyword("ROAD");
                 List<IndexWrapper> indexes10 = finder.findIndexesForKeyword("road");
                 List<IndexWrapper> indexes11 = finder.findIndexesForKeyword("Road");
                int size = indexes.size();
                 int size1 = indexes1.size();
                 int size2 = indexes2.size();
                 int size3 = indexes3.size();
                 int size4 = indexes4.size();
                 int size5 = indexes5.size();
                 int size6 = indexes6.size();
                 int size7 = indexes7.size();
                 int size8 = indexes8.size();
                 int size9 = indexes9.size();
                 int size10 = indexes10.size();
                 int size11 = indexes11.size();
                 int total =size+size1+size2+size3+size4+size5+size6+size7+size8+size9+size10+size11;
                System.out.println("********************************************"+ size+"********"+size1+"********"+total );                
             

            if(twitts.equals(twitts)){
                    
            Connection con  =DbPack.DatabaseConnection.getCon();
            Statement st = con.createStatement();
      
            int i = st.executeUpdate("insert into twitts values('0','"+twitts+"' ,'"+name+"', 'YES', 'YES')"); 
            
             if(i!=0){
                 
                 if(total>0){
                     ResultSet res = st.executeQuery("select * from uregister ");
                      while (res.next()) {
                            String email = res.getString("email");
                       mail_Send0.sendMail(twitts, name, email);
                     
                     
                     
                      }
                     response.sendRedirect("twitts.jsp?Msg=Submitted");
                 }
                    

                 
                 response.sendRedirect("twitts.jsp?Msg=Submitted");
                 System.out.println("Registeration done");
             }
             else{
                   response.sendRedirect("twitts.jsp?m=error...check");
             }
            }
            else{
                response.sendRedirect("twitts.jsp?m=error");
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
