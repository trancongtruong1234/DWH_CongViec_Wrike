
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
CREATE TABLE DuAn(
	WorkID NVARCHAR(100) PRIMARY KEY,
	MaVuViec NVARCHAR(100),
	TenDuAn NVARCHAR(500),
	TenKhachHang NVARCHAR(300),
	AM NVARCHAR(300),
	PhongKD NVARCHAR(100), 
	LoaiDuAn NVARCHAR(100),
	HangSanXuat NVARCHAR(300),
	Mau NVARCHAR(100)
)
go

CREATE TABLE [Date] (
    [NgayThucHien] date primary key,
    [Ngay] int,
    [Thang] int,
    [Quy] int,
    [Nam] int
)

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
Create table[Timelog_Category](
timelog_category_id nvarchar(50) primary key,
timelog_category_name nvarchar(100)
)
go

CREATE TABLE LoaiCongViec (
    LoaiCongViecID INT PRIMARY KEY,
	LoaiCongViec NVARCHAR(50)
);
CREATE TABLE LoaiHieuQua(
	LoaiHieuQuaID INT PRIMARY KEY,
	LoaiHieuQua NVARCHAR(50)
)
CREATE TABLE CongViec(
	CongViecID INT PRIMARY KEY,
	WorkID NVARCHAR(100),
	MoTa NVARCHAR(500),
	NgayThucHien DATE,
	SoGio FLOAT,
	NgayCuoiTuan INT,--trong
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

-- test
truncate table congviec
drop table CongViec


truncate table congviec
truncate table [date]
truncate table duan
truncate table loaicongviec
truncate table loaihieuqua
truncate table nhanvien
truncate table timelog_category

Select * from DuAn
Select * from [date]
Select * from nhanvien
select * from Timelog_Category
select * from loaicongviec
select * from congviec order by workID
go
BACKUP DATABASE DB_Goc_Wrike
TO DISK = 'D:\DB_Goc_Wrike.bak';


--790914963
--2355459