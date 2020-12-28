/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2020-12-28 18:06:24
*/

SET FOREIGN_KEY_CHECKS=0;

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
