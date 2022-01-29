<?php

    require_once(__DIR__.'/../../../../parsers/ReservationParser.php');
    require_once(__DIR__.'/../../../../models/Reservation.php');

  // Créez un document DOM et charger la feuille de style XSL
	$xsl = new DomDocument;
	$xsl->load(__DIR__.'/../stylesheets/style.xsl');
	$xproces = new XSLTProcessor;

  // importer la feuille de style XSL dans le processus XSLT
    $xproces->importStylesheet($xsl);
    $xproces->setParameter('', 'utilisateurId', 'U1');

  // Transformer du XML en HTML à l'aide du fichier XSL
    echo $xproces->transformToXML($doc);
    // file_put_contents('test.html', $html);

?>