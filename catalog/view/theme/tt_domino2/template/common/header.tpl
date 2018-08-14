<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1 ,maximum-scale=1, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/jquery-ui.js" type="text/javascript"></script> 
<link href="catalog/view/javascript/jquery/css/jquery-ui.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/tt_domino2/stylesheet/opentheme/oclayerednavigation/css/oclayerednavigation.css" rel="stylesheet"> 
<script src="catalog/view/javascript/opentheme/oclayerednavigation/oclayerednavigation.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/tt_domino2/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/tt_domino2/stylesheet/opentheme/ocslideshow/ocslideshow.css" rel="stylesheet" />
<script src="catalog/view/javascript/opentheme/ocslideshow/jquery.nivo.slider.js" type="text/javascript"></script>
<link href="catalog/view/theme/tt_domino2/stylesheet/opentheme/hozmegamenu/css/custommenu.css" rel="stylesheet" />
<!-- <script src="catalog/view/javascript/opentheme/hozmegamenu/mobile_menu.js" type="text/javascript"></script> -->
<script src="catalog/view/javascript/opentheme/hozmegamenu/custommenu.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/tt_domino2/stylesheet/opentheme/ocquickview/css/ocquickview.css">
<script src="catalog/view/javascript/opentheme/ocquickview/ocquickview.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/owl-carousel/owl.carousel.js" type="text/javascript"></script>
<link href="catalog/view/theme/tt_domino2/stylesheet/opentheme/css/owl.carousel.css" rel="stylesheet" />
<script src="catalog/view/javascript/jquery/elevatezoom/jquery.elevatezoom.js" type="text/javascript"></script>
<link href="catalog/view/theme/tt_domino2//stylesheet/opentheme/css/animate.css" rel="stylesheet" />
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAQR6Szd2sBV2-1MQXmdAKRHWHa3tNnuH8" type="text/javascript"></script>

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<div class="header-content">
  <nav id="top">
    <div class="container">
      <div class="container-ink">
        <div class="row">
          <div class="col-sm-6 col-xs-12">
             <div class="top-contact">
              <ul class="top-links-left">
                <li>
                  <a href="<?php echo $home; ?>"><?php echo $text_home; ?></a> 
                </li>
                <li>
                  <a href="#"><?php echo $text_aboutus; ?></a>
                </li>
                <li>
                  <a href="<?php echo $contact; ?>"><?php echo $text_contactus; ?></a> 
                </li>
                <li>
                  <a href="http://www.plazathemes.com/"><?php echo $text_buytheme; ?></a> 
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-xs-12 col-sm-6">
            <div class="top-links-right">
              <?php echo $currency; ?>
              <?php echo $language; ?>
              <div class="dropdown top-account">
                <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><span class=""><?php echo $text_account; ?></span><i class="fa fa-angle-down "></i></a>
                <ul class="dropdown-menu dropdown-menu-right">
                  <?php if ($logged) { ?>
                  <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                  <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                  <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                  <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                  <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                  <?php } else { ?>
                  <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                  <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                  <?php } ?>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </nav>
  <header class="header">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-12 left-content-top">
          <div id="logo">
            <?php if ($logo) { ?>
            <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
            <?php } else { ?>
            <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
            <?php } ?>
          </div>
        </div>
        <div class="col-md-9 col-sm-12">
          <div class="quick-access">
            <div class="top-cart-content"><?php echo $cart; ?></div>
            <div class="top-search-content"><?php echo $search; ?></div>
            <?php echo $hozmenu1; ?>
          </div>
        </div>
      </div>
    </div>
  </header>
</div>
<script type="text/javascript">
$(document).ready(function() { 
  //top-cart show subnav on hover
    $('#cart').mouseenter(function() {
      $(this).find(".dropdown-menu").stop(true, true).slideDown();
    });
    //hide submenus on exit
    $('#cart').mouseleave(function() {
      $(this).find(".dropdown-menu").stop(true, true).delay(500).slideUp();
    });

  // //top-currency show subnav on hover
  //   $('#currency').mouseenter(function() {
  //     $(this).find(".dropdown-menu").stop(true, true).slideDown();
  //   });
  //   //hide submenus on exit
  //   $('#currency').mouseleave(function() {
  //     $(this).find(".dropdown-menu").stop(true, true).slideUp();
  //   });

  // //top-languge show subnav on hover
  //   $('.top-links .form-language').mouseenter(function() {
  //     $(this).find(".dropdown-menu").stop(true, true).slideDown();
  //   });
  //   //hide submenus on exit
  //   $('.top-links .form-language').mouseleave(function() {
  //     $(this).find(".dropdown-menu").stop(true, true).slideUp();
  //   });

  // //top-account show subnav on hover
  //   $('.top-account').mouseenter(function() {
  //     $(this).find(".dropdown-menu").stop(true, true).slideDown();
  //   });
  //   //hide submenus on exit
  //   $('.top-account').mouseleave(function() {
  //     $(this).find(".dropdown-menu").stop(true, true).slideUp();
  //   });
});
</script>