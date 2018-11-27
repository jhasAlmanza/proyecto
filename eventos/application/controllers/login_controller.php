<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class login_controller extends CI_Controller
{

  function __construct()
    {
        parent::__construct();
        $this->load->model('login_model');
        $this->load->model('registro_model');
        $this->load->model('principal_model');
    }
  

	 function index(){
     $this->load->view('header_view');
     $this->load->view('login_view');
     $this->load->view('footer_view');
  	 }


  	 function login(){

  	 	if(isset($_POST['login'])){
             $this->form_validation->set_rules('nombre','nombre','required|trim');
             $this->form_validation->set_rules('contrasena', 'contrasena', 'required|trim');

             if($this->form_validation->run()==FALSE){
                redirect("login_controller");
             }else{
              $this->load->model('login_model');
              $ExisteUsuarioyPassoword=$this->login_model->ValidarUsuario($_POST['nombre'],$_POST['contrasena']);

              if($ExisteUsuarioyPassoword==TRUE){
        
                  $usuario_data = array(
                    'user' => $_POST['nombre'],
                    'logueado' => TRUE,
                    'tiempo' => time()
                    );
                  $this->session->set_userdata($usuario_data);

                  $data =  array(
                    'datos' => $this->login_model->mostrar(),
                  );

                  $datos =  array(
                   'artista' => $this->principal_model->artistas(),
                  );
  
                  $this->load->view('header_view', $data);
                  $this->load->view('principal_view', $datos);
                  $this->load->view('footer_view');
              }else{

                $this->session->set_flashdata('error', 'Los datos son incorrectos.');
                redirect('login_controller');
                }
                  
          }  
      }
    }

    function nuevo(){
      $this->load->view('header_view');
      $this->load->view('registro_view');
      $this->load->view('footer_view');
    }

    function nuevo_usuario()
    {
     
        if(isset($_POST['registrar']))
        {
            $this->form_validation->set_rules('nombre','nombre','required|trim');
            $this->form_validation->set_rules('contrasena','contrasena','required|trim');
            $this->form_validation->set_rules('apellidos','apellidos','required|trim');
            $this->form_validation->set_rules('direccion','direccion','required|trim');
            $this->form_validation->set_rules('telefono','telefono','required|trim');
            $this->form_validation->set_rules('correo','correo','required|valid_email|trim');    
            $this->form_validation->set_rules('tipo_usuario','tipo_usuario','required|trim');
            $this->form_validation->set_message('required', 'El %s es requerido');
            $this->form_validation->set_message('valid_email', 'El %s no es válido');

            if($this->form_validation->run()==FALSE)
            {
                redirect('principal');
            }else{
                $nombre = $this->input->post('nombre');
                $password = $this->input->post('contrasena');
                $correo = $this->input->post('correo');
                $apellidos = $this->input->post('apellidos');
                $direccion = $this->input->post('direccion');
                $telefono = $this->input->post('telefono');
                $tipo_usuario = $this->input->post('tipo_usuario');

                $insert = $this->registro_model->insertar($nombre,$password,$correo,$apellidos,$direccion,$telefono,$tipo_usuario);

                  $this->load->view('header_view');
                  $this->load->view('login_view');
                  $this->load->view('footer_view');
            }
        }
    }

     function logout() {

        $usuario_data = array(
        'logueado' => FALSE
        );
        $this->session->unset_userdata($usuario_data);

        $sess_array = array('nombre' => '');
        
        $data['message_display'] = 'La sesión finalizó correctamente.';
        $this->load->view('header_view');
        $this->load->view('login_view', $data);
        $this->load->view('footer_view');
     }

     function suscribir(){

        if(isset($_POST['suscribir'])){
                $nombre = $this->input->post('nombre');
                $correo = $this->input->post('correo');

                $insert = $this->registro_model->suscrito($nombre,$correo);
                
                $this->load->view('header_view');
                $this->load->view('principal_view');
                $this->load->view('footer_view');

        }

     }

    function informacion(){
        $data =  array(
          'datos' => $this->login_model->mostrar(),
        );

        $id = $this->uri->segment(3, 0);
        $obtener = $this->login_model->informacion($id);
        if($obtener != FALSE){
            $datos = array('edit' => $obtener);
        }else{
            return FALSE;
        }
        $this->load->view('header_view', $data);
        $this->load->view('informacion_view', $datos);
        $this->load->view('footer_view');
    }


    function edit(){
        $id = $this->uri->segment(3 , 0);
        $dt = array(
          'edit' => $this->login_model->informacion($id)
        );
      $this->load->view('header_view');
      $this->load->view('editar_view', $dt);
      $this->load->view('footer_view');
    }

    function editar(){
        $id = $this->uri->segment(3 , 0);

        $datos = array(
          'correo' => $this->input->post('correo', true),
          'direccion' => $this->input->post('direccion', true),
          'telefono' => $this->input->post('telefono', true),
        );

        $editar = $this->login_model->editar($id, $datos);

        $dt = array(
          'edit' => $this->login_model->informacion($id)
        );
 
        $this->load->view('header_view');
        $this->load->view('informacion_view', $dt);
        $this->load->view('footer_view');
    }
    

}