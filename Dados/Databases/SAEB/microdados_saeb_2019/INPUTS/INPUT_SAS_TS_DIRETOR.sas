/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                */ 
/*                                   			                                       */
/*  Coordena��o-Geral de Instrumentos de Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_DIRETOR                                                  */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:   PROGRAMA PARA LEITURA DO QUESTION�RIO DO DIRETOR DO SAEB 2019         */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, � necess�rio salvar este programa e o arquivo             */
/* TS_DIRETOR.CSV no diret�rio C:\ do computador.	                                   */
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

value ID_AREA
1 = 'Capital'
2 = 'Interior';

value ID_DEPENDENCIA_ADM
1='Federal'
2='Estadual'
3='Municipal'
4='Privada';

value ID_LOCALIZACAO
1='Urbana'
2='Rural';

value IN_PREENCHIMENTO_QUESTIONARIO
0='N�o preenchido'
1='Preenchido parcial ou totalmente';

value $QDum
A = 'Branca'
B = 'Preta'
C = 'Parda'
D = 'Amarela'
E = 'Ind�gena'
F = 'N�o quero declarar'; 

value $QDvintedois
A = 'Nada preparado'
B = 'Pouco preparado'
C = 'Preparado'
D = 'Muito preparado'; 

value $QDvintetres
A = 'Nada preparado'
B = 'Pouco preparado'
C = 'Preparado'
D = 'Muito preparado'; 

value $QDvintequatro
A = 'Nada preparado'
B = 'Pouco preparado'
C = 'Preparado'
D = 'Muito preparado'; 

value $QDvintecinco
A = 'Nada preparado'
B = 'Pouco preparado'
C = 'Preparado'
D = 'Muito preparado'; 

value $QDvinteseis
A = 'Nada preparado'
B = 'Pouco preparado'
C = 'Preparado'
D = 'Muito preparado'; 

value $QDvintesete
A = 'Nada preparado'
B = 'Pouco preparado'
C = 'Preparado'
D = 'Muito preparado'; 

value $QDvinteoito
A = 'Nada preparado'
B = 'Pouco preparado'
C = 'Preparado'
D = 'Muito preparado'; 

value $QDvintenove
A = 'Nada preparado'
B = 'Pouco preparado'
C = 'Preparado'
D = 'Muito preparado'; 

value $QDtrinta
A = 'Nada preparado'
B = 'Pouco preparado'
C = 'Preparado'
D = 'Muito preparado'; 

value $QDtrintaum
A = 'Nada preparado'
B = 'Pouco preparado'
C = 'Preparado'
D = 'Muito preparado'; 

value $QDtrintadois
A = 'Nada preparado'
B = 'Pouco preparado'
C = 'Preparado'
D = 'Muito preparado'; 

value $QDtrintatres
A = 'Nada preparado'
B = 'Pouco preparado'
C = 'Preparado'
D = 'Muito preparado'; 

value $QDtrintaquatro
A = 'Sim'
B = 'N�o'; 

value $QDtrintacinco
A = 'Sim'
B = 'N�o'; 

value $QDtrintaseis
A = 'Sim'
B = 'N�o'; 

value $QDtrintasete
A = 'Sim'
B = 'N�o'; 

value $QDtrintaoito
A = 'Sim'
B = 'N�o'; 

value $QDtrintanove
A = 'Sim'
B = 'N�o'; 

value $QDquarenta
A = 'Sim'
B = 'N�o'; 

value $QDquarentaum
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDquarentadois
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDquarentatres
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDquarentaquatro
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDquarentacinco
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDquarentaseis
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDquarentasete
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDquarentaoito
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDquarentanove
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDcinquenta
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDcinquentaum
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDcinquentadois
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDcinquentatres
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDcinquentaquatro
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDcinquentacinco
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDcinquentaseis
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDcinquentasete
A = 'Sim'
B = 'N�o'; 

value $QDcinquentaoito
A = 'Sim'
B = 'N�o'; 

value $QDcinquentanove
A = 'Sim'
B = 'N�o'; 

value $QDsessenta
A = 'Sim'
B = 'N�o'; 

value $QDsessentaum
A = 'Sim'
B = 'N�o'; 

value $QDsessentadois
A = 'Sim'
B = 'N�o'; 

value $QDsessentatres
A = 'Sim'
B = 'N�o'; 

value $QDsessentaquatro
A = 'Sim'
B = 'N�o'; 

value $QDsessentacinco
A = 'Sim'
B = 'N�o'; 

value $QDsessentaseis
A = 'Sim'
B = 'N�o'; 

value $QDsessentaoito
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes'; 

value $QDsessentanove
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes'; 

value $QDsetenta
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes'; 

value $QDsetentaum
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes'; 

value $QDsetentadois
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes'; 

value $QDsetentatres
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes'; 

value $QDsetentaquatro
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes'; 

value $QDsetentacinco
A = 'Nunca'
B = 'Poucas vezes'
C = 'V�rias vezes'; 

value $QDsetentaseis
A = 'Sim'
B = 'N�o'; 

value $QDsetentasete
A = 'Sim'
B = 'N�o'; 

value $QDsetentaoito
A = 'Sim'
B = 'N�o'; 

value $QDsetentanove
A = 'Sim'
B = 'N�o'; 

value $QDoitenta
A = 'Sim'
B = 'N�o'; 

value $QDoitentaum
A = 'Sim'
B = 'N�o'; 

value $QDoitentadois
A = 'Sim'
B = 'N�o'; 

value $QDoitentatres
A = 'Sim'
B = 'N�o'; 

value $QDoitentaquatro
A = 'Sim'
B = 'N�o'; 

value $QDoitentacinco
A = 'Sim'
B = 'N�o'; 

value $QDoitentaseis
A = 'Sim'
B = 'N�o'; 

value $QDoitentasete
A = 'Sim'
B = 'N�o'; 

value $QDoitentaoito
A = 'Sim'
B = 'N�o'; 

value $QDoitentanove
A = 'Sim'
B = 'N�o'; 

value $QDnoventa
A = 'Sim'
B = 'N�o'; 

value $QDnoventaum
A = 'Sim'
B = 'N�o'; 

value $QDnoventadois
A = 'Sim'
B = 'N�o'; 

value $QDnoventatres
A = 'Sim'
B = 'N�o'; 

value $QDnoventaquatro
A = 'Sim'
B = 'N�o'; 

value $QDnoventacinco
A = 'Sim'
B = 'N�o'; 

value $QDnoventaseis
A = 'Sim'
B = 'N�o'; 

value $QDnoventasete
A = 'Sim'
B = 'N�o'; 

value $QDnoventaoito
A = 'Sim'
B = 'N�o'; 

value $QDnoventanove
A = 'Sim'
B = 'N�o'; 

value $QDcem
A = 'Sim'
B = 'N�o'; 

value $QDcemum
A = 'Sim'
B = 'N�o'; 

value $QDcemdois
A = 'Sim'
B = 'N�o'; 

value $QDcemtres
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado'; 

value $QDcemquatro
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado'; 

value $QDcemcinco
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado';  

value $QDcemseis
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado'; 

value $QDcemsete
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado';  

value $QDcemoito
A = 'Muito inadequado'
B = 'Inadequado'
C = 'Adequado'
D = 'Muito adequado'; 

value $QDcemnove
A = 'Sim'
B = 'N�o'; 

value $QDcemdez
A = 'Sim'
B = 'N�o'; 

value $QDcemonze
A = 'Sim'
B = 'N�o'; 

value $QDcemdoze
A = 'Sim'
B = 'N�o'; 

value $QDcemtreze
A = 'Sim'
B = 'N�o'; 

value $QDcemcatorze
A = 'Sim'
B = 'N�o'; 

value $QDcemquinze
A = 'Sim'
B = 'N�o'; 

value $QDcemdezesseis
A = 'Sim'
B = 'N�o'; 

value $QDcemdezessete
A = 'Sim'
B = 'N�o'; 

value $QDcemdezoito
A = 'Sim, existe e est� ativo'
B = 'Sim, existe, mas est� inativo'
C = 'N�o existe Conselho Escolar'; 

value $QDcemvintecinco
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre'; 

value $QDcemvinteseis
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre'; 

value $QDcemvintesete
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre';  

value $QDcemvinteoito
A = 'Nunca'
B = 'Poucas vezes'
C = 'Muitas vezes'
D = 'Sempre'; 

value $QDcemvintenove
A = 'Sim'
B = 'N�o'; 

value $QDcemtrintaum
A = 'Sim'
B = 'N�o'; 

value $QDcemtrintatres
A = 'Sim'
B = 'N�o'; 

value $QDcemtrintaquatro
A = 'Sim, existe e est� ativo'
B = 'Sim, existe, mas est� inativo'
C = 'N�o existe gr�mio estudantil'
D = 'N�o se aplica'; 

value $QDcemtrintacinco
A = 'Sim'
B = 'N�o'; 

value $QDcemtrintaseis
A = 'Sim'
B = 'N�o'; 

value $QDcemtrintasete
A = 'Sim'
B = 'N�o'; 

value $QDcemtrintaoito
A = 'Sim'
B = 'N�o'; 

value $QDcemtrintanove
A = 'Sim'
B = 'N�o'; 

value $QDcemquarenta
A = 'Sim'
B = 'N�o'; 

value $QDcemquarentaum
A = 'Sim'
B = 'N�o'; 

value $QDcemquarentadois
A = 'Sim'
B = 'N�o'; 

value $QDcemquarentatres
A = 'Sim'
B = 'N�o'; 

value $QDcemquarentaquatro
A = 'Sim'
B = 'N�o'; 

value $QDcemquarentacinco
A = 'Sim'
B = 'N�o'; 

value $QDcemquarentaseis
A = 'Sim'
B = 'N�o'; 

value $QDcemquarentasete
A = 'Uma vez'
B = 'Duas vezes'
C = 'Tr�s vezes ou mais'
D = 'N�o se aplica'; 

value $QDcemquarentaoito
A = 'Uma vez'
B = 'Duas vezes'
C = 'Tr�s vezes ou mais'
D = 'N�o se aplica'; 

value $QDcemquarentanove
A = 'Uma vez'
B = 'Duas vezes'
C = 'Tr�s vezes ou mais'
D = 'N�o se aplica'; 

value $QDcemcinquenta
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDcemcinquentaum
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDcemcinquentadois
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDcemcinquentatres
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDcemcinquentaquatro
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDcemcinquentacinco
A = 'Discordo fortemente'
B = 'Discordo'
C = 'Concordo'
D = 'Concordo fortemente'; 

value $QDcemcinquentaseis
A = 'Sim'
B = 'N�o'; 

value $QDcemcinquentasete
A = 'Sim'
B = 'N�o'; 

value $QDcemcinquentaoito
A = 'Sim'
B = 'N�o'; 

value $QDcemcinquentanove
A = 'Sim'
B = 'N�o'
C = 'N�o se aplica'; 

value $QDcemsessenta
A = 'Sim'
B = 'N�o'
C = 'N�o se aplica'; 

value $QDcemsessentaum
A = 'Sim'
B = 'N�o'
C = 'N�o se aplica'; 

value $QDcemsessentadois
A = 'Sim'
B = 'N�o'
C = 'N�o se aplica'; 

value $QDcemsessentatres
A = 'Sim'
B = 'N�o'
C = 'N�o se aplica'; 

value $QDcemsessentaquatro
A = 'Sim'
B = 'N�o'
C = 'N�o se aplica'; 

value $QDcemsessentacinco
A = 'Sim'
B = 'N�o'
C = 'N�o se aplica'; 

value $QDcemsessentaseis
A = 'Sim'
B = 'N�o'; 

value $QDcemsessentasete
A = 'Sim'
B = 'N�o'; 

value $QDcemsessentaoito
A = 'Sim'
B = 'N�o'; 

value $QDcemsessentanove
A = 'Sim'
B = 'N�o'; 

value $QDcemsetenta
A = 'Sim'
B = 'N�o'; 

value $QDcemsetentaum
A = 'Sim'
B = 'N�o'; 

value $QDcemsetentadois
A = 'Sim'
B = 'N�o'; 

value $QDcemsetentatres
A = 'Sim'
B = 'N�o'; 

value $QDcemsetentaquatro
A = 'Sim'
B = 'N�o'; 

value $QDcemsetentacinco
A = 'Sim'
B = 'N�o'; 

value $QDcemsetentaseis
A = 'Sim'
B = 'N�o'; 

value $QDcemsetentasete
A = 'Sim'
B = 'N�o'; 

value $QDcemsetentaoito
A = 'Sim'
B = 'N�o'; 

value $QDcemsetentanove
A = 'Sim'
B = 'N�o'; 

value $QDcemoitenta
A = 'Sim'
B = 'N�o'; 

value $QDcemoitentaum
A = 'Sim'
B = 'N�o'; 

value $QDcemoitentadois
A = 'Sim'
B = 'N�o'; 

value $QDcemoitentatres
A = 'Sim'
B = 'N�o'; 

value $QDcemoitentaquatro
A = 'Sim'
B = 'N�o'; 

value $QDcemoitentacinco
A = 'Sim'
B = 'N�o'; 

value $QDcemoitentaseis
A = 'Sim'
B = 'N�o'; 

value $QDcemoitentasete
A = 'Sim'
B = 'N�o'; 

value $QDcemoitentaoito
A = 'Sim'
B = 'N�o'; 

value $QDcemoitentanove
A = 'Sim'
B = 'N�o'; 

value $QDcemnoventa
A = 'Sim'
B = 'N�o'; 

value $QDcemnoventaum
A = 'Sim'
B = 'N�o'; 

value $QDcemnoventadois
A = 'Sim'
B = 'N�o'; 

value $QDcemnoventatres
A = 'Sim'
B = 'N�o'; 

value $QDcemnoventaquatro
A = 'Sim'
B = 'N�o'; 

value $QDcemnoventacinco
A = 'Sim'
B = 'N�o'; 

value $QDcemnoventaseis
A = 'Sim'
B = 'N�o'; 

value $QDcemnoventasete
A = 'Sim'
B = 'N�o'; 

value $QDcemnoventaoito
A = 'Sim'
B = 'N�o'; 

value $QDcemnoventanove
A = 'N�o foi realizada esta a��o'
B = 'Nada efetiva'
C = 'Pouco efetiva'
D = 'Efetiva'
E = 'Muito efetiva'; 

value $QDduzentos
A = 'N�o foi realizada esta a��o'
B = 'Nada efetiva'
C = 'Pouco efetiva'
D = 'Efetiva'
E = 'Muito efetiva'; 

value $QDduzentosum
A = 'N�o foi realizada esta a��o'
B = 'Nada efetiva'
C = 'Pouco efetiva'
D = 'Efetiva'
E = 'Muito efetiva'; 

value $QDduzentosdois
A = 'N�o foi realizada esta a��o'
B = 'Nada efetiva'
C = 'Pouco efetiva'
D = 'Efetiva'
E = 'Muito efetiva'; 

value $QDduzentostres
A = 'N�o foi realizada esta a��o'
B = 'Nada efetiva'
C = 'Pouco efetiva'
D = 'Efetiva'
E = 'Muito efetiva'; 

value $QDduzentosquatro
A = 'N�o foi realizada esta a��o'
B = 'Nada efetiva'
C = 'Pouco efetiva'
D = 'Efetiva'
E = 'Muito efetiva'; 

value $QDduzentoscinco
A = 'N�o foi realizada esta a��o'
B = 'Nada efetiva'
C = 'Pouco efetiva'
D = 'Efetiva'
E = 'Muito efetiva'; 

value $QDduzentosseis
A = 'Sim'
B = 'N�o'; 

value $QDduzentossete
A = 'Sim'
B = 'N�o'; 

value $QDduzentosoito
A = 'Sim'
B = 'N�o'; 

value $QDduzentosnove
A = 'Sim'
B = 'N�o'; 

value $QDduzentosdez
A = 'Sim'
B = 'N�o'; 

value $QDduzentosonze
A = 'Sim'
B = 'N�o'; 

value $QDduzentosdoze
A = 'Sim'
B = 'N�o'; 

value $QDduzentostreze
A = 'Sim'
B = 'N�o'; 

value $QDduzentoscatorze
A = 'Sim'
B = 'N�o'; 

value $QDduzentosquinze
A = 'Sim'
B = 'N�o'; 

value $QDduzentosdezesseis
A = 'Sim'
B = 'N�o'; 

value $QDduzentosdezessete
A = 'Sim'
B = 'N�o'; 

value $QDduzentosdezoito
A = 'Sim'
B = 'N�o'; 

value $QDduzentosdezenove
A = 'Sim'
B = 'N�o'; 

value $QDduzentosvinte
A = 'Sim'
B = 'N�o'; 

value $QDduzentosvinteum
A = 'Sim'
B = 'N�o'; 

value $QDduzentosvintedois
A = 'Sim'
B = 'N�o'; 

value $QDduzentosvintetres
A = 'Sim'
B = 'N�o'; 

value $QDduzentosvintequatro
A = 'Sim'
B = 'N�o'; 

value $QDduzentosvintecinco
A = 'Sim'
B = 'N�o'; 

value $QDduzentosvinteseis
A = 'Sim'
B = 'N�o'; 

value $QDduzentosvintesete
A = 'Sim'
B = 'N�o'; 

value $QDduzentosvinteoito
A = 'Sim'
B = 'N�o'; 

value $QDduzentosvintenove
A = 'Sim'
B = 'N�o'; 

value $QDduzentostrinta
A = 'Sim'
B = 'N�o'; 

value $QDduzentostrintaum
A = 'Sim'
B = 'N�o'; 

value $QDduzentostrintadois
A = 'Sim'
B = 'N�o'; 

value $QDduzentostrintatres
A = 'Sim'
B = 'N�o'; 

value $QDduzentostrintaquatro
A = 'Sim'
B = 'N�o'; 

value $QDduzentostrintacinco
A = 'Sim'
B = 'N�o'; 

value $QDduzentostrintaseis
A = 'Sim'
B = 'N�o'; 

value $QDduzentostrintasete
A = 'Sim'
B = 'N�o'; 

value $QDduzentostrintaoito
A = 'Sim'
B = 'N�o'; 

value $QDduzentostrintanove
A = 'Sim'
B = 'N�o'; 

value $QDduzentosquarenta
A = 'Sim'
B = 'N�o'; 

value $QDduzentosquarentaum
A = 'Sim'
B = 'N�o'; 

value $QDduzentosquarentadois
A = 'Sim'
B = 'N�o'; 

value $QDduzentosquarentatres
A = 'Sim'
B = 'N�o'; 

value $QDduzentosquarentaquatro
A = 'Sim'
B = 'N�o'; 

value $QDduzentosquarentacinco
A = 'Sim'
B = 'N�o'; 

value $QDduzentosquarentaseis
A = 'Sim'
B = 'N�o'; 

value $QDduzentosquarentasete
A = 'Sim'
B = 'N�o'; 

value $QDduzentosquarentaoito
A = 'Sim'
B = 'N�o'; 

value $QDduzentosquarentanove
A = 'Sim'
B = 'N�o'; 

value $QDduzentoscinquenta
A = 'Sim'
B = 'N�o'; 

value $QDduzentoscinquentaum
A = 'Sim'
B = 'N�o'; 

value $QDduzentoscinquentadois
A = 'Muito dif�cil'
B = 'Dif�cil'
C = 'Nem f�cil e nem dif�cil'
D = 'F�cil'
E = 'Muito f�cil'; 

value $QDduzentoscinquentatres
A = 'Muito dif�cil'
B = 'Dif�cil'
C = 'Nem f�cil e nem dif�cil'
D = 'F�cil'
E = 'Muito f�cil'; 

run;

DATA WORK.TS_DIRETOR;

 INFILE 'C:/TS_DIRETOR.csv' /*Endere�o do arquivo*/
        LRECL=4096
		firstobs=2
        DLM=","
        MISSOVER
        DSD ;

INPUT
ID_SAEB : 4.          
ID_REGIAO : 1.                  
ID_UF : 2.                  
ID_MUNICIPIO : 7.               
ID_AREA : 1.               
ID_ESCOLA : 8.                  
ID_DEPENDENCIA_ADM : 1.         
ID_LOCALIZACAO : 1.      
IN_PREENCHIMENTO_QUESTIONARIO : 1.
TX_RESP_Q001 : $CHAR1.
TX_RESP_Q002 : BEST4.
TX_RESP_Q003 : BEST4.
TX_RESP_Q004 : BEST4.
TX_RESP_Q005 : BEST4.
TX_RESP_Q006 : BEST4.
TX_RESP_Q007 : BEST4.
TX_RESP_Q008 : BEST4.
TX_RESP_Q009 : BEST4.
TX_RESP_Q010 : BEST4.
TX_RESP_Q011 : BEST4.
TX_RESP_Q012 : BEST4.
TX_RESP_Q013 : BEST4.
TX_RESP_Q014 : BEST4.
TX_RESP_Q015 : BEST4.
TX_RESP_Q016 : BEST4.
TX_RESP_Q017 : BEST4.
TX_RESP_Q018 : BEST4.
TX_RESP_Q019 : BEST4.
TX_RESP_Q020 : BEST4.
TX_RESP_Q021 : BEST4.
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
TX_RESP_Q067 : BEST4.
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
TX_RESP_Q119 : BEST4.
TX_RESP_Q120 : BEST4.
TX_RESP_Q121 : BEST4.
TX_RESP_Q122 : BEST4.
TX_RESP_Q123 : BEST4.
TX_RESP_Q124 : BEST4.
TX_RESP_Q125 : $CHAR1.
TX_RESP_Q126 : $CHAR1.
TX_RESP_Q127 : $CHAR1.
TX_RESP_Q128 : $CHAR1.
TX_RESP_Q129 : $CHAR1.
TX_RESP_Q130 : BEST4.
TX_RESP_Q131 : $CHAR1.
TX_RESP_Q132 : BEST4.
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
TX_RESP_Q218 : $CHAR1.
TX_RESP_Q219 : $CHAR1.
TX_RESP_Q220 : $CHAR1.
TX_RESP_Q221 : $CHAR1.
TX_RESP_Q222 : $CHAR1.
TX_RESP_Q223 : $CHAR1.
TX_RESP_Q224 : $CHAR1.
TX_RESP_Q225 : $CHAR1.
TX_RESP_Q226 : $CHAR1.
TX_RESP_Q227 : $CHAR1.
TX_RESP_Q228 : $CHAR1.
TX_RESP_Q229 : $CHAR1.
TX_RESP_Q230 : $CHAR1.
TX_RESP_Q231 : $CHAR1.
TX_RESP_Q232 : $CHAR1.
TX_RESP_Q233 : $CHAR1.
TX_RESP_Q234 : $CHAR1.
TX_RESP_Q235 : $CHAR1.
TX_RESP_Q236 : $CHAR1.
TX_RESP_Q237 : $CHAR1.
TX_RESP_Q238 : $CHAR1.
TX_RESP_Q239 : $CHAR1.
TX_RESP_Q240 : $CHAR1.
TX_RESP_Q241 : $CHAR1.
TX_RESP_Q242 : $CHAR1.
TX_RESP_Q243 : $CHAR1.
TX_RESP_Q244 : $CHAR1.
TX_RESP_Q245 : $CHAR1.
TX_RESP_Q246 : $CHAR1.
TX_RESP_Q247 : $CHAR1.
TX_RESP_Q248 : $CHAR1.
TX_RESP_Q249 : $CHAR1.
TX_RESP_Q250 : $CHAR1.
TX_RESP_Q251 : $CHAR1.
TX_RESP_Q252 : $CHAR1.
TX_RESP_Q253 : $CHAR1.
;  

ATTRIB ID_REGIAO FORMAT=ID_REGIAO12.;
ATTRIB ID_UF FORMAT=ID_UF2.;
ATTRIB ID_AREA FORMAT=ID_AREA8.;
ATTRIB ID_DEPENDENCIA_ADM FORMAT=ID_DEPENDENCIA_ADM9.;
ATTRIB ID_LOCALIZACAO FORMAT=ID_LOCALIZACAO9.;
ATTRIB IN_PREENCHIMENTO_QUESTIONARIO FORMAT=IN_PREENCHIMENTO_QUESTIONARIO32.;
ATTRIB TX_RESP_Q001 FORMAT=$QDum.;
ATTRIB TX_RESP_Q022 FORMAT=$QDvintedois.;
ATTRIB TX_RESP_Q023 FORMAT=$QDvintetres.;
ATTRIB TX_RESP_Q024 FORMAT=$QDvintequatro.;
ATTRIB TX_RESP_Q025 FORMAT=$QDvintecinco.;
ATTRIB TX_RESP_Q026 FORMAT=$QDvinteseis.;
ATTRIB TX_RESP_Q027 FORMAT=$QDvintesete.;
ATTRIB TX_RESP_Q028 FORMAT=$QDvinteoito.;
ATTRIB TX_RESP_Q029 FORMAT=$QDvintenove.;
ATTRIB TX_RESP_Q030 FORMAT=$QDtrinta.;
ATTRIB TX_RESP_Q031 FORMAT=$QDtrintaum.;
ATTRIB TX_RESP_Q032 FORMAT=$QDtrintadois.;
ATTRIB TX_RESP_Q033 FORMAT=$QDtrintatres.;
ATTRIB TX_RESP_Q034 FORMAT=$QDtrintaquatro.;
ATTRIB TX_RESP_Q035 FORMAT=$QDtrintacinco.;
ATTRIB TX_RESP_Q036 FORMAT=$QDtrintaseis.;
ATTRIB TX_RESP_Q037 FORMAT=$QDtrintasete.;
ATTRIB TX_RESP_Q038 FORMAT=$QDtrintaoito.;
ATTRIB TX_RESP_Q039 FORMAT=$QDtrintanove.;
ATTRIB TX_RESP_Q040 FORMAT=$QDquarenta.;
ATTRIB TX_RESP_Q041 FORMAT=$QDquarentaum.;
ATTRIB TX_RESP_Q042 FORMAT=$QDquarentadois.;
ATTRIB TX_RESP_Q043 FORMAT=$QDquarentatres.;
ATTRIB TX_RESP_Q044 FORMAT=$QDquarentaquatro.;
ATTRIB TX_RESP_Q045 FORMAT=$QDquarentacinco.;
ATTRIB TX_RESP_Q046 FORMAT=$QDquarentaseis.;
ATTRIB TX_RESP_Q047 FORMAT=$QDquarentasete.;
ATTRIB TX_RESP_Q048 FORMAT=$QDquarentaoito.;
ATTRIB TX_RESP_Q049 FORMAT=$QDquarentanove.;
ATTRIB TX_RESP_Q050 FORMAT=$QDcinquenta.;
ATTRIB TX_RESP_Q051 FORMAT=$QDcinquentaum.;
ATTRIB TX_RESP_Q052 FORMAT=$QDcinquentadois.;
ATTRIB TX_RESP_Q053 FORMAT=$QDcinquentatres.;
ATTRIB TX_RESP_Q054 FORMAT=$QDcinquentaquatro.;
ATTRIB TX_RESP_Q055 FORMAT=$QDcinquentacinco.;
ATTRIB TX_RESP_Q056 FORMAT=$QDcinquentaseis.;
ATTRIB TX_RESP_Q057 FORMAT=$QDcinquentasete.;
ATTRIB TX_RESP_Q058 FORMAT=$QDcinquentaoito.;
ATTRIB TX_RESP_Q059 FORMAT=$QDcinquentanove.;
ATTRIB TX_RESP_Q060 FORMAT=$QDsessenta.;
ATTRIB TX_RESP_Q061 FORMAT=$QDsessentaum.;
ATTRIB TX_RESP_Q062 FORMAT=$QDsessentadois.;
ATTRIB TX_RESP_Q063 FORMAT=$QDsessentatres.;
ATTRIB TX_RESP_Q064 FORMAT=$QDsessentaquatro.;
ATTRIB TX_RESP_Q065 FORMAT=$QDsessentacinco.;
ATTRIB TX_RESP_Q066 FORMAT=$QDsessentaseis.;
ATTRIB TX_RESP_Q068 FORMAT=$QDsessentaoito.;
ATTRIB TX_RESP_Q069 FORMAT=$QDsessentanove.;
ATTRIB TX_RESP_Q070 FORMAT=$QDsetenta.;
ATTRIB TX_RESP_Q071 FORMAT=$QDsetentaum.;
ATTRIB TX_RESP_Q072 FORMAT=$QDsetentadois.;
ATTRIB TX_RESP_Q073 FORMAT=$QDsetentatres.;
ATTRIB TX_RESP_Q074 FORMAT=$QDsetentaquatro.;
ATTRIB TX_RESP_Q075 FORMAT=$QDsetentacinco.;
ATTRIB TX_RESP_Q076 FORMAT=$QDsetentaseis.;
ATTRIB TX_RESP_Q077 FORMAT=$QDsetentasete.;
ATTRIB TX_RESP_Q078 FORMAT=$QDsetentaoito.;
ATTRIB TX_RESP_Q079 FORMAT=$QDsetentanove.;
ATTRIB TX_RESP_Q080 FORMAT=$QDoitenta.;
ATTRIB TX_RESP_Q081 FORMAT=$QDoitentaum.;
ATTRIB TX_RESP_Q082 FORMAT=$QDoitentadois.;
ATTRIB TX_RESP_Q083 FORMAT=$QDoitentatres.;
ATTRIB TX_RESP_Q084 FORMAT=$QDoitentaquatro.;
ATTRIB TX_RESP_Q085 FORMAT=$QDoitentacinco.;
ATTRIB TX_RESP_Q086 FORMAT=$QDoitentaseis.;
ATTRIB TX_RESP_Q087 FORMAT=$QDoitentasete.;
ATTRIB TX_RESP_Q088 FORMAT=$QDoitentaoito.;
ATTRIB TX_RESP_Q089 FORMAT=$QDoitentanove.;
ATTRIB TX_RESP_Q090 FORMAT=$QDnoventa.;
ATTRIB TX_RESP_Q091 FORMAT=$QDnoventaum.;
ATTRIB TX_RESP_Q092 FORMAT=$QDnoventadois.;
ATTRIB TX_RESP_Q093 FORMAT=$QDnoventatres.;
ATTRIB TX_RESP_Q094 FORMAT=$QDnoventaquatro.;
ATTRIB TX_RESP_Q095 FORMAT=$QDnoventacinco.;
ATTRIB TX_RESP_Q096 FORMAT=$QDnoventaseis.;
ATTRIB TX_RESP_Q097 FORMAT=$QDnoventasete.;
ATTRIB TX_RESP_Q098 FORMAT=$QDnoventaoito.;
ATTRIB TX_RESP_Q099 FORMAT=$QDnoventanove.;
ATTRIB TX_RESP_Q100 FORMAT=$QDcem.;
ATTRIB TX_RESP_Q101 FORMAT=$QDcemum.;
ATTRIB TX_RESP_Q102 FORMAT=$QDcemdois.;
ATTRIB TX_RESP_Q103 FORMAT=$QDcemtres.;
ATTRIB TX_RESP_Q104 FORMAT=$QDcemquatro.;
ATTRIB TX_RESP_Q105 FORMAT=$QDcemcinco.;
ATTRIB TX_RESP_Q106 FORMAT=$QDcemseis.;
ATTRIB TX_RESP_Q107 FORMAT=$QDcemsete.;
ATTRIB TX_RESP_Q108 FORMAT=$QDcemoito.;
ATTRIB TX_RESP_Q109 FORMAT=$QDcemnove.;
ATTRIB TX_RESP_Q110 FORMAT=$QDcemdez.;
ATTRIB TX_RESP_Q111 FORMAT=$QDcemonze.;
ATTRIB TX_RESP_Q112 FORMAT=$QDcemdoze.;
ATTRIB TX_RESP_Q113 FORMAT=$QDcemtreze.;
ATTRIB TX_RESP_Q114 FORMAT=$QDcemcatorze.;
ATTRIB TX_RESP_Q115 FORMAT=$QDcemquinze.;
ATTRIB TX_RESP_Q116 FORMAT=$QDcemdezesseis.;
ATTRIB TX_RESP_Q117 FORMAT=$QDcemdezessete.;
ATTRIB TX_RESP_Q118 FORMAT=$QDcemdezoito.;
ATTRIB TX_RESP_Q125 FORMAT=$QDcemvintecinco.;
ATTRIB TX_RESP_Q126 FORMAT=$QDcemvinteseis.;
ATTRIB TX_RESP_Q127 FORMAT=$QDcemvintesete.;
ATTRIB TX_RESP_Q128 FORMAT=$QDcemvinteoito.;
ATTRIB TX_RESP_Q129 FORMAT=$QDcemvintenove.;
ATTRIB TX_RESP_Q131 FORMAT=$QDcemtrintaum.;
ATTRIB TX_RESP_Q133 FORMAT=$QDcemtrintatres.;
ATTRIB TX_RESP_Q134 FORMAT=$QDcemtrintaquatro.;
ATTRIB TX_RESP_Q135 FORMAT=$QDcemtrintacinco.;
ATTRIB TX_RESP_Q136 FORMAT=$QDcemtrintaseis.;
ATTRIB TX_RESP_Q137 FORMAT=$QDcemtrintasete.;
ATTRIB TX_RESP_Q138 FORMAT=$QDcemtrintaoito.;
ATTRIB TX_RESP_Q139 FORMAT=$QDcemtrintanove.;
ATTRIB TX_RESP_Q140 FORMAT=$QDcemquarenta.;
ATTRIB TX_RESP_Q141 FORMAT=$QDcemquarentaum.;
ATTRIB TX_RESP_Q142 FORMAT=$QDcemquarentadois.;
ATTRIB TX_RESP_Q143 FORMAT=$QDcemquarentatres.;
ATTRIB TX_RESP_Q144 FORMAT=$QDcemquarentaquatro.;
ATTRIB TX_RESP_Q145 FORMAT=$QDcemquarentacinco.;
ATTRIB TX_RESP_Q146 FORMAT=$QDcemquarentaseis.;
ATTRIB TX_RESP_Q147 FORMAT=$QDcemquarentasete.;
ATTRIB TX_RESP_Q148 FORMAT=$QDcemquarentaoito.;
ATTRIB TX_RESP_Q149 FORMAT=$QDcemquarentanove.;
ATTRIB TX_RESP_Q150 FORMAT=$QDcemcinquenta.;
ATTRIB TX_RESP_Q151 FORMAT=$QDcemcinquentaum.;
ATTRIB TX_RESP_Q152 FORMAT=$QDcemcinquentadois.;
ATTRIB TX_RESP_Q153 FORMAT=$QDcemcinquentatres.;
ATTRIB TX_RESP_Q154 FORMAT=$QDcemcinquentaquatro.;
ATTRIB TX_RESP_Q155 FORMAT=$QDcemcinquentacinco.;
ATTRIB TX_RESP_Q156 FORMAT=$QDcemcinquentaseis.;
ATTRIB TX_RESP_Q157 FORMAT=$QDcemcinquentasete.;
ATTRIB TX_RESP_Q158 FORMAT=$QDcemcinquentaoito.;
ATTRIB TX_RESP_Q159 FORMAT=$QDcemcinquentanove.;
ATTRIB TX_RESP_Q160 FORMAT=$QDcemsessenta.;
ATTRIB TX_RESP_Q161 FORMAT=$QDcemsessentaum.;
ATTRIB TX_RESP_Q162 FORMAT=$QDcemsessentadois.;
ATTRIB TX_RESP_Q163 FORMAT=$QDcemsessentatres.;
ATTRIB TX_RESP_Q164 FORMAT=$QDcemsessentaquatro.;
ATTRIB TX_RESP_Q165 FORMAT=$QDcemsessentacinco.;
ATTRIB TX_RESP_Q166 FORMAT=$QDcemsessentaseis.;
ATTRIB TX_RESP_Q167 FORMAT=$QDcemsessentasete.;
ATTRIB TX_RESP_Q168 FORMAT=$QDcemsessentaoito.;
ATTRIB TX_RESP_Q169 FORMAT=$QDcemsessentanove.;
ATTRIB TX_RESP_Q170 FORMAT=$QDcemsetenta.;
ATTRIB TX_RESP_Q171 FORMAT=$QDcemsetentaum.;
ATTRIB TX_RESP_Q172 FORMAT=$QDcemsetentadois.;
ATTRIB TX_RESP_Q173 FORMAT=$QDcemsetentatres.;
ATTRIB TX_RESP_Q174 FORMAT=$QDcemsetentaquatro.;
ATTRIB TX_RESP_Q175 FORMAT=$QDcemsetentacinco.;
ATTRIB TX_RESP_Q176 FORMAT=$QDcemsetentaseis.;
ATTRIB TX_RESP_Q177 FORMAT=$QDcemsetentasete.;
ATTRIB TX_RESP_Q178 FORMAT=$QDcemsetentaoito.;
ATTRIB TX_RESP_Q179 FORMAT=$QDcemsetentanove.;
ATTRIB TX_RESP_Q180 FORMAT=$QDcemoitenta.;
ATTRIB TX_RESP_Q181 FORMAT=$QDcemoitentaum.;
ATTRIB TX_RESP_Q182 FORMAT=$QDcemoitentadois.;
ATTRIB TX_RESP_Q183 FORMAT=$QDcemoitentatres.;
ATTRIB TX_RESP_Q184 FORMAT=$QDcemoitentaquatro.;
ATTRIB TX_RESP_Q185 FORMAT=$QDcemoitentacinco.;
ATTRIB TX_RESP_Q186 FORMAT=$QDcemoitentaseis.;
ATTRIB TX_RESP_Q187 FORMAT=$QDcemoitentasete.;
ATTRIB TX_RESP_Q188 FORMAT=$QDcemoitentaoito.;
ATTRIB TX_RESP_Q189 FORMAT=$QDcemoitentanove.;
ATTRIB TX_RESP_Q190 FORMAT=$QDcemnoventa.;
ATTRIB TX_RESP_Q191 FORMAT=$QDcemnoventaum.;
ATTRIB TX_RESP_Q192 FORMAT=$QDcemnoventadois.;
ATTRIB TX_RESP_Q193 FORMAT=$QDcemnoventatres.;
ATTRIB TX_RESP_Q194 FORMAT=$QDcemnoventaquatro.;
ATTRIB TX_RESP_Q195 FORMAT=$QDcemnoventacinco.;
ATTRIB TX_RESP_Q196 FORMAT=$QDcemnoventaseis.;
ATTRIB TX_RESP_Q197 FORMAT=$QDcemnoventasete.;
ATTRIB TX_RESP_Q198 FORMAT=$QDcemnoventaoito.;
ATTRIB TX_RESP_Q199 FORMAT=$QDcemnoventanove.;
ATTRIB TX_RESP_Q200 FORMAT=$QDduzentos.;
ATTRIB TX_RESP_Q201 FORMAT=$QDduzentosum.;
ATTRIB TX_RESP_Q202 FORMAT=$QDduzentosdois.;
ATTRIB TX_RESP_Q203 FORMAT=$QDduzentostres.;
ATTRIB TX_RESP_Q204 FORMAT=$QDduzentosquatro.;
ATTRIB TX_RESP_Q205 FORMAT=$QDduzentoscinco.;
ATTRIB TX_RESP_Q206 FORMAT=$QDduzentosseis.;
ATTRIB TX_RESP_Q207 FORMAT=$QDduzentossete.;
ATTRIB TX_RESP_Q208 FORMAT=$QDduzentosoito.;
ATTRIB TX_RESP_Q209 FORMAT=$QDduzentosnove.;
ATTRIB TX_RESP_Q210 FORMAT=$QDduzentosdez.;
ATTRIB TX_RESP_Q211 FORMAT=$QDduzentosonze.;
ATTRIB TX_RESP_Q212 FORMAT=$QDduzentosdoze.;
ATTRIB TX_RESP_Q213 FORMAT=$QDduzentostreze.;
ATTRIB TX_RESP_Q214 FORMAT=$QDduzentoscatorze.;
ATTRIB TX_RESP_Q215 FORMAT=$QDduzentosquinze.;
ATTRIB TX_RESP_Q216 FORMAT=$QDduzentosdezesseis.;
ATTRIB TX_RESP_Q217 FORMAT=$QDduzentosdezessete.;
ATTRIB TX_RESP_Q218 FORMAT=$QDduzentosdezoito.;
ATTRIB TX_RESP_Q219 FORMAT=$QDduzentosdezenove.;
ATTRIB TX_RESP_Q220 FORMAT=$QDduzentosvinte.;
ATTRIB TX_RESP_Q221 FORMAT=$QDduzentosvinteum.;
ATTRIB TX_RESP_Q222 FORMAT=$QDduzentosvintedois.;
ATTRIB TX_RESP_Q223 FORMAT=$QDduzentosvintetres.;
ATTRIB TX_RESP_Q224 FORMAT=$QDduzentosvintequatro.;
ATTRIB TX_RESP_Q225 FORMAT=$QDduzentosvintecinco.;
ATTRIB TX_RESP_Q226 FORMAT=$QDduzentosvinteseis.;
ATTRIB TX_RESP_Q227 FORMAT=$QDduzentosvintesete.;
ATTRIB TX_RESP_Q228 FORMAT=$QDduzentosvinteoito.;
ATTRIB TX_RESP_Q229 FORMAT=$QDduzentosvintenove.;
ATTRIB TX_RESP_Q230 FORMAT=$QDduzentostrinta.;
ATTRIB TX_RESP_Q231 FORMAT=$QDduzentostrintaum.;
ATTRIB TX_RESP_Q232 FORMAT=$QDduzentostrintadois.;
ATTRIB TX_RESP_Q233 FORMAT=$QDduzentostrintatres.;
ATTRIB TX_RESP_Q234 FORMAT=$QDduzentostrintaquatro.;
ATTRIB TX_RESP_Q235 FORMAT=$QDduzentostrintacinco.;
ATTRIB TX_RESP_Q236 FORMAT=$QDduzentostrintaseis.;
ATTRIB TX_RESP_Q237 FORMAT=$QDduzentostrintasete.;
ATTRIB TX_RESP_Q238 FORMAT=$QDduzentostrintaoito.;
ATTRIB TX_RESP_Q239 FORMAT=$QDduzentostrintanove.;
ATTRIB TX_RESP_Q240 FORMAT=$QDduzentosquarenta.;
ATTRIB TX_RESP_Q241 FORMAT=$QDduzentosquarentaum.;
ATTRIB TX_RESP_Q242 FORMAT=$QDduzentosquarentadois.;
ATTRIB TX_RESP_Q243 FORMAT=$QDduzentosquarentatres.;
ATTRIB TX_RESP_Q244 FORMAT=$QDduzentosquarentaquatro.;
ATTRIB TX_RESP_Q245 FORMAT=$QDduzentosquarentacinco.;
ATTRIB TX_RESP_Q246 FORMAT=$QDduzentosquarentaseis.;
ATTRIB TX_RESP_Q247 FORMAT=$QDduzentosquarentasete.;
ATTRIB TX_RESP_Q248 FORMAT=$QDduzentosquarentaoito.;
ATTRIB TX_RESP_Q249 FORMAT=$QDduzentosquarentanove.;
ATTRIB TX_RESP_Q250 FORMAT=$QDduzentoscinquenta.;
ATTRIB TX_RESP_Q251 FORMAT=$QDduzentoscinquentaum.;
ATTRIB TX_RESP_Q252 FORMAT=$QDduzentoscinquentadois.;
ATTRIB TX_RESP_Q253 FORMAT=$QDduzentoscinquentatres.;

LABEL

ID_SAEB = 'Ano de aplica��o do Saeb'                                                                                                    
ID_REGIAO = 'C�digo da Regi�o'                                                                                                                         
ID_UF = 'C�digo da Unidade da Federa��o'                                                                                                               
ID_MUNICIPIO = 'C�digo do Munic�pio'                                                                                                                   
ID_AREA = '�rea'
ID_ESCOLA= 'C�digo da Escola'
ID_DEPENDENCIA_ADM= 'Depend�ncia Administrativa'
ID_LOCALIZACAO= 'Localiza��o'
IN_PREENCHIMENTO_QUESTIONARIO = 'Indicador de preenchimento do question�rio'
TX_RESP_Q001 = 'Qual � a sua cor ou ra�a?'
TX_RESP_Q002 = 'Por quanto tempo voc� trabalhou como professor(a) antes de se tornar diretor(a)? Anos '
TX_RESP_Q003 = 'Por quanto tempo voc� trabalhou como professor(a) antes de se tornar diretor(a)? Meses  '
TX_RESP_Q004 = 'Voc� possui quanto tempo de experi�ncia como diretor(a) de escola? Anos '
TX_RESP_Q005 = 'Voc� possui quanto tempo de experi�ncia como diretor(a) de escola? Meses '
TX_RESP_Q006 = 'H� quanto tempo voc� � diretor(a) desta escola? Anos '
TX_RESP_Q007 = 'H� quanto tempo voc� � diretor(a) desta escola? Meses '
TX_RESP_Q008 = 'Considerando todas as suas atividades profissionais remuneradas, quantas horas voc� trabalha em uma semana normal? '
TX_RESP_Q009 = 'Quantas horas voc� trabalha em uma semana normal em atividades relacionadas � educa��o?'
TX_RESP_Q010 = 'Na semana normal de trabalho, quantas horas voc� trabalha para esta escola?'
TX_RESP_Q011 = 'Em uma semana normal de trabalho, quantas horas voc� costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Presta��o de contas '
TX_RESP_Q012 = 'Em uma semana normal de trabalho, quantas horas voc� costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Reuni�o com professores(as) '
TX_RESP_Q013 = 'Em uma semana normal de trabalho, quantas horas voc� costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Atendimento aos pais ou respons�veis '
TX_RESP_Q014 = 'Em uma semana normal de trabalho, quantas horas voc� costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Gerenciamento de conflitos '
TX_RESP_Q015 = 'Em uma semana normal de trabalho, quantas horas voc� costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Atendimento aos(�s) alunos(as) '
TX_RESP_Q016 = 'Em uma semana normal de trabalho, quantas horas voc� costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Atendimento individual aos(�s) professores(as) '
TX_RESP_Q017 = 'Em uma semana normal de trabalho, quantas horas voc� costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Demandas da Secretaria de Educa��o '
TX_RESP_Q018 = 'Em uma semana normal de trabalho, quantas horas voc� costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Merenda '
TX_RESP_Q019 = 'Em uma semana normal de trabalho, quantas horas voc� costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Manuten��o '
TX_RESP_Q020 = 'Em uma semana normal de trabalho, quantas horas voc� costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Seguran�a '
TX_RESP_Q021 = 'Em uma semana normal de trabalho, quantas horas voc� costuma gastar, aproximadamente, com as seguintes atividades para esta escola: Outras atividades '
TX_RESP_Q022 = 'Quanto voc� sente estar preparado(a) para realizar a seguinte atividade: Liderar a equipe escolar.'
TX_RESP_Q023 = 'Quanto voc� sente estar preparado(a) para realizar a seguinte atividade: Atender as demandas administrativas da rede escolar.'
TX_RESP_Q024 = 'Quanto voc� sente estar preparado(a) para realizar a seguinte atividade: Atender as demandas administrativas da escola.'
TX_RESP_Q025 = 'Quanto voc� sente estar preparado(a) para realizar a seguinte atividade: Garantir a manuten��o da escola.'
TX_RESP_Q026 = 'Quanto voc� sente estar preparado(a) para realizar a seguinte atividade: Resolver as demandas dos familiares dos(as) alunos(as).'
TX_RESP_Q027 = 'Quanto voc� sente estar preparado(a) para realizar a seguinte atividade: Mobilizar a comunidade para auxiliar a escola.'
TX_RESP_Q028 = 'Quanto voc� sente estar preparado(a) para realizar a seguinte atividade: Coordenar a implanta��o do Projeto Pol�tico-Pedag�gico.'
TX_RESP_Q029 = 'Quanto voc� sente estar preparado(a) para realizar a seguinte atividade: Administrar conflitos.'
TX_RESP_Q030 = 'Quanto voc� sente estar preparado(a) para realizar a seguinte atividade: Manter os(as) professores(as) motivados(as).'
TX_RESP_Q031 = 'Quanto voc� sente estar preparado(a) para realizar a seguinte atividade: Avaliar o desempenho dos(as) professores(as).'
TX_RESP_Q032 = 'Quanto voc� sente estar preparado(a) para realizar a seguinte atividade: Realizar a autoavalia��o institucional.'
TX_RESP_Q033 = 'Quanto voc� sente estar preparado(a) para realizar a seguinte atividade: Melhorar os processos pedag�gicos da sua escola.'
TX_RESP_Q034 = 'Indique quais s�o as etapas educacionais atendidas pela sua escola: Educa��o Infantil e Creche (0 a 3 anos).'
TX_RESP_Q035 = 'Indique quais s�o as etapas educacionais atendidas pela sua escola: Educa��o Infantil e Pr�-escola (4 e 5 anos).'
TX_RESP_Q036 = 'Indique quais s�o as etapas educacionais atendidas pela sua escola: Anos Iniciais do Ensino Fundamental.'
TX_RESP_Q037 = 'Indique quais s�o as etapas educacionais atendidas pela sua escola: Anos Finais do Ensino Fundamental.'
TX_RESP_Q038 = 'Indique quais s�o as etapas educacionais atendidas pela sua escola: Ensino M�dio.'
TX_RESP_Q039 = 'A educa��o infantil funciona na sede da escola? '
TX_RESP_Q040 = 'A �rea externa (p�tio, �rea verde e parque) � utilizada em hor�rios diferenciados pelos(as) alunos(as) da Educa��o Infantil? '
TX_RESP_Q041 = 'Indique o quanto concorda ou discorda das afirmativas relativas �s condi��es de funcionamento desta escola neste ano: Os recursos financeiros foram suficientes.'
TX_RESP_Q042 = 'Indique o quanto concorda ou discorda das afirmativas relativas �s condi��es de funcionamento desta escola neste ano: Havia professores(as) para todas as disciplinas.'
TX_RESP_Q043 = 'Indique o quanto concorda ou discorda das afirmativas relativas �s condi��es de funcionamento desta escola neste ano: Havia quantidade suficiente de pessoal administrativo.'
TX_RESP_Q044 = 'Indique o quanto concorda ou discorda das afirmativas relativas �s condi��es de funcionamento desta escola neste ano: Havia quantidade suficiente de pessoal para apoio pedag�gico (coordenador, orientador etc.).'
TX_RESP_Q045 = 'Indique o quanto concorda ou discorda das afirmativas relativas �s condi��es de funcionamento desta escola neste ano: Os recursos pedag�gicos foram suficientes.'
TX_RESP_Q046 = 'Indique o quanto concorda ou discorda das afirmativas relativas �s condi��es de funcionamento desta escola neste ano: Recebi apoio da Secretaria de Educa��o.'
TX_RESP_Q047 = 'Indique o quanto concorda ou discorda das afirmativas relativas �s condi��es de funcionamento desta escola neste ano: Os(As) professores(as) foram ass�duos(as).'
TX_RESP_Q048 = 'Indique o quanto concorda ou discorda das afirmativas relativas �s condi��es de funcionamento desta escola neste ano: Os(As) professores(as) iniciaram as aulas no hor�rio marcado.'
TX_RESP_Q049 = 'Indique o quanto concorda ou discorda das afirmativas relativas �s condi��es de funcionamento desta escola neste ano: As substitui��es das aus�ncias de professores(as) foram facilmente realizadas.'
TX_RESP_Q050 = 'Indique o quanto concorda ou discorda das afirmativas relativas �s condi��es de funcionamento desta escola neste ano: Os(As) alunos(as) foram ass�duos(as).'
TX_RESP_Q051 = 'Indique o quanto concorda ou discorda das afirmativas relativas �s condi��es de funcionamento desta escola neste ano: Troquei experi�ncias com diretores(as) de outras escolas.'
TX_RESP_Q052 = 'Indique o quanto concorda ou discorda das afirmativas relativas �s condi��es de funcionamento desta escola neste ano: A comunidade apoiou a gest�o da escola.'
TX_RESP_Q053 = 'Indique o quanto concorda ou discorda das afirmativas relativas �s condi��es de funcionamento desta escola neste ano: A comunidade executou trabalhos volunt�rios na escola.'
TX_RESP_Q054 = 'Indique o quanto concorda ou discorda das afirmativas relativas �s condi��es de funcionamento desta escola neste ano: Indique o quanto concorda ou discorda das afirmativas relativas �s condi��es de funcionamento desta escola neste ano: As fam�lias contribu�ram com o trabalho pedag�gico.'
TX_RESP_Q055 = 'Os livros did�ticos foram entregues antes do in�cio das aulas '
TX_RESP_Q056 = 'Todos(as) os(as) alunos(as) receberam livros did�ticos '
TX_RESP_Q057 = 'O calend�rio escolar pr�-estabelecido foi cumprido sem interrup��es?'
TX_RESP_Q058 = 'Qual o motivo da interrup��o do calend�rio? Falta de �gua'
TX_RESP_Q059 = 'Qual o motivo da interrup��o do calend�rio? Falta de energia'
TX_RESP_Q060 = 'Qual o motivo da interrup��o do calend�rio? Falta de merenda'
TX_RESP_Q061 = 'Qual o motivo da interrup��o do calend�rio? Greve de professores'
TX_RESP_Q062 = 'Qual o motivo da interrup��o do calend�rio? Vandalismo nas instala��es'
TX_RESP_Q063 = 'Qual o motivo da interrup��o do calend�rio? Problemas de infraestrutura da escola'
TX_RESP_Q064 = 'Qual o motivo da interrup��o do calend�rio? Eventos externos (paralisa��o, bloqueio etc)'
TX_RESP_Q065 = 'Qual o motivo da interrup��o do calend�rio? Eventos clim�ticos (inunda��o, desmoronamento etc)'
TX_RESP_Q066 = 'Qual o motivo da interrup��o do calend�rio? Outros '
TX_RESP_Q067 = 'Por quantos dias ocorreu a interrup��o: '
TX_RESP_Q068 = 'Sobre os fatos listados abaixo, diga a frequ�ncia com que ocorreram neste ano, nesta escola: Profissionais foram v�timas de atentado � vida '
TX_RESP_Q069 = 'Sobre os fatos listados abaixo, diga a frequ�ncia com que ocorreram neste ano, nesta escola: Profissionais foram amea�ados(as) por algum aluno '
TX_RESP_Q070 = 'Sobre os fatos listados abaixo, diga a frequ�ncia com que ocorreram neste ano, nesta escola: Houve ocorr�ncia de roubo com uso de viol�ncia '
TX_RESP_Q071 = 'Sobre os fatos listados abaixo, diga a frequ�ncia com que ocorreram neste ano, nesta escola: Houve tr�fico de drogas na escola '
TX_RESP_Q072 = 'Sobre os fatos listados abaixo, diga a frequ�ncia com que ocorreram neste ano, nesta escola: Alunos(as) frequentaram a escola sob efeito de bebida alco�lica '
TX_RESP_Q073 = 'Sobre os fatos listados abaixo, diga a frequ�ncia com que ocorreram neste ano, nesta escola: Alunos(as) frequentaram a escola sob efeito de drogas il�citas '
TX_RESP_Q074 = 'Sobre os fatos listados abaixo, diga a frequ�ncia com que ocorreram neste ano, nesta escola: Alunos(as) frequentaram a escola portando arma (rev�lver, faca, canivete etc.) '
TX_RESP_Q075 = 'Sobre os fatos listados abaixo, diga a frequ�ncia com que ocorreram neste ano, nesta escola: Epis�dios de viol�ncia ocasionaram cancelamento das aulas '
TX_RESP_Q076 = 'H� na escola espa�o destinado exclusivamente � amamenta��o? '
TX_RESP_Q077 = 'H� na escola local para armazenamento de leite materno? '
TX_RESP_Q078 = 'H� na escola banheiro com chuveiro para uso das crian�as? '
TX_RESP_Q079 = 'Sobre a �rea externa da sua escola (p�tio, parque e �rea verde), indique os itens existentes: Bebedouro ao alcance das crian�as '
TX_RESP_Q080 = 'Sobre a �rea externa da sua escola (p�tio, parque e �rea verde), indique os itens existentes: Banheiro infantil '
TX_RESP_Q081 = 'Sobre a �rea externa da sua escola (p�tio, parque e �rea verde), indique os itens existentes: �rea sombreada '
TX_RESP_Q082 = 'Sobre a �rea externa da sua escola (p�tio, parque e �rea verde), indique os itens existentes: �rea coberta '
TX_RESP_Q083 = 'Sobre a �rea externa da sua escola (p�tio, parque e �rea verde), indique os itens existentes: Vegeta��o e jardim '
TX_RESP_Q084 = 'Sobre a �rea externa da sua escola (p�tio, parque e �rea verde), indique os itens existentes: Horta '
TX_RESP_Q085 = 'Quais os tipos de solo ou revestimento do solo da �rea externa da sua escola? Piso emborrachado '
TX_RESP_Q086 = 'Quais os tipos de solo ou revestimento do solo da �rea externa da sua escola? Cimento liso '
TX_RESP_Q087 = 'Quais os tipos de solo ou revestimento do solo da �rea externa da sua escola? Cimento �spero '
TX_RESP_Q088 = 'Quais os tipos de solo ou revestimento do solo da �rea externa da sua escola? Areia '
TX_RESP_Q089 = 'Quais os tipos de solo ou revestimento do solo da �rea externa da sua escola? Grama '
TX_RESP_Q090 = 'Quais os tipos de solo ou revestimento do solo da �rea externa da sua escola? Terra '
TX_RESP_Q091 = 'Quais os tipos de solo ou revestimento do solo da �rea externa da sua escola? Cer�mica '
TX_RESP_Q092 = 'Quais os tipos de solo ou revestimento do solo da �rea externa da sua escola? Pedras '
TX_RESP_Q093 = 'Quais equipamentos existem nas �reas externas de recrea��o da sua escola? Tanque de areia '
TX_RESP_Q094 = 'Quais equipamentos existem nas �reas externas de recrea��o da sua escola? Gira-gira '
TX_RESP_Q095 = 'Quais equipamentos existem nas �reas externas de recrea��o da sua escola? T�nel l�dico '
TX_RESP_Q096 = 'Quais equipamentos existem nas �reas externas de recrea��o da sua escola? Gangorra '
TX_RESP_Q097 = 'Quais equipamentos existem nas �reas externas de recrea��o da sua escola? Escorregador '
TX_RESP_Q098 = 'Quais equipamentos existem nas �reas externas de recrea��o da sua escola? Casinha '
TX_RESP_Q099 = 'Quais equipamentos existem nas �reas externas de recrea��o da sua escola? Balan�o '
TX_RESP_Q100 = 'Quais equipamentos existem nas �reas externas de recrea��o da sua escola? Brinquedo para escalar '
TX_RESP_Q101 = 'Quais equipamentos existem nas �reas externas de recrea��o da sua escola? Banco '
TX_RESP_Q102 = 'Quais equipamentos existem nas �reas externas de recrea��o da sua escola? Outros '
TX_RESP_Q103 = 'Avalie os seguintes aspectos da escola: Condi��es de uso dos equipamentos da �rea externa de recrea��o.'
TX_RESP_Q104 = 'Avalie os seguintes aspectos da escola: O acesso � �rea externa de recrea��o pelos(as) alunos(as) p�blico-alvo da educa��o especial.'
TX_RESP_Q105 = 'Avalie os seguintes aspectos da escola: O acesso � entrada principal das pessoas com defici�ncia f�sica e visual (ex.: rampas e marcadores no ch�o).'
TX_RESP_Q106 = 'Avalie os seguintes aspectos da escola: Seguran�a na entrada e sa�da dos(as) alunos(as) da escola.'
TX_RESP_Q107 = 'Avalie os seguintes aspectos da escola: Muros e grades que impedem que os(as) alunos(as) saiam sozinhos(as).'
TX_RESP_Q108 = 'Avalie os seguintes aspectos da escola: Identifica��o externa que caracterize o pr�dio como uma institui��o escolar.'
TX_RESP_Q109 = 'Como a escola adquire Brinquedos: Compra realizada pela pr�pria escola/Secretaria de Educa��o '
TX_RESP_Q110 = 'Como a escola adquire Brinquedos: Doa��es e campanhas de arrecada��o '
TX_RESP_Q111 = 'Como a escola adquire Brinquedos: Solicitado aos respons�veis pelas crian�as '
TX_RESP_Q112 = 'Como a escola adquire Recursos pedag�gicos: Compra realizada pela pr�pria escola/Secretaria de Educa��o '
TX_RESP_Q113 = 'Como a escola adquire Recursos pedag�gicos: Doa��es e campanhas de arrecada��o '
TX_RESP_Q114 = 'Como a escola adquire Recursos pedag�gicos: Solicitado aos respons�veis pelas crian�as '
TX_RESP_Q115 = 'Como a escola adquire Materiais de higiene pessoal: Compra realizada pela pr�pria escola/Secretaria de Educa��o '
TX_RESP_Q116 = 'Como a escola adquire Materiais de higiene pessoal: Doa��es e campanhas de arrecada��o '
TX_RESP_Q117 = 'Como a escola adquire Materiais de higiene pessoal: Solicitado aos respons�veis pelas crian�as '
TX_RESP_Q118 = 'O Conselho Escolar � um colegiado geralmente constitu�do por representantes da escola e da comunidade que tem como objetivo acompanhar as atividades escolares. Na sua escola existe Conselho Escolar?'
TX_RESP_Q119 = 'Quantas reuni�es do Conselho Escolar ocorreram neste ano? '
TX_RESP_Q120 = 'Considere os atores relacionados a seguir e indique quantos participam do Conselho Escolar: Professores(as) '
TX_RESP_Q121 = 'Considere os atores relacionados a seguir e indique quantos participam do Conselho Escolar: Alunos(as) '
TX_RESP_Q122 = 'Considere os atores relacionados a seguir e indique quantos participam do Conselho Escolar: Pais (ou respons�veis) '
TX_RESP_Q123 = 'Considere os atores relacionados a seguir e indique quantos participam do Conselho Escolar: Funcion�rios '
TX_RESP_Q124 = 'Considere os atores relacionados a seguir e indique quantos participam do Conselho Escolar: Outros membros '
TX_RESP_Q125 = 'Neste ano, indique a frequ�ncia com que os temas/assuntos foram discutidos pelo Conselho Escolar: Quest�es pedag�gicas '
TX_RESP_Q126 = 'Neste ano, indique a frequ�ncia com que os temas/assuntos foram discutidos pelo Conselho Escolar: Quest�es administrativas e institucionais '
TX_RESP_Q127 = 'Neste ano, indique a frequ�ncia com que os temas/assuntos foram discutidos pelo Conselho Escolar: Quest�es financeiras '
TX_RESP_Q128 = 'Neste ano, indique a frequ�ncia com que os temas/assuntos foram discutidos pelo Conselho Escolar: Quest�es de relacionamento com a comunidade '
TX_RESP_Q129 = 'O Conselho Escolar tem fun��o deliberativa? '
TX_RESP_Q130 = 'O Conselho de Classe � um �rg�o formado por todos os professores que lecionam em cada turma/ano. Neste ano e nesta escola, quantas vezes se reuniu o Conselho de Classe?'
TX_RESP_Q131 = 'O Conselho de Classe � um �rg�o formado por todos os professores que lecionam em cada turma/ano. Neste ano e nesta escola, quantas vezes se reuniu o Conselho de Classe? N�o existe Conselho'
TX_RESP_Q132 = 'A APM - Associa��o de Pais e Mestres existe para apoiar as a��es da escola e integrar a comunidade. Neste ano e nesta escola, quantas vezes se reuniu a APM (ou caixa escolar)?'
TX_RESP_Q133 = 'A APM - Associa��o de Pais e Mestres existe para apoiar as a��es da escola e integrar a comunidade. Neste ano e nesta escola, quantas vezes se reuniu a APM (ou caixa escolar)?  N�o existe APM.'
TX_RESP_Q134 = 'H� Gr�mio Estudantil? '
TX_RESP_Q135 = 'A escola � administrada pela Pol�cia Militar.'
TX_RESP_Q136 = 'Os(As) estudantes s�o preparados(as) para os testes de avalia��o externos.'
TX_RESP_Q137 = 'A escola segue orienta��o religiosa.'
TX_RESP_Q138 = 'Indique se as fontes abaixo fornecem ou n�o fornecem recursos para o funcionamento desta escola: Programa Dinheiro Direto da Escola.'
TX_RESP_Q139 = 'Indique se as fontes abaixo fornecem ou n�o fornecem recursos para o funcionamento desta escola: Eventos promovidos nas depend�ncias da escola (Festas, rifas etc.).'
TX_RESP_Q140 = 'Indique se as fontes abaixo fornecem ou n�o fornecem recursos para o funcionamento desta escola: Empresas que apoiam a escola.'
TX_RESP_Q141 = 'Indique se as fontes abaixo fornecem ou n�o fornecem recursos para o funcionamento desta escola: Organiza��es sem fins lucrativos.'
TX_RESP_Q142 = 'Indique se as fontes abaixo fornecem ou n�o fornecem recursos para o funcionamento desta escola: Repasses da rede de ensino.'
TX_RESP_Q143 = 'Indique se as fontes abaixo fornecem ou n�o fornecem recursos para o funcionamento desta escola: Pagamento de taxas pelos familiares dos(as) estudantes.'
TX_RESP_Q144 = 'Indique se as fontes abaixo fornecem ou n�o fornecem recursos para o funcionamento desta escola: Contribui��es volunt�rias dos familiares dos(as) estudantes.'
TX_RESP_Q145 = 'Indique se as fontes abaixo fornecem ou n�o fornecem recursos para o funcionamento desta escola: Contribui��es volunt�rias dos(as) profissionais da escola.'
TX_RESP_Q146 = 'A escola oferece merenda aos(�s) estudantes?'
TX_RESP_Q147 = 'Quantas refei��es s�o oferecidas nesta escola para alunos(as) que permanecem menos de 4 horas na escola '
TX_RESP_Q148 = 'Quantas refei��es s�o oferecidas nesta escola para alunos(as) que permanecem entre 4 e 7 horas na escola '
TX_RESP_Q149 = 'Quantas refei��es s�o oferecidas nesta escola para alunos(as) que permanecem mais de 7 horas na escola '
TX_RESP_Q150 = 'A quantidade de alimentos � suficiente para todos(as) '
TX_RESP_Q151 = 'Os alimentos s�o de boa qualidade '
TX_RESP_Q152 = 'A cozinha atende todas as necessidades do preparo da merenda '
TX_RESP_Q153 = 'Todos(as) conseguem se alimentar sentados '
TX_RESP_Q154 = 'O acesso ao local de alimenta��o � livre para pessoas com mobilidade reduzida '
TX_RESP_Q155 = 'H� pias para higieniza��o das m�os pr�ximas ao local de alimenta��o '
TX_RESP_Q156 = 'A merenda escolar � preparada na pr�pria institui��o? '
TX_RESP_Q157 = 'Os card�pios da alimenta��o escolar s�o elaborados por nutricionista? '
TX_RESP_Q158 = 'A escola possui Projeto Pol�tico-Pedag�gico?'
TX_RESP_Q159 = 'Seu conte�do � discutido em reuni�es? '
TX_RESP_Q160 = 'Os(As) professores(as) participaram da elabora��o? '
TX_RESP_Q161 = 'Os pais participaram da elabora��o? '
TX_RESP_Q162 = 'Os(As) estudantes participaram da elabora��o? '
TX_RESP_Q163 = 'Estabelece metas de aprendizagem? '
TX_RESP_Q164 = 'Considera os resultados de avalia��es externas (Saeb, estaduais, municipais etc.)? '
TX_RESP_Q165 = 'H� metas de alcance de indicadores externos (Ideb, �ndices estaduais ou municipais)? '
TX_RESP_Q166 = 'Neste ano e nesta escola, todos que solicitaram vagas conseguiram se matricular?'
TX_RESP_Q167 = 'Neste ano, quais foram os crit�rios para a matr�cula de novos estudantes nesta escola: Sorteio '
TX_RESP_Q168 = 'Neste ano, quais foram os crit�rios para a matr�cula de novos estudantes nesta escola: Local de moradia '
TX_RESP_Q169 = 'Neste ano, quais foram os crit�rios para a matr�cula de novos estudantes nesta escola: Prova de sele��o '
TX_RESP_Q170 = 'Neste ano, quais foram os crit�rios para a matr�cula de novos estudantes nesta escola: Ordem de chegada '
TX_RESP_Q171 = 'Neste ano, quais foram os crit�rios para a matr�cula de novos estudantes nesta escola: Cor ou ra�a do(a) estudante '
TX_RESP_Q172 = 'Neste ano, quais foram os crit�rios para a matr�cula de novos estudantes nesta escola: Caracter�sticas socioecon�micas '
TX_RESP_Q173 = 'Neste ano, quais foram os crit�rios para a matr�cula de novos estudantes nesta escola: Desempenho do(a) estudante no ano anterior '
TX_RESP_Q174 = 'Neste ano, quais foram os crit�rios para a matr�cula de novos estudantes nesta escola: Outros '
TX_RESP_Q175 = 'Quais crit�rios foram considerados para a forma��o das turmas: N�o se aplica'
TX_RESP_Q176 = 'Quais crit�rios foram considerados para a forma��o das turmas: Afinidade entre os(as) estudantes'
TX_RESP_Q177 = 'Quais crit�rios foram considerados para a forma��o das turmas: Agrupar os(as) estudantes segundo a idade'
TX_RESP_Q178 = 'Quais crit�rios foram considerados para a forma��o das turmas: Equil�brio de meninos e meninas nas turmas'
TX_RESP_Q179 = 'Quais crit�rios foram considerados para a forma��o das turmas: Manter as turmas existentes do ano anterior'
TX_RESP_Q180 = 'Quais crit�rios foram considerados para a forma��o das turmas: Agrupar os(as) estudantes por crit�rios disciplinares'
TX_RESP_Q181 = 'Quais crit�rios foram considerados para a forma��o das turmas: Agrupar os(as) estudantes com base no seu desempenho'
TX_RESP_Q182 = 'Quais crit�rios foram considerados para a forma��o das turmas: Outro'
TX_RESP_Q183 = 'Neste ano, quais crit�rios foram utilizados para a atribui��o das turmas aos(�s) professores(as)? Prefer�ncia dos(as) professores(as).'
TX_RESP_Q184 = 'Neste ano, quais crit�rios foram utilizados para a atribui��o das turmas aos(�s) professores(as)? Tempo de servi�o.'
TX_RESP_Q185 = 'Neste ano, quais crit�rios foram utilizados para a atribui��o das turmas aos(�s) professores(as)? Cursos de forma��o continuada realizados.'
TX_RESP_Q186 = 'Neste ano, quais crit�rios foram utilizados para a atribui��o das turmas aos(�s) professores(as)? Professores(as) experientes nas turmas com facilidade de aprendizagem.'
TX_RESP_Q187 = 'Neste ano, quais crit�rios foram utilizados para a atribui��o das turmas aos(�s) professores(as)? Professores(as) experientes nas turmas com dificuldade de aprendizagem.'
TX_RESP_Q188 = 'Neste ano, quais crit�rios foram utilizados para a atribui��o das turmas aos(�s) professores(as)? Manuten��o do(a) professor(a) com a mesma turma.'
TX_RESP_Q189 = 'Neste ano, quais crit�rios foram utilizados para a atribui��o das turmas aos(�s) professores(as)? Revezamento dos(as) professores(as) entre s�ries/anos.'
TX_RESP_Q190 = 'Neste ano, quais crit�rios foram utilizados para a atribui��o das turmas aos(�s) professores(as)? Sorteio das turmas entre os(as) professores(as).'
TX_RESP_Q191 = 'Neste ano, quais crit�rios foram utilizados para a atribui��o das turmas aos(�s) professores(as)? Atribui��o pela gest�o da escola.'
TX_RESP_Q192 = 'Na sua escola h� parcerias com: Minist�rio P�blico'
TX_RESP_Q193 = 'Na sua escola h� parcerias com: Conselho Tutelar'
TX_RESP_Q194 = 'Na sua escola h� parcerias com: Secretaria de Sa�de'
TX_RESP_Q195 = 'Na sua escola h� parcerias com: Secretaria de Educa��o'
TX_RESP_Q196 = 'Na sua escola h� parcerias com: Secretaria de Assist�ncia Social'
TX_RESP_Q197 = 'Na sua escola h� parcerias com: Secretaria de Seguran�a P�blica'
TX_RESP_Q198 = 'Na sua escola h� parcerias com: Organiza��es n�o governamentais/institui��es privadas'
TX_RESP_Q199 = 'Neste ano, para redu��o do ABANDONO ESCOLAR, avalie o resultado das seguintes a��es realizadas nesta escola: Entrar em contato com os familiares do(a) estudante '
TX_RESP_Q200 = 'Neste ano, para redu��o do ABANDONO ESCOLAR, avalie o resultado das seguintes a��es realizadas nesta escola: Ir � resid�ncia do(a) estudante '
TX_RESP_Q201 = 'Neste ano, para redu��o do ABANDONO ESCOLAR, avalie o resultado das seguintes a��es realizadas nesta escola: Informar ao Conselho Tutelar '
TX_RESP_Q202 = 'Neste ano, para a redu��o da REPET�NCIA ESCOLAR, avalie o resultado das seguintes a��es realizadas nesta escola: Oferta de refor�o escolar '
TX_RESP_Q203 = 'Neste ano, para a redu��o da REPET�NCIA ESCOLAR, avalie o resultado das seguintes a��es realizadas nesta escola: Os(As) estudantes s�o estimulados(as) a apoiar uns(umas) aos(�s) outros(as) '
TX_RESP_Q204 = 'Neste ano, para a redu��o da REPET�NCIA ESCOLAR, avalie o resultado das seguintes a��es realizadas nesta escola: Revis�o dos procedimentos de avalia��o '
TX_RESP_Q205 = 'Neste ano, para a redu��o da REPET�NCIA ESCOLAR, avalie o resultado das seguintes a��es realizadas nesta escola: Revis�o das pr�ticas pedag�gicas '
TX_RESP_Q206 = 'Nesta escola, h� projetos com as seguintes tem�ticas: Viol�ncia'
TX_RESP_Q207 = 'Nesta escola, h� projetos com as seguintes tem�ticas: Bullying'
TX_RESP_Q208 = 'Nesta escola, h� projetos com as seguintes tem�ticas: Machismo'
TX_RESP_Q209 = 'Nesta escola, h� projetos com as seguintes tem�ticas: Homofobia'
TX_RESP_Q210 = 'Nesta escola, h� projetos com as seguintes tem�ticas: Sexualidade'
TX_RESP_Q211 = 'Nesta escola, h� projetos com as seguintes tem�ticas: Uso de drogas'
TX_RESP_Q212 = 'Nesta escola, h� projetos com as seguintes tem�ticas: Direitos dos idosos'
TX_RESP_Q213 = 'Nesta escola, h� projetos com as seguintes tem�ticas: Educa��o ambiental'
TX_RESP_Q214 = 'Nesta escola, h� projetos com as seguintes tem�ticas: Ci�ncia e tecnologia'
TX_RESP_Q215 = 'Nesta escola, h� projetos com as seguintes tem�ticas: Diversidade religiosa'
TX_RESP_Q216 = 'Nesta escola, h� projetos com as seguintes tem�ticas: Desigualdades sociais'
TX_RESP_Q217 = 'Nesta escola, h� projetos com as seguintes tem�ticas: Nutri��o e alimenta��o'
TX_RESP_Q218 = 'Nesta escola, h� projetos com as seguintes tem�ticas: Educa��o para o tr�nsito'
TX_RESP_Q219 = 'Nesta escola, h� projetos com as seguintes tem�ticas: Rela��es �tnico-raciais/racismo'
TX_RESP_Q220 = 'Nesta escola, h� projetos com as seguintes tem�ticas: Direitos da crian�a e do adolescente'
TX_RESP_Q221 = 'Nesta escola, h� projetos com as seguintes tem�ticas: Mundo do trabalho (direitos, rela��es etc)'
TX_RESP_Q222 = 'Nesta escola, h� projetos com as seguintes tem�ticas: Educa��o financeira e consumo sustent�vel'
TX_RESP_Q223 = 'Indique se neste ano a escola ofereceu atividades de forma��o nas seguintes �reas: Conte�do e compreens�o dos conceitos da(s) �rea(s) de ensino.'
TX_RESP_Q224 = 'Indique se neste ano a escola ofereceu atividades de forma��o nas seguintes �reas: Avalia��o da aprendizagem.'
TX_RESP_Q225 = 'Indique se neste ano a escola ofereceu atividades de forma��o nas seguintes �reas: Avalia��o em larga escala.'
TX_RESP_Q226 = 'Indique se neste ano a escola ofereceu atividades de forma��o nas seguintes �reas: Metodologias de ensino.'
TX_RESP_Q227 = 'Indique se neste ano a escola ofereceu atividades de forma��o nas seguintes �reas: Conhecimento do curr�culo.'
TX_RESP_Q228 = 'Indique se neste ano a escola ofereceu atividades de forma��o nas seguintes �reas: Gest�o da sala de aula.'
TX_RESP_Q229 = 'Indique se neste ano a escola ofereceu atividades de forma��o nas seguintes �reas: Educa��o inclusiva.'
TX_RESP_Q230 = 'Indique se neste ano a escola ofereceu atividades de forma��o nas seguintes �reas: Novas tecnologias.'
TX_RESP_Q231 = 'Indique se neste ano a escola ofereceu atividades de forma��o nas seguintes �reas: Gest�o e administra��o escolar.'
TX_RESP_Q232 = 'Os(As) profissionais para inclus�o do p�blico-alvo da educa��o especial s�o em n�mero suficiente?'
TX_RESP_Q233 = 'Indique quais outros(as) profissionais seriam necess�rios(as) no momento: Professor(a) de Braille '
TX_RESP_Q234 = 'Indique quais outros(as) profissionais seriam necess�rios(as) no momento: Professor(a) de Educa��o Especial que atua na sala comum '
TX_RESP_Q235 = 'Indique quais outros(as) profissionais seriam necess�rios(as) no momento: Professor(a) bil�ngue para surdos '
TX_RESP_Q236 = 'Indique quais outros(as) profissionais seriam necess�rios(as) no momento: Professor(a) de Libras '
TX_RESP_Q237 = 'Indique quais outros(as) profissionais seriam necess�rios(as) no momento: Professor(a) da sala de recursos multifuncionais '
TX_RESP_Q238 = 'Indique quais outros(as) profissionais seriam necess�rios(as) no momento: Professor(a) itinerante '
TX_RESP_Q239 = 'Indique quais outros(as) profissionais seriam necess�rios(as) no momento: Monitor(a) de apoio '
TX_RESP_Q240 = 'Indique quais outros(as) profissionais seriam necess�rios(as) no momento: Outros '
TX_RESP_Q241 = 'Nos �ltimos doze meses, sua escola recebeu treinamento para lidar com o p�blico-alvo da educa��o especial?'
TX_RESP_Q242 = 'Em quais �reas ocorreram treinamento: Defici�ncia intelectual '
TX_RESP_Q243 = 'Em quais �reas ocorreram treinamento: Defici�ncia f�sica '
TX_RESP_Q244 = 'Em quais �reas ocorreram treinamento: Autismo ou outro Transtorno Global do Desenvolvimento '
TX_RESP_Q245 = 'Em quais �reas ocorreram treinamento: Surdez '
TX_RESP_Q246 = 'Em quais �reas ocorreram treinamento: Defici�ncia auditiva '
TX_RESP_Q247 = 'Em quais �reas ocorreram treinamento: Cegueira '
TX_RESP_Q248 = 'Em quais �reas ocorreram treinamento: Baixa vis�o '
TX_RESP_Q249 = 'Em quais �reas ocorreram treinamento: Defici�ncia m�ltipla '
TX_RESP_Q250 = 'Em quais �reas ocorreram treinamento: Altas habilidades/superdota��o '
TX_RESP_Q251 = 'Em quais �reas ocorreram treinamento: Surdo-cegueira '
TX_RESP_Q252 = 'Sobre este question�rio, avalie os t�picos a seguir: Facilidade de preenchimento das respostas.'
TX_RESP_Q253 = 'Sobre este question�rio, avalie os t�picos a seguir: Compreens�o dos termos utilizados no question�rio.'

;
run;quit;