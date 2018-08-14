<?php echo $header; ?>
    <div class="top-breadcrumb">
      <div class="container">
          <ul class="breadcrumb">
              <?php foreach ($breadcrumbs as $breadcrumb) { ?>
              <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
              <?php } ?>
          </ul>
      </div>
    </div>
  <div class="container">
        <div class="main">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9 col-xs-12'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      
        <div class="article-container">
          <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
              <img src="<?php echo $image; ?>" alt="#"/>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <div class="article-title box-title">
                  <h3 class="title"><?php echo $heading_title; ?></h3>
              </div>
              
              <span class="article-date">
                <?php echo $date; ?><?php if($author != null && $author != ""): ?>
                <?php echo " | ".$author; ?>
                <?php endif; ?>
              </span>
              <div class="article-description">
                  <p><?php echo $description; ?></p>
              </div>
              <div class="article-subtitle">
                  <!-- AddThis Button BEGIN -->
                  <div class="addthis_toolbox addthis_default_style"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
                  <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
                  <!-- AddThis Button END -->
              </div>
            </div>
          </div> 
        </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div></div>
<?php echo $footer; ?>
