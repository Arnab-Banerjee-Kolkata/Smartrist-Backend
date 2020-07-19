<?php
include 'Credentials.php';


$candidateId=$_POST["candidateId"];
$fromDate=$_POST["fromDate"];
$toDate=$_POST["toDate"];
$bookId = json_decode($_POST["bookId"])[0];

$value=0;

$response = array();
    $response["success"] = false;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

foreach($bookId as $i => $book)
{
        $stmt=$conn->prepare("Select * from Library where bookId=?");
        $stmt->bind_param("d",$book);
        $stmt->execute();
        if($stmt->fetch())
        {
                $response["success"]=false;
                $value=1;
                break;
        }
}

if($value==0)
{

        foreach ($bookId as $i => $book) 
        {
            $stmt = $conn->prepare("INSERT INTO Library VALUES (?,?,?,?);");
            $stmt->bind_param("ddss", $candidateId, $book, $fromDate, $toDate);
            $stmt->execute();
        }
        
        $stmt=$conn->prepare("Delete from BookRequisition where candidateId=?;");
        $stmt->bind_param("d", $candidateId);
        $stmt->execute();
        
        
        $response["success"] = true;
}


    
    echo json_encode($response);

$conn->close();
?>