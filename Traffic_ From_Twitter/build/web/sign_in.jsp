<!DOCTYPE html>
<html lang="en">
<head>
<title>Sign In</title>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/contact-form.css">
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
<script src="js/TMForm.js"></script>
<script src="js/modal.js"></script>
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
               <li ><a href="index0.jsp">Home</a></li>
               <li class="current"><a href="sign_in.jsp">Sign In</a></li>
               <li><a href="sign_up.jsp">Sign Up</a></li>
<!--               <li><a href="blog.jsp">Blog</a></li>
               <li><a href="contacts.jsp">Contacts</a></li>-->
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
<section id="content"><div class="ic">More Website Templates @ TemplateMonster.com - July 28, 2014!</div>
      
  <div class="container">
    
    <div class="row">
         
      <div class="grid_12">
        
       
        <form id="contact-form1" action="sign_in" >
                  <div class="contact-form-loader"></div>
                   <h3>Sign In</h3>
                  <img style="margin-bottom:  20px;"  src=" images/logo1.png" width="100" height="100" alt="pix" />
                   
                  <fieldset>
                    
                   
                    <label class="email">
                        <input type="email" name="email" placeholder="E-mail:" value=""  required="" />
                 
                    </label>
                      <br/>
                       <br/>
                        <br/>
                               <label class="name">
                        <input type="password" name="password" placeholder="Password:" value="" required="" />
                      
                    </label>
                     
                     
                   
<!--                    <label class="message">
                      <textarea name="message" placeholder="Message:" data-constraints='@Required @Length(min=20,max=999999)'></textarea>
                      <span class="empty-message">*This field is required.</span>
                      <span class="error-message">*The message is too short.</span>
                    </label>-->
                  
                    <div>
                        
                        <button  style="margin-right: 800px;" class="btn" type="submit">Sign In</button>  <button  style="margin-right: 100px;" class="btn" type="reset">Clear</button>
                    </div>
                  </fieldset> 
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
                </form>
        
        

            
            
            
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