--Listar pessoas (CURSOR (OPEN, FETCH e CLOSE), LOOP-EXIT-WHEN) [USANDO O RECORD AQUI] CHECK
SET serveroutput ON;
DECLARE
    TYPE REG_PESSOA IS record (Nome VARCHAR2 (100), CPF VARCHAR2 (14)); 
    V_PESSOA REG_PESSOA;
    CURSOR C_Pessoa IS
    SELECT Nome, CPF
    FROM Pessoa;
BEGIN
    OPEN C_Pessoa;

    LOOP
        FETCH C_Pessoa INTO V_PESSOA;
        EXIT WHEN C_Pessoa%NOTFOUND;

        dbms_output.put_line (
            'Nome: ' || TO_CHAR (V_PESSOA.NOME) ||
            ' CPF: ' || TO_CHAR (V_PESSOA.CPF)
        );
    END LOOP;
    CLOSE C_Pessoa;
END;
/
-- Procurando visita (TIPO TABLE, BLOCO ANONIMO, %TYPE, %ROWTYPE, IF-ELSIF, CASE-WHEN, FOR-IN-LOOP)
CREATE OR REPLACE FUNCTION procura_visita(nome_visita visitante.nome%TYPE)
RETURN visitante.nome%TYPE IS 
    RespostaBusca visitante.nome%TYPE;
    BEGIN
        FOR VISITA IN (SELECT * FROM Visitante) LOOP
                CASE VISITA.nome
                    WHEN 'luffy' THEN
                        RespostaBusca := 'luffy encontrado';
                    ELSE
                        IF VISITA.nome = nome_visita THEN
                            RespostaBusca := 'Visitante encontrado';
                        ELSIF
                            VISITA.nome <> nome_visita THEN
                            RespostaBusca := 'Visitante não encontrado';
                        END IF;
                END CASE;
            END LOOP;
        RETURN RespostaBusca;
    END;    
/
-- INSERIR NOVO SERVIÇO (procedure, in, package, package body) CHECK!!!!!!!
CREATE OR REPLACE PACKAGE CadastroPackage
AS 
 PROCEDURE InserirSevico(
    P_id_servico_seq Servico.id_servico_seq%TYPE,
    P_Nome Servico.Nome%TYPE,
    P_Descricao Servico.Descricao%TYPE
);
END CadastroPackage;
/
CREATE OR REPLACE PACKAGE BODY CadastroPackage
AS
    PROCEDURE InserirSevico (
         P_id_servico_seq Servico.id_servico_seq%TYPE,
        P_Nome Servico.Nome%TYPE,
        P_Descricao Servico.Descricao%TYPE
    ) IS
    BEGIN
    INSERT INTO servico (id_servico_seq, Nome, Descricao) VALUES (P_id_servico_seq, P_Nome, P_Descricao);
    COMMIT;
    END InserirSevico; -- uso -> InserirSevico (id_servico_seq.NEXTVAL ,  limpeza, limpeza de fungos)
END CadastroPackage;
/

-- CONFIRMAÇÃO APOS INSERIR NOVO SERVIÇO (Trigger comando) CHECK!!!
CREATE OR REPLACE TRIGGER ConfirmacaoInsertServico 
AFTER INSERT ON Servico
BEGIN
    dbms_output.put_line('O serviço foi inserido com sucesso');
END;

-- CADASTRAR UM NOVO MILITAR (select-into, trigger-linha, exception when) [new indica o dado que esta sendo inserido]  --CHECK
CREATE OR REPLACE TRIGGER ControlePessoaMilitar BEFORE INSERT ON Militar
FOR EACH ROW

DECLARE
    militar_NOVO Pessoa.CPF%TYPE;

BEGIN
    SELECT cpf INTO militar_NOVO FROM MILITAR WHERE cpf =: NEW.cpf;

    IF militar_NOVO IS NOT NULL THEN
        RAISE_APPLICATION_ERROR(1122,'Este militar já é cadastrado');
    END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            dbms_output.put_line('Novo militar aceito');
END;
/


-- RETORNA A ESPECIALIDADE Do PRESTADOR DE SERVIÇO(CPF) QUE FOI PASSADO COMO PARAMETRO(FUNCTION) CHECK!!!
    CREATE OR REPLACE FUNCTION EspecialidadePrestadorDeServico
    (Entrada_cpf Pessoa.CPF%TYPE)
    RETURN Prestador_de_servico.Especialidade%TYPE
    IS
        V_especialidade Prestador_de_servico.Especialidade%TYPE;
    BEGIN
        IF Entrada_cpf IS NULL THEN
             V_especialidade := 'Especialidade não encontrada';
        ELSE
            SELECT PS.Especialidade INTO V_especialidade
            FROM Prestador_de_servico PS
            WHERE PS.CPF = Entrada_cpf;

            IF V_especialidade IS NULL THEN
            V_especialidade := 'O prestador de serviço não existe';
            END IF;
        END IF;
        RETURN V_especialidade;
    END EspecialidadePrestadorDeServico;
/
-- (WHILE-LOOP) CHECK !!
declare
    auxCount Executa_servico.Servico%type := 1;
begin
WHILE auxCount > 0 LOOP
    dbms_output.put_line('Você está em um DataBase referente a uma base militar');
    auxCount := auxCount-1;
END LOOP;
END;
