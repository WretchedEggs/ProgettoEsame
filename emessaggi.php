<?php

$usern = $_REQUEST["username"]; /*ricerca l'utente per username ed email*/
$email = $_REQUEST["email"];
$tit_msg = $_REQUEST["titolo_msg"];
$testo_msg = $_REQUEST["testo_msg"];

    $re=0;
    include "connessione.php";
    $coll = "select id_utenti from utenti where username='".$usern."' and email='".$email."' ";
  // echo $coll;
    $leggiutenti=mysqli_query($conn,$coll);
    
    $riga = mysqli_fetch_assoc($leggiutenti);
    $re=$riga["id_utenti"];
//echo $re;
//mysqli_close($conn);

    if($re==0)
    {
        header ("location:Messaggi.php?codice=1");
    }
    else{
        $x=time();
        $data_attuale = date('Y-m-d',$x);
        $ora_attuale = date('H:i:s',$x);
        $comando = "insert into messaggi(id_messaggio,fk_utente,testo_messaggio,titolo_messaggio,data_inserimento,ora_inserimento) values".
                "(null,'$re','$testo_msg','$tit_msg','$data_attuale','$ora_attuale')";
        mysqli_query($conn,$comando);
        mysqli_close($conn);
        header ("location:Messaggi.php?codice=-1");
        die();
        
    }
    
    
?>