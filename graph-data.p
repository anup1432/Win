<?php
$servername = "sql209.infinityfree.com";
$username   = "if0_39785391";
$password   = "anup1432";
$dbname     = "if0_39785391_betwin";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) { die("Connection failed: " . $conn->connect_error); }

$result = $conn->query("SELECT price, created_at FROM prices ORDER BY created_at ASC LIMIT 100");
$data = [];
while($row = $result->fetch_assoc()){ $data[] = $row; }

header('Content-Type: application/json');
echo json_encode($data);

$conn->close();
?>
