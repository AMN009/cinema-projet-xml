<?php

    // $xml_doc_location = __DIR__."/../xml/cinema.xml";
    $doc = new DomDocument();
    $doc->load(__DIR__."/../xml/cinema.xml");
    $root = $doc->documentElement;

?>