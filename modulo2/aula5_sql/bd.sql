CREATE TABLE enderecos(
    code INTEGER PRIMARY KEY AUTOINCREMENT,
    rua TEXT,
    nro INTEGER,
    cidade TEXT
);

CREATE TABLE pessoas(
    codp INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    idade INTEGER,
    ender INTEGER REFERENCES enderecos
);

INSERT INTO enderecos (rua,nro,cidade) values ('Rua X',1,'Joinville');
INSERT INTO enderecos (rua,nro,cidade) values ('Rua Y',99,'Curitiba');

SELECT * FROM  enderecos;

INSERT INTO pessoas (nome,idade,ender) values ('Vinicius',21,1);
INSERT INTO pessoas (nome,idade,ender) values ('Julia',22,1);
INSERT INTO pessoas (nome,idade,ender) values ('Rafael',21,1);
INSERT INTO pessoas (nome,idade,ender) values ('Gabriela',23,2);

UPDATE pessoas SET idade = 22 WHERE nome = 'Vinicius';

DELETE from pessoas where codp = 3;