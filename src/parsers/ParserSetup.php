<?php

    // $xml_doc_location = __DIR__."/../xml/cinema.xml";
    $doc = new DomDocument();
    $xml_doc_location="../xml/cinema.xml";
    $doc->load($xml_doc_location);
    $root = $doc->documentElement;

?>