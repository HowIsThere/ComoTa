-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Cometarios (
id_comentario INTEGER PRIMARY KEY,
texto TEXT,
id_postagem INTEGER,
id_pessoa INTEGER
)

CREATE TABLE Postagem (
postagem TEXT,
data DATETIME,
id_postagem INTEGER PRIMARY KEY,
id_lugar INTEGER,
id_pessoa INTEGER
)

CREATE TABLE Imagem (
id_imagem INTEGER PRIMARY KEY,
link VARCHAR(256),
id_postagem INTEGER,
id_lugar INTEGER,
FOREIGN KEY(id_postagem) REFERENCES Postagem (id_postagem)
)

CREATE TABLE Categoria (
descricao VARCHAR(256),
id_categoria INTEGER PRIMARY KEY,
nome VARCHAR(256),
id_imagem INTEGER,
id_pessoa INTEGER,
FOREIGN KEY(id_imagem) REFERENCES Imagem (id_imagem)
)

CREATE TABLE Lugar (
nome VARCHAR(256),
lat DECIMAL(10),
long DECIMAL(10),
id_lugar INTEGER PRIMARY KEY,
descricao VARCHAR(256),
id_pessoa INTEGER,
id_categoria INTEGER,
FOREIGN KEY(id_categoria) REFERENCES Categoria (id_categoria)
)

CREATE TABLE Avaliacao (
comentario TEXT,
id_avaliacao INTEGER PRIMARY KEY,
nota INTEGER,
id_lugar INTEGER,
id_pessoa INTEGER,
FOREIGN KEY(id_lugar) REFERENCES Lugar (id_lugar)
)

CREATE TABLE Pessoa (
email VARCHAR(255),
colaboracao INTEGER,
nome VARCHAR(255),
autenticidade INTEGER,
senha VARCHAR(20),
login VARCHAR(20),
bairro VARCHAR(100),
cidade VARCHAR(100),
estado VARCHAR(100),
rua VARCHAR(100),
numero VARCHAR(5),
cep VARCHAR(8),
ativo CHAR(1),
id_pessoa INTEGER PRIMARY KEY,
id_imagem INTEGER,
FOREIGN KEY(id_imagem) REFERENCES Imagem (id_imagem)
)

ALTER TABLE Cometarios ADD FOREIGN KEY(id_postagem) REFERENCES Postagem (id_postagem)
ALTER TABLE Cometarios ADD FOREIGN KEY(id_pessoa) REFERENCES Pessoa (id_pessoa)
ALTER TABLE Postagem ADD FOREIGN KEY(id_lugar) REFERENCES Lugar (id_lugar)
ALTER TABLE Postagem ADD FOREIGN KEY(id_pessoa) REFERENCES Pessoa (id_pessoa)
ALTER TABLE Imagem ADD FOREIGN KEY(id_lugar) REFERENCES Lugar (id_lugar)
ALTER TABLE Categoria ADD FOREIGN KEY(id_pessoa) REFERENCES Pessoa (id_pessoa)
ALTER TABLE Lugar ADD FOREIGN KEY(id_pessoa) REFERENCES Pessoa (id_pessoa)
ALTER TABLE Avaliacao ADD FOREIGN KEY(id_pessoa) REFERENCES Pessoa (id_pessoa)
