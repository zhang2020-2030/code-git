/*
Navicat MySQL Data Transfer

Source Server         : 链接1
Source Server Version : 80029
Source Host           : localhost:3306
Source Database       : activity

Target Server Type    : MYSQL
Target Server Version : 80029
File Encoding         : 65001

Date: 2023-10-05 16:24:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity_alertmessageall
-- ----------------------------
DROP TABLE IF EXISTS `activity_alertmessageall`;
CREATE TABLE `activity_alertmessageall` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `norm_num` varchar(32) NOT NULL,
  `alert_num` varchar(32) NOT NULL,
  `exception_num` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of activity_alertmessageall
-- ----------------------------
INSERT INTO `activity_alertmessageall` VALUES ('1', '9', '3', '1');
