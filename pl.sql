-- CREATE PROCEDURE, IF ELSIF, FOR IN LOOP 
-- procedure que classifica os salários do funcionários em alto, baixo e médio;

CREATE OR REPLACE PROCEDURE ClassificaSalario AS
    CURSOR cursor_funcionarios IS
        SELECT f.cpf_funcionario, clt.salario
        FROM funcionario f
        JOIN detalhesCLT clt ON f.num_clt = clt.num_clt;

    v_salario NUMBER;
BEGIN
    FOR registro IN cursor_funcionarios LOOP
        v_salario := registro.salario;

        IF v_salario < 5000 THEN
            DBMS_OUTPUT.PUT_LINE('CPF: ' || registro.cpf_funcionario || ' - Categoria: Baixo');
        ELSIF v_salario BETWEEN 5000 AND 10000 THEN
            DBMS_OUTPUT.PUT_LINE('CPF: ' || registro.cpf_funcionario || ' - Categoria: Médio');
        ELSE
            DBMS_OUTPUT.PUT_LINE('CPF: ' || registro.cpf_funcionario || ' - Categoria: Alto');
        END IF;
    END LOOP;
END;

--teste ->
EXECUTE ClassificaSalario;
----------------------------------------------------------

-- procedure para atualizar salario de um funcionario (%TYPE, SELECT INTO) 

CREATE OR REPLACE PROCEDURE AtualizaSalarioFuncionario (
    p_cpf_funcionario IN funcionario.cpf_funcionario%TYPE,
    p_novo_salario IN detalhesCLT.salario%TYPE
) AS
    v_num_clt detalhesCLT.num_clt%TYPE;
BEGIN
    -- Encontra o número CLT do funcionário
    SELECT num_clt INTO v_num_clt FROM funcionario WHERE cpf_funcionario = p_cpf_funcionario;

    -- Atualiza o salário do func
    UPDATE detalhesCLT SET salario = p_novo_salario WHERE num_clt = v_num_clt;

    COMMIT;
END;

--teste ->
EXECUTE AtualizaSalarioFuncionario('15124233344', 20000);

-------------------------------------------------------------------

-- procedure para retornar os médicos com especialidade em X (NÃO TÁ FUNCIONANDO)

CREATE OR REPLACE PROCEDURE MedicosEspecialistas (
    p_especialidade in especialidade_medico.especialidade%TYPE
) IS 
    type cpfs is table of VARCHAR2(11);
    v_cpfs_medico cpfs;
    v_especialidade  VARCHAR2(50);
    i INTEGER;
    max INTEGER;
BEGIN
    SELECT cpf_medico BULK COLLECT INTO v_cpfs_medico
    FROM especialidade_medico
    INNER JOIN funcionario ON funcionario.cpf_funcionario = cpf_medico
    INNER JOIN detalhesCLT ON detalhesCLT.num_clt = funcionario.num_clt
    ORDER BY detalhesCLT.salario;

    i := 0;
    max := select count(*) from v_cpfs_medico;
    WHILE i < max LOOP
        DBMS_OUTPUT.PUT_LINE(v_cpfs_medico(i));
        CONT := CONT + 1;
    END LOOP;
END;

--teste ->
EXECUTE MedicosEspecialistas('Cardiologia')

-------------------------------------------------------------------