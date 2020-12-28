/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2020-12-28 18:01:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for backgroundimg
-- ----------------------------
DROP TABLE IF EXISTS `backgroundimg`;
CREATE TABLE `backgroundimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `background_path` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of backgroundimg
-- ----------------------------
INSERT INTO `backgroundimg` VALUES ('1', 'http://192.168.13.211:8080/images/upload_21bbc447e44b5c385ed250ee8cd6cc89.jpg', null);

-- ----------------------------
-- Table structure for gameslide
-- ----------------------------
DROP TABLE IF EXISTS `gameslide`;
CREATE TABLE `gameslide` (
  `uid` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gameslide
-- ----------------------------
INSERT INTO `gameslide` VALUES ('0', '12', 'https://wsy.dianchu.com/api/upload/image_carousel/1606700973-1.jpg', 'done');
INSERT INTO `gameslide` VALUES ('1', '3', 'https://wsy.dianchu.com/api/upload/image_carousel/1606701049-1.jpg', 'done');
INSERT INTO `gameslide` VALUES ('2', '3', 'https://wsy.dianchu.com/api/upload/image_carousel/1606701077-1.jpg', 'done');
INSERT INTO `gameslide` VALUES ('3', '3', 'https://wsy.dianchu.com/api/upload/image_carousel/1606701112-1.jpg', 'done');
INSERT INTO `gameslide` VALUES ('4', '5', 'https://wsy.dianchu.com/api/upload/image_carousel/1606701136-1.jpg', 'done');

-- ----------------------------
-- Table structure for logoimg
-- ----------------------------
DROP TABLE IF EXISTS `logoimg`;
CREATE TABLE `logoimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo_path` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logoimg
-- ----------------------------
INSERT INTO `logoimg` VALUES ('1', 'http://192.168.13.211:8080/images/upload_480c57dba68cd116da837903611064fa.png', null);

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `uid` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of token
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'xq', '123456', '1');
INSERT INTO `user` VALUES ('2', 'xieqi97@163.com', '123456', '1');
