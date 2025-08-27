<?php
$servername = "sql209.infinityfree.com";
$username   = "if0_39785391";
$password   = "anup1432";
$dbname     = "if0_39785391_betwin";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) { die("Connection failed: " . $conn->connect_error); }
echo "✅ Database Connected Successfully!";
$conn->close();
?>
