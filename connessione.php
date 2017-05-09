<?php
    $hostname = "localhost";
    $username = "root";
    $pswDB = "";
    $namedb = "website";
    
    @$conn = mysqli_connect($hostname,$username,$pswDB,$namedb) or die("Errore: ".mysqli_connect_error());
?>