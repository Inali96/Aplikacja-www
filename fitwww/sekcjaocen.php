 
  <?php
include("db.php");

$conn=mysqli_connect($servername,$username,$password,$dbname);

if(!$conn){
    die("Connection failed: " . mysqli_connect_error());
}


   
$id=$_GET["c"];
$sql="SELECT ROUND(AVG(ocena) ,1)  FROM oceny WHERE idprzepisu ='$id'";
$result=mysqli_query($conn,$sql);
if(mysqli_num_rows($result)>0)
{
	while($row=mysqli_fetch_assoc($result))
	{

		
		$ocena= $row['ROUND(AVG(ocena) ,1)'];







$art="";


$art.='<div class="cent nav navbar-nav dropdown show">
                      <li > 
                    <a class="btn btn-secondary dropdown-toggle " role="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"   >   <h2 class="ocen">'.$ocena.'</h2>    
                        	<img src="ocena.png"
                    width="110" height="110"></a>
				

                                      <ul class="center nav2  navbar-default dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                   <li><a  class=" nav2 dropdown-item show " href="ocena/ocenyselect1.php">1</a></li>
                                 <li><a class="dropdown-item show" href="ocena/ocenyselect2.php"">2</a></li>
                            <li><a class="dropdown-item show" href="ocena/ocenyselect3.php"">3</a></li>
                             <li><a class="dropdown-item show" href="ocena/ocenyselect4.php"">4</a></li>
                              <li><a class="dropdown-item show" href="ocena/ocenyselect5.php"">5</a></li>
                        </ul>
                          <li> 

                    </div>';

		echo $art;

	}
}

mysqli_close($conn);






     
