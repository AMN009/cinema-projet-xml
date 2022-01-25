<?php 

    include 'C:/xampp/htdocs/cinema-projet-xml/classes/Seance.php';
    
     // done
     Function insertSeance($sea){
      $document = new DomDocument(); 
      $document->load('../cinema.xml');
      $seances = $document->getElementsByTagName('seances'); 
      $seance = $document->createElement("seance"); 
      $seance->setAttribute("id", $sea->getId()); 

      $salle = $document->createElement("salle"); 
      $salledata = $document->createTextNode($sea->getSalle()); 
      $salle->appendChild($salledata);

      $date = $document->createElement("date"); 
      $datedata = $document->createTextNode($sea->getDate()); 
      $date->appendChild($datedata);
      
      $film = $document->createElement("film"); 
      $filmdata = $document->createTextNode($sea->getFilm()); 
      $film->appendChild($filmdata);

      $heure = $document->createElement("heure"); 
      $heuredata = $document->createTextNode($sea->getHeure()); 
      $heure->appendChild($heuredata);
      
      $prix = $document->createElement("prix"); 
      $prixdata = $document->createTextNode($sea->getPrix()); 
      $prix->appendChild($prixdata);

      $seance->appendChild($salle);
      $seance->appendChild($date);
      $seance->appendChild($film);
      $seance->appendChild($heure);
      $seance->appendChild($prix);
      $seances->item(0)->appendChild($seance);

      $document->save('../cinema.xml');
     }




       //done
       Function deleteSeance($s){
        $document = new DomDocument(); 
        $document->load('../cinema.xml');
        $seancesp = $document->getElementsByTagName('seances'); 
        $seances=$seancesp->item(0)->childNodes;
        foreach($seances as $seance){
          if($seance->nodeType==1 and $seance->getAttribute('id')==$s){
            $seance->parentNode->removeChild($seance);
          }
       }
      $document->save('../cinema.xml');
      }
      

       // done
       Function updateSeance($sea){
          
        $document = new DomDocument(); 
        $document->load('../cinema.xml');
        $seancesp = $document->getElementsByTagName('seances'); 
        $seances=$seancesp->item(0)->childNodes;

        $newseance = $document->createElement("seance"); 
        $newseance->setAttribute("id", $sea->getId()); 
  
        $salle = $document->createElement("salle"); 
        $salledata = $document->createTextNode($sea->getSalle()); 
        $salle->appendChild($salledata);
  
        $date = $document->createElement("date"); 
        $datedata = $document->createTextNode($sea->getDate()); 
        $date->appendChild($datedata);
        
        $film = $document->createElement("film"); 
        $filmdata = $document->createTextNode($sea->getFilm()); 
        $film->appendChild($filmdata);
  
        $heure = $document->createElement("heure"); 
        $heuredata = $document->createTextNode($sea->getHeure()); 
        $heure->appendChild($heuredata);
        
        $prix = $document->createElement("prix"); 
        $prixdata = $document->createTextNode($sea->getPrix()); 
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
      $document->save('../cinema.xml');

       }
?>