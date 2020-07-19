<?php
include 'Credentials.php';
    $con = mysqli_connect($servername, $username, $password, $dbname);
    
    if (mysqli_connect_errno()) {
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
 die();
 }
    
$id=$_GET['id'];
    
    $stmt = $con->prepare("SELECT orgWalletVal from CandidateDetails where Id=?;");
    $stmt->bind_param("d", $id);
 
 //executing the query 
 $stmt->execute();
 
 
 //binding results to the query 
 $stmt->bind_result($balance);
 
 $response = array(); 
 $response['success']=false;
 
 //traversing through all the result
 if($stmt->fetch())
 {
 
 $response['success']=true;
 $response['balance']=$balance;
 }

 
 //displaying the result in json format 
 echo json_encode($response);
?>