<?php 
    foreach ($edit->result() as $row) {
    }
echo form_open('login_controller/editar/'.$row->Id)?>
<div class="container">
  <form class="form-horizontal" role="form" method="POST" action="">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <h2>Detalles de la cuenta</h2>
                <hr>
            </div>
        </div>       
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="correo">E-mail</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-at"></i></div>
                        <input type="text" name="correo" class="form-control" id="correo" placeholder="tucorreo@ejemplo.com" value="<?=$row->correo?>">
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <h2>Detalles personales:</h2>
                <hr>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="apellidos">Apellidos</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" style="width: 2.6rem"><i class="fas fa-id-card"></i></div>
                        <input type="text" name="apellidos" class="form-control" id="apellidos" placeholder="Introduce Apellidos" value="<?=$row->apellidos?>">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <h2>Detalles de facturación y entrega:</h2>
                <hr>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="direccion">Direccion</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" style="width: 2.6rem"><i class="fas fa-map-marker-alt"></i></div>
                        <input type="text" name="direccion" class="form-control" id="direccion" placeholder="Introduce Direccion" value="<?=$row->direccion?>">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="telefono">Telefono</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" style="width: 2.6rem"><i class="fas fa-mobile-alt"></i></div>
                        <input type="text" name="telefono" class="form-control" id="telefono" placeholder="Introduce Telefono" value="<?=$row->telefono?>">
                    </div>
                </div>
            </div>
        </div>
        <br/>
        <div class="row">
            <div class="col-md-5"></div>
            <div class="col-md-2">
              <button type="submit" class="btn btn-success" name="datos"><i class="fas fa-pencil-alt"></i> Modificar Datos</button>
            </div>
        </div>
  </form>
  <br/>
</div>
<?php
echo "<div>";
         echo"<a href='http://localhost/eventos/index.php/login_controller/informacion/".$row->Id."'><button class='btn-success btn'><i class='fas fa-arrow-circle-left'></i>Volver</button></a>";                  
echo "</div>";
?>
<?php echo form_close();?>
