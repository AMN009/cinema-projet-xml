<?php

    class Salle{
        private string $id;
        private int $capacite;

        public function __construct($id, $capacite) {
            $this->id = $id;
            $this->capacite = $capacite;
        }


        public function getId() {
            return $this->id;
        }

        public function getCapacite() {
            return $this->capacite;
        }


        public function setId($id) {
            $this->id = $id;
        }

        public function setCapacite($capacite) {
            $this->capacite = $capacite;
        }
    }

?>