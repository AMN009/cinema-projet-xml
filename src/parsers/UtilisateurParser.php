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
                
                $doc->save(__DIR__."/../xml/cinema.xml");

                return true;
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
                        $doc->save(__DIR__."/../xml/cinema.xml");
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

        function supprimerUtilisateur($id) {
            global $doc, $utilisateursParent;

            foreach($utilisateursParent->childNodes as $utilisateur){
            if($utilisateur->nodeType==1 and $utilisateur->getAttribute('id')==$id){
                $utilisateur->parentNode->removeChild($utilisateur);
            }
        }
        $doc->save(__DIR__."/../xml/cinema.xml");
            
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

                $passwordNode = $doc->createElement('password');
                $passwordNode->appendChild($doc->createTextNode($utilisateur->getPassword()));
                $utilisateurNode->appendChild($passwordNode);

                $telNode = $doc->createElement('tel');
                $telNode->appendChild($doc->createTextNode($utilisateur->getTel()));
                $utilisateurNode->appendChild($telNode);

                return $utilisateurNode;
        }

        if(isset($_GET['id'])){
          supprimerUtilisateur($_GET['id']);
          header('Location:../views/admin/lists/utilisateurs/scripts/script.php');
        }


        if(isset($_POST['ajout'])){
            global $doc, $utilisateursParent;
             $i=0;
                foreach ($utilisateursParent->childNodes as $child) {
                    if ($child->nodeType == 1)
                        $i++;
                }
            
            $i++;
            $USER = new utilisateur('U'.$i,$_POST['Username'],$_POST['email'],$_POST['password'],'2349000');
            ajouterUtilisateur($USER);
            $i=0;
            header('Location:../views/admin/lists/utilisateurs/scripts/script.php');

          }

?>