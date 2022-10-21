/*
 Navicat Premium Data Transfer

 Source Server         : ayam
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : projek_perpus

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 14/10/2022 10:23:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_biaya_denda
-- ----------------------------
DROP TABLE IF EXISTS `tbl_biaya_denda`;
CREATE TABLE `tbl_biaya_denda`  (
  `id_biaya_denda` int NOT NULL AUTO_INCREMENT,
  `harga_denda` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_tetap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_biaya_denda`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_biaya_denda
-- ----------------------------
INSERT INTO `tbl_biaya_denda` VALUES (1, '4000', 'Aktif', '2019-11-23');

-- ----------------------------
-- Table structure for tbl_buku
-- ----------------------------
DROP TABLE IF EXISTS `tbl_buku`;
CREATE TABLE `tbl_buku`  (
  `id_buku` int NOT NULL AUTO_INCREMENT,
  `buku_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_kategori` int NOT NULL,
  `id_rak` int NOT NULL,
  `sampul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isbn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lampiran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `penerbit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pengarang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `thn_buku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `jml` int NULL DEFAULT NULL,
  `tgl_masuk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_buku`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_buku
-- ----------------------------
INSERT INTO `tbl_buku` VALUES (1, 'BK001', 2, 1, '0', '132-123-234-231', '0', 'CARA MUDAH BELAJAR PEMROGRAMAN', 'INFORMATIKA BANDUNG', 'BUDI RAHARJO ', '2012', '<table class=\"table table-bordered\" style=\"background-color: rgb(255, 255, 255); width: 653px; color: rgb(51, 51, 51);\"><tbody><tr><td style=\"padding: 8px; line-height: 1.42857; border-color: rgb(244, 244, 244);\">Tipe Buku</td><td style=\"padding: 8px; line-height: 1.42857; border-color: rgb(244, 244, 244);\">Kertas</td></tr><tr><td style=\"padding: 8px; line-height: 1.42857; border-color: rgb(244, 244, 244);\">Bahasa</td><td style=\"padding: 8px; line-height: 1.42857; border-color: rgb(244, 244, 244);\">Indonesia</td></tr></tbody></table>', 23, '2022-10-12 21:26:43');
INSERT INTO `tbl_buku` VALUES (2, 'BK002', 5, 2, '0', '9-788175-257665', '0', 'CARA MUDAH MEMASAK AYAM', 'Buku saya', 'Chef Yulita', '2020', '', 5, '2022-10-12 22:36:19');

-- ----------------------------
-- Table structure for tbl_denda
-- ----------------------------
DROP TABLE IF EXISTS `tbl_denda`;
CREATE TABLE `tbl_denda`  (
  `id_denda` int NOT NULL AUTO_INCREMENT,
  `pinjam_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `denda` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lama_waktu` int NOT NULL,
  `tgl_denda` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_denda`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_denda
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kategori`;
CREATE TABLE `tbl_kategori`  (
  `id_kategori` int NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_kategori
-- ----------------------------
INSERT INTO `tbl_kategori` VALUES (2, 'Pemrograman');
INSERT INTO `tbl_kategori` VALUES (5, 'Memasak');

-- ----------------------------
-- Table structure for tbl_login
-- ----------------------------
DROP TABLE IF EXISTS `tbl_login`;
CREATE TABLE `tbl_login`  (
  `id_login` int NOT NULL AUTO_INCREMENT,
  `anggota_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jenkel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `telepon` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_bergabung` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_login`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_login
-- ----------------------------
INSERT INTO `tbl_login` VALUES (1, 'AG001', 'hilda', 'hilda', 'Petugas', 'Hilda', 'Jember', '2000-05-10', 'Laki-Laki', 'Jember', '081234567890', 'hilda@gmail.com', '2019-11-20', 'user_1665587118.gif');
INSERT INTO `tbl_login` VALUES (2, 'AG002', 'putri', 'putri', 'Anggota', 'Putri', 'Jember', '2002-06-22', 'Perempuan', 'Jember', '082123456789', 'putri@gmail.com', '2021-08-30', 'user_1665646217.gif');
INSERT INTO `tbl_login` VALUES (3, 'AG003', 'dina', 'dina', 'Anggota', 'Dina', 'Jember', '2004-06-22', 'Perempuan', 'Jember', '0987654321', 'dina@gmail.com', '2022-09-30', 'user_1665620523.gif');
INSERT INTO `tbl_login` VALUES (4, 'AG004', 'fara', 'fara', 'Anggota', 'Fara', 'Jember', '2004-08-22', 'Perempuan', 'Jember', '0987654321', 'fara@gmail.com', '2002-09-20', 'user_1665620465.gif');
INSERT INTO `tbl_login` VALUES (5, 'AG005', 'admin', 'admin', 'Petugas', 'putridinafarahilda', 'Jember', '2022-10-13', 'Perempuan', 'Jember', '12313', 'sdasd@as', '2022-10-13', 'user_1665645515.gif');

-- ----------------------------
-- Table structure for tbl_pinjam
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pinjam`;
CREATE TABLE `tbl_pinjam`  (
  `id_pinjam` int NOT NULL AUTO_INCREMENT,
  `pinjam_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `anggota_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `buku_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_pinjam` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lama_pinjam` int NOT NULL,
  `tgl_balik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_kembali` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_pinjam`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_pinjam
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_rak
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rak`;
CREATE TABLE `tbl_rak`  (
  `id_rak` int NOT NULL AUTO_INCREMENT,
  `nama_rak` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_rak`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_rak
-- ----------------------------
INSERT INTO `tbl_rak` VALUES (1, 'Rak Buku 1');
INSERT INTO `tbl_rak` VALUES (2, 'Rak Buku 2');

SET FOREIGN_KEY_CHECKS = 1;
