<div class="evento-fondo">
  <div clas="row col-md-6 col-md-offset-2 custyle">
  <div>
  <?php
  foreach ($info->result() as $valor) {
  }
  echo "<img class='imgevent' width='20%' src=http://localhost/eventos/img/".$valor->imagen.">";
  echo "<p class='list'>".$valor->genero."</p>";
  echo "<p class='list'>Entradas para ".$valor->nombre."</p>";
  ?>
  </div>

<table class="table table-light container table-striped">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Fecha</th>
      <th scope="col">Hora</th>
      <th scope="col">Lugar</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <?php 
    
    if($info != FALSE){
      foreach ($info->result() as $detalle) {
         echo "<tr class='lista'>";  
         echo "<td>".$detalle->fecha."</td>";
         echo "<td>".$detalle->hora."</td>";
         echo "<td>".$detalle->lugar."</td>";
         echo "<td><a href='#'><button type='submit' class='btn btn-primary'>Entradas <i class='fas fa-angle-right'></i></button></a></td>";
         echo "</tr>";
        }
    }else{
      echo "NO EXISTEN DATOS EN LA BASE DE DATOS";
    }
    ?>
    </tbody>
  </table>
  <br/><br/>
  <div>
         <a href="<?php base_url()?>/eventos/index.php/principal"><button class="btn-success btn"><i class="fas fa-arrow-circle-left"></i> Volver</button></a>                   
  </div>
  <br/><br/>
 
  </div>
</div>
