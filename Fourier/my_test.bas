Const PI = 4 * ATN(1)
Const POINTS = 800
Const HARMONICS = 5
Const SCALE = 100
Const X_SCALE = PI*2/1500

#Define __DEBUG__1

	#Ifndef __DEBUG__
Screen 19
	#EndIf 

Dim ampl(POINTS,HARMONICS) As Double
Dim summ (POINTS) As Double

Line(0,300)-(0,300)

For harmonic As Integer = 0  To HARMONICS
	For _point As Integer = 0 To POINTS
		
		ampl(_point, harmonic) = Int (SCALE * Sin (X_SCALE * 2^harmonic * _point))
				
			#Ifdef __DEBUG__ 
		Print _point; ampl(_point, harmonic)
			#Else 		
		Line (_point+1, ampl(_point, harmonic) + 300)-(_point, ampl(_point, harmonic) + 300),harmonic
			#EndIf 

	Next
Next

Line(0,300)-(800,300)






Sleep
 
