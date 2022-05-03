<?php
include("db.php");
session_start();




$stareh=$_POST["h1"];
$noweh=$_POST["h2"];


$login = $_SESSION["login"];
$conn = mysqli_connect($servername, $username, $password, $dbname);
//Check connection


$sql = "UPDATE uzytkownicy  SET haslo=('".$noweh."') WHERE login='".$login."' AND haslo='".$stareh."'";
if(mysqli_query($conn,$sql)){
   
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);

}


mysqli_close($conn);
          header("location: index.php");
?>
