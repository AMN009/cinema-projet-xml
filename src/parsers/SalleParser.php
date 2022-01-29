<?php

    require 'ParserSetup.php';
    require (__DIR__.'/../models/Salle.php');

    $sallesParent = $root->getElementsByTagName('salles')->item(0);

        function ajouterSalle($salle) { 
            if ($salle != null) {
                global $doc, $sallesParent;

                foreach ($sallesParent->childNodes as $child) {
                    if ($child->nodeType == 1 && ($salle->getId() == $child->getAttribute('id')))
                        return false;
                }

                $sallesParent->appendChild(salleNode($salle));
                
                $doc->save(__DIR__."/../xml/cinema.xml");

                return true;
            }
            else {
                var_dump("Salle à ajouter est null !");
            }
        }

        function modifierSalle($salle) {
            if ($salle != null) {
                global $doc, $sallesParent;

                $existant = false;

                foreach ($sallesParent->childNodes as $child) {
                    if ($child->nodeType == 1 && ($salle->getId() == $child->getAttribute('id'))) {
                        $existant = true;
                        $sallesParent->replaceChild(salleNode($salle), $child);
                        $doc->save(__DIR__."/../xml/cinema.xml");
                        return $child;
                    }
                }

                if (!$existant)
                    var_dump("Salle à modifier n'existe pas dans la liste des salles !");
            }
            else {
                var_dump("Salle à modifier est null !");
            }
        }

        function supprimerSalle($salle) {
            if ($salle != null) {
                global $doc, $sallesParent;

                $existant = false;

                foreach ($sallesParent->childNodes as $child) {
                    if ($child->nodeType == 1 && ($salle->getId() == $child->getAttribute('id'))) {
                        $existant = true;
                        $sallesParent->removeChild($child);
                        $doc->save(__DIR__."/../xml/cinema.xml");
                        return $child;
                    }
                }

                if (!$existant)
                    var_dump("Salle à supprimer n'existe pas dans la liste des salles !");
            }
            else {
                var_dump("Salle à supprimer est null !");
            }
        }

        function salleNode($salle) {
            global $doc;
            $salleNode = $doc->createElement('salle');

                $salleNode->setAttributeNode(new DOMAttr('id', $salle->getId()));
                $salleNode->setAttributeNode(new DOMAttr('capacite', $salle->getCapacite()));

                return $salleNode;
        }

        if(isset($_POST['ajout'])){
            $salle = new Salle('S'.$_POST['id'],$_POST['capacite']);
            ajouterSalle($salle);
        }
        if(isset($_POST['change'])){
            $salle = new Salle($_POST['id'],$_POST['capacite']);
            modifierSalle($salle);
            header('Location:../views/admin/lists/salles/scripts/script.php');
        }

?>