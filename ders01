create database DB_TaskopruMYO;

use DB_TaskopruMYO;

create table tbl_ogrenci(
OgrNo int not null,
Ad varchar(40) not null, 
Soyad varchar(40) not null,
DogumTarihi date,
Ortalama real,
primary key(OgrNo)
);

insert into tbl_ogrenci(OgrNo, Ad, Soyad, DogumTarihi, Ortalama)
values(100, 'Ali Riza', 'Sergen', '1990-10-20', 2.84);

select *
from tbl_ogrenci;

insert into tbl_ogrenci(OgrNo, Ad, Soyad, DogumTarihi, Ortalama)
values (101, 'Aysel', 'Leylak', '1995-12-30', 1.40),
(102, 'Birsen', 'Cenbercioglu', '1992-02-02', 3.40),
(103, 'Ali', 'Cengiz', '1998-01-05', 2.99);

select Ad, Soyad, DogumTarihi
from tbl_ogrenci;
