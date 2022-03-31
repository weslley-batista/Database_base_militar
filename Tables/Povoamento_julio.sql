-- Inserindo serviço
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq.NETXVAL, 'Treinamento', 'Treinamentos de Coaching, Instruções gerais');
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq.NETXVAL, 'Limpeza', 'Serviço de limpeza geral');
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq.NETXVAL, 'Entregas', 'Entregas de mantimentos, peças, etc.');
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq.NETXVAL, 'Quimico', 'Serviços Quimico em geral');
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq.NETXVAL, 'Exposição', 'Exposições externas');
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq.NETXVAL, 'Esteticas e Cuidados', 'Serviços de cabelo, unhas encravadas, cuidados em geral');
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq.NETXVAL, 'Saúde', 'Serviços de saude, vacina, dentista, operações, coleta de sangue, etc')
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq.NETXVAL, 'Tecnologia', 'Serviços de Tecnologia')


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
INSERT INTO executa_servico (Prestador_de_servico, Servico, Cpf_militar) VALUES ('474.020.744-39',,'474.020.744-39');
INSERT INTO executa_servico (Prestador_de_servico, Servico, Cpf_militar) VALUES ('84.627.718-54',,,'977.827.224-70');
INSERT INTO executa_servico (Prestador_de_servico, Servico, Cpf_militar) VALUES ('632.481.319-34',,'308.175.745-22');
INSERT INTO executa_servico (Prestador_de_servico, Servico, Cpf_militar) VALUES ('977.827.224-70',,'644.718.711-88');
INSERT INTO executa_servico (Prestador_de_servico, Servico, Cpf_militar) VALUES ('134.177.826-60',,'415.332.550-32');
INSERT INTO executa_servico (Prestador_de_servico, Servico, Cpf_militar) VALUES ('308.175.745-22',,'384.627.718-54');
INSERT INTO executa_servico (Prestador_de_servico, Servico, Cpf_militar) VALUES ('413.372.547-62',,'644.718.711-88');
INSERT INTO executa_servico (Prestador_de_servico, Servico, Cpf_militar) VALUES ('606.862.377-73',,'134.177.826-60');
INSERT INTO executa_servico (Prestador_de_servico, Servico, Cpf_militar) VALUES ('644.718.711-88',,'606.862.377-73');
INSERT INTO executa_servico (Prestador_de_servico, Servico, Cpf_militar) VALUES ('415.332.550-32',,'977.827.224-70');

