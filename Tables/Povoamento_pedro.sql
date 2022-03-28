-- Inserindo arsenal

INSERT INTO Arsenal (categoria_armazem, data_de_manutenção, capacidade_máxima, nome_base_militar) 
    VALUES ('Fuzil','2022-05-10', 100, 'Arsenal_Fuzil 01');
INSERT INTO Arsenal (categoria_armazem, data_de_manutenção, capacidade_máxima, nome_base_militar) 
    VALUES ('Pistola','2023-01-01', 20, 'Arsenal_Pistola 01');
INSERT INTO Arsenal (categoria_armazem, data_de_manutenção, capacidade_máxima, nome_base_militar) 
    VALUES ('Pistola','2023-01-03', 20, 'Arsenal_Pistola 02');
INSERT INTO Arsenal (categoria_armazem, data_de_manutenção, capacidade_máxima, nome_base_militar) 
    VALUES ('Sub-Metralhadoras','2022-07-20', 80, 'Arsenal_Sub_Metralhadora 01');

-- inserindo fornecerArmamento

INSERT INTO Fornecer_armamento (horario_e_data, cpf_militar, registro_arma, id_arsenal) 
    VALUES ('2022-04-20 15:00:00','CPF MILITAR','01010202', 1);
INSERT INTO Fornecer_armamento (horario_e_data, cpf_militar, registro_arma, id_arsenal) 
    VALUES ('2022-04-20 15:00:00','CPF MILITAR','01013333', 2);
INSERT INTO Fornecer_armamento (horario_e_data, cpf_militar, registro_arma, id_arsenal)
    VALUES ('2022-04-25 07:30:00','CPF MILITAR','01014444', 3);
INSERT INTO Fornecer_armamento (horario_e_data, cpf_militar, registro_arma, id_arsenal)
    VALUES ('2022-05-01 09:30:00','CPF MILITAR','77777777', 4);


-- inserindo arma

INSERT INTO Arma (numero_de_registro, id_arsenal, calibre, fabricação, nome_do_armamento, horario_e_data) 
    VALUES ('01010202', 1,'.556 Nato','Brasil','Carabina Taurus T4 A1 14,5','2022-04-20 15:00:00' );
INSERT INTO Arma (numero_de_registro, id_arsenal, calibre, fabricação, nome_do_armamento, horario_e_data) 
    VALUES ('01013333', 2,'.380 Auto','Estados Unidos','Pistola Smith & Wesson Semiautomática M&P Shield EZ','2022-04-20 15:00:00' );
INSERT INTO Arma (numero_de_registro, id_arsenal, calibre, fabricação, nome_do_armamento, horario_e_data) 
    VALUES ('01014444', 3,'.22LR','Áustria','Glock 44','2022-04-25 07:30:00');
INSERT INTO Arma (numero_de_registro, id_arsenal, calibre, fabricação, nome_do_armamento, horario_e_data) 
    VALUES ('01014444', 4,'9mm','Alemanha','MP5A3','2022-05-01 09:30:00');

