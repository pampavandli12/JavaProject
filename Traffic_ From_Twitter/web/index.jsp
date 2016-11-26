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
               <li class="current"><a href="index0.jsp">Home</a></li>
               <li ><a href="sign_in.jsp">Sign In</a></li>
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
        <h3>Abstract</h3>

        <div class="extra_wrapper">
           <p style=" font-size: 24px; text-align: justify;
    padding-top: 5px;    
/*padding-bottom: 600px;*/
    font-style:italic;
    margin-bottom:30px;
    margin-left: 15px;
    margin-right: 15px;
    color: black;
    line-height: 40px;
    
/*    font-weight: 500px;*/
    
/*    border-bottom:1px dashed #00CA79;*/
font-family:Times New Roman ; ">Social networks have been recently employed as a
source of information for event detection, with particular refer-ence to road traffic congestion and car accidents. In this paper, we
present a real-time monitoring system fortraffic event detection
from Twitter stream analysis. The system fetches tweets from
Twitter according to several search criteria; processes tweets, by
applying text mining techniques; and finally performs the classifi-cation of tweets. The aim is to assign the appropriate class label to
each tweet, as related to atrafficevent or not. The traffic detection
system was employed for real-time monitoring of several areas of
the Italian road network, allowing for detection of traffic events
almost in real time, often before online traffic news web sites. We
employed the support vector machine as a classification model,
and we achieved an accuracy value of 95.75% by solving a binary
classification problem (traffic versus nontraffic tweets). We were
also able to discriminate if traffic is caused by an external event or
not, by solving a multiclass classification problem and obtaining
an accuracy value of 88.89%.
              </p>
            
            
            
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