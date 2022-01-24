<?php

    class Utilisateur {
        private string $id;
        private string $nom;
        private string $email;
        private string $tel;
        //private $carte_credit;

        public function __construct($id, $nom, $email, $tel) {
            $this->id = $id;
            $this->nom = $nom;
            $this->email = $email;
            $this->tel = $tel;
        }


        public function getId() {
            return $this->id;
        }

        public function getNom() {
            return $this->nom;
        }

        public function getEmail() {
            return $this->email;
        }

        public function getTel() {
            return $this->tel;
        }


        public function setId($id) {
            $this->id = $id;
        }

        public function setNom($nom) {
            $this->nom = $nom;
        }

        public function setEmail($email) {
            $this->email = $email;
        }

        public function setTel($tel) {
            $this->tel = $tel;
        }
    }

?>