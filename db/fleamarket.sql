/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : fleamarket

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 02/05/2020 22:28:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `phone` bigint(16) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `userRole` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for catelog
-- ----------------------------
DROP TABLE IF EXISTS `catelog`;
CREATE TABLE `catelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `status` tinyint(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of catelog
-- ----------------------------
BEGIN;
INSERT INTO `catelog` VALUES (1, '闲置数码', 1, 1);
INSERT INTO `catelog` VALUES (2, '校园代步', 0, 1);
INSERT INTO `catelog` VALUES (3, '电器日用', 0, 1);
INSERT INTO `catelog` VALUES (4, '图书教材', 2, 1);
INSERT INTO `catelog` VALUES (5, '美妆衣物', 0, 1);
INSERT INTO `catelog` VALUES (6, '运动棋牌', 0, 1);
INSERT INTO `catelog` VALUES (7, '票券小物', 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `create_at` varchar(25) DEFAULT NULL,
  `content` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for focus
-- ----------------------------
DROP TABLE IF EXISTS `focus`;
CREATE TABLE `focus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catelog_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `real_price` double DEFAULT NULL,
  `start_time` varchar(20) DEFAULT NULL,
  `end_time` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `polish_time` varchar(20) DEFAULT NULL,
  `describle` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
BEGIN;
INSERT INTO `goods` VALUES (4, 4, 1, '认知与感悟', 100, 110, '2020-05-02', '2020-05-12', 0, '2020-05-02', '励志成功小说');
INSERT INTO `goods` VALUES (5, 2, 1, '认知与感悟', 100, 110, '2020-05-02', '2020-05-12', 0, '2020-05-02', '励志成功小说');
INSERT INTO `goods` VALUES (6, 1, 1, '相机', 100, 110, '2020-05-02', '2020-05-12', 1, '2020-05-02', '好东西哦');
COMMIT;

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `img_url` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image
-- ----------------------------
BEGIN;
INSERT INTO `image` VALUES (4, 4, '');
INSERT INTO `image` VALUES (5, 5, '7bac11ee-4cc7-4cf4-ab5d-bda2dd10d817.jpg');
INSERT INTO `image` VALUES (6, 6, 'feaa1eb1-8d5b-47a9-9825-73d8aef1569b.jpg');
COMMIT;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_at` varchar(20) DEFAULT NULL,
  `context` varchar(5412) DEFAULT NULL,
  `status` tinyint(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
BEGIN;
INSERT INTO `notice` VALUES (1, '2020-05-02 22:15:17', '相机一套', 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `order_num` bigint(17) DEFAULT NULL,
  `order_price` double DEFAULT NULL,
  `order_state` int(11) DEFAULT NULL,
  `order_information` varchar(500) DEFAULT NULL,
  `order_date` varchar(25) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for purse
-- ----------------------------
DROP TABLE IF EXISTS `purse`;
CREATE TABLE `purse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `recharge` double DEFAULT NULL,
  `withdrawals` double DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purse
-- ----------------------------
BEGIN;
INSERT INTO `purse` VALUES (1, 1, 1000, 1000, 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `atuser_id` int(11) DEFAULT NULL,
  `commet_id` int(11) DEFAULT NULL,
  `create_at` varchar(20) DEFAULT NULL,
  `content` varchar(5555) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` char(13) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `create_at` varchar(20) DEFAULT NULL,
  `goods_num` int(11) DEFAULT NULL,
  `power` int(11) DEFAULT NULL,
  `last_login` varchar(20) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, '17343149209', 'lq', '8137A0C45C03760DCAC270272EC39386', NULL, '2020-05-02 21:21', 3, 100, NULL, 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
