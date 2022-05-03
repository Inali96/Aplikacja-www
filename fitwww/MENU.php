
	<?php
	  session_start();
if(!isset($_SESSION["rola"])) {
  include("menuG.html");;
}

if(isset($_SESSION["rola"]) && $_SESSION["rola"]=='A')
 {
		include("menuA.php");;
   }


if(isset($_SESSION["rola"]) && $_SESSION["rola"]=="U")
  {
    include("menuU.php");;
  }


include("db.php");

$conn=mysqli_connect($servername,$username,$password,$dbname);

if(!$conn){
    die("Connection failed: " . mysqli_connect_error());
}


mysqli_close($conn);
?>





