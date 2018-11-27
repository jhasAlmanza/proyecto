<?php
class login_model extends CI_Model{
   
    function ValidarUsuario($nombre,$contrasena){   
      $query = $this->db->where('nombre',$nombre);
      $query = $this->db->where('contrasena',$contrasena);
      $query = $this->db->get('usuarios');
      return $query->row();
   }
	
   function mostrar(){
    $query = $this->db->select("*");
    $query = $this->db->from("usuarios");
    $query = $this->db->get();

    if($query->num_rows() > 0){
      return $query;
    }else{
      return FALSE;
    }
   }
	
   function informacion($id){
   	$query = $this->db->select("*");
   	$query = $this->db->from("usuarios");
    
    $this->db->where("id", $id);
    $query = $this->db->get();
    
   	if($query->num_rows() > 0){
   		return $query;
   	}else{
   		return FALSE;
   	}
   }
   
   function editar($id, $datos){
      $this->db->where('Id', $id);
      $this->db->update('usuarios', $datos);  
   }
}
