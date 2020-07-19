<?php
    include 'Credentials.php';
    $mysqli =new mysqli($servername, $username, $password, $dbname);
    
    if (mysqli_connect_errno()) {
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
 die();
 }
    
$id=$_GET["id"];



$sql = "select bookId from Library where candidateId=?";
    $stmt = $mysqli->prepare($sql);
    $stmt->bind_param("d", $id);

 
 //executing the query 
 $stmt->execute();
 
 $response = array();  
 
 
 //traversing through all the result
 
    $stmt->bind_result($bookId);
    
while ($stmt->fetch()) 
{
    $temp = array();
    $temp["bookId"]=$bookId;
    array_push($response, $temp);
}



 
 //displaying the result in json format 
 echo json_encode($response);
?>