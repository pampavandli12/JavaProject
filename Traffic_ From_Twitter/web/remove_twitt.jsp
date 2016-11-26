
<%@page import="DbPack.DatabaseConnection"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    
    
   String get = request.getQueryString();
   String[] full = get.split(",");
   String fname = full[0];
   String fid = full[1];
   System.out.print(fname);
   System.out.print(fid);
   
//   EmailFinder e = new EmailFinder();
    
    
    String key = null;
    String email = null;
    Connection con = DatabaseConnection.getCon();
    Statement st1 = con.createStatement();
    Statement st = con.createStatement();
          boolean b = st.execute("delete from twitts where id = '"+fname+"' and uname ='"+fid+"'");
                System.out.println(b);
  
        if(b){
            response.sendRedirect("welcome_user.jsp?msg=removed_failed..!");
            
           
        }else{
             response.sendRedirect("welcome_user.jsp?msg=removed_successfully='"+fname+"'");
        }
        
    
  
//        System.out.println("Error found to sending mail..!");
//        response.sendRedirect("adminpage.jsp?mailf=public key send fails..!");
  



%>