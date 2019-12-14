<nav class="ts-sidebar">
			<ul class="ts-sidebar-menu">
			
				<li class="ts-label">ConfiguroWeb</li>
				<?PHP if(isset($_SESSION['id']))
				{ ?>
					<li><a href="dashboard.php"><i class="fa fa-desktop"></i>Consola</a></li>
					<li><a href="my-profile.php"><i class="fa fa-user"></i> Mi Perfil</a></li>
<li><a href="change-password.php"><i class="fa fa-files-o"></i>Cambiar Contraseña</a></li>
<li><a href="book-hostel.php"><i class="fa fa-file-o"></i>Reservar</a></li>
<li><a href="room-details.php"><i class="fa fa-file-o"></i>Detalles de Cuarto</a></li>
<li><a href="access-log.php"><i class="fa fa-file-o"></i>Registro de Acceso</a></li>
<?php } else { ?>
				
				<li><a href="registration.php"><i class="fa fa-files-o"></i> Registro de Usuario</a></li>
				<li><a href="index.php"><i class="fa fa-users"></i> Ingreso de Usuario</a></li>
				<li><a href="admin"><i class="fa fa-user"></i> Acceso de Administrador</a></li>
				<?php } ?>

			</ul>
		</nav>