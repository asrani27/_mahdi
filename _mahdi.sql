/*
 Navicat Premium Dump SQL

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50739 (5.7.39)
 Source Host           : localhost:3306
 Source Schema         : _mahdi

 Target Server Type    : MySQL
 Target Server Version : 50739 (5.7.39)
 File Encoding         : 65001

 Date: 15/06/2025 17:07:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for barang
-- ----------------------------
DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `satuan_id` int(11) unsigned DEFAULT NULL,
  `stok` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `merk` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `satuan_id_barang` (`satuan_id`) USING BTREE,
  CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`satuan_id`) REFERENCES `satuan` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of barang
-- ----------------------------
BEGIN;
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`, `file`, `merk`, `jenis`, `harga`) VALUES (1, '01S7', 'Mesin Ab231', 72, 0, '2022-05-26 07:02:41', '2025-06-15 07:21:34', '684e747e78dba.jpeg', '-', '-', 1000000);
COMMIT;

-- ----------------------------
-- Table structure for keranjang
-- ----------------------------
DROP TABLE IF EXISTS `keranjang`;
CREATE TABLE `keranjang` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `barang_id` int(11) unsigned DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `toko_id` int(11) unsigned DEFAULT NULL,
  `diskon` float DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `barang_id_keranjang` (`barang_id`) USING BTREE,
  KEY `toko_id_keranjang` (`toko_id`) USING BTREE,
  CONSTRAINT `keranjang_ibfk_1` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `keranjang_ibfk_2` FOREIGN KEY (`toko_id`) REFERENCES `toko` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of keranjang
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for maintenance
-- ----------------------------
DROP TABLE IF EXISTS `maintenance`;
CREATE TABLE `maintenance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `penjualan_id` int(10) unsigned DEFAULT NULL,
  `teknisi_id` int(10) unsigned DEFAULT NULL,
  `jadwal` date DEFAULT NULL,
  `garansi` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of maintenance
-- ----------------------------
BEGIN;
INSERT INTO `maintenance` (`id`, `kode`, `nama`, `jenis`, `penjualan_id`, `teknisi_id`, `jadwal`, `garansi`, `keterangan`, `created_at`, `updated_at`) VALUES (1, 'jihj', 'khjhk', 'jhkj', 82, 1, '2025-06-15', 'khkjh', 'jkh', '2025-06-15 08:00:36', '2025-06-15 08:00:36');
COMMIT;

-- ----------------------------
-- Table structure for pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `keahlian` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pelanggan
-- ----------------------------
BEGIN;
INSERT INTO `pelanggan` (`id`, `nama`, `keahlian`, `alamat`, `telp`, `created_at`, `updated_at`) VALUES (1, 'pelanggan A', 'monitoring', 'jl s adam', '09876567', '2025-06-15 06:42:20', '2025-06-15 06:42:20');
INSERT INTO `pelanggan` (`id`, `nama`, `keahlian`, `alamat`, `telp`, `created_at`, `updated_at`) VALUES (2, 'Pelanggan B', NULL, 'jl', '0987', '2025-06-15 07:01:05', '2025-06-15 07:01:05');
COMMIT;

-- ----------------------------
-- Table structure for penjualan
-- ----------------------------
DROP TABLE IF EXISTS `penjualan`;
CREATE TABLE `penjualan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `nota` varchar(255) DEFAULT NULL,
  `nama_pelanggan` varchar(255) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `toko_id` int(10) unsigned DEFAULT NULL,
  `total_modal` int(11) DEFAULT NULL,
  `pelanggan_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`pelanggan_id`) USING BTREE,
  KEY `toko_id_penjualan` (`toko_id`) USING BTREE,
  CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`toko_id`) REFERENCES `toko` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of penjualan
-- ----------------------------
BEGIN;
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`, `total_modal`, `pelanggan_id`) VALUES (81, '2025-06-15', '0000006', NULL, 2760000, '2025-06-15 07:25:53', '2025-06-15 07:25:53', NULL, NULL, 2);
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`, `total_modal`, `pelanggan_id`) VALUES (82, '2025-06-15', '0000082', NULL, 230000, '2025-06-15 07:35:19', '2025-06-15 07:35:19', NULL, NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for penjualan_detail
-- ----------------------------
DROP TABLE IF EXISTS `penjualan_detail`;
CREATE TABLE `penjualan_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `penjualan_id` int(11) unsigned DEFAULT NULL,
  `toko_id` int(11) unsigned DEFAULT NULL,
  `barang_id` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `diskon` float DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `penjualan_id_pd` (`penjualan_id`) USING BTREE,
  CONSTRAINT `penjualan_detail_ibfk_1` FOREIGN KEY (`penjualan_id`) REFERENCES `penjualan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of penjualan_detail
-- ----------------------------
BEGIN;
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`, `harga_beli`) VALUES (110, 81, NULL, 1, '2025-06-15 07:25:53', '2025-06-15 07:25:53', 230000, 12, 2760000, NULL, NULL, NULL);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`, `harga_beli`) VALUES (111, 82, NULL, 1, '2025-06-15 07:35:19', '2025-06-15 07:35:19', 230000, 1, 230000, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for role_users
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `role_users_user_id_role_id_unique` (`user_id`,`role_id`) USING BTREE,
  KEY `role_users_role_id_foreign` (`role_id`) USING BTREE,
  CONSTRAINT `role_users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of role_users
-- ----------------------------
BEGIN;
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (1, 1);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (2, 1);
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (3, 1);
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'superadmin', '2020-12-23 23:17:35', '2020-12-23 23:17:35');
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'kasir', '2022-05-26 11:44:47', '2022-05-26 11:44:47');
COMMIT;

-- ----------------------------
-- Table structure for satuan
-- ----------------------------
DROP TABLE IF EXISTS `satuan`;
CREATE TABLE `satuan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of satuan
-- ----------------------------
BEGIN;
INSERT INTO `satuan` (`id`, `nama`, `created_at`, `updated_at`) VALUES (69, 'Botol', '2022-05-30 13:56:58', '2022-06-01 07:48:28');
INSERT INTO `satuan` (`id`, `nama`, `created_at`, `updated_at`) VALUES (70, 'Pack', '2022-05-30 13:57:39', '2022-06-01 07:44:31');
INSERT INTO `satuan` (`id`, `nama`, `created_at`, `updated_at`) VALUES (71, 'Bungkus', '2022-06-01 05:57:44', '2022-06-01 05:57:44');
INSERT INTO `satuan` (`id`, `nama`, `created_at`, `updated_at`) VALUES (72, 'kotak', '2022-06-08 13:03:11', '2022-06-08 13:03:11');
COMMIT;

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `pelanggan_id` int(11) DEFAULT NULL,
  `teknisi_id` int(11) DEFAULT NULL,
  `barang_id` int(11) DEFAULT NULL,
  `kerusakan` varchar(255) DEFAULT NULL,
  `sparepart_id` int(11) DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service
-- ----------------------------
BEGIN;
INSERT INTO `service` (`id`, `tanggal`, `pelanggan_id`, `teknisi_id`, `barang_id`, `kerusakan`, `sparepart_id`, `tgl_selesai`, `biaya`, `keterangan`, `created_at`, `updated_at`, `kode`) VALUES (1, '2025-06-15', 2, 1, 1, 'sfsdf', 1, '2025-06-19', 10000, NULL, '2025-06-15 08:19:08', '2025-06-15 08:19:08', 'dsfdsa');
COMMIT;

-- ----------------------------
-- Table structure for sparepart
-- ----------------------------
DROP TABLE IF EXISTS `sparepart`;
CREATE TABLE `sparepart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sparepart
-- ----------------------------
BEGIN;
INSERT INTO `sparepart` (`id`, `kode`, `nama`, `jenis`, `harga`, `keterangan`, `created_at`, `updated_at`) VALUES (1, 'k0898', 'jkh', 'kjhkjhk', '10000', 'dfg', '2025-06-15 06:54:47', '2025-06-15 06:54:47');
COMMIT;

-- ----------------------------
-- Table structure for teknisi
-- ----------------------------
DROP TABLE IF EXISTS `teknisi`;
CREATE TABLE `teknisi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `keahlian` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teknisi
-- ----------------------------
BEGIN;
INSERT INTO `teknisi` (`id`, `nama`, `keahlian`, `alamat`, `telp`, `created_at`, `updated_at`) VALUES (1, 'andi', 'monitoring', 'jl s adam', '09876567', '2025-06-15 06:42:20', '2025-06-15 06:42:20');
COMMIT;

-- ----------------------------
-- Table structure for toko
-- ----------------------------
DROP TABLE IF EXISTS `toko`;
CREATE TABLE `toko` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of toko
-- ----------------------------
BEGIN;
INSERT INTO `toko` (`id`, `kode`, `nama`, `created_at`, `updated_at`) VALUES (1, '02', 'shopee Raja pancing', '2022-05-26 07:23:08', '2022-05-28 12:56:10');
INSERT INTO `toko` (`id`, `kode`, `nama`, `created_at`, `updated_at`) VALUES (2, '002', 'Tokopedia', '2022-05-26 07:23:16', '2022-05-26 07:23:16');
INSERT INTO `toko` (`id`, `kode`, `nama`, `created_at`, `updated_at`) VALUES (3, '01', 'Offline Raja pancing', '2022-05-26 07:23:26', '2022-05-28 12:55:42');
INSERT INTO `toko` (`id`, `kode`, `nama`, `created_at`, `updated_at`) VALUES (4, '03', 'Pray for fishing', '2022-05-28 12:56:38', '2022-05-28 12:56:38');
INSERT INTO `toko` (`id`, `kode`, `nama`, `created_at`, `updated_at`) VALUES (5, '04', 'shopee mixed fishing', '2022-05-28 12:57:17', '2022-05-28 12:57:17');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_username_unique` (`username`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (1, 'admin', NULL, 'admin', '2025-06-15 17:06:06', '$2y$10$EWvbqYJVXAtHOlyX/IR9bOQ7EvE2yQ05gBxZmiFX.BkUYiyo8XHtS', 'zZbEPO4lbS0GInzAb4rpUvbrZAso8A6mxna3r0pyXAmzhxML7Ilmih6mwv3R', '2025-06-15 17:06:06', '2025-06-15 17:06:06');
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (2, 'andilau', NULL, 'andi', '2025-06-10 02:02:32', '$2y$10$RYOkbiENif1ORkeJ7OaQJudtsBuiPr.GflASEIyczTXnno5Ev.PfS', NULL, '2025-06-09 18:02:32', '2025-06-09 18:02:32');
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (3, 'budi', NULL, 'budi', '2025-06-10 02:03:04', '$2y$10$6wgyfa8q.IUv3we5HItvLOp0ikWE4dlIVUq8/f8UxJ82HfgD7OjjG', NULL, '2025-06-09 18:03:04', '2025-06-09 18:03:04');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
