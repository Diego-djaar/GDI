-- contagem de pacientes por tipo sanguíneo (COUNT e GROUP BY)
SELECT
    tipo_sanguineo,
    COUNT(*) AS num_pacientes
FROM
    paciente
GROUP BY
    tipo_sanguineo;

-- media de salário dos funcionarios (AVG)
SELECT
    AVG(salario) AS salario_medio
FROM
    detalhesCLT;

-- pacientes nascidos em um intervalo específico (BETWEEN)
SELECT
    cpf,
    nome
FROM
    pessoa
WHERE
    data_nascimento BETWEEN TO_DATE('1980-01-01', 'YYYY-MM-DD') AND TO_DATE('1990-12-31', 'YYYY-MM-DD');

-- funcionarios ordenados por salario e nome (ORDER BY)
SELECT
    p.nome,
    clt.salario
FROM
    pessoa p
    JOIN funcionario f ON p.cpf = f.cpf_funcionario
    JOIN detalhesCLT clt ON f.num_clt = clt.num_clt
ORDER BY
    clt.salario DESC,
    p.nome ASC;

-- Aumentar peso de paciente (UPDATE)
UPDATE paciente
SET
    peso = 105
WHERE
    cpf_paciente = '45122233344';

-- Retornar todos os paciente de tipo sanguíneo A (IN)
SELECT
    *
FROM
    paciente
WHERE
    tipo_sanguineo IN ('A-', 'A+');

-- Retorna o funcionário com maior salário (MAX)
SELECT
    *
FROM
    funcionario
WHERE
    num_clt = (
        SELECT
            num_clt
        FROM
            detalhesCLT
        WHERE
            salario = (
                SELECT
                    MAX(salario)
                FROM
                    detalhesCLT
            )
    );

-- Retornar cirurgias de cada histórico médico (FULL OUTER JOIN)
SELECT
    historico_medico.id_historico,
    cirurgias.descricao
FROM
    historico_medico
    FULL OUTER JOIN cirurgias ON historico_medico.id_historico = cirurgias.id_historico_medico
    -- Retorna os médicos com salário maior que 9000 (SUBCONSULTA COM ANY)
SELECT
    nome
FROM
    pessoa
WHERE
    cpf = ANY (
        SELECT
            cpf_medico
        FROM
            medico
        WHERE
            cpf_medico = ANY (
                SELECT
                    cpf_funcionario
                FROM
                    funcionario
                WHERE
                    num_clt = ANY (
                        SELECT
                            num_clt
                        FROM
                            detalhesCLT
                        WHERE
                            salario > 9000
                    )
            )
    );

-- Lista o médico se todas as especialidades são Cardiologia ou Pediatria (SUBCONSULTA COM ALL)
SELECT
    cpf_medico
FROM
    Medico
WHERE
    cpf_medico = ALL (
        SELECT ALL
            cpf_medico
        FROM
            especialidade_medico
        WHERE
            especialidade = 'Cardiologia'
            OR especialidade = 'Pediatria'
    );

-- Cria um indice para os acompanhantes de um paciente (CREATE INDEX)
CREATE INDEX idx_acompanhante ON acompanhante (nome);

-- Seleciona os pacientes que não sabem seu tipo sanguineo (IS NULL)
SELECT
    *
FROM
    paciente
WHERE
    tipo_sanguineo IS NULL;

-- Lista todos os médicos e enfermeiros (UNION)
SELECT
    cpf_medico
FROM
    Medico
UNION
SELECT
    cpf_enfermeiro
FROM
    enfermeiro;

-- Demite um trabalhador (DELETE)
DELETE FROM trabalha
WHERE
    cpf_funcionario = '15124233344'