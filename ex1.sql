-- exercicio1
create database db_RH;

use db_RH;

create table tb_funcionaries(
id bigint auto_increment,
nome varchar(233) not null,
cod bigint ,
ativo boolean,
salario decimal not null,
primary key (id)
);
select * from tb_funcionaries;
insert into tb_funcionaries(nome,ativo,salario) values ("Jonas",true,1100.00);
insert into tb_funcionaries(nome,cod,ativo,salario) values ("Maria",17643,true,1100.00);

insert into tb_funcionaries(nome,cod,ativo,salario) values ("Carlos",17987,true,3100.00);
insert into tb_funcionaries(nome,cod,ativo,salario) values ("Vicenzo",0,false,0);
insert into tb_funcionaries(nome,cod,ativo,salario) values ("Vin Diesel",77777,true,10500.00);

select * from tb_funcionaries where salario>2000 ;
select * from tb_funcionaries where salario<2000 ;