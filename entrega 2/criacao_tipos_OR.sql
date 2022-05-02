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

-- MILITAR HERDA DE PESSOA
CREATE OR REPLACE TYPE tp_militar UNDER tp_pessoa (
    Patente NUMBER NOT NULL
    -- criar um salario pro militar para poder usar MEMBER PROCEDURE como variaçao salarial
    -- MEMBER PROCEDURE salario_var (SELF IN OUT NOCOPY tp_militar, input NUMBER),
    MEMBER FUNCTION promocao_patente RETURN NUMBER,
    CONSTRUCTOR FUNCTION tp_militar (x1 tp_militar) RETURN SELF AS RESULT,
    -- Verificar esse OVERRIDING se pode ser usado aqui para imprimir as informações do militar
    OVERRIDING MEMBER PROCEDURE imprimir_informacao RETURN VARCHAR2 AS IS
        BEGIN
            RETURN 'Nome: ' || x1.Nome || '\nCPF: ' || x1.CPF || '\nPatente: ' || x1.Patente;
        END;
);

/*

1. CREATE OR REPLACE TYPE ✅
2. CREATE OR REPLACE TYPE BODY
3. MEMBER PROCEDURE
4. MEMBER FUNCTION
5. ORDER MEMBER FUNCTION
6. MAP MEMBER FUNCTION
7. CONSTRUCTOR FUNCTION
8. OVERRIDING MEMBER
9. FINAL MEMBER ✅
10. NOT INSTANTIABLE TYPE/MEMBER ✅
11. HERANÇA DE TIPOS (UNDER/NOT FINAL) ✅
12. ALTER TYPE
13. CREATE TABLE OF ✅
14. WITH ROWID REFERENCES ✅
15. REF ✅
16. SCOPE IS
17. INSERT INTO
18. VALUE
19. VARRAY ✅
20. NESTED TABLE

*/