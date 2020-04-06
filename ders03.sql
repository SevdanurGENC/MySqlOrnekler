-- DML (Data Manipulation Language) : 
-- tablolari sema nesneleri icinde verileri yonetmek icin kullanilir
-- Select, Insert, Update, Delete

use db_taskoprumyo;

insert into tbl_bolum (bolumid, bolumadi)
values (5, 'Muhasebe');

select * from tbl_bolum;

insert into tbl_bolum(bolumid, bolumadi)
values (6, 'Elektronik'),
(7, 'Resim');

update tbl_bolum
set bolumadi = 'Muzik'
where bolumid = 2;

select * from tbl_ogrenci;

update tbl_ogrenci
set soyad = 'Tevetoglu'
where ogrno = 101;

delete from tbl_bolum
where bolumid = 2;

select * from tbl_bolum;

-- DDL (Data Definition Language) :
-- Tablolari veritabani yapisi veya sema tanimlamak icin kullanilir
-- Create, Alter, Drop

create database universite;
drop database universite;

use universite;

create table isim(
id int,
isim varchar(50),
primary key(id)
);

alter table isim
add soyad varchar(50);

drop table isim;

use db_taskoprumyo;
drop table isim;
