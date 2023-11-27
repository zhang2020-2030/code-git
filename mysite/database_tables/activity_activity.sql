/*
Navicat MySQL Data Transfer

Source Server         : 链接1
Source Server Version : 80029
Source Host           : localhost:3306
Source Database       : activity

Target Server Type    : MYSQL
Target Server Version : 80029
File Encoding         : 65001

Date: 2023-10-05 16:25:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity_activity
-- ----------------------------
DROP TABLE IF EXISTS `activity_activity`;
CREATE TABLE `activity_activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activity` varchar(128) NOT NULL,
  `type` varchar(32) NOT NULL,
  `time` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `addr` varchar(128) NOT NULL,
  `p_number` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of activity_activity
-- ----------------------------
INSERT INTO `activity_activity` VALUES ('1', '舞剧《狂人派对》第 51届香港艺术节委约作品', '话剧歌剧', '2023.11.03-11.04', '哈尔滨', '哈尔滨蚂蚁剧场', '5000');
INSERT INTO `activity_activity` VALUES ('2', '泥鳅ZINCO ⌈烂人生⌋ 2023巡演 哈尔滨站', '演唱会', '2023.11.12 周日 19:30', '哈尔滨', 'Le·大麦Livehouse', '30000');
INSERT INTO `activity_activity` VALUES ('3', '永庆安澜 2023德云社张九南·高九成相声专场-哈尔滨站', '曲苑杂坛', '2023.10.22 周日 19:30', '哈尔滨', '哈尔滨国际会展体育中心环球剧场', '4000');
INSERT INTO `activity_activity` VALUES ('4', '开心麻花奇幻爆笑大戏《变身怪杰》', '话剧歌剧', '2023.10.28-10.29', '哈尔滨', '哈尔滨国际会展体育中心环球剧场', '5000');
INSERT INTO `activity_activity` VALUES ('5', '草莓梗脱口秀', '曲苑杂坛', '2023.10.14 周六 19:00', '哈尔滨', '老默的江湖音乐酒馆', '4000');
INSERT INTO `activity_activity` VALUES ('6', 'Kc左元杰 「小坏蛋&冒失鬼」 2023 全国巡演 哈尔滨站', '演唱会', '2023.10.14 周六 20:00', '哈尔滨', 'Le·大麦Livehouse', '30000');
INSERT INTO `activity_activity` VALUES ('7', '葡萄不愤怒「我ALL IN，你随意」2023巡演-哈尔滨站', '演唱会', '2023.10.28 周六 19:30', '哈尔滨', 'SUBLIVE', '30000');
INSERT INTO `activity_activity` VALUES ('8', '【限时5折】“爱乐之城”——经典电影音乐作品音乐会', '音乐会', '2023.12.08 周五 19:00', '哈尔滨', '哈尔滨国际会展体育中心环球剧场', '10000');
INSERT INTO `activity_activity` VALUES ('9', '永庆安澜2023德云社烧饼 曹鹤阳相声专场演出-哈尔滨站', '曲苑杂坛', '2023.10.17 周二 19:00', '哈尔滨', '哈尔滨大剧院歌剧厅', '4000');
INSERT INTO `activity_activity` VALUES ('10', '超级物理秀(哈尔滨哈东万达广场IMAX店)', '儿童亲子', '2023.10.21 周六', '哈尔滨', '万达影城(哈东万达广场IMAX店)2号厅', '1000');
INSERT INTO `activity_activity` VALUES ('11', '唯美国风音乐会《大鱼》', '音乐会', '2023.12.23 周六 19:00', '哈尔滨', '哈尔滨国际会展体育中心环球剧场', '10000');
INSERT INTO `activity_activity` VALUES ('12', '中外声乐作品音乐会', '音乐会', '2023.10.05 周四', '哈尔滨', '哈尔滨老会堂音乐厅', '10000');
INSERT INTO `activity_activity` VALUES ('13', '蒜瓣脱口秀-学府凯德店·爆笑脱口秀必打卡', '曲苑杂坛', '2023.10.05-10.15', '哈尔滨', '蒜瓣儿脱口秀俱乐部(学府凯德广场)', '4000');
INSERT INTO `activity_activity` VALUES ('14', '圣诞狂欢·烛光音乐会《胡桃夹子》 奇幻夜', '音乐会', '2023.12.24 周日 19:00', '哈尔滨', '哈尔滨国际会展体育中心环球剧场', '10000');
INSERT INTO `activity_activity` VALUES ('15', '蚂蚁书场·听何笑说「新式评书」', '曲苑杂坛', '2023.10.11-10.18', '哈尔滨', '哈尔滨蚂蚁剧场', '4000');
INSERT INTO `activity_activity` VALUES ('16', '【拯救不开心】互动魔术喜剧《赌途的救赎》', '话剧歌剧', '2023.10.05-10.21', '哈尔滨', '魔纳剧场', '5000');
INSERT INTO `activity_activity` VALUES ('17', '纪念日乐队2023 悲欢世界 巡演·哈尔滨站', '演唱会', '2023.10.15 周日 20:00', '哈尔滨', '北方国际青年旅舍 NORTH LIVE', '30000');
INSERT INTO `activity_activity` VALUES ('18', '2023超级万圣狂欢电音节•哈尔滨站 | 全场畅饮 | 一年一度超火万圣节 | 百鬼夜行，一起撒欢！', '演唱会', '2023.10.28 周六 14:00', '哈尔滨', '尼扣制燥NK Arise up', '30000');
INSERT INTO `activity_activity` VALUES ('19', '2023 小海“衡山路”巡演 哈尔滨站', '演唱会', '2023.11.03 周五 19:30', '哈尔滨', 'SUBLIVE', '30000');
INSERT INTO `activity_activity` VALUES ('20', '【唐唐正正】唐香玉单口喜剧专场&哈尔滨蒜瓣儿脱口秀', '曲苑杂坛', '2023.10.15 周日 19:00', '哈尔滨', '蒜瓣儿脱口秀俱乐部(学府凯德广场)', '4000');
INSERT INTO `activity_activity` VALUES ('21', '【10.14】中国夜莺 世界著名女高音歌唱家 迪里拜尔独唱音乐会', '音乐会', '2023.10.14 周六 19:00', '哈尔滨', '哈尔滨音乐厅', '10000');
INSERT INTO `activity_activity` VALUES ('22', '【早鸟票五折】《魔幻之旅 · 小小魔法师》', '儿童亲子', '2023.10.27-10.29', '哈尔滨', '魔纳剧场', '1000');
INSERT INTO `activity_activity` VALUES ('23', '千与千寻——宫崎骏2023跨年动漫视听音乐会', '音乐会', '2023.12.31 周日 19:30', '哈尔滨', '哈尔滨国际会展体育中心环球剧场', '10000');
INSERT INTO `activity_activity` VALUES ('24', '2023黑龙江冰城足球俱乐部季票', '体育', '2023.06.16-12.13', '哈尔滨', '哈尔滨国际会展中心体育场', '20000');
INSERT INTO `activity_activity` VALUES ('25', '波波笑剧场-哈西万达店—脱口秀+即兴喜剧•爆笑必打卡', '曲苑杂坛', '2023.10.05-10.31', '哈尔滨', '波波笑剧场(哈西万达店)', '4000');
INSERT INTO `activity_activity` VALUES ('26', '蓝调传奇|比利·布兰奇与蓝调之子乐队(Billy Branch and The Sons of Blues) 2023巡演 哈尔滨站', '演唱会', '2023.11.12 周日 19:30', '哈尔滨', 'SUB LIVE ·巨星馆', '30000');
INSERT INTO `activity_activity` VALUES ('27', '萬象COSMOS「萬象·更新」巡演-哈尔滨站', '演唱会', '2023.10.14 周六 19:30', '哈尔滨', 'SUBLIVE', '30000');
INSERT INTO `activity_activity` VALUES ('28', '遨游太空航天艺术展『哈尔滨站』', '展览休闲', '2023.06.17-2024.02.29', '哈尔滨', '哈尔滨遨游太空航天艺术展', '3000');
INSERT INTO `activity_activity` VALUES ('29', '2023任贤齐 [齐迹·在路上]巡回演唱会 哈尔滨站', '演唱会', '2023.11.10-11.11', '哈尔滨', '哈尔滨国际会展体育中心体育馆', '30000');
INSERT INTO `activity_activity` VALUES ('30', '2023周华健[少年侠客]世界巡回演唱会 哈尔滨站', '演唱会', '2023.11.04 周六 19:00', '哈尔滨', '哈尔滨国际会展体育中心体育馆', '30000');
INSERT INTO `activity_activity` VALUES ('31', '【10.22】“华丽与激情”俄罗斯经典作品音乐会', '演唱会', '2023.10.22 周日 19:00', '哈尔滨', '哈尔滨音乐厅', '30000');
INSERT INTO `activity_activity` VALUES ('32', '【光棍节必看】十年经典“唱给单身汪”演唱会，单身就狂欢，恋爱要勇敢！「夜管家呈献」——哈尔滨', '演唱会', '2023.11.11 周六 20:00', '哈尔滨', 'SUBLIVE', '30000');
INSERT INTO `activity_activity` VALUES ('33', '“红楼梦中人”1987年版电视剧《红楼梦》全版主题音乐会', '音乐会', '2023.10.20 周五 19:00', '哈尔滨', '黑龙江省歌舞剧院', '10000');
INSERT INTO `activity_activity` VALUES ('34', '俄罗斯皇家芭蕾舞团《天鹅湖》2023中国巡演20周年至臻呈现', '话剧歌剧', '2023.12.09-12.10', '哈尔滨', '哈尔滨大剧院歌剧厅', '5000');
INSERT INTO `activity_activity` VALUES ('35', '遨游太空航天艺术展『哈尔滨站』', '展览休闲', '2023.06.17-2024.02.29', '哈尔滨', '哈尔滨遨游太空航天艺术展', '3000');
INSERT INTO `activity_activity` VALUES ('36', '2023任贤齐 [齐迹·在路上]巡回演唱会 哈尔滨站', '演唱会', '2023.11.10-11.11', '哈尔滨', '哈尔滨国际会展体育中心体育馆', '30000');
INSERT INTO `activity_activity` VALUES ('37', '锦然俄罗斯琥珀博物馆', '展览休闲', '2023.03.18-12.31', '哈尔滨', '锦然俄罗斯琥珀博物馆', '3000');
INSERT INTO `activity_activity` VALUES ('38', '【十一全家欢】儿童欢乐魔术剧《天赐的种子》', '儿童亲子', '2023.10.05-10.28', '哈尔滨', '魔纳剧场', '1000');
INSERT INTO `activity_activity` VALUES ('39', '晓年青剧团·饶晓志戏剧作品 万茜领衔主演话剧《你好，疯子！》十周年纪念版', '话剧歌剧', '2023.10.05 周四 19:00', '哈尔滨', '哈尔滨大剧院歌剧厅', '5000');
INSERT INTO `activity_activity` VALUES ('40', '蓝色旅人', '演唱会', '2023.10.29 周日 19:30', '哈尔滨', 'SUBLIVE', '30000');
INSERT INTO `activity_activity` VALUES ('41', '【限时5折】英国原版授权海洋探险互动舞台剧 《海底小纵队-深海探秘》冰城首演', '儿童亲子', '2023.11.25 周六 10:30', '哈尔滨', '哈尔滨国际会展体育中心环球剧场', '1000');
INSERT INTO `activity_activity` VALUES ('42', '经典格林童话《小红帽》', '儿童亲子', '2023.10.15-10.21', '哈尔滨', '哈尔滨蚂蚁剧场', '1000');
INSERT INTO `activity_activity` VALUES ('43', '辉煌之音——北京交响乐团·经典名曲交响音乐会', '音乐会', '2023.10.20 周五 19:00', '哈尔滨', '哈尔滨大剧院歌剧厅', '10000');
INSERT INTO `activity_activity` VALUES ('44', '李宗盛作品音乐剧《当爱已成往事》', '话剧歌剧', '2023.10.23-10.24', '哈尔滨', '哈尔滨大剧院歌剧厅', '5000');
INSERT INTO `activity_activity` VALUES ('45', '时间不够以后 「祝你一切好运」2023巡演 哈尔滨站', '演唱会', '2023.10.22 周日 19:30', '哈尔滨', 'SUBLIVE', '30000');
INSERT INTO `activity_activity` VALUES ('46', '《青春禁.忌游.戏.》', '话剧歌剧', '2023.10.05 周四', '哈尔滨', '哈尔滨蚂蚁剧场', '5000');
INSERT INTO `activity_activity` VALUES ('47', '菊次郎的夏天—久石让轻音乐之旅钢琴音乐会', '音乐会', '2024.01.01 周一 19:30', '哈尔滨', '哈尔滨国际会展中心(环球剧场)102小剧场', '10000');
INSERT INTO `activity_activity` VALUES ('48', '【乔迁新址】黑龙江德云社·红事会—《相声大会》', '曲苑杂坛', '2023.10.05-10.08', '哈尔滨', '黑龙江德云社新剧场', '4000');
INSERT INTO `activity_activity` VALUES ('49', '内蒙古艺术剧院原创舞剧《骑兵》', '话剧歌剧', '2023.11.06-11.07', '哈尔滨', '哈尔滨大剧院歌剧厅', '5000');
INSERT INTO `activity_activity` VALUES ('50', '2023中甲联赛黑龙江冰城足球俱乐部主场比赛', '体育', '2023.06.26-12.31', '哈尔滨', '哈尔滨国际会展中心体育场', '20000');
INSERT INTO `activity_activity` VALUES ('51', '【魔法冒险】儿童亲子魔术剧《今天小孩不在家》', '儿童亲子', '2023.10.05-10.29', '哈尔滨', '魔纳剧场', '1000');
INSERT INTO `activity_activity` VALUES ('52', '安子与九妹乐队“当理想吹动海浪”2023-2024系列巡演-哈尔滨站', '演唱会', '2023.10.27 周五 19:30', '哈尔滨', 'SUBLIVE', '30000');
INSERT INTO `activity_activity` VALUES ('53', '【海盗船上飘来歌声】—— 风子巡演 哈尔滨站', '演唱会', '2023.11.24 周五 19:30', '哈尔滨', 'SUB LIVE ·巨星馆', '30000');
INSERT INTO `activity_activity` VALUES ('54', '龙江大舞台旗舰店（原新闻电影院地方戏二人转）', '曲苑杂坛', '2023.10.05-10.31', '哈尔滨', '龙江大舞台旗舰剧场', '4000');
INSERT INTO `activity_activity` VALUES ('55', '中毅文化—毛豆领衔《汇笑喜剧》脱口秀—哈尔滨站', '曲苑杂坛', '2023.10.26 周四 19:30', '哈尔滨', '哈尔滨国际会展体育中心环球剧场', '4000');
INSERT INTO `activity_activity` VALUES ('56', '听云轩相声专场-哈尔滨站', '曲苑杂坛', '2023.11.12 周日 19:30', '哈尔滨', '哈尔滨国际会展体育中心环球剧场', '4000');
INSERT INTO `activity_activity` VALUES ('57', '倒带2006·青春范特西演唱会——一键回到华语乐坛黄金年代', '演唱会', '2023.11.04 周六 20:00', '哈尔滨', 'SUBLIVE', '30000');
INSERT INTO `activity_activity` VALUES ('58', '【SUBLIVE呈现】原来你也玩乐队·高校摇滚季NO.6', '演唱会', '2023.10.21 周六 19:30', '哈尔滨', 'SUBLIVE', '30000');
INSERT INTO `activity_activity` VALUES ('59', '【限时5折】天空之城-久石让&宫崎骏经典动漫音乐作品音乐会', '音乐会', '2023.11.17 周五 19:00', '哈尔滨', '哈尔滨国际会展体育中心环球剧场', '10000');
INSERT INTO `activity_activity` VALUES ('60', '早西「表达者」2023北方篇 哈尔滨站', '演唱会', '2023.10.13 周五 19:30', '哈尔滨', 'SUBLIVE', '30000');
INSERT INTO `activity_activity` VALUES ('61', '【秀动呈献】孟凡明「我喜欢我」2023巡回演唱会 哈尔滨站', '演唱会', '2023.10.21 周六 20:30', '哈尔滨', '北方国际青年旅舍 NORTH LIVE', '30000');
INSERT INTO `activity_activity` VALUES ('62', '【哈尔滨大剧院】天恩演出-大型沉浸式音乐童话剧《白雪公主和七个小矮人》', '儿童亲子', '2023.10.15 周日', '哈尔滨', '哈尔滨大剧院歌剧厅', '1000');
INSERT INTO `activity_activity` VALUES ('63', '【快乐学知识】儿童互动科学魔术秀《小魔法，大科学》', '儿童亲子', '2023.10.05-10.29', '哈尔滨', '魔纳剧场', '1000');
INSERT INTO `activity_activity` VALUES ('64', '蒜瓣脱口秀-学府凯德店-开放麦（练习场）', '曲苑杂坛', '2023.10.10-10.11', '哈尔滨', '蒜瓣儿脱口秀俱乐部(学府凯德广场)', '4000');
INSERT INTO `activity_activity` VALUES ('65', '李波中式单口《李姐不理解》全国巡演@哈尔滨站1014波波脱口秀', '曲苑杂坛', '2023.10.14 周六', '哈尔滨', '哈尔滨国际会展体育中心环球剧场', '4000');
INSERT INTO `activity_activity` VALUES ('66', '古装爆笑喜剧《花田错》', '话剧歌剧', '2023.10.05-10.21', '哈尔滨', '哈尔滨蚂蚁剧场', '5000');
INSERT INTO `activity_activity` VALUES ('67', '《老生常谈—王珮瑜京剧清音会》', '儿童亲子', '2023.10.07 周六 19:00', '哈尔滨', '哈尔滨大剧院歌剧厅', '1000');
INSERT INTO `activity_activity` VALUES ('68', '先锋魔幻爆笑亲子剧--《时光魔魔哒》', '儿童亲子', '2023.11.11 周六 19:30', '哈尔滨', '哈尔滨国际会展体育中心环球剧场', '1000');
INSERT INTO `activity_activity` VALUES ('69', '黑屋乐队/内心深处/理想真魔王- DREAM KING系列巡演-哈尔滨站', '演唱会', '2023.12.31 周日 20:00', '哈尔滨', 'SUBLIVE', '30000');
INSERT INTO `activity_activity` VALUES ('70', '《海洋保卫战》环保互动童话剧第二轮', '儿童亲子', '2023.10.05-10.22', '哈尔滨', '哈尔滨蚂蚁剧场', '1000');
INSERT INTO `activity_activity` VALUES ('71', '【与世浮沉】李智&乐队2023巡演哈尔滨站', '演唱会', '2023.10.29 周日 19:30', '哈尔滨', '北方国际青年旅舍 NORTH LIVE', '30000');
INSERT INTO `activity_activity` VALUES ('72', '《与密涅瓦的猫头鹰一起散步》 何雨个展', '展览休闲', '2023.09.26-12.10', '哈尔滨', '非典型艺术馆(哈尔滨店)', '3000');
INSERT INTO `activity_activity` VALUES ('73', '【重磅开票】瓦莱里·捷杰耶夫与马林斯基交响乐团音乐会', '音乐会', '2023.10.29 周日 19:00', '哈尔滨', '哈尔滨音乐厅', '10000');
INSERT INTO `activity_activity` VALUES ('74', '草莓梗脱口秀（中央大街百盛店）', '曲苑杂坛', '2023.10.05-12.31', '哈尔滨', '中央大街百盛草莓梗Club-商场4F', '4000');
INSERT INTO `activity_activity` VALUES ('75', '2023最新圆谷正版授权·奥特曼系列舞台剧 《奥特传奇-希望之光》冰城首演', '儿童亲子', '2023.10.21 周六 10:30', '哈尔滨', '哈尔滨国际会展体育中心环球剧场', '1000');
INSERT INTO `activity_activity` VALUES ('76', '海阔天空怀念家驹—致敬BEYOND金曲演唱会哈尔滨站', '演唱会', '2023.10.29 周日 19:00', '哈尔滨', '哈尔滨大剧院歌剧厅', '30000');
INSERT INTO `activity_activity` VALUES ('77', '2023哈尔滨相声百乐会《相声大会》', '曲苑杂坛', '2023.10.05-10.06', '哈尔滨', '哈尔滨相声百乐会', '4000');
INSERT INTO `activity_activity` VALUES ('78', '《礼赞时代 壮美华章》庆祝中华人民共和国成立74周年交响音乐会', '音乐会', '2023.10.06 周五 19:00', '哈尔滨', '黑龙江省歌舞剧院', '10000');
INSERT INTO `activity_activity` VALUES ('79', '齐一「这个年纪2/2」巡演（第二轮） 哈尔滨站', '演唱会', '2023.11.24 周五 19:30', '哈尔滨', 'SUBLIVE', '30000');
INSERT INTO `activity_activity` VALUES ('80', '橘子海EXCEL第二回 - 脚下之地 - 哈尔滨站', '演唱会', '2023.12.08 周五 19:30', '哈尔滨', 'SUB LIVE ·巨星馆', '30000');
INSERT INTO `activity_activity` VALUES ('81', '法国经典黑色幽默喜剧《一个绝望的人》', '话剧歌剧', '2023.10.05-10.06', '齐齐哈尔', '齐齐哈尔市艺术剧院小剧场', '5000');
INSERT INTO `activity_activity` VALUES ('82', '小剧场独幕话剧《喂，那边的人》', '话剧歌剧', '2023.10.13-10.29', '齐齐哈尔', '齐齐哈尔市艺术剧院小剧场', '5000');
INSERT INTO `activity_activity` VALUES ('83', '李波中式单口《李姐不理解》全国巡演@齐齐哈尔站1013波波脱口秀', '曲苑杂坛', '2023.10.13 周五 19:30', '齐齐哈尔', '齐齐哈尔市工人文化宫', '4000');
INSERT INTO `activity_activity` VALUES ('84', '奇幻电影主题视听音乐会《哈利波特》-牡丹江站', '音乐会', '2023.10.21 周六 19:30', '牡丹江', '牡丹江大剧院-歌剧厅', '10000');
INSERT INTO `activity_activity` VALUES ('85', '李波中式单口《李姐不理解》全国巡演@牡丹江站1222波波脱口秀', '曲苑杂坛', '2023.12.22 周五 19:30', '牡丹江', '牡丹江大剧院-歌剧厅', '4000');
INSERT INTO `activity_activity` VALUES ('86', '正版英国BBC互动儿童剧《海底小纵队之荣誉勋章》', '儿童亲子', '2023.11.12 周日', '佳木斯', '佳木斯工人文化宫', '1000');
INSERT INTO `activity_activity` VALUES ('87', '李波中式单口《李姐不理解》全国巡演@佳木斯站1015波波脱口秀', '曲苑杂坛', '2023.10.15 周日 19:30', '佳木斯', '佳木斯大剧院', '4000');
INSERT INTO `activity_activity` VALUES ('88', '唯美国风音乐会《大鱼》-大庆', '音乐会', '2023.11.12 周日 19:30', '大庆', '大庆歌剧院', '10000');
INSERT INTO `activity_activity` VALUES ('89', '听云轩相声专场-大庆站', '曲苑杂坛', '2023.11.10 周五 19:30', '大庆', '大庆歌剧院', '4000');
INSERT INTO `activity_activity` VALUES ('90', '李波中式单口《李姐不理解》全国巡演@大庆站1012', '曲苑杂坛', '2023.10.12 周四 19:30', '大庆', '大庆歌剧院', '4000');
