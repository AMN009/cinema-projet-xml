<?php

    require 'DOMParser.php';
    require (__DIR__.'/../models/Utilisateur.php');

    class UtilisateurParser extends DOMParser {
        
        private $utilisateursParent;

        public function __construct() {
            parent::__construct();
            $this->utilisateursParent = $this->root->getElementsByTagName('utilisateurs')->item(0);
            //var_dump($this->utilisateursParent->nodeName);
        }

        public function ajouterUtilisateur($utilisateur) {
            foreach ($this->utilisateursParent->childNodes as $child) {
                if ($child->nodeType == 1 && ($utilisateur->getId() == $child->getAttribute('id')))
                    return null;
            }
            $utilisateurNode = $xmlDoc->createElement('utilisateur');

            
            $xmlDoc->appendChild($utilisateurNode);
        }

        public function modifierUtilisateur($utilisateur) {

        }

        public function supprimerUtilisateur($utilisateur) {

        }
    }

?>