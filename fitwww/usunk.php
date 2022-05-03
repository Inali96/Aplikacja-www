<?php
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
  session_start();
$login = $_SESSION['login'];
  $haslo2 = $_POST['haslo2'];



 $sql = "DELETE FROM uzytkownicy WHERE login='".$login."' ";

if ($conn->query($sql) === TRUE) {
   if(session_destroy()) {
      header("location: index.php");  
   }
        


} 

$conn->close();

exit();
?>