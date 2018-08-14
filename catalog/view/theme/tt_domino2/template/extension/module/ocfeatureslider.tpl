<div class="ocnfeatureproductslider special-button-owl">
<div class="row">
  <div class="ocfeatureproduct-title group-title">
    <h2><?php echo $title; ?></h2>
  </div>
  <?php
	  $count = 0;
	  $rows = $config_slide['f_rows'];
	  if(!$rows) { $rows=1; }
   ?>
  <div class="featured-product-slider">
    <?php if($products): ?>
            <?php foreach ($products as $product) { ?>
            <?php  if($count % $rows == 0 ) { echo '<div class="row_items">'; } $count++; ?>
            <div class="item-inner">
              <?php if($config_slide['f_show_label']): ?>
                  <?php if ($product['is_new']):
                    if($product['special']): ?>
                      <div class="label-pro-sale">
                        <?php if($product['special']){
                          $a = ($product['special2']);
                          $b = ($product['price2']);
                          $c = round(($a-$b)/$b,2)*100;
                        }?> 
                        <?php if($product['special']){?>
                          <div class="sale-percent"><?php echo $c;?>%</div>
                        <?php }?>
                      </div>
                    <?php else: ?>
                      <div class="label-pro-new"><?php echo $text_new; ?></div>
                    <?php endif; ?>
                  <?php else: ?>
                    <?php if($product['special']): ?>
                      <div class="label-pro-sale">
                        <?php if($product['special']){
                          $a = ($product['special2']);
                          $b = ($product['price2']);
                          $c = round(($a-$b)/$b,2)*100;
                        }?> 
                        <?php if($product['special']){?>
                          <div class="sale-percent"><?php echo $c;?>%</div>
                        <?php }?>
                      </div>
                    <?php endif; ?>
                  <?php endif; ?>
                <?php endif; ?>
              <div class="oc-box-content">
                  <div class="products">
                      <a class="product-image" href="<?php echo $product['href']; ?>">
                          <div class="product-image">
                              <!-- <?php if($product['rotator_image']): ?>
                                  <img class="img2" src="<?php echo $product['rotator_image']; ?>" alt="<?php echo $product['name']; ?>" />
                              <?php endif; ?> -->
                              <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
                          </div>
                      </a> 
                      
                      <div class="actions">
                          <?php if($config_slide['f_show_addtocart']) { ?>
                              <button class="button btn-cart" type="button"  title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');">
                              <i class="fa fa-shopping-cart"></i>
                              </button>
                          <?php } ?>
                          
                          <button class="btn-wishlist" type="button"  title="<?php echo   $button_wishlist; ?>"  onclick="wishlist.add('<?php echo $product['product_id']; ?>');">
                          <i class="fa fa-heart-o"></i>      
                          </button>
                          <button class="btn-compare" type="button"  title="<?php echo $button_compare; ?>"  onclick="compare.add('<?php echo $product['product_id']; ?>');">    
                          <i class="fa fa-refresh"></i>    
                          </button>
                          <div class="add-to-links btn-quickviews">
                          </div><!-- add-to-links -->
                      </div><!-- actions -->
                      <?php if (isset($product['rating'])) { ?>
                      <div class="rating"><img src="catalog/view/theme/tt_domino1/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
                      <?php } ?>
                  </div><!-- products -->
                  <div class="top-inner">
                      <h2 class="product-name">
                          <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                      </h2>
                      <?php if($config_slide['f_show_price']) { ?>
                          <?php if ($product['price']) { ?>
                          <div class="price-box">
                              <?php if (!$product['special']) { ?>
                                  <span class="price"><?php echo $product['price']; ?></span>
                              <?php } else { ?>
                                  <p class="old-price"><span class="price"><?php echo $product['price']; ?></span></p>
                                  <p class="special-price"><span class="price"><?php echo $product['special']; ?></span></p>
                              <?php } ?>
                          </div>
                          <?php } ?>
                      <?php } ?>
                      
                      <?php if($config_slide['f_show_des']) { ?>
                          <div class="des"><?php echo $product['description']; ?></div>
                      <?php } ?>
                  </div><!-- top-inner -->
              </div><!-- oc-box-content -->
          </div> <!-- item-inner -->
          <?php if($count % $rows == 0 || $count == count($products)): ?>
        </div>
        <?php endif; ?>
        <?php } ?>
    <?php else: ?>
      <p><?php echo $text_empty; ?></p>
    <?php endif; ?>

  </div>
  </div>
</div>
<script type="text/javascript">
  $(document).ready(function() {
    $(".featured-product-slider").owlCarousel({
    autoPlay: <?php if($config_slide['autoplay']) { echo 'true' ;} else { echo 'false'; } ?>,
    items : <?php if($config_slide['items']) { echo $config_slide['items'] ;} else { echo 4; } ?>,
    slideSpeed : <?php if($config_slide['f_speed']) { echo $config_slide['f_speed']; } else { echo 200;} ?>,
    navigation : <?php if($config_slide['f_show_nextback']) { echo 'true' ;} else { echo 'false'; } ?>,
    paginationNumbers : true,
    pagination : <?php if($config_slide['f_show_ctr']) { echo 'true' ;} else { echo 'false';} ?>,
    stopOnHover : false,
    itemsDesktop : [1199,3],
    itemsDesktopSmall : [991,2],
    itemsTablet: [700,2],
    itemsMobile : [479,1],
  });
  });
</script>