CREATE TABLE pessoa ( --entidade
    nome varchar2 (255),
    cpf varchar2 (14),
    constraint pessoa_pkey primary key(cpf)
);

CREATE TABLE endereco_da_pessoa ( --composto
    cpf_pessoa varchar2 (14),
    rua varchar2 (255),
    numero number (38),
    complemento varchar2 (255),
    cep varchar2 (14),
    constraint endereco_da_pessoa_fkey Foreign key (cpf_pessoa) References pessoa (cpf)
);
CREATE TABLE telefone_da_pessoa ( --multivalorado
    cpf_pessoa varchar2 (14),
    numero_telefone varchar2 (15),
    constraint telefone_da_pessoa_fkey Foreign key (cpf_pessoa) References pessoa (cpf),
    constraint telefone_da_pessoa_const unique (numero_telefone)
);
CREATE TABLE prestador_de_serviço(
    cpf varchar2 (14),
    especialidade varchar2 (255),
    constraint prestador_de_serviço_pkey primary key(cpf)
);

