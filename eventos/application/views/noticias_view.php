    <div class="container">
      <div class="row">
           <?php 
            if($noticias != FALSE){
                foreach ($noticias->result() as $row) {
                  ?>
                  <div class="col-md-8">
                   <h1 class="titulo my-4"><?=$row->titulo?>
                   <p class="lead"><?php if($row->autor != ""){
                    echo "by ".$row->autor;
                   }else{
                    echo "";
                   }?></p>
                   </h1>
                  <div class="card mb-4">
                  <?php if($row->imagen != ""){
                    echo "<img class='card-img-top' src=http://localhost/eventos/img/".$row->imagen.">"; 
                  }else{
                    echo "<pre><div class='video-responsive'><iframe width='690' height='315' src=".$row->video." frameborder='0' allow='autoplay; encrypted-media' allowfullscreen></iframe></div></pre>";
                  } ?>
                  <div class="card-body">
                   <h2 class="card-title"><?=$row->artista?></h2>
                    <p class="card-text"><?=$row->detalles?></p>
                  </div>
                    <div class="card-footer text-muted">
                      <i class=""><?=$row->fecha?></i>
                    </div>
                  </div>
                </div>
                  <?php
                }
            }else{
              echo "NO EXISTEN LOS DATOS EN LA BASE DE DATOS";
            }
            ?>
      </div>
    </div>
<div>
         <a href="<?php base_url()?>/eventos/index.php/principal"><button class="btn-success btn"><i class="fas fa-arrow-circle-left"></i> Volver</button></a>                   
</div>