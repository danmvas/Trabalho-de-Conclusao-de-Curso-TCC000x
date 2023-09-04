/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Instrumentos e medidas 		                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_ESCOLA.sps                                                                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DO RESULTADO DA ESCOLA              */
/*                     DO SAEB/PROVA BRASIL 2017                                                       */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* TS_ESCOLA.CSV no diret�rio C:\ do computador.                      	                  */
/*						                   */ 
/* Ao terminar esses procedimentos execute o programa salvo utilizando                      */
/* as vari�veis de interesse.                                                                                       */
/******************************************************************************************************/
/*                                                   ATEN��O                                                          */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os r�tulos das vari�veis de	                    */
/* acordo com o dicion�rio de dados que comp�em os microdados. Para abrir                */
/* os dados sem os r�tulos basta importar diretamente no SPSS.	                    */
/* 							  */
/* Os R�tulos de algumas vari�veis n�o est�o completos, em virtude do tamanho do.      */
/* dos enunciados das quest�es. Tais enunciados foram resumidos e indicados com o   */
/* seguinte c�digo: "(Cf. Dic.)". Essas quest�es exigem a Consulta do Dicion�rio de       */
/* Vari�veis para conhecer o enunciado completo.                                                     	  */
/* 							  */
/*******************************************************************************************************/


GET DATA
  /TYPE=TXT
  /FILE="C:\TS_ESCOLA.csv" 
  /DELCASE=LINE
  /DELIMITERS=","
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  ID_PROVA_BRASIL F4.0
  ID_UF F2.0
  ID_MUNICIPIO F7.0
  ID_ESCOLA F8.0
  ID_DEPENDENCIA_ADM F1.0
  ID_LOCALIZACAO F1.0
  PC_FORMACAO_DOCENTE_INICIAL COMMA6.2
  PC_FORMACAO_DOCENTE_FINAL COMMA6.2
  PC_FORMACAO_DOCENTE_MEDIO COMMA6.2
  NIVEL_SOCIO_ECONOMICO A20
  NU_MATRICULADOS_CENSO_5EF F3.0
  NU_PRESENTES_5EF F3.0
  TAXA_PARTICIPACAO_5EF COMMA6.3
  NIVEL_0_LP5 COMMA6.2
  NIVEL_1_LP5 COMMA6.2
  NIVEL_2_LP5 COMMA6.2
  NIVEL_3_LP5 COMMA6.2
  NIVEL_4_LP5 COMMA6.2
  NIVEL_5_LP5 COMMA6.2
  NIVEL_6_LP5 COMMA6.2
  NIVEL_7_LP5 COMMA6.2
  NIVEL_8_LP5 COMMA6.2
  NIVEL_9_LP5 COMMA6.2
  NIVEL_0_MT5 COMMA6.2
  NIVEL_1_MT5 COMMA6.2
  NIVEL_2_MT5 COMMA6.2
  NIVEL_3_MT5 COMMA6.2
  NIVEL_4_MT5 COMMA6.2
  NIVEL_5_MT5 COMMA6.2
  NIVEL_6_MT5 COMMA6.2
  NIVEL_7_MT5 COMMA6.2
  NIVEL_8_MT5 COMMA6.2
  NIVEL_9_MT5 COMMA6.2
  NIVEL_10_MT5 COMMA6.2
  NU_MATRICULADOS_CENSO_9EF F3.0
  NU_PRESENTES_9EF F3.0
  TAXA_PARTICIPACAO_9EF COMMA6.3
  NIVEL_0_LP9 COMMA6.2
  NIVEL_1_LP9 COMMA6.2
  NIVEL_2_LP9 COMMA6.2
  NIVEL_3_LP9 COMMA6.2
  NIVEL_4_LP9 COMMA6.2
  NIVEL_5_LP9 COMMA6.2
  NIVEL_6_LP9 COMMA6.2
  NIVEL_7_LP9 COMMA6.2
  NIVEL_8_LP9 COMMA6.2
  NIVEL_0_MT9 COMMA6.2
  NIVEL_1_MT9 COMMA6.2
  NIVEL_2_MT9 COMMA6.2
  NIVEL_3_MT9 COMMA6.2
  NIVEL_4_MT9 COMMA6.2
  NIVEL_5_MT9 COMMA6.2
  NIVEL_6_MT9 COMMA6.2
  NIVEL_7_MT9 COMMA6.2
  NIVEL_8_MT9 COMMA6.2
  NIVEL_9_MT9 COMMA6.2
  NU_MATRICULADOS_CENSO_3EM F3.0
  NU_PRESENTES_3EM F3.0
  TAXA_PARTICIPACAO_3EM COMMA6.3
  NIVEL_0_LP3 COMMA6.2
  NIVEL_1_LP3 COMMA6.2
  NIVEL_2_LP3 COMMA6.2
  NIVEL_3_LP3 COMMA6.2
  NIVEL_4_LP3 COMMA6.2
  NIVEL_5_LP3 COMMA6.2
  NIVEL_6_LP3 COMMA6.2
  NIVEL_7_LP3 COMMA6.2
  NIVEL_8_LP3 COMMA6.2
  NIVEL_0_MT3 COMMA6.2
  NIVEL_1_MT3 COMMA6.2
  NIVEL_2_MT3 COMMA6.2
  NIVEL_3_MT3 COMMA6.2
  NIVEL_4_MT3 COMMA6.2
  NIVEL_5_MT3 COMMA6.2
  NIVEL_6_MT3 COMMA6.2
  NIVEL_7_MT3 COMMA6.2
  NIVEL_8_MT3 COMMA6.2
  NIVEL_9_MT3 COMMA6.2
  NIVEL_10_MT3 COMMA6.2
  MEDIA_5EF_LP COMMA6.2
  MEDIA_5EF_MT COMMA6.2
  MEDIA_9EF_LP COMMA6.2
  MEDIA_9EF_MT COMMA6.2
  MEDIA_3EM_LP COMMA6.2
  MEDIA_3EM_MT COMMA6.2
  IN_PREENCHIMENTO_QUESTIONARIO F1.0
  TX_RESP_Q007 A8
  TX_RESP_Q008 A8
  TX_RESP_Q009 A8
  TX_RESP_Q010 A8
  TX_RESP_Q011 A8
  TX_RESP_Q012 A8
  TX_RESP_Q013 A8
  TX_RESP_Q014 A8
  TX_RESP_Q015 A8
  TX_RESP_Q016 A8
  TX_RESP_Q017 A8
  TX_RESP_Q018 A8
  TX_RESP_Q019 A8
  TX_RESP_Q020 A8
  TX_RESP_Q021 A8
  TX_RESP_Q022 A8
  TX_RESP_Q023 A8
  TX_RESP_Q024 A8
  TX_RESP_Q025 A8
  TX_RESP_Q026 A8
  TX_RESP_Q027 A8
  TX_RESP_Q028 A8
  TX_RESP_Q029 A8
  TX_RESP_Q030 A8
  TX_RESP_Q031 A8
  TX_RESP_Q032 A8
  TX_RESP_Q033 A8
  TX_RESP_Q034 A8
  TX_RESP_Q035 A8
  TX_RESP_Q036 A8
  TX_RESP_Q037 A8
  TX_RESP_Q038 A8
  TX_RESP_Q039 A8
  TX_RESP_Q040 A8
  TX_RESP_Q041 A8
  TX_RESP_Q042 A8
  TX_RESP_Q043 A8
  TX_RESP_Q044 A8
  TX_RESP_Q045 A8
  TX_RESP_Q046 A8
  TX_RESP_Q047 A8
  TX_RESP_Q048 A8
  TX_RESP_Q049 A8
  TX_RESP_Q050 A8
  TX_RESP_Q051 A8
  TX_RESP_Q052 A8
  TX_RESP_Q053 A8
  TX_RESP_Q054 A8
  TX_RESP_Q055 A8
  TX_RESP_Q056 A8
  TX_RESP_Q057 A8
  TX_RESP_Q058 A8
  TX_RESP_Q059 A8
  TX_RESP_Q060 A8
  TX_RESP_Q061 A8
  TX_RESP_Q062 A8
  TX_RESP_Q063 A8
  TX_RESP_Q064 A8
  TX_RESP_Q065 A8
  TX_RESP_Q066 A8
  TX_RESP_Q067 A8
  TX_RESP_Q068 A8
  TX_RESP_Q069 A8
  TX_RESP_Q070 A8
  TX_RESP_Q071 A8
  TX_RESP_Q072 A8
  TX_RESP_Q073 A8
  TX_RESP_Q074 A8.
CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.



VARIABLE LABELS ID_PROVA_BRASIL 'Ano da ANEB/Prova Brasil'.
VALUE LABELS ID_UF
11 'RO'
12 'AC'
13 'AM'
14 'RR'
15 'PA'
16 'AP'
17 'TO'
21 'MA'
22 'PI'
23 'CE'
24 'RN'
25 'PB'
26 'PE'
27 'AL'
28 'SE'
29 'BA'
31 'MG'
32 'ES'
33 'RJ'
35 'SP'
41 'PR'
42 'SC'
43 'RS'
50 'MS'
51 'MT'
52 'GO'
53 'DF'.
VARIABLE LABELS ID_UF 'C�digo da Unidade da Federa��o'.
VARIABLE LABELS ID_MUNICIPIO 'C�digo do Munic�pio'.
VARIABLE LABELS ID_ESCOLA 'C�digo da Escola'.

VARIABLE LABELS ID_DEPENDENCIA_ADM 'Depend�ncia Administrativa'.
VALUE LABELS ID_DEPENDENCIA_ADM
1 'Federal'
2 'Estadual'
3 'Municipal'
4 'Privada'.
VARIABLE LABELS ID_LOCALIZACAO 'Localiza��o'.
VALUE LABELS ID_LOCALIZACAO
1 'Urbana'
2 'Rural'.
VARIABLE LABELS PC_FORMACAO_DOCENTE_INICIAL 'Indicador de Adequa��o da Forma��o Docente (Informa��o referente ao Grupo 1, para os Anos Iniciais do EF)'.
VARIABLE LABELS PC_FORMACAO_DOCENTE_FINAL 'Indicador de Adequa��o da Forma��o Docente (Informa��o referente ao Grupo 1, para os Anos Finais do EF)'.
VARIABLE LABELS PC_FORMACAO_DOCENTE_MEDIO 'Indicador de Adequa��o da Forma��o Docente (Informa��o referente ao Grupo 1, para o Ensino M�dio)'.
VARIABLE LABELS NIVEL_SOCIO_ECONOMICO 'N�vel socioec�nomico da escola'.
VARIABLE LABELS NU_MATRICULADOS_CENSO_5EF 'N�mero de alunos matriculados na 4� S�rie/5� ano no censo 2017'.     
VARIABLE LABELS NU_PRESENTES_5EF 'N�mero de alunos presentes na 4�/5� ano'.
VARIABLE LABELS TAXA_PARTICIPACAO_5EF 'Raz�o entre o total de alunos presentes na Prova Brasil (NU_PRESENTES_5EF) e o total de alunos cadastrados no Censo Escolar que s�o p�blico alvo da Prova Brasil (NU_MATRICULADOS_CENSO_5EF)'.
VARIABLE LABELS nivel_0_LP5 '(-00;125)'.
VARIABLE LABELS nivel_1_LP5 '(125;150)'.
VARIABLE LABELS nivel_2_LP5 '[150;175)'.
VARIABLE LABELS nivel_3_LP5 '[175;200)'.
VARIABLE LABELS nivel_4_LP5 '[200;225)'.
VARIABLE LABELS nivel_5_LP5 '[225;250)'.
VARIABLE LABELS nivel_6_LP5 '[250;275)'.
VARIABLE LABELS nivel_7_LP5 '[275;300)'.
VARIABLE LABELS nivel_8_LP5 '[300;325)'.
VARIABLE LABELS nivel_9_LP5 '[325;+00)'.
VARIABLE LABELS nivel_0_MT5 '(-00;125)'.
VARIABLE LABELS nivel_1_MT5 '[125;150)'.
VARIABLE LABELS nivel_2_MT5 '[150;175)'.
VARIABLE LABELS nivel_3_MT5 '[175;200)'.
VARIABLE LABELS nivel_4_MT5 '[200;225)'.
VARIABLE LABELS nivel_5_MT5 '[225;250)'.
VARIABLE LABELS nivel_6_MT5 '[250;275)'.
VARIABLE LABELS nivel_7_MT5 '[275;300)'.
VARIABLE LABELS nivel_8_MT5 '[300;325)'.
VARIABLE LABELS nivel_9_MT5 '[325;350)'.
VARIABLE LABELS nivel_10_MT5 '[350;+00)'.
VARIABLE LABELS NU_MATRICULADOS_CENSO_9EF 'N�mero de alunos matriculados na 8� S�rie/9� ano no censo 2013'.     
VARIABLE LABELS NU_PRESENTES_9EF 'N�mero de alunos presentes na 8�/9� ano'.
VARIABLE LABELS TAXA_PARTICIPACAO_9EF 'Raz�o entre o total de alunos presentes na Prova Brasil (NU_PRESENTES_9EF) e o total de alunos cadastrados no Censo Escolar que s�o p�blico alvo da Prova Brasil (NU_MATRICULADOS_CENSO_9EF)'.
VARIABLE LABELS nivel_0_LP9 '(-00;200)'.
VARIABLE LABELS nivel_1_LP9 '[200;225)'.
VARIABLE LABELS nivel_2_LP9 '[225;250)'.
VARIABLE LABELS nivel_3_LP9 '[250;275)'.
VARIABLE LABELS nivel_4_LP9 '[275;300)'.
VARIABLE LABELS nivel_5_LP9 '[300;325)'.
VARIABLE LABELS nivel_6_LP9 '[325;350)'.
VARIABLE LABELS nivel_7_LP9 '[350;375)'.
VARIABLE LABELS nivel_8_LP9 '[375;+00)'.
VARIABLE LABELS nivel_0_MT9 '(-00;200)'.
VARIABLE LABELS nivel_1_MT9 '[200;225)'.
VARIABLE LABELS nivel_2_MT9 '[225;250)'.
VARIABLE LABELS nivel_3_MT9 '[250;275)'.
VARIABLE LABELS nivel_4_MT9 '[275;300)'.
VARIABLE LABELS nivel_5_MT9 '[300;325)'.
VARIABLE LABELS nivel_6_MT9 '[325;350)'.
VARIABLE LABELS nivel_7_MT9 '[350;375)'.
VARIABLE LABELS nivel_8_MT9 '[375;400)'.
VARIABLE LABELS nivel_9_MT9 '[400;+00)'.
VARIABLE LABELS NU_MATRICULADOS_CENSO_3EM 'N�mero de alunos matriculados na 3�/4� s�rie do ensino m�dio no censo 2017'.     
VARIABLE LABELS NU_PRESENTES_3EM 'N�mero de alunos presentes na 3�/4� s�rie do ensino m�dio'.
VARIABLE LABELS TAXA_PARTICIPACAO_3EM 'Raz�o entre o total de alunos presentes na Prova Brasil (NU_PRESENTES_3EM) e o total de alunos cadastrados no Censo Escolar que s�o p�blico alvo da Prova Brasil (NU_MATRICULADOS_CENSO_3EM)'.
VARIABLE LABELS NIVEL_0_LP3  '(-00;225)'.
VARIABLE LABELS NIVEL_1_LP3  '[225;250)'.
VARIABLE LABELS NIVEL_2_LP3  '[250;275)'.
VARIABLE LABELS NIVEL_3_LP3  '[275;300)'.
VARIABLE LABELS NIVEL_4_LP3  '[300;325)'.
VARIABLE LABELS NIVEL_5_LP3  '[325;350)'.
VARIABLE LABELS NIVEL_6_LP3  '[350;375)'.
VARIABLE LABELS NIVEL_7_LP3  '[375;400)'.
VARIABLE LABELS NIVEL_8_LP3  '[400;+00)'.
VARIABLE LABELS NIVEL_0_MT3  '[-00;225)'.
VARIABLE LABELS NIVEL_1_MT3  '[225;250)'.
VARIABLE LABELS NIVEL_2_MT3  '[250;275)'.
VARIABLE LABELS NIVEL_3_MT3  '[275;300)'.
VARIABLE LABELS NIVEL_4_MT3  '[300;325)'.
VARIABLE LABELS NIVEL_5_MT3  '[325;350)'.
VARIABLE LABELS NIVEL_6_MT3  '[350;375)'.
VARIABLE LABELS NIVEL_7_MT3  '[375;400)'.
VARIABLE LABELS NIVEL_8_MT3  '[400;425)'.
VARIABLE LABELS NIVEL_9_MT3  '[425;450)'.
VARIABLE LABELS NIVEL_10_MT3  '[450;+00)'.
VARIABLE LABELS MEDIA_5EF_LP 'M�dia em L�ngua Portuguesa 5� ano'.
VARIABLE LABELS MEDIA_5EF_MT 'M�dia em Matem�tica 5� ano'.
VARIABLE LABELS MEDIA_9EF_LP 'M�dia em L�ngua Portuguesa 9� ano'.
VARIABLE LABELS MEDIA_9EF_MT 'M�dia em Matem�tica 9� ano'.
VARIABLE LABELS MEDIA_3EM_LP 'M�dia em L�ngua Portuguesa 3�/4� s�rie do ensino m�dio'.
VARIABLE LABELS MEDIA_3EM_MT 'M�dia em Matem�tica 3�/4� s�rie do ensino m�dio'.
VARIABLE LABELS IN_PREENCHIMENTO_QUESTIONARIO 'Indicador de preenchimento do question�rio'.
VALUE LABELS IN_PREENCHIMENTO_QUESTIONARIO
0 'N�o preenchido'
1 'Preenchido parcial ou totalmente'.
VARIABLE LABELS TX_RESP_Q007 'Avalie o estado de conserva��o dos itens e equipamentos do pr�dio - Telhado'.
VALUE LABELS TX_RESP_Q007
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q008 'Avalie o estado de conserva��o dos itens e equipamentos do pr�dio - Paredes'.
VALUE LABELS TX_RESP_Q008
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q009 'Avalie o estado de conserva��o dos itens e equipamentos do pr�dio - Piso'.
VALUE LABELS TX_RESP_Q009
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q010 'Avalie o estado de conserva��o dos itens e equipamentos do pr�dio -  Entrada do pr�dio'.
VALUE LABELS TX_RESP_Q010
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q011 'Avalie o estado de conserva��o dos itens e equipamentos do pr�dio - P�tio'.
VALUE LABELS TX_RESP_Q011
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q012 'Avalie o estado de conserva��o dos itens e equipamentos do pr�dio - Corredores'.
VALUE LABELS TX_RESP_Q012
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q013 'Avalie o estado de conserva��o dos itens e equipamentos do pr�dio - Salas de aula'.
VALUE LABELS TX_RESP_Q013
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q014 'Avalie o estado de conserva��o dos itens e equipamentos do pr�dio - Portas'.
VALUE LABELS TX_RESP_Q014
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q015 'Avalie o estado de conserva��o dos itens e equipamentos do pr�dio - Janelas'.
VALUE LABELS TX_RESP_Q015
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q016 'Avalie o estado de conserva��o dos itens e equipamentos do pr�dio - Banheiros'.
VALUE LABELS TX_RESP_Q016
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q017 'Avalie o estado de conserva��o dos itens e equipamentos do pr�dio - Cozinha'.
VALUE LABELS TX_RESP_Q017
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q018 'Avalie o estado de conserva��o dos itens e equipamentos do pr�dio - Instala��es Hidr�ulicas'.
VALUE LABELS TX_RESP_Q018
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q019 'Avalie o estado de conserva��o dos itens e equipamentos do pr�dio - Instala��es El�tricas'.
VALUE LABELS TX_RESP_Q019
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q020 'Avalie a quantidade de salas de aula que atendem aos seguintes crit�rios: S�o iluminadas de forma adequada. (Observe se a ilumina��o natural ou artificial garante boa claridade no interior das salas.)'.
VALUE LABELS TX_RESP_Q020
"A" 'Todas.'
"B" 'Mais da metade.'
"C" 'Menos da metade.'
"D" 'Nenhuma.'.
VARIABLE LABELS TX_RESP_Q021 'Avalie a quantidade de salas de aula que atendem aos seguintes crit�rios: S�o arejadas de forma adequada.'.
VALUE LABELS TX_RESP_Q021
"A" 'Todas.'
"B" 'Mais da metade.'
"C" 'Menos da metade.'
"D" 'Nenhuma.'.
VARIABLE LABELS TX_RESP_Q022 'Avalie os seguintes aspectos em rela��o � seguran�a da escola e dos alunos: Controle de entrada e sa�da de alunos.'.
VALUE LABELS TX_RESP_Q022
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q023 'Avalie os seguintes aspectos em rela��o � seguran�a da escola e dos alunos: Controle de entrada de pessoas estranhas na escola.'.
VALUE LABELS TX_RESP_Q023
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q024 'Avalie os seguintes aspectos em rela��o � seguran�a da escola e dos alunos: Vigil�ncia para o per�odo diurno.'.
VALUE LABELS TX_RESP_Q024
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q025 'Avalie os seguintes aspectos em rela��o � seguran�a da escola e dos alunos: Vigil�ncia para o per�odo noturno.'.
VALUE LABELS TX_RESP_Q025
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q026 'Avalie os seguintes aspectos em rela��o � seguran�a da escola e dos alunos: Vigil�ncia para os finais de semana e feriados.'.
VALUE LABELS TX_RESP_Q026
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q027 'Avalie os seguintes aspectos em rela��o � seguran�a da escola e dos alunos: Esquema de policiamento para inibi��o de furtos, roubos e outras formas de viol�ncia.'.
VALUE LABELS TX_RESP_Q027
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q028 'Avalie os seguintes aspectos em rela��o � seguran�a da escola e dos alunos: Esquema de policiamento para inibi��o de tr�fico de t�xicos/drogas dentro da escola.'.
VALUE LABELS TX_RESP_Q028
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q029 'Avalie os seguintes aspectos em rela��o � seguran�a da escola e dos alunos: Esquema de policiamento para inibi��o de tr�fico de t�xicos/drogas nas imedia��es da escola.'.
VALUE LABELS TX_RESP_Q029
"A" 'Bom'
"B" 'Regular'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q030 'Avalie os seguintes aspectos em rela��o � seguran�a da escola e dos alunos: Sistema de prote��o contra inc�ndio (alarme de fuma�a e temperatura, extintores contra inc�ndio dentro do prazo de validade, mangueiras etc.).'.
VALUE LABELS TX_RESP_Q030
"A" 'Bom        '
"B" 'Regular    '
"C" 'Ruim       '
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q031 'Avalie os seguintes aspectos em rela��o � seguran�a da escola e dos alunos: Ilumina��o do lado de fora da escola.'.
VALUE LABELS TX_RESP_Q031
"A" 'Bom        '
"B" 'Regular    '
"C" 'Ruim       '
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q032 'Avalie os seguintes aspectos em rela��o � seguran�a da escola e dos alunos: '+ 
' H� muros, grades ou cercas em condi��es de garantir a seguran�a dos alunos? (Caso existam buracos ou aberturas que permitam o acesso de estranhos, responder N�O.)'.
VALUE LABELS TX_RESP_Q032
"A" 'Sim'
"B" 'N�o'.
VARIABLE LABELS TX_RESP_Q033 'Avalie os seguintes aspectos em rela��o � seguran�a da escola e dos alunos: Os equipamentos mais caros (...) s�o guardados em salas seguras ou possuem mecanismos de prote��o (...)? (Cf. Dic.)'.
VALUE LABELS TX_RESP_Q033
"A" 'Sim'
"B" 'N�o'.
VARIABLE LABELS TX_RESP_Q034 'Avalie os seguintes aspectos em rela��o � seguran�a da escola e dos alunos: Os port�es que d�o acesso � parte externa permanecem trancados durante o hor�rio de funcionamento da escola?'.
VALUE LABELS TX_RESP_Q034
"A" 'Sim'
"B" 'N�o'.
VARIABLE LABELS TX_RESP_Q035 'Avalie os seguintes aspectos em rela��o � seguran�a da escola e dos alunos: A escola adota alguma medida de seguran�a para proteger os alunos nas suas imedia��es?'.
VALUE LABELS TX_RESP_Q035
"A" 'Sim'
"B" 'N�o'.
VARIABLE LABELS TX_RESP_Q036 'Avalie os seguintes aspectos em rela��o � seguran�a da escola e dos alunos: A escola apresenta sinais de depreda��o (vidros, portas e janelas quebradas, l�mpadas estouradas etc.)?'.
VALUE LABELS TX_RESP_Q036
"A" 'Sim, muitos.'	
"B" 'Sim, poucos.'
"C" 'N�o'.
VARIABLE LABELS TX_RESP_Q037 'Indique se nesta escola existem ou n�o os recursos apontados e quais s�o suas condi��es de uso. Computadores para uso dos alunos.'.
VALUE LABELS TX_RESP_Q037
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q038 'Indique se nesta escola existem ou n�o os recursos apontados e quais s�o suas condi��es de uso. Acesso � internet para uso dos alunos.'.
VALUE LABELS TX_RESP_Q038
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q039 'Indique se nesta escola existem ou n�o os recursos apontados e quais s�o suas condi��es de uso. Computadores para uso dos professores.'.
VALUE LABELS TX_RESP_Q039
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q040 'Indique se nesta escola existem ou n�o os recursos apontados e quais s�o suas condi��es de uso. Acesso � internet para uso dos professores.'.
VALUE LABELS TX_RESP_Q040
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q041 'Indique se nesta escola existem ou n�o os recursos apontados e quais s�o suas condi��es de uso. Computadores exclusivamente para o uso administrativo.'.
VALUE LABELS TX_RESP_Q041
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q042 'Indique se nesta escola existem ou n�o os recursos apontados e quais s�o suas condi��es de uso. Fitas de v�deo ou DVD (educativas).'.
VALUE LABELS TX_RESP_Q042
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q043 'Indique se nesta escola existem ou n�o os recursos apontados e quais s�o suas condi��es de uso. Fitas de v�deo ou DVD (lazer).'.
VALUE LABELS TX_RESP_Q043
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q044 'Indique se nesta escola existem ou n�o os recursos apontados e quais s�o suas condi��es de uso. M�quina copiadora.'.
VALUE LABELS TX_RESP_Q044
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q045 'Indique se nesta escola existem ou n�o os recursos apontados e quais s�o suas condi��es de uso. Impressora.'.
VALUE LABELS TX_RESP_Q045
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q046 'Indique se nesta escola existem ou n�o os recursos apontados e quais s�o suas condi��es de uso. Retroprojetor.'.
VALUE LABELS TX_RESP_Q046
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q047 'Indique se nesta escola existem ou n�o os recursos apontados e quais s�o suas condi��es de uso. Projetor de slides/datashow.'.
VALUE LABELS TX_RESP_Q047
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q048 'Indique se nesta escola existem ou n�o os recursos apontados e quais s�o suas condi��es de uso. Videocassete ou aparelho de DVD. '.
VALUE LABELS TX_RESP_Q048
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q049 'Indique se nesta escola existem ou n�o os recursos apontados e quais s�o suas condi��es de uso. Televis�o.'.
VALUE LABELS TX_RESP_Q049
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q050 'Indique se nesta escola existem ou n�o os recursos apontados e quais s�o suas condi��es de uso. Mime�grafo.'.
VALUE LABELS TX_RESP_Q050
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q051 'Indique se nesta escola existem ou n�o os recursos apontados e quais s�o suas condi��es de uso. C�mera fotogr�fica.'.
VALUE LABELS TX_RESP_Q051
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q052 'Indique se nesta escola existem ou n�o os recursos apontados e quais s�o suas condi��es de uso. Antena parab�lica.'.
VALUE LABELS TX_RESP_Q052
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q053 'Indique se nesta escola existem ou n�o os recursos apontados e quais s�o suas condi��es de uso. Internet com conex�o Banda Larga.'.
VALUE LABELS TX_RESP_Q053
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q054 'Indique se nesta escola existem ou n�o os recursos apontados e quais s�o suas condi��es de uso. Linha telef�nica.'.
VALUE LABELS TX_RESP_Q054
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q055 'Indique se nesta escola existem ou n�o os recursos apontados e quais s�o suas condi��es de uso. Aparelho de fax.'.
VALUE LABELS TX_RESP_Q055
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q056 'Indique se nesta escola existem ou n�o os recursos apontados e quais s�o suas condi��es de uso. Aparelho de som.'.
VALUE LABELS TX_RESP_Q056
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q057 'Indique a exist�ncia e as condi��es de uso dos seguintes espa�os da escola: Biblioteca.'.
VALUE LABELS TX_RESP_Q057
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q058 'Indique a exist�ncia e as condi��es de uso dos seguintes espa�os da escola: Sala de leitura.'.
VALUE LABELS TX_RESP_Q058
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q059 'Indique a exist�ncia e as condi��es de uso dos seguintes espa�os da escola: Quadra de esportes.'.
VALUE LABELS TX_RESP_Q059
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q060 'Indique a exist�ncia e as condi��es de uso dos seguintes espa�os da escola: Laborat�rio de inform�tica.'.
VALUE LABELS TX_RESP_Q060
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q061 'Indique a exist�ncia e as condi��es de uso dos seguintes espa�os da escola: Laborat�rio de Ci�ncias.'.
VALUE LABELS TX_RESP_Q061
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q062 'Indique a exist�ncia e as condi��es de uso dos seguintes espa�os da escola: Audit�rio.'.
VALUE LABELS TX_RESP_Q062
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q063 'Indique a exist�ncia e as condi��es de uso dos seguintes espa�os da escola: Sala para atividades de m�sica.'.
VALUE LABELS TX_RESP_Q063
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q064 'Indique a exist�ncia e as condi��es de uso dos seguintes espa�os da escola: Sala para atividades de artes pl�sticas.'.
VALUE LABELS TX_RESP_Q064
"A" 'Bom.'	
"B" 'Regular.'
"C" 'Ruim'
"D" 'Inexistente'.
VARIABLE LABELS TX_RESP_Q065 'Em rela��o � biblioteca ou sala de leitura: Possui acervo diversificado que desperte o interesse dos alunos.'.
VALUE LABELS TX_RESP_Q065
"A" 'Sim.'	
"B" 'N�o.'
"C" 'N�o h� biblioteca/sala de leitura.'.
VARIABLE LABELS TX_RESP_Q066 'Em rela��o � biblioteca ou sala de leitura: Possui brinquedoteca.'.
VALUE LABELS TX_RESP_Q066
"A" 'Sim.'	
"B" 'N�o.'
"C" 'N�o h� biblioteca/sala de leitura.'.
VARIABLE LABELS TX_RESP_Q067 'Em rela��o � biblioteca ou sala de leitura: Possui espa�o para estudos coletivos.'.
VALUE LABELS TX_RESP_Q067
"A" 'Sim.'	
"B" 'N�o.'
"C" 'N�o h� biblioteca/sala de leitura.'.
VARIABLE LABELS TX_RESP_Q068 'Em rela��o � biblioteca ou sala de leitura: Os livros podem ser manuseados e emprestados.'.
VALUE LABELS TX_RESP_Q068
"A" 'Sim.'	
"B" 'N�o.'
"C" 'N�o h� biblioteca/sala de leitura.'.
VARIABLE LABELS TX_RESP_Q069 'Em rela��o � biblioteca ou sala de leitura: A comunidade pode utilizar o espa�o e os livros.'.
VALUE LABELS TX_RESP_Q069
"A" 'Sim.'	
"B" 'N�o.'
"C" 'N�o h� biblioteca/sala de leitura.'.
VARIABLE LABELS TX_RESP_Q070 'Em rela��o � biblioteca ou sala de leitura: O espa�o � arejado e bem iluminado.'.
VALUE LABELS TX_RESP_Q070
"A" 'Sim.'	
"B" 'N�o.'
"C" 'N�o h� biblioteca/sala de leitura.'.
VARIABLE LABELS TX_RESP_Q071 'Em rela��o � biblioteca ou sala de leitura: Existe uma pessoa respons�vel pelo atendimento na biblioteca ou na sala de leitura.'.
VALUE LABELS TX_RESP_Q071
"A" 'Sim.'	
"B" 'N�o.'
"C" 'N�o h� biblioteca/sala de leitura.'.
VARIABLE LABELS TX_RESP_Q072 'Os seguintes usu�rios da biblioteca (ou sala de leitura) levam livros para casa: Os alunos:'.
VALUE LABELS TX_RESP_Q072
"A" 'Sim.'	
"B" 'N�o, porque n�o querem.'
"C" 'N�o, porque a escola n�o permite'
"D" 'N�o h� biblioteca/sala de leitura.'.
VARIABLE LABELS TX_RESP_Q073 'Os seguintes usu�rios da biblioteca (ou sala de leitura) levam livros para casa: Os professores:'.
VALUE LABELS TX_RESP_Q073
"A" 'Sim.'	
"B" 'N�o, porque n�o querem.'
"C" 'N�o, porque a escola n�o permite'
"D" 'N�o h� biblioteca/sala de leitura.'.
VARIABLE LABELS TX_RESP_Q074 'Os seguintes usu�rios da biblioteca (ou sala de leitura) levam livros para casa: Os membros da comunidade:'.
VALUE LABELS TX_RESP_Q074
"A" 'Sim.'	
"B" 'N�o, porque n�o querem.'
"C" 'N�o, porque a escola n�o permite'
"D" 'N�o h� biblioteca/sala de leitura.'.



