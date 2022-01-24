<?php

    class Film {
        private string $id;
        private string $titre;
        private string $genre;
        private string $realisateur;
        private int $annee;
        private string $duree;
        private string $poster;

        public function __construct($id, $titre, $genre, $realisateur, $annee, $duree, $poster) {
            $this->id = $id;
            $this->titre = $titre;
            $this->genre = $genre;
            $this->realisateur = $realisateur;
            $this->annee = $annee;
            $this->duree = $duree;
            $this->poster = $poster;
        }


        public function getId() {
            return $this->id;
        }

        public function getTitre() {
            return $this->titre;
        }

        public function getGenre() {
            return $this->genre;
        }

        public function getRealisateur() {
            return $this->realisateur;
        }

        public function getAnnee() {
            return $this->annee;
        }

        public function getDuree() {
            return $this->duree;
        }

        public function getPoster() {
            return $this->poster;
        }


        public function setId($id) {
            $this->id = $id;
        }

        public function setTitre($titre) {
            $this->titre = $titre;
        }

        public function setGenre($genre) {
            $this->genre = $genre;
        }

        public function setRealisateur($realisateur) {
            $this->realisateur = $realisateur;
        }

        public function setAnnee($annee) {
            $this->annee = $annee;
        }

        public function setDuree($duree) {
            $this->duree = $duree;
        }

        public function setPoster($poster) {
            $this->poster = $poster;
        }
    }

?>