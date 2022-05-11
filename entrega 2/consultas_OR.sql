-- Consultas primárias para OR
-- Militar
SELECT NOME, CPF, PATENTE, M.endereco.CEP FROM tb_militar M;

-- Base
SELECT NOME, ESPECIALIDADE, B.endereco.Rua FROM tb_base B;

-- Arsenal
SELECT CATEGORIA_ARMAZEM, NOME_BASE_MILITAR, CAPACIDADE_MAXIMA FROM tb_arsenal;

-- Consulta REF
SELECT DEREF(E.Militar).Rua, DEREF(E.Militar).CEP, DEREF(E.Base).Rua, DEREF(E.Base).CEP FROM tb_endereco E;
SELECT E.Militar.Rua AS militar, E.Militar.CEP AS militar, E.Base.Rua AS base, E.Base.CEP AS base FROM tb_endereco E;

-- Consulta MEMBER FUNCTION
SELECT M.promocao_patente() FROM tb_militar M WHERE M.Patente = 2;
SELECT M.promocao_patente() FROM tb_militar M WHERE M.Patente = 1;

-- Consulta MEMBER PROCEDURE
DECLARE militar tp_militar;
BEGIN
    SELECT VALUE(M) INTO militar FROM tb_militar M WHERE M.Patente = 1;
    militar.calculo_salario_semestral(militar.salario);
END;

-- Consulta OVERRIDING MEMBER PROCEDURE
DECLARE militar tp_militar;
BEGIN
    SELECT VALUE(M) INTO militar FROM tb_militar M WHERE M.Patente = 2;
    militar.imprimir_informacao();
END;
-- Consulta VARRAY
SELECT Nome, Especialidade, B.endereco.CEP, T.* FROM tb_base B, TABLE (B.telefone) T;

-- Consulta NESTED TABLE
SELECT * FROM TABLE(SELECT M.descricao FROM tb_militar M WHERE M.Patente = 2); -- Verificar se é M.descricao ou M.descricao_militar
SELECT * FROM TABLE(SELECT M.descricao FROM tb_militar M WHERE M.Patente = 1); -- Verificar se é M.descricao ou M.descricao_militar
SELECT * FROM TABLE(SELECT M.descricao FROM tb_militar M WHERE M.Patente = 3); -- Verificar se é M.descricao ou M.descricao_militar

-- Consulta MAP FUNCTION
SELECT B.quantidade_telefone() FROM tb_base B WHERE B.Especialidade = 'Comunicação';

-- Consulta ORDER MEMBER FUNCTION