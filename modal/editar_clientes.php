	<?php
		if (isset($con))
		{
	?>
	<!-- Modal -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
		<div class="modal-content">
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			<h4 class="modal-title" id="myModalLabel"><i class='glyphicon glyphicon-edit'></i> Editar cliente</h4>
		  </div>
		  <div class="modal-body">
			<form class="form-horizontal" method="post" id="editar_cliente" name="editar_cliente">
			<div id="resultados_ajax2"></div>
			  
			  <div class="form-group">
				<label for="mod_nombre" class="col-sm-3 control-label">Nombre</label>
				<div class="col-sm-8">
				  <input type="text" class="form-control" id="mod_nombre" name="mod_nombre"  required>
					<input type="hidden" name="mod_id" id="mod_id">
				</div>
			  </div>
			  <div class="form-group">
				<label for="mod_documento" class="col-sm-3 control-label">Cédula</label>
				<div class="col-sm-8">
				  <input type="text" class="form-control" id="mod_documento" name="mod_documento" required>
				</div>
			  </div>
			  <div class="form-group">
				<label for="mod_cargo" class="col-sm-3 control-label">Cargo</label>
				<div class="col-sm-8">
				  <input type="text" class="form-control" id="mod_cargo" name="mod_cargo" required>
				</div>
			  </div>

				<div class="form-group">
				<label for="mod_ubicacion" class="col-sm-3 control-label">Ubicación</label>
				<div class="col-sm-8">
				  <input type="text" class="form-control" id="mod_ubicacion" name="mod_ubicacion" required>
				</div>
			  </div>

				<div class="form-group">
				<label for="mod_alimentacion" class="col-sm-3 control-label">Alimentación</label>
				<div class="col-sm-8">
				  <input type="text" class="form-control" id="mod_alimentacion" name="mod_alimentacion" required>
				</div>
			  </div>

				<div class="form-group">
				<label for="mod_desde" class="col-sm-3 control-label">Desde</label>
				<div class="col-sm-8">
				  <input type="time" class="form-control" id="mod_desde" name="mod_desde" required>
				</div>
			  </div>	

				<div class="form-group">
				<label for="mod_hasta" class="col-sm-3 control-label">Hasta</label>
				<div class="col-sm-8">
				  <input type="time" class="form-control" id="mod_hasta" name="mod_hasta" required>
				</div>
			  </div>

				<div class="form-group">
				<label for="mod_fecha" class="col-sm-3 control-label">Fecha a Consumir</label>
				<div class="col-sm-8">
				 <input type="date" class="form-control" id="mod_fecha" name="mod_fecha" required>
				</div>
			  </div>

			  
			  
			  
			 
			
		  </div>
		  <div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
			<button type="submit" class="btn btn-primary" id="actualizar_datos">Actualizar datos</button>
		  </div>
		  </form>
		</div>
	  </div>
	</div>
	<?php
		}
	?>