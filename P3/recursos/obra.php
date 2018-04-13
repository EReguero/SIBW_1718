 <article id="descripcion">
        <?php
            include 'db.php';
            $obra_id=$_GET["obra"];
            $obra = array();
            $obra = getObra($obra_id);
        ?>
        <h2><?php echo $obra[1]; ?></h2>
        <h3><?php echo $obra[2]; ?></h3>
        <H4><?php echo $obra[3]; ?></H4>
        <div id="foto">
            <img src="<?php echo $obra[4]; ?>" alt="24 Cabezas">
            <p><?php echo $obra[1]; ?></p>
            <p id="fuente"><?php echo $obra[5]; ?></p>
        </div>
        <p><?php echo $obra[6]; ?></p>
</article>