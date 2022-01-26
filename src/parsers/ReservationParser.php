<?php 
     
     include 'ParserSetup.php';
     include __DIR__.'/../models/Reservation.php';
     
     //done
     Function insertReservation($reserv){   
       global $doc;     
        $reservations = $doc->getElementsByTagName('reservations'); 
        $reservation = $doc->createElement("reservation"); 
        $reservation->setAttribute("code", $reserv->getCode()); 

        $date = $doc->createElement("date"); 
        $datedata = $doc->createTextNode($reserv->getDate()); 
        $date->appendChild($datedata);

        $heure = $doc->createElement("heure"); 
        $heuredata = $doc->createTextNode($reserv->getHeure()); 
        $heure->appendChild($heuredata);
        
        $utilisateur = $doc->createElement("utilisateur"); 
        $utilisateurdata = $doc->createTextNode($reserv->getUtilisateur()); 
        $utilisateur->appendChild($utilisateurdata);

        $siege = $doc->createElement("siege"); 
        $siegedata = $doc->createTextNode($reserv->getSiege()); 
        $siege->appendChild($siegedata);

        $seance = $doc->createElement("seance"); 
        $seancedata = $doc->createTextNode($reserv->getSeance()); 
        $seance->appendChild($seancedata);

        $reservation->appendChild($date);
        $reservation->appendChild($heure);
        $reservation->appendChild($utilisateur);
        $reservation->appendChild($siege);
        $reservation->appendChild($seance);

        $reservations->item(0)->appendChild($reservation);

        $doc->save(__DIR__.'/../cinema.xml');
     }




       //done
       Function deleteReservation($r){
         global $doc; 
        $reservationsp = $doc->getElementsByTagName('reservations'); 
        $reservations=$reservationsp->item(0)->childNodes;
        foreach($reservations as $reservation){
          if($reservation->nodeType==1 and $reservation->getAttribute('code')==$r){
            $reservation->parentNode->removeChild($reservation);
          }
       }
       $doc->save(__DIR__.'/../cinema.xml');
      }
            
      
       //done
       Function updateReservation($reserv){
          
       global  $doc ; 
        $reservationsp = $doc->getElementsByTagName('reservations'); 
        $reservations=$reservationsp->item(0)->childNodes;

        $newreservation = $doc->createElement("reservation"); 
        $newreservation->setAttribute("code", $reserv->getCode()); 

        $date = $doc->createElement("date"); 
        $datedata = $doc->createTextNode($reserv->getDate()); 
        $date->appendChild($datedata);

        $heure = $doc->createElement("heure"); 
        $heuredata = $doc->createTextNode($reserv->getHeure()); 
        $heure->appendChild($heuredata);
        
        $utilisateur = $doc->createElement("utilisateur"); 
        $utilisateurdata = $doc->createTextNode($reserv->getUtilisateur()); 
        $utilisateur->appendChild($utilisateurdata);

        $siege = $doc->createElement("siege"); 
        $siegedata = $doc->createTextNode($reserv->getSiege()); 
        $siege->appendChild($siegedata);

        $seance = $doc->createElement("seance"); 
        $seancedata = $doc->createTextNode($reserv->getSeance()); 
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
       $doc->save(__DIR__.'/../cinema.xml');
       }

?>