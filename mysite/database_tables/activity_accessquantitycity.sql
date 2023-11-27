/*
Navicat MySQL Data Transfer

Source Server         : 链接1
Source Server Version : 80029
Source Host           : localhost:3306
Source Database       : activity

Target Server Type    : MYSQL
Target Server Version : 80029
File Encoding         : 65001

Date: 2023-10-05 16:25:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity_accessquantitycity
-- ----------------------------
DROP TABLE IF EXISTS `activity_accessquantitycity`;
CREATE TABLE `activity_accessquantitycity` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `day` varchar(16) NOT NULL,
  `city` varchar(32) NOT NULL,
  `norm` varchar(128) NOT NULL,
  `predict` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of activity_accessquantitycity
-- ----------------------------
INSERT INTO `activity_accessquantitycity` VALUES ('1', '1', '哈尔滨', '20000', '42000');
INSERT INTO `activity_accessquantitycity` VALUES ('2', '2', '哈尔滨', '18000', '34000');
INSERT INTO `activity_accessquantitycity` VALUES ('3', '3', '哈尔滨', '16000', '31000');
INSERT INTO `activity_accessquantitycity` VALUES ('4', '4', '哈尔滨', '15800', '40000');
INSERT INTO `activity_accessquantitycity` VALUES ('5', '5', '哈尔滨', '17000', '48000');
INSERT INTO `activity_accessquantitycity` VALUES ('6', '1', '齐齐哈尔', '2000', '4200');
INSERT INTO `activity_accessquantitycity` VALUES ('7', '2', '齐齐哈尔', '1800', '3400');
INSERT INTO `activity_accessquantitycity` VALUES ('8', '3', '齐齐哈尔', '1600', '3100');
INSERT INTO `activity_accessquantitycity` VALUES ('9', '4', '齐齐哈尔', '1580', '4000');
INSERT INTO `activity_accessquantitycity` VALUES ('10', '5', '齐齐哈尔', '1700', '4800');
INSERT INTO `activity_accessquantitycity` VALUES ('11', '1', '牡丹江', '2000', '4000');
INSERT INTO `activity_accessquantitycity` VALUES ('12', '2', '牡丹江', '1800', '3000');
INSERT INTO `activity_accessquantitycity` VALUES ('13', '3', '牡丹江', '1600', '3000');
INSERT INTO `activity_accessquantitycity` VALUES ('14', '4', '牡丹江', '1580', '4000');
INSERT INTO `activity_accessquantitycity` VALUES ('15', '5', '牡丹江', '1700', '4000');
INSERT INTO `activity_accessquantitycity` VALUES ('16', '1', '佳木斯', '20000', '42000');
INSERT INTO `activity_accessquantitycity` VALUES ('17', '2', '佳木斯', '18000', '34000');
INSERT INTO `activity_accessquantitycity` VALUES ('18', '3', '佳木斯', '16000', '31000');
INSERT INTO `activity_accessquantitycity` VALUES ('19', '4', '佳木斯', '15800', '40000');
INSERT INTO `activity_accessquantitycity` VALUES ('20', '5', '佳木斯', '17000', '48000');
INSERT INTO `activity_accessquantitycity` VALUES ('21', '1', '大庆', '20000', '42000');
INSERT INTO `activity_accessquantitycity` VALUES ('22', '2', '大庆', '18000', '34000');
INSERT INTO `activity_accessquantitycity` VALUES ('23', '3', '大庆', '16000', '31000');
INSERT INTO `activity_accessquantitycity` VALUES ('24', '4', '大庆', '15800', '40000');
INSERT INTO `activity_accessquantitycity` VALUES ('25', '5', '大庆', '17000', '48000');
INSERT INTO `activity_accessquantitycity` VALUES ('26', '1', '绥化', '20000', '42000');
INSERT INTO `activity_accessquantitycity` VALUES ('27', '2', '绥化', '18000', '34000');
INSERT INTO `activity_accessquantitycity` VALUES ('28', '3', '绥化', '16000', '31000');
INSERT INTO `activity_accessquantitycity` VALUES ('29', '4', '绥化', '15800', '40000');
INSERT INTO `activity_accessquantitycity` VALUES ('30', '5', '绥化', '17000', '48000');
INSERT INTO `activity_accessquantitycity` VALUES ('31', '1', '伊春', '20000', '42000');
INSERT INTO `activity_accessquantitycity` VALUES ('32', '2', '伊春', '18000', '34000');
INSERT INTO `activity_accessquantitycity` VALUES ('33', '3', '伊春', '16000', '31000');
INSERT INTO `activity_accessquantitycity` VALUES ('34', '4', '伊春', '15800', '40000');
INSERT INTO `activity_accessquantitycity` VALUES ('35', '5', '伊春', '17000', '48000');
INSERT INTO `activity_accessquantitycity` VALUES ('36', '1', '鸡西', '20000', '42000');
INSERT INTO `activity_accessquantitycity` VALUES ('37', '2', '鸡西', '18000', '34000');
INSERT INTO `activity_accessquantitycity` VALUES ('38', '3', '鸡西', '16000', '31000');
INSERT INTO `activity_accessquantitycity` VALUES ('39', '4', '鸡西', '15800', '40000');
INSERT INTO `activity_accessquantitycity` VALUES ('40', '5', '鸡西', '17000', '48000');
INSERT INTO `activity_accessquantitycity` VALUES ('41', '1', '鹤岗', '20000', '42000');
INSERT INTO `activity_accessquantitycity` VALUES ('42', '2', '鹤岗', '18000', '34000');
INSERT INTO `activity_accessquantitycity` VALUES ('43', '3', '鹤岗', '16000', '31000');
INSERT INTO `activity_accessquantitycity` VALUES ('44', '4', '鹤岗', '15800', '40000');
INSERT INTO `activity_accessquantitycity` VALUES ('45', '5', '鹤岗', '17000', '48000');
INSERT INTO `activity_accessquantitycity` VALUES ('46', '1', '双鸭山', '20000', '42000');
INSERT INTO `activity_accessquantitycity` VALUES ('47', '2', '双鸭山', '18000', '34000');
INSERT INTO `activity_accessquantitycity` VALUES ('48', '3', '双鸭山', '16000', '31000');
INSERT INTO `activity_accessquantitycity` VALUES ('49', '4', '双鸭山', '15800', '40000');
INSERT INTO `activity_accessquantitycity` VALUES ('50', '5', '双鸭山', '17000', '48000');
INSERT INTO `activity_accessquantitycity` VALUES ('51', '1', '七台河', '20000', '42000');
INSERT INTO `activity_accessquantitycity` VALUES ('52', '2', '七台河', '18000', '34000');
INSERT INTO `activity_accessquantitycity` VALUES ('53', '3', '七台河', '16000', '31000');
INSERT INTO `activity_accessquantitycity` VALUES ('54', '4', '七台河', '15800', '40000');
INSERT INTO `activity_accessquantitycity` VALUES ('55', '5', '七台河', '17000', '48000');
INSERT INTO `activity_accessquantitycity` VALUES ('56', '1', '黑河', '20000', '42000');
INSERT INTO `activity_accessquantitycity` VALUES ('57', '2', '黑河', '18000', '34000');
INSERT INTO `activity_accessquantitycity` VALUES ('58', '3', '黑河', '16000', '31000');
INSERT INTO `activity_accessquantitycity` VALUES ('59', '4', '黑河', '15800', '40000');
INSERT INTO `activity_accessquantitycity` VALUES ('60', '5', '黑河', '17000', '48000');
INSERT INTO `activity_accessquantitycity` VALUES ('61', '1', '大兴安岭', '20000', '42000');
INSERT INTO `activity_accessquantitycity` VALUES ('62', '2', '大兴安岭', '18000', '34000');
INSERT INTO `activity_accessquantitycity` VALUES ('63', '3', '大兴安岭', '16000', '31000');
INSERT INTO `activity_accessquantitycity` VALUES ('64', '4', '大兴安岭', '15800', '40000');
INSERT INTO `activity_accessquantitycity` VALUES ('65', '5', '大兴安岭', '17000', '48000');
