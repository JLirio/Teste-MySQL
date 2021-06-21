create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(233) not null ,
dispo boolean not null ,
primary key (id)
);

insert into tb_categoria (tipo, dispo) values ("doce",true);
insert into tb_categoria (tipo, dispo) values ("semiacidas",true);
insert into tb_categoria (tipo, dispo) values ("acidas",true);
insert into tb_categoria (tipo, dispo) values ("monofágicas",true);
insert into tb_categoria (tipo, dispo) values ("oleaginosas",true);


select * from tb_categoria;

create table tb_fruta(
id bigint auto_increment,
nome varchar(233) not null,
valor decimal(8,2) not null,
qnt_venda varchar(233) ,
cor varchar(233) not null,
tipo_id bigint,
FOREIGN KEY (tipo_id) REFERENCES tb_categoria (id),
primary key (id)
);

insert into tb_fruta (nome, valor, qnt_venda, cor, tipo_id) values ("Açaí",18.79,"Pote de 1kg","roxo",1);
insert into tb_fruta (nome, valor, qnt_venda, cor, tipo_id) values ("Acerola",9,"Embalagem de 1kg","Vermelha",3);
insert into tb_fruta (nome, valor, qnt_venda, cor, tipo_id) values ("Banana",4.99,"A dúzia","Amarela",1);
insert into tb_fruta (nome, valor, qnt_venda, cor, tipo_id) values ("Abacate",9.90,"Embalagem de 1kg","Verde",5);
insert into tb_fruta (nome, valor,qnt_venda, cor, tipo_id) values ("Limão",10,"Embalagem de 1kg","Verde",3);
insert into tb_fruta (nome, valor, qnt_venda, cor, tipo_id) values ("Maçã Verde",16.79,"Embalagem de 1kg","Verde",2);
insert into tb_fruta (nome, valor, qnt_venda, cor, tipo_id) values ("jabuticaba",15.99,"Pote de 1kg","roxo",2);
insert into tb_fruta (nome, valor, qnt_venda, cor, tipo_id) values ("Melancia",18.50,"Unidade","Verde/vermelha",4);




select * from tb_fruta;


select * from tb_fruta where valor > 15 ;

select * from tb_fruta where valor < 15 and valor >7  ;

select * from tb_fruta where nome like "%b%";

select tb_fruta.nome,tb_fruta.qnt_venda, tb_categoria.tipo ,tb_fruta.valor from tb_fruta inner join  tb_categoria on tb_categoria.id = tb_fruta.tipo_id;


select nome from tb_fruta where tipo_id = 3;


