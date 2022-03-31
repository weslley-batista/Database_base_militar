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

