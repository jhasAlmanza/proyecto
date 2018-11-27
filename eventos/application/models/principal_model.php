 <?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class principal_model extends CI_Model{

 public function __construct()
 {
 parent::__construct();
 }
	function artistas(){
 	$query = $this->db->select("*");
    $query = $this->db->from("artistas");
    $query = $this->db->get();
		
    if($query->num_rows() > 0){
      return $query;
    }else{
      return FALSE;
    }
  }
   function verEventos($id){
    $query = $this->db->select("*");
    $query = $this->db->from("artistas");
    $query = $this->db->join("eventos","artistas.id_artista = eventos.id_artista");
    $this->db->where("eventos.id_artista", $id);
    $query = $this->db->get();
    if($query->num_rows() > 0){
        return $query;
    }else{
        return FALSE;
    }
   }
}
