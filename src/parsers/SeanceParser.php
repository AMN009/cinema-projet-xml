<?php 
    include 'ParserSetup.php';
    include __DIR__.'/../models/Seance.php';
    
     // done
     Function insertSeance($sea){
       global $doc;
      $seances = $doc->getElementsByTagName('seances'); 
      $seance = $doc->createElement("seance"); 
      $seance->setAttribute("id", $sea->getId()); 

      $sallee = $doc->createElement("salle"); 
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

      $seance->appendChild($sallee);
      $seance->appendChild($date);
      $seance->appendChild($film);
      $seance->appendChild($heure);
      $seance->appendChild($prix);
      $seances->item(0)->appendChild($seance);

      $doc->save(__DIR__.'/../cinema.xml');
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
       $doc->save(__DIR__.'/../cinema.xml');
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
       $doc->save(__DIR__.'/../cinema.xml');

       }
?>