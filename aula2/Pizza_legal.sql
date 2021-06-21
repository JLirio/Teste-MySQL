create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(233) not null ,
quente boolean ,
primary key (id)

);
insert into tb_categoria (tipo, quente) values ("Pizza Salg",true);
insert into tb_categoria (tipo, quente) values ("Pizza Doce",true);
insert into tb_categoria (tipo, quente) values ("Brotinho",true);
insert into tb_categoria (tipo, quente) values ("Sorvete",false);
insert into tb_categoria (tipo, quente) values ("Bebida",null);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
nome varchar(233) not null,
ingredientes varchar(233) not null,
borda_disp boolean not null,
preco decimal(6,2) not null,
tipo_id bigint,
FOREIGN KEY (tipo_id) REFERENCES tb_categoria (id),
primary key (id)
);

insert into tb_pizza (nome , ingredientes, borda_disp, preco, tipo_id) values ("Calabresa","muçarela, calabresa e cebola.",true,31,1);
insert into tb_pizza (nome , ingredientes, borda_disp, preco, tipo_id) values ("Portuguesa","presunto, ovos, muçarela e ervilha.",true,34,1);
insert into tb_pizza (nome , ingredientes, borda_disp, preco, tipo_id) values ("Brócolis","brócolis, bacon e catupiry",true,34,1);
insert into tb_pizza (nome , ingredientes, borda_disp, preco, tipo_id) values ("Sensação","chocolate, morango e leite condensado",false,36,2);
insert into tb_pizza (nome , ingredientes, borda_disp, preco, tipo_id) values ("Romeu e Julieta","goiabada e muçarela",false,34,2);
insert into tb_pizza (nome , ingredientes, borda_disp, preco, tipo_id) values ("Morango e Baunilha","sorvete de morango e baunilha",false,12,4);
insert into tb_pizza (nome , ingredientes, borda_disp, preco, tipo_id) values ("Muçarela","olho, muçarela e orégano.",true,15,3);
insert into tb_pizza (nome , ingredientes, borda_disp, preco, tipo_id) values ("Dolly Guaraná","Refrigerante sabor guaraná",false,4.50,5);
insert into tb_pizza (nome , ingredientes, borda_disp, preco, tipo_id) values ("Camarão","camarão com cobertura de muçarela ou catupiry",true,47,1);

select * from tb_pizza;

select * from tb_pizza where preco > 40 ;

select * from tb_pizza where preco < 40 and preco >30 ;

select * from tb_pizza where nome like "%c%";

select tb_pizza.nome, tb_pizza.ingredientes, tb_categoria.tipo, tb_pizza.preco from tb_pizza inner join  tb_categoria on tb_categoria.id = tb_pizza.tipo_id;


select nome from tb_pizza where tipo_id = 1;

