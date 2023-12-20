--checklist da AV3

-- CREATE TABLE - *DONE*
-- cláusula CONSTRAINT em CREATE TABLE - *DONE*
-- cláusula CHECK em CREATE TABLE
-- INSERT INTO - *DONE*
-- CREATE SEQUENCE - *DONE*

-- criação de tabelas

-- setor (1)

CREATE TABLE setor(
    nome VARCHAR2(30) PRIMARY KEY
);

-- sala (2)

CREATE TABLE sala(
    numero NUMBER,
    nome_setor VARCHAR2(30),
    
    PRIMARY KEY (numero, nome_setor),
    CONSTRAINT fk_nome_setor FOREIGN KEY (nome_setor) REFERENCES setor(nome)
);

-- endereco (3)

CREATE TABLE endereco(
    cep VARCHAR2(8) NOT NULL,
    rua VARCHAR2(50) NOT NULL,
    numero NUMBER NOT NULL,
    bairro VARCHAR2(50) NOT NULL,
    cidade VARCHAR2(50) NOT NULL,

    CONSTRAINT endereco_pk PRIMARY KEY (cep)
);

-- pessoa (4)

CREATE TABLE pessoa(
    cpf VARCHAR2(11) NOT NULL,
    nome VARCHAR2(50) NOT NULL,
    cep VARCHAR2(8) NOT NULL,
    data_nascimento DATE NOT NULL,
    -- idade: nao precisa estar no banco de dados, pois é deduzida de data_de_nascimento

    CONSTRAINT pessoa_pk PRIMARY KEY (cpf),
    CONSTRAINT pessoa_fk FOREIGN KEY (cep) REFERENCES endereco (cep)
);

-- telefone (5)

CREATE TABLE telefone(
    numero NUMBER PRIMARY KEY,
    cpf_fk VARCHAR2(11),

    CONSTRAINT telefone_fk FOREIGN KEY (cpf_fk) REFERENCES pessoa(cpf)
);


--historico_medico (6)

CREATE TABLE historico_medico (
    id_historico NUMBER PRIMARY KEY
);

-- cirurgias (7)

CREATE TABLE cirurgias (
    id_historico_medico NUMBER NOT NULL,
    descricao VARCHAR2(255) NOT NULL,
    CONSTRAINT fk_historico0 FOREIGN KEY (id_historico_medico) REFERENCES historico_medico(id_historico),
    PRIMARY KEY (id_historico_medico, descricao)
);

-- alergias (8)

CREATE TABLE alergias (
    id_historico_medico NUMBER NOT NULL,
    descricao VARCHAR2(255) NOT NULL,
    CONSTRAINT fk_historico1 FOREIGN KEY (id_historico_medico) REFERENCES historico_medico(id_historico),
    PRIMARY KEY (id_historico_medico, descricao)
);

-- doencas_cronicas (9)

CREATE TABLE doencas_cronicas (
    id_historico_medico NUMBER NOT NULL,
    descricao VARCHAR2(255) NOT NULL,
    CONSTRAINT fk_historico2 FOREIGN KEY (id_historico_medico) REFERENCES historico_medico(id_historico),
    PRIMARY KEY (id_historico_medico, descricao)
);

-- paciente (10)

CREATE TABLE paciente (
    cpf_paciente VARCHAR2(11) PRIMARY KEY,
    pressao_arterial VARCHAR2(20),
    peso NUMBER,
    altura NUMBER,
    tipo_sanguineo VARCHAR2(10),
    id_historico_medico NUMBER NOT NULL,

    CONSTRAINT fk_historico_medico FOREIGN KEY (id_historico_medico) REFERENCES historico_medico(id_historico)
);

--detalhesCLT (11)

CREATE TABLE detalhesCLT(
    num_clt NUMBER PRIMARY KEY,
    salario NUMBER NOT NULL,
    data_de_admissao DATE NOT NULL
);


-- funcionario (12)

CREATE TABLE funcionario (
    cpf_funcionario VARCHAR2(11) PRIMARY KEY,
    num_clt NUMBER,

    CONSTRAINT fk_pessoa_funcionario FOREIGN KEY (cpf_funcionario) REFERENCES pessoa(cpf),
    CONSTRAINT fk_num_clt FOREIGN KEY (num_clt) REFERENCES detalhesCLT(num_clt)
);

--Médico (13)
CREATE TABLE Medico(
    cpf_medico VARCHAR2(11) PRIMARY KEY,
    crm VARCHAR2(8),

    CONSTRAINT dep_cpf_medico FOREIGN KEY (cpf_medico) REFERENCES funcionario(cpf_funcionario)
    -- Como faz isso?
);

--Supervisao_medico (14)
CREATE TABLE Supervisao_medico(
    cpf_medico_supervisionado VARCHAR2(11) PRIMARY KEY,
    cpf_medico_supervisor VARCHAR2(11) UNIQUE,

    CONSTRAINT pk_cpf_medico_supervisionado FOREIGN KEY (cpf_medico_supervisionado) REFERENCES Medico(cpf_medico),
    CONSTRAINT pk_cpf_medico_supervisor FOREIGN KEY (cpf_medico_supervisor) REFERENCES Medico(cpf_medico)
);

--enfermeiro (15)
CREATE TABLE enfermeiro(
    cpf_enfermeiro VARCHAR2(11) PRIMARY KEY,
    coren VARCHAR2(6),

    CONSTRAINT dep_cpf_enfermeiro FOREIGN KEY (cpf_enfermeiro) REFERENCES funcionario(cpf_funcionario)
    -- Como faz isso?
);

--Supervisao_enfermeiro (16)
CREATE TABLE Supervisao_enfermeiro(
    cpf_enfermeiro_supervisionado VARCHAR2(11) PRIMARY KEY,
    cpf_enfermeiro_supervisor VARCHAR2(11) UNIQUE,
    
    CONSTRAINT fk_cpf_enfermeiro_supervisionado FOREIGN KEY (cpf_enfermeiro_supervisionado) REFERENCES enfermeiro(cpf_enfermeiro),
    CONSTRAINT fk_cpf_enfermeiro_supervisor FOREIGN KEY (cpf_enfermeiro_supervisor) REFERENCES enfermeiro(cpf_enfermeiro)
);

--acompanhante (17)

CREATE TABLE acompanhante (
    cpf_acompanhante VARCHAR2(11) NOT NULL,
    nome VARCHAR2(50) NOT NULL,
    grau_de_parentesco NUMBER,
    cpf_paciente VARCHAR2(11),

    PRIMARY KEY (cpf_acompanhante, cpf_paciente),
    CONSTRAINT fk_pessoa_acompanhada FOREIGN KEY (cpf_paciente) REFERENCES paciente(cpf_paciente)
);


-- Consulta (18)

CREATE TABLE Consulta(
    data_e_hora timestamp NOT NULL,
    sala_setor VARCHAR2(30),
    sala_numero NUMBER,
    medico_cpf VARCHAR2(11) NOT NULL,
    paciente_cpf VARCHAR2(11) NOT NULL,

    PRIMARY KEY (data_e_hora, sala_setor, sala_numero, medico_cpf, paciente_cpf),
    CONSTRAINT fk_sala_setor FOREIGN KEY (sala_setor) REFERENCES setor(nome),
    CONSTRAINT fk_sala_numero FOREIGN KEY (sala_numero, sala_setor) REFERENCES sala(numero, nome_setor),
    CONSTRAINT fk_medico_cpf FOREIGN KEY (medico_cpf) REFERENCES Medico(cpf_medico),
    CONSTRAINT fk_paciente_cpf FOREIGN KEY (paciente_cpf) REFERENCES paciente(cpf_paciente)
);

-- Receita (19)

CREATE TABLE Receita(
    receita VARCHAR2(50),
    data_e_hora timestamp,
    medico_cpf VARCHAR2(11),
    paciente_cpf VARCHAR2(11),

    PRIMARY KEY (receita, data_e_hora, medico_cpf, paciente_cpf),
    -- CONSTRAINT fk_data_e_hora FOREIGN KEY (data_e_hora) REFERENCES Consulta(data_e_hora), -- Gera erro no Live SQL
    CONSTRAINT fk_medico_cpf1 FOREIGN KEY (medico_cpf) REFERENCES Medico(cpf_medico),
    CONSTRAINT fk_paciente_cpf1 FOREIGN KEY (paciente_cpf) REFERENCES paciente(cpf_paciente)
);

-- Diagnóstico (20)

CREATE TABLE Diagnostico(
    diagnostico VARCHAR2(50),
    data_e_hora timestamp,
    medico_cpf VARCHAR2(11),
    paciente_cpf VARCHAR2(11),

    PRIMARY KEY (diagnostico, medico_cpf, paciente_cpf),
    -- CONSTRAINT fk_data_e_hora FOREIGN KEY (data_e_hora) REFERENCES Consulta(data_e_hora), -- Gera erro no Live SQL
    CONSTRAINT fk_medico_cpf0 FOREIGN KEY (medico_cpf) REFERENCES Medico(cpf_medico),
    CONSTRAINT fk_paciente_cpf0 FOREIGN KEY (paciente_cpf) REFERENCES paciente(cpf_paciente)
);

-- Responsável (21)
CREATE TABLE Enfermeiro_responsavel(
    cpf_paciente VARCHAR2(11),
    cpf_enfermeiro VARCHAR2(11),

    PRIMARY KEY (cpf_paciente, cpf_enfermeiro),
    CONSTRAINT fk_cpf_paciente FOREIGN KEY (cpf_paciente) REFERENCES paciente(cpf_paciente),
    CONSTRAINT fk_cpf_enfermeiro FOREIGN KEY (cpf_enfermeiro) REFERENCES enfermeiro(cpf_enfermeiro)
);

-- Atendente (22)
CREATE TABLE Atendente(
    cpf_atendente VARCHAR2(11) PRIMARY KEY,
    nome VARCHAR2(50),

    CONSTRAINT dep_cpf_atendente FOREIGN KEY (cpf_atendente) REFERENCES funcionario(cpf_funcionario)
);