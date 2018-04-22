<!DOCTYPE html>
<html>
    <head>
        <!-- Titulo de la pestaña-->
        <title>Guggenheim Bilbao - Colecciones</title>
        <meta charset="utf-8">
        <!-- Palabras clave para el buscador-->   
        <meta name="keywords" content="Museo, Guggenheim, Bilbao, arte">
        <!-- Descripcion de la web -->
        <meta name="description" content="Página Web del Museo Guggenheim Bilbao">
        <!-- Autores de la web -->
        <meta name="author" content="Emilio, Eric">
        <!-- Favicon de la web-->
        <link rel="icon" href="img/favicon.ico" type="image/x-icon">
        <!-- Estilo css de la pagina -->
        <link rel="stylesheet" type="text/css" href="css/style.css"/> 
    

    </head>
    <body>
        <?php
            require_once("models/coleccion_model.php");
            $coleccion=new coleccion_model();
            $datos=$coleccion->get_coleccion();
        ?>
        <!-- Header con el logo e imagen de fondo -->
        <?php
            include 'recursos/header.php';
        ?>
        <!-- Contenedor principal -->
        <div id="main">
            <?php 
                include 'recursos/index_sidebar.php';
            ?>
            <!-- Contendor con las obras de index-->
            <div id="obras">
                <h3 id="colecciones"><?php echo $datos[1] ?> </h3>
                <?php
                    $n = 2;
                    while($datos[$n] != ''){
                            $obra = $coleccion-> get_obra($datos[$n]);
                            echo "<div class='contenedor_obra'>";    
                            echo "<a href='?obra=".$datos[$n]."''><img src=".$obra['imagen']." alt=".$obra['titulo']."></a>";
                            echo "<p>".$obra['titulo']."</p>";
                            echo "</div>";
                            $n++;  
                    }
                ?>           
            </div>   
        </div>
        <?php
            include 'recursos/footer.php';
        ?>
    </body>
</html>