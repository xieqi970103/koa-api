/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2020-12-28 18:06:12
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
