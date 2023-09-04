/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Instrumentos de Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_ITEM                                                     */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:   PROGRAMA PARA LEITURA DAS INFORMAÇÕES GERAIS SOBRE                    */
/*               DESCRITORES, BLOCOS, ITENS E GABARITO DAS PROVAS DA                   */ 
/*	             ANEB/PROVA BRASIL 2015                                                */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
/* TS_ITEM.CSV no diretório C:\ do computador.	                                       */
/*							                                                           */ 
/* Ao terminar esses procedimentos, execute o programa salvo utilizando                */
/* as variáveis de interesse.                                                          */
/***************************************************************************************/
/*                                  ATENÇÃO                                            */ 
/***************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	               */
/* acordo com o dicionário de dados que compõe os microdados. Para abrir               */
/* os dados sem os rótulos, basta importar diretamente no SAS.                         */
/* 							                                                           */                                                         
/* Os Rótulos de algumas variáveis não estão completos em virtude do tamanho           */
/* dos enunciados das questões. Tais enunciados foram resumidos e indicados com o      */
/* seguinte código: "(Cf. Dic.)". Essas questões exigem consulta ao Dicionário de      */
/* Variáveis para conhecer o enunciado completo.                                       */
/* 							                                                           */                                                         
/***************************************************************************************/;

proc format;

value ID_SERIE
5='4ª série/5º ano EF'
9='8ª série/9º ano EF'
3='3ª série EM';

value $DISCIPLINA
LP ='Língua Portuguesa'
MT ='Matemática';

value $ID_SERIE_ITEM
5 = '4ª série/5º ano EF'
9 = '8ª série/9º ano EF'
3 = '3ª série EM';

run;

DATA WORK.TS_ITEM;

INFILE 'C:\TS_ITEM.csv' /*Endereço do arquivo*/
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

ID_SERIE = 'Série em que a prova foi aplicada'
TIPO_PROVA = 'Descrição dos tipos de Provas aplicadas no ANEB/Prova Brasil 2015'
DISCIPLINA = 'Disciplina do item'                                                                                       
ID_SERIE_ITEM = 'Série correspondente ao item'                                     
ID_BLOCO = 'Identificador do bloco'                                                                                    
ID_POSICAO = 'Identificador da posição do item no bloco'                                                                 
ID_ITEM = 'Identificador do item'                                                                                     
ID_DESCRITOR_HABILIDADE = 'Identificador do descritor do item'                                                                                   
GABARITO = 'Gabarito do Item';

run;quit;                       