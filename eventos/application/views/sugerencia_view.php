<div class="container">
        <div class="container">
            <h2>Contacto</h2>
            <div class="container">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3039.0137409240974!2d-3.7375606857517534!3d40.386388065410316!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNDDCsDIzJzExLjAiTiAzwrA0NCcwNy4zIlc!5e0!3m2!1ses!2ses!4v1540243786530" style="border:0" allowfullscreen="" frameborder="0" height="500" width="100%"></iframe>
            </div>
            <strong>Contactenos</strong><br><strong>Oficina: </strong>Calle de Matilde Hernandez, 101, 28025 Madrid
            <hr>
        </div>
         <?php echo form_open('contacto_controller/contactar'); ?>
        <div class="container">
            <form role="form" id="Formulario" action="" method="POST">
                <div class="form-group">
                    <label class="control-label" for="nombre">Nombre</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Introduzca su nombre" value="<?php echo set_value('nombre') ?>" required autofocus />
                </div>            
                <div class="form-group">
                    <label class="control-label" for="Motivo">Apellidos</label>
                    <input type="text" class="form-control" id="apellidos" name="apellidos" placeholder="Introduzca sus apellidos" value="<?php echo set_value('apellidos') ?>" required />
                </div>
                <div class="form-group">
                    <label class="control-label" for="email">E-mail</label>
                    <input type="text" class="form-control" id="email" name="email" placeholder="Introduzca su e-mail" value="<?php echo set_value('email') ?>" required />
                </div>
                <div class="form-group">
                    <label class="control-label" for="telefono">Telefono</label>
                    <input type="text" class="form-control" id="telefono" name="telefono" placeholder="Introduzca su telefono" value="<?php echo set_value('telefono') ?>" required />
                </div>
                <div class="form-group">
                    <label class="control-label" for="asunto">Asunto</label>
                    <input type="text" class="form-control" id="asunto" name="asunto" placeholder="Introduzca el asunto" value="<?php echo set_value('asunto') ?>" required />
                </div>
                <div class="form-group">
                    <label class="control-label" for="mensaje">Mensaje</label>
                    <textarea rows="5" cols="30" class="form-control" id="mensaje" name="mensaje" placeholder="Introduzca su mensaje" value="<?php echo set_value('mensaje') ?>" required ></textarea>
                </div>
                <div class="form-group">                
                    <button type="submit" class="btn btn-success" name="contactar">Enviar</button>
                    <input type="reset" class="btn btn-default" value="Limpiar">                
                </div>
                <div id="respuesta" style="display: none;"></div>
            </form>
        </div>       
    </div>
     <?php
 if(isset($enviado)){
      echo '<center><font class="error">'. $enviado.'</font></center>';
    }
 ?>
<?php echo form_close()?>
<br/><br/>
<div>
         <a href="<?php base_url()?>/eventos/index.php/principal"><button class="btn-success btn"><i class="fas fa-arrow-circle-left"></i> Volver</button></a>                   
</div>