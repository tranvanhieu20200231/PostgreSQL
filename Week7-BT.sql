-- 1.

/*from giangvien select * from GiangVien
where DiaChi Like 'Hai Ba Trung%'
order by HoTen desc*/
-- 2.
/*select Hoten,Diachi,NgaySinh
from giangvien as g
inner join 
(select t.gv ,t.dt,d.tendt
from thamgia t 
inner join detai d on 
d.dt = t.dt
where d.tendt like 'Tinh toan luoi%') k on 
k.gv = g.gv*/

-- 3.
/*select Hoten,Diachi,NgaySinh
from giangvien as g
inner join 
(select t.gv ,t.dt,d.tendt
from thamgia t 
inner join detai d on 
d.dt = t.dt
where d.tendt like 'Phan loai van ban%' or d.tendt like 'Dich tu dong Anh Viet%') k on 
k.gv = g.gv*/

-- 4
/*select  g.hoten ,count(k.gv)  from 
giangvien g 
inner join 
(select (t.gv)  from 
thamgia t 
inner join detai d on 
t.dt = d.dt ) k on 
k.gv = g.gv 
group by g.hoten
having count(k.gv) >= 2*/ 
--5
/*select  g.hoten ,count(k.gv)  from 
giangvien g 
inner join 
(select (t.gv)  from 
thamgia t 
inner join detai d on 
t.dt = d.dt ) k on 
k.gv = g.gv 
group by g.hoten
order by count(k.gv) desc
limit 1 */
--6
select tendt,min(kinhphi) from detai 
group by tendt
limit 1
