<?php
if (!empty($_SERVER['HTTPS'])) {
    echo 'Page is called from HTTPS';
} else {
    echo 'Page is called from HTTP';
}
echo "<br>";
?>