<!DOCTYPE html> 
<html> 
	<head> 
		<title></title> 
	</head> 
	<body> 
		<style type="text/css"> 
			.table-data{ 
				width: 23%; 
				border-collapse: collapse; 
			} 

			.table-data tr th, 
			.table-data tr td{ 
				border:0px solid black; 
				font-size: 11pt; 
				font-family:Verdana; 
				padding: 5px 5px 5px 5px; 
			} 
			.table-data th{ 
				background-color:grey; 
			} 
			h3{
				font-family:Verdana; 
			} 
		</style>

		<h2><center>Total Pesanan</center></h2>
		<hr align="center" width="22%" color="black" size="3">
		   <center> 
		    <table class="table-data">
				<?php
				$no=1;
				?>
					<tr>
						<td>No :  </td>
						<td><?php echo $no++ ?></td>
					</tr>

					<tr>
						<td colspan="3" align="center"> <?php
date_default_timezone_set("America/New_York");
echo "" . date("h:i:sa");
?> </td>
					</tr>

					<tr>
						<td colspan="3">
						<hr align="center" width="100%" color="black" size="3">
						</td>
					</tr>



			       <?php
			       $no=1;
			       foreach ($this->cart->contents() as $items) : ?>

			        <tr>
			            <td><?php echo $items['qty']?></td>
			            <td><?php echo $items['name']?></td>
			            <td align="right">Rp. <?php echo number_format($items['price'],0,',','.') ?></td>
			        </tr>
			        <?php endforeach; ?>
			        <tr>
						<td colspan="3">
						<hr align="center" width="100%" color="black" size="3">
						</td>
					</tr>
			        <tr>
			            <td colspan="2">Total :</td>
			            <td align="right">Rp. <?php echo number_format($this->cart->total(),0,',','.') ?></td>
			        </tr>
		    </table>
		   </center>
	<script type="text/javascript"> 
	window.print(); 
</script> 

</body> 
</html>