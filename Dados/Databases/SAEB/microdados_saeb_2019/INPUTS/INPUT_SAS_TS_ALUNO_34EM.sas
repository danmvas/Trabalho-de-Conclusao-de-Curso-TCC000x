/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                */ 
/*                                   			                                       */
/*  Coordena��o-Geral de Instrumentos e Medidas                                        */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_ALUNO_34EM                                               */
/*-------------------------------------------------------------------------------------*/
/* DESCRICAO:    PROGRAMA PARA LEITURA DOS RESULTADOS DOS ALUNOS DA                    */
/*                   3�/4� S�RIE DO ENSINO M�DIO DO SAEB 2019                          */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, � necess�rio salvar este programa e os arquivos           */
/* TS_ALUNO_34EM.CSV no diret�rio C:\ do computador.                                   */
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
12 = '3�/4� s�ries do Ensino M�dio Tradicional'
13 = '3�/4� s�ries do Ensino M�dio Integrado';

value IN_SITUACAO_CENSO
0 = 'N�o consistente'
1 = 'Consistente';

value IN_PREENCHIMENTO_LP       
0 = 'Prova n�o preenchida'
1 = 'Prova preenchida';

value IN_PREENCHIMENTO_MT    
0 = 'Prova n�o preenchida'
1 = 'Prova preenchida';

value IN_PRESENCA_LP
0= 'Ausente'
1= 'Presente';

value IN_PRESENCA_MT
0= 'Ausente'
1= 'Presente';

value IN_PROFICIENCIA_LP
0 = 'N�o' 
1 = 'Sim';

value IN_PROFICIENCIA_MT
0 = 'N�o' 
1 = 'Sim';

value IN_AMOSTRA
0 = 'N�o' 
1 = 'Sim';

value IN_PREENCHIMENTO_QUESTIONARIO
0 = 'N�o preenchido'
1 = 'Preenchido parcial ou totalmente';

value $Q3um
A = 'Portugu�s.' 
B = 'Espanhol.'
C = 'Outra lingua.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3dois
A = 'Branca.'
B = 'Preta.'
C = 'Parda.'
D = 'Amarela.'
E = 'Ind�gena.'
F = 'N�o quero declarar.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3tresa
A = 'N�o.'
B = 'Sim.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3tresb
A = 'N�o.'
B = 'Sim.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3tresc
A = 'N�o.'
B = 'Sim.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3tresd
A = 'N�o.'
B = 'Sim.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3trese
A = 'N�o.'
B = 'Sim.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3quatro
A = 'N�o completou o 5� ano do Ensino Fundamental.' 
B = 'Ensino Fundamental, at� o 5� ano.' 
C = 'Ensino Fundamental completo.' 
D = 'Ensino M�dio completo.' 
E = 'Ensino Superior completo (faculdade ou gradua��o).' 
F = 'N�o sei.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3cinco
A = 'N�o completou o 5� ano do Ensino Fundamental.' 
B = 'Ensino Fundamental, at� o 5� ano.' 
C = 'Ensino Fundamental completo.' 
D = 'Ensino M�dio completo.' 
E = 'Ensino Superior completo (faculdade ou gradua��o).' 
F = 'N�o sei.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3seisa
A = 'Nunca ou quase nunca.' 
B = 'De vez em quando.' 
C = 'Sempre ou quase sempre.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3seisb
A = 'Nunca ou quase nunca.' 
B = 'De vez em quando.' 
C = 'Sempre ou quase sempre.'
* = 'Dupla marca��o.'
. = 'Em branco.'; 

value $Q3seisc
A = 'Nunca ou quase nunca.' 
B = 'De vez em quando.' 
C = 'Sempre ou quase sempre.'
* = 'Dupla marca��o.'
. = 'Em branco.'; 

value $Q3seisd
A = 'Nunca ou quase nunca.' 
B = 'De vez em quando.' 
C = 'Sempre ou quase sempre.'
* = 'Dupla marca��o.'
. = 'Em branco.'; 

value $Q3seise
A = 'Nunca ou quase nunca.' 
B = 'De vez em quando.' 
C = 'Sempre ou quase sempre.'
* = 'Dupla marca��o.'
. = 'Em branco.'; 

value $Q3sete
A = 'Nunca ou quase nunca.' 
B = 'De vez em quando (uma vez por semana, a cada quinze dias etc.).' 
C = 'Sempre ou quase sempre (ex.: tr�s ou mais dias por semana).'
* = 'Dupla marca��o.'
. = 'Em branco.'; 

value $Q3oitoa
A = 'N�o.'
B = 'Sim.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3oitob
A = 'N�o.'
B = 'Sim.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3oitoc
A = 'N�o.'
B = 'Sim.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3novea
A = 'Nenhum.' 
B = '1.' 
C = '2.' 
D = '3 ou mais.'
* = 'Dupla marca��o.'
. = 'Em branco.'; 

value $Q3noveb
A = 'Nenhum.' 
B = '1.' 
C = '2.' 
D = '3 ou mais.'
* = 'Dupla marca��o.'
. = 'Em branco.'; 

value $Q3novec
A = 'Nenhum.' 
B = '1.' 
C = '2.' 
D = '3 ou mais.'
* = 'Dupla marca��o.'
. = 'Em branco.'; 

value $Q3noved
A = 'Nenhum.' 
B = '1.' 
C = '2.' 
D = '3 ou mais.'
* = 'Dupla marca��o.'
. = 'Em branco.'; 

value $Q3novee
A = 'Nenhum.' 
B = '1.' 
C = '2.' 
D = '3 ou mais.'
* = 'Dupla marca��o.'
. = 'Em branco.'; 

value $Q3novef
A = 'Nenhum.' 
B = '1.' 
C = '2.' 
D = '3 ou mais.'
* = 'Dupla marca��o.'
. = 'Em branco.'; 

value $Q3noveg
A = 'Nenhum.' 
B = '1.' 
C = '2.' 
D = '3 ou mais.'
* = 'Dupla marca��o.'
. = 'Em branco.'; 

value $Q3deza
A = 'N�o.'
B = 'Sim.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3dezb
A = 'N�o.'
B = 'Sim.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3dezc
A = 'N�o.'
B = 'Sim.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3dezd
A = 'N�o.'
B = 'Sim.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3deze   
A = 'N�o.'
B = 'Sim.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3dezf
A = 'N�o.'
B = 'Sim.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3dezg
A = 'N�o.'
B = 'Sim.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3dezh
A = 'N�o.'
B = 'Sim.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3dezi
A = 'N�o.'
B = 'Sim.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3onze
A = 'Menos de 30 minutos.' 
B = 'Entre 30 minutos e uma hora.' 
C = 'Mais de uma hora.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3doze
A = '� p�.' 
B = 'De �nibus urbano.' 
C = 'De transporte escolar.' 
D = 'De barco.' 
E = 'De bicicleta.'
F = 'De carro.' 
G = 'Outros meios de transporte.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3treze
A =  '3 anos ou menos.' 
B = '4 ou 5 anos.' 
C = '6 ou 7 anos.' 
D = '8 anos ou mais.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3catorze
A = 'Somente em escola p�blica.' 
B = 'Somente em escola particular.' 
C = 'Em escola p�blica e em escola particular.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3quinze
A = 'N�o.' 
B = 'Sim, uma vez.' 
C = 'Sim, duas vezes ou mais.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3dezesseis
A = 'Nunca.' 
B = 'Sim, uma vez.' 
C = 'Sim, duas vezes ou mais.'
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3dezessetea
A = 'N�o uso meu tempo para isso.' 
B = 'Menos de 1 hora.' 
C = 'Entre 1 e 2 horas.' 
D = 'Mais de 2 horas.'
* = 'Dupla marca��o.'
. = 'Em branco.'; 

value $Q3dezesseteb
A = 'N�o uso meu tempo para isso.' 
B = 'Menos de 1 hora.' 
C = 'Entre 1 e 2 horas.' 
D = 'Mais de 2 horas.'
* = 'Dupla marca��o.'
. = 'Em branco.'; 

value $Q3dezessetec
A = 'N�o uso meu tempo para isso.' 
B = 'Menos de 1 hora.' 
C = 'Entre 1 e 2 horas.' 
D = 'Mais de 2 horas.'
* = 'Dupla marca��o.'
. = 'Em branco.'; 

value $Q3dezesseted
A = 'N�o uso meu tempo para isso.' 
B = 'Menos de 1 hora.' 
C = 'Entre 1 e 2 horas.' 
D = 'Mais de 2 horas.'
* = 'Dupla marca��o.'
. = 'Em branco.'; 

value $Q3dezessetee
A = 'N�o uso meu tempo para isso.' 
B = 'Menos de 1 hora.' 
C = 'Entre 1 e 2 horas.' 
D = 'Mais de 2 horas.'
* = 'Dupla marca��o.'
. = 'Em branco.'; 

value $Q3dezoitoa
A = 'Nunca ou quase nunca.' 
B = 'De vez em quando.' 
C = 'Sempre ou quase sempre'.
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3dezoitob
A = 'Nunca ou quase nunca.' 
B = 'De vez em quando.' 
C = 'Sempre ou quase sempre'.
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3dezoitoc
A = 'Nunca ou quase nunca.' 
B = 'De vez em quando.' 
C = 'Sempre ou quase sempre'.
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3dezenove
A = 'Somente continuar estudando.' 
B = 'Somente trabalhar.' 
C = 'Continuar estudando e trabalhar.'
D = 'Ainda n�o sei.'.
* = 'Dupla marca��o.'
. = 'Em branco.';

value $Q3vinte
A = 'N�o.' 
B = 'Sim.'
* = 'Dupla marca��o.'
. = 'Em branco.';


DATA WORK.TS_ALUNO_34EM;
INFILE 'C:/TS_ALUNO_34EM.csv' /* <-- Endere�o do arquivo*/

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
ID_TURMA : 6.
ID_TURNO : 1.
ID_SERIE : 2.
ID_ALUNO : 8.
IN_SITUACAO_CENSO : 1.
IN_PREENCHIMENTO_LP : 1.      
IN_PREENCHIMENTO_MT : 1.      
IN_PRESENCA_LP : 1.           
IN_PRESENCA_MT : 1.           
ID_CADERNO_LP : 2.                    
ID_BLOCO_1_LP : $CHAR1.                 
ID_BLOCO_2_LP : $CHAR1.                
ID_CADERNO_MT : 2.                    
ID_BLOCO_1_MT : $CHAR1.                 
ID_BLOCO_2_MT : $CHAR1.  
TX_RESP_BLOCO_1_LP : $CHAR13.
TX_RESP_BLOCO_2_LP : $CHAR13.
TX_RESP_BLOCO_1_MT : $CHAR13.
TX_RESP_BLOCO_2_MT : $CHAR13.
IN_PROFICIENCIA_LP : 1.       
IN_PROFICIENCIA_MT : 1.
IN_AMOSTRA : 1.
ESTRATO : $CHAR14.
PESO_ALUNO_LP : 12.
PROFICIENCIA_LP : 10.
ERRO_PADRAO_LP : 10.
PROFICIENCIA_LP_SAEB : 12.
ERRO_PADRAO_LP_SAEB : 10.
PESO_ALUNO_MT : 12.
PROFICIENCIA_MT : 10.
ERRO_PADRAO_MT : 10.
PROFICIENCIA_MT_SAEB  : 12.
ERRO_PADRAO_MT_SAEB : 10.
IN_PREENCHIMENTO_QUESTIONARIO : 1.
TX_RESP_Q001 : $CHAR1.
TX_RESP_Q002 : $CHAR1.                 
TX_RESP_Q003a : $CHAR1. 
TX_RESP_Q003b : $CHAR1. 
TX_RESP_Q003c : $CHAR1. 
TX_RESP_Q003d : $CHAR1. 
TX_RESP_Q003e : $CHAR1. 
TX_RESP_Q004 : $CHAR1. 
TX_RESP_Q005 : $CHAR1. 
TX_RESP_Q006a : $CHAR1. 
TX_RESP_Q006b : $CHAR1. 
TX_RESP_Q006c : $CHAR1. 
TX_RESP_Q006d : $CHAR1. 
TX_RESP_Q006e : $CHAR1. 
TX_RESP_Q007 : $CHAR1. 
TX_RESP_Q008a : $CHAR1. 
TX_RESP_Q008b : $CHAR1. 
TX_RESP_Q008c : $CHAR1. 
TX_RESP_Q009a : $CHAR1. 
TX_RESP_Q009b : $CHAR1. 
TX_RESP_Q009c : $CHAR1. 
TX_RESP_Q009d : $CHAR1. 
TX_RESP_Q009e : $CHAR1. 
TX_RESP_Q009f : $CHAR1. 
TX_RESP_Q009g : $CHAR1. 
TX_RESP_Q010a : $CHAR1. 
TX_RESP_Q010b : $CHAR1. 
TX_RESP_Q010c : $CHAR1.
TX_RESP_Q010d : $CHAR1. 
TX_RESP_Q010e : $CHAR1.  
TX_RESP_Q010f : $CHAR1. 
TX_RESP_Q010g : $CHAR1.
TX_RESP_Q010h : $CHAR1.
TX_RESP_Q010i : $CHAR1.
TX_RESP_Q011 : $CHAR1.
TX_RESP_Q012 : $CHAR1.
TX_RESP_Q013 : $CHAR1.
TX_RESP_Q014 : $CHAR1.
TX_RESP_Q015 : $CHAR1.
TX_RESP_Q016 : $CHAR1.
TX_RESP_Q017a : $CHAR1.
TX_RESP_Q017b : $CHAR1.
TX_RESP_Q017c : $CHAR1.
TX_RESP_Q017d : $CHAR1.
TX_RESP_Q017e : $CHAR1.
TX_RESP_Q018a : $CHAR1.
TX_RESP_Q018b : $CHAR1.
TX_RESP_Q018c : $CHAR1.
TX_RESP_Q019 : $CHAR1.
TX_RESP_Q020 : $CHAR1.
;

ATTRIB ID_REGIAO FORMAT=ID_REGIAO12.;
ATTRIB ID_UF FORMAT=ID_UF2.;
ATTRIB ID_AREA FORMAT=ID_AREA8.;
ATTRIB ID_DEPENDENCIA_ADM FORMAT=ID_DEPENDENCIA_ADM9.;
ATTRIB ID_LOCALIZACAO FORMAT=ID_LOCALIZACAO9.;
ATTRIB ID_TURNO FORMAT=ID_TURNO13.;
ATTRIB ID_SERIE FORMAT=ID_SERIE40.;
ATTRIB IN_SITUACAO_CENSO FORMAT=IN_SITUACAO_CENSO20.;
ATTRIB IN_PREENCHIMENTO_LP FORMAT=IN_PREENCHIMENTO_LP20.; 
ATTRIB IN_PREENCHIMENTO_MT FORMAT=IN_PREENCHIMENTO_MT20.; 
ATTRIB IN_PRESENCA_LP FORMAT=IN_PRESENCA_LP20.; 
ATTRIB IN_PRESENCA_MT FORMAT=IN_PRESENCA_MT20.;
ATTRIB IN_PROFICIENCIA_LP FORMAT=IN_PROFICIENCIA_LP3.;
ATTRIB IN_PROFICIENCIA_MT FORMAT=IN_PROFICIENCIA_MT3.;
ATTRIB IN_AMOSTRA FORMAT=IN_AMOSTRA3.;
ATTRIB IN_PREENCHIMENTO_QUESTIONARIO FORMAT=IN_PREENCHIMENTO_QUESTIONARIO33.;
ATTRIB TX_RESP_Q001 FORMAT=$Q3um.;
ATTRIB TX_RESP_Q002 FORMAT=$Q3dois.;
ATTRIB TX_RESP_Q003a FORMAT=$Q3tresa.;
ATTRIB TX_RESP_Q003b FORMAT=$Q3tresb.;
ATTRIB TX_RESP_Q003c FORMAT=$Q3tresc.;
ATTRIB TX_RESP_Q003d FORMAT=$Q3tresd.;
ATTRIB TX_RESP_Q003e FORMAT=$Q3trese.;
ATTRIB TX_RESP_Q004 FORMAT=$Q3quatro.;
ATTRIB TX_RESP_Q005 FORMAT=$Q3cinco.;
ATTRIB TX_RESP_Q006a FORMAT=$Q3seisa.;
ATTRIB TX_RESP_Q006b FORMAT=$Q3seisb.;
ATTRIB TX_RESP_Q006c FORMAT=$Q3seisc.;
ATTRIB TX_RESP_Q006d FORMAT=$Q3seisd.;
ATTRIB TX_RESP_Q006e FORMAT=$Q3seise.;
ATTRIB TX_RESP_Q007 FORMAT=$Q3sete.;
ATTRIB TX_RESP_Q008a FORMAT=$Q3oitoa.;
ATTRIB TX_RESP_Q008b FORMAT=$Q3oitob.;
ATTRIB TX_RESP_Q008c FORMAT=$Q3oitoc.;
ATTRIB TX_RESP_Q009a FORMAT=$Q3novea.;
ATTRIB TX_RESP_Q009b FORMAT=$Q3noveb.;
ATTRIB TX_RESP_Q009c FORMAT=$Q3novec.;
ATTRIB TX_RESP_Q009d FORMAT=$Q3noved.;
ATTRIB TX_RESP_Q009e FORMAT=$Q3novee.;
ATTRIB TX_RESP_Q009f FORMAT=$Q3novef.;
ATTRIB TX_RESP_Q009g FORMAT=$Q3noveg.;
ATTRIB TX_RESP_Q010a FORMAT=$Q3deza.;
ATTRIB TX_RESP_Q010b FORMAT=$Q3dezb.;
ATTRIB TX_RESP_Q010c FORMAT=$Q3dezc.;
ATTRIB TX_RESP_Q010d FORMAT=$Q3dezd.;
ATTRIB TX_RESP_Q010e FORMAT=$Q3deze.; 
ATTRIB TX_RESP_Q010f FORMAT=$Q3dezf.;
ATTRIB TX_RESP_Q010g FORMAT=$Q3dezg.;
ATTRIB TX_RESP_Q010h FORMAT=$Q3dezh.;
ATTRIB TX_RESP_Q010i FORMAT=$Q3dezi.;
ATTRIB TX_RESP_Q011 FORMAT=$Q3onze.;
ATTRIB TX_RESP_Q012 FORMAT=$Q3doze.;
ATTRIB TX_RESP_Q013 FORMAT=$Q3treze.;
ATTRIB TX_RESP_Q014 FORMAT=$Q3catorze.;
ATTRIB TX_RESP_Q015 FORMAT=$Q3quinze.;
ATTRIB TX_RESP_Q016 FORMAT=$Q3dezesseis.;
ATTRIB TX_RESP_Q017a FORMAT=$Q3dezessetea.;
ATTRIB TX_RESP_Q017b FORMAT=$Q3dezesseteb.;
ATTRIB TX_RESP_Q017c FORMAT=$Q3dezessetec.;
ATTRIB TX_RESP_Q017d FORMAT=$Q3dezesseted.;
ATTRIB TX_RESP_Q017e FORMAT=$Q3dezessetee.;
ATTRIB TX_RESP_Q018a FORMAT=$Q3dezoitoa.;
ATTRIB TX_RESP_Q018b FORMAT=$Q3dezoitob.;
ATTRIB TX_RESP_Q018c FORMAT=$Q3dezoitoc.;
ATTRIB TX_RESP_Q019 FORMAT=$Q3dezenove.;
ATTRIB TX_RESP_Q020 FORMAT=$Q3vinte.;

LABEL

ID_SAEB = 'Ano do Saeb'                                                                                                                
ID_REGIAO = 'C�digo da Regi�o'                                                                                                                         
ID_UF = 'C�digo da Unidade da Federa��o'                                                                                                               
ID_MUNICIPIO = 'C�digo do Munic�pio'                                                                                                                   
ID_AREA = '�rea'                                                                                                                    
ID_ESCOLA = 'C�digo da Escola'                                                                                                                         
ID_DEPENDENCIA_ADM = 'Depend�ncia Administrativa'                                                                                             
ID_LOCALIZACAO = 'Localiza��o'                                                                                                                
ID_TURMA = 'C�digo da turma no Saeb'                                                                                                           
ID_TURNO = 'Turno da turma'                                                                                                                            
ID_SERIE = 'S�rie'                                                                                                                                     
ID_ALUNO = 'C�digo do aluno no Saeb'                                                                                                           
IN_SITUACAO_CENSO = 'Indicador de Consist�ncia com o Censo Escolar 2019'
IN_PREENCHIMENTO_LP = 'Indicador de preenchimento da prova de L�ngua Portuguesa'    
IN_PREENCHIMENTO_MT = 'Indicador de preenchimento da prova de Matem�tica'    
IN_PRESENCA_LP = 'Indicador de presen�a na prova de L�ngua Portuguesa' 
IN_PRESENCA_MT = 'Indicador de presen�a na prova de Matem�tica'  
ID_CADERNO_LP = 'Caderno de provas de L�ngua Portuguesa'                           
ID_BLOCO_1_LP = 'Identificador do Bloco 1 de L�ngua Portuguesa'                                                                               
ID_BLOCO_2_LP = 'Identificador do Bloco 2 de L�ngua Portuguesa'                                                                               
ID_CADERNO_MT = 'Caderno de provas de Matem�tica'                           
ID_BLOCO_1_MT = 'Identificador do Bloco 1 de Matem�tica'                                                                               
ID_BLOCO_2_MT = 'Identificador do Bloco 2 de Matem�tica'  
TX_RESP_BLOCO_1_LP = 'Resposta do aluno ao Bloco 1 da prova de L�ngua Portuguesa'                                                                     
TX_RESP_BLOCO_2_LP = 'Resposta do aluno ao Bloco 2 da prova de L�ngua Portuguesa'                                                                     
TX_RESP_BLOCO_1_MT = 'Resposta do aluno ao Bloco 1 da prova de Matem�tica'                                                                            
TX_RESP_BLOCO_2_MT = 'Resposta do aluno ao Bloco 2 da prova de Matem�tica'                                                                            
IN_PROFICIENCIA_LP = 'Indicador para c�lculo da profici�ncia (no m�nimo tr�s itens respondidos no caderno de prova de L�ngua Portuguesa e Matem�tica)'
IN_PROFICIENCIA_MT = 'Indicador para c�lculo da profici�ncia (no m�nimo tr�s itens respondidos no caderno de prova de L�ngua Portuguesa e Matem�tica)'
ESTRATO = 'Descri��o dos estratos do Saeb'
PESO_ALUNO_LP = 'Peso do aluno em L�ngua Portuguesa'                                                                                                   
PROFICIENCIA_LP = 'Profici�ncia do aluno em L�ngua Portuguesa calculada na escala �nica do SAEB, com m�dia = 0 e desvio = 1 na popula��o de refer�ncia'
ERRO_PADRAO_LP = 'Erro padr�o da profici�ncia em L�ngua Portuguesa'                                                                                
PROFICIENCIA_LP_SAEB = 'Profici�ncia em L�ngua Portuguesa transformada na escala �nica do SAEB, com m�dia = 250, desvio = 50 (do SAEB/97)'             
ERRO_PADRAO_LP_SAEB = 'Erro padr�o da profici�ncia transformada em L�ngua Portuguesa'                                                              
PESO_ALUNO_MT = 'Peso do aluno em Matem�tica'                                                                                                          
PROFICIENCIA_MT = 'Profici�ncia do aluno em Matem�tica calculada na escala �nica do SAEB, com m�dia = 0 e desvio = 1 na popula��o de refer�ncia'       
ERRO_PADRAO_MT = 'Erro padr�o da profici�ncia em Matem�tica'                                                                                       
PROFICIENCIA_MT_SAEB = 'Profici�ncia do aluno em Matem�tica transformada na escala �nica do SAEB, com m�dia = 250, desvio = 50 (do SAEB/97)'           
ERRO_PADRAO_MT_SAEB = 'Erro padr�o da profici�ncia transformada em Matem�tica'                                                                     
IN_PREENCHIMENTO_QUESTIONARIO = 'Indicador de preenchimento do question�rio'
TX_RESP_Q001 = 'Qual l�ngua voc� fala com mais frequ�ncia em sua casa?'
TX_RESP_Q002 = 'Qual � a sua cor ou ra�a?'
TX_RESP_Q003a = 'Normalmente, quem mora na sua casa? - M�e (m�es ou madrasta).'
TX_RESP_Q003b = 'Normalmente, quem mora na sua casa? - Pai (pais ou padrasto).'
TX_RESP_Q003c = 'Normalmente, quem mora na sua casa? - Irm�o(s) ou irm�(s).'
TX_RESP_Q003d = 'Normalmente, quem mora na sua casa? - Av� ou av�.'
TX_RESP_Q003e = 'Normalmente, quem mora na sua casa? - Outros (tios, primos etc.).'
TX_RESP_Q004 = 'Qual � a maior escolaridade da sua m�e (ou mulher respons�vel por voc�)?'
TX_RESP_Q005 = 'Qual � a maior escolaridade de seu pai (ou homem respons�vel por voc�)?'
TX_RESP_Q006a = 'Com que frequ�ncia seus pais ou respons�veis costumam: - Conversar com voc� sobre o que acontece na escola.'
TX_RESP_Q006b = 'Com que frequ�ncia seus pais ou respons�veis costumam: - Incentivar voc� a estudar.'
TX_RESP_Q006c = 'Com que frequ�ncia seus pais ou respons�veis costumam: - Incentivar voc� a fazer a tarefa de casa.'
TX_RESP_Q006d = 'Com que frequ�ncia seus pais ou respons�veis costumam: - Incentivar voc� a comparecer �s aulas.'
TX_RESP_Q006e = 'Com que frequ�ncia seus pais ou respons�veis costumam: - Ir �s reuni�es de pais na escola.'
TX_RESP_Q007 = 'Com que frequ�ncia sua fam�lia paga algu�m para auxiliar nos trabalhos dom�sticos (faxina ou limpeza)?'
TX_RESP_Q008a = 'Na regi�o que voc� mora tem: - Rua pavimentada (asfalto ou cal�amento).'
TX_RESP_Q008b = 'Na regi�o que voc� mora tem: - �gua tratada da rua.'
TX_RESP_Q008c = 'Na regi�o que voc� mora tem: - Ilumina��o na rua.'
TX_RESP_Q009a = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Geladeira.'
TX_RESP_Q009b = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Tablet.'
TX_RESP_Q009c = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Computador (ou notebook).'
TX_RESP_Q009d = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Quartos para dormir.'
TX_RESP_Q009e = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Televis�o.'
TX_RESP_Q009f = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Banheiro.'
TX_RESP_Q009g = 'Dos itens relacionados abaixo, quantos existem na sua casa? - Carro.'
TX_RESP_Q010a = 'Na sua casa tem: - Tv a cabo (Ex.:Net�, Sky� etc.).'
TX_RESP_Q010b = 'Na sua casa tem: - Rede Wi-Fi.'
TX_RESP_Q010c = 'Na sua casa tem: - Um quarto s� seu.'
TX_RESP_Q010d = 'Na sua casa tem: - Mesa para estudar (ou escrivaninha).'
TX_RESP_Q010e = 'Na sua casa tem: - Garagem.'
TX_RESP_Q010f = 'Na sua casa tem: - Forno de microondas.'
TX_RESP_Q010g = 'Na sua casa tem: - Aspirador de p�.'
TX_RESP_Q010h = 'Na sua casa tem: - M�quina de lavar roupa.'
TX_RESP_Q010i = 'Na sua casa tem: - Freezer (independente ou segunda porta da geladeira).'
TX_RESP_Q011 = 'Quanto tempo voc� demora para chegar � sua escola?'
TX_RESP_Q012 = 'Considerando a maior dist�ncia percorrida, normalmente de que forma voc� chega � sua escola?'
TX_RESP_Q013 = 'Com que idade voc� entrou na escola?'
TX_RESP_Q014 = 'A partir do primeiro ano do ensino fundamental, em que tipo de escola voc� estudou?'
TX_RESP_Q015 = 'Voc� j� foi reprovado?'
TX_RESP_Q016 = 'Alguma vez voc� abandonou a escola deixando de frequent�-la at� o final do ano escolar?'
TX_RESP_Q017a = 'Fora da escola em dias de aula, quanto tempo voc� usa para: - Lazer (TV, internet, jogar bola, m�sica etc.).'
TX_RESP_Q017b = 'Fora da escola em dias de aula, quanto tempo voc� usa para: - Fazer cursos.'
TX_RESP_Q017c = 'Fora da escola em dias de aula, quanto tempo voc� usa para: - Fazer trabalhos dom�sticos (lavar lou�a, limpar quintal, cuidar dos irm�os).'
TX_RESP_Q017d = 'Fora da escola em dias de aula, quanto tempo voc� usa para: - Estudar (li��o de casa, trabalhos escolares, etc.).'
TX_RESP_Q017e = 'Fora da escola em dias de aula, quanto tempo voc� usa para: - Trabalhar fora de casa (recebendo ou n�o um sal�rio).'
TX_RESP_Q018a = 'Com que frequ�ncia voc� costuma: - Ler not�cias (jornais, revistas, internet etc.).'
TX_RESP_Q018b = 'Com que frequ�ncia voc� costuma: - Ler livros que n�o sejam das mat�rias escolares.'
TX_RESP_Q018c = 'Com que frequ�ncia voc� costuma: - Ler hist�rias em quadrinhos (mang�s, gibis etc.).'
TX_RESP_Q019 = 'Quando terminar o Ensino M�dio voc� pretende:'
TX_RESP_Q020 = 'Voc� concluiu o Ensino Fundamental na Educa��o de Jovens e Adultos (EJA), antigo supletivo?'

;run;

quit;