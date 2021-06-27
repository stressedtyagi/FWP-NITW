<form action="index.php" method="GET">
    <label for="email">Email: </label>
    <input type="text" id="email" name="email">
    <input type="submit" value="validate">
</form>

<?php
if (!empty($_GET['email'])) {
    $email = $_GET['email'];

    if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo '"' . $email . '" is a valid email address.' . "\n";
    } else {
        echo '"' . $email . '" is a invalid email address.' . "\n";
    }
}

?>