/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Instrumentos e medidas 		                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_PROFESSOR.sps                                                           */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DO QUESTION�RIO DO PROFESSOR */
/*                     DO SAEB 2019                                                                               */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* TS_PROFESSOR.CSV no diret�rio C:\ do computador.	                        	 */
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
  /FILE="C:\TS_PROFESSOR.csv"
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
  CO_PROFESSOR F10.0
  ID_SERIE F2.0
  IN_PREENCHIMENTO_QUESTIONARIO F1.0
  TX_RESP_Q001 A8
  TX_RESP_Q002 A8
  TX_RESP_Q003 A8
  TX_RESP_Q004 A8
  TX_RESP_Q005 A8
  TX_RESP_Q006 A8
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
  TX_RESP_Q074 A8
  TX_RESP_Q075 A8
  TX_RESP_Q076 A8
  TX_RESP_Q077 A8
  TX_RESP_Q078 A8
  TX_RESP_Q079 A8
  TX_RESP_Q080 A8
  TX_RESP_Q081 A8
  TX_RESP_Q082 A8
  TX_RESP_Q083 A8
  TX_RESP_Q084 A8
  TX_RESP_Q085 A8
  TX_RESP_Q086 A8
  TX_RESP_Q087 A8
  TX_RESP_Q088 A8
  TX_RESP_Q089 A8
  TX_RESP_Q090 A8
  TX_RESP_Q091 A8
  TX_RESP_Q092 A8
  TX_RESP_Q093 A8
  TX_RESP_Q094 A8
  TX_RESP_Q095 A8
  TX_RESP_Q096 A8
  TX_RESP_Q097 A8
  TX_RESP_Q098 A8
  TX_RESP_Q099 A8
  TX_RESP_Q100 A8
  TX_RESP_Q101 A8
  TX_RESP_Q102 A8
  TX_RESP_Q103 A8
  TX_RESP_Q104 A8
  TX_RESP_Q105 A8
  TX_RESP_Q106 A8
  TX_RESP_Q107 A8
  TX_RESP_Q108 A8
  TX_RESP_Q109 A8
  TX_RESP_Q110 A8
  TX_RESP_Q111 A8
  TX_RESP_Q112 A8
  TX_RESP_Q113 A8
  TX_RESP_Q114 A8
  TX_RESP_Q115 A8
  TX_RESP_Q116 A8
  TX_RESP_Q117 A8
  TX_RESP_Q118 A8
  TX_RESP_Q119 A8
  TX_RESP_Q120 A8
  TX_RESP_Q121 A8
  TX_RESP_Q122 A8
  TX_RESP_Q123 A8
  TX_RESP_Q124 A8
  TX_RESP_Q125 A8
  TX_RESP_Q126 A8
  TX_RESP_Q127 A8
  TX_RESP_Q128 A8.
CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.

VARIABLE LABELS ID_SAEB 'Ano de aplica��o do Saeb'.
VARIABLE LABELS ID_REGIAO 'C�digo da Regi�o'.
VALUE LABELS ID_REGIAO
1 'Norte'
2 'Nordeste'
3 'Sudeste'
4 'Sul'
5 'Cento-Oeste'.
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
VARIABLE LABELS CO_PROFESSOR 'C�digo do professor no Saeb'.
VARIABLE LABELS ID_SERIE 'S�rie'.
VALUE LABELS ID_SERIE
2  '2� ano EF'
5  '5� ano EF'
9  '9� ano EF'
12 '3�/4� s�ries do Ensino M�dio Tradicional'
13 '3�/4� s�ries do Ensino M�dio Integrado'.
VARIABLE LABELS IN_PREENCHIMENTO_QUESTIONARIO 'Indicador de preenchimento do question�rio'.
VALUE LABELS IN_PREENCHIMENTO_QUESTIONARIO
0 'N�o preenchido'
1 'Preenchido parcial ou totalmente'.
VARIABLE LABELS TX_RESP_Q001 'Qual � a sua cor ou ra�a?'. 
VALUE LABELS TX_RESP_Q001
'A' 'Branca.'
'B' 'Preta.'
'C'  'Parda.'
'D' 'Amarela.'
'E' 'Ind�gena.'
'F'  'N�o quero declarar.'.
VARIABLE LABELS TX_RESP_Q002 'H� quantos anos voc� trabalha como professor (a)?'. 
VALUE LABELS TX_RESP_Q002
'A' 'Meu primeiro ano.'
'B' '1-2 anos.'
'C' '3-5 anos.'
'D' '6-10 anos.'
'E' '11-15 anos.'
'F' '16-20 anos.'
'G' 'Mais de 20 anos.'.
VARIABLE LABELS TX_RESP_Q003 'H� quantos anos voc� trabalha como professor(a) nesta escola?'. 
VALUE LABELS TX_RESP_Q003
'A' 'Meu primeiro ano.'
'B' '1-2 anos.'
'C' '3-5 anos.'
'D' '6-10 anos.'
'E' '11-15 anos.'
'F' '16-20 anos.'
'G' 'Mais de 20 anos.'.
VARIABLE LABELS TX_RESP_Q004 'Em quantas escolas voc� trabalha?'. 
VALUE LABELS TX_RESP_Q004
'A' 'Apenas nesta.'
'B' 'Em 2.'
'C' 'Em 3.'
'D' 'Em 4 ou mais.'.
VARIABLE LABELS TX_RESP_Q005 'Qual o seu tipo de v�nculo trabalhista nesta escola?'. 
VALUE LABELS TX_RESP_Q005
'A' 'Concursado/efetivo/est�vel.'
'B' 'Contrato tempor�rio.'
'C' 'Contrato terceirizado.'
'D' 'Contrato CLT.'
'E' 'Pessoa jur�dica.'
'F' 'Outra situa��o trabalhista.'.
VARIABLE LABELS TX_RESP_Q006 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCA��O B�SICA: - Tornar-me professor(a) foi a realiza��o de um dos meus sonhos'. 
VALUE LABELS TX_RESP_Q006
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q007 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCA��O B�SICA: - A profiss�o de professor(a) � valorizada pela sociedade'. 
VALUE LABELS TX_RESP_Q007
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q008 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCA��O B�SICA: - As vantagens de ser professor(a) superam claramente as desvantagens'. 
VALUE LABELS TX_RESP_Q008
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q009 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCA��O B�SICA: - No geral, estou satisfeito com o meu trabalho de professor(a)'. 
VALUE LABELS TX_RESP_Q009
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q010 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCA��O B�SICA: - Repetir de ano � bom para o aluno que n�o apresentou desempenho satisfat�rio'. 
VALUE LABELS TX_RESP_Q010
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q011 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ...: - A quantidade de avalia��es externas (municipais, estaduais ou federais) � excessiva (Cf. Dic.)'. 
VALUE LABELS TX_RESP_Q011
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q012 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS...: - As avalia��es externas (municipais, estaduais ou federais) t�m direcionado o que deve ser ensinado na escola (Cf. Dic.)'. 
VALUE LABELS TX_RESP_Q012
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q013 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS...: - As avalia��es externas t�m ajudado a melhorar o processo de ensino e aprendizagem desta escola (Cf. Dic.)'. 
VALUE LABELS TX_RESP_Q013
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q014 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO O SEU TRABALHO COMO PROFESSOR(A) DA EDUCA��O B�SICA: - Os estudantes apresentam problemas de aprendizagem'. 
VALUE LABELS TX_RESP_Q014
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q015 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Leio not�cias por meio de jornais, revistas, internet etc'. 
VALUE LABELS TX_RESP_Q015
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Muitas vezes'
'D' 'Sempre'.
VARIABLE LABELS TX_RESP_Q016 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Leio livros n�o relacionados � Educa��o'. 
VALUE LABELS TX_RESP_Q016
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Muitas vezes'
'D' 'Sempre'.
VARIABLE LABELS TX_RESP_Q017 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Acesso blogs, Youtube, redes sociais (Twitter, Instagram, Facebook etc.)'. 
VALUE LABELS TX_RESP_Q017
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Muitas vezes'
'D' 'Sempre'.
VARIABLE LABELS TX_RESP_Q018 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Assisto a filmes'.
VALUE LABELS TX_RESP_Q018
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Muitas vezes'
'D' 'Sempre'.
VARIABLE LABELS TX_RESP_Q019 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Vou a exposi��es (museus, centros culturais)'. 
VALUE LABELS TX_RESP_Q019
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Muitas vezes'
'D' 'Sempre'.
VARIABLE LABELS TX_RESP_Q020 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Participo de festas da comunidade (igreja, bairro etc.)'. 
VALUE LABELS TX_RESP_Q020
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Muitas vezes'
'D' 'Sempre'.
VARIABLE LABELS TX_RESP_Q021 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Estudo'. 
VALUE LABELS TX_RESP_Q021
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Muitas vezes'
'D' 'Sempre'.
VARIABLE LABELS TX_RESP_Q022 'NESTE ANO, O QUE NORMALMENTE VOC� TEM FEITO QUANDO EST� FORA DO(S) SEU(S) LOCAL(IS) DE TRABALHO? - Assisto a telejornal'. 
VALUE LABELS TX_RESP_Q022
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Muitas vezes'
'D' 'Sempre'.
VARIABLE LABELS TX_RESP_Q023 'AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Tamanho da sala com rela��o ao n�mero de alunos'. 
VALUE LABELS TX_RESP_Q023
'A' 'Inadequado'
'B' 'Pouco adequado'
'C' 'Razoavelmente adequado'
'D' 'Adequado'.
VARIABLE LABELS TX_RESP_Q024 'AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Ac�stica'. 
VALUE LABELS TX_RESP_Q024
'A' 'Inadequado'
'B' 'Pouco adequado'
'C' 'Razoavelmente adequado'
'D' 'Adequado'.
VARIABLE LABELS TX_RESP_Q025 'AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Ilumina��o natural'. 
VALUE LABELS TX_RESP_Q025
'A' 'Inadequado'
'B' 'Pouco adequado'
'C' 'Razoavelmente adequado'
'D' 'Adequado'.
VARIABLE LABELS TX_RESP_Q026 'AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Ventila��o natural'. 
VALUE LABELS TX_RESP_Q026
'A' 'Inadequado'
'B' 'Pouco adequado'
'C' 'Razoavelmente adequado'
'D' 'Adequado'.
VARIABLE LABELS TX_RESP_Q027 'AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Temperatura'. 
VALUE LABELS TX_RESP_Q027
'A' 'Inadequado'
'B' 'Pouco adequado'
'C' 'Razoavelmente adequado'
'D' 'Adequado'.
VARIABLE LABELS TX_RESP_Q028 'AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Limpeza'. 
VALUE LABELS TX_RESP_Q028
'A' 'Inadequado'
'B' 'Pouco adequado'
'C' 'Razoavelmente adequado'
'D' 'Adequado'.
VARIABLE LABELS TX_RESP_Q029 'AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Acessibilidade'. 
VALUE LABELS TX_RESP_Q029
'A' 'Inadequado'
'B' 'Pouco adequado'
'C' 'Razoavelmente adequado'
'D' 'Adequado'.
VARIABLE LABELS TX_RESP_Q030 'AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Mobili�rio (mesas e carteiras)'. 
VALUE LABELS TX_RESP_Q030
'A' 'Inadequado'
'B' 'Pouco adequado'
'C' 'Razoavelmente adequado'
'D' 'Adequado'.
VARIABLE LABELS TX_RESP_Q031 'AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Infraestrutura (paredes, teto, assoalho, portas)'. 
VALUE LABELS TX_RESP_Q031
'A' 'Inadequado'
'B' 'Pouco adequado'
'C' 'Razoavelmente adequado'
'D' 'Adequado'.
VARIABLE LABELS TX_RESP_Q032 'AVALIE AS CONDI��ES DA SALA DE AULA QUE VOC� UTILIZA NESTA ESCOLA COM RELA��O AOS SEGUINTES ELEMENTOS: - Lousa (quadro de giz ou quadro branco)'.
VALUE LABELS TX_RESP_Q032
'A' 'Inadequado'
'B' 'Pouco adequado'
'C' 'Razoavelmente adequado'
'D' 'Adequado'.
VARIABLE LABELS TX_RESP_Q033 'INDIQUE OS RECURSOS QUE VOC� NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUA��O PARA AS ATIVIDADES EM SALA DE AULA: - Livro did�tico'. 
VALUE LABELS TX_RESP_Q033
'A' 'N�O USO / N�o tem.'
'B' 'USO E � Inadequado.'
'C' 'USO E � Pouco adequado.'
'D' ' USO E � Razoavelmente adequado.'
'E' 'USO E � Adequado.'.
VARIABLE LABELS TX_RESP_Q034 'INDIQUE OS RECURSOS QUE VOC� NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUA��O PARA AS ATIVIDADES EM SALA DE AULA: - Projetor multim�dia (datashow)'. 
VALUE LABELS TX_RESP_Q034
'A' 'N�O USO / N�o tem.'
'B' 'USO E � Inadequado.'
'C' 'USO E � Pouco adequado.'
'D' ' USO E � Razoavelmente adequado.'
'E' 'USO E � Adequado.'.
VARIABLE LABELS TX_RESP_Q035 'INDIQUE OS RECURSOS QUE VOC� NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUA��O PARA AS ATIVIDADES EM SALA DE AULA: - Computador (de mesa, port�til, tablet)'. 
VALUE LABELS TX_RESP_Q035
'A' 'N�O USO / N�o tem.'
'B' 'USO E � Inadequado.'
'C' 'USO E � Pouco adequado.'
'D' ' USO E � Razoavelmente adequado.'
'E' 'USO E � Adequado.'.
VARIABLE LABELS TX_RESP_Q036 'INDIQUE OS RECURSOS QUE VOC� NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUA��O PARA AS ATIVIDADES EM SALA DE AULA: - Software'. 
VALUE LABELS TX_RESP_Q036
'A' 'N�O USO / N�o tem.'
'B' 'USO E � Inadequado.'
'C' 'USO E � Pouco adequado.'
'D' ' USO E � Razoavelmente adequado.'
'E' 'USO E � Adequado.'.
VARIABLE LABELS TX_RESP_Q037 'INDIQUE OS RECURSOS QUE VOC� NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUA��O PARA AS ATIVIDADES EM SALA DE AULA: - Internet'. 
VALUE LABELS TX_RESP_Q037
'A' 'N�O USO / N�o tem.'
'B' 'USO E � Inadequado.'
'C' 'USO E � Pouco adequado.'
'D' ' USO E � Razoavelmente adequado.'
'E' 'USO E � Adequado.'.
VARIABLE LABELS TX_RESP_Q038 'INDIQUE OS RECURSOS QUE VOC� NORMALMENTE USA NESTA ESCOLA E QUAL A SUA ADEQUA��O PARA AS ATIVIDADES EM SALA DE AULA: - Acervo multim�dia'. 
VALUE LABELS TX_RESP_Q038
'A' 'N�O USO / N�o tem.'
'B' 'USO E � Inadequado.'
'C' 'USO E � Pouco adequado.'
'D' ' USO E � Razoavelmente adequado.'
'E' 'USO E � Adequado.'.
VARIABLE LABELS TX_RESP_Q039 'Considerando TODAS as suas atividades profissionais remuneradas, quantas horas voc� trabalha em uma semana normal?'. 
VALUE LABELS TX_RESP_Q039
'A' 'At� 10 horas.'
'B' 'De 11 a 20 horas.'
'C' 'De 21 a 30 horas.'
'D' 'De 31 a 40 horas.'
'E' 'Mais de 40 horas.'.
VARIABLE LABELS TX_RESP_Q040 'Nesta escola, quantas horas voc� trabalha em uma semana normal (dando aulas, preparando murais, planejando aulas, corrigindo atividades, participando de reuni�es etc.)?'. 
VALUE LABELS TX_RESP_Q040
'A' 'At� 10 horas.'
'B' 'De 11 a 20 horas.'
'C' 'De 21 a 30 horas.'
'D' 'De 31 a 40 horas.'
'E' 'Mais de 40 horas.'.
VARIABLE LABELS TX_RESP_Q041 'Numa semana normal de trabalho, quantas horas voc� dedica exclusivamente a dar aulas aqui nesta escola?'. 
VALUE LABELS TX_RESP_Q041
'A' 'At� 10 horas.'
'B' 'De 11 a 20 horas.'
'C' 'De 21 a 30 horas.'
'D' 'De 31 a 40 horas.'
'E' 'Mais de 40 horas.'.
VARIABLE LABELS TX_RESP_Q042 'EM QUE MEDIDA VOC� SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Desenvolver o conte�do da(s) �rea(s) de ensino que leciono'. 
VALUE LABELS TX_RESP_Q042
'A' 'Nada preparado(a).'
'B' 'Pouco preparado(a).'
'C' 'Razoavelmente preparado(a).'
'D' 'Muito preparado(a).'.
VARIABLE LABELS TX_RESP_Q043 'EM QUE MEDIDA VOC� SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Aplicar diferentes metodologias de ensino'. 
VALUE LABELS TX_RESP_Q043
'A' 'Nada preparado(a).'
'B' 'Pouco preparado(a).'
'C' 'Razoavelmente preparado(a).'
'D' 'Muito preparado(a).'.
VARIABLE LABELS TX_RESP_Q044 'EM QUE MEDIDA VOC� SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Relacionar as outras �reas do curr�culo com aquela que leciono'. 
VALUE LABELS TX_RESP_Q044
'A' 'Nada preparado(a).'
'B' 'Pouco preparado(a).'
'C' 'Razoavelmente preparado(a).'
'D' 'Muito preparado(a).'.
VARIABLE LABELS TX_RESP_Q045 'EM QUE MEDIDA VOC� SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Desenvolver instrumentos de avalia��o de sala de aula'. 
VALUE LABELS TX_RESP_Q045
'A' 'Nada preparado(a).'
'B' 'Pouco preparado(a).'
'C' 'Razoavelmente preparado(a).'
'D' 'Muito preparado(a).'.
VARIABLE LABELS TX_RESP_Q046 'EM QUE MEDIDA VOC� SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Gest�o de sala de aula'. 
VALUE LABELS TX_RESP_Q046
'A' 'Nada preparado(a).'
'B' 'Pouco preparado(a).'
'C' 'Razoavelmente preparado(a).'
'D' 'Muito preparado(a).'.
VARIABLE LABELS TX_RESP_Q047 'EM QUE MEDIDA VOC� SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Ensinar para o p�blico-alvo da educa��o especial'. 
VALUE LABELS TX_RESP_Q047
'A' 'Nada preparado(a).'
'B' 'Pouco preparado(a).'
'C' 'Razoavelmente preparado(a).'
'D' 'Muito preparado(a).'.
VARIABLE LABELS TX_RESP_Q048 'EM QUE MEDIDA VOC� SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Usar novas tecnologias de informa��o e comunica��o na pr�tica pedag�gica'. 
VALUE LABELS TX_RESP_Q048
'A' 'Nada preparado(a).'
'B' 'Pouco preparado(a).'
'C' 'Razoavelmente preparado(a).'
'D' 'Muito preparado(a).'.
VARIABLE LABELS TX_RESP_Q049 'EM QUE MEDIDA VOC� SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Comunicar-me com as fam�lias de alunos(as)'. 
VALUE LABELS TX_RESP_Q049
'A' 'Nada preparado(a).'
'B' 'Pouco preparado(a).'
'C' 'Razoavelmente preparado(a).'
'D' 'Muito preparado(a).'.
VARIABLE LABELS TX_RESP_Q050 'EM QUE MEDIDA VOC� SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Utilizar conhecimentos sobre o desenvolvimento da aprendizagem'. 
VALUE LABELS TX_RESP_Q050
'A' 'Nada preparado(a).'
'B' 'Pouco preparado(a).'
'C' 'Razoavelmente preparado(a).'
'D' 'Muito preparado(a).'.
VARIABLE LABELS TX_RESP_Q051 'EM QUE MEDIDA VOC� SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Participar da gest�o da escola'. 
VALUE LABELS TX_RESP_Q051
'A' 'Nada preparado(a).'
'B' 'Pouco preparado(a).'
'C' 'Razoavelmente preparado(a).'
'D' 'Muito preparado(a).'.
VARIABLE LABELS TX_RESP_Q052 'EM QUE MEDIDA VOC� SE SENTE PREPARADO(A) PARA AS SEGUINTES ATIVIDADES: - Lidar com conflitos do cotidiano escolar'. 
VALUE LABELS TX_RESP_Q052
'A' 'Nada preparado(a).'
'B' 'Pouco preparado(a).'
'C' 'Razoavelmente preparado(a).'
'D' 'Muito preparado(a).'.
VARIABLE LABELS TX_RESP_Q053 'DENTRE AS ATIVIDADES FORMATIVAS LISTADAS ABAIXO, INDIQUE QUANTAS VOC� REALIZOU NESSE ANO: - Atividades formativas com menos de 20 horas'. 
VALUE LABELS TX_RESP_Q053
'A' 'Nenhuma.'
'B' 'Uma.'
'C' 'Duas.'
'D' 'Tr�s ou mais.'.
VARIABLE LABELS TX_RESP_Q054 'DENTRE AS ATIVIDADES FORMATIVAS LISTADAS ABAIXO, INDIQUE QUANTAS VOC� REALIZOU NESSE ANO: - Cursos de 20 a menos de 180 horas'. 
VALUE LABELS TX_RESP_Q054
'A' 'Nenhuma.'
'B' 'Uma.'
'C' 'Duas.'
'D' 'Tr�s ou mais.'.
VARIABLE LABELS TX_RESP_Q055 'DENTRE AS ATIVIDADES FORMATIVAS LISTADAS ABAIXO, INDIQUE QUANTAS VOC� REALIZOU NESSE ANO: - Cursos de aperfei�oamento de 180 a 360 horas'. 
VALUE LABELS TX_RESP_Q055
'A' 'Nenhuma.'
'B' 'Uma.'
'C' 'Duas.'
'D' 'Tr�s ou mais.'.
VARIABLE LABELS TX_RESP_Q056 'CONSIDERANDO AS ATIVIDADES FORMATIVAS DE CURTA DURA��O (INFERIORES A 360 HORAS) DAS QUAIS PARTICIPOU NESTE ANO, EM QUAIS DELAS ESTAVA PREVISTO: - Participa��o de colegas da(s) escola(s) em que leciono?'. 
VALUE LABELS TX_RESP_Q056
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Muitas vezes'
'D' 'Sempre'.
VARIABLE LABELS TX_RESP_Q057 'CONSIDERANDO AS ATIVIDADES FORMATIVAS DE CURTA DURA��O (INFERIORES A 360 HORAS) DAS QUAIS PARTICIPOU NESTE ANO, EM QUAIS DELAS ESTAVA PREVISTO: - Atividades colaborativas de aprendizado?'. 
VALUE LABELS TX_RESP_Q057
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Muitas vezes'
'D' 'Sempre'.
VARIABLE LABELS TX_RESP_Q058 'CONSIDERANDO AS ATIVIDADES FORMATIVAS DE CURTA DURA��O (INFERIORES A 360 HORAS) DAS QUAIS PARTICIPOU NESTE ANO, EM QUAIS DELAS ESTAVA PREVISTO: - Encontros de forma��o distribu�dos por semanas ou meses?'. 
VALUE LABELS TX_RESP_Q058
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Muitas vezes'
'D' 'Sempre'.
VARIABLE LABELS TX_RESP_Q059 'DURANTE ESTE ANO, INDIQUE DE QUAIS CURSOS DE P�S-GRADUA��O VOC� PARTICIPOU E SE RECEBEU APOIO DA SECRETARIA OU MANTENEDORA PARA REALIZ�-LO: - Especializa��o (m�nimo de 360 horas)'. 
VALUE LABELS TX_RESP_Q059
'A' 'N�o fiz este curso.'
'B' 'Sim, sem apoio.'
'C' 'Sim, com apoio parcial.'
'D' 'Sim, com apoio total.'.
VARIABLE LABELS TX_RESP_Q060 'DURANTE ESTE ANO, INDIQUE DE QUAIS CURSOS DE P�S-GRADUA��O VOC� PARTICIPOU E SE RECEBEU APOIO DA SECRETARIA OU MANTENEDORA PARA REALIZ�-LO: - Mestrado (acad�mico ou profissional)'. 
VALUE LABELS TX_RESP_Q060
'A' 'N�o fiz este curso.'
'B' 'Sim, sem apoio.'
'C' 'Sim, com apoio parcial.'
'D' 'Sim, com apoio total.'.
VARIABLE LABELS TX_RESP_Q061 'DURANTE ESTE ANO, INDIQUE DE QUAIS CURSOS DE P�S-GRADUA��O VOC� PARTICIPOU E SE RECEBEU APOIO DA SECRETARIA OU MANTENEDORA PARA REALIZ�-LO: - Doutorado'. 
VALUE LABELS TX_RESP_Q061
'A' 'N�o fiz este curso.'
'B' 'Sim, sem apoio.'
'C' 'Sim, com apoio parcial.'
'D' 'Sim, com apoio total.'.
VARIABLE LABELS TX_RESP_Q062 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Aprofundar meus conhecimentos sobre as disciplinas que leciono'. 
VALUE LABELS TX_RESP_Q062
'A' 'N�o contribuiu.'
'B' 'Contribuiu pouco.'
'C' 'Contribuiu razoavelmente.'
'D' 'Contribuiu muito.'.
VARIABLE LABELS TX_RESP_Q063 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Compreender o processo de aprendizagem'. 
VALUE LABELS TX_RESP_Q063
'A' 'N�o contribuiu.'
'B' 'Contribuiu pouco.'
'C' 'Contribuiu razoavelmente.'
'D' 'Contribuiu muito.'.
VARIABLE LABELS TX_RESP_Q064 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Aprimorar os processos avaliativos de sala de aula'. 
VALUE LABELS TX_RESP_Q064
'A' 'N�o contribuiu.'
'B' 'Contribuiu pouco.'
'C' 'Contribuiu razoavelmente.'
'D' 'Contribuiu muito.'.
VARIABLE LABELS TX_RESP_Q065 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Utilizar novas tecnologias para apoiar minhas atividades'. 
VALUE LABELS TX_RESP_Q065
'A' 'N�o contribuiu.'
'B' 'Contribuiu pouco.'
'C' 'Contribuiu razoavelmente.'
'D' 'Contribuiu muito.'.
VARIABLE LABELS TX_RESP_Q066 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Colaborar com meus colegas na prepara��o de atividades e projetos'. 
VALUE LABELS TX_RESP_Q066
'A' 'N�o contribuiu.'
'B' 'Contribuiu pouco.'
'C' 'Contribuiu razoavelmente.'
'D' 'Contribuiu muito.'.
VARIABLE LABELS TX_RESP_Q067 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Aprimorar as metodologias de ensino'. 
VALUE LABELS TX_RESP_Q067
'A' 'N�o contribuiu.'
'B' 'Contribuiu pouco.'
'C' 'Contribuiu razoavelmente.'
'D' 'Contribuiu muito.'.
VARIABLE LABELS TX_RESP_Q068 'INDIQUE O N�VEL DE CONTRIBUI��O DAS ATIVIDADES FORMATIVAS E CURSOS REALIZADOS NESTE ANO PARA: - Auxiliar na media��o de conflitos em sala de aula'. 
VALUE LABELS TX_RESP_Q068
'A' 'N�o contribuiu.'
'B' 'Contribuiu pouco.'
'C' 'Contribuiu razoavelmente.'
'D' 'Contribuiu muito.'.
VARIABLE LABELS TX_RESP_Q069 'NESTE ANO, INDIQUE O PRINCIPAL RESPONS�VEL PELAS SEGUINTES DEFINI��ES: - Material did�tico'. 
VALUE LABELS TX_RESP_Q069
'A' 'Docente da turma.'
'B' 'Todo o corpo docente da escola.'
'C' 'Equipe gestora.'
'D' 'Decis�o externa � escola (Secretaria de Educa��o, sistema apostilado de ensino etc.).'.
VARIABLE LABELS TX_RESP_Q070 'NESTE ANO, INDIQUE O PRINCIPAL RESPONS�VEL PELAS SEGUINTES DEFINI��ES: - Metodologia de ensino'. 
VALUE LABELS TX_RESP_Q070
'A' 'Docente da turma.'
'B' 'Todo o corpo docente da escola.'
'C' 'Equipe gestora.'
'D' 'Decis�o externa � escola (Secretaria de Educa��o, sistema apostilado de ensino etc.).'.
VARIABLE LABELS TX_RESP_Q071 'NESTE ANO, INDIQUE O PRINCIPAL RESPONS�VEL PELAS SEGUINTES DEFINI��ES: - Conte�dos trabalhados em sala'. 
VALUE LABELS TX_RESP_Q071
'A' 'Docente da turma.'
'B' 'Todo o corpo docente da escola.'
'C' 'Equipe gestora.'
'D' 'Decis�o externa � escola (Secretaria de Educa��o, sistema apostilado de ensino etc.).'.
VARIABLE LABELS TX_RESP_Q072 'NESTE ANO, INDIQUE O PRINCIPAL RESPONS�VEL PELAS SEGUINTES DEFINI��ES: - Instrumentos para avaliar os(as) alunos(as)'. 
VALUE LABELS TX_RESP_Q072
'A' 'Docente da turma.'
'B' 'Todo o corpo docente da escola.'
'C' 'Equipe gestora.'
'D' 'Decis�o externa � escola (Secretaria de Educa��o, sistema apostilado de ensino etc.).'.
VARIABLE LABELS TX_RESP_Q073 'NESTE ANO, INDIQUE O PRINCIPAL RESPONS�VEL PELAS SEGUINTES DEFINI��ES: - Peso de cada instrumento de avalia��o na nota final do(a) aluno(a)'.
VALUE LABELS TX_RESP_Q073
'A' 'Docente da turma.'
'B' 'Todo o corpo docente da escola.'
'C' 'Equipe gestora.'
'D' 'Decis�o externa � escola (Secretaria de Educa��o, sistema apostilado de ensino etc.).'.
VARIABLE LABELS TX_RESP_Q074 'NESTE ANO, INDIQUE O PRINCIPAL RESPONS�VEL PELAS SEGUINTES DEFINI��ES: - Sele��o de conte�dos usados nas provas'. 
VALUE LABELS TX_RESP_Q074
'A' 'Docente da turma.'
'B' 'Todo o corpo docente da escola.'
'C' 'Equipe gestora.'
'D' 'Decis�o externa � escola (Secretaria de Educa��o, sistema apostilado de ensino etc.).'.
VARIABLE LABELS TX_RESP_Q075 ' INDIQUE SE AS SITUA��ES ABAIXO SE APLICAM OU N�O AO PROJETO POL�TICO-PEDAG�GICO DESTA ESCOLA: - Seu conte�do � discutido em reuni�es'. 
VALUE LABELS TX_RESP_Q075
'A' 'Desconhe�o o projeto.'
'B' 'N�o.'
'C' 'Sim.'.
VARIABLE LABELS TX_RESP_Q076 'INDIQUE SE AS SITUA��ES ABAIXO SE APLICAM OU N�O AO PROJETO POL�TICO-PEDAG�GICO DESTA ESCOLA: - Os(As) professores(as) participaram da sua elabora��o'. 
VALUE LABELS TX_RESP_Q076
'A' 'Desconhe�o o projeto.'
'B' 'N�o.'
'C' 'Sim.'.
VARIABLE LABELS TX_RESP_Q077 'INDIQUE SE AS SITUA��ES ABAIXO SE APLICAM OU N�O AO PROJETO POL�TICO-PEDAG�GICO DESTA ESCOLA: - Estabelece metas de aprendizagem'. 
VALUE LABELS TX_RESP_Q077
'A' 'Desconhe�o o projeto.'
'B' 'N�o.'
'C' 'Sim.'.
VARIABLE LABELS TX_RESP_Q078 'INDIQUE SE AS SITUA��ES ABAIXO SE APLICAM OU N�O AO PROJETO POL�TICO-PEDAG�GICO DESTA ESCOLA: - Considera os resultados de avalia��es externas (Saeb, estaduais, municipais etc.)'. 
VALUE LABELS TX_RESP_Q078
'A' 'Desconhe�o o projeto.'
'B' 'N�o.'
'C' 'Sim.'.
VARIABLE LABELS TX_RESP_Q079 'INDIQUE SE AS SITUA��ES ABAIXO SE APLICAM OU N�O AO PROJETO POL�TICO-PEDAG�GICO DESTA ESCOLA: - H� metas de alcance de �ndices (Ideb, �ndices estaduais ou municipais)'. 
VALUE LABELS TX_RESP_Q079
'A' 'Desconhe�o o projeto.'
'B' 'N�o.'
'C' 'Sim.'.
VARIABLE LABELS TX_RESP_Q080 '�O Conselho de Classe � um �rg�o formado por todos os professores que lecionam em cada turma/s�rie. Neste ano e nesta escola, quantas vezes se reuniu o Conselho de Classe?'. 
VALUE LABELS TX_RESP_Q080
'A' 'N�o existe Conselho de Classe nesta escola.'
'B' 'Nenhuma vez.'
'C' 'Uma vez.'
'D' 'Duas vezes.'
'E' 'Tr�s vezes ou mais.'.
VARIABLE LABELS TX_RESP_Q081 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - O(A) diretor(a) debate com frequ�ncia metas educacionais com os(as) professores(as) nas reuni�es'. 
VALUE LABELS TX_RESP_Q081
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q082 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - O(A) diretor(a) e os(as) professores(as) sempre tratam a qualidade de ensino como uma responsabilidade coletiva'. 
VALUE LABELS TX_RESP_Q082
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q083 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - O(A) diretor(a) informa aos(�s) professores(as) sobre as possibilidades de aperfei�oamento profissional'. 
VALUE LABELS TX_RESP_Q083
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q084 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - O(A) diretor(a) d� aten��o especial a aspectos relacionados � aprendizagem dos alunos'. 
VALUE LABELS TX_RESP_Q084
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q085 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - O(A) diretor(a) d� aten��o especial a aspectos relacionados �s normas administrativas'. 
VALUE LABELS TX_RESP_Q085
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q086 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - O(A) diretor(a) com frequ�ncia me anima e me motiva para o trabalho'. 
VALUE LABELS TX_RESP_Q086
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q087 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA COM OS SEGUINTES TEMAS: - Tenho confian�a no(a) diretor(a) como profissional'. 
VALUE LABELS TX_RESP_Q087
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q088 '...O(A) diretor(a) e os(as) professores(as) sempre asseguram que as quest�es relacionadas � qualidade da conviv�ncia e gest�o de conflitos sejam uma responsabilidade coletiva (Cf. Dic)'. 
VALUE LABELS TX_RESP_Q088
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q089 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQU�NCIA COM QUE OCORREU: - Colabora��o das fam�lias para superar problemas que interferem na aprendizagem dos(as) alunos(as)... (Cf. Dic.)'. 
VALUE LABELS TX_RESP_Q089
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Muitas vezes'
'D' 'Sempre'.
VARIABLE LABELS TX_RESP_Q090 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQU�NCIA COM QUE OCORREU: - Colabora��o entre colegas (feedback, trocas, projetos interdisciplinares)'. 
VALUE LABELS TX_RESP_Q090
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Muitas vezes'
'D' 'Sempre'.
VARIABLE LABELS TX_RESP_Q091 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQU�NCIA COM QUE OCORREU: - Colabora��o da gest�o da escola para superar dificuldades de sala de aula'. 
VALUE LABELS TX_RESP_Q091
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Muitas vezes'
'D' 'Sempre'.
VARIABLE LABELS TX_RESP_Q092 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQU�NCIA COM QUE OCORREU: - Colabora��o da gest�o da escola para superar problemas que interferem na qualidade das rela��es com os estudantes'. 
VALUE LABELS TX_RESP_Q092
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Muitas vezes'
'D' 'Sempre'.
VARIABLE LABELS TX_RESP_Q093 'NESTA ESCOLA E NESTE ANO, INDIQUE A FREQU�NCIA COM QUE OCORREU: - Apoio da Secretaria de Educa��o para superar as dificuldades do cotidiano escolar'. 
VALUE LABELS TX_RESP_Q093
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'Muitas vezes'
'D' 'Sempre'.
VARIABLE LABELS TX_RESP_Q094 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - Respeitam os acordos estabelecidos em sala'. 
VALUE LABELS TX_RESP_Q094
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'
.
VARIABLE LABELS TX_RESP_Q095 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - Chegam pontualmente'. 
VALUE LABELS TX_RESP_Q095
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'
.
VARIABLE LABELS TX_RESP_Q096 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - Est�o sempre presentes �s minhas aulas'. 
VALUE LABELS TX_RESP_Q096
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente' .
VARIABLE LABELS TX_RESP_Q097 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - S�o respeitosos(as) comigo'. 
VALUE LABELS TX_RESP_Q097
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q098 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - S�o respeitosos(as) com os(as) colegas da turma'. 
VALUE LABELS TX_RESP_Q098
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q099 'INDIQUE O QUANTO VOC� CONCORDA OU DISCORDA EM RELA��O AOS SEGUINTES TEMAS ENVOLVENDO SEUS(SUAS) ALUNOS(AS) NESTA ESCOLA: - Interessam-se pela disciplina que leciono'. 
VALUE LABELS TX_RESP_Q099
'A' 'Discordo fortemente'
'B' 'Discordo'
'C' 'Concordo'
'D' 'Concordo fortemente'.
VARIABLE LABELS TX_RESP_Q100 'SOBRE OS FATOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM NESTA ESCOLA E NESTE ANO: - Os(As) alunos(as) frequentaram a escola sob efeito de bebida alco�lica'. 
VALUE LABELS TX_RESP_Q100
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'.
VARIABLE LABELS TX_RESP_Q101 'SOBRE OS FATOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM NESTA ESCOLA E NESTE ANO: - Os(As) alunos(as) frequentaram a escola sob efeito de drogas il�citas'.
VALUE LABELS TX_RESP_Q101
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'.
VARIABLE LABELS TX_RESP_Q102 'SOBRE OS FATOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM NESTA ESCOLA E NESTE ANO: - Os(As) alunos(as) frequentaram a escola portando arma (rev�lver, faca, canivete etc.)'.
VALUE LABELS TX_RESP_Q102
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'.
VARIABLE LABELS TX_RESP_Q103 'SOBRE OS FATOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM NESTA ESCOLA E NESTE ANO: - Fui amea�ado(a) por algum(a) aluno(a)'. 
VALUE LABELS TX_RESP_Q103
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'.
VARIABLE LABELS TX_RESP_Q104 'SOBRE OS FATOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM NESTA ESCOLA E NESTE ANO: - Fui amea�ado(a) por familiares de alunos(as)'. 
VALUE LABELS TX_RESP_Q104
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'.
VARIABLE LABELS TX_RESP_Q105 'SOBRE OS FATOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM NESTA ESCOLA E NESTE ANO: - Fui agredido(a) fisicamente por algum(a) aluno(a)'. 
VALUE LABELS TX_RESP_Q105
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'.
VARIABLE LABELS TX_RESP_Q106 'SOBRE OS FATOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM NESTA ESCOLA E NESTE ANO: - Fui agredido(a) fisicamente por familiares dos(as) alunos(as)'. 
VALUE LABELS TX_RESP_Q106
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'.
VARIABLE LABELS TX_RESP_Q107 'SOBRE OS FATOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM NESTA ESCOLA E NESTE ANO: - Fui v�tima de roubo com uso de viol�ncia'. 
VALUE LABELS TX_RESP_Q107
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'.
VARIABLE LABELS TX_RESP_Q108 'SOBRE OS FATOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM NESTA ESCOLA E NESTE ANO: - Fui v�tima de atentado � vida'. 
VALUE LABELS TX_RESP_Q108
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'.
VARIABLE LABELS TX_RESP_Q109 'SOBRE OS FATOS LISTADOS ABAIXO, INDIQUE A FREQU�NCIA COM QUE OCORRERAM NESTA ESCOLA E NESTE ANO: - Outro(a) profissional foi v�tima de atentado � vida'. 
VALUE LABELS TX_RESP_Q109
'A' 'Nunca'
'B' 'Poucas vezes'
'C' 'V�rias vezes'.
VARIABLE LABELS TX_RESP_Q110 'INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS NESTA TURMA: - Propor dever de casa'. 
VALUE LABELS TX_RESP_Q110
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q111 'INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS NESTA TURMA: - Corrigir com os(as) alunos(as) o dever de casa'.
VALUE LABELS TX_RESP_Q111
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q112 'INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS NESTA TURMA: - Desenvolver atividades em grupo, em sala de aula, para que os(as) alunos(as) busquem solu��es de problemas'. 
VALUE LABELS TX_RESP_Q112
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q113 'INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS NESTA TURMA: - Desenvolver projetos tem�ticos com o objetivo de aprimorar as habilidades de trabalho em equipe'. 
VALUE LABELS TX_RESP_Q113
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q114 'INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS NESTA TURMA: - Solicitar que os(as) alunos(as) copiem textos e atividades do livro did�tico ou do quadro negro (lousa)'. 
VALUE LABELS TX_RESP_Q114
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q115 'INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS NESTA TURMA: - Estimular os(as) alunos(as) a expressarem suas opini�es e a desenvolverem argumentos a partir de temas diversos'. 
VALUE LABELS TX_RESP_Q115
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q116 'INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS NESTA TURMA: - Propor situa��es de aprendizagem que sejam familiares ou de interesse dos(as) alunos(as)'. 
VALUE LABELS TX_RESP_Q116
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q117 'INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS NESTA TURMA: - Promover discuss�es a partir de textos de jornais ou revistas'. 
VALUE LABELS TX_RESP_Q117
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q118 'INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS NESTA TURMA: - Propor atividades gramaticais relacionadas aos textos de jornais ou revistas'. 
VALUE LABELS TX_RESP_Q118
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q119 'INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS NESTA TURMA: - Promover a leitura e discuss�o de contos, cr�nicas, poesias ou romances'. 
VALUE LABELS TX_RESP_Q119
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q120 'INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS NESTA TURMA: - Utilizar contos, cr�nicas, poesias ou romances para exercitar aspectos da gram�tica'. 
VALUE LABELS TX_RESP_Q120
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q121 'INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS NESTA TURMA: - Utilizar revistas em quadrinhos como instrumento de aprendizado'. 
VALUE LABELS TX_RESP_Q121
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q122 'INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS NESTA TURMA: - Fixar os nomes de conceitos gramaticais e lingu�sticos'. 
VALUE LABELS TX_RESP_Q122
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q123 'INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS NESTA TURMA: - Fazer exerc�cios para fixar procedimentos e regras'. 
VALUE LABELS TX_RESP_Q123
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q124 'INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS NESTA TURMA: - Discutir se os resultados num�ricos obtidos na solu��o de um problema s�o adequados � situa��o apresentada'. 
VALUE LABELS TX_RESP_Q124
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q125 'INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS NESTA TURMA: - Discutir diferentes modos para resolver problemas e c�lculos'.
VALUE LABELS TX_RESP_Q125
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q126 'INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS NESTA TURMA: - Lidar com temas que aparecem em jornais e/ou revistas, discutindo a rela��o dos temas com a matem�tica'. 
VALUE LABELS TX_RESP_Q126
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q127 'INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS NESTA TURMA: - Fornecer esquemas/regras que permitem obter as respostas certas dos c�lculos e problemas'.
VALUE LABELS TX_RESP_Q127
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q128 'INDIQUE A FREQU�NCIA COM QUE VOC� DESENVOLVE AS SEGUINTES PR�TICAS PEDAG�GICAS NESTA TURMA: - Experimentar diferentes a��es (coletar informa��es, recortar, explorar, manipular etc.) para resolver problemas'. 
VALUE LABELS TX_RESP_Q128
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.