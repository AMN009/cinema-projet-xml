<?php 
     include 'ParserSetup.php';
     include __DIR__.'/../models/Siege.php';
     
     // done
     Function insertSiege($sie){
      global $doc ; 

      $sieges = $doc->getElementsByTagName('sieges'); 
      $siege = $doc->createElement("siege"); 
      $siege->setAttribute("id", $sie->getId());
      $siege->setAttribute("libre", ($sie->isLibre()) ? 'true' : 'false');

      $salle= $doc->createElement("salle"); 
      $salledata = $doc->createTextNode($sie->getSalle()); 
      $salle->appendChild($salledata);

      $rang = $doc->createElement("rang"); 
      $rangdata = $doc->createTextNode($sie->getRang()); 
      $rang->appendChild($rangdata);
      
      $numero = $doc->createElement("numero"); 
      $numerodata = $doc->createTextNode($sie->getNumero()); 
      $numero->appendChild($numerodata);

      $siege->appendChild($salle);
      $siege->appendChild($rang);
      $siege->appendChild($numero);
      $sieges->item(0)->appendChild($siege);

      $doc->save(__DIR__."/../xml/cinema.xml");

     }




       //done
       Function deleteSiege($si){
        global $doc ;
        $siegesp = $doc->getElementsByTagName('sieges'); 
        $sieges=$siegesp->item(0)->childNodes;
        foreach($sieges as $siege){
          if($siege->nodeType==1 and $siege->getAttribute('id')==$si){
            $siege->parentNode->removeChild($siege);
          }
       }
       $doc->save(__DIR__."/../xml/cinema.xml");
      }
       
      
       //done
       Function updateSiege($sie){

        global $doc ;
        $sieges = $doc->getElementsByTagName('sieges'); 
        $sieges=$sieges->item(0)->childNodes;

        $newsiege = $doc->createElement("siege"); 
        $newsiege->setAttribute("id", $sie->getId());
        $newsiege->setAttribute("libre", ($sie->isLibre()) ? 'true' : 'false'); 

        $salle = $doc->createElement("salle"); 
        $salledata = $doc->createTextNode($sie->getSalle()); 
        $salle->appendChild($salledata);

        $rang = $doc->createElement("rang"); 
        $rangdata = $doc->createTextNode($sie->getRang()); 
        $rang->appendChild($rangdata);
      
        $numero = $doc->createElement("numero"); 
        $numerodata = $doc->createTextNode($sie->getNumero()); 
        $numero->appendChild($numerodata);

        $newsiege->appendChild($salle);
        $newsiege->appendChild($rang);
        $newsiege->appendChild($numero);
        foreach($sieges as $siege){
          if($siege->nodeType==1 and $siege->getAttribute('id')==$sie->getId()){
            $siege->parentNode->replaceChild($newsiege, $siege);
            
          }
       }
       $doc->save(__DIR__."/../xml/cinema.xml");
        
       }

       function siegeObject($siegeNode) {
        // global $doc;

        $siegeId = $siegeNode->getAttribute('id');
        $siegeLibre = ($siegeNode->getAttribute('libre') == 'true') ? true : false;
        $siegeSalle = $siegeNode->getElementsByTagName('salle')->item(0)->nodeValue;
        $siegeNumero = $siegeNode->getElementsByTagName('numero')->item(0)->nodeValue;
        $siegeRang = $siegeNode->getElementsByTagName('rang')->item(0)->nodeValue;

        $siege = new Siege($siegeId, $siegeSalle, $siegeRang, $siegeNumero);
        $siege->setLibre($siegeLibre);

        return $siege;
      }

       function getSiegeLibre($salle) {
          global $root;
          $siege = null;
          foreach ($root->getElementsByTagName('sieges')->item(0)->childNodes as $item) {
            if ($item->nodeType == 1) {
              if (($item->getElementsByTagName('salle')->item(0)->nodeValue == $salle) && ($item->getAttribute('libre') == 'true')) {
                $siege = siegeObject($item);
                break;
              }
            }
          }
          return $siege;
       }

       function reserverSiege($siege) {
        $siege->setLibre(false);
        updateSiege($siege);
       }

       function libererSiege($siege) {
        $siege->setLibre(true);
        updateSiege($siege);
       }

?>