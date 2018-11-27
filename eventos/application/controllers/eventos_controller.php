<?php


class Eventos_controller extends CI_Controller {
    
    public function index(){
        $this->load->view('header_view');
        $this->load->model('eventos_model');
    
        $this->load->view('eventos_vista', $this->mostrarListaEventos());
       
        $this->load->view('footer_view');
    }
    
    public function mostrarListaEventos() {
        
        if (isset ( $_POST ['busqFecha'] )) {
            
            $iniFecha= $this->input->post('inicioFecha');
            $finFecha= $this->input->post('finFecha');
  
            $data['listaEventos']=$this->eventos_model->obtenerEventosFecha($iniFecha,$finFecha);
           
    
        }
        elseif (isset ( $_POST ['busqGenero'] )) {
            
            $genero=$this->input->post('genero');
            $data['listaEventos']=$this->eventos_model->obtenerEventosGenero($genero);
          
        }
        elseif (isset ( $_POST ['busqCiudad'] )) {
            $ciudad=$this->input->post('ciudad');
            $data['listaEventos']=$this->eventos_model->obtenerEventosCiudad($ciudad);
           
            
        }  
        elseif (isset ( $_POST ['busq_Artista_ciudad'] )) {
            $artista_ciudad=$this->input->post('artista_ciudad');
            
            if(!$this->eventos_model->obtenerArtista($artista_ciudad)){
                $data['listaEventos']=$this->eventos_model->obtenerEventosCiudad($artista_ciudad);
            }
            else{
                $data['listaEventos']=$this->eventos_model->obtenerArtista($artista_ciudad);
            }

        }
        else{
            $data['listaEventos']=$this->eventos_model->obtenerEventos();
           
        }
        
        return $data;
        
        
    }
    

    
}


