<?php
include 'Credentials.php';


$candidateId=$_POST["candidateId"];

$response = array();
    $response["success"] = false;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 


$stmt = $conn->prepare("delete from Canteen where candidateId=?");

$stmt->bind_param("d", $candidateId);

$stmt->execute();


$response["success"] = true;


    
    echo json_encode($response);

$conn->close();
?>