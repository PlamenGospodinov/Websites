<!DOCTYPE HTML>
<html>
<head>
<title>Rafting a Sports category Flat Bootstarp Responsive Website Template | Home :: w3layouts</title>
<link href="<?php bloginfo('template_directory'); ?>/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/js/bootstrap-3.1.1.min.js"></script>
<!-- Custom Theme files -->
<link href="<?php bloginfo('template_directory'); ?>/css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/lightbox.css">

<!-- Custom Theme files -->
<script src="<?php bloginfo('template_directory'); ?>/js/jquery-1.8.3.min.js"></script>
<!--//theme style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Rafting Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

</head>
<body>

<!-- header -->
<div id="home" class="banner">
	  <div class="banner-info">
	  <h2>MY IDEA OF A GREAT REFRESHMENT</h2>
	  <p>Aliquam nec feugiat lectus, gravida condimentum ut interdum tortor ultricies nec. Praesent aliquam auctor purus magna vehicula eget. </p>
	  </div>
	 <div class="side-menu">
		 <div class="logo">
			 <h1><a href="index.html">Rafting</a></h1>
		 </div>
		 <div class="top-menu">
			 <span class="menu"><img src="<?php bloginfo('template_directory'); ?>/images/menu.png" alt=""></span>
			 
			 <?php 
				wp_nav_menu(array(
					'theme_location'  => 'top-menu',
					'menu'            => 'navigation',
					'container'       => 'nav',
					'container_id'    => 'main-nav',
					'container_class'    => '',
					'menu_class'      => 'nav1',
					'menu_id'         => 'idm',
					'echo'            => true,
					'fallback_cb'     => 'wp_page_menu',
					'before'          => '',
					'after'           => '',
					'link_before'     => '',
					'link_after'      => '',
					'items_wrap'      => '<ul class="%2$s">%3$s</ul>',
					'depth'           => 0,
					'walker'          => ''
				));
			?>
			 
			 <!-- script-for-menu -->
							 <script>
							   $( "span.menu" ).click(function() {
								 $( "ul.nav1" ).slideToggle( 300, function() {
								 // Animation complete.
								  });
								 });
							</script>
		 <!-- /script-for-menu -->
		 </div>
	 </div>
	 <div class="container">
		 <div class="copy-rights">
				<ul>
					<li><a href="#"><span class="fa"> </span></a></li>
					<li><a href="#"><span class="tw"> </span></a></li>
					<li><a href="#"><span class="g"> </span></a></li>
					<li><a href="#"><span class="in"> </span></a></li>
					<li><a href="#"><span class="pin"> </span></a></li>
				</ul>
				<div class="clearfix"></div>
		 </div>
	 </div>
</div>
<!---->

<!---->