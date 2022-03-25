-- Inserindo pessoas

INSERT INTO pessoa (nome,cpf) VALUES ('Arthur','474.020.744-39');
INSERT INTO pessoa (nome,cpf) VALUES ('Gael','384.627.718-54');
INSERT INTO pessoa (nome,cpf) VALUES ('Alice','632.481.319-34');
INSERT INTO pessoa (nome,cpf) VALUES ('Helena','977.827.224-70');
INSERT INTO pessoa (nome,cpf) VALUES ('Heitor','134.177.826-60');
INSERT INTO pessoa (nome,cpf) VALUES ('Theo','308.175.745-22');
INSERT INTO pessoa (nome,cpf) VALUES ('Davi','413.372.547-62');
INSERT INTO pessoa (nome,cpf) VALUES ('Laura','606.862.377-73');
INSERT INTO pessoa (nome,cpf) VALUES ('Gabriel','644.718.711-88');
INSERT INTO pessoa (nome,cpf) VALUES ('Valentina','415.332.550-32');
INSERT INTO pessoa (nome,cpf) VALUES ('Bernardo','266.873.194-18');
INSERT INTO pessoa (nome,cpf) VALUES ('Samuel','060.718.346-27');
INSERT INTO pessoa (nome,cpf) VALUES ('João Miguel','730.774.348-57');
INSERT INTO pessoa (nome,cpf) VALUES ('Heloísa','407.436.138-80');
INSERT INTO pessoa (nome,cpf) VALUES ('Isabela','923.676.914-44');

-- Inserindo endereco_da_pessoa

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

INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('474.020.744-39', '(63) 2807-2498');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('384.627.718-54', '(44) 2027-6792');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('632.481.319-34', '(62) 3307-6641');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('977.827.224-70', '(88) 2410-1179');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('134.177.826-60', '(79) 2346-1382');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('308.175.745-22', '(96) 3594-1164');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('413.372.547-62', '(64) 3246-6489');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('606.862.377-73', '(83) 2739-9244');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('644.718.711-88', '(61) 2967-9647');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('415.332.550-32', '(79) 2334-9058');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('266.873.194-18', '(85) 3128-6914');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('060.718.346-27', '(91) 3112-7343');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('730.774.348-57', '(69) 3882-3517');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('407.436.138-80', '(55) 2684-0686');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('923.676.914-44', '(53) 2566-7151');

-- Inserindo prestador_de_serviço

INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ('439.509.231-44', 'Coaching');
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ('050.365.042-08', 'Instruções de etiqueta');    
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ('028.271.834-63', 'Limpeza de bolsa de gordura');
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ('219.548.474-83', 'Entrega de alimentos');
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ('575.283.272-12', 'Maneabilidade de produtos quimicos');
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ('335.206.930-11', 'Exposição de arte');
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ('247.298.232-14', 'Cortes de cabelos');
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ('877.119.269-79', 'Renovação de vacinas');
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ('147.114.791-82', 'Coaching');
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ('243.832.546-16', 'Tecnologia militar');
