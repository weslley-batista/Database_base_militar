Create Table arsenal ( -- entidade
    id int NOT NULL auto_increment,
    categoria_armazem varchar2 (10),
    data_de_manutenção date,
    capacidade_máxima number (100),
    nome_base_militar varchar2 (n),
    constraint id_pkey primary key (id),
    constraint nome_base_militar_fkey foreign key (nome_base_militar) references base_militar (nome)
);
auto_increment = 1;

Create Table arma ( -- entidade
    numero_de_registro number (10),
    id_arsenal number (6),
    calibre varchar2 (4), -- .556
    fabricação varchar2 (10),
    nome_do_armamento varchar2 (10),
    horario_e_data datetime2 (fsp)
    constraint numero_de_registro_pkey primary key (numero_de_registro), -- verificar
    constraint id_arsenal_fkey foreign key (id_arsenal) references arsenal (id_pkey),
    constraint horario_e_data_fkey foreign key (horario_e_data) references fornecer_armamento (horario_e_data) -- verificar
);

Create Table fornecer_armamento ( -- relacionamento triplo temporal
    horario_e_data datetime2 (fsp),
    cpf_militar varchar2(14), -- 000.000.000-00
    registro_arma number (10),
    id_arsenal number (6),
    constraint cpf_militar_fkey foreign key (cpf_militar) references militar (cpf),
    constraint registro_arma_fkey foreign key (registro_arma) references arma (numero_de_registro_pkey), -- verificar
    constraint id_arsenal_fkey foreign key (id_arsenal) references arsenal (id_pkey),
);
