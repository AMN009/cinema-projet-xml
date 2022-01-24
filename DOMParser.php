<?php

    class DOMParser {

        private DomDocument $xmlDoc;
        private array $elements;

        public function __construct($src) {
            $this->xmlDoc = new DomDocument();
            $this->xmlDoc->load($src);
        }

        private function docElements() {
            $this->elements = array();

            $root = $this->xmlDoc->documentElement;
            
            foreach ($root->childNodes AS $item) {
                
                if ($item->nodeType == 1)
                    $elements[$item->nodeName] = $item;
                if (count($root->childNodes) > 0) {

                }
            }
        }

    }

    $x = new DOMParser("cinema.xml");
?>