/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral do Sistema Nacional de Avalia��o da Educa��o B�sica             */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_PROFESSOR.sps                                                           */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DO QUESTION�RIO DO PROFESSOR */
/*                     DA ANEB/PROVA BRASIL 2015                                                       */
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
  ID_PROVA_BRASIL F4.0
  ID_UF F2.0
  ID_MUNICIPIO F7.0
  ID_ESCOLA F8.0
  ID_DEPENDENCIA_ADM F1.0
  ID_LOCALIZACAO F1.0
  ID_TURMA F6.0
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
  TX_RESP_Q125 A8.
CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.



VARIABLE LABELS ID_PROVA_BRASIL 'Ano da ANEB/Prova Brasil'.
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
VARIABLE LABELS ID_TURMA 'C�digo da turma na ANEB/Prova Brasil'.
VARIABLE LABELS ID_SERIE 'S�rie'.
VALUE LABELS ID_SERIE
5  '4� s�rie/5� ano EF'
9  '8� s�rie/9� ano EF'
12 '3� S�rie do Ensino M�dio'.
VARIABLE LABELS IN_PREENCHIMENTO_QUESTIONARIO 'Indicador de preenchimento do question�rio'.
VALUE LABELS IN_PREENCHIMENTO_QUESTIONARIO
0 'N�o preenchido'
1 'Preenchido parcial ou totalmente'.
VARIABLE LABELS TX_RESP_Q001 'Qual � o seu sexo?'. 
VALUE LABELS TX_RESP_Q001
'A' 'Masculino'
'B' 'Feminino'.
VARIABLE LABELS TX_RESP_Q002 'Voc� poderia nos dizer a sua faixa et�ria?'. 
VALUE LABELS TX_RESP_Q002
'A' 'At� 24 anos'
'B' 'De 25 a 29 anos'
'C' 'De 30 a 39 anos'
'D' 'De 40 a 49 anos'
'E' 'De 50 a 54 anos'
'F' '55 anos ou mais'.
VARIABLE LABELS TX_RESP_Q003 'Como voc� se considera?'. 
VALUE LABELS TX_RESP_Q003
'A' 'Branco(a)'
'B' 'Pardo(a)'
'C' 'Preto(a)'
'D' 'Amarelo(a)'
'E' 'Ind�gena'
'F' 'N�o quero declarar'
'G' 'N�o sei'.
VARIABLE LABELS TX_RESP_Q004 'Qual � o mais alto n�vel de escolaridade que voc� concluiu (at� a gradua��o)?'. 
VALUE LABELS TX_RESP_Q004
'A' 'Menos que o Ensino M�dio (antigo 2� grau)'
'B' 'Ensino M�dio - Magist�rio (antigo 2� grau)'
'C' 'Ensino  M�dio - Outros (antigo 2� grau)'
'D' 'Ensino Superior - Pedagogia'
'E' 'Ensino Superior - Curso Normal Superior'
'F' 'Ensino Superior - Licenciatura em Matem�tica'
'G' 'Ensino Superior - Licenciatura em Letras'
'H' 'Ensino Superior � Outras Licenciaturas'
'I' 'Ensino Superior - Outras �reas'.
VARIABLE LABELS TX_RESP_Q005 'H� quantos anos voc� obteve o n�vel de escolaridade assinalado anteriormente (at� a gradua��o)?'. 
VALUE LABELS TX_RESP_Q005
'A' 'H� menos de 2 anos'
'B' 'De 2 a 7 anos'
'C' 'De 8 a 14 anos'
'D' 'De 15 a 20 anos'
'E' 'H� mais de 20 anos'.
VARIABLE LABELS TX_RESP_Q006 'Indique em que tipo de institui��o voc� obteve seu diploma de ensino superior'. 
VALUE LABELS TX_RESP_Q006
'A' 'N�o conclu� o ensino superior'
'B' 'Privada'
'C' 'P�blica Federal'
'D' 'P�blica Estadual'
'E' 'P�blica Municipal'.
VARIABLE LABELS TX_RESP_Q007 'De que forma voc� realizou o curso de ensino superior?'. 
VALUE LABELS TX_RESP_Q007
'A' 'N�o conclu� o ensino superior'
'B' 'Presencial'
'C' 'Semipresencial'
'D' 'A dist�ncia'.
VARIABLE LABELS TX_RESP_Q008 'Indique o curso de p�s-gradua��o de mais alta titula��o que voc� possui'. 
VALUE LABELS TX_RESP_Q008
'A' 'N�o fiz ou n�o completei curso de p�s-gradua��o'
'B' 'Atualiza��o ou Aperfei�oamento (m�nimo de 180 horas)'
'C' 'Especializa��o (m�nimo de 360 horas)'
'D' 'Mestrado'
'E' 'Doutorado'.
VARIABLE LABELS TX_RESP_Q009 'Indique a �rea tem�tica do curso de p�s-gradua��o de mais alta titula��o que voc� possui'. 
VALUE LABELS TX_RESP_Q009
'A' 'N�o fiz ou n�o completei curso de p�s-gradua��o'
'B' 'Educa��o, enfatizando alfabetiza��o'
'C' 'Educa��o, enfatizando lingu�stica e/ou letramento'
'D' 'Educa��o, enfatizando educa��o matem�tica'
'E' 'Educa��o - outras �nfases'
'F' 'Outras �reas que n�o a Educa��o'.
VARIABLE LABELS TX_RESP_Q010 'Como professor, qual �, aproximadamente, o seu sal�rio bruto? (com adicionais, se houver)'. 
VALUE LABELS TX_RESP_Q010
'A' 'At� R$ 788,00'
'B' 'Entre R$ 788,01 e R$ 1.182,00'
'C' 'Entre R$ 1.182,01 e R$ 1.576,00'
'D' 'Entre R$ 1.576,01 e R$ 1.970,00'
'E' 'Entre R$ 1.970,01 e R$ 2.364,00'
'F' 'Entre R$ 2.364,01 e R$ 2.758,00'
'G' 'Entre R$ 2.758,01 e R$ 3.152,00'
'H' 'Entre R$ 3.152,01 e R$ 3.940,00'
'I' 'Entre R$ 3.940,01 e R$ 5.516,00'
'J' 'Entre R$ 5.516,01 e R$ 7.788,00'
'K' 'R$ 7.788,01 ou mais'.
VARIABLE LABELS TX_RESP_Q011 'Al�m da atividade como docente nesta escola, voc� exerce outra atividade que contribui para sua renda pessoal?'. 
VALUE LABELS TX_RESP_Q011
'A' 'Sim, na �rea de educa��o'
'B' 'Sim, fora da �rea de educa��o'
'C' 'N�o'.
VARIABLE LABELS TX_RESP_Q012 'Considerando todas as atividades que voc� exerce (dentro e fora da �rea de educa��o), qual �, aproximadamente, o seu sal�rio bruto? (Com adicionais, se houver)'. 
VALUE LABELS TX_RESP_Q012
'A' 'At� R$ 788,00'
'B' 'Entre R$ 788,01 e R$ 1.182,00'
'C' 'Entre R$ 1.182,01 e R$ 1.576,00'
'D' 'Entre R$ 1.576,01 e R$ 1.970,00'
'E' 'Entre R$ 1.970,01 e R$ 2.364,00'
'F' 'Entre R$ 2.364,01 e R$ 2.758,00'
'G' 'Entre R$ 2.758,01 e R$ 3.152,00'
'H' 'Entre R$ 3.152,01 e R$ 3.940,00'
'I' 'Entre R$ 3.940,01 e R$ 5.516,00'
'J' 'Entre R$ 5.516,01 e R$ 7.788,00'
'K' 'R$ 7.788,01 ou mais'.
VARIABLE LABELS TX_RESP_Q013 'H� quantos anos voc� trabalha como professor?'. 
VALUE LABELS TX_RESP_Q013
'A' 'Meu primeiro ano'
'B' '1-2 anos'
'C' '3-5 anos'
'D' '6-10 anos'
'E' '11-15 anos'
'F' '16-20 anos'
'G' 'Mais de 20 anos'.
VARIABLE LABELS TX_RESP_Q014 'H� quantos anos voc� trabalha como professor nesta escola?'. 
VALUE LABELS TX_RESP_Q014
'A' 'Meu primeiro ano'
'B' '1-2 anos'
'C' '3-5 anos'
'D' '6-10 anos'
'E' '11-15 anos'
'F' '16-20 anos'
'G' 'Mais de 20 anos'.
VARIABLE LABELS TX_RESP_Q015 'H� quantos anos voc� ministra aulas para alunos da s�rie/turma em que voc� se encontra neste momento?'. 
VALUE LABELS TX_RESP_Q015
'A' 'Meu primeiro ano'
'B' '1-2 anos'
'C' '3-5 anos'
'D' '6-10 anos'
'E' '11-15 anos'
'F' '16-20 anos'
'G' 'Mais de 20 anos'.
VARIABLE LABELS TX_RESP_Q016 'Qual � a sua situa��o trabalhista nesta escola?'. 
VALUE LABELS TX_RESP_Q016
'A' 'Estatut�rio'
'B' 'CLT'
'C' 'Prestador de servi�o por contrato tempor�rio'
'D' 'Prestador de servi�o sem contrato'
'E' 'Outra'.
VARIABLE LABELS TX_RESP_Q017 'Nesta escola, qual � a sua carga hor�ria semanal? (Considere a carga hor�ria contratual: horas-aula mais horas para atividades, se houver. N�o considere aulas particulares)'. 
VALUE LABELS TX_RESP_Q017
'A' 'Mais de 40 horas'
'B' '40 horas'
'C' 'De 20 a 39 horas'
'D' 'Menos de 20 horas'.
VARIABLE LABELS TX_RESP_Q018 'Em quantas escolas voc� trabalha?'. 
VALUE LABELS TX_RESP_Q018
'A' 'Apenas nesta escola'
'B' 'Em 2 escolas'
'C' 'Em 3 escolas'
'D' 'Em 4 ou mais escolas'.
VARIABLE LABELS TX_RESP_Q019 'Considerando todas as escolas em que voc� trabalha atualmente como professor, qual a sua carga hor�ria semanal? (...) (Cf. Dic.)'. 
VALUE LABELS TX_RESP_Q019
'A' 'Mais de 40 horas'
'B' '40 horas'
'C' 'De 20 a 39 horas'
'D' 'Menos de 20 horas'.
VARIABLE LABELS TX_RESP_Q020 'Considerando-se todas as escolas em que voc� trabalha atualmente como professor, quantas horas semanais s�o dedicadas �s atividades extraclasse (forma��o e estudo, planejamento, produ��o de recursos did�ticos etc.)?'. 
VALUE LABELS TX_RESP_Q020
'A' 'Nenhuma'
'B' 'Menos de 1/3 da carga hor�ria'
'C' '1/3 da carga hor�ria'
'D' 'Mais de 1/3 da carga hor�ria'.
VARIABLE LABELS TX_RESP_Q021 'Durante os �ltimos dois anos, voc� participou (...) dos seguintes tipos de atividades (...), e qual foi o impacto (...) em sua pr�tica como professor? Cursos/oficinas sobre metodologias de ensino (...) (Cf. Dic.)'. 
VALUE LABELS TX_RESP_Q021
'A' 'N�o participei'
'B' 'Sim, e n�o houve impacto'
'C' 'Sim, e houve um pequeno impacto'
'D' 'Sim, e houve um impacto moderado'
'E' 'Sim, e houve um grande impacto'.
VARIABLE LABELS TX_RESP_Q022 'Durante os �ltimos dois anos, voc� participou (...) dos seguintes tipos de atividades (...), e qual foi o impacto (...) em sua pr�tica como professor? Cursos/oficinas sobre outros t�picos (...) (Cf. Dic.)'. 
VALUE LABELS TX_RESP_Q022
'A' 'N�o participei'
'B' 'Sim, e n�o houve impacto'
'C' 'Sim, e houve um pequeno impacto'
'D' 'Sim, e houve um impacto moderado'
'E' 'Sim, e houve um grande impacto'.
VARIABLE LABELS TX_RESP_Q023 'Durante os �ltimos dois anos, voc� participou (...) dos seguintes tipos de atividades (...), e qual foi o impacto (...) em sua pr�tica como professor? Curso de especializa��o (...) ou aperfei�oamento (...) (Cf. DIC)'. 
VALUE LABELS TX_RESP_Q023
'A' 'N�o participei'
'B' 'Sim, e n�o houve impacto'
'C' 'Sim, e houve um pequeno impacto'
'D' 'Sim, e houve um impacto moderado'
'E' 'Sim, e houve um grande impacto'.
VARIABLE LABELS TX_RESP_Q024 'Durante os �ltimos dois anos, (...), e qual foi o impacto dessa atividade em sua pr�tica como professor? Curso de especializa��o (...) ou aperfei�oamento (...) sobre outros t�picos em educa��o. (Cf. Dic.)'. 
VALUE LABELS TX_RESP_Q024
'A' 'N�o participei'
'B' 'Sim, e n�o houve impacto'
'C' 'Sim, e houve um pequeno impacto'
'D' 'Sim, e houve um impacto moderado'
'E' 'Sim, e houve um grande impacto'.
VARIABLE LABELS TX_RESP_Q025 'Das atividades de desenvolvimento profissional de que voc� participou nos �ltimos dois anos, quantas voc�, pessoalmente, teve que pagar para participar?'. 
VALUE LABELS TX_RESP_Q025
'A' 'Nenhuma'
'B' 'Algumas'
'C' 'Todas'.
VARIABLE LABELS TX_RESP_Q026 'Considerando os temas a seguir, indique por favor sua necessidade de aperfei�oamento profissional. Par�metros ou Diretrizes curriculares em sua �rea de atua��o'. 
VALUE LABELS TX_RESP_Q026
'A' 'N�o h� necessidade'
'B' 'Baixo n�vel de necessidade'
'C' 'N�vel moderado de necessidade'
'D' 'Alto n�vel de necessidade'.
VARIABLE LABELS TX_RESP_Q027 'Considerando os temas a seguir, indique por favor sua necessidade de aperfei�oamento profissional. Conte�dos espec�ficos da minha disciplina principal de atua��o'. 
VALUE LABELS TX_RESP_Q027
'A' 'N�o h� necessidade'
'B' 'Baixo n�vel de necessidade'
'C' 'N�vel moderado de necessidade'
'D' 'Alto n�vel de necessidade'.
VARIABLE LABELS TX_RESP_Q028 'Considerando os temas a seguir, indique por favor sua necessidade de aperfei�oamento profissional. Pr�ticas de Ensino na minha disciplina principal de atua��o'. 
VALUE LABELS TX_RESP_Q028
'A' 'N�o h� necessidade'
'B' 'Baixo n�vel de necessidade'
'C' 'N�vel moderado de necessidade'
'D' 'Alto n�vel de necessidade'.
VARIABLE LABELS TX_RESP_Q029 'Considerando os temas a seguir, indique por favor sua necessidade de aperfei�oamento profissional. Gest�o e organiza��o das atividades em sala de aula'. 
VALUE LABELS TX_RESP_Q029
'A' 'N�o h� necessidade'
'B' 'Baixo n�vel de necessidade'
'C' 'N�vel moderado de necessidade'
'D' 'Alto n�vel de necessidade'.
VARIABLE LABELS TX_RESP_Q030 'Considerando os temas a seguir, indique por favor sua necessidade de aperfei�oamento profissional. Metodologias de avalia��o dos alunos'. 
VALUE LABELS TX_RESP_Q030
'A' 'N�o h� necessidade'
'B' 'Baixo n�vel de necessidade'
'C' 'N�vel moderado de necessidade'
'D' 'Alto n�vel de necessidade'.
VARIABLE LABELS TX_RESP_Q031 'Considerando os temas a seguir, indique por favor sua necessidade de aperfei�oamento profissional. Uso pedag�gico das Tecnologias de Informa��o e Comunica��o'. 
VALUE LABELS TX_RESP_Q031
'A' 'N�o h� necessidade'
'B' 'Baixo n�vel de necessidade'
'C' 'N�vel moderado de necessidade'
'D' 'Alto n�vel de necessidade'.
VARIABLE LABELS TX_RESP_Q032 'Considerando os temas a seguir, indique por favor sua necessidade de aperfei�oamento profissional. Forma��o espec�fica para trabalhar com estudantes '+
'com defici�ncia ou necessidades especiais'. 
VALUE LABELS TX_RESP_Q032
'A' 'N�o h� necessidade'
'B' 'Baixo n�vel de necessidade'
'C' 'N�vel moderado de necessidade'
'D' 'Alto n�vel de necessidade'.
VARIABLE LABELS TX_RESP_Q033 'Nos �ltimos dois anos, voc� gostaria de ter  participado de mais atividades de desenvolvimento profissional do que voc� participou?'. 
VALUE LABELS TX_RESP_Q033
'A' 'N�o'
'B' 'Sim'.
VARIABLE LABELS TX_RESP_Q034 'Se voc� gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participa��o? O desenvolvimento profissional era muito caro/eu n�o podia pagar'. 
VALUE LABELS TX_RESP_Q034
'A' 'N�o gostaria de ter participado'
'B' 'N�o'
'C' 'Sim'.
VARIABLE LABELS TX_RESP_Q035 'Se voc� gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participa��o? Houve conflito com o meu hor�rio de trabalho'. 
VALUE LABELS TX_RESP_Q035
'A' 'N�o gostaria de ter participado'
'B' 'N�o'
'C' 'Sim'.
VARIABLE LABELS TX_RESP_Q036 'Se voc� gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participa��o? N�o tinha disponibilidade de tempo'. 
VALUE LABELS TX_RESP_Q036
'A' 'N�o gostaria de ter participado'
'B' 'N�o'
'C' 'Sim'.
VARIABLE LABELS TX_RESP_Q037 'Se voc� gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participa��o? N�o houve oferta em minha �rea de interesse'. 
VALUE LABELS TX_RESP_Q037
'A' 'N�o gostaria de ter participado'
'B' 'N�o'
'C' 'Sim'.
VARIABLE LABELS TX_RESP_Q038 'Em seu tempo livre, voc� costuma: Ler jornais e revistas em geral'. 
VALUE LABELS TX_RESP_Q038
'A' 'Nunca ou quase nunca'
'B' 'De vez em quando'
'C' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q039 'Em seu tempo livre, voc� costuma: Ler livros'. 
VALUE LABELS TX_RESP_Q039
'A' 'Nunca ou quase nunca'
'B' 'De vez em quando'
'C' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q040 'Em seu tempo livre, voc� costuma: Ler sites na internet'. 
VALUE LABELS TX_RESP_Q040
'A' 'Nunca ou quase nunca'
'B' 'De vez em quando'
'C' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q041 'Em seu tempo livre, voc� costuma: Frequentar bibliotecas'. 
VALUE LABELS TX_RESP_Q041
'A' 'Nunca ou quase nunca'
'B' 'De vez em quando'
'C' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q042 'Em seu tempo livre, voc� costuma: Ir ao cinema'. 
VALUE LABELS TX_RESP_Q042
'A' 'Nunca ou quase nunca'
'B' 'De vez em quando'
'C' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q043 'Em seu tempo livre, voc� costuma: Ir a algum tipo de espet�culo ou exposi��o (teatro, museu, dan�a, m�sica)'. 
VALUE LABELS TX_RESP_Q043
'A' 'Nunca ou quase nunca'
'B' 'De vez em quando'
'C' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q044 'Gostar�amos de saber quais os recursos que voc� utiliza para fins pedag�gicos, nesta turma: Jornais e revistas informativas'. 
VALUE LABELS TX_RESP_Q044
'A' 'N�o utilizo porque a escola n�o tem'
'B' 'Nunca'
'C' 'De vez em quando'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q045 'Gostar�amos de saber quais os recursos que voc� utiliza para fins pedag�gicos, nesta turma: Livros de literatura em geral'. 
VALUE LABELS TX_RESP_Q045
'A' 'N�o utilizo porque a escola n�o tem'
'B' 'Nunca'
'C' 'De vez em quando'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q046 'Gostar�amos de saber quais os recursos que voc� utiliza para fins pedag�gicos, nesta turma: Projetor (datashow, projetor de transpar�ncias)'. 
VALUE LABELS TX_RESP_Q046
'A' 'N�o utilizo porque a escola n�o tem'
'B' 'Nunca'
'C' 'De vez em quando'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q047 'Gostar�amos de saber quais os recursos que voc� utiliza para fins pedag�gicos, nesta turma: Filmes, desenhos animados ou document�rios'. 
VALUE LABELS TX_RESP_Q047
'A' 'N�o utilizo porque a escola n�o tem'
'B' 'Nunca'
'C' 'De vez em quando'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q048 'Gostar�amos de saber quais os recursos que voc� utiliza para fins pedag�gicos, nesta turma: M�quina copiadora (xerox)'. 
VALUE LABELS TX_RESP_Q048
'A' 'N�o utilizo porque a escola n�o tem'
'B' 'Nunca'
'C' 'De vez em quando'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q049 'Gostar�amos de saber quais os recursos que voc� utiliza para fins pedag�gicos, nesta turma: Programas/aplicativos pedag�gicos de computador'. 
VALUE LABELS TX_RESP_Q049
'A' 'N�o utilizo porque a escola n�o tem'
'B' 'Nunca'
'C' 'De vez em quando'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q050 'Gostar�amos de saber quais os recursos que voc� utiliza para fins pedag�gicos, nesta turma: Internet'. 
VALUE LABELS TX_RESP_Q050
'A' 'N�o utilizo porque a escola n�o tem'
'B' 'Nunca'
'C' 'De vez em quando'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q051 'Neste ano e nesta escola, como se deu a elabora��o do Projeto Pedag�gico?'. 
VALUE LABELS TX_RESP_Q051
'A' 'N�o sei como foi desenvolvido'
'B' 'N�o existe Projeto Pedag�gico'
'C' 'Utilizando-se um modelo pronto, sem discuss�o com a equipe escolar'
'D' 'Utilizando-se um modelo pronto, mas com discuss�o com a equipe escolar'
'E' 'Utilizando-se um modelo pronto, por�m com adapta��es, sem discuss�o com a equipe escolar'
'F' 'Utilizando-se um modelo pronto, por�m com adapta��es e com discuss�o com a equipe escolar'
'G' 'Elaborou-se um modelo pr�prio, mas n�o houve discuss�o com a equipe escolar'
'H' 'Elaborou-se um modelo pr�prio e houve discuss�o com a equipe escolar'.
VARIABLE LABELS TX_RESP_Q052 'O Conselho de Classe � um �rg�o formado por todos os professores que lecionam em cada turma/s�rie. Neste ano e nesta escola, quantas vezes se reuniu o Conselho de Classe?'. 
VALUE LABELS TX_RESP_Q052
'A' 'N�o existe Conselho de Classe nesta escola'
'B' 'Nenhuma vez'
'C' 'Uma vez'
'D' 'Duas vezes'
'E' 'Tr�s vezes ou mais'.
VARIABLE LABELS TX_RESP_Q053 'Nesta escola, com que frequ�ncia voc� fez o seguinte: Participou do planejamento do curr�culo escolar ou parte dele'. 
VALUE LABELS TX_RESP_Q053
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'.
VARIABLE LABELS TX_RESP_Q054 'Nesta escola, com que frequ�ncia voc� fez o seguinte: Trocou materiais did�ticos com seus colegas'. 
VALUE LABELS TX_RESP_Q054
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'.
VARIABLE LABELS TX_RESP_Q055 'Nesta escola, com que frequ�ncia voc� fez o seguinte: Participou de reuni�es com colegas que trabalham com a mesma s�rie (ano) para a(o) qual leciona'. 
VALUE LABELS TX_RESP_Q055
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'.
VARIABLE LABELS TX_RESP_Q056 'Nesta escola, com que frequ�ncia voc� fez o seguinte: Participou em discuss�es sobre o desenvolvimento da aprendizagem de determinados alunos'. 
VALUE LABELS TX_RESP_Q056
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'.
VARIABLE LABELS TX_RESP_Q057 'Nesta escola, com que frequ�ncia voc� fez o seguinte: Envolveu-se em atividades conjuntas com diferentes professores (por exemplo, projetos interdisciplinares)'. 
VALUE LABELS TX_RESP_Q057
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'.
VARIABLE LABELS TX_RESP_Q058 'Nesta escola e neste ano, indique a frequ�ncia com que: O(A) diretor(a) discute metas educacionais com os professores nas reuni�es'. 
VALUE LABELS TX_RESP_Q058
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q059 'Nesta escola e neste ano, indique a frequ�ncia com que: O(A) diretor(a) e os professores procuram assegurar que as quest�es de qualidade de ensino sejam uma responsabilidade coletiva'. 
VALUE LABELS TX_RESP_Q059
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q060 'Nesta escola e neste ano, indique a frequ�ncia com que: O(A) diretor(a) informa os professores sobre as possibilidades de aperfei�oamento profissional'. 
VALUE LABELS TX_RESP_Q060
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q061 'Nesta escola e neste ano, indique a frequ�ncia com que: O(A) diretor(a) d� aten��o especial a aspectos relacionados com a aprendizagem dos alunos'. 
VALUE LABELS TX_RESP_Q061
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q062 'Nesta escola e neste ano, indique a frequ�ncia com que: O(A) diretor(a) d� aten��o especial a aspectos relacionados com as normas administrativas'. 
VALUE LABELS TX_RESP_Q062
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q063 'Nesta escola e neste ano, indique a frequ�ncia com que: O(A) diretor(a) d� aten��o especial a aspectos relacionados com a manuten��o da escola'. 
VALUE LABELS TX_RESP_Q063
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q064 'Nesta escola e neste ano, indique a frequ�ncia com que: O(A) diretor(a) me anima e me motiva para o trabalho'. 
VALUE LABELS TX_RESP_Q064
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q065 'Nesta escola e neste ano, indique a frequ�ncia com que: O(A) diretor(a) estimula atividades inovadoras'. 
VALUE LABELS TX_RESP_Q065
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q066 'Nesta escola e neste ano, indique a frequ�ncia com que: Sinto-me respeitado pelo(a) diretor(a)'. 
VALUE LABELS TX_RESP_Q066
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q067 'Nesta escola e neste ano, indique a frequ�ncia com que: Tenho confian�a no(a) diretor(a) como profissional'. 
VALUE LABELS TX_RESP_Q067
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q068 'Nesta escola e neste ano, indique a frequ�ncia com que: Participo das decis�es relacionadas com meu trabalho'. 
VALUE LABELS TX_RESP_Q068
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q069 'Nesta escola e neste ano, indique a frequ�ncia com que: A equipe de professores leva em considera��o minhas ideias'. 
VALUE LABELS TX_RESP_Q069
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q070 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Car�ncia de infraestrutura f�sica'. 
VALUE LABELS TX_RESP_Q070
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q071 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Car�ncia ou inefici�ncia da supervis�o, coordena��o e orienta��o pedag�gica'. 
VALUE LABELS TX_RESP_Q071
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q072 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Conte�dos curriculares inadequados �s necessidades dos alunos'. 
VALUE LABELS TX_RESP_Q072
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q073 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): '+
' N�o cumprimento dos conte�dos curriculares ao longo da trajet�ria escolar do aluno'. 
VALUE LABELS TX_RESP_Q073
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q074 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): '+
' Sobrecarga de trabalho dos professores, dificultando o planejamento e o preparo das aulas'. 
VALUE LABELS TX_RESP_Q074
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q075 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Insatisfa��o e desest�mulo do professor com a carreira docente'. 
VALUE LABELS TX_RESP_Q075
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q076 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Meio social em que o aluno vive'. 
VALUE LABELS TX_RESP_Q076
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q077 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): N�vel cultural dos pais dos alunos'. 
VALUE LABELS TX_RESP_Q077
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q078 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Falta de assist�ncia e acompanhamento dos pais na vida escolar do aluno'. 
VALUE LABELS TX_RESP_Q078
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q079 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Baixa autoestima dos alunos'. 
VALUE LABELS TX_RESP_Q079
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q080 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Desinteresse e falta de esfor�o do aluno'. 
VALUE LABELS TX_RESP_Q080
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q081 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Indisciplina dos alunos em sala de aula'. 
VALUE LABELS TX_RESP_Q081
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q082 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Alto �ndice de faltas por parte dos alunos'. 
VALUE LABELS TX_RESP_Q082
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q083 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o neste ano, nesta escola: Agress�o verbal ou f�sica de alunos a professores ou a funcion�rios da escola'. 
VALUE LABELS TX_RESP_Q083
'A' 'Sim'
'B' 'n�o'.
VARIABLE LABELS TX_RESP_Q084 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o neste ano, nesta escola: Agress�o verbal ou f�sica de alunos a outros alunos da escola'. 
VALUE LABELS TX_RESP_Q084
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q085 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o neste ano, nesta escola: Voc� foi v�tima de atentado � vida'. 
VALUE LABELS TX_RESP_Q085
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q086 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o neste ano, nesta escola: Voc� foi amea�ado por algum aluno'. 
VALUE LABELS TX_RESP_Q086
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q087 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o neste ano, nesta escola: Voc� foi v�tima de furto (sem uso de viol�ncia)'. 
VALUE LABELS TX_RESP_Q087
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q088 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o neste ano, nesta escola: Voc� foi v�tima de roubo (com uso de viol�ncia)'. 
VALUE LABELS TX_RESP_Q088
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q089 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o neste ano, nesta escola: Alunos frequentaram as suas aulas sob efeito de bebida alco�lica'. 
VALUE LABELS TX_RESP_Q089
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q090 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o neste ano, nesta escola: Alunos frequentaram as suas aulas sob efeito de drogas il�citas'. 
VALUE LABELS TX_RESP_Q090
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q091 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o neste ano, nesta escola: Alunos frequentaram as suas aulas portando arma branca (facas, canivetes etc.)'. 
VALUE LABELS TX_RESP_Q091
'A' 'Sim'
'B' 'n�o'.
VARIABLE LABELS TX_RESP_Q092 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o neste ano, nesta escola: Alunos frequentaram as suas aulas portando arma de fogo'. 
VALUE LABELS TX_RESP_Q092
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q093 '(SOMENTE PARA PROFESSORES DA 4.� s�rie/5.� ano) Na sua opini�o, quantos dos alunos desta turma voc� acha que concluir�o a 4.� s�rie/5.� ano neste ano?'. 
VALUE LABELS TX_RESP_Q093
'A' 'Poucos alunos'
'B' 'Um pouco menos da metade dos alunos'
'C' 'Um pouco mais da metade dos alunos'
'D' 'Quase todos os alunos'.
VARIABLE LABELS TX_RESP_Q094 '(SOMENTE PARA PROFESSORES DA 4.� s�rie/5.� ano e 8.� s�rie/9.� ano) Na sua opini�o, quantos dos alunos desta turma voc� acha que concluir�o o ensino fundamental?'. 
VALUE LABELS TX_RESP_Q094
'A' 'Poucos alunos'
'B' 'Um pouco menos da metade dos alunos'
'C' 'Um pouco mais da metade dos alunos'
'D' 'Quase todos os alunos'.
VARIABLE LABELS TX_RESP_Q095 '(PARA TODOS OS PROFESSORES) Quantos dos alunos desta turma voc� acha que concluir�o o ensino m�dio?'. 
VALUE LABELS TX_RESP_Q095
'A' 'Poucos alunos'
'B' 'Um pouco menos da metade dos alunos'
'C' 'Um pouco mais da metade dos alunos'
'D' 'Quase todos os alunos'.
VARIABLE LABELS TX_RESP_Q096 '(PARA TODOS OS PROFESSORES) Quantos dos alunos desta turma voc� acha que entrar�o na universidade?'. 
VALUE LABELS TX_RESP_Q096
'A' 'Poucos alunos'
'B' 'Um pouco menos da metade dos alunos'
'C' 'Um pouco mais da metade dos alunos'
'D' 'Quase todos os alunos'.
VARIABLE LABELS TX_RESP_Q097 'Para a disciplina que voc� ministra neste ano, voc� participou da escolha dos livros did�ticos para utiliza��o nesta turma?'. 
VALUE LABELS TX_RESP_Q097
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q098 'O livro did�tico escolhido foi o recebido?'. 
VALUE LABELS TX_RESP_Q098
'A' 'Sim'
'B' 'N�o'
'C' 'N�o sei'.
VARIABLE LABELS TX_RESP_Q099 'Os alunos desta turma t�m livros did�ticos?'. 
VALUE LABELS TX_RESP_Q099
'A' 'N�o, esta turma n�o recebeu o livro did�tico'
'B' 'Sim, menos da metade da turma tem'
'C' 'Sim, metade da turma tem'
'D' 'Sim, a maioria tem'
'E' 'Sim, todos t�m'.
VARIABLE LABELS TX_RESP_Q100 'Os alunos desta turma receberam o livro did�tico no in�cio do ano letivo?'. 
VALUE LABELS TX_RESP_Q100
'A' 'Sim'
'B' 'N�o'
'C' 'N�o sei'.
VARIABLE LABELS TX_RESP_Q101 'Como voc� avalia a qualidade dos livros did�ticos que voc� utiliza nesta turma, neste ano?'. 
VALUE LABELS TX_RESP_Q101
'A' 'N�o utilizo livros did�ticos'
'B' 'Ruim'
'C' 'Razo�vel'
'D' 'Boa'
'E' '�tima'.
VARIABLE LABELS TX_RESP_Q102 'Para esta turma, qual o percentual do tempo de aula que voc� usualmente gastou realizando cada uma das seguintes atividades: Realizando tarefas administrativas (ex.: fazendo  a chamada, preenchendo formul�rios etc.)'. 
VALUE LABELS TX_RESP_Q102
'A' 'Menos de 10%'
'B' 'De 10% a menos 20%'
'C' 'De 20% a menos de 40%'
'D' 'De 40% a menos de 60%'
'E' 'De 60% a menos de 80%'
'F' '80% ou mais'.
VARIABLE LABELS TX_RESP_Q103 'Para esta turma, qual o percentual do tempo de aula que voc� usualmente gastou realizando cada uma das seguintes atividades: Mantendo a ordem/disciplina na sala de aula'. 
VALUE LABELS TX_RESP_Q103
'A' 'Menos de 10%'
'B' 'De 10% a menos 20%'
'C' 'De 20% a menos de 40%'
'D' 'De 40% a menos de 60%'
'E' 'De 60% a menos de 80%'
'F' '80% ou mais'.
VARIABLE LABELS TX_RESP_Q104 'Para esta turma, qual o percentual do tempo de aula que voc� usualmente gastou realizando cada uma das seguintes atividades: Realizando atividades de ensino e aprendizagem'. 
VALUE LABELS TX_RESP_Q104
'A' 'Menos de 10%'
'B' 'De 10% a menos 20%'
'C' 'De 20% a menos de 40%'
'D' 'De 40% a menos de 60%'
'E' 'De 60% a menos de 80%'
'F' '80% ou mais'.
VARIABLE LABELS TX_RESP_Q105 'Nesta turma, qual disciplina voc� leciona?'. 
VALUE LABELS TX_RESP_Q105
'A' 'L�ngua Portuguesa'
'B' 'Matem�tica'
'C' 'Mais de uma disciplina'.
VARIABLE LABELS TX_RESP_Q106 'Quanto do conte�do previsto voc� conseguiu desenvolver com os alunos desta turma neste ano?'. 
VALUE LABELS TX_RESP_Q106
'A' 'Menos de 20%'
'B' 'De 20% a menos de 40%'
'C' 'De 40% a menos de 60%'
'D' 'De 60% a menos de 80%'
'E' '80% ou mais'.
VARIABLE LABELS TX_RESP_Q107 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Propor dever de casa'. 
VALUE LABELS TX_RESP_Q107
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q108 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Corrigir com os alunos o dever de casa'. 
VALUE LABELS TX_RESP_Q108
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q109 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Desenvolver atividades em grupo, em sala de aula, para que os alunos busquem solu��es de problemas'. 
VALUE LABELS TX_RESP_Q109
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q110 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Desenvolver projetos tem�ticos com o objetivo de aprimorar as habilidades de trabalho em equipe'. 
VALUE LABELS TX_RESP_Q110
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q111 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Solicitar que os alunos copiem textos e atividades do livro did�tico ou do quadro negro (lousa)'. 
VALUE LABELS TX_RESP_Q111
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q112 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Estimular os alunos a expressarem suas opini�es e a desenvolverem argumentos a partir de temas diversos'. 
VALUE LABELS TX_RESP_Q112
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q113 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Propor situa��es de aprendizagem que sejam familiares ou de interesse dos alunos'. 
VALUE LABELS TX_RESP_Q113
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q114 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Promover discuss�es a partir de textos de jornais ou revistas'. 
VALUE LABELS TX_RESP_Q114
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q115 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Propor atividades gramaticais relacionadas aos textos de jornais ou revistas'. 
VALUE LABELS TX_RESP_Q115
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q116 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Promover a leitura e discuss�o de contos, cr�nicas, poesias ou romances'. 
VALUE LABELS TX_RESP_Q116
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q117 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Utilizar contos, cr�nicas, poesias ou romances para exercitar aspectos da gram�tica'. 
VALUE LABELS TX_RESP_Q117
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q118 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Utilizar revistas em quadrinhos como instrumento de aprendizado'. 
VALUE LABELS TX_RESP_Q118
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q119 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Fixar os nomes de conceitos gramaticais e lingu�sticos'. 
VALUE LABELS TX_RESP_Q119
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q120 'Indique a frequ�ncia com a que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Fazer exerc�cios para fixar procedimentos e regras'. 
VALUE LABELS TX_RESP_Q120
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q121 'Indique a frequ�ncia com a que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Discutir se os resultados num�ricos obtidos na solu��o de um problema s�o adequados � situa��o apresentada'. 
VALUE LABELS TX_RESP_Q121
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q122 'Indique a frequ�ncia com a que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Discutir diferentes modos para resolver problemas e c�lculos'. 
VALUE LABELS TX_RESP_Q122
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q123 'Indique a frequ�ncia com a que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Lidar com temas que aparecem em jornais e/ou revistas, discutindo a rela��o dos temas com a matem�tica'. 
VALUE LABELS TX_RESP_Q123
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q124 'Indique a frequ�ncia com a que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Fornecer esquemas/regras que permitem obter as respostas certas dos c�lculos e problemas'. 
VALUE LABELS TX_RESP_Q124
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q125 'Indique a frequ�ncia com a que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Experimentar diferentes a��es (coletar informa��es, recortar, explorar, manipular etc.) para resolver problemas'. 
VALUE LABELS TX_RESP_Q125
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.




