<?Php
require('fpdf.php');
$pdf = new FPDF('P','mm','letter');

$pdf->AddPage();

//set font to arial, bold, 14pt
$pdf->SetFont('Arial','B',20);

//Cell(width , height , text , border , end line , [align] )


$image1 = "../../posters/Captureticket.PNG";
$pdf->Cell(80	,10,$pdf->Image($image1,5,5,70,0,'PNG'),0,0);
$pdf->SetFont('Arial','B',13);
$pdf->Cell(50	,5,'nom et prenom:',0,1);//end of line
//set font to arial, regular, 12pt
$pdf->SetFont('Arial','',11);
$pdf->Cell(80	,10,'',0,0);
$pdf->Cell(50	,5,'bouacherine fahd',0,1);//end of line
$pdf->Cell(0,35,'-----------------------------------------------------------------------------------------------',0,1);//end of line
//make a dummy empty cell as a vertical spacer

$pdf->SetFont('Arial','B',12);
$pdf->Cell(90,3,'film:',0,0);
$pdf->SetFont('Arial','',11);
$pdf->Cell(30	,2,'Prenom',0,1);
$pdf->Cell(30	,2,'',0,1);

$pdf->SetFont('Arial','B',12);
$pdf->Cell(90	,3,'siege:',0,0);
$pdf->SetFont('Arial','',11);
$pdf->Cell(30	,3,'Prenom',0,1);
$pdf->Cell(30	,2,'',0,1);

$pdf->SetFont('Arial','B',12);
$pdf->Cell(90	,3,'seance:',0,0);
$pdf->SetFont('Arial','',11);
$pdf->Cell(30	,3,'Prenom',0,1);
$pdf->Cell(30	,2,'',0,1);

$pdf->SetFont('Arial','B',12);
$pdf->Cell(90	,3,'date de reservation:',0,0);
$pdf->SetFont('Arial','',11);
$pdf->Cell(30	,3,'Prenom',0,1);
$pdf->Cell(30	,2,'',0,1);

$pdf->SetFont('Arial','B',12);
$pdf->Cell(90	,3,'date de seance:',0,0);
$pdf->SetFont('Arial','',11);
$pdf->Cell(30	,3,'Prenom',0,1);
$pdf->Cell(30	,2,'',0,1);


$pdf->SetFont('Arial','B',12);
$pdf->Cell(90	,3,'Salle:',0,0);
$pdf->SetFont('Arial','',11);
$pdf->Cell(30	,2,'Prenom',0,1);
$pdf->Cell(30	,0,'',0,1);
            
$pdf->Output();
?>