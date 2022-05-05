CREATE TABLE tb_endereco OF tp_endereco(
    CEP PRIMARY KEY
);
/
CREATE TABLE tb_telefone OF tp_telefone(
    Numero PRIMARY KEY
); 
/
CREATE TABLE tb_pessoa OF tp_pessoa(
    Nome PRIMARY KEY,
    Endereco WITH ROWID REFERENCES tb_endereco
);
/
CREATE TABLE tb_militar OF tp_militar(
    Nome PRIMARY KEY,
    Patente NOT NULL
) NESTED TABLE descricao STORE AS tb_descricao_militar;
/
CREATE TABLE tb_base OF tp_base(
    Nome PRIMARY KEY,
    Especialidade NOT NULL
);
/