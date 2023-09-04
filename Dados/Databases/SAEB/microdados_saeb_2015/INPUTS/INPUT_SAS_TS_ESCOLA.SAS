/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral do Sistema Nacional de Avaliação da Educação Básica              */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_ESCOLA                                                   */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:    PROGRAMA PARA LEITURA DOS RESULTADOS DAS                             */
/*                   ESCOLAS DA ANEB/PROVA BRASIL 2015                                 */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
/* TS_ESCOLA.CSV no diretório C:\ do computador.	                                   */
/*							                                                           */ 
/* Ao terminar esses procedimentos, execute o programa salvo utilizando                */
/* as variáveis de interesse.                                                          */
/***************************************************************************************/
/*                                  ATENÇÃO                                            */ 
/***************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	               */
/* acordo com o dicionário de dados que compõe os microdados. Para abrir               */
/* os dados sem os rótulos, basta importar diretamente no SAS.                         */
/* 		                                                                               */
/* Os Rótulos de algumas variáveis não estão completos em virtude do tamanho           */
/* dos enunciados das questões. Tais enunciados foram resumidos e indicados com o      */
/* seguinte código: "(Cf. Dic.)". Essas questões exigem consulta ao Dicionário de      */
/* Variáveis para conhecer o enunciado completo.                                       */
/* 							                                                           */                                                        
/***************************************************************************************/;

proc format;

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

value ID_DEPENDENCIA_ADM
1='Federal'
2='Estadual'
3='Municipal'
4='Privada';

value ID_LOCALIZACAO
1='Urbana'
2='Rural';

value IN_PREENCHIMENTO_QUESTIONARIO
0='Não preenchido'
1='Preenchido parcial ou totalmente';

value $Qsete
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qoito
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qnove
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qdez
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qonze
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qdoze
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qtreze
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qcatorze
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qquinze
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qdezesseis
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qdezessete
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qdezoito
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qdezenove
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qvinte
A='Todas.'
B='Mais da metade.'
C='Menos da metade.'
D='Nenhuma.';

value $Qvinteum
A='Todas.'
B='Mais da metade.'
C='Menos da metade.'
D='Nenhuma.';

value $Qvintedois
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qvintetres
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qvintequatro
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qvintecinco
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qvinteseis
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qvintesete
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qvinteoito
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qvintenove
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qtrinta
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qtrintaum
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qtrintadois
A='Sim'
B='Não';

value $Qtrintatres
A='Sim'
B='Não';

value $Qtrintaquatro
A='Sim'
B='Não';

value $Qtrintacinco
A='Sim'
B='Não';

value $Qtrintaseis
A='Sim, muitos.'
B='Sim, poucos.'
C='Não.';

value $Qtrintasete
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qtrintaoito
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qtrintanove
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qquarenta
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qquarentaum
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qquarentadois
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qquarentatres
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qquarentaquatro
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qquarentacinco
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qquarentaseis
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qquarentasete
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qquarentaoito
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qquarentanove
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qcinquenta
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qcinquentaum
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qcinquentadois
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qcinquentatres
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qcinquentaquatro
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qcinquentacinco
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qcinquentaseis
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qcinquentasete
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qcinquentaoito
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qcinquentanove
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qsessenta
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qsessentaum
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qsessentadois
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qsessentatres
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qsessentaquatro
A='Bom'
B='Regular'
C='Ruim'
D='Inexistente';

value $Qsessentacinco
A='Sim'
B='Não'
C='Não há biblioteca/sala de leitura';

value $Qsessentaseis
A='Sim'
B='Não'
C='Não há biblioteca/sala de leitura';

value $Qsessentasete
A='Sim'
B='Não'
C='Não há biblioteca/sala de leitura';

value $Qsessentaoito
A='Sim'
B='Não'
C='Não há biblioteca/sala de leitura';

value $Qsessentanove
A='Sim'
B='Não'
C='Não há biblioteca/sala de leitura';

value $Qsetenta
A='Sim'
B='Não'
C='Não há biblioteca/sala de leitura';

value $Qsetentaum
A='Sim'
B='Não'
C='Não há biblioteca/sala de leitura';

value $Qsetentadois
A='Sim.'
B='Não, porque não querem'
C='Não, porque a escola não permite'
D='Não há biblioteca/sala de leitura';

value $Qsetentatres
A='Sim.'
B='Não, porque não querem'
C='Não, porque a escola não permite'
D='Não há biblioteca/sala de leitura.';

value $Qsetentaquatro
A='Sim.'
B='Não, porque não querem'
C='Não, porque a escola não permite'
D='Não há biblioteca/sala de leitura.';



run;

DATA WORK.TS_ESCOLA;

INFILE 'C:\TS_ESCOLA.csv' /*Endereço do arquivo*/
        LRECL=472
        firstobs=2
        DLM=','
        MISSOVER
        DSD ;

    INPUT
        ID_PROVA_BRASIL  : 4.
        ID_UF            : 2.
        ID_MUNICIPIO     : 7.
        ID_ESCOLA        : 8.
        ID_DEPENDENCIA_ADM :1.
        ID_LOCALIZACAO   : 1.
        PC_FORMACAO_DOCENTE_INICIAL : 5.
        PC_FORMACAO_DOCENTE_FINAL : 5.
        NIVEL_SOCIO_ECONOMICO : $CHAR12.
        NU_MATRICULADOS_CENSO_5EF : 3.
        NU_PRESENTES_5EF :3.
        TAXA_PARTICIPACAO_5EF : 12.
        NIVEL_0_LP5      : 6.
        NIVEL_1_LP5      : 6.
        NIVEL_2_LP5      : 5.
        NIVEL_3_LP5      : 5.
        NIVEL_4_LP5      : 6.
        NIVEL_5_LP5      : 5.
        NIVEL_6_LP5      : 6.
        NIVEL_7_LP5      : 5.
        NIVEL_8_LP5      : 5.
        NIVEL_9_LP5      : 5.
        NIVEL_0_MT5      : 6.
        NIVEL_1_MT5      : 5.
        NIVEL_2_MT5      : 5.
        NIVEL_3_MT5      : 5.
        NIVEL_4_MT5      : 6.
        NIVEL_5_MT5      : 5.
        NIVEL_6_MT5      : 6.
        NIVEL_7_MT5      : 5.
        NIVEL_8_MT5      : 5.
        NIVEL_9_MT5      : 5.
        NIVEL_10_MT5     : 4.
        NU_MATRICULADOS_CENSO_9EF : 3.
        NU_PRESENTES_9EF : 3.
        TAXA_PARTICIPACAO_9EF : 12.
        NIVEL_0_LP9      : 6.
        NIVEL_1_LP9      : 6.
        NIVEL_2_LP9      : 5.
        NIVEL_3_LP9      : 5.
        NIVEL_4_LP9      : 5.
        NIVEL_5_LP9      : 5.
        NIVEL_6_LP9      : 5.
        NIVEL_7_LP9      : 5.
        NIVEL_8_LP9      : 4.
        NIVEL_0_MT9      : 6.
        NIVEL_1_MT9      : 6.
        NIVEL_2_MT9      : 6.
        NIVEL_3_MT9      : 5.
        NIVEL_4_MT9      : 5.
        NIVEL_5_MT9      : 5.
        NIVEL_6_MT9      : 5.
        NIVEL_7_MT9      : 5.
        NIVEL_8_MT9      : 5.
        NIVEL_9_MT9      : 5.
        MEDIA_5EF_LP     : 6.
        MEDIA_5EF_MT     : 6.
        MEDIA_9EF_LP     : 6.
        MEDIA_9EF_MT     : 6.
        IN_PREENCHIMENTO_QUESTIONARIO : 1.
        TX_RESP_Q007     : $CHAR1.
        TX_RESP_Q008     : $CHAR1.
        TX_RESP_Q009     : $CHAR1.
        TX_RESP_Q010     : $CHAR1.
        TX_RESP_Q011     : $CHAR1.
        TX_RESP_Q012     : $CHAR1.
        TX_RESP_Q013     : $CHAR1.
        TX_RESP_Q014     : $CHAR1.
        TX_RESP_Q015     : $CHAR1.
        TX_RESP_Q016     : $CHAR1.
        TX_RESP_Q017     : $CHAR1.
        TX_RESP_Q018     : $CHAR1.
        TX_RESP_Q019     : $CHAR1.
        TX_RESP_Q020     : $CHAR1.
        TX_RESP_Q021     : $CHAR1.
        TX_RESP_Q022     : $CHAR1.
        TX_RESP_Q023     : $CHAR1.
        TX_RESP_Q024     : $CHAR1.
        TX_RESP_Q025     : $CHAR1.
        TX_RESP_Q026     : $CHAR1.
        TX_RESP_Q027     : $CHAR1.
        TX_RESP_Q028     : $CHAR1.
        TX_RESP_Q029     : $CHAR1.
        TX_RESP_Q030     : $CHAR1.
        TX_RESP_Q031     : $CHAR1.
        TX_RESP_Q032     : $CHAR1.
        TX_RESP_Q033     : $CHAR1.
        TX_RESP_Q034     : $CHAR1.
        TX_RESP_Q035     : $CHAR1.
        TX_RESP_Q036     : $CHAR1.
        TX_RESP_Q037     : $CHAR1.
        TX_RESP_Q038     : $CHAR1.
        TX_RESP_Q039     : $CHAR1.
        TX_RESP_Q040     : $CHAR1.
        TX_RESP_Q041     : $CHAR1.
        TX_RESP_Q042     : $CHAR1.
        TX_RESP_Q043     : $CHAR1.
        TX_RESP_Q044     : $CHAR1.
        TX_RESP_Q045     : $CHAR1.
        TX_RESP_Q046     : $CHAR1.
        TX_RESP_Q047     : $CHAR1.
        TX_RESP_Q048     : $CHAR1.
        TX_RESP_Q049     : $CHAR1.
        TX_RESP_Q050     : $CHAR1.
        TX_RESP_Q051     : $CHAR1.
        TX_RESP_Q052     : $CHAR1.
        TX_RESP_Q053     : $CHAR1.
        TX_RESP_Q054     : $CHAR1.
        TX_RESP_Q055     : $CHAR1.
        TX_RESP_Q056     : $CHAR1.
        TX_RESP_Q057     : $CHAR1.
        TX_RESP_Q058     : $CHAR1.
        TX_RESP_Q059     : $CHAR1.
        TX_RESP_Q060     : $CHAR1.
        TX_RESP_Q061     : $CHAR1.
        TX_RESP_Q062     : $CHAR1.
        TX_RESP_Q063     : $CHAR1.
        TX_RESP_Q064     : $CHAR1.
        TX_RESP_Q065     : $CHAR1.
        TX_RESP_Q066     : $CHAR1.
        TX_RESP_Q067     : $CHAR1.
        TX_RESP_Q068     : $CHAR1.
        TX_RESP_Q069     : $CHAR1.
        TX_RESP_Q070     : $CHAR1.
        TX_RESP_Q071     : $CHAR1.
        TX_RESP_Q072     : $CHAR1.
        TX_RESP_Q073     : $CHAR1.
        TX_RESP_Q074     : $CHAR1. ;

ATTRIB ID_UF FORMAT=ID_UF2.;
ATTRIB ID_DEPENDENCIA_ADM FORMAT=ID_DEPENDENCIA_ADM9.;
ATTRIB ID_LOCALIZACAO FORMAT=ID_LOCALIZACAO9.;
ATTRIB TAXA_PARTICIPACAO_5EF FORMAT= 5.3;
ATTRIB TAXA_PARTICIPACAO_9EF FORMAT= 5.3;
ATTRIB IN_PREENCHIMENTO_QUESTIONARIO FORMAT=IN_PREENCHIMENTO_QUESTIONARIO32.;
ATTRIB  TX_RESP_Q007  FORMAT=$Qsete.;
ATTRIB  TX_RESP_Q008  FORMAT=$Qoito.;
ATTRIB  TX_RESP_Q009  FORMAT=$Qnove.;
ATTRIB  TX_RESP_Q010  FORMAT=$Qdez.;
ATTRIB  TX_RESP_Q011  FORMAT=$Qonze.;
ATTRIB  TX_RESP_Q012  FORMAT=$Qdoze.;
ATTRIB  TX_RESP_Q013  FORMAT=$Qtreze.;
ATTRIB  TX_RESP_Q014  FORMAT=$Qcatorze.;
ATTRIB  TX_RESP_Q015  FORMAT=$Qquinze.;
ATTRIB  TX_RESP_Q016  FORMAT=$Qdezesseis.;
ATTRIB  TX_RESP_Q017  FORMAT=$Qdezessete.;
ATTRIB  TX_RESP_Q018  FORMAT=$Qdezoito.;
ATTRIB  TX_RESP_Q019  FORMAT=$Qdezenove.;
ATTRIB  TX_RESP_Q020  FORMAT=$Qvinte.;
ATTRIB  TX_RESP_Q021  FORMAT=$Qvinteum.;
ATTRIB  TX_RESP_Q022  FORMAT=$Qvintedois.;
ATTRIB  TX_RESP_Q023  FORMAT=$Qvintetres.;
ATTRIB  TX_RESP_Q024  FORMAT=$Qvintequatro.;
ATTRIB  TX_RESP_Q025  FORMAT=$Qvintecinco.;
ATTRIB  TX_RESP_Q026  FORMAT=$Qvinteseis.;
ATTRIB  TX_RESP_Q027  FORMAT=$Qvintesete.;
ATTRIB  TX_RESP_Q028  FORMAT=$Qvinteoito.;
ATTRIB  TX_RESP_Q029  FORMAT=$Qvintenove.;
ATTRIB  TX_RESP_Q030  FORMAT=$Qtrinta.;
ATTRIB  TX_RESP_Q031  FORMAT=$Qtrintaum.;
ATTRIB  TX_RESP_Q032  FORMAT=$Qtrintadois.;
ATTRIB  TX_RESP_Q033  FORMAT=$Qtrintatres.;
ATTRIB  TX_RESP_Q034  FORMAT=$Qtrintaquatro.;
ATTRIB  TX_RESP_Q035  FORMAT=$Qtrintacinco.;
ATTRIB  TX_RESP_Q036  FORMAT=$Qtrintaseis.;
ATTRIB  TX_RESP_Q037  FORMAT=$Qtrintasete.;
ATTRIB  TX_RESP_Q038  FORMAT=$Qtrintaoito.;
ATTRIB  TX_RESP_Q039  FORMAT=$Qtrintanove.;
ATTRIB  TX_RESP_Q040  FORMAT=$Qquarenta.;
ATTRIB  TX_RESP_Q041  FORMAT=$Qquarentaum.;
ATTRIB  TX_RESP_Q042  FORMAT=$Qquarentadois.;
ATTRIB  TX_RESP_Q043  FORMAT=$Qquarentatres.;
ATTRIB  TX_RESP_Q044  FORMAT=$Qquarentaquatro.;
ATTRIB  TX_RESP_Q045  FORMAT=$Qquarentacinco.;
ATTRIB  TX_RESP_Q046  FORMAT=$Qquarentaseis.;
ATTRIB  TX_RESP_Q047  FORMAT=$Qquarentasete.;
ATTRIB  TX_RESP_Q048  FORMAT=$Qquarentaoito.;
ATTRIB  TX_RESP_Q049  FORMAT=$Qquarentanove.;
ATTRIB  TX_RESP_Q050  FORMAT=$Qcinquenta.;
ATTRIB  TX_RESP_Q051  FORMAT=$Qcinquentaum.;
ATTRIB  TX_RESP_Q052  FORMAT=$Qcinquentadois.;
ATTRIB  TX_RESP_Q053  FORMAT=$Qcinquentatres.;
ATTRIB  TX_RESP_Q054  FORMAT=$Qcinquentaquatro.;
ATTRIB  TX_RESP_Q055  FORMAT=$Qcinquentacinco.;
ATTRIB  TX_RESP_Q056  FORMAT=$Qcinquentaseis.;
ATTRIB  TX_RESP_Q057  FORMAT=$Qcinquentasete.;
ATTRIB  TX_RESP_Q058  FORMAT=$Qcinquentaoito.;
ATTRIB  TX_RESP_Q059  FORMAT=$Qcinquentanove.;
ATTRIB  TX_RESP_Q060  FORMAT=$Qsessenta.;
ATTRIB  TX_RESP_Q061  FORMAT=$Qsessentaum.;
ATTRIB  TX_RESP_Q062  FORMAT=$Qsessentadois.;
ATTRIB  TX_RESP_Q063  FORMAT=$Qsessentatres.;
ATTRIB  TX_RESP_Q064  FORMAT=$Qsessentaquatro.;
ATTRIB  TX_RESP_Q065  FORMAT=$Qsessentacinco.;
ATTRIB  TX_RESP_Q066  FORMAT=$Qsessentaseis.;
ATTRIB  TX_RESP_Q067  FORMAT=$Qsessentasete.;
ATTRIB  TX_RESP_Q068  FORMAT=$Qsessentaoito.;
ATTRIB  TX_RESP_Q069  FORMAT=$Qsessentanove.;
ATTRIB  TX_RESP_Q070  FORMAT=$Qsetenta.;
ATTRIB  TX_RESP_Q071  FORMAT=$Qsetentaum.;
ATTRIB  TX_RESP_Q072  FORMAT=$Qsetentadois.;
ATTRIB  TX_RESP_Q073  FORMAT=$Qsetentatres.;
ATTRIB  TX_RESP_Q074  FORMAT=$Qsetentaquatro.;


LABEL  

ID_PROVA_BRASIL = 'Ano da ANEB/Prova Brasil'
ID_UF = 'Código da Unidade da Federação'
ID_MUNICIPIO = 'Código do Município'
ID_ESCOLA = 'Código da Escola'
ID_DEPENDENCIA_ADM = 'Dependência Administrativa'
ID_LOCALIZACAO = 'Localização'
PC_FORMACAO_DOCENTE_INICIAL = 'Indicador de Adequação da Formação Docente (Informação referente ao Grupo 1, para os Anos Iniciais do EF)'
PC_FORMACAO_DOCENTE_FINAL = 'Indicador de Adequação da Formação Docente (Informação referente ao Grupo 1, para os Anos Finais do EF)'
NIVEL_SOCIO_ECONOMICO = 'Nível socioecônomico da escola'
NU_MATRICULADOS_CENSO_5EF = 'Número de alunos matriculados no 5º ano'
NU_PRESENTES_5EF = 'Número de alunos presentes na aplicação'
TAXA_PARTICIPACAO_5EF = 'Razão entre o total de alunos presentes da Prova Brasil (NU_PRESENTES_5ANO) e o total de alunos cadastrados no Censo Escolar que são público alvo da Prova Brasil (NU_MATRICULADOS_CENSO_5ANO)'
Nivel_0_LP5	= '(-00;125)'
Nivel_1_LP5	= '[125;150)'
nivel_2_LP5 = '[150;175)'
nivel_3_LP5 = '[175;200)'
nivel_4_LP5 = '[200;225)'
nivel_5_LP5 = '[225;250)'
nivel_6_LP5 = '[250;275)'
nivel_7_LP5 = '[275;300)'
nivel_8_LP5 = '[300;325)'
nivel_9_LP5 = '[325;+00)'
nivel_0_MT5 = '(-00;125)'
nivel_1_MT5 = '[125;150)'
nivel_2_MT5 = '[150;175)'
nivel_3_MT5 = '[175;200)'
nivel_4_MT5 = '[200;225)'
nivel_5_MT5 = '[225;250)'
nivel_6_MT5 = '[250;275)'
nivel_7_MT5 = '[275;300)'
nivel_8_MT5 = '[300;325)'
nivel_9_MT5 = '[325;350)'
nivel_10_MT5 = '[350;+00)'
NU_MATRICULADOS_CENSO_9EF = 'Número de alunos matriculados no 9º ano' 
NU_PRESENTES_9EF = 'Número de alunos presentes na aplicação'
TAXA_PARTICIPACAO_9EF = 'Razão entre o total de alunos presentes da Prova Brasil (NU_PRESENTES_9ANO) e o total de alunos cadastrados no Censo Escolar que são público alvo da Prova Brasil (NU_MATRICULADOS_CENSO_9ANO)'
nivel_0_LP9 = '(-00;200)'
nivel_1_LP9 = '[200;225)'
nivel_2_LP9 = '[225;250)'
nivel_3_LP9 = '[250;275)'
nivel_4_LP9 = '[275;300)'
nivel_5_LP9 = '[300;325)'
nivel_6_LP9 = '[325;350)'
nivel_7_LP9 = '[350;375)'
nivel_8_LP9 = '[375;+00)'
nivel_0_MT9 = '(-00;200)'
nivel_1_MT9 = '[200;225)'
nivel_2_MT9 = '[225;250)'
nivel_3_MT9 = '[250;275)'
nivel_4_MT9 = '[275;300)'
nivel_5_MT9 = '[300;325)'
nivel_6_MT9 = '[325;350)'
nivel_7_MT9 = '[350;375)'
nivel_8_MT9 = '[375;400)'
nivel_9_MT9 = '[400;+00)'
MEDIA_5EF_LP  = 'Média em Língua Portuguesa 5º ano'
MEDIA_5EF_MT = 'Média em Matemática 5º ano'
MEDIA_9EF_LP = 'Média em Língua Portuguesa 9º ano'
MEDIA_9EF_MT = 'Média em Matemática 9º ano'
IN_PREENCHIMENTO_QUESTIONARIO = 'Indicador de preenchimento do questionário'
TX_RESP_Q007  = 'Avalie o estado de conservação dos itens e equipamentos do prédio - Telhado'
TX_RESP_Q008  = 'Avalie o estado de conservação dos itens e equipamentos do prédio - Paredes'
TX_RESP_Q009  = 'Avalie o estado de conservação dos itens e equipamentos do prédio - Piso'
TX_RESP_Q010  = 'Avalie o estado de conservação dos itens e equipamentos do prédio -  Entrada do prédio'
TX_RESP_Q011  = 'Avalie o estado de conservação dos itens e equipamentos do prédio - Pátio'
TX_RESP_Q012  = 'Avalie o estado de conservação dos itens e equipamentos do prédio - Corredores'
TX_RESP_Q013 = 'Avalie o estado de conservação dos itens e equipamentos do prédio - Salas de aula'
TX_RESP_Q014 = 'Avalie o estado de conservação dos itens e equipamentos do prédio - Portas'
TX_RESP_Q015 = 'Avalie o estado de conservação dos itens e equipamentos do prédio - Janelas'
TX_RESP_Q016 = 'Avalie o estado de conservação dos itens e equipamentos do prédio - Banheiros'
TX_RESP_Q017 = 'Avalie o estado de conservação dos itens e equipamentos do prédio - Cozinha'
TX_RESP_Q018 = 'Avalie o estado de conservação dos itens e equipamentos do prédio - Instalações hidráulicas'
TX_RESP_Q019 = 'Avalie o estado de conservação dos itens e equipamentos do prédio - Instalações elétricas'
TX_RESP_Q020 = 'Avalie a quantidade de salas de aula que atendem aos seguintes critérios: São iluminadas de forma adequada. (Observe se a iluminação natural ou artificial garante boa claridade no interior das salas.)'
TX_RESP_Q021 = 'Avalie a quantidade de salas de aula que atendem aos seguintes critérios: São arejadas de forma adequada.'
TX_RESP_Q022 = 'Avalie os seguintes aspectos em relação à segurança da escola e dos alunos: Controle de entrada e saída de alunos.'
TX_RESP_Q023 = 'Avalie os seguintes aspectos em relação à segurança da escola e dos alunos: Controle de entrada de pessoas estranhas na escola.'
TX_RESP_Q024 = 'Avalie os seguintes aspectos em relação à segurança da escola e dos alunos: Vigilância para o período diurno.'
TX_RESP_Q025 = 'Avalie os seguintes aspectos em relação à segurança da escola e dos alunos: Vigilância para o período noturno.'
TX_RESP_Q026 = 'Avalie os seguintes aspectos em relação à segurança da escola e dos alunos: Vigilância para os finais de semana e feriados.'
TX_RESP_Q027 = 'Avalie os seguintes aspectos em relação à segurança da escola e dos alunos: Esquema de policiamento para inibição de furtos, roubos e outras formas de violência.'
TX_RESP_Q028 = 'Avalie os seguintes aspectos em relação à segurança da escola e dos alunos: Esquema de policiamento para inibição de tráfico de tóxicos/drogas dentro da escola.'
TX_RESP_Q029 = 'Avalie os seguintes aspectos em relação à segurança da escola e dos alunos: Esquema de policiamento para inibição de tráfico de tóxicos/drogas nas imediações da escola.'
TX_RESP_Q030 = 'Avalie os seguintes aspectos em relação à segurança da escola e dos alunos: Sistema de proteção contra incêndio (alarme de fumaça e temperatura, extintores contra incêndio dentro do prazo de validade, mangueiras etc.).'
TX_RESP_Q031 = 'Avalie os seguintes aspectos em relação à segurança da escola e dos alunos: Iluminação do lado de fora da escola.'
TX_RESP_Q032 = 'Avalie os seguintes aspectos em relação à segurança da escola e dos alunos: Há muros, grades ou cercas em condições de garantir a segurança dos alunos? (Caso existam buracos ou aberturas que permitam o acesso de estranhos, responder NÃO.)'
TX_RESP_Q033 = 'Avalie os seguintes aspectos em relação à segurança da escola e dos alunos: Os equipamentos mais caros (computadores, projetores, televisão, vídeo etc.) são guardados em salas seguras ou possuem mecanismos de proteção (...)? (Cf. Dic)'
TX_RESP_Q034 = 'Avalie os seguintes aspectos em relação à segurança da escola e dos alunos: Os portões que dão acesso à parte externa permanecem trancados durante o horário de funcionamento da escola?'
TX_RESP_Q035 = 'Avalie os seguintes aspectos em relação à segurança da escola e dos alunos: A escola adota alguma medida de segurança para proteger os alunos nas suas imediações?'
TX_RESP_Q036 = 'Avalie os seguintes aspectos em relação à segurança da escola e dos alunos: A escola apresenta sinais de depredação (vidros, portas e janelas quebradas, lâmpadas estouradas etc.)?'
TX_RESP_Q037 = 'Indique se nesta escola existem ou não os recursos apontados e quais são suas condições de uso. Computadores para uso dos alunos. '
TX_RESP_Q038 = 'Indique se nesta escola existem ou não os recursos apontados e quais são suas condições de uso. Acesso à internet para uso dos alunos.'
TX_RESP_Q039 = 'Indique se nesta escola existem ou não os recursos apontados e quais são suas condições de uso. Computadores para uso dos professores.'
TX_RESP_Q040 = 'Indique se nesta escola existem ou não os recursos apontados e quais são suas condições de uso. Acesso à internet para uso dos professores.'
TX_RESP_Q041 = 'Indique se nesta escola existem ou não os recursos apontados e quais são suas condições de uso. Computadores exclusivamente para o uso administrativo.'
TX_RESP_Q042 = 'Indique se nesta escola existem ou não os recursos apontados e quais são suas condições de uso. Fitas de vídeo ou DVD (educativas).'
TX_RESP_Q043 = 'Indique se nesta escola existem ou não os recursos apontados e quais são suas condições de uso. Fitas de vídeo ou DVD (lazer).'
TX_RESP_Q044 = 'Indique se nesta escola existem ou não os recursos apontados e quais são suas condições de uso. Máquina copiadora.'
TX_RESP_Q045 = 'Indique se nesta escola existem ou não os recursos apontados e quais são suas condições de uso. Impressora.'
TX_RESP_Q046 = 'Indique se nesta escola existem ou não os recursos apontados e quais são suas condições de uso. Retroprojetor.'
TX_RESP_Q047 = 'Indique se nesta escola existem ou não os recursos apontados e quais são suas condições de uso. Projetor de slides.'
TX_RESP_Q048 = 'Indique se nesta escola existem ou não os recursos apontados e quais são suas condições de uso. Videocassete ou aparelho de DVD.'
TX_RESP_Q049 = 'Indique se nesta escola existem ou não os recursos apontados e quais são suas condições de uso. Televisão.'
TX_RESP_Q050 = 'Indique se nesta escola existem ou não os recursos apontados e quais são suas condições de uso. Mimeógrafo.'
TX_RESP_Q051 = 'Indique se nesta escola existem ou não os recursos apontados e quais são suas condições de uso. Câmera fotográfica.'
TX_RESP_Q052 = 'Indique se nesta escola existem ou não os recursos apontados e quais são suas condições de uso. Antena parabólica.'
TX_RESP_Q053 = 'Indique se nesta escola existem ou não os recursos apontados e quais são suas condições de uso. Internet com conexão Banda Larga.'
TX_RESP_Q054 = 'Indique se nesta escola existem ou não os recursos apontados e quais são suas condições de uso. Linha telefônica.'
TX_RESP_Q055 = 'Indique se nesta escola existem ou não os recursos apontados e quais são suas condições de uso. Aparelho de fax.'
TX_RESP_Q056 = 'Indique se nesta escola existem ou não os recursos apontados e quais são suas condições de uso. Aparelho de som.'
TX_RESP_Q057 = 'Indique a existência e as condições de uso dos seguintes espaços da escola: Biblioteca.'
TX_RESP_Q058 = 'Indique a existência e as condições de uso dos seguintes espaços da escola: Sala de leitura.'
TX_RESP_Q059 = 'Indique a existência e as condições de uso dos seguintes espaços da escola: Quadra de esportes.'
TX_RESP_Q060 = 'Indique a existência e as condições de uso dos seguintes espaços da escola: Laboratório de informática.'
TX_RESP_Q061 = 'Indique a existência e as condições de uso dos seguintes espaços da escola: Laboratório de Ciências.'
TX_RESP_Q062 = 'Indique a existência e as condições de uso dos seguintes espaços da escola: Auditório.'
TX_RESP_Q063 = 'Indique a existência e as condições de uso dos seguintes espaços da escola: Sala para atividades de música.'
TX_RESP_Q064 = 'Indique a existência e as condições de uso dos seguintes espaços da escola: Sala para atividades de artes plásticas.'
TX_RESP_Q065 = 'Em relação à biblioteca ou sala de leitura:  Possui acervo diversificado que desperte o interesse dos alunos.'
TX_RESP_Q066 = 'Em relação à biblioteca ou sala de leitura:  Possui brinquedoteca.'
TX_RESP_Q067 = 'Em relação à biblioteca ou sala de leitura:  Possui espaço para estudos coletivos.'
TX_RESP_Q068 = 'Em relação à biblioteca ou sala de leitura:  Os livros podem ser manuseados e emprestados.'
TX_RESP_Q069 = 'Em relação à biblioteca ou sala de leitura:  A comunidade pode  utilizar o espaço e os livros.'
TX_RESP_Q070 = 'Em relação à biblioteca ou sala de leitura:  O espaço é arejado e bem iluminado.'
TX_RESP_Q071 = 'Em relação à biblioteca ou sala de leitura:  Existe uma pessoa responsável pelo atendimento na biblioteca ou na sala de leitura.'
TX_RESP_Q072 = 'Os seguintes usuários da biblioteca (ou sala de leitura) levam livros para casa: Os alunos:'
TX_RESP_Q073 = 'Os seguintes usuários da biblioteca (ou sala de leitura) levam livros para casa: Os professores:'
TX_RESP_Q074 = 'Os seguintes usuários da biblioteca (ou sala de leitura) levam livros para casa: Os membros da comunidade:';


IF ID_PROVA_BRASIL = . THEN DELETE;
run;quit;