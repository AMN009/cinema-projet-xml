<?php
  
  session_start();
  
  // Créez un document DOM et charger la feuille de style XSL
	$xsl = new DomDocument;
	$xsl->load(__DIR__.'/../stylesheets/style.xsl');
  // $xsl->load(__DIR__.'/../stylesheets/stylesheet.xsl');
	$xproces = new XSLTProcessor;
  // $xproces->setParameter('', 'id',$_SESSION['id']);
  // importer la feuille de style XSL dans le processus XSLT
    $xproces->importStylesheet($xsl);

    $docf = new DomDocument;
    $docf->load('../../../../../xml/cinema.xml');
     // Transformer du XML en HTML à l'aide du fichier XSL
       echo $xproces->transformToXML($docf);

?>