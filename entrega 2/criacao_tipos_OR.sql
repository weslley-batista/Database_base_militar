-- Informações relacionada ao endereço, sendo o tipo que estará em pessoa, no qual militar e prestador de serviço herdam
CREATE OR REPLACE TYPE tp_endereco AS OBJECT (
    Rua VARCHAR2 (80),
    Numero NUMBER (38),
    Complemento VARCHAR2 (100),
    CEP VARCHAR2 (10)
);
/
CREATE OR REPLACE TYPE tp_telefone AS OBJECT (
    ddd VARCHAR2(2),
    Numero VARCHAR2 (10)
);
/
CREATE OR REPLACE TYPE tp_arr_telefone AS VARRAY (10) OF tp_telefone;
/
CREATE OR REPLACE TYPE tp_descricao_militar AS OBJECT (
    Numero VARCHAR2 (100)
);
/
CREATE OR REPLACE TYPE tp_nt_descricao AS TABLE OF tp_descricao_militar;
/
CREATE OR REPLACE TYPE tp_pessoa AS OBJECT (
    Nome VARCHAR2 (80),
    CPF VARCHAR2 (14),
    Telefone tp_arr_telefone,
    Endereco REF tp_endereco,
    MEMBER PROCEDURE imprimir_informacao
) NOT FINAL NOT INSTANTIABLE;
/
CREATE OR REPLACE TYPE BODY tp_pessoa AS
    MEMBER PROCEDURE imprimir_informacao (SELF IN OUT NOCOPY tp_pessoa) IS
        BEGIN 
            DBMS_OUTPUT.PUT_LINE('Nome: ' || Nome);
            DBMS_OUTPUT.PUT_LINE('CPF: ' || CPF);
            DBMS_OUTPUT.PUT_LINE('Telefone: ' || telefone(0).ddd || telefone(0).Numero);
            DBMS_OUTPUT.PUT_LINE('Endereco: ' || Endereco.Rua || Endereco.Numero || endereço.Complemento ||  Endereco.CEP);
        END;

END;
/
-- MILITAR HERDA DE PESSOA
CREATE OR REPLACE TYPE tp_militar UNDER tp_pessoa (
    Patente NUMBER,
    MEMBER FUNCTION promocao_patente RETURN NUMBER, 
    CONSTRUCTOR FUNCTION tp_militar (militar tp_militar) RETURN SELF AS RESULT, 
    OVERRIDING MEMBER PROCEDURE imprimir_informacao,    
    MEMBER PROCEDURE calculo_salario(valor NUMBER)

);
/
ALTER TYPE tp_militar ADD ATTRIBUTE (Salario float) CASCADE;
/
ALTER TYPE tp_militar ADD ATTRIBUTE (descricao tp_nt_descricao) CASCADE;
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
            Salario := militar.Salario;
           
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
    MEMBER PROCEDURE calculo_salario_semestral(valor NUMBER) IS 
        BEGIN
            SELF.Salario := Salario*6;
            DBMS_OUTPUT.PUT_LINE(SELF.Salario);
        END;
    ORDER MEMBER FUNCTION compara_patente (SELF IN OUT NOCOPY tp_militar, m tp_militar) RETURN NUMBER IS
        BEGIN
            IF SELF.patente < m.patente THEN 
                RETURN -1;
            ELSIF SELF.patente > m.patente THEN 
                RETURN 1;
            ELSE 
                RETURN 0;
            END IF;
        END;

END;
/
-- Base os telefones são uma varray que vai ser utilizada posteriormente para fazer um MAP MEMBER
CREATE OR REPLACE TYPE tp_base AS OBJECT (
    Nome VARCHAR2(30),
    Especialidade VARCHAR2 (30),
    Endereco tp_endereco,
    telefone tp_arr_telefone,
    FINAL MAP MEMBER FUNCTION quantidade_telefone RETURN NUMBER
);
/

CREATE OR REPLACE TYPE BODY tp_base AS FINAL MAP MEMBER FUNCTION quantidade_telefone RETURN NUMBER IS
    telefones_base NUMBER := 0;
    BEGIN
        SELECT COUNT(*) INTO telefones_base FROM TABLE (self.telefone);
        RETURN telefones_base;
    END;
END;
/
CREATE OR REPLACE TYPE tp_arsenal AS OBJECT(
    Categoria_armazem VARCHAR2(300),
    Data_de_manutencao DATE,
    Capacidade_maxima NUMBER,
    Nome_base_militar VARCHAR2(300),
    Nome_armeiro REF tp_militar
);
/
