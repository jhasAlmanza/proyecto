<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class principal extends CI_Controller
{
	public function __construct()
 	{
 		parent::__construct();
    $this->load->model('login_model');
 		$this->load->model('principal_model');
 	}

	function index(){
    $data =  array(
        'datos' => $this->login_model->mostrar(),
    );
      $datos =  array(
        'artista' => $this->principal_model->artistas(),
      );
     $this->load->view('header_view', $data);
	   $this->load->view('principal_view', $datos);
     $this->load->view('footer_view');
	}

	function aboutus(){
	 $this->load->view('header_view');
	 $this->load->view('aboutus_view');
     $this->load->view('footer_view');
	}

	function terminos(){
	 $this->load->view('header_view');
	 $this->load->view('terminos_view');
     $this->load->view('footer_view');
	}

	function ayuda(){
	 $this->load->view('header_view');
	 $this->load->view('ayuda_view');
   $this->load->view('footer_view');
	}

	function eventos(){
    $data =  array(
       'datos' => $this->login_model->mostrar(),
    );
    $id = $this->uri->segment(3, 0);
    $obtener = $this->principal_model->verEventos($id);
    if($obtener != FALSE){
      $datos = array('info' => $obtener);
    }else{
      return FALSE;
    }
        $this->load->view('header_view', $data);
        $this->load->view('eventos_view', $datos);
        $this->load->view('footer_view');
  }

}
