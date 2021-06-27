<?php
$filename = basename("demo.txt"); 
$numOfLines = count(file($filename)); 
echo "<h3>There are $numOfLines lines in $filename</h3>";
?>