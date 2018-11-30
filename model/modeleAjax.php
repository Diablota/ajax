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

function getContinent() {
    $bdd = coBdd();
    $reponse = $bdd->prepare('SELECT * FROM continent');
    $reponse->execute();
    return $reponse;
}

function getPays($continentId) {
    $bdd = coBdd();
    $reponse = $bdd->prepare('SELECT * FROM pays WHERE continentId = ' . $continentId);
    $reponse->execute();
    return $reponse;
}

function getVille($paysId) {
    $bdd = coBdd();
    $reponse = $bdd->prepare('SELECT * FROM ville WHERE paysId = ' . $paysId);
    $reponse->execute();
    return $reponse;
}

//Inscription et recuperation sur Bdd nom, prenom, villeId
function insertUser($nom, $prenom, $villeId) {
    $bdd = coBdd();
    $req = $bdd->prepare('INSERT INTO utilisateur (nom, prenom, villeId) VALUES (:nom, :prenom, :ville)');
    $req->bindParam(":nom", $nom);
    $req->bindParam(":prenom", $prenom);
    $req->bindParam(":ville", $villeId);
    $req->execute();
}