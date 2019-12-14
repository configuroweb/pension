<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();
?>
<!doctype html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	<title>Room Details</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
<script language="javascript" type="text/javascript">
var popUpWin=0;
function popUpWindow(URLStr, left, top, width, height)
{
 if(popUpWin)
{
if(!popUpWin.closed) popUpWin.close();
}
popUpWin = open(URLStr,'popUpWin', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=yes,width='+510+',height='+430+',left='+left+', top='+top+',screenX='+left+',screenY='+top+'');
}

</script>

</head>

<body>
	<?php include('includes/header.php');?>

	<div class="ts-main-content">
			<?php include('includes/sidebar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						</br></br><h2 class="page-title">Detalles de tu Reserva</h2>
						<div class="panel panel-default">
							<div class="panel-heading">Todos los Detalles de tu Reserva</div>
							<div class="panel-body">
								<table id="zctb" class="table table-bordered " cellspacing="0" width="100%">
									
									
									<tbody>
<?php	
$aid=$_SESSION['login'];
	$ret="select * from registration where emailid=?";
$stmt= $mysqli->prepare($ret) ;
$stmt->bind_param('s',$aid);
$stmt->execute() ;
$res=$stmt->get_result();
$cnt=1;
while($row=$res->fetch_object())
	  {
	  	?>

<tr>
<td colspan="4"><h4>Información relacionada con la habitación</h4></td>
</tr>
<tr>
<td colspan="6"><b>Fecha de Último Acceso: <?php echo $row->postingDate;?></b></td>
</tr>



<tr>
<td><b>No de Cuarto  </b></td>
<td><?php echo $row->roomno;?></td>
<td><b>Cuarto </b></td>
<td><?php echo $row->seater;?></td>
<td><b>Coste </b></td>
<td><?php echo $fpm=$row->feespm;?></td>
</tr>

<tr>
<td><b>Comida </b></td>
<td>
<?php if($row->foodstatus==0)
{
echo "Sin desayuno";
}
else
{
echo "Con desayuno";
}
;?></td>
<td><b>Estadía desde </b></td>
<td><?php echo $row->stayfrom;?></td>
<td><b>Duración </b></td>
<td><?php echo $dr=$row->duration;?> Meses </td>
</tr>

<tr>
<td colspan="6"><b>Costo total : 
<?php if($row->foodstatus==1)
{ 
$fd=2000; 
echo (($dr*$fpm)+$fd);
}
else
{
echo $dr*$fpm;
}
?></b></td>
</tr>
<tr>
<td colspan="6"><h4>Información Personal</h4></td>
</tr>

<tr>
<td><b>Número de Registro </b></td>
<td><?php echo $row->regno;?></td>
<td><b>Nombre Completo </b></td>
<td><?php echo $row->firstName;?> <?php echo $row->middleName;?> <?php echo $row->lastName;?></td>
<td><b>Email </b></td>
<td><?php echo $row->emailid;?></td>
</tr>


<tr>
<td><b>Número de Contacto :</b></td>
<td><?php echo $row->contactno;?></td>
<td><b>Género </b></td>
<td><?php echo $row->gender;?></td>
<td><b>Curso :</b></td>
<td><?php echo $row->course;?></td>
</tr>


<tr>
<td><b>No. Contacto de Emergencia </b></td>
<td><?php echo $row->egycontactno;?></td>
<td><b>Nombre contacto de Emergencia </b></td>
<td><?php echo $row->guardianName;?></td>
<td><b>Parentesco :</b></td>
<td><?php echo $row->guardianRelation;?></td>
</tr>

<tr>
<td><b>Número de Contacto </b></td>
<td colspan="6"><?php echo $row->guardianContactno;?></td>
</tr>

<tr>
<td colspan="6"><h4>Direcciones </h4></td>
</tr>
<tr>
<td><b>Dirección de Correspondencia </b></td>
<td colspan="2">
<?php echo $row->corresAddress;?><br />
<?php echo $row->corresCIty;?>, <?php echo $row->corresPincode;?><br />
<?php echo $row->corresState;?>


</td>
<td><b>Dirección Permanente </b></td>
<td colspan="2">
<?php echo $row->pmntAddress;?><br />
<?php echo $row->pmntCity;?>, <?php echo $row->pmntPincode;?><br />
<?php echo $row->pmnatetState;?>	

</td>
</tr>


<?php
$cnt=$cnt+1;
} ?>
</tbody>
</table>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

	<!-- Loading Scripts -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>

</body>

</html>
