0  REM BONECO ANIMADO EM MODO SEMIGRAFICO 6
1  REM EMERSON JOSE SILVEIRA DA COSTA 2012-06-15
1000  REM ### INSTRUCOES ###
1010  TEXT : HOME : POKE 245,3: REM TELA DE TEXTO VERMELHA
1020  INVERSE : PRINT "        BONECO ANIMADO               EM MODO SEMIGRAFICO 6.     ";: NORMAL
1030  PRINT : PRINT "PRESSIONE UMA TECLA PARA FAZER OBONECO ANDAR OU PARAR."
1040  PRINT : PRINT "<@> TERMINA O PROGRAMA.": PRINT
2000  REM ### INICIALIZACOES ###
2010 AT$ =  CHR$ (27) + "=": REM PARA POSICIONAMENTO DE CURSOR
2020 PL$ =  CHR$ (8) +  CHR$ (8) +  CHR$ (8) +  CHR$ (10): REM RECUA CURSOR E BAIXA PARA PROXIMA LINHA
2030 K0 = 283: REM ENDERECO DE KEY0 (INKEY$)
3000  REM ### SPRITES ###
3010  PRINT "CARREGANDO SPRITES (0-3):"
3020  DIM S$(3): REM SPRITES
3030  FOR S = 0 TO 3
3040  PRINT S;
3050 S$(S) = ""
3060  FOR Y = 0 TO 4
3070  FOR X = 0 TO 2
3080  READ B
3090 S$(S) = S$(S) +  CHR$ (B)
3100  PRINT ".";
3110  NEXT X
3120  IF Y <  > 4 THEN S$(S) = S$(S) + PL$
3130  NEXT Y
3140  PRINT
3150  NEXT S
3160  PRINT : PRINT "PRESSIONE QUALQUER TECLA.";
3170  POKE K0,0
3180  IF  PEEK (K0) = 0 THEN  GOTO 3180: REM ESPERA TECLA
4000  REM ### ANIMACAO ###
4010  HGR : POKE 245,99: REM MODO SEMIGRAFICO 6, PALETA BRANCO-CIANO-MAGENTA-LARANJA
4020  POKE 247,202: POKE 248,192: POKE 249,202: POKE 250,192: REM CURSOR INVISIVEL (PARA NAO CAUSAR MUDANCAS DE CORES POR ONDE PASSAR)
4030 X = 0: REM POSICAO HORIZONTAL DO BONECO
4040  PRINT AT$; CHR$ (0); CHR$ (32 + X);S$(1): REM DESENHA BONECO PARADO
4050  POKE K0,0
4060  IF  PEEK (K0) = 0 THEN  GOTO 4060: REM ESPERA TECLA
4070  IF  PEEK (K0) = 64 THEN  TEXT : HOME : END : REM TERMINA PROGRAMA SE ARROBA PRESSIONADO
4080  POKE K0,0
4090  PRINT AT$; CHR$ (0); CHR$ (32 + X);S$(0): REM DESENHA VAZIO (APAGA BONECO)
4100  IF  PEEK (K0) = 64 THEN  TEXT : HOME : END : REM TERMINA PROGRAMA SE ARROBA PRESSIONADO
4110  IF  PEEK (K0) <  > 0 THEN  GOTO 4040: REM SE OUTRA TECLA PRESSIONADA, PARA BONECO
4120 X = X + 1: REM MOVE BONECO PARA A DIREITA
4130  IF X = 30 THEN X = 0: REM SE FIM DA TELA, VOLTA PARA O INICIO
4140  PRINT AT$; CHR$ (0); CHR$ (32 + X);S$(2 + (X AND 1)): REM DESENHA ANDANDO
4150  FOR J = 1 TO 20: NEXT J: REM TEMPORIZACAO
4160  GOTO 4090
5000  REM ### DADOS DOS SPRITES ###
5010  DATA 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0: REM VAZIO
5020  DATA 0,63,0,133,173,0,149,149,0,144,255,0,213,215,194: REM BONECO PARADO
5030  DATA 0,63,0,133,173,0,144,166,130,0,254,194,248,224,235: REM BONECO ANDANDO 1
5040  DATA 0,63,0,134,175,0,170,191,137,0,254,202,197,246,200: REM BONECO ANDANDO 2
