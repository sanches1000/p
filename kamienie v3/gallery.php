 <html>
<head>
<style>
.gallery {
    margin: 10px;
    border: 4px solid #ccc;
    float: left;
    width: 300px;
	height: 300px;
}

.gallery:hover {
    border: 4px solid #0A0A0A;
}

.gallery img {
    width: 100%;
    height: auto;
}

.desc {
    padding: 15px;
    text-align: center;
}
</style>
</head>
<body>
<!-- https://www.w3schools.com/css/css_image_gallery.asp - stąd mam galerię-->
<div id="srodkowy">
<br>
<?php
$id_polaczenia=mysqli_connect('localhost', 'root', '', 'kamienie');
$id_polaczenia->set_charset('utf8');   //zmiana kodowania
mysqli_select_db($id_polaczenia, 'kamienie');
$zapytanie='SELECT wykaz.Id, wykaz.Nazwa, Sklad_chemiczny, Kolor, lokalizacje.Zrodlo AS Plan, Znaleziono, Cena, Pudelko, Nabyto, Zakupiono_id, W_zbiorze_od, zdjecia.Nazwa AS Zdjecie, wykaz.Komentarz, Aktualizacja FROM wykaz LEFT JOIN lokalizacje ON wykaz.Pochodzenie_id=lokalizacje.Id LEFT JOIN zdjecia ON wykaz.Zdjecie_id=zdjecia.Nazwa ORDER BY wykaz.Nazwa ASC;';
$wynik=mysqli_query($id_polaczenia, $zapytanie);   //<td>'.'<img height=50px src=images/'.$x['Zdjecie'].'>'.'</td>
	while($x=mysqli_fetch_array($wynik)) {
			echo '<div class="gallery">';
			echo '  <a href=images/'.$x['Zdjecie'].'>';
			echo '    <img src=images/'.$x['Zdjecie'].' alt="Kamień">';
			echo '  </a>';
			echo '<div class="desc">'.'Nr '.$x['Id'].', '.$x['Nazwa'].'</div>';
			echo '</div>';		
	}
	
mysqli_close($id_polaczenia);
?>
</div>

</body>
</html> 