
 <?php


$conn=mysqli_connect($servername,$username,$password,$dbname);

if(!$conn){
    die("Connection failed: " . mysqli_connect_error());
}


$login = $_SESSION['login'];



$sql="SELECT * FROM uzytkownicy WHERE login='$login' ";
$result=mysqli_query($conn,$sql);
if(mysqli_num_rows($result)>0)
{
    while($row=mysqli_fetch_assoc($result))
    {

    $imie = $row["imie"];

    $nazwisko = $row["nazwisko"];

    $email = $row["email"];

    $awatar = $row["awatar"];
$_SESSION['awatar']=$awatar;

  
$art="";

 $art.='<div id="profil" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <h2 class="text-center">Witaj '.$login.'</h2>
                <h5 class="text-center">
                    Tutaj możesz edytowac swoje dane osobowe.
                </h5>

   
                 
    </div>
 
        
 <div class="col-lg-6 col-sm-6">
         <img src="'.$awatar.'" height="200px" width="200px" />
                  </br>
 <a class="page-scroll" data-toggle="modal" title="Twój profil" href="#awat"> Zmień</a>
          </div>

          <div class="col-lg-6 col-sm-6 ">
           
              <h2 >Imię: '.$imie.' </h2> 

                        <h2 >Nazwisko: '.$nazwisko.' </h2>

                                  <h2 >Email: '.$email.' </h2>
                               
                                    <h2 ><a class="page-scroll" data-toggle="modal" title="Twój profil" href="#zmienh"> Zmień hasło</a></h2>
                                        <h2 ><a class="page-scroll" data-toggle="modal" title="Twój profil" href="#usunk"> Usuń konto</a></h2>
                          

      


          </div>
   


 
                <button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true"> OK </button>
            </div>
        </div>
        </div>
    </div>





























    <div id="awat" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <h3class="text-center">  
               
                <form method="POST" class="formback" action="awatar.php" enctype="multipart/form-data">
            <input type="file" name="awatar" >
 
             <br/>

                  <input type="submit" name="submit" >
            </from>
              
                

                
               
               
            </div>
        </div>
        </div>
    </div>

 <div id="usunk" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <h3class="text-center">  
                <h2>Na pewno chcesz usunąć konto?</h2> 
              <form class="form" action="usunk.php" method="post">
  
  <button type="submit">Zatwierdź</button>
</form>
               
            </div>
        </div>
        </div>
    </div>  

 <div id="zmienh" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <h3class="text-center">  
                <h2>Zmiana hasła</h2> 
                   
              <form class="form" action="noweh.php" method="post">
               <h2 class="error">Wpisz hasło aktywne</h2> 
  <input type="text" name="h1" >
   <h2 class="error">Wpisz nowe hasło</h2> 
                      <input type="text" name="h2" >
  <button type="submit">Zatwierdź</button>

</form>
                
        
                

                
               
               
            </div>
        </div>
        </div>
    </div>'
    ;



       echo $art;

  }
}

mysqli_close($conn);



    ?>