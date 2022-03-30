CREATE TABLE Militar_comandado(
    militar_comandante_cpf VARCHAR2(11) NOT NULL,
    militar_comandado_cpf VARCHAR2(11) NOT NULL,
    quadrante_coordenadas VARCHAR2(11),
    numero_agrupamento INTEGER NOT NULL,
    CONSTRAINT militar_comandado_pk PRIMARY KEY (militar_comandante_cpf,militar_comandado_cpf),
    CONSTRAINT militar_comandado_fk FOREIGN KEY (quadrante_coordenadas) REFERENCES Quadrante(coordenadas)
);


--povoamento 

INSERT INTO Militar_comandado(militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas, numero_agrupamento) VALUES ('00000000001', '00000000002','5444',  1);
INSERT INTO Militar_comandado(militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas, numero_agrupamento) VALUES ('00000000001', '00000000003','5444',  1);
INSERT INTO Militar_comandado(militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas, numero_agrupamento) VALUES ('00000000001', '00000000004','5444',  1);
INSERT INTO Militar_comandado(militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas, numero_agrupamento) VALUES ('00000000001', '00000000005','5444',  1);
INSERT INTO Militar_comandado(militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas, numero_agrupamento) VALUES ('00000000006', '00000000007','5443',  2);
INSERT INTO Militar_comandado(militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas, numero_agrupamento) VALUES ('00000000006', '00000000008','5443',  2);
INSERT INTO Militar_comandado(militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas, numero_agrupamento) VALUES ('00000000006', '00000000009','5443',  2);
INSERT INTO Militar_comandado(militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas, numero_agrupamento) VALUES ('00000000006', '00000000010','5443',  2);
INSERT INTO Militar_comandado(militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas, numero_agrupamento) VALUES ('00000000006', '00000000011','5443',  2);
INSERT INTO Militar_comandado(militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas, numero_agrupamento) VALUES ('00000000006', '00000000012','5443',  2);

-----------------------------------------------------------------


CREATE TABLE Visitante(
    nome VARCHAR2(100) NOT NULL,
    cpf_militar VARCHAR2(11) NOT NULL,
    CONSTRAINT Visitante_pk PRIMARY KEY (nome,cpf_militar)
);


--povoamento 


INSERT INTO Visitante(nome , cpf_militar) VALUES ('luffy', 'cpf 1');
INSERT INTO Visitante(nome , cpf_militar) VALUES ('zoro', 'cpf 2');
INSERT INTO Visitante(nome , cpf_militar) VALUES ('sanji', 'cpf 3');
INSERT INTO Visitante(nome , cpf_militar) VALUES ('usopp', 'cpf 4');
INSERT INTO Visitante(nome , cpf_militar) VALUES ('nami', 'cpf 5');
INSERT INTO Visitante(nome , cpf_militar) VALUES ('chopper', 'cpf 6');
INSERT INTO Visitante(nome , cpf_militar) VALUES ('robin', 'cpf 7');
INSERT INTO Visitante(nome , cpf_militar) VALUES ('franky', 'cpf 8');
INSERT INTO Visitante(nome , cpf_militar) VALUES ('brook', 'cpf 9');
INSERT INTO Visitante(nome , cpf_militar) VALUES ('robin', 'cpf 10');

-----------------------------------------------------------------

CREATE TABLE Comunicação_entre_bases(
    base_inicia_cominicação VARCHAR2(100) NOT NULL,
    base_recebe_comunicação VARCHAR2(100) NOT NULL,
    CONSTRAINT Comunicação_entre_bases_fk1 FOREIGN KEY (base_inicia_cominicação) REFERENCES Base_militar(nome),
    CONSTRAINT Comunicação_entre_bases_fk2 FOREIGN KEY (base_recebe_comunicação) REFERENCES Base_militar(nome)
);

--povoamento 

INSERT INTO Comunicação_entre_bases(base_inicia_cominicação , base_recebe_comunicação) VALUES ('base 1', 'base 2');
INSERT INTO Comunicação_entre_bases(base_inicia_cominicação , base_recebe_comunicação) VALUES ('base 2', 'base 3');
INSERT INTO Comunicação_entre_bases(base_inicia_cominicação , base_recebe_comunicação) VALUES ('base 3', 'base 4');
INSERT INTO Comunicação_entre_bases(base_inicia_cominicação , base_recebe_comunicação) VALUES ('base 4', 'base 5');
INSERT INTO Comunicação_entre_bases(base_inicia_cominicação , base_recebe_comunicação) VALUES ('base 5', 'base 6');
INSERT INTO Comunicação_entre_bases(base_inicia_cominicação , base_recebe_comunicação) VALUES ('base 6', 'base 7');
INSERT INTO Comunicação_entre_bases(base_inicia_cominicação , base_recebe_comunicação) VALUES ('base 7', 'base 8');
INSERT INTO Comunicação_entre_bases(base_inicia_cominicação , base_recebe_comunicação) VALUES ('base 8', 'base 9');
INSERT INTO Comunicação_entre_bases(base_inicia_cominicação , base_recebe_comunicação) VALUES ('base 9', 'base 10');
INSERT INTO Comunicação_entre_bases(base_inicia_cominicação , base_recebe_comunicação) VALUES ('base 10', 'base 11');



