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