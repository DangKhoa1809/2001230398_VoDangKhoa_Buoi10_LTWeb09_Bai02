--TẠO DATABASE QL_SanPham--
CREATE DATABASE QL_SanPham;

--DÙNG DATABASE QL_SanPham--
USE QL_SanPham;

--TẠO BẢNG LoaiSanPham--
CREATE TABLE LoaiSanPham (
    MaLoai INT IDENTITY (1, 1) PRIMARY KEY,
    TenLoai NVARCHAR(100) NOT NULL
);

--TẠO BẢNG SanPham--
CREATE TABLE SanPham (
    MaSP INT IDENTITY(1, 1) PRIMARY KEY ,
    TenSP NVARCHAR(100) NOT NULL,
    MaLoai INT,
    HinhAnh NVARCHAR(200),
    Gia DECIMAL(18,2), 
	FOREIGN KEY (MaLoai) REFERENCES LoaiSanPham(MaLoai)
);

--NHẬP LIỆU BẢNG LoaiSanPham--
INSERT INTO LoaiSanPham (TenLoai) VALUES
(N'Áo thun'),
(N'Quần jean'),
(N'Đầm'),
(N'Áo khoác'),
(N'Giày');


--NHẬP LIỆU BẢNG SanPham--
INSERT INTO SanPham (TenSP, MaLoai, HinhAnh, Gia) VALUES
(N'Áo thun nam trắng', 1, N'aothun_nam_trang.jpg', 150000),
(N'Áo thun nữ đen', 1, N'aothun_nu_den.jpg', 170000),
(N'Quần jean nam xanh', 2, N'quan_jean_nam_xanh.jpg', 350000),
(N'Quần jean nữ đen', 2, N'quan_jean_nu_den.jpg', 380000),
(N'Đầm dạ hội đỏ', 3, N'dam_da_hoi_do.jpg', 500000),
(N'Đầm công sở xanh', 3, N'dam_cong_so_xanh.jpg', 420000),
(N'Áo khoác nam kaki', 4, N'ao_khoac_nam_kaki.jpg', 600000),
(N'Áo khoác nữ len', 4, N'ao_khoac_nu_len.jpg', 550000),
(N'Giày thể thao nam', 5, N'giay_the_thao_nam.jpg', 400000),
(N'Giày cao gót nữ', 5, N'giay_cao_got_nu.jpg', 450000);

SELECT*FROM LoaiSanPham;
SELECT*FROM SanPham;