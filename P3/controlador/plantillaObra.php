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
        <link rel="icon" href="/img/favicon.ico" type="image/x-icon">
        <!-- Estilo css de la pagina -->
        <link rel="stylesheet" type="text/css" href="css/style.css"/> 
        <!-- Linkeado Javascript-->
        <script src="../js/funciones.js"></script>
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
                       <p>Biografia de Antonio Saura</p>
                    </div>
                </a>
                <a target="_blank" href="http://www.antoniosaura.org/">
                    <div id="web">
                       <p>Página web de Antonio Saura</p>
                    </div>
                </a>   
            </aside>
            
            <?php
                include 'recursos/obra.php'; 
            ?> 

 			<button id="boton_comentarios" onclick="mostrarComentarios()">Comentarios</button>
            <div id ="box_comentarios">
                <div id="comentarios">
    	            	<div class="comentario">
                            <p class="nombre">Emilio Reguero Castro</p>
                            <p class="fecha">Tue Mar 20 2018 13:25:43 GMT+0100 (Hora estándar romance)</p>
                            <p class="text">Es una obra preciosa, merece la pena ir a Bilbao a verla.</p>
                        </div>
                        <div class="comentario">
                            <p class="nombre">Eric</p>
                            <p class="fecha">Wed Mar 21 2018 18:45:33 GMT+0100 (Hora estándar romance)</p>
                            <p class="text">
                                Me gusta mucho esta obra, les aconsejé a mis amigos que vengan a ver este espectáculo de arte.</p>
                        </div>
                </div>
                <div id="comentar">
                    <label for="entrada_nombre">Nombre:  </label>
                    <input type="text" name="entrada_nombre" id="entrada_nombre" placeholder="Nombre completo">
                    <label for="email">Email:  </label>
                    <input type="text" name="email" id="email" placeholder="example@email.es"> 
                    <textarea name="entrada_texto" id="entrada_texto" placeholder="Introduzca aquí su comentario." onkeyup="validarTexto()"></textarea>
                    <button id="crear_comentario" onclick="validarEmail()">Enviar</button>
                </div>
            </div>

            <div id="botonessociales">
                <!-- Botón de pagina para imprimir -->
                <a href="obra_imprimir.html">
                    <img src="../img/print_button.jpg" alt="Boton imprimir">
                </a>
                <!-- Botón de Twitter -->
                <a href="http://www.twitter.com">
                    <img src="../img/twitter_button.png" alt="Boton twitter">
                </a>
                <!-- Botón de Facebook -->
                <a href="http://www.facebook.com">
                    <img src="../img/facebook_button.png" alt="Boton facebook">
                </a>
            </div>  
        </div>
     </div>
        <?php
            include 'recursos/footer.php';
        ?>
    </body>
</html>
    