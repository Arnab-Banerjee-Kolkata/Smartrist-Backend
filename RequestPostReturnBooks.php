<?php
include 'Credentials.php';


$bookId = json_decode($_POST["bookId"])[0];


$response = array();
    $response["success"] = false;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 



foreach ($bookId as $i => $book) 
{
    $stmt = $conn->prepare("delete from Library where bookId=?;");
    $stmt->bind_param("d",$book);
    $stmt->execute();
}


$response["success"] = true;


    
    echo json_encode($response);

$conn->close();
?>