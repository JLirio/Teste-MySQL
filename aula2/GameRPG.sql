create database db_generation_game_online;

use  db_generation_game_online;
create table tb_raca(
id bigint auto_increment,
raca varchar(233) not null ,
extincao boolean not null,
primary key (id)

);

insert into tb_raca (raca, extincao) values ("Elfo",true);
insert into tb_raca (raca, extincao) values ("Humano",false);
insert into tb_raca (raca, extincao) values ("Anão",false);
insert into tb_raca (raca, extincao) values ("Dracônico",true);
insert into tb_raca (raca, extincao) values ("Bestial",false);

select * from tb_raca;

create table tb_personagens(
id bigint auto_increment,
nome varchar(233) not null,
poder_atq decimal not null,
poder_def decimal not null,
cla varchar(233),
raca_id bigint,
FOREIGN KEY (raca_id) REFERENCES tb_raca (id),
primary key (id)
);
insert into tb_personagens (nome , poder_atq, poder_def, cla, raca_id) values ("Tarvor",300,350,"Fireson",4);
insert into tb_personagens (nome , poder_atq, poder_def, cla, raca_id) values ("Brubrure",250,420,"Purplesmith",3);
insert into tb_personagens (nome , poder_atq, poder_def, cla, raca_id) values ("Ali Palmpetal",200,100,"Heaventreel",1);
insert into tb_personagens (nome , poder_atq, poder_def, cla, raca_id) values ("Kol'gun",320,200,"Killer Lion",5);
insert into tb_personagens (nome , poder_atq, poder_def, cla, raca_id) values ("Farfa",150,150,"NA",2);
insert into tb_personagens (nome , poder_atq, poder_def, cla, raca_id) values ("Nohyia",150,150,"Cat Thief ",2);
insert into tb_personagens (nome , poder_atq, poder_def, cla, raca_id) values ("Albo",10,700,"sem clã",5);
insert into tb_personagens (nome , poder_atq, poder_def, cla, raca_id) values ("Talon",150,150,"Comerciante",2);

select * from tb_personagens;

select * from tb_personagens where poder_atq >300 ;
select * from tb_personagens where poder_def >200 and poder_def <400 ;
select * from tb_personagens where nome like "a%";

select tb_personagens.nome, tb_personagens.poder_atq, tb_personagens.poder_def, tb_personagens.cla, tb_raca.raca, tb_raca.extincao from tb_personagens inner join  tb_raca on tb_raca.id = tb_personagens.raca_id;

select nome from tb_personagens where raca_id = 3;


