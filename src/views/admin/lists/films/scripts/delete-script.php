<?php

    require_once(__DIR__.'/../../../../../parsers/FilmParser.php');
    require_once(__DIR__.'/../../../../../models/Film.php');

    $filmId = $_GET['film'];
    $film = Film::emptyFilm();
    $film->setId($filmId);
    supprimerFilm($film);

    ob_start();
    header('Location: script.php');
    ob_end_flush();
    die();

?>