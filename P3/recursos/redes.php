<html>
<head>
	<title>Compartir con <?php echo $_GET['red'];?></title>
</head>
<body>
	<p>Se publicara en <?php echo $_GET['red']?> el siguiente mensaje</p>
	<p> <?php echo $_GET['titulo']?> via @GuggenheimBilbao</p>
	<img src="../<?php echo $_GET['imagen'] ?>" alt="<?php echo $_GET['titulo'] ?>">
</body>
</html>