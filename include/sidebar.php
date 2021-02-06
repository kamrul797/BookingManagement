<!-- sidebar: style can be found in sidebar.less -->
<section class="sidebar">
  <ul class="sidebar-menu">
    <li class="header"></li>
    <li class="treeview"> 
		<a href="<?php echo WEB_ROOT; ?>views/?v=DB"><i class="fa fa-calendar"></i><span>Calendar</span></a>
	</li>
    <li class="treeview"> 
		<a href="<?php echo WEB_ROOT; ?>views/?v=LIST"><i class="fa fa-newspaper-o"></i><span>Booking List</span></a>
	
	<?php 
	$type = $_SESSION['calendar_fd_user']['type'];
	if($type == 'admin') {
	?>
	</li>	
		<li class="treeview"> 
		<a href="<?php echo WEB_ROOT; ?>views/?v=USERS"><i class="fa fa-users"></i><span>User Details</span></a>
	
	</li>
	<li class="treeview"> 
		<a href="<?php echo WEB_ROOT; ?>views/?v=HOLY"><i class="fa fa-plane"></i><span>Holidays</span></a>
	</li>
	<?php
	}
	?>
  </ul>
</section>
<!-- /.sidebar -->