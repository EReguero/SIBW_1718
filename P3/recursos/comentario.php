<?php
    <form action="/insertar_comentario.php" method="get" target="_blank">
        <label for="entrada_nombre">Nombre:  </label>
        <input type="text" name="entrada_nombre" id="entrada_nombre" placeholder="Nombre completo">
        <label for="email">Email:  </label>
        <input type="text" name="email" id="email" placeholder="example@email.es">
        <textarea name="entrada_texto" id="entrada_texto" placeholder="Introduzca aquí su comentario." onkeyup="validarTexto()"></textarea>
        <input type="submit" formmethod="post" value="Crear comentario">
    </form>
?>