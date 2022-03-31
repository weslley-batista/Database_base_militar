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
--Prestadores de serviço acima ⬆
INSERT INTO pessoa (nome,cpf) VALUES ('Bernardo','266.873.194-18');
INSERT INTO pessoa (nome,cpf) VALUES ('Samuel','060.718.346-27');
INSERT INTO pessoa (nome,cpf) VALUES ('João Miguel','730.774.348-57');
INSERT INTO pessoa (nome,cpf) VALUES ('Heloísa','407.436.138-80');
INSERT INTO pessoa (nome,cpf) VALUES ('Isabela','923.676.914-44');
INSERT INTO pessoa (nome,cpf) VALUES ('Raquel Maranhão','439.509.231-44');
INSERT INTO pessoa (nome,cpf) VALUES ('Edir Carneiro','050.365.042-08');
INSERT INTO pessoa (nome,cpf) VALUES ('Lola Lisboa','028.271.834-63');
INSERT INTO pessoa (nome,cpf) VALUES ('Artyom Carmona','219.548.474-83');
INSERT INTO pessoa (nome,cpf) VALUES ('Carla Guerra','575.283.272-12');
INSERT INTO pessoa (nome,cpf) VALUES ('Evandro Malta','335.206.930-11');
INSERT INTO pessoa (nome,cpf) VALUES ('Zoé Caldeira','247.298.232-14');
INSERT INTO pessoa (nome,cpf) VALUES ('Cláudio Brites','877.119.269-79');
INSERT INTO pessoa (nome,cpf) VALUES ('Liany Veloso','147.114.791-82');
INSERT INTO pessoa (nome,cpf) VALUES ('Ary Veloso','243.832.546-16');
INSERT INTO pessoa (nome,cpf) VALUES ('Raquel Laura','892.653.058-27');
INSERT INTO pessoa (nome,cpf) VALUES ('Rosa Flávia','328.267.558-54');

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
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('439.509.231-44','Rua Armando Torres Monteiro', 569, 'Iputinga','50690-200');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('050.365.042-08','Rua Um', 998, 'Altos do Coxipó','78088-465');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('028.271.834-63','Rua Leste', 322, 'Novo Horizonte','76810-210');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('219.548.474-83','Rua C', 657, 'Reis Veloso','64204-080');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('575.283.272-12','Quadra QS 514 Conjunto 1', 125, 'Pitanguinha','57052-220');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('335.206.930-11','Alameda Oitava', 486, 'Coqueiro','66670-790');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('247.298.232-14','Travessa Três', 789, 'Bela Vista','68374-716');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('877.119.269-79','Rua Primeiro de Maio', 752, 'José Pinheiro','58407-410');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('147.114.791-82','Quadra QE 5 Conjunto E', 421, 'Guará I','71020-055');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('243.832.546-16','Rua Tenente Guimarães', 934, 'Liberdade','69309-109');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('892.653.058-27','Avenida Bráulio', 357, 'Curuzu','40366-340');
INSERT INTO endereco_da_pessoa (cpf_pessoa, rua, numero, complemento, cep) VALUES ('328.267.558-54','Rua Padre Silvestre', 794, 'Trapiche da Barra','57010-490');

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
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('439.509.231-44', '(97) 2859-1149');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('050.365.042-08', '(63) 3611-7344');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('028.271.834-63', '(62) 2646-0232');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('219.548.474-83', '(92) 2261-7614');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('575.283.272-12', '(96) 3719-2939');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('335.206.930-11', '(92) 3663-2237');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('247.298.232-14', '(69) 3413-8348');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('877.119.269-79', '(38) 2917-7776');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('147.114.791-82', '(65) 3631-3307');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('243.832.546-16', '(81) 2486-2634');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('892.653.058-27', '(87) 3127-7145');
INSERT INTO telefone_da_pessoa (cpf_pessoa,numero_telefone) VALUES ('328.267.558-54', '(88) 3838-8276');

-- Inserindo prestador_de_serviço

INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ('474.020.744-39', 'Coaching');
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ('84.627.718-54', 'Instruções de etiqueta');    
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ('632.481.319-34', 'Limpeza de bolsa de gordura');
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ('977.827.224-70', 'Entrega de alimentos');
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ('134.177.826-60', 'Maneabilidade de produtos quimicos');
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ('308.175.745-22', 'Exposição de arte');
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ('413.372.547-62', 'Cortes de cabelos');
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ('606.862.377-73', 'Renovação de vacinas');
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ('644.718.711-88', 'Coaching');
INSERT INTO prestador_de_serviço (cpf, especialidade) VALUES ('415.332.550-32', 'Tecnologia militar');

-- Inserindo serviço
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq, 'Treinamento', 'Treinamentos de Coaching, Instruções gerais');
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq, 'Limpeza', 'Serviço de limpeza geral');
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq, 'Entregas', 'Entregas de mantimentos, peças, etc.');
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq, 'Quimico', 'Serviços Quimico em geral');
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq, 'Exposição', 'Exposições externas');
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq, 'Esteticas e Cuidados', 'Serviços de cabelo, unhas encravadas, cuidados em geral');
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq, 'Saúde', 'Serviços de saude, vacina, dentista, operações, coleta de sangue, etc');
INSERT INTO servico (id_servico, nome, descricao) VALUES (id_servico_seq, 'Tecnologia', 'Serviços de Tecnologia');

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

-- Inserindo Militar Comandado
INSERT INTO Militar_comandado(militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas, numero_agrupamento) VALUES ('00000000001', '00000000002','5444',  1);
INSERT INTO Militar_comandado(militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas, numero_agrupamento) VALUES ('00000000001', '00000000003','5444',  1);
INSERT INTO Militar_comandado(militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas, numero_agrupamento) VALUES ('00000000001', '00000000004','5444',  1);
INSERT INTO Militar_comandado(militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas, numero_agrupamento) VALUES ('00000000001', '00000000005','5444',  1);
INSERT INTO Militar_comandado(militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas, numero_agrupamento) VALUES ('00000000006', '00000000007','5443',  2);
INSERT INTO Militar_comandado(militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas, numero_agrupamento) VALUES ('00000000006', '00000000008','5443',  2);
INSERT INTO Militar_comandado(militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas, numero_agrupamento) VALUES ('00000000006', '00000000009','5443',  2);
INSERT INTO Militar_comandado(militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas, numero_agrupamento) VALUES ('00000000006', '00000000010','5443',  2);
INSERT INTO Militar_comandado(militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas, numero_agrupamento) VALUES ('00000000006', '00000000011','5443',  2);
INSERT INTO Militar_comandado(militar_comandante_cpf, militar_comandado_cpf, quadrante_coordenadas, numero_agrupamento) VALUES ('00000000006', '00000000012','5443',  2);

-- Inserindo Visistante

INSERT INTO Visitante(nome , cpf_militar) VALUES ('luffy', 'cpf 1');
INSERT INTO Visitante(nome , cpf_militar) VALUES ('zoro', 'cpf 2');
INSERT INTO Visitante(nome , cpf_militar) VALUES ('sanji', 'cpf 3');
INSERT INTO Visitante(nome , cpf_militar) VALUES ('usopp', 'cpf 4');
INSERT INTO Visitante(nome , cpf_militar) VALUES ('nami', 'cpf 5');
INSERT INTO Visitante(nome , cpf_militar) VALUES ('chopper', 'cpf 6');
INSERT INTO Visitante(nome , cpf_militar) VALUES ('robin', 'cpf 7');
INSERT INTO Visitante(nome , cpf_militar) VALUES ('franky', 'cpf 8');
INSERT INTO Visitante(nome , cpf_militar) VALUES ('brook', 'cpf 9');
INSERT INTO Visitante(nome , cpf_militar) VALUES ('robin', 'cpf 10');

-- Inserindo Comunicação entre bases

INSERT INTO Comunicação_entre_bases(base_inicia_cominicação , base_recebe_comunicação) VALUES ('base 1', 'base 2');
INSERT INTO Comunicação_entre_bases(base_inicia_cominicação , base_recebe_comunicação) VALUES ('base 2', 'base 3');
INSERT INTO Comunicação_entre_bases(base_inicia_cominicação , base_recebe_comunicação) VALUES ('base 3', 'base 4');
INSERT INTO Comunicação_entre_bases(base_inicia_cominicação , base_recebe_comunicação) VALUES ('base 4', 'base 5');
INSERT INTO Comunicação_entre_bases(base_inicia_cominicação , base_recebe_comunicação) VALUES ('base 5', 'base 6');
INSERT INTO Comunicação_entre_bases(base_inicia_cominicação , base_recebe_comunicação) VALUES ('base 6', 'base 7');
INSERT INTO Comunicação_entre_bases(base_inicia_cominicação , base_recebe_comunicação) VALUES ('base 7', 'base 8');
INSERT INTO Comunicação_entre_bases(base_inicia_cominicação , base_recebe_comunicação) VALUES ('base 8', 'base 9');
INSERT INTO Comunicação_entre_bases(base_inicia_cominicação , base_recebe_comunicação) VALUES ('base 9', 'base 10');
INSERT INTO Comunicação_entre_bases(base_inicia_cominicação , base_recebe_comunicação) VALUES ('base 10', 'base 11');

-- Inserindo arsenal

INSERT INTO Arsenal (Id, Categoria_armazem, Data_de_manutencao, Capacidade_maxima, Nome_base_militar) 
    VALUES (Id.NEXTVAL,'Fuzil',to_date('10/05/2022', 'dd/mm/yy'), 100, 'BAAN');
INSERT INTO Arsenal (Id, Categoria_armazem, Data_de_manutencao, Capacidade_maxima, Nome_base_militar) 
    VALUES (Id.NEXTVAL,'Pistola', to_date('01/01/2023', 'dd/mm/yy'), 20, 'BAFZ');
INSERT INTO Arsenal (Id, Categoria_armazem, Data_de_manutencao, Capacidade_maxima, Nome_base_militar) 
    VALUES (Id.NEXTVAL,'Pistola',to_date('03/01/2023', 'dd/mm/yy'), 20, 'BACO');
INSERT INTO Arsenal (Id, Categoria_armazem, Data_de_manutencao, Capacidade_maxima, Nome_base_militar) 
    VALUES (Id.NEXTVAL,'Sub-Metralhadoras',to_date('20/07/2022', 'dd/mm/yy'), 80, 'BAFZ');
INSERT INTO Arsenal (Id, Categoria_armazem, Data_de_manutencao, Capacidade_maxima, Nome_base_militar) 
    VALUES (Id.NEXTVAL,'Fuzil de Precisao',to_date('20/07/2022', 'dd/mm/yy'), 10, 'BAFZ');

-- inserindo arma

INSERT INTO Arma (Numero_de_registro, Id_arsenal, Calibre, Fabricacao, Nome_do_armamento) 
    VALUES ('01010202', 1,'.556 Nato','Brasil','Carabina Taurus T4 A1 14,5');
INSERT INTO Arma (Numero_de_registro, Id_arsenal, Calibre, Fabricacao, Nome_do_armamento) 
    VALUES ('01013333', 2,'.380 Auto','Estados Unidos','Pistola Smith & Wesson Semiautomática');
INSERT INTO Arma (Numero_de_registro, Id_arsenal, Calibre, Fabricacao, Nome_do_armamento) 
    VALUES ('01014444', 3,'.22LR','Áustria','Glock 44');
INSERT INTO Arma (Numero_de_registro, Id_arsenal, Calibre, Fabricacao, Nome_do_armamento) 
    VALUES ('01010101', 4,'9mm','Alemanha','MP5A3');
INSERT INTO Arma (Numero_de_registro, Id_arsenal, Calibre, Fabricacao, Nome_do_armamento) 
    VALUES ('01015555', 5,'.50 BMG','Estados Unidos','Barrett M82');

-- inserindo fornecerArmamento

INSERT INTO Fornecer_armamento (Horario_e_data, Cpf_militar, Registro_arma, Id_arsenal) 
    VALUES (timestamp '2022-04-20 15:00:00','384.627.718-54','01010202', 1);
INSERT INTO Fornecer_armamento (Horario_e_data, Cpf_militar, Registro_arma, Id_arsenal) 
    VALUES (timestamp '2022-04-20 15:00:00','308.175.745-22','01013333', 2);
INSERT INTO Fornecer_armamento (Horario_e_data, Cpf_militar, Registro_arma, Id_arsenal)
    VALUES (timestamp '2022-04-25 07:30:00','474.020.744-39','01014444', 3);
INSERT INTO Fornecer_armamento (Horario_e_data, Cpf_militar, Registro_arma, Id_arsenal)
    VALUES (timestamp '2022-05-01 09:30:00','415.332.550-32','01010101', 4);
INSERT INTO Fornecer_armamento (Horario_e_data, Cpf_militar, Registro_arma, Id_arsenal) 
    VALUES (timestamp '2022-04-20 15:30:00','384.627.718-54','01015555', 5);