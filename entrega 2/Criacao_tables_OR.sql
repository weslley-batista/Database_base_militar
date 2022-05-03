CREATE TABLE tb_endereco_pessoa OF tp_endereco_pessoa(
    CEP NOT NULL
);
/
CREATE TABLE tb_telefone_pessoa OF tp_telefone_pessoa(
    Numero tp_arr_telefone NOT NULL
);
/
CREATE TABLE tb_pessoa OF tp_pessoa(
    Nome PRIMARY KEY,
    Telefone WITH ROWID REFERENCES tb_telefone_pessoa,
    Endereco WITH ROWID REFERENCES tb_endereco_pessoa
);
/
CREATE TABLE tb_militar OF tp_militar(
    CPF PRIMARY KEY,
    Salario NOT NULL,
    Patente NOT NULL,
    lista_telefone tp_nt_telefone
) NESTED TABLE lista_telefone STORE AS tb_lista_telefone;
/
CREATE TABLE tp_telefone_base OF tp_telefone_base(
    Numero tp_arr_telefone_base NOT NULL
);
/
CREATE TABLE tp_endereco_base OF tp_endereco_base(
    Nome NOT NULL,
    CEP NOT NULL
);
/
CREATE TABLE tp_base OF tp_base(
    Nome PRIMARY KEY,
    Especialidade NOT NULL,
    lista_telefone_base tp_nt_telefone_base
) NESTED TABLE lista_telefone_base STORE AS tb_lista_telefone_base;