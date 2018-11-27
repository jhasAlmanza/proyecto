<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class mapa_model extends CI_Model{
 
 public function __construct()
 {
 parent::__construct();
 }
 
 public function marcas() {
 $markers = $this->db->get('mapa');
 	if($markers->num_rows()>0){
 		return $markers->result();
 	}
 }

 function vertiendas(){
 	$query = $this->db->select("*");
    $query = $this->db->from("tienda");
    $query = $this->db->get();
    if($query->num_rows() > 0){
      return $query;
    }else{
      return FALSE;
    }
 }

}
