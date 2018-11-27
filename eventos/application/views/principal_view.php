<header>
      <div id="carouselfull" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselfull" data-slide-to="0" class="active"></li>
          <li data-target="#carouselfull" data-slide-to="1"></li>
          <li data-target="#carouselfull" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <div class="carousel-item active" style="background-image: url('<?=base_url()?>img/img13.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Madrid</h3>
              <p>Madrid es siempre tan divertido!</p>
            </div>
          </div>
          <div class="carousel-item" style="background-image: url('<?=base_url()?>img/img8.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Sevilla</h3>
              <p>Una gran Ciudad!</p>
            </div>
          </div>
          <div class="carousel-item" style="background-image: url('<?=base_url()?>img/img_p1.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Bacerlona</h3>
              <p>Gracias, Barcelona!</p>
            </div>
          </div>
          <div class="carousel-item" style="background-image: url('<?=base_url()?>img/img-p.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Valencia</h3>
              <p>Una gran ciudad, Nos encanta</p>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselfull" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Anterior</span>
        </a>
        <a class="carousel-control-next" href="#carouselfull" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Siguiente</span>
        </a>
      </div>
    </header>
    <br/><br/>
<div class="homepage-info-section">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-4 col-lg-5">
                <figure>
                    <img src="<?=base_url()?>img/logo.svg" alt="logo">
                </figure>
            </div>

            <div class="col-12 col-md-8 col-lg-7">
                <header class="entry-header">
                    <h2 class="entry-title">¿Qué es Drados y por qué elegir nuestros servicios?</h2>
                </header>

                <div class="entry-content">
                    <p>Drados es una plataforma on-line que da soporte y facilita toda la información necesaria a cualquier empresa o particulares que tenga la necesidad de organizar un evento del tipo que sea en cualquier ciudad española.

                    Drados ofrece gratuitamente todos los recursos necesarios para organizar y gestionar su evento, desde originales ideas y consejos para una optima organización hasta un amplio abanico de proveedores para eventos como centros de reuniones, hoteles, catering, azafatas y traductores, animadores, audiovisuales y transporte entre otros.

                    Somos la forma más sencilla y rápida de organizar su evento en España, ofrecemos acceso gratuito a toda la información sin tener que registrarse..</p>
                </div>

                <footer class="entry-footer">
                    <a href="http://localhost/eventos/index.php/login_controller/nuevo" class="btn btn-success">Registrate ahora</a>
                </footer>
            </div>
        </div>
    </div>
</div>
<div>

      <section class="texto text-center">
        <div class="container">
          <h1 class="texto-heading">Artistas</h1>
          <p class="lead text-muted">Nuestros artistas mas destacados</p>
         </div>
      </section>
      
      <div class="artistas album py-5 bg-light">
        <div class="container">
          <div class="row">
          <?php 
                if($artista != FALSE){
                 foreach ($artista->result() as $lista) {

                echo "<div class='col-md-3'><a href=http://localhost/eventos/index.php/principal/eventos/".$lista->id_artista."><div class='card mb-3 box-shadow'><img class='card-img-top' src=http://localhost/eventos/img/".$lista->imagen.">";
                echo "<div class='box-shadow card-body'><p class='card-text'>".$lista->nombre."</p></div></a>
                </div></div>";
                }
                }else{
                    echo "NO EXISTEN LOS DATOS EN LA BASE DE DATOS";
                } 
          ?>    
          </div>
        </div>
      </div>
</div>

<div class="homepage-next-events">
    <div class="container">
        <div class="row">
            <div class="next-events-section-header">
                <h2 class="entry-title">Nuestros proximos eventos</h2>
                <p>Aqui te informamos de nuestros proximos eventos, si quieres conseguir tu entrada con tiempo de antelacion haz click en el enlace de compra y consigue tu entrada antes de que se agoten...!!</p>
            </div>
        </div>

        <div class="row">
            <div class="col-12 col-sm-6 col-md-4">
                <div class="next-event-wrap">
                    <header class="entry-header">
                        <h3 class="entry-title">Palacio de Vista Alegre - Madrid</h3>

                        <div class="posted-date">Sabado <span>3 de Noviembre, 2018</span></div>
                    </header>

                    <div class="entry-content">
                        <p>Un gran lugar donde poder disfrutar de tus mejores conciertos de musica.</p>
                    </div>

                    <footer class="entry-footer">
                        <a href="#">Comprar entrada</a>
                    </footer>
                </div>
            </div>

            <div class="col-12 col-sm-6 col-md-4">
                <div class="next-event-wrap">
                    <header class="entry-header">
                        <h3 class="entry-title">Palau Sant Jordi - Barcelona</h3>

                        <div class="posted-date">Domingo <span>4 de Noviembre, 2018</span></div>
                    </header>

                    <div class="entry-content">
                        <p>Un gran lugar donde poder disfrutar de tus mejores conciertos de musica.</p>
                    </div>

                    <footer class="entry-footer">
                        <a href="#">Comprar entrada</a>
                    </footer>
                </div>
            </div>

            <div class="col-12 col-sm-6 col-md-4">
                <div class="next-event-wrap">
                    <header class="entry-header">
                        <h3 class="entry-title">Wizink Center Ring- Madrid</h3>

                        <div class="posted-date">Sabado <span>27 de Octubre, 2018</span></div>
                    </header>

                    <div class="entry-content">
                        <p>Un gran lugar donde poder disfrutar de tus mejores conciertos de musica.</p>
                    </div>

                    <footer class="entry-footer">
                        <a href="#">Comprar entrada</a>
                    </footer>
                </div>
            </div>
        </div>
    </div>
</div>
<br/><br/>
<?php echo form_open('login_controller/suscribir'); ?>
<div class="newsletter-subscribe">
    <div class="container">
      <form class="form-horizontal" role="form" method="POST" action="">
        <div class="row">
            <div class="col-12">
                <header class="entry-header">
                    <h2 class="entry-title">Suscríbete a nuestro boletín para conocer las últimas tendencias y novedades.</h2>
                    <p>Únete a nuestra base de datos AHORA!</p>
                </header>
    
            <div class="row">
            <div class="col-md-3 field-label-responsive">
                <label for="nombre">Nombre</label>
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
                <button type="submit" class="btn btn-success" name="suscribir"><i class="fa fa-paper-plane"></i> Suscribirme</button>
            </div>
        </div>
                 
                </div>
            </div>
        </div>
     </div>
    </form> 
</div>
<?php echo form_close()?>
