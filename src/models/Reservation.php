<?php

    class Reservation {
        private string $code;
        private string $date;
        private int $siege;
        private string $heure;
        private int $seance;
        private int $utilisateur;

        function __construct($code,$date, $siege,$heure,$seance, $utilisateur)
        {
            $this->code = $code;
            $this->date = $date;
            $this->siege = $siege;
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


            public function __toString() {
                return "reservation code is: {$this->code}\n";
                }
    }

?>