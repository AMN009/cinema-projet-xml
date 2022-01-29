<?php

    require 'ParserSetup.php';
    require (__DIR__.'/../models/Film.php');

    $filmsParent = $root->getElementsByTagName('films')->item(0);

        function ajouterFilm($film) {
            if ($film != null) {
                global $xml_doc_location, $doc, $filmsParent;
                 $i=1;

                foreach ($filmsParent->childNodes as $child) {
                    if ($child->nodeType == 1)
                    {   
                        $i++;
                        if ($film->getId() == $child->getAttribute('id'))
                        return false;
                    }
                }
                
                $film->setId('F'.$i);
                echo $film->getId();

                
                $filmsParent->appendChild(filmNode($film));
                
                $doc->save(__DIR__."/../xml/cinema.xml");
            }
            else {
                var_dump("Film à ajouter est null !");
            }
        }

        function modifierFilm($film) {
            if ($film != null) {
                global $doc, $filmsParent;

                $existant = false;

                foreach ($filmsParent->childNodes as $child) {
                    if ($child->nodeType == 1 && ($film->getId() == $child->getAttribute('id'))) {
                        $existant = true;
                        $filmsParent->replaceChild(filmNode($film), $child);
                        $doc->save(__DIR__."/../xml/cinema.xml");
                        return $child;
                    }
                }

                if (!$existant)
                    var_dump("Film à modifier n'existe pas dans la liste des films !");
            }
            else {
                var_dump("Film à modifier est null !");
            }
        }

        function supprimerFilm($film) {
            if ($film != null) {
                global $doc, $filmsParent;

                $existant = false;

                foreach ($filmsParent->childNodes as $child) {
                    if ($child->nodeType == 1 && ($film->getId() == $child->getAttribute('id'))) {
                        $existant = true;
                        $filmsParent->removeChild($child);
                        $doc->save(__DIR__."/../xml/cinema.xml");
                        return $child;
                    }
                }

                if (!$existant)
                    var_dump("Film à supprimer n'existe pas dans la liste des films !");
            }
            else {
                var_dump("Film à supprimer est null !");
            }
        }

        function filmNode($film) {
            global $doc;
            $filmNode = $doc->createElement('film');

                $filmNode->setAttributeNode(new DOMAttr('id', $film->getId()));
                $filmNode->setAttributeNode(new DOMAttr('annee', $film->getAnnee()));

                $titreNode = $doc->createElement('titre');
                $titreNode->appendChild($doc->createTextNode($film->getTitre()));
                $filmNode->appendChild($titreNode);

                $genreNode = $doc->createElement('genre');
                $genreNode->appendChild($doc->createTextNode($film->getGenre()));
                $filmNode->appendChild($genreNode);

                $realisateurNode = $doc->createElement('realisateur');
                $realisateurNode->appendChild($doc->createTextNode($film->getRealisateur()));
                $filmNode->appendChild($realisateurNode);

                $dureeNode = $doc->createElement('duree');
                $dureeNode->appendChild($doc->createTextNode($film->getDuree()));
                $filmNode->appendChild($dureeNode);

                $posterNode = $doc->createElement('poster');
                $posterNode->setAttributeNode(new DOMAttr('source', $film->getPoster()));
                $filmNode->appendChild($posterNode);

                $descriptionNode = $doc->createElement('description');
                $descriptionNode->appendChild($doc->createTextNode($film->getDescription()));
                $filmNode->appendChild($descriptionNode);

                return $filmNode;
        }


        if(isset($_POST['ajout'])){
            $film = new Film(1,$_POST['titre'],$_POST['genre'],$_POST['realisateur'],$_POST['annee'],$_POST['duree'],"../../posters/".$_POST['poste'],$_POST['description']);
            ajouterFilm($film);
            
        }

?>