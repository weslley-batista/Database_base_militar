CREATE TABLE Militar_comandado(
    militar_comandante_cpf VARCHAR2(14) NOT NULL,
    militar_comandado_cpf VARCHAR2(14) NOT NULL,
    quadrante_coordenadas VARCHAR2(100),
    numero_agrupamento INTEGER NOT NULL,
    CONSTRAINT militar_comandado_fk1 FOREIGN KEY (militar_comandante_cpf) REFERENCES Militar(cpf),
    CONSTRAINT militar_comandado_fk2 FOREIGN KEY (militar_comandado_cpf) REFERENCES Militar(cpf),
    CONSTRAINT militar_comandado_fk3 FOREIGN KEY (quadrante_coordenadas) REFERENCES Quadrante(coordenadas)
);




CREATE TABLE Visitante(
    nome VARCHAR2(100) NOT NULL,
    cpf_militar VARCHAR2(11) NOT NULL,
    CONSTRAINT Visitante_pk PRIMARY KEY (nome),
    CONSTRAINT Visitante_fk FOREIGN KEY (cpf_militar) REFERENCES Militar(cpf)
);


CREATE TABLE Comunicação_entre_bases(
    base_inicia_cominicação VARCHAR2(100) NOT NULL,
    base_recebe_comunicação VARCHAR2(100) NOT NULL,
    CONSTRAINT Comunicação_entre_bases_fk1 FOREIGN KEY (base_inicia_cominicação) REFERENCES Base_militar(nome),
    CONSTRAINT Comunicação_entre_bases_fk2 FOREIGN KEY (base_recebe_comunicação) REFERENCES Base_militar(nome)
);



