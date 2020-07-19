<?php
include 'Credentials.php';
    $mysqli =new mysqli($servername, $username, $password, $dbname);
    
    if (mysqli_connect_errno()) {
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
 die();
 }
    

$sql = "select customerId, count(*) cnt from PendingOrders group by customerId";
        $stmt = $mysqli->prepare($sql);
 
 //executing the query 
 $stmt->execute();
 
 $response = array(); 
 $response['success']=true; 
 
 
 //traversing through all the result
 
    $stmt->bind_result($customerId,$cnt);
    
    while ($stmt->fetch()) 
    {
       
        $response[$customerId]=$cnt;
    }



 
 //displaying the result in json format 
 echo json_encode($response);
?>