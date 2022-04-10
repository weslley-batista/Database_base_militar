-- Tipo RECORD (RECORD)
CREATE TYPE REG_PESSOA IS RECORD (Nome VARCHAR2 (100), CPF VARCHAR2 (14)); --RECORD
T_PESSOA REG_PESSOA;

-- validando visita (TIPO TABLE, BLOCO ANONIMO, %TYPE, %ROWTYPE, IF-ELSIF, CASE-WHEN, FOR-IN-LOOP)
DECLARE
    TYPE Type_listaVisitantes IS TABLE Visitante%ROWTYPE;
    listaVisitantes Type_listaVisitantes;

    buscaCpfMilitar Pessoa.Nome%type; --varchar2
    buscaNomeVisitante Pessoa.Nome%type; --varchar2

BEGIN
    
    FOR VISITA IN (SELECT * FROM VISITANTE) LOOP
            CASE VISITA.cpf_militar
                WHEN '000.000.000-00' THEN
                    buscaCpfMilitar := 'Militar nao encontrado';
                ELSE;
                    IF VISITA.nome <> 'luffy' THEN
                        buscaNomeVisitante := 'Visitante não valido';
                    ELSIF VISITA.nome <> 'zoro' THEN
                        buscaNomeVisitante := 'Visitante não valido';
                    END IF;
            END CASE;
        END LOOP;
END;

--------------------------------------------------------------------