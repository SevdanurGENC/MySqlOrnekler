-- Siralama - Order By : asc, desc
use db_taskoprumyo;

select * 
from tbl_ogrenci
order by ortalama;

select ad, soyad, ortalama, bid
from tbl_ogrenci
order by soyad desc;

select ad, soyad, ortalama, bid
from tbl_ogrenci
order by ad asc;

-- Group by - Gruplama 

select * from tbl_ogrenci;

select ortalama, count(*) As 'Kac Adet'
from tbl_ogrenci
group by ortalama;

select bid, count(*) As 'Kac Adet'
from tbl_ogrenci
group by bid 
order by bid desc;

select bid, count(*) As 'Kac Adet'
from tbl_ogrenci
group by bid 
order by count(*) desc;

-- Having : Filtreleme, Where gibi davriniyor

select * from tbl_ogrenci;

select ortalama, avg(ortalama)
from tbl_ogrenci
group by ortalama
having avg(ortalama) > 2.5;

select ortalama, count(*) as 'Tekrar Sayisi'
from tbl_ogrenci
group by ortalama
having count(*) > 1;

select ortalama, avg(ortalama)
from tbl_ogrenci
group by ortalama
having count(*) > 1;
