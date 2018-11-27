<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class registro_model extends CI_Model
{
    public function construct()
    {
        parent::__construct();
    }
    function insertar($nombre, $contrasena, $apellidos, $direccion, $telefono ,$correo, $tipo_usuario)
    {
        $data = array(
            'nombre' => $nombre,
            'contrasena' => $contrasena,
            'apellidos' => $apellidos,
            'direccion' => $direccion,
            'telefono' => $telefono,
            'correo' => $correo,
            'tipo_usuario' => $tipo_usuario
        );
        return $this->db->insert('usuarios', $data);
    }

    function suscrito($nombre,$correo)
    {
        $data = array(
            'nombre' => $nombre,
            'correo' => $correo
        );
        return $this->db->insert('suscribirse', $data);
    }

    function vernoticias(){
        $query = $this->db->select("*");
        $query = $this->db->from("noticias");
        $query = $this->db->get();
        if($query->num_rows() > 0){
          return $query;
        }else{
          return FALSE;
    }
    }
}
