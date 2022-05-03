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