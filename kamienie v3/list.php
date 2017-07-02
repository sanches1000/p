<!DOCTYPE html>
<html lang="pl">
<head>
	<meta charset="UTF-8">
	<title>Wykaz</title>
	<link rel="stylesheet" href="data/style.css">
</head>

<body>

<div id="baner">
	<a href="http://facebook.com"><img src="data/logo.png" alt="Logo" id="logo"/></a>   <!--POPRAWIĆ!-->
	<h1>ZBIÓR KAMIENI</h1>
</div>
<div id="srodkowy">
<br>
<table border="1">
	<th>Id</th>
	<th>Nazwa</th>
	<th>Skład chemiczny</th>
	<th>Kolor</th>
	<th>Pochodzenie(id)</th>
	<th>Znaleziono</th>
	<th>Cena, zł</th>
	<th>Pudełko</th>
	<th>Nabyto</th>
	<th>Zakupiono(id)</th>
	<th>W zbiorze od</th>
	<th>Zdjęcie(id)</th>
	<th>Komentarz</th>
	<th>Aktualizacja</th>
<?php
$id_polaczenia=mysqli_connect('localhost', 'root', '', 'kamienie');
$id_polaczenia->set_charset('utf8');   //zmiana kodowania
mysqli_select_db($id_polaczenia, 'kamienie');
$zapytanie='SELECT wykaz.Id, wykaz.Nazwa, Sklad_chemiczny, Kolor, lokalizacje.Zrodlo AS Plan, Znaleziono, Cena, Pudelko, Nabyto, Zakupiono_id, W_zbiorze_od, zdjecia.Nazwa AS Zdjecie, wykaz.Komentarz, Aktualizacja FROM wykaz LEFT JOIN lokalizacje ON wykaz.Pochodzenie_id=lokalizacje.Id LEFT JOIN zdjecia ON wykaz.Zdjecie_id=zdjecia.Nazwa ORDER BY wykaz.Nazwa ASC;';
$wynik=mysqli_query($id_polaczenia, $zapytanie);   //<td>'.'<img height=50px src=images/'.$x['Zdjecie'].'>'.'</td>
	while($x=mysqli_fetch_array($wynik)) {
			echo '<tr>';
			 echo '<td>'.$x['Id'].'</td>
			 <td>'.$x['Nazwa'].'</td>
			 <td>'.$x['Sklad_chemiczny'].'</td>
			 <td>'.$x['Kolor'].'</td>
			 <td>'.$x['Plan'].'</td>
			 <td>'.$x['Znaleziono'].'</td>
			 <td>'.$x['Cena'].'</td>
			 <td>'.$x['Pudelko'].'</td>
			 <td>'.$x['Nabyto'].'</td>
			 <td>'.$x['Zakupiono_id'].'</td>
			 <td>'.$x['W_zbiorze_od'].'</td>
			 <td>'.'<a href=images/'.$x['Zdjecie'].'><img height=300px src=images/'.$x['Zdjecie'].'>'.'<a></td>
			 <td>'.$x['Komentarz'].'</td>			 
			 <td>'.$x['Aktualizacja'].'</td>';
			echo '</tr>';
	}
mysqli_close($id_polaczenia);
?>
</table>
</div>
<div id="stopka">	
	<h6>28.06.2017</h6>
</div>

</body>
</html>
