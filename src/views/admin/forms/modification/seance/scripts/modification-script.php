<?php

  require_once(__DIR__.'/../../../../../../parsers/SeanceParser.php');
  require_once(__DIR__.'/../../../../../../models/Seance.php');

    $id = $_POST['id'];

    $salle = $_POST['salle'];

    $date = $_POST['seance-date'];
    if (strlen($_POST['date']) > 0) {
        $months = ['January' => '01', 'February' => '02', 'March' => '03', 'April' => '04', 'May' => '05', 'June' => '06', 'July' => '07', 'August' => '08', 'September' => '09', 'October' => '10', 'November' => '11', 'December' => '12'];
        $date_components = explode(' ', $_POST['date']);
        $date = ((strlen($date_components[0]) == 1) ? '0'.$date_components[0] : $date_components[0]).'/'.$months[substr($date_components[1], 0, -1)].'/'.$date_components[2];
    }
    
    $film = $_POST['film'];

    $heure = $_POST['seance-heure'];
    if (strlen($_POST['heure']) > 0) {
        $heure = str_replace(':', 'h', $_POST['heure']).'m';
    }

    $prix = floatval($_POST['seance-prix']);
    if (strlen($_POST['prix']) > 0) {
        $prix = floatval($_POST['prix']);
    }

    updateSeance(new Seance($id, $salle, $date, $film, $heure, $prix));

    ob_start();
    header('Location: ../../../../lists/seances/scripts/script.php');
    ob_end_flush();
    die();

?>