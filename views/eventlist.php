<?php 
$records = getBookingRecords();
$utype = '';
$type = $_SESSION['calendar_fd_user']['type'];
if($type == 'admin') {
	$utype = 'on';
}
?>

<?php 
$userId = (isset($_GET['ID']) && $_GET['ID'] != '') ? $_GET['ID'] : 0;
$rsql	= "SELECT comments FROM tbl_reservations r WHERE r.uid = $userId";
$res 	= dbQuery($rsql);
while($row = dbFetchAssoc($res)) {
	extract($row);
}

?>

<div class="col-md-12">
  <div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">Room Booking Details</h3>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
      <table class="table table-bordered">
        <tr>
          <th style="width: 10px">#</th>
          <th>Name</th>
          <th>Email</th>
          <th>Phone</th>
          <th>Booking Date</th>
          <th style="width: 140px">Room Number</th>
	  <th style="width: 140px">Purpose</th>
          <th style="width: 100px">Status</th>
          <?php if($utype == 'on') { ?>
		  <th >Action</th>
		  <?php } ?>
        </tr>
        <?php
	  $idx = 1;
	  foreach($records as $rec) {
	  	extract($rec);
		$stat = '';
		if($status == "PENDING") {$stat = 'warning';}
		else if ($status == "APPROVED") {$stat = 'success';}
		?>
        <tr>
          <td><?php echo $idx++; ?></td>
          <td><a href="<?php echo WEB_ROOT; ?>views/?v=USER&ID=<?php echo $user_id; ?>"><?php echo strtoupper($user_name); ?></a></td>
	  <td><?php echo $user_email; ?></td>
          <td><?php echo $user_phone; ?></td>
          <td><?php echo $res_date; ?></td>
          <td><?php echo $count; ?></td>
	  <td><?php echo $comments; ?></td>
          
</td>
	  <td><span class="label label-<?php echo $stat; ?>"><?php echo $status; ?></span></td>
          <?php if($utype == 'on') { ?>
		  <td><?php if($status == "PENDING") {?>
            <a href="javascript:approve('<?php echo $user_id ?>');">Approve</a>&nbsp;/
			&nbsp;<a href="javascript:deleteUser('<?php echo $user_id ?>');">Delete</a>
            <?php } else { ?>
			<a href="javascript:deleteUser('<?php echo $user_id ?>');">Delete</a>
			<?php }//else ?>
          </td>
		  <?php } ?>
        </tr>
        <?php } ?>
      </table>
    </div>
    <!-- /.box-body -->
    <div class="box-footer clearfix">
      <!--
	<ul class="pagination pagination-sm no-margin pull-right">
      <li><a href="#">&laquo;</a></li>
      <li><a href="#">1</a></li>
      <li><a href="#">2</a></li>
      <li><a href="#">3</a></li>
      <li><a href="#">&raquo;</a></li>
    </ul>
	-->
      <?php echo generatePagination(); ?> </div>
  </div>
  <!-- /.box -->
</div>

<script language="javascript">
function approve(userId) {
	if(confirm('Are you sure you want to approve?')) {
		window.location.href = '<?php echo WEB_ROOT; ?>api/process.php?cmd=regConfirm&action=approve&userId='+userId;
	}
}

function deleteUser(userId) {
	if(confirm('Deleting user will also delete it\'s booking from calendar.\n\nAre you sure you want to proceed ?')) {
		window.location.href = '<?php echo WEB_ROOT; ?>api/process.php?cmd=delete&userId='+userId;
	}
}

</script>
