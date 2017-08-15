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

Os lugares são adicionados com base em sugestao dos usuários, que ao irem em um lugar que ainda nao está no aplicativo podem solicitar a inclusão do mesmo através de uma função específica de acadastro, onde este entra com os dados do lugar como o endereço, uma foto que o represente e um comentário sobre o que ele achou do lugar naquele momento com uma avaliação. A avaliação de um lugar é feita através da escolha de estrelas podendo ser 0: muito ruim a 5: excelente. Após solicitar inclusão, administradores do sistema realizam uma avaliação dos dados informados e o lugar passará a fazer parte do catálogo do aplicativo.

Os lugares são exibidos por ordem de "mais bem avaliado" segundo o ranking de estrelas e ao selecionar um lugar é acessado um bate-papo com informações referentes ao lugar naquele momento, onde os usuários podem postar fotos do lugar, comentar sobre algo que esteja acontecendo no momento e postar sua opiniao sobre o lugar, avaliando se o ambiente está bom ou não.

Os usuários podem ser qualquer pessoa que tenha um cadastro no aplicativo ou perfil ativo em alguma rede social.Para o aplicativo é importante identificar cada usuário para controle. De um usuário deseja-se ter o nome completo, endereço, email e uma senha de acesso. Para efetuar login o usuário poderá entrar com seu endereço de email e senha informados no cadastro ou selecionando perfil em uma das redes sociais integradas que são Facebook, Instagram e twitter. 

O usuário efetua login e tem acesso as categorias de lugares. Em cada menu de categoria é possível ter acesso a lugares previamente cadastrados ou a opção de cadastro de lugar. Os lugares são exibidos por ordem de avaliação onde os que são mais bem avaliados são listados primeiro. Cada lugar possui um nome, o seu respectivo endereço, uma imagem e a avaliação geral. Ao selecionar um lugar é exibido uma timeline onde é possível ter acesso ao conteúdo que as pessoas que também frequentaram aquele lugar postaram. O conteúdo pode ser mensagem de texto com possíveis comentários de avaliação de como está o lugar ou foto do lugar ou das pessoas que estarão lá no momento. Cada postagem é registrada com o nome do perfil do usuário que a realizou bem como data e hora do momento exato da publicação. Ainda sobre as publicações, cada uma conterá opções para alteração da publicação e exclusão.

### 4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

Sugestão: https://balsamiq.com/products/mockups/<br>

![Alt text](https://github.com/discipbd2/topicos-trabalho/blob/master/balsamiq.png?raw=true "Title")


### 5	MODELO CONCEITUAL<br>
#### 5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/discipbd2/topicos-trabalho/blob/master/sample_MC.png?raw=true "Modelo Conceitual")
    
     5.2 NOTACAO UML (Caso esteja fazendo a disciplina de Projeto)

#### 5.3 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

#### 5.4 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>

### 6	MODELO LÓGICO<br>
### 7	MODELO FÍSICO<br>
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
