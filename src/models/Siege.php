<?php

    

    class Siege {
        private string $id;
        private string $salle;
        private string $rang;
        private string $numero;
        private bool $libre;

        function __construct($id, $salle,$rang,$numero)
        {
            $this->id = $id;
            $this->salle = $salle;
            $this->rang = $rang;
            $this->numero = $numero;
            $this->libre = true;
        }
        

        //getters
        public function getId(){
            return $this->id;
        }

        public function getSalle(){
            return $this->salle;
        }

        public function getRang(){
            return $this->rang;
        }

        public function getNumero(){
            return $this->numero;
        }

        public function isLibre(){
            return $this->libre;
        }


        //Setters
        public function setId($id){
            $this->id = $id;
        }

        public function setSalle($salle){
            $this->salle = $salle;
        }

        public function setRang($rang){
            $this->rang = $rang;
        }

        public function setNumero($numero){
            $this->numero = $numero;
        }

        public function setLibre($libre){
            $this->libre = $libre;
        }

    }

?>