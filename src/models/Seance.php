<?php

    

    class Seance {
        private string $id;
        private string $salle;
        private string $date;
        private string $film;
        private string $heure;
        private float $prix;

        function __construct($id, $salle,$date,$film,$heure,$prix)
        {
            $this->id = $id;
            $this->salle = $salle;
            $this->date = $date;
            $this->film = $film;
            $this->heure = $heure;
            $this->prix = $prix;
        }

        
            //getters
            public function getId(){
                return $this->id;
            }
        
            public function getDate(){
                return $this->date;
            }
            public function getSalle(){
                return $this->salle;
            }
        
            public function getFilm(){
                return $this->film;
            }
        
            public function getPrix(){
                return $this->prix;
            }
            public function getHeure(){
                return $this->heure;
            }
        
        
            //Setters
            public function setId($id){
                $this->id = $id;
            }
        
            public function setDate($Date){
                $this->date = $date;
            }
        
            public function setSalle($salle){
                $this->salle = $salle;
            }
        
            public function setFilm($film){
                $this->film = $film;
            }
            public function setPrix($prix){
                $this->prix = $prix;
            }

            public function setHeure($heure){
                $this->heure = $heure;
            }
    }

?>