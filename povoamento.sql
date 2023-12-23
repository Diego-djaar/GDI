-- insercao de dados
CREATE SEQUENCE num INCREMENT BY 1 START WITH 1;

-- Setor
INSERT INTO setor(nome) VALUES ('Triagem');
INSERT INTO setor(nome) VALUES ('Consultório');
INSERT INTO setor(nome) VALUES ('Nebulização');
INSERT INTO setor(nome) VALUES ('Medicação');
INSERT INTO setor(nome) VALUES ('Internação');
INSERT INTO setor(nome) VALUES ('Radiologia');
INSERT INTO setor(nome) VALUES ('Enfermaria');
INSERT INTO setor(nome) VALUES ('Recepção');
INSERT INTO setor(nome) VALUES ('Gerência');

-- Sala
INSERT INTO sala(numero, nome_setor) VALUES (1,'Triagem');
INSERT INTO sala(numero, nome_setor) VALUES (2,'Triagem');
INSERT INTO sala(numero, nome_setor) VALUES (3,'Consultório');
INSERT INTO sala(numero, nome_setor) VALUES (4,'Consultório');
INSERT INTO sala(numero, nome_setor) VALUES (5,'Consultório');
INSERT INTO sala(numero, nome_setor) VALUES (6,'Nebulização');
INSERT INTO sala(numero, nome_setor) VALUES (7,'Medicação');
INSERT INTO sala(numero, nome_setor) VALUES (8,'Internação');
INSERT INTO sala(numero, nome_setor) VALUES (9,'Radiologia');

-- Endereco
INSERT INTO endereco (cep, rua, numero , bairro, cidade) VALUES ('70450210', 'Rua Alberto Siqueira Campos', 75 ,  'Bairro da caridade', 'Santos');
INSERT INTO endereco (cep, rua, numero , bairro, cidade) VALUES ('40410511', 'Rua Padre Samuel', 204 ,  'Várzea', 'Caruaru');
INSERT INTO endereco (cep, rua, numero , bairro, cidade) VALUES ('10521401', 'Rua Alfredo Di Stéfano', 37 ,  'Centro', 'São Paulo');
INSERT INTO endereco (cep, rua, numero , bairro, cidade) VALUES ('70457210', 'Rua Pedro Barros Magalhães', 86 ,  'Jardim São Paulo', 'Recife');
INSERT INTO endereco (cep, rua, numero , bairro, cidade) VALUES ('51042210', 'Avenida Brasil',  534 , 'Itaquera', 'São Paulo');

INSERT INTO endereco (cep, rua, numero , bairro, cidade) VALUES ('75150210', 'Rua da amizade', 754 ,  'Várzea', 'Recife');
INSERT INTO endereco (cep, rua, numero , bairro, cidade) VALUES ('40110711', 'Rua Padre Champagnat', 204 ,  'Várzea', 'Caruaru');
INSERT INTO endereco (cep, rua, numero , bairro, cidade) VALUES ('10721501', 'Rua Alexia Putellas', 137 ,  'Centro', 'Angra dos Reis');
INSERT INTO endereco (cep, rua, numero , bairro, cidade) VALUES ('10201010', 'Rua da Alegria', 186 ,  'Jardim São Paulo', 'Recife');
INSERT INTO endereco (cep, rua, numero , bairro, cidade) VALUES ('51042201', 'Avenida Alemanha',  34 , 'Itaquera', 'São Paulo');

INSERT INTO endereco (cep, rua, numero , bairro, cidade) VALUES ('70450200', 'Rua Argentina', 115 ,  'Bairro da cobra', 'Caruaru');
INSERT INTO endereco (cep, rua, numero , bairro, cidade) VALUES ('40410811', 'Rua do Perdão', 24 ,  'aguazinha', 'Recife');
INSERT INTO endereco (cep, rua, numero , bairro, cidade) VALUES ('10521150', 'Rua Danilo Barros', 537 ,  'Centro', 'São Paulo');
INSERT INTO endereco (cep, rua, numero , bairro, cidade) VALUES ('70454567', 'Rua Frei Damião', 867 ,  'Boa viagem', 'Recife');
INSERT INTO endereco (cep, rua, numero , bairro, cidade) VALUES ('20401572', 'Avenida Itaquera',  534 , 'Cohab', 'São Paulo');

-- Pessoa
                -- Pacientes
INSERT INTO pessoa (cpf, nome, cep, data_nascimento) VALUES ('11122233344', 'Albert Einstein', '70450210' , TO_DATE('1879-03-14','YYYY-MM-DD'));
INSERT INTO pessoa (cpf, nome, cep, data_nascimento) VALUES ('14523578212', 'Cristiano Ronaldo', '40410511' , TO_DATE('1985-02-07','YYYY-MM-DD'));
INSERT INTO pessoa (cpf, nome, cep, data_nascimento) VALUES ('74212233348', 'Schweinsteiger Podolski Kroos', '10521401' , TO_DATE('1979-07-14','YYYY-MM-DD'));
INSERT INTO pessoa (cpf, nome, cep, data_nascimento) VALUES ('45122233344', 'Allana Lira', '70457210' , TO_DATE('2001-04-14','YYYY-MM-DD'));
INSERT INTO pessoa (cpf, nome, cep, data_nascimento) VALUES ('18422233341', 'Chico Xavier', '51042210' , TO_DATE('2000-03-10','YYYY-MM-DD'));
                -- Funcionarios
INSERT INTO pessoa (cpf, nome, cep, data_nascimento) VALUES ('15124233344', 'Alabama jr', '75150210' , TO_DATE('1879-01-14','YYYY-MM-DD'));
INSERT INTO pessoa (cpf, nome, cep, data_nascimento) VALUES ('10523578212', 'Crisvaldo', '40110711' , TO_DATE('1985-02-07','YYYY-MM-DD'));
INSERT INTO pessoa (cpf, nome, cep, data_nascimento) VALUES ('74512233348', 'Junior Siqueira', '10721501' , TO_DATE('1979-07-19','YYYY-MM-DD'));
INSERT INTO pessoa (cpf, nome, cep, data_nascimento) VALUES ('45162233344', 'Casimiro Miguel', '10201010' , TO_DATE('2001-08-16','YYYY-MM-DD'));
INSERT INTO pessoa (cpf, nome, cep, data_nascimento) VALUES ('18442233341', 'Francisco moedas', '51042201' , TO_DATE('2000-05-10','YYYY-MM-DD'));

INSERT INTO pessoa (cpf, nome, cep, data_nascimento) VALUES ('11772233344', 'Neymar junior', '70450200' , TO_DATE('1879-08-14','YYYY-MM-DD'));
INSERT INTO pessoa (cpf, nome, cep, data_nascimento) VALUES ('14503578212', 'Renato Albani', '40410811' , TO_DATE('1985-02-07','YYYY-MM-DD'));
INSERT INTO pessoa (cpf, nome, cep, data_nascimento) VALUES ('74442233348', 'Metzelder Alaba jr', '10521150' , TO_DATE('1979-05-22','YYYY-MM-DD'));
INSERT INTO pessoa (cpf, nome, cep, data_nascimento) VALUES ('45132233344', 'Aitana Bonmati', '70454567' , TO_DATE('2001-01-10','YYYY-MM-DD'));
INSERT INTO pessoa (cpf, nome, cep, data_nascimento) VALUES ('17772233341', 'Chukweze Maguire', '20401572' , TO_DATE('2000-01-12','YYYY-MM-DD'));

-- Telefone
INSERT INTO telefone (numero, cpf_fk) VALUES (81995051010, '11122233344');
INSERT INTO telefone (numero, cpf_fk) VALUES (81984011410, '18422233341');
INSERT INTO telefone (numero, cpf_fk) VALUES (81975051712, '45122233344');
INSERT INTO telefone (numero, cpf_fk) VALUES (81994051741, '74212233348');
INSERT INTO telefone (numero, cpf_fk) VALUES (81992021014, '14523578212');

INSERT INTO telefone (numero, cpf_fk) VALUES (41995451010, '15124233344');
INSERT INTO telefone (numero, cpf_fk) VALUES (81984411410, '10523578212');
INSERT INTO telefone (numero, cpf_fk) VALUES (81975051722, '74512233348');
INSERT INTO telefone (numero, cpf_fk) VALUES (81994044741, '45162233344');
INSERT INTO telefone (numero, cpf_fk) VALUES (81992141014, '18442233341');

INSERT INTO telefone (numero, cpf_fk) VALUES (81995051710, '11772233344');
INSERT INTO telefone (numero, cpf_fk) VALUES (81984010010, '14503578212');
INSERT INTO telefone (numero, cpf_fk) VALUES (81975051740, '74442233348');
INSERT INTO telefone (numero, cpf_fk) VALUES (81994051141, '45132233344');
INSERT INTO telefone (numero, cpf_fk) VALUES (81992121014, '17772233341');

-- Historico medico
INSERT INTO historico_medico (id_historico) VALUES (num.NEXTVAL);
INSERT INTO historico_medico (id_historico) VALUES (num.NEXTVAL);
INSERT INTO historico_medico (id_historico) VALUES (num.NEXTVAL);
INSERT INTO historico_medico (id_historico) VALUES (num.NEXTVAL);
INSERT INTO historico_medico (id_historico) VALUES (num.NEXTVAL);

-- Cirurgias
INSERT INTO cirurgias (id_historico_medico, descricao) VALUES (1, 'Cirurgia Cardíaca');
INSERT INTO cirurgias (id_historico_medico, descricao) VALUES (2, 'Cirurgia de Apêndice');
INSERT INTO cirurgias (id_historico_medico, descricao) VALUES (3, 'Cirurgia de desvio de septo');
INSERT INTO cirurgias (id_historico_medico, descricao) VALUES (4, 'Cirurgia de vesícula');
INSERT INTO cirurgias (id_historico_medico, descricao) VALUES (5, 'Cirurgia de catarata');

-- Alergias
INSERT INTO alergias (id_historico_medico, descricao) VALUES (5, 'Alergia a Amendoim');
INSERT INTO alergias (id_historico_medico, descricao) VALUES (3, 'Alergia a poeira');
INSERT INTO alergias (id_historico_medico, descricao) VALUES (2, 'Alergia a Amendoim');
INSERT INTO alergias (id_historico_medico, descricao) VALUES (4, 'Alergia a mudanças climáticas');
INSERT INTO alergias (id_historico_medico, descricao) VALUES (1, 'Alergia a camarão');

-- Doencas Cronicas
INSERT INTO doencas_cronicas (id_historico_medico, descricao) VALUES (1, 'Diabetes Tipo 2');
INSERT INTO doencas_cronicas (id_historico_medico, descricao) VALUES (5, 'asma');
INSERT INTO doencas_cronicas (id_historico_medico, descricao) VALUES (3, 'Doença de Alzheimer');
INSERT INTO doencas_cronicas (id_historico_medico, descricao) VALUES (4, 'rinite');
INSERT INTO doencas_cronicas (id_historico_medico, descricao) VALUES (2, 'ansiedade');

-- Paciente
INSERT INTO paciente (cpf_paciente, pressao_arterial, peso, altura, tipo_sanguineo, id_historico_medico) VALUES ('11122233344', '100/70', 70.5, 175, 'A+', 1);
INSERT INTO paciente (cpf_paciente, pressao_arterial, peso, altura, tipo_sanguineo, id_historico_medico) VALUES ('14523578212', '120/80', 80.5, 150, 'O-', 5);
INSERT INTO paciente (cpf_paciente, pressao_arterial, peso, altura, tipo_sanguineo, id_historico_medico) VALUES ('18422233341', '100/80', 54.7, 154, 'A-', 4);
INSERT INTO paciente (cpf_paciente, pressao_arterial, peso, altura, tipo_sanguineo, id_historico_medico) VALUES ('74212233348', '110/60', 77.5, 180, 'O+', 2);
INSERT INTO paciente (cpf_paciente, pressao_arterial, peso, altura, tipo_sanguineo, id_historico_medico) VALUES ('45122233344', '120/80', 90.5, 140, 'A+', 3);

-- DetalhesCLT
INSERT INTO detalhesCLT (num_clt, salario, data_de_admissao) VALUES (35325, 15000, TO_DATE('2005-01-15', 'YYYY-MM-DD'));
INSERT INTO detalhesCLT (num_clt, salario, data_de_admissao) VALUES (325325325, 5700, TO_DATE('2020-10-10', 'YYYY-MM-DD'));
INSERT INTO detalhesCLT (num_clt, salario, data_de_admissao) VALUES (523532, 10000, TO_DATE('2018-01-10', 'YYYY-MM-DD'));
INSERT INTO detalhesCLT (num_clt, salario, data_de_admissao) VALUES (325325345, 3000, TO_DATE('2022-04-10', 'YYYY-MM-DD'));
INSERT INTO detalhesCLT (num_clt, salario, data_de_admissao) VALUES (325235, 7400, TO_DATE('2019-01-17', 'YYYY-MM-DD'));

INSERT INTO detalhesCLT (num_clt, salario, data_de_admissao) VALUES (97697, 11000, TO_DATE('2005-10-15', 'YYYY-MM-DD'));
INSERT INTO detalhesCLT (num_clt, salario, data_de_admissao) VALUES (436436, 5000, TO_DATE('2020-11-10', 'YYYY-MM-DD'));
INSERT INTO detalhesCLT (num_clt, salario, data_de_admissao) VALUES (436347, 12000, TO_DATE('2010-01-10', 'YYYY-MM-DD'));
INSERT INTO detalhesCLT (num_clt, salario, data_de_admissao) VALUES (758758, 3000, TO_DATE('2021-04-10', 'YYYY-MM-DD'));
INSERT INTO detalhesCLT (num_clt, salario, data_de_admissao) VALUES (32674357, 8500, TO_DATE('2010-02-17', 'YYYY-MM-DD'));

-- Funcionario
                    -- Medico
INSERT INTO funcionario (cpf_funcionario, num_clt) VALUES ('15124233344', 35325);
INSERT INTO funcionario (cpf_funcionario, num_clt) VALUES ('10523578212', 325325325);
INSERT INTO funcionario (cpf_funcionario, num_clt) VALUES ('74512233348', 523532);
INSERT INTO funcionario (cpf_funcionario, num_clt) VALUES ('45162233344', 325325345);
                    -- Enfermeiro
INSERT INTO funcionario (cpf_funcionario, num_clt) VALUES ('18442233341', 325235);
INSERT INTO funcionario (cpf_funcionario, num_clt) VALUES ('11772233344', 97697);
INSERT INTO funcionario (cpf_funcionario, num_clt) VALUES ('14503578212', 436436);
INSERT INTO funcionario (cpf_funcionario, num_clt) VALUES ('74442233348', 436347);
                    -- Atendente
INSERT INTO funcionario (cpf_funcionario, num_clt) VALUES ('45132233344', 758758);
INSERT INTO funcionario (cpf_funcionario, num_clt) VALUES ('17772233341', 32674357);

-- Medico
INSERT INTO Medico (cpf_medico, crm) VALUES ('15124233344', '12345678');
INSERT INTO Medico (cpf_medico, crm) VALUES ('45162233344', '75412345');
INSERT INTO Medico (cpf_medico, crm) VALUES ('74512233348', '77757553');
INSERT INTO Medico (cpf_medico, crm) VALUES ('10523578212', '11026748');

-- Supervisao_medico
INSERT INTO Supervisao_medico(cpf_medico_supervisionado, cpf_medico_supervisor) VALUES ('45162233344','15124233344');
INSERT INTO Supervisao_medico(cpf_medico_supervisionado, cpf_medico_supervisor) VALUES ('10523578212','74512233348');

--enfermeiro 
INSERT INTO enfermeiro(cpf_enfermeiro, coren) VALUES ('18442233341','777501');
INSERT INTO enfermeiro(cpf_enfermeiro, coren) VALUES ('11772233344','540123');
INSERT INTO enfermeiro(cpf_enfermeiro, coren) VALUES ('14503578212','727701');
INSERT INTO enfermeiro(cpf_enfermeiro, coren) VALUES ('74442233348','417507');

-- Supervisao_enfermeiro
INSERT INTO Supervisao_enfermeiro(cpf_enfermeiro_supervisionado, cpf_enfermeiro_supervisor) VALUES ('11772233344','18442233341');
INSERT INTO Supervisao_enfermeiro(cpf_enfermeiro_supervisionado, cpf_enfermeiro_supervisor) VALUES ('74442233348','14503578212');

-- Acompanhante
INSERT INTO acompanhante(cpf_acompanhante, nome, grau_de_parentesco, cpf_paciente) VALUES ('09792355022','João Paulo', 1, '11122233344');
INSERT INTO acompanhante(cpf_acompanhante, nome, grau_de_parentesco, cpf_paciente) VALUES ('65268425005','Rui Almeida', 3, '14523578212');
INSERT INTO acompanhante(cpf_acompanhante, nome, grau_de_parentesco, cpf_paciente) VALUES ('11475128096','Fernanda Pereira', 2, '18422233341');
INSERT INTO acompanhante(cpf_acompanhante, nome, grau_de_parentesco, cpf_paciente) VALUES ('95875467096','Carlos Jaime', 1, '74212233348');

-- Consulta
INSERT INTO Consulta(data_e_hora, sala_setor, sala_numero, medico_cpf, paciente_cpf) VALUES (TO_TIMESTAMP('2023-04-13 15:30:32', 'YYYY-MM-DD HH24:MI:SS'), 'Consultório', 3, '15124233344', '11122233344');
INSERT INTO Consulta(data_e_hora, sala_setor, sala_numero, medico_cpf, paciente_cpf) VALUES (TO_TIMESTAMP('2023-11-23 17:45:19', 'YYYY-MM-DD HH24:MI:SS'), 'Consultório', 4, '45162233344', '18422233341');
INSERT INTO Consulta(data_e_hora, sala_setor, sala_numero, medico_cpf, paciente_cpf) VALUES (TO_TIMESTAMP('2023-04-13 16:18:25', 'YYYY-MM-DD HH24:MI:SS'), 'Radiologia', 9, '74512233348', '11122233344');
INSERT INTO Consulta(data_e_hora, sala_setor, sala_numero, medico_cpf, paciente_cpf) VALUES (TO_TIMESTAMP('2023-07-05 03:52:49', 'YYYY-MM-DD HH24:MI:SS'), 'Consultório', 5, '45162233344', '74212233348');
INSERT INTO Consulta(data_e_hora, sala_setor, sala_numero, medico_cpf, paciente_cpf) VALUES (TO_TIMESTAMP('2023-04-13 14:11:05', 'YYYY-MM-DD HH24:MI:SS'), 'Triagem', 1, '10523578212', '11122233344');

-- Receita
INSERT INTO Receita(receita, data_e_hora, medico_cpf, paciente_cpf) VALUES ('Dipirona', TO_TIMESTAMP('2023-04-14 15:11:05', 'YYYY-MM-DD HH24:MI:SS'), '74512233348', '11122233344');
INSERT INTO Receita(receita, data_e_hora, medico_cpf, paciente_cpf) VALUES ('Valproato de Sodio', TO_TIMESTAMP('2023-12-21 21:31:50', 'YYYY-MM-DD HH24:MI:SS'), '45162233344', '18422233341');
INSERT INTO Receita(receita, data_e_hora, medico_cpf, paciente_cpf) VALUES ('Dacarbazina', TO_TIMESTAMP('2023-06-08 16:43:35', 'YYYY-MM-DD HH24:MI:SS'), '10523578212', '74212233348');
INSERT INTO Receita(receita, data_e_hora, medico_cpf, paciente_cpf) VALUES ('Bacigen', TO_TIMESTAMP('2023-10-22 08:49:20', 'YYYY-MM-DD HH24:MI:SS'), '74512233348', '14523578212');
INSERT INTO Receita(receita, data_e_hora, medico_cpf, paciente_cpf) VALUES ('Famox', TO_TIMESTAMP('2023-05-03 11:10:09', 'YYYY-MM-DD HH24:MI:SS'), '15124233344', '45122233344');

-- Diagnostico
INSERT INTO Diagnostico(diagnostico, data_e_hora, medico_cpf, paciente_cpf) VALUES ('Dor de cabeça' , TO_TIMESTAMP('2023-04-14 15:11:05', 'YYYY-MM-DD HH24:MI:SS'), '74512233348', '11122233344');
INSERT INTO Diagnostico(diagnostico, data_e_hora, medico_cpf, paciente_cpf) VALUES ('Epilepsia' , TO_TIMESTAMP('2023-12-21 21:31:50', 'YYYY-MM-DD HH24:MI:SS'), '45162233344', '18422233341');
INSERT INTO Diagnostico(diagnostico, data_e_hora, medico_cpf, paciente_cpf) VALUES ('Melanoma' , TO_TIMESTAMP('2023-06-08 16:43:35', 'YYYY-MM-DD HH24:MI:SS'), '10523578212', '74212233348');
INSERT INTO Diagnostico(diagnostico, data_e_hora, medico_cpf, paciente_cpf) VALUES ('Infeccao na pele' , TO_TIMESTAMP('2023-10-22 08:49:20', 'YYYY-MM-DD HH24:MI:SS'), '74512233348', '14523578212');
INSERT INTO Diagnostico(diagnostico, data_e_hora, medico_cpf, paciente_cpf) VALUES ('Ulcera' , TO_TIMESTAMP('2023-05-03 11:10:09', 'YYYY-MM-DD HH24:MI:SS'), '15124233344', '45122233344');

-- Enfermeiro_responsavel
INSERT INTO Enfermeiro_responsavel(cpf_paciente, cpf_enfermeiro) VALUES ('11122233344', '18442233341');
INSERT INTO Enfermeiro_responsavel(cpf_paciente, cpf_enfermeiro) VALUES ('18422233341', '11772233344');
INSERT INTO Enfermeiro_responsavel(cpf_paciente, cpf_enfermeiro) VALUES ('74212233348', '14503578212');
INSERT INTO Enfermeiro_responsavel(cpf_paciente, cpf_enfermeiro) VALUES ('14523578212', '74442233348');
INSERT INTO Enfermeiro_responsavel(cpf_paciente, cpf_enfermeiro) VALUES ('45122233344', '11772233344');

--Atendente
INSERT INTO Atendente(cpf_atendente) VALUES ('45132233344');
INSERT INTO Atendente(cpf_atendente) VALUES ('17772233341');

-- Especialidade_medico
INSERT INTO especialidade_medico(cpf_medico, especialidade) VALUES ('74512233348', 'Clinica geral');
INSERT INTO especialidade_medico(cpf_medico, especialidade) VALUES ('45162233344', 'Neurologia');
INSERT INTO especialidade_medico(cpf_medico, especialidade) VALUES ('10523578212', 'Clinica geral');
INSERT INTO especialidade_medico(cpf_medico, especialidade) VALUES ('15124233344', 'Gastroenterologia' );

-- Trabalha
INSERT INTO trabalha(cpf_funcionario, nome_setor) VALUES ('15124233344', 'Consultório');
INSERT INTO trabalha(cpf_funcionario, nome_setor) VALUES ('18442233341', 'Enfermaria');
INSERT INTO trabalha(cpf_funcionario, nome_setor) VALUES ('45132233344', 'Recepção');
INSERT INTO trabalha(cpf_funcionario, nome_setor) VALUES ('17772233341', 'Gerência');

-- Medico Responsavel
INSERT INTO Medico_Responsavel(cpf_medico, cpf_enfermeiro, cpf_paciente) VALUES ('15124233344', '18442233341', '11122233344');
INSERT INTO Medico_Responsavel(cpf_medico, cpf_enfermeiro, cpf_paciente) VALUES ('45162233344', '74442233348', '14523578212');
INSERT INTO Medico_Responsavel(cpf_medico, cpf_enfermeiro, cpf_paciente) VALUES ('74512233348', '11772233344', '18422233341');
INSERT INTO Medico_Responsavel(cpf_medico, cpf_enfermeiro, cpf_paciente) VALUES ('10523578212', '14503578212', '74212233348');
--setor

INSERT INTO setor(nome) VALUES ('cirurgia');
INSERT INTO setor(nome) VALUES ('restauração');
INSERT INTO setor(nome) VALUES ('vacinação');
INSERT INTO setor(nome) VALUES ('RH');
INSERT INTO setor(nome) VALUES ('recepção');

-- sala
INSERT INTO sala (numero, nome_setor) VALUES (101, 'cirurgia');
INSERT INTO sala (numero, nome_setor) VALUES (102, 'restauração');
INSERT INTO sala (numero, nome_setor) VALUES (103, 'vacinação');
INSERT INTO sala (numero, nome_setor) VALUES (104, 'RH');
INSERT INTO sala (numero, nome_setor) VALUES (105, 'recepção');
INSERT INTO sala (numero, nome_setor) VALUES (001, 'recepção');

-- supervisão medico

INSERT INTO Supervisao_medico (cpf_medico_supervisionado, cpf_medico_supervisor) VALUES ('74512233348', '15124233344');
INSERT INTO Supervisao_medico (cpf_medico_supervisionado, cpf_medico_supervisor) VALUES ('10523578212', '45162233344');

-- Supervisao_enfermeiro

INSERT INTO Supervisao_enfermeiro (cpf_enfermeiro_supervisionado, cpf_enfermeiro_supervisor) VALUES ('18442233341', '11772233344');
INSERT INTO Supervisao_enfermeiro (cpf_enfermeiro_supervisionado, cpf_enfermeiro_supervisor) VALUES ('14503578212', '74442233348');

-- acompanhante

INSERT INTO acompanhante (cpf_acompanhante, nome, grau_de_parentesco, cpf_paciente) VALUES ('12345678901', 'Maria Silva', 1, '11122233344');
INSERT INTO acompanhante (cpf_acompanhante, nome, grau_de_parentesco, cpf_paciente) VALUES ('23456789012', 'João Santos', 2, '14523578212');

-- consulta

INSERT INTO Consulta (data_e_hora, sala_setor, sala_numero, medico_cpf, paciente_cpf) VALUES (TO_TIMESTAMP('2023-12-21 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'cirurgia', 101, '15124233344', '11122233344');
INSERT INTO Consulta (data_e_hora, sala_setor, sala_numero, medico_cpf, paciente_cpf) VALUES (TO_TIMESTAMP('2023-12-22 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'restauração', 102, '74512233348', '45122233344');

-- trabalha

INSERT INTO trabalha (cpf_funcionario, nome_setor) VALUES ('15124233344', 'cirurgia');
INSERT INTO trabalha (cpf_funcionario, nome_setor) VALUES ('10523578212', 'restauração');
INSERT INTO trabalha (cpf_funcionario, nome_setor) VALUES ('74512233348', 'cirurgia');
INSERT INTO trabalha (cpf_funcionario, nome_setor) VALUES ('14503578212', 'vacinação');
INSERT INTO trabalha (cpf_funcionario, nome_setor) VALUES ('74442233348', 'vacinação');
INSERT INTO trabalha (cpf_funcionario, nome_setor) VALUES ('45162233344', 'restauração');
INSERT INTO trabalha (cpf_funcionario, nome_setor) VALUES ('45132233344', 'RH');
INSERT INTO trabalha (cpf_funcionario, nome_setor) VALUES ('17772233341', 'recepção');
INSERT INTO trabalha (cpf_funcionario, nome_setor) VALUES ('18442233341', 'vacinação');
INSERT INTO trabalha (cpf_funcionario, nome_setor) VALUES ('11772233344', 'vacinação');


--especialidade medico

INSERT INTO especialidade_medico (cpf_medico, especialidade) VALUES ('15124233344', 'Cardiologia');
INSERT INTO especialidade_medico (cpf_medico, especialidade) VALUES ('45162233344', 'Pediatria');
INSERT INTO especialidade_medico (cpf_medico, especialidade) VALUES ('45162233344', 'Cardiologia');

--receita
INSERT INTO Receita (receita, data_e_hora, medico_cpf, paciente_cpf) VALUES ('Receita-1', TO_TIMESTAMP('2023-12-21 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), '15124233344', '11122233344');
INSERT INTO Receita (receita, data_e_hora, medico_cpf, paciente_cpf) VALUES ('Receita-2', TO_TIMESTAMP('2023-12-22 11:15:00', 'YYYY-MM-DD HH24:MI:SS'), '74512233348', '45122233344');

--diagnostico

INSERT INTO Diagnostico (diagnostico, data_e_hora, medico_cpf, paciente_cpf) VALUES ('gripe', TO_TIMESTAMP('2023-12-21 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), '15124233344', '11122233344');
INSERT INTO Diagnostico (diagnostico, data_e_hora, medico_cpf, paciente_cpf) VALUES ('pneumonia', TO_TIMESTAMP('2023-12-22 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), '74512233348', '45122233344');

