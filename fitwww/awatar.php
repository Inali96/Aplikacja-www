<?php
include("db.php");
session_start();




$awatar='awatary/'.basename($_FILES['awatar']['name']);

if(move_uploaded_file($_FILES['awatar']['tmp_name'],$awatar)) {

     //Insert into your db

     $fp = fopen($awatar, "r");
}


$_SESSION['awatar']=$awatar;

$login = $_SESSION["login"];
$conn = mysqli_connect($servername, $username, $password, $dbname);
//Check connection


$sql = "UPDATE uzytkownicy  SET awatar=('".$awatar."') WHERE login='".$login."' ";
if(mysqli_query($conn,$sql)){
   
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);

}


mysqli_close($conn);
          header("location: index.php");
?>
