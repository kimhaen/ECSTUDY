PHP
=======
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
NULL CHECK
-------
＊ [is_null()](https://www.php.net/manual/en/function.is-null.php)
＊ [isset()](https://www.php.net/manual/en/function.isset.php)
#####  is_null() example
~~~~PHP
<?php

error_reporting(E_ALL);

$foo = NULL;
var_dump(is_null($inexistent), is_null($foo));

?>
~~~~~
#####  isset() example
~~~~PHP
<?php

$var = '';

// This will evaluate to TRUE so the text will be printed.
if (isset($var)) {
    echo "This var is set so I will print.";
}

// In the next examples we'll use var_dump to output
// the return value of isset().

$a = "test";
$b = "anothertest";

var_dump(isset($a));      // TRUE
var_dump(isset($a, $b)); // TRUE

unset ($a);

var_dump(isset($a));     // FALSE
var_dump(isset($a, $b)); // FALSE

$foo = NULL;
var_dump(isset($foo));   // FALSE

?>
~~~~
