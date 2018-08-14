<div id="cart" class="btn-group btn-block">
  <button type="button" onclick="window.location.href='<?php echo $cart; ?>'" data-toggle="dropdown" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-inverse btn-block btn-lg dropdown-toggle"><span id="cart-total"><span class="icon_bag_alt"></span><?php echo $text_items; ?></span></button>
  <ul class="dropdown-menu pull-right">
    <?php if ($products || $vouchers) { ?>
    <li>
      <div class="div-sdiviped">
          <?php foreach ($products as $product) { ?>
          <div class="row-cart">
            <div class="image-cart text-left"><?php if ($product['thumb']) { ?>
              <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
              <?php } ?>
            </div>
            <div class="cart-content">
              <div class="product-name text-left">
                <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                <!-- <span class="small-option">
                <?php if ($product['option']) { ?>
                <?php foreach ($product['option'] as $option) { ?>
                - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
                <?php } ?>
                <?php } ?>
                <?php if ($product['recurring']) { ?>
                - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
                <?php } ?>
                </span> -->
              </div>
              <span class="box-cart-price text-left">
                <strong class="text-right">x<?php echo $product['quantity']; ?>- </strong>
                <span class="cart-price text-right"><?php echo $product['total']; ?></span >
              </span>
              <div class="cart-button button-remove"><button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>" class="btn"><i class="fa fa-times"></i></button></div>
            </div>
          </div>
          <?php } ?>
          <?php foreach ($vouchers as $voucher) { ?>
          <div class="row1-cart">
            <div class="text-center"></div>
            <div class="text-left"><?php echo $voucher['description']; ?></div>
            <div class="text-right">x&nbsp;1</div>
            <div class="text-right"><?php echo $voucher['amount']; ?></div>
            <div class="text-center text-danger"><button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-xs"><i class="fa fa-times"></i></button></div>
          </div>
          <?php } ?>
      </div>
    </li>
    <li>
    <div class="row2-cart  div-bordered">
        <?php foreach ($totals as $total) { ?>
        <?php if($total['title'] != 'Sub-Total') { ?>
        <div class="box-cart">
        <span class="box-total">
        <?php echo $total['title']; ?> :
        <span class="text1"><?php echo $total['text']; ?></span>
        </span>
        </div>
        <?php } ?>
        <?php } ?>
      <div class="button-cart text-left">
        <a class="hidden" href="<?php echo $cart; ?>">
          <strong><?php echo $text_cart; ?></strong>
        </a> 
        <a href="<?php echo $checkout; ?>">
          <strong><?php echo $text_checkout; ?></strong>
        </a>
      </div>
    </div>
    </li>
    <?php } else { ?>
    <li>
      <p class="text-center top-cart-content"><?php echo $text_empty; ?></p>
        <?php foreach ($totals as $total) { ?>
        <?php if($total['title'] != 'Sub-Total') { ?>
        <div class="box-cart">
        <span class="box-total"><?php echo $total['title']; ?> :
        <span class="text1"><?php echo $total['text']; ?></span></span>
        </div>
        <?php } ?>
        <?php } ?>
    </li>
    <?php } ?>
    </ul>
</div>
