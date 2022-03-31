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

Create Sequence id_servico_seq
    INCREMENT BY 1 START WITH 1;

Create Table servico ( --entidade   
    Id_servico NUMBER (11), 
    Nome VARCHAR2,
    Descricao VARCHAR2,    
    CONSTRAINT servico_pkey PRIMARY KEY(id)
);

Create Table executa_servico ( 
    Prestador_de_servico NUMBER(11), 
    Servico NUMBER,
    Cpf_militar varchar2(14)
    CONSTRAINT prestador_de_servico_fkey FOREIGN KEY (prestador_de_servico) REFERENCES prestador_de_serviço (cpf),
    CONSTRAINT servico_fkey FOREIGN key (servico) REFERENCES servico (id),
    CONSTRAINT cpf_militar_fkey FOREIGN KEY (cpf_militar) REFERENCES militar (cpf)
);

Create Table Quadrante ( 
    Coordenadas VARCHAR2, 
    Terreno VARCHAR2,    
    CONSTRAINT coordenadas_pkey PRIMARY KEY(coordenadas)
    
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

CREATE TABLE Militar_comandado(
    militar_comandante_cpf VARCHAR2(11) NOT NULL,
    militar_comandado_cpf VARCHAR2(11) NOT NULL,
    quadrante_coordenadas VARCHAR2(11),
    numero_agrupamento INTEGER NOT NULL,
    CONSTRAINT militar_comandado_pk PRIMARY KEY (militar_comandante_cpf,militar_comandado_cpf),
    CONSTRAINT militar_comandado_fk FOREIGN KEY (quadrante_coordenadas) REFERENCES Quadrante(coordenadas)
);

CREATE TABLE Visitante(
    nome VARCHAR2(100) NOT NULL,
    cpf_militar VARCHAR2(11) NOT NULL,
    CONSTRAINT Visitante_pk PRIMARY KEY (nome,cpf_militar)
);

CREATE TABLE Comunicação_entre_bases(
    base_inicia_cominicação VARCHAR2(100) NOT NULL,
    base_recebe_comunicação VARCHAR2(100) NOT NULL,
    CONSTRAINT Comunicação_entre_bases_fk1 FOREIGN KEY (base_inicia_cominicação) REFERENCES Base_militar(nome),
    CONSTRAINT Comunicação_entre_bases_fk2 FOREIGN KEY (base_recebe_comunicação) REFERENCES Base_militar(nome)
);

CREATE SEQUENCE Id
    INCREMENT BY 1 START WITH 1;
    
CREATE TABLE Arsenal ( -- entidade
    Id NUMBER NOT NULL,
    Categoria_armazem VARCHAR2 NOT NULL,
    Data_de_manutencao DATE NOT NULL,
    Capacidade_maxima NUMBER NOT NULL,
    Nome_base_militar VARCHAR2 NOT NULL,
    CONSTRAINT Id_pkey PRIMARY KEY (Id),
    CONSTRAINT Nome_base_militar_fkey FOREIGN KEY (Nome_base_militar) REFERENCES Base_militar (Nome)
);

CREATE TABLE Arma ( -- entidade
    Numero_de_registro BIGINT NOT NULL,
    Id_arsenal NUMBER NOT NULL, -- 
    Calibre VARCHAR2 NOT NULL, -- .556
    Fabricacao VARCHAR2 NOT NULL,
    Nome_do_armamento VARCHAR2 NOT NULL,
    Horario_e_data TIMESTAMP NOT NULL,
    CONSTRAINT Numero_de_registro_pkey PRIMARY KEY (Numero_de_registro),
    CONSTRAINT Id_arsenal_fkey FOREIGN KEY (Id_arsenal) REFERENCES Arsenal (Id),
    CONSTRAINT Horario_e_data_fkey FOREIGN KEY (Horario_e_data) REFERENCES Fornecer_armamento (Horario_e_data)
);

CREATE TABLE Fornecer_armamento ( -- relacionamento triplo temporal
    Horario_e_data TIMESTAMP NOT NULL,
    Cpf_militar VARCHAR2 (14) NOT NULL, -- 000.000.000-00
    Registro_arma VARCHAR2 NOT NULL,
    Id_arsenal NUMBER NOT NULL,
    CONSTRAINT Cpf_militar_fkey FOREIGN KEY (Cpf_militar) REFERENCES Militar (Cpf),
    CONSTRAINT Registro_arma_fkey FOREIGN KEY (Registro_arma) REFERENCES Arma (Numero_de_registro),
    CONSTRAINT Id_arsenal_fkey FOREIGN KEY (Id_arsenal) REFERENCES Arsenal (Id)
);


