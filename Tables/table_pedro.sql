Create Table arsenal ( -- entidade
    Create Sequence id increment by 1 start with 1,
    categoria_armazem varchar2 (255) NOT NULL,
    data_de_manutenção date NOT NULL,
    capacidade_máxima int (255) NOT NULL,
    nome_base_militar varchar2 (255) NOT NULL,
    constraint id_pkey primary key (id),
    constraint nome_base_militar_fkey foreign key (nome_base_militar) references base_militar (nome)
);

Create Table arma ( -- entidade
    numero_de_registro bigint (255) NOT NULL,
    id_arsenal int (255) NOT NULL, -- 
    calibre varchar2 (255) NOT NULL, -- .556
    fabricação varchar2 (255) NOT NULL,
    nome_do_armamento varchar2 (255) NOT NULL,
    horario_e_data datetime NOT NULL,
    constraint numero_de_registro_pkey primary key (numero_de_registro), -- verificar
    constraint id_arsenal_fkey foreign key (id_arsenal) references arsenal (id_pkey),
    constraint horario_e_data_fkey foreign key (horario_e_data) references fornecer_armamento (horario_e_data) -- verificar
);

Create Table fornecer_armamento ( -- relacionamento triplo temporal
    horario_e_data datetime NOT NULL,
    cpf_militar varchar2 (14) NOT NULL, -- 000.000.000-00
    registro_arma varchar2 (255) NOT NULL,
    id_arsenal int (255) NOT NULL,
    constraint cpf_militar_fkey foreign key (cpf_militar) references militar (cpf),
    constraint registro_arma_fkey foreign key (registro_arma) references arma (numero_de_registro_pkey), -- verificar
    constraint id_arsenal_fkey foreign key (id_arsenal) references arsenal (id_pkey)
);
