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
        

        function ajouterSiege($salle){
            
            global $doc ;
            $siegeParent = $doc->getElementsByTagName('sieges')->item(0);
            $j=1;
            $ran=1;
            for ($i=1; $i < $salle->getCapacite() ; $i++) { 

                if($j<=10){
                    $ran=1;
                }
                elseif ($j<=20) {
                    $ran=2;
                }
                elseif ($j<=30) {
                    $ran=3;
                }
                elseif ($j<=40) {
                    $ran=4;
                }
                elseif ($j<=50) {
                    $ran=5;
                }
                elseif ($j<=60) {
                    $ran=6;
                }
                elseif ($j<=70) {
                    $ran=7;
                }
                elseif ($j<=80) {
                    $ran=8;
                }
                elseif ($j<=90) {
                    $ran=9;
                }
                elseif ($j<=100) {
                    $ran=10;
                }
                elseif ($j<=110) {
                    $ran=11;
                }
                elseif ($j<=120) {
                    $ran=12;
                }
                elseif ($j<=130) {
                    $ran=13;
                }
                elseif ($j<=140) {
                    $ran=14;
                }
                else {
                    $ran=15;
                }
                $siegeNode = $doc->createElement('siege');
               
                $siegeNode->setAttributeNode(new DOMAttr('id', 'SI'.$i));
                $siegeNode->setAttributeNode(new DOMAttr('libre', 'true'));

                $salled = $doc->createElement("salle"); 
                $salledata = $doc->createTextNode($salle->getId()); 
                $salled->appendChild($salledata);

                $siegeNode->appendChild($salled);

                $rang = $doc->createElement("rang"); 
                $rangdata = $doc->createTextNode($ran); 
                $rang->appendChild($rangdata);

                $siegeNode->appendChild($rang);

                $numero = $doc->createElement("numero"); 
                $numerodata = $doc->createTextNode($j); 
                $numero->appendChild($numerodata);
                $siegeNode->appendChild($numero);
                $j++;
                
                $siegeParent->appendChild($siegeNode);
            }


            
                
                $doc->save(__DIR__."/../xml/cinema.xml");

            
            

    
        }
        if(isset($_POST['ajout'])){
            $salle = new Salle($_POST['id'],$_POST['capacite']);
            ajouterSalle($salle);
            ajouterSiege($salle);

            header('Location:../views/admin/lists/salles/scripts/script.php');
        }
        if(isset($_POST['change'])){
            $salle = new Salle($_POST['id'],$_POST['capacite']);
            modifierSalle($salle);
            header('Location:../views/admin/lists/salles/scripts/script.php');
        }

?>