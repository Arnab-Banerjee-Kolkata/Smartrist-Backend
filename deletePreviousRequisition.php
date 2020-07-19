<?php
include 'Credentials.php';


$reqDate=$_POST["reqDate"];

$response = array();
    $response["success"] = false;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 


$stmt = $conn->prepare("delete from BookRequisition where reqDate<?");

$stmt->bind_param("s", $reqDate);

$stmt->execute();


$response["success"] = true;


    
    echo json_encode($response);

$conn->close();
?>