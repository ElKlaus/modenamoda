<link href="catalog/view/javascript/jquery/magnific/magnific-popup.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
  <div class="row">
    <?php $class = 'col-sm-12'; ?>
    <div id="content" class="<?php echo $class; ?>">
      <div class="row">
        <?php $class = 'col-md-5 col-sm-5 col-xs-12'; ?>
        <div class="<?php echo $class; ?>">
          <?php if ($thumb || $images) {  ?>
          <div class="thumbnails-image">
          <?php if ($thumb) { ?>
          <img class="image-main" src="<?php echo $thumb; ?>" data-zoom-image="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
          <?php } ?>
          </div>
          <div class="image-qv-additional" id="gallery_01">
           <?php if ($thumb) { ?>
              <a class="thumbnail" href="javascript:void(0);" data-image="<?php echo $thumb; ?>" data-zoom-image="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
              <?php } ?>
              <?php if ($images) { ?>
              <?php foreach ($images as $image) { ?>
              <a class="thumbnail" href="javascript:void(0);" data-image="<?php echo $image['thumb']; ?>" data-zoom-image="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img  src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
              <?php } ?>
              <?php } ?>
          </div>
          <?php } ?>
        </div>
        <?php $class = 'col-sm-7 col-xs-12'; ?>
        <div class="<?php echo $class; ?>">
          <h1 class="product-name product-name-product"><?php echo $heading_title; ?></h1>
          
          <?php if ($review_status) { ?>
          <div class="rating rating-product">
            <p>
              <?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($rating < $i) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } ?>
              <?php } ?>|
              <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> <!-- | <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a> --></p>
          </div>
          <?php } ?> <!-- end-rating -->
         
          <?php if ($price) { ?>
          <div class="product-price">
            <?php if (!$special) { ?>
            <div>
              <h2 class="price"><?php echo $price; ?></h2>
            </div>
            <?php } else { ?>
            <div>
              <h2 class="price-new"><?php echo $special; ?></h2>
            </div>
            <div>
              <span class="price-old"><?php echo $price; ?></span>
            </div>
            <?php } ?>
          </div>
          <?php } ?>
           <div class="short-description-content">
            <p class="availability in-stock">
            <?php echo $text_stock; ?><span style="font-weight:bold; color:<?php echo $stock_color ?>"><?php echo $stock; ?></span>
            </p>
            <p class="short-description"><?php echo $shortdescription; ?></p> 
            <hr>
          <div id="product">
            <?php if ($options) { ?>
            <h3><?php echo $text_option; ?></h3>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'image') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php if ($recurrings) { ?>
            <h3><?php echo $text_payment_recurring ?></h3>
            <div class="form-group required">
              <select name="recurring_id" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($recurrings as $recurring) { ?>
                <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                <?php } ?>
              </select>
              <div class="help-block" id="recurring-description"></div>
            </div>
            <?php } ?>
            <div class="form-group">
              <?php if ($minimum >= 2) { ?>
                <div class="alert alert-info alert-minimum-qty"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
              <?php } ?>
              <div class="form-quantity form-quantity-product">  
                  <!-- <label class="control-label" for="input-quantity"><?php //echo $entry_qty; ?></label> -->
                  
                  <div class="box-input-qty">
                  <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
                  <div class="btn-plus"><input type="button" id="plus" value="+" class="qty"/></div>
                  <div class="btn-minus"><input type="button" id="minus" value="-" class="qty" /></div>
                  </div>
                  
                  <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              </div>
              <div class="box-button button-group button-group-product actions">
               
                <button class="button btn-cart" id="button-cart" type="button"  title="<?php echo $button_cart; ?>">
                  <i class="fa fa-shopping-cart"></i><span><?php echo $button_cart; ?></span> 
                </button>
                <button class="btn-wishlist" type="button"  title="<?php echo $button_wishlist; ?>" onclick="addWishlist('<?php echo $product_id; ?>');">
                      <i class="fa fa-heart-o"></i>
                </button>
                <button class="btn-compare" type="button" title="<?php echo $button_compare; ?>" onclick="addCompare('<?php echo $product_id; ?>');">
                  
                      <i class="fa fa-compress"></i>
                 
                </button>
              </div><!-- end-button -->
              <script type="text/javascript">
                $(document).ready(function() {
                  var minimum = <?php echo $minimum; ?>;
                    $("#input-quantity").change(function(){
                    if ($(this).val() < minimum) {
                      alert("Minimum Quantity: "+minimum);
                      $("#input-quantity").val(minimum);
                    }
                  });
                  // increase number of product
                  function minus(minimum){
                    var currentval = parseInt($("#input-quantity").val());
                    $("#input-quantity").val(currentval-1);
                    if($("#input-quantity").val() <= 0 || $("#input-quantity").val() < minimum){
                      alert("Minimum Quantity: "+minimum);
                      $("#input-quantity").val(minimum);
                    }
                  };
                  // decrease of product
                  function plus(){
                    var currentval = parseInt($("#input-quantity").val());
                    $("#input-quantity").val(currentval+1);
                  };
                  $('#minus').click(function(){
                    minus(minimum);
                  });
                  $('#plus').click(function(){
                   plus();
                  });
                });
              </script>
            </div>
          </div>
        </div>
      </div>
      <!-- <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
            <?php if ($attribute_groups) { ?>
            <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
            <?php } ?>
            <?php if ($review_status) { ?>
            <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
            <?php } ?>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
        <?php if ($attribute_groups) { ?>
        <div class="tab-pane" id="tab-specification">
          <table class="table table-bordered">
            <?php foreach ($attribute_groups as $attribute_group) { ?>
            <thead>
              <tr>
                <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
              <tr>
                <td><?php echo $attribute['name']; ?></td>
                <td><?php echo $attribute['text']; ?></td>
              </tr>
              <?php } ?>
            </tbody>
            <?php } ?>
          </table>
        </div>
        <?php } ?>
        <?php if ($review_status) { ?>
        <div class="tab-pane" id="tab-review">
          <form class="form-horizontal" id="form-review">
            <div id="review"></div>
            <h2><?php echo $text_write; ?></h2>
            <?php if ($review_guest) { ?>
            <div class="form-group required">
              <div class="col-sm-12">
                <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                <input type="text" name="name" value="" id="input-name" class="form-control" />
              </div>
            </div>
            <div class="form-group required">
              <div class="col-sm-12">
                <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                <div class="help-block"><?php echo $text_note; ?></div>
              </div>
            </div>
            <div class="form-group required">
              <div class="col-sm-12">
                <label class="control-label"><?php echo $entry_rating; ?></label>
                &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                <input type="radio" name="rating" value="1" />
                &nbsp;
                <input type="radio" name="rating" value="2" />
                &nbsp;
                <input type="radio" name="rating" value="3" />
                &nbsp;
                <input type="radio" name="rating" value="4" />
                &nbsp;
                <input type="radio" name="rating" value="5" />
                &nbsp;<?php echo $entry_good; ?></div>
            </div>
            <?php if ($site_key) { ?>
              <div class="form-group">
                <div class="col-sm-12">
                  <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
                </div>
              </div>
            <?php } ?>
            <div class="buttons clearfix">
              <div class="pull-right">
                <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
              </div>
            </div>
            <?php } else { ?>
            <?php echo $text_login; ?>
            <?php } ?>
          </form>
        </div>
        <?php } ?>
      </div> -->

<script type="text/javascript">
//<![CDATA[
    $('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
      $.ajax({
        url: 'index.php?route=product/product/getRecurringDescription',
        type: 'post',
        data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
        dataType: 'json',
        beforeSend: function() {
          $('#recurring-description').html('');
        },
        success: function(json) {
          $('.alert, .text-danger').remove();

          if (json['success']) {
            $('#recurring-description').html(json['success']);
          }
        }
      });
    });

    $('#button-cart').on('click', function() {
      $.ajax({
        url: 'index.php?route=checkout/cart/add',
        type: 'post',
        data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
        dataType: 'json',
        beforeSend: function() {
          $('#button-cart').button('loading');
        },
        complete: function() {
          $('#button-cart').button('reset');
        },
        success: function(json) {
          $('.alert, .text-danger').remove();
          $('.form-group').removeClass('has-error');

          if (json['error']) {
            if (json['error']['option']) {
              for (i in json['error']['option']) {
                var element = $('#input-option' + i.replace('_', '-'));

                if (element.parent().hasClass('input-group')) {
                  element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
                } else {
                  element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
                }
              }
            }

            if (json['error']['recurring']) {
              $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
            }

            // Highlight any found errors
            $('.text-danger').parent().addClass('has-error');
          }

          if (json['success']) {
            $('#quickview-content').prepend('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

            $('#cart > button').html('<span id="cart-total"><span class="icon_bag_alt"></span> ' + json['total'] + '</span>');

            $('#quickview-content').animate({ scrollTop: 0 }, 'slow');

            $('#cart > ul').load('index.php?route=common/cart/info ul li');
          }
        }
      });
    });
    $(document).ajaxComplete(function() {
      $('.date').datetimepicker({
        pickTime: false
      });

      $('.datetime').datetimepicker({
        pickDate: true,
        pickTime: true
      });

      $('.time').datetimepicker({
        pickDate: false
      });
    });
    $('button[id^=\'button-upload\']').on('click', function() {
      var node = this;

      $('#form-upload').remove();

      $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

      $('#form-upload input[name=\'file\']').trigger('click');

      if (typeof timer != 'undefined') {
          clearInterval(timer);
      }

      timer = setInterval(function() {
        if ($('#form-upload input[name=\'file\']').val() != '') {
          clearInterval(timer);

          $.ajax({
            url: 'index.php?route=tool/upload',
            type: 'post',
            dataType: 'json',
            data: new FormData($('#form-upload')[0]),
            cache: false,
            contentType: false,
            processData: false,
            beforeSend: function() {
              $(node).button('loading');
            },
            complete: function() {
              $(node).button('reset');
            },
            success: function(json) {
              $('.text-danger').remove();

              if (json['error']) {
                $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
              }

              if (json['success']) {
                alert(json['success']);

                $(node).parent().find('input').attr('value', json['code']);
              }
            },
            error: function(xhr, ajaxOptions, thrownError) {
              alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
          });
        }
      }, 500);
    });

    $('#review').delegate('.pagination a', 'click', function(e) {
      e.preventDefault();

        $('#review').fadeOut('slow');

        $('#review').load(this.href);

        $('#review').fadeIn('slow');
    });

    //$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

    $('#button-review').on('click', function() {
      $.ajax({
        url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
        type: 'post',
        dataType: 'json',
        data: $("#form-review").serialize(),
        beforeSend: function() {
          $('#button-review').button('loading');
        },
        complete: function() {
          $('#button-review').button('reset');
        },
        success: function(json) {
          $('.alert-success, .alert-danger').remove();

          if (json['error']) {
            $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
          }

          if (json['success']) {
            $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

            $('input[name=\'name\']').val('');
            $('textarea[name=\'text\']').val('');
            $('input[name=\'rating\']:checked').prop('checked', false);
          }
        }
      });
    });

    $('.thumbnails').magnificPopup({
      type:'image',
      delegate: 'a',
      gallery: {
        enabled:true
      }
    });
  
    function addWishlist(product_id) {
      $.ajax({
        url: 'index.php?route=account/wishlist/add',
        type: 'post',
        data: 'product_id=' + product_id,
        dataType: 'json',
        success: function(json) {
          $('.alert').remove();

          if (json['success']) {
            $('#quickview-content').prepend('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
          }

          if (json['info']) {
            $('#quickview-content').prepend('<div class="alert alert-info"><i class="fa fa-info-circle"></i> ' + json['info'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
          }

          $('#wishlist-total span').html(json['total']);
          // $('#wishlist-total').attr('title', json['total']);
          $('.top-wishlist a').html( '<span class="icon_heart_alt"></span>' + json['total']);

          $('#quickview-content').animate({ scrollTop: 0 }, 'slow');
        }
      });
    }

    function addCompare(product_id) {
      $.ajax({
        url: 'index.php?route=product/compare/add',
        type: 'post',
        data: 'product_id=' + product_id,
        dataType: 'json',
        success: function(json) {
          $('.alert').remove();

          if (json['success']) {
            $('#quickview-content').prepend('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

            $('#compare-total').html(json['total']);

            $('#quickview-content').animate({ scrollTop: 0 }, 'slow');
          }
        }
      });
    }
  $(".image-qv-additional").owlCarousel({
    navigation:true,
    pagination: false,
    slideSpeed : 500,
    goToFirstSpeed : 1500,
    autoHeight : true,
    items :3, //10 items above 1000px browser width
    itemsDesktop : [1000,3], //5 items between 1000px and 901px
    itemsDesktopSmall : [900,3], // betweem 900px and 601px
    itemsTablet: [767,4], //2 items between 600 and 0
    itemsMobile : [480,2] // itemsMobile disabled - inherit from itemsTablet option
  }); 

  $('.image-qv-additional a.thumbnail').click(function(){
    var urlImg = $(this).data('image');
    $('.image-main').attr('src', urlImg);
  });

  // increase number of product
  function minus(){
    if(document.getElementById("input-quantity").value <= 0) {
   return false;
    }
  document.getElementById("input-quantity").value --;
  };
 // decrease of product
  function plus(){
    document.getElementById("input-quantity").value ++;
  };
  $('#minus').click(function(){
   minus();
  });
  $('#plus').click(function(){
   plus();
  });
//]]>
</script>