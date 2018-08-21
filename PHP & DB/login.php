<?php

    include("connection.php");
    
    if (isset($_POST["email"]) && isset($_POST["password"])) {
        
      $email=$_POST["email"];
        
      $password=$_POST["password"];
      
        $query = "SELECT * FROM registered_users where email='$email' and password='$password' LIMIT 1";
        
        $result = mysqli_query($conn, $query);
    
    	if (mysqli_num_rows($result) > 0) {	
    		echo "Login Success";
    		exit;
    	}			
    	else {	
    		echo "Invalid credential";
    		exit;
    	}
    }

?>