<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class mapa_controller extends CI_Controller{
 
 public function __construct()
 {
 parent::__construct();
 $this->load->model('mapa_model');
 $this->load->model('login_model');
 }
 
 public function index()
 {
    $datos =  array(
      'datos' => $this->login_model->mostrar(),
    );
    $data =  array(
        'buscar' => $this->mapa_model->vertiendas(),
    );
 $config = array();
 $config['center'] = 'madrid,espana';  
 $config['map_type'] = 'ROADMAP';
 $config['map_width'] = '700px'; 
 $config['map_height'] = '600px';  
 $this->googlemaps->initialize($config); 

 $markers = $this->mapa_model->marcas();
 foreach($markers as $info)
 {
 $marker = array();
 $marker ['animation'] = 'DROP';
 $marker ['position'] = $info->pos_y.','.$info->pos_x;
 $marker ['infowindow_content'] = $info->infowindow;
 $marker['id'] = $info->id; 
 $this->googlemaps->add_marker($marker);
 $marker['draggable'] = TRUE;
 }
$data['datos'] = $this->mapa_model->marcas();
$data['map'] = $this->googlemaps->create_map();
    $this->load->view('header_view', $datos);
    $this->load->view('mapa_view',$data);
    $this->load->view('footer_view');
 }
 
}