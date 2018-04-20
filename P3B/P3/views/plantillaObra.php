    <!DOCTYPE html>
<html>
    <head>
        <!-- Titulo de la pestaña -->
        <title>Guggenheim Bilbao - 24 Cabezas</title>
         <meta charset="utf-8">
        <!-- Palabras clave para el buscador--> 
        <meta name="keywords" content="Museo, Guggenheim, Bilbao, 24, cabezas, antonio, saura">
        <!-- Autores de la web -->
        <meta name="author" content="Emilio, Eric">
        <!-- Favicon de la web-->
        <link rel="icon" href="img/favicon.ico" type="image/x-icon">
        <!-- Estilo css de la pagina -->
        <link rel="stylesheet" type="text/css" href="css/style.css"/> 
        <!-- Linkeado Javascript-->
        <script src="js/funciones.js"></script>

    </head>
    <body>
        <?php
            include 'recursos/header.php';
        ?>

        <div id="main">
            <!-- Enlaces laterales auxiliares -->
            <aside id="aux"> 
                <a target="_blank" href="https://es.wikipedia.org/wiki/Antonio_Saura"> 
                    <div id="biografia">
                       <p>Biografia de <?php echo $datos['autor']; ?></p>
                    </div>
                </a>
                <a target="_blank" href="http://www.antoniosaura.org/">
                    <div id="web">
                       <p>Página web de <?php echo $datos['autor']; ?></p>
                    </div>
                </a>

            </aside>
            
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
            <!-- Insertar Comentario -->
            <button id="boton_comentarios" onclick="mostrarComentarios()">Comentarios</button>
            <div id ="box_comentarios">
                <div id="comentarios">
                    <?php
                        while($row = $comentarios->fetch_assoc()){
                            echo"<div class='comentario'>";
                            echo"<p class='nombre'>".$row['nome']."</p>";
                            echo"<p class='fecha'>".$row['fecha']."</p>";
                            echo "<p class='text'>".$row['comment_text']."</p>";
                            echo "</div>";
                        }
                    ?>  
                </div>
                <form id="comentar" action="insertar_comentario.php" method="post" target="_self">
                    <input type="hidden" name="obra" value=<?php echo $_GET["obra"]?>>
                    <label for="entrada_nombre">Nombre:  </label>
                    <input type="text" name="entrada_nombre" id="entrada_nombre" placeholder="Nombre completo">
                    <label for="email">Email:  </label>
                    <input type="text" name="email" id="email" placeholder="example@email.es">
                    <textarea name="entrada_texto" id="entrada_texto"  onkeyup="validarTexto(<?php foreach ($palabrasprohibidas as $palabra) {
                        if ($palabra === end($palabrasprohibidas)){
                            echo "'".$palabra."'";
                        }else{
                            echo "'".$palabra."',";  
                        }
                    } ?>)" placeholder="Introduzca aquí su comentario." ></textarea>
                    <input type="submit" id="crear_comentario" value="Enviar">
                </form>    
            </div>    
            <div id="botonessociales">
               
                <!-- Botón de pagina para imprimir -->
                <a href="obra_imprimir.html">
                    <img src="../img/print_button.jpg" alt="Boton imprimir">
                </a>

                <!-- Botón de Twitter -->
                <img src="img/twitter_button.png" alt="Boton twitter" onclick="window_open('<?php echo $datos['titulo'] ?>','<?php echo $datos['imagen']?>','Twitter');">
                <!-- Botón de Facebook -->
              
                <img src="../img/facebook_button.png" alt="Boton facebook" onclick="window_open('<?php echo $datos['titulo'] ?>','<?php echo $datos['imagen']?>','Facebook');">
            </div>  
        </div>
        <?php
            include 'recursos/footer.php';
        ?>
    </body>
</html>
    