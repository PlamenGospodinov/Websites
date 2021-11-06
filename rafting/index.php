<?php
	get_header();
?>
<div id="about" class="about">
	 <div class="container">
		 <div class="about-top">
		 <h3>About</h3>
		  <i class="strp"></i>
		 </div>
		 <div class="about-grids">
			 <div class="grid1">
				 <div class="col-md-5 abt-pic">
					 <img src="<?php bloginfo('template_directory'); ?>/images/abt1.jpg" class="img-responsive" alt=""/>
				 </div>
				  <div class="col-md-7 abt-info">
					 <h4>Classic Rivers</h4>
					 <p>Nulla suscipit commodo augue, at facilisis purus facilisis in. Praesent vel purus id urna mollis efficitur. Cras at metus in magna dapibus scelerisque sed nec leo. Suspendisse finibus purus erat lacinia massa in efficitur pulvinar.</p>
				 </div>
				 <div class="clearfix"></div>
			 </div>
		 </div>
	 </div>
</div>
<!---->
<div id="services" class="services">
	 <div class="container">
		 <div class="service-top">
		 <h3>Services</h3>
		 <i class="strp"></i>
		 </div>
		 <div class="strt-line"></div>
		 <div class="service-grids-info">
			 <div class="col-md-6 service-grid">				 
				<ul class="project_box">
				  <li class="mini-post-meta1">1</li>
				  <li class="desc"><h4><a href="#">Raft Training</a></h4>
				  	 <p>simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown.</p>
				  </li>					  
				</ul>
					<div class="clearfix"> </div>
			 </div>
			 <div class="col-md-6 service-grid">				 
				<ul class="project_box">
				  <li class="mini-post-meta1">2</li>
				  <li class="desc"><h4><a href="#">Family Rafting Packs</a></h4>
				  	 <p>simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown.</p>
				  </li>					  
				</ul>		
					<div class="clearfix"> </div>
			 </div>
			 <div class="clearfix"> </div>
			 <div class="col-md-6 service-grid">				 
				<ul class="project_box">
				  <li class="mini-post-meta1">3</li>
				  <li class="desc"><h4><a href="#">First Aid</a></h4>
				  	 <p>simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown.</p>
				  </li>					  
				</ul>			
					<div class="clearfix"> </div>
			 </div>
			 <div class="col-md-6 service-grid">				 
				<ul class="project_box">
				  <li class="mini-post-meta1">4</li>
				  <li class="desc"><h4><a href="#">Mountain Rafting</a></h4>
				  	 <p>simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown.</p>
				  </li>					  
				</ul>	
					 <div class="clearfix"> </div>
			 </div>
			 <div class="clearfix"> </div>
		 </div>
	 </div>
</div>
<!---->
<div id="raft" class="raftrips">
	 <div class="container">
		 <div class="raftrips-top">
			 <h3>Raft Trips</h3>
			 <i class="strp"></i>
			 </div>
		 <div class="rafting-grids">

		 	<?php query_posts('showposts=8'); ?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

			 <div class="rft-grid">
				 <div class="col-md-4 rft-pic merc">
					 <?php 
         						 if ( has_post_thumbnail() ) { // check if the post has a Post Thumbnail assigned to it.
         						   the_post_thumbnail();
         						 } 
      							  ?>
				 </div>
				 <div class="col-md-8 rft-pic-info">
					  <a href="<?php the_permalink() ?>"><h4><?php the_title(); ?></h4></a>
					 <p><?php echo the_content(); ?></p>
				 </div>
				 <div class="clearfix"></div>
			 </div>


			 <?php 
						endwhile;
						endif;
					?>

			 
			 
		 </div>
	 </div>	
</div>	
<!---->

<div id="gallery" class="gallery">
	 <div class="container">
		 <div class="gallery-top">
			 <h3>Gallery</h3>
				<i class="strp"></i>
			 </div>
		 <div class="gallery-bottom">
				<div class="gallery-1">
					<div class="col-md-4 gallery-grid">
						<a class="example-image-link" href="<?php bloginfo('template_directory'); ?>/images/g2.jpg" data-lightbox="example-set"><img class="example-image" src="<?php bloginfo('template_directory'); ?>/images/g2.jpg" alt=""/></a>
					</div>
					<div class="col-md-4 gallery-grid">
						<a class="example-image-link" href="images/g1.jpg" data-lightbox="example-set"><img class="example-image" src="<?php bloginfo('template_directory'); ?>/images/g1.jpg" alt=""/></a>
					</div>
					<div class="col-md-4 gallery-grid">
						<a class="example-image-link" href="images/g3.jpg" data-lightbox="example-set"><img class="example-image" src="<?php bloginfo('template_directory'); ?>/images/g3.jpg" alt=""/></a>
					</div>
					<div class="clearfix"></div>
				</div>
					<div class="clearfix"></div>
				</div>				
		 </div>
	 </div>
</div>	
<script src="<?php bloginfo('template_directory'); ?>/js/lightbox-plus-jquery.min.js"></script>		 
<!---->
<div class="subscribe">
	 <div class="container">
		 <h3>Newsletter</h3>
		 <p>Vestibulum vehicula eu nisi eget suscipit. Fusce pellentesque placerat commodo. Vivamus lacinia massa in efficitur pulvinar. In mattis eros leo, vel vestibulum tortor tincidunt ac. </p>
		 <form>
			 <input type="text" class="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
			 <input type="submit" value="Subscribe">
		 </form>
	 </div>
</div>
<!---->
<div id="contact" class="contact">
	 <div class="container">
		 <div class="contact-top">
			 <h3>Contact</h3>
				<i class="strp"></i>
			 </div>
		 <form>
				  <div class="col-md-6 contact-left">
					<input type="text" class="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
					<input type="text" class="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
					<input type="text" class="text" value="Phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone';}">
				 </div>
				 <div class="col-md-6 contact-right">
						 <textarea onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
						 <input type="submit" value="SEND"/>
				 </div>
				 <div class="clearfix"></div>
		 </form>		 
		 <div class="contact-map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12386182.960956775!2d-74.08302114251626!3d40.71866701702417!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1436524193425"  style="border:0" allowfullscreen></iframe>
	     </div>
		 <div class="address">
			 <h3>Our Locations</h3>
			 <div class="locations">				 
				  <ul>
					 <li><span></span></li>					 					
					 <li>
						 <div class="address-info">	
							 <h4>NewYork , Washington</h4>
							 <p>10-765 MD-Road</p>
							 <p>Washington, DC, United States,</p>
							 <p>Phone: 123 456 7890</p>
							 <p>Mail: <a href="mailto:info@example.com">info(at)example.com</a></p>
							  <p><a href="#">Visit on Google Maps >></a></p>		
						 </div>
					 </li>				
				  </ul>	
				  <ul>
					 <li><span></span></li>					 					
					 <li>
						 <div class="address-info">	
							 <h4>London , UK</h4>
							 <p>10-765 MD-Road</p>
							 <p>Lorem ipsum, domon sit, UK,</p>
							 <p>Phone: 123 456 7890</p>
							 <p>Mail: <a href="mailto:info@example.com">info(at)example.com</a></p>
							  <p><a href="#">Visit on Google Maps >></a></p>		
						 </div>
					 </li>				
				  </ul>		
			 </div>			 
		 </div>		 
	 </div>
</div>
<!---->

<?php
	get_footer();
?>