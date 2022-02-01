<?php
 //test
    require_once(__DIR__.'/../../../../../parsers/FilmParser.php');
    require_once(__DIR__.'/../../../../../models/Film.php');
    session_start();
    
  // Créez un document DOM et charger la feuille de style XSL
	$xsl = new DomDocument;
	$xsl->load(__DIR__.'/../stylesheets/style.xsl');
	$xproces = new XSLTProcessor;

  $xproces->setParameter('', 'id',$_SESSION['id']);
  // importer la feuille de style XSL dans le processus XSLT

    $xproces->importStylesheet($xsl);

  // Transformer du XML en HTML à l'aide du fichier XSL
    echo $xproces->transformToXML($doc);
    // file_put_contents('test.html', $html);

?>