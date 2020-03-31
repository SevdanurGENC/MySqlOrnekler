use DB_TaskopruMYO;

select * from tbl_ogrenci;

select ogrno, ad, Soyad 
from tbl_ogrenci
where ad = 'Ali';

select *
from tbl_ogrenci
where ad = 'Ali' and ortalama='3.30';

select *
from tbl_ogrenci
where ad = 'Ali' or ortalama='1.4';

select ogrno, ad, ortalama
from tbl_ogrenci
where ortalama between 2.8 and 3.30
and ad = 'Ali'

select * 
from tbl_ogrenci
where dogumtarihi between '1995-01-01' and '1998-12-01'

select * 
from tbl_ogrenci
where ogrno in ('102')

select ad, soyad
from tbl_ogrenci
where ad like 'A%' and soyad like '%e%'

select ad, soyad
from tbl_ogrenci
where ad not like 'A%' or soyad not like '%e%'

select ad, soyad
from tbl_ogrenci
where ad not in ('Birsen')

create table tbl_bolum(
bolumid int not null, 
bolumAdi varchar(100) not null,
primary key(bolumid)
)

insert into tbl_bolum (bolumid, bolumadi)
values (1, 'Bilgisayar'),
(2, 'Elektrik'),
(3, 'Bankacilik'),
(4, 'Haritacilik')

select * from tbl_bolum;
select * from tbl_ogrenci;

-- tablo iliskilendirme : tabloismi.alanismi = tabloismi.alanismi
select ogrno, ad, soyad, ortalama, bolumadi
from tbl_ogrenci, tbl_bolum
where tbl_bolum.bolumid = tbl_ogrenci.bid
And ad like 'A%'
And ortalama between 2.00 and 3.00
