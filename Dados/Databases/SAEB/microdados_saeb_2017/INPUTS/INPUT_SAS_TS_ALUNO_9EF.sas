/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                */ 
/*                                   			                                       */
/*  Coordenação-Geral de Instrumentos e Medidas                                       */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_ALUNO_9EF                                                */
/*-------------------------------------------------------------------------------------*/
/* DESCRICAO:     PROGRAMA PARA LEITURA DOS RESULTADOS DOS ALUNOS DO                   */
/*                       9º ANO DA ANEB/PROVA BRASIL 2017                              */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, é necessário salvar este programa e o arquivo             */
/* TS_ALUNO_9EF.CSV no diretório C:\ do computador.	                                   */
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
9 = '8ª série/9º ano Ensino Fundamental';

value IN_SITUACAO_CENSO
0 = 'Não consistente'
1 = 'Consistente';

value IN_PREENCHIMENTO
0 = 'Prova não preenchida'
1 = 'Prova preenchida';

value IN_PRESENCA
0= 'Ausente'
1= 'Presente';

value IN_PROFICIENCIA
0 = 'Não'
1 = 'Sim';

value IN_PROVA_BRASIL
0 = 'Não' 
1 = 'Sim';

value IN_PREENCHIMENTO_QUESTIONARIO
0 = 'Não preenchido'
1 = 'Preenchido parcial ou totalmente';

value $Q9um
A = 'Masculino'
B = 'Feminino';

value $Q9dois
A = 'Branca'
B = 'Preta'
C = 'Parda'
D = 'Amarela'
E = 'Indígena'
F = 'Não quero declarar';

value $Q9tres
A = 'Janeiro'
B = 'Fevereiro'
C = 'Março'
D = 'Abril'
E = 'Maio'
F = 'Junho'
G = 'Julho'
H = 'Agosto'
I = 'Setembro'
J = 'Outubro'
K = 'Novembro'
L = 'Dezembro';

value $Q9quatro
A = '2005 ou depois'
B = '2004'
C = '2003'
D = '2002'
E = '2001'
F = '2000'
G = '1999'
H = '1998 ou antes';

value $Q9cinco
A = 'Não tem'
B = 'Sim, uma'
C = 'Sim, duas'
D = 'Sim, três'
E = 'Sim, quatro ou mais';

value $Q9seis
A = 'Não tem'
B = 'Sim, um'
C = 'Sim, dois'
D = 'Sim, três'
E = 'Sim, quatro ou mais';

value $Q9sete
A = 'Não tem'
B = 'Sim, um'
C = 'Sim, dois'
D = 'Sim, três'
E = 'Sim, quatro ou mais';

value $Q9oito
A = 'Não tem'
B = 'Sim, uma'
C = 'Sim, duas'
D = 'Sim, três'
E = 'Sim, quatro ou mais';

value $Q9nove
A = 'Não tem'
B = 'Sim, um'
C = 'Sim, dois'
D = 'Sim, três'
E = 'Sim, quatro ou mais';

value $Q9dez
A = 'Não tem'
B = 'Sim, um'
C = 'Sim, dois'
D = 'Sim, três'
E = 'Sim, quatro ou mais';

value $Q9onze
A = 'Não tem'
B = 'Sim, uma'
C = 'Sim, duas'
D = 'Sim, três'
E = 'Sim, quatro ou mais';

value $Q9doze
A = 'Não tem'
B = 'Sim, um'
C = 'Sim, dois'
D = 'Sim, três'
E = 'Sim, quatro ou mais';

value $Q9treze
A = 'Não tem'
B = 'Sim, um'
C = 'Sim, dois'
D = 'Sim, três'
E = 'Sim, quatro ou mais';

value $Q9catorze
A = 'Não tem'
B = 'Sim, um'
C = 'Sim, dois'
D = 'Sim, três'
E = 'Sim, quatro ou mais';

value $Q9quinze
A = 'Não tem'
B = 'Sim, um'
C = 'Sim, dois'
D = 'Sim, três'
E = 'Sim, quatro ou mais';

value $Q9dezesseis
A = 'Uma, pois moro sozinho(a)'
B = 'Duas'
C = 'Três'
D = 'Quatro'
E = 'Cinco'
F = 'Seis pessoas ou mais';

value $Q9dezessete
A = 'Não'
B = 'Sim, um(a) empregado(a)'
C = 'Sim, dois(duas) empregados(as)'
D = 'Sim, três empregados(as)'
E = 'Sim, quatro ou mais empregados(as)';

value $Q9dezoito
A = 'Sim'
B = 'Não'
C = 'Não, mas moro com outra mulher responsável por mim';

value $Q9dezenove
A = 'Nunca estudou'
B = 'Não completou a 4.ª série/5.º ano do Ensino Fundamental'
C = 'Completou a 4.ª série/5.º ano, mas não completou a 8.ª série/9.º ano do Ensino Fundamental'
D = 'Completou a 8.ª série/9.º ano do Ensino Fundamental, mas não completou o Ensino Médio'
E = 'Completou o Ensino Médio, mas não completou a Faculdade'
F = 'Completou a Faculdade'
G = 'Não sei';

value $Q9vinte
A = 'Sim'
B = 'Não';

value $Q9vinteum
A = 'Sim'
B = 'Não';

value $Q9vintedois
A = 'Sim'
B = 'Não'
C = 'Não, mas moro com outro homem responsável por mim';

value $Q9vintetres
A = 'Nunca estudou'
B = 'Não completou a 4.ª série/5.º ano do Ensino Fundamental'
C = 'Completou a 4.ª série/5.º ano, mas não completou a 8.ª série/9.º ano do Ensino Fundamental'
D = 'Completou a 8.ª série/9.º ano do Ensino Fundamental, mas não completou o Ensino Médio'
E = 'Completou o Ensino Médio, mas não completou a Faculdade'
F = 'Completou a Faculdade'
G = 'Não sei';

value $Q9vintequatro
A = 'Sim'
B = 'Não';

value $Q9vintecinco
A = 'Sim'
B = 'Não';

value $Q9vinteseis
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca';

value $Q9vintesete
A = 'Sim'
B = 'Não';

value $Q9vinteoito
A = 'Sim'
B = 'Não';

value $Q9vintenove
A = 'Sim'
B = 'Não';

value $Q9trinta
A = 'Sim'
B = 'Não';

value $Q9trintaum
A = 'Sim'
B = 'Não';

value $Q9trintadois
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca';

value $Q9trintatres
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca';

value $Q9trintaquatro
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca';

value $Q9trintacinco
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca';

value $Q9trintaseis
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca';

value $Q9trintasete
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca';

value $Q9trintaoito
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca';

value $Q9trintanove
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca';

value $Q9quarenta
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca';

value $Q9quarentaum
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca';

value $Q9quarentadois
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca';

value $Q9quarentatres
A = 'Menos de 1 hora'
B = 'Entre 1 e 2 horas'
C = 'Mais de 2 horas, até 3 horas'
D = 'Mais de 3 horas'
E = 'Não vejo TV, não navego na internet e não jogo jogos eletrônicos';

value $Q9quarentaquatro
A = 'Menos de 1 hora'
B = 'Entre 1 e 2 horas'
C = 'Mais de 2 horas, até 3 horas'
D = 'Mais de 3 horas'
E = 'Não faço trabalhos domésticos';

value $Q9quarentacinco
A = 'Sim'
B = 'Não';

value $Q9quarentaseis
A = 'Na creche (0 a 3 anos)'
B = 'Na pré-escola (4 a 5 anos)'
C = 'Na primeira série ou primeiro ano (6 a 7 anos)'
D = 'Depois da primeira série';

value $Q9quarentasete
A = 'Somente em escola pública'
B = 'Somente em escola particular'
C = 'Em escola pública e em escola particular';

value $Q9quarentaoito
A = 'Não'
B = 'Sim, uma vez'
C = 'Sim, duas vezes ou mais';

value $Q9quarentanove
A = 'Não'
B = 'Sim, uma vez'
C = 'Sim, duas vezes ou mais';

value $Q9cinquenta
A = 'Sim'
B = 'Não';

value $Q9cinquentaum
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca'
D = 'O(A) professor(a) não passa dever de casa';

value $Q9cinquentadois
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca'
D = 'O(A) professor(a) não passa dever de casa';

value $Q9cinquentatres
A = 'Sim'
B = 'Não';

value $Q9cinquentaquatro
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca'
D = 'O(A) professor(a) não passa dever de casa';

value $Q9cinquentacinco
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca'
D = 'O(A) professor(a) não passa dever de casa';

value $Q9cinquentaseis
A = 'Sempre ou quase sempre'
B = 'De vez em quando'
C = 'Nunca ou quase nunca'
D = 'A escola não possui biblioteca ou sala de leitura';

value $Q9cinquentasete
A = 'Somente continuar estudando'
B = 'Somente trabalhar'
C = 'Continuar estudando e trabalhar'
D = 'Ainda não sei';


DATA WORK.TS_ALUNO_9EF;

INFILE 'c:\TS_ALUNO_9EF.csv' /*Endereço do arquivo*/
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
ID_SERIE : 1.
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
PROFICIENCIA_MT_SAEB : 19.
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
;

ATTRIB ID_REGIAO FORMAT=ID_REGIAO12.;
ATTRIB ID_UF FORMAT=ID_UF2.;
ATTRIB ID_AREA FORMAT=ID_AREA8.;
ATTRIB ID_DEPENDENCIA_ADM FORMAT=ID_DEPENDENCIA_ADM9.;
ATTRIB ID_LOCALIZACAO FORMAT=ID_LOCALIZACAO9.;
ATTRIB ID_TURNO FORMAT=ID_TURNO13.;
ATTRIB ID_SERIE FORMAT=ID_SERIE37.;
ATTRIB IN_SITUACAO_CENSO FORMAT=IN_SITUACAO_CENSO15.;
ATTRIB IN_PREENCHIMENTO_PROVA FORMAT=IN_PREENCHIMENTO20.;
ATTRIB IN_PRESENCA_PROVA FORMAT=IN_PRESENCA20.;
ATTRIB IN_PROFICIENCIA FORMAT=IN_PROFICIENCIA3.;
ATTRIB IN_PROVA_BRASIL FORMAT=IN_PROVA_BRASIL3.;
ATTRIB IN_PREENCHIMENTO_QUESTIONARIO FORMAT=IN_PREENCHIMENTO_QUESTIONARIO33.;
ATTRIB TX_RESP_Q001 FORMAT=$Q9um.;
ATTRIB TX_RESP_Q002 FORMAT=$Q9dois.;
ATTRIB TX_RESP_Q003 FORMAT=$Q9tres.;
ATTRIB TX_RESP_Q004 FORMAT=$Q9quatro.;
ATTRIB TX_RESP_Q005 FORMAT=$Q9cinco.;
ATTRIB TX_RESP_Q006 FORMAT=$Q9seis.;
ATTRIB TX_RESP_Q007 FORMAT=$Q9sete.;
ATTRIB TX_RESP_Q008 FORMAT=$Q9oito.;
ATTRIB TX_RESP_Q009 FORMAT=$Q9nove.;
ATTRIB TX_RESP_Q010 FORMAT=$Q9dez.;
ATTRIB TX_RESP_Q011 FORMAT=$Q9onze.;
ATTRIB TX_RESP_Q012 FORMAT=$Q9doze.;
ATTRIB TX_RESP_Q013 FORMAT=$Q9treze.;
ATTRIB TX_RESP_Q014 FORMAT=$Q9catorze.;
ATTRIB TX_RESP_Q015 FORMAT=$Q9quinze.;
ATTRIB TX_RESP_Q016 FORMAT=$Q9dezesseis.;
ATTRIB TX_RESP_Q017 FORMAT=$Q9dezessete.;
ATTRIB TX_RESP_Q018 FORMAT=$Q9dezoito.;
ATTRIB TX_RESP_Q019 FORMAT=$Q9dezenove.;
ATTRIB TX_RESP_Q020 FORMAT=$Q9vinte.;
ATTRIB TX_RESP_Q021 FORMAT=$Q9vinteum.;
ATTRIB TX_RESP_Q022 FORMAT=$Q9vintedois.;
ATTRIB TX_RESP_Q023 FORMAT=$Q9vintetres.;
ATTRIB TX_RESP_Q024 FORMAT=$Q9vintequatro.;
ATTRIB TX_RESP_Q025 FORMAT=$Q9vintecinco.;
ATTRIB TX_RESP_Q026 FORMAT=$Q9vinteseis.;
ATTRIB TX_RESP_Q027 FORMAT=$Q9vintesete.;
ATTRIB TX_RESP_Q028 FORMAT=$Q9vinteoito.;
ATTRIB TX_RESP_Q029 FORMAT=$Q9vintenove.;
ATTRIB TX_RESP_Q030 FORMAT=$Q9trinta.;
ATTRIB TX_RESP_Q031 FORMAT=$Q9trintaum.;
ATTRIB TX_RESP_Q032 FORMAT=$Q9trintadois.;
ATTRIB TX_RESP_Q033 FORMAT=$Q9trintatres.;
ATTRIB TX_RESP_Q034 FORMAT=$Q9trintaquatro.;
ATTRIB TX_RESP_Q035 FORMAT=$Q9trintacinco.;
ATTRIB TX_RESP_Q036 FORMAT=$Q9trintaseis.;
ATTRIB TX_RESP_Q037 FORMAT=$Q9trintasete.;
ATTRIB TX_RESP_Q038 FORMAT=$Q9trintaoito.;
ATTRIB TX_RESP_Q039 FORMAT=$Q9trintanove.;
ATTRIB TX_RESP_Q040 FORMAT=$Q9quarenta.;
ATTRIB TX_RESP_Q041 FORMAT=$Q9quarentaum.;
ATTRIB TX_RESP_Q042 FORMAT=$Q9quarentadois.;
ATTRIB TX_RESP_Q043 FORMAT=$Q9quarentatres.;
ATTRIB TX_RESP_Q044 FORMAT=$Q9quarentaquatro.;
ATTRIB TX_RESP_Q045 FORMAT=$Q9quarentacinco.;
ATTRIB TX_RESP_Q046 FORMAT=$Q9quarentaseis.;
ATTRIB TX_RESP_Q047 FORMAT=$Q9quarentasete.;
ATTRIB TX_RESP_Q048 FORMAT=$Q9quarentaoito.;
ATTRIB TX_RESP_Q049 FORMAT=$Q9quarentanove.;
ATTRIB TX_RESP_Q050 FORMAT=$Q9cinquenta.;
ATTRIB TX_RESP_Q051 FORMAT=$Q9cinquentaum.;
ATTRIB TX_RESP_Q052 FORMAT=$Q9cinquentadois.;
ATTRIB TX_RESP_Q053 FORMAT=$Q9cinquentatres.;
ATTRIB TX_RESP_Q054 FORMAT=$Q9cinquentaquatro.;
ATTRIB TX_RESP_Q055 FORMAT=$Q9cinquentacinco.;
ATTRIB TX_RESP_Q056 FORMAT=$Q9cinquentaseis.;
ATTRIB TX_RESP_Q057 FORMAT=$Q9cinquentasete.;

LABEL

ID_PROVA_BRASIL = 'Ano da ANEB/Prova Brasil'                                                                                                                
ID_REGIAO = 'Código da Região'                                                                                                                         
ID_UF = 'Código da Unidade da Federação'                                                                                                               
ID_MUNICIPIO = 'Código do Município'                                                                                                                   
ID_AREA = 'Área'                                                                                                                    
ID_ESCOLA = 'Código da Escola'                                                                                                                         
ID_DEPENDENCIA_ADM = 'Dependência Administrativa'
ID_LOCALIZACAO = 'Localização'                                                                                                                
ID_TURMA = 'Código da turma na ANEB/Prova Brasil'                                                                                                           
ID_TURNO = 'Turno da Turma'                                                                                                                            
ID_SERIE = 'Série'                                                                                                                                     
ID_ALUNO = 'Código do aluno na ANEB/Prova Brasil'                                                                                                           
IN_SITUACAO_CENSO = 'Indicador de Consistência com o Censo Escolar 2017'                                                                              
IN_PREENCHIMENTO_PROVA = 'Indicador de preenchimento da prova'  
IN_PRESENCA_PROVA = 'Indicador de presença na prova' 
ID_CADERNO = 'Caderno de Provas'                                                                                                                       
ID_BLOCO_1 = 'Identificador do Bloco 1 (Língua Portuguesa e Matemática)'                                                                               
ID_BLOCO_2 = 'Identificador do Bloco 2 (Língua Portuguesa e Matemática)'                                                                               
TX_RESP_BLOCO_1_LP = 'Resposta do Aluno ao Bloco 1 da Prova de Língua Portuguesa'                                                                     
TX_RESP_BLOCO_2_LP = 'Resposta do Aluno ao Bloco 2 da Prova de Língua Portuguesa'                                                                     
TX_RESP_BLOCO_1_MT = 'Resposta do Aluno ao Bloco 1 da Prova de Matemática'                                                                            
TX_RESP_BLOCO_2_MT = 'Resposta do Aluno ao Bloco 2 da Prova de Matemática'                                                                            
IN_PROFICIENCIA = 'Indicador para cálculo da proficiência (no mínimo três itens respondidos na prova)'
IN_PROVA_BRASIL = 'Indicador de participação na Prova Brasil'
ESTRATO_ANEB = 'Descrição dos estratos da ANEB'
PESO_ALUNO_LP = 'Peso do Aluno em Língua Portuguesa'
PESO_ALUNO_MT = 'Peso do Aluno em Matemática'
PROFICIENCIA_LP = 'Proficiência do aluno em Língua Portuguesa calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'
ERRO_PADRAO_LP = 'Erro padrão da proficiência em Língua Portuguesa'
PROFICIENCIA_LP_SAEB = 'Proficiência em Língua Portuguesa transformada na escala única do SAEB, com média = 250, desvio = 50 (do SAEB/97)'
ERRO_PADRAO_LP_SAEB = 'Erro padrão da proficiência transformada em Língua Portuguesa'
PROFICIENCIA_MT = 'Proficiência do aluno em Matemática calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'
ERRO_PADRAO_MT = 'Erro padrão da proficiência em Matemática'
PROFICIENCIA_MT_SAEB = 'Proficiência do aluno em Matemática transformada na escala única do SAEB, com média = 250, desvio = 50 (do SAEB/97)'
ERRO_PADRAO_MT_SAEB = 'Erro padrão da proficiência transformada em Matemática'                                                                    
IN_PREENCHIMENTO_QUESTIONARIO = 'Indicador de preenchimento do questionário'
TX_RESP_Q001 = 'Qual é o seu sexo?'
TX_RESP_Q002 = 'Qual é a sua cor ou raça?'
TX_RESP_Q003 = 'Você poderia nos dizer qual é o mês de seu aniversário?'
TX_RESP_Q004 = 'Em que ano você nasceu?'
TX_RESP_Q005 = 'Na sua casa tem televisão em cores?'
TX_RESP_Q006 = 'Na sua casa tem aparelho de rádio?'
TX_RESP_Q007 = 'Na sua casa tem videocassete e/ou DVD?'
TX_RESP_Q008 = 'Na sua casa tem geladeira?'
TX_RESP_Q009 = 'Na sua casa tem freezer (parte da geladeira duplex)?'
TX_RESP_Q010 = 'Na sua casa tem freezer separado da geladeira?'
TX_RESP_Q011 = 'Na sua casa tem máquina de lavar roupa (O tanquinho NÃO deve ser considerado)?'
TX_RESP_Q012 = 'Na sua casa tem carro?'
TX_RESP_Q013 = 'Na sua casa tem computador?'
TX_RESP_Q014 = 'Na sua casa tem banheiro?'
TX_RESP_Q015 = 'Na sua casa tem quartos para dormir?'
TX_RESP_Q016 = 'Incluindo você, quantas pessoas vivem atualmente em sua casa?'
TX_RESP_Q017 = 'Em sua casa trabalha empregado(a) doméstico(a) pelo menos cinco dias por semana?'
TX_RESP_Q018 = 'Você mora com sua mãe?'
TX_RESP_Q019 = 'Até que série sua mãe, ou a mulher responsável por você, estudou?'
TX_RESP_Q020 = 'Sua mãe, ou a mulher responsável por você, sabe ler e escrever?'
TX_RESP_Q021 = 'Você vê sua mãe, ou mulher responsável por você, lendo?'
TX_RESP_Q022 = 'Você mora com seu pai?'
TX_RESP_Q023 = 'Até que série seu pai, ou o homem responsável por você, estudou?'
TX_RESP_Q024 = 'Seu pai, ou homem responsável por você, sabe ler e escrever?'
TX_RESP_Q025 = 'Você vê o seu pai, ou homem responsável por você, lendo?'
TX_RESP_Q026 = 'Com qual frequência seus pais, ou responsáveis por você, vão à reunião de pais?'
TX_RESP_Q027 = 'Seus pais ou responsáveis incentivam você a estudar?'
TX_RESP_Q028 = 'Seus pais ou responsáveis incentivam você a fazer o dever de casa e/ou os trabalhos da escola?'
TX_RESP_Q029 = 'Seus pais ou responsáveis incentivam você a ler?'
TX_RESP_Q030 = 'Seus pais ou responsáveis incentivam você a ir a escola e/ou não faltar às aulas?'
TX_RESP_Q031 = 'Seus pais ou responsáveis conversam com você sobre o que acontece na escola?'
TX_RESP_Q032 = 'Com qual frequência você lê: Jornais'
TX_RESP_Q033 = 'Com qual frequência você lê: Livros em geral'
TX_RESP_Q034 = 'Com qual frequência você lê: Livros de literatura'
TX_RESP_Q035 = 'Com qual frequência você lê: Revistas em geral'
TX_RESP_Q036 = 'Com qual frequência você lê: Revistas em quadrinhos (gibis)'
TX_RESP_Q037 = 'Com qual frequência você lê: Revistas de comportamento, celebridades, esportes ou TV'
TX_RESP_Q038 = 'Com qual frequência você lê: Notícias na internet (ex.: blog, notícia)'
TX_RESP_Q039 = 'Com qual frequência você costuma ir à biblioteca?'
TX_RESP_Q040 = 'Com qual frequência você costuma ir ao cinema?'
TX_RESP_Q041 = 'Com qual frequência você costuma ir a algum tipo de espetáculo ou exposição (teatro, museu, dança, música)?'
TX_RESP_Q042 = 'Com qual frequência você participa de festas na sua vizinhaça ou comunidade?'
TX_RESP_Q043 = 'Em dia de aula, quanto tempo você gasta assistindo à TV, navegando na internet ou jogando jogos eletrônicos?'
TX_RESP_Q044 = 'Em dias de aula, quanto tempo você gasta fazendo trabalhos domésticos (ex.: lavando louça, limpando o quintal etc.)?'
TX_RESP_Q045 = 'Atualmente você trabalha fora de casa (recebendo ou não um salário)?'
TX_RESP_Q046 = 'Quando você entrou na escola?'
TX_RESP_Q047 = 'A partir da quinta série ou sexto ano, em que tipo de escola você estudou?'
TX_RESP_Q048 = 'Você já foi reprovado?'
TX_RESP_Q049 = 'Você já abandonou a escola durante o período de aulas e ficou fora da escola o resto do ano?'
TX_RESP_Q050 = 'Você gosta de estudar Língua Portuguesa?'
TX_RESP_Q051 = 'Você faz o dever de casa de Língua portuguesa?'
TX_RESP_Q052 = 'O(A) professor(a) corrige o dever de casa de Língua Portuguesa?'
TX_RESP_Q053 = 'Você gosta de estudar Matemática?'
TX_RESP_Q054 = 'Você faz o dever de casa de Matemática?'
TX_RESP_Q055 = 'O(A) professor(a) corrige o dever de casa de Matemática?'
TX_RESP_Q056 = 'Você utiliza a biblioteca ou sala de leitura da sua escola?'
TX_RESP_Q057 = 'Quando você terminar o 9º ano(8ª série) você pretende:';

run;quit;