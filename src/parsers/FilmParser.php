<?php

    require 'DOMParser.php';
    require (__DIR__.'/../models/Film.php');

    class FilmParser extends DOMParser {

        private $filmsParent;

        public function __construct() {
            parent::__construct();
            $this->filmsParent = $this->root->getElementsByTagName('films')->item(0);
        }

        public function ajouterFilm($film) {

        }

        public function modifierFilm($film) {

        }

        public function supprimerFilm($film) {

        }
    }

?>