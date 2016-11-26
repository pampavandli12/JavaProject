<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/script.js"></script> 
<script src="js/superfish.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/tmStickUp.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script>
 $(window).load(function(){
  $().UItoTop({ easingType: 'easeOutQuart' });
  $('#stuck_container').tmStickUp({});  
 }); 
</script>
<!--[if lt IE 8]>
 <div style=' clear: both; text-align:center; position: relative;'>
   <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
     <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
   </a>
</div>
<![endif]-->
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>
<body>
<!--==============================
              header
=================================-->
<header>
  <div class="container">
    <div class="row">
      <div class="grid_12 rel">
          <br/>
          <h1 style="color: black; font-size: 50px;" >Real-Time Detection of Traffic From Twitter Stream Analysis

        </h1>
      </div>
    </div>
  </div>
<!--    String name = session.getAttribute("name").toString();-->
  
  <section id="stuck_container">
  <!--==============================
              Stuck menu
  =================================-->
    <div class="container">
      <div class="row">
        <div class="grid_12 ">
          <div class="navigation ">
            <nav>
          <ul class="sf-menu">
               <li ><a href="welcome_user.jsp">Twitts</a></li>
               <li ><a href="twitts.jsp">New Tweet</a></li>
               <li><a href="friends.jsp">Add Friends</a></li>
               <li class="current" ><a href="friendlist.jsp">Friend list</a></li>
                     <li><a href="index0.jsp">Log Out</a></li>
                </ul>
            </nav>
<!--            <div class="clear"></div>-->
          </div>       
<!--         <div class="clear"></div>  -->
        </div>
     </div> 
    </div> 
  </section>
</header>
<!--=====================
          Content
======================-->
<section id="content"><div class="ic"></div>
  <div class="container">
    <div class="row">
      <div class="grid_12">
        <h3>Friends  </h3>

        <div class="extra_wrapper">
           
                  <div class="contact-form-loader"></div>
                   <table  style=" margin-top: 50px; margin-left:20px;width:98%;">
                    <tr style="background-color:  white; line-height: 50px; border-radius: 3px;color:lightseagreen;font-family:verdana;font-size:18px;font-weight: bold; ">
<!--                                    <td height="36">File id</td>-->
                                    <td>Name</td>
<!--                                    <td>Email</td>-->
                                   
                                   
                                    
                                    
                                </tr>
                                <%
                                
           

                                String name= session.getAttribute("name").toString();
                                String flw = null, us = null;
                                Connection cf = DriverManager.getConnection("jdbc:mysql://localhost:3306/traffic_from_twitter", "root", "root");
                                Statement sf = cf.createStatement();
                                 System.out.print("***************************"+name);
                                ResultSet rf = sf.executeQuery("select distinct(friends ) from friends where username = '" + name + "' ");
                                while (rf.next()) {

                                    flw = rf.getString("friends");
//                                    session.setAttribute("fr", flw);
                            %>


                             
                                <tr style=" color: black; font-size: 15px; font-weight: bold;  line-break: 80px; line-height: 40px; margin-top: 100px;" >
                                     
   
   
    <td><font style ="color: black"><%=rf.getString("friends") %></td>
     <td> <font color="#FF0000"><a href="remove_friend.jsp?<%=rf.getString("friends")%>,<%=rf.getString("friends")%>">Remove</a></font> </td>


   
     


   

    

    </tr>
    

                                  <%
                                }

                            %>
                            </table>
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  

               
          
           <br/> 
            <br/> 
             <br/> 
              <br/> 
               <br/> 
                   <br/> 
            <br/> 
             <br/> 
              <br/> 
               <br/> 
                   <br/> 
            <br/> 
             <br/> 
              <br/> 
               <br/> 
                   <br/> 
            <br/> 
             <br/> 
              <br/> 
               <br/> 
                   <br/> 
            <br/> 
             <br/> 
              <br/> 
               <br/> 
                   <br/> 
            <br/> 
             <br/> 
              <br/> 
               <br/> 
                   <br/> 
            <br/> 
             <br/> 
              <br/> 
               <br/> 
        </div>
      </div>
    </div>
  </div>
 
</section>
<!--==============================
              footer
=================================-->
<footer id="footer">
  <div class="container">
    <div class="row">
      <div class="grid_12"> 
        <div class="copyright">  <a href="#"></a>
          <div class="sub-copy"> <a href="#" rel="nofollow"></a></div>
        </div>
      </div>
    </div>
  </div>  
</footer>
<a href="#" id="toTop" class="fa fa-chevron-up"></a>
</body>
</html>