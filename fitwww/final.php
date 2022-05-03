<?php
$db_hostname = 'localhost';
$db_username = 'root';
$db_password = '';
$db_database = 'fitwww';

    

// Database Connection String
$con = mysqli_connect($db_hostname,$db_username,$db_password,$db_database);
if (!$con)
  {
  die('Could not connect: ' . mysqli_error());
  }

mysqli_select_db( $con,$db_database);
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body>
<form action="" method="post">  
Search: <input type="text" name="term" /><br />  
<input type="submit" value="Submit" />  
</form>  
<?php
if (!empty($_REQUEST['term'])) {

$term = $con -> real_escape_string($_REQUEST['term']);     

$sql = "SELECT * FROM przepisy WHERE kategoria LIKE '%".$term."%'"; 
$r_query = mysqli_query($con,"SELECT * FROM przepisy WHERE kategoria LIKE '%".$term."%'"); 

while ($row = mysqli_fetch_array($r_query)){  

echo '<br /> Code: ' .$row['nazwa'];  
echo '<br /> Description: '.$row['kategoria'];   
}  

}
?>
    </body>
</html>