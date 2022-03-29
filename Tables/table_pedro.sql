DROP TABLE Arsenal;
DROP TABLE Arma;
DROP TABLE Fornecer_armamento;

Create Sequence Id
    INCREMENT BY 1 START WITH 1;
    
Create Table Arsenal ( -- entidade
    Id NUMBER NOT NULL,
    Categoria_armazem VARCHAR2 NOT NULL,
    Data_de_manutenção DATE NOT NULL,
    Capacidade_máxima NUMBER NOT NULL,
    Nome_base_militar VARCHAR2 NOT NULL,
    CONSTRAINT Id_pkey PRIMARY KEY (Id),
    CONSTRAINT Nome_base_militar_fkey FOREIGN KEY (Nome_base_militar) REFERENCES Base_militar (Nome)
);

Create Table Arma ( -- entidade
    Numero_de_registro BIGINT NOT NULL,
    Id_arsenal NUMBER NOT NULL, -- 
    Calibre VARCHAR2 NOT NULL, -- .556
    Fabricação VARCHAR2 NOT NULL,
    Nome_do_armamento VARCHAR2 NOT NULL,
    Horario_e_data TIMESTAMP NOT NULL,
    CONSTRAINT Numero_de_registro_pkey PRIMARY KEY (Numero_de_registro),
    CONSTRAINT Id_arsenal_fkey FOREIGN KEY (Id_arsenal) REFERENCES Arsenal (Id),
    CONSTRAINT Horario_e_data_fkey FOREIGN KEY (Horario_e_data) REFERENCES Fornecer_armamento (Horario_e_data)
);

Create Table Fornecer_armamento ( -- relacionamento triplo temporal
    Horario_e_data TIMESTAMP NOT NULL,
    Cpf_militar VARCHAR2 (14) NOT NULL, -- 000.000.000-00
    Registro_arma VARCHAR2 NOT NULL,
    Id_arsenal NUMBER NOT NULL,
    CONSTRAINT Cpf_militar_fkey FOREIGN KEY (Cpf_militar) REFERENCES Militar (Cpf),
    CONSTRAINT Registro_arma_fkey FOREIGN KEY (Registro_arma) REFERENCES Arma (Numero_de_registro),
    CONSTRAINT Id_arsenal_fkey FOREIGN KEY (Id_arsenal) REFERENCES Arsenal (Id)
);
