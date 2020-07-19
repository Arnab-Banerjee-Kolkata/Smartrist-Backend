<?php
include 'Credentials.php';

$candidateId=$_POST["candidateId"];
$startTime=$_POST["startTime"];
$classDate=$_POST["classDate"];
$classSubject=$_POST["classSubject"];
$endTime=$_POST["endTime"];
$grade=$_POST["grade"];
$department=$_POST["department"];

$response = array();
    $response["success"] = false;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 


$stmt = $conn->prepare("INSERT INTO Attendence VALUES (?,?,?,?,'Present',?,?,?);");

$stmt->bind_param("dssssis", $candidateId, $startTime, $classDate, $classSubject, $endTime,$grade,$department);

$stmt->execute();


$response["success"] = true;


    
    echo json_encode($response);

$conn->close();
?>