<?php
$db_hostname = 'localhost';
$db_username = 'root';
$db_password = '';
$db_database = 'fitwww';
include("header.html");
include("MENU.php");
    

// Database Connection String
$con = mysqli_connect($db_hostname,$db_username,$db_password,$db_database);
if (!$con)
  {
  die('Could not connect: ' . mysqli_error());
  }

mysqli_select_db( $con,$db_database);
?>

  
<?php
if (!empty($_REQUEST['term'])) {

$term = $con -> real_escape_string($_REQUEST['term']);     


echo'<section class="bg-primary" id="two">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="margin-top-0 text-primary">Wyniki wyszukiwania</h2>';
 
			echo "<p> Przepisy, które zawierają: " . $term . "</p>";
			 
                   echo' <hr class="primary">
                </div>
            </div>
        </div>';

$sql = "SELECT * FROM przepisy WHERE skladnik1 LIKE '%".$term."%' "; 
$r_query = mysqli_query($con,$sql); 

while ($row = mysqli_fetch_array($r_query)){  
	
$artykul="";

		$nazwa = $row["nazwa"];
		$obrazek = $row["obrazek"];
        
		$id=$row["id"];
       
		$artykul.='<div class="container">';
			
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
                </div> ';
 
		
  echo $artykul; 
}  

}

include("FOOTER.php");
?>
