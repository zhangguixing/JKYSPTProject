/*
Navicat MySQL Data Transfer

Source Server         : xing
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : jkglpt

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2019-03-23 21:56:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `drugs_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_5` (`user_id`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for characteristic
-- ----------------------------
DROP TABLE IF EXISTS `characteristic`;
CREATE TABLE `characteristic` (
  `drugs_characteristic_id` int(11) NOT NULL,
  `drugs_characteristic_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`drugs_characteristic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of characteristic
-- ----------------------------
INSERT INTO `characteristic` VALUES ('1', '');

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification` (
  `drugs__classification_id` int(11) NOT NULL,
  `drugs_classification_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`drugs__classification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classification
-- ----------------------------

-- ----------------------------
-- Table structure for drugs
-- ----------------------------
DROP TABLE IF EXISTS `drugs`;
CREATE TABLE `drugs` (
  `drugs_id` int(11) NOT NULL,
  `drugs_name` varchar(32) DEFAULT NULL,
  `drugs_pic` varchar(32) DEFAULT NULL,
  `drugs_price` double DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `drugs_characteristic_id` int(11) DEFAULT NULL,
  `drugs__classification_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`drugs_id`),
  KEY `FK_Reference_1` (`drugs__classification_id`),
  KEY `FK_Reference_2` (`drugs_characteristic_id`),
  KEY `FK_Reference_3` (`seller_id`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`drugs__classification_id`) REFERENCES `classification` (`drugs__classification_id`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`drugs_characteristic_id`) REFERENCES `characteristic` (`drugs_characteristic_id`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of drugs
-- ----------------------------

-- ----------------------------
-- Table structure for drugsinfo
-- ----------------------------
DROP TABLE IF EXISTS `drugsinfo`;
CREATE TABLE `drugsinfo` (
  `drugs_id` int(11) NOT NULL,
  `drugs_desc` text,
  PRIMARY KEY (`drugs_id`),
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`drugs_id`) REFERENCES `drugs` (`drugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of drugsinfo
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `drugs_id` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_4` (`user_id`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for seller
-- ----------------------------
DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller` (
  `id` int(11) NOT NULL,
  `nickname` varchar(32) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seller
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nickname` varchar(32) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
