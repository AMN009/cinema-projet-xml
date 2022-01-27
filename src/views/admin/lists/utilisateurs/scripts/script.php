<?php

$xp = new XSLTProcessor();
$xsl = new DomDocument;
$xsl->load('../stylesheets/style.xsl');
// importer la feuille de style XSL dans le processus XSLT
 $xp->importStylesheet($xsl);
 $xml_doc = new DomDocument;
 $xml_doc->load('../../../../../xml/cinema.xml');
 print $xp->transformToXML($xml_doc)

?>