<?php

    require 'ParserSetup.php';
    require (__DIR__.'/../models/Salle.php');

    class SalleParser {

        private $sallesParent;

        public function __construct() {
            $this->sallesParent = $root->getElementsByTagName('salles')->item(0);
        }

        public function ajouterSalle($salle) {

        }

        public function modifierSalle($salle) {

        }

        public function supprimerSalle($salle) {

        }
    }

?>