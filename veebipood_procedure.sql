select * from categories;
select * from products;
select* from brands;
update categories set category_name 'kingad'
where category_id=2;
--procedure mis lisab INSERT andmeid tabelisse brands
create procedure lisaBrand
@brand_nimi varchar(30)
as
begin
insert into brands(brand_name) values (@brand_nimi);
select * from brands;
end;
--procedure check
exec lisaBrand 'Audi';

--procedure mis kustutab delete tabelist id järgi
create procedure kustutaBrand
@id int
as
begin 
select * from brands;
delete from brands where brand_id=@id;
select * from brands;
end;
--kutse
exec kustutaBrand 5;
exec kustutaBrand @id=5;
--procedure mis otsib brandnimed 1 tahte järge
create procedure otsing1tahte
@taht char(1)
as 
begin 
select * from brands where brand_name like @taht+ '%';
end;

exec otsing1tahte 'a';

--procedure mis uuendab update brandnimi id järgi
create procedure uuendaBrand
@id int,
@uus_brandNimi varchar(30)
as
begin
select * from brands;
update brands set brand_name=@uus_brandNimi
where brand_id=@id;
select * from brands;
end;
--kutse
exec uuendaBrand 1, 'uusAudi';
