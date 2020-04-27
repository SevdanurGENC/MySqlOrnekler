use db_taskoprumyo;
select * from tbl_bolum;
select * from tbl_ogrenci;

-- fonksiyonlar : AVG Ortalama almak icin kullanilir.
select avg(ortalama)
from tbl_ogrenci
where bid = 2;

-- sum topla icin kullanilir.
select sum(ortalama)
from tbl_ogrenci
where bid = 1;

-- max en buyuk degeri alir.
select max(ortalama)
from tbl_ogrenci
where bid = 2;

select min(ortalama)
from tbl_ogrenci
where bid = 2;
 
-- count : kayit sayisini getir.

select count(*)
from tbl_ogrenci;

select count(*) as 'Kayit Sayisi'
from tbl_bolum;

select count(bid) as 'Kayit Sayisi'
from tbl_ogrenci;

-- iliski sorgularinda fonksiyon kullanimi

select ogrno, ad, soyad, ortalama, bolumadi
from tbl_ogrenci, tbl_bolum
where tbl_bolum.bolumid = tbl_ogrenci.bid;

select count(*) As 'Kayit Sayisi'
from tbl_ogrenci, tbl_bolum
where tbl_bolum.bolumid = tbl_ogrenci.bid;

select avg(ortalama) As 'Ders Ortalamalari'
from tbl_ogrenci, tbl_bolum
where tbl_bolum.bolumid = tbl_ogrenci.bid;

select max(ortalama) As 'Ortalamasi En Yuksek Olan Kisi'
from tbl_ogrenci, tbl_bolum
where tbl_bolum.bolumid = tbl_ogrenci.bid;

select sum(ortalama) As 'Ortalama Toplami'
from tbl_ogrenci, tbl_bolum
where tbl_bolum.bolumid = tbl_ogrenci.bid;

select min(ortalama) As 'Ortalamasi En Dusuk Olan Kisi'
from tbl_ogrenci, tbl_bolum
where tbl_bolum.bolumid = tbl_ogrenci.bid;
