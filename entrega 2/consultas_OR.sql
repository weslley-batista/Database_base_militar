-- Consultas primárias para OR
-- Militar
SELECT NOME, CPF, PATENTE, M.endereco.CEP FROM tb_militar M;
SELECT NOME, CPF, PATENTE, M.endereco.CEP FROM tb_militar M WHERE CPF='77777777777' OR CPF='12345678956';

-- Base
SELECT NOME, ESPECIALIDADE, B.endereco.Rua FROM tb_base B;

-- Arsenal
SELECT CATEGORIA_ARMAZEM, NOME_BASE_MILITAR, CAPACIDADE_MAXIMA FROM tb_arsenal;

-- JOIN Base Arsenal
SELECT B.NOME,  ESPECIALIDADE, arsenal.CAPACIDADE_MAXIMA FROM tb_base B
INNER JOIN tb_arsenal Arsenal ON B.nome=Arsenal.NOME_BASE_MILITAR;

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

--- ORDER MEMBER FUNCTION ---
DECLARE 
    aux NUMBER;
    endereco1 tp_endereco;
    endereco2 tp_endereco;
BEGIN
    SELECT VALUE(E) INTO endereco1 FROM tb_endereco E WHERE cep = '50810-036';
    SELECT VALUE(E) INTO endereco2 FROM tb_endereco E WHERE cep = '77777-777';
    aux := endereco1.compara_numero_endereco(endereco2);
    IF aux = 1 THEN
        DBMS_OUTPUT.PUT_LINE('O numero do endereço cujo cep é ' || TO_CHAR(endereco1.cep) 
                    || ' é maior que o numero do endereço cujo cep é ' || TO_CHAR(endereco2.cep));
    ELSIF aux = -1 THEN 
        DBMS_OUTPUT.PUT_LINE('O numero do endereço cujo cep é ' || TO_CHAR(endereco2.cep) 
                    || ' é maior que o numero do endereço cujo cep é ' || TO_CHAR(endereco1.cep));            
    ELSE
        DBMS_OUTPUT.PUT_LINE('O numero dos dois endereços é igual.');
    END IF;
END;
