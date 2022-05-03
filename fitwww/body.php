
    <?php
if(!isset($_SESSION["rola"])) 
{
        include("bodyG.php");;
}
if(isset($_SESSION["rola"]) && $_SESSION["rola"]=='U')
 {
        include("bodyU.html");;
}
if(isset($_SESSION["rola"]) && $_SESSION["rola"]=='A')
 {
        include("bodyU.html");;
}
 



include("db.php");

$conn=mysqli_connect($servername,$username,$password,$dbname);

if(!$conn){
    die("Connection failed: " . mysqli_connect_error());
}

$sql="SELECT * FROM uzytkownicy";

$result=mysqli_query($conn,$sql);




mysqli_close($conn);
?>