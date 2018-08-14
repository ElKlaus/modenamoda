<?php if ($products) { ?>
<!-- <p><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p> -->
<div class="product-filter">
    <div class="btn-group">
    <button type="button" id="grid-view" class="btn btn-default"  title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
    <button type="button" id="list-view" class="btn btn-default"  title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
    </div>
    <div class="sort">
    <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
    <select id="input-sort" class="form-control col-sm-3" onchange="oclayerednavigationajax.filter(this.value);">
    <?php foreach ($sorts as $sorts) { ?>
    <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
    <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
    <?php } else { ?>
    <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
    <?php } ?>
    <?php } ?>
    </select>
    </div>
    <div class="limit">
    <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
    <select id="input-limit" class="form-control" onchange="oclayerednavigationajax.filter(this.value);">
    <?php foreach ($limits as $limits) { ?>
    <?php if ($limits['value'] == $limit) { ?>
    <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
    <?php } else { ?>
    <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
    <?php } ?>
    <?php } ?>
    </select>
    </div>
</div> 
<div class="custom-products">
    <div class="row">
    <?php foreach ($products as $product) { ?>
    <div class="product-layout product-list">
        <div class="product-thumb item-inner">
            <div class="image">
                <a href="<?php echo $product['href']; ?>">
                    <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
                </a>
                <div class="button-group hidden-list">
                    <button class="button btn-cart" type="button"  title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');">
                        <i class="fa fa-shopping-cart"></i> 
                    </button>
                    <button class="btn-wishlist" type="button"  title="<?php echo $button_wishlist; ?>"  onclick="wishlist.add('<?php echo $product['product_id']; ?>');">
                            <i class="fa fa-heart-o"></i>
                    </button>
                    <button class="btn-compare" type="button"  title="<?php echo $button_compare; ?>"  onclick="compare.add('<?php echo $product['product_id']; ?>');">
                            <i class="fa fa-refresh"></i> 
                    </button>
                    <div class="add-to-links btn-quickviews">
                    </div>
                </div>

                <?php if (isset($product['rating'])) { ?>
                    <div class="rating hidden-list"><img src="catalog/view/theme/tt_domino1/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
                <?php } ?>

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
            </div>
            <div class="caption">
                <h4 class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                <?php if ($product['price']) { ?>
                <p class="price">
                    <?php if (!$product['special']) { ?>
                    <?php echo $product['price']; ?>
                    <?php } else { ?>
                    <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                    <?php } ?>
                    <?php if ($product['tax']) { ?>
                    <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                    <?php } ?>
                </p>
                <?php } ?>
                <?php if (isset($product['rating'])) { ?>
                    <div class="rating hidden-grid"><img src="catalog/view/theme/tt_domino1/image/stars-<?php echo $product['rating']; ?>.png" alt="#" /></div>
                <?php } ?>
                <p class="description hidden-grid"><?php echo $product['description']; ?></p>
                <div class="button-group actions hidden-grid">
                     <button class="button btn-cart" type="button"  title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');">
                        <i class="fa fa-shopping-cart"></i> 
                    </button>
                    <button class="btn-wishlist" type="button"  title="<?php echo $button_wishlist; ?>"  onclick="wishlist.add('<?php echo $product['product_id']; ?>');">
                            <i class="fa fa-heart-o"></i>
                    </button>
                    <button class="btn-compare" type="button"  title="<?php echo $button_compare; ?>"  onclick="compare.add('<?php echo $product['product_id']; ?>');">
                            <i class="fa fa-refresh"></i> 
                    </button>
                </div>
            </div>
            </div>
        </div>
    <?php } ?>
</div>
</div>
<div class="product-pagination">
    <div class="col-sm-6 col-xs-12 text-left"><?php echo $pagination; ?></div>
    <div class="col-sm-6 col-xs-12 text-right"> 
        <div class="product-results"><?php echo $results; ?></div>
    </div>
</div>
<?php } ?>
<?php if (!$categories && !$products) { ?>
<p><?php echo $text_empty; ?></p>
<div class="buttons">
    <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
</div>
<?php } ?>