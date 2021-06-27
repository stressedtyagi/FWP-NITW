<?php
$array1 = array(array(77, 87), array(23, 45));
$array2 = array("w3resource", "com");
function mergeArray($arr1, $arr2)
{
    $tmp = array();
    $tmp[] = $arr1;
    if (is_scalar($arr2)) {
        $tmp[] = $arr2;
    } else {
        foreach ($arr2 as $key => $value) {
            $tmp[] = $value;
        }
    }
    return $tmp;
}
echo '<pre>';
print_r(array_map('mergeArray', $array2, $array1));
echo "</pre>";
?>