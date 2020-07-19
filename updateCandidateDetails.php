<?php
include 'Credentials.php';

$orgWalletVal=$_POST["orgWalletVal"];
$id=$_POST["id"];
$name=$_POST["personName"];
$grade=$_POST["grade"];
$department=$_POST["department"];
$activeState=$_POST["activeState"];

$response = array();
    $response["success"] = false;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$stmt = $conn->prepare("update CandidateDetails set personName=?,
                               grade=?,
                               department=?,
                               orgWalletVal=?,
                               activeState=? where Id=?;");

$stmt->bind_param("sisiid", $name,$grade, $department, $orgWalletVal, $activeState, $id);

if($stmt->execute())
{
    $response["success"] = true;
}


    
    echo json_encode($response);

$conn->close();
?>