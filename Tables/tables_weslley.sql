CREATE TABLE Pessoa ( --entidade
    Nome VARCHAR2 (255),
    CPF VARCHAR2 (14),
    CONSTRAINT Pessoa_pkey PRIMARY KEY(CPF)
);

CREATE TABLE Endereco_da_pessoa ( --composto
    Cpf_pessoa VARCHAR2 (14),
    Rua VARCHAR2 (255),
    Numero NUMBER (38),
    Complemento VARCHAR2 (255),
    CEP VARCHAR2 (14),
    CONSTRAINT Endereco_da_pessoa_fkey FOREIGN KEY (Cpf_pessoa) REFERENCES Pessoa (CPF)
);
CREATE TABLE Telefone_da_pessoa ( --multivalorado
    Cpf_pessoa VARCHAR2 (14),
    Numero_telefone VARCHAR2 (15),
    CONSTRAINT Telefone_da_pessoa_fkey FOREIGN KEY (Cpf_pessoa) REFERENCES Pessoa (CPF),
    CONSTRAINT Telefone_da_pessoa_const unique (Numero_telefone)
);
CREATE TABLE Prestador_de_serviço(
    CPF VARCHAR2 (14),
    Especialidade VARCHAR2 (255),
    CONSTRAINT Prestador_de_serviço_pkey PRIMARY KEY(CPF)
);
