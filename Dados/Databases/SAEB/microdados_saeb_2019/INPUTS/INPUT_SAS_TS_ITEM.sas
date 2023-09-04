/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                */ 
/*                                   			                                       */
/*  Coordena��o-Geral de Instrumentos de Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_ITEM                                                     */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:   PROGRAMA PARA LEITURA DAS INFORMA��ES GERAIS SOBRE                    */
/*               DESCRITORES, BLOCOS, ITENS E GABARITO DAS PROVAS DO SAEB 2019         */
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
/***************************************************************************************/;

proc format;

value ID_SERIE
2='2� ano do Ensino Fundamental'
5='5� ano do Ensino Fundamental'
9='9� ano do Ensino Fundamental'
3='3�/4� s�ries do Ensino M�dio';

value $DISCIPLINA
LP ='L�ngua Portuguesa'
MT ='Matem�tica'
CH ='Ci�ncias Humanas'
CN ='Ci�ncias da Natureza';

value $ID_SERIE_ITEM
2='2� ano do Ensino Fundamental'
5='5� ano do Ensino Fundamental'
9='9� ano do Ensino Fundamental'
3='3�/4� s�ries do Ensino M�dio';

run;

DATA WORK.TS_ITEM;

INFILE 'C:/TS_ITEM.csv' /*Endere�o do arquivo*/
		LRECL=100
		firstobs=2
        DLM=";"
        MISSOVER
        DSD ;

INPUT
ID_SERIE : 1. 
TIPO_PROVA : $CHAR13.
DISCIPLINA : $CHAR2. 
ID_SERIE_ITEM : $CHAR2. 
ID_BLOCO : 2. 
ID_POSICAO : 2. 
ID_ITEM : 6. 
ID_DESCRITOR_HABILIDADE : $CHAR5.  
GABARITO : $CHAR1.;

ATTRIB ID_SERIE FORMAT=ID_SERIE30.;
ATTRIB ID_SERIE_ITEM FORMAT=$ID_SERIE_ITEM30.;
ATTRIB DISCIPLINA FORMAT=$DISCIPLINA20.;

LABEL

ID_SERIE = 'S�rie em que a prova foi aplicada'
TIPO_PROVA = 'Descri��o dos tipos de Provas aplicadas no Saeb 2019'
DISCIPLINA = 'Disciplina do item'                                                                                       
ID_SERIE_ITEM = 'S�rie correspondente ao item'                                     
ID_BLOCO = 'Identificador do bloco'                                                                                    
ID_POSICAO = 'Identificador da posi��o do item no bloco'                                                                 
ID_ITEM = 'Identificador do item'                                                                                     
ID_DESCRITOR_HABILIDADE = 'Identificador do descritor do item'                                                                                   
GABARITO = 'Gabarito do Item';

run;quit;                       