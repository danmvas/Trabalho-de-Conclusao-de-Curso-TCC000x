/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Instrumentos e medidas 		                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_ITEM                                                                              */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DAS INFORMAÇÕES GERAIS SOBRE */
/*                     DESCRITORES, BLOCOS, ITENS E GABARITO DAS PROVAS DA    */ 
/*	      ANEB/PROVA BRASIL 2017                                                            */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* TS_ITEM.CSV no diretório C:\ do computador.	                                                       */
/*							 */ 
/* Ao terminar esses procedimentos execute o programa salvo utilizando                      */
/* as variáveis de interesse.                                                                                       */
/*							 */
/* Para a leitura dos microdados é necessário a seleção do programa abaixo,               */
/* depois execute-o.						 */
/*							 */ 
/******************************************************************************************************/
/*                                                   ATENÇÃO                                                          */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	                    */
/* acordo com o dicionário de dados que compõem os microdados. Para abrir                */
/* os dados sem os rótulos basta importar diretamente no SPSS.		  */
/* 							  */
/* Os Rótulos de algumas variáveis não estão completos, em virtude do tamanho do.      */
/* dos enunciados das questões. Tais enunciados foram resumidos e indicados com o   */
/* seguinte código: "(Cf. Dic.)". Essas questões exigem a Consulta do Dicionário de       */
/* Variáveis para conhecer o enunciado completo.                                                     	  */
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


VARIABLE LABELS  ID_SERIE 'Série em que a prova foi aplicada.'.
VALUE LABELS ID_SERIE
5 '4ª série/5º ano EF'
9 '8ª série/9º ano EF'
3 '3ª série EM'.


VARIABLE LABELS  TIPO_PROVA 'Descrição dos tipos de Provas aplicadas no ANEB/Prova Brasil.'.
VARIABLE LABELS  DISCIPLINA 'Disciplina do item.'.
VARIABLE LABELS  ID_SERIE_ITEM 'Série correspondente ao item.'.
VALUE LABELS ID_SERIE_ITEM
5 '4ª série/5º ano EF'
9 '8ª série/9º ano EF'
3 '3ª série EM'.
VARIABLE LABELS  ID_BLOCO 'Identificador do bloco.'.
VARIABLE LABELS  ID_POSICAO 'Identificador da posição do item no bloco.'.
VARIABLE LABELS  ID_ITEM 'Identificador do item.'.
VARIABLE LABELS  DESCRITOR_HABILIDADE 'Identificador do descritor do item.'.
VARIABLE LABELS  GABARITO 'Gabarito do Item.'.







