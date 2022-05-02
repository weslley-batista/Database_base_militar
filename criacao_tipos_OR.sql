-- Informações relacionada ao endereço, sendo o tipo que estará em pessoa, no qual militar e prestador de serviço herdam
CREATE OR REPLACE TYPE tp_endereco_pessoa AS OBJECT (
    Cpf_pessoa VARCHAR2 (14),
    Rua VARCHAR2 (255),
    Numero NUMBER (38),
    Complemento VARCHAR2 (255),
    CEP VARCHAR2 (10)
);

CREATE OR REPLACE TYPE tp_telefone_pessoa AS OBJECT (
    Numero VARCHAR2 (15)
);

CREATE OR REPLACE TYPE tp_arr_telefone AS VARRAY (10) OF tp_telefone_pessoa;