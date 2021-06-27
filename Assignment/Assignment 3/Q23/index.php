<?php
$arr = array("Sophia"=>"31","Jacob"=>"41","William"=>"39","Ramesh"=>"40");

function printArr($arr) {
    foreach ($arr as $key => $val) {
        echo $key . " : " . $val . "<br>";
    }
}

echo "<b>1) ascending order sort by value</b><br>";
asort($arr);
printArr($arr);
echo "<br>";
echo "<b>2) ascending order sort by Key</b><br>";
ksort($arr);
printArr($arr);
echo "<br>";
echo "<b>3) descending order sorting by Value</b><br>";
arsort($arr);
printArr($arr);
echo "<br>";
echo "<b>4) descending order sorting by Key</b><br>";
krsort($arr);
printArr($arr);
?>