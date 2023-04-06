create table locadora (

idLocadora int not null primary key,
unidade varchar(50),
qtdFuncionarios int not null,
veiculosDisponiveis int not null,

PRIMARY KEY(idLocadora)
);

create table socio (

idSocio int not null,
cpf varchar(11),
endereço varchar(200),
setor varchar(100),
email varchar(100),
nome varchar(100),
porcentagem double not null default '0',

PRIMARY KEY(idSocio),
FOREIGN KEY(idLocadora) REFERENCES locadora(idLocadora)
);


create table empregados (

idPessoal int not null,
cpf varchar(11),
nome varchar(100),
email varchar(100),
setor varchar(100),
dataNascimento varchar(100),
salario double not null default '0',

PRIMARY KEY(idPessoal),
FOREIGN KEY(idLocadora) REFERENCES locadora(idLocadora)
);


create table fornecedor (
  
idFornecedor int not null,
cnpj varchar(100),
numLote varchar(100),

PRIMARY KEY(idFornecedor)
);


create table veiculo (

idVeiculo int not null,
placa varchar(100),
marca varchar(100),
nome varchar(100),
ano varchar(100),
paisOrigem varchar(100),

PRIMARY KEY(idVeiculo),
FOREIGN KEY(idLocadora) REFERENCES locadora(idLocadora)
);


create table fornecedorForneceVeiculo (
  
FOREIGN KEY(idFornecedor) REFERENCES fornecedor(idFornecedor)
FOREIGN KEY(idVeiculo) REFERENCES veiculo(idVeiculo)
);


create table locacao (

idLocacao int not null,
precoTotal double not null varchar(100),
dataAluguel varchar(100),
qtdAlugado int not null,
precoDiaria double not null varchar(100),

PRIMARY KEY(idLocacao)
);


create table locacaoUtilizaVeiculo (
  
FOREIGN KEY(idlocacao) REFERENCES locacao(idLocacao)
FOREIGN KEY(idVeiculo) REFERENCES veiculo(idVeiculo)
);

