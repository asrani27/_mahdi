/*
 Navicat Premium Data Transfer

 Source Server         : server-rajapancing
 Source Server Type    : MySQL
 Source Server Version : 50738 (5.7.38)
 Source Host           : localhost:3306
 Source Schema         : toko

 Target Server Type    : MySQL
 Target Server Version : 50738 (5.7.38)
 File Encoding         : 65001

 Date: 01/05/2023 17:11:50
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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `satuan_id_barang` (`satuan_id`) USING BTREE,
  CONSTRAINT `satuan_id_barang` FOREIGN KEY (`satuan_id`) REFERENCES `satuan` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of barang
-- ----------------------------
BEGIN;
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (1, '01S7', 'Swivel 7 1000 pcs', 71, 0, '2022-05-26 07:02:41', '2022-06-15 05:32:36');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (3, '01S6', 'Swivel 6 1000 pcs', 71, 6, NULL, '2022-06-21 08:55:16');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (4, '01S5', 'Swivel 5 1000 pcs', 71, 8, '2022-05-28 12:52:33', '2022-06-13 09:06:47');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (5, '01S8', 'Swivel 8 1000 pcs', 71, 97, '2022-05-28 12:53:24', '2022-07-13 09:57:19');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (6, '01SH6', 'Swivel No 6 hengjia 50pcs', 71, 94, '2022-05-28 13:58:26', '2022-06-05 12:39:47');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (7, '01SH7', 'Swivel No 7 hengjia 50pcs', 71, 76, '2022-05-28 13:58:54', '2022-06-12 14:12:15');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (8, '01SH8', 'Swivel No 8 hengjia 50pcs', 71, 96, '2022-05-28 13:59:21', '2022-06-05 12:39:47');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (9, '01SH5', 'Swivel No 5 hengjia 50pcs', 71, 94, '2022-05-28 13:59:43', '2022-06-11 08:21:56');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (10, '02LBP', 'Latex biotex premium 900ml', 69, 14, '2022-05-28 14:42:21', '2022-06-14 12:07:53');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (11, '02LBS', 'Latex biotex Super 900ml 1btl', 69, 1, '2022-05-28 14:43:16', '2022-06-01 14:56:02');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (12, '02LBW', 'Latex biotex White 900ml 1btl', 69, 1, '2022-05-28 14:43:53', '2022-06-01 14:56:02');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (13, '02LBG', 'Latex biotex Gold 900ml 1btl', 69, 1, '2022-05-28 14:44:21', '2022-06-01 08:21:02');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (14, '03BKKSL1', 'Bkk Softlure hook 1 isi 11pcs', 70, 0, '2022-05-30 10:57:07', '2022-06-06 06:30:17');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (15, '03BKKSL2', 'Bkk Softlure hook 2 isi 11pcs', 70, 0, '2022-05-30 10:58:34', '2022-06-04 13:01:53');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (16, '03BKKSL3', 'Bkk Softlure hook 3 isi 11pcs', 70, 0, '2022-05-30 10:59:13', '2022-06-01 08:20:46');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (17, '03BKKSL10', 'Bkk Softlure hook 1/0 isi 11pcs', 70, 1, '2022-05-30 10:59:55', '2022-06-06 06:17:06');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (18, '03BKKSL20', 'Bkk Softlure hook 2/0 isi 11pcs', 70, 90, '2022-05-30 11:00:23', '2022-07-13 08:14:52');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (19, '03BKKSL30', 'Bkk Softlure hook 3/0 isi 10pcs', 70, 0, '2022-05-30 11:01:13', '2022-06-01 08:20:16');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (20, '03BKKSL140', 'Bkk Softlure hook 4/0 isi 9pcs', 70, 0, '2022-05-30 11:01:52', '2022-06-01 08:20:08');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (21, '03BKKSL50', 'Bkk Softlure hook 5/0 isi 8pcs', 70, 0, '2022-05-30 11:02:35', '2022-06-01 08:19:57');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (22, '04BLADE15', 'Blade 50 pcs 1.5', 71, 41, '2022-05-30 11:03:24', '2022-06-13 09:06:47');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (23, '04BLADE17', 'Blade 50 pcs 1.7', 71, 40, '2022-05-30 11:03:46', '2022-06-13 09:06:47');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (24, '04BLADE18', 'Blade 50 pcs 1.8', 71, 46, '2022-05-30 11:04:35', '2022-06-10 12:14:58');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (25, '05MIKA', 'Mika lipat 100pcs', 70, 0, '2022-05-30 11:05:03', '2022-06-04 12:10:35');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (26, '05MIKA500', 'Mika lipat 500pcs', 70, 10, '2022-05-30 11:06:07', '2022-06-08 13:04:42');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (27, '05OVAL', 'Mika oval vaccum', 70, 20, '2022-05-30 11:06:43', '2022-06-14 09:28:35');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (28, '05KOTAK', 'Mika kotak 13 x 5 vaccum', 70, 50, '2022-05-30 11:07:09', '2022-06-08 13:04:15');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (29, '06DHBB1', 'Double hook Blackbulls 1# 60° 100pcs', 71, 46, '2022-05-30 11:09:29', '2022-06-14 12:07:53');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (31, '06DHBB10', 'Double hook Blackbulls 1/0 60° 100pcs', 71, 0, '2022-05-30 11:11:37', '2022-06-01 08:02:50');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (32, '06DHBB3', 'Double hook Blackbulls 3# 60° 100pcs', 71, 50, '2022-05-30 11:12:14', '2022-06-05 12:44:47');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (33, '06DHBB4', 'Double hook Blackbulls 4# 60° 100pcs', 71, 20, '2022-05-30 11:12:43', '2022-06-05 12:44:37');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (34, '06DHBB2', 'Double hook Blackbulls 2# 60° 100pcs', 71, 30, '2022-05-30 11:13:35', '2022-06-08 13:06:15');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (35, '06DHBN1', 'Double hook 1# BN 60° 100pcs', 71, 100, '2022-05-30 11:14:25', '2022-06-08 13:06:37');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (36, '06DHBN2', 'Double hook 2# BN 60° 100pcs', 71, 1, '2022-05-30 11:15:04', '2022-06-08 13:03:59');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (37, '06DHBN10', 'Double hook 1/0 BN 60° 100pcs', 71, 1, '2022-05-30 11:15:41', '2022-06-08 13:03:51');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (38, '06DHBN20', 'Double hook 2/0 BN 60° 100pcs', 71, 10, '2022-05-30 11:16:15', '2022-06-08 13:03:37');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (39, '06DHBN30', 'Double hook 3/0 BN 60° 100pcs', 71, 10, '2022-05-30 11:16:48', '2022-06-08 13:03:28');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (40, '07SKIRT1', 'Skirt lembaran 1', 71, 15, '2022-05-30 11:18:12', '2022-07-13 08:14:52');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (41, '07SKIRT2', 'Skirt lembaran 2', 71, 95, '2022-05-30 11:18:37', '2022-07-13 08:04:23');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (42, '07SKIRT3', 'Skirt lembaran 3', 71, 95, '2022-05-30 11:29:28', '2022-07-13 08:04:23');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (43, '07SKIRT4', 'Skirt lembaran 4', 71, 95, '2022-05-30 11:29:50', '2022-07-13 08:04:23');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (44, '07SKIRT5', 'Skirt lembaran 5', 71, 95, '2022-05-30 11:30:25', '2022-06-09 03:35:23');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (45, '07SKIRT6', 'Skirt lembaran 6', 71, 95, '2022-05-30 11:30:53', '2022-07-13 08:04:23');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (46, '07SKIRT6PCS', 'Skirt 1 bungkus isi 6pcs', 71, 500, '2022-05-30 11:32:23', '2022-06-01 07:54:42');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (47, '07SKIRT60PCS', 'Skirt 1 bungkus isi 6pcs 10 pack', 71, 100, '2022-05-30 11:33:20', '2022-06-05 12:36:49');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (48, '08BM', 'Pewarna Biru malam 45ml', 69, 10, '2022-05-30 13:25:48', '2022-06-01 07:54:29');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (49, '08K', 'Pewarna Kuning  45ml 1btl', 69, 10, '2022-05-30 13:26:35', '2022-06-01 07:54:23');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (50, '08KS', 'Pewarna Kuning Stabilo 45ml 1btl', 69, 10, '2022-05-30 13:28:49', '2022-06-01 07:52:33');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (51, '08HS', 'Pewarna Hijau Stabilo 45ml 1btl', 69, 1, '2022-05-30 13:30:00', '2022-06-01 07:49:00');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (52, '08OS', 'Pewarna Orange Stabilo 45ml 1btl', 69, 10, '2022-05-30 13:31:23', '2022-06-03 03:55:35');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (53, '08P', 'Pewarna Putih 45ml 1btl', 69, 40, '2022-05-30 13:32:18', '2022-06-21 08:55:16');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (54, '06DHBB20', 'Double hook Blackbulls 2/0 60° 100pcs', 71, 99, '2022-06-04 13:13:23', '2022-06-10 12:14:58');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (55, '08SPLIT', 'Split ring 1000pcs 3.5', 71, 7, '2022-06-06 06:21:45', '2022-06-13 09:06:47');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (56, '08SBLT4', 'Splitring bulat 4 1000pcs', 71, 1000, '2022-06-08 13:09:08', '2022-06-08 13:09:08');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (57, '08SBLT45', 'Splitring bulat 4,5 1000pcs', 71, 0, '2022-06-08 13:10:07', '2022-06-08 13:10:07');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (58, '08SBLT50', 'Splitring bulat 5,0 1000pcs', 71, 0, '2022-06-08 13:11:05', '2022-06-08 13:11:05');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (59, '08SPLT35', 'Splitring pipih 3,5 1000pcs', 71, 100, '2022-06-08 13:13:57', '2022-06-08 13:13:57');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (60, '08SPLT40', 'Splitring pipih 4,0 1000pcs', 71, 100, '2022-06-08 13:14:29', '2022-06-08 13:14:29');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (61, '08SPLT45', 'Splitring pipih 4,5 1000pcs', 71, 10, '2022-06-08 13:15:12', '2022-06-08 13:15:12');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (62, '06DHPOHU1', 'Double hook Pohu 1#', 70, 20, '2022-06-08 13:17:30', '2022-06-08 13:17:30');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (63, '06DHPOHU10', 'Double hook Pohu 1/0', 71, 0, '2022-06-08 13:18:15', '2022-06-08 13:18:15');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (64, '06DHPOHU20', 'Double hook Pohu 2/0', 71, 30, '2022-06-08 13:19:01', '2022-06-08 13:19:01');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (65, '09GRIPB', 'Grip Plastik Biru', 70, 2, '2022-06-08 13:20:31', '2022-06-08 13:22:03');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (66, '09GRIPM', 'Grip Plastik Merah', 70, 3, '2022-06-08 13:21:46', '2022-06-08 13:21:46');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (67, '09GRIPH', 'Grip Plastik Hijau', 70, 2, '2022-06-08 13:22:57', '2022-06-08 13:22:57');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (68, '09GRIPP', 'Grip Plastik Putih', 70, 2, '2022-06-08 13:23:22', '2022-06-08 13:23:22');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (69, '08SPLIT50PCS', 'Split ring 50pcs 3,5', 71, 494, '2022-06-10 09:39:58', '2022-06-11 08:21:56');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (70, '08SPLIT40', 'Split ring 50pcs 4,0', 71, 100, '2022-06-10 12:04:13', '2022-06-10 12:04:13');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (71, '08SPLIT45', 'Split ring 50pcs 5,0', 71, 100, '2022-06-10 12:04:41', '2022-06-10 12:04:41');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (72, '02LSPX', 'Latex Supertex 900ml 1btl', 69, 9, '2022-06-11 07:31:43', '2022-06-13 09:06:47');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (73, '02POLY', 'Pengental latex 900ml', 69, 8, '2022-06-11 09:50:07', '2022-06-13 09:06:47');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (74, '05MIKAPANJANG', 'Mika kotak panjang vaccum', 70, 90, '2022-06-27 10:15:14', '2022-06-27 10:15:14');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (75, '001Minnow hijau', 'Minnow hijau', 71, 0, '2022-07-13 07:39:56', '2022-07-13 08:14:52');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (76, '0001', 'Banyu susu aqua', 69, 0, '2022-07-13 08:05:45', '2022-07-13 08:14:52');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (77, '0023', 'Plastik', 70, 98, '2022-07-13 08:11:19', '2022-07-13 08:14:52');
INSERT INTO `barang` (`id`, `kode`, `nama`, `satuan_id`, `stok`, `created_at`, `updated_at`) VALUES (78, '06DHBB30', 'Double hook Blackbulls 3/0', 72, 40, '2022-10-13 03:38:37', '2022-10-13 03:38:37');
COMMIT;

-- ----------------------------
-- Table structure for barang_toko
-- ----------------------------
DROP TABLE IF EXISTS `barang_toko`;
CREATE TABLE `barang_toko` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `barang_id` int(11) unsigned DEFAULT NULL,
  `toko_id` int(11) unsigned DEFAULT NULL,
  `harga` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `harga_modal` int(11) unsigned DEFAULT NULL,
  `harga_grosir` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `barang_id_bt` (`barang_id`) USING BTREE,
  KEY `toko_id_bt` (`toko_id`) USING BTREE,
  CONSTRAINT `barang_id_bt` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `toko_id_bt` FOREIGN KEY (`toko_id`) REFERENCES `toko` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of barang_toko
-- ----------------------------
BEGIN;
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (1, 1, 1, 230000, NULL, '2022-05-29 12:47:33', NULL, NULL);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (2, 1, 2, 2000, NULL, '2022-05-29 12:47:33', NULL, NULL);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (4, 3, 1, 230000, NULL, '2022-05-29 12:47:33', NULL, NULL);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (5, 3, 2, 100, '2022-05-28 01:00:06', '2022-05-29 12:47:33', NULL, NULL);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (7, 1, 3, 230000, '2022-05-28 01:36:51', '2022-06-04 13:07:39', 110000, 190000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (8, 13, 1, 160000, '2022-05-29 11:06:11', '2022-05-29 12:47:33', NULL, NULL);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (9, 12, 1, 135000, '2022-05-29 11:06:41', '2022-05-29 12:47:33', NULL, NULL);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (10, 11, 1, 150000, '2022-05-29 11:07:10', '2022-05-29 12:47:33', NULL, NULL);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (11, 10, 1, 120000, '2022-05-29 11:07:34', '2022-05-29 12:47:33', NULL, NULL);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (12, 9, 1, 20000, '2022-05-29 11:07:57', '2022-05-29 12:47:33', NULL, NULL);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (13, 8, 1, 20000, '2022-05-29 11:08:04', '2022-05-29 12:47:33', NULL, NULL);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (14, 7, 1, 20000, '2022-05-29 11:08:14', '2022-05-29 12:47:33', NULL, NULL);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (15, 6, 1, 20000, '2022-05-29 11:08:22', '2022-05-29 12:47:33', NULL, NULL);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (16, 5, 1, 230000, '2022-05-29 11:08:29', '2022-05-29 12:47:33', NULL, NULL);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (17, 4, 1, 230000, '2022-05-29 11:09:05', '2022-05-29 12:47:33', NULL, NULL);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (18, 3, 3, 230000, '2022-05-29 11:14:09', '2022-06-04 13:07:20', 110000, 190000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (19, 5, 3, 230000, '2022-05-29 11:14:21', '2022-06-04 13:06:33', 110000, 190000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (20, 4, 3, 230000, '2022-05-29 11:14:27', '2022-06-04 13:06:58', 110000, 190000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (21, 6, 3, 20000, '2022-05-29 11:14:35', '2022-06-04 13:05:26', 15000, 17500);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (22, 7, 3, 20000, '2022-05-29 11:14:40', '2022-06-04 13:05:05', 15000, 17500);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (23, 8, 3, 20000, '2022-05-29 11:14:47', '2022-06-04 13:04:43', 15000, 17500);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (24, 9, 3, 20000, '2022-05-29 11:14:53', '2022-06-04 13:04:11', 15000, 17500);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (25, 10, 3, 120000, '2022-05-29 11:15:00', '2022-05-29 12:13:40', 0, NULL);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (26, 11, 3, 150000, '2022-05-29 11:15:13', '2022-05-29 12:13:37', 0, NULL);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (27, 12, 3, 135000, '2022-05-29 11:15:21', '2022-05-29 12:13:35', 0, NULL);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (28, 13, 3, 160000, '2022-05-29 11:15:29', '2022-05-29 13:10:31', 105000, 115000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (29, 13, 5, 1000, '2022-05-29 13:10:10', '2022-05-29 13:10:10', 0, 0);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (30, 12, 5, 500, '2022-05-29 13:11:21', '2022-05-29 13:11:21', 0, 0);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (31, 53, 3, 30000, '2022-05-30 13:41:22', '2022-05-30 13:42:22', 20000, 25000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (32, 52, 3, 30000, '2022-05-30 13:43:20', '2022-06-04 12:12:20', 20000, 25000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (33, 47, 3, 160000, '2022-05-30 13:47:13', '2022-05-30 13:51:22', 90000, 160000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (34, 46, 3, 19000, '2022-05-30 13:53:25', '2022-05-30 13:53:25', 9000, 18000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (35, 51, 3, 30000, '2022-06-04 12:12:47', '2022-06-04 12:12:47', 20000, 25000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (36, 50, 3, 30000, '2022-06-04 12:13:21', '2022-06-04 12:13:21', 20000, 25000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (37, 49, 3, 30000, '2022-06-04 12:13:41', '2022-06-04 12:13:41', 20000, 25000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (38, 48, 3, 20000, '2022-06-04 12:14:16', '2022-06-04 12:14:16', 12000, 15000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (39, 45, 3, 19000, '2022-06-04 12:15:20', '2022-06-04 12:15:20', 7000, 12000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (40, 44, 3, 19000, '2022-06-04 12:15:52', '2022-06-04 12:15:52', 7000, 12000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (41, 43, 3, 19000, '2022-06-04 12:16:29', '2022-06-04 12:16:29', 7000, 12000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (42, 42, 3, 19000, '2022-06-04 12:16:56', '2022-06-04 12:16:56', 7000, 12000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (43, 41, 3, 19000, '2022-06-04 12:17:12', '2022-06-04 12:17:12', 7000, 12000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (44, 40, 3, 19000, '2022-06-04 12:17:33', '2022-06-04 12:17:33', 7000, 12000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (45, 39, 3, 190000, '2022-06-04 12:18:39', '2022-06-04 12:18:39', 120000, 175000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (46, 38, 3, 185000, '2022-06-04 12:19:33', '2022-06-04 12:19:33', 110000, 165000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (47, 37, 3, 175000, '2022-06-04 12:20:23', '2022-06-04 12:20:23', 100000, 1600000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (48, 36, 3, 165000, '2022-06-04 12:21:01', '2022-06-04 12:22:46', 80000, 150000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (49, 35, 3, 165000, '2022-06-04 12:21:56', '2022-06-04 12:22:23', 90000, 165000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (50, 34, 3, 230000, '2022-06-04 12:34:27', '2022-06-04 12:34:27', 95000, 170000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (51, 33, 3, 220000, '2022-06-04 12:35:29', '2022-06-04 12:35:29', 90000, 170000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (52, 32, 3, 225000, '2022-06-04 12:38:11', '2022-06-04 12:38:11', 90000, 170000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (53, 31, 3, 250000, '2022-06-04 12:39:07', '2022-06-04 12:39:07', 125000, 175000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (54, 29, 3, 240000, '2022-06-04 12:44:20', '2022-06-04 12:44:20', 100000, 175000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (55, 28, 3, 100000, '2022-06-04 12:48:22', '2022-06-04 12:48:22', 60000, 75000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (56, 27, 3, 90000, '2022-06-04 12:49:14', '2022-06-04 12:49:14', 42000, 67000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (57, 25, 3, 70000, '2022-06-04 12:51:03', '2022-06-04 12:51:03', 390000, 65000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (58, 24, 3, 60000, '2022-06-04 12:51:55', '2022-06-04 12:54:09', 19500, 45000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (59, 23, 3, 55000, '2022-06-04 12:55:03', '2022-06-04 12:55:03', 22500, 40000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (60, 22, 3, 45000, '2022-06-04 12:56:54', '2022-06-04 12:56:54', 20000, 40000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (61, 21, 3, 38000, '2022-06-04 12:58:32', '2022-06-04 12:58:32', 15000, 30000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (62, 20, 3, 38000, '2022-06-04 12:58:54', '2022-06-04 12:58:54', 15000, 30000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (63, 19, 3, 38000, '2022-06-04 12:59:19', '2022-06-04 12:59:19', 15000, 30000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (64, 18, 3, 38000, '2022-06-04 12:59:57', '2022-06-04 12:59:57', 15000, 30000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (65, 17, 3, 38000, '2022-06-04 13:00:23', '2022-06-04 13:00:23', 15000, 30000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (66, 16, 3, 38000, '2022-06-04 13:00:50', '2022-06-04 13:00:50', 15000, 30000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (67, 15, 3, 38000, '2022-06-04 13:02:26', '2022-06-04 13:02:26', 15000, 30000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (68, 14, 3, 38000, '2022-06-04 13:02:59', '2022-06-04 13:02:59', 15000, 30000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (69, 54, 3, 260000, '2022-06-04 13:15:30', '2022-06-04 13:15:30', 135000, 180000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (70, 55, 3, 250000, '2022-06-06 06:28:45', '2022-06-06 06:28:45', 100000, 200000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (71, 69, 3, 20000, '2022-06-10 12:00:38', '2022-06-10 12:02:41', 7000, 17500);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (72, 71, 3, 25000, '2022-06-10 12:08:25', '2022-06-10 12:08:25', 5000, 22500);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (73, 70, 3, 22500, '2022-06-10 12:11:40', '2022-06-10 12:11:40', 5000, 20000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (74, 72, 3, 125000, '2022-06-11 07:35:26', '2022-06-11 07:35:26', 60000, 83000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (75, 73, 3, 100000, '2022-06-11 09:50:48', '2022-06-11 09:51:32', 70000, 90000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (76, 74, 3, 1000, '2022-06-27 10:16:37', '2022-06-27 10:16:37', 680, 950);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (77, 75, 3, 15000, '2022-07-13 07:40:32', '2022-07-13 07:40:32', 5000, 8000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (78, 76, 3, 8000, '2022-07-13 08:06:51', '2022-07-13 08:06:51', 5000, 8000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (79, 77, 3, 35000, '2022-07-13 08:11:45', '2022-07-13 08:11:45', 10000, 30000);
INSERT INTO `barang_toko` (`id`, `barang_id`, `toko_id`, `harga`, `created_at`, `updated_at`, `harga_modal`, `harga_grosir`) VALUES (80, 78, 3, 300000, '2022-10-13 03:39:56', '2022-10-13 03:39:56', 150000, 240000);
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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `barang_id_keranjang` (`barang_id`) USING BTREE,
  KEY `toko_id_keranjang` (`toko_id`) USING BTREE,
  CONSTRAINT `barang_id_keranjang` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `toko_id_keranjang` FOREIGN KEY (`toko_id`) REFERENCES `toko` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of keranjang
-- ----------------------------
BEGIN;
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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `toko_id_penjualan` (`toko_id`) USING BTREE,
  CONSTRAINT `toko_id_penjualan` FOREIGN KEY (`toko_id`) REFERENCES `toko` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of penjualan
-- ----------------------------
BEGIN;
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`) VALUES (44, '2022-06-05', '30000001', '-', 520000, '2022-06-05 12:39:47', '2022-06-05 12:39:47', 3);
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`) VALUES (45, '2022-06-05', '30000002', '-', 240000, '2022-06-05 12:45:48', '2022-06-05 12:45:48', 3);
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`) VALUES (46, '2022-06-05', '30000003', '-', 240000, '2022-06-05 13:07:48', '2022-06-05 13:07:48', 3);
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`) VALUES (47, '2022-06-06', '30000004', '-', 3538000, '2022-06-06 06:30:17', '2022-06-06 06:30:17', 3);
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`) VALUES (48, '2022-06-07', '30000005', '-', 990000, '2022-06-07 14:04:52', '2022-06-07 14:04:52', 3);
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`) VALUES (50, '2022-06-09', '30000006', '-', 480000, '2022-06-09 03:35:23', '2022-06-09 03:35:23', 3);
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`) VALUES (51, '2022-06-10', '30000007', '-', 930000, '2022-06-10 12:14:58', '2022-06-10 12:14:58', 3);
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`) VALUES (52, '2022-06-10', '30000008', '-', 660000, '2022-06-10 12:22:52', '2022-06-10 12:22:52', 3);
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`) VALUES (53, '2022-06-11', '30000009', '-', 4180000, '2022-06-11 08:19:22', '2022-06-11 08:19:22', 3);
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`) VALUES (54, '2022-06-11', '30000010', '-', 650000, '2022-06-11 08:21:56', '2022-06-11 08:21:56', 3);
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`) VALUES (55, '2022-06-12', '30000011', '-', 1750000, '2022-06-12 14:11:18', '2022-06-12 14:11:18', 3);
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`) VALUES (56, '2022-06-12', '30000012', '-', 470000, '2022-06-12 14:12:15', '2022-06-12 14:12:15', 3);
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`) VALUES (57, '2022-06-13', '30000013', '-', 2280000, '2022-06-13 09:06:47', '2022-06-13 09:06:47', 3);
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`) VALUES (58, '2022-06-14', '30000014', '-', 3200000, '2022-06-14 09:28:35', '2022-06-14 09:28:35', 3);
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`) VALUES (59, '2022-06-14', '30000015', '-', 590000, '2022-06-14 12:07:53', '2022-06-14 12:07:53', 3);
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`) VALUES (60, '2022-06-15', '30000016', '-', 290000, '2022-06-15 05:32:36', '2022-06-15 05:32:36', 3);
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`) VALUES (62, '2022-06-21', '30000017', '-', 1045000, '2022-06-21 08:55:16', '2022-06-21 08:55:16', 3);
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`) VALUES (67, '2022-07-13', '30000018', '-', 1608000, '2022-07-13 08:14:52', '2022-07-13 08:14:52', 3);
INSERT INTO `penjualan` (`id`, `tanggal`, `nota`, `nama_pelanggan`, `total`, `created_at`, `updated_at`, `toko_id`) VALUES (71, '2022-07-13', '30000019', '-', 230000, '2022-07-13 09:57:19', '2022-07-13 09:57:19', 3);
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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `penjualan_id_pd` (`penjualan_id`) USING BTREE,
  CONSTRAINT `penjualan_id_pd` FOREIGN KEY (`penjualan_id`) REFERENCES `penjualan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of penjualan_detail
-- ----------------------------
BEGIN;
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (19, 44, 3, 6, '2022-06-05 12:39:47', '2022-06-05 12:39:47', 20000, 6, 120000, 0, 20000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (20, 44, 3, 7, '2022-06-05 12:39:47', '2022-06-05 12:39:47', 20000, 4, 80000, 0, 20000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (21, 44, 3, 8, '2022-06-05 12:39:47', '2022-06-05 12:39:47', 20000, 4, 80000, 0, 20000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (22, 44, 3, 10, '2022-06-05 12:39:47', '2022-06-05 12:39:47', 120000, 2, 240000, 0, 120000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (23, 45, 3, 29, '2022-06-05 12:45:48', '2022-06-05 12:45:48', 240000, 1, 240000, 0, 240000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (24, 46, 3, 10, '2022-06-05 13:07:48', '2022-06-05 13:07:48', 120000, 2, 240000, 0, 120000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (25, 47, 3, 36, '2022-06-06 06:30:17', '2022-06-06 06:30:17', 165000, 14, 2310000, 0, 165000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (26, 47, 3, 1, '2022-06-06 06:30:17', '2022-06-06 06:30:17', 230000, 1, 230000, 0, 230000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (27, 47, 3, 3, '2022-06-06 06:30:17', '2022-06-06 06:30:17', 230000, 1, 230000, 0, 230000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (28, 47, 3, 14, '2022-06-06 06:30:17', '2022-06-06 06:30:17', 38000, 1, 38000, 0, 38000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (29, 47, 3, 55, '2022-06-06 06:30:17', '2022-06-06 06:30:17', 250000, 1, 250000, 0, 250000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (30, 47, 3, 10, '2022-06-06 06:30:17', '2022-06-06 06:30:17', 120000, 4, 480000, 0, 120000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (31, 48, 3, 1, '2022-06-07 14:04:52', '2022-06-07 14:04:52', 230000, 1, 230000, 0, 230000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (32, 48, 3, 4, '2022-06-07 14:04:52', '2022-06-07 14:04:52', 230000, 1, 230000, 0, 230000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (33, 48, 3, 10, '2022-06-07 14:04:52', '2022-06-07 14:04:52', 120000, 2, 240000, 0, 120000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (34, 48, 3, 55, '2022-06-07 14:04:52', '2022-06-07 14:04:52', 250000, 1, 250000, 0, 250000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (35, 48, 3, 22, '2022-06-07 14:04:52', '2022-06-07 14:04:52', 45000, 1, 40000, 11.1111, 40000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (39, 50, 3, 40, '2022-06-09 03:35:23', '2022-06-09 03:35:23', 19000, 5, 80000, 15.7895, 16000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (40, 50, 3, 41, '2022-06-09 03:35:23', '2022-06-09 03:35:23', 19000, 5, 80000, 15.7895, 16000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (41, 50, 3, 42, '2022-06-09 03:35:23', '2022-06-09 03:35:23', 19000, 5, 80000, 15.7895, 16000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (42, 50, 3, 43, '2022-06-09 03:35:23', '2022-06-09 03:35:23', 19000, 5, 80000, 15.7895, 16000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (43, 50, 3, 44, '2022-06-09 03:35:23', '2022-06-09 03:35:23', 19000, 5, 80000, 15.7895, 16000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (44, 50, 3, 45, '2022-06-09 03:35:23', '2022-06-09 03:35:23', 19000, 5, 80000, 15.7895, 16000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (45, 51, 3, 10, '2022-06-10 12:14:58', '2022-06-10 12:14:58', 120000, 1, 120000, NULL, 120000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (46, 51, 3, 54, '2022-06-10 12:14:58', '2022-06-10 12:14:58', 260000, 1, 260000, NULL, 260000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (47, 51, 3, 29, '2022-06-10 12:14:58', '2022-06-10 12:14:58', 240000, 1, 240000, NULL, 240000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (48, 51, 3, 24, '2022-06-10 12:14:58', '2022-06-10 12:14:58', 60000, 4, 200000, 16.6667, 50000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (49, 51, 3, 53, '2022-06-10 12:14:58', '2022-06-10 12:14:58', 30000, 1, 30000, NULL, 30000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (50, 51, 3, 69, '2022-06-10 12:14:58', '2022-06-10 12:14:58', 20000, 4, 80000, NULL, 20000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (51, 52, 3, 1, '2022-06-10 12:22:52', '2022-06-10 12:22:52', 230000, 1, 220000, 4.34783, 220000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (52, 52, 3, 3, '2022-06-10 12:22:52', '2022-06-10 12:22:52', 230000, 1, 220000, 4.34783, 220000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (53, 52, 3, 4, '2022-06-10 12:22:52', '2022-06-10 12:22:52', 230000, 1, 220000, 4.34783, 220000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (54, 53, 3, 27, '2022-06-11 08:19:22', '2022-06-11 08:19:22', 90000, 50, 3350000, 25.5556, 67000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (55, 53, 3, 72, '2022-06-11 08:19:22', '2022-06-11 08:19:22', 125000, 10, 830000, 33.6, 83000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (56, 54, 3, 9, '2022-06-11 08:21:56', '2022-06-11 08:21:56', 20000, 6, 120000, NULL, 20000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (57, 54, 3, 69, '2022-06-11 08:21:56', '2022-06-11 08:21:56', 20000, 2, 40000, NULL, 20000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (58, 54, 3, 10, '2022-06-11 08:21:56', '2022-06-11 08:21:56', 120000, 1, 120000, NULL, 120000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (59, 54, 3, 23, '2022-06-11 08:21:56', '2022-06-11 08:21:56', 55000, 2, 100000, 9.09091, 50000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (60, 54, 3, 29, '2022-06-11 08:21:56', '2022-06-11 08:21:56', 240000, 1, 240000, NULL, 240000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (61, 54, 3, 53, '2022-06-11 08:21:56', '2022-06-11 08:21:56', 30000, 1, 30000, NULL, 30000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (62, 55, 3, 27, '2022-06-12 14:11:18', '2022-06-12 14:11:18', 90000, 15, 1200000, 11.1111, 80000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (63, 55, 3, 3, '2022-06-12 14:11:18', '2022-06-12 14:11:18', 230000, 1, 230000, NULL, 230000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (64, 55, 3, 5, '2022-06-12 14:11:18', '2022-06-12 14:11:18', 230000, 1, 230000, NULL, 230000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (65, 55, 3, 73, '2022-06-12 14:11:18', '2022-06-12 14:11:18', 100000, 1, 90000, 10, 90000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (66, 56, 3, 10, '2022-06-12 14:12:15', '2022-06-12 14:12:15', 120000, 1, 120000, NULL, 120000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (67, 56, 3, 7, '2022-06-12 14:12:15', '2022-06-12 14:12:15', 20000, 20, 350000, 12.5, 17500);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (68, 57, 3, 1, '2022-06-13 09:06:47', '2022-06-13 09:06:47', 230000, 1, 230000, NULL, 230000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (69, 57, 3, 4, '2022-06-13 09:06:47', '2022-06-13 09:06:47', 230000, 1, 230000, NULL, 230000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (70, 57, 3, 55, '2022-06-13 09:06:47', '2022-06-13 09:06:47', 250000, 1, 250000, NULL, 250000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (71, 57, 3, 22, '2022-06-13 09:06:47', '2022-06-13 09:06:47', 45000, 8, 320000, 11.1111, 40000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (72, 57, 3, 23, '2022-06-13 09:06:47', '2022-06-13 09:06:47', 55000, 8, 340000, 22.7273, 42500);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (73, 57, 3, 27, '2022-06-13 09:06:47', '2022-06-13 09:06:47', 90000, 6, 480000, 11.1111, 80000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (74, 57, 3, 10, '2022-06-13 09:06:47', '2022-06-13 09:06:47', 120000, 2, 200000, 16.6667, 100000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (75, 57, 3, 72, '2022-06-13 09:06:47', '2022-06-13 09:06:47', 125000, 1, 100000, 20, 100000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (76, 57, 3, 53, '2022-06-13 09:06:47', '2022-06-13 09:06:47', 30000, 1, 30000, NULL, 30000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (77, 57, 3, 73, '2022-06-13 09:06:47', '2022-06-13 09:06:47', 100000, 1, 100000, NULL, 100000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (78, 58, 3, 27, '2022-06-14 09:28:35', '2022-06-14 09:28:35', 90000, 40, 3200000, 11.1111, 80000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (79, 59, 3, 1, '2022-06-14 12:07:53', '2022-06-14 12:07:53', 230000, 1, 230000, NULL, 230000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (80, 59, 3, 10, '2022-06-14 12:07:53', '2022-06-14 12:07:53', 120000, 1, 120000, NULL, 120000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (81, 59, 3, 29, '2022-06-14 12:07:53', '2022-06-14 12:07:53', 240000, 1, 240000, NULL, 240000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (82, 60, 3, 53, '2022-06-15 05:32:36', '2022-06-15 05:32:36', 30000, 2, 60000, NULL, 30000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (83, 60, 3, 1, '2022-06-15 05:32:36', '2022-06-15 05:32:36', 230000, 1, 230000, NULL, 230000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (87, 62, 3, 5, '2022-06-21 08:55:16', '2022-06-21 08:55:16', 230000, 2, 460000, NULL, 230000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (88, 62, 3, 3, '2022-06-21 08:55:16', '2022-06-21 08:55:16', 230000, 2, 460000, NULL, 230000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (89, 62, 3, 53, '2022-06-21 08:55:16', '2022-06-21 08:55:16', 30000, 5, 125000, 16.6667, 25000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (100, 67, 3, 18, '2022-07-13 08:14:52', '2022-07-13 08:14:52', 38000, 10, 300000, 21.0526, 30000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (101, 67, 3, 76, '2022-07-13 08:14:52', '2022-07-13 08:14:52', 8000, 1, 8000, NULL, 8000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (102, 67, 3, 40, '2022-07-13 08:14:52', '2022-07-13 08:14:52', 19000, 80, 960000, 36.8421, 12000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (103, 67, 3, 75, '2022-07-13 08:14:52', '2022-07-13 08:14:52', 15000, 35, 280000, 46.6667, 8000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (104, 67, 3, 77, '2022-07-13 08:14:52', '2022-07-13 08:14:52', 35000, 2, 60000, 14.2857, 30000);
INSERT INTO `penjualan_detail` (`id`, `penjualan_id`, `toko_id`, `barang_id`, `created_at`, `updated_at`, `harga`, `jumlah`, `total`, `diskon`, `harga_jual`) VALUES (105, 71, 3, 5, '2022-07-13 09:57:19', '2022-07-13 09:57:19', 230000, 1, 230000, NULL, 230000);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (1, 'admin', NULL, 'admin', '2023-03-16 13:38:28', '$2y$10$EWvbqYJVXAtHOlyX/IR9bOQ7EvE2yQ05gBxZmiFX.BkUYiyo8XHtS', 'OCiK3x8zitP8dgRm8S1VxpyjCsjAmtvUoc3j4hCHl3l7OXqfjnVXUdgJqDDZ', '2023-03-16 13:38:28', '2023-03-16 13:38:28');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
