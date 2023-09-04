/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                */ 
/*                                   			                                       */
/*  Coordena��o-Geral do Sistema Nacional de Avalia��o da Educa��o B�sica              */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_TS_PROFESSOR                                                */
/*-------------------------------------------------------------------------------------*/
/*  DESCRICAO:     PROGRAMA PARA LEITURA DOS QUESTION�RIOS DOS                         */
/*                   PROFESSORES DA ANEB/PROVA BRASIL 2015                             */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, � necess�rio salvar este programa e o arquivo             */
/* TS_PROFESSOR.CSV no diret�rio C:\ do computador.	                                   */
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
/***************************************************************************************/

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

value ID_SERIE
5='4� s�rie/5� ano EF'
9='8� s�rie/9� ano EF'
12='3� S�rie do Ensino M�dio';

value IN_PREENCHIMENTO_QUESTIONARIO
0='N�o preenchido'
1='Preenchido parcial ou totalmente';

value $QPum
A = 'Masculino'
B = 'Feminino';

value $QPdois
A = 'At� 24 anos'
B = 'De 25 a 29 anos'
C = 'De 30 a 39 anos'
D = 'De 40 a 49 anos'
E = 'De 50 a 54 anos'
F = '55 anos ou mais';

value $QPtres
A = 'Branco (a)'
B = 'Pardo (a)'
C = 'Preto (a)'
D = 'Amarelo (a)'
E = 'Ind�gena'
F = 'N�o quero declarar'
G = 'N�o sei';

value $QPquatro
A = 'Menos que o Ensino M�dio (antigo 2� grau)'
B = 'Ensino M�dio - Magist�rio (antigo 2� grau)'
C = 'Ensino  M�dio - Outros (antigo 2� grau)'
D = 'Ensino Superior - Pedagogia'
E = 'Ensino Superior - Curso Normal Superior'
F = 'Ensino Superior - Licenciatura em Matem�tica'
G = 'Ensino Superior - Licenciatura em Letras'
H = 'Ensino Superior � Outras Licenciaturas'
I = 'Ensino Superior - Outras �reas';

value $QPcinco
A = 'H� menos de 2 anos'
B = 'De 2 a 7 anos'
C = 'De 8 a 14 anos'
D = 'De 15 a 20 anos'
E = 'H� mais de 20 anos';

value $QPseis
A = 'N�o conclu� o ensino superior'
B = 'Privada'
C = 'P�blica Federal'
D = 'P�blica Estadual'
E = 'P�blica Municipal';

value $QPsete
A = 'N�o conclu� o ensino superior'
B = 'Presencial'
C = 'Semipresencial'
D = 'A dist�ncia';

value $QPoito
A = 'N�o fiz ou n�o completei curso de p�s-gradua��o'
B = 'Atualiza��o ou Aperfei�oamento (m�nimo de 180 horas)'
C = 'Especializa��o (m�nimo de 360 horas)'
D = 'Mestrado'
E = 'Doutorado';

value $QPnove
A = 'N�o fiz ou n�o completei curso de p�s-gradua��o'
B = 'Educa��o, enfatizando alfabetiza��o'
C = 'Educa��o, enfatizando lingu�stica e/ou letramento'
D = 'Educa��o, enfatizando educa��o matem�tica'
E = 'Educa��o - outras �nfases'
F = 'Outras �reas que n�o a Educa��o';

value $QPdez
A = 'At� R$ 788,00'
B = 'Entre R$ 788,01 e R$ 1.182,00'
C = 'Entre R$ 1.182,01 e R$ 1.576,00'
D = 'Entre R$ 1.576,01 e R$ 1.970,00'
E = 'Entre R$ 1.970,01 e R$ 2.364,00'
F = 'Entre R$ 2.364,01 e R$ 2.758,00'
G = 'Entre R$ 2.758,01 e R$ 3.152,00'
H = 'Entre R$ 3.152,01 e R$ 3.940,00'
I = 'Entre R$ 3.940,01 e R$ 5.516,00'
J = 'Entre R$ 5.516,01 e R$ 7.788,00'
K = 'R$ 7.788,01 ou mais';

value $QPonze
A = 'Sim, na �rea de educa��o'
B = 'Sim, fora da �rea de educa��o'
C = 'N�o';

value $QPdoze
A = 'At� R$ 788,00'
B = 'Entre R$ 788,01 e R$ 1.182,00'
C = 'Entre R$ 1.182,01 e R$ 1.576,00'
D = 'Entre R$ 1.576,01 e R$ 1.970,00'
E = 'Entre R$ 1.970,01 e R$ 2.364,00'
F = 'Entre R$ 2.364,01 e R$ 2.758,00'
G = 'Entre R$ 2.758,01 e R$ 3.152,00'
H = 'Entre R$ 3.152,01 e R$ 3.940,00'
I = 'Entre R$ 3.940,01 e R$ 5.516,00'
J = 'Entre R$ 5.516,01 e R$ 7.788,00'
K = 'R$ 7.788,01 ou mais';

value $QPtreze
A = 'Meu primeiro ano'
B = '1-2 anos'
C = '3-5 anos'
D = '6-10 anos'
E = '11-15 anos'
F = '16-20 anos'
G = 'Mais de 20 anos';

value $QPcatorze
A = 'Meu primeiro ano'
B = '1-2 anos'
C = '3-5 anos'
D = '6-10 anos'
E = '11-15 anos'
F = '16-20 anos'
G = 'Mais de 20 anos';

value $QPquinze
A = 'Meu primeiro ano'
B = '1-2 anos'
C = '3-5 anos'
D = '6-10 anos'
E = '11-15 anos'
F = '16-20 anos'
G = 'Mais de 20 anos';

value $QPdezesseis
A = 'Estatut�rio'
B = 'CLT'
C = 'Prestador de servi�o por contrato tempor�rio'
D = 'Prestador de servi�o sem contrato'
E = 'Outra';

value $QPdezessete
A = 'Mais de 40 horas'
B = '40 horas'
C = 'De 20 a 39 horas'
D = 'Menos de 20 horas';

value $QPdezoito
A = 'Apenas nesta escola'
B = 'Em 2 escolas'
C = 'Em 3 escolas'
D = 'Em 4 ou mais escolas';

value $QPdezenove
A = 'Mais de 40 horas'
B = '40 horas'
C = 'De 20 a 39 horas'
D = 'Menos de 20 horas';

value $QPvinte
A = 'Nenhuma'
B = 'Menos de 1/3 da carga hor�ria'
C = '1/3 da carga hor�ria'
D = 'Mais de 1/3 da carga hor�ria';

value $QPvinteum
A = 'N�o participei'
B = 'Sim, e n�o houve impacto'
C = 'Sim, e houve um pequeno impacto'
D = 'Sim, e houve um impacto moderado'
E = 'Sim, e houve um grande impacto';

value $QPvintedois
A = 'N�o participei'
B = 'Sim, e n�o houve impacto'
C = 'Sim, e houve um pequeno impacto'
D = 'Sim, e houve um impacto moderado'
E = 'Sim, e houve um grande impacto';

value $QPvintetres
A = 'N�o participei'
B = 'Sim, e n�o houve impacto'
C = 'Sim, e houve um pequeno impacto'
D = 'Sim, e houve um impacto moderado'
E = 'Sim, e houve um grande impacto';

value $QPvintequatro
A = 'N�o participei'
B = 'Sim, e n�o houve impacto'
C = 'Sim, e houve um pequeno impacto'
D = 'Sim, e houve um impacto moderado'
E = 'Sim, e houve um grande impacto';

value $QPvintecinco
A = 'Nenhuma'
B = 'Algumas'
C = 'Todas';

value $QPvinteseis
A = 'N�o h� necessidade'
B = 'Baixo n�vel de necessidade'
C = 'N�vel moderado de necessidade'
D = 'Alto n�vel de necessidade';

value $QPvintesete
A = 'N�o h� necessidade'
B = 'Baixo n�vel de necessidade'
C = 'N�vel moderado de necessidade'
D = 'Alto n�vel de necessidade';

value $QPvinteoito
A = 'N�o h� necessidade'
B = 'Baixo n�vel de necessidade'
C = 'N�vel moderado de necessidade'
D = 'Alto n�vel de necessidade';

value $QPvintenove
A = 'N�o h� necessidade'
B = 'Baixo n�vel de necessidade'
C = 'N�vel moderado de necessidade'
D = 'Alto n�vel de necessidade';

value $QPtrinta
A = 'N�o h� necessidade'
B = 'Baixo n�vel de necessidade'
C = 'N�vel moderado de necessidade'
D = 'Alto n�vel de necessidade';

value $QPtrintaum
A = 'N�o h� necessidade'
B = 'Baixo n�vel de necessidade'
C = 'N�vel moderado de necessidade'
D = 'Alto n�vel de necessidade';

value $QPtrintadois
A = 'N�o h� necessidade'
B = 'Baixo n�vel de necessidade'
C = 'N�vel moderado de necessidade'
D = 'Alto n�vel de necessidade';

value $QPtrintatres
A = 'N�o'
B = 'Sim';

value $QPtrintaquatro
A = 'N�o gostaria de ter participado'
B = 'N�o'
C = 'Sim';

value $QPtrintacinco
A = 'N�o gostaria de ter participado'
B = 'N�o'
C = 'Sim';

value $QPtrintaseis
A = 'N�o gostaria de ter participado'
B = 'N�o'
C = 'Sim';

value $QPtrintasete
A = 'N�o gostaria de ter participado'
B = 'N�o'
C = 'Sim';

value $QPtrintaoito
A = 'Nunca ou quase nunca'
B = 'De vez em quando'
C = 'Sempre ou quase sempre';

value $QPtrintanove
A = 'Nunca ou quase nunca'
B = 'De vez em quando'
C = 'Sempre ou quase sempre';

value $QPquarenta
A = 'Nunca ou quase nunca'
B = 'De vez em quando'
C = 'Sempre ou quase sempre';

value $QPquarentaum
A = 'Nunca ou quase nunca'
B = 'De vez em quando'
C = 'Sempre ou quase sempre';

value $QPquarentadois
A = 'Nunca ou quase nunca'
B = 'De vez em quando'
C = 'Sempre ou quase sempre';

value $QPquarentatres
A = 'Nunca ou quase nunca'
B = 'De vez em quando'
C = 'Sempre ou quase sempre';

value $QPquarentaquatro
A = 'N�o utilizo porque a escola n�o tem'
B = 'Nunca'
C = 'De vez em quando'
D = 'Sempre ou quase sempre';

value $QPquarentacinco
A = 'N�o utilizo porque a escola n�o tem'
B = 'Nunca'
C = 'De vez em quando'
D = 'Sempre ou quase sempre';

value $QPquarentaseis
A = 'N�o utilizo porque a escola n�o tem'
B = 'Nunca'
C = 'De vez em quando'
D = 'Sempre ou quase sempre';

value $QPquarentasete
A = 'N�o utilizo porque a escola n�o tem'
B = 'Nunca'
C = 'De vez em quando'
D = 'Sempre ou quase sempre';

value $QPquarentaoito
A = 'N�o utilizo porque a escola n�o tem'
B = 'Nunca'
C = 'De vez em quando'
D = 'Sempre ou quase sempre';

value $QPquarentanove
A = 'N�o utilizo porque a escola n�o tem'
B = 'Nunca'
C = 'De vez em quando'
D = 'Sempre ou quase sempre';

value $QPcinquenta
A = 'N�o utilizo porque a escola n�o tem'
B = 'Nunca'
C = 'De vez em quando'
D = 'Sempre ou quase sempre';

value $QPcinquentaum
A = 'N�o sei como foi desenvolvido'
B = 'N�o existe Projeto Pedag�gico'
C = 'Utilizando-se um modelo pronto, sem discuss�o com a equipe escolar'
D = 'Utilizando-se um modelo pronto, mas com discuss�o com a equipe escolar'
E = 'Utilizando-se um modelo pronto, por�m com adapta��es, sem discuss�o com a equipe escolar'
F = 'Utilizando-se um modelo pronto, por�m com adapta��es e com discuss�o com a equipe escolar'
G = 'Elaborou-se um modelo pr�prio, mas n�o houve discuss�o com a equipe escolar'
H = 'Elaborou-se um modelo pr�prio e houve discuss�o com a equipe escolar';

value $QPcinquentadois
A = 'N�o existe Conselho de Classe nesta escola'
B = 'Nenhuma vez'
C = 'Uma vez'
D = 'Duas vezes'
E = 'Tr�s vezes ou mais';

value $QPcinquentatres
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente';

value $QPcinquentaquatro
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente';

value $QPcinquentacinco
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente';

value $QPcinquentaseis
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente';

value $QPcinquentasete
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente';

value $QPcinquentaoito
A = 'Nunca'
B = 'Algumas vezes'
C = 'Frequentemente'
D = 'Sempre ou quase sempre';

value $QPcinquentanove
A = 'Nunca'
B = 'Algumas vezes'
C = 'Frequentemente'
D = 'Sempre ou quase sempre';

value $QPsessenta
A = 'Nunca'
B = 'Algumas vezes'
C = 'Frequentemente'
D = 'Sempre ou quase sempre';

value $QPsessentaum
A = 'Nunca'
B = 'Algumas vezes'
C = 'Frequentemente'
D = 'Sempre ou quase sempre';

value $QPsessentadois
A = 'Nunca'
B = 'Algumas vezes'
C = 'Frequentemente'
D = 'Sempre ou quase sempre';

value $QPsessentatres
A = 'Nunca'
B = 'Algumas vezes'
C = 'Frequentemente'
D = 'Sempre ou quase sempre';

value $QPsessentaquatro
A = 'Nunca'
B = 'Algumas vezes'
C = 'Frequentemente'
D = 'Sempre ou quase sempre';

value $QPsessentacinco
A = 'Nunca'
B = 'Algumas vezes'
C = 'Frequentemente'
D = 'Sempre ou quase sempre';

value $QPsessentaseis
A = 'Nunca'
B = 'Algumas vezes'
C = 'Frequentemente'
D = 'Sempre ou quase sempre';

value $QPsessentasete
A = 'Nunca'
B = 'Algumas vezes'
C = 'Frequentemente'
D = 'Sempre ou quase sempre';

value $QPsessentaoito
A = 'Nunca'
B = 'Algumas vezes'
C = 'Frequentemente'
D = 'Sempre ou quase sempre';

value $QPsessentanove
A = 'Nunca'
B = 'Algumas vezes'
C = 'Frequentemente'
D = 'Sempre ou quase sempre';

value $QPsetenta
A = 'Sim'
B = 'N�o';

value $QPsetentaum
A = 'Sim'
B = 'N�o';

value $QPsetentadois
A = 'Sim'
B = 'N�o';

value $QPsetentatres
A = 'Sim'
B = 'N�o';

value $QPsetentaquatro
A = 'Sim'
B = 'N�o';

value $QPsetentacinco
A = 'Sim'
B = 'N�o';

value $QPsetentaseis
A = 'Sim'
B = 'N�o';

value $QPsetentasete
A = 'Sim'
B = 'N�o';

value $QPsetentaoito
A = 'Sim'
B = 'N�o';

value $QPsetentanove
A = 'Sim'
B = 'N�o';

value $QPoitenta
A = 'Sim'
B = 'N�o';

value $QPoitentaum
A = 'Sim'
B = 'N�o';

value $QPoitentadois
A = 'Sim'
B = 'N�o';

value $QPoitentatres
A = 'Sim'
B = 'N�o';

value $QPoitentaquatro
A = 'Sim'
B = 'N�o';

value $QPoitentacinco
A = 'Sim'
B = 'N�o';

value $QPoitentaseis
A = 'Sim'
B = 'N�o';

value $QPoitentasete
A = 'Sim'
B = 'N�o';

value $QPoitentaoito
A = 'Sim'
B = 'N�o';

value $QPoitentanove
A = 'Sim'
B = 'N�o';

value $QPnoventa
A = 'Sim'
B = 'N�o';

value $QPnoventaum
A = 'Sim'
B = 'N�o';

value $QPnoventadois
A = 'Sim'
B = 'N�o';

value $QPnoventatres
A = 'Poucos alunos'
B = 'Um pouco menos da metade dos alunos'
C = 'Um pouco mais da metade dos alunos'
D = 'Quase todos os alunos';

value $QPnoventaquatro
A = 'Poucos alunos'
B = 'Um pouco menos da metade dos alunos'
C = 'Um pouco mais da metade dos alunos'
D = 'Quase todos os alunos';

value $QPnoventacinco
A = 'Poucos alunos'
B = 'Um pouco menos da metade dos alunos'
C = 'Um pouco mais da metade dos alunos'
D = 'Quase todos os alunos';

value $QPnoventaseis
A = 'Poucos alunos'
B = 'Um pouco menos da metade dos alunos'
C = 'Um pouco mais da metade dos alunos'
D = 'Quase todos os alunos';

value $QPnoventasete
A = 'Sim'
B = 'N�o';

value $QPnoventaoito
A = 'Sim'
B = 'N�o'
C = 'N�o sei';

value $QPnoventanove
A = 'N�o, esta turma n�o recebeu o livro did�tico'
B = 'Sim, menos da metade da turma tem'
C = 'Sim, metade da turma tem'
D = 'Sim, a maioria tem'
E = 'Sim, todos t�m';

value $QPcem
A = 'Sim'
B = 'N�o'
C = 'N�o sei';

value $QPcemum
A = 'N�o utilizo livros did�ticos'
B = 'Ruim'
C = 'Razo�vel'
D = 'Boa'
E = '�tima';

value $QPcemdois
A = 'Menos de 10%'
B = 'De 10% a menos de 20%'
C = 'De 20% a menos de 40%'
D = 'De 40% a menos de 60%'
E = 'De 60% a menos de 80%'
F = '80% ou mais';

value $QPcemtres
A = 'Menos de 10%'
B = 'De 10% a menos de 20%'
C = 'De 20% a menos de 40%'
D = 'De 40% a menos de 60%'
E = 'De 60% a menos de 80%'
F = '80% ou mais';

value $QPcemquatro
A = 'Menos de 10%'
B = 'De 10% a menos de 20%'
C = 'De 20% a menos de 40%'
D = 'De 40% a menos de 60%'
E = 'De 60% a menos de 80%'
F = '80% ou mais';

value $QPcemcinco
A = 'L�ngua Portuguesa'
B = 'Matem�tica'
C = 'Mais de uma disciplina';

value $QPcemseis
A = 'Menos de 20%'
B = 'De 20% a menos de 40%'
C = 'De 40% a menos de 60%'
D = 'De 60% a menos de 80%'
E = '80% ou mais';

value $QPcemsete
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente'
F = 'Diariamente';

value $QPcemoito
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente'
F = 'Diariamente';

value $QPcemnove
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente'
F = 'Diariamente';

value $QPcemdez
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente'
F = 'Diariamente';

value $QPcemonze
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente'
F = 'Diariamente';

value $QPcemdoze
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente'
F = 'Diariamente';

value $QPcemtreze
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente'
F = 'Diariamente';

value $QPcemcatorze
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente'
F = 'Diariamente';

value $QPcemquinze
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente'
F = 'Diariamente';

value $QPcemdezesseis
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente'
F = 'Diariamente';

value $QPcemdezessete
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente'
F = 'Diariamente';

value $QPcemdezoito
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente'
F = 'Diariamente';

value $QPcemdezenove
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente'
F = 'Diariamente';

value $QPcemvinte
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente'
F = 'Diariamente';

value $QPcemvinteum
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente'
F = 'Diariamente';

value $QPcemvintedois
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente'
F = 'Diariamente';

value $QPcemvintetres
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente'
F = 'Diariamente';

value $QPcemvintequatro
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente'
F = 'Diariamente';

value $QPcemvintecinco
A = 'Nunca'
B = 'Uma vez por ano'
C = 'De 3 a 4 vezes ao ano'
D = 'Mensalmente'
E = 'Semanalmente'
F = 'Diariamente';

run;

DATA WORK.TS_PROFESSOR;

INFILE 'C:\TS_PROFESSOR.csv' /*Endere�o do arquivo*/
        LRECL=290
        ENCODING="WLATIN1"
        TERMSTR=CRLF
        DLM=","
        MISSOVER
        DSD ;

INPUT
ID_PROVA_BRASIL  : 4.
ID_UF            : 2.
ID_MUNICIPIO     : 7.
ID_ESCOLA        : 8.
ID_DEPENDENCIA_ADM : 1.
ID_LOCALIZACAO   : 1.
ID_TURMA         : 6.
ID_SERIE         : 2.
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
TX_RESP_Q058 : $CHAR1.
TX_RESP_Q059 : $CHAR1.
TX_RESP_Q060 : $CHAR1.
TX_RESP_Q061 : $CHAR1.
TX_RESP_Q062 : $CHAR1.
TX_RESP_Q063 : $CHAR1.
TX_RESP_Q064 : $CHAR1.
TX_RESP_Q065 : $CHAR1.
TX_RESP_Q066 : $CHAR1.
TX_RESP_Q067 : $CHAR1.
TX_RESP_Q068 : $CHAR1.
TX_RESP_Q069 : $CHAR1.
TX_RESP_Q070 : $CHAR1.
TX_RESP_Q071 : $CHAR1.
TX_RESP_Q072 : $CHAR1.
TX_RESP_Q073 : $CHAR1.
TX_RESP_Q074 : $CHAR1.
TX_RESP_Q075 : $CHAR1.
TX_RESP_Q076 : $CHAR1.
TX_RESP_Q077 : $CHAR1.
TX_RESP_Q078 : $CHAR1.
TX_RESP_Q079 : $CHAR1.
TX_RESP_Q080 : $CHAR1.
TX_RESP_Q081 : $CHAR1.
TX_RESP_Q082 : $CHAR1.
TX_RESP_Q083 : $CHAR1.
TX_RESP_Q084 : $CHAR1.
TX_RESP_Q085 : $CHAR1.
TX_RESP_Q086 : $CHAR1.
TX_RESP_Q087 : $CHAR1.
TX_RESP_Q088 : $CHAR1.
TX_RESP_Q089 : $CHAR1.
TX_RESP_Q090 : $CHAR1.
TX_RESP_Q091 : $CHAR1.
TX_RESP_Q092 : $CHAR1.
TX_RESP_Q093 : $CHAR1.
TX_RESP_Q094 : $CHAR1.
TX_RESP_Q095 : $CHAR1.
TX_RESP_Q096 : $CHAR1.
TX_RESP_Q097 : $CHAR1.
TX_RESP_Q098 : $CHAR1.
TX_RESP_Q099 : $CHAR1.
TX_RESP_Q100 : $CHAR1.
TX_RESP_Q101 : $CHAR1.
TX_RESP_Q102 : $CHAR1.
TX_RESP_Q103 : $CHAR1.
TX_RESP_Q104 : $CHAR1.
TX_RESP_Q105 : $CHAR1.
TX_RESP_Q106 : $CHAR1.
TX_RESP_Q107 : $CHAR1.
TX_RESP_Q108 : $CHAR1.
TX_RESP_Q109 : $CHAR1.
TX_RESP_Q110 : $CHAR1.
TX_RESP_Q111 : $CHAR1.
TX_RESP_Q112 : $CHAR1.
TX_RESP_Q113 : $CHAR1.
TX_RESP_Q114 : $CHAR1.
TX_RESP_Q115 : $CHAR1.
TX_RESP_Q116 : $CHAR1.
TX_RESP_Q117 : $CHAR1.
TX_RESP_Q118 : $CHAR1.
TX_RESP_Q119 : $CHAR1.
TX_RESP_Q120 : $CHAR1.
TX_RESP_Q121 : $CHAR1.
TX_RESP_Q122 : $CHAR1.
TX_RESP_Q123 : $CHAR1.
TX_RESP_Q124 : $CHAR1.
TX_RESP_Q125 : $CHAR1.
;

ATTRIB ID_UF FORMAT=ID_UF2.;
ATTRIB ID_DEPENDENCIA_ADM FORMAT=ID_DEPENDENCIA_ADM9.;
ATTRIB ID_LOCALIZACAO FORMAT=ID_LOCALIZACAO9.;
ATTRIB ID_SERIE FORMAT=ID_SERIE34.;
ATTRIB IN_PREENCHIMENTO_QUESTIONARIO FORMAT=IN_PREENCHIMENTO_QUESTIONARIO27.;
ATTRIB TX_RESP_Q001 FORMAT=$QPum.;
ATTRIB TX_RESP_Q002 FORMAT=$QPdois.;
ATTRIB TX_RESP_Q003 FORMAT=$QPtres.;
ATTRIB TX_RESP_Q004 FORMAT=$QPquatro.;
ATTRIB TX_RESP_Q005 FORMAT=$QPcinco.;
ATTRIB TX_RESP_Q006 FORMAT=$QPseis.;
ATTRIB TX_RESP_Q007 FORMAT=$QPsete.;
ATTRIB TX_RESP_Q008 FORMAT=$QPoito.;
ATTRIB TX_RESP_Q009 FORMAT=$QPnove.;
ATTRIB TX_RESP_Q010 FORMAT=$QPdez.;
ATTRIB TX_RESP_Q011 FORMAT=$QPonze.;
ATTRIB TX_RESP_Q012 FORMAT=$QPdoze.;
ATTRIB TX_RESP_Q013 FORMAT=$QPtreze.;
ATTRIB TX_RESP_Q014 FORMAT=$QPcatorze.;
ATTRIB TX_RESP_Q015 FORMAT=$QPquinze.;
ATTRIB TX_RESP_Q016 FORMAT=$QPdezesseis.;
ATTRIB TX_RESP_Q017 FORMAT=$QPdezessete.;
ATTRIB TX_RESP_Q018 FORMAT=$QPdezoito.;
ATTRIB TX_RESP_Q019 FORMAT=$QPdezenove.;
ATTRIB TX_RESP_Q020 FORMAT=$QPvinte.;
ATTRIB TX_RESP_Q021 FORMAT=$QPvinteum.;
ATTRIB TX_RESP_Q022 FORMAT=$QPvintedois.;
ATTRIB TX_RESP_Q023 FORMAT=$QPvintetres.;
ATTRIB TX_RESP_Q024 FORMAT=$QPvintequatro.;
ATTRIB TX_RESP_Q025 FORMAT=$QPvintecinco.;
ATTRIB TX_RESP_Q026 FORMAT=$QPvinteseis.;
ATTRIB TX_RESP_Q027 FORMAT=$QPvintesete.;
ATTRIB TX_RESP_Q028 FORMAT=$QPvinteoito.;
ATTRIB TX_RESP_Q029 FORMAT=$QPvintenove.;
ATTRIB TX_RESP_Q030 FORMAT=$QPtrinta.;
ATTRIB TX_RESP_Q031 FORMAT=$QPtrintaum.;
ATTRIB TX_RESP_Q032 FORMAT=$QPtrintadois.;
ATTRIB TX_RESP_Q033 FORMAT=$QPtrintatres.;
ATTRIB TX_RESP_Q034 FORMAT=$QPtrintaquatro.;
ATTRIB TX_RESP_Q035 FORMAT=$QPtrintacinco.;
ATTRIB TX_RESP_Q036 FORMAT=$QPtrintaseis.;
ATTRIB TX_RESP_Q037 FORMAT=$QPtrintasete.;
ATTRIB TX_RESP_Q038 FORMAT=$QPtrintaoito.;
ATTRIB TX_RESP_Q039 FORMAT=$QPtrintanove.;
ATTRIB TX_RESP_Q040 FORMAT=$QPquarenta.;
ATTRIB TX_RESP_Q041 FORMAT=$QPquarentaum.;
ATTRIB TX_RESP_Q042 FORMAT=$QPquarentadois.;
ATTRIB TX_RESP_Q043 FORMAT=$QPquarentatres.;
ATTRIB TX_RESP_Q044 FORMAT=$QPquarentaquatro.;
ATTRIB TX_RESP_Q045 FORMAT=$QPquarentacinco.;
ATTRIB TX_RESP_Q046 FORMAT=$QPquarentaseis.;
ATTRIB TX_RESP_Q047 FORMAT=$QPquarentasete.;
ATTRIB TX_RESP_Q048 FORMAT=$QPquarentaoito.;
ATTRIB TX_RESP_Q049 FORMAT=$QPquarentanove.;
ATTRIB TX_RESP_Q050 FORMAT=$QPcinquenta.;
ATTRIB TX_RESP_Q051 FORMAT=$QPcinquentaum.;
ATTRIB TX_RESP_Q052 FORMAT=$QPcinquentadois.;
ATTRIB TX_RESP_Q053 FORMAT=$QPcinquentatres.;
ATTRIB TX_RESP_Q054 FORMAT=$QPcinquentaquatro.;
ATTRIB TX_RESP_Q055 FORMAT=$QPcinquentacinco.;
ATTRIB TX_RESP_Q056 FORMAT=$QPcinquentaseis.;
ATTRIB TX_RESP_Q057 FORMAT=$QPcinquentasete.;
ATTRIB TX_RESP_Q058 FORMAT=$QPcinquentaoito.;
ATTRIB TX_RESP_Q059 FORMAT=$QPcinquentanove.;
ATTRIB TX_RESP_Q060 FORMAT=$QPsessenta.;
ATTRIB TX_RESP_Q061 FORMAT=$QPsessentaum.;
ATTRIB TX_RESP_Q062 FORMAT=$QPsessentadois.;
ATTRIB TX_RESP_Q063 FORMAT=$QPsessentatres.;
ATTRIB TX_RESP_Q064 FORMAT=$QPsessentaquatro.;
ATTRIB TX_RESP_Q065 FORMAT=$QPsessentacinco.;
ATTRIB TX_RESP_Q066 FORMAT=$QPsessentaseis.;
ATTRIB TX_RESP_Q067 FORMAT=$QPsessentasete.;
ATTRIB TX_RESP_Q068 FORMAT=$QPsessentaoito.;
ATTRIB TX_RESP_Q069 FORMAT=$QPsessentanove.;
ATTRIB TX_RESP_Q070 FORMAT=$QPsetenta.;
ATTRIB TX_RESP_Q071 FORMAT=$QPsetentaum.;
ATTRIB TX_RESP_Q072 FORMAT=$QPsetentadois.;
ATTRIB TX_RESP_Q073 FORMAT=$QPsetentatres.;
ATTRIB TX_RESP_Q074 FORMAT=$QPsetentaquatro.;
ATTRIB TX_RESP_Q075 FORMAT=$QPsetentacinco.;
ATTRIB TX_RESP_Q076 FORMAT=$QPsetentaseis.;
ATTRIB TX_RESP_Q077 FORMAT=$QPsetentasete.;
ATTRIB TX_RESP_Q078 FORMAT=$QPsetentaoito.;
ATTRIB TX_RESP_Q079 FORMAT=$QPsetentanove.;
ATTRIB TX_RESP_Q080 FORMAT=$QPoitenta.;
ATTRIB TX_RESP_Q081 FORMAT=$QPoitentaum.;
ATTRIB TX_RESP_Q082 FORMAT=$QPoitentadois.;
ATTRIB TX_RESP_Q083 FORMAT=$QPoitentatres.;
ATTRIB TX_RESP_Q084 FORMAT=$QPoitentaquatro.;
ATTRIB TX_RESP_Q085 FORMAT=$QPoitentacinco.;
ATTRIB TX_RESP_Q086 FORMAT=$QPoitentaseis.;
ATTRIB TX_RESP_Q087 FORMAT=$QPoitentasete.;
ATTRIB TX_RESP_Q088 FORMAT=$QPoitentaoito.;
ATTRIB TX_RESP_Q089 FORMAT=$QPoitentanove.;
ATTRIB TX_RESP_Q090 FORMAT=$QPnoventa.;
ATTRIB TX_RESP_Q091 FORMAT=$QPnoventaum.;
ATTRIB TX_RESP_Q092 FORMAT=$QPnoventadois.;
ATTRIB TX_RESP_Q093 FORMAT=$QPnoventatres.;
ATTRIB TX_RESP_Q094 FORMAT=$QPnoventaquatro.;
ATTRIB TX_RESP_Q095 FORMAT=$QPnoventacinco.;
ATTRIB TX_RESP_Q096 FORMAT=$QPnoventaseis.;
ATTRIB TX_RESP_Q097 FORMAT=$QPnoventasete.;
ATTRIB TX_RESP_Q098 FORMAT=$QPnoventaoito.;
ATTRIB TX_RESP_Q099 FORMAT=$QPnoventanove.;
ATTRIB TX_RESP_Q100 FORMAT=$QPcem.;
ATTRIB TX_RESP_Q101 FORMAT=$QPcemum.;
ATTRIB TX_RESP_Q102 FORMAT=$QPcemdois.;
ATTRIB TX_RESP_Q103 FORMAT=$QPcemtres.;
ATTRIB TX_RESP_Q104 FORMAT=$QPcemquatro.;
ATTRIB TX_RESP_Q105 FORMAT=$QPcemcinco.;
ATTRIB TX_RESP_Q106 FORMAT=$QPcemseis.;
ATTRIB TX_RESP_Q107 FORMAT=$QPcemsete.;
ATTRIB TX_RESP_Q108 FORMAT=$QPcemoito.;
ATTRIB TX_RESP_Q109 FORMAT=$QPcemnove.;
ATTRIB TX_RESP_Q110 FORMAT=$QPcemdez.;
ATTRIB TX_RESP_Q111 FORMAT=$QPcemonze.;
ATTRIB TX_RESP_Q112 FORMAT=$QPcemdoze.;
ATTRIB TX_RESP_Q113 FORMAT=$QPcemtreze.;
ATTRIB TX_RESP_Q114 FORMAT=$QPcemcatorze.;
ATTRIB TX_RESP_Q115 FORMAT=$QPcemquinze.;
ATTRIB TX_RESP_Q116 FORMAT=$QPcemdezesseis.;
ATTRIB TX_RESP_Q117 FORMAT=$QPcemdezessete.;
ATTRIB TX_RESP_Q118 FORMAT=$QPcemdezoito.;
ATTRIB TX_RESP_Q119 FORMAT=$QPcemdezenove.;
ATTRIB TX_RESP_Q120 FORMAT=$QPcemvinte.;
ATTRIB TX_RESP_Q121 FORMAT=$QPcemvinteum.;
ATTRIB TX_RESP_Q122 FORMAT=$QPcemvintedois.;
ATTRIB TX_RESP_Q123 FORMAT=$QPcemvintetres.;
ATTRIB TX_RESP_Q124 FORMAT=$QPcemvintequatro.;
ATTRIB TX_RESP_Q125 FORMAT=$QPcemvintecinco.;

LABEL

ID_PROVA_BRASIL= 'Ano da ANEB/Prova Brasil'
ID_UF= 'C�digo da Unidade da Federa��o'
ID_MUNICIPIO= 'C�digo do Munic�pio'
ID_ESCOLA= 'C�digo da Escola'
ID_DEPENDENCIA_ADM= 'Depend�ncia Administrativa'
ID_LOCALIZACAO= 'Localiza��o'
ID_TURMA= 'C�digo da turma na ANEB/Prova Brasil'
ID_SERIE= 'S�rie'
IN_PREENCHIMENTO_QUESTIONARIO= 'Indicador de preenchimento do question�rio'
TX_RESP_Q001= 'Qual � o seu sexo?'                                                                                                                                                                                                                                                                                                                             
TX_RESP_Q002= 'Voc� poderia nos dizer a sua faixa et�ria?'                                                                                                                                                                                                                                                                                                     
TX_RESP_Q003= 'Como voc� se considera?'                                                                                                                                                                                                                                                                                                                        
TX_RESP_Q004= 'Qual � o mais alto n�vel de escolaridade que voc� concluiu (at� a gradua��o)?'                                                                                                                                                                                                                                                                  
TX_RESP_Q005= 'H� quantos anos voc� obteve o n�vel de escolaridade assinalado anteriormente (at� a gradua��o)?'                                                                                                                                                                                                                                                
TX_RESP_Q006= 'Indique em que tipo de institui��o voc� obteve seu diploma de ensino superior'                                                                                                                                                                                                                                                                
TX_RESP_Q007= 'De que forma voc� realizou o curso de ensino superior?'                                                                                                                                                                                                                                                                                         
TX_RESP_Q008= 'Indique o curso de p�s-gradua��o de mais alta titula��o que voc� possui'                                                                                                                                                                                                                                                                       
TX_RESP_Q009= 'Indique a �rea tem�tica do curso de p�s-gradua��o de mais alta titula��o que voc� possui'                                                                                                                                                                                                                                                      
TX_RESP_Q010= 'Como professor, qual �, aproximadamente, o seu sal�rio bruto?(com adicionais, se houver)'                                                                                                                                                                                                                                                      
TX_RESP_Q011= 'Al�m da atividade como docente nesta escola, voc� exerce outra atividade que contribui para sua renda pessoal?'                                                                                                                                                                                                                                 
TX_RESP_Q012= 'Considerando todas as atividades que voc� exerce (dentro e fora da �rea de educa��o), qual �, aproximadamente, o seu sal�rio bruto? (com adicionais, se houver)'                                                                                                                                                                               
TX_RESP_Q013= 'H� quantos anos voc� trabalha como professor?'                                                                                                                                                                                                                                                                                                  
TX_RESP_Q014= 'H� quantos anos voc� trabalha como professor nesta escola?'                                                                                                                                                                                                                                                                                     
TX_RESP_Q015= 'H� quantos anos voc� ministra aulas para alunos da s�rie/turma em que voc� se encontra neste momento?'                                                                                                                                                                                                                                          
TX_RESP_Q016= 'Qual � a sua situa��o trabalhista nesta escola?'                                                                                                                                                                                                                                                                                                
TX_RESP_Q017= 'Nesta escola, qual � a sua carga hor�ria semanal? (considere a carga hor�ria contratual: horas-aula mais horas para atividades, se houver. N�o considere aulas particulares)'                                                                                                                                                                     
TX_RESP_Q018= 'Em quantas escolas voc� trabalha?'                                                                                                                                                                                                                                                                                                              
TX_RESP_Q019= 'Considerando-se todas as escolas em que voc� trabalha atualmente como professor, qual a sua carga hor�ria semanal? (Considere a carga hor�ria contratual: horas-aula mais horas para atividades, se houver. N�o considere aulas particulares)'                                                                                                     
TX_RESP_Q020= 'Considerando-se todas as escolas em que voc� trabalha atualmente como professor, quantas horas semanais s�o dedicadas �s atividades extraclasse (forma��o e estudo, planejamento, produ��o de recursos did�ticos etc.)?'                                                                                                                        
TX_RESP_Q021= 'Durante os �ltimos dois anos, voc� participou (...) dos seguintes tipos de atividades (...), e qual foi o impacto (...) em sua pr�tica como professor? Cursos/oficinas sobre metodologias de ensino (...) (Cf. Dic.)'                                                                       
TX_RESP_Q022= 'Durante os �ltimos dois anos, voc� participou (...) dos seguintes tipos de atividades (...), e qual foi o impacto (...) em sua pr�tica como professor? Cursos/oficinas sobre outros t�picos (...) (Cf. Dic.)'                                                                                          
TX_RESP_Q023= 'Durante os �ltimos dois anos, voc� participou (...) dos seguintes tipos de atividades (...), e qual foi o impacto (...) em sua pr�tica como professor? Curso de especializa��o (...) ou aperfei�oamento (...) (Cf. Dic.)'
TX_RESP_Q024= 'Durante os �ltimos dois anos, (...), e qual foi o impacto dessa atividade em sua pr�tica como professor? Curso de especializa��o (...) ou aperfei�oamento (...) sobre outros t�picos em educa��o. (Cf. Dic.)'                      
TX_RESP_Q025= 'Das atividades de desenvolvimento profissional de que voc� participou nos �ltimos dois anos, quantas voc�, pessoalmente, teve que pagar para participar?'                                                                                                                                                                                       
TX_RESP_Q026= 'Considerando os temas a seguir, indique por favor sua necessidade de aperfei�oamento profissional. Par�metros ou Diretrizes curriculares em sua �rea de atua��o'                                                                                                                                                                               
TX_RESP_Q027= 'Considerando os temas a seguir, indique por favor sua necessidade de aperfei�oamento profissional. Conte�dos espec�ficos da minha disciplina principal de atua��o'                                                                                                                                                                             
TX_RESP_Q028= 'Considerando os temas a seguir, indique por favor sua necessidade de aperfei�oamento profissional. Pr�ticas de Ensino na minha disciplina principal de atua��o'                                                                                                                                                                                
TX_RESP_Q029= 'Considerando os temas a seguir, indique por favor sua necessidade de aperfei�oamento profissional. Gest�o e organiza��o das atividades em sala de aula'                                                                                                                                                                                        
TX_RESP_Q030= 'Considerando os temas a seguir, indique por favor sua necessidade de aperfei�oamento profissional. Metodologias de avalia��o dos alunos'                                                                                                                                                                                                       
TX_RESP_Q031= 'Considerando os temas a seguir, indique por favor sua necessidade de aperfei�oamento profissional. Uso pedag�gico das Tecnologias de Informa��o e Comunica��o'                                                                                                                                                                                 
TX_RESP_Q032= 'Considerando os temas a seguir, indique por favor sua necessidade de aperfei�oamento profissional. Forma��o espec�fica para trabalhar com estudantes com defici�ncia ou necessidades especiais'
TX_RESP_Q033= 'Nos �ltimos dois anos, voc� gostaria de ter participado de mais atividades de desenvolvimento profissional do que voc� participou?'                                                                                                                                                                                                            
TX_RESP_Q034= 'Se voc� gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participa��o? O desenvolvimento profissional era muito caro/eu n�o podia pagar'                                                                                                                                     
TX_RESP_Q035= 'Se voc� gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participa��o? Houve conflito com o meu hor�rio de trabalho'                                                                                                                                                         
TX_RESP_Q036= 'Se voc� gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participa��o? N�o tinha disponibilidade de tempo'                                                                                                                                                                   
TX_RESP_Q037= 'Se voc� gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participa��o? N�o houve oferta em minha �rea de interesse'                                                                                                                                                          
TX_RESP_Q038= 'Em seu tempo livre, voc� costuma: Ler jornais e revistas em geral'                                                                                                                                                                                                                                                                             
TX_RESP_Q039= 'Em seu tempo livre, voc� costuma: Ler livros'                                                                                                                                                                                                                                                                                                  
TX_RESP_Q040= 'Em seu tempo livre, voc� costuma: Ler sites na internet'                                                                                                                                                                                                                                                                                       
TX_RESP_Q041= 'Em seu tempo livre, voc� costuma: Frequentar bibliotecas'                                                                                                                                                                                                                                                                                      
TX_RESP_Q042= 'Em seu tempo livre, voc� costuma: Ir ao cinema'                                                                                                                                                                                                                                                                                                
TX_RESP_Q043= 'Em seu tempo livre, voc� costuma: Ir a algum tipo de espet�culo ou exposi��o (teatro, museu, dan�a, m�sica)'                                                                                                                                                                                                                                   
TX_RESP_Q044= 'Gostar�amos de saber quais os recursos que voc� utiliza para fins pedag�gicos, nesta turma: Jornais e revistas informativas'                                                                                                                                                                                                                   
TX_RESP_Q045= 'Gostar�amos de saber quais os recursos que voc� utiliza para fins pedag�gicos, nesta turma: Livros de literatura em geral'                                                                                                                                                                                                                     
TX_RESP_Q046= 'Gostar�amos de saber quais os recursos que voc� utiliza para fins pedag�gicos, nesta turma: Projetor (datashow, projetor de transpar�ncias)'                                                                                                                                                                                                   
TX_RESP_Q047= 'Gostar�amos de saber quais os recursos que voc� utiliza para fins pedag�gicos, nesta turma: Filmes, desenhos animados ou document�rios'                                                                                                                                                                                                        
TX_RESP_Q048= 'Gostar�amos de saber quais os recursos que voc� utiliza para fins pedag�gicos, nesta turma: M�quina copiadora (xerox)'                                                                                                                                                                                                                         
TX_RESP_Q049= 'Gostar�amos de saber quais os recursos que voc� utiliza para fins pedag�gicos, nesta turma: Programas/aplicativos pedag�gicos de computador'                                                                                                                                                                                                   
TX_RESP_Q050= 'Gostar�amos de saber quais os recursos que voc� utiliza para fins pedag�gicos, nesta turma: Internet'                                                                                                                                                                                                                                          
TX_RESP_Q051= 'Neste ano e nesta escola, como se deu a elabora��o do Projeto Pedag�gico?'                                                                                                                                                                                                                                                                      
TX_RESP_Q052= 'O Conselho de Classe � um �rg�o formado por todos os professores que lecionam em cada turma/s�rie. Neste ano e nesta escola, quantas vezes se reuniu o Conselho de Classe?'                                                                                                                                                                     
TX_RESP_Q053= 'Nesta escola, com que frequ�ncia voc� fez o seguinte: Participou do planejamento do curr�culo escolar ou parte dele'                                                                                                                                                                                                                            
TX_RESP_Q054= 'Nesta escola, com que frequ�ncia voc� fez o seguinte: Trocou materiais did�ticos com seus colegas'                                                                                                                                                                                                                                              
TX_RESP_Q055= 'Nesta escola, com que frequ�ncia voc� fez o seguinte: Participou de reuni�es com colegas que trabalham com a mesma s�rie (ano) para a(o) qual leciona'                                                                                                                                                                                          
TX_RESP_Q056= 'Nesta escola, com que frequ�ncia voc� fez o seguinte: Participou em discuss�es sobre o desenvolvimento da aprendizagem de determinados alunos'                                                                                                                                                                                                  
TX_RESP_Q057= 'Nesta escola, com que frequ�ncia voc� fez o seguinte: Envolveu-se em atividades conjuntas com diferentes professores (por exemplo, projetos interdisciplinares)'                                                                                                                                                                                
TX_RESP_Q058= 'Nesta escola e neste ano, indique a frequ�ncia com que: O(A) diretor(a) discute metas educacionais com os professores nas reuni�es'                                                                                                                                                                                                            
TX_RESP_Q059= 'Nesta escola e neste ano, indique a frequ�ncia com que: O(A) diretor(a) e os professores procuram assegurar que as quest�es de qualidade de ensino sejam uma responsabilidade coletiva'                                                                                                                                                        
TX_RESP_Q060= 'Nesta escola e neste ano, indique a frequ�ncia com que: O(A) diretor(a) informa os professores sobre as possibilidades de aperfei�oamento profissional'                                                                                                                                                                                        
TX_RESP_Q061= 'Nesta escola e neste ano, indique a frequ�ncia com que: O(A) diretor(a) d� aten��o especial a aspectos relacionados com a aprendizagem dos alunos'                                                                                                                                                                                             
TX_RESP_Q062= 'Nesta escola e neste ano, indique a frequ�ncia com que: O(A) diretor(a) d� aten��o especial a aspectos relacionados com as normas administrativas'                                                                                                                                                                                             
TX_RESP_Q063= 'Nesta escola e neste ano, indique a frequ�ncia com que: O(A) diretor(a) d� aten��o especial a aspectos relacionados com a manuten��o da escola'                                                                                                                                                                                                
TX_RESP_Q064= 'Nesta escola e neste ano, indique a frequ�ncia com que: O(A) diretor(a) me anima e me motiva para o trabalho'                                                                                                                                                                                                                                  
TX_RESP_Q065= 'Nesta escola e neste ano, indique a frequ�ncia com que: O(A) diretor(a) estimula atividades inovadoras'                                                                                                                                                                                                                                        
TX_RESP_Q066= 'Nesta escola e neste ano, indique a frequ�ncia com que: Sinto-me respeitado pelo(a) diretor(a)'                                                                                                                                                                                                                                                
TX_RESP_Q067= 'Nesta escola e neste ano, indique a frequ�ncia com que: Tenho confian�a no(a) diretor(a) como profissional'                                                                                                                                                                                                                                    
TX_RESP_Q068= 'Nesta escola e neste ano, indique a frequ�ncia com que: Participo das decis�es relacionadas com meu trabalho'                                                                                                                                                                                                                                  
TX_RESP_Q069= 'Nesta escola e neste ano, indique a frequ�ncia com que: A equipe de professores leva em considera��o minhas ideias'                                                                                                                                                                                                                            
TX_RESP_Q070= 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Car�ncia de infraestrutura f�sica'                                                                                                                                                               
TX_RESP_Q071= 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Car�ncia ou inefici�ncia da supervis�o, coordena��o e orienta��o pedag�gica'                                                                                                                     
TX_RESP_Q072= 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Conte�dos curriculares inadequados �s necessidades dos alunos'                                                                                                                                   
TX_RESP_Q073= 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): N�o cumprimento dos conte�dos curriculares ao longo da trajet�ria escolar do aluno'                                                                                                              
TX_RESP_Q074= 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Sobrecarga de trabalho dos professores, dificultando o planejamento e o preparo das aulas'                                                                                                       
TX_RESP_Q075= 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Insatisfa��o e desest�mulo do professor com a carreira docente'                                                                                                                                  
TX_RESP_Q076= 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Meio social em que o aluno vive'                                                                                                                                                                 
TX_RESP_Q077= 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): N�vel cultural dos pais dos alunos'                                                                                                                                                              
TX_RESP_Q078= 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Falta de assist�ncia e acompanhamento dos pais na vida escolar do aluno'                                                                                                                         
TX_RESP_Q079= 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Baixa autoestima dos alunos'                                                                                                                                                                     
TX_RESP_Q080= 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Desinteresse e falta de esfor�o do aluno'                                                                                                                                                        
TX_RESP_Q081= 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Indisciplina dos alunos em sala de aula'                                                                                                                                                         
TX_RESP_Q082= 'Na sua percep��o, os poss�veis problemas de aprendizagem dos alunos das s�rie(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido �/ao(s): Alto �ndice de faltas por parte dos alunos'                                                                                                                                                      
TX_RESP_Q083= 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o neste ano, nesta escola: Agress�o verbal ou f�sica de alunos a professores ou a funcion�rios da escola'                                                                                                                                                                        
TX_RESP_Q084= 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o neste ano, nesta escola: Agress�o verbal ou f�sica de alunos a outros alunos da escola'                                                                                                                                                                                        
TX_RESP_Q085= 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o neste ano, nesta escola: Voc� foi v�tima de atentado � vida'                                                                                                                                                                                                                   
TX_RESP_Q086= 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o neste ano, nesta escola: Voc� foi amea�ado por algum aluno'                                                                                                                                                                                                                    
TX_RESP_Q087= 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o neste ano, nesta escola: Voc� foi v�tima de furto (sem uso de viol�ncia)'                                                                                                                                                                                                      
TX_RESP_Q088= 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o neste ano, nesta escola: Voc� foi v�tima de roubo (com uso de viol�ncia)'                                                                                                                                                                                                      
TX_RESP_Q089= 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o neste ano, nesta escola: Alunos frequentaram as suas aulas sob efeito de bebida alco�lica'                                                                                                                                                                                     
TX_RESP_Q090= 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o neste ano, nesta escola: Alunos frequentaram as suas aulas sob efeito de drogas il�citas'                                                                                                                                                                                      
TX_RESP_Q091= 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o neste ano, nesta escola: Alunos frequentaram as suas aulas portando arma branca (facas, canivetes etc.)'                                                                                                                                                                       
TX_RESP_Q092= 'Sobre os fatos listados abaixo, diga se eles aconteceram ou n�o neste ano, nesta escola: Alunos frequentaram as suas aulas portando arma de fogo'                                                                                                                                                                                              
TX_RESP_Q093= '(SOMENTE PARA PROFESSORES DA 4.� s�rie/5.� ano) Na sua opini�o, quantos dos alunos desta turma voc� acha que concluir�o a 4.� s�rie/5.� ano neste ano?'                                                                                                                                                                                         
TX_RESP_Q094= '(SOMENTE PARA PROFESSORES DA 4.� s�rie/5.� ano e 8.� s�rie/9.� ano) Na sua opini�o, quantos dos alunos desta turma voc� acha que concluir�o o ensino fundamental?'                                                                                                                                                                              
TX_RESP_Q095= '(PARA TODOS OS PROFESSORES) Quantos dos alunos desta turma voc� acha que concluir�o o ensino m�dio?'                                                                                                                                                                                                                                            
TX_RESP_Q096= '(PARA TODOS OS PROFESSORES) Quantos dos alunos desta turma voc� acha que entrar�o na universidade?'                                                                                                                                                                                                                                             
TX_RESP_Q097= 'Para a disciplina que voc� ministra nesta ano, voc� participou da escolha dos livros did�ticos para utiliza��o nesta turma?'                                                                                                                                                                                                                    
TX_RESP_Q098= 'O livro did�tico escolhido foi o recebido?'                                                                                                                                                                                                                                                                                                     
TX_RESP_Q099= 'Os alunos desta turma t�m livros did�ticos?'                                                                                                                                                                                                                                                                                                    
TX_RESP_Q100= 'Os alunos desta turma receberam o livro did�tico no in�cio do ano letivo?'                                                                                                                                                                                                                                                                      
TX_RESP_Q101= 'Como voc� avalia a qualidade dos livros did�ticos que voc� utiliza nesta turma, neste ano?'                                                                                                                                                                                                                                                     
TX_RESP_Q102= 'Para esta turma, qual o percentual do tempo de aula que voc� usualmente gastou realizando cada uma das seguintes atividades: realizando tarefas administrativas (ex.: fazendo  a chamada, preenchendo formul�rios etc.)'                                                                                                                        
TX_RESP_Q103= 'Para esta turma, qual o percentual do tempo de aula que voc� usualmente gastou realizando cada uma das seguintes atividades: mantendo a ordem/disciplina na sala de aula'                                                                                                                                                                      
TX_RESP_Q104= 'Para esta turma, qual o percentual do tempo de aula que voc� usualmente gastou realizando cada uma das seguintes atividades: Realizando atividades de ensino e aprendizagem'                                                                                                                                                                   
TX_RESP_Q105= 'Nesta turma, qual disciplina voc� leciona?'                                                                                                                                                                                                                                                                                                     
TX_RESP_Q106= 'Quanto do conte�do previsto voc� conseguiu desenvolver com os alunos desta turma neste ano?'                                                                                                                                                                                                                                                    
TX_RESP_Q107= 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Propor dever de casa'                                                                                                                                                                                                                              
TX_RESP_Q108= 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Corrigir com os alunos o dever de casa'                                                                                                                                                                                                            
TX_RESP_Q109= 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Desenvolver atividades em grupo, em sala de aula, para que os alunos busquem solu��es de problemas'                                                                                                                                                
TX_RESP_Q110= 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Desenvolver projetos tem�ticos com o objetivo de aprimorar as habilidades de trabalho em equipe'                                                                                                                                                   
TX_RESP_Q111= 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Solicitar que os alunos copiem textos e atividades do livro did�tico ou do quadro negro (lousa)'                                                                                                                                                   
TX_RESP_Q112= 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Estimular os alunos a expressarem suas opini�es e a desenvolverem argumentos a partir de temas diversos'                                                                                                                                           
TX_RESP_Q113= 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Propor situa��es de aprendizagem que sejam familiares ou de interesse dos alunos'                                                                                                                                                                  
TX_RESP_Q114= 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Promover discuss�es a partir de textos de jornais ou revistas'                                                                                                                                                                                     
TX_RESP_Q115= 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Propor atividades gramaticais relacionadas aos textos de jornais ou revistas'                                                                                                                                                                      
TX_RESP_Q116= 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Promover a leitura e discuss�o de contos, cr�nicas, poesias ou romances'                                                                                                                                                                           
TX_RESP_Q117= 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Utilizar contos, cr�nicas, poesias ou romances para exercitar aspectos da gram�tica'                                                                                                                                                               
TX_RESP_Q118= 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Utilizar revistas em quadrinhos como instrumento de aprendizado'                                                                                                                                                                                   
TX_RESP_Q119= 'Indique a frequ�ncia com que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Fixar os nomes de conceitos gramaticais e lingu�sticos'                                                                                                                                                                                            
TX_RESP_Q120= 'Indique a frequ�ncia com a que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Fazer exerc�cios para fixar procedimentos e regras'                                                                                                                                                                                              
TX_RESP_Q121= 'Indique a frequ�ncia com a que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Discutir se os resultados num�ricos obtidos na solu��o de um problema s�o adequados � situa��o apresentada'                                                                                                                                      
TX_RESP_Q122= 'Indique a frequ�ncia com a que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Discutir diferentes modos para resolver problemas e c�lculos'                                                                                                                                                                                    
TX_RESP_Q123= 'Indique a frequ�ncia com a que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Lidar com temas que aparecem em jornais e/ou revistas, discutindo a rela��o dos temas com a matem�tica'                                                                                                                                          
TX_RESP_Q124= 'Indique a frequ�ncia com a que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Fornecer esquemas/regras que permitem obter as respostas certas dos c�lculos e problemas'                                                                                                                                                        
TX_RESP_Q125= 'Indique a frequ�ncia com a que voc� desenvolve as seguintes pr�ticas pedag�gicas nesta turma: Experimentar diferentes a��es (coletar informa��es, recortar, explorar, manipular etc.) para resolver problemas';

IF ID_PROVA_BRASIL=. THEN DELETE;

run;quit;
