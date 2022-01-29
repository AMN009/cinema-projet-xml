<?php
// Créez un document DOM et charger la feuille de style XSL
  $xsl = new DomDocument;
  $xsl->load('../stylesheets/homePage.xsl');
// $xsl->load(__DIR__.'/../stylesheets/stylesheet.xsl');
  $xproces = new XSLTProcessor;

// importer la feuille de style XSL dans le processus XSLT
  $xproces->importStylesheet($xsl);

  $docf = new DomDocument;
  $docf->load('../../../xml/cinema.xml');
   // Transformer du XML en HTML à l'aide du fichier XSL
     echo $xproces->transformToXML($docf);
?>