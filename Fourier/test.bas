Const PI = 4 * ATN(1)

Const SCREEN_W = 800
Const SCREEN_H = 600


Rem ScreenRes 320, 200, , ,1                ' Vollbildmodus 320x200x8

SCREEN 19

LINE (20, 20)-(300, 180), 4, 
LINE (140, 80)-(180, 120), 15, 

SLEEP 3000


Print Sin (0/32*PI)

Print Sin (16/32*PI)

Print Sin (32/32*PI)

Sleep
