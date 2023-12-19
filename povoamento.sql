CREATE TABLE Pessoa
(
    CPF CHAR(11) PRIMARY KEY,
    /*CEP chave estrangeira de Endereço*/
    Nome VARCHAR(128) NOT NULL,
    Numero INT,
    Data_de_nascimento DATE NOT NULL
);

INSERT INTO Pessoa
VALUES ('11122233344','Albert Einstein' , 500, TO_DATE('1879-03-14','YYYY-MM-DD'));