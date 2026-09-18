create table carros (
    placa varchar(8) not null primary key,
    modelo varchar(50),
    cor varchar(20),
    marca varchar(50),
    ano_de_fabricacao int,
    documento varchar(100),
    status varchar(50),
    quilometragem int,
    capacidade_de_volume int,
    capacidade_de_carga int,
    ativo boolean 
);

create table local (
    id_local int not null primary key auto_increment,
    nome varchar(100),
    logradouro varchar(200),
    cidade varchar(100),
    estado varchar(50),
    cep varchar(10),
    numero int,
    bairro varchar(100),
    ativo boolean
);

create table deslocamentos (
    id_deslocamento int not null primary key auto_increment,
    placa_carro varchar(8),
    id_local_origem int,
    id_local_destino int,
    data_saida datetime,
    data_chegada datetime,
    hora_saida time,
    hora_chegada time,
    km_inicial int,
    km_final int,
    status varchar(50),
    ativo boolean,
    status varchar(50),
    foreign key (placa_carro) references carros(placa),
    foreign key (id_local_origem) references local(id_local),
    foreign key (id_local_destino) references local(id_local)
);

create table estoque (
    id_estoque int not null primary key auto_increment,
    nome_produto varchar(100),
    quantidade int,
    modelo_produto varchar(50),
    data_limite_devolucao date,
    status_da_triagem varchar(50),
    unidade_medida varchar(20),
    data_validade date,
    preco_no_momento decimal(10,2),
    status_fisico varchar(50),
    ativo boolean,
);

create table requisicoes (
    id_requisicao int not null primary key auto_increment,
    tipo_requisicao varchar(50),
    data_requisicao date,
    hora_requisicao time,
    status_requisicao varchar(50),
    ativo boolean,
);

ccreate table itens_da_requisicao (
    id_item_da_requisicao int not null primary key auto_increment,
    quantidade_solicitada int,
);

create table produtos (
    id_produto int not null primary key auto_increment,
    nome_produto varchar(100),
    modelo_produto varchar(50),
    data_validade date,
    marca_produto varchar(50),
    preco decimal(10,2),
    tamanho_produto varchar(20),
    ativo boolean,
);

create table categorias (
    id_categoria int not null primary key auto_increment,
    nome_categoria varchar(100),
    descricao_categoria varchar(200),
    ativo boolean,
);

create table embarques (
    id_embarque int not null primary key auto_increment,
    quantidade_embarcada int,
    data_embarque date,
    hora_embarque time,
    status_embarque varchar(50),
    ativo boolean,
);

create table pessoas (
    id_pessoa int not null primary key auto_increment,
    nome_pessoa varchar(100),
    cpf varchar(14),
    rg varchar(20),
    data_nascimento date,
    telefone varchar(15),
    email varchar(100),
    genero varchar(10),
    funcao varchar(50),
    senha varchar(100),
    uf varchar(2),
    cidade varchar(100),
    bairro varchar(100),
    cep varchar(10),
    numero_casa int,
    logradouro varchar(200),
    complemento varchar(100),
    salario decimal(10,2),
    data_admissao date,
    data_demissao date,
    status varchar(50),
    endereco varchar(200),
    ativo boolean,
);