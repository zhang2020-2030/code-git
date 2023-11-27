/*
Navicat MySQL Data Transfer

Source Server         : 链接1
Source Server Version : 80029
Source Host           : localhost:3306
Source Database       : activity

Target Server Type    : MYSQL
Target Server Version : 80029
File Encoding         : 65001

Date: 2023-10-05 16:25:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity_accessquantityall
-- ----------------------------
DROP TABLE IF EXISTS `activity_accessquantityall`;
CREATE TABLE `activity_accessquantityall` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `day` varchar(16) NOT NULL,
  `norm` varchar(128) NOT NULL,
  `predict` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of activity_accessquantityall
-- ----------------------------
INSERT INTO `activity_accessquantityall` VALUES ('1', '1', '200000', '420000');
INSERT INTO `activity_accessquantityall` VALUES ('2', '2', '180000', '340000');
INSERT INTO `activity_accessquantityall` VALUES ('3', '3', '116000', '311000');
INSERT INTO `activity_accessquantityall` VALUES ('4', '4', '115800', '140000');
INSERT INTO `activity_accessquantityall` VALUES ('5', '5', '117000', '148000');
