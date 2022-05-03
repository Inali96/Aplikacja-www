<?php



   include("config.php");
   session_start();

   if($_SERVER["REQUEST_METHOD"] == "POST") {
      
      
      $login = mysqli_real_escape_string($db,$_POST['login']);
      $haslo = mysqli_real_escape_string($db,$_POST['haslo']); 
      
      $sql = "SELECT id,rola FROM uzytkownicy WHERE login = '$login' and haslo = '$haslo'";
      $result = mysqli_query($db,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      $active = $row['active'];
      
      $count = mysqli_num_rows($result);

      foreach ($result as $key) {
  		$_SESSION["rola"]=$key["rola"];
  
}
		
      if($count == 1) {
         $_SESSION['login']= $login;
      
         
         header("location: index.php");
      }else {

       $_SESSION["blad"] = '<p class="error">Nie prawidłowy login lub hasło!</p>';
               header("Location: index.php");

      }
   }
