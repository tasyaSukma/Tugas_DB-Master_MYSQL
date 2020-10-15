CREATE DATABASE toko_mds;

use toko_mds;

CREATE TABLE tbl_jabatan (id_jabatan INT AUTO_INCREMENT PRIMARY KEY, nama_jabatan VARCHAR(50));

CREATE TABLE tbl_karyawan (
	id_karyawan INT PRIMARY KEY, 
	nik VARCHAR(20), 
	nama_karyawan VARCHAR(50),
	alamat VARCHAR(150),
	no_tlp VARCHAR(13),
	email VARCHAR(50),
	username VARCHAR(20),
	password VARCHAR(30),
	id_jabatan INT,
	CONSTRAINT FOREIGN KEY (id_jabatan) REFERENCES tbl_jabatan(id_jabatan));

CREATE TABLE tbl_bank (id_bank VARCHAR(3), nama_bank VARCHAR (50));

CREATE TABLE tbl_supplier (
	id_supplier INT AUTO_INCREMENT PRIMARY KEY,
	nama_supplier VARCHAR(50),
	alamat TEXT,
	email VARCHAR(50),
	no_tlp VARCHAR (13),
	id_bank VARCHAR(3),
	nomor_rek VARCHAR(20),
	status set ("Aktif", "Non Aktif")
);

CREATE TABLE tbl_rak (id_rak INT NOT NULL PRIMARY KEY, nama_rak VARCHAR(60));

CREATE TABLE tbl_barang (
	id_barang VARCHAR(8),
	nama_barang VARCHAR(50),
	barcode VARCHAR (30),
	harga INT,
	quantity INT,
	id_rak INT,
	id_supplier INT);

CREATE TABLE tbl_penjualan (
	id_penjualan VARCHAR (30),
	tlg_penjualan TIMESTAMP,
	id_karyawan INT,
	jumlah_barang TINYINT,
	total_penjualan INT,
	total_dibayar INT,
	kembalian INT);

CREATE TABLE tbl_rincianpenjualan (
	id_rincian INT AUTO_INCREMENT PRIMARY KEY,
	id_penjualan VARCHAR (30),
	id_barang VARCHAR(8),
	quantity INT);

);

