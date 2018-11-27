<?php
class contacto_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }
 
    function mensaje($nombre,$apellidos,$email,$telefono,$asunto,$mensaje,$dia,$hora)
    {
        $datos = array(
            'nombre'    =>  $nombre,
            'apellidos' =>  $apellidos,
            'telefono'  =>  $telefono,
            'email'     =>  $email,
            'asunto'    =>  $asunto,
            'mensaje'   =>  $mensaje,
            'hora'       =>  $hora,
            'fecha'      =>  $dia,
        );
        return $this->db->insert('mensajes', $datos);
    }
}