Create Table Arsenal ( -- entidade
    Create Sequence id increment by 1 start with 1,
    categoria_armazem varchar2 NOT NULL,
    data_de_manutenção date NOT NULL,
    capacidade_máxima int NOT NULL,
    nome_base_militar varchar2 NOT NULL,
    constraint id_pkey primary key (id),
    constraint nome_base_militar_fkey foreign key (nome_base_militar) references Base_militar (nome)
);

Create Table Arma ( -- entidade
    numero_de_registro bigint NOT NULL,
    id_arsenal int NOT NULL, -- 
    calibre varchar2 NOT NULL, -- .556
    fabricação varchar2 NOT NULL,
    nome_do_armamento varchar2 NOT NULL,
    horario_e_data datetime NOT NULL,
    constraint numero_de_registro_pkey primary key (numero_de_registro), -- verificar
    constraint id_arsenal_fkey foreign key (id_arsenal) references Arsenal (id_pkey),
    constraint horario_e_data_fkey foreign key (horario_e_data) references Fornecer_armamento (horario_e_data) -- verificar
);

Create Table Fornecer_armamento ( -- relacionamento triplo temporal
    horario_e_data datetime NOT NULL,
    cpf_militar varchar2 (14) NOT NULL, -- 000.000.000-00
    registro_arma varchar2 NOT NULL,
    id_arsenal int NOT NULL,
    constraint cpf_militar_fkey foreign key (cpf_militar) references Militar (cpf),
    constraint registro_arma_fkey foreign key (registro_arma) references Arma (numero_de_registro_pkey), -- verificar
    constraint id_arsenal_fkey foreign key (id_arsenal) references Arsenal (id_pkey)
);
