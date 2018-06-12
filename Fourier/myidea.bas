Const PI = 4 * ATN(1)
Const POINTS = 800
Const HARMONICS = 3
Const SCALE = 100

Screen 19

Dim ampl(POINTS,HARMONICS) As Double
Dim summ (POINTS) As Double

For harmonic As Integer = 0  To HARMONICS
	For _point As Integer = 0 To POINTS	
		ampl(_point, harmonic) = Int (SCALE * Sin (_point/(POINTS/2^(harmonic+1))*PI)/2^harmonic)
		Rem Print _point; POINTS/2^(harmonic+1); ampl(_point, harmonic); 2^harmonic
		Line -(_point, SCALE*2 + ampl(_point, harmonic))
	Next
Next

Line (0,0)-(0,0)

For _point As Integer = 0 To POINTS
	For harmonic As Integer = 0  To HARMONICS
		summ (_point) = summ (_point) + ampl(_point, harmonic)
		Rem Print summ (_point)		
	Next
	Line -(_point, SCALE*4 + summ (_point))
Next	

Line (0, SCALE*4)-(POINTS, SCALE*4)

Sleep  
  