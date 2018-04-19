<?php
class obra_model{
    private $db;
    private $obra_id;
 
    public function __construct(){
        $this->bd=db::conexion();
        $this->obras=array();
        $this->obra_id=$_GET["obra"];
    }

    public function get_datos(){
        $sql = "SELECT * FROM obras WHERE ID= ".$this->obra_id;
        $result = $this->bd->query($sql);
        $obras = $result->fetch_array();

        return $obras;
    }

    public function get_comentarios (){
        $sql = "SELECT nome, fecha, comment_text FROM comentario WHERE obra_id= ".$this->obra_id." ORDER BY fecha ASC";
        $result = $this->bd->query($sql);

        return $result;
    }
}
?>