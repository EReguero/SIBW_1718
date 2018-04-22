<html>
<head>
	<title>Compartir con <?php echo $_GET['red'];?></title>
	  <script src="../js/funciones.js"></script>
      <link rel="stylesheet" type="text/css" href="../css/stylecompartir.css"/>
</head>
<body>
    <div id="publicacion">
        <p>Se publicara en <?php echo $_GET['red']?> el siguiente mensaje</p>
        <p> <?php echo $_GET['titulo']?> via @GuggenheimBilbao</p>
    </div>
	<div id="imageobracompartir">
	    <img src="../<?php echo $_GET['imagen'] ?>" alt="<?php echo $_GET['titulo'] ?>">
     </div>
	<button onclick="window_close();">Aceptar</button>
</body>
</html>