<?php
    session_start();
?>
<header id="first">
        <div class="header-content">
            <div class="inner">
                <h1 class="cursive">Bądź fit i zarejestruj się!</h1>
                <h4>Pomożemy Ci osiągnąć formę, o której marzysz</h4>
                <hr>
                <a href="#rejestracja" class="btn btn-primary btn-xl" class="page-scroll" data-toggle="modal">Zarejestruj się</a> &nbsp;   <a href="#logowanie" class="btn btn-primary btn-xl" class="page-scroll" data-toggle="modal">Zaloguj się</a> 
            </div>
        </div>
        <video autoplay="" loop=""  data-wow-delay="0.5s" poster="./assets/glowna2.jpg" id="video-background">
            
        </video>
    </header>

<div id="rejestracja" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <h2 class="text-center">Rejestracja</h2>
                <h5 class="text-center">
                    Zarejestruj się, aby korzystać z darmowych usług.
                </h5>

              <form class="form1" action="zarejestruj.php" method="post">
 
 <label>
    <p class="label-txt" >Podaj imię</p>
    <input type="text" class="input show" name="imie">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">Podaj nazwisko</p>
    <input type="text" class="input show" name="nazwisko">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
    <label>
    <p class="label-txt">Podaj email</p>
      <input type="text" class="input show" name="email" />
              <?php
                if(isset($_SESSION["e_email"]))
                {
                  echo '<div class="error"  style="color:blue;">'.$_SESSION["e_email"].'</div>';
                  unset($_SESSION["e_email"]);
                }
                
              ?>
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <label>
    <p class="label-txt">Podaj login</p>
      <input type="text" class="input show" name="login" />
              <?php
                if(isset($_SESSION["e_login"]))
                {
                  echo '<div class="error">'.$_SESSION["e_login"].'</div>';
                  unset($_SESSION["e_login"]);
                }
              ?>
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  
  <label>
    <p class="label-txt">Podaj hasło</p>
     <input type="password" class="input show" name="haslo">
              <?php
                if(isset($_SESSION["e_haslo"]))
                {
                  echo '<div class="error">'.$_SESSION["e_haslo"].'</div>';
                  unset($_SESSION["e_haslo"]);
                }
              ?>

    <label for="haslo"> <p class="label-txt">Powtórz hasło</p></label>
              <input type="password" class="input show" name="p_haslo">

    <input type="hidden" name="rola" value="U">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  
  <button type="submit">Zatwierdź</button>
</form>
                <br/>
                <button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true"> OK </button>
            </div>
        </div>
        </div>
    </div>

     <div id="logowanie" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <h2 class="text-center">Logowanie</h2>
                <h5 class="text-center">
                   Zaloguj się, aby korzystać z darmowych usług.
                </h5>
                            
<form action="logowanie.php" method="post" class="form1" style="color: black" >
  <label>
    <p class="label-txt">Podaj login</p>
    <input type="text"  class="input"name="login" >
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  
  <label>
    <p class="label-txt">Podaj hasło</p>
    <input type="password"   class="input" name="haslo">
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
<button type="submit" name="submit">Submit</button>
 <h2><?php
              if(isset($_SESSION["blad"]))
              { 
                echo $_SESSION["blad"];
              }
            ?>  
          </h2>
</form>
            
                <br/>
               
            </div>
        </div>
        </div>
    </div>



    <div id="onas" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-body">
                <h2 class="text-center">Fit apka</h2>
                
                
                <br/>
                <button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true">OK <i class="ion-android-close"></i></button>
            </div>
        </div>
        </div>
    </div>
 <section id="last" style="text-align: center">
        <div class="container-fluid">
            <div class="row">
                <div  style="text-align: center">
                    <h2  style="text-align: center">Masz pytanie? Napisz do nas!</h2>
                    <p>Wypełnij formularz, a my odezwiemy się najszybciej jak to możliwe.</p>
                </div>
                <a href="#galleryModal" class="gallery-box" >
                <div style="text-align: center">

                    <form action="wiadomosc.php" method="post" class="contact-form container-fluid" style="background-color: #282828">
                        <div class="col-md-4">
                            <label></label>
                            <input type="text" class="form-control" placeholder="imie" name="imie">
                        </div>
                        <div class="col-md-4">
                            <label></label>
                            <input type="text" class="form-control"  placeholder="email" name="email">
                        </div>
                        <div class="col-md-4">
                            <label></label>
                            <input type="text" class="form-control"  placeholder="telefon" name="telefon">
                        </div>
                        <div class="col-md-12">
                            <label></label>
                            <textarea class="form-control" rows="9" placeholder="Twoja wiadomoćć.." name="text"></textarea>
                        </div> 
                        <div class="col-md-4 col-md-offset-4">
                            <label></label>
                         <button type="submit" name="submit">Wyślj</button>

                        </div>
                    </form>
                </div></a>
            </div>
        </div>
    </section>
    <script src="./js/jquery.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script src="./js/jquery.easing.min.js"></script>
    <script src="./js/wow.js"></script>
    <script src="./js/scripts.js"></script>
    <script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
  </body>