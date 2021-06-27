<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Solution 4</title>
</head>

<body>
    <form action="index.php">
        <label for="name">Enter Name: </label>
        <input type="text" id="name" name="name" placeholder="Enter Name"> <br>
        <input type="submit" value="Submit">
    </form>
    <h2>
        <?php
        if (isset($_GET['name'])) {
            echo $_GET['name'];
        }
        ?>
    </h2>
</body>

</html>
