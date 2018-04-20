<?php
class portada_model{
 private $db;



    public function __construct(){
        $this->bd=db::conexion();
        $this->obras=array();
    }


    public function get_datos(){

		$sql = "SELECT id, titulo, imagen FROM obras ORDER BY RAND()
		LIMIT 6";
    	$result = $this->bd->query($sql);
 	


    	return $result;
    }

      public function get_colecciones(){

		$sql = "SELECT * FROM colecciones";
    	$result = $this->bd->query($sql);
 	


    	return $result;
    }


   
}
?>