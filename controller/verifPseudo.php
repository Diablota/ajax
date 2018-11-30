<?php

require_once('../model/modeleAjax.php');
$prenom = getPrenom($_POST["prenom"]);
echo $prenom->rowcount();