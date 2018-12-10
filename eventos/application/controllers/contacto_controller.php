<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class contacto_controller extends CI_Controller {
 
 public function __construct()
 {
 parent::__construct();
 $this->load->model('login_model');
 $this->load->model('contacto_model');
 $this->load->model('principal_model');
 }
 
  public function index()
  {
    $data =  array(
      'datos' => $this->login_model->mostrar(),
    );
       $this->load->view('header_view', $data);
       $this->load->view('sugerencia_view');
       $this->load->view('footer_view');
  }

  public function contactar(){

  	if(isset($_POST['contactar'])){

  			    $this->form_validation->set_rules("nombre","nombre","required|trim|min_length[2]|max_length[50]");
            $this->form_validation->set_rules("apellidos","apellidos","required|trim|min_length[5]|max_length[100]");
            $this->form_validation->set_rules("email","email","required|trim|valid_email");
            $this->form_validation->set_rules("telefono","telefono","required|trim|min_length[9]|max_length[12]");
            $this->form_validation->set_rules("asunto","asunto","required|min_length[3]|max_length[50]");
            $this->form_validation->set_rules("mensaje","mensaje","required|min_length[10]|max_length[200]");
            $this->form_validation->set_message("required", "Este campo es requerido.");
            $this->form_validation->set_message("valid_email", "Escriba un email válido.");
            $this->form_validation->set_message("min_length", "Requeridos minimo %s caracteres.");
            $this->form_validation->set_message("max_length", "No puede escribir más de %s caracteres.");
 
            if(!$this->form_validation->run())
            {
                 $this->index();
            }else{
               $nombre = $this->input->post('nombre');
               $apellidos = $this->input->post('apellidos');
               $email = $this->input->post('email');
               $telefono = $this->input->post('telefono');
               $asunto = $this->input->post('asunto');
               $mensaje = $this->input->post('mensaje');
               date_default_timezone_set("Europe/Madrid");
               $dia = date('Y-m-d');
               $hora= date("H:i:s");

               $nuevo = $this->contacto_model->mensaje($nombre,$apellidos,$email,$telefono,$asunto,$mensaje,$dia,$hora);
               
                $data =  array(
                  'datos' => $this->login_model->mostrar(),
                );
             if($nuevo)
               {
                  $this->load->view('header_view', $data);
                  $this->load->view('sugerencia_view');
                  $this->load->view('footer_view');
               }
            }		
  	}

  }

  function noticias(){

   /* $this->load->model('registro_model');
      $datos =  array(
        'noticias' => $this->registro_model->vernoticias(),
      ); */
      
      $this->load->library('pagination');
      $config['base_url']="http://localhost/proyecto/eventos/index.php/contacto_controller/noticias";
      $config['per_page']=3;
      $config['num_links']=5;
      $config['total_rows']=$this->db->get('noticias')->num_rows();
      $config['uri_segment'] = 3;
      
      $config['full_tag_open'] = "<ul class='pagination'>";
      $config['full_tag_close'] ="</ul>";
      $config['num_tag_open'] = '<li>';
      $config['num_tag_close'] = '</li>';
      $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
      $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
      $config['next_tag_open'] = "<li>";
      $config['next_tagl_close'] = "</li>";
      $config['prev_tag_open'] = "<li>";
      $config['prev_tagl_close'] = "</li>";
      $config['first_tag_open'] = "<li>";
      $config['first_tagl_close'] = "</li>";
      $config['last_tag_open'] = "<li>";
      $config['last_tagl_close'] = "</li>";
      
      $this->pagination->initialize($config);
      $data['paginglinks'] = $this->pagination->create_links();
      
      $data['query']=$this->db->get('noticias',  $config['per_page'],  $config['uri_segment'] );
      
      
      
     $this->load->view('header_view');
     $this->load->view('noticias_view', $data);
     $this->load->view('footer_view');
  }


}