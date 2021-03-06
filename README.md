# TRABALHO 01 : ComoTa?

# Sumário

### 1	COMPONENTES<br>
Cassiano Künsch das Neves</br>
Giseli Siqueira

### 2	INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados <nome do projeto> e motivação da escolha realizada. <br>
      
### 3	MINI-MUNDO<br>
Alguma vez na sua vida você já deve ter ido para algum lugar e chegando lá você viu que não era nada daquilo que você tinha imaginado, seja porque você estava esperando que o lugar estivesse cheio ou então vazio, ou até mesmo esperando que o ambiente estivesse melhor, e por conta disso você teve que procurar em cima da hora outro lugar pra ir, ou até mesmo voltar para casa. Pensando nessas situações que teve-se a ideia de cria o "Como ta?", que é um aplicativo que vai te ajudar a descobrir como o lugar vai estar no momento em que você tem interesse em frequentá-lo. 

O aplicativo reune lugares com base em categorias que podem ser: Praias, shoppings, supermercados, Lojas, Restaurantes, etc., e mostra para o usuário as opções disponíveis mais proximas de onde ele está no momento com base na sua localização, contendo um ranking de avaliação de tal lugar com base em avaliações feitas pelos seus usuários.

Os lugares são adicionados com base em sugestao dos usuários, que ao irem em um lugar que ainda nao está no aplicativo podem solicitar a inclusão do mesmo através de uma função específica de acadastro, onde este entra com os dados do lugar como o endereço, uma foto que o represente e um comentário sobre o que ele achou do lugar naquele momento com uma avaliação e a avaliação geral do lugar. A avaliação de um lugar é feita através da escolha de estrelas podendo ser 1: muito ruim a 5: excelente. Após solicitar inclusão, administradores do sistema realizam uma avaliação dos dados informados e o lugar passará a fazer parte do catálogo do aplicativo. Os validadores dos cadastros podem ser usuários que tenham uma porcentagem no ranking que é contruido baseado na colaboração e autenticidade para cada nível de estrela.

Os lugares são exibidos por ordem de "mais bem avaliado" segundo o ranking de estrelas e na distância atual em relaçao ao usuário. Ao selecionar um lugar é acessado uma timeline com informações referentes ao lugar naquele momento, onde os usuários podem postar fotos do lugar, comentar sobre algo que esteja acontecendo no momento e postar sua opiniao sobre o lugar.

Os usuários podem ser qualquer pessoa que tenha um cadastro no aplicativo ou perfil ativo em alguma rede social.Para o aplicativo é importante identificar cada usuário para controle. De um usuário deseja-se ter o nome completo, endereço, email e uma senha de acesso. Para efetuar login o usuário poderá entrar com seu endereço de email e senha informados no cadastro ou selecionando perfil em uma das redes sociais integradas que são Facebook, Instagram e twitter. 

O usuário efetua login e tem acesso as categorias de lugares previamente cadastradas ou pode inserir uma nova categoria. Em cada menu de categoria é possível ter acesso a lugares previamente cadastrados ou a opção de cadastro de lugar. Os lugares são exibidos por ordem de avaliação onde os que são mais bem avaliados são listados primeiro e distância do lugar em relação à pessoa no momento. Cada lugar possui um nome, o seu respectivo endereço, uma imagem e a avaliação geral e a distância em relação a localização atual do usuário. Ao selecionar um lugar é exibido o perfil do lugar (avaliação geral, comentarios e avaliações individuais, descrição do lugar e localização e opção de acesso à timeline do lugar). Na timeline é possível ter acesso ao conteúdo que as pessoas que também frequentaram aquele lugar postaram. O conteúdo pode ser mensagem de texto com comentários de como está o lugar ou foto do lugar ou das pessoas que estarão lá no momento. Cada postagem é registrada com o nome do perfil do usuário que a realizou bem como data e hora do momento exato da publicação. Ainda sobre as publicações, cada uma conterá opções para alteração da publicação e exclusão.

### 4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Rascunhos de interface em formato .PDF navegável disponível em:
<https://github.com/Cassianokunsch/ComoTa/blob/master/HowIsThere.pdf> </br>

### 5	MODELO CONCEITUAL<br>
#### 5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/Cassianokunsch/ComoTa/blob/master/Imagens/conceitual.jpg?raw=true "Modelo Conceitual")
    
     5.2 NOTACAO UML (Caso esteja fazendo a disciplina de Projeto)

#### 5.3 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

#### 5.4 DESCRIÇÃO DOS DADOS 

      [Tabela - Cometarios]: Armazena todos os comentários feitos pelos usuários
      id_comentario: Atributo identificador da tabela
      texto: Armazena o texto escrito pelo usuário
      id_postagem: Chave secundária
      id_pessoa: Chave secundária

      [Tabela - Postagem] - Armazena todas as postagens feitas pelos usuários
      data: Campo que armazena a data da postagem
      id_postagem: Atributo identificador da tabela
      postagem: Armazena o texto escrito pelo usuário
      id_lugar: Chave secundária
      id_pessoa: Chave secundária

      [Tabela - Imagem] - Armazena todas as imagens do sistema
      id_imagem: Atributo identificador da tabela 
      path: Campo que armazena o caminho da imagem
      descricao: Campo que armazena a descrição da imagem

      [Tabela - Categoria] - Armazena todas as categorias dos lugares
      id_categoria: Atributo identificador da tabela
      descricao: Campo que armazena a descrição da categoria
      nome_categoria: Campo que armazena o nome da categoria
      id_pessoa: Chave secundária

      [Tabela - Lugar] - Armazena todos os lugares do sistema
      long: Campo que armazena a longitude do lugar
      id_lugar: Atributo identificador da tabela
      lat: Campo que armazena a latitudo do lugar
      descricao: Campo que armazena a descricao do lugar
      nome_lugar: Campo que armazena o nome do lugar
      id_pessoa: Chave secundária
      id_categoria: Chave secundária

      [Tabela - Avaliacao] - Armazena todas as avaliações dos usuários
      id_avaliacao: Atributo identificador da tabela
      nota: Campo que armazena a nota dada pelo usuário
      comentario: Campo que armazena o comentário feito pelo usuário
      id_lugar: Chave secundária
      id_pessoa: Chave secundaria

      [Tabela - Pessoa] - Armazena os dados das pessoas que usam o sistema
      cep: Campo que armazena o CEP do usuário
      bairro: Campo que armazena o bairro do usuário
      cidade: Campo que armazena o cidade do usuário
      estado: Campo que armazena o estado do usuário
      rua: Campo que armazena o rua do usuário
      numero: Campo que armazena o numero do usuário
      id_pessoa: Atributo identificador da tabela
      email: Campo que armazena o CEP do usuário
      colaboracao: Campo quantos lugares o usuário ajudou a identificar como verdadeiro
      autenticidade: Campo quantos lugares o usuário identificou como verdade e realmente é verdade
      senha: Campo que armazena a senha do usuário
      login: Campo que armazena o login do usuário
      ativo: Campo que diz se o usuário está ativo ou não
      nome_pessoa: Campo que armazena o nome do usuário
      id_imagem_pessoa: Chave secundária

      [Tabela - ImagemPessoa] - Armazena o atributo identificador de pessoa e o atributo identificador dessa imagem relacionado a pessoa
      id_imagem_pessoa: Atributo identificador
      id_imagem: Chave secundária

      [Tabela - ImagemCategoria] - Armazena o atributo identificador de categoria e o atributo identificador dessa imagem relacionado a categoria
      id_imagem_categoria: Atributo identificador
      id_imagem INTEGER: Chave secundária
      id_categoria INTEGER: Chave secundária

      [Tabela - ImagemLugar] - Armazena o atributo identificador de Lugar e o atributo identificador dessa imagem relacionado a Lugar
      id_imagem_lugar: Atributo identificador
      id_imagem: Chave secundária
      id_lugar: Chave secundária

      [Tabela -  ImagemPostagem] - Armazena o atributo identificador de Postagem e o atributo identificador dessa imagem relacionado a Postagem
      id_imagem_postagem: Atributo identificador
      id_imagem: Chave secundária
      id_postagem: Chave secundária

### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/Cassianokunsch/ComoTa/blob/master/Imagens/logico.jpg?raw=true "Modelo Lógico")

### 7	MODELO FÍSICO<br>

      CREATE TABLE Imagem (
      id_imagem INTEGER PRIMARY KEY NOT NULL,
      path VARCHAR(256) NOT NULL,
      descricao VARCHAR(256) NOT NULL
      );

      CREATE TABLE ImagemPessoa (
      id_imagem_pessoa INTEGER PRIMARY KEY NOT NULL,
      id_imagem INTEGER NOT NULL,
      CONSTRAINT FK_id_imagem FOREIGN KEY(id_imagem) REFERENCES Imagem (id_imagem)
      );

      CREATE TABLE Pessoa (
      cep VARCHAR(8) NOT NULL,
      bairro VARCHAR(100) NOT NULL,
      cidade VARCHAR(100) NOT NULL,
      estado VARCHAR(100) NOT NULL,
      rua VARCHAR(100) NOT NULL,
      numero VARCHAR(5) NOT NULL,
      id_pessoa INTEGER PRIMARY KEY NOT NULL,
      email VARCHAR(255) NOT NULL,
      colaboracao INTEGER NOT NULL,
      autenticidade INTEGER NOT NULL,
      senha VARCHAR(20) NOT NULL,
      login VARCHAR(20) NOT NULL,
      ativo CHAR(1) NOT NULL,
      nome_pessoa VARCHAR(255) NOT NULL,
      id_imagem_pessoa INTEGER NOT NULL,
      CONSTRAINT FK_id_imagem_pessoa FOREIGN KEY(id_imagem_pessoa) REFERENCES ImagemPessoa (id_imagem_pessoa)
      );

      CREATE TABLE Categoria (
      id_categoria INTEGER PRIMARY KEY NOT NULL,
      descricao VARCHAR(256) NOT NULL,
      nome_categoria VARCHAR(256) NOT NULL,
      id_pessoa INTEGER NOT NULL,
      CONSTRAINT FK_id_pessoa FOREIGN KEY(id_pessoa) REFERENCES Pessoa (id_pessoa)
      );

      CREATE TABLE ImagemCategoria (
      id_imagem_categoria INTEGER PRIMARY KEY NOT NULL,
      id_imagem INTEGER NOT NULL,
      id_categoria INTEGER NOT NULL,
      CONSTRAINT FK_id_imagem FOREIGN KEY(id_imagem) REFERENCES Imagem (id_imagem),
      CONSTRAINT FK_id_categoria FOREIGN KEY(id_categoria) REFERENCES Categoria (id_categoria)
      );

      CREATE TABLE Lugar (
      long DECIMAL(10) NOT NULL,
      id_lugar INTEGER PRIMARY KEY NOT NULL,
      lat DECIMAL(10) NOT NULL,
      descricao VARCHAR(256) NOT NULL,
      nome_lugar VARCHAR(256) NOT NULL,
      id_pessoa INTEGER NOT NULL,
      id_categoria INTEGER NOT NULL,
      CONSTRAINT FK_id_pessoa FOREIGN KEY(id_pessoa) REFERENCES Pessoa (id_pessoa),
      CONSTRAINT FK_id_categoria FOREIGN KEY(id_categoria) REFERENCES Categoria (id_categoria)
      );

      CREATE TABLE ImagemLugar (
      id_imagem_lugar INTEGER PRIMARY KEY NOT NULL,
      id_imagem INTEGER NOT NULL,
      id_lugar INTEGER NOT NULL,
      CONSTRAINT FK_id_imagem FOREIGN KEY(id_imagem) REFERENCES Imagem (id_imagem),
      CONSTRAINT FK_id_lugar FOREIGN KEY(id_lugar) REFERENCES Lugar (id_lugar)
      );

      CREATE TABLE Postagem (
      data DATETIME NOT NULL,
      id_postagem INTEGER PRIMARY KEY NOT NULL,
      postagem TEXT,
      id_lugar INTEGER NOT NULL,
      id_pessoa INTEGER NOT NULL,
      CONSTRAINT FK_id_lugar FOREIGN KEY(id_lugar) REFERENCES Lugar (id_lugar),
      CONSTRAINT FK_id_pessoa FOREIGN KEY(id_pessoa) REFERENCES Pessoa (id_pessoa)
      );

      CREATE TABLE ImagemPostagem (
      id_imagem_postagem INTEGER PRIMARY KEY NOT NULL,
      id_imagem INTEGER NOT NULL,
      id_postagem INTEGER NOT NULL,
      CONSTRAINT FK_id_imagem FOREIGN KEY(id_imagem) REFERENCES Imagem (id_imagem),
      CONSTRAINT FK_id_postagem FOREIGN KEY(id_postagem) REFERENCES Postagem (id_postagem)
      );

      CREATE TABLE Cometarios (
      id_comentario INTEGER PRIMARY KEY NOT NULL,
      texto TEXT NOT NULL,
      id_postagem INTEGER NOT NULL,
      id_pessoa INTEGER NOT NULL,
      CONSTRAINT FK_id_postagem FOREIGN KEY(id_postagem) REFERENCES Postagem (id_postagem),
      CONSTRAINT FK_id_pessoa FOREIGN KEY(id_pessoa) REFERENCES Pessoa (id_pessoa)
      );

      CREATE TABLE Avaliacao (
      id_avaliacao INTEGER PRIMARY KEY NOT NULL,
      nota INTEGER NOT NULL,
      comentario TEXT NOT NULL,
      id_pessoa INTEGER NOT NULL,
      id_lugar INTEGER NOT NULL,
      CONSTRAINT FK_id_pessoa FOREIGN KEY(id_pessoa) REFERENCES Pessoa (id_pessoa),
      CONSTRAINT FK_id_lugar FOREIGN KEY(id_lugar) REFERENCES Lugar (id_lugar)
      );

### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a:
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS (ARQUIVO ÚNICO COM):
        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        c) inclusão das instruções para execução de outros procedimentos necessários

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	GERACAO DE DADOS (MÍNIMO DE 1,5 MILHÃO DE REGISTROS PARA PRINCIPAL RELAÇAO)<br>
    Data de Entrega: (Data a ser definida)
<br>
OBS: Incluir para os tópicos 9.2 e 9.3 as instruções SQL + imagens (print da tela) mostrando os resultados.<br>

#### 9.2	SELECT DAS TABELAS COM PRIMEIROS 10 REGISTROS INSERIDOS <br> 
    Data de Entrega: (Data a ser definida)
<br>

#### 9.3	SELECT DAS VISÕES COM PRIMEIROS 10 REGISTROS DA VIEW <br>
        a) Descrição da view sobre que grupos de usuários (operacional/estratégico) <br>
        e necessidade ela contempla.
        b) Descrição das permissões de acesso e usuários correlacionados (após definição <br>
        destas características)
    Data de Entrega: (Data a ser definida)
<br>

#### 9.4	LISTA DE CODIGOS DAS FUNÇÕES, ASSERÇOES E TRIGGERS<br>
        Detalhamento sobre funcionalidade de cada código.
        a) Objetivo
        b) Código do objeto (função/trigger/asserção)
        c) exemplo de dados para aplicação
        d) resultados em forma de tabela/imagem
<br>

#### 9.5	Administração do banco de dados<br>
        Descrição detalhada sobre como serão executadas no banco de dados as <br>
        seguintes atividades.
        a) Segurança e autorização de acesso:
        b) Estimativas de aquisição de recursos para armazenamento e processamento da informação
        c) Planejamento de rotinas de manutenção e monitoramento do banco
        d) Plano com frequencia de análises visando otimização de performance
<br>

#### 9.6	Backup do Banco de Dados<br>
        Detalhamento do backup.
        a) Tempo
        b) Tamanho
        c) Teste de restauração (backup)
        d) Tempo para restauração
        e) Teste de restauração (script sql)
        f) Tempo para restauração (script sql)
<br>

Data de Entrega: (Data a ser definida)
<br>

#### 9.7	APLICAÇAO DE ÍNDICES E TESTES DE PERFORMANCE<br>
    a) Lista de índices, tipos de índices com explicação de porque foram implementados
    b) Performance esperada VS Resultados obtidos
    c) Tabela de resultados comparando velocidades antes e depois da aplicação dos índices.
<br>
    Data de Entrega: (Data a ser definida)
<br>   

#### 9.8	ANÁLISE DOS DADOS COM ORANGE<br>    
    a) aplicação de algoritmos e interpretação dos resultados
<br>
    Data de Entrega: (Data a ser definida)
<br>

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO/ SLIDES E ENTREGA FINAL<br>
<br>
    Data de Entrega: (Data a ser definida)
<br>

### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>  

### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
