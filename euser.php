<?php
//session_start();

include "connessione.php";
$password = $_REQUEST["password"];
$nickname = $_REQUEST["nick"];
$data_nascita = $_REQUEST["data_nascita"];
$sesso = $_REQUEST["sesso"];
$email = $_REQUEST["email"];



$file_temp=($_FILES['userfile']['tmp_name']);
$percorso="immagini/";
$nuovo_nome=$percorso.$_FILES['userfile']['name'].".png";
$inviato=file_exists($file_temp);
if($inviato)
{
move_uploaded_file($file_temp,$nuovo_nome);

    header("Location: user.php");
 
}
else{
    //errore
}


/*if(!isset($_FILES["userfile"])||!is_uploaded_file($_FILES["userfile"]["tmp_name"])){
    echo "nessun file";
}
var_dump( $_FILES);

$ext_ok=array('png','jpg','gif','jpeg');
$temp=explode('.',$_FILES['userfile']['name']);

var_dump($temp);

$ext=end($temp);
if(!in_array($ext_ok)){
    echo "estensione sbagliata";
}

$upleaddir='/immagini';
$userfile_tmp=$_FILES["userfile"]["tmp_name"];
$userfile_name=$_FILES["userfile"]["name"];
if(move_uploaded_file($userfile_tmp,$upleaddir.$userfile_name)){
    echo "hello";
}
*/
$queryleggi = "select count(*) as ci from utenti where username='".$nickname."' or email='".$email."';";
$leggiutenti = mysqli_query($conn,$queryleggi);
/*$riga=mysqli_fetch_assoc($leggiutenti);
echo $riga;*/
while($riga = mysqli_fetch_assoc($leggiutenti))
{
   $re=$riga["ci"];
}
if($re=='0')
{
    $comando = "insert into utenti(id_utenti,username,password,livello_accesso,data_nascita,sesso,link_foto,email) values".
            "(null,'$nickname','$password','0','$data_nascita','$sesso',null,'$email')";
            //echo $comando;
            
mysqli_query($conn,$comando);

mysqli_close($conn);
//isset
//$_SESSION["id"] = 
header ("location:user.php?cod=-1");


}
else
{
header ("location:user.php?cod=1"); 
}
/*while($riga = mysqli_fetch_assoc($leggiutenti))
{
    if($riga["email"]!==$email && $riga["username"]!==$nickname)
    {
        header ("location:euser.php?cod=-1"); //-1=Successo
        
    }
    
    if($riga["username"]==$nickname)
    {
            header ("location:user.php?cod=1"); //1=Username gia in uso
                
    }
    
    if($riga["email"]==$email)
    {
            header ("location:user.php?cod=2"); //2=Email gia in uso
                
    }
    
    
}
*/

    
?>

