/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral do Sistema Nacional de Avalia��o da Educa��o B�sica             */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_ALUNO_3EM                                                                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DOS RESULTADOS DOS ALUNOS DO */
/*                     3� S�RIE DO ENSINO M�DIO DA ANEB 2015                                   */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* TS_ALUNO_3EM.CSV no diret�rio C:\ do computador.	                                     */
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
  /FILE="C:\TS_ALUNO_3EM.csv"
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
  ID_SERIE F2.0
  ID_ALUNO F8.0
  IN_SITUACAO_CENSO F1.0
  IN_PREENCHIMENTO_PROVA F1.0
  ID_CADERNO F2.0
  ID_BLOCO_1 F1.0
  ID_BLOCO_2 F1.0
  TX_RESP_BLOCO_1_LP A13
  TX_RESP_BLOCO_2_LP A13
  TX_RESP_BLOCO_1_MT A13
  TX_RESP_BLOCO_2_MT A13
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
  TX_RESP_Q051 A8
  TX_RESP_Q052 A8
  TX_RESP_Q053 A8
  TX_RESP_Q054 A8
  TX_RESP_Q055 A8
  TX_RESP_Q056 A8
  TX_RESP_Q057 A8
  TX_RESP_Q058 A8
  TX_RESP_Q059 A8
  TX_RESP_Q060 A8.
CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.


VARIABLE LABELS ID_PROVA_BRASIL 'Ano da ANEB/Prova Brasil'.
VARIABLE LABELS ID_REGIAO 'C�digo da Regi�o'.
VALUE LABELS ID_REGIAO
1 'Norte'
2 'Nordeste'
3 'Sudeste'
4 'Sul'
5 'Centro-Oeste'.
VARIABLE LABELS ID_UF 'C�digo da Unidade da Federa��o'.
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
VARIABLE LABELS ID_MUNICIPIO 'C�digo do Munic�pio'.
VARIABLE LABELS ID_AREA '�rea'.
VALUE LABELS ID_AREA
1 'Capital'
2 'Interior'.
VARIABLE LABELS ID_ESCOLA 'C�digo da Escola'.
VARIABLE LABELS ID_DEPENDENCIA_ADM 'Depend�ncia Administrativa'.
VALUE LABELS ID_DEPENDENCIA_ADM
1 'Federal'
2 'Estadual'
3 'Municipal'
4 'Privada'.
VARIABLE LABELS ID_LOCALIZACAO 'Localiza��o'.
VALUE LABELS ID_LOCALIZACAO
1 'Urbana'
2 'Rural'.
VARIABLE LABELS ID_TURMA 'C�digo da turma na ANEB/Prova Brasil'.
VARIABLE LABELS ID_TURNO 'Turno da turma'.
VALUE LABELS ID_TURNO
1 'Matutino'
2 'Vespertino'
3 'Noturno'.
VARIABLE LABELS ID_SERIE 'S�rie'.
VALUE LABELS ID_SERIE
12 '3� S�rie do Ensino M�dio'.
VARIABLE LABELS ID_ALUNO 'C�digo do aluno na ANEB/Prova Brasil'.
VARIABLE LABELS IN_SITUACAO_CENSO 'Indicador de Consist�ncia com o Censo Escolar 2015'. 
VALUE LABELS IN_SITUACAO_CENSO
0 'N�o consistente'
1 'Consistente'.
VARIABLE LABELS IN_PREENCHIMENTO_PROVA 'Indicador de preenchimento da prova'.
VALUE LABELS IN_PREENCHIMENTO_PROVA
0 'Prova n�o preenchida'
1 'Prova preenchida'.
VARIABLE LABELS ID_CADERNO 'Caderno de Provas'.
VARIABLE LABELS ID_BLOCO_1 'Identificador do Bloco 1 (L�ngua Portuguesa e Matem�tica)'.
VARIABLE LABELS ID_BLOCO_2 'Identificador do Bloco 2 (L�ngua Portuguesa e Matem�tica)'.
VARIABLE LABELS TX_RESP_BLOCO_1_LP 'Resposta do Aluno ao Bloco 1 da Prova de L�ngua Portuguesa'.
VARIABLE LABELS TX_RESP_BLOCO_2_LP 'Resposta do Aluno ao Bloco 2 da Prova de L�ngua Portuguesa'.
VARIABLE LABELS TX_RESP_BLOCO_1_MT 'Resposta do Aluno ao Bloco 1 da Prova de Matem�tica'.
VARIABLE LABELS TX_RESP_BLOCO_2_MT 'Resposta do Aluno ao Bloco 2 da Prova de Matem�tica'.
VARIABLE LABELS IN_PROFICIENCIA 'Indicador para c�lculo da profici�ncia (no m�nimo tr�s itens respondidos na prova)'.
VALUE LABELS IN_PROFICIENCIA
0 'N�o'
1 'Sim'.
VARIABLE LABELS IN_PROVA_BRASIL 'Indicador de participa��o na Prova Brasil'.
VALUE LABELS IN_PROVA_BRASIL
0 'N�o'
1 'Sim'.
VARIABLE LABELS ESTRATO_ANEB 'Descri��o dos estratos da ANEB'.
VARIABLE LABELS PESO_ALUNO_LP 'Peso do Aluno em L�ngua Portuguesa'.
VARIABLE LABELS PESO_ALUNO_MT 'Peso do Aluno em Matem�tica'.
VARIABLE LABELS PROFICIENCIA_LP 'Profici�ncia do aluno em L�ngua Portuguesa calculada na escala �nica do SAEB, com m�dia = 0 e desvio = 1 na popula��o de refer�ncia'.
VARIABLE LABELS DESVIO_PADRAO_LP 'Desvio padr�o da profici�ncia em L�ngua Portuguesa'.
VARIABLE LABELS PROFICIENCIA_LP_SAEB 'Profici�ncia em L�ngua Portuguesa transformada na escala �nica do SAEB, com m�dia = 250, desvio = 50 (do SAEB/97)'.
VARIABLE LABELS DESVIO_PADRAO_LP_SAEB 'Desvio padr�o da profici�ncia transformada em L�ngua Portuguesa'.
VARIABLE LABELS PROFICIENCIA_MT 'Profici�ncia do aluno em Matem�tica calculada na escala �nica do SAEB, com m�dia = 0 e desvio = 1 na popula��o de refer�ncia'.
VARIABLE LABELS DESVIO_PADRAO_MT 'Desvio padr�o da profici�ncia em Matem�tica'.
VARIABLE LABELS PROFICIENCIA_MT_SAEB 'Profici�ncia do aluno em Matem�tica transformada na escala �nica do SAEB, com m�dia = 250, desvio = 50 (do SAEB/97)'.
VARIABLE LABELS DESVIO_PADRAO_MT_SAEB 'Desvio padr�o da profici�ncia transformada em Matem�tica'.
VARIABLE LABELS IN_PREENCHIMENTO_QUESTIONARIO 'Indicador de preenchimento do question�rio'.
VALUE LABELS IN_PREENCHIMENTO_QUESTIONARIO
0 'N�o preenchido'
1 'Preenchido parcial ou totalmente'.
VARIABLE LABELS TX_RESP_Q001 'Qual � o seu sexo?'.
VALUE LABELS TX_RESP_Q001
'A' 'Masculino.' 
'B' 'Feminino.'.
VARIABLE LABELS TX_RESP_Q002 'Como voc� se considera?'.
VALUE LABELS TX_RESP_Q002
'A' 'Branco(a).' 
'B' 'Pardo(a).' 
'C' 'Preto(a).' 
'D' 'Amarelo(a).' 
'E' 'Ind�gena.' 
'F' 'N�o Sei.'.
VARIABLE LABELS TX_RESP_Q003 'Voc� poderia nos dizer qual � o m�s de seu anivers�rio?'.
VALUE LABELS TX_RESP_Q003
'A' 'Janeiro.' 
'B' 'Fevereiro.' 
'C' 'Mar�o.' 
'D' 'Abril.' 
'E' 'Maio.' 
'F' 'Junho.' 
'G' 'Julho.' 
'H' 'Agosto.' 
'I' 'Setembro.' 
'J' 'Outubro.' 
'K' 'Novembro.' 
'L' 'Dezembro.'.
VARIABLE LABELS TX_RESP_Q004 'Em que ano voc� nasceu?'.
VALUE LABELS TX_RESP_Q004
'A' '2000 ou mais.' 
'B' '1999.' 
'C' '1998.' 
'D' '1997.' 
'E' '1996.' 
'F' '1995.' 
'G' '1994.' 
'H' '1993 ou antes.'.
VARIABLE LABELS TX_RESP_Q005 'Na sua casa tem televis�o em cores?'.
VALUE LABELS TX_RESP_Q005
'A' 'N�o tem.' 
'B' 'Sim, uma.' 
'C' 'Sim, duas.' 
'D' 'Sim, tr�s.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q006 'Na sua casa tem r�dio?'.
VALUE LABELS TX_RESP_Q006
'A' 'N�o tem.' 
'B' 'Sim, um.' 
'C' 'Sim, dois.' 
'D' 'Sim, tr�s.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q007 'Na sua casa tem videocassete e/ou DVD?'.
VALUE LABELS TX_RESP_Q007
'A' 'N�o tem.' 
'B' 'Sim, um.' 
'C' 'Sim, dois.' 
'D' 'Sim, tr�s.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q008 'Na sua casa tem geladeira?'.
VALUE LABELS TX_RESP_Q008
'A' 'N�o tem.' 
'B' 'Sim, uma.' 
'C' 'Sim, duas.' 
'D' 'Sim, tr�s.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q009 'Na sua casa tem freezer (parte da geladeira duplex)?'.
VALUE LABELS TX_RESP_Q009
'A' 'N�o tem.' 
'B' 'Sim, um.' 
'C' 'Sim, dois.' 
'D' 'Sim, tr�s.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q010 'Na sua casa tem freezer separado da geladeira?'.
VALUE LABELS TX_RESP_Q010
'A' 'N�o tem.' 
'B' 'Sim, um.' 
'C' 'Sim, dois.' 
'D' 'Sim, tr�s.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q011 'Na sua casa tem m�quina de lavar roupa (O tanquinho N�O deve ser considerado)?'.
VALUE LABELS TX_RESP_Q011
'A' 'N�o tem.' 
'B' 'Sim, uma.' 
'C' 'Sim, duas.' 
'D' 'Sim, tr�s.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q012 'Na sua casa tem carro?'.
VALUE LABELS TX_RESP_Q012
'A' 'N�o tem.' 
'B' 'Sim, um.' 
'C' 'Sim, dois.' 
'D' 'Sim, tr�s.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q013 'Na sua casa tem computador?'.
VALUE LABELS TX_RESP_Q013
'A' 'N�o tem.' 
'B' 'Sim, um.' 
'C' 'Sim, dois.' 
'D' 'Sim, tr�s.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q014 'Na sua casa tem banheiro?'.
VALUE LABELS TX_RESP_Q014
'A' 'N�o tem.' 
'B' 'Sim, um.' 
'C' 'Sim, dois.' 
'D' 'Sim, tr�s.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q015 'Na sua casa tem quartos para dormir?'.
VALUE LABELS TX_RESP_Q015
'A' 'N�o tem.' 
'B' 'Sim, um.' 
'C' 'Sim, dois.' 
'D' 'Sim, tr�s.' 
'E' 'Sim, quatro ou mais.'.
VARIABLE LABELS TX_RESP_Q016 'Incluindo voc�, quantas pessoas vivem atualmente em sua casa?'.
VALUE LABELS TX_RESP_Q016
'A' 'Uma, pois moro sozinho(a).' 
'B' 'Duas.' 
'C' 'Tr�s.' 
'D' 'Quatro.' 
'E' 'Cinco.' 
'F' 'Seis pessoas ou mais.'.
VARIABLE LABELS TX_RESP_Q017 'Em sua casa trabalha empregado(a) dom�stico(a) pelo menos cinco dias por semana?'.
VALUE LABELS TX_RESP_Q017
'A' 'N�o.' 
'B' 'Sim, um(a) empregado(a).' 
'C' 'Sim, dois(duas) empregados(as).' 
'D' 'Sim, tr�s empregados(as).' 
'E' 'Sim, quatro ou mais empregados(as).'.
VARIABLE LABELS TX_RESP_Q018 'Voc� mora com sua m�e?'.
VALUE LABELS TX_RESP_Q018
'A' 'Sim.' 
'B' 'N�o.' 
'C' 'N�o, mas moro com outra mulher respons�vel por mim.'.
VARIABLE LABELS TX_RESP_Q019 'At� que s�rie sua m�e, ou a mulher respons�vel por voc�, estudou?'.
VALUE LABELS TX_RESP_Q019
'A' 'Nunca estudou.' 
'B' 'N�o completou a 4.� s�rie/5.� ano do Ensino Fundamental.' 
'C' 'Completou a 4.� s�rie/5.� ano, mas n�o completou a 8.� s�rie/9.� ano do Ensino Fundamental.' 
'D' 'Completou a 8.� s�rie/9.� ano do Ensino Fundamental, mas n�o completou o Ensino M�dio.' 
'E' 'Completou o Ensino M�dio, mas n�o completou a Faculdade.' 
'F' 'Completou a Faculdade.' 
'G' 'N�o sei.'.
VARIABLE LABELS TX_RESP_Q020 'Sua m�e, ou a mulher respons�vel por voc�, sabe ler e escrever?'.
VALUE LABELS TX_RESP_Q020
'A' 'Sim.' 
'B' 'N�o.'.
VARIABLE LABELS TX_RESP_Q021 'Voc� v� sua m�e, ou mulher respons�vel por voc�, lendo?'.
VALUE LABELS TX_RESP_Q021
'A' 'Sim.' 
'B' 'N�o.'.
VARIABLE LABELS TX_RESP_Q022 'Voc� mora com seu pai?'.
VALUE LABELS TX_RESP_Q022
'A' 'Sim.' 
'B' 'N�o.'
'C' 'N�o, moro com outro homem respons�vel por mim.'.
VARIABLE LABELS TX_RESP_Q023 'At� que s�rie seu pai, ou o homem respons�vel por voc�, estudou?'.
VALUE LABELS TX_RESP_Q023
'A' 'Nunca estudou.' 
'B' 'N�o completou a 4.� s�rie/5.� ano do Ensino Fundamental.' 
'C' 'Completou a 4.� s�rie/5.� ano, mas n�o completou a 8.� s�rie/9.� ano do Ensino Fundamental.' 
'D' 'Completou a 8.� s�rie/9.� ano do Ensino Fundamental, mas n�o completou o Ensino M�dio.' 
'E' 'Completou o Ensino M�dio, mas n�o completou a Faculdade.' 
'F' 'Completou a Faculdade.' 
'G' 'N�o sei.'.
VARIABLE LABELS TX_RESP_Q024 'Seu pai, ou homem respons�vel por voc�, sabe ler e escrever?'.
VALUE LABELS TX_RESP_Q024
'A' 'Sim.' 
'B' 'N�o.'.
VARIABLE LABELS TX_RESP_Q025 'Voc� v� o seu pai, ou homem respons�vel por voc�, lendo?'.
VALUE LABELS TX_RESP_Q025
'A' 'Sim.' 
'B' 'N�o.'.
VARIABLE LABELS TX_RESP_Q026 'Com qual frequ�ncia seus pais, ou respons�veis por voc�, v�o � reuni�o de pais?'.
VALUE LABELS TX_RESP_Q026
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.'.
VARIABLE LABELS TX_RESP_Q027 'Seus pais ou respons�veis incentivam voc� a estudar?'.
VALUE LABELS TX_RESP_Q027
'A' 'Sim.' 
'B' 'N�o.'.
VARIABLE LABELS TX_RESP_Q028 'Seus pais ou respons�veis incentivam voc� a fazer o dever de casa e/ou os trabalhos da escola?'.
VALUE LABELS TX_RESP_Q028
'A' 'Sim.' 
'B' 'N�o.'.
VARIABLE LABELS TX_RESP_Q029 'Seus pais ou respons�veis incentivam voc� a ler?'.
VALUE LABELS TX_RESP_Q029
'A' 'Sim.' 
'B' 'N�o.'.
VARIABLE LABELS TX_RESP_Q030 'Seus pais ou respons�veis incentivam voc� a ir a escola e/ou n�o faltar �s aulas?'.
VALUE LABELS TX_RESP_Q030
'A' 'Sim.' 
'B' 'N�o.'.
VARIABLE LABELS TX_RESP_Q031 'Seus pais ou respons�veis conversam com voc� sobre o que acontece na escola?'.
VALUE LABELS TX_RESP_Q031
'A' 'Sim.' 
'B' 'N�o.'.
VARIABLE LABELS TX_RESP_Q032 'Com qual frequ�ncia voc� l�: Revistas informativas em geral.'.
VALUE LABELS TX_RESP_Q032
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.'.
VARIABLE LABELS TX_RESP_Q033 'Com qual frequ�ncia voc� l�: Gibis.'.
VALUE LABELS TX_RESP_Q033
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.'.
VARIABLE LABELS TX_RESP_Q034 'Com qual frequ�ncia voc� l�: Livros em geral.'.
VALUE LABELS TX_RESP_Q034
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.'.
VARIABLE LABELS TX_RESP_Q035 'Com qual frequ�ncia voc� l�: Not�cias e/ou textos na internet.'.
VALUE LABELS TX_RESP_Q035
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.'.
VARIABLE LABELS TX_RESP_Q036 'Em dias de aula, quanto tempo voc� gasta assistindo � TV, navegando na internet ou jogando jogos eletr�nicos?'.
VALUE LABELS TX_RESP_Q036
'A' 'Menos de 1 hora.' 
'B' 'Entre 1 e 2 horas.' 
'C' 'Mais de 2 horas, at� 3 horas.' 
'D' 'Mais de 3 horas.' 
'E' 'N�o vejo TV, n�o navego na internet e n�o jogo jogos eletr�nicos.'.
VARIABLE LABELS TX_RESP_Q037 'Em dias de aula, quanto tempo voc� gasta fazendo trabalhos dom�sticos (ex.: lavando lou�a, limpando o quintal etc.)?'.
VALUE LABELS TX_RESP_Q037
'A' 'Menos de 1 hora.' 
'B' 'Entre 1 e 2 horas.' 
'C' 'Mais de 2 horas, at� 3 horas.' 
'D' 'Mais de 3 horas.' 
'E' 'N�o fa�o trabalhos dom�sticos.'.
VARIABLE LABELS TX_RESP_Q038 'Atualmente voc� trabalha fora de casa (recebendo ou n�o um sal�rio)?'.
VALUE LABELS TX_RESP_Q038
'A' 'Sim.' 
'B' 'N�o.'.
VARIABLE LABELS TX_RESP_Q039 'Quando voc� come�ou a estudar?'.
VALUE LABELS TX_RESP_Q039
'A' 'Na creche (0 a 3 anos).' 
'B' 'Na pr�-escola (4 a 5 anos).' 
'C' 'Na primeira s�rie ou primeiro ano (6 a 7 anos).' 
'D' 'Depois da primeira s�rie.'.
VARIABLE LABELS TX_RESP_Q040 'A partir da primeira s�rie do Ensino M�dio, em que tipo de escola voc� estudou?'.
VALUE LABELS TX_RESP_Q040
'A' 'Somente em escola p�blica.' 
'B' 'Somente em escola particular.' 
'C' 'Em escola p�blica e em escola particular.'.
VARIABLE LABELS TX_RESP_Q041 'Voc� j� foi reprovado?'.
VALUE LABELS TX_RESP_Q041
'A' 'N�o.' 
'B' 'Sim, uma vez.' 
'C' 'Sim, duas vezes ou mais.'.
VARIABLE LABELS TX_RESP_Q042 'Voc� j� abandonou a escola durante o per�odo de aulas e ficou fora da escola o resto do ano?'.
VALUE LABELS TX_RESP_Q042
'A' 'N�o.' 
'B' 'Sim, uma vez.' 
'C' 'Sim, duas vezes ou mais.'.
VARIABLE LABELS TX_RESP_Q043 'Voc� concluiu o Ensino Fundamental na Educa��o de Jovens e Adultos(EJA), antigo supletivo?'.
VALUE LABELS TX_RESP_Q043
'A' 'Sim.' 
'B' 'N�o.'.
VARIABLE LABELS TX_RESP_Q044 'Voc� gosta de estudar L�ngua Portuguesa?'.
VALUE LABELS TX_RESP_Q044
'A' 'Sim.' 
'B' 'N�o.'.
VARIABLE LABELS TX_RESP_Q045 'Voc� faz o dever de casa de L�ngua Portuguesa?'.
VALUE LABELS TX_RESP_Q045
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.' 
'D' 'O(A) professor(a) n�o passa dever de casa.'.
VARIABLE LABELS TX_RESP_Q046 'O que voc� consulta para fazer o dever de casa de L�ngua Portuguesa? Jornais.'.
VALUE LABELS TX_RESP_Q046
'A' 'Sim.' 
'B' 'N�o.' 
'C' 'O(A) professor(a) n�o passa dever de casa.' 
'D' 'Depois da primeira s�rie.'.
VARIABLE LABELS TX_RESP_Q047 'O que voc� consulta para fazer o dever de casa de L�ngua Portuguesa? Revistas de Informa��o geral.'.
VALUE LABELS TX_RESP_Q047
'A' 'Sim.' 
'B' 'N�o.' 
'C' 'O(A) professor(a) n�o passa dever de casa.'.
VARIABLE LABELS TX_RESP_Q048 'O que voc� consulta para fazer o dever de casa de L�ngua Portuguesa? Livros did�ticos.'.
VALUE LABELS TX_RESP_Q048
'A' 'Sim.' 
'B' 'N�o.' 
'C' 'O(A) professor(a) n�o passa dever de casa.'.
VARIABLE LABELS TX_RESP_Q049 'O que voc� consulta para fazer o dever de casa de L�ngua Portuguesa? Livros ou enciclop�dias.'.
VALUE LABELS TX_RESP_Q049
'A' 'Sim.' 
'B' 'N�o.' 
'C' 'O(A) professor(a) n�o passa dever de casa.'.
VARIABLE LABELS TX_RESP_Q050 'O que voc� consulta para fazer o dever de casa de L�ngua Portuguesa? Sites da internet.'.
VALUE LABELS TX_RESP_Q050
'A' 'Sim.' 
'B' 'N�o.' 
'C' 'O(A) professor(a) n�o passa dever de casa.'.
VARIABLE LABELS TX_RESP_Q051 'O professor corrige o dever de casa de L�ngua Portuguesa?'.
VALUE LABELS TX_RESP_Q051
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.' 
'D' 'O(A) professor(a) n�o passa dever de casa.'.
VARIABLE LABELS TX_RESP_Q052 'Voc� gosta de estudar Matem�tica?'.
VALUE LABELS TX_RESP_Q052
'A' 'Sim.' 
'B' 'N�o.'.
VARIABLE LABELS TX_RESP_Q053 'Voc� faz o dever de casa de Matem�tica?'.
VALUE LABELS TX_RESP_Q053
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.' 
'D' 'O(A) professor(a) n�o passa dever de casa.'.
VARIABLE LABELS TX_RESP_Q054 'O que voc� consulta para fazer o dever de casa de Matem�tica? Caderno.'.
VALUE LABELS TX_RESP_Q054
'A' 'Sim.' 
'B' 'N�o.' 
'C' 'O(A) professor(a) n�o passa dever de casa.'.
VARIABLE LABELS TX_RESP_Q055 'O que voc� consulta para fazer o dever de casa de Matem�tica? Livros did�ticos.'.
VALUE LABELS TX_RESP_Q055
'A' 'Sim.' 
'B' 'N�o.' 
'C' 'O(A) professor(a) n�o passa dever de casa.'.
VARIABLE LABELS TX_RESP_Q056 'O que voc� consulta para fazer o dever de casa de Matem�tica? Material complementar.'.
VALUE LABELS TX_RESP_Q056
'A' 'Sim.' 
'B' 'N�o.' 
'C' 'O(A) professor(a) n�o passa dever de casa.'.
VARIABLE LABELS TX_RESP_Q057 'O que voc� consulta para fazer o dever de casa de Matem�tica? Revistas e jornais.'.
VALUE LABELS TX_RESP_Q057
'A' 'Sim.' 
'B' 'N�o.' 
'C' 'O(A) professor(a) n�o passa dever de casa.'.
VARIABLE LABELS TX_RESP_Q058 'O que voc� consulta para fazer o dever de casa de Matem�tica? Sites da internet.'.
VALUE LABELS TX_RESP_Q058
'A' 'Sim.' 
'B' 'N�o.' 
'C' 'O(A) professor(a) n�o passa dever de casa.'.
VARIABLE LABELS TX_RESP_Q059 'O professor corrige o dever de casa de Matem�tica?'.
VALUE LABELS TX_RESP_Q059
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.' 
'D' 'O(A) professor(a) n�o passa dever de casa.'.
VARIABLE LABELS TX_RESP_Q060 'Voc� utiliza a biblioteca ou sala de leitura da sua escola?'.
VALUE LABELS TX_RESP_Q060
'A' 'Sempre ou quase sempre.' 
'B' 'De vez em quando.' 
'C' 'Nunca ou quase nunca.' 
'D' 'A escola n�o possui.'.






