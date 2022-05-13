-- Consultas primárias para OR
-- Militar
SELECT NOME, CPF, PATENTE, M.endereco.CEP FROM tb_militar M;

-- Base
SELECT NOME, ESPECIALIDADE, B.endereco.Rua FROM tb_base B;

-- Arsenal
SELECT CATEGORIA_ARMAZEM, NOME_BASE_MILITAR, CAPACIDADE_MAXIMA FROM tb_arsenal;

-- Consulta REF/DEREF
INSERT INTO tb_endereco VALUES ( 
    tp_endereco( 
        'Rua dos Navegantes',
        1844,
        'em frente ao minuto pao de acucar',
        '51020010'
    ) 
);

INSERT INTO tb_militar VALUES ( 
    tp_militar(
        'Isabel Malheiros',
        '401.111.222-89',
        tp_arr_telefone (tp_telefone  (
        '81',
        '99428922'
        )),
        (SELECT REF(M) FROM tb_endereco M WHERE M.CEP = '51020010'),
        2,
        900,
    	tp_nt_descricao(tp_descricao_militar('Forca Sobrehumana'))
    )
);

SELECT DEREF(E.endereco).Rua AS Rua, DEREF(E.endereco).numero AS Numero, DEREF(E.endereco).complemento AS complement, DEREF(E.endereco).CEP AS CEP
FROM tb_militar E WHERE DEREF(E.endereco).numero is not null;

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
SELECT * FROM TABLE(SELECT M.descricao FROM tb_militar M WHERE M.Patente = 2);
SELECT * FROM TABLE(SELECT M.descricao FROM tb_militar M WHERE M.Patente = 1);
SELECT * FROM TABLE(SELECT M.descricao FROM tb_militar M WHERE M.Patente = 3);

-- Consulta MAP FUNCTION
SELECT B.quantidade_telefone() FROM tb_base B WHERE B.Especialidade = 'Comunicação';

