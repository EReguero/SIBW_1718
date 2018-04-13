<?php
  if(count($_GET) == 0) {
    include './controlador/portada.php';
  } else {
  $obraID = $_GET["obra"];
    include("controlador/plantillaObra.php");
  }
;?>
