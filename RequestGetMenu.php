<?php
    include 'Credentials.php';
    $conn =new mysqli($servername, $username, $password, $dbname);
    
    if (mysqli_connect_errno()) {
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
 die();
 }
    
$stmt = $conn->prepare("SELECT * from Menu;");
 
 //executing the query 
 $stmt->execute();
 
 //binding results to the query 
 $stmt->bind_result($itemId, $price, $itemName, $availableState, $imageUrl);
 
 $products = array(); 
 
 //traversing through all the result 
 while($stmt->fetch()){
 $temp = array();
 $temp['itemId'] = $itemId; 
 $temp['price'] = $price; 
 $temp['itemName'] = $itemName; 
 $temp['availableState'] = $availableState; 
 $temp['imageUrl'] = $imageUrl; 
 array_push($products, $temp);
 }
 
 //displaying the result in json format 
 echo json_encode($products);
?>