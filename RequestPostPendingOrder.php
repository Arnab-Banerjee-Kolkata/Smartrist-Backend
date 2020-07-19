<?php
include 'Credentials.php';


$candidateId=$_POST["candidateId"];
$itemName = json_decode($_POST["itemName"])[0];
$quantity = json_decode($_POST["quantity"])[0];
$myVal=NULL;


$response = array();
    $response["success"] = false;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 



foreach ($itemName as $i => $item) 
{
    if(!($stmt = $conn->prepare("INSERT INTO PendingOrders (itemName, quantity, customerId) VALUES (?,?,?);")))
    {
            echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
    }
    if(!($stmt->bind_param("sid", $item, $quantity[$i], $candidateId)))
    {
            echo "Binding parameters failed: (" . $stmt->errno . ") " . $stmt->error;
    }
    if(!($stmt->execute()))
    {
            echo "Execute failed: (" . $stmt->errno . ") " . $stmt->error;
    }
    $response["success"] = true;

}



    
    echo json_encode($response);

$conn->close();
?>