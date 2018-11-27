
<?php 
class Artista_model extends CI_Model{
    
     function obtenerEventoArtista($idEvento) {
        
         $query= $this->db->query("SELECT *,TIME_FORMAT(hora, '%H:%i') as hora_exacta   FROM artistas, eventos, entradas WHERE artistas.id_artista=eventos.id_artista and eventos.id_evento=entradas.id_evento and eventos.id_evento='".$idEvento."'");
        
        if($query->num_rows()>0){
            return $query->result();
        }
        else{
           
            return FALSE;
        }
        
        
    }
    
    function obtenerEventosArtista($idArtista) {
        
        $query= $this->db->query("SELECT *,TIME_FORMAT(hora, '%H:%i') as hora_exacta FROM eventos, artistas WHERE eventos.id_artista=artistas.id_artista AND artistas.id_artista='".$idArtista."'");
        
        if($query->num_rows()>0){
            return $query->result();
        }
        else{
            
            return FALSE;
        }
        
        
    }
    
    function obtenerEntradas($idEvento){
        $query=$this->db->query("select * from entradas,eventos where entradas.id_evento=eventos.id_evento and eventos.id_evento='".$idEvento."'");
        
        if($query->num_rows()>0){
            return $query->result();
        }
        else{
            
            return FALSE;
        }
        
        
    }
    
 
    
}
?>