Create Table arsenal ( -- entidade
    id number (6),
    categoria_armazem varchar2 (n),
    data_de_manutenção date,
    capacidade_máxima number (100),
    nome_base_militar varchar2 (n)
    constraint nome_base_militar_fkey foreign key (nome_base_militar) references base_militar (nome)
);

Create Table arma ( -- entidade
    id number (10),
    id_arsenal number (6),
    calibre varchar2 (4), -- .556
    fabricação varchar2 (n),
    nome_do_armamento varchar2 (n),
    horario_e_data datetime2 (fsp)
    constraint numero_de_registro_pkey primary key (id), -- verificar
    constraint id_arsenal_fkey foreign key (id_arsenal) references arsenal (id)
    constraint horario_e_data_fkey foreign key (horario_e_data) references fornecer_armamento (horario_e_data) -- verificar
);

Create Table fornecer_armamento ( -- relacionamento triplo temporal
    horario_e_data datetime2 (fsp),
    cpf_militar number(11),
    registro_arma number (10),
    id_arsenal number (6),
    constraint cpf_militar_fkey foreign key (cpf_militar) references militar (cpf),
    constraint registro_arma_fkey foreign key (registro_arma) references arma (numero_de_registro_pkey), -- verificar
    constraint id_arsenal_fkey foreign key (id_arsenal) references arsenal (id),
);
