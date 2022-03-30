CREATE TABLE Pessoa ( --entidade
    Nome VARCHAR2 (255),
    CPF VARCHAR2 (14),
    CONSTRAINT Pessoa_pkey PRIMARY KEY(CPF)
);

Create Table militar (
    cpf VARCHAR2(14),
    patente NUMBER NOT NULL,
    CONSTRAINT militar_pk PRIMARY KEY (cpf),
    CONSTRAINT militar_cpf FOREIGN KEY (cpf) REFERENCES pessoa (cpf)
);

Create Table condecoracoes (
    cpf VARCHAR2(14),
    condecoracao VARCHAR2(30),
    CONSTRAINT condecoracoes_pk PRIMARY KEY (cpf),
    CONSTRAINT condecoracoes_cpf FOREIGN KEY (cpf) REFERENCES militar(cpf)
);

Create Table base_militar (
    nome VARCHAR2(30),
    especialidade VARCHAR2(30) NOT NULL,
    CONSTRAINT base_pk PRIMARY KEY (nome)
);

Create Table telefone_base (
    nome_base VARCHAR2(30),
    ddd NUMBER NOT NULL,
    numero NUMBER NOT NULL,
    CONSTRAINT telefone_pk PRIMARY KEY (nome_base),
    CONSTRAINT telefone_nome FOREIGN KEY (nome_base) REFERENCES base_militar(nome)
);

Create Table endereco_base (
    nome_base VARCHAR2(30),
    cep NUMBER NOT NULL,
    rua VARCHAR2(30) NOT NULL,
    numero NUMBER,
    complemento VARCHAR2(10),
    CONSTRAINT endereco_pk PRIMARY KEY (nome_base),
    CONSTRAINT endereco_nome FOREIGN KEY (nome_base) REFERENCES base_militar(nome)
);

