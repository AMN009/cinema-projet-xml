<?php

    class Siege {
        private string $id;
        private int $salle;
        private int $rang;
        private int $numero;

        function __construct($id, $salle,$rang,$numero)
        {
            $this->id = $id;
            $this->salle = $salle;
            $this->rang = $rang;
            $this->numero = $numero;
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

    }

?>