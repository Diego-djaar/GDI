-- insercao de dados

-- endereco

INSERT INTO endereco (cep, rua, numero , bairro, cidade) VALUES ('70450210', 'Rua Alberto Siqueira Campos', 75 ,  'Bairro da caridade', 'Santos');
INSERT INTO endereco (cep, rua, numero , bairro, cidade) VALUES ('40410511', 'Rua Padre Samuel', 204 ,  'Várzea', 'Caruaru');
INSERT INTO endereco (cep, rua, numero , bairro, cidade) VALUES ('10521401', 'Rua Alfredo Di Stéfano', 37 ,  'Centro', 'São Paulo');
INSERT INTO endereco (cep, rua, numero , bairro, cidade) VALUES ('70457210', 'Rua Pedro Barros Magalhães', 86 ,  'Jardim São Paulo', 'Recife');
INSERT INTO endereco (cep, rua, numero , bairro, cidade) VALUES ('51042210', 'Avenida Brasil',  534 , 'Itaquera', 'São Paulo');

INSERT INTO pessoa (cpf, nome, cep, data_nascimento, telefone) VALUES ('11122233344', 'Albert Einstein', '35937920' , TO_DATE('1879-03-14','YYYY-MM-DD'), 81935826722);