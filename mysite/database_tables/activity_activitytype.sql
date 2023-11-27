/*
Navicat MySQL Data Transfer

Source Server         : 链接1
Source Server Version : 80029
Source Host           : localhost:3306
Source Database       : activity

Target Server Type    : MYSQL
Target Server Version : 80029
File Encoding         : 65001

Date: 2023-10-05 16:26:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity_activitytype
-- ----------------------------
DROP TABLE IF EXISTS `activity_activitytype`;
CREATE TABLE `activity_activitytype` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `session` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of activity_activitytype
-- ----------------------------
INSERT INTO `activity_activitytype` VALUES ('1', '话剧歌剧', '哈尔滨', '9');
INSERT INTO `activity_activitytype` VALUES ('2', '演唱会', '哈尔滨', '26');
INSERT INTO `activity_activitytype` VALUES ('3', '曲苑杂坛', '哈尔滨', '15');
INSERT INTO `activity_activitytype` VALUES ('4', '音乐会', '哈尔滨', '12');
INSERT INTO `activity_activitytype` VALUES ('5', '儿童亲子', '哈尔滨', '12');
INSERT INTO `activity_activitytype` VALUES ('6', '体育', '哈尔滨', '2');
INSERT INTO `activity_activitytype` VALUES ('7', '展览休闲', '哈尔滨', '4');
INSERT INTO `activity_activitytype` VALUES ('8', '话剧歌剧', '齐齐哈尔', '2');
INSERT INTO `activity_activitytype` VALUES ('9', '曲苑杂坛', '齐齐哈尔', '1');
INSERT INTO `activity_activitytype` VALUES ('10', '音乐会', '牡丹江', '1');
INSERT INTO `activity_activitytype` VALUES ('11', '曲苑杂坛', '牡丹江', '1');
INSERT INTO `activity_activitytype` VALUES ('12', '儿童亲子', '佳木斯', '1');
INSERT INTO `activity_activitytype` VALUES ('13', '曲苑杂坛', '佳木斯', '1');
INSERT INTO `activity_activitytype` VALUES ('14', '音乐会', '大庆', '1');
INSERT INTO `activity_activitytype` VALUES ('15', '曲苑杂坛', '大庆', '2');
