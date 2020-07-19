<?php
include 'Credentials.php';


$candidateId=$_POST["candidateId"];
$itemName = json_decode($_POST["itemName"])[0];
$quantity = json_decode($_POST["quantity"])[0];
$price=json_decode($_POST["price"])[0];
$myVal=NULL;


$response = array();
    $response["success"] = false;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 



foreach ($itemName as $i => $item) 
{
    $stmt = $conn->prepare("INSERT INTO Canteen (candidateId, foodOrder, quantity, price) VALUES (?,?,?,?);");
    $stmt->bind_param("dsii", $candidateId, $item, $quantity[$i], $price[$i]);
    $stmt->execute();
}


$response["success"] = true;


    
    echo json_encode($response);

$conn->close();
?>