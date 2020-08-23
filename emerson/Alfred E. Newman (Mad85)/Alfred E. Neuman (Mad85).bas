10  REM MAD COMPUTER PROGRAM
20  REM COPYRIGHT 1985 E. C. PUBLICATIONS
30  REM CCE MC-1000 COLOR COMPUTER VERSION APRIL 2014
40  REM ALL RIGHTS RESERVED
50  REM * THE LINES 150 TO 170 ARE NOT NATIVE TO MC-1000 BASIC *
60  HGR : FOR Y = 0 TO 191: PLOT 0,Y TO 255,Y: NEXT Y
70 XC = 127:YC = 95:SH = 1.2:SV = 1.1
80  READ X,Y,X1,Y1
90  IF X = 999 THEN 150
100 FX = X * SH + XC:FY = 191 - (Y * SV + YC)
110 LX = X1 * SH + XC:LY = 191 - (Y1 * SV + YC)
120  UNPLOT FX,FY TO LX,LY
130  UNPLOT FX + 1,FY TO LX + 1,LY
140  GOTO 80
150  GOSUB 2000
160  POKE 283,0: REM INKEY$
170  IF  PEEK (283) = 0 THEN 170
180  TEXT : HOME : END
190  DATA -27,-11,-23,-6,-28,-13,-22,-6,-20,-5,-12,-5,-27,-14,-26,-13
200  DATA -38,-29,-42,-28,-40,-28,-50,-16,-8,13,0,13,-29,4,-29,9
210  DATA -50,-17,-41,-28,-49,-17,-50,-8,-8,12,0,12,-28,5,-28,13
220  DATA -50,-15,-49,-10,40,-26,42,-17,-4,9,-21,14,5,48,2,44
230  DATA -53,-39,-45,-48,-55,-23,-55,-28,-61,-23,-58,-22,-42,-39,-43,-39
240  DATA 36,-52,36,-55,-37,-48,-32,-56,-32,-56,-26,-60,9,-74,33,-55
250  DATA 6,-12,12,-11,14,-8,24,-11,14,-8,24,-11,6,-13,10,-11,20,-9,10,-8
260  DATA -23,-15,-24,-19,-26,-18,-22,-15,-25,-18,-22,-19,-23,-18,-21,-16
270  DATA -49,2,-43,10,38,-11,43,-15,7,14,7,9,-9,13,-6,8
280  DATA -5,-33,-4,-33,-6,-36,-6,-36,-5,-32,-5,-32,-7,-29,-7,-29
290  DATA -39,-32,-38,-41,-62,-25,-54,-39,-50,-29,-50,-35,-54,-33,-57,-24
300  DATA -38,-34,-39,-39,-51,-19,-60,-22,-57,-25,-50,-24,-48,-25,-46,-38
310  DATA -42,-24,-42,-19,41,-26,43,-14,-3,7,-19,14,8,48,4,42
320  DATA 27,-38,31,-47,-29,-42,-16,-37,-11,-51,10,-48,26,-38,24,-47
330  DATA -4,-73,14,-71,-3,-74,5,-74,5,-73,12,-72,8,-72,35,-57
340  DATA -2,-48,5,-54,-15,-36,-20,-42,17,-34,32,-45,-6,-53,6,-48
350  DATA 40,-51,38,-43,39,-45,38,-50,38,-46,37,-53,37,-47,37,-46
360  DATA 15,-25,18,-24,23,-18,23,-20,12,-19,19,-18
370  DATA 8,-50,20,-49,-12,-53,-3,-62,-5,-49,14,-49,4,-62,16,-53
380  DATA -41,-19,-41,-27,44,-14,43,-20,-22,13,-22,14,8,46,2,42
390  DATA -40,-23,-39,-28,42,-26,50,-19,-23,14,-24,5,3,41,2,48
400  DATA -51,-42,-39,-49,-47,-26,-49,-36,-53,-18,-59,-21,-45,-28,-53,-23
410  DATA -40,-19,-37,-7,50,-18,50,-13,-25,5,-26,14,1,41,9,40
420  DATA -22,-9,-19,-6,-21,-9,-18,-6,-21,-6,-11,-9,-19,-8,-16,-8
430  DATA -57,-26,-57,-28,-37,-41,-37,-37,-59,-31,-50,-40,-39,-36,-36,-40
440  DATA -5,-28,-6,-30,-6,-28,-7,-30,6,-28,5,-30,6,-29,6,-31
450  DATA 6,-37,9,-36,-12,-38,-2,-39,-6,-33,-2,-35,-13,-35,-8,-39
460  DATA -20,-18,-17,-17,-14,-18,-15,-17,-17,-18,-16,-18,-20,-17,-14,-17
470  DATA -39,-17,-35,-6,51,-14,48,-12,-24,8,-23,13,1,40,12,39
480  DATA -36,-6,-36,-1,41,-14,40,-9,-23,8,-24,11,14,39,19,40
490  DATA -26,-34,-32,-37,-32,37,-29,32,-29,32,-30,36,-29,32,-39,34
500  DATA -35,-5,-35,-1,40,-13,41,-12,-26,7,-27,14,21,39,11,38
510  DATA -61,-29,-56,-37,-47,-35,-42,-36,-49,-39,-45,-42,-61,-24,-59,-35
520  DATA 60,-24,55,-20,60,-23,61,-32,61,-29,61,-24,60,-29,59,-33
530  DATA 17,-53,5,-62,6,-48,17,-50,8,-48,2,-54,-28,-41,-18,-48
540  DATA -14,-52,-4,-62,-5,-51,9,-51,-27,-43,-28,-47,-5,-62,8,-59
550  DATA -46,14,-42,18,-45,25,-45,15,-42,18,-42,11,-43,11,-51,0
560  DATA 15,-19,18,-16,14,-16,18,-19,7,-18,8,-16,8,-17,11,-16
570  DATA 39,-42,38,-37,39,-40,40,-32,41,-33,40,-39,39,-34,39,-36
580  DATA 42,-40,43,-42,44,-42,45,-32,46,-36,45,-41,42,-38,43,-41
590  DATA 48,-11,47,7,41,-14,40,-9,15,37,15,36,17,36,19,36
600  DATA -49,-28,-48,-37,-61,-32,-62,-27,-55,-35,-43,-49,-46,-34,-42,-35
610  DATA -14,-65,-6,-71,14,-68,32,-57,18,-65,20,-63,14,-70,23,-65
620  DATA 31,-41,32,-43,3,-42,4,-43,-22,-43,-23,-42,-9,-52,-9,-52
630  DATA 31,-40,29,-45,14,-50,21,-48,-27,-46,-25,-46,-26,-47,-27,-47
640  DATA -10,-10,-11,-15,-9,-11,-10,-15,-10,-13,-8,-13,-11,-11,-8,-12
650  DATA 21,-38,29,-44,-7,-48,-3,-48,-27,-45,-21,-47,-12,-55,-6,-61
660  DATA 48,6,49,-11,39,-10,41,-5,18,35,22,35,19,34,23,34
670  DATA 51,-3,45,8,40,-5,38,-11,23,35,43,17,45,17,27,33
680  DATA 46,-40,46,-36,43,-38,43,-39,46,-30,52,-33,47,-30,52,-32
690  DATA 57,-32,57,-27,44,-25,49,-21
700  DATA 7,-13,9,-8,10,-8,8,-12,23,-9,12,-7,11,-9,24,-10
710  DATA 57,-25,53,-24,52,-25,56,-24,56,-32,55,-26,56,-27,56,-29,52,-24,57,-26
720  DATA -13,-13,-26,-17,-12,-16,-10,-18,-15,-14,-11,-18,-21,-14,-17,-14
730  DATA 18,-20,21,-17,12,-16,16,-19,8,-20,10,-19,13,-23,19,-23
740  DATA -22,-22,-13,-21,-16,-22,-21,-23,-21,-21,-19,-23,-20,-21,-18,-21
750  DATA 47,4,49,-3,41,-4,37,2,46,16,41,16,41,16,47,9
760  DATA 37,4,41,-2,-49,-9,-48,-4,43,11,45,9,-2,11,1,11
770  DATA -47,-4,-48,-9,-48,-3,-49,-1,2,11,8,8,4,11,9,9
780  DATA 46,-32,48,-28,49,-38,49,-35,50,-37,51,-25,51,-37,52,-30
790  DATA -56,-23,-57,-29,-60,-24,-60,-33,-54,-23,-46,-29,-46,-40,-44,-42
800  DATA -44,-34,-45,-38,-44,-37,-42,-37,-44,-38,-42,-38,-48,-46,-42,-49
810  DATA 21,-16,10,-18,22,-17,19,-25,20,-24,22,-19,10,-23,18,-25
820  DATA -41,33,-35,34,-41,32,-38,32,-38,31,-42,31,-42,32,-45,30
830  DATA -3,-36,-12,-37,7,-35,7,-35,-3,-37,-8,-36,-8,-38,-4,-38
840  DATA 8,-18,9,-16
850  DATA -35,-45,-29,-58,-36,-46,-35,-53,-38,-48,-26,-57,-35,-48,-30,-58
860  DATA -34,-52,-25,-59,-32,-55,-25,-60,-34,-49,-14,-68,-36,-51,-22,-61
870  DATA -49,-3,-46,-5,-10,9,4,15,3,15,6,10,6,11,6,14
880  DATA 47,-22,52,-21,48,-21,56,-20,55,-21,48,-21,56,-20,59,-22
890  DATA 24,-64,32,-60,30,-59,34,-57,33,-59,35,-52,35,-56,36,-49
900  DATA 61,-32,42,-51,43,-51,51,-41,50,-41,45,-46,58,-37,54,-41
910  DATA -39,30,-45,23,-38,30,-46,21,-46,24,-47,11,-46,12,-42,27
920  DATA 7,-29,6,-31,13,-35,13,-35,4,-37,8,-35,5,-36,8,-37
930  DATA -16,-49,-8,-50,9,-53,9,-49,20,-37,29,-39,-17,-39,-24,-41
940  DATA 21,-36,32,-44,-2,-62,5,-61,9,-58,16,-53,-26,-44,-22,-46
950  DATA -51,1,-43,12,7,14,15,13,13,11,17,8,20,10,27,4
960  DATA -42,11,-49,2,8,13,19,12,19,11,10,12,22,9,27,5
970  DATA -24,-56,-22,-59,-23,-58,-4,-74,-23,-56,-15,-67,-21,-57,-8,-72
980  DATA -7,-73,-12,-69,-12,-68,-4,-71,-21,-58,-13,-68,-10,-71,8,-74
990  DATA 12,-32,14,-35,13,-32,12,-37,14,-34,13,-37,11,-37,14,-36
1000  DATA -17,-6,-10,-8,-13,-9,-10,-6,-10,-7,-11,-6,-12,-6,-15,-6
1010  DATA 17,-35,21,-39,7,-62,14,-56,14,-51,-17,-48,4,-43,4,-47
1020  DATA -11,-12,-12,-14,-12,-13,-9,-15,-20,-16,-15,-16,-17,-16,-15,-16
1030  DATA -11,-22,-12,-24,-9,-22,-12,-23,-9,-20,-11,-24,-8,-20,-9,-23
1040  DATA -34,-2,-33,6,25,7,29,7,30,8,30,6,31,8,35,9
1050  DATA -33,3,-33,-1,33,8,36,8,36,7,36,2,35,4,35,7
1060  DATA -32,6,-31,11,-30,11,-29,4,3,48,-3,41,-5,41,2,48
1070  DATA -5,-59,-6,-62,12,-52,21,-47,-2,-54,-2,-53,-4,-60,3,-62
1080  DATA -44,-47,-41,-49,-54,-24,-56,-30,-36,-43,-37,-48,-47,-37,-49,-32
1090  DATA -40,-48,-45,-46,-38,-47,-35,-44,-58,-36,-51,-40,-58,-35,-48,-45
1100  DATA 24,-42,32,-42,-3,-61,-3,-61,-54,-19,-50,-18,-5,-72,9,-72
1110  DATA 10,-22,10,-22,19,-22,19,-22,13,-16,13,-16,9,-19,10,-20
1120  DATA -25,-42,-21,-41,2,-53,4,-54,29,-40,31,-46,26,-43,22,-48
1130  DATA 6,-10,18,-6,14,-6,21,-7,22,-8,6,-11
1140  DATA 1,-38,-14,-36,-13,-37,-11,-32,-14,-35,-12,-33
1150  DATA 55,-37,41,-51,46,-48,61,-33,41,-49,37,-48
1160  DATA -10,-21,-10,-24,-28,-14,-22,-7
1170  DATA -3,43,-26,35,-26,35,-5,41,-9,39,-20,36,-26,34,-26,37
1180  DATA -6,-58,1,-60,-24,-43,-21,-42,3,-45,3,-46,4,-52,4,-53
1190  DATA 72,73,72,63,71,74,70,78,71,62,70,58,69,57,65,53,70,78,65,83
1200  DATA 64,83,58,86,64,53,55,48,56,49,43,49,47,48,55,48,58,86,46,86
1210  DATA 42,84,46,85,44,50,39,52,42,50,39,51,41,85,40,85,39,86,33,86
1220  DATA 38,51,33,48,35,79,35,58,34,79,34,58,34,57,32,56,34,80,32,79
1230  DATA 32,85,30,83,31,83,31,80,30,82,30,79,31,55,29,55,33,49,23,49
1240  DATA 32,48,25,48,24,50,22,50,28,55,17,78,18,79,20,79,20,80,20,84
1250  DATA 21,51,18,48,19,50,17,48,16,48,14,48,17,49,14,49,19,85,11,86
1260  DATA 13,48,12,53,12,48,11,53,11,54,15,57,15,58,14,59,14,59,-1,59
1270  DATA 14,58,-2,58,10,85,7,83,6,84,1,86,0,86,-5,85,-6,85,-6,80,-7,83,-7,79
1280  DATA -5,79,-3,79,-2,78,-13,56,-14,56,-3,78,-2,59,-4,57,-4,56,-1,54
1290  DATA 0,55,1,55,1,54,1,50,0,50,-1,48,-2,48,-7,48,-2,49,-6,49,-6,48,-9,51
1300  DATA -7,48,-10,50,-11,49,-17,49,-12,48,-16,48,-17,48,-21,51,-18,48,-22,50
1310  DATA -15,55,-16,55,-17,56,-22,78,-21,79,-19,79,-19,80,-19,84,-23,49,-30,49
1320  DATA -24,48,-30,48,-31,48,-31,55,-32,54,-32,49,-30,55,-28,55
1330  DATA -20,85,-25,86,-26,85,-29,83,-28,55,-32,70,-28,55,-31,71
1340  DATA -28,83,-33,86,-34,86,-37,86,-32,70,-41,49,-38,85,-40,84
1350  DATA -40,83,-40,81,-41,83,-41,79,-40,80,-37,78,-37,78,-41,65
1360  DATA -42,65,-38,78,-43,64,-48,78,-47,79,-45,79,-45,80,-45,84
1370  DATA -46,85,-51,86,-42,49,-47,49,-42,48,-48,48,-48,48,-56,70
1380  DATA -48,49,-56,71,-56,71,-60,56,-52,85,-54,84,-55,83,-59,85
1390  DATA -60,86,-64,86,-59,55,-58,54,-57,54,-55,55,-55,54,-55,50
1400  DATA -56,50,-57,48,-57,49,-61,49,-58,48,-60,48,-61,48,-64,51
1410  DATA -62,48,-65,50,-65,85,-67,84,-67,83,-67,79,-68,83,-68,79,-66,79,-64,79
1420  DATA -63,78,-68,56,-69,55,-64,78,-66,49,-72,49,-68,48,-73,48
1430  DATA -69,55,-73,55,-73,55,-73,48,-74,49,-74,54
1440  DATA 61,71,61,65,60,73,60,63,59,73,59,72,60,65,58,60
1450  DATA 59,61,54,56,59,74,55,78,59,75,54,80,54,80,48,80
1460  DATA 46,79,55,79,54,56,48,56,47,57,46,57,47,78,46,78
1470  DATA 45,78,45,58,7,76,11,66,10,66,6,76,9,66,1,66,0,66,6,75
1480  DATA 999,0,0,0
2000  REM COPYRIGHT NOTICE
2010 X$ = "COPYRIGHT 1985 E. C. PUBLICATIONS"
2020 X = 128 -  INT ( LEN (X$) / 2) * 4:Y = 184
2030  FOR I = 1 TO  LEN (X$):C$ =  MID$ (X$,I,1)
2040  GOSUB 2100
2050  IF A AND 1 THEN  SET X,Y: UNDRAW 2,0
2051  IF A AND 2 THEN  SET X,Y + 2: UNDRAW 2,0
2052  IF A AND 4 THEN  SET X,Y + 4: UNDRAW 2,0
2053  IF A AND 8 THEN  SET X,Y: UNDRAW 0,2
2054  IF A AND 16 THEN  SET X,Y + 2: UNDRAW 0,2
2055  IF A AND 32 THEN  SET X + 2,Y: UNDRAW 0,2
2056  IF A AND 64 THEN  SET X + 2,Y + 2: UNDRAW 0,2
2057  IF A AND 128 THEN  SET X + 1,Y: UNDRAW 0,2
2058  IF A AND 256 THEN  SET X + 1,Y + 2: UNDRAW 0,2
2060  ON B GOSUB 2200,2210,2220,2230
2070 X = X + 4
2080  NEXT I
2090  RETURN
2100  RESTORE 3000
2110  READ K$: IF K$ = "" OR K$ > C$ THEN A = 0:B = 0: RETURN
2130  READ A,B
2140  IF K$ = C$ THEN  RETURN
2150  GOTO 2110
2200  UNPLOT X,Y + 4: RETURN
2210  UNPLOT X,Y + 1: RETURN
2220  SET X + 2,Y + 1: UNDRAW  - 1,1: UNDRAW 1,1: RETURN
2230  SET X + 1,Y + 3: UNDRAW 1,1: RETURN
3000  DATA ".",0,1
3010  DATA "1",388,2
3020  DATA "5",79,0
3030  DATA "8",127,0
3040  DATA "9",111,0
3050  DATA "A",123,0
3060  DATA "B",29,3
3070  DATA "C",29,0
3080  DATA "E",31,0
3090  DATA "G",93,0
3100  DATA "H",122,0
3110  DATA "I",389,0
3120  DATA "L",28,0
3130  DATA "N",114,2
3140  DATA "O",125,0
3150  DATA "P",59,0
3160  DATA "R",59,4
3170  DATA "S",79,0
3180  DATA "T",385,0
3190  DATA "U",124,0
3200  DATA "Y",298,0
3210  DATA ""
