 
  <?php
include("db.php");

$conn=mysqli_connect($servername,$username,$password,$dbname);

if(!$conn){
    die("Connection failed: " . mysqli_connect_error());
}


$id=$_GET["c"];

$sql="SELECT * FROM komentarze WHERE idprzepisu ='$id'";

$result=mysqli_query($conn,$sql);
if(mysqli_num_rows($result)>0)
{
	while($row=mysqli_fetch_assoc($result))
	{

		$login = $row["login"];
		$tresc = $row["tresc"];
	    $awatar = $row["awatar"];


		$art="";


    $art.=' <div class="col-lg-12 col-sm-6"><center>';

$art.='<h3 class="text-warning "> <img src="'.$awatar.'" height="60px" width="60px" /> '.$login.'</h3>';
$art.='<p>'.$tresc.'</p><a href="zglos.php?id='.$row["id"].'"> Zglos</a> ';

if(isset($_SESSION["rola"]) && $_SESSION["rola"]=='A')
 {
      $art.= '<a href="usunkom.php?id='.$row["id"].'"> Usun</a> ';
}

$art.='</center><hr class="primary"></div>';




		echo $art ;

	}
}

mysqli_close($conn);


?>  






        <div class="col-lg-12 col-sm-6 text-left">

<form action="dodajkom.php" method="post"><br
 />
 <div style="text-align: center; ">  

 <h3 class="text-warning "><center>Zostaw komentarz!</center>
 </h3> 


  <textarea rows="8" cols="90" name="tresc" class="show"></textarea><br />
  
  <input type="submit" class="text-warning " value="Dodaj Komentarz">
</div>

