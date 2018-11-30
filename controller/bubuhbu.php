<?php

require_once('../model/modeleAjax.php');

$idContinent =  $_GET['idContinent'];

$pays = getPays($idContinent);

echo "<option value=\"none\">Sélectionnez votre pays</option>";
while($unPays = $pays->fetch()) {
    echo  "<option value=" . $unPays['id'] . ">" . $unPays['libelle'] . "</option>";
}