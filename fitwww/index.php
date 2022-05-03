
<?php


include("db.php");
include("header.html");
include("MENU.php");
include("body.php");
include("FOOTER.php");
//Create connection
$conn=mysqli_connect($servername,$username,$password,$dbname);
//Check connection
if(!$conn){
	die("Connection failed: " . mysqli_connect_error());
}

$sql="SELECT * FROM uzytkownicy";
$result= mysqli_query($conn,$sql);


mysqli_close($conn);
?>