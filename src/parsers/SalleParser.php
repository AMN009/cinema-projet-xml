<?php

    require 'DOMParser.php';
    require (__DIR__.'/../models/Salle.php');

    class SalleParser extends DOMParser {

        private $sallesParent;

        public function __construct() {
            parent::__construct();
            $this->sallesParent = $this->root->getElementsByTagName('salles')->item(0);
        }

        public function ajouterSalle($salle) {

        }

        public function modifierSalle($salle) {

        }

        public function supprimerSalle($salle) {

        }
    }

?>