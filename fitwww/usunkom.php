<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "fitwww";
   session_start();
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// sql to delete a record
 $sql = "DELETE FROM komentarze WHERE id='" . $_GET["id"] . "'";
 $idprzepisu= $_SESSION['idprzepisu'];
if ($conn->query($sql) === TRUE) {
  echo "Record deleted successfully";
} else {
  echo "Error deleting record: " . $conn->error;
}

$conn->close();
header("Location: wyswietlart.php?c=".$idprzepisu."");
exit();
?>