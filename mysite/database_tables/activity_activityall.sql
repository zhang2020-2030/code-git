/*
Navicat MySQL Data Transfer

Source Server         : 链接1
Source Server Version : 80029
Source Host           : localhost:3306
Source Database       : activity

Target Server Type    : MYSQL
Target Server Version : 80029
File Encoding         : 65001

Date: 2023-10-05 16:26:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity_activityall
-- ----------------------------
DROP TABLE IF EXISTS `activity_activityall`;
CREATE TABLE `activity_activityall` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `session` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of activity_activityall
-- ----------------------------
INSERT INTO `activity_activityall` VALUES ('1', '话剧歌剧', '11');
INSERT INTO `activity_activityall` VALUES ('2', '演唱会', '26');
INSERT INTO `activity_activityall` VALUES ('3', '曲苑杂坛', '20');
INSERT INTO `activity_activityall` VALUES ('4', '音乐会', '14');
INSERT INTO `activity_activityall` VALUES ('5', '儿童亲子', '13');
INSERT INTO `activity_activityall` VALUES ('6', '体育', '2');
INSERT INTO `activity_activityall` VALUES ('7', '展览休闲', '4');
