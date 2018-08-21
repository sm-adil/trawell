<?php 

    include("connection.php");

    $stmt = $conn->prepare("SELECT id, name, address, address_uri, description, rating, image FROM places;");
    $stmt->execute();

    $stmt->bind_result($id, $name, $address, $address_uri, $description, $rating, $image);
    $place = array();

    while ($stmt->fetch()) {
        $temp = array();
        $temp['id'] = $id;
        $temp['name'] = $name;
        $temp['address'] = $address;
        $temp['address_uri'] = $address_uri;
        $temp['description'] = $description;
        $temp['rating'] = $rating;
        $temp['image'] = $image;
        
        array_push($place,$temp);
    }

    echo json_encode($place);
?>
