<?php
//Llamada al modelo
	require_once("models/portada_model.php");
	$portada=new portada_model();
	$datos = array();
	$datos=$portada->get_datos();
	//Llamada a la vista
	require_once("views/plantillaPortada.php");
?>