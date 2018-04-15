<!DOCTYPE html>
<html>
    <head>
        <!-- Titulo de la pestaña-->
        <title>Guggenheim Bilbao</title>
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
                <!-- 24 cabezas -->
	            <div class="contenedor_obra">	
	            	<a href="?obra=1"><img src="img/Sauracabezas1.jpg" alt="24 Cabezas"></a>
	            	<p>24 cabezas</p>
	            </div>	
                <!-- Villa Borghese -->
                <div class="contenedor_obra">
                	<a href="?obra=2"><img src="img/De-Kooning.jpg" alt="Villa Borghese"></a>
                	<p>Villa Borghese</p>
                </div>
                <!-- Caja Metafisica -->
                <div class="contenedor_obra">	
                	<a href="?obra=4"><img src="img/Oteiza-Homenaje-a-Leonardo.jpg" alt="Caja Metafisica"></a>
                	<p>Caja Metafísica</p>
                </div>
                <!-- Antropometria Azul -->
                <div class="contenedor_obra">
                	<a href="?obra=3"><img src="img/Antropometriaazul.jpg" alt="Antropometria Azul"></a>
                	<p>Antropometria Azul</p>
            	</div>
            	<!-- Ensayo de desocupación de la esfera -->
                	            <div class="contenedor_obra">
                	            	<a href="?obra=5"><img src="img/Ensayo.jpg" alt="Ensayo de desocupación de la esfera"></a>
                	            	<p>Ensayo de desocupación de la esfera</p>
                </div>
            </div>   
        </div>
        <?php
            include 'recursos/footer.php';
        ?>
    </body>
</html>