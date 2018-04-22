<article id="descripcion">
    <h2><?php echo $datos['titulo']; ?></h2>
    <h3><?php echo $datos['autor']; ?></h3>
    <H4><?php echo $datos['fecha']; ?></H4>
    <div id="foto">
        <img src="<?php echo $datos['imagen'] ;?>" alt="<?php echo $datos['titulo'] ;?>">
        <p><?php echo $datos['titulo']; ?></p>
         <?php
                echo "<p id='fuente'>Fuente:".$datos['fuente_imagen']."</p>";
        ?>
    </div>
    <p><?php echo $datos['descripcion']; ?></p>
</article>
<div id="fechas">
<p id="fecha_creacion">Obra añadida el: <?php echo $datos['fecha_creacion']?></p>
<p id="fecha_modificacion">Obra modificada el: <?php echo $datos['fecha_modificacion']?></p>
</div> 