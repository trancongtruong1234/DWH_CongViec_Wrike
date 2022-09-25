drop table LoaiCongViec
go
CREATE TABLE LoaiCongViec (
    LoaiCongViecID INT PRIMARY KEY,
	LoaiCongViec NVARCHAR(50)
);
go
insert into LoaiCongViec values(
'1',N'Triển khai'),
('2',N'Tư vấn'),
('3',N'Thầu'),
('4',N'Hỗ trợ kỹ thuật'),
('5',N'Đào tạo - Nghiên cứu'),
('6',N'Quản lý'),
('7',N'Họp nội bộ'),
('8',N'Họp Khách hàng - Đối tác'),
('9',N'Phối hợp nội bộ'),
('10',N'Xử lý công việc hàng ngày'),
('11',N'Công tác khác')
go
drop table duan
go
CREATE TABLE DuAn(
	WorkID NVARCHAR(100) PRIMARY KEY,
	MaVuViec NVARCHAR(100),
	TenDuAn NVARCHAR(500),
	TenKhachHang NVARCHAR(300),
	AM NVARCHAR(300),
	PhongKD NVARCHAR(100), 
	LoaiDuAn NVARCHAR(100),
	HangSanXuat NVARCHAR(300),
	Mau NVARCHAR(100),
	LoaiCongViecID INT,
	Status NVARCHAR(100),
	Component NVARCHAR(100),
	NgayBatDau DATE,
	NgayDenHan DATE
)
go
drop table [date]
go
CREATE TABLE [Date] (
    [NgayThucHien] date primary key,
    [Ngay] int,
    [Thang] int,
    [Quy] int,
    [Nam] int
)

go
drop table [nhanvien]
go
CREATE TABLE NhanVien(
	NhanVienID INT PRIMARY KEY,
	TenNhanVien NVARCHAR(300),
	Email NVARCHAR(50),
	Phong NVARCHAR(300),
	DonVi NVARCHAR(100),
	KhuVuc NVARCHAR(100),
	CheckTeach NVARCHAR(300)
)

go
drop  table [Timelog_Category]
go
Create table[Timelog_Category](
timelog_category_id nvarchar(50) primary key,
timelog_category_name nvarchar(100)
)
go
drop table LoaiHieuQua
go
CREATE TABLE LoaiHieuQua(
	LoaiHieuQuaID INT PRIMARY KEY,
	LoaiHieuQua NVARCHAR(50)
)
drop table CongViec
go
CREATE TABLE CongViec(
	CongViecID INT PRIMARY KEY,
	WorkID NVARCHAR(100),
	ProjectID NVARCHAR(100),
	MoTa NVARCHAR(500),
	NgayThucHien DATE,
	SoGio FLOAT,
	NgayCuoiTuan INT,
	GioBatDau DATETIME,--trong
	GioKetThuc DATETIME,--trong
	DiaDiem NVARCHAR(500),-- empty
	HinhThucLamViec NVARCHAR(100),--empty
	LyDoLamViecONha NVARCHAR(300),--empty
	NhanVienID INT,
	MaVuViec NVARCHAR(100),
	LoaiCongViecID INT,
	LoaiHieuQuaID INT,--trong
	CategoryID nvarchar(50)
)
CREATE table DuAn_Component (
WorkID nvarchar(50),
Component nvarchar(200)
)

-- test
truncate table congviec
drop table CongViec

truncate table duan_component
truncate table congviec
truncate table [date]
truncate table duan
truncate table loaicongviec
truncate table loaihieuqua
truncate table nhanvien
truncate table timelog_category

select * from  duan_component
Select * from DuAn
Select * from [date]
Select * from nhanvien
select * from Timelog_Category
select * from loaicongviec
select * from congviec order by LoaiCongViecID
go
BACKUP DATABASE DB_Goc_Wrike
TO DISK = 'D:\DB_Goc_Wrike.bak';


--790914963
--2355459

Select Sum(SoGio),nv.TenNhanVien,Thang,Nam
from CongViec cv, Date d, NhanVien nv
where cv.NgayThucHien=d.NgayThucHien and nv.NhanVienID=cv.NhanVienID
group by Thang, nv.TenNhanVien,Nam


Select * from NhanVien order by TenNhanVien
go
select * from duan order by workid
go
select count(*) as sl, workID, component from duan group by workID, component
go
select * from congviec
go
select count (workID) as SoLuong, workID from DuAn_Component 
group by WorkID having count (workID) >1
go
select * from DuAn_Component where WorkID = '790927563'
go
SELECT t.WorkID,
         Component = STUFF((SELECT  ','+cast(Component AS VARCHAR ) FROM  DuAn_Component WHERE  WorkID  = t.WorkID  FOR XML PATH('')),1,1,'')
FROM DuAn_Component t
GROUP BY t.WorkID
go
select
    workID,
    string_agg(Component,',') component
from DuAn_Component
group by WorkID

select count (workID) as SoLuong, workID from CongViec 
group by WorkID having count (workID) >1
go
select * from duan order by ngaydenhan