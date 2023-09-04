/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Instrumentos e medidas 		                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_ITEM                                                                              */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DAS INFORMA��ES GERAIS SOBRE */
/*                     DESCRITORES, BLOCOS, ITENS E GABARITO DAS PROVAS DA    */ 
/*	      ANEB/PROVA BRASIL 2017                                                            */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* TS_ITEM.CSV no diret�rio C:\ do computador.	                                                       */
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
  /FILE="C:\TS_ITEM.csv"    
  /DELCASE=LINE
  /DELIMITERS=";"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  ID_SERIE F1.0
  TIPO_PROVA A13
  DISCIPLINA A2
  ID_SERIE_ITEM F1.0
  ID_BLOCO F1.0
  ID_POSICAO F2.0
  ID_ITEM F5.0
  DESCRITOR_HABILIDADE F2.0
  GABARITO A1.
CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.


VARIABLE LABELS  ID_SERIE 'S�rie em que a prova foi aplicada.'.
VALUE LABELS ID_SERIE
5 '4� s�rie/5� ano EF'
9 '8� s�rie/9� ano EF'
3 '3� s�rie EM'.


VARIABLE LABELS  TIPO_PROVA 'Descri��o dos tipos de Provas aplicadas no ANEB/Prova Brasil.'.
VARIABLE LABELS  DISCIPLINA 'Disciplina do item.'.
VARIABLE LABELS  ID_SERIE_ITEM 'S�rie correspondente ao item.'.
VALUE LABELS ID_SERIE_ITEM
5 '4� s�rie/5� ano EF'
9 '8� s�rie/9� ano EF'
3 '3� s�rie EM'.
VARIABLE LABELS  ID_BLOCO 'Identificador do bloco.'.
VARIABLE LABELS  ID_POSICAO 'Identificador da posi��o do item no bloco.'.
VARIABLE LABELS  ID_ITEM 'Identificador do item.'.
VARIABLE LABELS  DESCRITOR_HABILIDADE 'Identificador do descritor do item.'.
VARIABLE LABELS  GABARITO 'Gabarito do Item.'.







