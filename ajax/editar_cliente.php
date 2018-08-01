<?php

	include('is_logged.php');//Archivo verifica que el usario que intenta acceder a la URL esta logueado

	/*Inicia validacion del lado del servidor*/

	if (empty($_POST['mod_id'])) {

           $errors[] = "ID vacío";

        }else if (empty($_POST['mod_nombre'])) {

           $errors[] = "Nombre vacío";

        }  else if ($_POST['mod_alimentacion']==""){

			$errors[] = "Selecciona el menu del cliente";

		}  else if (

			!empty($_POST['mod_id']) &&

			!empty($_POST['mod_nombre']) &&

			$_POST['mod_alimentacion']!="" 

		){

		/* Connect To Database*/

		require_once ("../config/db.php");//Contiene las variables de configuracion para conectar a la base de datos

		require_once ("../config/conexion.php");//Contiene funcion que conecta a la base de datos

		// escaping, additionally removing everything that could be (html/javascript-) code

		$id_cliente=intval($_POST['mod_id']);
		$nombre=mysqli_real_escape_string($con,(strip_tags($_POST["mod_nombre"],ENT_QUOTES)));
		$documento=mysqli_real_escape_string($con,(strip_tags($_POST["mod_documento"],ENT_QUOTES)));
		$empresa_cliente=mysqli_real_escape_string($con,(strip_tags($_POST["mod_cargo"],ENT_QUOTES)));
		$direccion_cliente=mysqli_real_escape_string($con,(strip_tags($_POST["mod_ubicacion"],ENT_QUOTES)));
		$menu_cliente=mysqli_real_escape_string($con,(strip_tags($_POST["mod_alimentacion"],ENT_QUOTES)));
		$turno_desde=mysqli_real_escape_string($con,(strip_tags($_POST["mod_desde"],ENT_QUOTES)));
		$turno_hasta=mysqli_real_escape_string($con,(strip_tags($_POST["mod_hasta"],ENT_QUOTES)));
		$fecha=mysqli_real_escape_string($con,(strip_tags($_POST["mod_fecha"],ENT_QUOTES)));

		$sql="UPDATE clientes SET nombre_cliente='".$nombre."', documento_cliente='".$documento."', menu_cliente='".$menu_cliente."', fec_consumo='".$fecha."'  
		, empresa_cliente='".$empresa_cliente."', direccion_cliente='".$direccion_cliente."', turno_desde='".$turno_desde."', turno_hasta='".$turno_hasta."' WHERE id_cliente='".$id_cliente."'";

		$query_update = mysqli_query($con,$sql);

			if ($query_update){

				$messages[] = "Cliente ha sido actualizado satisfactoriamente.";

			} else{

				$errors []= "Lo siento algo ha salido mal intenta nuevamente.".mysqli_error($con);

			}

			} else {

				$errors []= "Error desconocido.";

			}

		

		if (isset($errors)){

			

			?>

			<div class="alert alert-danger" role="alert">

				<button type="button" class="close" data-dismiss="alert">&times;</button>

					<strong>Error!</strong> 

					<?php

						foreach ($errors as $error) {

								echo $error;

							}

						?>

			</div>

			<?php

			}

			if (isset($messages)){

				

				?>

				<div class="alert alert-success" role="alert">

						<button type="button" class="close" data-dismiss="alert">&times;</button>

						<strong>¡Bien hecho!</strong>

						<?php

							foreach ($messages as $message) {

									echo $message;

								}

							?>

				</div>

				<?php

			}



?>