<?php
    session_start();
    if(!isset($_SESSION['USER'])){
        header("Location: login.php");
        exit();
    }
?>
<!DOCTYPE .html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <?php include "elements/head.php"?>
    <title>Home</title>
</head>
<body>
    <?php include "elements/navbar.php"?>
    <?php include "elements/footer.php" ?>
</body>
</html>