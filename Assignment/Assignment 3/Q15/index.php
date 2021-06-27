<?php
$fileName = basename("index.php");
$fileLastTouched = filemtime($fileName); 
echo "Last modified " . date("l, dS F, Y, h:ia", $fileLastTouched)."
";
?>