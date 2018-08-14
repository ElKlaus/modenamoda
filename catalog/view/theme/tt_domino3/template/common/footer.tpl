<!-- <div class="google-map-content">
    <?php if ($geocode) { ?>
  <script>
        function initialize() {
              var myLatlng = new google.maps.LatLng(<?php echo $geocode;?>);
              var mapOptions = {
                zoom: 8,
                center: myLatlng
              }
              var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
            
              var marker = new google.maps.Marker({
                  position: myLatlng,
                  map: map,
                  title: 'Primave store!'
              });
            }
            
            google.maps.event.addDomListener(window, 'load', initialize);
        
    </script>
    <div id="map-canvas"></div>
  
  <?php } ?>
</div> -->
<footer>
  <div class="footer-top">
  <div class="container">
    <div class="row">
      <div class="col-sm-6">
        <h5><?php echo $text_aboutus; ?></h5>
        <p class="sub_aboutus"><?php echo $text_sub_aboutus; ?></p>
        <ul class="list-unstyled social">
          <li><a href="#"><em class="fa fa-twitter"></em></a></li>
          <li><a href="#"><em class="fa fa-facebook"></em></a></li>
          <li><a href="#"><em class="fa fa-instagram"></em></a></li>
          <li><a href="#"><em class="fa fa-linkedin"></em></a></li>
          <li><a href="#"><em class="fa fa-pinterest-p"></em></a></li>
        </ul>
      </div>
      <?php if ($informations) { ?>
      <div class="col-sm-2">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-2">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-2">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
        </ul>
      </div>
    </div>
    
  </div>
  </div>
  <div class="footer-bottom">
    <div class="container">
      <p><?php echo $powered; ?></p>
      <a href="#" class="payment"><img src="image/catalog/demo/icon/payment.png" alt="#"></a>
    </div>
  </div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

<div id="back-top" class="hidden-xs"></div>
<script type="text/javascript">
    $(document).ready(function(){
     // hide #back-top first
     $("#back-top").hide();
     // fade in #back-top
     $(function () {
      $(window).scroll(function () {
       if ($(this).scrollTop() > 300) {
        $('#back-top').fadeIn();
         $('#back-top').addClass("show");
       } else {
        $('#back-top').fadeOut();
        $('#back-top').removeClass("show");
       }
      });
      // scroll body to 0px on click
      $('#back-top').click(function () {
       $('body,html').animate({
        scrollTop: 0
       }, 800);
       return false;
      });
     });
    });
</script>
</body></html>