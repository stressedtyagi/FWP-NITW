<?php
    $servername = "localhost";
    $username = "root";
    $pass = "";
    $database = "manager";
    $conn = mysqli_connect($servername,$username,$pass,$database);
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
?>
