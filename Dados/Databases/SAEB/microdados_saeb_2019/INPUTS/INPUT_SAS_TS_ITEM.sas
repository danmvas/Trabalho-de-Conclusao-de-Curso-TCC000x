/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Instrumentos de Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_ITEM                                                     */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:   PROGRAMA PARA LEITURA DAS INFORMAÇÕES GERAIS SOBRE                    */
/*               DESCRITORES, BLOCOS, ITENS E GABARITO DAS PROVAS DO SAEB 2019         */
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
/***************************************************************************************/;

proc format;

value ID_SERIE
2='2º ano do Ensino Fundamental'
5='5º ano do Ensino Fundamental'
9='9º ano do Ensino Fundamental'
3='3ª/4ª séries do Ensino Médio';

value $DISCIPLINA
LP ='Língua Portuguesa'
MT ='Matemática'
CH ='Ciências Humanas'
CN ='Ciências da Natureza';

value $ID_SERIE_ITEM
2='2º ano do Ensino Fundamental'
5='5º ano do Ensino Fundamental'
9='9º ano do Ensino Fundamental'
3='3ª/4ª séries do Ensino Médio';

run;

DATA WORK.TS_ITEM;

INFILE 'C:/TS_ITEM.csv' /*Endereço do arquivo*/
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

ID_SERIE = 'Série em que a prova foi aplicada'
TIPO_PROVA = 'Descrição dos tipos de Provas aplicadas no Saeb 2019'
DISCIPLINA = 'Disciplina do item'                                                                                       
ID_SERIE_ITEM = 'Série correspondente ao item'                                     
ID_BLOCO = 'Identificador do bloco'                                                                                    
ID_POSICAO = 'Identificador da posição do item no bloco'                                                                 
ID_ITEM = 'Identificador do item'                                                                                     
ID_DESCRITOR_HABILIDADE = 'Identificador do descritor do item'                                                                                   
GABARITO = 'Gabarito do Item';

run;quit;                       