<div class="footer">
	 <div class="container">
		 <div class="copywrite">
			 <p> © 2015 Rafting. All rights reserved</p>
		 </div>		 
	 </div>
</div>
<!---->
<!---->
<script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/js/move-top.js"></script>
<script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/js/easing.js"></script>
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<!---->
<!--script-->
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
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</body>
</html>