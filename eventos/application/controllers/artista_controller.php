<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Artista_controller extends CI_Controller {
 
     function index(){
        
        $this->load->view('header_view');
        $this->load->model('artista_model');
        
        $this->load->view('artista_vista', $this->mostrarDatosArtista());
        
        $this->load->view('footer_view');
    }
    
   function mostrarDatosArtista() {
       if (!isset($_REQUEST["idEvento"])) die ("<h3>ERROR en la petición. Falta identificador de artista</h3>");
       $idEvento = $this->input->get('idEvento');
       

       $data['datosArtista']=$this->artista_model->obtenerEventoArtista($idEvento);
       $data['infoEntrada']=$this->artista_model->obtenerEntradas($idEvento);
       
       return $data;
        
    }
   
    
}

?>
