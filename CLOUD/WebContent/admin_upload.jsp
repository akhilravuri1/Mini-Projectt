<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Metamorphosis Design Free Css Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="nivo-slider.css" type="text/css" media="screen" />
</head>
<body>
<%
HttpSession session1=request.getSession(false);  
String n=(String)session.getAttribute("uname"); 


HttpSession session2=request.getSession();  
session.setAttribute("uname",n);  


String randomPIN = String.valueOf((int) (Math.random() * 9000) + 1000);
%>
<div id="bg_clouds">
<div id="main">
<!-- header begins -->
<div id="header">
    
	<div id="buttons">
      <a href="index.html" class="but but_t"  title="">Home</a>
      <a href="admin.html" class="but" title="">Admin</a>
     
      <a href="about_us.html"  class="but" title="">About us</a>
      <a href="contact_us.html" class="but" title="">Contact us</a>
       <a href="index.html"  class="but" title="">Logout</a>
    </div>
	
	<div id="logo">
    	<a href="#"><font color="yellow" size=5><b>VIT File Transfer</b></font></a>
      	<h2><a href="#" id="metamorph">CLOUD STORAGE </a></h2>
    </div>
	
</div>
<!-- header ends -->
<div class="top_top"></div>
<div class="top">

 <div id="wrapper">
        <div id="slider-wrapper">        
            <div id="slider" class="nivoSlider">
                <img src="images/top.jpg" alt="" />
                <img src="images/top2.jpg" alt=""/>
                <img src="images/top3.jpg" alt="" />
            </div>        
        </div>

</div>

<script type="text/javascript" src="lib/jquery-1.4.3.min.js"></script>
    <script type="text/javascript" src="lib/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>
</div>
<div class="top_bot"></div>
<div style="height:17px"></div>
        <!-- content begins -->
        		<div class="cont_top"></div>
				<div class="clear"></div>
	<div id="content">
	
	    <div class="line1">
						<div class="col1">
						
						<h2>Admin File Upload Page</h2>
						<div class="wrapper pad_bot3">
						
							<form action="AdminUpload" method="post" enctype="multipart/form-data" >
							
							
						<input type="password" name="key" value=<%=randomPIN %> placeholder="File key"></input>
							 <input type="file" multiple="true" name="upload"></input>
						<input type="submit" value="UPLOAD"></input>
							
			
							
							
							
							</form>
							</div>
						
						<div class="wrapper line">
							
							
							
							
						</div>
					</div>
					<div class="col2">
						<h2>here are some pictures</h2>
						<div class="wrapper pad_bot1">
							<div class="left marg_right2"><a href="#"><img src="images/small3.jpg" alt="" /></a></div>
							<div class="left marg_right2"><a href="#"><img src="images/small3.jpg" alt="" /></a></div>
							<div class="left"><a href="#"><img src="images/small3.jpg" alt="" /></a></div>
						</div>
						<div class="wrapper pad_bot3">
							<div class="left marg_right2"><a href="#"><img src="images/small4.jpg" alt="" /></a></div>
							<div class="left marg_right2"><a href="#"><img src="images/small5.jpg" alt="" /></a></div>
							<div class="left"><a href="#"><img src="images/small4.jpg" alt="" /></a></div>
						</div>
						<h2>Recent News</h2>
						<p class="font1">12.01.2017</p>
						<p class="under">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia conquuntur magni dolores eos qui ratione.</p>
						<p class="font1">03.01.2017</p>
						<p class="under">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam.</p>
						<p class="font1">03.01.2017</p>
						<p>Aliquam commodo felis quis purus blandit convallis. Nunc dolor neque, semper id venenatis porttitor, pulvinar sit amet lacus.</p>
					</div>
				</div><div class="clear"></div>
	
	</div><div class="clear"></div>
                <div class="cont_bot"></div>
    <!-- content ends --> 
	<div class="clear"></div>
    <div style="height:15px"></div>
    <!-- bottom begin -->
    <div id="bottom_bot">
        <div id="bottom">
        <div id="b_col1">
              <h1>Useful Resources</h1>
                <div style="height:10px"></div>
                    <ul class="spis_bot">
                        <li><a href="#">Lorem ipsum dolor sit amet </a></li>
                        <li><a href="#">Maecenas in magna quis augue</a></li>
                        <li><a href="#">Ut a mauris nec eros consect</a></li>
                        <li><a href="#">Nam luctus felis at mauris co </a></li>
                        <li><a href="#">Aliquam sagittis ligula sit amet </a></li>
                        <li><a href="#">Quisque sit amet est id urna</a></li>
                    </ul>
          </div>
                <div id="b_col2">
                    <h1>Contact Information</h1>
                    <div style="height:20px"></div>
                    <div style="padding-left:10px">
                        <div  class="box_us">
                              <div  class="box_us_l">
                                <img src="images/fish_us1.png" alt="" />
                              </div>
                              <div  class="box_us_r">
                                    <b class="lh">1234 Some Street, Brooklyn, NY 11201</b>
                              </div>
                              <div style="clear: both; height:10px;"></div>
                        </div>
                        <div  class="box_us">
                              <div  class="box_us_l">
                                <img src="images/fish_us2.png" alt="" />
                              </div>
                              <div  class="box_us_r">
                                    <b class="lh">Phone:  1(234) 567 8910<br />
                                        Fax: 1(234) 567 8910
                                    </b>
                              </div>
                              <div style="clear: both; height:10px;"></div>
                        </div>
                        <div  class="box_us">
                              <div  class="box_us_l">
                                <img src="images/fish_us3.png" alt="" />
                              </div>
                              <div  class="box_us_r">
                                    <b class="lh">E-mail: companyname@yahoo.com</b>
                              </div>
                              <div style="clear: both; height:10px;"></div>
                        </div>
                    </div>
            </div>
    
            <div id="b_col3">
            	<h1>Share with Others</h1>
              	<div style="height:15px"></div>
                    <ul>
                        <li><img src="images/fu_i1.png" class=" fu_i" alt="" /><a href="#">Subscribe to Blog</a></li>
                        <li><img src="images/fu_i2.png" class=" fu_i" alt="" /><a href="#">Be a fan on Facebook</a></li>
                        <li><img src="images/fu_i3.png" class=" fu_i" alt="" /><a href="#">RSS Feed</a></li>
                        <li><img src="images/fu_i4.png" class=" fu_i" alt="" /><a href="#">Follow us on Twitter</a></li>
                    </ul>  
                        
          </div>
          	<div style="clear: both; height:20px;"></div>
        </div>
    </div>
<!-- bottom end --> 
<!-- footer begins -->
            <div id="footer">
          		Copyright  2017. <!-- Do not remove -->Designed by <a href="http://www.metamorphozis.com/free_templates/free_templates.php" title="Free Website Templates">Free Website Templates</a><!-- end --><br />
                <a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a> | <a href="http://validator.w3.org/check/referer" title="This page validates as XHTML 1.0 Transitional"><abbr title="eXtensible HyperText Markup Language">XHTML</abbr></a> | <a href="http://jigsaw.w3.org/css-validator/check/referer" title="This page validates as CSS"><abbr title="Cascading Style Sheets">CSS</abbr></a>
    </div>
        <!-- footer ends -->
</div>

</div>
</body>
</html>
