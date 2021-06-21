create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_cursos(
id bigint auto_increment,
cursos varchar(233) not null ,
Qnt_cursos int not null ,
primary key (id)
);

insert into tb_cursos (cursos , Qnt_cursos) values ("Programação",3);
insert into tb_cursos (cursos , Qnt_cursos) values ("DevOps",2);
insert into tb_cursos (cursos , Qnt_cursos) values ("Front-end",3);
insert into tb_cursos (cursos , Qnt_cursos) values ("Mobile",5);
insert into tb_cursos (cursos , Qnt_cursos) values ("Data Scienc",3);

select * from tb_cursos;

create table tb_materia(
id bigint auto_increment,
nome varchar(233) not null,
valor decimal(8,2) not null,
qnt_modulos int  ,
tempo_hrs int ,
tipo_id bigint,
FOREIGN KEY (tipo_id) REFERENCES tb_cursos (id),
primary key (id)
);

insert into tb_materia (nome, valor, qnt_modulos, tempo_hrs, tipo_id) values ("Git e Github",29.90,3,6,2);
insert into tb_materia (nome, valor, qnt_modulos, tempo_hrs, tipo_id) values ("HTML5 e CSS3",40,6,8,3);
insert into tb_materia (nome, valor, qnt_modulos, tempo_hrs, tipo_id) values ("CSS Grid",29.90,6,8,3);
insert into tb_materia (nome, valor, qnt_modulos, tempo_hrs, tipo_id) values ("Administração do MySql",49.90,12,16,5);
insert into tb_materia (nome, valor, qnt_modulos, tempo_hrs, tipo_id) values ("React Native",33.90,4,8,4);
insert into tb_materia (nome, valor, qnt_modulos, tempo_hrs, tipo_id) values ("Modelagem de Banco de Dados",45.90,4,8,5);
insert into tb_materia (nome, valor, qnt_modulos, tempo_hrs, tipo_id) values ("Maven",29.90,4,8,2);
insert into tb_materia (nome, valor, qnt_modulos, tempo_hrs, tipo_id) values ("Jogos clássicos",29.90,3,6,1);





select * from tb_materia;


select * from tb_materia where valor > 30 ;

select * from tb_materia where valor < 40 and valor > 30  ;

select * from tb_materia where nome like "%b%";

select * from tb_materia inner join  tb_cursos on tb_cursos.id = tb_materia.tipo_id;


select nome from tb_materia where tipo_id = 3;


