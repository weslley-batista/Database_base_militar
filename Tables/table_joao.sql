Create Table militar (
    cpf NUMBER,
    patente tinyint NOT NULL,
    CONSTRAINT militar_pk PRIMARY KEY (cpf),
    CONSTRAINT militar_cpf FOREIGN KEY (cpf) REFERENCES pessoa (cpf)
);

Create Table condecoracoes (
    cpf NUMBER,
    condecoracao VARCHAR2(30),
    CONSTRAINT condecoracoes_pk PRIMARY KEY (cpf),
    CONSTRAINT condecoracoes_cpf FOREIGN KEY (cpf) REFERENCES militar(cpf)
);

Create Table base_militar (
    nome VARCHAR2(30),
    especialidade VARCHAR2(10) NOT NULL,
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
    cep int NOT NULL,
    rua varchar NOT NULL,
    numero int NOT NULL,
    complemento VARCHAR2(10),
    CONSTRAINT endereco_pk PRIMARY KEY (nome_base),
    CONSTRAINT endereco_nome FOREIGN KEY (nome_base) REFERENCES base_militar(nome)
);

