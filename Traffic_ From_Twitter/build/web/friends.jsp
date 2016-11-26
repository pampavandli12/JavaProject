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
               <li class="current"><a href="friends.jsp">Add Friends</a></li>
               <li ><a href="friendlist.jsp">Friend list</a></li>
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
        <h3>Available Friends  </h3>

        <div class="extra_wrapper">
           
                  <div class="contact-form-loader"></div>
                   <table  style=" margin-top: 50px; margin-left:20px;width:98%;">
                    <tr style="background-color:  white; line-height: 50px; border-radius: 3px;color:lightseagreen;font-family:verdana;font-size:18px;font-weight: bold; ">
<!--                                    <td height="36">File id</td>-->
                                    <td>Name</td>
                                    <td>Email</td>
                                   
                                   
                                    
                                    
                                </tr>
                                <%
                                
try
{
 
 String name = session.getAttribute("name").toString();

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/traffic_from_twitter";
String username="root";
String password="root";
String query="select * from uregister where name not like  '" + name + "' ";
Connection con=DriverManager.getConnection(url,username,password);
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{
int id=rs.getInt("id"); 
// session.setAttribute("u_id", id);



                                %>
                                <tr style=" color: black; font-size: 15px; font-weight: bold;  line-break: 80px; line-height: 40px; margin-top: 100px;" >
                                     
   
   
    <td><font style ="color: black"><%=rs.getString("name") %></td>
    <td><font style ="color: black"><%=rs.getString("email") %></td>
     <td> <font color="#FF0000"><a href="follow_friend.jsp?<%=rs.getString("email")%>,<%=rs.getString("name")%>">Follow</a></font> </td>
     


   
<!--    <td align="center"><a href="DBFileDownloadServlet?<%=id%>">Download</a></td>
    <td align="center"><a href="FileReadPdf?<%=id%>">View</a></td>
    <td align="center"><a href="pdfdelete?<%=id%>">Delete</a></td>
    <td align="center"><a href="DBImageShow?<%=id%>">delete</a></td>-->
    

    </tr>
    

                                    <%
                                            }

                                        } catch (Exception e) {
                                            e.printStackTrace();
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