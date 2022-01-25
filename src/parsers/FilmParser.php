<?php

    require 'ParserSetup.php';
    require (__DIR__.'/../models/Film.php');

    class FilmParser {

        private $filmsParent;

        public function __construct() {
            $this->filmsParent = $root->getElementsByTagName('films')->item(0);
        }

        public function ajouterFilm($film) {

        }

        public function modifierFilm($film) {

        }

        public function supprimerFilm($film) {

        }
    }

?>