<?php
  require("db_helper.php");
  if(count($_GET) == 0) {
    include 'views/portada.php';
  } else {
    include("controladores/obra.php");
  }
;?>
