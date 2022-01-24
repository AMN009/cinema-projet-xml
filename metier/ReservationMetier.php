<?php 
     //not done
     Function insertReservation($reservation){}




       //done
       Function deleteReservation($r){
        $document = new DomDocument(); 
        $document->load('../cinema.xml');
        $reservationsp = $document->getElementsByTagName('reservations'); 
        $reservations=$reservationsp->item(0)->childNodes;
        foreach($reservations as $reservation){
          if($reservation->nodeType==1 and $reservation->getAttribute('id')==$r){
            $reservation->parentNode->removeChild($reservation);
          }
       }
      $document->save('../cinema.xml');
      }

      deleteReservation('487');
       

       //noy done
       Function updateReservation(){

       }
?>