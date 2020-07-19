<?php
include 'Credentials.php';

$id=$_POST["id"];
$transType=$_POST["transType"];
$details=$_POST["details"];
$transDate=$_POST["transDate"];
$transTime=$_POST["transTime"];
$balance=$_POST["balance"];
$transAmt=$_POST["transAmt"];


$response = array();
    $response["success"] = false;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 


$stmt = $conn->prepare("INSERT INTO Transaction (candidateId, transType,details,transDate,transTime,balance,transAmt)
VALUES (?,?,?,?,?,?,?);");

$stmt->bind_param("dssssii", $id, $transType, $details, $transDate, $transTime,$balance,$transAmt);

$stmt->execute();


$response["success"] = true;


    
    echo json_encode($response);

$conn->close();
?>