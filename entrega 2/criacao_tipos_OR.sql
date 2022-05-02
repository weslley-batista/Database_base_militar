-- Informações relacionada ao endereço, sendo o tipo que estará em pessoa, no qual militar e prestador de serviço herdam
CREATE OR REPLACE TYPE tp_endereco AS OBJECT (
    Rua VARCHAR2 (255),
    Numero NUMBER (38),
    Complemento VARCHAR2 (255),
    CEP VARCHAR2 (10),

    CONSTRUCTOR FUNCTION tp_endereco(SELF IN OUT NOCOPY
tp_endereco, Rua VARCHAR2, Numero NUMBER, Complemento VARCHAR2, Cep 
NUMBER) RETURN SELF AS RESULT);
/

CREATE OR REPLACE TYPE BODY tp_endereco AS
    CONSTRUCTOR FUNCTION tp_endereco(SELF IN OUT tp_endereco, 
Rua VARCHAR2, Numero NUMBER, Complemento VARCHAR2, Cep NUMBER) 
RETURN SELF AS RESULT IS 
BEGIN
    SELF.rua := Rua; SELF.numero := Numero; SELF.complemento := Complemento;
    SELF.cep := Cep; RETURN;

        END;

END;
/

CREATE OR REPLACE TYPE tp_telefone AS OBJECT (
    ddd VARCHAR2(2),
    numero VARCHAR2(9)
)
/
CREATE OR REPLACE TYPE tp_arr_telefone AS VARRAY (10) OF tp_telefone
/
CREATE OR REPLACE TYPE pessoa AS OBJECT (
    nome VARCHAR2(100),
    CPF VARCHAR2(14),
    endereco tp_endereco,
    telefones tp_arr_telefone
)
/


-- MILITAR HERDA DE PESSOA
/*CREATE OR REPLACE TYPE tp_militar UNDER tp_pessoa (
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
2. CREATE OR REPLACE TYPE BODY ✅
3. MEMBER PROCEDURE
4. MEMBER FUNCTION
5. ORDER MEMBER FUNCTION
6. MAP MEMBER FUNCTION
7. CONSTRUCTOR FUNCTION ✅
8. OVERRIDING MEMBER
9. FINAL MEMBER
10. NOT INSTANTIABLE TYPE/MEMBER
11. HERANÇA DE TIPOS (UNDER/NOT FINAL)
12. ALTER TYPE
13. CREATE TABLE OF
14. WITH ROWID REFERENCES
15. REF
16. SCOPE IS
17. INSERT INTO
18. VALUE
19. VARRAY ✅
20. NESTED TABLE

*/