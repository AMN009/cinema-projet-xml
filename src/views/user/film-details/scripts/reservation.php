<?php

    require_once(__DIR__.'/../../../../parsers/ReservationParser.php');
    require_once(__DIR__.'/../../../../models/Reservation.php');
    require_once(__DIR__.'/../../../../parsers/SeanceParser.php');
    require_once(__DIR__.'/../../../../models/Seance.php');
    require_once(__DIR__.'/../../../../parsers/SiegeParser.php');
    require_once(__DIR__.'/../../../../models/Siege.php');

    $utilisateur = $_POST['utilisateur'];
    $seance = $_POST['seance'];
    $date = date("d/m/Y");
    $heure = date("h") . 'h' . date("i") . 'm';
    $reservationCode = 'R'.(intval(substr(getLastReservation()->getCode(), 1)) + 1);
    $siege = getSiegeLibre(getSeance($seance)->getSalle());
    reserverSiege($siege);

    insertReservation(new Reservation($reservationCode, $date, $siege->getId(), $heure, $seance, $utilisateur));

    ob_start();
    header('Location: ../../tickets/stylesheets/pdf.php?code='.$reservationCode);
    ob_end_flush();
    die();

?>