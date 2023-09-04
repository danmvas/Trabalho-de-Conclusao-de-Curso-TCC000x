/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                */ 
/*                                   			                                       */
/*  Coordena��o-Geral de Instrumentos de Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_ITEM                                                     */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:   PROGRAMA PARA LEITURA DAS INFORMA��ES GERAIS SOBRE                    */
/*               DESCRITORES, BLOCOS, ITENS E GABARITO DAS PROVAS DA                   */ 
/*	             ANEB/PROVA BRASIL 2015                                                */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, � necess�rio salvar este programa e o arquivo             */
/* TS_ITEM.CSV no diret�rio C:\ do computador.	                                       */
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
/***************************************************************************************/;

proc format;

value ID_SERIE
5='4� s�rie/5� ano EF'
9='8� s�rie/9� ano EF'
3='3� s�rie EM';

value $DISCIPLINA
LP ='L�ngua Portuguesa'
MT ='Matem�tica';

value $ID_SERIE_ITEM
5 = '4� s�rie/5� ano EF'
9 = '8� s�rie/9� ano EF'
3 = '3� s�rie EM';

run;

DATA WORK.TS_ITEM;

INFILE 'C:\TS_ITEM.csv' /*Endere�o do arquivo*/
		LRECL=100
		firstobs=2
        DLM=";"
        MISSOVER
        DSD ;

INPUT
ID_SERIE : 1. 
TIPO_PROVA : $CHAR13.
DISCIPLINA : $CHAR2. 
ID_SERIE_ITEM : $CHAR1. 
ID_BLOCO : 1. 
ID_POSICAO : 2. 
ID_ITEM : 5. 
ID_DESCRITOR_HABILIDADE : 2. 
GABARITO : $CHAR1.;

ATTRIB ID_SERIE FORMAT=ID_SERIE18.;
ATTRIB ID_SERIE_ITEM FORMAT=$ID_SERIE_ITEM18.;
ATTRIB DISCIPLINA FORMAT=$DISCIPLINA17.;

LABEL

ID_SERIE = 'S�rie em que a prova foi aplicada'
TIPO_PROVA = 'Descri��o dos tipos de Provas aplicadas no ANEB/Prova Brasil 2015'
DISCIPLINA = 'Disciplina do item'                                                                                       
ID_SERIE_ITEM = 'S�rie correspondente ao item'                                     
ID_BLOCO = 'Identificador do bloco'                                                                                    
ID_POSICAO = 'Identificador da posi��o do item no bloco'                                                                 
ID_ITEM = 'Identificador do item'                                                                                     
ID_DESCRITOR_HABILIDADE = 'Identificador do descritor do item'                                                                                   
GABARITO = 'Gabarito do Item';

run;quit;                       