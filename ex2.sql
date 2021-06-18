create database db_Ecommerc;
use db_Ecommerc;

create table tb_produtos(
id bigint auto_increment,
primary key (id),
nome varchar(255) not null,
valor decimal not null,
usado boolean,
tamanho bigint(2)

);

insert into tb_produtos(nome, valor, usado,tamanho)values("Nike Phantom GT Elite Unissex",190.00,true,40);
insert into tb_produtos(nome, valor, usado,tamanho)values("Mercurial Superfly 8",200.00,true,40);
insert into tb_produtos(nome, valor, usado,tamanho)values("Phantom GT Elite 3D",500.00,false,40);
insert into tb_produtos(nome, valor, usado,tamanho)values("Premier 2 Sala",350.00,true,40);
insert into tb_produtos(nome, valor, usado,tamanho)values("Mercurial Superfly 8 Elite",400.00,false,40);
insert into tb_produtos(nome, valor, usado,tamanho)values("Mercurial Superfly 8 Academy",450.00,false,40);
insert into tb_produtos(nome, valor, usado,tamanho)values("Tiempo Legend 8 Elite",800.00,false,40);
insert into tb_produtos(nome, valor, usado,tamanho)values("Tiempo Legend 8 Elite SG-PRO Anti-Clog Traction",370.00,false,40);
select * from tb_produtos;

update tb_produtos set tamanho = 43 where id = 2;
select * from tb_produtos where valor >500 ;
select * from tb_produtos where valor<500 ;