<html>
<head>
<?php
include "tema.php";
include "connessione.php";
$login='
<h3>LOGIN</h3>
<form action="eamministrazione.php" method="post">

Username <input type="text" id="txtNick" name="nick">
<br>
	
Password <input type="password" id="txtPsw" name="password">
<br>
	
<input type="submit" name="login" id="btnLogin" value="Login">
</form>
';
?>
	<title>Amministrazione</title>
	
	
	

	<link href="puls.css" rel="stylesheet" type="text/css">
</head>

<body>
<?php
echo $tema;
?>
	<div id="middle">	<div id="paginacentro">
<?php


if(isset($_REQUEST["cod"]))
{
    $n = $_REQUEST["cod"];
    if($n === "1")
    {
	echo $login;
        echo "Non sei admin! <br>" ;
    }
    if($n === "-1")
    {
	$leggicolSQL="select * from colsf";
	$result = mysqli_query($conn,$leggicolSQL);
	echo "<h3>Benvenuto Admin!</h3> <br>" ;
	echo "<button id='buttone' onClick='colsf()'>Colore Sfondo</button>"; 
	echo "<button id='buttone' onClick='window.open('');'>Titolo</button>";
	echo "<button id='buttone' onClick='window.open('Col_Sf.php');'>Sinistra</button>";
	echo "<button id='buttone' onClick='window.open('Col_Sf.php');'>Destra</button>";
	echo "<br><br> Seleziona colore sfondo:";
	echo "<table><tr>";
while($record = mysqli_fetch_assoc($result))
{
	
	echo "<tr>";
    echo "<td bgcolor='".$record["codice_col"]."'><br>".$record["nome_col"]."</td><td></td>";
    if($i===5)
	{echo "</tr>";}
	$i++;
}
	//echo '<form action="Col_Sf.php" method="post">';
        
	echo "</tr></table>";
?>
<script>
function colsf()
{
	var myWindow=window.open("","MsgWindow","width=200,height=100");
	myWindow.document.write("Colore");
}
</script>
<?php

	}
	
    }
    

else{

echo $login;

}
?>



</div></div>

	
</body>
</html>
