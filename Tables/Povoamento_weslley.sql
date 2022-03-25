-- Inserindo pessoas

INSERT INTO pessoa (nome,cpf) VALUES ('Arthur','474.020.744-39'); -- Pernambuco, Rio Grande do Norte, Paraíba e Alagoas
INSERT INTO pessoa (nome,cpf) VALUES ('Gael','384.627.718-54'); -- São Paulo
INSERT INTO pessoa (nome,cpf) VALUES ('Alice','632.481.319-34'); -- Paraná e Santa Catarina
INSERT INTO pessoa (nome,cpf) VALUES ('Helena','977.827.224-70'); -- Pernambuco, Rio Grande do Norte, Paraíba e Alagoas
INSERT INTO pessoa (nome,cpf) VALUES ('Heitor','134.177.826-60'); -- Minas Gerais
INSERT INTO pessoa (nome,cpf) VALUES ('Theo','308.175.745-22'); -- Bahia e Sergipe
INSERT INTO pessoa (nome,cpf) VALUES ('Davi','413.372.547-62'); -- Rio de Janeiro e Espírito Santo
INSERT INTO pessoa (nome,cpf) VALUES ('Laura','606.862.377-73'); -- Rio de Janeiro e Espírito Santo
INSERT INTO pessoa (nome,cpf) VALUES ('Gabriel','644.718.711-88'); -- Distrito Federal, Goiás, Mato Grosso do Sul e Tocantins
INSERT INTO pessoa (nome,cpf) VALUES ('Valentina','415.332.550-32'); -- Rio Grande do Sul
INSERT INTO pessoa (nome,cpf) VALUES ('Bernardo','266.873.194-18'); -- Pernambuco, Rio Grande do Norte, Paraíba e Alagoas
INSERT INTO pessoa (nome,cpf) VALUES ('Samuel','060.718.346-27'); -- Minas Gerais
INSERT INTO pessoa (nome,cpf) VALUES ('João Miguel','730.774.348-57'); -- Pernambuco, Rio Grande do Norte, Paraíba e Alagoas
INSERT INTO pessoa (nome,cpf) VALUES ('Heloísa','407.436.138-80'); -- São Paulo
INSERT INTO pessoa (nome,cpf) VALUES ('Isabela','923.676.914-44'); -- Pernambuco, Rio Grande do Norte, Paraíba e Alagoas

-- Inserindo endereco_da_pessoa  '', , '', ''

INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('474.020.744-39','Travessa Miguel Bento', 709,'Nossa Senhora das Graças','55642-631');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('384.627.718-54', 'Rua Adriano Jesus da Costa', 879, 'Morrinhos', '11495-021');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('632.481.319-34', 'Rua Augusto Schlegel', 299, 'Atiradores', '89203-260');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('977.827.224-70','Rua Embiria', 530,'Planalto','53550-170');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('134.177.826-60','Rua J', 834, 'Pedra Azul', '38181-730');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('308.175.745-22', 'Travessa Jardim Iguaçu', 183, 'CEASA', '41404-060');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('413.372.547-62','Rua Juarez Getirana', 510, 'Pedra de Guaratiba', '23025-035');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('606.862.377-73','Rua Eduardo Studart', 476, 'Campo Grande', '23013-740');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('644.718.711-88','Travessa Deputado Jesus Meireles', 478, 'Centro', '72800-025');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('415.332.550-32', 'Rua Olinto Zambonatto', 603, 'Aeroporto', '99709-064');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('266.873.194-18','Quadra Doze', 482, 'Icuí-Guajará','67125-848');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('060.718.346-27','Rua B3', 132, 'Parque das Laranjeiras', '38046-396');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('730.774.348-57','Avenida Luiz Avelino Pereira', 136,'Tabuleiro do Martins','57081-131');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('407.436.138-80', 'Avenida das Gaivotas', 270, 'Loteamento Parque dos Pássaros', '15093-636');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('923.676.914-44','Rua Maria de Lourdes de Melo', 769, 'Vida Nova','59147-840');

-- Inserindo telefone_da_pessoa

INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ();
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ();
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ();
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ();
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ();
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ();
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ();
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ();
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ();
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ();
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ();
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ();
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ();
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ();
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ();


-- Inserindo prestador_de_serviço

INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ();
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ();
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ();
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ();
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ();
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ();
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ();
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ();
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ();
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ();
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ();
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ();
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ();
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ();
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ();
