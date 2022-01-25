<?php

    require (__DIR__.'/../models/Utilisateur.php');
    require (__DIR__.'/../models/Siege.php');
    require (__DIR__.'/../models/Seance.php');

    class Reservation {
        private string $code;
        private string $date;
        private Siege $siege;
        private string $heure;
        private Seance $seance;
        private Utilisateur $utilisateur;

        function __construct($code, $siege,$date,$heure,$seance, $utilisateur)
        {
            $this->code = $code;
            $this->siège = $siège;
            $this->date = $date;
            $this->heure = $heure;
            $this->seance = $seance;
            $this->utilisateur = $utilisateur;
        }



            //getters
            public function getCode(){
                return $this->code;
            }
        
            public function getDate(){
                return $this->date;
            }
        
            public function getSiege(){
                return $this->siege;
            }
        
            public function getSeance(){
                return $this->seance;
            }
            public function getHeure(){
                return $this->heure;
            }

            public function getUtilisateur(){
                return $this->utilisateur;
            }
        
        
            //Setters
            public function setCode($code){
                $this->code = $code;
            }
        
            public function setDate($Date){
                $this->date = $date;
            }
        
            public function setSiege($siege){
                $this->siege = $siege;
            }
        
            public function setSeance($Seance){
                $this->seance = $seance;
            }

            public function setHeure($heure){
                $this->heure = $heure;
            }

            public function setUtilisateur($utilisateur){
                $this->utilisateur = $utilisateur;
            }
    }

?>