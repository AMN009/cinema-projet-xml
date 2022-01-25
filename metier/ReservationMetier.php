<?php 

     include 'C:/xampp/htdocs/cinema-projet-xml/classes/Reservation.php';
     
     //done
     Function insertReservation($reserv){
         echo $reserv->__toString();
        $document = new DomDocument(); 
        $document->load('../cinema.xml');
        $reservations = $document->getElementsByTagName('reservations'); 
        $reservation = $document->createElement("reservation"); 
        $reservation->setAttribute("code", $reserv->getCode()); 

        $date = $document->createElement("date"); 
        $datedata = $document->createTextNode($reserv->getDate()); 
        $date->appendChild($datedata);

        $heure = $document->createElement("heure"); 
        $heuredata = $document->createTextNode($reserv->getHeure()); 
        $heure->appendChild($heuredata);
        
        $utilisateur = $document->createElement("utilisateur"); 
        $utilisateurdata = $document->createTextNode($reserv->getUtilisateur()); 
        $utilisateur->appendChild($utilisateurdata);

        $siege = $document->createElement("siege"); 
        $siegedata = $document->createTextNode($reserv->getSiege()); 
        $siege->appendChild($siegedata);

        $seance = $document->createElement("seance"); 
        $seancedata = $document->createTextNode($reserv->getSeance()); 
        $seance->appendChild($seancedata);

        $reservation->appendChild($date);
        $reservation->appendChild($heure);
        $reservation->appendChild($utilisateur);
        $reservation->appendChild($siege);
        $reservation->appendChild($seance);

        $reservations->item(0)->appendChild($reservation);

        $document->save('../cinema.xml');
     }




       //done
       Function deleteReservation($r){
        $document = new DomDocument(); 
        $document->load('../cinema.xml');
        $reservationsp = $document->getElementsByTagName('reservations'); 
        $reservations=$reservationsp->item(0)->childNodes;
        foreach($reservations as $reservation){
          if($reservation->nodeType==1 and $reservation->getAttribute('code')==$r){
            $reservation->parentNode->removeChild($reservation);
          }
       }
      $document->save('../cinema.xml');
      }
            

       //done
       Function updateReservation($reserv){
          
        $document = new DomDocument(); 
        $document->load('../cinema.xml');
        $reservationsp = $document->getElementsByTagName('reservations'); 
        $reservations=$reservationsp->item(0)->childNodes;

        $newreservation = $document->createElement("reservation"); 
        $newreservation->setAttribute("code", $reserv->getCode()); 

        $date = $document->createElement("date"); 
        $datedata = $document->createTextNode($reserv->getDate()); 
        $date->appendChild($datedata);

        $heure = $document->createElement("heure"); 
        $heuredata = $document->createTextNode($reserv->getHeure()); 
        $heure->appendChild($heuredata);
        
        $utilisateur = $document->createElement("utilisateur"); 
        $utilisateurdata = $document->createTextNode($reserv->getUtilisateur()); 
        $utilisateur->appendChild($utilisateurdata);

        $siege = $document->createElement("siege"); 
        $siegedata = $document->createTextNode($reserv->getSiege()); 
        $siege->appendChild($siegedata);

        $seance = $document->createElement("seance"); 
        $seancedata = $document->createTextNode($reserv->getSeance()); 
        $seance->appendChild($seancedata);

        $newreservation->appendChild($date);
        $newreservation->appendChild($heure);
        $newreservation->appendChild($utilisateur);
        $newreservation->appendChild($siege);
        $newreservation->appendChild($seance);

        foreach($reservations as $reservation){
          if($reservation->nodeType==1 and $reservation->getAttribute('code')==$reserv->getCode()){
            $reservation->parentNode->replaceChild($newreservation, $reservation);
          }
       }
      $document->save('../cinema.xml');
       }

?>