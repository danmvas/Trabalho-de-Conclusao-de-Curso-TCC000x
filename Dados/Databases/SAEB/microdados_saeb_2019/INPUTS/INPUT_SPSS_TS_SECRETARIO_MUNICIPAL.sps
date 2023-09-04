/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Instrumentos e medidas 		                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_SECRETARIO_MUNICIPAL.sps                                        */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DO QUESTION�RIO DO SECRE�RIO   */
/*                     MUNICIPAL DE EDUCA��O DO SAEB 2019                                     */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* TS_SECRETARIO_MUNICIPAL.CSV no diret�rio C:\ do computador.	                	 */
/*							 */ 
/* Ao terminar esses procedimentos execute o programa salvo utilizando                      */
/* as vari�veis de interesse.                                                                                       */
/******************************************************************************************************/
/*                                                   ATEN��O                                                          */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os r�tulos das vari�veis de	                    */
/* acordo com o dicion�rio de dados que comp�em os microdados. Para abrir                */
/* os dados sem os r�tulos basta importar diretamente no SPSS.		  */
/* 							  */                                                            
/* Algumas vari�veis do question�rio do Diretor envolvem regras de valida��o e                */
/* depend�ncia. O entendimento dessas quest�es exigem consulta ao Dicion�rio de       */
/* Vari�veis para conhecer as regras de cada quest�o.                                                  */
/* 							  */
/*******************************************************************************************************/


GET DATA
/TYPE=TXT
/FILE="C:\TS_SECRETARIO_MUNICIPAL.csv"
/DELCASE=LINE
/DELIMITERS=","
/ARRANGEMENT=DELIMITED
/FIRSTCASE=2
/IMPORTCASE=ALL
/VARIABLES=
ID_SAEB F4.0
ID_REGIAO F1.0
ID_UF F2.0
TX_RESP_Q001 A8
TX_RESP_Q002 F4.0
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
TX_RESP_Q128 A8
TX_RESP_Q129 A8
TX_RESP_Q130 A8
TX_RESP_Q131 A8
TX_RESP_Q132 A8
TX_RESP_Q133 A8
TX_RESP_Q134 A8
TX_RESP_Q135 A8
TX_RESP_Q136 A8
TX_RESP_Q137 A8
TX_RESP_Q138 A8
TX_RESP_Q139 A8
TX_RESP_Q140 A8
TX_RESP_Q141 A8
TX_RESP_Q142 A8
TX_RESP_Q143 A8
TX_RESP_Q144 A8
TX_RESP_Q145 A8
TX_RESP_Q146 A8
TX_RESP_Q147 A8
TX_RESP_Q148 A8
TX_RESP_Q149 A8
TX_RESP_Q150 A8
TX_RESP_Q151 A8
TX_RESP_Q152 A8
TX_RESP_Q153 A8
TX_RESP_Q154 A8
TX_RESP_Q155 A8
TX_RESP_Q156 A8
TX_RESP_Q157 A8
TX_RESP_Q158 A8
TX_RESP_Q159 A8
TX_RESP_Q160 A8
TX_RESP_Q161 A8
TX_RESP_Q162 A8
TX_RESP_Q163 A8
TX_RESP_Q164 A8
TX_RESP_Q165 A8
TX_RESP_Q166 A8
TX_RESP_Q167 A8
TX_RESP_Q168 A8
TX_RESP_Q169 A8
TX_RESP_Q170 A8
TX_RESP_Q171 A8
TX_RESP_Q172 A8
TX_RESP_Q173 A8
TX_RESP_Q174 A8
TX_RESP_Q175 A8
TX_RESP_Q176 A8
TX_RESP_Q177 A8
TX_RESP_Q178 A8
TX_RESP_Q179 A8
TX_RESP_Q180 A8
TX_RESP_Q181 A8
TX_RESP_Q182 A8
TX_RESP_Q183 A8
TX_RESP_Q184 A8
TX_RESP_Q185 A8
TX_RESP_Q186 A8
TX_RESP_Q187 A8
TX_RESP_Q188 A8
TX_RESP_Q189 A8
TX_RESP_Q190 A8
TX_RESP_Q191 A8
TX_RESP_Q192 A8
TX_RESP_Q193 A8
TX_RESP_Q194 A8
TX_RESP_Q195 A8
TX_RESP_Q196 A8
TX_RESP_Q197 A8
TX_RESP_Q198 A8
TX_RESP_Q199 A8
TX_RESP_Q200 A8
TX_RESP_Q201 A8
TX_RESP_Q202 A8
TX_RESP_Q203 A8
TX_RESP_Q204 A8
TX_RESP_Q205 A8
TX_RESP_Q206 A8
TX_RESP_Q207 A8
TX_RESP_Q208 A8
TX_RESP_Q209 A8
TX_RESP_Q210 A8
TX_RESP_Q211 A8
TX_RESP_Q212 A8
TX_RESP_Q213 A8
TX_RESP_Q214 A8
TX_RESP_Q215 A8
TX_RESP_Q216 A8
TX_RESP_Q217 A8.

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
VARIABLE LABELS TX_RESP_Q001 'Qual � o seu sexo?'.
VALUE LABELS TX_RESP_Q001
'A' 'Masculino'
'B' 'Feminino'.
VARIABLE LABELS TX_RESP_Q002 'Qual � a sua idade? '.
VARIABLE LABELS TX_RESP_Q003 'Qual � a sua cor ou ra�a?'.
VALUE LABELS TX_RESP_Q003
'A' 'Branca'
'B' 'Preta'
'C' 'Parda'
'D' 'Amarela'
'E' 'Ind�gena'
'F' 'N�o quero declarar'.
VARIABLE LABELS TX_RESP_Q004 'Qual � o seu mais alto n�vel de escolaridade conclu�do?'.
VALUE LABELS TX_RESP_Q004
'A' 'Ensino Fundamental'
'B' 'Ensino M�dio'
'C' 'Gradua��o'
'D' 'Especializa��o'
'E' 'Mestrado'
'F' 'Doutorado'.
VARIABLE LABELS TX_RESP_Q005 'Esta forma��o � relacionada ao campo educacional? '.
VALUE LABELS TX_RESP_Q005
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q006 'Al�m de Secret�rio(a) da Educa��o, voc� exerceu alguma outra fun��o na �rea de educa��o?'.
VALUE LABELS TX_RESP_Q006
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q007 'Indique as fun��es que exerceu: Professor (a) da Educa��o B�sica '.
VALUE LABELS TX_RESP_Q007
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q008 'Indique as fun��es que exerceu: Professor (a) da Educa��o Superior '.
VALUE LABELS TX_RESP_Q008
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q009 'Indique as fun��es que exerceu: Membro de equipe pedag�gica da escola '.
VALUE LABELS TX_RESP_Q009
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q010 'Indique as fun��es que exerceu: Diretor (a) de escola '.
VALUE LABELS TX_RESP_Q010
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q011 'Indique as fun��es que exerceu: Equipe t�cnica da Secretaria de Educa��o '.
VALUE LABELS TX_RESP_Q011
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q012 'Indique as fun��es que exerceu: Secret�rio(a) de Educa��o em outra rede '.
VALUE LABELS TX_RESP_Q012
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q013 'Indique as fun��es que exerceu: Outros '.
VALUE LABELS TX_RESP_Q013
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q014 'Qual o seu tempo total de experi�ncia, em anos, na �rea de educa��o? '.
VARIABLE LABELS TX_RESP_Q015 'Qual o seu tempo de experi�ncia como Secret�rio(a) de Educa��o? Anos '.
VARIABLE LABELS TX_RESP_Q016 'Qual o seu tempo de experi�ncia como Secret�rio(a) de Educa��o? Meses '.
VARIABLE LABELS TX_RESP_Q017 'Voc� ocupa o cargo de Secret�rio(a) de Educa��o desde o in�cio da atual gest�o?'.
VALUE LABELS TX_RESP_Q017
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q018 'Al�m de atividades na �rea da educa��o, voc� exerce outra atividade profissional?'.
VALUE LABELS TX_RESP_Q018
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q019 'Sobre a organiza��o e planejamento da educa��o, o munic�pio possui: Sistema Municipal de Ensino?'.
VALUE LABELS TX_RESP_Q019
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q020 'Sobre a organiza��o e planejamento da educa��o, o munic�pio possui: Plano Municipal de Educa��o?'.
VALUE LABELS TX_RESP_Q020
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q021 'Sobre a organiza��o e planejamento da educa��o, o munic�pio possui: F�rum Permanente de Educa��o?'.
VALUE LABELS TX_RESP_Q021
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q022 'Quantos servidores/funcion�rios est�o lotados na sede da Secretaria de Educa��o?'.
VARIABLE LABELS TX_RESP_Q023 'Quantos servidores/funcion�rios lotados na sede da Secretaria de Educa��o est�o dedicados EXCLUSIVAMENTE � Educa��o infantil?'.
VARIABLE LABELS TX_RESP_Q024 'Quantos servidores/funcion�rios lotados na sede da Secretaria de Educa��o est�o dedicados EXCLUSIVAMENTE ao Ensino Fundamental?'.
VARIABLE LABELS TX_RESP_Q025 'Selecione quais despesas a Secretaria de Educa��o tem autonomia para ordenar: Aperfei�oamento de pessoal docente e demais profissionais'.
VALUE LABELS TX_RESP_Q025
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q026 'Selecione quais despesas a Secretaria de Educa��o tem autonomia para ordenar: Aquisi��o e manuten��o de equipamentos'.
VALUE LABELS TX_RESP_Q026
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q027 'Selecione quais despesas a Secretaria de Educa��o tem autonomia para ordenar: Compra de material did�tico'.
VALUE LABELS TX_RESP_Q027
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q028 'Selecione quais despesas a Secretaria de Educa��o tem autonomia para ordenar: Concess�o de bolsas de estudo para estudantes'.
VALUE LABELS TX_RESP_Q028
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q029 'Selecione quais despesas a Secretaria de Educa��o tem autonomia para ordenar: Constru��o de escolas'.
VALUE LABELS TX_RESP_Q029
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q030 'Selecione quais despesas a Secretaria de Educa��o tem autonomia para ordenar: Manuten��o e conserva��o das escolas'.
VALUE LABELS TX_RESP_Q030
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q031 'Selecione quais despesas a Secretaria de Educa��o tem autonomia para ordenar: Merenda escolar'.
VALUE LABELS TX_RESP_Q031
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q032 'Selecione quais despesas a Secretaria de Educa��o tem autonomia para ordenar: Remunera��o de pessoal docente e demais profissionais'.
VALUE LABELS TX_RESP_Q032
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q033 'Selecione quais despesas a Secretaria de Educa��o tem autonomia para ordenar: Transporte escolar'.
VALUE LABELS TX_RESP_Q033
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q034 'Selecione quais despesas a Secretaria de Educa��o tem autonomia para ordenar: Outros'.
VALUE LABELS TX_RESP_Q034
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q035 'A Secretaria de Educa��o desenvolve trabalhos em conjunto com: Servi�os de sa�de'.
VALUE LABELS TX_RESP_Q035
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q036 'A Secretaria de Educa��o desenvolve trabalhos em conjunto com: Servi�os de assist�ncia social'.
VALUE LABELS TX_RESP_Q036
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q037 'A Secretaria de Educa��o desenvolve trabalhos em conjunto com: Servi�os de seguran�a p�blica'.
VALUE LABELS TX_RESP_Q037
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q038 'A Secretaria de Educa��o desenvolve trabalhos em conjunto com: Minist�rio P�blico'.
VALUE LABELS TX_RESP_Q038
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q039 'A Secretaria de Educa��o desenvolve trabalhos em conjunto com: Outros'.
VALUE LABELS TX_RESP_Q039
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q040 'H� alguma legisla��o que regulamente a nomea��o dos diretores das escolas?'.
VALUE LABELS TX_RESP_Q040
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q041 'Quais crit�rios s�o utilizados para a escolha dos diretores das escolas? Livre indica��o pelos poderes p�blicos'.
VALUE LABELS TX_RESP_Q041
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q042 'Quais crit�rios s�o utilizados para a escolha dos diretores das escolas? Prova de conhecimentos'.
VALUE LABELS TX_RESP_Q042
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q043 'Quais crit�rios s�o utilizados para a escolha dos diretores das escolas? Tempo de servi�o'.
VALUE LABELS TX_RESP_Q043
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q044 'Quais crit�rios s�o utilizados para a escolha dos diretores das escolas? Titula��o acad�mica'.
VALUE LABELS TX_RESP_Q044
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q045 'Quais crit�rios s�o utilizados para a escolha dos diretores das escolas? Experi�ncia em gest�o'.
VALUE LABELS TX_RESP_Q045
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q046 'Quais crit�rios s�o utilizados para a escolha dos diretores das escolas? Curso de forma��o para gestores escolares'.
VALUE LABELS TX_RESP_Q046
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q047 'Quais crit�rios s�o utilizados para a escolha dos diretores das escolas? Listas de candidatos'.
VALUE LABELS TX_RESP_Q047
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q048 'Quais crit�rios s�o utilizados para a escolha dos diretores das escolas? Consulta p�blica/elei��o'.
VALUE LABELS TX_RESP_Q048
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q049 'As escolas do munic�pio adotam um sistema apostilado?'.
VALUE LABELS TX_RESP_Q049
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q050 'O Ensino Fundamental � oferecido em ciclos?'.
VALUE LABELS TX_RESP_Q050
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q051 'O munic�pio possui Conselho Municipal de Educa��o?'.
VALUE LABELS TX_RESP_Q051
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q052 'Indique quais fun��es s�o exercidas pelo Conselho Municipal de Educa��o: Consultiva '.
VALUE LABELS TX_RESP_Q052
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q053 'Indique quais fun��es s�o exercidas pelo Conselho Municipal de Educa��o: Normativa '.
VALUE LABELS TX_RESP_Q053
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q054 'Indique quais fun��es s�o exercidas pelo Conselho Municipal de Educa��o: Deliberativa '.
VALUE LABELS TX_RESP_Q054
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q055 'Indique quais fun��es s�o exercidas pelo Conselho Municipal de Educa��o: Fiscalizadora '.
VALUE LABELS TX_RESP_Q055
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q056 'Indique quais fun��es s�o exercidas pelo Conselho Municipal de Educa��o: Propositiva '.
VALUE LABELS TX_RESP_Q056
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q057 'Indique quais fun��es s�o exercidas pelo Conselho Municipal de Educa��o: Mobilizadora '.
VALUE LABELS TX_RESP_Q057
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q058 'Indique quais fun��es s�o exercidas pelo Conselho Municipal de Educa��o: N�o sei '.
VALUE LABELS TX_RESP_Q058
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q059 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Secretaria municipal - incluso Secret�rio(a) '.
VARIABLE LABELS TX_RESP_Q060 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Institui��es particulares '.
VARIABLE LABELS TX_RESP_Q061 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Diretores de escola de Ensino Fundamental '.
VARIABLE LABELS TX_RESP_Q062 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Diretores de institui��es de Educa��o Infantil '.
VARIABLE LABELS TX_RESP_Q063 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Professores de Ensino Fundamental '.
VARIABLE LABELS TX_RESP_Q064 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Professores de Educa��o Infantil '.
VARIABLE LABELS TX_RESP_Q065 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Professores de escolas particulares '.
VARIABLE LABELS TX_RESP_Q066 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Servidores das escolas '.
VARIABLE LABELS TX_RESP_Q067 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Pais de estudantes '.
VARIABLE LABELS TX_RESP_Q068 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Estudantes '.
VARIABLE LABELS TX_RESP_Q069 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Sindicatos e associa��es de docentes '.
VARIABLE LABELS TX_RESP_Q070 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: C�mara Municipal '.
VARIABLE LABELS TX_RESP_Q071 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Outros setores '.
VARIABLE LABELS TX_RESP_Q072 'Do total de membros do Conselho de Educa��o, quantos s�o eleitos? '.
VARIABLE LABELS TX_RESP_Q073 'O Secret�rio de Educa��o � o presidente do Conselho de Educa��o? '.
VALUE LABELS TX_RESP_Q073
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q074 'Quantas reuni�es foram realizadas pelo Conselho de Educa��o neste ano? '.
VARIABLE LABELS TX_RESP_Q075 'Indique os recursos dispon�veis para o funcionamento do Conselho de Educa��o: Sala pr�pria '.
VALUE LABELS TX_RESP_Q075
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q076 'Indique os recursos dispon�veis para o funcionamento do Conselho de Educa��o: Computador '.
VALUE LABELS TX_RESP_Q076
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q077 'Indique os recursos dispon�veis para o funcionamento do Conselho de Educa��o: Impressora '.
VALUE LABELS TX_RESP_Q077
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q078 'Indique os recursos dispon�veis para o funcionamento do Conselho de Educa��o: Acesso � internet '.
VALUE LABELS TX_RESP_Q078
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q079 'Indique os recursos dispon�veis para o funcionamento do Conselho de Educa��o: Transporte '.
VALUE LABELS TX_RESP_Q079
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q080 'Indique os recursos dispon�veis para o funcionamento do Conselho de Educa��o: Telefone '.
VALUE LABELS TX_RESP_Q080
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q081 'Indique os recursos dispon�veis para o funcionamento do Conselho de Educa��o: Di�rias '.
VALUE LABELS TX_RESP_Q081
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q082 'Indique os recursos dispon�veis para o funcionamento do Conselho de Educa��o: Dota��o or�ament�ria pr�pria '.
VALUE LABELS TX_RESP_Q082
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q083 'Indique os recursos dispon�veis para o funcionamento do Conselho de Educa��o: Apoio administrativo '.
VALUE LABELS TX_RESP_Q083
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q084 'Selecione quais atribui��es o Conselho de Educa��o possui: Solucionar d�vidas interpretativas sobre a legisla��o educacional '.
VALUE LABELS TX_RESP_Q084
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q085 'Selecione quais atribui��es o Conselho de Educa��o possui: Emitir parecer sobre a interpreta��o de normas '.
VALUE LABELS TX_RESP_Q085
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q086 'Selecione quais atribui��es o Conselho de Educa��o possui: Estabelecer normas para o ingresso dos alunos '.
VALUE LABELS TX_RESP_Q086
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q087 'Selecione quais atribui��es o Conselho de Educa��o possui: Estabelecer normas para autoriza��o de funcionamento das escolas '.
VALUE LABELS TX_RESP_Q087
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q088 'Selecione quais atribui��es o Conselho de Educa��o possui: Verificar o cumprimento do calend�rio letivo pelas escolas '.
VALUE LABELS TX_RESP_Q088
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q089 'Selecione quais atribui��es o Conselho de Educa��o possui: Verificar se as escolas conveniadas de educa��o infantil cumprem as diretrizes do munic�pio '.
VALUE LABELS TX_RESP_Q089
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q090 'Selecione quais atribui��es o Conselho de Educa��o possui: Sugerir medidas para aperfei�oamento profissional dos docentes '.
VALUE LABELS TX_RESP_Q090
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q091 'Selecione quais atribui��es o Conselho de Educa��o possui: Propor a��es para a diminui��o da repet�ncia '.
VALUE LABELS TX_RESP_Q091
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q092 'Selecione quais atribui��es o Conselho de Educa��o possui: Realizar reuni�es ampliadas para discutir assuntos educacionais '.
VALUE LABELS TX_RESP_Q092
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q093 'Selecione quais atribui��es o Conselho de Educa��o possui: Promover eventos '.
VALUE LABELS TX_RESP_Q093
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q094 'Neste ano foi realizada capacita��o para os Conselheiros de Educa��o? '.
VALUE LABELS TX_RESP_Q094
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q095 'H� Conselho de Acompanhamento e Controle Social do Fundeb ? CACS no seu munic�pio?'.
VALUE LABELS TX_RESP_Q095
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q096 'Neste ano foi realizada capacita��o para os membros do Conselho de Acompanhamento e Controle Social do Fundeb? '.
VALUE LABELS TX_RESP_Q096
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q097 'Indique os recursos dispon�veis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Sala pr�pria '.
VALUE LABELS TX_RESP_Q097
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q098 'Indique os recursos dispon�veis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Computador '.
VALUE LABELS TX_RESP_Q098
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q099 'Indique os recursos dispon�veis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Impressora '.
VALUE LABELS TX_RESP_Q099
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q100 'Indique os recursos dispon�veis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Acesso � internet '.
VALUE LABELS TX_RESP_Q100
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q101 'Indique os recursos dispon�veis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Transporte '.
VALUE LABELS TX_RESP_Q101
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q102 'Indique os recursos dispon�veis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Telefone '.
VALUE LABELS TX_RESP_Q102
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q103 'Indique os recursos dispon�veis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Di�rias '.
VALUE LABELS TX_RESP_Q103
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q104 'Indique os recursos dispon�veis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Dota��o or�ament�ria pr�pria '.
VALUE LABELS TX_RESP_Q104
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q105 'Indique os recursos dispon�veis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Apoio administrativo '.
VALUE LABELS TX_RESP_Q105
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q106 'H� no seu munic�pio Conselho de Alimenta��o Escolar?'.
VALUE LABELS TX_RESP_Q106
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q107 'Neste ano foi realizada capacita��o para os membros do Conselho de Alimenta��o Escolar? '.
VALUE LABELS TX_RESP_Q107
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q108 'Indique os recursos dispon�veis para o funcionamento do Conselho de Alimenta��o Escolar: Sala pr�pria '.
VALUE LABELS TX_RESP_Q108
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q109 'Indique os recursos dispon�veis para o funcionamento do Conselho de Alimenta��o Escolar: Computador '.
VALUE LABELS TX_RESP_Q109
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q110 'Indique os recursos dispon�veis para o funcionamento do Conselho de Alimenta��o Escolar: Impressora '.
VALUE LABELS TX_RESP_Q110
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q111 'Indique os recursos dispon�veis para o funcionamento do Conselho de Alimenta��o Escolar: Acesso � internet '.
VALUE LABELS TX_RESP_Q111
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q112 'Indique os recursos dispon�veis para o funcionamento do Conselho de Alimenta��o Escolar: Transporte '.
VALUE LABELS TX_RESP_Q112
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q113 'Indique os recursos dispon�veis para o funcionamento do Conselho de Alimenta��o Escolar: Telefone '.
VALUE LABELS TX_RESP_Q113
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q114 'Indique os recursos dispon�veis para o funcionamento do Conselho de Alimenta��o Escolar: Di�rias '.
VALUE LABELS TX_RESP_Q114
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q115 'Indique os recursos dispon�veis para o funcionamento do Conselho de Alimenta��o Escolar: Dota��o or�ament�ria pr�pria '.
VALUE LABELS TX_RESP_Q115
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q116 'Indique os recursos dispon�veis para o funcionamento do Conselho de Alimenta��o Escolar: Apoio administrativo '.
VALUE LABELS TX_RESP_Q116
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q117 'Desde 2014, o munic�pio realizou alguma Confer�ncia Municipal de Educa��o preparat�ria para a Confer�ncia Nacional de Educa��o (Conae)?'.
VALUE LABELS TX_RESP_Q117
'A' 'Sim.'
'B' 'N�o.'
'C' 'N�o sei.'.
VARIABLE LABELS TX_RESP_Q118 'A Secretaria possui institui��es de Educa��o Infantil sob sua responsabilidade direta ou indireta?'.
VALUE LABELS TX_RESP_Q118
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q119 'Com rela��o � EDUCA��O INFANTIL, a Secretaria possui: C�lculo da demanda por vagas? '.
VALUE LABELS TX_RESP_Q119
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q120 'Com rela��o � EDUCA��O INFANTIL, a Secretaria possui: Programa para garantia de acesso? '.
VALUE LABELS TX_RESP_Q120
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q121 'Com rela��o � EDUCA��O INFANTIL, a Secretaria possui: Supervis�o escolar? '.
VALUE LABELS TX_RESP_Q121
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q122 'Com rela��o � EDUCA��O INFANTIL, a Secretaria possui: Programa de forma��o de professores? '.
VALUE LABELS TX_RESP_Q122
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q123 'Com rela��o � EDUCA��O INFANTIL, a Secretaria possui: Busca ativa de crian�as? '.
VALUE LABELS TX_RESP_Q123
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q124 'Com rela��o � EDUCA��O INFANTIL, a Secretaria possui: Comit� Intersetorial de Pol�ticas P�blicas para a Primeira Inf�ncia? '.
VALUE LABELS TX_RESP_Q124
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q125 'Com rela��o � EDUCA��O INFANTIL, a Secretaria possui: Curr�culo Municipal para a Educa��o Infantil? '.
VALUE LABELS TX_RESP_Q125
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q126 'A Secretaria firma conv�nios com institui��es para o atendimento de: Creche - Crian�as de 0 a 3 anos? '.
VALUE LABELS TX_RESP_Q126
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q127 'A Secretaria firma conv�nios com institui��es para o atendimento de: Pr�-escola - Crian�as 4 a 5 anos? '.
VALUE LABELS TX_RESP_Q127
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q128 'As escolas conveniadas s�o selecionadas atrav�s de chamada p�blica? '.
VALUE LABELS TX_RESP_Q128
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q129 'Existem normas para o funcionamento das institui��es conveniadas? '.
VALUE LABELS TX_RESP_Q129
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q130 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Espa�o f�sico: Poder P�blico/Secretaria de Educa��o. '.
VALUE LABELS TX_RESP_Q130
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q131 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Espa�o f�sico: Escolas/Institui��es conveniadas. '.
VALUE LABELS TX_RESP_Q131
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q132 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Manuten��o de espa�o f�sico: Poder P�blico/Secretaria de Educa��o. '.
VALUE LABELS TX_RESP_Q132
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q133 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Manuten��o de espa�o f�sico: Escolas/Institui��es conveniadas. '.
VALUE LABELS TX_RESP_Q133
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q134 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Sele��o de docentes: Poder P�blico/Secretaria de Educa��o. '.
VALUE LABELS TX_RESP_Q134
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q135 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Sele��o de docentes: Escolas/Institui��es conveniadas. '.
VALUE LABELS TX_RESP_Q135
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q136 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Pagamento de docentes: Poder P�blico/Secretaria de Educa��o. '.
VALUE LABELS TX_RESP_Q136
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q137 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Pagamento de docentes: Escolas/Institui��es conveniadas. '.
VALUE LABELS TX_RESP_Q137
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q138 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Capacita��o de docentes: Poder P�blico/Secretaria de Educa��o. '.
VALUE LABELS TX_RESP_Q138
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q139 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Capacita��o de docentes: Escolas/Institui��es conveniadas. '.
VALUE LABELS TX_RESP_Q139
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q140 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Fornecimento de merenda escolar: Poder P�blico/Secretaria de Educa��o. '.
VALUE LABELS TX_RESP_Q140
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q141 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Fornecimento de merenda escolar: Escolas/Institui��es conveniadas. '.
VALUE LABELS TX_RESP_Q141
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q142 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Transporte escolar: Poder P�blico/Secretaria de Educa��o. '.
VALUE LABELS TX_RESP_Q142
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q143 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Transporte escolar: Escolas/Institui��es conveniadas. '.
VALUE LABELS TX_RESP_Q143
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q144 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Materiais did�ticos: Poder P�blico/Secretaria de Educa��o. '.
VALUE LABELS TX_RESP_Q144
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q145 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Materiais did�ticos: Escolas/Institui��es conveniadas. '.
VALUE LABELS TX_RESP_Q145
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q146 'A Secretaria possui escolas de Ensino Fundamental?'.
VALUE LABELS TX_RESP_Q146
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q147 'Com rela��o ao Ensino Fundamental, a Secretaria possui: C�lculo da demanda por vagas? '.
VALUE LABELS TX_RESP_Q147
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q148 'Com rela��o ao Ensino Fundamental, a Secretaria possui: Programa de forma��o de professores? '.
VALUE LABELS TX_RESP_Q148
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q149 'Com rela��o ao Ensino Fundamental, a Secretaria possui: Busca ativa de crian�as e jovens? '.
VALUE LABELS TX_RESP_Q149
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q150 'Com rela��o ao Ensino Fundamental, a Secretaria possui: Curr�culo Municipal? '.
VALUE LABELS TX_RESP_Q150
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q151 'A Secretaria possui escolas de Ensino M�dio?'.
VALUE LABELS TX_RESP_Q151
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q152 'Com rela��o ao Ensino M�dio, a Secretaria possui: C�lculo da demanda por vagas? '.
VALUE LABELS TX_RESP_Q152
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q153 'Com rela��o ao Ensino M�dio, a Secretaria possui: Programa de forma��o de professores? '.
VALUE LABELS TX_RESP_Q153
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q154 'Com rela��o ao Ensino M�dio, a Secretaria possui: Busca ativa de jovens? '.
VALUE LABELS TX_RESP_Q154
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q155 'Com rela��o ao Ensino M�dio, a Secretaria possui: Curr�culo Municipal? '.
VALUE LABELS TX_RESP_Q155
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q156 'A Secretaria utiliza os resultados do IDEB?'.
VALUE LABELS TX_RESP_Q156
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q157 'De que forma os resultados s�o utilizados? Planejamento das a��es educacionais '.
VALUE LABELS TX_RESP_Q157
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q158 'De que forma os resultados s�o utilizados? Promo��o de debates sobre a educa��o '.
VALUE LABELS TX_RESP_Q158
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q159 'De que forma os resultados s�o utilizados? Divulga��o de informa��es para a sociedade '.
VALUE LABELS TX_RESP_Q159
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q160 'De que forma os resultados s�o utilizados? Subs�dios para a forma��o continuada de professores '.
VALUE LABELS TX_RESP_Q160
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q161 'De que forma os resultados s�o utilizados? Implanta��o de pol�ticas para redu��o da repet�ncia '.
VALUE LABELS TX_RESP_Q161
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q162 'De que forma os resultados s�o utilizados? Revis�o ou cria��o de orienta��es curriculares '.
VALUE LABELS TX_RESP_Q162
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q163 'De que forma os resultados s�o utilizados? Subs�dios para a avalia��o de programas ou projetos da Secretaria de Educa��o '.
VALUE LABELS TX_RESP_Q163
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q164 'De que forma os resultados s�o utilizados? Produ��o de materiais did�ticos e pedag�gicos '.
VALUE LABELS TX_RESP_Q164
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q165 'De que forma os resultados s�o utilizados? Recompensa para escolas com melhores resultados '.
VALUE LABELS TX_RESP_Q165
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q166 'De que forma os resultados s�o utilizados? Aux�lio para unidades escolares com resultados inferiores '.
VALUE LABELS TX_RESP_Q166
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q167 'De que forma os resultados s�o utilizados? Subs�dios para pagamento de bonifica��o para professores '.
VALUE LABELS TX_RESP_Q167
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q168 'De que forma os resultados s�o utilizados? Estabelecimento de metas de desempenho nos testes de profici�ncia '.
VALUE LABELS TX_RESP_Q168
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q169 'De que forma os resultados s�o utilizados? Monitoramento das escolas '.
VALUE LABELS TX_RESP_Q169
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q170 'De que forma os resultados s�o utilizados? Cria��o de crit�rios para remanejamento de diretores '.
VALUE LABELS TX_RESP_Q170
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q171 'De que forma os resultados s�o utilizados? Outros '.
VALUE LABELS TX_RESP_Q171
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q172 'A Secretaria orienta as escolas a prepararem seus alunos para as avalia��es externas?'.
VALUE LABELS TX_RESP_Q172
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q173 'A Secretaria Municipal realiza avalia��o externa das escolas, al�m daquelas promovidas pelos governos estadual ou federal?'.
VALUE LABELS TX_RESP_Q173
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q174 'Indique a periodicidade da avalia��o '.
VALUE LABELS TX_RESP_Q174
'A' 'Mensal'
'B' 'Bimestral'
'C' 'Trimestral'
'D' 'Semestral'
'E' 'Anual'
'F' 'Bianual'
'G' 'Outra'.
VARIABLE LABELS TX_RESP_Q175 'Indique as etapas da Educa��o B�sica que s�o avaliadas pela Secretaria: Creche '.
VALUE LABELS TX_RESP_Q175
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q176 'Indique as etapas da Educa��o B�sica que s�o avaliadas pela Secretaria: Pr�-escola '.
VALUE LABELS TX_RESP_Q176
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q177 'Indique as etapas da Educa��o B�sica que s�o avaliadas pela Secretaria: Ensino Fundamental - Anos iniciais '.
VALUE LABELS TX_RESP_Q177
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q178 'Indique as etapas da Educa��o B�sica que s�o avaliadas pela Secretaria: Ensino Fundamental - Anos finais '.
VALUE LABELS TX_RESP_Q178
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q179 'Indique as etapas da Educa��o B�sica que s�o avaliadas pela Secretaria: Ensino M�dio '.
VALUE LABELS TX_RESP_Q179
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q180 'Indique o que � avaliado: Instala��es e equipamentos '.
VALUE LABELS TX_RESP_Q180
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q181 'Indique o que � avaliado: Projeto pedag�gico '.
VALUE LABELS TX_RESP_Q181
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q182 'Indique o que � avaliado: Desenvolvimento dos alunos '.
VALUE LABELS TX_RESP_Q182
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q183 'Indique o que � avaliado: Desempenho dos alunos '.
VALUE LABELS TX_RESP_Q183
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q184 'Indique o que � avaliado: Desempenho dos professores '.
VALUE LABELS TX_RESP_Q184
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q185 'Indique o que � avaliado: Outros '.
VALUE LABELS TX_RESP_Q185
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q186 'Indique quais profissionais vinculados � sua Secretaria possuem plano de carreira: Auxiliares e assistentes da Educa��o Infantil'.
VALUE LABELS TX_RESP_Q186
'A' 'Sim.'
'B' 'N�o.'
'C' 'N�o se aplica.'.
VARIABLE LABELS TX_RESP_Q187 'Indique quais profissionais vinculados � sua Secretaria possuem plano de carreira: Professores(as) da Educa��o Infantil:'.
VALUE LABELS TX_RESP_Q187
'A' 'Sim.'
'B' 'N�o.'
'C' 'N�o se aplica.'.
VARIABLE LABELS TX_RESP_Q188 'Indique quais profissionais vinculados � sua Secretaria possuem plano de carreira: Professores(as) do Ensino Fundamental:'.
VALUE LABELS TX_RESP_Q188
'A' 'Sim.'
'B' 'N�o.'
'C' 'N�o se aplica.'.
VARIABLE LABELS TX_RESP_Q189 'Indique quais profissionais vinculados � sua Secretaria possuem plano de carreira: Professores(as) do Ensino M�dio:'.
VALUE LABELS TX_RESP_Q189
'A' 'Sim.'
'B' 'N�o.'
'C' 'N�o se aplica.'.
VARIABLE LABELS TX_RESP_Q190 'Indique quais profissionais vinculados � sua Secretaria possuem plano de carreira: Profissionais n�o-docentes'.
VALUE LABELS TX_RESP_Q190
'A' 'Sim.'
'B' 'N�o.'
'C' 'N�o se aplica.'.
VARIABLE LABELS TX_RESP_Q191 'Quais as jornadas de trabalho semanais dos(as) professores(as)? At� 20 horas semanais.'.
VALUE LABELS TX_RESP_Q191
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q192 'Quais as jornadas de trabalho semanais dos(as) professores(as)? De 21 a 30 horas semanais.'.
VALUE LABELS TX_RESP_Q192
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q193 'Quais as jornadas de trabalho semanais dos(as) professores(as)? De 31 a 40 horas semanais.'.
VALUE LABELS TX_RESP_Q193
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q194 'Quais as jornadas de trabalho semanais dos(as) professores(as)? Mais de 40 horas semanais.'.
VALUE LABELS TX_RESP_Q194
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q195 'O plano de carreira prev� o limite m�ximo de 2/3 da jornada do(a) professor(a) em sala de aula?'.
VALUE LABELS TX_RESP_Q195
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q196 'Para TODOS(AS) os(as) professores(as) com jornada de trabalho de 40 horas semanais o VENCIMENTO B�SICO INICIAL � igual ou superior a R$ 2.557,74 mensais?'.
VALUE LABELS TX_RESP_Q196
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q197 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Tempo de efetivo exerc�cio no cargo '.
VALUE LABELS TX_RESP_Q197
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q198 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Qualifica��o '.
VALUE LABELS TX_RESP_Q198
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q199 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Titula��o '.
VALUE LABELS TX_RESP_Q199
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q200 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Assiduidade '.
VALUE LABELS TX_RESP_Q200
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q201 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Avalia��o de desempenho '.
VALUE LABELS TX_RESP_Q201
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q202 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Prova de conhecimentos para professores '.
VALUE LABELS TX_RESP_Q202
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q203 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Desempenho dos alunos em avalia��o externa '.
VALUE LABELS TX_RESP_Q203
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q204 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Outros '.
VALUE LABELS TX_RESP_Q204
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q205 'A remunera��o dos(as) professores(as) de Educa��o Infantil, comparada com a dos(as) professores(as) com o mesmo n�vel de forma��o que atuam no Ensino Fundamental:'.
VALUE LABELS TX_RESP_Q205
'A' '� inferior � dos(as) professores(as) de Ensino Fundamental.'
'B' '� equivalente � dos(as) professores(as) de Ensino Fundamental.'
'C' '� superior � dos(as) professores(as) de Ensino Fundamental.'
'D' 'N�o existe este profissional na rede.'.
VARIABLE LABELS TX_RESP_Q206 'A remunera��o dos(as) professores(as) de Ensino M�dio, comparada com a dos(as) professores(as) com o mesmo n�vel de forma��o que atuam no Ensino Fundamental:'.
VALUE LABELS TX_RESP_Q206
'A' '� inferior � dos(as) professores(as) de Ensino Fundamental.'
'B' '� equivalente � dos(as) professores(as) de Ensino Fundamental.'
'C' '� superior � dos(as) professores(as) de Ensino Fundamental.'
'D' 'N�o existe este profissional na rede.'.
VARIABLE LABELS TX_RESP_Q207 'Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede? Conte�do e compreens�o dos conceitos da(s) �rea(s) de ensino:'.
VALUE LABELS TX_RESP_Q207
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q208 'Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede? Avalia��o da aprendizagem:'.
VALUE LABELS TX_RESP_Q208
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q209 'Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede? Avalia��o em larga escala:'.
VALUE LABELS TX_RESP_Q209
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q210 'Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede? Metodologias de ensino:'.
VALUE LABELS TX_RESP_Q210
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q211 'Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede? Conhecimento do curr�culo:'.
VALUE LABELS TX_RESP_Q211
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q212 'Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede? Gest�o da sala de aula:'.
VALUE LABELS TX_RESP_Q212
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q213 'Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede? Educa��o inclusiva:'.
VALUE LABELS TX_RESP_Q213
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q214 'Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede? Novas tecnologias:'.
VALUE LABELS TX_RESP_Q214
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q215 'Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede? Gest�o e administra��o escolar:'.
VALUE LABELS TX_RESP_Q215
'A' 'Sim'
'B' 'N�o'.
VARIABLE LABELS TX_RESP_Q216 'Sobre este question�rio, avalie: Facilidade de preenchimento das respostas:'.
VALUE LABELS TX_RESP_Q216
'A' 'Muito dif�cil'
'B' 'Dif�cil'
'C' 'Nem f�cil e nem dif�cil'
'D' 'F�cil'
'E' 'Muito f�cil'.
VARIABLE LABELS TX_RESP_Q217 'Sobre este question�rio, avalie: A compreens�o dos termos utilizados no question�rio'.
VALUE LABELS TX_RESP_Q217
'A' 'Muito dif�cil'
'B' 'Dif�cil'
'C' 'Nem f�cil e nem dif�cil'
'D' 'F�cil'
'E' 'Muito f�cil'.
