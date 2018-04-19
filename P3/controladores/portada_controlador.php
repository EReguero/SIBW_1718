<?php
//Llamada al modelo
	require_once("portada_model.php");
	$obra=new obra_model();
	$datos = array();
	$datos=$obra->get_datos();
	//Llamada a la vista
	require_once("views/plantillaObra.php");
?>