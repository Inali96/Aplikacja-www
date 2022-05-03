<?php
include("db.php");
include("header.html");
include("MENU.php");
$conn=mysqli_connect($servername,$username,$password,$dbname);

if(!$conn){
    die("Connection failed: " . mysqli_connect_error());
}
echo'<section class="bg-primary" id="two">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="margin-top-0 text-primary">Ciasta - bez laktozy</h2>
                    <hr class="primary">
                </div>
            </div>
        </div>';

$sql ="SELECT * FROM przepisy WHERE kategoria = 'ciastobezlaktozy'";
$result=mysqli_query($conn,$sql);



if(mysqli_num_rows($result)>0 )
{

	while($row=mysqli_fetch_assoc($result))
	{
      


		$nazwa = $row["nazwa"];
		$obrazek = $row["obrazek"];
        
		$id=$row["id"];
       
		$artykul="";

        $artykul.='
         <div class="container" >
            <div class="row" >

                <div class="col-lg-4 col-md-4 text-center" >';

               
    
    		   $id=$row["id"];
               $artykul.='<a href="wyswietlart.php?c='.$id.'" class="gallery-box" >';
 			   
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
 

		
  echo $artykul;
	}

}
mysqli_close($conn);

include("FOOTER.php");

?>