<?php

require_once('../model/modeleAjax.php');

$idPays =  $_GET['idPays'];

$ville = getVille($idPays);

echo "<option value=\"none\">Sélectionnez votre ville</option>";
while($unVille = $ville->fetch()) {
    echo  "<option value=" . $unVille['id'] . ">" . $unVille['libelle'] . "</option>";
}