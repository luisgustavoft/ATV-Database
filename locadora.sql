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