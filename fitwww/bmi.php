
<?php
if(isset($_SESSION["rola"]) && $_SESSION["rola"]=='U'){
    echo'
    <div id="panel" class="login-box" style="top:55%" >
  <form name="formularz">
    <div class="user-box">
      <h2 style="color: #008c19; text-align: center"> Kalkulator BMI</h2>
      Twoja waga(kg)<input type="text" name="waga" size="10" style="border-bottom-color: red; text-align: center;"><br />
      Twój wzrost(cm)<input type="text" name="wzrost" size="10" style="border-bottom-color: red; text-align: center;"><br />
    </div>
    <a  onClick="obliczanieBMI()"><span></span> <span></span> <span></span> <span></span> Oblicz swoje BMI </a><br><br><br>
    <div class="user-box">
      Twoje BMI <input type="text" name="bmi" size="10" style="border-bottom: none; text-align: center;""><br />
      Oznacza to, że <input type="text" name="znaczenie" size="25" style="border-bottom: none; text-align: center;"><br />
    </div>
    <a  ><span></span> <span></span> <span></span> <span></span> Wyczyść </a>
  </form>
  <br> <br>

</div>
    ';  }

if(isset($_SESSION["rola"]) && $_SESSION["rola"]=='A'){
    echo'
    <div id="panel" class="login-box" style="top:55%" >
  <form name="formularz">
    <div class="user-box">
      <h2 style="color: #008c19; text-align: center"> Kalkulator BMI</h2>
      Twoja waga(kg)<input type="text" name="waga" size="10" style="border-bottom-color: red; text-align: center;"><br />
      Twój wzrost(cm)<input type="text" name="wzrost" size="10" style="border-bottom-color: red; text-align: center;"><br />
    </div>
    <a  onClick="obliczanieBMI()"><span></span> <span></span> <span></span> <span></span> Oblicz swoje BMI </a><br><br><br>
    <div class="user-box">
      Twoje BMI <input type="text" name="bmi" size="10" style="border-bottom: none; text-align: center;""><br />
      Oznacza to, że <input type="text" name="znaczenie" size="25" style="border-bottom: none; text-align: center;"><br />
    </div>
    <a  ><span></span> <span></span> <span></span> <span></span> Wyczyść </a>
  </form>
  <br> <br>

</div>
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