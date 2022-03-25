Create Table pessoa ( --entidade
    nome varchar2,
    cpf varchar2,
    constraint pessoa_pkey primary key(cpf)
);

Create Table endereco_da_pessoa ( --composto
    cpf_pessoa varchar2,
    rua varchar2,
    numero number,
    complemento varchar2,
    cep varchar2,
    constraint endereco_da_pessoa_fkey Foreign key (cpf_pessoa) References pessoa (cpf)
);
Create Table telefone_da_pessoa ( --multivalorado
    cpf_pessoa varchar2,
    numero_telefone number,
    constraint telefone_da_pessoa_fkey Foreign key (cpf_pessoa) References pessoa (cpf),
    constraint telefone_da_pessoa_const unique (numero_telefone)
);
Create Table prestador_de_serviço(
    cpf varchar2),
    especialidade varchar2,
    constraint prestador_de_serviço_pkey primary key(cpf)
);