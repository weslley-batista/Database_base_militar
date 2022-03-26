-- Inserindo arsenal

INSERT INTO Arsenal (categoria_armazem, data_de_manutenção, capacidade_máxima, nome_base_militar) VALUES ('Fuzil','2022-05-10', 100, 'Arsenal_Fuzil 01');
INSERT INTO Arsenal (categoria_armazem, data_de_manutenção, capacidade_máxima, nome_base_militar) VALUES ('Fuzil','2022-05-12', 50, 'Arsenal_Fuzil 02');
INSERT INTO Arsenal (categoria_armazem, data_de_manutenção, capacidade_máxima, nome_base_militar) VALUES ('Pistola','2023-01-01', 20, 'Arsenal_Pistola 01');
INSERT INTO Arsenal (categoria_armazem, data_de_manutenção, capacidade_máxima, nome_base_militar) VALUES ('Pistola','2023-01-03', 20, 'Arsenal_Pistola 02');
INSERT INTO Arsenal (categoria_armazem, data_de_manutenção, capacidade_máxima, nome_base_militar) VALUES ('Sub-Metralhadoras','2023-01-01', 70, 'Arsenal_Sub_Metralhadora 01');
INSERT INTO Arsenal (categoria_armazem, data_de_manutenção, capacidade_máxima, nome_base_militar) VALUES ('Sub-Metralhadoras','2022-07-20', 80, 'Arsenal_Sub_Metralhadora 02');


-- inserindo arma

INSERT INTO Arma (numero_de_registro, id_arsenal, calibre, fabricação, nome_do_armamento)

-- inserindo fornecerArmamento

INSERT INTO Fornecer_armamento (horario_e_data, cpf_militar, registro_arma, id_arsenal) VALUES ('')