/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral do Sistema Nacional de Avaliação da Educação Básica             */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_ALUNO_5EF                                                                   */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DOS RESULTADOS DOS ALUNOS DO */
/*                     5º ANO DA ANEB/PROVA BRASIL 2015                                            */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* TS_ALUNO_5EF.CSV no diretório C:\ do computador.	                                     */
/*							 */ 
/* Ao terminar esses procedimentos execute o programa salvo utilizando                      */
/* as variáveis de interesse.					 */	
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
  /FILE="C:\TS_ALUNO_5EF.csv"
  /DELCASE=LINE
  /DELIMITERS=","
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  ID_PROVA_BRASIL F4.0
  ID_REGIAO F1.0
  ID_UF F2.0
  ID_MUNICIPIO F7.0
  ID_AREA F1.0
  ID_ESCOLA F8.0
  ID_DEPENDENCIA_ADM F1.0
  ID_LOCALIZACAO F1.0
  ID_TURMA F6.0
  ID_TURNO F1.0
  ID_SERIE F1.0
  ID_ALUNO F8.0
  IN_SITUACAO_CENSO F1.0
  IN_PREENCHIMENTO_PROVA F1.0
  ID_CADERNO F2.0
  ID_BLOCO_1 F1.0
  ID_BLOCO_2 F1.0
  TX_RESP_BLOCO_1_LP A11
  TX_RESP_BLOCO_2_LP A11
  TX_RESP_BLOCO_1_MT A11
  TX_RESP_BLOCO_2_MT A11
  IN_PROFICIENCIA F1.0
  IN_PROVA_BRASIL F1.0
  ESTRATO_ANEB A15
  PESO_ALUNO_LP COMMA6.2
  PESO_ALUNO_MT COMMA6.2
  PROFICIENCIA_LP COMMA6.2
  DESVIO_PADRAO_LP COMMA6.2
  PROFICIENCIA_LP_SAEB COMMA6.2
  DESVIO_PADRAO_LP_SAEB COMMA6.2
  PROFICIENCIA_MT COMMA6.2
  DESVIO_PADRAO_MT COMMA6.2
  PROFICIENCIA_MT_SAEB COMMA6.2
  DESVIO_PADRAO_MT_SAEB COMMA6.2
  IN_PREENCHIMENTO_QUESTIONARIO F1.0
  TX_RESP_Q001 A8
  TX_RESP_Q002 A8
  TX_RESP_Q003 A8
  TX_RESP_Q004 A8
  TX_RESP_Q005 A8
  TX_RESP_Q006 A8
  TX_RESP_Q007 A8
  TX_RESP_Q008 A8
  TX_RESP_Q009 A8
  TX_RESP_Q010 A8
  TX_RESP_Q011 A8
  TX_RESP_Q012 A8
  TX_RESP_Q013 A8
  TX_RESP_Q014 A8
  TX_RESP_Q015 A8
  TX_RESP_Q016 A8
  TX_RESP_Q017 A8
  TX_RESP_Q018 A8
  TX_RESP_Q019 A8
  TX_RESP_Q020 A8
  TX_RESP_Q021 A8
  TX_RESP_Q022 A8
  TX_RESP_Q023 A8
  TX_RESP_Q024 A8
  TX_RESP_Q025 A8
  TX_RESP_Q026 A8
  TX_RESP_Q027 A8
  TX_RESP_Q028 A8
  TX_RESP_Q029 A8
  TX_RESP_Q030 A8
  TX_RESP_Q031 A8
  TX_RESP_Q032 A8
  TX_RESP_Q033 A8
  TX_RESP_Q034 A8
  TX_RESP_Q035 A8
  TX_RESP_Q036 A8
  TX_RESP_Q037 A8
  TX_RESP_Q038 A8
  TX_RESP_Q039 A8
  TX_RESP_Q040 A8
  TX_RESP_Q041 A8
  TX_RESP_Q042 A8
  TX_RESP_Q043 A8
  TX_RESP_Q044 A8
  TX_RESP_Q045 A8
  TX_RESP_Q046 A8
  TX_RESP_Q047 A8
  TX_RESP_Q048 A8
  TX_RESP_Q049 A8
  TX_RESP_Q050 A8
  TX_RESP_Q051 A8.
CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.



VARIABLE LABELS ID_PROVA_BRASIL 'Ano da ANEB/Prova Brasil'.
VARIABLE LABELS ID_REGIAO 'Código da Região'.
VALUE LABELS ID_REGIAO
1 'Norte'
2 'Nordeste'
3 'Sudeste'
4 'Sul'
5 'Centro-Oeste'.
VARIABLE LABELS ID_UF 'Código da Unidade da Federação'.
VALUE LABELS ID_UF
11 'RO'
12 'AC'
13 'AM'
14 'RR'
15 'PA'
16 'AP'
17 'TO'
21 'MA'
22 'PI'
23 'CE'
24 'RN'
25 'PB'
26 'PE'
27 'AL'
28 'SE'
29 'BA'
31 'MG'
32 'ES'
33 'RJ'
35 'SP'
41 'PR'
42 'SC'
43 'RS'
50 'MS'
51 'MT'
52 'GO'
53 'DF'.
VARIABLE LABELS ID_MUNICIPIO 'Código do Município'.
VARIABLE LABELS ID_AREA 'Área'.
VALUE LABELS ID_AREA
1 'Capital'
2 'Interior'.
VARIABLE LABELS ID_ESCOLA 'Código da Escola'.
VARIABLE LABELS ID_DEPENDENCIA_ADM 'Dependência Administrativa'.
VALUE LABELS ID_DEPENDENCIA_ADM
1 'Federal'
2 'Estadual'
3 'Municipal'
4 'Privada'.
VARIABLE LABELS ID_LOCALIZACAO 'Localização'.
VALUE LABELS ID_LOCALIZACAO
1 'Urbana'
2 'Rural'.
VARIABLE LABELS ID_TURMA 'Código da turma na ANEB/Prova Brasil'.
VARIABLE LABELS ID_TURNO 'Turno da turma'.
VALUE LABELS ID_TURNO
1 'Matutino'
2 'Vespertino'
3 'Noturno'.
VARIABLE LABELS ID_SERIE 'Série'.
VALUE LABELS ID_SERIE
5 '4ª Série/5º Ano do Ensino Fundamental'.
VARIABLE LABELS ID_ALUNO 'Código do aluno na ANEB/Prova Brasil'.
VARIABLE LABELS IN_SITUACAO_CENSO 'Indicador de Consistência com o Censo Escolar 2015'. 
VALUE LABELS IN_SITUACAO_CENSO
0 'Não consistente'
1 'Consistente'.
VARIABLE LABELS IN_PREENCHIMENTO_PROVA 'Indicador de preenchimento da prova'.
VALUE LABELS IN_PREENCHIMENTO_PROVA
0 'Prova não preenchida'
1 'Prova preenchida'.
VARIABLE LABELS ID_CADERNO 'Caderno de Provas'.
VARIABLE LABELS ID_BLOCO_1 'Identificador do Bloco 1 (Língua Portuguesa e Matemática)'.
VARIABLE LABELS ID_BLOCO_2 'Identificador do Bloco 2 (Língua Portuguesa e Matemática)'.
VARIABLE LABELS TX_RESP_BLOCO_1_LP 'Resposta do Aluno ao Bloco 1 da Prova de Língua Portuguesa'.
VARIABLE LABELS TX_RESP_BLOCO_2_LP 'Resposta do Aluno ao Bloco 2 da Prova de Língua Portuguesa'.
VARIABLE LABELS TX_RESP_BLOCO_1_MT 'Resposta do Aluno ao Bloco 1 da Prova de Matemática'.
VARIABLE LABELS TX_RESP_BLOCO_2_MT 'Resposta do Aluno ao Bloco 2 da Prova de Matemática'.
VARIABLE LABELS IN_PROFICIENCIA 'Indicador para cálculo da proficiência (no mínimo três itens respondidos na prova)'.
VALUE LABELS IN_PROFICIENCIA
0 'Não'
1 'Sim'.
VARIABLE LABELS IN_PROVA_BRASIL 'Indicador de participação na Prova Brasil'.
VALUE LABELS IN_PROVA_BRASIL
0 'Não'
1 'Sim'.
VARIABLE LABELS ESTRATO_ANEB 'Descrição dos estratos da ANEB'.
VARIABLE LABELS PESO_ALUNO_LP 'Peso do Aluno em Língua Portuguesa'.
VARIABLE LABELS PESO_ALUNO_MT 'Peso do Aluno em Matemática'.
VARIABLE LABELS PROFICIENCIA_LP 'Proficiência do aluno em Língua Portuguesa calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'.
VARIABLE LABELS DESVIO_PADRAO_LP 'Desvio padrão da proficiência em Língua Portuguesa'.
VARIABLE LABELS PROFICIENCIA_LP_SAEB 'Proficiência em Língua Portuguesa transformada na escala única do SAEB, com média = 250, desvio = 50 (do SAEB/97)'.
VARIABLE LABELS DESVIO_PADRAO_LP_SAEB 'Desvio padrão da proficiência transformada em Língua Portuguesa'.
VARIABLE LABELS PROFICIENCIA_MT 'Proficiência do aluno em Matemática calculada na escala única do SAEB, com média = 0 e desvio = 1 na população de referência'.
VARIABLE LABELS DESVIO_PADRAO_MT 'Desvio padrão da proficiência em Matemática'.
VARIABLE LABELS PROFICIENCIA_MT_SAEB 'Proficiência do aluno em Matemática transformada na escala única do SAEB, com média = 250, desvio = 50 (do SAEB/97)'.
VARIABLE LABELS DESVIO_PADRAO_MT_SAEB 'Desvio padrão da proficiência transformada em Matemática'.
VARIABLE LABELS IN_PREENCHIMENTO_QUESTIONARIO 'Indicador de preenchimento do questionário'.
VALUE LABELS IN_PREENCHIMENTO_QUESTIONARIO
0 'Não preenchido'
1 'Preenchido parcial ou totalmente'.
VARIABLE LABELS TX_RESP_Q001 'Qual é o seu sexo?'.
VALUE LABELS TX_RESP_Q001
'A' 'Masculino.' 
'B' 'Feminino.'.
VARIABLE LABELS TX_RESP_Q002 'Como você se considera?'.
VALUE LABELS TX_RESP_Q002
'A' 'Branco(a).' 
'B' 'Pardo(a).' 
'C' 'Preto(a).' 
'D' 'Amarelo(a).' 
'E' 'Indígena.' 
'F' 'Não Sei.'.
VARIABLE LABELS TX_RESP_Q003 'Você poderia nos dizer qual é o mês de seu aniversário?'.
VALUE LABELS TX_RESP_Q003
'A' 'Janeiro.' 
'B' 'Fevereiro.' 
'C' 'Março.' 
'D' 'Abril.' 
'E' 'Maio.' 
'F' 'Junho.' 
'G' 'Julho.' 
'H' 'Agosto.' 
'I' 'Setembro.' 
'J' 'Outubro.' 
'K' 'Novembro.' 
'L' 'Dezembro.'.
VARIABLE LABELS TX_RESP_Q004 'Qual a sua idade?'.
VALUE LABELS TX_RESP_Q004
'A' '8 anos ou menos.' 
'B' '9 anos.' 
'C' '10 anos.' 
'D' '11 anos.' 
'E' '12 anos.' 
'F' '13 anos.' 
'G' '14 anos.' 
'H' '15 anos ou mais'.
VARIABLE LABELS TX_RESP_Q005 'Na sua casa tem televisão em cores?'.
VALUE LABELS TX_RESP_Q005
'A' 'Não tem.' 
'B' 'Sim, uma.' 
'C' 'Sim, duas.' 
'D' 'Sim, três.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q006 'Na sua casa tem aparelho de rádio?'.
VALUE LABELS TX_RESP_Q006
'A' 'Não tem.' 
'B' 'Sim, um.' 
'C' 'Sim, dois.' 
'D' 'Sim, três.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q007 'Na sua casa tem videocassete e/ou DVD?'.
VALUE LABELS TX_RESP_Q007
'A' 'Não tem.' 
'B' 'Sim, um.' 
'C' 'Sim, dois.' 
'D' 'Sim, três.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q008 'Na sua casa tem geladeira?'.
VALUE LABELS TX_RESP_Q008
'A' 'Não tem.' 
'B' 'Sim, uma.' 
'C' 'Sim, duas.' 
'D' 'Sim, três.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q009 'Na sua casa tem freezer (parte da geladeira duplex)?'.
VALUE LABELS TX_RESP_Q009
'A' 'Não tem.' 
'B' 'Sim, um.' 
'C' 'Sim, dois.' 
'D' 'Sim, três.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q010 'Na sua casa tem freezer separado da geladeira?'.
VALUE LABELS TX_RESP_Q010
'A' 'Não tem.' 
'B' 'Sim, um.' 
'C' 'Sim, dois.' 
'D' 'Sim, três.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q011 'Na sua casa tem máquina de lavar roupa (O tanquinho NÃO deve ser considerado)?'.
VALUE LABELS TX_RESP_Q011
'A' 'Não tem.' 
'B' 'Sim, uma.' 
'C' 'Sim, duas.' 
'D' 'Sim, três.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q012 'Na sua casa tem carro?'.
VALUE LABELS TX_RESP_Q012
'A' 'Não tem.' 
'B' 'Sim, um.' 
'C' 'Sim, dois.' 
'D' 'Sim, três.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q013 'Na sua casa tem computador?'.
VALUE LABELS TX_RESP_Q013
'A' 'Não tem.' 
'B' 'Sim, um.' 
'C' 'Sim, dois.' 
'D' 'Sim, três.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q014 'Na sua casa tem banheiro?'.
VALUE LABELS TX_RESP_Q014
'A' 'Não tem.' 
'B' 'Sim, um.' 
'C' 'Sim, dois.' 
'D' 'Sim, três.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q015 'Na sua casa tem quartos para dormir?'.
VALUE LABELS TX_RESP_Q015
'A' 'Não tem.' 
'B' 'Sim, um.' 
'C' 'Sim, dois.' 
'D' 'Sim, três.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q016 'Incluindo você, quantas pessoas vivem atualmente em sua casa?'.
VALUE LABELS TX_RESP_Q016
'A' 'Uma, pois moro sozinho(a).' 
'B' 'Duas.' 
'C' 'Três.' 
'D' 'Quatro.' 
'E' 'Cinco.' 
'F' 'Seis pessoas ou mais.'.
VARIABLE LABELS TX_RESP_Q017 'Em sua casa trabalha empregado(a) doméstico(a) pelo menos cinco dias por semana?'.
VALUE LABELS TX_RESP_Q017
'A' 'Não.' 
'B' 'Sim, um(a) empregado(a).' 
'C' 'Sim, dois(duas) empregados(as).' 
'D' 'Sim, três empregados(as).' 
'E' 'Sim, quatro ou mais empregados(as).'.
VARIABLE LABELS TX_RESP_Q018 'Você mora com sua mãe?'.
VALUE LABELS TX_RESP_Q018
'A' 'Sim.' 
'B' 'Não.' 
'C' 'Não, mas moro com outra mulher responsável por mim.'.
VARIABLE LABELS TX_RESP_Q019 'Até que série sua mãe, ou a mulher responsável por você, estudou?'.
VALUE LABELS TX_RESP_Q019
'A' 'Nunca estudou.' 
'B' 'Não completou a 4.ª série/5.º ano do Ensino Fundamental.' 
'C' 'Completou a 4.ª série/5.º ano, mas não completou a 8.ª série/9.º ano do Ensino Fundamental.' 
'D' 'Completou a 8.ª série/9.º ano do Ensino Fundamental, mas não completou o Ensino Médio.' 
'E' 'Completou o Ensino Médio, mas não completou a Faculdade.' 
'F' 'Completou a Faculdade.' 
'G' 'Não sei.'.
VARIABLE LABELS TX_RESP_Q020 'Sua mãe, ou a mulher responsável por você, sabe ler e escrever?'.
VALUE LABELS TX_RESP_Q020
'A' 'Sim.' 
'B' 'Não.'.
VARIABLE LABELS TX_RESP_Q021 'Você vê sua mãe, ou mulher responsável por você, lendo?'.
VALUE LABELS TX_RESP_Q021
'A' 'Sim.' 
'B' 'Não.'.
VARIABLE LABELS TX_RESP_Q022 'Você mora com seu pai?'.
VALUE LABELS TX_RESP_Q022
'A' 'Sim.' 
'B' 'Não.' 
'C' 'Não, mas moro com outro homem responsável por mim.'.
VARIABLE LABELS TX_RESP_Q023 'Até que série seu pai, ou o homem responsável por você, estudou?'.
VALUE LABELS TX_RESP_Q023
'A' 'Nunca estudou.' 
'B' 'Não completou a 4.ª série/5.º ano do Ensino Fundametal.' 
'C' 'Completou a 4.ª série/5.º ano, mas não completou a 8.ª série/9.º ano do Ensino Fundamental.' 
'D' 'Completou a 8.ª série/9.º ano do Ensino Fundamental, mas não completou o Ensino Médio.' 
'E' 'Completou o Ensino Médio, mas não completou a Faculdade.' 
'F' 'Completou a Faculdade.' 
'G' 'Não sei.'.
VARIABLE LABELS TX_RESP_Q024 'Seu pai, ou homem responsável por você, sabe ler e escrever?'.
VALUE LABELS TX_RESP_Q024
'A' 'Sim.' 
'B' 'Não.'.
VARIABLE LABELS TX_RESP_Q025 'Você vê o seu pai, ou homem responsável por você, lendo?'.
VALUE LABELS TX_RESP_Q025
'A' 'Sim.' 
'B' 'Não.'.
VARIABLE LABELS TX_RESP_Q026 'Com qual frequência seus pais, ou responsáveis por você, vão à reunião de pais?'.
VALUE LABELS TX_RESP_Q026
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.'.
VARIABLE LABELS TX_RESP_Q027 'Seus pais ou responsáveis incentivam você a estudar?'.
VALUE LABELS TX_RESP_Q027
'A' 'Sim.' 
'B' 'Não.'.
VARIABLE LABELS TX_RESP_Q028 'Seus pais ou responsáveis incentivam você a fazer o dever de casa e/ou os trabalhos da escola?'.
VALUE LABELS TX_RESP_Q028
'A' 'Sim.' 
'B' 'Não.'.
VARIABLE LABELS TX_RESP_Q029 'Seus pais ou responsáveis incentivam você a ler?'.
VALUE LABELS TX_RESP_Q029
'A' 'Sim.' 
'B' 'Não.'.
VARIABLE LABELS TX_RESP_Q030 'Seus pais ou responsáveis incentivam você a ir a escola e/ou não faltar às aulas?'.
VALUE LABELS TX_RESP_Q030
'A' 'Sim.' 
'B' 'Não.'.
VARIABLE LABELS TX_RESP_Q031 'Seus pais ou responsáveis conversam com você sobre o que acontece na escola?'.
VALUE LABELS TX_RESP_Q031
'A' 'Sim.' 
'B' 'Não.'.
VARIABLE LABELS TX_RESP_Q032 'Com qual frequência você lê: Jornais.'.
VALUE LABELS TX_RESP_Q032
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.'.
VARIABLE LABELS TX_RESP_Q033 'Com qual frequência você lê: Livros.'.
VALUE LABELS TX_RESP_Q033
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.'.
VARIABLE LABELS TX_RESP_Q034 'Com qual frequência você lê: Revistas em geral.'.
VALUE LABELS TX_RESP_Q034
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.'.
VARIABLE LABELS TX_RESP_Q035 'Com qual frequência você lê: Revistas em quadrinhos (gibis).'.
VALUE LABELS TX_RESP_Q035
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.'.
VARIABLE LABELS TX_RESP_Q036 'Com qual frequência você lê: Notícias na internet (ex.: blog, notícia).'.
VALUE LABELS TX_RESP_Q036
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.'.
VARIABLE LABELS TX_RESP_Q037 'Com qual frequência você costuma ir à/ao: Biblioteca.'.
VALUE LABELS TX_RESP_Q037
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.'.
VARIABLE LABELS TX_RESP_Q038 'Com qual frequência você costuma ir à/ao: Cinema.'.
VALUE LABELS TX_RESP_Q038
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.'.
VARIABLE LABELS TX_RESP_Q039 'Com qual frequência você costuma ir à/ao: Espetáculo ou exposição (teatro, museu, dança ou música).'.
VALUE LABELS TX_RESP_Q039
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.'.
VARIABLE LABELS TX_RESP_Q040 'Em dia de aula, quanto tempo você gasta assistindo à TV, navegando na internet ou jogando jogos eletrônicos?'.
VALUE LABELS TX_RESP_Q040
'A' 'Menos de 1 hora.' 
'B' 'Entre 1 e 2 horas.' 
'C' 'Mais de 2 horas, até 3 horas.' 
'D' 'Mais de 3 horas.' 
'E' 'Não vejo TV, não navego na internet e não jogo jogos eletrônicos.'.
VARIABLE LABELS TX_RESP_Q041 'Em dias de aula, quanto tempo você gasta fazendo trabalhos domésticos (ex.: lavando louça, limpando o quintal etc.)?'.
VALUE LABELS TX_RESP_Q041
'A' 'Menos de 1 hora.' 
'B' 'Entre 1 e 2 horas.' 
'C' 'Mais de 2 horas, até 3 horas.' 
'D' 'Mais de 3 horas.' 
'E' 'Não faço trabalhos domésticos.'.
VARIABLE LABELS TX_RESP_Q042 'Atualmente você trabalha fora de casa (recebendo ou não um salário)?'.
VALUE LABELS TX_RESP_Q042
'A' 'Sim.' 
'B' 'Não.'.
VARIABLE LABELS TX_RESP_Q043 'Quando você entrou na escola?'.
VALUE LABELS TX_RESP_Q043
'A' 'Na creche (0 a 3 anos).' 
'B' 'Na pré-escola (4 a 5 anos).' 
'C' 'Na primeira série ou primeiro ano (6 a 7 anos).' 
'D' 'Depois da primeira série.'.
VARIABLE LABELS TX_RESP_Q044 'A partir da primeira série ou primeiro ano, em que tipo de escola você estudou?'.
VALUE LABELS TX_RESP_Q044
'A' 'Somente em escola pública.' 
'B' 'Somente em escola particular.' 
'C' 'Em escola pública e em escola particular.'.
VARIABLE LABELS TX_RESP_Q045 'Você já foi reprovado?'.
VALUE LABELS TX_RESP_Q045
'A' 'Não.' 
'B' 'Sim, uma vez.' 
'C' 'Sim, duas vezes ou mais.'.
VARIABLE LABELS TX_RESP_Q046 'Você já abandonou a escola durante o período de aulas e ficou fora da escola o resto do ano?'.
VALUE LABELS TX_RESP_Q046
'A' 'Não.' 
'B' 'Sim, uma vez.' 
'C' 'Sim, duas vezes ou mais.'.
VARIABLE LABELS TX_RESP_Q047 'Você faz o dever de casa de Língua Portuguesa?'.
VALUE LABELS TX_RESP_Q047
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.' 
'D' 'O(A) professor(a) não passa dever de casa.'.
VARIABLE LABELS TX_RESP_Q048 'O(A) professor(a) corrige o dever de casa de Língua Portuguesa?'.
VALUE LABELS TX_RESP_Q048
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.' 
'D' 'O(A) professor(a) não passa dever de casa.'.
VARIABLE LABELS TX_RESP_Q049 'Você faz o dever de casa de Matemática?'.
VALUE LABELS TX_RESP_Q049
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.' 
'D' 'O(A) professor(a) não passa dever de casa.'.
VARIABLE LABELS TX_RESP_Q050 'O(A) professor(a) corrige o dever de casa de Matemática?'.
VALUE LABELS TX_RESP_Q050
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.' 
'D' 'O(A) professor(a) não passa dever de casa.'.
VARIABLE LABELS TX_RESP_Q051 'Você utiliza a biblioteca ou sala de leitura da sua escola?'.
VALUE LABELS TX_RESP_Q051
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.' 
'D' 'A escola não possui biblioteca ou sala de leitura.'.




