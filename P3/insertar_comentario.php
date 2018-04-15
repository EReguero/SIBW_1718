<?php
    include 'getip.php';
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "practica3";
    //echo $fecha_comento  = date("F j, Y, g:i a");
    //echo $_POST["entrada_nombre"];
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Get the client ip address
    $ip = getip();

    $sql = "INSERT INTO comentario (correo, nome, ip, text)
    VALUES ('$_POST[email]','$_POST[entrada_nombre]','$ip' ,'$_POST[entrada_texto]')";

   if ($conn->query($sql) === TRUE) {
       echo "New record created successfully";
   } else {
       echo "Error: " . $sql . "<br>" . $conn->error;
   }
    $conn->close();
?>