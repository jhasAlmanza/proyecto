<div class="container">
 <?=$map['js']?>
<h1>Nuestras tiendas</h1>
<p>Busca tú tienda más cercana en el mapa:</p>
<div class="mapa"><center><?=$map['html']?></center></div>
	<div id="sidebar">
 		<ul>
 		<?php
 		foreach($datos as $marker_sidebar)
 		{
 		?><li onclick="datos_marker(<?=$marker_sidebar->pos_y?>,<?=$marker_sidebar->pos_x?>		,marker_<?=$marker_sidebar->id?>)">
 		<?=$marker_sidebar->id;?>&nbsp;&nbsp;<?=substr($marker_sidebar->infowindow,0,100)?>		</li><?php
 		}
 		?>
 		</ul>
	</div>
</div>
<br/>
<div class="container" >
      <h3>O si lo prefieres puedes utilizar el listado:</h3>
      <p>Introduce una comunidad autónoma, poblacion o ubicacion...</p>  
  <div class="row">
    <div class="col-xs-4">
      <input id="buscar" type="text" placeholder="Buscar..">
        <br><br>
<table class="table table-light table-striped table-dark" id="myTable">
  <thead>
    <tr>
      <th scope="col">Comunidad Autonoma</th>
      <th scope="col">Poblacion</th>
      <th scope="col">Ubicacion</th>
    </tr>
  </thead>
  <tbody id="tabla">
    <?php 
    if($buscar != FALSE){
      foreach ($buscar->result() as $tienda) {
         echo "<tr class='success'>";  
         echo "<td>".$tienda->Comunidad_Autonoma."</td>";
         echo "<td>".$tienda->poblacion."</td>";
         echo "<td>".$tienda->ubicacion."</td>";
         echo "</tr>";
        }
    }else{
      echo "NO EXISTEN DATOS EN LA BASE DE DATOS";
    }
        
    ?>
    </tbody>
  </table>  
    </div>
  </div>
</div>
<div>
         <a href="<?php base_url()?>/eventos/index.php/principal"><button class="btn-success btn"><i class="fas fa-arrow-circle-left"></i> Volver</button></a>                   
</div>
