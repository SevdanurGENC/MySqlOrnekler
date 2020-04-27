create database school;

use school;

create table student(
id int(11) not null auto_increment,
name varchar(45) not null,
surname varchar(45) not null,
age varchar(3),
primary key(id)
);

insert into student(id, name, surname, age)
values (1, 'Huseyin', 'Sahin', 38),
(2, 'Dogus Can', 'Yildiz', 39),
(3, 'Selcuk', 'Genc', 25),
(4, 'Sevdanur', 'Genc', 37);

select * from student;

DELIMITER //
create procedure studentSPTumKayitlar()
begin
select * from student;
end //
DELIMITER ;

call studentSPTumKayitlar();

DELIMITER //
create procedure studentSPIsimAra(in soyadGir varchar(45))
BEGIN
select * from student where surname = soyadGir;
END //
DELIMITER //

call studentSPIsimAra('Genc');
