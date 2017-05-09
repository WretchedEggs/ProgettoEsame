<?php
include "connessione.php";
$password = $_REQUEST["password"];
$nickname = $_REQUEST["nick"];

$user = ""; 
$pass = "";
$lvlAccesso = 0;

$qut = "SELECT * FROM utenti where livello_accesso='2'";
$lut = mysqli_query($conn,$qut);
while($riga = mysqli_fetch_assoc($lut))
{
    $user = $riga["username"];
    $pass = $riga["password"];
}

if($password===$pass && $nickname===$user)
{
    header ("location:Amministrazione.php?cod=-1"); //SEI ADMIN 
}
else{
    header ("location:Amministrazione.php?cod=1"); // NON SEI ADMIN
}
/*
$qut = "select count(*) as ci from utenti where username='".$nickname."' and password='".$password."';";
//echo $qut;
$lut = mysqli_query($conn,$queryleggi);
/*$riga=mysqli_fetch_assoc($leggiutenti);
echo $riga;*/
/*while($riga = mysqli_fetch_assoc($lut))
{
    $re=$riga["ci"];
}
if($re==='0')
{
    
header ("location:Amministrazione.php?cod=1"); // NON SEI ADMIN


}
else
{
   header ("location:Amministrazione.php?cod=-1"); //SEI ADMIN 
}
*/
?>