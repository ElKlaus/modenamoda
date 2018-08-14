<script type="text/javascript">
	if (typeof OC == 'undefined') OC = { };
	OC.Countdown = {
		TEXT_YEARS 		: '<?php echo $text_years ?>',
		TEXT_MONTHS 	: '<?php echo $text_months ?>',
		TEXT_WEEKS 		: '<?php echo $text_weeks ?>',
		TEXT_DAYS 		: '<?php echo $text_days ?>',
		TEXT_HOURS 		: '<?php echo $text_hours ?>',
		TEXT_MINUTES 	: '<?php echo $text_minutes ?>',
		TEXT_SECONDS 	: '<?php echo $text_seconds ?>'
	};
</script>
<script type="text/javascript" src="catalog/view/javascript/jquery.countdown.js"></script>
<div class="occountdown_module">
	<div class="countdown-title module-title group-title"><h2><?php echo $title; ?></h2></div>
		<div class="row">
		<?php if($products): ?>
			<div class="product-layout countdown-products">
				<div class="col-product-countdown ">
					<div class="countdown-tab-content">
						<div class="countdown-product-inner">
					    <?php foreach ($products as $product) : ?>
						    <div class="timer-item item_product">
						    	<div class="products">
									<a class="product-image" href="<?php echo $product['href']; ?>">
										<div class="product-image">
											<?php if($product['rotator_image']): ?>
											<img class="img2" src="<?php echo $product['rotator_image']; ?>" alt="<?php echo $product['name']; ?>" />
											<?php endif; ?>
											<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
										</div>
									</a> 

									<div class="actions">
									
										<button class="button btn-cart" type="button"  title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');">
										<i class="fa fa-shopping-cart"></i>
										</button>

										<button class="btn-wishlist" type="button"  title="<?php echo   $button_wishlist; ?>"  onclick="wishlist.add('<?php echo $product['product_id']; ?>');">
										<i class="fa fa-heart-o"></i>      
										</button>
										<button class="btn-compare" type="button"  title="<?php echo $button_compare; ?>"  onclick="compare.add('<?php echo $product['product_id']; ?>');">    
										<i class="fa fa-refresh"></i>    
										</button>
										<div class="add-to-links btn-quickviews">
										</div><!-- add-to-links -->
									</div><!-- actions -->
								</div><!-- products -->


								<div class="top-inner">
									<h2 class="product-name">
										<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
									</h2>
									<div class="des"><?php echo $product['description']; ?></div>
									<div class="rating"><img src="catalog/view/theme/tt_domino4/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
									<?php if ($product['orgprice']) { ?>
										<?php if (!$product['special']) { ?>
											<div class="price-box">
												<span class="regular-price">
													<span class="price"><?php echo $product['orgprice']; ?></span>
												</span>
											</div>
										<?php } else { ?>
											<div class="price-box">
												<p class="old-price"><span class="price"><?php echo $product['orgprice']; ?></span></p>
												<p class="special-price"><span class="price"><?php echo $product['special']; ?></span></p>
											</div>
										<?php } ?>
									<?php } ?>
								</div><!-- top-inner -->

						        <?php if(strtotime($product['date_end'])) { ?>
						        <div id="Countdown<?php echo $product['product_id']?>" class="box-timer"></div>
						        <?php } ?>
								<?php if(strtotime($product['date_end'])) { ?>
									<script type="text/javascript">

										$(function () {
											var austDay = new Date();
											austDay = new Date(austDay.getFullYear() + 1, 1 - 1, 26);
											$('#Countdown<?php echo $product['product_id'];?>').countdown({
												until: new Date(
													<?php echo date("Y",strtotime($product['date_end']))?>,
													<?php echo date("m",strtotime($product['date_end']))?> -1, 
													<?php echo date("d",strtotime($product['date_end']))?>,
													<?php echo date("H",strtotime($product['date_end']))?>,
													<?php echo date("i",strtotime($product['date_end']))?>, 
													<?php echo date("s",strtotime($product['date_end']))?>
													)
											});
											//$('#Countdown<?php echo $product['product_id'];?>').countdown('pause');
										});
									</script>
								<?php } ?>
								
						    </div><!-- timer-item -->
					    

					    <?php endforeach;  ?>
						</div><!-- countdown-product-inner -->
					</div><!-- countdown-tab-content -->
				</div>
			</div>
		</div> <!-- row -->
	</div>
<?php else: ?>
<p><?php echo $text_empty; ?></p>
<?php endif; ?>
</div>
<script type="text/javascript">
	$('.countdown-product-inner').owlCarousel({
		autoPlay : <?php if($config_slide['autoplay']) { echo 'true' ;} else { echo 'false';} ?>,
		items : <?php if($config_slide['items']) { echo $config_slide['items'] ;} else { echo 3;} ?>,

		slideSpeed : <?php if($config_slide['f_speed']) { echo $config_slide['f_speed'] ;} else { echo 2000;} ?>,
		paginationSpeed : 3000,
		navigation : <?php if($config_slide['f_show_nextback']) { echo 'true' ;} else { echo 'false';} ?>,
		stopOnHover : true,
		pagination : <?php if($config_slide['f_show_ctr']) { echo 'true' ;} else { echo 'false';} ?>,
		scrollPerPage:true,
				itemsDesktop : [1199,3],
		itemsDesktopSmall : [991,2],
		itemsTablet: [700,2],
		itemsMobile : [600,1],
		afterMove: function(){
			x = $( ".countdown-tab-content .owl-pagination .owl-page" ).index( $( ".countdown-tab-content .owl-pagination .active" ));
			var thumbinner = ".thumbinner"+x;
			$(".list-thumb .thumb li").removeClass('active');
			$(thumbinner).addClass('active');
		}
	});
	
	var owltimerslider = $(".countdown-product-inner").data('owlCarousel');
	function timerslider(x){
		owltimerslider.goTo(x)
	}
</script>