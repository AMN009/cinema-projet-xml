<?php

    require_once(__DIR__.'/../../../../../parsers/SalleParser.php');
    require_once(__DIR__.'/../../../../../models/Salle.php');

    $salleId = $_GET['salle'];
    supprimerSalle(new Salle($salleId, 0));

    ob_start();
    header('Location: script.php');
    ob_end_flush();
    die();

?>