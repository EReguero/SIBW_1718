<?php
 class DB_Helper{  

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "practica3";
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM obras WHERE ID= ".$obraID;
    $result = $conn->query($sql);
    $row = $result->fetch_array();
    
    return $row;

    $conn->close();

}

?>
