<nav class = "navbar navbar-default">
    <div class = "container-fluid">
        <div class="navbar-header">
            <a href="index.php" class="navbar-brand"><b>SAMPLE LOGIN FORM</b></a>
        </div>
        <?php if(isset($_SESSION['USER'])):?>
        <ul>
            <li class="navbar-brand"> | LOGIN SUCCESSFUL</li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                    <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                    <?=$_SESSION['USER']['fname'];?>
                    <span class="caret"></span> 
                </a>
                <ul class="dropdown-menu">
                    <li><a href="logout.php">Logout<span class="glyphicon glyphicon-log-out" aria-hidden="true" style="padding:10px;"></span></a></li>
                </ul>
            </li>
        </u>
    <?php endif;?>
    </div>
</nav>