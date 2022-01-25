<?php

    class DOMParser {
        protected $root;
        protected $xmlDoc;

        public function __construct() {
            $this->xmlDoc = new DomDocument();
            $this->xmlDoc->load(__DIR__."/../cinema.xml");
            $this->root = $this->xmlDoc->documentElement;
        }
    }

?>