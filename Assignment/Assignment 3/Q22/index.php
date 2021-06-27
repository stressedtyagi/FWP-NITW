<?php
    $sample_array = [1, 2, 3, 4, 5];

    function insertElement($arr, $pos, $val) {
        $inserted = array($val);
        array_splice($arr, $pos, 0, $inserted);
        return $arr;
    }

    function printElements($arr) {
        $len = sizeof($arr);
        for ($i = 0; $i < $len; $i++) {
            echo $arr[$i] . " ";
        }
        echo "<br>";
    }

    $sample_array = insertElement($sample_array, 3, '$');
    printElements($sample_array);
?>