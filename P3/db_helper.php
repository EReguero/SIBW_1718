<?php
class db{  
    
    function conexion(){
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "practica3";


        // Create connection
        global $conn;
        $conn = new mysqli($servername, $username, $password, $dbname);
        mysqli_set_charset($conn,"utf8");
        
        // Check connection
        if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
        }
       
        return $conn;
    }
  
    public static function close_conexion($conn){
        $conn->close();
    }
}

?>
