CREATE TABLE transaksi(
	no_transaksi char(10) PRIMARY KEY,
	kode_kasir char(5),
	kode_pelanggan char(5),
	kode_barang char(5),
	tgl_transaksi date,
	jumlah_barang int,
	total_harga int,
    CONSTRAINT `kasir` FOREIGN KEY (`kode_kasir`) REFERENCES `penjualan_barang`.`kasir`(`kode_kasir`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `pelanggan` FOREIGN KEY (`kode_pelanggan`) REFERENCES `penjualan_barang`.`pelanggan`(`kode_pelanggan`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `barang` FOREIGN KEY (`kode_barang`) REFERENCES `penjualan_barang`.`barang`(`kode_barang`) ON UPDATE CASCADE ON DELETE CASCADE
);