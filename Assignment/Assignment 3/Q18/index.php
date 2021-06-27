<?php
$colors = array("white", "green", "red");

foreach ($colors as $key => $color) {
    echo $color . ", ";
}
?>

<ul type="disk">
    <?php
        foreach($colors as $key => $color) {
            echo "<li>" . $color . "</li>";
        }
    ?>
</ul>