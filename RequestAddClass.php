<?php
include 'Credentials.php';


$grade=$_POST["grade"];
$department=$_POST["department"];
$classSubject=$_POST["classSubject"];
$classDate=$_POST["classDate"];
$startTime=$_POST["startTime"];
$endTime=$_POST["endTime"];
$classGroup=$_POST["classGroup"];

$response = array();
    $response["success"] = false;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$stmt=$conn->prepare("select * from Class where grade=? and department=? and classDate=? and startTime=? and (classGroup=? or classGroup=3)");
$stmt->bind_param("isssi",$grade, $department, $classDate, $startTime,$classGroup);
$stmt->execute();
$response["success"] = true;
while($stmt->fetch())
{
        $response["success"] = false;
}



$stmt = $conn->prepare("INSERT INTO Class VALUES (?,?,?,?,?,?,?);");

$stmt->bind_param("isssssi", $grade, $department, $classSubject, $classDate, $startTime, $endTime, $classGroup);

$stmt->execute();





    
    echo json_encode($response);

$conn->close();
?>