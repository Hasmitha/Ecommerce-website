<%@page session="true" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>ArtiCraft</title>
		<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="css/style.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
   		 <!---- start-smoth-scrolling---->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
		 <!---- start-smoth-scrolling---->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts
		<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
		//webfonts--->
		<!----start-top-nav-script---->
		<script>
                    $(document).ready(function(){
                        var user=${Username};
                      alert(user);
                    });
			$(function() {
				var pull 		= $('#pull');
					menu 		= $('nav ul');
					menuHeight	= menu.height();
				$(pull).on('click', function(e) {
					e.preventDefault();
					menu.slideToggle();
				});
				$(window).resize(function(){
	        		var w = $(window).width();
	        		if(w > 320 && menu.is(':hidden')) {
	        			menu.removeAttr('style');
	        		}
	    		});
			});
		</script>
		<!----//End-top-nav-script---->
	</head>
	<body>
            <%
String name=(String)session.getAttribute("name");%>

		<!----container---->
		<div class="container">
			<!----top-header---->
			<div class="top-header">
				<div class="logo">
					<h1> Welcome <%=name %></h1>
   <!--<a href="index.html"><img src="images/logo.png" title="barndlogo" /></a>-->
				</div>
				<div class="top-header-info">
					<div class="top-contact-info">
						<ul class="unstyled-list list-inline">
							<li><span class="phone"> </span>800900700</li>
							<li><span class="mail"> </span><a href="#">help@articraft.com</a></li>
							<div class="clearfix"> </div>
						</ul>
					</div>
					<div class="cart-details">
						<div class="add-to-cart">
                                                    <form action = "cart.jsp" method="post">
                                                        <ul class="unstyled-list list-inline">
                                                            <li><input type="submit" value="cart"/></form>
									
								
							</ul>
						</div>
						<!--<div class="login-rigister">
							<ul class="unstyled-list list-inline">
								<li><a class="login" href="index.jsp">Login</a></li>
								<li><a class="rigister" href="registration.jsp">REGISTER <span> </span></a></li>
								<div class="clearfix"> </div>
							</ul>
						</div>-->
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<!----//top-header---->
			<!---top-header-nav---->
			<div class="top-header-nav"> 
			<!----start-top-nav---->
			 <nav class="top-nav main-menu">
					<ul class="top-nav">
						<li><a href="product.jsp">PRODUCTS </a><span> </span></li>
						
						<li><a href="product.jsp">ABOUT US</a></li>
						<div class="clearfix"> </div>
					</ul>
					<a href="#" id="pull"><img src="images/nav-icon.png" title="menu" /></a>
			  </nav>
			  <!----End-top-nav---->
			  <!---top-header-search-box--->
			  <div class="top-header-search-box">
			  	<form action = "search" method ="post">
			  		<input type="text" placeholder="Search" required / maxlength="22">
			  		<input type="submit" value=" " >
			  	</form>
			  </div>
			  <!---top-header-search-box--->
						<div class="clearfix"> </div>
			</div>
		</div>
			<!--//top-header-nav---->
			<!----content---->
				<div class="content">
					<div class="container">
				<!--- products ---->
				<div class="products">
					<div class="product-filter">
						<h1><a href="#">FILTER</a></h1>
						<div class="product-filter-grids"> 
							<div class="col-md-3 product-filter-grid1-brands">
								
								<div class="clearfix"> </div>
							</div>
							
				<div class="clearfix"> </div>
				<!-- //products ---->
				<!----speical-products---->
				<div class="special-products all-poroducts">
					<div class="s-products-head">
						<div class="s-products-head-left">
							<h3>WALL <span>HANGINGS</span></h3>
						</div>
						<div class="s-products-head-right">
							<a href="#"><span> </span>view all products</a>
						</div>
						<div class="clearfix"> </div>
					</div> 
					<!----special-products-grids---->
					<div class="products-grids">
						<div class="col-md-3 special-products-grid text-center">
							<!--<a class="brand-name" href="single-page.html"><img src="images/heart wall hanging 01.jpg" title="name" /></a> -->
                                                        <form action ="CartServlet">
                                                        <a class="product-here" ><img src="images/heart wall hanging 01.jpg" title="product-name" /></a>
							<h4>Heart wall hanging</h4>                                                    
						        <a class="product-btn" href="product.jsp"><span>35$</span><label> </label></a>
                                                        <input type="hidden" name="P_Name" value="Heart wall hanging">
                                                        <input type="hidden" name ="Image" value="images/heart wall hanging 01.jpg">
                                                        <input type="hidden" name="Price" value="35$"><input type="submit" value="Add to cart"></form>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<!--<a class="brand-name" href="single-page.html"><img src="images/b2.jpg" title="name" /></a>-->
							<form action ="CartServlet">
                                                            <a class="product-here" ><img src="images/wollen wall hanging 02.jpg" title="product-name" /></a>
                                                        <h4> Wollen wall hanging</h4>
                                                        <a class="product-btn" href="product.jsp"><span>30$</span><label> </label></a>
							<input type="hidden" name="P_Name" value="Wollen wall hanging">
                                                        <input type="hidden" name ="Image" value="images/wollen wall hanging 02.jpg">
                                                        <input type="hidden" name="Price" value="30$"><input type="submit" value="Add to cart"></form>
                                                      <!--  <a class="product-btn" href="product.html"><span>30$</span><small>GET NOW</small><label> </label></a>-->
						</div>
                                                <div class="col-md-3 special-products-grid text-center">
							<!-- class="brand-name" href="single-page.html"><img src="images/b5.jpg" title="name" /></a> -->
                                                        <form action ="CartServlet">
							<a class="product-here" ><img src="images/white dcs 05.jpg" title="product-name" /></a>
							<h4>White dream catcher set</h4>
                                                        <a class="product-btn" href="product.jsp"><span>100$</span><label> </label></a>
							<input type="hidden" name="P_Name" value="White dream catcher set">
                                                        <input type="hidden" name ="Image" value="images/white dcs 05.jpg">
                                                        <input type="hidden" name="Price" value="100$"><input type="submit" value="Add to cart"></form>
                                                </div>		
                                            <div class="clearfix"> </div>
					</div>
					<!---//special-products-grids---->
				</div>
				<!----->
				<div class="special-products all-poroducts latest-products">
					<div class="s-products-head">
						<div class="s-products-head-left">
							<h3>DREAM <span>CATCHERS</span></h3>
						</div>
                                            <div class="s-products-head-right">
							<a href="#"><span> </span>view all products</a>
						</div>
						<div class="clearfix"> </div>
						<div class="col-md-3 special-products-grid text-center">
							<!--<a class="brand-name" href="single-page.html"><img src="images/b3.jpg" title="name" /></a>-->
                                                        <form action ="CartServlet">
							<a class="product-here" ><img src="images/yingyang dc 03.jpg" title="product-name" /></a>
							<h4>ying yang dream catcher</h4>
							<a class="product-btn" href="product.jsp"><span>25.50$</span><label> </label></a>
                                                        <input type="hidden" name="P_Name" value="Ying yang dream catcher">
                                                        <input type="hidden" name ="Image" value="images/yingyang dc 03.jpg">
                                                        <input type="hidden" name="Price" value="25.50$"><input type="submit" value="Add to cart"></form>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<!--a class="brand-name" href="single-page.html"><img src="images/b4.jpg" title="name" /></a> -->
                                                        <form action ="CartServlet">
							<a class="product-here" ><img src="images/blue dc 04.jpg" title="product-name" /></a>
							<h4> Blue dream catcher </h4>
							<a class="product-btn" href="product.jsp"><span>25.00$</span><label> </label></a>
                                                        <input type="hidden" name="P_Name" value="Blue dream catcher">
                                                        <input type="hidden" name ="Image" value="images/blue dc 04.jpg">
                                                        <input type="hidden" name="Price" value="25.00$"><input type="submit" value="Add to cart"></form>
						</div>
                                            <div class="col-md-3 special-products-grid text-center">
							<!--a class="brand-name" href="single-page.html"><img src="images/b4.jpg" title="name" /></a> -->
                                                        <form action ="CartServlet">
							<a class="product-here" ><img src="images/Blue dreamcatcher.jpg" title="product-name" /></a>
							<h4>Dark blue dream catcher </h4>
							<a class="product-btn" href="product.jsp"><span>25.00$</span><label> </label></a>
                                                        <input type="hidden" name="P_Name" value="Dark Blue dream catcher">
                                                        <input type="hidden" name ="Image" value="images/Blue dreamcatcher.jpg">
                                                        <input type="hidden" name="Price" value="25.00$"><input type="submit" value="Add to cart"></form>
						</div>
						
						
						<div class="clearfix"> </div>
					</div>
					<!---//special-products-grids---->
				</div>
				<!----->
				<div class="special-products all-poroducts latest-products">
					<div class="s-products-head">
						<div class="s-products-head-left">
							<h3>ACCESSORIES </h3>
						</div>
						<div class="s-products-head-right">
							<a href="#"><span> </span>view all products</a>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!----special-products-grids---->
					<div class="special-products-grids">
						<div class="col-md-3 special-products-grid text-center">
							<!-- <a class="brand-name" href="single-page.html"><img src="images/b1.jpg" title="name" /></a> -->
                                                        <form action ="CartServlet">
							<a class="product-here"><img src="images/bracelet beads 09.jpg" title="product-name" /></a>
                                                       	<h4>silver beaded bracelet</h4>
							<a class="product-btn" href="product.jsp"><span>15.00$</span><label> </label></a>
                                                        <input type="hidden" name="P_Name" value="silver beaded bracelet">
                                                        <input type="hidden" name ="Image" value="images/bracelet beads 09.jpg">
                                                        <input type="hidden" name="Price" value="15.00$"><input type="submit" value="Add to cart"></form>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<!--<a class="brand-name" href="single-page.html"><img src="images/b2.jpg" title="name" /></a>-->
                                                        <form action ="CartServlet">
							<a class="product-here" ><img src="images/bracelet blue 10.jpg" title="product-name" /></a>
							<h4><a href="#">blue leather bracelet</a></h4>
							<a class="product-btn" href="product.jsp"><span>10.90$</span><label> </label></a>
                                                         <input type="hidden" name="P_Name" value="blue leather bracelet">
                                                        <input type="hidden" name ="Image" value="images/bracelet blue 10.jpg">
                                                        <input type="hidden" name="Price" value="10.90$"><input type="submit" value="Add to cart"></form>
						</div>
						<div class="col-md-3 special-products-grid text-center">
							<!--<a class="brand-name" href="single-page.html"><img src="images/b6.jpg" title="name" /></a> -->
                                                        <form action ="CartServlet">
							<a class="product-here" ><img src="images/quil earring 06.jpg" title="product-name" /></a>
							<h4>Earrings quill </h4>
							<a class="product-btn" href="product.jsp"><span>10.90$</span><label> </label></a>
                                                          <input type="hidden" name="P_Name" value="Earrings quill">
                                                        <input type="hidden" name ="Image" value="images/quil earring 06.jpg">
                                                        <input type="hidden" name="Price" value="10.90$"><input type="submit" value="Add to cart"></form>
                                                        
						</div>
						<!--<div class="col-md-3 special-products-grid text-center">
							<!--<a class="brand-name" href="single-page.html"><img src="images/b7.jpg" title="name" /></a> 
                                                        <form action ="CartServlet">
							<a class="product-here" <img src="images/copper 07.jpg" title="product-name" /></a>
							<h4>Copper neck piece  </h4>
							<a class="product-btn" href="product.html"><span>100.90$</span><label> </label></a>
                                                          <input type="hidden" name="P_Name" value="Copper neck piece">
                                                        <input type="hidden" name ="Image" value="images/copper 07.jpg">
                                                        <input type="hidden" name="Price" value="100.90$"><input type="submit" value="Add to cart"></form>
						</div>-->
						<div class="col-md-3 special-products-grid text-center">
							<!-- <a class="brand-name" href="single-page.html"><img src="images/b1.jpg" title="name" /></a> -->
                                                        <form action ="CartServlet">
							<a class="product-here" ><img src="images/anklet 08.jpg" title="product-name" /></a>
							<h4>Silver anklet</h4>
							<a class="product-btn" href="product.jsp"><span>19.90$</span><label> </label></a>
                                                          <input type="hidden" name="P_Name" value="Silver anklet">
                                                        <input type="hidden" name ="Image" value="images/anklet 08.jpg.jpg">
                                                        <input type="hidden" name="Price" value="19.90$"><input type="submit" value="Add to cart"></form>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!---//special-products-grids---->
				</div>
				<!---//speical-products---->
				</div>
			<!----content---->
			<!----footer--->
			<div class="footer">
				<div class="container">
					<div class="col-md-3 footer-logo">
						<!--<a href="index.html"><img src="images/flogo.png" title="brand-logo" /></a>-->
					</div>
					<div class="col-md-7 footer-links">
						<ul class="unstyled-list list-inline">
							<li><a href="#"> Faq</a> <span> </span></li>
							<li><a href="#"> Terms and Conditions</a> <span> </span></li>
							<li><a href="#"> Secure Payments</a> <span> </span></li>
							<li><a href="#"> Shipping</a> <span> </span></li>
							<li><a href="contact.html"> Contact</a> </li>
							<div class="clearfix"> </div>
						</ul>
					</div>
					<div class="col-md-2 footer-social">
						<ul class="unstyled-list list-inline">
							<li><a class="pin" href="#"><span> </span></a></li>
							<li><a class="twitter" href="#"><span> </span></a></li>
							<li><a class="facebook" href="#"><span> </span></a></li>
							<div class="clearfix"> </div>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
			 </div>
			 <div class="clearfix"> </div>
			<!---//footer--->
			<!---copy-right--->
					<div class="copy-right">
						<div class="container">
							<!--<p>Template by <a href="http://w3layouts.com/">W3layouts</a></p>-->
							<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
							<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
						</div>
					</div>
			<!--//copy-right--->
		</div>
		<!----container---->
	</body>
</html>

