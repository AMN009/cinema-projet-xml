<?php 
    include 'ParserSetup.php';
    include __DIR__.'/../models/Seance.php';
    
     // done
     Function insertSeance($sea){
       global $doc;
      $seances = $doc->getElementsByTagName('seances'); 
      $seance = $doc->createElement("seance"); 
      $seance->setAttribute("id", $sea->getId()); 

      $salle = $doc->createElement("salle"); 
      $salledata = $doc->createTextNode($sea->getSalle()); 
      $salle->appendChild($salledata);

      $date = $doc->createElement("date"); 
      $datedata = $doc->createTextNode($sea->getDate()); 
      $date->appendChild($datedata);
      
      $film = $doc->createElement("film"); 
      $filmdata = $doc->createTextNode($sea->getFilm()); 
      $film->appendChild($filmdata);

      $heure = $doc->createElement("heure"); 
      $heuredata = $doc->createTextNode($sea->getHeure()); 
      $heure->appendChild($heuredata);
      
      $prix = $doc->createElement("prix"); 
      $prixdata = $doc->createTextNode($sea->getPrix()); 
      $prix->appendChild($prixdata);

      $seance->appendChild($salle);
      $seance->appendChild($date);
      $seance->appendChild($film);
      $seance->appendChild($heure);
      $seance->appendChild($prix);
      $seances->item(0)->appendChild($seance);

      $doc->save(__DIR__."/../xml/cinema.xml");
     }




       //done
       Function deleteSeance($s){
        global $doc ; 
        $seancesp = $doc->getElementsByTagName('seances'); 
        $seances=$seancesp->item(0)->childNodes;
        foreach($seances as $seance){
          if($seance->nodeType==1 and $seance->getAttribute('id')==$s){
            $seance->parentNode->removeChild($seance);
          }
       }
       $doc->save(__DIR__."/../xml/cinema.xml");
      }
      

       // done
       Function updateSeance($sea){
          
        global $doc ;
        $seancesp = $doc->getElementsByTagName('seances'); 
        $seances=$seancesp->item(0)->childNodes;

        $newseance = $doc->createElement("seance"); 
        $newseance->setAttribute("id", $sea->getId()); 
  
        $salle = $doc->createElement("salle"); 
        $salledata = $doc->createTextNode($sea->getSalle()); 
        $salle->appendChild($salledata);
  
        $date = $doc->createElement("date"); 
        $datedata = $doc->createTextNode($sea->getDate()); 
        $date->appendChild($datedata);
        
        $film = $doc->createElement("film"); 
        $filmdata = $doc->createTextNode($sea->getFilm()); 
        $film->appendChild($filmdata);
  
        $heure = $doc->createElement("heure"); 
        $heuredata = $doc->createTextNode($sea->getHeure()); 
        $heure->appendChild($heuredata);
        
        $prix = $doc->createElement("prix"); 
        $prixdata = $doc->createTextNode($sea->getPrix()); 
        $prix->appendChild($prixdata);
  
        $newseance->appendChild($salle);
        $newseance->appendChild($date);
        $newseance->appendChild($film);
        $newseance->appendChild($heure);
        $newseance->appendChild($prix);
        foreach($seances as $seance){
          if($seance->nodeType==1 and $seance->getAttribute('id')==$sea->getId()){
            $seance->parentNode->replaceChild($newseance, $seance);
          }
       }
       $doc->save(__DIR__."/../xml/cinema.xml");

       }

       function seanceObject($seanceNode) {
          // global $doc;

          $seanceId = $seanceNode->getAttribute('id');
          $seanceDate = $seanceNode->getElementsByTagName('date')->item(0)->nodeValue;
          $seanceHeure = $seanceNode->getElementsByTagName('heure')->item(0)->nodeValue;
          $seanceFilm = $seanceNode->getElementsByTagName('film')->item(0)->nodeValue;
          $seanceSalle = $seanceNode->getElementsByTagName('salle')->item(0)->nodeValue;
          $seanceDate = $seanceNode->getElementsByTagName('date')->item(0)->nodeValue;
          $seancePrix = $seanceNode->getElementsByTagName('prix')->item(0)->nodeValue;

          $seance = new Seance($seanceId, $seanceSalle, $seanceDate, $seanceFilm, $seanceHeure, $seancePrix);

          return $seance;
    }

       function getLastSeance() {
          global $root;
          $seance = null;
          $size = $root->getElementsByTagName('seances')->item(0)->childNodes->count();
          for ($i=$size - 1; $i >= 0; $i--) {
            $item = $root->getElementsByTagName('seances')->item(0)->childNodes->item($i);
            if ($item->nodeType == 1) {
                $seance = seanceObject($item);
                break;
            }
          }
          return $seance;
        }

        function getSeance($seanceId) {
          global $root;
          $seance = null;
          foreach ($root->getElementsByTagName('seances')->item(0)->childNodes as $item) {
            if ($item->nodeType == 1 && ($item->getAttribute('id') == $seanceId)) {
                $seance = seanceObject($item);
                break;
            }
          }
          return $seance;
        }
?>