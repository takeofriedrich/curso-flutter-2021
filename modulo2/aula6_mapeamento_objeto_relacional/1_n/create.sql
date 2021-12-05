CREATE TABLE pessoas(
    codp INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    idade INTEGER
);

CREATE TABLE animais(
    coda INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    especie TEXT,
    codp INTEGER REFERENCES pessoas
);