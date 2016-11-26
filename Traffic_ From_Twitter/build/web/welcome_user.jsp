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
   <% String name = session.getAttribute("name").toString();%>
  
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
               <li class="current"><a href="welcome_user.jsp">Twitts</a></li>
               <li ><a href="twitts.jsp">New Tweet</a></li>
               <li><a href="friends.jsp">Add Friends</a></li>
               <li><a href="friendlist.jsp">Friend list</a></li>
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
       
 <h3>Welcome <%=name%></h3> 
        <div class="extra_wrapper">
             <form id="contact-form1" action="sign_up0"   >
                  <div class="contact-form-loader"></div>
                  
                   <table  style=" margin-top: 50px; margin-left:20px;width:98%;">
                    <tr style="background-color:  white; line-height: 50px; border-radius: 3px;color:lightseagreen;font-family:verdana;font-size:18px;font-weight: bold; ">
<!--                                    <td height="36">File id</td>-->

                                   <td>Twitts</td>
                                    <td>By</td>
                                   
                                   
                                    
                                    
                                </tr>
                                <%
                                
try
{
 
// String user_name = session.getAttribute("username").toString();

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/traffic_from_twitter";
String username="root";
String password="root";
String query="select * from twitts ";
Connection con=DriverManager.getConnection(url,username,password);
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{
int id=rs.getInt("id"); 
 session.setAttribute("file_id", id);



                                %>
                                <tr style=" color: black; font-size: 15px; font-weight: bold;  line-break: 80px; line-height: 40px; margin-top: 100px;" >
                                     
   
   
    <td><font style ="color: black"><%=rs.getString("twitts") %></td>
    <td><font style ="color: black"><%=rs.getString("uname") %></td>
     <td> <font color="#FF0000"><a href="remove_twitt.jsp?<%=id%>,<%=rs.getString("uname")%>">remove</a></font> </td>
     


   
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
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
<!--                  <fieldset>
                    <label class="name">
                        <input type="text" name="name" placeholder="Name:" value="" required="" />
                      
                    </label>
                      <br/>
                       <br/>
                        <br/>
                          <label class="name">
                        <input type="password" name="password" placeholder="Password:" value="" required="" />
                      
                    </label>
                      <br/>
                       <br/>
                        <br/>
                          <label class="name">
                        <input type="password" name="cpassword" placeholder="Confirm Password:" value="" required="" />
                      
                    </label>
                      <br/>
                       <br/>
                        <br/>
                   
                    <label class="email">
                        <input type="email" name="email" placeholder="E-mail:" value=""  required="" />
                 
                    </label>
                         <br/>
                       <br/>
                        <br/>
                    <label class="phone">
                      <input type="text" name="phone" placeholder="Phone:" value="" required="" />
                 
                    </label>
                   
                    <label class="message">
                      <textarea name="message" placeholder="Message:" data-constraints='@Required @Length(min=20,max=999999)'></textarea>
                      <span class="empty-message">*This field is required.</span>
                      <span class="error-message">*The message is too short.</span>
                    </label>
                  
                    <div>
                        
                        <button  style="margin-right: 800px;" class="btn" type="submit">Register</button>  <button  style="margin-right: 100px;" class="btn" type="reset">Clear</button>
                    </div>
                  </fieldset> -->
<!--                  <div class="modal fade response-message">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                          <h4 class="modal-title">Modal title</h4>
                        </div>
                        <div class="modal-body">
                          You message has been sent! We will be in touch soon.
                        </div>      
                      </div>
                    </div>
                  </div>-->
                </fo0rm> 
          
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