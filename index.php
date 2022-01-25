<?php

    require_once('src/parsers/UtilisateurParser.php');
    require_once('src/models/Utilisateur.php');

    //$up = new UtilisateurParser();
    $u = new Utilisateur('U21', 'Aymen', 'aymen@gmail.com', '+212-236-458-896');
    ajouterUtilisateur($u);

?>