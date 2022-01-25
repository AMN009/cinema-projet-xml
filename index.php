<?php

    require_once('src/parsers/UtilisateurParser.php');
    require_once('src/models/Utilisateur.php');

    $up = new UtilisateurParser();
    $u = Utilisateur::emptyUtilisateur();
    $up->ajouterUtilisateur($u);

?>