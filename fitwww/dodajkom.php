<?php
   session_start();
  
include("db.php");

$login = $_SESSION['login'];
$awatar = $_SESSION['awatar'];
$tresc = $_POST["tresc"];
$idprzepisu= $_SESSION['idprzepisu'];




$conn = mysqli_connect($servername, $username,$password, $dbname);
//Check connection

if(!$conn){
	die("Connection failed: " . mysqli_connect_error());
}
$sql = "INSERT INTO komentarze (idprzepisu, login, tresc,awatar) VALUES ('".$idprzepisu."','".$login."','".$tresc."','".$awatar."')";
if(mysqli_query($conn,$sql)){
	
} 


mysqli_close($conn);


header("Location: wyswietlart.php?c=".$idprzepisu."");
exit();
?>