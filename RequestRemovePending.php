<?php
include 'Credentials.php';


$id=$_POST["id"];

$response = array();
    $response["success"] = false;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 


$stmt = $conn->prepare("delete from PendingOrders where customerId=?");

$stmt->bind_param("d", $id);

$stmt->execute();


$response["success"] = true;


    
    echo json_encode($response);

$conn->close();
?>