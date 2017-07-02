<!DOCTYPE html>
<html lang="pl">
<head>
	<meta charset="UTF-8" />
	<title>Mail</title>
</head>

<body>
<?php
// By to działało na CBA trzeba tam mieć konto e-mail i wpisać go do $headers
// https://www.cba.pl/pl/pomoc

// In case any of our lines are larger than 70 characters, we should use wordwrap()
// $message = wordwrap($message, 70, "\r\n");

$adres=$_POST['adres'];
$temat=$_POST['temat'];
$wiadomosc=$_POST['wiadomosc'];

if (mail('sanches1000@gmail.com', $temat, $adres.' '.$_POST['wiadomosc'], 'From: sanches@sanches.cba.pl'))
{
	echo "Wysłałem maila z danymi:";
	echo '<br>';
	echo "Temat: "."$temat";
	echo '<br>';
	echo "Od kogo: "."$adres";
	echo '<br>';	
	echo "Wiadomość: ", "$wiadomosc";
	echo '<br>';	
	echo "Dziękuję!";
}
else
{
echo "Mail nie został wysłany!";
}
?>
</body>
</html>