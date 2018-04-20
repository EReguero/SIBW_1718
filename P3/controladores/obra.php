<?php
//Llamada al modelo
require_once("models/obra_model.php");
$obra=new obra_model();
$datos=$obra->get_datos();
$comentarios=$obra->get_comentarios();
$palabrasprohibidas=$obra->get_palabrasprohibidas();
$galeria = $obra->get_galeria();

//Llamada a la vista
require_once("views/plantillaObra.php");
?>