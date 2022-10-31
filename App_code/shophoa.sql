create database ShopHoa
go
use ShopHoa
go
create table DanhMucHoa
(
	MaDM int IDENTITY (1,1) primary key,
	TenDM nvarchar(200),
	Mota nvarchar(200)
)

create table Hoa
(
	MaH int IDENTITY (1,1),
	MaDM nvarchar(200),
	Ten nvarchar(200),
	Donvitinh nvarchar(200),
	Dongia float,
	Soluong int,
	Mota nvarchar(200),
	Hinhanh nvarchar(200)
)
SET IDENTITY_INSERT DanhMucHoa OFF
insert into DanhMucHoa
values	(N'Hoa Hồng',null),
		(N'Hoa Lay Ơn',null),
		(N'Hoa Đồng Tiền',null),
		(N'Hoa Phong Lan',null),
		(N'Hoa Tulip',null)

SET IDENTITY_INSERT Hoa OFF
insert into Hoa
values	(1,N'Hoa Hồng Xanh',N'Bó',25000,30,null,'hongxanh.jpg'),
		(1,N'Hoa Hồng Trắng',N'Bó',20000,10,null,'hongtrang.jpg'),
		(1,N'Hoa Hồng Đỏ',N'Bó',35000,15,null,'hongdo.jpg'),
		(2,N'Hoa Lay Ơn Hồng',N'Bó',15000,17,null,'layonhong.jpg'),
		(2,N'Hoa Lay Ơn Trắng',N'Bó',20000,45,null,'layontrang.jpg'),
		(2,N'Hoa Lay Ơn Xanh',N'Bó',25000,34,null,'layonxanh.jpg'),
		(3,N'Hoa Đồng Tiền Đỏ',N'Bó',100000,39,null,'dongtiendo.jpg'),
		(3,N'Hoa Đồng Tiền Trắng',N'Bó',120000,90,null,'dongtientrang.jpg'),
		(4,N'Hoa Phong Lan Loại 1',N'Bó',35000,20,null,'phonglan1.jpg'),
		(4,N'Hoa Phong Lan Loại 2',N'Bó',650000,23,null,'phonglan2.jpg'),
		(5,N'Hoa Tulip Đỏ',N'Bó',50000,3,null,'	.jpg'),
		(5,N'Hoa Tulip Trắng',N'Bó',45000,5,null,'tuliptrang.jpg')