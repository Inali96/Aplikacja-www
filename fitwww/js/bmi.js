/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function obliczanieBMI() 
{
    
var waga = document.formularz.waga.value;
var wzrost = document.formularz.wzrost.value;

if(waga > 40 && wzrost > 100){
    
var wynikbmi = waga/(wzrost/100*wzrost/100);
document.formularz.bmi.value = wynikbmi;

if(wynikbmi < 18.5){
document.formularz.znaczenie.value = "Jesteś wychudzony";
}
if(wynikbmi > 18.5 && wynikbmi < 25){
document.formularz.znaczenie.value = "Masz poprawną wagę";
}
if(wynikbmi > 25){
document.formularz.znaczenie.value = "Masz grube kości";
}
}
else{
alert("Wypełnij pola poprawnie. Waga musi być powyżej 40kg, a wzrost powyżej 100cm");
}
};




