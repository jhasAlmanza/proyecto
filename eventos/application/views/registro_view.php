<br /><br />
<?php echo form_open('login_controller/nuevo_usuario'); ?>
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
                <label for="nombre">Usuario</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-user"></i></div>
                        <input type="text" name="nombre" class="form-control" id="nombre"
                               placeholder="Introduce nombre" required>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="password">Password</label>
            </div>
            <div class="col-md-6">
                <div class="form-group has-danger">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-key"></i></div>
                        <input type="password" name="contrasena" class="form-control" id="contrasena"
                               placeholder="Password" required>
                    </div>
                </div>
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
                        <input type="text" name="correo" class="form-control" id="correo"
                               placeholder="tucorreo@ejemplo.com" required>
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
                        <input type="text" name="apellidos" class="form-control" id="apellidos"
                               placeholder="Introduce Apellidos" required>
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
                        <input type="text" name="direccion" class="form-control" id="direccion"
                               placeholder="Introduce Direccion" required>
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
                        <input type="text" name="telefono" class="form-control" id="telefono"
                               placeholder="Introduce Telefono" required>
                    </div>
                </div>
            </div>
        </div>
        <input type="hidden" name="tipo_usuario" class="form-control" id="tipo_usuario" value="normal" required>
        <br />
  <br/>

        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-3">
                <button type="submit" class="btn btn-success" name="registrar"><i class="fa fa-user-plus"></i>Registrarme</button>
            </div>
        </div>
    </form>
</div>
<?php echo form_close()?>
<br /><br />
<br /><br />
<div>
         <a href="<?php base_url()?>/eventos/index.php/principal"><button class="btn-success btn"><i class="fas fa-arrow-circle-left"></i> Volver</button></a>                   
</div>