<?php
include 'Credentials.php';

$id=$_POST["id"];
$personName=$_POST["personName"];
$grade=$_POST["grade"];
$department=$_POST["department"];
$orgWalletVal=$_POST["orgWalletVal"];
$activeState=$_POST["activeState"];
$otp=$_POST["otp"];

$response = array();
    $response["success"] = false;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$check=mysqli_query($conn,"select * from CandidateDetails where id=$id");
    $checkrows=mysqli_num_rows($check);
    
if($checkrows>0) {
      echo "card exists";
   }
else
{
        $stmt = $conn->prepare("INSERT INTO CandidateDetails (id,personName,grade,department,orgWalletVal,activeState,OTP)
        VALUES (?,?,?,?,?,?,?);");
        
        $stmt->bind_param("dsisiii", $id, $personName, $grade, $department, $orgWalletVal, $activeState,$otp);
        
        $stmt->execute();
        
        
        $response["success"] = true;
}

    
    echo json_encode($response);

$conn->close();
?>