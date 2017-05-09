<!DOCTYPE html>
<?php
include "tema.php";
include "connessione.php";
?>
<html>
<head>
    <title>Messaggi</title>
    <link href="puls.css" rel="stylesheet" type="text/css">
</head>

<body>
<?php
echo $tema;
?>
<div id="middle"><div id="paginacentro"><div class="posts">

<h3>Scrivi un messaggio</h3>
    <form action="emessaggi.php" method="get">
    <input type="hidden" name="id" value="">
    Username* <input type="text" name="username" value="<?php ?>">
    <br>
    Email <input type="email" name="email">
    <br>
    Titolo <input type="text" name="titolo_msg">
    <br>
    Messaggio* <br>
    <textarea name="testo_msg" cols="50" rows="8"></textarea>
    
    <br>
    
    <input type="submit" name="aggiungi_msg" value="Invia">
        <?php






if(isset($_REQUEST["codice"]))
{
    $n = $_REQUEST["codice"];
    if($n === "1")
        echo "Non sei registrato, <a href=\"user.php\">Registrati</a> ora! <br>" ;
    if($n === "-1")
        echo "Messaggio inviato con successo! <br>" ;    
    
}
?>    

</form>

<?php
    $queryleggi = "select * from messaggi join utenti on id_utenti=fk_utente order by data_inserimento desc, ora_inserimento desc";
    $leggimsg = mysqli_query($conn,$queryleggi);
    echo "<table >";
    while($riga = mysqli_fetch_assoc($leggimsg))
    {
        echo " <tr><td width='500px'>";
        echo "<h3>".$riga["titolo_messaggio"]."</h3> ";
        echo $riga["username"]." - ". $riga["ora_inserimento"] ." - ". $riga["data_inserimento"];
        echo "<br>\n";
        
        echo $riga["testo_messaggio"];
        echo "</td></tr>";
        //echo "\n<hr>";
    }
    echo "</table>";
    mysqli_close($conn);
?>

</div></div></div>

</body>
</html>
