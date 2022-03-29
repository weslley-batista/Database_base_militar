-- Inserindo arsenal

INSERT INTO Arsenal (id, categoria_armazem, data_de_manutenção, capacidade_máxima, nome_base_militar) 
    VALUES (Id.NEXTVAL,'Fuzil',to_date('10/05/2022', 'dd/mm/yy'), 100, 'Arsenal_Fuzil 01');
INSERT INTO Arsenal (id, categoria_armazem, data_de_manutenção, capacidade_máxima, nome_base_militar) 
    VALUES (Id.NEXTVAL,'Pistola', to_date('01/01/2023', 'dd/mm/yy'), 20, 'Arsenal_Pistola 01');
INSERT INTO Arsenal (id, categoria_armazem, data_de_manutenção, capacidade_máxima, nome_base_militar) 
    VALUES (Id.NEXTVAL,'Pistola',to_date('03/01/2023', 'dd/mm/yy'), 20, 'Arsenal_Pistola 02');
INSERT INTO Arsenal (id, categoria_armazem, data_de_manutenção, capacidade_máxima, nome_base_militar) 
    VALUES (Id.NEXTVAL,'Sub-Metralhadoras',to_date('20/07/2022', 'dd/mm/yy'), 80, 'Arsenal_Sub_Metralhadora 01');

-- inserindo fornecerArmamento

INSERT INTO Fornecer_armamento (horario_e_data, cpf_militar, registro_arma, id_arsenal) 
    VALUES (timestamp '2022-04-20 15:00:00','CPF MILITAR','01010202', 1); -- Necessário inserir o CPF MILITAR
INSERT INTO Fornecer_armamento (horario_e_data, cpf_militar, registro_arma, id_arsenal) 
    VALUES (timestamp '2022-04-20 15:00:00','CPF MILITAR','01013333', 2); -- Necessário inserir o CPF MILITAR
INSERT INTO Fornecer_armamento (horario_e_data, cpf_militar, registro_arma, id_arsenal)
    VALUES (timestamp '2022-04-25 07:30:00','CPF MILITAR','01014444', 3); -- Necessário inserir o CPF MILITAR
INSERT INTO Fornecer_armamento (horario_e_data, cpf_militar, registro_arma, id_arsenal)
    VALUES (timestamp '2022-05-01 09:30:00','CPF MILITAR','77777777', 4); -- Necessário inserir o CPF MILITAR


-- inserindo arma

INSERT INTO Arma (numero_de_registro, id_arsenal, calibre, fabricação, nome_do_armamento, horario_e_data) 
    VALUES ('01010202', 1,'.556 Nato','Brasil','Carabina Taurus T4 A1 14,5',timestamp '2022-04-20 15:00:00');
INSERT INTO Arma (numero_de_registro, id_arsenal, calibre, fabricação, nome_do_armamento, horario_e_data) 
    VALUES ('01013333', 2,'.380 Auto','Estados Unidos','Pistola Smith & Wesson Semiautomática',timestamp '2022-04-20 15:00:00');
INSERT INTO Arma (numero_de_registro, id_arsenal, calibre, fabricação, nome_do_armamento, horario_e_data) 
    VALUES ('01014444', 3,'.22LR','Áustria','Glock 44',timestamp '2022-04-25 07:30:00');
INSERT INTO Arma (numero_de_registro, id_arsenal, calibre, fabricação, nome_do_armamento, horario_e_data) 
    VALUES ('01014444', 4,'9mm','Alemanha','MP5A3',timestamp '2022-05-01 09:30:00');

