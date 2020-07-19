<?php
include 'Credentials.php';
    $mysqli =new mysqli($servername, $username, $password, $dbname);
    
    if (mysqli_connect_errno()) {
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
 die();
 }
    
$grade=$_GET['grade'];
$department=$_GET['department'];
$any=123;

$sql="";
$stmt=NULL;
    
if($grade==$any and $department==$any)
{
    $sql = "select candidateId, count(*) cnt from BookRequisition group by candidateId";
        $stmt = $mysqli->prepare($sql);
}
else if($grade==$any and $department!=$any)
{
    $sql = "select candidateId, count(*) cnt from BookRequisition where candidateId IN
    (
        select Id from CandidateDetails where department=?
    ) group by candidateId";
        $stmt = $mysqli->prepare($sql);
    $stmt->bind_param("s", $department);
}
else if($grade!=$any and $department==$any)
{
    $sql = "select candidateId, count(*) cnt from BookRequisition where candidateId IN
    (
        select Id from CandidateDetails where grade=?
    ) group by candidateId";
        $stmt = $mysqli->prepare($sql);
    $stmt->bind_param("i", $grade);
}
else
{
    $sql = "select candidateId, count(*) cnt from BookRequisition where candidateId IN
    (
        select Id from CandidateDetails where grade=? and department=?
    ) group by candidateId";
        $stmt = $mysqli->prepare($sql);
    $stmt->bind_param("is", $grade, $department);
}
 
 //executing the query 
 $stmt->execute();
 
 $response = array(); 
 $response['success']=true; 
 
 
 //traversing through all the result
 
    $stmt->bind_result($candidateId,$cnt);
    
    while ($stmt->fetch()) 
    {
       
        $response[$candidateId]=$cnt;
    }



 
 //displaying the result in json format 
 echo json_encode($response);
?>