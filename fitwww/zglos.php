<?php
   session_start();
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "fitwww";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// sql to delete a record
 $idprzepisu= $_SESSION['idprzepisu'];
 $sql ="INSERT INTO zgloszenia (login, idprzepisu, tresc)
SELECT login, idprzepisu, tresc From komentarze
WHERE id='" . $_GET["id"] . "'";

if(mysqli_query($conn,$sql)){
	
} 

$conn->close();
header("Location: wyswietlart.php?c=".$idprzepisu."");
exit();
?>