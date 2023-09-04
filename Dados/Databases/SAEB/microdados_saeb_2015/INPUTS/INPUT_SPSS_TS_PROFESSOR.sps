/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral do Sistema Nacional de Avaliação da Educação Básica             */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_TS_PROFESSOR.sps                                                           */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DO QUESTIONÁRIO DO PROFESSOR */
/*                     DA ANEB/PROVA BRASIL 2015                                                       */
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* TS_PROFESSOR.CSV no diretório C:\ do computador.	                        	 */
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
  /FILE="C:\TS_PROFESSOR.csv"
  /DELCASE=LINE
  /DELIMITERS=","
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  ID_PROVA_BRASIL F4.0
  ID_UF F2.0
  ID_MUNICIPIO F7.0
  ID_ESCOLA F8.0
  ID_DEPENDENCIA_ADM F1.0
  ID_LOCALIZACAO F1.0
  ID_TURMA F6.0
  ID_SERIE F2.0
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
  TX_RESP_Q060 A8
  TX_RESP_Q061 A8
  TX_RESP_Q062 A8
  TX_RESP_Q063 A8
  TX_RESP_Q064 A8
  TX_RESP_Q065 A8
  TX_RESP_Q066 A8
  TX_RESP_Q067 A8
  TX_RESP_Q068 A8
  TX_RESP_Q069 A8
  TX_RESP_Q070 A8
  TX_RESP_Q071 A8
  TX_RESP_Q072 A8
  TX_RESP_Q073 A8
  TX_RESP_Q074 A8
  TX_RESP_Q075 A8
  TX_RESP_Q076 A8
  TX_RESP_Q077 A8
  TX_RESP_Q078 A8
  TX_RESP_Q079 A8
  TX_RESP_Q080 A8
  TX_RESP_Q081 A8
  TX_RESP_Q082 A8
  TX_RESP_Q083 A8
  TX_RESP_Q084 A8
  TX_RESP_Q085 A8
  TX_RESP_Q086 A8
  TX_RESP_Q087 A8
  TX_RESP_Q088 A8
  TX_RESP_Q089 A8
  TX_RESP_Q090 A8
  TX_RESP_Q091 A8
  TX_RESP_Q092 A8
  TX_RESP_Q093 A8
  TX_RESP_Q094 A8
  TX_RESP_Q095 A8
  TX_RESP_Q096 A8
  TX_RESP_Q097 A8
  TX_RESP_Q098 A8
  TX_RESP_Q099 A8
  TX_RESP_Q100 A8
  TX_RESP_Q101 A8
  TX_RESP_Q102 A8
  TX_RESP_Q103 A8
  TX_RESP_Q104 A8
  TX_RESP_Q105 A8
  TX_RESP_Q106 A8
  TX_RESP_Q107 A8
  TX_RESP_Q108 A8
  TX_RESP_Q109 A8
  TX_RESP_Q110 A8
  TX_RESP_Q111 A8
  TX_RESP_Q112 A8
  TX_RESP_Q113 A8
  TX_RESP_Q114 A8
  TX_RESP_Q115 A8
  TX_RESP_Q116 A8
  TX_RESP_Q117 A8
  TX_RESP_Q118 A8
  TX_RESP_Q119 A8
  TX_RESP_Q120 A8
  TX_RESP_Q121 A8
  TX_RESP_Q122 A8
  TX_RESP_Q123 A8
  TX_RESP_Q124 A8
  TX_RESP_Q125 A8.
CACHE.
EXECUTE.
DATASET NAME DataSet1 WINDOW=FRONT.



VARIABLE LABELS ID_PROVA_BRASIL 'Ano da ANEB/Prova Brasil'.
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
VARIABLE LABELS ID_SERIE 'Série'.
VALUE LABELS ID_SERIE
5  '4ª série/5º ano EF'
9  '8ª série/9º ano EF'
12 '3ª Série do Ensino Médio'.
VARIABLE LABELS IN_PREENCHIMENTO_QUESTIONARIO 'Indicador de preenchimento do questionário'.
VALUE LABELS IN_PREENCHIMENTO_QUESTIONARIO
0 'Não preenchido'
1 'Preenchido parcial ou totalmente'.
VARIABLE LABELS TX_RESP_Q001 'Qual é o seu sexo?'. 
VALUE LABELS TX_RESP_Q001
'A' 'Masculino'
'B' 'Feminino'.
VARIABLE LABELS TX_RESP_Q002 'Você poderia nos dizer a sua faixa etária?'. 
VALUE LABELS TX_RESP_Q002
'A' 'Até 24 anos'
'B' 'De 25 a 29 anos'
'C' 'De 30 a 39 anos'
'D' 'De 40 a 49 anos'
'E' 'De 50 a 54 anos'
'F' '55 anos ou mais'.
VARIABLE LABELS TX_RESP_Q003 'Como você se considera?'. 
VALUE LABELS TX_RESP_Q003
'A' 'Branco(a)'
'B' 'Pardo(a)'
'C' 'Preto(a)'
'D' 'Amarelo(a)'
'E' 'Indígena'
'F' 'Não quero declarar'
'G' 'Não sei'.
VARIABLE LABELS TX_RESP_Q004 'Qual é o mais alto nível de escolaridade que você concluiu (até a graduação)?'. 
VALUE LABELS TX_RESP_Q004
'A' 'Menos que o Ensino Médio (antigo 2º grau)'
'B' 'Ensino Médio - Magistério (antigo 2º grau)'
'C' 'Ensino  Médio - Outros (antigo 2º grau)'
'D' 'Ensino Superior - Pedagogia'
'E' 'Ensino Superior - Curso Normal Superior'
'F' 'Ensino Superior - Licenciatura em Matemática'
'G' 'Ensino Superior - Licenciatura em Letras'
'H' 'Ensino Superior – Outras Licenciaturas'
'I' 'Ensino Superior - Outras áreas'.
VARIABLE LABELS TX_RESP_Q005 'Há quantos anos você obteve o nível de escolaridade assinalado anteriormente (até a graduação)?'. 
VALUE LABELS TX_RESP_Q005
'A' 'Há menos de 2 anos'
'B' 'De 2 a 7 anos'
'C' 'De 8 a 14 anos'
'D' 'De 15 a 20 anos'
'E' 'Há mais de 20 anos'.
VARIABLE LABELS TX_RESP_Q006 'Indique em que tipo de instituição você obteve seu diploma de ensino superior'. 
VALUE LABELS TX_RESP_Q006
'A' 'Não concluí o ensino superior'
'B' 'Privada'
'C' 'Pública Federal'
'D' 'Pública Estadual'
'E' 'Pública Municipal'.
VARIABLE LABELS TX_RESP_Q007 'De que forma você realizou o curso de ensino superior?'. 
VALUE LABELS TX_RESP_Q007
'A' 'Não concluí o ensino superior'
'B' 'Presencial'
'C' 'Semipresencial'
'D' 'A distância'.
VARIABLE LABELS TX_RESP_Q008 'Indique o curso de pós-graduação de mais alta titulação que você possui'. 
VALUE LABELS TX_RESP_Q008
'A' 'Não fiz ou não completei curso de pós-graduação'
'B' 'Atualização ou Aperfeiçoamento (mínimo de 180 horas)'
'C' 'Especialização (mínimo de 360 horas)'
'D' 'Mestrado'
'E' 'Doutorado'.
VARIABLE LABELS TX_RESP_Q009 'Indique a área temática do curso de pós-graduação de mais alta titulação que você possui'. 
VALUE LABELS TX_RESP_Q009
'A' 'Não fiz ou não completei curso de pós-graduação'
'B' 'Educação, enfatizando alfabetização'
'C' 'Educação, enfatizando linguística e/ou letramento'
'D' 'Educação, enfatizando educação matemática'
'E' 'Educação - outras ênfases'
'F' 'Outras áreas que não a Educação'.
VARIABLE LABELS TX_RESP_Q010 'Como professor, qual é, aproximadamente, o seu salário bruto? (com adicionais, se houver)'. 
VALUE LABELS TX_RESP_Q010
'A' 'Até R$ 788,00'
'B' 'Entre R$ 788,01 e R$ 1.182,00'
'C' 'Entre R$ 1.182,01 e R$ 1.576,00'
'D' 'Entre R$ 1.576,01 e R$ 1.970,00'
'E' 'Entre R$ 1.970,01 e R$ 2.364,00'
'F' 'Entre R$ 2.364,01 e R$ 2.758,00'
'G' 'Entre R$ 2.758,01 e R$ 3.152,00'
'H' 'Entre R$ 3.152,01 e R$ 3.940,00'
'I' 'Entre R$ 3.940,01 e R$ 5.516,00'
'J' 'Entre R$ 5.516,01 e R$ 7.788,00'
'K' 'R$ 7.788,01 ou mais'.
VARIABLE LABELS TX_RESP_Q011 'Além da atividade como docente nesta escola, você exerce outra atividade que contribui para sua renda pessoal?'. 
VALUE LABELS TX_RESP_Q011
'A' 'Sim, na área de educação'
'B' 'Sim, fora da área de educação'
'C' 'Não'.
VARIABLE LABELS TX_RESP_Q012 'Considerando todas as atividades que você exerce (dentro e fora da área de educação), qual é, aproximadamente, o seu salário bruto? (Com adicionais, se houver)'. 
VALUE LABELS TX_RESP_Q012
'A' 'Até R$ 788,00'
'B' 'Entre R$ 788,01 e R$ 1.182,00'
'C' 'Entre R$ 1.182,01 e R$ 1.576,00'
'D' 'Entre R$ 1.576,01 e R$ 1.970,00'
'E' 'Entre R$ 1.970,01 e R$ 2.364,00'
'F' 'Entre R$ 2.364,01 e R$ 2.758,00'
'G' 'Entre R$ 2.758,01 e R$ 3.152,00'
'H' 'Entre R$ 3.152,01 e R$ 3.940,00'
'I' 'Entre R$ 3.940,01 e R$ 5.516,00'
'J' 'Entre R$ 5.516,01 e R$ 7.788,00'
'K' 'R$ 7.788,01 ou mais'.
VARIABLE LABELS TX_RESP_Q013 'Há quantos anos você trabalha como professor?'. 
VALUE LABELS TX_RESP_Q013
'A' 'Meu primeiro ano'
'B' '1-2 anos'
'C' '3-5 anos'
'D' '6-10 anos'
'E' '11-15 anos'
'F' '16-20 anos'
'G' 'Mais de 20 anos'.
VARIABLE LABELS TX_RESP_Q014 'Há quantos anos você trabalha como professor nesta escola?'. 
VALUE LABELS TX_RESP_Q014
'A' 'Meu primeiro ano'
'B' '1-2 anos'
'C' '3-5 anos'
'D' '6-10 anos'
'E' '11-15 anos'
'F' '16-20 anos'
'G' 'Mais de 20 anos'.
VARIABLE LABELS TX_RESP_Q015 'Há quantos anos você ministra aulas para alunos da série/turma em que você se encontra neste momento?'. 
VALUE LABELS TX_RESP_Q015
'A' 'Meu primeiro ano'
'B' '1-2 anos'
'C' '3-5 anos'
'D' '6-10 anos'
'E' '11-15 anos'
'F' '16-20 anos'
'G' 'Mais de 20 anos'.
VARIABLE LABELS TX_RESP_Q016 'Qual é a sua situação trabalhista nesta escola?'. 
VALUE LABELS TX_RESP_Q016
'A' 'Estatutário'
'B' 'CLT'
'C' 'Prestador de serviço por contrato temporário'
'D' 'Prestador de serviço sem contrato'
'E' 'Outra'.
VARIABLE LABELS TX_RESP_Q017 'Nesta escola, qual é a sua carga horária semanal? (Considere a carga horária contratual: horas-aula mais horas para atividades, se houver. Não considere aulas particulares)'. 
VALUE LABELS TX_RESP_Q017
'A' 'Mais de 40 horas'
'B' '40 horas'
'C' 'De 20 a 39 horas'
'D' 'Menos de 20 horas'.
VARIABLE LABELS TX_RESP_Q018 'Em quantas escolas você trabalha?'. 
VALUE LABELS TX_RESP_Q018
'A' 'Apenas nesta escola'
'B' 'Em 2 escolas'
'C' 'Em 3 escolas'
'D' 'Em 4 ou mais escolas'.
VARIABLE LABELS TX_RESP_Q019 'Considerando todas as escolas em que você trabalha atualmente como professor, qual a sua carga horária semanal? (...) (Cf. Dic.)'. 
VALUE LABELS TX_RESP_Q019
'A' 'Mais de 40 horas'
'B' '40 horas'
'C' 'De 20 a 39 horas'
'D' 'Menos de 20 horas'.
VARIABLE LABELS TX_RESP_Q020 'Considerando-se todas as escolas em que você trabalha atualmente como professor, quantas horas semanais são dedicadas às atividades extraclasse (formação e estudo, planejamento, produção de recursos didáticos etc.)?'. 
VALUE LABELS TX_RESP_Q020
'A' 'Nenhuma'
'B' 'Menos de 1/3 da carga horária'
'C' '1/3 da carga horária'
'D' 'Mais de 1/3 da carga horária'.
VARIABLE LABELS TX_RESP_Q021 'Durante os últimos dois anos, você participou (...) dos seguintes tipos de atividades (...), e qual foi o impacto (...) em sua prática como professor? Cursos/oficinas sobre metodologias de ensino (...) (Cf. Dic.)'. 
VALUE LABELS TX_RESP_Q021
'A' 'Não participei'
'B' 'Sim, e não houve impacto'
'C' 'Sim, e houve um pequeno impacto'
'D' 'Sim, e houve um impacto moderado'
'E' 'Sim, e houve um grande impacto'.
VARIABLE LABELS TX_RESP_Q022 'Durante os últimos dois anos, você participou (...) dos seguintes tipos de atividades (...), e qual foi o impacto (...) em sua prática como professor? Cursos/oficinas sobre outros tópicos (...) (Cf. Dic.)'. 
VALUE LABELS TX_RESP_Q022
'A' 'Não participei'
'B' 'Sim, e não houve impacto'
'C' 'Sim, e houve um pequeno impacto'
'D' 'Sim, e houve um impacto moderado'
'E' 'Sim, e houve um grande impacto'.
VARIABLE LABELS TX_RESP_Q023 'Durante os últimos dois anos, você participou (...) dos seguintes tipos de atividades (...), e qual foi o impacto (...) em sua prática como professor? Curso de especialização (...) ou aperfeiçoamento (...) (Cf. DIC)'. 
VALUE LABELS TX_RESP_Q023
'A' 'Não participei'
'B' 'Sim, e não houve impacto'
'C' 'Sim, e houve um pequeno impacto'
'D' 'Sim, e houve um impacto moderado'
'E' 'Sim, e houve um grande impacto'.
VARIABLE LABELS TX_RESP_Q024 'Durante os últimos dois anos, (...), e qual foi o impacto dessa atividade em sua prática como professor? Curso de especialização (...) ou aperfeiçoamento (...) sobre outros tópicos em educação. (Cf. Dic.)'. 
VALUE LABELS TX_RESP_Q024
'A' 'Não participei'
'B' 'Sim, e não houve impacto'
'C' 'Sim, e houve um pequeno impacto'
'D' 'Sim, e houve um impacto moderado'
'E' 'Sim, e houve um grande impacto'.
VARIABLE LABELS TX_RESP_Q025 'Das atividades de desenvolvimento profissional de que você participou nos últimos dois anos, quantas você, pessoalmente, teve que pagar para participar?'. 
VALUE LABELS TX_RESP_Q025
'A' 'Nenhuma'
'B' 'Algumas'
'C' 'Todas'.
VARIABLE LABELS TX_RESP_Q026 'Considerando os temas a seguir, indique por favor sua necessidade de aperfeiçoamento profissional. Parâmetros ou Diretrizes curriculares em sua área de atuação'. 
VALUE LABELS TX_RESP_Q026
'A' 'Não há necessidade'
'B' 'Baixo nível de necessidade'
'C' 'Nível moderado de necessidade'
'D' 'Alto nível de necessidade'.
VARIABLE LABELS TX_RESP_Q027 'Considerando os temas a seguir, indique por favor sua necessidade de aperfeiçoamento profissional. Conteúdos específicos da minha disciplina principal de atuação'. 
VALUE LABELS TX_RESP_Q027
'A' 'Não há necessidade'
'B' 'Baixo nível de necessidade'
'C' 'Nível moderado de necessidade'
'D' 'Alto nível de necessidade'.
VARIABLE LABELS TX_RESP_Q028 'Considerando os temas a seguir, indique por favor sua necessidade de aperfeiçoamento profissional. Práticas de Ensino na minha disciplina principal de atuação'. 
VALUE LABELS TX_RESP_Q028
'A' 'Não há necessidade'
'B' 'Baixo nível de necessidade'
'C' 'Nível moderado de necessidade'
'D' 'Alto nível de necessidade'.
VARIABLE LABELS TX_RESP_Q029 'Considerando os temas a seguir, indique por favor sua necessidade de aperfeiçoamento profissional. Gestão e organização das atividades em sala de aula'. 
VALUE LABELS TX_RESP_Q029
'A' 'Não há necessidade'
'B' 'Baixo nível de necessidade'
'C' 'Nível moderado de necessidade'
'D' 'Alto nível de necessidade'.
VARIABLE LABELS TX_RESP_Q030 'Considerando os temas a seguir, indique por favor sua necessidade de aperfeiçoamento profissional. Metodologias de avaliação dos alunos'. 
VALUE LABELS TX_RESP_Q030
'A' 'Não há necessidade'
'B' 'Baixo nível de necessidade'
'C' 'Nível moderado de necessidade'
'D' 'Alto nível de necessidade'.
VARIABLE LABELS TX_RESP_Q031 'Considerando os temas a seguir, indique por favor sua necessidade de aperfeiçoamento profissional. Uso pedagógico das Tecnologias de Informação e Comunicação'. 
VALUE LABELS TX_RESP_Q031
'A' 'Não há necessidade'
'B' 'Baixo nível de necessidade'
'C' 'Nível moderado de necessidade'
'D' 'Alto nível de necessidade'.
VARIABLE LABELS TX_RESP_Q032 'Considerando os temas a seguir, indique por favor sua necessidade de aperfeiçoamento profissional. Formação específica para trabalhar com estudantes '+
'com deficiência ou necessidades especiais'. 
VALUE LABELS TX_RESP_Q032
'A' 'Não há necessidade'
'B' 'Baixo nível de necessidade'
'C' 'Nível moderado de necessidade'
'D' 'Alto nível de necessidade'.
VARIABLE LABELS TX_RESP_Q033 'Nos últimos dois anos, você gostaria de ter  participado de mais atividades de desenvolvimento profissional do que você participou?'. 
VALUE LABELS TX_RESP_Q033
'A' 'Não'
'B' 'Sim'.
VARIABLE LABELS TX_RESP_Q034 'Se você gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participação? O desenvolvimento profissional era muito caro/eu não podia pagar'. 
VALUE LABELS TX_RESP_Q034
'A' 'Não gostaria de ter participado'
'B' 'Não'
'C' 'Sim'.
VARIABLE LABELS TX_RESP_Q035 'Se você gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participação? Houve conflito com o meu horário de trabalho'. 
VALUE LABELS TX_RESP_Q035
'A' 'Não gostaria de ter participado'
'B' 'Não'
'C' 'Sim'.
VARIABLE LABELS TX_RESP_Q036 'Se você gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participação? Não tinha disponibilidade de tempo'. 
VALUE LABELS TX_RESP_Q036
'A' 'Não gostaria de ter participado'
'B' 'Não'
'C' 'Sim'.
VARIABLE LABELS TX_RESP_Q037 'Se você gostaria de ter participado de mais atividades de desenvolvimento profissional, os seguintes motivos impediram sua participação? Não houve oferta em minha área de interesse'. 
VALUE LABELS TX_RESP_Q037
'A' 'Não gostaria de ter participado'
'B' 'Não'
'C' 'Sim'.
VARIABLE LABELS TX_RESP_Q038 'Em seu tempo livre, você costuma: Ler jornais e revistas em geral'. 
VALUE LABELS TX_RESP_Q038
'A' 'Nunca ou quase nunca'
'B' 'De vez em quando'
'C' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q039 'Em seu tempo livre, você costuma: Ler livros'. 
VALUE LABELS TX_RESP_Q039
'A' 'Nunca ou quase nunca'
'B' 'De vez em quando'
'C' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q040 'Em seu tempo livre, você costuma: Ler sites na internet'. 
VALUE LABELS TX_RESP_Q040
'A' 'Nunca ou quase nunca'
'B' 'De vez em quando'
'C' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q041 'Em seu tempo livre, você costuma: Frequentar bibliotecas'. 
VALUE LABELS TX_RESP_Q041
'A' 'Nunca ou quase nunca'
'B' 'De vez em quando'
'C' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q042 'Em seu tempo livre, você costuma: Ir ao cinema'. 
VALUE LABELS TX_RESP_Q042
'A' 'Nunca ou quase nunca'
'B' 'De vez em quando'
'C' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q043 'Em seu tempo livre, você costuma: Ir a algum tipo de espetáculo ou exposição (teatro, museu, dança, música)'. 
VALUE LABELS TX_RESP_Q043
'A' 'Nunca ou quase nunca'
'B' 'De vez em quando'
'C' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q044 'Gostaríamos de saber quais os recursos que você utiliza para fins pedagógicos, nesta turma: Jornais e revistas informativas'. 
VALUE LABELS TX_RESP_Q044
'A' 'Não utilizo porque a escola não tem'
'B' 'Nunca'
'C' 'De vez em quando'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q045 'Gostaríamos de saber quais os recursos que você utiliza para fins pedagógicos, nesta turma: Livros de literatura em geral'. 
VALUE LABELS TX_RESP_Q045
'A' 'Não utilizo porque a escola não tem'
'B' 'Nunca'
'C' 'De vez em quando'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q046 'Gostaríamos de saber quais os recursos que você utiliza para fins pedagógicos, nesta turma: Projetor (datashow, projetor de transparências)'. 
VALUE LABELS TX_RESP_Q046
'A' 'Não utilizo porque a escola não tem'
'B' 'Nunca'
'C' 'De vez em quando'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q047 'Gostaríamos de saber quais os recursos que você utiliza para fins pedagógicos, nesta turma: Filmes, desenhos animados ou documentários'. 
VALUE LABELS TX_RESP_Q047
'A' 'Não utilizo porque a escola não tem'
'B' 'Nunca'
'C' 'De vez em quando'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q048 'Gostaríamos de saber quais os recursos que você utiliza para fins pedagógicos, nesta turma: Máquina copiadora (xerox)'. 
VALUE LABELS TX_RESP_Q048
'A' 'Não utilizo porque a escola não tem'
'B' 'Nunca'
'C' 'De vez em quando'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q049 'Gostaríamos de saber quais os recursos que você utiliza para fins pedagógicos, nesta turma: Programas/aplicativos pedagógicos de computador'. 
VALUE LABELS TX_RESP_Q049
'A' 'Não utilizo porque a escola não tem'
'B' 'Nunca'
'C' 'De vez em quando'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q050 'Gostaríamos de saber quais os recursos que você utiliza para fins pedagógicos, nesta turma: Internet'. 
VALUE LABELS TX_RESP_Q050
'A' 'Não utilizo porque a escola não tem'
'B' 'Nunca'
'C' 'De vez em quando'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q051 'Neste ano e nesta escola, como se deu a elaboração do Projeto Pedagógico?'. 
VALUE LABELS TX_RESP_Q051
'A' 'Não sei como foi desenvolvido'
'B' 'Não existe Projeto Pedagógico'
'C' 'Utilizando-se um modelo pronto, sem discussão com a equipe escolar'
'D' 'Utilizando-se um modelo pronto, mas com discussão com a equipe escolar'
'E' 'Utilizando-se um modelo pronto, porém com adaptações, sem discussão com a equipe escolar'
'F' 'Utilizando-se um modelo pronto, porém com adaptações e com discussão com a equipe escolar'
'G' 'Elaborou-se um modelo próprio, mas não houve discussão com a equipe escolar'
'H' 'Elaborou-se um modelo próprio e houve discussão com a equipe escolar'.
VARIABLE LABELS TX_RESP_Q052 'O Conselho de Classe é um órgão formado por todos os professores que lecionam em cada turma/série. Neste ano e nesta escola, quantas vezes se reuniu o Conselho de Classe?'. 
VALUE LABELS TX_RESP_Q052
'A' 'Não existe Conselho de Classe nesta escola'
'B' 'Nenhuma vez'
'C' 'Uma vez'
'D' 'Duas vezes'
'E' 'Três vezes ou mais'.
VARIABLE LABELS TX_RESP_Q053 'Nesta escola, com que frequência você fez o seguinte: Participou do planejamento do currículo escolar ou parte dele'. 
VALUE LABELS TX_RESP_Q053
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'.
VARIABLE LABELS TX_RESP_Q054 'Nesta escola, com que frequência você fez o seguinte: Trocou materiais didáticos com seus colegas'. 
VALUE LABELS TX_RESP_Q054
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'.
VARIABLE LABELS TX_RESP_Q055 'Nesta escola, com que frequência você fez o seguinte: Participou de reuniões com colegas que trabalham com a mesma série (ano) para a(o) qual leciona'. 
VALUE LABELS TX_RESP_Q055
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'.
VARIABLE LABELS TX_RESP_Q056 'Nesta escola, com que frequência você fez o seguinte: Participou em discussões sobre o desenvolvimento da aprendizagem de determinados alunos'. 
VALUE LABELS TX_RESP_Q056
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'.
VARIABLE LABELS TX_RESP_Q057 'Nesta escola, com que frequência você fez o seguinte: Envolveu-se em atividades conjuntas com diferentes professores (por exemplo, projetos interdisciplinares)'. 
VALUE LABELS TX_RESP_Q057
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'.
VARIABLE LABELS TX_RESP_Q058 'Nesta escola e neste ano, indique a frequência com que: O(A) diretor(a) discute metas educacionais com os professores nas reuniões'. 
VALUE LABELS TX_RESP_Q058
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q059 'Nesta escola e neste ano, indique a frequência com que: O(A) diretor(a) e os professores procuram assegurar que as questões de qualidade de ensino sejam uma responsabilidade coletiva'. 
VALUE LABELS TX_RESP_Q059
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q060 'Nesta escola e neste ano, indique a frequência com que: O(A) diretor(a) informa os professores sobre as possibilidades de aperfeiçoamento profissional'. 
VALUE LABELS TX_RESP_Q060
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q061 'Nesta escola e neste ano, indique a frequência com que: O(A) diretor(a) dá atenção especial a aspectos relacionados com a aprendizagem dos alunos'. 
VALUE LABELS TX_RESP_Q061
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q062 'Nesta escola e neste ano, indique a frequência com que: O(A) diretor(a) dá atenção especial a aspectos relacionados com as normas administrativas'. 
VALUE LABELS TX_RESP_Q062
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q063 'Nesta escola e neste ano, indique a frequência com que: O(A) diretor(a) dá atenção especial a aspectos relacionados com a manutenção da escola'. 
VALUE LABELS TX_RESP_Q063
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q064 'Nesta escola e neste ano, indique a frequência com que: O(A) diretor(a) me anima e me motiva para o trabalho'. 
VALUE LABELS TX_RESP_Q064
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q065 'Nesta escola e neste ano, indique a frequência com que: O(A) diretor(a) estimula atividades inovadoras'. 
VALUE LABELS TX_RESP_Q065
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q066 'Nesta escola e neste ano, indique a frequência com que: Sinto-me respeitado pelo(a) diretor(a)'. 
VALUE LABELS TX_RESP_Q066
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q067 'Nesta escola e neste ano, indique a frequência com que: Tenho confiança no(a) diretor(a) como profissional'. 
VALUE LABELS TX_RESP_Q067
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q068 'Nesta escola e neste ano, indique a frequência com que: Participo das decisões relacionadas com meu trabalho'. 
VALUE LABELS TX_RESP_Q068
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q069 'Nesta escola e neste ano, indique a frequência com que: A equipe de professores leva em consideração minhas ideias'. 
VALUE LABELS TX_RESP_Q069
'A' 'Nunca'
'B' 'Algumas vezes'
'C' 'Frequentemente'
'D' 'Sempre ou quase sempre'.
VARIABLE LABELS TX_RESP_Q070 'Na sua percepção, os possíveis problemas de aprendizagem dos alunos das série(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido à/ao(s): Carência de infraestrutura física'. 
VALUE LABELS TX_RESP_Q070
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q071 'Na sua percepção, os possíveis problemas de aprendizagem dos alunos das série(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido à/ao(s): Carência ou ineficiência da supervisão, coordenação e orientação pedagógica'. 
VALUE LABELS TX_RESP_Q071
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q072 'Na sua percepção, os possíveis problemas de aprendizagem dos alunos das série(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido à/ao(s): Conteúdos curriculares inadequados às necessidades dos alunos'. 
VALUE LABELS TX_RESP_Q072
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q073 'Na sua percepção, os possíveis problemas de aprendizagem dos alunos das série(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido à/ao(s): '+
' Não cumprimento dos conteúdos curriculares ao longo da trajetória escolar do aluno'. 
VALUE LABELS TX_RESP_Q073
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q074 'Na sua percepção, os possíveis problemas de aprendizagem dos alunos das série(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido à/ao(s): '+
' Sobrecarga de trabalho dos professores, dificultando o planejamento e o preparo das aulas'. 
VALUE LABELS TX_RESP_Q074
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q075 'Na sua percepção, os possíveis problemas de aprendizagem dos alunos das série(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido à/ao(s): Insatisfação e desestímulo do professor com a carreira docente'. 
VALUE LABELS TX_RESP_Q075
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q076 'Na sua percepção, os possíveis problemas de aprendizagem dos alunos das série(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido à/ao(s): Meio social em que o aluno vive'. 
VALUE LABELS TX_RESP_Q076
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q077 'Na sua percepção, os possíveis problemas de aprendizagem dos alunos das série(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido à/ao(s): Nível cultural dos pais dos alunos'. 
VALUE LABELS TX_RESP_Q077
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q078 'Na sua percepção, os possíveis problemas de aprendizagem dos alunos das série(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido à/ao(s): Falta de assistência e acompanhamento dos pais na vida escolar do aluno'. 
VALUE LABELS TX_RESP_Q078
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q079 'Na sua percepção, os possíveis problemas de aprendizagem dos alunos das série(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido à/ao(s): Baixa autoestima dos alunos'. 
VALUE LABELS TX_RESP_Q079
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q080 'Na sua percepção, os possíveis problemas de aprendizagem dos alunos das série(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido à/ao(s): Desinteresse e falta de esforço do aluno'. 
VALUE LABELS TX_RESP_Q080
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q081 'Na sua percepção, os possíveis problemas de aprendizagem dos alunos das série(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido à/ao(s): Indisciplina dos alunos em sala de aula'. 
VALUE LABELS TX_RESP_Q081
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q082 'Na sua percepção, os possíveis problemas de aprendizagem dos alunos das série(s) ou ano(s) avaliado(s) ocorrem, nesta escola, devido à/ao(s): Alto índice de faltas por parte dos alunos'. 
VALUE LABELS TX_RESP_Q082
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q083 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não neste ano, nesta escola: Agressão verbal ou física de alunos a professores ou a funcionários da escola'. 
VALUE LABELS TX_RESP_Q083
'A' 'Sim'
'B' 'não'.
VARIABLE LABELS TX_RESP_Q084 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não neste ano, nesta escola: Agressão verbal ou física de alunos a outros alunos da escola'. 
VALUE LABELS TX_RESP_Q084
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q085 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não neste ano, nesta escola: Você foi vítima de atentado à vida'. 
VALUE LABELS TX_RESP_Q085
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q086 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não neste ano, nesta escola: Você foi ameaçado por algum aluno'. 
VALUE LABELS TX_RESP_Q086
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q087 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não neste ano, nesta escola: Você foi vítima de furto (sem uso de violência)'. 
VALUE LABELS TX_RESP_Q087
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q088 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não neste ano, nesta escola: Você foi vítima de roubo (com uso de violência)'. 
VALUE LABELS TX_RESP_Q088
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q089 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não neste ano, nesta escola: Alunos frequentaram as suas aulas sob efeito de bebida alcoólica'. 
VALUE LABELS TX_RESP_Q089
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q090 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não neste ano, nesta escola: Alunos frequentaram as suas aulas sob efeito de drogas ilícitas'. 
VALUE LABELS TX_RESP_Q090
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q091 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não neste ano, nesta escola: Alunos frequentaram as suas aulas portando arma branca (facas, canivetes etc.)'. 
VALUE LABELS TX_RESP_Q091
'A' 'Sim'
'B' 'não'.
VARIABLE LABELS TX_RESP_Q092 'Sobre os fatos listados abaixo, diga se eles aconteceram ou não neste ano, nesta escola: Alunos frequentaram as suas aulas portando arma de fogo'. 
VALUE LABELS TX_RESP_Q092
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q093 '(SOMENTE PARA PROFESSORES DA 4.ª série/5.º ano) Na sua opinião, quantos dos alunos desta turma você acha que concluirão a 4.ª série/5.º ano neste ano?'. 
VALUE LABELS TX_RESP_Q093
'A' 'Poucos alunos'
'B' 'Um pouco menos da metade dos alunos'
'C' 'Um pouco mais da metade dos alunos'
'D' 'Quase todos os alunos'.
VARIABLE LABELS TX_RESP_Q094 '(SOMENTE PARA PROFESSORES DA 4.ª série/5.º ano e 8.ª série/9.º ano) Na sua opinião, quantos dos alunos desta turma você acha que concluirão o ensino fundamental?'. 
VALUE LABELS TX_RESP_Q094
'A' 'Poucos alunos'
'B' 'Um pouco menos da metade dos alunos'
'C' 'Um pouco mais da metade dos alunos'
'D' 'Quase todos os alunos'.
VARIABLE LABELS TX_RESP_Q095 '(PARA TODOS OS PROFESSORES) Quantos dos alunos desta turma você acha que concluirão o ensino médio?'. 
VALUE LABELS TX_RESP_Q095
'A' 'Poucos alunos'
'B' 'Um pouco menos da metade dos alunos'
'C' 'Um pouco mais da metade dos alunos'
'D' 'Quase todos os alunos'.
VARIABLE LABELS TX_RESP_Q096 '(PARA TODOS OS PROFESSORES) Quantos dos alunos desta turma você acha que entrarão na universidade?'. 
VALUE LABELS TX_RESP_Q096
'A' 'Poucos alunos'
'B' 'Um pouco menos da metade dos alunos'
'C' 'Um pouco mais da metade dos alunos'
'D' 'Quase todos os alunos'.
VARIABLE LABELS TX_RESP_Q097 'Para a disciplina que você ministra neste ano, você participou da escolha dos livros didáticos para utilização nesta turma?'. 
VALUE LABELS TX_RESP_Q097
'A' 'Sim'
'B' 'Não'.
VARIABLE LABELS TX_RESP_Q098 'O livro didático escolhido foi o recebido?'. 
VALUE LABELS TX_RESP_Q098
'A' 'Sim'
'B' 'Não'
'C' 'Não sei'.
VARIABLE LABELS TX_RESP_Q099 'Os alunos desta turma têm livros didáticos?'. 
VALUE LABELS TX_RESP_Q099
'A' 'Não, esta turma não recebeu o livro didático'
'B' 'Sim, menos da metade da turma tem'
'C' 'Sim, metade da turma tem'
'D' 'Sim, a maioria tem'
'E' 'Sim, todos têm'.
VARIABLE LABELS TX_RESP_Q100 'Os alunos desta turma receberam o livro didático no início do ano letivo?'. 
VALUE LABELS TX_RESP_Q100
'A' 'Sim'
'B' 'Não'
'C' 'Não sei'.
VARIABLE LABELS TX_RESP_Q101 'Como você avalia a qualidade dos livros didáticos que você utiliza nesta turma, neste ano?'. 
VALUE LABELS TX_RESP_Q101
'A' 'Não utilizo livros didáticos'
'B' 'Ruim'
'C' 'Razoável'
'D' 'Boa'
'E' 'Ótima'.
VARIABLE LABELS TX_RESP_Q102 'Para esta turma, qual o percentual do tempo de aula que você usualmente gastou realizando cada uma das seguintes atividades: Realizando tarefas administrativas (ex.: fazendo  a chamada, preenchendo formulários etc.)'. 
VALUE LABELS TX_RESP_Q102
'A' 'Menos de 10%'
'B' 'De 10% a menos 20%'
'C' 'De 20% a menos de 40%'
'D' 'De 40% a menos de 60%'
'E' 'De 60% a menos de 80%'
'F' '80% ou mais'.
VARIABLE LABELS TX_RESP_Q103 'Para esta turma, qual o percentual do tempo de aula que você usualmente gastou realizando cada uma das seguintes atividades: Mantendo a ordem/disciplina na sala de aula'. 
VALUE LABELS TX_RESP_Q103
'A' 'Menos de 10%'
'B' 'De 10% a menos 20%'
'C' 'De 20% a menos de 40%'
'D' 'De 40% a menos de 60%'
'E' 'De 60% a menos de 80%'
'F' '80% ou mais'.
VARIABLE LABELS TX_RESP_Q104 'Para esta turma, qual o percentual do tempo de aula que você usualmente gastou realizando cada uma das seguintes atividades: Realizando atividades de ensino e aprendizagem'. 
VALUE LABELS TX_RESP_Q104
'A' 'Menos de 10%'
'B' 'De 10% a menos 20%'
'C' 'De 20% a menos de 40%'
'D' 'De 40% a menos de 60%'
'E' 'De 60% a menos de 80%'
'F' '80% ou mais'.
VARIABLE LABELS TX_RESP_Q105 'Nesta turma, qual disciplina você leciona?'. 
VALUE LABELS TX_RESP_Q105
'A' 'Língua Portuguesa'
'B' 'Matemática'
'C' 'Mais de uma disciplina'.
VARIABLE LABELS TX_RESP_Q106 'Quanto do conteúdo previsto você conseguiu desenvolver com os alunos desta turma neste ano?'. 
VALUE LABELS TX_RESP_Q106
'A' 'Menos de 20%'
'B' 'De 20% a menos de 40%'
'C' 'De 40% a menos de 60%'
'D' 'De 60% a menos de 80%'
'E' '80% ou mais'.
VARIABLE LABELS TX_RESP_Q107 'Indique a frequência com que você desenvolve as seguintes práticas pedagógicas nesta turma: Propor dever de casa'. 
VALUE LABELS TX_RESP_Q107
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q108 'Indique a frequência com que você desenvolve as seguintes práticas pedagógicas nesta turma: Corrigir com os alunos o dever de casa'. 
VALUE LABELS TX_RESP_Q108
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q109 'Indique a frequência com que você desenvolve as seguintes práticas pedagógicas nesta turma: Desenvolver atividades em grupo, em sala de aula, para que os alunos busquem soluções de problemas'. 
VALUE LABELS TX_RESP_Q109
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q110 'Indique a frequência com que você desenvolve as seguintes práticas pedagógicas nesta turma: Desenvolver projetos temáticos com o objetivo de aprimorar as habilidades de trabalho em equipe'. 
VALUE LABELS TX_RESP_Q110
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q111 'Indique a frequência com que você desenvolve as seguintes práticas pedagógicas nesta turma: Solicitar que os alunos copiem textos e atividades do livro didático ou do quadro negro (lousa)'. 
VALUE LABELS TX_RESP_Q111
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q112 'Indique a frequência com que você desenvolve as seguintes práticas pedagógicas nesta turma: Estimular os alunos a expressarem suas opiniões e a desenvolverem argumentos a partir de temas diversos'. 
VALUE LABELS TX_RESP_Q112
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q113 'Indique a frequência com que você desenvolve as seguintes práticas pedagógicas nesta turma: Propor situações de aprendizagem que sejam familiares ou de interesse dos alunos'. 
VALUE LABELS TX_RESP_Q113
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q114 'Indique a frequência com que você desenvolve as seguintes práticas pedagógicas nesta turma: Promover discussões a partir de textos de jornais ou revistas'. 
VALUE LABELS TX_RESP_Q114
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q115 'Indique a frequência com que você desenvolve as seguintes práticas pedagógicas nesta turma: Propor atividades gramaticais relacionadas aos textos de jornais ou revistas'. 
VALUE LABELS TX_RESP_Q115
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q116 'Indique a frequência com que você desenvolve as seguintes práticas pedagógicas nesta turma: Promover a leitura e discussão de contos, crônicas, poesias ou romances'. 
VALUE LABELS TX_RESP_Q116
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q117 'Indique a frequência com que você desenvolve as seguintes práticas pedagógicas nesta turma: Utilizar contos, crônicas, poesias ou romances para exercitar aspectos da gramática'. 
VALUE LABELS TX_RESP_Q117
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q118 'Indique a frequência com que você desenvolve as seguintes práticas pedagógicas nesta turma: Utilizar revistas em quadrinhos como instrumento de aprendizado'. 
VALUE LABELS TX_RESP_Q118
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q119 'Indique a frequência com que você desenvolve as seguintes práticas pedagógicas nesta turma: Fixar os nomes de conceitos gramaticais e linguísticos'. 
VALUE LABELS TX_RESP_Q119
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q120 'Indique a frequência com a que você desenvolve as seguintes práticas pedagógicas nesta turma: Fazer exercícios para fixar procedimentos e regras'. 
VALUE LABELS TX_RESP_Q120
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q121 'Indique a frequência com a que você desenvolve as seguintes práticas pedagógicas nesta turma: Discutir se os resultados numéricos obtidos na solução de um problema são adequados à situação apresentada'. 
VALUE LABELS TX_RESP_Q121
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q122 'Indique a frequência com a que você desenvolve as seguintes práticas pedagógicas nesta turma: Discutir diferentes modos para resolver problemas e cálculos'. 
VALUE LABELS TX_RESP_Q122
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q123 'Indique a frequência com a que você desenvolve as seguintes práticas pedagógicas nesta turma: Lidar com temas que aparecem em jornais e/ou revistas, discutindo a relação dos temas com a matemática'. 
VALUE LABELS TX_RESP_Q123
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q124 'Indique a frequência com a que você desenvolve as seguintes práticas pedagógicas nesta turma: Fornecer esquemas/regras que permitem obter as respostas certas dos cálculos e problemas'. 
VALUE LABELS TX_RESP_Q124
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.
VARIABLE LABELS TX_RESP_Q125 'Indique a frequência com a que você desenvolve as seguintes práticas pedagógicas nesta turma: Experimentar diferentes ações (coletar informações, recortar, explorar, manipular etc.) para resolver problemas'. 
VALUE LABELS TX_RESP_Q125
'A' 'Nunca'
'B' 'Uma vez por ano'
'C' 'De 3 a 4 vezes ao ano'
'D' 'Mensalmente'
'E' 'Semanalmente'
'F' 'Diariamente'.




