-- Inserindo arsenal

INSERT INTO Arsenal (Id, Categoria_armazem, Data_de_manutencao, Capacidade_maxima, Nome_base_militar) 
    VALUES (Id.NEXTVAL,'Fuzil',to_date('10/05/2022', 'dd/mm/yy'), 100, 'NOME BASE'); -- Necessário inserir a BASE MILITAR
INSERT INTO Arsenal (Id, Categoria_armazem, Data_de_manutencao, Capacidade_maxima, Nome_base_militar) 
    VALUES (Id.NEXTVAL,'Pistola', to_date('01/01/2023', 'dd/mm/yy'), 20, 'NOME BASE'); -- Necessário inserir a BASE MILITAR
INSERT INTO Arsenal (Id, Categoria_armazem, Data_de_manutencao, Capacidade_maxima, Nome_base_militar) 
    VALUES (Id.NEXTVAL,'Pistola',to_date('03/01/2023', 'dd/mm/yy'), 20, 'NOME BASE'); -- Necessário inserir a BASE MILITAR
INSERT INTO Arsenal (Id, Categoria_armazem, Data_de_manutencao, Capacidade_maxima, Nome_base_militar) 
    VALUES (Id.NEXTVAL,'Sub-Metralhadoras',to_date('20/07/2022', 'dd/mm/yy'), 80, 'NOME BASE'); -- Necessário inserir a BASE MILITAR

-- inserindo fornecerArmamento

INSERT INTO Fornecer_armamento (Horario_e_data, Cpf_militar, Registro_arma, Id_arsenal) 
    VALUES (timestamp '2022-04-20 15:00:00','CPF MILITAR','01010202', 1); -- Necessário inserir o CPF MILITAR
INSERT INTO Fornecer_armamento (Horario_e_data, Cpf_militar, Registro_arma, Id_arsenal) 
    VALUES (timestamp '2022-04-20 15:00:00','CPF MILITAR','01013333', 2); -- Necessário inserir o CPF MILITAR
INSERT INTO Fornecer_armamento (Horario_e_data, Cpf_militar, Registro_arma, Id_arsenal)
    VALUES (timestamp '2022-04-25 07:30:00','CPF MILITAR','01014444', 3); -- Necessário inserir o CPF MILITAR
INSERT INTO Fornecer_armamento (Horario_e_data, Cpf_militar, Registro_arma, Id_arsenal)
    VALUES (timestamp '2022-05-01 09:30:00','CPF MILITAR','77777777', 4); -- Necessário inserir o CPF MILITAR


-- inserindo arma

INSERT INTO Arma (Numero_de_registro, Id_arsenal, Calibre, Fabricacao, Nome_do_armamento, Horario_e_data) 
    VALUES ('01010202', 1,'.556 Nato','Brasil','Carabina Taurus T4 A1 14,5',timestamp '2022-04-20 15:00:00');
INSERT INTO Arma (Numero_de_registro, Id_arsenal, Calibre, Fabricacao, Nome_do_armamento, Horario_e_data) 
    VALUES ('01013333', 2,'.380 Auto','Estados Unidos','Pistola Smith & Wesson Semiautomática',timestamp '2022-04-20 15:00:00');
INSERT INTO Arma (Numero_de_registro, Id_arsenal, Calibre, Fabricacao, Nome_do_armamento, Horario_e_data) 
    VALUES ('01014444', 3,'.22LR','Áustria','Glock 44',timestamp '2022-04-25 07:30:00');
INSERT INTO Arma (Numero_de_registro, Id_arsenal, Calibre, Fabricacao, Nome_do_armamento, Horario_e_data) 
    VALUES ('01014444', 4,'9mm','Alemanha','MP5A3',timestamp '2022-05-01 09:30:00');

