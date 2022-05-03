<?php

$imie=$_POST["imie"];
$email = $_POST["email"];
$telefon = $_POST["telefon"];
$tresc = $_POST["text"];


include("db.php");

$conn = mysqli_connect($servername, $username, $password, $dbname);
//Check connection

if(!$conn){
    die("Connection failed: " . mysqli_connect_error());
}
$sql = "INSERT INTO wiadomosci (imie, email, telefon,tresc) VALUES ('".$imie."','".$email."','".$telefon."','".$tresc."')";
if(mysqli_query($conn,$sql)){
   
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);

}
header("Location: index.php");
mysqli_close($conn);
?>

