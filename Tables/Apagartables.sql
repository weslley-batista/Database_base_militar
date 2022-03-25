Create Table pessoa ( --entidade
    nome varchar2,
    cpf number (11),
    constraint pessoa_pkey primary key(cpf)
);

Create Table endereco_da_pessoa ( --composto
    cpf_pessoa number(11),
    rua varchar2,
    numero number,
    complemento varchar2,
    cep number,
    constraint endereco_da_pessoa_fkey Foreign key (cpf_pessoa) References pessoa (cpf)
);
Create Table telefone_da_pessoa ( --multivalorado
    cpf_pessoa number(11),
    numero_telefone number,
    constraint telefone_da_pessoa_fkey Foreign key (cpf_pessoa) References pessoa (cpf),
    constraint telefone_da_pessoa_const unique (numero_telefone)
);
Create Table prestador_de_serviço(
    cpf number(11),
    especialidade varchar2,
    constraint prestador_de_serviço_pkey primary key(cpf)
);