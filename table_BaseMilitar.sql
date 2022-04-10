DROP TABLE Pessoa;
DROP TABLE Militar;
DROP TABLE Endereco_da_pessoa;
DROP TABLE Telefone_da_pessoa;
DROP TABLE Prestador_de_servico;
DROP TABLE Servico;
DROP TABLE Executa_servico;
DROP TABLE Quadrante;
DROP TABLE Condecoracoes;
DROP TABLE Base_militar;
DROP TABLE Telefone_base;
DROP TABLE Endereco_base;
DROP TABLE Militar_comandado;
DROP TABLE Visitante;
DROP TABLE Comunicacao_entre_bases;
DROP TABLE Arsenal;
DROP TABLE Arma;
DROP TABLE Fornecer_armamento;

CREATE TABLE Pessoa ( --entidade
    Nome VARCHAR2 (100),
    CPF VARCHAR2 (14),
    CONSTRAINT Pessoa_pkey PRIMARY KEY(CPF)
);

CREATE TABLE Militar (
    cpf VARCHAR2(14),
    patente NUMBER NOT NULL,
    CONSTRAINT militar_pkey PRIMARY KEY (cpf),
    CONSTRAINT militar_fkey FOREIGN KEY (cpf) REFERENCES pessoa (CPF) ON DELETE CASCADE
);

CREATE TABLE Endereco_da_pessoa ( --composto
    Cpf_pessoa VARCHAR2 (14),
    Rua VARCHAR2 (255),
    Numero NUMBER (38),
    Complemento VARCHAR2 (255),
    CEP VARCHAR2 (14),
    CONSTRAINT Endereco_da_pessoa_fkey FOREIGN KEY (Cpf_pessoa) REFERENCES Pessoa (CPF) ON DELETE CASCADE
);

CREATE TABLE Telefone_da_pessoa ( --multivalorado
    Cpf_pessoa VARCHAR2 (14),
    Numero_telefone VARCHAR2 (15),
    CONSTRAINT numero_telefone_PK PRIMARY KEY (Cpf_pessoa, Numero_telefone),
    CONSTRAINT Telefone_da_pessoa_fkey FOREIGN KEY (Cpf_pessoa) REFERENCES Pessoa (CPF) ON DELETE CASCADE,
    CONSTRAINT Telefone_da_pessoa_const UNIQUE (Numero_telefone)
);

CREATE TABLE Prestador_de_servico(
    CPF VARCHAR2 (14),
    Especialidade VARCHAR2 (255),
    CONSTRAINT Prestador_de_servico_pkey PRIMARY KEY(CPF),
    CONSTRAINT Prestador_de_servico_fkey FOREIGN KEY (CPF) REFERENCES Pessoa (CPF) ON DELETE SET NULL
);

CREATE SEQUENCE id_servico_seq
    INCREMENT BY 1 START WITH 1;

CREATE TABLE Servico ( --entidade   
    id_servico_seq NUMBER, 
    Nome VARCHAR2(300),
    Descricao VARCHAR2(300),    
    CONSTRAINT servico_pkey PRIMARY KEY(id_servico_seq)
);

CREATE TABLE Executa_servico (
    Prestador_de_servico VARCHAR2(14),
    Servico NUMBER,
    Cpf_militar VARCHAR2(14),
    CONSTRAINT executa_servico_fkey1 FOREIGN KEY (Prestador_de_servico) REFERENCES Prestador_de_servico(cpf) ON DELETE CASCADE,
    CONSTRAINT executa_servico_fkey2 FOREIGN key (Servico) REFERENCES Servico (id_servico_seq) ON DELETE SET NULL,
    CONSTRAINT executa_servico_fkey3 FOREIGN KEY (Cpf_militar) REFERENCES Militar (cpf) ON DELETE SET NULL
);

CREATE TABLE Quadrante ( 
    Coordenadas VARCHAR2(300), 
    Terreno VARCHAR2(300),    
    CONSTRAINT Quadrante_pkey PRIMARY KEY(coordenadas)
    
);

CREATE TABLE Condecoracoes (
    cpf VARCHAR2(14),
    condecoracao VARCHAR2(30),
    CONSTRAINT condecoracoes_pkey PRIMARY KEY (cpf, condecoracao),
    CONSTRAINT condecoracoes_fkey FOREIGN KEY (cpf) REFERENCES Militar(cpf) ON DELETE CASCADE
);

CREATE TABLE Base_militar (
    nome VARCHAR2(30),
    especialidade VARCHAR2(30) NOT NULL,
    CONSTRAINT base_militar_pkey PRIMARY KEY (nome)
);

CREATE TABLE Telefone_base (
    nome_base VARCHAR2(30),
    numero VARCHAR2(15) NOT NULL,
    CONSTRAINT telefone_base_pkey PRIMARY KEY (nome_base, numero),
    CONSTRAINT telefone_base_fkey FOREIGN KEY (nome_base) REFERENCES Base_militar(nome) ON DELETE CASCADE
);

CREATE TABLE Endereco_base (
    nome_base VARCHAR2(30),
    cep NUMBER NOT NULL,
    rua VARCHAR2(30) NOT NULL,
    numero NUMBER,
    complemento VARCHAR2(10),
    CONSTRAINT endereco_base_pkey PRIMARY KEY (nome_base),
    CONSTRAINT endereco_base_fkey FOREIGN KEY (nome_base) REFERENCES Base_militar(nome) ON DELETE CASCADE
);

CREATE TABLE Militar_comandado(
    militar_comandante_cpf VARCHAR2(14) NOT NULL,
    militar_comandado_cpf VARCHAR2(14) NOT NULL,
    quadrante_coordenadas VARCHAR2(100),
    numero_agrupamento INTEGER NOT NULL,
    CONSTRAINT militar_comandado_pkey PRIMARY KEY (militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas),
    CONSTRAINT militar_comandado_fk1 FOREIGN KEY (militar_comandante_cpf) REFERENCES Militar(cpf) ON DELETE CASCADE,
    CONSTRAINT militar_comandado_fk2 FOREIGN KEY (militar_comandado_cpf) REFERENCES Militar(cpf) ON DELETE CASCADE,
    CONSTRAINT militar_comandado_fk3 FOREIGN KEY (quadrante_coordenadas) REFERENCES Quadrante(coordenadas) ON DELETE CASCADE
);

CREATE TABLE Visitante(
    nome VARCHAR2(100) NOT NULL,
    cpf_militar VARCHAR2(14) NOT NULL,
    CONSTRAINT Visitante_pk PRIMARY KEY (nome),
    CONSTRAINT Visitante_fk FOREIGN KEY (cpf_militar) REFERENCES Militar(cpf) ON DELETE CASCADE,
    CONSTRAINT Nome_visitante UNIQUE (nome, cpf_militar)
);

CREATE TABLE Comunicacao_entre_bases(
    base_inicia_cominicacao VARCHAR2(100) NOT NULL,
    base_recebe_comunicacao VARCHAR2(100) NOT NULL,
    CONSTRAINT Comunicacao_entre_bases_fk1 FOREIGN KEY (base_inicia_cominicacao) REFERENCES Base_militar(nome) ON DELETE CASCADE,
    CONSTRAINT Comunicacao_entre_bases_fk2 FOREIGN KEY (base_recebe_comunicacao) REFERENCES Base_militar(nome) ON DELETE CASCADE
);

CREATE SEQUENCE Id
    INCREMENT BY 1 START WITH 1;
    
CREATE TABLE Arsenal ( -- entidade
    Id NUMBER NOT NULL,
    Categoria_armazem VARCHAR2(300) NOT NULL,
    Data_de_manutencao DATE NOT NULL,
    Capacidade_maxima NUMBER NOT NULL,
    Nome_base_militar VARCHAR2(300) NOT NULL,
    CONSTRAINT Arsenal_pkey PRIMARY KEY (Id),
    CONSTRAINT Arsenal_fkey FOREIGN KEY (Nome_base_militar) REFERENCES Base_militar (Nome) ON DELETE CASCADE,
    CONSTRAINT Arsenal_check CHECK (Id>=0)
);

CREATE TABLE Arma ( -- entidade
    Numero_de_registro VARCHAR2(9) NOT NULL,
    Id_arsenal NUMBER NOT NULL, -- 
    Calibre VARCHAR2(10) NOT NULL, -- .556
    Fabricacao VARCHAR2(50) NOT NULL,
    Nome_do_armamento VARCHAR2(60) NOT NULL,
    CONSTRAINT Arma_pkey PRIMARY KEY (Numero_de_registro),
    CONSTRAINT Arma_fkey FOREIGN KEY (Id_arsenal) REFERENCES Arsenal (Id) ON DELETE SET NULL
);

CREATE TABLE Fornecer_armamento ( -- relacionamento triplo temporal
    Horario_e_data TIMESTAMP NOT NULL,
    Cpf_militar VARCHAR2 (14) NOT NULL, -- 000.000.000-00
    Registro_arma VARCHAR2(9) NOT NULL,
    Id_arsenal NUMBER NOT NULL,
    CONSTRAINT Fornecer_armamento_fkey1 FOREIGN KEY (Cpf_militar) REFERENCES Militar (Cpf) ON DELETE CASCADE,
    CONSTRAINT Fornecer_armamento_fkey2 FOREIGN KEY (Registro_arma) REFERENCES Arma (Numero_de_registro) ON DELETE CASCADE,
    CONSTRAINT Fornecer_armamento_fkey3 FOREIGN KEY (Id_arsenal) REFERENCES Arsenal (Id) ON DELETE CASCADE
);
