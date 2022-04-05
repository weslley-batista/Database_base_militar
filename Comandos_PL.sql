-- Tipo RECORD (RECORD)
CREATE TYPE REG_PESSOA IS RECORD (Nome VARCHAR2 (100), CPF VARCHAR2 (14)); --RECORD
T_PESSOA REG_PESSOA;

-- Procurando visita (TIPO TABLE, BLOCO ANONIMO, %TYPE, %ROWTYPE, IF-ELSIF, CASE-WHEN, FOR-IN-LOOP)
Set serveroutput on;
DECLARE
    TYPE Type_listaVisitantes IS TABLE Visitante%ROWTYPE;
    listaVisitantes Type_listaVisitantes;

    RespostaBusca Pessoa.Nome%type; --varchar2
   

BEGIN
    
    FOR VISITA IN (SELECT * FROM VISITANTE) LOOP
            CASE VISITA.cpf_militar
                WHEN '000.000.000-00' THEN
                    RespostaBusca := 'Militar não encontrado';
                ELSE;
                    IF VISITA.nome ='luffy' THEN
                        RespostaBusca := 'Visitante encontrado';
                    ELSIF VISITA.nome <> 'luffy' THEN
                        RespostaBusca := 'O militar existe, porem,o visitante não foi encontrado';
                    END IF;
            END CASE;
        END LOOP;
    dbms_output.put_line put_line (RespostaBusca);
END;
/
-----------------------------------------------------------------------------------------------------
-- INSERIR NOVO SERVIÇO (procedure, in)

CREATE OR REPLACE PROCEDURE InserirSevico (
    P_id_servico_seq Servico.id_servico_seq%TYPE
    P_Nome Servico.Nome%TYPE
    P_Descricao Servico.Descricao%TYPE
) IS
INSERT INTO Servico (id_servico_seq, Nome, Descricao) VALUES (P_id_servico_seq, P_Nome, P_Descricao);
COMMIT;
END InserirSevico;
-- uso -> InserirSevico (id_servico_seq.NEXTVAL ,  limpeza, limpeza de fungos)

-- INSERIR NOVO SERVIÇO (Trigger comando)
CREATE OR REPLACE TRIGGER ConfirmacaoInsertServico 
AFTER ON Servico
BEGIN
    dbms_output.put_line('O serviço foi inserido com sucesso');
END;

-- (select-into, trigger-linha, exception when) [new indica o dado que esta sendo inserido]
Set serveroutput on;
CREATE OR REPLACE TRIGGER ControlePessoaMilitar BEFORE INSERT ON Militar
FOR EACH ROW

DECLARE
    militar Pessoa.CPF%TYPE;

BEGIN
    SELECT cpf INTO militar FROM Pessoa WHERE cpf =: NEW.cpf;

    IF militar IS NOT NULL THEN
        RAISE_APPLICATION_ERROR(1122,'Este militar já é cadastrado');
    END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            dbms_output.put_line('Novo militar aceito');
END;