<?php

  require_once(__DIR__.'/../../../../../../parsers/SeanceParser.php');
  require_once(__DIR__.'/../../../../../../models/Seance.php');

    $last_seance = getLastSeance();
    $id = 'SE'.(intval(substr($last_seance->getId(), 2)) + 1);

    $salle = $_POST['salle'];

    $months = ['January' => '01', 'February' => '02', 'March' => '03', 'April' => '04', 'May' => '05', 'June' => '06', 'July' => '07', 'August' => '08', 'September' => '09', 'October' => '10', 'November' => '11', 'December' => '12'];
    $date_components = explode(' ', $_POST['date']);
    $date = ((strlen($date_components[0]) == 1) ? '0'.$date_components[0] : $date_components[0]).'/'.$months[substr($date_components[1], 0, -1)].'/'.$date_components[2];

    $film = $_POST['film'];

    $heure = str_replace(':', 'h', $_POST['heure']).'m';

    $prix = floatval($_POST['prix']);

    insertSeance(new Seance($id, $salle, $date, $film, $heure, $prix));

    ob_start();
    header('Location: ../../../../lists/seances/scripts/script.php');
    ob_end_flush();
    die();

?>