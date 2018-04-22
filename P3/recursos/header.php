<header id="logo">
  <img src="../img/logo.jpg" alt="logo">
  <h1>Guggenheim Bilbao</h1>
</header>
<!-- Menu Horizontal-->
<nav id="menu">
  <?php
    require("models/menu_model.php");
    $menu = new menu_model();
    $obras = $menu->get_menu_obras();
    $autores = $menu->get_menu_autores();
    $colecciones = $menu->get_menu_colecciones();
  ?>
  <ul>
    <li><a href="/">Inicio</a></li>
    <li><a href="">Obras</a>
      <ul>
        <?php while($row = $obras->fetch_assoc()){ ?>
    <li><a href='/?obra=<?php echo $row['id'] ?>'><?php echo $row['titulo'] ?></a></li>
       <?php } ?>  
      </ul>
    </li>
    <li><a href="">Artistas</a>
       <ul>
        <?php while($row = $autores->fetch_assoc()){ ?>
    <li><a href=''><?php echo $row['autor'] ?></a></li>
       <?php } ?>  
      </ul>
    </li>
    <li><a href="">Entradas</a></li>
    <li><a href="">Colecciones</a>
      <ul>
        <?php while($row = $colecciones->fetch_assoc()){ ?>
    <li><a href='/?coleccion=<?php echo $row['id'] ?>'><?php echo $row['nombre'] ?></a></li>
       <?php } ?>  
      </ul>
    </li>
  </ul>
</nav>