

<!--FORMULARIO DE BUSQUEDA POR FECHA Y POR GENERO -->
<form class="events-search" method="post">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-3">
                <input type="date" name="inicioFecha" placeholder="inicio">
            </div>

            <div class="col-12 col-md-3">
                <input type="date" name="finFecha" placeholder="fin">
            </div>
            <div class="col-12 col-md-3">
                <input class="btn gradient-bg" type="submit" name='busqFecha' value="buscar por fecha">
            </div>
        </div>
        

       <div class="row">
       <div class="col-12 col-md-3">
       <select  name="genero">
  		<option value="indie">Indie</option>
  		<option value="edm">EDM</option>
  		<option value="pop">Pop</option>
  		<option value="rock">Rock</option>
  		<option value="heavy">Heavy metal</option>
  		<option value="soul">Soul</option>
  		<option value="flamenco">Flamenco</option>
  		<option value="r&b">R&B</option>
  		<option value="poplatino">Pop latino</option>
  	</select>
  	 </div>
  	 <div class="col-12 col-md-3">
                <input class="btn gradient-bg" type="submit" name='busqGenero' value="buscar ">
            </div>
        
        </div>
    </div>
</form>



                        
 
<?php
 if ($listaEventos == false) {
?>
<div class="container">
	<div class="card bg-light mb-3">
		<div class="card-header">Sin resultados</div>
		<div class="card-body">
			<h5 class="card-title">No hay conciertos próximos.</h5>

		</div>
	</div>
</div>


<?php
 } //fin IF
 
 else {
?>

<div class="upcoming-events-outer">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="upcoming-events">
					<div class="upcoming-events-header">
						<h4>Próximos conciertos</h4>
					</div>

					<div class="upcoming-events-list">
  
  <?php
    foreach ($listaEventos as $evento => $valor) {
        $fecha = $valor->fecha;
        $nombre = $valor->nombre;
        $mes = date('n', strtotime($fecha));
        $dia = date('j', strtotime($fecha));
        $year = date('Y', strtotime($fecha));
        $nombreDia = date('w', strtotime($fecha));

        $dias = array(
            "Domingo",
            "Lunes",
            "Martes",
            "Miercoles",
            "Jueves",
            "Viernes",
            "S&acute;bado"
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
						<div class="upcoming-event-wrap flex flex-wrap justify-content-between align-items-center">
							<figure class="events-thumbnail">
                               <?php echo  "<a href='artista_controller?idEvento=".$valor->id_evento."'><img class='rounded-circle'  width='100' height='100' src='../img/".$valor->imagen."'/> </a>";?>
                                
                            </figure>

							<div class="entry-meta">
								<div class="event-date">
                                    <?php echo $dia; ?><span><?php echo $meses[$mes].", ".$year;?></span>
								</div>
							</div>

							<header class="entry-header">
                                
                                 <?php echo "<h3 class='entry-title'><a href='artista_controller?idEvento=".$valor->id_evento."'>" . $valor->nombre . "</a></h3>";?>

                                <div class="event-date-time"><?php echo  $valor->hora_exacta;?></div>

								<div class="event-speaker"><?php echo $valor->lugar.", ".$valor->ciudad;?></div>
							</header>

							<footer class="entry-footer">
								<a href='<?php echo "artista_controller?idEvento=".$valor->id_evento?>'>Comprar</a> <!-- añadir link para la compra -->
							</footer>
						</div>

<?php
} //fin bucle for

?>

                    </div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php
} //fin ELSE
?>
                           
                               
                           
                
        


