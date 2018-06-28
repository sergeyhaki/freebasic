Const PI = 4 * ATN(1)
Const POINTS = 20
Const SCALE = 100

Dim ampl(4) As Double
Dim freq(4) As Double
Dim harm(4) As Double
Dim res As Double

ampl(0) = 1
ampl(1) = 1
ampl(2) = 1
ampl(3) = 1

freq(0) = 100
freq(1) = 200
freq(2) = 400
freq(3) = 500

harm(0) = 0
harm(1) = 0
harm(2) = 0
harm(3) = 0

For harm As Integer = 0  To 3
	For _point As Integer = 0 To POINTS
		res = ampl(harm) * Sin (2*PI / freq(harm) * _point)
		Print res
	Next
	Print:Print 
Next



Sleep










