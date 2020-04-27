create database viewKullanimi;

use viewKullanimi;

create table yazarlar(
id int (10) not null,
isim varchar(25) not null,
soyisim varchar(25) not null,
primary key(id)
);

create table kitaplar(
id int(10) not null,
yazarid int(10) not null,
isbn bigint(11) not null,
kitapismi varchar(100) not null,
primary key(id),
key yazarid (yazarid)
);

insert into yazarlar(id,isim,soyisim) 
values (1, 'Franz', 'Kafka'),
(2, 'Stefan', 'Zweig');

select * from yazarlar;

insert into kitaplar(id, yazarid, isbn, kitapismi)
values (1, 1, 123455678910, 'Donusum'),
(2, 1, 53764556378, 'Dava'),
(3, 2, 6843568, 'Satranc'),
(4, 2, 9080480324, 'Amok Kosucusu');

select * from kitaplar;

select k.kitapismi, k.isbn, y.isim, y.soyisim
from kitaplar as k, yazarlar as y
where k.yazarid = y.id;

create view kitapYazarBilgileriniGetir
as
select k.kitapismi, k.isbn, y.isim, y.soyisim
from kitaplar as k, yazarlar as y
where k.yazarid = y.id;

select * from kitapYazarBilgileriniGetir;

alter view kitapYazarBilgileriniGetir
as
select y.id as YazarID, k.kitapismi, k.isbn, y.isim, y.soyisim
from kitaplar as k, yazarlar as y
where k.yazarid = y.id and y.id = 2;

select * from kitapYazarBilgileriniGetir;

drop view kitapYazarBilgileriniGetir;
