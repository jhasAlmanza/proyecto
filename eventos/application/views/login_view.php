<?php echo form_open('login_controller/login'); ?>
<div class="container">
    <div class="row">
        <div class='col-md-3'></div>
        <div class="col-md-6">
            <div class="login-box well">
                    <form action="">
                        <legend>Login</legend>
                        <div class="form-group avatar">
                           <img src="<?=base_url()?>img/avatar1.jpg" alt="Avatar">
                        </div>
                        <div class="form-group">
                            <label for="nombre">Usuario</label>
                            <input value="<?php echo set_value('nombre') ?>" id="nombre" name="nombre" placeholder="Introduce Usuario" type="text" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="contrasena">Contraseña</label>
                            <input id="contrasena" name="contrasena" value='' placeholder="Introduce Password" type="password" class="form-control" />
                        </div>
                        <?php 
            if($this->session->flashdata("error"))
            {
              ?>
              <div class="form-group" id="mensaje">
                <div class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-9 col-sm-10 col-sm-offset-1 col-xs-6 col-xs-offset-3 alert alert-danger">
                  <strong> <?php echo $this->session->flashdata("error");?></strong>
                </div>
              </div>
              <?php 
            }
            ?>
            <?php
            if(isset($error))
            {
              echo '<font class="error">'. $error.'</font>';
            }
            if(isset($message_display))
            {
              echo '<font class="message_display" color="red"><b><i>'. $message_display.'</i></b></font>';
            }
            if($this->session->flashdata('envio')){
                 echo $this->session->flashdata('envio');
            }
            ?>
                        <div class="input-group">
                          <div class="checkbox">
                            <label>
                              <input id="recordarme" name="recordarme" type="checkbox" value="1"> Recordarme
                            </label>
                          </div>
                        </div>
                        <div class="form-group">
                            <button type="submit" name="login" class="btn btn-success btn-login-submit btn-block m-t-md">Login</button>
                        </div>
                        <span class='text-center'><a href="/resetting/request" class="text-sm">Olvidaste tu contraseña?</a></span>
                        <div class="form-group">
                            <p class="text-center m-t-xs text-sm">No tienes una cuenta?</p> 
                            <a href="http://localhost/eventos/index.php/login_controller/nuevo" class="btn btn-success btn-block m-t-md">Create una cuenta</a>
                        </div>
                    </form>
            </div>
        </div>
        <div class='col-md-3'></div>
    </div>
<?php echo form_close()?>
</div>