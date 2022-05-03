/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function tluszczu() 
{
  function find(id)
    {
        return document.getElementById(id);
    }
  
  var waist3 = find("waist3").value ;
  var weight3 = find("weight3").value ;
  var result1=0;
  var result2=0;
  var result3=0;
  var result4=0;
  var result5=0;
  var wynik=0;

 if (find("male3").checked)
  {
    result1=4.15*waist3;
    result2=result1/2.54;
    result3=0.082*weight3*2.2;
    result4=result2-result3-98.42;
    result5=weight3*2.2;
    wynik=result4/result5*100;
    }
  
  else if (find("female3").checked)
  {
    result1=4.15*waist3;
    result2=result1/2.54;
    result3=0.082*weight3*2.2;
    result4=result2-result3-76.76;
    result5=weight3*2.2;
    wynik=result4/result5*100;
  }

find("wynik").innerHTML = Math.round( wynik );
};

function reset3()
 {
   waist3.value = null;
   weight3.value = null;
}
/*Przykład:
Masa ciała: 80 kg
Obwód pasa (talii): 100 cm
Płeć: Mężczyzna
Krok nr 1: oblicz „a” a = 4,15* obwód pasa (talii) a = 4,15 * 100 cm a = 415
Krok nr 2 oblicz „b” b = a / 2,54 b = 415 / 2,54 b= 163,38
Krok nr 3 oblicz „c” c = 0,082 * masa ciała * 2,2 c = 0,082 * 80 kg * 2,2 c= 14,43
Krok nr 4 oblicz „d” d = b – c – 98,42 (dla kobiet b – c - 76,76 ) d = 163,38 - 14,43 - 98,42 d= 50,53
Krok nr 5 oblicz „e” e = masa ciała * 2,2 e = 80 kg * 2,2 e= 176
Krok nr 6 oblicz „wynik” Wynik = d/e * 100 Wynik = 50,53/176 * 100 Wynik= 28,71% +/- ~3 %*/

function calsPerDay() 
{
  function find(id) 
  { 
    return document.getElementById(id);
  }

  var age2 = find("age2").value;
  var height2 = find("height2").value ;
  var weight2 = find("weight2").value ;
  var result = 0;
  
  if (find("male").checked) 
    result = ((10*weight2) +(6.25*height2)-(5*age2)-161)*1.7;
  else if (find("female").checked)
    result = 665.09 + (9.56 * weight2) + (1.84 * height2 - (4.67 * age2));
  find("totalCals").innerHTML = Math.round( result );
}
function reset2() 
{
   age2.value = null;
   height2.value = null;
   weight2.value = null;

 
}

/*PPM = 10x 55kg + 6,25x 168cm - 5x35 lat – 161 = 1264kcal

Zapotrzebowanie kaloryczne (CPM) = 1264kcal x 1,7 ( PAL) = 2148,8 kcal.*/