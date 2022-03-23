Create Table servico ( --entidade   
    id number (11), -- verificar identy( auto completar id serviço)
    nome varchar2,
    descricao varchar2,    
    constraint servico_pkey primary key(id)
);

Create Table executa_servico ( 
    prestador_de_servico number(11), --verificar se isso eh uma pessoa tbm
    servico number,
    cpf_militar number(11)
    constraint prestador_de_servico_fkey Foreign key (prestador_de_servico) References prestador_de_serviço (cpf),
    constraint servico_fkey Foreign key (servico) References servico (id),
    constraint cpf_militar_fkey Foreign key (cpf_militar) References militar (cpf)-- verificar essa linha    
);

Create Table Quadrante ( --entidade   
    coordenadas varchar2, -- 
    terreno varchar2,    
    constraint coordenadas_pkey primary key(coordenadas)
    -- verificar se deveria ser unique
);