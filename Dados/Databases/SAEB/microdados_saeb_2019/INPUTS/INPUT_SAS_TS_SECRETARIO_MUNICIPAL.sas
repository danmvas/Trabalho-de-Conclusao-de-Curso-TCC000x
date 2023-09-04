/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                */ 
/*                                   			                                       */
/*  Coordena��o-Geral de Instrumentos de Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_SECRETARIO_MUNICIPAL                                     */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:   PROGRAMA PARA LEITURA DO QUESTION�RIO DO SECRETARIO MUNICIPAL         */
/*				 DE EDUCA��O DO SAEB 2019                                              */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, � necess�rio salvar este programa e o arquivo             */
/* TS_SECRETARIO_MUNICIPAL.CSV no diret�rio C:\ do computador.	                       */
/*							                                                           */ 
/* Ao terminar esses procedimentos, execute o programa salvo utilizando                */
/* as vari�veis de interesse.                                                          */
/***************************************************************************************/
/*                                  ATEN��O                                            */ 
/***************************************************************************************/
/* Este programa abre a base de dados com os r�tulos das vari�veis de	               */
/* acordo com o dicion�rio de dados que comp�e os microdados. Para abrir               */
/* os dados sem os r�tulos, basta importar diretamente no SAS.                         */
/* 							                                                           */                                                            
/* Algumas vari�veis do question�rio do Diretor envolvem regras de valida��o e         */
/* depend�ncia. O entendimento dessas quest�es exigem consulta ao Dicion�rio de        */
/* Vari�veis para conhecer as regras de cada quest�o.                                  */
/* 							                                                           */                                                           
/***************************************************************************************/

proc format;	

value ID_REGIAO
1 = 'Norte'
2 = 'Nordeste'
3 = 'Sudeste'
4 = 'Sul'
5 = 'Centro-Oeste';

value ID_UF
11 = 'RO'
12 = 'AC'
13 = 'AM'
14 = 'RR'
15 = 'PA'
16 = 'AP'
17 = 'TO'
21 = 'MA'
22 = 'PI'
23 = 'CE'
24 = 'RN'
25 = 'PB'
26 = 'PE'
27 = 'AL'
28 = 'SE'
29 = 'BA'
31 = 'MG'
32 = 'ES'
33 = 'RJ'
35 = 'SP'
41 = 'PR'
42 = 'SC'
43 = 'RS'
50 = 'MS'
51 = 'MT'
52 = 'GO'
53 = 'DF';

value $QGMum
A = 'Masculino'
B = 'Feminino';

value $QGMtres
A = 'Branca'
B = 'Preta'
C = 'Parda'
D = 'Amarela'
E = 'Ind�gena'
F = 'N�o quero declarar';

value $QGMquatro
A = 'Ensino Fundamental'
B = 'Ensino M�dio'
C = 'Gradua��o'
D = 'Especializa��o'
E = 'Mestrado'
F = 'Doutorado';

value $QGMcinco
A = 'Sim'
B = 'N�o';

value $QGMseis
A = 'Sim'
B = 'N�o';

value $QGMsete
A = 'Sim'
B = 'N�o';

value $QGMoito
A = 'Sim'
B = 'N�o';

value $QGMnove
A = 'Sim'
B = 'N�o';

value $QGMdez
A = 'Sim'
B = 'N�o';

value $QGMonze
A = 'Sim'
B = 'N�o';

value $QGMdoze
A = 'Sim'
B = 'N�o';

value $QGMtreze
A = 'Sim'
B = 'N�o';

value $QGMdezessete
A = 'Sim'
B = 'N�o';

value $QGMdezoito
A = 'Sim'
B = 'N�o';

value $QGMdezenove
A = 'Sim'
B = 'N�o';

value $QGMvinte
A = 'Sim'
B = 'N�o';

value $QGMvinteum
A = 'Sim'
B = 'N�o';

value $QGMvintecinco
A = 'Sim'
B = 'N�o';

value $QGMvinteseis
A = 'Sim'
B = 'N�o';

value $QGMvintesete
A = 'Sim'
B = 'N�o';

value $QGMvinteoito
A = 'Sim'
B = 'N�o';

value $QGMvintenove
A = 'Sim'
B = 'N�o';

value $QGMtrinta
A = 'Sim'
B = 'N�o';

value $QGMtrintaum
A = 'Sim'
B = 'N�o';

value $QGMtrintadois
A = 'Sim'
B = 'N�o';

value $QGMtrintatres
A = 'Sim'
B = 'N�o';

value $QGMtrintaquatro
A = 'Sim'
B = 'N�o';

value $QGMtrintacinco
A = 'Sim'
B = 'N�o';

value $QGMtrintaseis
A = 'Sim'
B = 'N�o';

value $QGMtrintasete
A = 'Sim'
B = 'N�o';

value $QGMtrintaoito
A = 'Sim'
B = 'N�o';

value $QGMtrintanove
A = 'Sim'
B = 'N�o';

value $QGMquarenta
A = 'Sim'
B = 'N�o';

value $QGMquarentaum
A = 'Sim'
B = 'N�o';

value $QGMquarentadois
A = 'Sim'
B = 'N�o';

value $QGMquarentatres
A = 'Sim'
B = 'N�o';

value $QGMquarentaquatro
A = 'Sim'
B = 'N�o';

value $QGMquarentacinco
A = 'Sim'
B = 'N�o';

value $QGMquarentaseis
A = 'Sim'
B = 'N�o';

value $QGMquarentasete
A = 'Sim'
B = 'N�o';

value $QGMquarentaoito
A = 'Sim'
B = 'N�o';

value $QGMquarentanove
A = 'Sim'
B = 'N�o';

value $QGMcinquenta
A = 'Sim'
B = 'N�o';

value $QGMcinquentaum
A = 'Sim'
B = 'N�o';

value $QGMcinquentadois
A = 'Sim'
B = 'N�o';

value $QGMcinquentatres
A = 'Sim'
B = 'N�o';

value $QGMcinquentaquatro
A = 'Sim'
B = 'N�o';

value $QGMcinquentacinco
A = 'Sim'
B = 'N�o';

value $QGMcinquentaseis
A = 'Sim'
B = 'N�o';

value $QGMcinquentasete
A = 'Sim'
B = 'N�o';

value $QGMcinquentaoito
A = 'Sim'
B = 'N�o';

value $QGMsetentatres
A = 'Sim'
B = 'N�o';

value $QGMsetentacinco
A = 'Sim'
B = 'N�o';

value $QGMsetentaseis
A = 'Sim'
B = 'N�o';

value $QGMsetentasete
A = 'Sim'
B = 'N�o';

value $QGMsetentaoito
A = 'Sim'
B = 'N�o';

value $QGMsetentanove
A = 'Sim'
B = 'N�o';

value $QGMoitenta
A = 'Sim'
B = 'N�o';

value $QGMoitentaum
A = 'Sim'
B = 'N�o';

value $QGMoitentadois
A = 'Sim'
B = 'N�o';

value $QGMoitentatres
A = 'Sim'
B = 'N�o';

value $QGMoitentaquatro
A = 'Sim'
B = 'N�o';

value $QGMoitentacinco
A = 'Sim'
B = 'N�o';

value $QGMoitentaseis
A = 'Sim'
B = 'N�o';

value $QGMoitentasete
A = 'Sim'
B = 'N�o';

value $QGMoitentaoito
A = 'Sim'
B = 'N�o';

value $QGMoitentanove
A = 'Sim'
B = 'N�o';

value $QGMnoventa
A = 'Sim'
B = 'N�o';

value $QGMnoventaum
A = 'Sim'
B = 'N�o';

value $QGMnoventadois
A = 'Sim'
B = 'N�o';

value $QGMnoventatres
A = 'Sim'
B = 'N�o';

value $QGMnoventaquatro
A = 'Sim'
B = 'N�o';

value $QGMnoventacinco
A = 'Sim'
B = 'N�o';

value $QGMnoventaseis
A = 'Sim'
B = 'N�o';

value $QGMnoventasete
A = 'Sim'
B = 'N�o';

value $QGMnoventaoito
A = 'Sim'
B = 'N�o';

value $QGMnoventanove
A = 'Sim'
B = 'N�o';

value $QGMcem
A = 'Sim'
B = 'N�o';

value $QGMcemum
A = 'Sim'
B = 'N�o';

value $QGMcemdois
A = 'Sim'
B = 'N�o';

value $QGMcemtres
A = 'Sim'
B = 'N�o';

value $QGMcemquatro
A = 'Sim'
B = 'N�o';

value $QGMcemcinco
A = 'Sim'
B = 'N�o';

value $QGMcemseis
A = 'Sim'
B = 'N�o';

value $QGMcemsete
A = 'Sim'
B = 'N�o';

value $QGMcemoito
A = 'Sim'
B = 'N�o';

value $QGMcemnove
A = 'Sim'
B = 'N�o';

value $QGMcemdez
A = 'Sim'
B = 'N�o';

value $QGMcemonze
A = 'Sim'
B = 'N�o';

value $QGMcemdoze
A = 'Sim'
B = 'N�o';

value $QGMcemtreze
A = 'Sim'
B = 'N�o';

value $QGMcemcatorze
A = 'Sim'
B = 'N�o';

value $QGMcemquinze
A = 'Sim'
B = 'N�o';

value $QGMcemdezesseis
A = 'Sim'
B = 'N�o';

value $QGMcemdezessete
A = 'Sim.'
B = 'N�o.'
C = 'N�o sei.';

value $QGMcemdezoito
A = 'Sim'
B = 'N�o';

value $QGMcemdezenove
A = 'Sim'
B = 'N�o';

value $QGMcemvinte
A = 'Sim'
B = 'N�o';

value $QGMcemvinteum
A = 'Sim'
B = 'N�o';

value $QGMcemvintedois
A = 'Sim'
B = 'N�o';

value $QGMcemvintetres
A = 'Sim'
B = 'N�o';

value $QGMcemvintequatro
A = 'Sim'
B = 'N�o';

value $QGMcemvintecinco
A = 'Sim'
B = 'N�o';

value $QGMcemvinteseis
A = 'Sim'
B = 'N�o';

value $QGMcemvintesete
A = 'Sim'
B = 'N�o';

value $QGMcemvinteoito
A = 'Sim'
B = 'N�o';

value $QGMcemvintenove
A = 'Sim'
B = 'N�o';

value $QGMcemtrinta
A = 'Sim'
B = 'N�o';

value $QGMcemtrintaum
A = 'Sim'
B = 'N�o';

value $QGMcemtrintadois
A = 'Sim'
B = 'N�o';

value $QGMcemtrintatres
A = 'Sim'
B = 'N�o';

value $QGMcemtrintaquatro
A = 'Sim'
B = 'N�o';

value $QGMcemtrintacinco
A = 'Sim'
B = 'N�o';

value $QGMcemtrintaseis
A = 'Sim'
B = 'N�o';

value $QGMcemtrintasete
A = 'Sim'
B = 'N�o';

value $QGMcemtrintaoito
A = 'Sim'
B = 'N�o';

value $QGMcemtrintanove
A = 'Sim'
B = 'N�o';

value $QGMcemquarenta
A = 'Sim'
B = 'N�o';

value $QGMcemquarentaum
A = 'Sim'
B = 'N�o';

value $QGMcemquarentadois
A = 'Sim'
B = 'N�o';

value $QGMcemquarentatres
A = 'Sim'
B = 'N�o';

value $QGMcemquarentaquatro
A = 'Sim'
B = 'N�o';

value $QGMcemquarentacinco
A = 'Sim'
B = 'N�o';

value $QGMcemquarentaseis
A = 'Sim'
B = 'N�o';

value $QGMcemquarentasete
A = 'Sim'
B = 'N�o';

value $QGMcemquarentaoito
A = 'Sim'
B = 'N�o';

value $QGMcemquarentanove
A = 'Sim'
B = 'N�o';

value $QGMcemcinquenta
A = 'Sim'
B = 'N�o';

value $QGMcemcinquentaum
A = 'Sim'
B = 'N�o';

value $QGMcemcinquentadois
A = 'Sim'
B = 'N�o';

value $QGMcemcinquentatres
A = 'Sim'
B = 'N�o';

value $QGMcemcinquentaquatro
A = 'Sim'
B = 'N�o';

value $QGMcemcinquentacinco
A = 'Sim'
B = 'N�o';

value $QGMcemcinquentaseis
A = 'Sim'
B = 'N�o';

value $QGMcemcinquentasete
A = 'Sim'
B = 'N�o';

value $QGMcemcinquentaoito
A = 'Sim'
B = 'N�o';

value $QGMcemcinquentanove
A = 'Sim'
B = 'N�o';

value $QGMcemsessenta
A = 'Sim'
B = 'N�o';

value $QGMcemsessentaum
A = 'Sim'
B = 'N�o';

value $QGMcemsessentadois
A = 'Sim'
B = 'N�o';

value $QGMcemsessentatres
A = 'Sim'
B = 'N�o';

value $QGMcemsessentaquatro
A = 'Sim'
B = 'N�o';

value $QGMcemsessentacinco
A = 'Sim'
B = 'N�o';

value $QGMcemsessentaseis
A = 'Sim'
B = 'N�o';

value $QGMcemsessentasete
A = 'Sim'
B = 'N�o';

value $QGMcemsessentaoito
A = 'Sim'
B = 'N�o';

value $QGMcemsessentanove
A = 'Sim'
B = 'N�o';

value $QGMcemsetenta
A = 'Sim'
B = 'N�o';

value $QGMcemsetentaum
A = 'Sim'
B = 'N�o';

value $QGMcemsetentadois
A = 'Sim'
B = 'N�o';

value $QGMcemsetentatres
A = 'Sim'
B = 'N�o';

value $QGMcemsetentaquatro
A = 'Mensal'
B = 'Bimestral'
C = 'Trimestral'
D = 'Semestral'
E = 'Anual'
F = 'Bianual'
G = 'Outra';

value $QGMcemsetentacinco
A = 'Sim'
B = 'N�o';

value $QGMcemsetentaseis
A = 'Sim'
B = 'N�o';

value $QGMcemsetentasete
A = 'Sim'
B = 'N�o';

value $QGMcemsetentaoito
A = 'Sim'
B = 'N�o';

value $QGMcemsetentanove
A = 'Sim'
B = 'N�o';

value $QGMcemoitenta
A = 'Sim'
B = 'N�o';

value $QGMcemoitentaum
A = 'Sim'
B = 'N�o';

value $QGMcemoitentadois
A = 'Sim'
B = 'N�o';

value $QGMcemoitentatres
A = 'Sim'
B = 'N�o';

value $QGMcemoitentaquatro
A = 'Sim'
B = 'N�o';

value $QGMcemoitentacinco
A = 'Sim'
B = 'N�o';

value $QGMcemoitentaseis
A = 'Sim.'
B = 'N�o.'
C = 'N�o se aplica.';

value $QGMcemoitentasete
A = 'Sim.'
B = 'N�o.'
C = 'N�o se aplica.';

value $QGMcemoitentaoito
A = 'Sim.'
B = 'N�o.'
C = 'N�o se aplica.';

value $QGMcemoitentanove
A = 'Sim.'
B = 'N�o.'
C = 'N�o se aplica.';

value $QGMcemnoventa
A = 'Sim.'
B = 'N�o.'
C = 'N�o se aplica.';

value $QGMcemnoventaum
A = 'Sim'
B = 'N�o';

value $QGMcemnoventadois
A = 'Sim'
B = 'N�o';

value $QGMcemnoventatres
A = 'Sim'
B = 'N�o';

value $QGMcemnoventaquatro
A = 'Sim'
B = 'N�o';

value $QGMcemnoventacinco
A = 'Sim'
B = 'N�o';

value $QGMcemnoventaseis
A = 'Sim'
B = 'N�o';

value $QGMcemnoventasete
A = 'Sim'
B = 'N�o';

value $QGMcemnoventaoito
A = 'Sim'
B = 'N�o';

value $QGMcemnoventanove
A = 'Sim'
B = 'N�o';

value $QGMduzentos
A = 'Sim'
B = 'N�o';

value $QGMduzentosum
A = 'Sim'
B = 'N�o';

value $QGMduzentosdois
A = 'Sim'
B = 'N�o';

value $QGMduzentostres
A = 'Sim'
B = 'N�o';

value $QGMduzentosquatro
A = 'Sim'
B = 'N�o';

value $QGMduzentoscinco
A = '� inferior � dos(as) professores(as) de Ensino Fundamental.'
B = '� equivalente � dos(as) professores(as) de Ensino Fundamental.'
C = '� superior � dos(as) professores(as) de Ensino Fundamental.'
D = 'N�o existe este profissional na rede.';

value $QGMduzentosseis
A = '� inferior � dos(as) professores(as) de Ensino Fundamental.'
B = '� equivalente � dos(as) professores(as) de Ensino Fundamental.'
C = '� superior � dos(as) professores(as) de Ensino Fundamental.'
D = 'N�o existe este profissional na rede.';

value $QGMduzentossete
A = 'Sim'
B = 'N�o';

value $QGMduzentosoito
A = 'Sim'
B = 'N�o';

value $QGMduzentosnove
A = 'Sim'
B = 'N�o';

value $QGMduzentosdez
A = 'Sim'
B = 'N�o';

value $QGMduzentosonze
A = 'Sim'
B = 'N�o';

value $QGMduzentosdoze
A = 'Sim'
B = 'N�o';

value $QGMduzentostreze
A = 'Sim'
B = 'N�o';

value $QGMduzentoscatorze
A = 'Sim'
B = 'N�o';

value $QGMduzentosquinze
A = 'Sim'
B = 'N�o';

value $QGMduzentosdezesseis
A = 'Muito dif�cil'
B = 'Dif�cil'
C = 'Nem f�cil e nem dif�cil'
D = 'F�cil'
E = 'Muito f�cil';

value $QGMduzentosdezessete
A = 'Muito dif�cil'
B = 'Dif�cil'
C = 'Nem f�cil e nem dif�cil'
D = 'F�cil'
E = 'Muito f�cil';

run;

DATA WORK.TS_SECRETARIO_MUNICIPAL;

 INFILE 'C:/TS_SECRETARIO_MUNICIPAL.csv' /*Endere�o do arquivo*/
        LRECL=4096
		firstobs=2
        DLM=","
        MISSOVER
        DSD ;

INPUT
ID_SAEB : 4.          
ID_REGIAO : 1.                  
ID_UF : 2.                  
TX_RESP_Q001 : $CHAR1.
TX_RESP_Q002 : BEST4.
TX_RESP_Q003 : $CHAR1.
TX_RESP_Q004 : $CHAR1.
TX_RESP_Q005 : $CHAR1.
TX_RESP_Q006 : $CHAR1.
TX_RESP_Q007 : $CHAR1.
TX_RESP_Q008 : $CHAR1.
TX_RESP_Q009 : $CHAR1.
TX_RESP_Q010 : $CHAR1.
TX_RESP_Q011 : $CHAR1.
TX_RESP_Q012 : $CHAR1.
TX_RESP_Q013 : $CHAR1.
TX_RESP_Q014 : $CHAR1.
TX_RESP_Q015 : $CHAR1.
TX_RESP_Q016 : $CHAR1.
TX_RESP_Q017 : $CHAR1.
TX_RESP_Q018 : $CHAR1.
TX_RESP_Q019 : $CHAR1.
TX_RESP_Q020 : $CHAR1.
TX_RESP_Q021 : $CHAR1.
TX_RESP_Q022 : $CHAR1.
TX_RESP_Q023 : $CHAR1.
TX_RESP_Q024 : $CHAR1.
TX_RESP_Q025 : $CHAR1.
TX_RESP_Q026 : $CHAR1.
TX_RESP_Q027 : $CHAR1.
TX_RESP_Q028 : $CHAR1.
TX_RESP_Q029 : $CHAR1.
TX_RESP_Q030 : $CHAR1.
TX_RESP_Q031 : $CHAR1.
TX_RESP_Q032 : $CHAR1.
TX_RESP_Q033 : $CHAR1.
TX_RESP_Q034 : $CHAR1.
TX_RESP_Q035 : $CHAR1.
TX_RESP_Q036 : $CHAR1.
TX_RESP_Q037 : $CHAR1.
TX_RESP_Q038 : $CHAR1.
TX_RESP_Q039 : $CHAR1.
TX_RESP_Q040 : $CHAR1.
TX_RESP_Q041 : $CHAR1.
TX_RESP_Q042 : $CHAR1.
TX_RESP_Q043 : $CHAR1.
TX_RESP_Q044 : $CHAR1.
TX_RESP_Q045 : $CHAR1.
TX_RESP_Q046 : $CHAR1.
TX_RESP_Q047 : $CHAR1.
TX_RESP_Q048 : $CHAR1.
TX_RESP_Q049 : $CHAR1.
TX_RESP_Q050 : $CHAR1.
TX_RESP_Q051 : $CHAR1.
TX_RESP_Q052 : $CHAR1.
TX_RESP_Q053 : $CHAR1.
TX_RESP_Q054 : $CHAR1.
TX_RESP_Q055 : $CHAR1.
TX_RESP_Q056 : $CHAR1.
TX_RESP_Q057 : $CHAR1.
TX_RESP_Q058 : $CHAR1.
TX_RESP_Q059 : $CHAR1.
TX_RESP_Q060 : $CHAR1.
TX_RESP_Q061 : $CHAR1.
TX_RESP_Q062 : $CHAR1.
TX_RESP_Q063 : $CHAR1.
TX_RESP_Q064 : $CHAR1.
TX_RESP_Q065 : $CHAR1.
TX_RESP_Q066 : $CHAR1.
TX_RESP_Q067 : $CHAR1.
TX_RESP_Q068 : $CHAR1.
TX_RESP_Q069 : $CHAR1.
TX_RESP_Q070 : $CHAR1.
TX_RESP_Q071 : $CHAR1.
TX_RESP_Q072 : $CHAR1.
TX_RESP_Q073 : $CHAR1.
TX_RESP_Q074 : $CHAR1.
TX_RESP_Q075 : $CHAR1.
TX_RESP_Q076 : $CHAR1.
TX_RESP_Q077 : $CHAR1.
TX_RESP_Q078 : $CHAR1.
TX_RESP_Q079 : $CHAR1.
TX_RESP_Q080 : $CHAR1.
TX_RESP_Q081 : $CHAR1.
TX_RESP_Q082 : $CHAR1.
TX_RESP_Q083 : $CHAR1.
TX_RESP_Q084 : $CHAR1.
TX_RESP_Q085 : $CHAR1.
TX_RESP_Q086 : $CHAR1.
TX_RESP_Q087 : $CHAR1.
TX_RESP_Q088 : $CHAR1.
TX_RESP_Q089 : $CHAR1.
TX_RESP_Q090 : $CHAR1.
TX_RESP_Q091 : $CHAR1.
TX_RESP_Q092 : $CHAR1.
TX_RESP_Q093 : $CHAR1.
TX_RESP_Q094 : $CHAR1.
TX_RESP_Q095 : $CHAR1.
TX_RESP_Q096 : $CHAR1.
TX_RESP_Q097 : $CHAR1.
TX_RESP_Q098 : $CHAR1.
TX_RESP_Q099 : $CHAR1.
TX_RESP_Q100 : $CHAR1.
TX_RESP_Q101 : $CHAR1.
TX_RESP_Q102 : $CHAR1.
TX_RESP_Q103 : $CHAR1.
TX_RESP_Q104 : $CHAR1.
TX_RESP_Q105 : $CHAR1.
TX_RESP_Q106 : $CHAR1.
TX_RESP_Q107 : $CHAR1.
TX_RESP_Q108 : $CHAR1.
TX_RESP_Q109 : $CHAR1.
TX_RESP_Q110 : $CHAR1.
TX_RESP_Q111 : $CHAR1.
TX_RESP_Q112 : $CHAR1.
TX_RESP_Q113 : $CHAR1.
TX_RESP_Q114 : $CHAR1.
TX_RESP_Q115 : $CHAR1.
TX_RESP_Q116 : $CHAR1.
TX_RESP_Q117 : $CHAR1.
TX_RESP_Q118 : $CHAR1.
TX_RESP_Q119 : $CHAR1.
TX_RESP_Q120 : $CHAR1.
TX_RESP_Q121 : $CHAR1.
TX_RESP_Q122 : $CHAR1.
TX_RESP_Q123 : $CHAR1.
TX_RESP_Q124 : $CHAR1.
TX_RESP_Q125 : $CHAR1.
TX_RESP_Q126 : $CHAR1.
TX_RESP_Q127 : $CHAR1.
TX_RESP_Q128 : $CHAR1.
TX_RESP_Q129 : $CHAR1.
TX_RESP_Q130 : $CHAR1.
TX_RESP_Q131 : $CHAR1.
TX_RESP_Q132 : $CHAR1.
TX_RESP_Q133 : $CHAR1.
TX_RESP_Q134 : $CHAR1.
TX_RESP_Q135 : $CHAR1.
TX_RESP_Q136 : $CHAR1.
TX_RESP_Q137 : $CHAR1.
TX_RESP_Q138 : $CHAR1.
TX_RESP_Q139 : $CHAR1.
TX_RESP_Q140 : $CHAR1.
TX_RESP_Q141 : $CHAR1.
TX_RESP_Q142 : $CHAR1.
TX_RESP_Q143 : $CHAR1.
TX_RESP_Q144 : $CHAR1.
TX_RESP_Q145 : $CHAR1.
TX_RESP_Q146 : $CHAR1.
TX_RESP_Q147 : $CHAR1.
TX_RESP_Q148 : $CHAR1.
TX_RESP_Q149 : $CHAR1.
TX_RESP_Q150 : $CHAR1.
TX_RESP_Q151 : $CHAR1.
TX_RESP_Q152 : $CHAR1.
TX_RESP_Q153 : $CHAR1.
TX_RESP_Q154 : $CHAR1.
TX_RESP_Q155 : $CHAR1.
TX_RESP_Q156 : $CHAR1.
TX_RESP_Q157 : $CHAR1.
TX_RESP_Q158 : $CHAR1.
TX_RESP_Q159 : $CHAR1.
TX_RESP_Q160 : $CHAR1.
TX_RESP_Q161 : $CHAR1.
TX_RESP_Q162 : $CHAR1.
TX_RESP_Q163 : $CHAR1.
TX_RESP_Q164 : $CHAR1.
TX_RESP_Q165 : $CHAR1.
TX_RESP_Q166 : $CHAR1.
TX_RESP_Q167 : $CHAR1.
TX_RESP_Q168 : $CHAR1.
TX_RESP_Q169 : $CHAR1.
TX_RESP_Q170 : $CHAR1.
TX_RESP_Q171 : $CHAR1.
TX_RESP_Q172 : $CHAR1.
TX_RESP_Q173 : $CHAR1.
TX_RESP_Q174 : $CHAR1.
TX_RESP_Q175 : $CHAR1.
TX_RESP_Q176 : $CHAR1.
TX_RESP_Q177 : $CHAR1.
TX_RESP_Q178 : $CHAR1.
TX_RESP_Q179 : $CHAR1.
TX_RESP_Q180 : $CHAR1.
TX_RESP_Q181 : $CHAR1.
TX_RESP_Q182 : $CHAR1.
TX_RESP_Q183 : $CHAR1.
TX_RESP_Q184 : $CHAR1.
TX_RESP_Q185 : $CHAR1.
TX_RESP_Q186 : $CHAR1.
TX_RESP_Q187 : $CHAR1.
TX_RESP_Q188 : $CHAR1.
TX_RESP_Q189 : $CHAR1.
TX_RESP_Q190 : $CHAR1.
TX_RESP_Q191 : $CHAR1.
TX_RESP_Q192 : $CHAR1.
TX_RESP_Q193 : $CHAR1.
TX_RESP_Q194 : $CHAR1.
TX_RESP_Q195 : $CHAR1.
TX_RESP_Q196 : $CHAR1.
TX_RESP_Q197 : $CHAR1.
TX_RESP_Q198 : $CHAR1.
TX_RESP_Q199 : $CHAR1.
TX_RESP_Q200 : $CHAR1.
TX_RESP_Q201 : $CHAR1.
TX_RESP_Q202 : $CHAR1.
TX_RESP_Q203 : $CHAR1.
TX_RESP_Q204 : $CHAR1.
TX_RESP_Q205 : $CHAR1.
TX_RESP_Q206 : $CHAR1.
TX_RESP_Q207 : $CHAR1.
TX_RESP_Q208 : $CHAR1.
TX_RESP_Q209 : $CHAR1.
TX_RESP_Q210 : $CHAR1.
TX_RESP_Q211 : $CHAR1.
TX_RESP_Q212 : $CHAR1.
TX_RESP_Q213 : $CHAR1.
TX_RESP_Q214 : $CHAR1.
TX_RESP_Q215 : $CHAR1.
TX_RESP_Q216 : $CHAR1.
TX_RESP_Q217 : $CHAR1.
;  

ATTRIB ID_REGIAO FORMAT=ID_REGIAO12.;
ATTRIB ID_UF FORMAT=ID_UF2.;
ATTRIB TX_RESP_Q001 FORMAT=$QGMum.;
ATTRIB TX_RESP_Q003 FORMAT=$QGMtres.;
ATTRIB TX_RESP_Q004 FORMAT=$QGMquatro.;
ATTRIB TX_RESP_Q005 FORMAT=$QGMcinco.;
ATTRIB TX_RESP_Q006 FORMAT=$QGMseis.;
ATTRIB TX_RESP_Q007 FORMAT=$QGMsete.;
ATTRIB TX_RESP_Q008 FORMAT=$QGMoito.;
ATTRIB TX_RESP_Q009 FORMAT=$QGMnove.;
ATTRIB TX_RESP_Q010 FORMAT=$QGMdez.;
ATTRIB TX_RESP_Q011 FORMAT=$QGMonze.;
ATTRIB TX_RESP_Q012 FORMAT=$QGMdoze.;
ATTRIB TX_RESP_Q013 FORMAT=$QGMtreze.;
ATTRIB TX_RESP_Q017 FORMAT=$QGMdezessete.;
ATTRIB TX_RESP_Q018 FORMAT=$QGMdezoito.;
ATTRIB TX_RESP_Q019 FORMAT=$QGMdezenove.;
ATTRIB TX_RESP_Q020 FORMAT=$QGMvinte.;
ATTRIB TX_RESP_Q021 FORMAT=$QGMvinteum.;
ATTRIB TX_RESP_Q025 FORMAT=$QGMvintecinco.;
ATTRIB TX_RESP_Q026 FORMAT=$QGMvinteseis.;
ATTRIB TX_RESP_Q027 FORMAT=$QGMvintesete.;
ATTRIB TX_RESP_Q028 FORMAT=$QGMvinteoito.;
ATTRIB TX_RESP_Q029 FORMAT=$QGMvintenove.;
ATTRIB TX_RESP_Q030 FORMAT=$QGMtrinta.;
ATTRIB TX_RESP_Q031 FORMAT=$QGMtrintaum.;
ATTRIB TX_RESP_Q032 FORMAT=$QGMtrintadois.;
ATTRIB TX_RESP_Q033 FORMAT=$QGMtrintatres.;
ATTRIB TX_RESP_Q034 FORMAT=$QGMtrintaquatro.;
ATTRIB TX_RESP_Q035 FORMAT=$QGMtrintacinco.;
ATTRIB TX_RESP_Q036 FORMAT=$QGMtrintaseis.;
ATTRIB TX_RESP_Q037 FORMAT=$QGMtrintasete.;
ATTRIB TX_RESP_Q038 FORMAT=$QGMtrintaoito.;
ATTRIB TX_RESP_Q039 FORMAT=$QGMtrintanove.;
ATTRIB TX_RESP_Q040 FORMAT=$QGMquarenta.;
ATTRIB TX_RESP_Q041 FORMAT=$QGMquarentaum.;
ATTRIB TX_RESP_Q042 FORMAT=$QGMquarentadois.;
ATTRIB TX_RESP_Q043 FORMAT=$QGMquarentatres.;
ATTRIB TX_RESP_Q044 FORMAT=$QGMquarentaquatro.;
ATTRIB TX_RESP_Q045 FORMAT=$QGMquarentacinco.;
ATTRIB TX_RESP_Q046 FORMAT=$QGMquarentaseis.;
ATTRIB TX_RESP_Q047 FORMAT=$QGMquarentasete.;
ATTRIB TX_RESP_Q048 FORMAT=$QGMquarentaoito.;
ATTRIB TX_RESP_Q049 FORMAT=$QGMquarentanove.;
ATTRIB TX_RESP_Q050 FORMAT=$QGMcinquenta.;
ATTRIB TX_RESP_Q051 FORMAT=$QGMcinquentaum.;
ATTRIB TX_RESP_Q052 FORMAT=$QGMcinquentadois.;
ATTRIB TX_RESP_Q053 FORMAT=$QGMcinquentatres.;
ATTRIB TX_RESP_Q054 FORMAT=$QGMcinquentaquatro.;
ATTRIB TX_RESP_Q055 FORMAT=$QGMcinquentacinco.;
ATTRIB TX_RESP_Q056 FORMAT=$QGMcinquentaseis.;
ATTRIB TX_RESP_Q057 FORMAT=$QGMcinquentasete.;
ATTRIB TX_RESP_Q058 FORMAT=$QGMcinquentaoito.;
ATTRIB TX_RESP_Q073 FORMAT=$QGMsetentatres.;
ATTRIB TX_RESP_Q075 FORMAT=$QGMsetentacinco.;
ATTRIB TX_RESP_Q076 FORMAT=$QGMsetentaseis.;
ATTRIB TX_RESP_Q077 FORMAT=$QGMsetentasete.;
ATTRIB TX_RESP_Q078 FORMAT=$QGMsetentaoito.;
ATTRIB TX_RESP_Q079 FORMAT=$QGMsetentanove.;
ATTRIB TX_RESP_Q080 FORMAT=$QGMoitenta.;
ATTRIB TX_RESP_Q081 FORMAT=$QGMoitentaum.;
ATTRIB TX_RESP_Q082 FORMAT=$QGMoitentadois.;
ATTRIB TX_RESP_Q083 FORMAT=$QGMoitentatres.;
ATTRIB TX_RESP_Q084 FORMAT=$QGMoitentaquatro.;
ATTRIB TX_RESP_Q085 FORMAT=$QGMoitentacinco.;
ATTRIB TX_RESP_Q086 FORMAT=$QGMoitentaseis.;
ATTRIB TX_RESP_Q087 FORMAT=$QGMoitentasete.;
ATTRIB TX_RESP_Q088 FORMAT=$QGMoitentaoito.;
ATTRIB TX_RESP_Q089 FORMAT=$QGMoitentanove.;
ATTRIB TX_RESP_Q090 FORMAT=$QGMnoventa.;
ATTRIB TX_RESP_Q091 FORMAT=$QGMnoventaum.;
ATTRIB TX_RESP_Q092 FORMAT=$QGMnoventadois.;
ATTRIB TX_RESP_Q093 FORMAT=$QGMnoventatres.;
ATTRIB TX_RESP_Q094 FORMAT=$QGMnoventaquatro.;
ATTRIB TX_RESP_Q095 FORMAT=$QGMnoventacinco.;
ATTRIB TX_RESP_Q096 FORMAT=$QGMnoventaseis.;
ATTRIB TX_RESP_Q097 FORMAT=$QGMnoventasete.;
ATTRIB TX_RESP_Q098 FORMAT=$QGMnoventaoito.;
ATTRIB TX_RESP_Q099 FORMAT=$QGMnoventanove.;
ATTRIB TX_RESP_Q100 FORMAT=$QGMcem.;
ATTRIB TX_RESP_Q101 FORMAT=$QGMcemum.;
ATTRIB TX_RESP_Q102 FORMAT=$QGMcemdois.;
ATTRIB TX_RESP_Q103 FORMAT=$QGMcemtres.;
ATTRIB TX_RESP_Q104 FORMAT=$QGMcemquatro.;
ATTRIB TX_RESP_Q105 FORMAT=$QGMcemcinco.;
ATTRIB TX_RESP_Q106 FORMAT=$QGMcemseis.;
ATTRIB TX_RESP_Q107 FORMAT=$QGMcemsete.;
ATTRIB TX_RESP_Q108 FORMAT=$QGMcemoito.;
ATTRIB TX_RESP_Q109 FORMAT=$QGMcemnove.;
ATTRIB TX_RESP_Q110 FORMAT=$QGMcemdez.;
ATTRIB TX_RESP_Q111 FORMAT=$QGMcemonze.;
ATTRIB TX_RESP_Q112 FORMAT=$QGMcemdoze.;
ATTRIB TX_RESP_Q113 FORMAT=$QGMcemtreze.;
ATTRIB TX_RESP_Q114 FORMAT=$QGMcemcatorze.;
ATTRIB TX_RESP_Q115 FORMAT=$QGMcemquinze.;
ATTRIB TX_RESP_Q116 FORMAT=$QGMcemdezesseis.;
ATTRIB TX_RESP_Q117 FORMAT=$QGMcemdezessete.;
ATTRIB TX_RESP_Q118 FORMAT=$QGMcemdezoito.;
ATTRIB TX_RESP_Q119 FORMAT=$QGMcemdezenove.;
ATTRIB TX_RESP_Q120 FORMAT=$QGMcemvinte.;
ATTRIB TX_RESP_Q121 FORMAT=$QGMcemvinteum.;
ATTRIB TX_RESP_Q122 FORMAT=$QGMcemvintedois.;
ATTRIB TX_RESP_Q123 FORMAT=$QGMcemvintetres.;
ATTRIB TX_RESP_Q124 FORMAT=$QGMcemvintequatro.;
ATTRIB TX_RESP_Q125 FORMAT=$QGMcemvintecinco.;
ATTRIB TX_RESP_Q126 FORMAT=$QGMcemvinteseis.;
ATTRIB TX_RESP_Q127 FORMAT=$QGMcemvintesete.;
ATTRIB TX_RESP_Q128 FORMAT=$QGMcemvinteoito.;
ATTRIB TX_RESP_Q129 FORMAT=$QGMcemvintenove.;
ATTRIB TX_RESP_Q130 FORMAT=$QGMcemtrinta.;
ATTRIB TX_RESP_Q131 FORMAT=$QGMcemtrintaum.;
ATTRIB TX_RESP_Q132 FORMAT=$QGMcemtrintadois.;
ATTRIB TX_RESP_Q133 FORMAT=$QGMcemtrintatres.;
ATTRIB TX_RESP_Q134 FORMAT=$QGMcemtrintaquatro.;
ATTRIB TX_RESP_Q135 FORMAT=$QGMcemtrintacinco.;
ATTRIB TX_RESP_Q136 FORMAT=$QGMcemtrintaseis.;
ATTRIB TX_RESP_Q137 FORMAT=$QGMcemtrintasete.;
ATTRIB TX_RESP_Q138 FORMAT=$QGMcemtrintaoito.;
ATTRIB TX_RESP_Q139 FORMAT=$QGMcemtrintanove.;
ATTRIB TX_RESP_Q140 FORMAT=$QGMcemquarenta.;
ATTRIB TX_RESP_Q141 FORMAT=$QGMcemquarentaum.;
ATTRIB TX_RESP_Q142 FORMAT=$QGMcemquarentadois.;
ATTRIB TX_RESP_Q143 FORMAT=$QGMcemquarentatres.;
ATTRIB TX_RESP_Q144 FORMAT=$QGMcemquarentaquatro.;
ATTRIB TX_RESP_Q145 FORMAT=$QGMcemquarentacinco.;
ATTRIB TX_RESP_Q146 FORMAT=$QGMcemquarentaseis.;
ATTRIB TX_RESP_Q147 FORMAT=$QGMcemquarentasete.;
ATTRIB TX_RESP_Q148 FORMAT=$QGMcemquarentaoito.;
ATTRIB TX_RESP_Q149 FORMAT=$QGMcemquarentanove.;
ATTRIB TX_RESP_Q150 FORMAT=$QGMcemcinquenta.;
ATTRIB TX_RESP_Q151 FORMAT=$QGMcemcinquentaum.;
ATTRIB TX_RESP_Q152 FORMAT=$QGMcemcinquentadois.;
ATTRIB TX_RESP_Q153 FORMAT=$QGMcemcinquentatres.;
ATTRIB TX_RESP_Q154 FORMAT=$QGMcemcinquentaquatro.;
ATTRIB TX_RESP_Q155 FORMAT=$QGMcemcinquentacinco.;
ATTRIB TX_RESP_Q156 FORMAT=$QGMcemcinquentaseis.;
ATTRIB TX_RESP_Q157 FORMAT=$QGMcemcinquentasete.;
ATTRIB TX_RESP_Q158 FORMAT=$QGMcemcinquentaoito.;
ATTRIB TX_RESP_Q159 FORMAT=$QGMcemcinquentanove.;
ATTRIB TX_RESP_Q160 FORMAT=$QGMcemsessenta.;
ATTRIB TX_RESP_Q161 FORMAT=$QGMcemsessentaum.;
ATTRIB TX_RESP_Q162 FORMAT=$QGMcemsessentadois.;
ATTRIB TX_RESP_Q163 FORMAT=$QGMcemsessentatres.;
ATTRIB TX_RESP_Q164 FORMAT=$QGMcemsessentaquatro.;
ATTRIB TX_RESP_Q165 FORMAT=$QGMcemsessentacinco.;
ATTRIB TX_RESP_Q166 FORMAT=$QGMcemsessentaseis.;
ATTRIB TX_RESP_Q167 FORMAT=$QGMcemsessentasete.;
ATTRIB TX_RESP_Q168 FORMAT=$QGMcemsessentaoito.;
ATTRIB TX_RESP_Q169 FORMAT=$QGMcemsessentanove.;
ATTRIB TX_RESP_Q170 FORMAT=$QGMcemsetenta.;
ATTRIB TX_RESP_Q171 FORMAT=$QGMcemsetentaum.;
ATTRIB TX_RESP_Q172 FORMAT=$QGMcemsetentadois.;
ATTRIB TX_RESP_Q173 FORMAT=$QGMcemsetentatres.;
ATTRIB TX_RESP_Q174 FORMAT=$QGMcemsetentaquatro.;
ATTRIB TX_RESP_Q175 FORMAT=$QGMcemsetentacinco.;
ATTRIB TX_RESP_Q176 FORMAT=$QGMcemsetentaseis.;
ATTRIB TX_RESP_Q177 FORMAT=$QGMcemsetentasete.;
ATTRIB TX_RESP_Q178 FORMAT=$QGMcemsetentaoito.;
ATTRIB TX_RESP_Q179 FORMAT=$QGMcemsetentanove.;
ATTRIB TX_RESP_Q180 FORMAT=$QGMcemoitenta.;
ATTRIB TX_RESP_Q181 FORMAT=$QGMcemoitentaum.;
ATTRIB TX_RESP_Q182 FORMAT=$QGMcemoitentadois.;
ATTRIB TX_RESP_Q183 FORMAT=$QGMcemoitentatres.;
ATTRIB TX_RESP_Q184 FORMAT=$QGMcemoitentaquatro.;
ATTRIB TX_RESP_Q185 FORMAT=$QGMcemoitentacinco.;
ATTRIB TX_RESP_Q186 FORMAT=$QGMcemoitentaseis.;
ATTRIB TX_RESP_Q187 FORMAT=$QGMcemoitentasete.;
ATTRIB TX_RESP_Q188 FORMAT=$QGMcemoitentaoito.;
ATTRIB TX_RESP_Q189 FORMAT=$QGMcemoitentanove.;
ATTRIB TX_RESP_Q190 FORMAT=$QGMcemnoventa.;
ATTRIB TX_RESP_Q191 FORMAT=$QGMcemnoventaum.;
ATTRIB TX_RESP_Q192 FORMAT=$QGMcemnoventadois.;
ATTRIB TX_RESP_Q193 FORMAT=$QGMcemnoventatres.;
ATTRIB TX_RESP_Q194 FORMAT=$QGMcemnoventaquatro.;
ATTRIB TX_RESP_Q195 FORMAT=$QGMcemnoventacinco.;
ATTRIB TX_RESP_Q196 FORMAT=$QGMcemnoventaseis.;
ATTRIB TX_RESP_Q197 FORMAT=$QGMcemnoventasete.;
ATTRIB TX_RESP_Q198 FORMAT=$QGMcemnoventaoito.;
ATTRIB TX_RESP_Q199 FORMAT=$QGMcemnoventanove.;
ATTRIB TX_RESP_Q200 FORMAT=$QGMduzentos.;
ATTRIB TX_RESP_Q201 FORMAT=$QGMduzentosum.;
ATTRIB TX_RESP_Q202 FORMAT=$QGMduzentosdois.;
ATTRIB TX_RESP_Q203 FORMAT=$QGMduzentostres.;
ATTRIB TX_RESP_Q204 FORMAT=$QGMduzentosquatro.;
ATTRIB TX_RESP_Q205 FORMAT=$QGMduzentoscinco.;
ATTRIB TX_RESP_Q206 FORMAT=$QGMduzentosseis.;
ATTRIB TX_RESP_Q207 FORMAT=$QGMduzentossete.;
ATTRIB TX_RESP_Q208 FORMAT=$QGMduzentosoito.;
ATTRIB TX_RESP_Q209 FORMAT=$QGMduzentosnove.;
ATTRIB TX_RESP_Q210 FORMAT=$QGMduzentosdez.;
ATTRIB TX_RESP_Q211 FORMAT=$QGMduzentosonze.;
ATTRIB TX_RESP_Q212 FORMAT=$QGMduzentosdoze.;
ATTRIB TX_RESP_Q213 FORMAT=$QGMduzentostreze.;
ATTRIB TX_RESP_Q214 FORMAT=$QGMduzentoscatorze.;
ATTRIB TX_RESP_Q215 FORMAT=$QGMduzentosquinze.;
ATTRIB TX_RESP_Q216 FORMAT=$QGMduzentosdezesseis.;
ATTRIB TX_RESP_Q217 FORMAT=$QGMduzentosdezessete.;

LABEL

ID_SAEB = 'Ano de aplica��o do Saeb'                                                                                                    
ID_REGIAO = 'C�digo da Regi�o'                                                                                                                         
ID_UF = 'C�digo da Unidade da Federa��o'                                                                                                               
TX_RESP_Q001 = 'Qual � o seu sexo?'
TX_RESP_Q002 = 'Qual � a sua idade? '
TX_RESP_Q003 = 'Qual � a sua cor ou ra�a?'
TX_RESP_Q004 = 'Qual � o seu mais alto n�vel de escolaridade conclu�do?'
TX_RESP_Q005 = 'Esta forma��o � relacionada ao campo educacional? '
TX_RESP_Q006 = 'Al�m de Secret�rio(a) da Educa��o, voc� exerceu alguma outra fun��o na �rea de educa��o?'
TX_RESP_Q007 = 'Indique as fun��es que exerceu: Professor (a) da Educa��o B�sica '
TX_RESP_Q008 = 'Indique as fun��es que exerceu: Professor (a) da Educa��o Superior '
TX_RESP_Q009 = 'Indique as fun��es que exerceu: Membro de equipe pedag�gica da escola '
TX_RESP_Q010 = 'Indique as fun��es que exerceu: Diretor (a) de escola '
TX_RESP_Q011 = 'Indique as fun��es que exerceu: Equipe t�cnica da Secretaria de Educa��o '
TX_RESP_Q012 = 'Indique as fun��es que exerceu: Secret�rio(a) de Educa��o em outra rede '
TX_RESP_Q013 = 'Indique as fun��es que exerceu: Outros '
TX_RESP_Q014 = 'Qual o seu tempo total de experi�ncia, em anos, na �rea de educa��o? '
TX_RESP_Q015 = 'Qual o seu tempo de experi�ncia como Secret�rio(a) de Educa��o? Anos '
TX_RESP_Q016 = 'Qual o seu tempo de experi�ncia como Secret�rio(a) de Educa��o? Meses '
TX_RESP_Q017 = 'Voc� ocupa o cargo de Secret�rio(a) de Educa��o desde o in�cio da atual gest�o?'
TX_RESP_Q018 = 'Al�m de atividades na �rea da educa��o, voc� exerce outra atividade profissional?'
TX_RESP_Q019 = 'Sobre a organiza��o e planejamento da educa��o, o munic�pio possui: Sistema Municipal de Ensino?'
TX_RESP_Q020 = 'Sobre a organiza��o e planejamento da educa��o, o munic�pio possui: Plano Municipal de Educa��o?'
TX_RESP_Q021 = 'Sobre a organiza��o e planejamento da educa��o, o munic�pio possui: F�rum Permanente de Educa��o?'
TX_RESP_Q022 = 'Quantos servidores/funcion�rios est�o lotados na sede da Secretaria de Educa��o?'
TX_RESP_Q023 = 'Quantos servidores/funcion�rios lotados na sede da Secretaria de Educa��o est�o dedicados EXCLUSIVAMENTE � Educa��o infantil?'
TX_RESP_Q024 = 'Quantos servidores/funcion�rios lotados na sede da Secretaria de Educa��o est�o dedicados EXCLUSIVAMENTE ao Ensino Fundamental?'
TX_RESP_Q025 = 'Selecione quais despesas a Secretaria de Educa��o tem autonomia para ordenar: Aperfei�oamento de pessoal docente e demais profissionais'
TX_RESP_Q026 = 'Selecione quais despesas a Secretaria de Educa��o tem autonomia para ordenar: Aquisi��o e manuten��o de equipamentos'
TX_RESP_Q027 = 'Selecione quais despesas a Secretaria de Educa��o tem autonomia para ordenar: Compra de material did�tico'
TX_RESP_Q028 = 'Selecione quais despesas a Secretaria de Educa��o tem autonomia para ordenar: Concess�o de bolsas de estudo para estudantes'
TX_RESP_Q029 = 'Selecione quais despesas a Secretaria de Educa��o tem autonomia para ordenar: Constru��o de escolas'
TX_RESP_Q030 = 'Selecione quais despesas a Secretaria de Educa��o tem autonomia para ordenar: Manuten��o e conserva��o das escolas'
TX_RESP_Q031 = 'Selecione quais despesas a Secretaria de Educa��o tem autonomia para ordenar: Merenda escolar'
TX_RESP_Q032 = 'Selecione quais despesas a Secretaria de Educa��o tem autonomia para ordenar: Remunera��o de pessoal docente e demais profissionais'
TX_RESP_Q033 = 'Selecione quais despesas a Secretaria de Educa��o tem autonomia para ordenar: Transporte escolar'
TX_RESP_Q034 = 'Selecione quais despesas a Secretaria de Educa��o tem autonomia para ordenar: Outros'
TX_RESP_Q035 = 'A Secretaria de Educa��o desenvolve trabalhos em conjunto com: Servi�os de sa�de'
TX_RESP_Q036 = 'A Secretaria de Educa��o desenvolve trabalhos em conjunto com: Servi�os de assist�ncia social'
TX_RESP_Q037 = 'A Secretaria de Educa��o desenvolve trabalhos em conjunto com: Servi�os de seguran�a p�blica'
TX_RESP_Q038 = 'A Secretaria de Educa��o desenvolve trabalhos em conjunto com: Minist�rio P�blico'
TX_RESP_Q039 = 'A Secretaria de Educa��o desenvolve trabalhos em conjunto com: Outros'
TX_RESP_Q040 = 'H� alguma legisla��o que regulamente a nomea��o dos diretores das escolas?'
TX_RESP_Q041 = 'Quais crit�rios s�o utilizados para a escolha dos diretores das escolas? Livre indica��o pelos poderes p�blicos'
TX_RESP_Q042 = 'Quais crit�rios s�o utilizados para a escolha dos diretores das escolas? Prova de conhecimentos'
TX_RESP_Q043 = 'Quais crit�rios s�o utilizados para a escolha dos diretores das escolas? Tempo de servi�o'
TX_RESP_Q044 = 'Quais crit�rios s�o utilizados para a escolha dos diretores das escolas? Titula��o acad�mica'
TX_RESP_Q045 = 'Quais crit�rios s�o utilizados para a escolha dos diretores das escolas? Experi�ncia em gest�o'
TX_RESP_Q046 = 'Quais crit�rios s�o utilizados para a escolha dos diretores das escolas? Curso de forma��o para gestores escolares'
TX_RESP_Q047 = 'Quais crit�rios s�o utilizados para a escolha dos diretores das escolas? Listas de candidatos'
TX_RESP_Q048 = 'Quais crit�rios s�o utilizados para a escolha dos diretores das escolas? Consulta p�blica/elei��o'
TX_RESP_Q049 = 'As escolas do munic�pio adotam um sistema apostilado?'
TX_RESP_Q050 = 'O Ensino Fundamental � oferecido em ciclos?'
TX_RESP_Q051 = 'O munic�pio possui Conselho Municipal de Educa��o?'
TX_RESP_Q052 = 'Indique quais fun��es s�o exercidas pelo Conselho Municipal de Educa��o: Consultiva '
TX_RESP_Q053 = 'Indique quais fun��es s�o exercidas pelo Conselho Municipal de Educa��o: Normativa '
TX_RESP_Q054 = 'Indique quais fun��es s�o exercidas pelo Conselho Municipal de Educa��o: Deliberativa '
TX_RESP_Q055 = 'Indique quais fun��es s�o exercidas pelo Conselho Municipal de Educa��o: Fiscalizadora '
TX_RESP_Q056 = 'Indique quais fun��es s�o exercidas pelo Conselho Municipal de Educa��o: Propositiva '
TX_RESP_Q057 = 'Indique quais fun��es s�o exercidas pelo Conselho Municipal de Educa��o: Mobilizadora '
TX_RESP_Q058 = 'Indique quais fun��es s�o exercidas pelo Conselho Municipal de Educa��o: N�o sei '
TX_RESP_Q059 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Secretaria municipal - incluso Secret�rio(a) '
TX_RESP_Q060 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Institui��es particulares '
TX_RESP_Q061 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Diretores de escola de Ensino Fundamental '
TX_RESP_Q062 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Diretores de institui��es de Educa��o Infantil '
TX_RESP_Q063 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Professores de Ensino Fundamental '
TX_RESP_Q064 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Professores de Educa��o Infantil '
TX_RESP_Q065 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Professores de escolas particulares '
TX_RESP_Q066 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Servidores das escolas '
TX_RESP_Q067 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Pais de estudantes '
TX_RESP_Q068 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Estudantes '
TX_RESP_Q069 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Sindicatos e associa��es de docentes '
TX_RESP_Q070 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: C�mara Municipal '
TX_RESP_Q071 = 'Indique a QUANTIDADE de membros do Conselho Municipal de Educa��o que representam: Outros setores '
TX_RESP_Q072 = 'Do total de membros do Conselho de Educa��o, quantos s�o eleitos? '
TX_RESP_Q073 = 'O Secret�rio de Educa��o � o presidente do Conselho de Educa��o? '
TX_RESP_Q074 = 'Quantas reuni�es foram realizadas pelo Conselho de Educa��o neste ano? '
TX_RESP_Q075 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Educa��o: Sala pr�pria '
TX_RESP_Q076 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Educa��o: Computador '
TX_RESP_Q077 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Educa��o: Impressora '
TX_RESP_Q078 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Educa��o: Acesso � internet '
TX_RESP_Q079 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Educa��o: Transporte '
TX_RESP_Q080 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Educa��o: Telefone '
TX_RESP_Q081 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Educa��o: Di�rias '
TX_RESP_Q082 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Educa��o: Dota��o or�ament�ria pr�pria '
TX_RESP_Q083 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Educa��o: Apoio administrativo '
TX_RESP_Q084 = 'Selecione quais atribui��es o Conselho de Educa��o possui: Solucionar d�vidas interpretativas sobre a legisla��o educacional '
TX_RESP_Q085 = 'Selecione quais atribui��es o Conselho de Educa��o possui: Emitir parecer sobre a interpreta��o de normas '
TX_RESP_Q086 = 'Selecione quais atribui��es o Conselho de Educa��o possui: Estabelecer normas para o ingresso dos alunos '
TX_RESP_Q087 = 'Selecione quais atribui��es o Conselho de Educa��o possui: Estabelecer normas para autoriza��o de funcionamento das escolas '
TX_RESP_Q088 = 'Selecione quais atribui��es o Conselho de Educa��o possui: Verificar o cumprimento do calend�rio letivo pelas escolas '
TX_RESP_Q089 = 'Selecione quais atribui��es o Conselho de Educa��o possui: Verificar se as escolas conveniadas de educa��o infantil cumprem as diretrizes do munic�pio '
TX_RESP_Q090 = 'Selecione quais atribui��es o Conselho de Educa��o possui: Sugerir medidas para aperfei�oamento profissional dos docentes '
TX_RESP_Q091 = 'Selecione quais atribui��es o Conselho de Educa��o possui: Propor a��es para a diminui��o da repet�ncia '
TX_RESP_Q092 = 'Selecione quais atribui��es o Conselho de Educa��o possui: Realizar reuni�es ampliadas para discutir assuntos educacionais '
TX_RESP_Q093 = 'Selecione quais atribui��es o Conselho de Educa��o possui: Promover eventos '
TX_RESP_Q094 = 'Neste ano foi realizada capacita��o para os Conselheiros de Educa��o? '
TX_RESP_Q095 = 'H� Conselho de Acompanhamento e Controle Social do Fundeb ? CACS no seu munic�pio?'
TX_RESP_Q096 = 'Neste ano foi realizada capacita��o para os membros do Conselho de Acompanhamento e Controle Social do Fundeb? '
TX_RESP_Q097 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Sala pr�pria '
TX_RESP_Q098 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Computador '
TX_RESP_Q099 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Impressora '
TX_RESP_Q100 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Acesso � internet '
TX_RESP_Q101 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Transporte '
TX_RESP_Q102 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Telefone '
TX_RESP_Q103 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Di�rias '
TX_RESP_Q104 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Dota��o or�ament�ria pr�pria '
TX_RESP_Q105 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Acompanhamento e Controle Social do Fundeb: Apoio administrativo '
TX_RESP_Q106 = 'H� no seu munic�pio Conselho de Alimenta��o Escolar?'
TX_RESP_Q107 = 'Neste ano foi realizada capacita��o para os membros do Conselho de Alimenta��o Escolar? '
TX_RESP_Q108 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Alimenta��o Escolar: Sala pr�pria '
TX_RESP_Q109 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Alimenta��o Escolar: Computador '
TX_RESP_Q110 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Alimenta��o Escolar: Impressora '
TX_RESP_Q111 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Alimenta��o Escolar: Acesso � internet '
TX_RESP_Q112 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Alimenta��o Escolar: Transporte '
TX_RESP_Q113 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Alimenta��o Escolar: Telefone '
TX_RESP_Q114 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Alimenta��o Escolar: Di�rias '
TX_RESP_Q115 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Alimenta��o Escolar: Dota��o or�ament�ria pr�pria '
TX_RESP_Q116 = 'Indique os recursos dispon�veis para o funcionamento do Conselho de Alimenta��o Escolar: Apoio administrativo '
TX_RESP_Q117 = 'Desde 2014, o munic�pio realizou alguma Confer�ncia Municipal de Educa��o preparat�ria para a Confer�ncia Nacional de Educa��o (Conae)?'
TX_RESP_Q118 = 'A Secretaria possui institui��es de Educa��o Infantil sob sua responsabilidade direta ou indireta?'
TX_RESP_Q119 = 'Com rela��o � EDUCA��O INFANTIL, a Secretaria possui: C�lculo da demanda por vagas? '
TX_RESP_Q120 = 'Com rela��o � EDUCA��O INFANTIL, a Secretaria possui: Programa para garantia de acesso? '
TX_RESP_Q121 = 'Com rela��o � EDUCA��O INFANTIL, a Secretaria possui: Supervis�o escolar? '
TX_RESP_Q122 = 'Com rela��o � EDUCA��O INFANTIL, a Secretaria possui: Programa de forma��o de professores? '
TX_RESP_Q123 = 'Com rela��o � EDUCA��O INFANTIL, a Secretaria possui: Busca ativa de crian�as? '
TX_RESP_Q124 = 'Com rela��o � EDUCA��O INFANTIL, a Secretaria possui: Comit� Intersetorial de Pol�ticas P�blicas para a Primeira Inf�ncia? '
TX_RESP_Q125 = 'Com rela��o � EDUCA��O INFANTIL, a Secretaria possui: Curr�culo Municipal para a Educa��o Infantil? '
TX_RESP_Q126 = 'A Secretaria firma conv�nios com institui��es para o atendimento de: Creche - Crian�as de 0 a 3 anos? '
TX_RESP_Q127 = 'A Secretaria firma conv�nios com institui��es para o atendimento de: Pr�-escola - Crian�as 4 a 5 anos? '
TX_RESP_Q128 = 'As escolas conveniadas s�o selecionadas atrav�s de chamada p�blica? '
TX_RESP_Q129 = 'Existem normas para o funcionamento das institui��es conveniadas? '
TX_RESP_Q130 = 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Espa�o f�sico: Poder P�blico/Secretaria de Educa��o.'
TX_RESP_Q131 = 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Espa�o f�sico: Escolas/Institui��es conveniadas. '
TX_RESP_Q132 = 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Manuten��o de espa�o f�sico: Poder P�blico/Secretaria de Educa��o. '
TX_RESP_Q133 = 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Manuten��o de espa�o f�sico: Escolas/Institui��es conveniadas. '
TX_RESP_Q134 = 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Sele��o de docentes: Poder P�blico/Secretaria de Educa��o. '
TX_RESP_Q135 = 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Sele��o de docentes: Escolas/Institui��es conveniadas. '
TX_RESP_Q136 = 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Pagamento de docentes: Poder P�blico/Secretaria de Educa��o. '
TX_RESP_Q137 = 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Pagamento de docentes: Escolas/Institui��es conveniadas. '
TX_RESP_Q138 = 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Capacita��o de docentes: Poder P�blico/Secretaria de Educa��o. '
TX_RESP_Q139 = 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Capacita��o de docentes: Escolas/Institui��es conveniadas. '
TX_RESP_Q140 = 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Fornecimento de merenda escolar: Poder P�blico/Secretaria de Educa��o. '
TX_RESP_Q141 = 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Fornecimento de merenda escolar: Escolas/Institui��es conveniadas. '
TX_RESP_Q142 = 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Transporte escolar: Poder P�blico/Secretaria de Educa��o. '
TX_RESP_Q143 = 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Transporte escolar: Escolas/Institui��es conveniadas. '
TX_RESP_Q144 = 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Materiais did�ticos: Poder P�blico/Secretaria de Educa��o. '
TX_RESP_Q145 = 'Em rela��o �s escolas conveniadas, quem assume as responsabilidades sobre Materiais did�ticos: Escolas/Institui��es conveniadas. '
TX_RESP_Q146 = 'A Secretaria possui escolas de Ensino Fundamental?'
TX_RESP_Q147 = 'Com rela��o ao Ensino Fundamental, a Secretaria possui: C�lculo da demanda por vagas? '
TX_RESP_Q148 = 'Com rela��o ao Ensino Fundamental, a Secretaria possui: Programa de forma��o de professores? '
TX_RESP_Q149 = 'Com rela��o ao Ensino Fundamental, a Secretaria possui: Busca ativa de crian�as e jovens? '
TX_RESP_Q150 = 'Com rela��o ao Ensino Fundamental, a Secretaria possui: Curr�culo Municipal?'
TX_RESP_Q151 = 'A Secretaria possui escolas de Ensino M�dio?'
TX_RESP_Q152 = 'Com rela��o ao Ensino M�dio, a Secretaria possui: C�lculo da demanda por vagas? '
TX_RESP_Q153 = 'Com rela��o ao Ensino M�dio, a Secretaria possui: Programa de forma��o de professores? '
TX_RESP_Q154 = 'Com rela��o ao Ensino M�dio, a Secretaria possui: Busca ativa de jovens? '
TX_RESP_Q155 = 'Com rela��o ao Ensino M�dio, a Secretaria possui: Curr�culo Municipal? '
TX_RESP_Q156 = 'A Secretaria utiliza os resultados do IDEB?'
TX_RESP_Q157 = 'De que forma os resultados s�o utilizados? Planejamento das a��es educacionais '
TX_RESP_Q158 = 'De que forma os resultados s�o utilizados? Promo��o de debates sobre a educa��o '
TX_RESP_Q159 = 'De que forma os resultados s�o utilizados? Divulga��o de informa��es para a sociedade '
TX_RESP_Q160 = 'De que forma os resultados s�o utilizados? Subs�dios para a forma��o continuada de professores '
TX_RESP_Q161 = 'De que forma os resultados s�o utilizados? Implanta��o de pol�ticas para redu��o da repet�ncia '
TX_RESP_Q162 = 'De que forma os resultados s�o utilizados? Revis�o ou cria��o de orienta��es curriculares '
TX_RESP_Q163 = 'De que forma os resultados s�o utilizados? Subs�dios para a avalia��o de programas ou projetos da Secretaria de Educa��o '
TX_RESP_Q164 = 'De que forma os resultados s�o utilizados? Produ��o de materiais did�ticos e pedag�gicos '
TX_RESP_Q165 = 'De que forma os resultados s�o utilizados? Recompensa para escolas com melhores resultados '
TX_RESP_Q166 = 'De que forma os resultados s�o utilizados? Aux�lio para unidades escolares com resultados inferiores '
TX_RESP_Q167 = 'De que forma os resultados s�o utilizados? Subs�dios para pagamento de bonifica��o para professores '
TX_RESP_Q168 = 'De que forma os resultados s�o utilizados? Estabelecimento de metas de desempenho nos testes de profici�ncia '
TX_RESP_Q169 = 'De que forma os resultados s�o utilizados? Monitoramento das escolas '
TX_RESP_Q170 = 'De que forma os resultados s�o utilizados? Cria��o de crit�rios para remanejamento de diretores '
TX_RESP_Q171 = 'De que forma os resultados s�o utilizados? Outros '
TX_RESP_Q172 = 'A Secretaria orienta as escolas a prepararem seus alunos para as avalia��es externas?'
TX_RESP_Q173 = 'A Secretaria Municipal realiza avalia��o externa das escolas, al�m daquelas promovidas pelos governos estadual ou federal?'
TX_RESP_Q174 = 'Indique a periodicidade da avalia��o '
TX_RESP_Q175 = 'Indique as etapas da Educa��o B�sica que s�o avaliadas pela Secretaria: Creche '
TX_RESP_Q176 = 'Indique as etapas da Educa��o B�sica que s�o avaliadas pela Secretaria: Pr�-escola '
TX_RESP_Q177 = 'Indique as etapas da Educa��o B�sica que s�o avaliadas pela Secretaria: Ensino Fundamental - Anos iniciais '
TX_RESP_Q178 = 'Indique as etapas da Educa��o B�sica que s�o avaliadas pela Secretaria: Ensino Fundamental - Anos finais '
TX_RESP_Q179 = 'Indique as etapas da Educa��o B�sica que s�o avaliadas pela Secretaria: Ensino M�dio '
TX_RESP_Q180 = 'Indique o que � avaliado: Instala��es e equipamentos '
TX_RESP_Q181 = 'Indique o que � avaliado: Projeto pedag�gico '
TX_RESP_Q182 = 'Indique o que � avaliado: Desenvolvimento dos alunos '
TX_RESP_Q183 = 'Indique o que � avaliado: Desempenho dos alunos '
TX_RESP_Q184 = 'Indique o que � avaliado: Desempenho dos professores '
TX_RESP_Q185 = 'Indique o que � avaliado: Outros '
TX_RESP_Q186 = 'Indique quais profissionais vinculados � sua Secretaria possuem plano de carreira. Auxiliares e assistentes da Educa��o Infantil'
TX_RESP_Q187 = 'Indique quais profissionais vinculados � sua Secretaria possuem plano de carreira. Professores(as) da Educa��o Infantil:'
TX_RESP_Q188 = 'Indique quais profissionais vinculados � sua Secretaria possuem plano de carreira. Professores(as) do Ensino Fundamental:'
TX_RESP_Q189 = 'Indique quais profissionais vinculados � sua Secretaria possuem plano de carreira. Professores(as) do Ensino M�dio:'
TX_RESP_Q190 = 'Indique quais profissionais vinculados � sua Secretaria possuem plano de carreira. Profissionais n�o-docentes'
TX_RESP_Q191 = 'Quais as jornadas de trabalho semanais dos(as) professores(as)? At� 20 horas semanais.'
TX_RESP_Q192 = 'Quais as jornadas de trabalho semanais dos(as) professores(as)? De 21 a 30 horas semanais.'
TX_RESP_Q193 = 'Quais as jornadas de trabalho semanais dos(as) professores(as)? De 31 a 40 horas semanais.'
TX_RESP_Q194 = 'Quais as jornadas de trabalho semanais dos(as) professores(as)? Mais de 40 horas semanais.'
TX_RESP_Q195 = 'O plano de carreira prev� o limite m�ximo de 2/3 da jornada do(a) professor(a) em sala de aula?'
TX_RESP_Q196 = 'Para TODOS(AS) os(as) professores(as) com jornada de trabalho de 40 horas semanais o VENCIMENTO B�SICO INICIAL � igual ou superior a R$ 2.557,74 mensais?'
TX_RESP_Q197 = 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Tempo de efetivo exerc�cio no cargo '
TX_RESP_Q198 = 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Qualifica��o '
TX_RESP_Q199 = 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Titula��o '
TX_RESP_Q200 = 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Assiduidade '
TX_RESP_Q201 = 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Avalia��o de desempenho '
TX_RESP_Q202 = 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Prova de conhecimentos para professores '
TX_RESP_Q203 = 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Desempenho dos alunos em avalia��o externa '
TX_RESP_Q204 = 'Quais crit�rios de progress�o ou promo��o s�o utilizados no plano de carreira do magist�rio? Outros '
TX_RESP_Q205 = 'A remunera��o dos(as) professores(as) de Educa��o Infantil, comparada com a dos(as) professores(as) com o mesmo n�vel de forma��o que atuam no Ensino Fundamental:'
TX_RESP_Q206 = 'A remunera��o dos(as) professores(as) de Ensino M�dio, comparada com a dos(as) professores(as) com o mesmo n�vel de forma��o que atuam no Ensino Fundamental:'
TX_RESP_Q207 = 'Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede? Conte�do e compreens�o dos conceitos da(s) �rea(s) de ensino:'
TX_RESP_Q208 = 'Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede? Avalia��o da aprendizagem:'
TX_RESP_Q209 = 'Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede? Avalia��o em larga escala:'
TX_RESP_Q210 = 'Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede? Metodologias de ensino:'
TX_RESP_Q211 = 'Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede? Conhecimento do curr�culo:'
TX_RESP_Q212 = 'Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede? Gest�o da sala de aula:'
TX_RESP_Q213 = 'Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede? Educa��o inclusiva:'
TX_RESP_Q214 = 'Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede? Novas tecnologias:'
TX_RESP_Q215 = 'Neste ano, quais temas foram abordados em cursos de forma��o continuada para professores da rede? Gest�o e administra��o escolar:'
TX_RESP_Q216 = 'Sobre este question�rio, avalie: Facilidade de preenchimento das respostas'
TX_RESP_Q217 = 'Sobre este question�rio, avalie: A compreens�o dos termos utilizados no question�rio'

;
run;quit;