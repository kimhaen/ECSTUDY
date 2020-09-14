method of  Combination
-----
~~~~php
//Array
$array = array("A", "B", "C");         
echo $array[0].$array[1].$array[2]; //Result :ABC

$new = $array[0].$array[1].$array[2]."Hi";
echo $new; //Result : ABC Hi!!

//Number
$num1 = 1;
$num2 = 2;
$num3 = $num1 + $num2 ; //Calculate
$num4 = $num1.$num2;  // Binding Together ★
echo $num3; //Result : 3
echo $num4; //Result : 12
~~~~~
