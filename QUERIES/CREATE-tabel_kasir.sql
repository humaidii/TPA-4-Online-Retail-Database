CREATE TABLE kasir (
	kode_kasir char(5) PRIMARY KEY,
	nama_kasir varchar(50),
	jk_kasir ENUM('Pria', 'Wanita'),
	no_hp varchar(15)
);