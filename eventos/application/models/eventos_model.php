<?php 
class Eventos_model extends CI_Model{
    
    public  function obtenerEventos() {
        
        $query= $this->db->query("SELECT *,TIME_FORMAT(hora, '%H:%i') as hora_exacta FROM artistas, eventos WHERE artistas.id_artista=eventos.id_artista");
        
        
        if($query->num_rows()>0){
            return $query->result();
        }
        else{
            return FALSE;
        }
        
        
    }
    
    public function obtenerEventosFecha($iniFecha,$finFecha){
        
        $query= $this->db->query("SELECT *,TIME_FORMAT(hora, '%H:%i') as hora_exacta FROM artistas, eventos WHERE artistas.id_artista=eventos.id_artista AND fecha BETWEEN '$iniFecha' and '$finFecha' order by fecha");
        
        
        if($query->num_rows()>0){
            return $query->result();
        }
        else{
            return FALSE;
        }
   
        
    }
    
    public  function obtenerEventosGenero($genero) {
        
        $query= $this->db->query("SELECT *,TIME_FORMAT(hora, '%H:%i') as hora_exacta FROM artistas, eventos WHERE artistas.id_artista=eventos.id_artista AND genero like '%$genero%'");
        
        
        if($query->num_rows()>0){
            return $query->result();
        }
        else{
            return FALSE;
        }
       
        
    }
    
 
    
    public  function obtenerEventosCiudad($ciudad) {
        
        $query= $this->db->query("SELECT *,TIME_FORMAT(hora, '%H:%i') as hora_exacta FROM artistas, eventos WHERE artistas.id_artista=eventos.id_artista AND ciudad='$ciudad'");
        
       
        if($query->num_rows()>0){
            return $query->result();
        }
        else{
            return FALSE;
        }
        
        
    }
    
    public  function obtenerArtista($artista) {
        
        $query= $this->db->query("SELECT *,TIME_FORMAT(hora, '%H:%i') as hora_exacta FROM artistas, eventos WHERE artistas.id_artista=eventos.id_artista AND artistas.nombre like '%$artista%'");
        
        
        if($query->num_rows()>0){
            return $query->result();
        }
        else{
            return FALSE;
        }
        
        
    }
    
    
    
    
}



?>
