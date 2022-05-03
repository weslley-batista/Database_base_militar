-- Informações relacionada ao endereço, sendo o tipo que estará em pessoa, no qual militar e prestador de serviço herdam
CREATE OR REPLACE TYPE tp_endereco_pessoa AS OBJECT (
    Rua VARCHAR2 (255),
    Numero NUMBER (38),
    Complemento VARCHAR2 (255),
    CEP VARCHAR2 (10)
);

CREATE OR REPLACE TYPE tp_telefone_pessoa AS OBJECT (
    Numero VARCHAR2 (15)
);

CREATE OR REPLACE TYPE tp_pessoa AS OBJECT (
    Nome VARCHAR2 (100),
    CPF VARCHAR2 (14),
    Telefone REF tp_telefone_pessoa,
    Endereco REF tp_endereco_pessoa
) NOT FINAL NOT INSTANTIABLE;


CREATE OR REPLACE TYPE tp_arr_telefone AS VARRAY (10) OF tp_telefone_pessoa;

CREATE OR REPLACE TYPE tp_nt_telefone AS TABLE tp_telefone_pessoa;

-- MILITAR HERDA DE PESSOA
CREATE OR REPLACE TYPE tp_militar UNDER tp_pessoa (
    Patente NUMBER NOT NULL,
    -- Salario NUMBER NOT NULL,
    MEMBER FUNCTION promocao_patente RETURN NUMBER, --membemr function
    CONSTRUCTOR FUNCTION tp_militar (militar tp_militar) RETURN SELF AS RESULT, -- contructor funcion
    OVERRIDING MEMBER PROCEDURE imprimir_informacao,    
    MEMBER PROCEDURE calculo_salario(SELF IN OUT NOCOPY tp_entregador, valor NUMBER)

);
ALTER TYPE tp_militar ADD ATTRIBUTE (Salario) CASCADE;

/
CREATE OR REPLACE TYPE BODY tp_militar AS

    MEMBER FUNCTION promocao_patente RETURN NUMBER IS
        BEGIN
            RETURN Patente + 1; 
        END;
    
    CONSTRUCTOR FUNCTION tp_militar (militar tp_militar) RETURN SELF AS RESULT IS
        BEGIN
            CPF := militar.CPF;
            Nome := militar.Nome;
            Patente := militar.Patente;
            Telefone := militar.Telefone;
            Endereco := militar.Endereco;
           
            RETURN;
        END;

    OVERRIDING MEMBER PROCEDURE imprimir_informacao IS
        BEGIN
            RETURN 
                'Nome: ' || DBMS_OUTPUT.PUT_LINE(militar.Nome) ||
                 'CPF: ' || DBMS_OUTPUT.PUT_LINE(militar.CPF) ||
                 'Patente: ' || DBMS_OUTPUT.PUT_LINE(militar.Patente) ||
                 'Salario: ' || DBMS_OUTPUT.PUT_LINE(militar.Salario) || 
                 'Telefone: ' || DBMS_OUTPUT.PUT_LINE(militar.Telefone.Numero) ||
                 'Endereco: ' || DBMS_OUTPUT.PUT_LINE(militar.Endereco.Rua) ||
                 ' ' || DBMS_OUTPUT.PUT_LINE(militar.Endereco.Numero) ||
                 ' ' || DBMS_OUTPUT.PUT_LINE(militar.Endereco.Complemento) ||
                 ' ' || DBMS_OUTPUT.PUT_LINE(militar.Endereco.CEP);
        END;
    MEMBER PROCEDURE calculo_salario_semestral(SELF IN OUT NOCOPY tp_entregador, valor NUMBER)(
        BEGIN
            SELF.Salario := Salario*6;
            DBMS_OUTPUT.PUT_LINE(SELF.Salario);
        END;
    );
END;
/

/*

1. CREATE OR REPLACE TYPE ✅
2. CREATE OR REPLACE TYPE BODY ✅
3. MEMBER PROCEDURE ✅
4. MEMBER FUNCTION ✅
5. ORDER MEMBER FUNCTION
6. MAP MEMBER FUNCTION
7. CONSTRUCTOR FUNCTION✅
8. OVERRIDING MEMBER ✅
9. FINAL MEMBER ✅
10. NOT INSTANTIABLE TYPE/MEMBER ✅
11. HERANÇA DE TIPOS (UNDER/NOT FINAL) ✅
12. ALTER TYPE ✅
13. CREATE TABLE OF ✅
14. WITH ROWID REFERENCES ✅
15. REF ✅
16. SCOPE IS
17. INSERT INTO
18. VALUE
19. VARRAY ✅
20. NESTED TABLE✅

*/