<?Php
require('fpdf.php');
$pdf = new FPDF('P','mm','letter');

$pdf->AddPage();

//set font to arial, bold, 14pt
$pdf->SetFont('Arial','B',20);

//Cell(width , height , text , border , end line , [align] )

$pdf->Cell(50	,5,'ticket',0,0);
$image1 = "../../posters/tickest1.jpg";
$pdf->Cell(30	,25,$pdf->Image($image1,40,5,40,0,'jpg'),0,0);
$pdf->SetFont('Arial','B',13);
$pdf->Cell(20	,5,'nom et prenom:',0,1);//end of line

//set font to arial, regular, 12pt
$pdf->SetFont('Arial','',11);
$pdf->Cell(80	,5,'',0,0);
$pdf->Cell(24	,5,'bouacherine fahd',0,1);//end of line
//make a dummy empty cell as a vertical spacer
$pdf->Cell(189	,10,'',0,1);//end of line

//set font to arial, regular, 12pt
$pdf->SetFont('Arial','',12);
$pdf->Cell(130	,5,'',0,0);
$pdf->Cell(34	,5,'nombre etudiant:',0,0);//end of line
$pdf->Cell(14	,5,15,0,1);//end of line
//make a dummy empty cell as a vertical spacer
$pdf->Cell(189	,10,'',0,1);//end of line

$pdf->SetFont('Arial','B',12);
$pdf->Cell(45	,5,'film:',0,0);
$pdf->SetFont('Arial','',11);
$pdf->Cell(30	,5,'Prenom',0,1);

$pdf->SetFont('Arial','B',12);
$pdf->Cell(45	,5,'siege:',0,0);
$pdf->SetFont('Arial','',11);
$pdf->Cell(30	,5,'Prenom',0,1);

$pdf->SetFont('Arial','B',12);
$pdf->Cell(45	,5,'seance:',0,0);
$pdf->SetFont('Arial','',11);
$pdf->Cell(30	,5,'Prenom',0,1);

$pdf->SetFont('Arial','B',12);
$pdf->Cell(45	,5,'date de reservation:',0,0);
$pdf->SetFont('Arial','',11);
$pdf->Cell(30	,5,'Prenom',0,1);

$pdf->SetFont('Arial','B',12);
$pdf->Cell(45	,5,'date de seance:',0,0);
$pdf->SetFont('Arial','',11);
$pdf->Cell(30	,5,'Prenom',0,1);


$pdf->SetFont('Arial','B',12);
$pdf->Cell(45	,5,'Salle:',0,0);
$pdf->SetFont('Arial','',11);
$pdf->Cell(30	,5,'Prenom',0,1);
            
$pdf->Output();
?>