<?php 
     //not done
     Function insertSeance($seance){}




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

      deleteSeance('S658');
       

       //noy done
       Function updateSeance(){

       }
?>