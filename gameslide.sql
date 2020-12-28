/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2020-12-28 18:06:19
*/

SET FOREIGN_KEY_CHECKS=0;

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
