<?php

    require_once(__DIR__.'/../../../../parsers/UtilisateurParser.php');
    require_once(__DIR__.'/../../../../models/Utilisateur.php');
    session_start();

    $email = $_POST['email'];
    $password = $_POST['password'];

    $id = checkLogin($email, $password);

    $_SESSION['id'] = $id;

    if ($id == 'U0') {
        ob_start();
        header('Location: ../../../admin/lists/films/scripts/script.php');
        ob_end_flush();
        die();
    }
    else {
        ob_start();
        header('Location: ../../home-page/scripts/script.php');
        ob_end_flush();
        die();
    }

?>