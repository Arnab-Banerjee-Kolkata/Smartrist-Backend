<?php
    include 'Credentials.php';
    $mysqli =new mysqli($servername, $username, $password, $dbname);
    if (mysqli_connect_errno()) {
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
 die();
 }
    
$candidateId=$_GET['candidateId'];

    
    $sql = "select classSubject, count(*) cnt from Attendence where candidateId=? and grade=(
            select grade from CandidateDetails where Id=?
    ) and department=(
            select department from CandidateDetails where Id=?
    ) group by classSubject";
        $stmt = $mysqli->prepare($sql);
    $stmt->bind_param("ddd", $candidateId, $candidateId, $candidateId);
 
 //executing the query 
 $stmt->execute();
 
 $response = array(); 
 $response['success']=true; 
 
 
 //traversing through all the result
 
    $stmt->bind_result($classSubject,$cnt);
    
    while ($stmt->fetch()) 
    {
       
        $response[$classSubject]=$cnt;
    }



 
 //displaying the result in json format 
 echo json_encode($response);
?>