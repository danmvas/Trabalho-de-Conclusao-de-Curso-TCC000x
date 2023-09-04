/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                */ 
/*                                   			                                       */
/*  Coordena��o-Geral de Instrumentos e Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_ALUNO_3EM                                                */
/*-------------------------------------------------------------------------------------*/
/* DESCRICAO:     PROGRAMA PARA LEITURA DOS RESULTADOS DOS ALUNOS DA                   */
/*               3�/4� S�RIE DO ENSINO M�DIO DA ANEB/PROVA BRASIL 2017                 */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, � necess�rio salvar este programa e os arquivos           */
/* TS_ALUNO_3EM_AG.CSV e TS_ALUNO_3EM_ESC.CSVno diret�rio C:\ do computador.           */
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
/* Os R�tulos de algumas vari�veis n�o est�o completos em virtude do tamanho           */
/* dos enunciados das quest�es. Tais enunciados foram resumidos e indicados com o      */
/* seguinte c�digo: "(Cf. Dic.)". Essas quest�es exigem consulta ao Dicion�rio de      */
/* Vari�veis para conhecer o enunciado completo.                                       */
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
1 = 'Federal'
2 = 'Estadual'
3 = 'Municipal'
4 = 'Privada';

value ID_LOCALIZACAO
1 = 'Urbana'
2 = 'Rural';

value ID_TURNO
1 = 'Matutino'
2 = 'Vespertino'
3 = 'Noturno';

value ID_SERIE
12 = '3� S�rie do Ensino M�dio';

value IN_SITUACAO_CENSO
0 = 'N�o consistente'
1 = 'Consistente';

value IN_PREENCHIMENTO
0 = 'Prova n�o preenchida'
1 = 'Prova preenchida';

value IN_PRESENCA
0= 'Ausente'
1= 'Presente';

value IN_PROFICIENCIA
0 = 'N�o' 
1 = 'Sim';

value IN_PROVA_BRASIL
0 = 'N�o' 
1 = 'Sim';

value IN_PREENCHIMENTO_QUESTIONARIO
0 = 'N�o preenchido'
1 = 'Preenchido parcial ou totalmente';

value $Q3um
A = 'Masculino'
B = 'Feminino';

value $Q3dois
A = 'Branca'
B = 'Preta'
C = 'Parda'
D = 'Amarela'
E = 'Ind�gena'
F = 'N�o quero declarar';

value $Q3tres
A = 'Janeiro'
B = 'Fevereiro'
C = 'Mar�o'
D = 'Abril'
E = 'Maio'
F = 'Junho'
G = 'Julho'
H = 'Agosto'
I = 'Setembro'
J = 'Outubro'
K = 'Novembro'
L = 'Dezembro';

value $Q3quatro
A = '2002 ou depois'
B = '2001'
C = '2000'
D = '1999'
E = '1998'
F = '1997'
G = '1996'
H = '1995 ou antes';

value $Q3cinco
A = 'N�o tem'
B = 'Sim, uma'
C = 'Sim, duas'
D = 'Sim, tr�s'
E = 'Sim, quatro ou mais';

value $Q3seis
A = 'N�o tem'
B = 'Sim, um'
C = 'Sim, dois'
D = 'Sim, tr�s'
E = 'Sim, quatro ou mais';

value $Q3sete
A = 'N�o tem'
B = 'Sim, um'
C = 'Sim, dois'
D = 'Sim, tr�s'
E = 'Sim, quatro ou mais';

value $Q3oito
A = 'N�o tem'
B = 'Sim, uma'
C = 'Sim, duas'
D = 'Sim, tr�s'
E = 'Sim, quatro ou mais';

value $Q3nove
A = 'N�o tem'
B = 'Sim, um'
C = 'Sim, dois'
D = 'Sim, tr�s'
E = 'Sim, quatro ou mais';

value $Q3dez
A = 'N�o tem'
B = 'Sim, um'
C = 'Sim, dois'
D = 'Sim, tr�s'
E = 'Sim, quatro ou mais';

value $Q3onze
A = 'N�o tem'
B = 'Sim, uma'
C = 'Sim, duas'
D = 'Sim, tr�s'
E = 'Sim, quatro ou mais';

value $Q3doze
A = 'N�o tem'
B = 'Sim, um'
C = 'Sim, dois'
D = 'Sim, tr�s'
E = 'Sim, quatro ou mais';

value $Q3treze
A = 'N�o tem'
B = 'Sim, um'
C = 'Sim, dois'
D = 'Sim, tr�s'
E = 'Sim, quatro ou mais';

value $Q3catorze
A = 'N�o tem'
B = 'Sim, um'
C = 'Sim, dois'
D = 'Sim, tr�s'
E = 'Sim, quatro ou mais';

value $Q3quinze
A = 'N�o tem'
B = 'Sim, um'
C = 'Sim, dois'
D = 'Sim, tr�s'
E = 'Sim, quatro ou mais';

value $Q3dezesseis
A = 'Uma, pois moro sozinho(a)'
B = 'Duas'
C = 'Tr�s'
D = 'Quatro'
E = 'Cinco'
F = 'Seis pessoas ou mais';

value $Q3dezessete
A = 'N�o'
B = 'Sim, um(a) empregado(a)'
C = 'Sim, dois(duas) empregados(as)'
D = 'Sim, tr�s empregados(as)'
E = 'Sim, quatro ou mais empregados(as)';

value $Q3dezoito
A = 'Sim'
B = 'N�o'
C = 'N�o, mas moro com outra mulher respons�vel por mim';

value $Q3dezenove
A = 'Nunca estudou'
B = 'N�o completou a 4.� s�rie/5.� ano do Ensino Fundamental'
C = 'Completou a 4.� s�rie/5.� ano, mas n�o completou a 8.� s�rie/9.� ano do Ensino Fundamental'
D = 'Completou a 8.� s�rie/9.� ano do Ensino Fundamental, mas n�o completou o Ensino M�dio'
E = 'Completou o Ensino M�dio, mas n�o completou a Faculdade'
F = 'Completou a Faculdade'
G = 'N�o sei';

value $Q3vinte
A = 'Sim'
B = 'N�o';

value $Q3vinteum
A = 'Sim'
B = 'N�o';

value $Q3vintedois
A = 'Sim'
B = 'N�o'
C = 'N�o, moro com outro homem respons�vel por mim';

value $Q3vintetres
A = 'Nunca estudou'
B = 'N�o completou a 4.� s�rie/5.� ano do Ensino Fundamental'
C = 'Completou a 4.� s�rie/5.� ano, mas n�o completou a 8.� s�rie/9.� ano do Ensino Fundamental'
D = 'Completou a 8.� s�rie/9.� ano do Ensino Fundamental, mas n�o completou o Ensino M�dio'
E = 'Completou o Ensino M�dio, mas n�o completou a Faculdade'
F = 'Completou a Faculdade'
G = 'N�o sei';

value $Q3vintequatro
A = 'Sim'
B = 'N�o';

value $Q3vintecinco
A = 'Sim'
B = 'N�o';

value $Q3vinteseis
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca';

value $Q3vintesete
A = 'Sim'
B = 'N�o';

value $Q3vinteoito
A = 'Sim'
B = 'N�o';

value $Q3vintenove
A = 'Sim'
B = 'N�o';

value $Q3trinta
A = 'Sim'
B = 'N�o';

value $Q3trintaum
A = 'Sim'
B = 'N�o';

value $Q3trintadois
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca';

value $Q3trintatres
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca';

value $Q3trintaquatro
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca';

value $Q3trintacinco
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca';

value $Q3trintaseis
A = 'Menos de 1 hora'
B = 'Entre 1 e 2 horas'
C = 'Mais de 2 horas, at� 3 horas'
D = 'Mais de 3 horas'
E = 'N�o vejo TV, n�o navego na internet e n�o jogo jogos eletr�nicos';

value $Q3trintasete
A = 'Menos de 1 hora'
B = 'Entre 1 e 2 horas'
C = 'Mais de 2 horas, at� 3 horas'
D = 'Mais de 3 horas'
E = 'N�o fa�o trabalhos dom�sticos';

value $Q3trintaoito
A = 'Sim'
B = 'N�o';

value $Q3trintanove
A = 'Na creche (0 a 3 anos)'
B = 'Na pr�-escola (4 a 5 anos)'
C = 'Na primeira s�rie ou primeiro ano (6 a 7 anos)'
D = 'Depois da primeira s�rie';

value $Q3quarenta
A = 'Somente em escola p�blica'
B = 'Somente em escola particular'
C = 'Em escola p�blica e em escola particular';

value $Q3quarentaum
A = 'N�o'
B = 'Sim, uma vez'
C = 'Sim, duas vezes ou mais';

value $Q3quarentadois
A = 'N�o'
B = 'Sim, uma vez'
C = 'Sim, duas vezes ou mais';

value $Q3quarentatres
A = 'Sim'
B = 'N�o';

value $Q3quarentaquatro
A = 'Sim'
B = 'N�o';

value $Q3quarentacinco
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca'
D = 'O(A) professor(a) n�o passa dever de casa';

value $Q3quarentaseis
A = 'Sim'
B = 'N�o'
C = 'O(A) professor(a) n�o passa dever de casa';

value $Q3quarentasete
A = 'Sim'
B = 'N�o'
C = 'O(A) professor(a) n�o passa dever de casa';

value $Q3quarentaoito
A = 'Sim'
B = 'N�o'
C = 'O(A) professor(a) n�o passa dever de casa';

value $Q3quarentanove
A = 'Sim'
B = 'N�o'
C = 'O(A) professor(a) n�o passa dever de casa';

value $Q3cinquenta
A = 'Sim'
B = 'N�o'
C = 'O(A) professor(a) n�o passa dever de casa';

value $Q3cinquentaum
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca'
D = 'O(A) professor(a) n�o passa dever de casa';

value $Q3cinquentadois
A = 'Sim'
B = 'N�o';

value $Q3cinquentatres
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca'
D = 'O(A) professor(a) n�o passa dever de casa';

value $Q3cinquentaquatro
A = 'Sim'
B = 'N�o'
C = 'O(A) professor(a) n�o passa dever de casa';

value $Q3cinquentacinco
A = 'Sim'
B = 'N�o'
C = 'O(A) professor(a) n�o passa dever de casa';

value $Q3cinquentaseis
A = 'Sim'
B = 'N�o'
C = 'O(A) professor(a) n�o passa dever de casa';

value $Q3cinquentasete
A = 'Sim'
B = 'N�o'
C = 'O(A) professor(a) n�o passa dever de casa';

value $Q3cinquentaoito
A = 'Sim'
B = 'N�o'
C = 'O(A) professor(a) n�o passa dever de casa';

value $Q3cinquentanove
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca'
D = 'O(A) professor(a) n�o passa dever de casa';

value $Q3sessenta
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca'
D = 'A escola n�o possui biblioteca ou sala de leitura';

DATA WORK.TS_ALUNO_3EM;
INFILE 'C:\TS_ALUNO_3EM_AG.csv'/* OU 'C:\TS_ALUNO_3EM_ESC.csv'          <-- Endere�o do arquivo*/

        LRECL=4096
		firstobs=2
        DLM=","
        MISSOVER
        DSD ;
 
INPUT
ID_PROVA_BRASIL : 4.
ID_REGIAO : 1.
ID_UF : 2.
ID_MUNICIPIO : 7.
ID_AREA : 1.
ID_ESCOLA : 8.
ID_DEPENDENCIA_ADM : 1.
ID_LOCALIZACAO : 1.
ID_TURMA : 6.
ID_TURNO : 1.
ID_SERIE : 2.
ID_ALUNO : 8.
IN_SITUACAO_CENSO : 1.
IN_PREENCHIMENTO_PROVA : 1.
IN_PRESENCA_PROVA : 1.
ID_CADERNO : 2.
ID_BLOCO_1 : 1.
ID_BLOCO_2 : 1.
TX_RESP_BLOCO_1_LP : $CHAR13.
TX_RESP_BLOCO_2_LP : $CHAR13.
TX_RESP_BLOCO_1_MT : $CHAR13.
TX_RESP_BLOCO_2_MT : $CHAR13.
IN_PROFICIENCIA : 1.
IN_PROVA_BRASIL : 1.
ESTRATO_ANEB : $CHAR14.
PESO_ALUNO_LP : 18.
PESO_ALUNO_MT : 18.
PROFICIENCIA_LP : 18.
ERRO_PADRAO_LP : 17.
PROFICIENCIA_LP_SAEB : 19.
ERRO_PADRAO_LP_SAEB : 18.
PROFICIENCIA_MT : 18.
ERRO_PADRAO_MT : 17.
PROFICIENCIA_MT_SAEB  : 19.
ERRO_PADRAO_MT_SAEB : 18.
IN_PREENCHIMENTO_QUESTIONARIO : 1.
TX_RESP_Q001 : $CHAR1.
TX_RESP_Q002 : $CHAR1.
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
;

ATTRIB ID_REGIAO FORMAT=ID_REGIAO12.;
ATTRIB ID_UF FORMAT=ID_UF2.;
ATTRIB ID_AREA FORMAT=ID_AREA8.;
ATTRIB ID_DEPENDENCIA_ADM FORMAT=ID_DEPENDENCIA_ADM9.;
ATTRIB ID_LOCALIZACAO FORMAT=ID_LOCALIZACAO9.;
ATTRIB ID_TURNO FORMAT=ID_TURNO13.;
ATTRIB ID_SERIE FORMAT=ID_SERIE37.;
ATTRIB IN_SITUACAO_CENSO FORMAT=IN_SITUACAO_CENSO20.;
ATTRIB IN_PREENCHIMENTO_PROVA FORMAT=IN_PREENCHIMENTO20.;
ATTRIB IN_PRESENCA_PROVA FORMAT=IN_PRESENCA20.;
ATTRIB IN_PROFICIENCIA FORMAT=IN_PROFICIENCIA3.;
ATTRIB IN_PROVA_BRASIL FORMAT=IN_PROVA_BRASIL3.;
ATTRIB IN_PREENCHIMENTO_QUESTIONARIO FORMAT=IN_PREENCHIMENTO_QUESTIONARIO33.;
ATTRIB TX_RESP_Q001 FORMAT=$Q3um.;
ATTRIB TX_RESP_Q002 FORMAT=$Q3dois.;
ATTRIB TX_RESP_Q003 FORMAT=$Q3tres.;
ATTRIB TX_RESP_Q004 FORMAT=$Q3quatro.;
ATTRIB TX_RESP_Q005 FORMAT=$Q3cinco.;
ATTRIB TX_RESP_Q006 FORMAT=$Q3seis.;
ATTRIB TX_RESP_Q007 FORMAT=$Q3sete.;
ATTRIB TX_RESP_Q008 FORMAT=$Q3oito.;
ATTRIB TX_RESP_Q009 FORMAT=$Q3nove.;
ATTRIB TX_RESP_Q010 FORMAT=$Q3dez.;
ATTRIB TX_RESP_Q011 FORMAT=$Q3onze.;
ATTRIB TX_RESP_Q012 FORMAT=$Q3doze.;
ATTRIB TX_RESP_Q013 FORMAT=$Q3treze.;
ATTRIB TX_RESP_Q014 FORMAT=$Q3catorze.;
ATTRIB TX_RESP_Q015 FORMAT=$Q3quinze.;
ATTRIB TX_RESP_Q016 FORMAT=$Q3dezesseis.;
ATTRIB TX_RESP_Q017 FORMAT=$Q3dezessete.;
ATTRIB TX_RESP_Q018 FORMAT=$Q3dezoito.;
ATTRIB TX_RESP_Q019 FORMAT=$Q3dezenove.;
ATTRIB TX_RESP_Q020 FORMAT=$Q3vinte.;
ATTRIB TX_RESP_Q021 FORMAT=$Q3vinteum.;
ATTRIB TX_RESP_Q022 FORMAT=$Q3vintedois.;
ATTRIB TX_RESP_Q023 FORMAT=$Q3vintetres.;
ATTRIB TX_RESP_Q024 FORMAT=$Q3vintequatro.;
ATTRIB TX_RESP_Q025 FORMAT=$Q3vintecinco.;
ATTRIB TX_RESP_Q026 FORMAT=$Q3vinteseis.;
ATTRIB TX_RESP_Q027 FORMAT=$Q3vintesete.;
ATTRIB TX_RESP_Q028 FORMAT=$Q3vinteoito.;
ATTRIB TX_RESP_Q029 FORMAT=$Q3vintenove.;
ATTRIB TX_RESP_Q030 FORMAT=$Q3trinta.;
ATTRIB TX_RESP_Q031 FORMAT=$Q3trintaum.;
ATTRIB TX_RESP_Q032 FORMAT=$Q3trintadois.;
ATTRIB TX_RESP_Q033 FORMAT=$Q3trintatres.;
ATTRIB TX_RESP_Q034 FORMAT=$Q3trintaquatro.;
ATTRIB TX_RESP_Q035 FORMAT=$Q3trintacinco.;
ATTRIB TX_RESP_Q036 FORMAT=$Q3trintaseis.;
ATTRIB TX_RESP_Q037 FORMAT=$Q3trintasete.;
ATTRIB TX_RESP_Q038 FORMAT=$Q3trintaoito.;
ATTRIB TX_RESP_Q039 FORMAT=$Q3trintanove.;
ATTRIB TX_RESP_Q040 FORMAT=$Q3quarenta.;
ATTRIB TX_RESP_Q041 FORMAT=$Q3quarentaum.;
ATTRIB TX_RESP_Q042 FORMAT=$Q3quarentadois.;
ATTRIB TX_RESP_Q043 FORMAT=$Q3quarentatres.;
ATTRIB TX_RESP_Q044 FORMAT=$Q3quarentaquatro.;
ATTRIB TX_RESP_Q045 FORMAT=$Q3quarentacinco.;
ATTRIB TX_RESP_Q046 FORMAT=$Q3quarentaseis.;
ATTRIB TX_RESP_Q047 FORMAT=$Q3quarentasete.;
ATTRIB TX_RESP_Q048 FORMAT=$Q3quarentaoito.;
ATTRIB TX_RESP_Q049 FORMAT=$Q3quarentanove.;
ATTRIB TX_RESP_Q050 FORMAT=$Q3cinquenta.;
ATTRIB TX_RESP_Q051 FORMAT=$Q3cinquentaum.;
ATTRIB TX_RESP_Q052 FORMAT=$Q3cinquentadois.;
ATTRIB TX_RESP_Q053 FORMAT=$Q3cinquentatres.;
ATTRIB TX_RESP_Q054 FORMAT=$Q3cinquentaquatro.;
ATTRIB TX_RESP_Q055 FORMAT=$Q3cinquentacinco.;
ATTRIB TX_RESP_Q056 FORMAT=$Q3cinquentaseis.;
ATTRIB TX_RESP_Q057 FORMAT=$Q3cinquentasete.;
ATTRIB TX_RESP_Q058 FORMAT=$Q3cinquentaoito.;
ATTRIB TX_RESP_Q059 FORMAT=$Q3cinquentanove.;
ATTRIB TX_RESP_Q060 FORMAT=$Q3sessenta.;

LABEL

ID_PROVA_BRASIL = 'Ano da ANEB/Prova Brasil'                                                                                                                
ID_REGIAO = 'C�digo da Regi�o'                                                                                                                         
ID_UF = 'C�digo da Unidade da Federa��o'                                                                                                               
ID_MUNICIPIO = 'C�digo do Munic�pio'                                                                                                                   
ID_AREA = '�rea'                                                                                                                    
ID_ESCOLA = 'C�digo da Escola'                                                                                                                         
ID_DEPENDENCIA_ADM = 'Depend�ncia Administrativa'                                                                                             
ID_LOCALIZACAO = 'Localiza��o'                                                                                                                
ID_TURMA = 'C�digo da turma na Prova Brasil'                                                                                                           
ID_TURNO = 'Turno da Turma'                                                                                                                            
ID_SERIE = 'S�rie'                                                                                                                                     
ID_ALUNO = 'C�digo do aluno na Prova Brasil'                                                                                                           
IN_SITUACAO_CENSO = 'Indicador de Consist�ncia com o Censo Escolar 2017'                                                                              
IN_PREENCHIMENTO_PROVA = 'Indicador de preenchimento da prova' 
IN_PRESENCA_PROVA= 'Indicador de presen�a na prova' 
ID_CADERNO = 'Caderno de Provas'                                                                                                                       
ID_BLOCO_1 = 'Identificador do Bloco 1 (L�ngua Portuguesa e Matem�tica)'                                                                               
ID_BLOCO_2 = 'Identificador do Bloco 2 (L�ngua Portuguesa e Matem�tica)'                                                                               
TX_RESP_BLOCO_1_LP = 'Resposta do Aluno ao Bloco 1 da Prova de L�ngua Portuguesa'                                                                     
TX_RESP_BLOCO_2_LP = 'Resposta do Aluno ao Bloco 2 da Prova de L�ngua Portuguesa'                                                                     
TX_RESP_BLOCO_1_MT = 'Resposta do Aluno ao Bloco 1 da Prova de Matem�tica'                                                                            
TX_RESP_BLOCO_2_MT = 'Resposta do Aluno ao Bloco 2 da Prova de Matem�tica'                                                                            
IN_PROFICIENCIA = 'Indicador para c�lculo da profici�ncia (no m�nimo tr�s itens respondidos na prova)'
ESTRATO_ANEB = 'Descri��o dos estratos da ANEB'
PESO_ALUNO_LP = 'Peso do Aluno em L�ngua Portuguesa'                                                                                                   
PESO_ALUNO_MT = 'Peso do Aluno em Matem�tica'                                                                                                          
PROFICIENCIA_LP = 'Profici�ncia do aluno em L�ngua Portuguesa calculada na escala �nica do SAEB, com m�dia = 0 e desvio = 1 na popula��o de refer�ncia'
ERRO_PADRAO_LP = 'Erro padr�o da profici�ncia em L�ngua Portuguesa'                                                                                
PROFICIENCIA_LP_SAEB = 'Profici�ncia em L�ngua Portuguesa transformada na escala �nica do SAEB, com m�dia = 250, desvio = 50 (do SAEB/97)'             
ERRO_PADRAO_LP_SAEB = 'Erro padr�o da profici�ncia transformada em L�ngua Portuguesa'                                                              
PROFICIENCIA_MT = 'Profici�ncia do aluno em Matem�tica calculada na escala �nica do SAEB, com m�dia = 0 e desvio = 1 na popula��o de refer�ncia'       
ERRO_PADRAO_MT = 'Erro padr�o da profici�ncia em Matem�tica'                                                                                       
PROFICIENCIA_MT_SAEB = 'Profici�ncia do aluno em Matem�tica transformada na escala �nica do SAEB, com m�dia = 250, desvio = 50 (do SAEB/97)'           
ERRO_PADRAO_MT_SAEB = 'Erro padr�o da profici�ncia transformada em Matem�tica'                                                                     
IN_PREENCHIMENTO_QUESTIONARIO = 'Indicador de preenchimento do question�rio'
TX_RESP_Q001 = 'Qual � o seu sexo?'
TX_RESP_Q002 = 'Qual � a sua cor ou ra�a?'
TX_RESP_Q003 = 'Voc� poderia nos dizer qual � o m�s de seu anivers�rio?'
TX_RESP_Q004 = 'Em que ano voc� nasceu?'
TX_RESP_Q005 = 'Na sua casa tem televis�o em cores?'
TX_RESP_Q006 = 'Na sua casa tem aparelho de r�dio?'
TX_RESP_Q007 = 'Na sua casa tem videocassete e/ou DVD?'
TX_RESP_Q008 = 'Na sua casa tem geladeira?'
TX_RESP_Q009 = 'Na sua casa tem freezer (parte da geladeira duplex)?'
TX_RESP_Q010 = 'Na sua casa tem freezer separado da geladeira?'
TX_RESP_Q011 = 'Na sua casa tem m�quina de lavar roupa (O tanquinho N�O deve ser considerado)?'
TX_RESP_Q012 = 'Na sua casa tem carro?'
TX_RESP_Q013 = 'Na sua casa tem computador?'
TX_RESP_Q014 = 'Na sua casa tem banheiro?'
TX_RESP_Q015 = 'Na sua casa tem quartos para dormir?'
TX_RESP_Q016 = 'Incluindo voc�, quantas pessoas vivem atualmente em sua casa?'
TX_RESP_Q017 = 'Em sua casa trabalha empregado(a) dom�stico(a) pelo menos cinco dias por semana?'
TX_RESP_Q018 = 'Voc� mora com sua m�e?'
TX_RESP_Q019 = 'At� que s�rie sua m�e, ou a mulher respons�vel por voc�, estudou?'
TX_RESP_Q020 = 'Sua m�e, ou a mulher respons�vel por voc�, sabe ler e escrever?'
TX_RESP_Q021 = 'Voc� v� sua m�e, ou mulher respons�vel por voc�, lendo?'
TX_RESP_Q022 = 'Voc� mora com seu pai?'
TX_RESP_Q023 = 'At� que s�rie seu pai, ou o homem respons�vel por voc�, estudou?'
TX_RESP_Q024 = 'Seu pai, ou homem respons�vel por voc�, sabe ler e escrever?'
TX_RESP_Q025 = 'Voc� v� o seu pai, ou homem respons�vel por voc�, lendo?'
TX_RESP_Q026 = 'Com qual frequ�ncia seus pais, ou respons�veis por voc�, v�o � reuni�o de pais?'
TX_RESP_Q027 = 'Seus pais ou respons�veis incentivam voc� a estudar?'
TX_RESP_Q028 = 'Seus pais ou respons�veis incentivam voc� a fazer o dever de casa e/ou os trabalhos da escola?'
TX_RESP_Q029 = 'Seus pais ou respons�veis incentivam voc� a ler?'
TX_RESP_Q030 = 'Seus pais ou respons�veis incentivam voc� a ir a escola e/ou n�o faltar �s aulas?'
TX_RESP_Q031 = 'Seus pais ou respons�veis conversam com voc� sobre o que acontece na escola?'
TX_RESP_Q032 = 'Com qual frequ�ncia voc� l�: Revistas informativas em geral'
TX_RESP_Q033 = 'Com qual frequ�ncia voc� l�: Gibis'
TX_RESP_Q034 = 'Com qual frequ�ncia voc� l�: Livros em geral'
TX_RESP_Q035 = 'Com qual frequ�ncia voc� l�: Not�cias e/ou textos na internet'
TX_RESP_Q036 = 'Em dias de aula, quanto tempo voc� gasta assistindo � TV, navegando na internet ou jogando jogos eletr�nicos?'
TX_RESP_Q037 = 'Em dias de aula, quanto tempo voc� gasta fazendo trabalhos dom�sticos (ex.: lavando lou�a, limpando o quintal etc.)?'
TX_RESP_Q038 = 'Atualmente voc� trabalha fora de casa (recebendo ou n�o um sal�rio)?'
TX_RESP_Q039 = 'Quando voc� come�ou a estudar?'
TX_RESP_Q040 = 'A partir da primeira s�rie do Ensino M�dio, em que tipo de escola voc� estudou?'
TX_RESP_Q041 = 'Voc� j� foi reprovado?'
TX_RESP_Q042 = 'Voc� j� abandonou a escola durante o per�odo de aulas e ficou fora da escola o resto do ano?'
TX_RESP_Q043 = 'Voc� concluiu o Ensino Fundamental na Educa��o de Jovens e Adultos(EJA), antigo supletivo?'
TX_RESP_Q044 = 'Voc� gosta de estudar L�ngua Portuguesa?'
TX_RESP_Q045 = 'Voc� faz o dever de casa de L�ngua portuguesa?'
TX_RESP_Q046 = 'O que voc� consulta para fazer o dever de casa de L�ngua Portuguesa? Jornais'
TX_RESP_Q047 = 'O que voc� consulta para fazer o dever de casa de L�ngua Portuguesa? Revistas de Informa��o geral'
TX_RESP_Q048 = 'O que voc� consulta para fazer o dever de casa de L�ngua Portuguesa? Livros did�ticos'
TX_RESP_Q049 = 'O que voc� consulta para fazer o dever de casa de L�ngua Portuguesa? Livros ou enciclop�dias'
TX_RESP_Q050 = 'O que voc� consulta para fazer o dever de casa de L�ngua Portuguesa? Sites da internet'
TX_RESP_Q051 = 'O professor corrige o dever de casa de L�ngua Portuguesa?'
TX_RESP_Q052 = 'Voc� gosta de estudar Matem�tica?'
TX_RESP_Q053 = 'Voc� faz o dever de casa de Matem�tica?'
TX_RESP_Q054 = 'O que voc� consulta para fazer o dever de casa de Matem�tica? Caderno'
TX_RESP_Q055 = 'O que voc� consulta para fazer o dever de casa de Matem�tica? Livros did�ticos'
TX_RESP_Q056 = 'O que voc� consulta para fazer o dever de casa de Matem�tica? Material complementar'
TX_RESP_Q057 = 'O que voc� consulta para fazer o dever de casa de Matem�tica? Revistas e jornais'
TX_RESP_Q058 = 'O que voc� consulta para fazer o dever de casa de Matem�tica? Sites da internet'
TX_RESP_Q059 = 'O professor corrige o dever de casa de Matem�tica?'
TX_RESP_Q060 = 'Voc� utiliza a biblioteca ou sala de leitura da sua escola?';

run;quit;