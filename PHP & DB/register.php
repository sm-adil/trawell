<?php
 
    include("connection.php");
    
    if(isset($_POST['name']) && isset($_POST['email']) && isset($_POST['password'])) {
    
        $name = $_POST["name"];
        $email = $_POST["email"];
        $password = $_POST["password"];
        
        $query = "SELECT email FROM registered_users WHERE email = '$email' LIMIT 1";
        
        $result = mysqli_query($conn, $query); 
        
        if (mysqli_num_rows($result) > 0) { 
            echo "User already exists";
            exit;
        }
        else { 
            $query = "INSERT INTO `registered_users`(`name`, `email`, `password`) VALUES ('$name', '$email', '$password')";
     
            $data = mysqli_query($conn,$query);
     
            if ($data) {
                echo "Successfully Signed In";
            }
            else {
                echo "Error Sign in";
            }
            exit;
        } 
    } 
 
?>