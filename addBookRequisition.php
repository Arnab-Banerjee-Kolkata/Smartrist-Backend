<?php
include 'Credentials.php';


$candidateId=$_POST["candidateId"];
$reqDate=$_POST["reqDate"];
$subjectName = json_decode($_POST["subjectName"])[0];
$bookName = json_decode($_POST["bookName"])[0];
$authorName = json_decode($_POST["authorName"])[0];


$response = array();
    $response["success"] = false;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 



foreach ($subjectName as $i => $subject) 
{
    $stmt = $conn->prepare("INSERT INTO BookRequisition VALUES (?,?,?,?,?);");
    $stmt->bind_param("dssss", $candidateId, $subject, $bookName[$i], $authorName[$i], $reqDate);
    $stmt->execute();
}


$response["success"] = true;


    
    echo json_encode($response);

$conn->close();
?>