
<?Php
include '../../../../parsers/ParserSetup.php';
$code=$_GET['code'];

$reservationsParent = $root->getElementsByTagName('reservations')->item(0);
global $doc;
// $code="R2";

foreach ($reservationsParent->childNodes as $child) {
    if ($child->nodeType == 1 && ($code == $child->getAttribute('code'))) {
        $reservation=$child;
    }
}

$seancesParent = $root->getElementsByTagName('seances')->item(0);
foreach ($seancesParent->childNodes as $child) {
    if ($child->nodeType == 1) {
        foreach ($reservation->childNodes as $child2 ) {
          if($child2->nodeType==1 && $child2->firstChild->nodeValue ==  $child->getAttribute('id')){
           $seance=$child;
          }
        }
    }
    
}

$siegesParent = $root->getElementsByTagName('sieges')->item(0);
foreach ($siegesParent->childNodes as $child) {
    if ($child->nodeType == 1) {
        foreach ($reservation->childNodes as $child2 ) {
          if($child2->nodeType==1 && $child2->firstChild->nodeValue ==  $child->getAttribute('id')){
           $siege=$child;
          }
        }
    }
}

$userParent = $root->getElementsByTagName('utilisateurs')->item(0);
foreach ($userParent->childNodes as $child) {
    if ($child->nodeType == 1) {
        foreach ($reservation->childNodes as $child2 ) {
          if($child2->nodeType==1 && $child2->firstChild->nodeValue ==  $child->getAttribute('id')){
           $user=$child;
          }
        }
    }
}

$filmsParent = $root->getElementsByTagName('films')->item(0);
foreach ($filmsParent->childNodes as $child) {
    if ($child->nodeType == 1) {
        foreach ($seance->childNodes as $child2 ) {
          if($child2->nodeType==1 && $child2->firstChild->nodeValue ==  $child->getAttribute('id')){
           $film=$child;
          }
        }
    }
}

require('fpdf.php');
ob_start();
$pdf = new FPDF('P','mm','letter');

$pdf->AddPage();

//set font to arial, bold, 14pt
$pdf->SetFont('Arial','B',20);

//Cell(width , height , text , border , end line , [align] )


$image1 = "../../../posters/Captureticket.PNG";
$pdf->Cell(80	,10,$pdf->Image($image1,5,5,70,0,'PNG'),0,0);
$pdf->SetFont('Arial','B',13);
$pdf->Cell(50	,5,'nom et prenom:',0,1);//end of line
//set font to arial, regular, 12pt
$pdf->SetFont('Arial','',11);
$pdf->Cell(80	,10,'',0,0);
$pdf->Cell(50	,5,$user->getElementsByTagName('nom')->item(0)->nodeValue,0,1);//end of line
$pdf->Cell(80	,10,'',0,0);
$pdf->SetFont('Arial','B',13);
$pdf->Cell(50	,5,'code de reservation:',0,1);//end of line
$pdf->SetFont('Arial','',11);
$pdf->Cell(80	,10,'',0,0);
$pdf->Cell(50	,5,$reservation->getAttribute('code'),0,1);//end of line
$pdf->Cell(0,35,'-----------------------------------------------------------------------------------------------',0,1);//end of line
//make a dummy empty cell as a vertical spacer

$pdf->SetFont('Arial','B',12);
$pdf->Cell(70,3,'film:',0,0);
$pdf->SetFont('Arial','',11);
$pdf->Cell(30	,2,$film->getElementsByTagName('titre')->item(0)->nodeValue,0,1);
$pdf->Cell(30	,2,'',0,1);

$pdf->SetFont('Arial','B',12);
$pdf->Cell(70,3,'siege:',0,0);
$pdf->SetFont('Arial','',11);
$pdf->Cell(30	,3,$reservation->getElementsByTagName('siege')->item(0)->nodeValue,0,1);
$pdf->Cell(30	,2,'',0,1);

$pdf->SetFont('Arial','B',12);
$pdf->Cell(70,3,'seance:',0,0);
$pdf->SetFont('Arial','',11);
$pdf->Cell(30	,3,$reservation->getElementsByTagName('seance')->item(0)->nodeValue,0,1);
$pdf->Cell(30	,2,'',0,1);

$pdf->SetFont('Arial','B',12);
$pdf->Cell(70,3,'date de reservation:',0,0);
$pdf->SetFont('Arial','',11);
$pdf->Cell(30	,3,$reservation->getElementsByTagName('date')->item(0)->nodeValue.' en '.$reservation->getElementsByTagName('heure')->item(0)->nodeValue,0,1);
$pdf->Cell(30	,2,'',0,1);

$pdf->SetFont('Arial','B',12);
$pdf->Cell(70,3,'date de seance:',0,0);
$pdf->SetFont('Arial','',11);
$pdf->Cell(30	,3,$seance->getElementsByTagName('date')->item(0)->nodeValue.' en '.$seance->getElementsByTagName('heure')->item(0)->nodeValue,0,1);
$pdf->Cell(30	,2,'',0,1);


$pdf->SetFont('Arial','B',12);
$pdf->Cell(70,3,'Salle:',0,0);
$pdf->SetFont('Arial','',11);
$pdf->Cell(30	,2,$siege->getElementsByTagName('salle')->item(0)->nodeValue,0,1);
$pdf->Cell(30	,0,'',0,1);
            
$pdf->Output();
ob_end_flush();

?>
