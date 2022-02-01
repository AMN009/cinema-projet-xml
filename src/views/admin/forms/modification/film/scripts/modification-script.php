<?php

  require_once(__DIR__.'/../../../../../../parsers/FilmParser.php');
  require_once(__DIR__.'/../../../../../../models/Film.php');

    $id = $_POST['id'];
    // var_dump($id);

    $titre = (strlen($_POST['titre']) > 0) ? $_POST['titre'] : $_POST['film-titre'];
    // var_dump($titre);

    $genre = (strlen($_POST['genre']) > 0) ? $_POST['genre'] : $_POST['film-genre'];
    // var_dump($genre);

    $realisateur = (strlen($_POST['realisateur']) > 0) ? $_POST['realisateur'] : $_POST['film-realisateur'];
    // var_dump($realisateur);

    $annee = (strlen($_POST['annee']) > 0) ? intval($_POST['annee']) : intval($_POST['film-annee']);
    // var_dump($annee);

    $duree = (strlen($_POST['duree']) > 0) ? $_POST['duree'] : $_POST['film-duree'];
    // var_dump($duree);

    $description = (strlen($_POST['description']) > 0) ? $_POST['description'] : $_POST['film-description'];
    // var_dump($description);

    $poster = $_POST['film-poster'];
    if ($_FILES['poster']['name']) {
        $path = $_FILES['poster']['name'];
        $ext = pathinfo($path, PATHINFO_EXTENSION);
        $file_name = $id.'.'.$ext;
        if (strlen($poster) > 0) unlink('../../../../../posters/'.$file_name);
        move_uploaded_file($_FILES['poster']['tmp_name'], '../../../../../posters/'.$file_name);
        $poster = $file_name;
    }
    // var_dump($poster);

    modifierFilm(new Film($id, $titre, $genre, $realisateur, $annee, $duree, $poster, $description));

    ob_start();
    header('Location: ../../../../lists/films/scripts/script.php');
    ob_end_flush();
    die();

?>