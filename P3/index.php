<?php
  require("db_helper.php");
  if(count($_GET) == 0) {
    include ("views/plantillaPortada.php");
  } else {
    switch(key($_GET)) {
    case 'obra':
        include("views/plantillaObra.php");
        break;
    
    case 'coleccion':
      include("views/plantillaColeccion.php");
      break;
    }
  }
;?>
