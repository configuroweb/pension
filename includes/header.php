
<?php if($_SESSION['id'])
{ ?><div class="brand clearfix">
		<link rel="icon" href="img/logo1.jpg" type="image/ico">
		<a href="#" class="logo" style="font-size:16px;">LaPension|ConfiguroWeb</a>
		<span class="menu-btn"><i class="fa fa-bars"></i></span>
		<ul class="ts-profile-nav">
			<li class="ts-account">
				<a href="#"><img src="img/ts-avatar.jpg" class="ts-avatar hidden-side" alt=""> Account <i class="fa fa-angle-down hidden-side"></i></a>
				<ul>
					<li><a href="my-profile.php">Mi Cuenta</a></li>
					<li><a href="logout.php">Cerrar Sesión</a></li>
				</ul>
			</li>
		</ul>
	</div>

<?php
} else { ?>
<div class="brand clearfix">
		<a href="#" class="logo" style="font-size:16px;">LaPension|<b>ConfiguroWeb</b></a>
		<span class="menu-btn"><i class="fa fa-bars"></i></span>
		
	</div>
	<?php } ?>