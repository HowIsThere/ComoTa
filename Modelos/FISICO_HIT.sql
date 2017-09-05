-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Cometarios (
id_comentario INTEGER PRIMARY KEY,
texto TEXT,
id_postagem INTEGER,
id_pessoa INTEGER
)

CREATE TABLE Postagem (
data DATETIME,
id_postagem INTEGER PRIMARY KEY,
postagem TEXT,
id_lugar INTEGER,
id_pessoa INTEGER
)

CREATE TABLE Imagem (
id_imagem INTEGER PRIMARY KEY,
path VARCHAR(256),
descricao VARCHAR(256)
)

CREATE TABLE Categoria (
id_categoria INTEGER PRIMARY KEY,
descricao VARCHAR(256),
nome_categoria VARCHAR(256),
id_pessoa INTEGER
)

CREATE TABLE Lugar (
long DECIMAL(10),
id_lugar INTEGER PRIMARY KEY,
lat DECIMAL(10),
descricao VARCHAR(256),
nome_lugar VARCHAR(256),
id_pessoa INTEGER,
id_categoria INTEGER,
FOREIGN KEY(id_categoria) REFERENCES Categoria (id_categoria)
)

CREATE TABLE Avaliacao (
id_avaliacao INTEGER PRIMARY KEY,
nota INTEGER,
comentario TEXT,
id_lugar INTEGER,
id_pessoa INTEGER,
FOREIGN KEY(id_lugar) REFERENCES Lugar (id_lugar)
)

CREATE TABLE Pessoa (
cep VARCHAR(8),
bairro VARCHAR(100),
cidade VARCHAR(100),
estado VARCHAR(100),
rua VARCHAR(100),
numero VARCHAR(5),
id_pessoa INTEGER PRIMARY KEY,
email VARCHAR(255),
colaboracao INTEGER,
autenticidade INTEGER,
senha VARCHAR(20),
login VARCHAR(20),
ativo CHAR(1),
nome_pessoa VARCHAR(255),
id_imagem_pessoa VARCHAR(10)
)

CREATE TABLE ImagemPessoa (
id_imagem_pessoa VARCHAR(10) PRIMARY KEY,
id_imagem INTEGER,
FOREIGN KEY(id_imagem) REFERENCES Imagem (id_imagem)
)

CREATE TABLE ImagemCategoria (
id_imagem_categoria VARCHAR(10) PRIMARY KEY,
id_imagem INTEGER,
id_categoria INTEGER,
FOREIGN KEY(id_imagem) REFERENCES Imagem (id_imagem),
FOREIGN KEY(id_categoria) REFERENCES Categoria (id_categoria)
)

CREATE TABLE ImagemLugar (
id_imagem_lugar VARCHAR(10) PRIMARY KEY,
id_imagem INTEGER,
id_lugar INTEGER,
FOREIGN KEY(id_imagem) REFERENCES Imagem (id_imagem),
FOREIGN KEY(id_lugar) REFERENCES Lugar (id_lugar)
)

CREATE TABLE ImagemPostagem (
id_imagem_postagem VARCHAR(10) PRIMARY KEY,
id_imagem INTEGER,
id_postagem INTEGER,
FOREIGN KEY(id_imagem) REFERENCES Imagem (id_imagem),
FOREIGN KEY(id_postagem) REFERENCES Postagem (id_postagem)
)

ALTER TABLE Cometarios ADD FOREIGN KEY(id_postagem) REFERENCES Postagem (id_postagem)
ALTER TABLE Cometarios ADD FOREIGN KEY(id_pessoa) REFERENCES Pessoa (id_pessoa)
ALTER TABLE Postagem ADD FOREIGN KEY(id_lugar) REFERENCES Lugar (id_lugar)
ALTER TABLE Postagem ADD FOREIGN KEY(id_pessoa) REFERENCES Pessoa (id_pessoa)
ALTER TABLE Categoria ADD FOREIGN KEY(id_pessoa) REFERENCES Pessoa (id_pessoa)
ALTER TABLE Lugar ADD FOREIGN KEY(id_pessoa) REFERENCES Pessoa (id_pessoa)
ALTER TABLE Avaliacao ADD FOREIGN KEY(id_pessoa) REFERENCES Pessoa (id_pessoa)
ALTER TABLE Pessoa ADD FOREIGN KEY(id_imagem_pessoa) REFERENCES ImagemPessoa (id_imagem_pessoa)
