create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(233) not null ,
compra_livre varchar(233) not null ,
primary key (id)
);

insert into tb_categoria (Tipo, compra_livre) values ("Tarja Vermelha"," Vendidos com uma receita simples.");
insert into tb_categoria (Tipo, compra_livre) values ("Tarja Preta"," Receituário especial.");
insert into tb_categoria (Tipo, compra_livre) values ("Tarja Amarela"," Vendidos sem a prescrição médica. ");
insert into tb_categoria (Tipo, compra_livre) values ("Cosmético"," Compra livre. ");
insert into tb_categoria (Tipo, compra_livre) values ("Prod. Higiene pessoal"," Compra livre. ");

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

insert into tb_prod (nome , descricao, disponivel, tipo_id, valor) values ("Ozempic","Ozempic 1,34mg/mL Solução Injetável 1mg + 4 Agulhas",true,1,949.99);
insert into tb_prod (nome , descricao, disponivel, tipo_id, valor) values ("Ibuprofeno","melhor medicamento analgésico e anti-inflamatório existente no mercado.",true,3,10);
insert into tb_prod (nome , descricao, disponivel, tipo_id, valor) values ("Lorax","Tranquilizante, pricipio ativo: Lorazepam",false,2,40);
insert into tb_prod (nome , descricao, disponivel, tipo_id, valor) values ("Paracetamol","indicado para alívio temporário de dores associadas a gripes e resfriados comuns",true,3,3.30);
insert into tb_prod (nome , descricao, disponivel, tipo_id, valor) values ("Buscofem","medicamento usado para alívio da dor.",true,3,16.69);
insert into tb_prod (nome , descricao, disponivel, tipo_id, valor) values ("Effaclar gel concentrado","O Gel de Limpeza Facial",true,4,79.90);
insert into tb_prod (nome , descricao, disponivel, tipo_id, valor) values ("Kit Creme Dental Sensodyne","Rápido Alívio ajuda a promover alívio instantâneo e duradouro da sensibilidade nos dentes",true,5,28.90);
insert into tb_prod (nome , descricao, disponivel, tipo_id, valor) values ("Fio Dental Reach Johnsons","Reach essencial menta remove a placa bacteriana e deixa agradável sabor de menta",true,5,8);


select * from tb_prod;


select * from tb_prod where valor > 50 ;

select * from tb_prod where valor < 60 and valor >6  ;

select * from tb_prod where nome like "%b%";

select tb_prod.nome, tb_prod.disponivel, tb_categoria.Tipo ,tb_prod.valor from tb_prod inner join  tb_categoria on tb_categoria.id = tb_prod.tipo_id;


select nome from tb_prod where tipo_id = 3;


