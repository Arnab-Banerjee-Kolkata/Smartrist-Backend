<?php
include 'Credentials.php';

$id=$_POST["id"];
$otp=$_POST["otp"];

$response = array();
    $response["success"] = false;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$stmt = $conn->prepare("update CandidateDetails set OTP=? where Id=?;");

$stmt->bind_param("id", $otp, $id);

if($stmt->execute())
{
    $response["success"] = true;
}


    
    echo json_encode($response);

$conn->close();
?>