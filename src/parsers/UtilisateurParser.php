<?php

    require 'ParserSetup.php';
    require (__DIR__.'/../models/Utilisateur.php');

        $utilisateursParent = $root->getElementsByTagName('utilisateurs')->item(0);

        function ajouterUtilisateur($utilisateur) {
            if ($utilisateur != null) {
                global $doc, $utilisateursParent;

                foreach ($utilisateursParent->childNodes as $child) {
                    if ($child->nodeType == 1 && ($utilisateur->getId() == $child->getAttribute('id')))
                        return false;
                }

                $utilisateursParent->appendChild(utilisateurNode($utilisateur));
                
                $doc->save(__DIR__.'/../cinema.xml');
            }
            else {
                var_dump("Utilisateur à ajouter est null !");
            }
        }

        function modifierUtilisateur($utilisateur) {
            if ($utilisateur != null) {
                global $doc, $utilisateursParent;

                $existant = false;

                foreach ($utilisateursParent->childNodes as $child) {
                    if ($child->nodeType == 1 && ($utilisateur->getId() == $child->getAttribute('id'))) {
                        $existant = true;
                        $utilisateursParent->replaceChild(utilisateurNode($utilisateur), $child);
                        $doc->save(__DIR__.'/../cinema.xml');
                        return $child;
                    }
                }

                if (!$existant)
                    var_dump("Utilisateur à modifier n'existe pas dans la liste des utilisateurs !");
            }
            else {
                var_dump("Utilisateur à modifier est null !");
            }
        }

        function supprimerUtilisateur($utilisateur) {
            if ($utilisateur != null) {
                global $doc, $utilisateursParent;

                $existant = false;

                foreach ($utilisateursParent->childNodes as $child) {
                    if ($child->nodeType == 1 && ($utilisateur->getId() == $child->getAttribute('id'))) {
                        $existant = true;
                        $utilisateursParent->removeChild($child);
                        $doc->save(__DIR__.'/../cinema.xml');
                        return $child;
                    }
                }

                if (!$existant)
                    var_dump("Utilisateur à supprimer n'existe pas dans la liste des utilisateurs !");
            }
            else {
                var_dump("Utilisateur à supprimer est null !");
            }
        }

        function utilisateurNode($utilisateur) {
            global $doc;
            $utilisateurNode = $doc->createElement('utilisateur');

                $utilisateurNode->setAttributeNode(new DOMAttr('id', $utilisateur->getId()));

                $nomNode = $doc->createElement('nom');
                $nomNode->appendChild($doc->createTextNode($utilisateur->getNom()));
                $utilisateurNode->appendChild($nomNode);

                $emailNode = $doc->createElement('email');
                $emailNode->appendChild($doc->createTextNode($utilisateur->getEmail()));
                $utilisateurNode->appendChild($emailNode);

                $telNode = $doc->createElement('tel');
                $telNode->appendChild($doc->createTextNode($utilisateur->getTel()));
                $utilisateurNode->appendChild($telNode);

                return $utilisateurNode;
        }

?>