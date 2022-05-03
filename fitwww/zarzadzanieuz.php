<?php
session_start();

include("db.php");
//Create connection
$conn=mysqli_connect($servername,$username,$password,$dbname);
//Check connection
if(!$conn){
	die("Connection failed: " . mysqli_connect_error());
}

$sql="SELECT * FROM uzytkownicy";
$result= mysqli_query($conn,$sql);

if(mysqli_num_rows($result)>0){
while($row=mysqli_fetch_assoc($result)){
	echo"id: " . $row["id"]. " - Imię i nazwisko: " .$row ["imie"]." " . $row["nazwisko"].",login: ".$row["login"].",rola: ".$row["rola"]."<br>";
	   echo '<td> <button><a href="nadanieadm.php?id='.$row["id"].'"> Nadaj rangę (A)dmin</a></br></button>';
         echo '<td> <button><a href="nadanieuz.php?id='.$row["id"].'"> Nadaj rangę (U)żytkownik</a></br></button>';
         echo '<td> <button><a href="usunuz.php?id='.$row["id"].'"> Usuń konto</a></br></button></td>';
	echo "<br>";
}	
}else{
	echo "0 results";
}
mysqli_close($conn);
?>