1400  POKE 836,0
1410  HOME : PRINT  TAB( 142)"C C E" TAB( 201)"S O F T W A R E"
1420  PRINT  TAB( 101)"CURSO DE BASIC <PARTE 3>": FOR I = 0 TO 1500: NEXT 
1500  GOSUB 9005
1501  PRINT  TAB( 10)"# INDICE #": PRINT 
1502  PRINT "1->  INSTRUCOES PRELIMINARES": PRINT "2->  HOME": PRINT "3->  PRINT, SPC, TAB(N)": PRINT "4->  NUMEROS E NOMES, LET": PRINT "5->  IF/THEN, AND, OR, NOT": PRINT "6->  FOR/NEXT, STEP": PRINT "7->  FUNCOES MATEMATICAS"
1503  PRINT "8->  MATRIZES": PRINT "9->  MANIPULANDO STRINGS": GOSUB 9000: PRINT : PRINT "10-> TEMPO": PRINT "11-> SOUND": PRINT "12-> FRE, CLEAR": PRINT "13-> STOP, END, RUN"
1508  PRINT "14-> INPUT"
1509  PRINT "15-> GOTO, ON X GOTO"
1510  PRINT "16-> GOSUB/RETURN, ON X GOSUB"
1511  PRINT "17-> DATA, READ, RESTORE"
1512  PRINT "18-> COMANDOS GRAFICOS"
1513  GOSUB 9000: PRINT : PRINT "19-> EDIT, TRON"
1514  PRINT "20-> NEW, SAVE, LOAD, TLOAD"
1515  PRINT "21-> REM, CHR$(N), ASC"
1516  PRINT "22-> DEBUG"
1517  PRINT : PRINT 
1518  PRINT : INPUT "DIGITE O NUMERO DO ITEM DESEJADOEM SEGUIDA TECLE <RETURN>";A$
1519  IF ~20 VAL (A$) > 22~20 OR ~20 VAL (A$) < 1~20 THEN ~20 GOTO ~201500
1520  IF ~20 VAL ~20(A$)~20 >  = ~201~20 AND ~20 VAL (A$)~20 <  = ~205~20 THEN ~202901
1521  IF ~20 VAL ~20(A$)~20 >  = ~205~20 AND ~20 VAL (A$)~20 <  = ~2011~20 THEN ~202902
1522  IF ~20 VAL ~20(A$)~20 >  = ~2018~20 AND ~20 VAL (A$)~20 <  = 22~20 THEN ~202903
1525  IF  VAL (A$) > 17 THEN 2900
1530  ON  VAL (A$) - 11 GOTO 2200,2300,2400,2450,2550,2650
1550  GOSUB 9005
1552  PRINT "PARA ACESSAR OS  ITENS  1-11  V.TERA QUE  RETORNAR AS  PRIMEIRASPARTES DESTE CURSO.": PRINT : PRINT "POSICIONE A FITA,TECLE <CTRL><C>PARA ENTRAR EM  BASIC  E SIGA ASINSTRUCOES DA CAPA DA FITA."
1556  GOSUB 9000: GOSUB 9100
1562  GOTO 1500
2200  GOSUB 9005: PRINT  TAB( 13)"# FRE #": PRINT 
2201  PRINT "ESTA INSTRUCAO FORNECE O  NUMERODE  BYTES  DA MEMORIA  QUE ESTAOLIVRES PARA SEU USO. DIGITE:"
2203  PRINT "PRINT FRE(7)                    PRINT FRE(6.5)"
2205  PRINT : PRINT "PODE SER COLOCADO QUALQUER NUME-RO ENTRE  PARENTESES POIS ESTE EUM PSEUDO PARAMETRO. VERIFIQUE."
2206  GOSUB 9000: GOSUB 9100
2210  PRINT  TAB( 12)"# CLEAR #": PRINT 
2211  PRINT "A INSTRUCAO  CLEAR ZERA TODAS ASVARIAVEIS E MATRIZES  (NUMERICASE STRINGS),SEM APAGAR O PROGRAMAE TAMBEM  RESERVA  ESPACO PARA O'BUFFER' DE STRINGS.": PRINT "EXEMPLOS:"
2212  PRINT : PRINT "CLEAR  <RETURN>": PRINT "  => ZERA TODAS AS VARIAVEIS": GOSUB 9000: PRINT "CLEAR 1000  <RETURN>": PRINT "  => ZERA  TODAS AS  VARIAVEIS E     RESERVA   1000   BYTES PARA     STRINGS."
2214  PRINT : PRINT "A=10:B=20:PRINT A+B <RETURN>"
2216  PRINT "CLEAR  <RETURN>"
2217  PRINT "PRINT A+B <RETURN>"
2220  PRINT : PRINT "O RESULTADO DO SEGUNDO PRINT A+BSERA  0  POIS AS VARIAVEIS FORAMZERADAS PELO COMANDO CLEAR.
2222  GOSUB 9000
2223  PRINT : PRINT "COM ISSO ENCERRAMOS A LICAO 12. ": PRINT : PRINT 
2224  PRINT "ENTRE EM  BASIC  PARA PRATICAR OQUE APRENDEU.": GOSUB ~209000: GOSUB 9100
2230  GOTO 1500
2300  GOSUB 9005: PRINT  TAB( 5)"# STOP, END, RUN #": PRINT : PRINT "==> EXECUCAO ADIADA"
2301  PRINT 
2302  PRINT "EM VEZ DE  SEPARAR  COMANDOS COM':', DIGITE-OS EM LINHAS NUMERA-DAS E TECLE  <RETURN>  APOS CADAUMA. A NUMERACAO NAO PRECISA SERCONTINUA, NEM UNIFORME.SUA UNICAFUNCAO E INFORMAR AO";
2303  PRINT "  COMPUTADORA ORDEM EM QUE DEVEM  SER EXECU-TADAS.": GOSUB 9000: PRINT "V. PODE USAR NORMALMENTE OS  ':'DENTRO DE UMA DESTAS LINHA.": PRINT 
2304  PRINT "ESTE PROGRAMA COMECA COM A LINHA1400. ASSIM, V. TEM  1399 LINHASPARA COMPOR UM  PROGRAMA  COM OS";
2305  PRINT "COMANDOS QUE APRENDEU. PARA EVI-TAR QUE O COMPUTADOR  PASSE PARAESTE PROGRAMA SEM LHE  DAR TEMPODE AVALIAR O SEU, V. DEVE  FINA-LIZA-LO COM O COMANDO STOP.": GOSUB 9000
2306  PRINT "EXEMPLO :": PRINT 
2307  PRINT "10 FOR T = 0 TO 15"
2308  PRINT "20 PRINT T ; T - 15"
2309  PRINT "22 IF T = 10 THEN PRINT T - 5"
2310  PRINT "25 NEXT T": PRINT "95 STOP"
2311  PRINT : PRINT "O COMANDO  STOP  EQUIVALE  A TE-CLAR <CTRL><C>. DEPOIS DE EXECU-TAR AS LINHAS ACIMA, O  COMPUTA-DOR ...": GOSUB 9000: PRINT "... ESPERA QUE  V.  DIGITE  CONT<RETURN> PARA RECOMECAR NA LINHA";
2312  PRINT "1400 (INDICE DESTE PROGRAMA).   PARA  'RODAR' O SEU PROGRAMA, V.DEVERA DIGITAR  RUN <RETURN>.   PARA VER A LISTAGEM  DO SEU PRO-GRAMA V. DEVE DIGITAR  LIST-1399<RETURN>."
2313  PRINT "EM VEZ DE  STOP, V. PODE FINALI-ZAR SEU  PROGRAMA  COM  END. MASENTAO, V. TERA QUE ...": GOSUB 9000
2314  PRINT "... DIGITAR RUN1500 <RETURN> PA-RA VOLTAR AO INDICE.": PRINT : PRINT "ANTES DE COMECAR, SAIBA:": PRINT 
2315  PRINT "PARA MODIFICAR  UMA LINHA, BASTADIGITAR OUTRA LIMHA COM O  MESMONUMERO."
2316  PRINT "PARA APAGAR UMA LINHA, DIGITE SOO NUMERO (E <RETURN>, CLARO)."
2317  PRINT "PARA  LISTAR  UMA  LINHA, DIGITELIST N, COM N=NUMERO DA LINHA."
2318  GOSUB 9000
2319  PRINT "AGORA ENTRE EM BASIC, ELABORE UMPROGRAMA  E  APROVEITE AS MENSA-GENS DE ERRO (CERTAMENTE ACONTE-CERAO)  PARA  APRENDER A NAO ER-RAR. E FACIL:"
2320  PRINT "O COMPUTADOR LHE DIRA EM QUE LI-NHA ESTA O ERRO.": PRINT 
2321  PRINT "DEPOIS DE UMA  MENSAGEM DE ERRO,O COMANDO  CONT  NAO FUNCIONARA.USE RUN1500 <RETURN> PARA VOLTARA ESTE PROGRAMA.": GOSUB 9000: GOSUB 9100
2322  PRINT "O COMANDO LIST  LISTA O PROGRAMAATE O FIM.  LIST-N , ATE A LINHAN.  LISTN-  A PARTIR DA LINHA N.LISTN-M LINHAS ENTRE N E M.": PRINT 
2323  PRINT "NAO TEM  IMPORTANCIA QUE A LINHANAO EXISTA. O COMPUTADOR SO LIS-TA O QUE EXISTE NO INTERVALO DA-DO. MAS  RUN N  PROVOCA MENSAGEMDE ERRO QUANDO  N  NAO EXISTE."
2324  GOSUB 9000: PRINT "INVENTE TAREFAS QUE O COMPUTADORPOSSA EXECUTAR E QUE TENHAM UTI-LIDADE PRATICA  PARA V.. PROCUREELABORAR PROGRAMAS CURTOS E EFI-CIENTES."
2325  PRINT "APROVEITE AGORA.  NAO PASSE PARAAS  LICOES  SEGUINTES  SEM ANTESPRATICAR A EXECUCAO  ADIADA  ATENAO TER MAIS DUVIDAS.": PRINT : PRINT "        FIM DA LICAO 13": GOSUB 9000: GOSUB 9100
2330  GOTO 1500
2400  GOSUB 9005: PRINT  TAB( 12)"# INPUT #": PRINT 
2401  PRINT "PARA 'DIALOGAR' COM O COMPUTADORV. PRECISARA DESTE COMANDO.": PRINT 
2402  PRINT "INPUT " CHR$ (34)"MENSAGEM" CHR$ (34)" ; V"
2403  PRINT : PRINT "E UM COMANDO QUE, COLOCADO EM U-MA LINHA DE PROGRAMA, INTERROMPEA EXECUCAO E ESPERA UMA  ENTRADA(INPUT) PELO TECLADO. A";
2404  PRINT " VARIAVELV (QUE PODE SER ...": GOSUB 9000: PRINT "...NUMERICA OU STRING, DEPENDEN-DO DE TERMINAR OU NAO COM $) AS-SUMIRA O VALOR QUE SERA  DIGITA-DO, SEGUIDO DE <RETURN>."
2406  PRINT : PRINT "A  MENSAGEM  E OPCIONAL,  MAS EMGERAL V. PRECISARA DELA PARA SA-BER O QUE O COMPUTADOR ESTA PER-GUNTANDO. POR EXEMPLO :"
2407  GOSUB 9000~20~20
2408  PRINT "10 PRINT" CHR$ (34)"PROGRAMA RAIZ QUADRADA" CHR$ (34);
2409  PRINT "20 INPUT" CHR$ (34)"QUAL E O NUMERO" CHR$ (34)";A"
2410  PRINT "30 PRINT SQR(A)"
2411  PRINT "40 STOP": PRINT 
2412  PRINT "OBSERVE QUE NAO COLOCAMOS O PON-TO DE INTERROGACAO NA  MENSAGEM.ELE APARECERA AUTOMATICAMENTE.": PRINT 
2413  PRINT "ENTRE EM BASIC E EXPERIMENTE ES-TE MICRO-PROGRAMA.": GOSUB 9000: GOSUB 9100
2414  PRINT "FUNCIONOU?  TENTE RESPONDER  LE-TRAS, EM VEZ DE ALGARISMOS. APA-RECERA UMA MENSAGEM DE ERRO."
2415  PRINT "ISSO PORQUE A VARIAVEL USADA ERANUMERICA  E  NAO  LITERAL. AGORAINVENTE UM PROGRAMA QUE USE STR-INGS COM INPUT. V. PODERA PEDIRAO COMPUTADOR OPERACOES  LITERAISA PARTIR DAS SUAS RESPOSTAS.": PRINT 
2418  PRINT "        FIM DA LICAO  14"
2420  PRINT "   VAMOS LA! ENTRE EM BASIC": GOSUB 9000: GOSUB 9100
2430  GOTO 1500
2450  GOSUB 9005: PRINT  TAB( 5)"# GOTO, ON X GOTO #": PRINT 
2451  PRINT "O COMANDO  GOTO N  DESVIA A EXE-CUCAO DO PROGRAMA PARA LINHA N."
2452  PRINT "EXEMPLO :": PRINT 
2453  PRINT "200 INPUT" CHR$ (34)"QUAL E O NUMERO" CHR$ (34)";Z"
2454  PRINT "210 IF Z<0 THEN GOTO 200"
2455  PRINT "250 PRINT SQR(Z)": PRINT 
2456  PRINT "AQUI, SE V. RESPONDER UM  NUMERONEGATIVO NA LINHA 200 ...": GOSUB 9000: PRINT "... O  COMPUTADOR  PERGUNTARA DENOVO, E CONTINUARA  PERGUNTANDO,ATE V. RESPONDER CORRETAMENTE."
2458  PRINT : PRINT "VOCE PODE  INVENTAR UM  PROGRAMAUTIL USANDO  GOTO. O COMANDO  IFQUASE SEMPRE O PRECEDE."
2468  PRINT "QUANDO DIGITAMOS:": PRINT "
2469  PRINT "IF...THEN GOTO N": PRINT : PRINT "PODEMOS OMITIR  THEN OU GOTO": GOSUB 9000
2470  PRINT "NA VERDADE, A  LOGICA DE UM PRO-GRAMA ESTA QUASE  SEMPRE NOS CO-MANDOS   IF E GOTO. ANTES DE EN-";
2471  PRINT "TRAR EM  BASIC  E CRIAR SEU PRO-GRAMA, ANALISE CUIDADOSAMENTE ASALTERNATIVAS QUE V. DARA AO COM-PUTADOR E AS CONDICOES  (IF) QUE";
2472  PRINT "ELE OBEDECERA PARA EXECUTA-LAS.": PRINT 
2473  PRINT "PRONTO? ENTAO ENTRE EM BASIC.": GOSUB 9000: GOSUB 9100
2474  PRINT "ON X GOTO N1,N2,N3,N4 ... ONDE XE UMA VARIAVEL  NUMERICA  E  N1,N2, N3, N4 ...   SAO  LINHAS  DOPROGRAMA, CHAMA-SE  'GOTO CONDI-CIONAL'. A LINHA 1520 DESSE PRO-GRAMA E UM EXEMPLO DESSE  COMAN-";
2475  PRINT "DO.": PRINT "SE X FOR 1 , A EXECUCAO VAI PARAA PRIMEIRA LINHA DA RELACAO(N1).SE  X = 2, VAI  PARA  A  SEGUNDA(N2), E ASSIM SUCESSIVAMENTE.": GOSUB 9000
2476  PRINT "ADAPTE O SEU  PROGRAMA  ANTERIOR(QUE DEVE CONTER ALGUNS COMANDOSIF), INCORPORANDO O  GOTO CONDI-CIONAL. OU ENTAO INVENTE OUTRO,"
2477  PRINT "COM GRANDE  NUMERO DE ALTERNATI-VAS, TODAS  REFERIDAS  EM  UM SOGOTO CONDICIONAL.": PRINT : PRINT "ENTRE EM BASIC.": PRINT 
2478  PRINT "       FIM DA LICAO 15": GOSUB 9000: GOSUB 9100
2480  GOTO 1500
2550  GOSUB 9005: PRINT  TAB( 9)"# SUB-ROTINAS #": PRINT 
2551  PRINT "CHAMAM-SE 'SUB-ROTINA'  OU 'SUB-PROGRAMA' UM SEGMENTO DE PROGRA-MA QUE O  COMPUTADOR  EXECUTA  ERETORNA AO PROGRAMA PRINCIPAL NOPONTO DE ONDE SAIU.": PRINT : PRINT "EXEMPLO:"
2552  GOSUB 9000: PRINT "10 INPUT" CHR$ (34)"PRIMEIRO NUMERO" CHR$ (34)";X"
2553  PRINT "20 GOSUB 300"
2554  PRINT "27 PRINTA"
2555  PRINT "30 INPUT" CHR$ (34)"SEGUNDO NUMERO" CHR$ (34)";B": PRINT "33 X = A + B : GOSUB 300"
2557  PRINT "40 PRINT A": PRINT "50 X = X + A : GOSUB 300": PRINT "70 PRINT A"
2558  PRINT ~20"100 END"
2559  PRINT "300 A = SQR(X)"
2560  PRINT "305 RETURN"
2561  GOSUB 9000: PRINT "NESTE EXEMPLO, TODA VEZ QUE PRE-CISAMOS DA  RAIZ QUADRADA  DE UMNUMERO, CHAMAMO-LO DE X E O MAN-DAMOS PARA A SUBROTINA 300.": PRINT "ESTA EXTRAI A RAIZ QUADRADA DE XE ARETORNA PARA A LINHA SEGUINTE";
2562  PRINT "DE ONDE A EXECUCAO SE DESVIARA.": PRINT "NOTE QUE A  SUB-ROTINA (NO  CASOAS LINHAS 300 E 305) FICA DEPOISDO FIM DO PROGRAMA PRINCIPAL.   ISSO E NECESSARIO, POIS ...": GOSUB 9000
2563  PRINT "... A EXECUCAO  NAO  PODE ENCON-TRAR O COMANDO RETURN  (RETORNE)SEM TER PARA ONDE VOLTAR. QUANDOISTO ACONTECE, OCORRE UMA MENSA-GEM DE  ERRO.  EM LUGAR DE  END,";
2564  PRINT "PODERIA SER  STOP OU GOTO N, COMN ANTERIOR A LINHA 100."
2565  PRINT : PRINT "A VANTAGEM DA  SUB-ROTINA  E QUENAO PRECISAMOS  ESCREVER AS MES-MAS LINHAS MUITAS VEZES."
2566  GOSUB 9000: PRINT : PRINT 
2567  PRINT "ESTE PROGRAMA,  POR EXEMPLO, TEMDUAS  SUB-ROTINAS  COMECANDO NASLINHAS  9000 E 9100. LISTE-AS  EDESCUBRA PAR QUE SERVEM.  DEPOISENTRE EM BASIC E INVENTE PROGRA-MAS COM SUB-ROTINAS."
2568  GOSUB 9000: GOSUB 9100
2569  PRINT "ON X GOSUB  E  IDENTICO  A  ON XGOTO, EXCETO QUE A  EXECUCAO RE-TORNA AO PONTO DE ONDE SAIU. EN-TRE EM  BASIC  E INVENTE UM PRO-GRAMA COM MUITAS SUBROTINAS E UMCOMANDO ON X GOSUB."
2570  PRINT : PRINT : PRINT "      FIM DA LICAO 16": GOSUB 9000: GOSUB 9100
2580  GOTO 1500
2650  GOSUB 9005: PRINT  TAB( 4)"# DATA, READ, RESTORE #": PRINT 
2652  PRINT "V. PODE USAR O  COMANDO  LET (=)MUITAS VEZES, PARA  DEFINIR MUI-TAS VARIAVEIS. MAS  E MAIS FACILDEFINI-LAS TODAS EM DUAS LINHAS,COM  DATA  E  READ."
2654  PRINT : PRINT "DATA A,B,C,D,E,...,Z"
2656  PRINT "E UMA LINHA QUE  CONTEM AS CONS-TANTES (A-Z) NA ORDEM EM QUE SE-RAO CHAMADAS.": GOSUB 9000
2658  PRINT "E COMO SERAO CHAMADAS?": PRINT "COM O COMANDO  READ :": PRINT : PRINT "READ V1,V2,V3,...": PRINT : PRINT "LE AS  CONSTANTES DE  DATA  E ASATRIBUI  AS  VARIAVEIS  V, ORDE-NADAMENTE. AS CONSTANTES DE DATADEVEM SER DO MESMO  TIPO  QUE ASRESPECTIVAS VARIA";
2705  PRINT "VEIS DE  READ.": GOSUB 9000: PRINT "POR EXEMPLO :": PRINT : PRINT "10 DATA 9.876,25," CHR$ (34)"ALFA" CHR$ (34)"," CHR$ (34)"TREM" CHR$ (34): PRINT "20 READ A,BX,A$,Z$": PRINT : PRINT "FACIL, NAO? A LINHA   DATA  PODEFICAR EM QUALQUER PARTE DO  PRO-GRAMA. SE HOU";
2706  PRINT "VER  MAIS  DE  UMA,SERAO  CONSIDERADAS  COMO CONTI-NUACAO. O MESMO OCORRE COM READ.POR EXEMPLO :": GOSUB 9000
2708  PRINT "10 READ GF,K$": PRINT "15 DATA 666," CHR$ (34)"APOCALIPSE" CHR$ (34)",2001": PRINT "20 READ ET": PRINT : PRINT "RESULTADO:   GF=666 , ET=2001 , K$=" CHR$ (34)"APOCALIPSE" CHR$ (34): PRINT 
2709  PRINT : PRINT "SE A LEITURA DE  READ  CHEGAR AOFIM DOS DADOS (DATA) ANTES DE A-CABAR, HAVERA MENSAGEM DE ERRO.": GOSUB 9000: PRINT "SE HOUVER MAIS DADOS QUE  VARIA-VEIS, OS ULTIMOS SERAO IGNORADOS"
2710  PRINT "O COMANDO  RESTORE  FAZ COM  QUEO PROXIMO COMANDO  READ  LEIA OSDADOS A PARTIR DO COMECO. POR E-XEMPLO, SE INCLUIRMOS A LINHA :"
2711  PRINT "17 RESTORE": PRINT : PRINT "TEREMOS:   ET=666": GOSUB 9000: PRINT "ENTENDEU? ENTRE EM BASIC E  FACAO COMPUTADOR  LER E MOSTRAR  UMA";
2712  PRINT "LONGA RELACAO DE DADOS. USE MUI-TOS READ E DATA E ALGUNS RESTOREBOA SORTE!!": PRINT : PRINT : PRINT : PRINT "      FIM DA LICAO 17": GOSUB 9000: GOSUB 9100
2720  GOTO 1500
2900  GOSUB 9005
2901  GOSUB 9005: PRINT : PRINT "PARA ACESSAR  OS ITENS  1  A  5,V. TERA QUE CARREGAR A <PARTE 1>DESTE CURSO.": GOTO 2950
2902  GOSUB 9005: PRINT : PRINT "PARA ACESSAR  OS ITENS  6  A 11,V. TERA QUE CARREGAR A <PARTE 2>DESTE CURSO.": GOTO 2950
2903  GOSUB 9005: PRINT : PRINT "PARA CARREGAR  OS ITENS 18 A 22,V. TERA QUE CARREGAR A <PARTE 4>DESTE CURSO.": GOTO 2950
2950  PRINT : PRINT "DIGITE <CTRL><C> PARA ENTRAR  EMBASIC  E  SIGA AS  INSTRUCOES DACAPA DA FITA.": PRINT 
2960  GOSUB 9000: GOSUB 9100
2970  GOTO 1500
9000  PRINT  CHR$ (27) +  CHR$ (61) +  CHR$ (14) +  CHR$ (0);: PRINT ~20"TECLE <RETURN> PARA CONTINUAR";
9001  POKE ~20284,0
9002 FF =  PEEK (284)
9003  IF ~20FF <  > 13~20 THEN ~20 GOTO ~209002
9004  POKE ~20284,0
9005  HOME 
9006  INVERSE : PRINT "    CURSO DE BASIC <PARTE 3>    ": NORMAL 
9008  RETURN 
9100  PRINT : PRINT : PRINT : PRINT : PRINT : PRINT "TECLE  <CTRL><C> PARA ENTRAR  EMBASIC"
9102  FOR YW = 1 TO 1340: NEXT YW
9103  GOTO 9005
9104  PRINT "##ENGESOFT##ENGESOFT##ENGESOFT##"
9106  RETURN 
