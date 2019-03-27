<?php

session_start();

function coBdd(){
    try {
        $bdd = new PDO('mysql:host=localhost;dbname=exerciceajax;charset=utf8', 'root', '');
        return $bdd;
    }
    catch(Exception $e) {
        die('Erreur : '.$e->getMessage());
    }
}

require_once('../model/modeleAjax.php');
$prenom = getPrenom($_POST["prenom"]);
echo $prenom->rowcount();