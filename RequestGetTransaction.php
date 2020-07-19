<?php
include 'Credentials.php';
    $mysqli =new mysqli($servername, $username, $password, $dbname);
    
    if (mysqli_connect_errno()) {
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
 die();
 }
    
$id=$_GET["id"];



$sql = "select transType, details, transDate, transTime, balance, transAmt from Transaction where candidateId=? order by transId DESC";
    $stmt = $mysqli->prepare($sql);
    $stmt->bind_param("d", $id);

 
 //executing the query 
 $stmt->execute();
 
 $response = array();  
 
 
 //traversing through all the result
 
    $stmt->bind_result($transType, $details, $transDate, $transTime, $balance, $transAmt);
    
while ($stmt->fetch()) 
{
    $temp = array();
    $temp['transType'] = $transType; 
    $temp['details'] = $details;
    $temp['transDate']=$transDate;
    $temp['transTime']=$transTime;
    $temp['balance']=$balance;
    $temp['transAmt']=$transAmt;
    array_push($response, $temp);
}



 
 //displaying the result in json format 
 echo json_encode($response);
?>