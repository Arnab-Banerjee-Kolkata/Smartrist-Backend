<?php
include 'Credentials.php';

$orgWalletVal=$_POST["orgWalletVal"];
$id=$_POST["id"];

$response = array();
    $response["success"] = false;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$stmt = $conn->prepare("update CandidateDetails set orgWalletVal=? where Id=?;");

$stmt->bind_param("id", $orgWalletVal, $id);

if($stmt->execute())
{
    $response["success"] = true;
}


    
    echo json_encode($response);

$conn->close();
?>