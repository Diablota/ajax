<?php

require_once('model/modeleAjax.php');

// JE CODE ICI
$reponse = getContinent();

// afficher vue
require_once 'vendor/autoload.php';

//twig
$loader = new Twig_Loader_Filesystem('views');
$twig = new Twig_Environment($loader);
$twig->addGlobal('session', $_SESSION);
$template = $twig->loadTemplate('index.twig.html');
echo $twig->render($template, array(
    'reponse' => $reponse
));

// connection
$messageErreur = "";
if (isset($_POST['nomConnexion'], $_POST['prenomConnexion'])) {
    $dataUser = getUser($_POST['nomConnexion'], $_POST['prenomConnexion']);
    $res = $dataUser->fetch(); 
    if ($res) {
        $_SESSION['id'] = $res['id'];
        $messageErreur = "YOU ARE CONNECTED";
    }
    else {
        $messageErreur = "Erreur";
    }
}

// S'enregistrer
if ( isset($_POST['lastName']) ) {
    insertUser(
        $_POST['lastName'], 
        $_POST['firstName'],
        $_POST['ville']
    );   
}