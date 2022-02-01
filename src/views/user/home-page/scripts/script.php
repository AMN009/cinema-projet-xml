<?php
    require_once(__DIR__.'/../../../../parsers/UtilisateurParser.php');
    require_once(__DIR__.'/../../../../models/Utilisateur.php');
    require_once(__DIR__.'/../../../../parsers/FilmParser.php');
    require_once(__DIR__.'/../../../../models/Film.php');
    session_start();

// Créez un document DOM et charger la feuille de style XSL
  $xsl = new DomDocument;
  $xsl->load('../stylesheets/homePage.xsl');
  
// $xsl->load(__DIR__.'/../stylesheets/stylesheet.xsl');
  $xproces = new XSLTProcessor;

// importer la feuille de style XSL dans le processus XSLT
  $xproces->importStylesheet($xsl);
  if (!isset($_SESSION['id'])) {
    $_SESSION['id'] = 'visiteur';
  }
  $xproces->setParameter('', 'id', $_SESSION['id']);

// Transformer du XML en HTML à l'aide du fichier XSL
  echo $xproces->transformToXML($doc);
?>