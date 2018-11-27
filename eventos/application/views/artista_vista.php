
                        
<?php
if ($datosArtista == false) {
    echo "<h4>No se ha encontrado ning&uacute;n artista</h4>";
} else {
    ?>
    
<!-- INFORMACION DEL CONCIERTO -->    
<div class="event-content-wrap">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="single-event-heading">
                        
                            <?php
    $nombre = $datosArtista[0]->nombre;
    $lugar = $datosArtista[0]->lugar . "-" . $datosArtista[0]->ciudad;
    $fecha = $datosArtista[0]->fecha;
    $mes = date('n', strtotime($fecha));
    $dia = date('j', strtotime($fecha));
    $year = date('Y', strtotime($fecha));
    $nombreDia = date('w', strtotime($fecha));
    $hora = $datosArtista[0]->hora_exacta;

    $dias = array(
        "Domingo",
        "Lunes",
        "Martes",
        "Miercoles",
        "Jueves",
        "Viernes",
        "S&aacute;bado"
    );
    $meses = array(
        "",
        "Enero",
        "Febrero",
        "Marzo",
        "Abril",
        "Mayo",
        "Junio",
        "Julio",
        "Agosto",
        "Septiembre",
        "Octubre",
        "Noviembre",
        "Diciembre"
    );

    ?>
                     
 					<h1 class="entry-title"><?php echo $nombre; ?></h1>

					<div class="event-location">
						<a href="#"><?php echo $lugar;?></a>
					</div>

					<div class="event-date"><?php echo $dias[$nombreDia]." ".date('d', strtotime($fecha))." de ".$meses[$mes]." del ".$year;?></div>
					<div class="event-time"><?php echo $hora." hrs";?></div>

				</div>

			</div>
			<div class="col-md-6">
				<figure class="events-thumbnail">
					<img class="rounded"
						src="<?php echo  base_url("img/".$datosArtista[0]->imagen);?>">
				</figure>

			</div>

		</div>



	</div>
</div>



<!-- COMPRAR ENTRADAS  -->

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="event-tickets">
                                    
                    <?php
                    foreach ($infoEntrada as $i => $entrada) {
                     ?>
                    <div class="ticket-row flex flex-wrap justify-content-between align-items-center">
					<div class="ticket-type flex justify-content-between align-items-center">
						<h3 class="entry-title"><span><?php echo ((strcasecmp (  $entrada->tipo , "vip" )==0)? "Gold Ticket" : "Silver Ticket");?></span>Entrada <?php  echo $entrada->tipo;?></h3>
						<div class="ticket-price"><?php echo $entrada->precio;?>€</div>
					</div>
					<div class="flex align-items-center">
						<div class="number-of-ticket flex justify-content-between align-items-center">
							<span class="decrease-ticket">-</span> <input type="number" class="ticket-count" value="1" /> <span class="increase-ticket">+</span>
						</div>
					</div>
						<input type="submit" class="btn gradient-bg" value="Comprar">
				  </div>
                        
  <?php
    }

    ?>
                   
            </div>
		</div>
	</div>
</div>


<!-- INFORMACION DEL ARTISTA  -->

<div class="container">
	<div id="accordion">
		<div class="card">
			<div class="card-header" id="heading1">
				<h5 class="mb-0">
					<button class="btn btn-link" data-toggle="collapse" data-target="#collapse1" aria-expanded="true" aria-controls="collapse1">ACERCA DEL ARTISTA</button>
				</h5>
			</div>
			<div id="collapse1" class="collapse show" aria-labelledby="heading1" data-parent="#accordion">
				<div class="card-body">
      				 <?php echo $datosArtista[0]->informacion;?>
      			</div>
			</div>
		</div>

		<div class="card">
			<div class="card-header" id="heading2">
				<h5 class="mb-0">
					<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse2" aria-expanded="true" aria-controls="collapse2">VIDEOS</button>
				</h5>
			</div>
			<div id="collapse2" class="collapse show" aria-labelledby="heading2" data-parent="#accordion">
				<div class="card-body">
					<div class='video-responsive'>
						<iframe width='50%' height='300' src='<?php echo  $datosArtista[0]->video ?>' frameborder='0' allow='autoplay; encrypted-media' allowfullscreen></iframe>
					</div>

				</div>
			</div>
		</div>
	</div>

</div>


<?php
}
?>
                            
           