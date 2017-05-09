<!DOCTYPE html>
<?php
include "tema.php";
?>


<html>
<head>
    <title>Account</title>
    <link href="puls.css" rel="stylesheet" type="text/css">
</head>

<body>
<?php
echo $tema;
?>
<div id="middle"><div id="paginacentro">

 <h3>Register</h3>
    <form enctyp="multipart/form-data" action="euser.php" method="post">
        
    Username <input type="text" name="nick">
    <br>
    Password <input type="password" name="password">
    <br>
    Data di nascita <input type="date" name="data_nascita">
    <br>
    Sesso <input type="radio" name="sesso" value="M">M
    <input type="radio" name="sesso" value="F">F
    <input type="radio" name="sesso" value="N" checked="checked">N
    <br>
    Email <input type="email" name="email">
    <br>
    Foto Profilo <!--<input type="hidden" name="MAX_FILE_SIZE" value="30000">--><input name="userfile" type="file" id="foto">
    <!-- Link Foto <input type="text" name="nick" value="http://jpnselangor.moe.gov.my/jpict/images/User-icon.png">  -->
    <br>
    <br>


    <input type="submit" name="registra" value="Invia">
</form>
<?php






if(isset($_REQUEST["cod"]))
{
    $n = $_REQUEST["cod"];
    if($n === "1")
        echo "Username o email gia' registrate! <br>" ;
    if($n === "-1")
        echo "Registrazione avvenuta con successo! <br>" ;    
    
}
?>    
</div></div>



</body>
</html>
