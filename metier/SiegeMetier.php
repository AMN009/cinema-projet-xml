<?php 
     //not done
     Function insertSiege($siege){}




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

      deleteSiege('S89');
       

       //noy done
       Function updateSiege(){

       }
?>