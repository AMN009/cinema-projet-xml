<?php 
    
     include 'C:/xampp/htdocs/cinema-projet-xml/classes/Siege.php';
     
     // done
     Function insertSiege($sie){
      $document = new DomDocument(); 
      $document->load('../cinema.xml');
      $sieges = $document->getElementsByTagName('sieges'); 
      $siege = $document->createElement("siege"); 
      $siege->setAttribute("id", $sie->getId()); 

      $salle = $document->createElement("salle"); 
      $salledata = $document->createTextNode($sie->getSalle()); 
      $salle->appendChild($salledata);

      $rang = $document->createElement("rang"); 
      $rangdata = $document->createTextNode($sie->getRang()); 
      $rang->appendChild($rangdata);
      
      $numero = $document->createElement("numero"); 
      $numerodata = $document->createTextNode($sie->getNumero()); 
      $numero->appendChild($numerodata);

      $siege->appendChild($salle);
      $siege->appendChild($rang);
      $siege->appendChild($numero);
      $sieges->item(0)->appendChild($siege);

      $document->save('../cinema.xml');

     }




       //done
       Function deleteSiege($si){
        $document = new DomDocument(); 
        $document->load('../cinema.xml');
        $siegesp = $document->getElementsByTagName('sieges'); 
        $sieges=$siegesp->item(0)->childNodes;
        foreach($sieges as $siege){
          if($siege->nodeType==1 and $siege->getAttribute('id')==$si){
            $siege->parentNode->removeChild($siege);
          }
       }
      $document->save('../cinema.xml');
      }
       
      
       //done
       Function updateSiege($sie){

        $document = new DomDocument(); 
        $document->load('../cinema.xml');
        $sieges = $document->getElementsByTagName('sieges'); 
        $sieges=$sieges->item(0)->childNodes;

        $newsiege = $document->createElement("siege"); 
        $newsiege->setAttribute("id", $sie->getId()); 

        $salle = $document->createElement("salle"); 
        $salledata = $document->createTextNode($sie->getSalle()); 
        $salle->appendChild($salledata);

        $rang = $document->createElement("rang"); 
        $rangdata = $document->createTextNode($sie->getRang()); 
        $rang->appendChild($rangdata);
      
        $numero = $document->createElement("numero"); 
        $numerodata = $document->createTextNode($sie->getNumero()); 
        $numero->appendChild($numerodata);

        $newsiege->appendChild($salle);
        $newsiege->appendChild($rang);
        $newsiege->appendChild($numero);
        foreach($sieges as $siege){
          if($siege->nodeType==1 and $siege->getAttribute('id')==$sie->getId()){
            $siege->parentNode->replaceChild($newsiege, $siege);
            
          }
       }
        $document->save('../cinema.xml');
        
       }


?>