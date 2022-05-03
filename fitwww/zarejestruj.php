<?php
	session_start();
$imie=$_POST["imie"];
$nazwisko = $_POST["nazwisko"];
$rola = $_POST["rola"];
	if (isset($_POST["email"]))
	{
	  // udana walidacja (sprawdzenie poprawnosci danych)
	  $wszystko_ok=true;

	  // sprawdzenie loginu
	  $login = $_POST["login"];
	  //sprawdzenie dlugosci loginu 
	  if((strlen($login) < 3) || (strlen($login)>20))   
	  {
	  	$wszystko_ok = false;
	  	$_SESSION["e_login"] = "Login musi posiadać od 3 do 20 znaków!"; 
	  }

	  if(ctype_alnum($login) == false)
	  {
	  	$wszystko_ok = false;
	  	$_SESSION["e_login"] = "Login musi składać się tylko z liter i cyfr (bez polskich znaków)";
	  }

	  // sprawdzenie poprawności email
	  $email = $_POST["email"];
	  $email_safe = filter_var($email, FILTER_SANITIZE_EMAIL);

	  if((filter_var($email_safe, FILTER_VALIDATE_EMAIL) == false) || ($email_safe!=$email))
	  {
	  	$wszystko_ok = false;
	  	$_SESSION["e_email"] = "Podaj poprawny email!";
	  }	

	  //sprawdzenie poprawności hasła

	  $haslo = $_POST["haslo"];
	  $p_haslo = $_POST["p_haslo"];

	  if((strlen($haslo)  < 8) || (strlen($haslo) > 20))
	  {
	  	$wszystko_ok = false;
	  	$_SESSION["e_haslo"] = "Hasło musi składać się od 8 do 20 znaków";
	  }

	  if($haslo != $p_haslo)
	  {
	  	$wszystko_ok = false;
	  	$_SESSION["e_haslo"] = "Hasła nie są identyczne";
	  }
	  
	  $haslo_hash = password_hash($haslo, PASSWORD_DEFAULT); 

	  //akceptacja regulaminu
	  

	  include("db.php");
	  mysqli_report(MYSQLI_REPORT_STRICT);

	  try
	  {
	  	$conn = mysqli_connect($servername, $username, $password, $dbname);
	  	if (!$conn) 
		{
 	 		throw new Exception(mysqli_connect_errno()); //blad serwera wyswietlenie wyjatku
		}
		else
		{
			// czy email juz istnieje
			$sql = "SELECT id FROM uzytkownicy WHERE email = '$email'";
			$result = mysqli_query($conn, $sql); 
			if(!$result) throw new Exception(mysqli_error($conn));

			$ile_maili = mysqli_num_rows($result);
			if($ile_maili > 0)
			{
				$wszystko_ok = false;
	  			$_SESSION["e_email"] = "Istnieje już konto z podanym e-mail!";
			}

			// czy login juz istnieje
			$sql = "SELECT id FROM uzytkownicy WHERE login = '$login'";
			$result = mysqli_query($conn, $sql); 
			if(!$result) throw new Exception(mysqli_error($conn));
			
			$ile_loginow = mysqli_num_rows($result);
			if($ile_loginow > 0)
			{
				$wszystko_ok = false;
	  			$_SESSION["e_login"] = "Istnieje już konto z podanym loginem!";
			}

			if($wszystko_ok == true)
			{
			  	//wszystko okey dodano uzytkownika do bazy danych
			  	$sql = "INSERT INTO uzytkownicy(imie,nazwisko, email, login, haslo, rola) VALUES ('".$imie."','".$nazwisko."','".$email."','".$login."','".$haslo."','".$rola."')";
			  	if(mysqli_query($conn, $sql))
			  	{
			  		$_SESSION["udana_rejestracja"] = true;
			  				header("Location: index.php");
			  	}
			  	else
			  	{
			  		throw new Exception(mysqli_error($conn));
			  	}
				  
			}
			else{
				header("Location: index.php");
			}
			mysqli_close($conn);
		}
		
	  }
	  catch(Exception $e)
	  {
	  	echo "Błąd serwera <br/>"; 
	  	echo $e;
	  }
	}
?>