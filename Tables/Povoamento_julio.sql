-- Inserindo serviço
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq, 'Treinamento', 'Treinamentos de Coaching, Instruções gerais');
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq, 'Limpeza', 'Serviço de limpeza geral');
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq, 'Entregas', 'Entregas de mantimentos, peças, etc.');
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq, 'Quimico', 'Serviços Quimico em geral');
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq, 'Exposição', 'Exposições externas');
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq, 'Esteticas e Cuidados', 'Serviços de cabelo, unhas encravadas, cuidados em geral');
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq, 'Saúde', 'Serviços de saude, vacina, dentista, operações, coleta de sangue, etc');
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq, 'Tecnologia', 'Serviços de Tecnologia');


-- Inserindo Quadrantes
INSERT INTO Quadrante (Coordenadas, Terreno) VALUES ('50° 0’36.30″N, 110° 6’46.82″W','Montanhoso');
INSERT INTO Quadrante (Coordenadas, Terreno) VALUES ('40°27’28.56″N, 93°23’34.42″E','Deserto');
INSERT INTO Quadrante (Coordenadas, Terreno) VALUES ('29°32’7.65″N, 30°40’7.88″E','Deserto');
INSERT INTO Quadrante (Coordenadas, Terreno) VALUES ('19°32’56.62″S, 69°58’4.21″W','Aguatico');
INSERT INTO Quadrante (Coordenadas, Terreno) VALUES ('19°12’12.51″S, 70° 0’29.37″W','Arenoso');
INSERT INTO Quadrante (Coordenadas, Terreno) VALUES ('13° 9’49.69″S, 72°32’42.65″W','Floresta');
INSERT INTO Quadrante (Coordenadas, Terreno) VALUES ('20°40’58.64″N, 88°34’5.50″W','Semi arido');
INSERT INTO Quadrante (Coordenadas, Terreno) VALUES ('19°56’56.88″S, 69°38’1.87″W','Arenoso');
INSERT INTO Quadrante (Coordenadas, Terreno) VALUES ('50°48’49.00″N, 2°28’28.99″W','Floresta');


-- Inserindo Executa serviço - quandos as 3 tabelas tiverem com os dados
INSERT INTO executa_servico (Prestador_de_servico, Servico, Cpf_militar) VALUES (,,);
INSERT INTO executa_servico (Prestador_de_servico, Servico, Cpf_militar) VALUES (,,);
INSERT INTO executa_servico (Prestador_de_servico, Servico, Cpf_militar) VALUES (,,);
INSERT INTO executa_servico (Prestador_de_servico, Servico, Cpf_militar) VALUES (,,);
INSERT INTO executa_servico (Prestador_de_servico, Servico, Cpf_militar) VALUES (,,);
INSERT INTO executa_servico (Prestador_de_servico, Servico, Cpf_militar) VALUES (,,);
INSERT INTO executa_servico (Prestador_de_servico, Servico, Cpf_militar) VALUES (,,);
INSERT INTO executa_servico (Prestador_de_servico, Servico, Cpf_militar) VALUES (,,);
INSERT INTO executa_servico (Prestador_de_servico, Servico, Cpf_militar) VALUES (,,);
INSERT INTO executa_servico (Prestador_de_servico, Servico, Cpf_militar) VALUES (,,);

