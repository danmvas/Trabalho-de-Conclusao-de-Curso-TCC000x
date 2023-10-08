CREATE TABLE tb_sub_justificativa (
    co_sub_justificativa INTEGER PRIMARY KEY,
    id_sub_justificativa VARCHAR(3) NOT NULL,
    no_sub_justificativa VARCHAR(350) NOT NULL,
    co_justificativa INTEGER REFERENCES tb_justificativa(co_justificativa)
);