<!DOCTYPE html>
<html lang="es">  
 <head>    
  <title>Drados</title>    
  <meta charset="UTF-8">
  <meta name="title" content="Título de la WEB">
  <meta name="description" content="Descripción de la WEB">    
  	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <link rel="stylesheet" href="css/estilo.css" media="all" >
  <link href="<?=base_url()?>style/css/estilo.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
  <script src="<?=base_url()?>js/funciones.js" type="text/javascript"></script>
  
</head>  
  <body>
  <header >     
   <section class="dropdown">
      <nav class="menu navbar navbar-expand-md navbar-dark">
        <div class="container">
          <img class="logo" src="<?=base_url()?>img/logo.svg">
            <a class="navbar-brand text-white" href="<?=base_url()?>index.php/principal"><i class="fa fa-home"></i> Inicio</a>
           
<form method="post" action=<?php echo base_url()."index.php/eventos_controller"; ?>>
    <div class="row">
        <div class="col-12">
            <div class="input-group">
            
                <input class="form-control border-secondary py-2" name="artista_ciudad" type="search" autocapitalize="off" autocomplete="off" autocorrect="off" spellcheck="false" placeholder ="Búsqueda ciudad o artista" value="">
                <div class="input-group-append">
                    <button class="btn btn-outline-secondary" type="submit" name='busq_Artista_ciudad'>
                        <i class="fa fa-search"></i>
                    </button>
                </div>
                
            </div>
        </div>
    </div>
</form>
 
       
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                
                   <form id="formEventos"  name="genero" method="post"  action=<?php echo base_url()."index.php/eventos_controller"; ?>>            
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"> Eventos
                        </a>
                      <div class="dropdown-menu">
                        <a class="dropdown-item" value="pop-rock" ><i class="fas fa-music"></i> Pop/Rock</a>
                        <a class="dropdown-item" value="edm" ><i class="fas fa-music"></i> Dance/Electronica</a>
                        <a class="dropdown-item" value="indie" ><i class="fas fa-music"></i> Indie</a>
                        <a class="dropdown-item" value="heavyMetal" ><i class="fas fa-music"></i> Heavy metal</a>
                        <a class="dropdown-item" value="flamenco" ><i class="fas fa-music"></i> Flamenco</a>
                        <a class="dropdown-item" value="latino" ><i class="fas fa-music"></i> Pop latino</a>
                        <a class="dropdown-item" value="todo" ><i class="fas fa-music"></i> Todos los conciertos</a>
                      </div>
                    </li>
                  
                    </form>
                    
                    <li class="nav-item">
                        <a class="nav-link " href="<?=base_url()?>index.php/contacto_controller/noticias"><i class="fa fa-newspaper-o"></i> Noticias</a>
                    </li> 
                    <li class="nav-item">
                        <a class="nav-link " href="<?=base_url()?>index.php/contacto_controller"> <i class="fa fa-paper-plane"> Contacto</i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="<?=base_url()?>index.php/mapa_controller"><i class="fa fa-map-marker"></i> Encuentra tu Tienda</a>
                    </li> 

                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                        Mi Cuenta
                      </a>
                      <div class="dropdown-menu">

                        <?php
                        if(isset($_SESSION) && isset($_SESSION['user'])){
                            if($datos != FALSE){
                              foreach ($datos->result() as $row) {
                             
                                if($row->nombre == $this->session->userdata('user')){
                                 
                                  echo "<a class='dropdown-item' href=http://localhost/eventos/index.php/login_controller/informacion/".$row->Id."><i class='fas fa-user-check'></i> Usuario:"?> <?php print_r("<font color='black'><b>".$this->session->userdata('user')."</b></font>");?><?php
                                    "</a>";

                                  }
                                }
                              }else{
                                 echo "NO EXISTEN LOS DATOS EN LA BASE DE DATOS";
                              }
                        }else{
                          ?>
                           <a class="dropdown-item" href="<?=base_url()?>index.php/login_controller"><i class="fa fa-user"></i> Login</a>
                          <?php
                        }
                        ?>
                        <a class="dropdown-item" href="#"><i class="fa fa-shopping-cart"></i> Cesta</a>
                        
                        <?php
                        if(isset($_SESSION) && isset($_SESSION['user'])){
                          ?>
                         <a class="dropdown-item" href="<?=base_url()?>index.php/login_controller/logout"><i class="fa fa-power-off"></i> Desconectar</a>
                          <?php
                        }
                          ?>
                        
                      </div>
                  </li>
                </ul>
            </div>
        </div>
      </nav>
  </section>

  
  </header>