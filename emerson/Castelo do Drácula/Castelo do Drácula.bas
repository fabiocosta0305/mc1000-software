0  GOTO 100: REM "CASTELO DO DRACULA"
1  PRINT AT$; CHR$ (Y); CHR$ (X + 32);: POKE CP,X: RETURN : REM LOCATE Y,X
2  CALL 49158:I$ =  CHR$ ( PEEK (K0)): RETURN : REM I$=INPUT$(1)
3  GOSUB 2: FOR A = 1 TO  LEN (OP$): IF I$ <  >  MID$ (OP$,A,1) THEN  NEXT A: GOTO 3: REM AGUARDA UMA TECLA EM OP$
4  RETURN
5  FOR A = 1 TO T: NEXT A: RETURN : REM PAUSA
100  GOSUB 10000
110  GOSUB 7000: REM TELA TITULO
120  GOSUB 9000: REM INICIALIZA
130  GOSUB 7500: REM TELA CASTELO
140  GOSUB 8000: REM OFERECE INSTRUCOES
150  GOSUB 7800: REM INICIA JOGO
200  REM LACO PRINCIPAL
210 SP = SP + 1: REM CONTA SALAS PERCORRIDAS
220  IF MP >  - 1 THEN MP = MP - 1: REM CONTA ATE' POR-DO-SOL
230  IF MP > 0 THEN  IF MP / 5 =  INT (MP / 5) THEN  GOSUB 1100: REM EXIBE CONTAGEM
240  IF MP = 0 THEN  GOSUB 1200: REM POR-DO-SOL
250  IF MP <  = 0 THEN  GOSUB 1300: REM POSICIONA DRACULA
260  IF  FN R(15) = 1 THEN  GOSUB 1600: REM OFERECE MAPA
270  GOSUB 2000: REM COMANDO
280  GOSUB 3000: REM ENCONTROS
290  IF FJ = 0 THEN 200: REM REPETE ATE' FIM DO JOGO
300  ON FJ GOSUB 5200,5400: REM DESCREVE FIM DO JOGO
900  REM OFERECE NOVO JOGO
910  PRINT "JOGAR DE NOVO? (S/N)";
920 OP$ = "SN": GOSUB 3
930  IF I$ = "S" THEN  RUN
940  GOSUB 1000
950  PRINT
960  PRINT
970  PRINT "OK, ADEUS POR ORA."
999  END
1000  REM LIMPA TELA
1010 Y = 0:X = 0: GOSUB 1
1020  FOR A = 1 TO 15
1030  PRINT "~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80";
1040  POKE CP,0
1050  NEXT A
1060  PRINT "~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80";
1070 Y = 0:X = 0: GOSUB 1
1080  OUT CO,0: POKE FV, ASC ("~80")
1090  RETURN
1100  REM CONTAGEM PARA O POR-DO-SOL
1110  GOSUB 1000
1120 Y = 7:X = 7: GOSUB 1: PRINT "FALTAM";MP;"MINUTOS";
1130 Y = 8:X = 7: GOSUB 1: PRINT "PARA O POR-DO-SOL.";
1140 T = 1000: GOSUB 5
1150  RETURN
1200  REM POR-DO-SOL
1210  GOSUB 1000
1220  PRINT "~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F";
1230  PRINT "~7F~7F~7F~7F~7FO DRACULA SE LEVANTOU!~7F~7F~7F~7F~7F";
1240  PRINT "~7F~7F~7F~7F~7F~7F~7F~7FTOMA CUIDADO!!!~7F~7F~7F~7F~7F~7F~7F~7F~7F";
1250  PRINT "~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F~7F";
1260 T = 2000: GOSUB 5
1270  RETURN
1300  REM POSICIONA DRACULA
1310 R =  FN R(4)
1320 XD = XJ +  ABS (R = 1) -  ABS (R = 2)
1330 YD = YJ +  ABS (R = 3) -  ABS (R = 4)
1340  IF XD = 1 THEN XD = 3
1350  IF XD = MX THEN XD = MX - 2
1360  IF YD = 0 THEN YD = 2
1370  IF YD = MY THEN YD = MY - 2
1380  RETURN
1600  REM OFERECE MAPA
1610  HOME
1620 DE =  FN R(EP / 5)
1630  PRINT "DESEJAS VER UM MAPA DA TUMBA?"
1640  PRINT
1650  PRINT "(CUSTAR-TE-A'";DE;"DAS TUAS"
1660  PRINT "ESTACAS DE PRATA.)"
1670  PRINT "(S/N)";
1680 OP$ = "SN": GOSUB 3
1690  IF I$ = "N" THEN  RETURN
1700 EP = EP - DE
1800  REM MAPA
1810  HOME
1820  FOR A = 1 TO TM STEP MX
1830  FOR B = A TO A + MX - 1
1840  PRINT A$(B);
1850  NEXT B
1860  IF A < TM - MX THEN  PRINT
1870  NEXT A
1880  IF MP <  = 0 THEN Y = YD - 1:X = XD - 1: GOSUB 1: PRINT D$;
1890 Y = YJ - 1:X = XJ - 1: GOSUB 1: PRINT J$;
1900 Y = 0:X = 22: GOSUB 1: PRINT "CASTELO DO";
1910 Y = 1:X = 22: GOSUB 1: PRINT " DRACULA";
1920 Y = 3:X = 22: GOSUB 1: PRINT "  NIVEL";
1930 Y = 4:X = 22: GOSUB 1: PRINT "   ";N;
1940 Y = 10:X = 22: GOSUB 1: PRINT "TECLA ALGO";
1950 Y = 11:X = 22: GOSUB 1: PRINT "   PARA";
1960 Y = 12:X = 22: GOSUB 1: PRINT "CONTINUAR";
1970  GOSUB 2
1980  RETURN
2000  REM COMANDO
2010  HOME
2020  PRINT "NIVEL";N
2030  PRINT
2040  PRINT "TENS";EP;"ESTACAS DE PRATA"
2050  PRINT "NO VALOR DE $";(EP * 250);"."
2060  PRINT
2070  PRINT "EM QUE DIRECAO QUERES IR?"
2080  PRINT "NORTE, LESTE, SUL OU OESTE?"
2090  PRINT "(N,L,S OU O)";
2100 DM = D
2110 OP$ = "NLSO": GOSUB 3
2120 D = A - 1
2130 YY = YJ -  ABS (I$ = "N") +  ABS (I$ = "S")
2140 XX = XJ -  ABS (I$ = "O") +  ABS (I$ = "L")
2150  IF YY = 1 OR YY = MY OR XX = 1 OR XX = MX THEN  GOSUB 2800: GOTO 2010
2160 YJ = YY:XJ = XX
2170  HOME
2180  ON 1 + ((D - DM) AND 3) GOSUB 2300,2500,2300,2550
2190 Y = 2:X = 20: GOSUB 1: PRINT "OLHANDO PARA";
2200 Y = 3:X = 20: GOSUB 1: PRINT "    ";D$(DM);
2210 Y = 5:X = 20: GOSUB 1: PRINT "  INDO PARA";
2220 Y = 6:X = 20: GOSUB 1: PRINT "    ";D$(D);
2230 T = 500: GOSUB 5
2240  RETURN
2300  REM VISAO FRENTE/TRAS
2310  PRINT "~96~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~99"
2320  PRINT "~9F~96~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~99~9F"
2330  PRINT "~9F~9F~96~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~99~9F~9F"
2340  PRINT "~9F~9F~9F~96~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~99~9F~9F~9F"
2350  PRINT "~9F~9F~9F~9F~96~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~99~9F~9F~9F~9F"
2360  PRINT "~9F~9F~9F~9F~9F~91~93~93~93~93~93~93~93~93~92~9F~9F~9F~9F~9F"
2370  PRINT "~9F~9F~9F~9F~9F~95~9F~9F~9F~9F~9F~9F~9F~9F~9A~9F~9F~9F~9F~9F"
2380  PRINT "~9F~9F~9F~9F~9F~95~9F~9F~9A~63~63~95~9F~9F~9A~9F~9F~9F~9F~9F"
2390  PRINT "~9F~9F~9F~9F~9F~95~9F~9F~9A~6F~6F~95~9F~9F~9A~9F~9F~9F~9F~9F"
2400  PRINT "~9F~9F~9F~9F~9F~95~9F~9F~9A~6F~6F~95~9F~9F~9A~9F~9F~9F~9F~9F"
2410  PRINT "~9F~9F~9F~9F~9F~94~9C~9C~98~6F~6F~94~9C~9C~98~9F~9F~9F~9F~9F"
2420  PRINT "~9F~9F~9F~9F~99~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~96~9F~9F~9F~9F"
2430  PRINT "~9F~9F~9F~99~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~96~9F~9F~9F"
2440  PRINT "~9F~9F~99~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~96~9F~9F"
2450  PRINT "~9F~99~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~96~9F"
2460  PRINT "~99~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~96";
2470  RETURN
2500  REM VISAO DIREITA
2510  GOSUB 2600
2520 Y = 13:X = 3: GOSUB 1: PRINT "<-";
2530  RETURN
2550  REM VISAO ESQUERDA
2560  GOSUB 2600
2570 Y = 13:X = 13: GOSUB 1: PRINT "->";
2580  RETURN
2600  REM VISAO ESQUERDA/DIREITA
2610  PRINT "~96~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~99"
2620  PRINT "~9F~96~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~99~9F"
2630  PRINT "~9F~9F~96~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~99~9F~9F"
2640  PRINT "~9F~9F~9F~96~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~99~9F~9F~9F"
2650  PRINT "~9F~9A~9D~9F~96~9F~9F~9F~9F~9F~9F~9F~9F~99~9F~9E~95~9F"
2660  PRINT "~9F~9A~6B~9D~9F~96~9F~9F~9F~9F~9F~9F~99~9F~9E~67~95~9F"
2670  PRINT "~9F~9A~6F~6B~9D~9F~96~9C~9C~9C~9C~99~9F~9E~67~6F~95~9F"
2680  PRINT "~9F~9A~6F~6F~95~9F~9A~9F~9E~9D~9F~95~9F~9A~6F~6F~95~9F"
2690  PRINT "~9F~9A~6F~6F~95~9F~9A~9F~9A~95~9F~95~9F~9A~6F~6F~95~9F"
2700  PRINT "~9F~9A~6F~6F~95~9F~99~93~93~93~93~96~9F~9A~6F~6F~95~9F"
2710  PRINT "~9F~9A~6F~6F~95~99~9F~9F~9F~9F~9F~9F~96~9A~6F~6F~95~9F"
2720  PRINT "~9F~9A~6F~6F~91~9F~9F~9F~9F~9F~9F~9F~9F~92~6F~6F~95~9F"
2730  PRINT "~9F~9A~6F~6F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~6F~6F~95~9F"
2740  PRINT "~9F~9A~6F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~6F~95~9F"
2750  PRINT "~9F~99~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~96~9F"
2760  PRINT "~99~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~96";
2770  RETURN
2800  REM MURO
2810  HOME
2820  PRINT "NAO PODES IR PARA ";D$(D);"."
2830  PRINT
2840  PRINT "A MURALHA EXTERNA DO CASTELO"
2850  PRINT "ESTA' AQUI."
2860 Y = 10:X = 0: GOSUB 1
2870  PRINT "+ + + + + + + + + + + + + + + +"
2880  PRINT "~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F"
2890  PRINT "~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F~0F"
2900 T = 2000: GOSUB 5
2910  RETURN
3000  REM CONTEUDO DA SALA
3010  GOSUB 1000
3020 PJ = (YJ - 1) * MX + XJ
3030 PD = (YD - 1) * MX + XD
3040  IF PJ = PD THEN 4400
3050 PJ$ = A$(PJ)
3060  IF PJ$ = SV$ THEN 3200
3070  IF PJ$ = SM$ THEN 3300
3080  IF PJ$ = A$ THEN 3400
3090  IF PJ$ = O$ THEN 3600
3100  IF PJ$ = PA$ THEN 3800
3110  IF PJ$ = FV$ THEN 4000
3120  IF PJ$ = Z$ THEN 4200
3130  IF PJ$ = EP$ THEN 4800
3140  IF PJ$ = E$ THEN 5000
3150  STOP
3200  REM SALA VAZIA
3210 Y = 7:X = 11: GOSUB 1: PRINT "SALA VAZIA";
3220 T = 500: GOSUB 5
3230  RETURN
3300  REM SALA MISTERIOSA
3310 Y = 7:X = 7: GOSUB 1: PRINT "?`S`A`L`A` `M`I`S`T`E`R`I`O`S`A?";
3320 T = 500: GOSUB 5
3330  GOSUB 1000
3340  ON  FN R(10) GOTO 3400,3600,3800,4000,4200
3350  GOTO 4800
3400  REM ASSOMBRACAO
3410  PRINT "~E0~E0~E0~E0~E0~E3~E6~EC~E9~E3"
3420  PRINT "~E0~E0~E0~E0~E5~E1~E6~EF~E3~E2~E9"
3430  PRINT "~E0~E0~E0~E0~EA~E1~E3~E8~E6~E7~E0~EA"
3440  PRINT "~E0~E0~E0~E1~EC~E9~E2~E5~E2~E0~E5~EA"
3450  PRINT "~E0~E0~E0~E5~14~E0~E6~EA~E6~ED~E0~EA"
3460  PRINT "~E0~E0~E1~E7~EB~E0~E6~E1~E8~E4~E5"
3470  PRINT "~E0~E1~EF~EF~EF~ED~E0~E9~E2~E1~E8"
3480  PRINT "~E0~EC~EC~E8~E0~E0~EC~E3~E7~E8"
3490  PRINT "~E0~E0~E0~E0~E0~E0~E1~EF~EF"
3500  PRINT "~E0~E0~E0~E0~E0~E0~E7~EF~EF"
3510  PRINT "~E0~E0~E0~E0~E0~E1~EF~EF~EF~EA"
3520  PRINT "~E0~E0~E0~E0~E5~EE~E5~EF~EF~EA"
3530  PRINT "~E0~E0~E0~E0~EE~E5~EC~EF~EC~EB"
3540  PRINT "~E0~E0~E0~E7~E9~EE~E5~EA~E0~ED"
3550  PRINT "~E0~E0~E1~E9~EE~E0~E5~E0~E0~E5~E2"
3560  PRINT "~E0~E0~E8~E6~E0~E0~E4~E8~E0~E0~E4~E8";
3570 Y = 0:X = 15: GOSUB 1: PRINT "ASSOMBRACAO";
3580  GOTO 4600
3600  REM OGRO
3610  PRINT "~F0~F0~F0~FA~F5~F5~F5~F5~F2~F7~F7~F7~F2~FA~FA"
3620  PRINT "~F0~F0~F1~FF~FF~FF~FF~FF~FF~FF~FF~FF~FF~FF~FB"
3630  PRINT "~F3~F0~F1~FF~FF~FF~FF~FC~FE~F4~F8~FF~FF~FF~FB~F0~F1~F2"
3640  PRINT "~FA~F9~F0~FF~FE~F4~F0~F9~F8~F0~F1~FE~F0~FD~FA~F1~F8~FA"
3650  PRINT "~FA~F2~FC~FF~F8~F7~F2~F0~F9~F1~F8~F1~FB~F0~FF~F8~F2~FA"
3660  PRINT "~FA~F4~F0~F7~F4~FB~FE~F0~F0~F0~F0~FD~F7~F8~FF~FF~F0~FA"
3670  PRINT "~F4~F2~F7~FE~F0~F4~F0~F4~F0~F0~F8~F0~F8~F0~FD~FA~F6"
3680  PRINT "~F0~F4~F6~FA~F0~F0~F1~F8~FA~F5~F4~F2~F0~F0~FF~FE"
3690  PRINT "~F0~F0~F5~FA~F0~F1~F8~F0~F0~F0~F0~F5~F2~F0~FA~FE"
3700  PRINT "~F0~F0~F1~FF~F0~F7~FD~FC~FE~FD~FD~FD~FB~F0~F5~FE"
3710  PRINT "~F0~F0~F0~F9~F7~FF~F7~F3~FB~F7~F7~F7~FF~FB~F8"
3720  PRINT "~F0~F0~F0~F0~F4~FF~F0~FA~F5~F0~FA~FA~FF~FA"
3730  PRINT "~F0~F0~F0~F0~F0~F4~FE~FC~FC~FC~FC~FD~F8"
3740  PRINT "~F0~F0~F0~F0~F0~F0~F4~F2~F6~F9~F1~F8"
3750  PRINT "~F0~F0~F0~F0~F0~F0~F0~F4~F3~F3~F8";
3760 Y = 0:X = 18: GOSUB 1: PRINT "OGRO";
3770  GOTO 4600
3800  REM PLANTA ASSASSINA
3810  PRINT "~90~90~90~90~90~91~93~9B~9F~9F~9F~9F~9F~93"
3820  PRINT "~90~90~90~90~91~9F~9F~9F~9F~9F~9F~9F~9F~9F~9B"
3830  PRINT "~90~90~90~91~9F~9F~9E~9C~91~93~93~93~93~9D~9F"
3840  PRINT "~90~90~91~97~9F~9A~97~9F~9F~9F~9F~9F~9F~9A~9F~9A"
3850  PRINT "~90~90~97~9F~9E~97~9F~9C~9C~9F~9F~9C~9F~9B~9D~9F"
3860  PRINT "~90~95~9F~9F~99~9F~98~90~90~9F~98~90~95~9F~95~9F~9A"
3870  PRINT "~90~9F~9F~9A~97~9F~90~90~97~9F~92~90~90~9F~95~9F~9A"
3880  PRINT "~90~9F~9F~99~9F~9F~9B~9F~9F~9F~9F~9B~93~9F~9A~9F~9B"
3890  PRINT "~95~9F~9F~95~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9B~9D~9F"
3900  PRINT "~95~9F~9F~95~9F~9F~9F~9E~9C~9F~9F~9F~9F~9F~9F~95~9F~9A"
3910  PRINT "~95~9F~9E~97~9F~9F~9F~90~90~95~9F~9F~9F~9F~9F~95~9F~9F"
3920  PRINT "~9F~9F~9A~9F~9F~9F~9E~90~90~94~9F~9F~9F~9F~9F~95~9F~9F"
3930  PRINT "~9D~9F~98~9F~9F~9F~98~90~90~90~9D~9F~9F~9F~9E~95~9F~9F"
3940  PRINT "~94~9F~90~9F~9F~9F~92~91~9B~90~97~9F~9F~9F~9A~90~9F~9A"
3950  PRINT "~90~90~90~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9E"
3960  PRINT "~90~90~90~94~9F~9F~9F~9F~9F~9F~9F~9E";
3970 Y = 0:X = 16: GOSUB 1: PRINT "PLANTA ASSASSINA";
3980  GOTO 4600
4000  REM FOSSO DE VISGO
4010  PRINT "~80~8A~8A~8A~8A~80~80~80~80~80~80~80~80~80~8A~8A~8A~8A"
4020  PRINT "~80~89~8B~8B~8B~88~80~80~80~80~80~80~80~89~8B~8B~8B~88"
4030  PRINT "~80~80~8D~8F~88~80~80~80~80~80~80~80~80~80~8D~8F~88"
4040  PRINT "~80~80~81~8B~80~80~80~80~80~80~80~80~80~80~81~8B"
4050  PRINT "~80~80~85~8F~80~80~80~80~80~80~80~80~80~80~85~8F"
4060  PRINT "~80~80~85~8F~80~80~80~80~81~83~80~80~80~80~85~8F"
4070  PRINT "~80~80~85~8F~80~80~80~81~8F~8F~8B~80~80~80~85~8F"
4080  PRINT "~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9A"
4090  PRINT "~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9A"
4100  PRINT "~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9F~9A";
4110  FOR B = 1 TO 4
4120 Y = 4:X = 7: GOSUB 1
4130  IF B = 1 OR B = 3 THEN  PRINT "GLUG";
4140  IF B = 2 OR B = 4 THEN  PRINT "~80~80~80~80";
4150  IF B <  > 4 THEN T = 100: GOSUB 5
4160  NEXT B
4170 Y = 0:X = 18: GOSUB 1: PRINT "FOSSO DE VISGO";
4180  GOTO 4600
4200  REM ZUMBI
4210  PRINT "~60~60~60~60~60~60~60~60~61~6F~6F~6B"
4220  PRINT "~60~60~60~60~61~63~60~60~67~6E~6E~6F~62~60~61~63"
4230  PRINT "~60~60~60~61~6F~6C~6B~60~6F~6F~6F~6F~6A~61~6E~6C~6B"
4240  PRINT "~60~60~61~6F~68~60~6D~6B~6F~6B~63~6F~6B~6F~68~60~6D~6B"
4250  PRINT "~60~61~6F~68~60~60~60~6D~68~65~6F~60~6D~68~60~60~60~6D~6B"
4260  PRINT "~61~6D~6C~6A~60~60~60~61~6F~6F~6F~6F~6B~60~60~60~60~6E~6D~69"
4270  PRINT "~65~65~60~6A~60~60~60~65~6F~6F~6F~6F~6F~60~60~60~60~6A~65~65"
4280  PRINT "~60~60~60~60~60~60~60~65~6F~6F~6F~6F~6F"
4290  PRINT "~60~60~60~60~60~60~60~65~6F~6F~6F~6F~6F"
4300  PRINT "~60~60~60~60~60~60~60~65~6F~6F~6F~6F~6F"
4310  PRINT "~60~60~60~60~60~60~60~65~6E~60~60~64~6F"
4320  PRINT "~60~60~60~60~60~60~60~6F~60~60~60~60~65~6A"
4330  PRINT "~60~60~60~60~60~60~65~6A~60~60~60~60~60~6F"
4340  PRINT "~60~60~60~60~60~60~60~6F~60~60~60~60~65~6A"
4350  PRINT "~60~60~60~60~60~60~60~65~6A~60~60~60~6F"
4360  PRINT "~60~60~60~60~60~60~6F~6F~6A~60~60~60~6F~6F~6A";
4370 Y = 0:X = 18: GOSUB 1: PRINT "ZUMBI";
4380  GOTO 4600
4400  REM DRACULA
4410  PRINT "~60~60~60~60~60~60~61~6F~6F~6F~6B"
4420  PRINT "~60~60~60~60~60~67~83~83~83~83~6C~6D~62"
4430  PRINT "~60~60~60~60~67~87~8F~8F~8F~8F~8F~8F~6D~62"
4440  PRINT "~60~60~60~65~85~8F~8F~8F~8D~8D~8F~8F~8F~6F"
4450  PRINT "~60~60~60~65~85~8F~81~83~85~81~83~85~8F~6F"
4460  PRINT "~60~60~60~65~85~8B~85~87~8F~8F~87~81~8F~6F"
4470  PRINT "~60~60~60~64~6A~8F~83~81~8F~8A~83~87~8F~6E"
4480  PRINT "~60~60~60~60~6A~8F~8F~8F~8F~8F~8F~8F~8F~6A"
4490  PRINT "~60~60~60~60~6D~8F~8F~8F~87~87~8F~8F~65~68"
4500  PRINT "~60~60~69~60~65~8F~8F~8F~8C~8D~8F~8F~65~60~61~68"
4510  PRINT "~60~60~65~6B~67~8D~8B~88~88~88~89~8F~67~63~6F"
4520  PRINT "~60~60~65~6F~6F~85~8F~8A~8F~8A~8F~8F~6F~6F~6F"
4530  PRINT "~60~60~65~6F~6F~6F~8D~8F~8F~8F~8F~67~6F~6F~6F"
4540  PRINT "~60~60~67~6F~6F~6F~6F~8D~8F~8F~67~6F~6F~6F~6F~62"
4550  PRINT "~60~67~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~62"
4560  PRINT "~67~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~62";
4570 Y = 0:X = 18: GOSUB 1: PRINT "DRACULA";
4600  REM CONSOME ESTACAS
4610 T = 500: GOSUB 5
4620 DE =  FN R(20) * N
4630 Y = 2:X = 18: GOSUB 1: PRINT "PRECISAS DE";
4640 Y = 3:X = 18: GOSUB 1: PRINT DE;"ESTACAS";
4650 Y = 4:X = 18: GOSUB 1: PRINT "DE PRATA.";
4660 Y = 6:X = 18: GOSUB 1: PRINT "TU TENS";
4670 Y = 7:X = 18: GOSUB 1: PRINT EP;"ESTACAS";
4680 Y = 8:X = 18: GOSUB 1: PRINT "DE PRATA.";
4690 T = 1000: GOSUB 5
4700 EP = EP - DE
4710  IF EP < 0 THEN FJ = 2
4720 A$(PJ) = SV$
4730  RETURN
4800  REM ESTACAS DE PRATA
4810  PRINT "~10~10~10~10~10~10~10~10~10~10~10~10~10~10~10~10~10~11"
4820  PRINT "~10~11~1C~1C~1C~1C~1C~1C~1C~1C~1C~1C~1C~1C~1C~1C~1C~8D"
4830  PRINT "~11~18~10~10~10~10~10~10~10~10~10~10~10~10~10~10~10~15"
4840  PRINT "~14~12~10~10~10~10~10~10~10~10~10~10~10~10~10~10~10~15"
4850  PRINT "~10~14~13~13~13~13~13~13~13~13~13~13~13~13~13~13~13~17"
4860  PRINT "~10~10~10~10~10~10~10~10~10~10~10~10~10~10~10~10~10~15"
4870  PRINT "~10~10~10~10~10~10~10~10~10~10~10~10~10~10~10~10~10~14"
4880 Y = 2:X = 6: GOSUB 1: PRINT "ESTACAS";
4890 Y = 3:X = 5: GOSUB 1: PRINT "DE~10~10PRATA";
4900 Y = 0:X = 19: GOSUB 1: PRINT "UM DEPOSITO";
4905 Y = 1:X = 19: GOSUB 1: PRINT "DE ESTACAS";
4910 Y = 2:X = 20: GOSUB 1: PRINT "DE PRATA.";
4920 T = 500: GOSUB 5
4930 DE =  FN R(40) * N
4940 Y = 4:X = 19: GOSUB 1: PRINT "ENCONTRASTE";
4945 Y = 5:X = 18: GOSUB 1: PRINT DE;"NO VALOR";
4950 Y = 6:X = 18: GOSUB 1: PRINT "DE $";DE * 250;".";
4960 EP = EP + DE
4970 A$(PJ) = SV$
4980 T = 1000: GOSUB 5
4990  RETURN
5000  REM ESCADA
5010  PRINT "UMA ESCADA...";
5020 T = 1000: GOSUB 5
5030  IF  FN R(20) = 1 THEN FJ = 1: RETURN
5040 DE = N * 10
5050 EP = EP + DE
5060 N = N + 1
5080  HOME
5090  PRINT "DESCENDO A ESCADA CHEGAS 'A MES-";
5100  PRINT "MA SALA NO NIVEL";N
5110  PRINT
5120  PRINT "E COLETAS";DE;"ESTACAS"
5130  PRINT "DE PRATA.";
5140  GOSUB 9600
5150  RETURN
5200  REM FIM DE JOGO (1)
5210  HOME
5220  PRINT "PARABENS..."
5230  PRINT
5240  PRINT "DESCENDO A ESCADA CHEGAS 'A SALA";
5250  PRINT "DO TESOURO DO VAMPIRO COM $500"
5260  PRINT "MIL EM JOIAS. UM TUNEL SECRETO"
5270  PRINT "LEVA PARA FORA DO CASTELO."
5280  PRINT "DEPOIS DE TE AVENTURARES POR"
5290  PRINT SP;"SALAS TU VAIS EMBORA COM"
5300  PRINT EP;"ESTACAS DE PRATA NO VALOR"
5310  PRINT "DE $";EP * 250;"E AS JOIAS,"
5320  PRINT "PERFAZENDO $";500000 + (EP * 250);"."
5330 T = 5000: GOSUB 5
5340  RETURN
5400  REM FIM DE JOGO (2)
5410  HOME
5420  PRINT "MORRESTE..."
5430  PRINT
5440  PRINT "CHEGASTE AO NIVEL";N
5450  PRINT "E SOBREVIVESTE A ";MV;"SALAS."
5460 T = 1000: GOSUB 5
5470  RETURN
7000  REM TELA TITULO
7010  TEXT : HOME
7020  PRINT "~0F~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~0F";
7030  POKE CP,0
7040  PRINT "~80~80~80~80~67~6F~6B~61~6F~6F~62~67~6F~6B~65~6F~6F~6A~6F~6F~6F~65~6A~60~60~67~6F~6B~80~80~80~80";
7050  PRINT "~80~80~80~80~6F~60~6F~65~6A~65~6A~6F~60~6C~60~65~6A~60~6F~60~60~65~6A~60~60~6F~60~6F~80~80~80~80";
7060  PRINT "~80~80~80~80~6F~60~60~65~6B~67~6A~6D~6F~6B~60~65~6A~60~6F~6F~6A~65~6A~60~60~6F~60~6F~80~80~80~80";
7070  PRINT "~80~80~80~80~6F~60~6F~65~6E~6D~6A~63~60~6F~60~65~6A~60~6F~60~60~65~6A~60~60~6F~60~6F~80~80~80~80";
7080  PRINT "~80~80~80~80~6D~6F~6E~65~6A~65~6A~6D~6F~6E~60~65~6A~60~6F~6F~6F~65~6F~6F~6A~6D~6F~6E~80~80~80~80";
7090  POKE CP,0
7100  PRINT "~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80";
7110  PRINT "~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80DO~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80";
7120  PRINT "~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80";
7130  POKE CP,0
7140  PRINT "~80~80~80~80~7F~7F~7B~75~7F~7F~72~70~73~7C~71~7F~7F~72~7F~70~7F~75~7A~70~70~77~7F~7B~80~80~80~80";
7150  PRINT "~80~80~80~80~7F~70~7F~75~7A~75~7A~77~7F~7B~75~7A~75~7A~7F~70~7F~75~7A~70~70~7F~70~7F~80~80~80~80";
7160  PRINT "~80~80~80~80~7F~70~7F~75~7F~7F~78~7F~70~7F~75~7A~70~70~7F~70~7F~75~7A~70~70~7F~73~7F~80~80~80~80";
7170  PRINT "~80~80~80~80~7F~70~7F~75~7E~7B~70~7F~7F~7F~75~7A~75~7A~7F~70~7F~75~7A~70~70~7F~7C~7F~80~80~80~80";
7180  PRINT "~80~80~80~80~7F~7F~7E~75~7A~75~7A~7F~70~7F~74~7F~7F~78~7D~7F~7E~75~7F~7F~7A~7F~70~7F~80~80~80~80";
7190  POKE CP,0
7200  PRINT "~0F~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~0F";
7210  PRINT "~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80~80";
7220 Y = 0:X = 0: GOSUB 1
7230  OUT CO,0: POKE FV, ASC ("~80")
7240  RETURN
7500  REM TELA CASTELO
7510  GOSUB 1000
7520 Y = 2:X = 4: GOSUB 1: PRINT "~65~6A~6F~65~6A~60~60~60~60~60~60~60~60~60~60~60~65~6A~6F~65~6A";
7530 Y = 3:X = 4: GOSUB 1: PRINT "~65~6B~6F~67~6A~60~60~60~60~60~60~60~60~60~60~60~65~6B~6F~67~6A";
7540 Y = 4:X = 4: GOSUB 1: PRINT "~65~60~60~60~6A~60~60~60~60~60~60~60~60~60~60~60~65~60~60~60~6A";
7550 Y = 5:X = 4: GOSUB 1: PRINT "~65~60~6F~60~6A~60~60~60~60~60~60~60~60~60~60~60~65~60~6F~60~6A";
7560 Y = 6:X = 4: GOSUB 1: PRINT "~65~60~60~60~6B~63~63~63~63~63~63~63~63~63~63~63~67~60~60~60~6A";
7570 Y = 7:X = 4: GOSUB 1: PRINT "~65~60~60~60~6A~60~65~6A~60~60~6F~60~60~65~6A~60~65~60~60~60~6A";
7580 Y = 8:X = 4: GOSUB 1: PRINT "~65~60~6F~60~6A~60~64~68~60~60~60~60~60~64~68~60~65~60~6F~60~6A";
7590 Y = 9:X = 4: GOSUB 1: PRINT "~65~60~60~60~6A~60~60~60~60~60~60~60~60~60~60~60~65~60~60~60~6A";
7600 Y = 10:X = 4: GOSUB 1: PRINT "~65~60~60~60~6A~60~60~60~60~61~63~62~60~60~60~60~65~60~60~60~6A";
7610 Y = 11:X = 4: GOSUB 1: PRINT "~65~60~6F~60~6A~60~60~60~60~6F~6F~6F~60~60~60~60~65~60~6F~60~6A";
7620 Y = 12:X = 4: GOSUB 1: PRINT "~65~60~60~60~6A~60~60~60~65~6F~6F~6F~6A~60~60~60~65~60~60~60~6A";
7630 Y = 13:X = 4: GOSUB 1: PRINT "~65~60~60~60~6A~60~60~60~65~6F~6F~6F~6A~60~60~60~65~60~60~60~6A";
7640 Y = 14:X = 4: GOSUB 1: PRINT "~65~60~6F~60~6A~60~60~60~65~6F~6F~6F~6A~60~60~60~65~60~6F~60~6A";
7650 Y = 15:X = 2: GOSUB 1: PRINT "~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F~6F";
7660 T = 2000: GOSUB 5
7670  RETURN
7800  REM NOVO JOGO
7810  HOME
7820  PRINT "BEM-VINDO..."
7830  PRINT "ENTRASTE NO CASTELO DO DRACULA."
7840  PRINT "A PONTE LEVADICA SE FECHA ATRAS"
7850  PRINT "DE TI..."
7860  PRINT
7870  PRINT "TECLA ALGO PARA VER O MAPA...";
7880  GOSUB 2
7890  GOSUB 1800
7900  HOME
7910  PRINT "TECLA ALGO PARA COMECAR."
7920  PRINT
7930  PRINT "BOA SORTE...";
7940  GOSUB 2
7950  RETURN
8000  REM OFERECE INSTRUCOES
8010  HOME
8020 Y = 7:X = 7: GOSUB 1: PRINT "INSTRUCOES? (S/N)";
8030 OP$ = "SN": GOSUB 3
8040  IF I$ = "N" THEN  RETURN
8100  REM INSTRUCOES
8110  HOME
8120  PRINT "TU, O AVENTUREIRO, DEVES PERCOR-";
8130  PRINT "RER O LABIRINTO COLETANDO ESTA-"
8140  PRINT "CAS DE PRATA E EVITANDO OGROS,"
8150  PRINT "ZUMBIS, FOSSOS DE VISGO, PLANTAS";
8160  PRINT "ASSASSINAS, ASSOMBRACOES E, E'"
8170  PRINT "CLARO (EMBORA NAO SEJA FACIL), O";
8180  PRINT "DRACULA... PODES TESTAR A TUA"
8190  PRINT "SORTE NAS SALAS MISTERIOSAS. OU"
8200  PRINT "DESCER AS ESCADAS PARA O PROXIMO";
8210  PRINT "NIVEL OU TALVEZ ENCONTRAR O TE-"
8220  PRINT "SOURO DO DRACULA."
8230 Y = 15:X = 0: GOSUB 1: PRINT "TECLA ALGO PARA CONTINUAR...";
8240  GOSUB 2
8300  HOME
8310  PRINT "NO INICIO E EVENTUALMENTE DURAN-";
8320  PRINT "TE O JOGO, SER-TE-A' OFERECIDO"
8330  PRINT "UM MAPA DO NIVEL EM QUE ESTAS."
8340  PRINT "AS DIRECOES EM QUE PODES ANDAR"
8350  PRINT "SAO NORTE, LESTE, SUL E OESTE."
8360  PRINT
8370  PRINT "               N"
8380  PRINT "              O+L"
8390  PRINT "               S"
8400  PRINT
8410  PRINT "PODE SER UTIL ANOTAR ALGUMAS"
8420  PRINT "DESTAS INFORMACOES."
8430 Y = 15:X = 0: GOSUB 1: PRINT "TECLA ALGO PARA CONTINUAR...";
8440  GOSUB 2
8500  HOME
8510  PRINT "O MAPA CONTEM LETRAS E SIMBOLOS"
8520  PRINT "QUE SIGNIFICAM:"
8530  PRINT "<";FV$;">=FOSSO       <";P$;">=PAREDE"
8540  PRINT "     DE VISGO"
8550  PRINT "<";A$;">=ASSOMBRACAO <";SM$;">=SALA"
8560  PRINT "                     MISTERIOSA
8570  PRINT "<";O$;">=OGRO        <";EP$;">=ESTACAS"
8580  PRINT "                     DE PRATA"
8590  PRINT "<";Z$;">=ZUMBI       <";E$;">=ESCADA"
8600  PRINT
8610  PRINT "<";PA$;">=PLANTA      <";SV$;">=SALA"
8620  PRINT "     ASSASSINA       VAZIA"
8630  PRINT "<";D$;">=DRACULA     <";J$;">=TU"
8640 Y = 15:X = 0: GOSUB 1: PRINT "TECLA ALGO PARA CONTINUAR...";
8650  GOSUB 2
8700  HOME
8710  PRINT "O OBJETIVO DO JOGO E' SAIR DO"
8720  PRINT "CASTELO DO DRACULA COM O MAXIMO"
8730  PRINT "POSSIVEL DE ESTACAS DE PRATA E"
8740  PRINT "COM O TESOURO DO DRACULA."
8750  PRINT "ENTRAS NO CASTELO 30 MINUTOS"
8760  PRINT "ANTES DO POR-DO-SOL. O DRACULA"
8770  PRINT "SE LEVANTA AO POR-DO-SOL E VEM"
8780  PRINT "ATRAS DE TI. USA AS ESTACAS DE"
8790  PRINT "PRATA PARA MATAR OS MONSTROS E"
8800  PRINT "ESCALAR AS PAREDES DOS FOSSOS"
8810  PRINT "DE VISGO."
8820 Y = 15:X = 0: GOSUB 1: PRINT "TECLA ALGO PARA CONTINUAR...";
8830  GOSUB 2
8840  RETURN
9000  REM INICIALIZA
9010  DEF  FN R(X) =  INT ( RND (1) * X) + 1
9100  REM
9110 FJ = 0: REM FIM DE JOGO
9120 MX = 22:MY = 16:TM = MX * MY: REM TAMANHO DO MAPA
9130  DIM A$(TM)
9140 XJ = 21:YJ = 15: REM X,Y DO JOGADOR
9150 XD = 1:YD = 1: REM X,Y DO DRACULA
9160 MP = 31: REM MINUTOS PARA O POR-DO-SOL
9170 SP = 0: REM SALAS PERCORRIDAS
9180 N = 1: REM NIVEL
9190 EP = 10: REM ESTACAS DE PRATA
9200  DIM D$(3): REM DIRECOES
9210 D$(0) = "NORTE":D$(1) = "LESTE":D$(2) = " SUL ":D$(3) = "OESTE"
9220 D = 0: REM DIRECAO
9300  REM ELEMENTOS DO MAPA
9310 SV$ = "-": REM SALA VAZIA
9320 P$ = "~EF": REM PAREDE
9330 A$ = "`A": REM ASSOMBRACAO
9340 O$ = "`O": REM OGRO
9350 PA$ = "`P": REM PLANTA ASSASSINA
9360 FV$ = "`@": REM FOSSO DE VISGO
9370 Z$ = "`Z": REM ZUMBI
9380 D$ = "`D": REM DRACULA
9390 EP$ = "`^": REM ESTACA DE PRATA
9400 SM$ = "`?": REM SALA MISTERIOSA
9410 E$ = "`=": REM ESCADA
9420 J$ = "*": REM JOGADOR
9600  REM PREENCHE MAPA
9610  FOR A = 1 TO TM:A$(A) = SV$: NEXT A
9620  FOR A = 1 TO 7
9630 A$( FN R(TM)) = Z$:A$( FN R(TM)) = Z$
9640 A$( FN R(TM)) = A$:A$( FN R(TM)) = A$
9650 A$( FN R(TM)) = PA$:A$( FN R(TM)) = PA$
9660 A$( FN R(TM)) = O$:A$( FN R(TM)) = O$
9670 A$( FN R(TM)) = FV$:A$( FN R(TM)) = FV$
9880 A$( FN R(TM)) = SM$:A$( FN R(TM)) = SM$
9690 A$( FN R(TM)) = EP$:A$( FN R(TM)) = EP$:A$( FN R(TM)) = EP$
9700 A$( FN R(TM)) = E$
9710  NEXT A
9720  FOR A = 1 TO MX
9730 A$(A) = P$:A$(A + TM - MX) = P$
9740  NEXT A
9750  FOR A = 1 TO TM STEP MX
9760 A$(A) = P$:A$(A + MX - 1) = P$
9770  NEXT A
9780 PJ = (YJ - 1) * MX + XJ
9790 A$(PJ) = SV$
9999  RETURN
10000  REM AUXILIARES MC-1000
10010 AT$ =  CHR$ (27) + "=": REM ESCAPE PARA POSICIONAR CURSOR
10020 CP = 910: REM ENDERECO DE CURPOS
10030 K0 = 283: REM ENDERECO DE KEY0
10040 CO = 128: REM PORTA COL32
10050 FV = 32768 + 32 * 16 - 1: REM ENDERECO DE FIM DA VRAM
10099  RETURN
