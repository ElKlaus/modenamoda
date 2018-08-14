<div class="newletter-subscribe">
<div class="containers">
<div id="box" class="newletter-container">
 <div style="" id="dialog_nomal" class="window">
	<div class="box">
	  <div class="newletter-title">
	  	<h2><?php echo $newletter_lable; ?></h2>
	  	<!-- <span class="sub-newletter"><?php echo $sub_newletter; ?></span> -->
	  </div>
	  <div class="box-content newleter-content">
			<label class="hidden"><?php echo $newletter_lable; ?></label>
		  	<div id="frm_subscribe">
				<form name="subscribe" id="subscribe">
					<input type="text" value="" name="subscribe_email" id="subscribe_email">
					<input type="hidden" value="" name="subscribe_name" id="subscribe_name" />
					<a class="button" onclick="email_subscribe()"><span><?php echo $entry_button; ?></span></a>
					<?php if($option_unsubscribe) { ?>
					<a class="button" onclick="email_unsubscribe()"><span><?php echo $entry_unbutton; ?></span></a>
					<?php } ?>
				</form>
			</div><!-- /#frm_subscribe -->
		  <div id="notification_normal"></div>
		</div><!-- /.box-content -->
 </div>
</div>	

<script type="text/javascript">
function email_subscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/subscribe',
			dataType: 'html',
            data:$("#subscribe").serialize(),
			success: function (html) {
				eval(html);
			}}); 
	
	
}
function email_unsubscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/unsubscribe',
			dataType: 'html',
            data:$("#subscribe").serialize(),
			success: function (html) {
				eval(html);
			}}); 
	$('html, body').delay( 1500 ).animate({ scrollTop: 0 }, 'slow'); 
	
}
</script>
<script type="text/javascript">
    $(document).ready(function() {
		$('#subscribe_email').keypress(function(e) {
            if(e.which == 13) {
                e.preventDefault();
                email_subscribe();
            }
			var name= $(this).val();
		  	$('#subscribe_name').val(name);
        });
		$('#subscribe_email').change(function() {
		 var name= $(this).val();
		  		$('#subscribe_name').val(name);
		});
	
    });
</script>


</div><!-- /.box -->
</div>
</div>