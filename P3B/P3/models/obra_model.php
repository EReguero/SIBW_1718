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
        $row = $result->fetch_assoc();

        return $row;
    }

    public function get_comentarios (){
        $sql = "SELECT nome, fecha, comment_text FROM comentario WHERE obra_id= ".$this->obra_id." ORDER BY fecha ASC";
        $result = $this->bd->query($sql);

        return $result;
    }

    public function get_palabrasprohibidas (){
        $sql = "SELECT * FROM palabrasprohibidas";
        $result = $this->bd->query($sql);
        $palabras = array();
        while($row = $result->fetch_assoc()){
            $palabras[]=$row['palabra'];
        }

        return $palabras;
    }

    public function get_galeria (){
        $sql="SELECT imagen1, imagen2, imagen3 from galeria where obra_id=".$this->obra_id;
        $result = $this->bd->query($sql);
        
        $imagenes = $result->fetch_assoc();

        return($imagenes);
    }
}
?>