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

-- Inserindo Militar
INSERT INTO militar(cpf, patente) VALUES ('474.020.744-39', 2);
INSERT INTO militar(cpf, patente) VALUES ('384.627.718-54', 4);
INSERT INTO militar(cpf, patente) VALUES ('632.481.319-34', 1);
INSERT INTO militar(cpf, patente) VALUES ('977.827.224-70', 3);
INSERT INTO militar(cpf, patente) VALUES ('134.177.826-60', 2);
INSERT INTO militar(cpf, patente) VALUES ('308.175.745-22', 3);
INSERT INTO militar(cpf, patente) VALUES ('413.372.547-62', 1);
INSERT INTO militar(cpf, patente) VALUES ('606.862.377-73', 5);
INSERT INTO militar(cpf, patente) VALUES ('644.718.711-88', 2);
INSERT INTO militar(cpf, patente) VALUES ('415.332.550-32', 1);

-- Inserindo Condecoracoes
INSERT INTO condecoracoes(cpf, condecoracao) VALUES ('474.020.744-39', 'Limpador de latrinas');
INSERT INTO condecoracoes(cpf, condecoracao) VALUES ('384.627.718-54', 'Heroi de guerra');
INSERT INTO condecoracoes(cpf, condecoracao) VALUES ('632.481.319-34', NULL);
INSERT INTO condecoracoes(cpf, condecoracao) VALUES ('977.827.224-70', 'Auxilio essencial');
INSERT INTO condecoracoes(cpf, condecoracao) VALUES ('134.177.826-60', 'Dorminhoco');
INSERT INTO condecoracoes(cpf, condecoracao) VALUES ('308.175.745-22', 'Ciber sombra');
INSERT INTO condecoracoes(cpf, condecoracao) VALUES ('413.372.547-62', NULL);
INSERT INTO condecoracoes(cpf, condecoracao) VALUES ('606.862.377-73', 'Grande senhor do mundo');
INSERT INTO condecoracoes(cpf, condecoracao) VALUES ('644.718.711-88', 'Cortador de grama');
INSERT INTO condecoracoes(cpf, condecoracao) VALUES ('415.332.550-32', NULL);

-- Inserindo Bases Militares
INSERT INTO base_militar(nome, especialidade) VALUES('BAAN', 'Combate');
INSERT INTO base_militar(nome, especialidade) VALUES('BACO', 'Cavalaria');
INSERT INTO base_militar(nome, especialidade) VALUES('BAFZ', 'Apoio');
INSERT INTO base_militar(nome, especialidade) VALUES('BANT', 'Observacao');
INSERT INTO base_militar(nome, especialidade) VALUES('BARF', 'Aviacao');
INSERT INTO base_militar(nome, especialidade) VALUES('BAST', 'Reparo');
INSERT INTO base_militar(nome, especialidade) VALUES('BAAF', 'Paraquedismo');
INSERT INTO base_militar(nome, especialidade) VALUES('AREA51', 'ETs');
INSERT INTO base_militar(nome, especialidade) VALUES('BIM', 'Veiculos');
INSERT INTO base_militar(nome, especialidade) VALUES('BC', 'Comunicacoes');

--Inserindo Telefones de bases
INSERT INTO telefone_base(nome_base, ddd, numero) VALUES('BAAN', 62, 33297000);
INSERT INTO telefone_base(nome_base, ddd, numero) VALUES('BACO', 53, 31406000);
INSERT INTO telefone_base(nome_base, ddd, numero) VALUES('BAFZ', 85, 32163000);
INSERT INTO telefone_base(nome_base, ddd, numero) VALUES('BANT', 84, 36447100);
INSERT INTO telefone_base(nome_base, ddd, numero) VALUES('BARF', 81, 21297000);
INSERT INTO telefone_base(nome_base, ddd, numero) VALUES('BAST', 11, 33417113);
INSERT INTO telefone_base(nome_base, ddd, numero) VALUES('BAAF', 21, 21572500);
INSERT INTO telefone_base(nome_base, ddd, numero) VALUES('AREA51', 02, 89120456);
INSERT INTO telefone_base(nome_base, ddd, numero) VALUES('BIM', 81, 32510355);
INSERT INTO telefone_base(nome_base, ddd, numero) VALUES('BC', 81, 34552252);

--Inseriindo Endereco das bases
INSERT INTO endereco_base(nome_base, cep, rua, numero, complemento) VALUES('BAAN', 75024970, 'BR-414', NULL, 'Km 4');
INSERT INTO endereco_base(nome_base, cep, rua, numero, complemento) VALUES('BACO', 92110390, 'R. Augusto Severo', 1700, NULL);
INSERT INTO endereco_base(nome_base, cep, rua, numero, complemento) VALUES('BAFZ', 60415513, 'Av. Borges de Melo', 205, NULL);
INSERT INTO endereco_base(nome_base, cep, rua, numero, complemento) VALUES('BANT', 59148900, 'Estrada da BANT', NULL, NULL);
INSERT INTO endereco_base(nome_base, cep, rua, numero, complemento) VALUES('BARF', 51250020, 'Av. Maria Irene', NULL, NULL);
INSERT INTO endereco_base(nome_base, cep, rua, numero, complemento) VALUES('BAST', 11450010, 'Av. Presidente Castelo Branco', NULL, NULL);
INSERT INTO endereco_base(nome_base, cep, rua, numero, complemento) VALUES('BAAF', 21740002, 'Av. Marechal Fontenele', 1000, NULL);
INSERT INTO endereco_base(nome_base, cep, rua, numero, complemento) VALUES('AREA51', 22141234, 'EUA', NULL, NULL);
INSERT INTO endereco_base(nome_base, cep, rua, numero, complemento) VALUES('BIM', 54160350, 'Av. General Manoel Rabelo', 1950, NULL);
INSERT INTO endereco_base(nome_base, cep, rua, numero, complemento) VALUES('BC', 50930000, 'BR-101', NULL, 'Km 73');