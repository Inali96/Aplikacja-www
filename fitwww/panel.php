<?php
include("db.php");
include("header.html");
include("menuA.php");
   session_start();


?>

<section id="three" class="margin-top-50 col-lg-1"></section>
   <section id="three" class="margin-top-50 col-lg-10">

      
           

         <h2 class="margin-top-0 text-primary text-center ">[PANEL STEROWANIA ADMINA]</h2>    <hr class="primary"><br><br>

   <div class="col-lg-6 col-sm-6">

         <h2 class="margin-top-0 text-primary text-center ">Wiadomośći</h2> <hr class="primary">
         <div class="col-lg-6 col-sm-6">


<?php

$conn=mysqli_connect($servername,$username,$password,$dbname);

if(!$conn){
    die("Connection failed: " . mysqli_connect_error());
}


$sql="SELECT * FROM wiadomosci";

$result=mysqli_query($conn,$sql);
if(mysqli_num_rows($result)>0)
{
  while($row=mysqli_fetch_assoc($result))
  {
  $id=$row["id"];
    $imie = $row["imie"];
    $telefon = $row["telefon"];
      $email = $row["email"];
 $tresc = $row["tresc"];


  $wiadomosci="";

$wiadomosci.='<p>Dane:    '.$imie. '  '.$telefon.' '.$email.'</p>' ;
$wiadomosci.='<p>Treść:   '.$tresc.'</p>';


    
echo $wiadomosci;
echo '<button><a href="usunw.php?id='.$row["id"].'"> Usun</a></br></button>';
  }
}

mysqli_close($conn);


?>
 </div>
        
            </div>
  </div>

  <div class="col-lg-6 col-sm-6">

         <h2 class="margin-top-0 text-primary text-center ">Zgłoszenia</h2> <hr class="primary">
         <div class="col-lg-6 col-sm-6">




<?php

$conn=mysqli_connect($servername,$username,$password,$dbname);

if(!$conn){
    die("Connection failed: " . mysqli_connect_error());
}


$sql="SELECT * FROM zgloszenia";

$result=mysqli_query($conn,$sql);
if(mysqli_num_rows($result)>0)
{
  while($row=mysqli_fetch_assoc($result))
  {

    $login = $row["login"];
    $idprzepisu = $row["idprzepisu"];
 $tresc = $row["tresc"];


  $wiadomosci="";

$wiadomosci.='<p class="error">Osoba zgłoszona:'.$login. '</p>' ;
$wiadomosci.='<p>Treść komentarza:'.$tresc.'</p>';

    
echo $wiadomosci;
echo '<button><a href=wyswietlart.php?c='.$idprzepisu.'"> Idz do komentarza</a></br></button>';
echo '<button><a href="usunzgl.php?id='.$row["id"].'"> Usun zgłoszenie</a></br></button>';
  }
}

mysqli_close($conn);
?>
          </div>
        
            </div>




<div class="col-lg-12 col-sm-6">
<br>

        <h2 class="margin-top-0 text-primary text-center ">Baza użytkowników</h2> <hr class="primary">
       

       <center>
        <table>
  <tr>
    <th><p>Id</p></th>
    <th><p>Imie</p></th>
    <th><p>Nazwisko</p></th>
     <th><p>Login</p></th>
     <th><p>Email</p></th>

  </tr>

<?php

$conn=mysqli_connect($servername,$username,$password,$dbname);

if(!$conn){
    die("Connection failed: " . mysqli_connect_error());
}
   

$sql="SELECT * FROM uzytkownicy";
  
$result=mysqli_query($conn,$sql);
if(mysqli_num_rows($result)>0)
{
  while($row=mysqli_fetch_assoc($result))
  {

    $id = $row["id"];
    $imie = $row["imie"];
 $nazwisko = $row["nazwisko"];
  $login = $row["login"];
    $email = $row["email"];
   

  $wiadomosci="";
$wiadomosci.='<tr>
    <td><p>' .$id.'</p></td>
    <td><p>' .$imie.'</p></td>
    <td><p>' .$nazwisko.'</p></td>
      <td><p>' .$login.'</p></td>
    <td><p>' .$email.'</p></td>
 
      <td><button><a href="usunuz.php?id='.$row["id"].'"> Usun użytkownika</a></br></button></td>
  </tr>
  ';


    
echo $wiadomosci;

  }
}

mysqli_close($conn);
?>
  
 
</table>
         </center>   
        
          

                        
                       </div>


                    
        <div class="col-lg-12 col-sm-6 text-left">
       
       
       



</div>



    
   




    

  







<?php
include("FOOTER.php");

?>