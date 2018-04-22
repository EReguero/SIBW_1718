<?php
class coleccion_model{
    private $db;
    private $coleccion_id;
 
    public function __construct(){
        $this->bd=db::conexion();
        $this->coleccion_id=$_GET["coleccion"];
    }


    
    public function get_obra($obra_id){
        $sql = "SELECT titulo, imagen FROM obras  WHERE id= ".$obra_id;
        $result = $this->bd->query($sql);
        $row = $result->fetch_assoc();

        return $row;
    }


    public function get_coleccion(){
        
        $sql = "SELECT *  FROM colecciones WHERE ID= ".$this->coleccion_id;
        $result = $this->bd->query($sql);
        $row = $result->fetch_row();

        return $row;
    }
    public function get(){
        return $this->coleccion_id;
    }
}
?>