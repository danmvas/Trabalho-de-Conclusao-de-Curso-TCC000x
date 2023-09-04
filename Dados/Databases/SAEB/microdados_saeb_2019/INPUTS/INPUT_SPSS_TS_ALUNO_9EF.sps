/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o- Geral de Instrumentos e Medidas		                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_ALUNO_9EF                                                                   */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DOS RESULTADOS DOS ALUNOS DO */
/*                     9� ANO DO SAEB 2019                                                                    */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* TS_ALUNO_9EF.CSV no diret�rio C:\ do computador.	                                     */
/*							 */ 
/* Ao terminar esses procedimentos execute o programa salvo utilizando                      */
/* as vari�veis de interesse.                                                                                       */
/*							 */
/* Para a leitura dos microdados � necess�rio a sele��o do programa abaixo,               */
/* depois execute-o.						 */
/*							 */ 
/******************************************************************************************************/
/*                                                   ATEN��O                                                          */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os r�tulos das vari�veis de	                    */
/* acordo com o dicion�rio de dados que comp�em os microdados. Para abrir                */
/* os dados sem os r�tulos basta importar diretamente no SPSS.		  */
/* 							  */
/* Os R�tulos de algumas vari�veis n�o est�o completos, em virtude do tamanho do.      */
/* dos enunciados das quest�es. Tais enunciados foram resumidos e indicados com o   */
/* seguinte c�digo: "(Cf. Dic.)". Essas quest�es exigem a Consulta do Dicion�rio de       */
/* Vari�veis para conhecer o enunciado completo.                                                     	  */
/* 							   */
/*******************************************************************************************************/

GET DATA
  /TYPE=TXT
  /FILE="C:\TS_ALUNO_9EF.csv"
  /DELCASE=LINE
  /DELIMITERS=","
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  ID_SAEB F4.0
  ID_REGIAO F1.0
  ID_UF F2.0
  ID_MUNICIPIO F7.0
  ID_AREA F1.0
  ID_ESCOLA F8.0
  ID_DEPENDENCIA_ADM F1.0
  ID_LOCALIZACAO F1.0
  ID_TURMA F6.0
  ID_TURNO F1.0
  ID_SERIE F1.0
  ID_ALUNO F8.0
  IN_SITUACAO_CENSO F1.0
  IN_PREENCHIMENTO_LP F1.0
  IN_PREENCHIMENTO_MT F1.0
  IN_PREENCHIMENTO_CH F1.0
  IN_PREENCHIMENTO_CN F1.0
  IN_PRESENCA_LP F1.0
  IN_PRESENCA_MT F1.0
  IN_PRESENCA_CH F1.0
  IN_PRESENCA_CN F1.0
  ID_CADERNO_LP F2.0
  ID_BLOCO_1_LP F1.0
  ID_BLOCO_2_LP F1.0
  ID_CADERNO_MT F2.0
  ID_BLOCO_1_MT F1.0
  ID_BLOCO_2_MT F1.0
  ID_CADERNO_CH F2.0
  ID_BLOCO_1_CH F1.0
  ID_BLOCO_2_CH F1.0
  ID_BLOCO_3_CH F1.0
  NU_BLOCO_1_ABERTA_CH F1.0
  NU_BLOCO_2_ABERTA_CH F1.0
  ID_CADERNO_CN F2.0
  ID_BLOCO_1_CN F1.0
  ID_BLOCO_2_CN F1.0
  ID_BLOCO_3_CN F1.0
  NU_BLOCO_1_ABERTA_CN F1.0
  NU_BLOCO_2_ABERTA_CN F1.0
  TX_RESP_BLOCO_1_LP A13
  TX_RESP_BLOCO_2_LP A13
  TX_RESP_BLOCO_1_MT A13
  TX_RESP_BLOCO_2_MT A13
  TX_RESP_BLOCO_1_CH A10
  TX_RESP_BLOCO_2_CH A10
  TX_RESP_BLOCO_3_CH A10
  CO_CONCEITO_Q1_CH A1
  CO_CONCEITO_Q2_CH A1
  TX_RESP_BLOCO_1_CN A9
  TX_RESP_BLOCO_2_CN A9
  TX_RESP_BLOCO_3_CN A9
  CO_CONCEITO_Q1_CN A1
  CO_CONCEITO_Q2_CN A1
  IN_PROFICIENCIA_LP F1.0
  IN_PROFICIENCIA_MT F1.0
  IN_PROFICIENCIA_CH F1.0
  IN_PROFICIENCIA_CN F1.0
  IN_AMOSTRA F1.0
  ESTRATO A15
  ESTRATO_CIENCIAS A15
  PESO_ALUNO_LP COMMA6.2
  PROFICIENCIA_LP COMMA6.2
  ERRO_PADRAO_LP COMMA6.2
  PROFICIENCIA_LP_SAEB COMMA6.2
  ERRO_PADRAO_LP_SAEB COMMA6.2
  PESO_ALUNO_MT COMMA6.2
  PROFICIENCIA_MT COMMA6.2
  ERRO_PADRAO_MT COMMA6.2
  PROFICIENCIA_MT_SAEB COMMA6.2
  ERRO_PADRAO_MT_SAEB COMMA6.2
  PESO_ALUNO_CH COMMA6.2
  PROFICIENCIA_CH COMMA6.2
  ERRO_PADRAO_CH COMMA6.2
  PROFICIENCIA_CH_SAEB COMMA6.2
  ERRO_PADRAO_CH_SAEB COMMA6.2
  PESO_ALUNO_CN COMMA6.2
  PROFICIENCIA_CN COMMA6.2
  ERRO_PADRAO_CN COMMA6.2
  PROFICIENCIA_CN_SAEB  COMMA6.2
  ERRO_PADRAO_CN_SAEB COMMA6.2
  IN_PREENCHIMENTO_QUESTIONARIO F1.0
  TX_RESP_Q001 A8
  TX_RESP_Q002 A8
  TX_RESP_Q003a A8
  TX_RESP_Q003b A8
  TX_RESP_Q003c A8
  TX_RESP_Q003d A8
  TX_RESP_Q003e A8
  TX_RESP_Q004 A8
  TX_RESP_Q005 A8
  TX_RESP_Q006a A8
  TX_RESP_Q006b A8
  TX_RESP_Q006c A8
  TX_RESP_Q006d A8
  TX_RESP_Q006e A8
  TX_RESP_Q007 A8
  TX_RESP_Q008a A8
  TX_RESP_Q008b A8
  TX_RESP_Q008c A8
  TX_RESP_Q009a A8
  TX_RESP_Q009b A8
  TX_RESP_Q009c A8
  TX_RESP_Q009d A8
  TX_RESP_Q009e A8
  TX_RESP_Q009f A8
  TX_RESP_Q009g A8
  TX_RESP_Q010a A8
  TX_RESP_Q010b A8
  TX_RESP_Q010c A8
  TX_RESP_Q010d A8
  TX_RESP_Q010e A8
  TX_RESP_Q010f A8
  TX_RESP_Q010g A8
  TX_RESP_Q010h A8
  TX_RESP_Q010i A8
  TX_RESP_Q011 A8
  TX_RESP_Q012 A8
  TX_RESP_Q013 A8
  TX_RESP_Q014 A8
  TX_RESP_Q015 A8
  TX_RESP_Q016 A8
  TX_RESP_Q017a A8
  TX_RESP_Q017b A8
  TX_RESP_Q017c A8
  TX_RESP_Q017d A8
  TX_RESP_Q017e A8
  TX_RESP_Q018a A8
  TX_RESP_Q018b A8
  TX_RESP_Q018c A8
  TX_RESP_Q019 A8.

CACHE.
EXECUTE.
DATASET NAME TS_ALUNO_9EF WINDOW=FRONT.

VARIABLE LABELS ID_SAEB 'Ano do Saeb'.
VARIABLE LABELS ID_REGIAO 'C�digo da Regi�o'.
VALUE LABELS ID_REGIAO
1 'Norte'
2 'Nordeste'
3 'Sudeste'
4 'Sul'
5 'Centro-Oeste'.
VARIABLE LABELS ID_UF 'C�digo da Unidade da Federa��o'.
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
VARIABLE LABELS ID_MUNICIPIO 'C�digo do Munic�pio'.
VARIABLE LABELS ID_AREA '�rea'.
VALUE LABELS ID_AREA
1 'Capital'
2 'Interior'.
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
VARIABLE LABELS ID_TURMA 'C�digo da turma no Saeb'.
VARIABLE LABELS ID_TURNO 'Turno da turma'.
VALUE LABELS ID_TURNO
1 'Matutino'
2 'Vespertino'
3 'Noturno'.
VARIABLE LABELS ID_SERIE 'S�rie'.
VALUE LABELS ID_SERIE
9 '9� Ano do Ensino Fundamental'.
VARIABLE LABELS ID_ALUNO 'C�digo do aluno no Saeb'.
VARIABLE LABELS IN_SITUACAO_CENSO 'Indicador de consist�ncia com o Censo Escolar 2019'. 
VALUE LABELS IN_SITUACAO_CENSO
0 'N�o consistente'
1 'Consistente'.
VARIABLE LABELS IN_PREENCHIMENTO_LP 'Indicador de preenchimento da prova de L�ngua Portuguesa'.
VALUE LABELS IN_PREENCHIMENTO_LP
0 'Prova n�o preenchida'
1 'Prova preenchida'.
VARIABLE LABELS IN_PREENCHIMENTO_MT 'Indicador de preenchimento da prova de Matem�tica'.
VALUE LABELS IN_PREENCHIMENTO_MT
0 'Prova n�o preenchida'
1 'Prova preenchida'.
VARIABLE LABELS IN_PREENCHIMENTO_CH 'Indicador de preenchimento da prova de Ci�ncias Humanas'.
VALUE LABELS IN_PREENCHIMENTO_CH
0 'Prova n�o preenchida'
1 'Prova preenchida'.
VARIABLE LABELS IN_PREENCHIMENTO_CN 'Indicador de preenchimento da prova de Ci�ncias da Natureza'.
VALUE LABELS IN_PREENCHIMENTO_CN
0 'Prova n�o preenchida'
1 'Prova preenchida'.
VARIABLE LABELS IN_PRESENCA_LP 'Indicador de presen�a na prova de L�ngua Portuguesa'.
VALUE LABELS IN_PRESENCA_LP
0 'Ausente'
1 'Presente'.
VARIABLE LABELS IN_PRESENCA_MT 'Indicador de presen�a na prova de Matem�tica'.
VALUE LABELS IN_PRESENCA_MT
0 'Ausente'
1 'Presente'.
VARIABLE LABELS IN_PRESENCA_CH 'Indicador de presen�a na prova de Ci�ncias Humanas'.
VALUE LABELS IN_PRESENCA_CH
0 'Ausente'
1 'Presente'.
VARIABLE LABELS IN_PRESENCA_CN 'Indicador de presen�a na prova de Ci�ncias da Natureza'.
VALUE LABELS IN_PRESENCA_CN
0 'Ausente'
1 'Presente'.
VARIABLE LABELS ID_CADERNO_LP 'N�mero do caderno de prova de L�ngua Portuguesa'.
VARIABLE LABELS ID_BLOCO_1_LP 'Identificador do Bloco 1 de L�ngua Portuguesa'.
VARIABLE LABELS ID_BLOCO_2_LP 'Identificador do Bloco 2 de L�ngua Portuguesa'.
VARIABLE LABELS ID_CADERNO_MT 'N�mero do caderno de prova de Matem�tica'.
VARIABLE LABELS ID_BLOCO_1_MT 'Identificador do Bloco 1 de Matem�tica'.
VARIABLE LABELS ID_BLOCO_2_MT 'Identificador do Bloco 2 de Matem�tica'.
VARIABLE LABELS ID_CADERNO_CH 'N�mero do caderno de prova de Ci�ncias Humanas'.
VARIABLE LABELS ID_BLOCO_1_CH 'Identificador do Bloco 1 de Ci�ncias Humanas'.
VARIABLE LABELS ID_BLOCO_2_CH 'Identificador do Bloco 2 de Ci�ncias Humanas'.
VARIABLE LABELS ID_BLOCO_3_CH 'Identificador do Bloco 2 de Ci�ncias Humanas'.
VARIABLE LABELS NU_BLOCO_1_ABERTA_CH 'Identificador do Bloco 1 de resposta constru�da em Ci�ncias Humanas'.
VARIABLE LABELS NU_BLOCO_2_ABERTA_CH 'Identificador do Bloco 2 de resposta constru�da em Ci�ncias Humanas'.
VARIABLE LABELS ID_CADERNO_CN 'N�mero do caderno de prova de Ci�ncias da Natureza'.
VARIABLE LABELS ID_BLOCO_1_CN 'Identificador do Bloco 1 de Ci�ncias da Natureza'.
VARIABLE LABELS ID_BLOCO_2_CN 'Identificador do Bloco 2 de Ci�ncias da Natureza'.
VARIABLE LABELS ID_BLOCO_3_CN 'Identificador do Bloco 2 de Ci�ncias da Natureza'.
VARIABLE LABELS NU_BLOCO_1_ABERTA_CN 'Identificador do Bloco 1 de resposta constru�da em Ci�ncias da Natureza'.
VARIABLE LABELS NU_BLOCO_2_ABERTA_CN 'Identificador do Bloco 2 de resposta constru�da em Ci�ncias da Natureza'.
VARIABLE LABELS TX_RESP_BLOCO_1_LP 'Resposta do aluno ao Bloco 1 da prova de L�ngua Portuguesa'.
VARIABLE LABELS TX_RESP_BLOCO_2_LP 'Resposta do aluno ao Bloco 2 da prova de L�ngua Portuguesa'.
VARIABLE LABELS TX_RESP_BLOCO_1_MT 'Resposta do aluno ao Bloco 1 da prova de Matem�tica'.
VARIABLE LABELS TX_RESP_BLOCO_2_MT 'Resposta do aluno ao Bloco 2 da prova de Matem�tica'.
VARIABLE LABELS TX_RESP_BLOCO_1_CH 'Resposta do aluno ao Bloco 1 da prova de Ci�ncias Humanas'.
VARIABLE LABELS TX_RESP_BLOCO_2_CH 'Resposta do aluno ao Bloco 2 da prova de Ci�ncias Humanas'.
VARIABLE LABELS TX_RESP_BLOCO_3_CH 'Resposta do aluno ao Bloco 3 da prova de Ci�ncias Humanas'.
VARIABLE LABELS CO_CONCEITO_Q1_CH 'Conceito obtido na quest�o 1 de resposta constru�da em Ci�ncias Humanas'.
VALUE LABELS CO_CONCEITO_Q1_CH
'0' 'Nenhum cr�dito'
'1' 'Cr�dito parcial'
'2' 'Cr�dito total'
'7' 'Erros de impress�o ou digitaliza��o'
'.' 'Branco'.
VARIABLE LABELS CO_CONCEITO_Q2_CH 'Conceito obtido na quest�o 2 de resposta constru�da em Ci�ncias Humanas'.
VALUE LABELS CO_CONCEITO_Q2_CH
'0' 'Nenhum cr�dito'
'1' 'Cr�dito parcial'
'2' 'Cr�dito total'
'7' 'Erros de impress�o ou digitaliza��o'
'.' 'Branco'.
VARIABLE LABELS TX_RESP_BLOCO_1_CN 'Resposta do aluno ao Bloco 1 da prova de Ci�ncias da Natureza'.
VARIABLE LABELS TX_RESP_BLOCO_2_CN 'Resposta do aluno ao Bloco 2 da prova de Ci�ncias da Natureza'.
VARIABLE LABELS TX_RESP_BLOCO_3_CN 'Resposta do aluno ao Bloco 3 da prova de Ci�ncias da Natureza'.
VARIABLE LABELS CO_CONCEITO_Q1_CN 'Conceito obtido na quest�o 1 de resposta constru�da em Ci�ncias da Natureza'.
VALUE LABELS CO_CONCEITO_Q1_CN
'0' 'Nenhum cr�dito'
'1' 'Cr�dito parcial'
'2' 'Cr�dito total'
'7' 'Erros de impress�o ou digitaliza��o'
'.' 'Branco'.
VARIABLE LABELS CO_CONCEITO_Q2_CN 'Conceito obtido na quest�o 2 de resposta constru�da em Ci�ncias da Natureza'.
VALUE LABELS CO_CONCEITO_Q2_CN
'0' 'Nenhum cr�dito'
'1' 'Cr�dito parcial'
'2' 'Cr�dito total'
'7' 'Erros de impress�o ou digitaliza��o'
'.' 'Branco'.
VARIABLE LABELS IN_PROFICIENCIA_LP 'Indicador para c�lculo da profici�ncia (no m�nimo tr�s itens respondidos nas provas de L�ngua Portuguesa e Matem�tica)'.
VALUE LABELS IN_PROFICIENCIA_LP
0 'N�o'
1 'Sim'.
VARIABLE LABELS IN_PROFICIENCIA_MT 'Indicador para c�lculo da profici�ncia (no m�nimo tr�s itens respondidos nas provas de L�ngua Portuguesa e Matem�tica)'.
VALUE LABELS IN_PROFICIENCIA_MT
0 'N�o'
1 'Sim'.
VARIABLE LABELS IN_PROFICIENCIA_CH 'Indicador para c�lculo da profici�ncia (no m�nimo tr�s itens respondidos na prova de Ci�ncias Humanas)'.
VALUE LABELS IN_PROFICIENCIA_CH
0 'N�o'
1 'Sim'.
VARIABLE LABELS IN_PROFICIENCIA_CN 'Indicador para c�lculo da profici�ncia (no m�nimo tr�s itens respondidos na prova de Ci�ncias da Natureza)'.
VALUE LABELS IN_PROFICIENCIA_CN
0 'N�o'
1 'Sim'.
VARIABLE LABELS IN_AMOSTRA 'Indicador de participa��o na amostra do Saeb'.
VALUE LABELS IN_AMOSTRA
0 'N�o'
1 'Sim'.
VARIABLE LABELS ESTRATO 'Descri��o dos estratos do Saeb'.
VARIABLE LABELS ESTRATO_CIENCIAS 'Descri��o dos estratos para amostra de Ci�ncias Humanas e Ci�ncias da Natureza'.
VARIABLE LABELS PESO_ALUNO_LP 'Peso do aluno em L�ngua Portuguesa'.
VARIABLE LABELS PROFICIENCIA_LP 'Profici�ncia do aluno em L�ngua Portuguesa calculada na escala �nica do SAEB, com m�dia = 0 e desvio = 1 na popula��o de refer�ncia'.
VARIABLE LABELS ERRO_PADRAO_LP 'Erro padr�o da profici�ncia em L�ngua Portuguesa'.
VARIABLE LABELS PROFICIENCIA_LP_SAEB 'Profici�ncia em L�ngua Portuguesa transformada na escala �nica do SAEB, com m�dia = 250, desvio = 50 (do SAEB/97)'.
VARIABLE LABELS ERRO_PADRAO_LP_SAEB 'Erro padr�o da profici�ncia transformada em L�ngua Portuguesa'.
VARIABLE LABELS PESO_ALUNO_MT 'Peso do aluno em Matem�tica'.
VARIABLE LABELS PROFICIENCIA_MT 'Profici�ncia do aluno em Matem�tica calculada na escala �nica do SAEB, com m�dia = 0 e desvio = 1 na popula��o de refer�ncia'.
VARIABLE LABELS ERRO_PADRAO_MT 'Erro padr�o da profici�ncia em Matem�tica'.
VARIABLE LABELS PROFICIENCIA_MT_SAEB 'Profici�ncia do aluno em Matem�tica transformada na escala �nica do SAEB, com m�dia = 250, desvio = 50 (do SAEB/97)'.
VARIABLE LABELS ERRO_PADRAO_MT_SAEB 'Erro padr�o da profici�ncia transformada em Matem�tica'.
VARIABLE LABELS PESO_ALUNO_CH 'Peso do aluno em Ci�ncias Humanas'.
VARIABLE LABELS PROFICIENCIA_CH 'Profici�ncia do aluno em Ci�ncias Humanas calculada na escala �nica do SAEB, com m�dia = 0 e desvio = 1 na popula��o de refer�ncia'.
VARIABLE LABELS ERRO_PADRAO_CH 'Erro padr�o da profici�ncia em Ci�ncias Humanas'.
VARIABLE LABELS PROFICIENCIA_CH_SAEB 'Profici�ncia do aluno em Ci�ncias Humanas transformada na escala �nica do SAEB, com m�dia = 250, desvio = 50 (do SAEB/19)'.
VARIABLE LABELS ERRO_PADRAO_CH_SAEB 'Erro padr�o da profici�ncia transformada em Ci�ncias Humanas'.
VARIABLE LABELS PESO_ALUNO_CN 'Peso do aluno em Ci�ncias da Natureza'.
VARIABLE LABELS PROFICIENCIA_CN 'Profici�ncia do aluno em Ci�ncias da Natureza calculada na escala �nica do SAEB, com m�dia = 0 e desvio = 1 na popula��o de refer�ncia'.
VARIABLE LABELS ERRO_PADRAO_CN 'Erro padr�o da profici�ncia em Ci�ncias da Natureza'.
VARIABLE LABELS PROFICIENCIA_CN_SAEB 'Profici�ncia do aluno em Ci�ncias da Natureza transformada na escala �nica do SAEB, com m�dia = 250, desvio = 50 (do SAEB/19)'.
VARIABLE LABELS ERRO_PADRAO_CN_SAEB 'Erro padr�o da profici�ncia transformada em Ci�ncias da Natureza'.
VARIABLE LABELS IN_PREENCHIMENTO_QUESTIONARIO 'Indicador de preenchimento do question�rio'.
VALUE LABELS IN_PREENCHIMENTO_QUESTIONARIO
0 'N�o preenchido'
1 'Preenchido parcial ou totalmente'.

VARIABLE LABELS TX_RESP_Q001 'Qual l�ngua voc� fala com mais frequ�ncia em sua casa?'.
VALUE LABELS TX_RESP_Q001
'A' 'Portugu�s.' 
'B' 'Espanhol.'
'C' 'Outra lingua.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'.

VARIABLE LABELS TX_RESP_Q002 'Qual � a sua cor ou ra�a?'.
VALUE LABELS TX_RESP_Q002
'A' 'Branca.' 
'B' 'Preta.' 
'C' 'Parda.' 
'D' 'Amarela.' 
'E' 'Ind�gena.' 
'F' 'N�o quero declarar.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'.

VARIABLE LABELS TX_RESP_Q003a 'Normalmente, quem mora na sua casa? - M�e (m�es ou madrasta).'.
VALUE LABELS TX_RESP_Q003a
'A' 'N�o.' 
'B' 'Sim.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'.
 
VARIABLE LABELS TX_RESP_Q003b 'Normalmente, quem mora na sua casa? - Pai (pais ou padrasto).'.
VALUE LABELS TX_RESP_Q003b
'A' 'N�o.' 
'B' 'Sim.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q003c 'Normalmente, quem mora na sua casa? - Irm�o(s) ou irm�(s).'.
VALUE LABELS TX_RESP_Q003c
'A' 'N�o.' 
'B' 'Sim.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'.
 
VARIABLE LABELS TX_RESP_Q003d 'Normalmente, quem mora na sua casa? - Av� ou av�.'.
VALUE LABELS TX_RESP_Q003d
'A' 'N�o.' 
'B' 'Sim.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'.
 
VARIABLE LABELS TX_RESP_Q003e 'Normalmente, quem mora na sua casa? - Outros (tios, primos etc.).'.
VALUE LABELS TX_RESP_Q003e
'A' 'N�o.' 
'B' 'Sim.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q004 'Qual � a maior escolaridade da sua m�e (ou mulher respons�vel por voc�)?'.
VALUE LABELS TX_RESP_Q004
'A' 'N�o completou o 5� ano do Ensino Fundamental.' 
'B' 'Ensino Fundamental, at� o 5� ano.' 
'C' 'Ensino Fundamental completo.' 
'D' 'Ensino M�dio completo.' 
'E' 'Ensino Superior completo (faculdade ou gradua��o).' 
'F' 'N�o sei.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'.
 
VARIABLE LABELS TX_RESP_Q005 'Qual � a maior escolaridade de seu pai (ou homem respons�vel por voc�)?'.
VALUE LABELS TX_RESP_Q005
'A' 'N�o completou o 5� ano do Ensino Fundamental.' 
'B' 'Ensino Fundamental, at� o 5� ano.' 
'C' 'Ensino Fundamental completo.' 
'D' 'Ensino M�dio completo.' 
'E' 'Ensino Superior completo (faculdade ou gradua��o).' 
'F' 'N�o sei.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q006a 'Com que frequ�ncia seus pais ou respons�veis costumam: - Conversar com voc� sobre o que acontece na escola.'.
VALUE LABELS TX_RESP_Q006a
'A' 'Nunca ou quase nunca.' 
'B' 'De vez em quando.' 
'C' 'Sempre ou quase sempre.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 
 
VARIABLE LABELS TX_RESP_Q006b 'Com que frequ�ncia seus pais ou respons�veis costumam: - Incentivar voc� a estudar.'.
VALUE LABELS TX_RESP_Q006b
'A' 'Nunca ou quase nunca.' 
'B' 'De vez em quando.' 
'C' 'Sempre ou quase sempre.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 
 
VARIABLE LABELS TX_RESP_Q006c 'Com que frequ�ncia seus pais ou respons�veis costumam: - Incentivar voc� a fazer a tarefa de casa.'.
VALUE LABELS TX_RESP_Q006c
'A' 'Nunca ou quase nunca.' 
'B' 'De vez em quando.' 
'C' 'Sempre ou quase sempre.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q006d 'Com que frequ�ncia seus pais ou respons�veis costumam: - Incentivar voc� a comparecer �s aulas.'.
VALUE LABELS TX_RESP_Q006d
'A' 'Nunca ou quase nunca.' 
'B' 'De vez em quando.' 
'C' 'Sempre ou quase sempre.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'.
 
VARIABLE LABELS TX_RESP_Q006e 'Com que frequ�ncia seus pais ou respons�veis costumam: - Ir �s reuni�es de pais na escola.'.
VALUE LABELS TX_RESP_Q006e
'A' 'Nunca ou quase nunca.' 
'B' 'De vez em quando.' 
'C' 'Sempre ou quase sempre.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q007 'Com que frequ�ncia sua fam�lia paga algu�m para auxiliar nos trabalhos dom�sticos (faxina ou limpeza)?'.
VALUE LABELS TX_RESP_Q007
'A' 'Nunca ou quase nunca.' 
'B' 'De vez em quando (uma vez por semana, a cada quinze dias etc.).' 
'C' 'Sempre ou quase sempre (ex.: tr�s ou mais dias por semana).'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q008a 'Na regi�o que voc� mora tem: - Rua pavimentada (asfalto ou cal�amento).'.
VALUE LABELS TX_RESP_Q008a
'A' 'N�o.' 
'B' 'Sim.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q008b 'Na regi�o que voc� mora tem: - �gua tratada da rua.'.
VALUE LABELS TX_RESP_Q008b
'A' 'N�o.' 
'B' 'Sim.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q008c 'Na regi�o que voc� mora tem: - Ilumina��o na rua.'.
VALUE LABELS TX_RESP_Q008c
'A' 'N�o.' 
'B' 'Sim.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q009a 'Dos itens relacionados abaixo, quantos existem na sua casa? - Geladeira.'.
VALUE LABELS TX_RESP_Q009a
'A' 'Nenhum.' 
'B' '1.' 
'C' '2.' 
'D' '3 ou mais.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q009b 'Dos itens relacionados abaixo, quantos existem na sua casa? - Tablet.'.
VALUE LABELS TX_RESP_Q009b
'A' 'Nenhum.' 
'B' '1.' 
'C' '2.' 
'D' '3 ou mais.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q009c 'Dos itens relacionados abaixo, quantos existem na sua casa? - Computador (ou notebook).'.
VALUE LABELS TX_RESP_Q009c
'A' 'Nenhum.' 
'B' '1.' 
'C' '2.' 
'D' '3 ou mais.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q009d 'Dos itens relacionados abaixo, quantos existem na sua casa? - Quartos para dormir.'.
VALUE LABELS TX_RESP_Q009d
'A' 'Nenhum.' 
'B' '1.' 
'C' '2.' 
'D' '3 ou mais.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q009e 'Dos itens relacionados abaixo, quantos existem na sua casa? - Televis�o.'.
VALUE LABELS TX_RESP_Q009e
'A' 'Nenhum.' 
'B' '1.' 
'C' '2.' 
'D' '3 ou mais.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q009f 'Dos itens relacionados abaixo, quantos existem na sua casa? - Banheiro.'.
VALUE LABELS TX_RESP_Q009f
'A' 'Nenhum.' 
'B' '1.' 
'C' '2.' 
'D' '3 ou mais.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q009g 'Dos itens relacionados abaixo, quantos existem na sua casa? - Carro.'.
VALUE LABELS TX_RESP_Q009g
'A' 'Nenhum.' 
'B' '1.' 
'C' '2.' 
'D' '3 ou mais.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q010a 'Na sua casa tem: - Tv a cabo (Ex.:Net�, Sky� etc.).'.
VALUE LABELS TX_RESP_Q010a
'A' 'N�o.' 
'B' 'Sim.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q010b 'Na sua casa tem: - Rede Wi-Fi.'.
VALUE LABELS TX_RESP_Q010b
'A' 'N�o.' 
'B' 'Sim.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q010c 'Na sua casa tem: - Um quarto s� seu.'.
VALUE LABELS TX_RESP_Q010c
'A' 'N�o.' 
'B' 'Sim.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q010d 'Na sua casa tem: - Mesa para estudar (ou escrivaninha).'.
VALUE LABELS TX_RESP_Q010d
'A' 'N�o.' 
'B' 'Sim.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q010e 'Na sua casa tem: - Garagem.'.
VALUE LABELS TX_RESP_Q010e
'A' 'N�o.' 
'B' 'Sim.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q010f 'Na sua casa tem: - Forno de microondas.'.
VALUE LABELS TX_RESP_Q010f
'A' 'N�o.' 
'B' 'Sim.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q010g 'Na sua casa tem: - Aspirador de p�.'.
VALUE LABELS TX_RESP_Q010g
'A' 'N�o.' 
'B' 'Sim.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q010h 'Na sua casa tem: - M�quina de lavar roupa.'.
VALUE LABELS TX_RESP_Q010h
'A' 'N�o.' 
'B' 'Sim.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q010i 'Na sua casa tem: - Freezer (independente ou segunda porta da geladeira).'.
VALUE LABELS TX_RESP_Q010i
'A' 'N�o.' 
'B' 'Sim.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q011 'Quanto tempo voc� demora para chegar � sua escola?'.
VALUE LABELS TX_RESP_Q011
'A' 'Menos de 30 minutos.' 
'B' 'Entre 30 minutos e uma hora.' 
'C' 'Mais de uma hora.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q012 'Considerando a maior dist�ncia percorrida, normalmente de que forma voc� chega � sua escola?'.
VALUE LABELS TX_RESP_Q012
'A' '� p�.' 
'B' 'De �nibus urbano.' 
'C' 'De transporte escolar.' 
'D' 'De barco.' 
'E' 'De bicicleta.'
'F' 'De carro.' 
'G' 'Outros meios de transporte.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'.

VARIABLE LABELS TX_RESP_Q013 'Com que idade voc� entrou na escola?'.
VALUE LABELS TX_RESP_Q013
'A' '3 anos ou menos.' 
'B' '4 ou 5 anos.' 
'C' '6 ou 7 anos.' 
'D' '8 anos ou mais.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q014 'A partir do primeiro ano do ensino fundamental, em que tipo de escola voc� estudou?'.
VALUE LABELS TX_RESP_Q014
'A' 'Somente em escola p�blica.' 
'B' 'Somente em escola particular.' 
'C' 'Em escola p�blica e em escola particular.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'.

VARIABLE LABELS TX_RESP_Q015 'Voc� j� foi reprovado?'.
VALUE LABELS TX_RESP_Q015
'A' 'Nunca.' 
'B' 'Sim, uma vez.' 
'C' 'Sim, duas vezes ou mais.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'.

VARIABLE LABELS TX_RESP_Q016 'Alguma vez voc� abandonou a escola deixando de frequent�-la at� o final do ano escolar?'.
VALUE LABELS TX_RESP_Q016
'A' 'Nunca.' 
'B' 'Sim, uma vez.' 
'C' 'Sim, duas vezes ou mais.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'.

VARIABLE LABELS TX_RESP_Q017a 'Fora da escola em dias de aula, quanto tempo voc� usa para: - Lazer (TV, internet, jogar bola, m�sica etc.).'.
VALUE LABELS TX_RESP_Q017a
'A' 'N�o uso meu tempo para isso.' 
'B' 'Menos de 1 hora.' 
'C' 'Entre 1 e 2 horas.' 
'D' 'Mais de 2 horas.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'. 

VARIABLE LABELS TX_RESP_Q017b 'Fora da escola em dias de aula, quanto tempo voc� usa para: - Fazer cursos.'.
VALUE LABELS TX_RESP_Q017b
'A' 'N�o uso meu tempo para isso.' 
'B' 'Menos de 1 hora.' 
'C' 'Entre 1 e 2 horas.' 
'D' 'Mais de 2 horas.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'.

VARIABLE LABELS TX_RESP_Q017c 'Fora da escola em dias de aula, quanto tempo voc� usa para: - Fazer trabalhos dom�sticos (lavar lou�a, limpar quintal, cuidar dos irm�os).'.
VALUE LABELS TX_RESP_Q017c
'A' 'N�o uso meu tempo para isso.' 
'B' 'Menos de 1 hora.' 
'C' 'Entre 1 e 2 horas.' 
'D' 'Mais de 2 horas.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'.

VARIABLE LABELS TX_RESP_Q017d 'Fora da escola em dias de aula, quanto tempo voc� usa para: - Estudar (li��o de casa, trabalhos escolares, etc.).'.
VALUE LABELS TX_RESP_Q017d
'A' 'N�o uso meu tempo para isso.' 
'B' 'Menos de 1 hora.' 
'C' 'Entre 1 e 2 horas.' 
'D' 'Mais de 2 horas.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'.

VARIABLE LABELS TX_RESP_Q017e 'Fora da escola em dias de aula, quanto tempo voc� usa para: - Trabalhar fora de casa (recebendo ou n�o um sal�rio).'.
VALUE LABELS TX_RESP_Q017e
'A' 'N�o uso meu tempo para isso.' 
'B' 'Menos de 1 hora.' 
'C' 'Entre 1 e 2 horas.' 
'D' 'Mais de 2 horas.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'.

VARIABLE LABELS TX_RESP_Q018a 'Com que frequ�ncia voc� costuma: - Ler not�cias (jornais, revistas, internet etc.).'.
VALUE LABELS TX_RESP_Q018a
'A' 'Nunca ou quase nunca.' 
'B' 'De vez em quando.' 
'C' 'Sempre ou quase sempre.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'.

VARIABLE LABELS TX_RESP_Q018b 'Com que frequ�ncia voc� costuma: - Ler livros que n�o sejam das mat�rias escolares.'.
VALUE LABELS TX_RESP_Q018b
'A' 'Nunca ou quase nunca.' 
'B' 'De vez em quando.' 
'C' 'Sempre ou quase sempre.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'.

VARIABLE LABELS TX_RESP_Q018c 'Com que frequ�ncia voc� costuma: - Ler hist�rias em quadrinhos (mang�s, gibis etc.).'.
VALUE LABELS TX_RESP_Q018c
'A' 'Nunca ou quase nunca.' 
'B' 'De vez em quando.' 
'C' 'Sempre ou quase sempre.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'.

VARIABLE LABELS TX_RESP_Q019 'Quando terminar o Ensino Fundamental voc� pretende:'.
VALUE LABELS TX_RESP_Q019
'A' 'Somente continuar estudando.' 
'B' 'Somente trabalhar.' 
'C' 'Continuar estudando e trabalhar.'
'D' 'Ainda n�o sei.'
'*' 'Dupla marca��o.'
'.' 'Em branco.'.