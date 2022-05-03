<?php
include("db.php");
include("header.html");
include("MENU.php");

$conn=mysqli_connect($servername,$username,$password,$dbname);

if(!$conn){
    die("Connection failed: " . mysqli_connect_error());
}


 
   $_SESSION['idprzepisu'] = $_GET["c"];
$id=$_GET["c"];
$sql="SELECT * FROM przepisy WHERE id='$id'";
$result=mysqli_query($conn,$sql);
if(mysqli_num_rows($result)>0)
{
	while($row=mysqli_fetch_assoc($result))
	{

		$nazwa = $row["nazwa"];
		$obrazek = $row["obrazek"];
		$skladnik1 = $row["skladnik1"];
        $ilosc1=$row["ilosc1"];

		$krok1=$row["krok1"];
        $krok2=$row["krok2"];
        $krok3=$row["krok3"];
        $krok4=$row["krok4"];
        $krok5=$row["krok5"];
        $krok6=$row["krok6"];
        $krok7=$row["krok7"];
        $krok8=$row["krok8"];
        $krok9=$row["krok9"];
        $krok10=$row["krok10"];
        $kategoria=$row["kategoria"];
		$id=$row["id"];

		$artykul="";
      $opinie="";
		$artykul.=' <section id="three" class="margin-top-50 col-lg-1"></section>
   <section id="three" class="margin-top-50 col-lg-10">

         ';
           

            $artykul.=' <h2 class="margin-top-0 text-primary text-center ">'.$nazwa.'</h2>    <hr class="primary"><br><br> ';

      $artykul.='<div class="col-lg-6 col-sm-6">

         <h2 class="margin-top-0 text-primary text-center ">Składniki</h2> <hr class="primary">
         <div class="col-lg-6 col-sm-6">
        <p> '.$skladnik1.'</p>
          </div>
          <div class="col-lg-6 col-sm-6 text-right">
             <p>'.$ilosc1.'</p>

          </div>
            </div>
  </div>
     ';


$artykul.='
         <div class="container" >
            <div class="row" >
                <div class="col-lg-6 col-sm-6 text-center" >
                   <a class="gallery-box" >';

                       $artykul.= '<img src="./assets/';
                       $artykul.=$obrazek;
                       $artykul.='" class="img-responsive" alt="Image 1" >
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>';
         
     
		$artykul.='<i><h2>'.$nazwa.'</h2></i></div>
                            </div>
                        </div>
                    </a>
                </div>';




		$opinie.='<div class="col-lg-12 col-sm-6">
<br>
        <h2 class="margin-top-0 text-primary text-center ">Przygotowanie krok po kroku</h2> <hr class="primary">
       

       
        <p>'.$krok1.'</p>
        
        <p>'.$krok2.'</p>
        <p>'.$krok4.'</p>
        <p>'.$krok5.'</p>
        <p>'.$krok6.'</p>
        <p>'.$krok7.'</p>
        <p>'.$krok8.'</p>
         <p>'.$krok9.'</p>
          <p>'.$krok10.'</p>
          </div>
          
        
          

                        
                       </div>
 '; 
 $opinie.='
                    
        <div class="col-lg-12 col-sm-6 text-left">
       
       
       
<h1 class="text-primary text-center">Opinie o przepisie</h1>
<hr class="primary">


</div>

 ';






	   echo $artykul;
      include("sekcjaocen.php");
echo $opinie;
include("sekcjakom.php");


   
		
  
  



	}
}else
mysqli_close($conn);

include("FOOTER.php");

?>