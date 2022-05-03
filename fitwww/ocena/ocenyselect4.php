<?php
   session_start();
  
include("../db.php");

$login = $_SESSION['login'];
$idprzepisu= $_SESSION['idprzepisu'];



$conn = mysqli_connect($servername, $username,$password, $dbname);


if(!$conn){
	die("Connection failed: " . mysqli_connect_error());
}
$sql="INSERT INTO oceny (login, idprzepisu, ocena)
SELECT * FROM (SELECT '".$login."','".$idprzepisu."','4') AS tmp
WHERE NOT EXISTS (SELECT login,idprzepisu FROM oceny WHERE login = '".$login."' AND idprzepisu='".$idprzepisu."') LIMIT 1;";

if(mysqli_query($conn,$sql)){
	


	
} 


mysqli_close($conn);
header("Location: ../wyswietlart.php?c=".$idprzepisu."");

exit();
?>