<?php 
$userId = (isset($_GET['ID']) && $_GET['ID'] != '') ? $_GET['ID'] : 0;
$usql	= "SELECT * FROM tbl_users u WHERE u.id = $userId";
$res 	= dbQuery($usql);
while($row = dbFetchAssoc($res)) {
	extract($row);
	$stat = '';
	if($status == "active") {$stat = 'success';}
	else if($status == "delete") {$stat = 'danger';}

$rsql	= "SELECT comments FROM tbl_reservations r WHERE r.uid = $userId";
$res 	= dbQuery($rsql);
while($row = dbFetchAssoc($res)) {
	extract($row);
}

?>
<div class="col-md-9">
  <div class="box box-solid">
    <div class="box-header with-border"> <i class="fa fa-text-width"></i>
      <h3 class="box-title">Booking Details</h3>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
      <dl class="dl-horizontal">
        <dt>Booked By</dt>
        <dd><?php echo $name; ?></dd>
        
		<dt>Course Code</dt>
        <dd><?php echo $address; ?></dd>
	
		<dt>Email</dt>
        <dd><?php echo $email; ?></dd>
		
		<dt>Phone</dt>
        <dd><?php echo $phone; ?></dd>

		<dt>Purpose </dt>
	<dd><?php echo $comments; ?></dd>
		

      </dl>
    </div>
    <!-- /.box-body -->
  </div>
  <!-- /.box -->
</div>
<?php 
}
?>
