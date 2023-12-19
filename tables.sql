--checklist da AV3

-- CREATE TABLE
-- cláusula CONSTRAINT em CREATE TABLE
-- cláusula CHECK em CREATE TABLE
-- INSERT INTO
-- CREATE SEQUENCE

-- criação de tabelas

-- endereco

CREATE TABLE endereco(
    cep VARCHAR2(8) NOT NULL,
    rua VARCHAR2(50) NOT NULL,
    numero NUMBER NOT NULL,
    bairro VARCHAR2(50) NOT NULL,
    cidade VARCHAR2(50) NOT NULL,

    CONSTRAINT endereco_pk PRIMARY KEY (cep)
);

-- pessoa

CREATE TABLE pessoa(
    cpf VARCHAR2(11) NOT NULL,
    nome VARCHAR2(50) NOT NULL,
    cep VARCHAR2(8) NOT NULL,
    data_nascimento DATE NOT NULL,
    -- idade: nao precisa estar no banco de dados

    CONSTRAINT pessoa_pk PRIMARY KEY (cpf),
    CONSTRAINT pessoa_fk FOREIGN KEY (cep) REFERENCES endereco (cep)
);

-- telefone

CREATE TABLE telefone(
    numero NUMBER,
    cpf_fk VARCHAR2(11),

    CONSTRAINT telefone_pk PRIMARY KEY (numero, cpf_fk),
    CONSTRAINT telefone_fk FOREIGN KEY (cpf_fk) REFERENCES pessoa(cpf)
);

-- cirurgias

CREATE TABLE cirurgias (
    id_cirurgia NUMBER PRIMARY KEY,
    descricao VARCHAR2(255)
);

-- alergias

CREATE TABLE alergias (
    id_alergia NUMBER PRIMARY KEY,
    descricao VARCHAR2(255)
);

-- doencas_cronicas

CREATE TABLE doencas_cronicas (
    id_doenca_cronica NUMBER PRIMARY KEY,
    descricao VARCHAR2(255)
);

--historico_medico

CREATE TABLE historico_medico (
    id_historico NUMBER PRIMARY KEY,
    id_cirurgia NUMBER,
    id_alergia NUMBER,
    id_doenca_cronica NUMBER,

    CONSTRAINT fk_cirurgia FOREIGN KEY (id_cirurgia) REFERENCES cirurgias(id_cirurgia),
    CONSTRAINT fk_alergia FOREIGN KEY (id_alergia) REFERENCES alergias(id_alergia),
    CONSTRAINT fk_doenca_cronica FOREIGN KEY (id_doenca_cronica) REFERENCES doencas_cronicas(id_doenca_cronica)
);

-- paciente

CREATE TABLE paciente (
    cpf_paciente VARCHAR2(11) PRIMARY KEY,
    pressao_arterial VARCHAR2(20),
    peso NUMBER,
    altura NUMBER,
    tipo_sanguineo VARCHAR2(10),
    id_historico_medico NUMBER,

    CONSTRAINT fk_historico_medico FOREIGN KEY (id_historico_medico) REFERENCES historico_medico(id_historico)
);

-- funcionario

CREATE TABLE funcionario (
    cpf_funcionario VARCHAR2(11) PRIMARY KEY,
    salario NUMBER,
    num_clt VARCHAR2(20),
    data_admissao DATE,
    
    CONSTRAINT fk_pessoa_funcionario FOREIGN KEY (cpf_funcionario) REFERENCES pessoa(cpf)
);
