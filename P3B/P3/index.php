<?php
  require("db_helper.php");
  if(count($_GET) == 0) {
    include ("controladores/portada_controlador.php");
  } else {
    include("controladores/obra.php");
  }
;?>
