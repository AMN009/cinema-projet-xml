<?php

    require_once(__DIR__.'/../../../../../parsers/SeanceParser.php');
    require_once(__DIR__.'/../../../../../models/Seance.php');
    require_once(__DIR__.'/../../../../../parsers/FilmParser.php');
    require_once(__DIR__.'/../../../../../models/Film.php');
    require_once(__DIR__.'/../../../../../parsers/SalleParser.php');
    require_once(__DIR__.'/../../../../../models/Salle.php');

    deleteSeance($_GET['seance']);

    ob_start();
    header('Location: script.php');
    ob_end_flush();
    die();

?>