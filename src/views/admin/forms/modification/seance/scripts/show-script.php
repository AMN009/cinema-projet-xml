<?php

  require_once(__DIR__.'/../../../../../../parsers/SeanceParser.php');
  require_once(__DIR__.'/../../../../../../models/Seance.php');
  require_once(__DIR__.'/../../../../../../parsers/FilmParser.php');
  require_once(__DIR__.'/../../../../../../models/Film.php');
  require_once(__DIR__.'/../../../../../../parsers/SalleParser.php');
  require_once(__DIR__.'/../../../../../../models/Salle.php');

  // Créez un document DOM et charger la feuille de style XSL
	$xsl = new DomDocument;
	$xsl->load(__DIR__.'/../stylesheets/style.xsl');
	$xproces = new XSLTProcessor;

  // importer la feuille de style XSL dans le processus XSLT
    $xproces->importStylesheet($xsl);
    $xproces->setParameter('', 'seanceId', $_GET['seance']);

  // Transformer du XML en HTML à l'aide du fichier XSL
    echo $xproces->transformToXML($doc);
    // $html = $xproces->transformToXML($doc);
    // file_put_contents('test.html', $html);

?>