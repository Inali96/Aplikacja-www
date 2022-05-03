<?php


		$nazwa = $_POST["nazwa"];
		$obrazek = $_POST["obrazek"];
		$skladnik1 = $_POST["skladnik1"];
        $ilosc1=$_POST["ilosc1"];
		
		$krok1=$_POST["krok1"];
        $krok2=$_POST["krok2"];
        $krok3=$_POST["krok3"];
        $krok4=$_POST["krok4"];
        $krok5=$_POST["krok5"];
        $krok6=$_POST["krok6"];
        $krok7=$_POST["krok7"];
        $krok8=$_POST["krok8"];
        $krok9=$_POST["krok9"];
        $krok10=$_POST["krok10"];
           $kategoria=$_POST["kategoria"];
$artykul="";



$artykul.=$nazwa;
$artykul.='</h1>';
$artykul.=$skladnik1;

$artykul.=$ilosc1;

$artykul.=$krok1;
$artykul.=$krok2;
$artykul.=$krok3;
$artykul.=$krok4;
$artykul.=$krok5;
$artykul.=$krok6;
$artykul.=$krok7;
$artykul.=$krok8;
$artykul.=$krok9;
$artykul.=$krok10;
$artykul.='< style="text-align: center"><img src="';
$artykul.=$obrazek;
$artykul.='" />';
$artykul.=$kategoria;


include("db.php");

$conn = mysqli_connect($servername, $username,$password, $dbname);
//Check connection

if(!$conn){
    die("Connection failed: " . mysqli_connect_error());
}
$sql = "INSERT INTO przepisy (nazwa, obrazek, skladnik1,skladnik2,skladnik3,skladnik4,skladnik5,skladnik6,skladnik7,skladnik8,skladnik9,skladnik10, ilosc1,ilosc2,ilosc3,ilosc4,ilosc5,ilosc6,ilosc7,ilosc8,ilosc9,ilosc10, krok1, krok2, krok3, krok4, krok5, krok6, krok7, krok8, krok9, krok10,kategoria) VALUES (' ".$nazwa."','".$obrazek."','".$skladnik1."','".$ilosc1."','".$krok1."','".$krok2."','".$krok3."','".$krok4."','".$krok5."','".$krok6."','".$krok7."','".$krok8."','".$krok9."','".$krok10."','".$kategoria."')";
if(mysqli_query($conn,$sql)){


header("Location: dodanoprzepis.html");
exit();
    
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);

}
mysqli_close($conn);

?>