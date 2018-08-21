<?php
 
    $server_name = "localhost"; //servername
    $user_name = "root"; //username
    $password = ""; //password
    $db= "trawell"; //database name
    $conn = mysqli_connect($server_name, $user_name, $password,$db);
     
    if(!$conn) {
        die("Error Connection!");
    }
    
?>
