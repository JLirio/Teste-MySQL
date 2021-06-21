create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
ferramentas varchar(233) not null ,
disponivel boolean not null ,
primary key (id)
);

insert into tb_categoria (ferramentas, disponivel) values ("Para pintura",true);
insert into tb_categoria (ferramentas, disponivel) values ("Para construção",true);
insert into tb_categoria (ferramentas, disponivel) values ("Manuais",true);
insert into tb_categoria (ferramentas, disponivel) values ("Eletrica/bateria",true);
insert into tb_categoria (ferramentas, disponivel) values ("Medição",true);

select * from tb_categoria;

create table tb_prod(
id bigint auto_increment,
nome varchar(233) not null,
valor decimal(8,2) not null,
disponivel boolean not null,
descricao varchar(233) not null,
tipo_id bigint,
FOREIGN KEY (tipo_id) REFERENCES tb_categoria (id),
primary key (id)
);

insert into tb_prod (nome , descricao, disponivel, tipo_id, valor) values ("Multímetro analógico","usado em medidas de tensão DC / AC, corrente DC, resistência, testes de diodo, continuidade, hFE de transistor e também possui a função de gerador de onda quadrada.",true,5,260);
insert into tb_prod (nome , descricao, disponivel, tipo_id, valor) values ("Prumo de Centro em Aço"," ideal para marcar elevação de ponto verticalmente.",true,5,49.90);
insert into tb_prod (nome , descricao, disponivel, tipo_id, valor) values ("Alicate Universal ","feito especificamente para apertar, dobrar e fixar vários tipos de materiais, ",true,3,46.90);
insert into tb_prod (nome , descricao, disponivel, tipo_id, valor) values ("Furadeira e Parafusadeira","indicada para materiais como madeira e metal,seu punho ergonômico proporciona maior firmeza e segurança em seus trabalhos",true,4,151.90);
insert into tb_prod (nome , descricao, disponivel, tipo_id, valor) values ("Chave Biela 13mm","apertar e afrouxar parafusos ou porcas com perfil quadrado ou sextavado,",true,3,24.90);
insert into tb_prod (nome , descricao, disponivel, tipo_id, valor) values ("Betoneira 1 Traço","Equipamentos p/ Construção Civil.",true,2,3650);
insert into tb_prod (nome , descricao, disponivel, tipo_id, valor) values ("Escova Broxa para Pintura Retangular","Ideal para pinturas com cal e limpezas gerais.",true,1,9);
insert into tb_prod (nome , descricao, disponivel, tipo_id, valor) values ("Kit Dexter","contém: bandeja, lona, rolo, refil de rolo e pincel para auxiliar no seu processo de Pintura.",true,1,29.90);


select * from tb_prod;


select * from tb_prod where valor > 50 ;

select * from tb_prod where valor < 60 and valor >6  ;

select * from tb_prod where nome like "%b%";

select tb_prod.nome, tb_prod.disponivel, tb_categoria.ferramentas ,tb_prod.valor from tb_prod inner join  tb_categoria on tb_categoria.id = tb_prod.tipo_id;


select nome from tb_prod where tipo_id = 3;

