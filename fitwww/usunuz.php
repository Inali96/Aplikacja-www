<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "fitwww";
session_start();
 $idprzepisu= $_SESSION['idprzepisu'];
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// sql to delete a record
 $sql = "DELETE FROM uzytkownicy WHERE id='" . $_GET["id"] . "'";

if ($conn->query($sql) === TRUE) {
	
header("Location: panel.php");
exit();
} else {
  echo "Error deleting record: " . $conn->error;
}

$conn->close();
?>