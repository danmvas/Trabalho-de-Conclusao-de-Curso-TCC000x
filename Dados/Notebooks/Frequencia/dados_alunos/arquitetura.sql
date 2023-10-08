CREATE TABLE tb_instituicao (
    co_instituicao INTEGER PRIMARY KEY ,
    no_instituicao VARCHAR(100) NOT NULL
);

CREATE TABLE tb_professor (
    co_professor INTEGER PRIMARY KEY ,
    no_professor VARCHAR(150) NOT NULL
);

CREATE TABLE tb_aluno (
    co_aluno INTEGER PRIMARY KEY ,
    no_aluno VARCHAR(150) NOT NULL,
    dt_nascimento DATE NOT NULL,
    co_instituicao INTEGER NOT NULL
);

CREATE TABLE tb_turno (
    co_turno INTEGER PRIMARY KEY ,
    no_turno VARCHAR(100) NOT NULL
);

CREATE TABLE tb_disciplina (
    co_disciplina INTEGER PRIMARY KEY ,
    no_disciplina VARCHAR(100) NOT NULL
);

CREATE TABLE tb_serie_ano (
    -- Ensino Infantil
        -- 1. Berçário, 2. Creche, 3. Pré-escola

    -- Ensino Fundamental
        -- 4. 1º ano, 
        -- 5. 2º ano,
        -- 6. 3º ano,
        -- 7. 4º ano,
        -- 8. 5º ano,
        -- 9. 6º ano,
        -- 10. 7º ano,
        -- 11. 8º ano,
        -- 12. 9º ano,

    -- Ensino Médio
        -- 13. 1ª série,
        -- 14. 2ª série,
        -- 15. 3ª série,

    -- Ensino Médio Técnico 
        -- 16. 1º ano,
        -- 17. 2º ano,
        -- 18. 3º ano,
        -- 19. 4º ano

    co_serie INTEGER PRIMARY KEY,
    no_serie VARCHAR(100)--,
    -- co_etapa_modalidade_ensino INTEGER NOT NULL REFERENCES tb_etapa_modalidade_ensino(co_etapa_modalidade_ensino)   
);

CREATE TABLE tb_turma (
    co_turma INTEGER PRIMARY KEY ,
    no_turma VARCHAR(30) NOT NULL,
    co_serie INTEGER NOT NULL REFERENCES tb_serie_ano(co_serie),
    co_turno INTEGER NOT NULL REFERENCES tb_turno(co_turno),
    co_professor INTEGER NOT NULL REFERENCES tb_professor(co_professor),
    co_instituicao INTEGER NOT NULL REFERENCES tb_instituicao(co_instituicao),
    dt_inicio_turma TIME NOT NULL,
    dt_termino_turma TIME NOT NULL,
    ds_local VARCHAR(50),
    nu_ano_letivo INTEGER NOT NULL,
    co_disciplina INTEGER REFERENCES tb_disciplina(co_disciplina),
    st_ativa BOOLEAN NOT NULL
);

CREATE TABLE tb_horario (
    co_horario_turma BIGSERIAL PRIMARY KEY ,
    co_turma BIGINT NOT NULL REFERENCES tb_turma(co_turma),
    nu_dia_semana INTEGER NOT NULL,
    ho_inicio TIME NOT NULL,
    ho_termino TIME NOT NULL
);

CREATE TABLE tb_aluno_turma (
    co_aluno_turma BIGSERIAL PRIMARY KEY ,
    co_aluno INTEGER NOT NULL,
    co_turma INTEGER NOT NULL REFERENCES tb_turma(co_turma),
    st_ativo BOOLEAN NOT NULL
);

CREATE TABLE tb_historico_versoes (
    co_historico_versao_turma BIGSERIAL NOT NULL,
    co_turma INTEGER NOT NULL REFERENCES tb_turma(co_turma),
    nu_versao_turma INT NOT NULL,
    dt_versao_turma DATE NOT NULL,
    co_alunos_turma BIGINT[] NOT NULL
);

CREATE TABLE tb_justificativa (
    co_justificativa INTEGER PRIMARY KEY,
    id_justificativa VARCHAR(3) NOT NULL,
    no_justificativa VARCHAR(350) NOT NULL
);

CREATE TABLE tb_sub_justificativa (
    co_sub_justificativa INTEGER PRIMARY KEY,
    id_sub_justificativa VARCHAR(3) NOT NULL,
    no_sub_justificativa VARCHAR(350) NOT NULL,
    co_justificativa INTEGER REFERENCES tb_justificativa(co_justificativa)
);

CREATE TABLE tb_presenca(
    co_status_presenca INTEGER PRIMARY KEY ,
    no_status_presenca VARCHAR(100) NOT NULL,
    sg_status_presenca CHAR(1) NOT NULL
);

CREATE TABLE tb_frequencia_aluno (
    co_frequencia_aluno BIGSERIAL PRIMARY KEY ,
    co_turma INTEGER NOT NULL REFERENCES tb_turma(co_turma),
    co_aluno INTEGER NOT NULL REFERENCES tb_aluno(co_aluno),
    dt_frequencia DATE NOT NULL,
    co_status_presenca INTEGER NOT NULL REFERENCES tb_presenca(co_status_presenca),
    co_sub_justificativa INTEGER REFERENCES tb_sub_justificativa(co_sub_justificativa)
);

CREATE TABLE tb_feriado (
    co_feriado INTEGER PRIMARY KEY ,
    no_feriado VARCHAR(100) NOT NULL,
    dt_feriado DATE NOT NULL,
    tp_ambito_feriado INTEGER,
    co_municipio INTEGER,
    co_uf INTEGER,
    tp_remarcado BOOLEAN,
    co_feriado_original BIGINT,
    ds_decreto_mudanca VARCHAR(100)
);

CREATE TABLE tb_registro (
    co_registro_aula BIGSERIAL PRIMARY KEY ,
    co_turma INTEGER NOT NULL REFERENCES tb_turma(co_turma),
    dt_aula DATE NOT NULL
);