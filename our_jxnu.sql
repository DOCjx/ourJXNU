/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50615
Source Host           : localhost:3306
Source Database       : our_jxnu

Target Server Type    : MYSQL
Target Server Version : 50615
File Encoding         : 65001

Date: 2019-04-20 08:05:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jxnu_article
-- ----------------------------
DROP TABLE IF EXISTS `jxnu_article`;
CREATE TABLE `jxnu_article` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `content` text,
  `comment_num` int(10) DEFAULT '0',
  `deadline` datetime DEFAULT NULL,
  `value` int(10) DEFAULT NULL COMMENT '价值，用于积分计算',
  `article_type` int(1) DEFAULT NULL,
  `file_id` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_article
-- ----------------------------
INSERT INTO `jxnu_article` VALUES ('5', '1', '校医院毕业生体检，一位同学遗失身份证，请若有人认识请告知失主。', '223', '2019-03-24 22:22:00', '17', '1', 'http://localwechatstatic.wvwvw.cn/psb.jpg', '1');
INSERT INTO `jxnu_article` VALUES ('6', '5', '在这个位置遗失了一个小包包，对我意义重大，请好心人联系我。18334205426', '354', '2019-03-24 22:22:00', '50', '1', 'http://localwechatstatic.wvwvw.cn/5.JPG', '1');
INSERT INTO `jxnu_article` VALUES ('7', '8', '哪位小姐姐可以帮忙带一杯奶茶吗？地点右下角，s230', '264', '2019-03-24 22:22:00', '14', '1', 'http://localwechatstatic.wvwvw.cn/1.JPG', '1');
INSERT INTO `jxnu_article` VALUES ('8', '12', '最近好难过怎么办呀。。。。', '394', '2019-03-24 22:22:00', '18', '1', null, '1');
INSERT INTO `jxnu_article` VALUES ('9', '15', '哪个小姐姐画得不错，求联系方式', '269', '2019-03-24 22:22:00', '14', '1', 'http://localwechatstatic.wvwvw.cn/2.JPG', '1');
INSERT INTO `jxnu_article` VALUES ('10', '19', '英语改革大家有什么好的计划吗？', '266', '2019-03-24 22:22:00', '14', '1', null, '1');
INSERT INTO `jxnu_article` VALUES ('11', '22', '跳舞的黑衣服女生求介绍', '251', '2019-03-24 22:22:00', '20', '1', 'http://localwechatstatic.wvwvw.cn/3.JPG', '1');
INSERT INTO `jxnu_article` VALUES ('12', '24', '谁可以帮我复习高数吗', '231', '2019-03-24 22:22:00', '30', '1', null, '1');
INSERT INTO `jxnu_article` VALUES ('13', '26', '谁有《阿弥陀佛，么么哒》吗？咱们换着看', '252', '2019-03-24 22:22:00', '13', '1', 'http://localwechatstatic.wvwvw.cn/6.JPG', '1');
INSERT INTO `jxnu_article` VALUES ('14', '123123', '夜里太烦，不知不觉走到了正大坊,以前都是匆匆经过，从没注意到它，现在的正大坊这么安静这么祥和', '23', '2017-11-26 18:15:31', null, '2', 'http://localwechatstatic.wvwvw.cn/IMG_20151211_204535.jpg', '1');
INSERT INTO `jxnu_article` VALUES ('15', '123123', '大学这么几年经常听到镜湖的天鹅被塑料袋缠住了嘴，为啥它们那么喜欢吃塑料呢，，，，', '52', '2017-11-26 18:18:07', null, '2', 'http://localwechatstatic.wvwvw.cn/IMG_20151130_172030.jpg', '1');
INSERT INTO `jxnu_article` VALUES ('16', '123123', '来到师大很意外的是，我们学校居然有小鹿', '62', null, null, '2', 'http://localwechatstatic.wvwvw.cn/IMG_20150913_065449.jpg', '1');
INSERT INTO `jxnu_article` VALUES ('29', 'oh43t0LhBTCC1hebQwXn0YNyXqNM', 'sfda', '0', '2019-02-25 01:02:00', '13', '1', 'http://localwechatstatic.wvwvw.cn/wxebfa80e6a5f3103a.o6zAJs_dBnVMZFl7xP0AnWMuA66k.3d2E6F6tGp8jf034b9523c8b993f826597341a1f8eb2.jpg', '1');
INSERT INTO `jxnu_article` VALUES ('30', 'oh43t0LhBTCC1hebQwXn0YNyXqNM', 'sdfa', '0', '2019-03-24 22:22:00', '20', '1', '', '1');
INSERT INTO `jxnu_article` VALUES ('31', 'oh43t0LhBTCC1hebQwXn0YNyXqNM', '好无聊哈，，，，有小婕姐聊聊天吗？', '0', '2019-02-24 20:55:00', '20', '1', 'http://localwechatstatic.wvwvw.cn/tmp_152e981ddbed880706ad0b1bb8e397a103758bc1d2da99cc.jpg', '1');
INSERT INTO `jxnu_article` VALUES ('32', 'oh43t0LhBTCC1hebQwXn0YNyXqNM', '哦哦哦', '0', '2019-02-24 21:03:00', '15', '1', 'http://localwechatstatic.wvwvw.cn/tmp_873e3db966b5675c714be3112e05b95541998e96fa2b5824.jpg', '1');
INSERT INTO `jxnu_article` VALUES ('33', 'oh43t0LhBTCC1hebQwXn0YNyXqNM', '哈哈哈唉D', '0', '2019-02-25 20:03:00', '5', '1', '', '1');
INSERT INTO `jxnu_article` VALUES ('34', 'oh43t0LhBTCC1hebQwXn0YNyXqNM', '还比比吧', '0', '2019-02-25 21:07:00', '5', '1', '', '1');
INSERT INTO `jxnu_article` VALUES ('35', 'oh43t0LhBTCC1hebQwXn0YNyXqNM', '高渐离离婚了', '0', '2019-02-26 22:10:00', '5', '1', '', '1');
INSERT INTO `jxnu_article` VALUES ('37', 'oh43t0LhBTCC1hebQwXn0YNyXqNM', 'beijin', '0', null, '5', '2', 'http://localwechatstatic.wvwvw.cn/wxebfa80e6a5f3103a.o6zAJs_dBnVMZFl7xP0AnWMuA66k.jPe8dKwEvsele8b55947dbad1e79c69c0b605b60e339.jpg', '1');
INSERT INTO `jxnu_article` VALUES ('38', 'oh43t0LhBTCC1hebQwXn0YNyXqNM', 'h很好', '0', '2019-04-14 01:01:00', '11', '1', 'http://localwechatstatic.wvwvw.cn/wxebfa80e6a5f3103a.o6zAJs_dBnVMZFl7xP0AnWMuA66k.S4ULMmmEE3zs2ea97f35012ff5939eaf062363f77694.jpg', '1');
INSERT INTO `jxnu_article` VALUES ('39', 'oh43t0LhBTCC1hebQwXn0YNyXqNM', '很棒', '0', '2019-04-13 12:20:00', '13', '1', 'http://localwechatstatic.wvwvw.cn/tmp_25f89de9f577709f57f7cc11863ba8597594d361cc754ff3.jpg', '1');
INSERT INTO `jxnu_article` VALUES ('40', 'oh43t0LhBTCC1hebQwXn0YNyXqNM', '刚刚', '0', '2019-04-13 11:03:00', '5', '1', '', '1');
INSERT INTO `jxnu_article` VALUES ('41', 'oh43t0LhBTCC1hebQwXn0YNyXqNM', '日期', '0', '2019-05-13 11:01:00', '5', '1', 'http://localwechatstatic.wvwvw.cn/tmp_2a45ff26dafe4cd97c0078d8892899ac391f50310f311097.jpg', '1');

-- ----------------------------
-- Table structure for jxnu_category
-- ----------------------------
DROP TABLE IF EXISTS `jxnu_category`;
CREATE TABLE `jxnu_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `ename` varchar(255) DEFAULT NULL,
  `status` int(10) DEFAULT '1',
  `style` int(10) DEFAULT NULL,
  `flag` int(1) unsigned zerofill DEFAULT '0' COMMENT '0代表列表1代表文章',
  `switch` int(10) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_category
-- ----------------------------

-- ----------------------------
-- Table structure for jxnu_collect
-- ----------------------------
DROP TABLE IF EXISTS `jxnu_collect`;
CREATE TABLE `jxnu_collect` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `article_id` int(2) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `collect_type` int(2) DEFAULT NULL COMMENT '点赞，收藏互助，收藏资源，收藏风景',
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_collect
-- ----------------------------
INSERT INTO `jxnu_collect` VALUES ('1', '1', '123123', '1', '1');
INSERT INTO `jxnu_collect` VALUES ('2', '1', '1039115768', '1', '1');
INSERT INTO `jxnu_collect` VALUES ('3', '2', '123123', '1', '1');
INSERT INTO `jxnu_collect` VALUES ('4', '1', '123123', '2', '1');
INSERT INTO `jxnu_collect` VALUES ('5', '12', '10', '1', '1');

-- ----------------------------
-- Table structure for jxnu_college
-- ----------------------------
DROP TABLE IF EXISTS `jxnu_college`;
CREATE TABLE `jxnu_college` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `pid` int(1) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `switch` int(1) NOT NULL DEFAULT '1',
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2005 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_college
-- ----------------------------
INSERT INTO `jxnu_college` VALUES ('1', '0', '计算机信息工程学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('2', '0', '软件学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('3', '0', '马克思主义学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('4', '0', '政法学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('5', '0', '财政金融学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('6', '0', '地理与环境学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('7', '0', '教育学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('8', '0', '传播学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('9', '0', '心理学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('10', '0', '体育学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('11', '0', '文学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('12', '0', '外国语学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('13', '0', '音乐学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('14', '0', '美术学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('15', '0', '历史文化与旅游学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('16', '0', '数学与信息科学学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('17', '0', '物理与通信电子学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('18', '0', '化学化工学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('19', '0', '生命科学学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('20', '0', '商学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('21', '0', '城市建设学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('22', '0', '初等教育学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('23', '1', '数据结构', '1', '1');
INSERT INTO `jxnu_college` VALUES ('24', '1', 'C语言', '1', '1');
INSERT INTO `jxnu_college` VALUES ('25', '1', '计算机组成原理', '1', '1');
INSERT INTO `jxnu_college` VALUES ('26', '1', '计算机网络', '1', '1');
INSERT INTO `jxnu_college` VALUES ('27', '1', '数字逻辑', '1', '1');
INSERT INTO `jxnu_college` VALUES ('28', '4', '法学理论', '1', '1');
INSERT INTO `jxnu_college` VALUES ('29', '4', '宪法学与行政法学', '1', '1');
INSERT INTO `jxnu_college` VALUES ('30', '4', '社会工作', '1', '1');
INSERT INTO `jxnu_college` VALUES ('31', '5', '产业经济学', '1', '1');
INSERT INTO `jxnu_college` VALUES ('32', '5', '会计学', '1', '1');
INSERT INTO `jxnu_college` VALUES ('33', '13', '音乐治疗', '1', '1');
INSERT INTO `jxnu_college` VALUES ('34', '222', '', '1', '43');
INSERT INTO `jxnu_college` VALUES ('35', '0', '测试学院', '1', '1');
INSERT INTO `jxnu_college` VALUES ('36', '35', '没有专业', '1', '1');
INSERT INTO `jxnu_college` VALUES ('1000', '0', '公共必修', '0', '1');
INSERT INTO `jxnu_college` VALUES ('1001', '1000', '马克思主义原理', '1', '1');
INSERT INTO `jxnu_college` VALUES ('1002', '1000', '近代史纲要', '1', '1');
INSERT INTO `jxnu_college` VALUES ('1003', '1000', '思想品德与道德修养', '1', '1');
INSERT INTO `jxnu_college` VALUES ('2000', '0', '其他', '0', '1');
INSERT INTO `jxnu_college` VALUES ('2001', '2000', '电子商务', '1', '1');
INSERT INTO `jxnu_college` VALUES ('2002', '2000', '经典心里电影欣赏', '1', '1');
INSERT INTO `jxnu_college` VALUES ('2003', '2000', '野外生存技巧', '1', '1');
INSERT INTO `jxnu_college` VALUES ('2004', '2000', '西藏旅游与野外生存', '1', '1');

-- ----------------------------
-- Table structure for jxnu_comment
-- ----------------------------
DROP TABLE IF EXISTS `jxnu_comment`;
CREATE TABLE `jxnu_comment` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `article_id` int(1) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_comment
-- ----------------------------
INSERT INTO `jxnu_comment` VALUES ('5', '2', '5', '好像是我室友', '2017-11-26 16:20:48', '1');
INSERT INTO `jxnu_comment` VALUES ('6', '3', '5', '楼上认错了吧', '2017-11-26 16:21:49', '1');
INSERT INTO `jxnu_comment` VALUES ('7', '4', '5', '这不是我家茹茹吗', '2017-11-26 16:22:12', '1');
INSERT INTO `jxnu_comment` VALUES ('8', '5', '6', '没从那经过', '2017-11-26 16:28:47', '1');
INSERT INTO `jxnu_comment` VALUES ('9', '6', '6', '心疼楼主三十秒。', '2017-11-26 16:29:08', '1');
INSERT INTO `jxnu_comment` VALUES ('10', '7', '6', '是灰色的吗？', '2017-11-26 16:30:14', '1');
INSERT INTO `jxnu_comment` VALUES ('11', '9', '7', '小哥哥可以不', '2017-11-26 16:42:32', '1');
INSERT INTO `jxnu_comment` VALUES ('12', '10', '7', '我刚好有空哦！私聊私聊', '2017-11-26 16:42:52', '1');
INSERT INTO `jxnu_comment` VALUES ('13', '11', '7', '我就在你隔壁', '2017-11-26 16:43:09', '1');
INSERT INTO `jxnu_comment` VALUES ('14', '13', '8', '找人陪呗', '2017-11-26 16:49:05', '1');
INSERT INTO `jxnu_comment` VALUES ('15', '14', '8', '多和身边的人沟通', '2017-11-26 16:49:19', '1');
INSERT INTO `jxnu_comment` VALUES ('16', '16', '9', '我就是你的小姐姐，私聊我嘿嘿', '2017-11-26 16:53:02', '1');
INSERT INTO `jxnu_comment` VALUES ('17', '17', '9', '有人找你o，明月同学', '2017-11-26 16:53:16', '1');
INSERT INTO `jxnu_comment` VALUES ('18', '18', '9', '楼主可以的', '2017-11-26 16:53:29', '1');
INSERT INTO `jxnu_comment` VALUES ('19', '20', '10', '感觉有点危险，毕竟好久没有上英语课了', '2017-11-26 16:57:28', '1');
INSERT INTO `jxnu_comment` VALUES ('20', '21', '10', '急啥，人有多大胆，复习有多晚。反正我不怕，改革就是平时分多了而已', '2017-11-26 16:57:43', '1');
INSERT INTO `jxnu_comment` VALUES ('21', '15', '10', '楼上正解', '2017-11-26 16:58:07', '1');
INSERT INTO `jxnu_comment` VALUES ('22', '23', '11', '我也从旁边经过', '2017-11-26 17:01:02', '1');
INSERT INTO `jxnu_comment` VALUES ('23', '25', '12', '首页第二个资源，你值得拥有', '2017-11-26 17:03:26', '1');
INSERT INTO `jxnu_comment` VALUES ('24', '27', '13', '感觉大冰来我们学校好多次了，，，', '2017-11-26 17:06:29', '1');
INSERT INTO `jxnu_comment` VALUES ('25', '28', '13', '挺喜欢他的书', '2017-11-26 17:06:41', '1');
INSERT INTO `jxnu_comment` VALUES ('26', '29', '13', '可以啊', '2017-11-26 17:06:53', '1');

-- ----------------------------
-- Table structure for jxnu_downloads_log
-- ----------------------------
DROP TABLE IF EXISTS `jxnu_downloads_log`;
CREATE TABLE `jxnu_downloads_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_downloads_log
-- ----------------------------

-- ----------------------------
-- Table structure for jxnu_frame_access
-- ----------------------------
DROP TABLE IF EXISTS `jxnu_frame_access`;
CREATE TABLE `jxnu_frame_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `action_id` int(10) unsigned NOT NULL,
  `model` char(50) DEFAULT '',
  `status` tinyint(1) unsigned DEFAULT '1',
  `remark` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `action_role` (`role_id`,`action_id`),
  KEY `action_id` (`action_id`) USING BTREE,
  KEY `role_id` (`role_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2456 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_frame_access
-- ----------------------------
INSERT INTO `jxnu_frame_access` VALUES ('1', '31', '100000', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2291', '31', '210200', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2292', '31', '210201', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2161', '31', '210102', 'Category', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2162', '31', '210103', 'Category', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2163', '31', '210104', 'Category', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2164', '31', '210105', 'Category', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2290', '31', '4', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2167', '31', '210202', 'Categorydetail', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2168', '31', '210203', 'Categorydetail', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2169', '31', '210204', 'Categorydetail', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2170', '31', '210205', 'Categorydetail', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2286', '31', '210101', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2391', '31', '1100100', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2377', '32', '1000000', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2378', '22', '1000100', 'HyAlert', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2390', '31', '1100000', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2372', '310', '1000000', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2373', '31', '1000100', 'HyAlert', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2374', '31', '1000101', 'HyAlert', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2375', '31', '1000102', 'HyAlert', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2376', '31', '1000103', 'HyAlert', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2392', '31', '1100200', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('2', '31', '300000', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('3', '31', '400000', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('4', '31', '500000', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('5', '31', '600000', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('6', '31', '600001', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('7', '31', '600002', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('8', '31', '600003', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('9', '31', '600004', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('10', '31', '600005', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('11', '31', '600100', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('12', '31', '500100', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('13', '31', '500101', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('14', '31', '500102', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('15', '31', '500103', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('16', '31', '500104', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('17', '31', '500105', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('18', '31', '500106', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('19', '31', '600006', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('20', '31', '400100', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('21', '31', '400101', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('22', '31', '400102', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('23', '31', '400103', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('24', '31', '400104', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('25', '31', '400105', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('26', '31', '400106', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('27', '31', '300100', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('28', '31', '300101', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('29', '31', '300105', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('30', '31', '300102', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('31', '31', '300103', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('32', '31', '300104', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('33', '31', '300106', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('34', '31', '400107', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('35', '31', '500107', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('36', '31', '300107', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('37', '31', '400108', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('38', '31', '300108', '', '1', '');
INSERT INTO `jxnu_frame_access` VALUES ('39', '31', '500108', '', '1', '');

-- ----------------------------
-- Table structure for jxnu_frame_action
-- ----------------------------
DROP TABLE IF EXISTS `jxnu_frame_action`;
CREATE TABLE `jxnu_frame_action` (
  `id` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned DEFAULT '0',
  `type` char(10) DEFAULT '',
  `title` char(20) DEFAULT '',
  `name` varchar(255) DEFAULT '',
  `options` varchar(255) DEFAULT '',
  `rank` int(3) unsigned DEFAULT '500',
  `status` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_frame_action
-- ----------------------------
INSERT INTO `jxnu_frame_action` VALUES ('100000', '0', 'nav', '首页', 'System/Index/index', 'icon-home', '990', '1');
INSERT INTO `jxnu_frame_action` VALUES ('210000', '0', 'nav', '新闻与文章栏目管理', '', ' icon-directions', '200', '1');
INSERT INTO `jxnu_frame_action` VALUES ('210100', '210000', 'menu', '新闻类栏目管理', 'Category/Category/all', 'icon-direction', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('210101', '210100', 'url', '列表', 'Category/Category/ajax?q=list', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('210102', '210100', 'url', '新增', 'Category/Category/ajax?q=insert', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('210103', '210100', 'url', '更新', 'Category/Category/ajax?q=update', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('210104', '210100', 'url', '删除', 'Category/Category/ajax?q=delete', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('210105', '210100', 'url', '编辑', 'Category/Category/ajax?q=edit', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('1100000', '0', 'url', '个人消息', 'System/User/profile', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('300000', '0', 'nav', '用户管理', '', 'icon-calendar', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('400000', '0', 'nav', '消息与评论', '', 'icon-paper-plane', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('500000', '0', 'nav', '文章管理', '', 'icon-notebook', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('600000', '0', 'nav', '学院与专业', '', ' icon-directions', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('600001', '600100', 'url', '列表', 'Admin/College/ajax?q=list', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('600002', '600100', 'url', '新增', 'Admin/College/ajax?q=insert', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('600003', '600100', 'url', '更新', 'Admin/College/ajax?q=update', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('600004', '600100', 'url', '删除', 'Admin/College/ajax?q=delete', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('600005', '600100', 'url', '编辑', 'Admin/College/ajax?q=edit', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('600100', '600000', 'menu', '学院与专业管理', 'Admin/College/all', ' icon-directions', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('500100', '500000', 'menu', '文章管理', 'Admin/Articles/all', 'icon-notebook', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('500101', '500100', 'url', '列表', 'Admin/Articles/ajax?q=list', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('500102', '500100', 'url', '新增', 'Admin/Articles/ajax?q=insert', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('500103', '500100', 'url', '更新', 'Admin/Articles/ajax?q=update', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('500104', '500100', 'url', '删除', 'Admin/Articles/ajax?q=delete', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('500105', '500100', 'url', '编辑', 'Admin/Articles/ajax?q=edit', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('500106', '500100', 'url', '详情', 'Admin/Articles/ajax?q=detail', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('600006', '600100', 'url', '详情', 'Admin/College/ajax?q=edit', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('400100', '400000', 'menu', '消息与评论', 'Admin/Comment/all', 'icon-paper-plane', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('400101', '400100', 'url', '列表', 'Admin/Comment/ajax?q=list', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('400102', '400100', 'url', '新增', 'Admin/Comment/ajax?q=insert', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('400103', '400100', 'url', '更新', 'Admin/Comment/ajax?q=update', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('400104', '400100', 'url', '删除', 'Admin/Comment/ajax?q=删除', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('400105', '400100', 'url', '编辑', 'Admin/Comment/ajax?q=edit', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('400106', '400100', 'url', '详情', 'Admin/Comment/ajax?q=detail', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('300100', '300000', 'menu', '用户管理', 'Admin/Users/all', 'icon-calendar', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('300101', '300100', 'url', '列表', 'Admin/Users/ajax?q=list', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('300102', '300100', 'url', '新增', 'Admin/Users/ajax?q=insert', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('300103', '300100', 'url', '更新', 'Admin/Users/ajax?q=update', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('300104', '300100', 'url', '删除', 'Admin/Users/ajax?q=delete', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('300105', '300100', 'url', '编辑', 'Admin/Users/ajax?q=edit', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('300106', '300100', 'url', '详情', 'Admin/Users/ajax?q=detail', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('400107', '400100', 'url', '禁用', 'Admin/Comment/ajax?q=disable', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('300107', '300100', 'url', '禁用', 'Admin/Users/ajax?q=disable', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('500107', '500100', 'url', '禁用', 'Admin/Articles/ajax?q=disable', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('400108', '400100', 'url', '启用', 'Admin/Comment/ajax?q=enable', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('300108', '300100', 'url', '启用', 'Admin/Users/ajax?q=enable', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('1100100', '1100000', 'url', '基础信息修改', '1100000', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('1100200', '1100000', 'url', '密码修改', 'System/User/ajax?q=pwdMe', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('500108', '500100', 'url', '启用', 'Admin/Articles/ajax?q=enable', '', '500', '1');

-- ----------------------------
-- Table structure for jxnu_frame_alert
-- ----------------------------
DROP TABLE IF EXISTS `jxnu_frame_alert`;
CREATE TABLE `jxnu_frame_alert` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `to_users` longtext NOT NULL,
  `read_users` longtext,
  `category` varchar(255) DEFAULT '',
  `icon` varchar(255) DEFAULT '',
  `message` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT '',
  `creator_id` int(10) unsigned DEFAULT NULL,
  `create_time` int(10) unsigned DEFAULT NULL,
  `context` varchar(255) DEFAULT '',
  `status` int(10) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_frame_alert
-- ----------------------------

-- ----------------------------
-- Table structure for jxnu_frame_file
-- ----------------------------
DROP TABLE IF EXISTS `jxnu_frame_file`;
CREATE TABLE `jxnu_frame_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文件ID',
  `name` char(255) NOT NULL DEFAULT '' COMMENT '原始文件名',
  `savename` char(255) NOT NULL DEFAULT '' COMMENT '保存名称',
  `savepath` char(255) NOT NULL DEFAULT '' COMMENT '文件保存路径',
  `ext` char(5) NOT NULL DEFAULT '' COMMENT '文件后缀',
  `mime` char(255) NOT NULL DEFAULT '' COMMENT '文件mime类型',
  `size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `location` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '文件保存位置',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '远程地址',
  `create_time` int(10) unsigned NOT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_md5` (`md5`)
) ENGINE=MyISAM AUTO_INCREMENT=384 DEFAULT CHARSET=utf8 COMMENT='文件表';

-- ----------------------------
-- Records of jxnu_frame_file
-- ----------------------------

-- ----------------------------
-- Table structure for jxnu_frame_log
-- ----------------------------
DROP TABLE IF EXISTS `jxnu_frame_log`;
CREATE TABLE `jxnu_frame_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `module` varchar(20) DEFAULT NULL,
  `controller` varchar(20) DEFAULT NULL,
  `action` varchar(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post` text,
  `sql` text,
  `description` longtext,
  `ip` varchar(20) DEFAULT NULL,
  `create_time` int(10) unsigned DEFAULT NULL,
  `status` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `project_id` (`controller`)
) ENGINE=MyISAM AUTO_INCREMENT=157946 DEFAULT CHARSET=utf8 COMMENT='操作日志表';

-- ----------------------------
-- Records of jxnu_frame_log
-- ----------------------------
INSERT INTO `jxnu_frame_log` VALUES ('157759', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"oNV2vFBnnF3HH3MTZMVsjQ==3340324\",\"p\":\"H0FV7ZhQ8zHeDScuAMwakJC\\/A6+Df1MbmcnNFn0NVgC4zqLyfmzQEYbMK0LX5Ziv9096574\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '0.0.0.0', '1511263002', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157760', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"zY0OnXi9W41O5Iw2QIAypg==7766178\",\"p\":\"sbF+LxCjTA2DmDDZqTePJJyMmWiZQ56G79Xl\\/eYnbDYjDLetTmlTfAI6u1V3e4eD4609100\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '0.0.0.0', '1511263112', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157761', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"34jdpRK8Xo23EU3FdOObtw==6200426\",\"p\":\"2h7AxP\\/taUSHBQnadV77zL4SgUFLV0m6N7ufxUmRuDaoAx8Fwe0nHHyNqoW5dePc3573541\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '0.0.0.0', '1511263165', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157762', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"USxoDeFDyG6JHm7p\\/AsngQ==5419811\",\"p\":\"0ikS3OfBX3edkw5Yqlv37FfmZPkac5bUcIrhs82\\/44pqLDkh0HVyIMatro5QxNUn8016427\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '0.0.0.0', '1511263910', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157763', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"6sa2QjNOR51BTkuwHmhXEg==5473664\",\"p\":\"ustP+WLPpFug+NL3Afm+u3hvwPTt6qt2EOLL5QiHUHVs8AkxXGsz+U4phW5IfUSk6185369\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '0.0.0.0', '1511264228', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157764', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"4MHqHcljopVlskcapConeg==5580839\",\"p\":\"anE82+EVO6WtLh20ajEuGKRu9ArWiRyn93Ifi4q865DV16x\\/sm60vzEV7bR93Z\\/q4958910\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '0.0.0.0', '1511265033', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157765', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"ruVhLRXqVTtwaA\\/lUyq90g==8280299\",\"p\":\"E+l8IJQegrAabHJe8UBi7cM2YjPqsyR8Z3pPUxbyznnCW2tEhACWiTwc93K7xyc33418354\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '0.0.0.0', '1511267167', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157766', '42', 'User', 'User', 'profile', '/wechat-admin/index.php/System/User/profile.html', '{\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1510827598,1510986513,1511253014,1511260658\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511260658\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511165713,1511253018,1511259232,1511260660\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511265042\",\"HyFrame_SSID\":\"p6jugoq7ght1ff6djm6v3ht2j0\"}', '', ' >> 信息', '0.0.0.0', '1511267170', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157767', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"b9glZLv8V+E+Jg23s6B\\/Dw==6613488\",\"p\":\"qFgXaQEWKpWTdkxUJj14AnYCFqZUg7VgwNvILNnhJlWqG9PCadf6QWbzqMVbI6K44252582\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '0.0.0.0', '1511329690', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157768', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"6etzCi7OnwJ6aWMDwtageQ==4002430\",\"p\":\"ZT+Bt6Z1T3WsijzjEkS\\/g5xigu9bxQQpcNnydsFrWHTwuVbo7xm53Erx8SESUaCD2413882\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '0.0.0.0', '1511346448', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157769', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"8yeEGS3jznweqezzab+nSA==1157591\",\"p\":\"EsvghYO2cS6Tr0PPbtPVHg7V1L442tPMdBqS5blL2M498I7m8PhvKWgoufwJD8Nl8138891\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '0.0.0.0', '1511346871', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157770', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"IKgbWTEQ51odXN2QEbE1UQ==1167203\",\"p\":\"bd5uKChKiEXONFkmGKSvvwqsM68jhJcYHwMQ1MGUKcVPMfTeK6SFvFDuM+wFrUZ16566027\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '0.0.0.0', '1511347394', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157771', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"kOpKDEiHfa1bST14hgeGgg==8299169\",\"p\":\"3CQda3H48ITomdwLx2r7nbBOTc114pk7RTcWxK+\\/JmQ7IAVmEaR5ZqjBGcaoSdPA1018116\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '0.0.0.0', '1511364668', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157772', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"ZDdYxK+zqD5pT65j2nrUUA==6875562\",\"p\":\"E\\/v3nbdZm8UddG33E9DeI6B0SCPv+eIMRqdTvx3Hrugn+fLPCXnvzNXOSSohnQTv3287956\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '0.0.0.0', '1511364784', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157773', '42', 'College', 'College', 'all', '/wechat-admin/index.php/Admin/College/all.html', '{\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"fvs83pfcmf751kf3ug9057nid0\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1510986513,1511253014,1511260658,1511364176\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511364176\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511329686,1511345481,1511346856,1511364179\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511364785\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '0.0.0.0', '1511364874', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157774', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"X44q0y65ZkFgWw6C\\/rO5ww==9190803\",\"p\":\"cYvN+\\/i1qCFdx5NCfpOOF7zkHY+3NaxiKetmZxGFMM1GU2X75OQyhtA65gCkZ4ep8758579\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '0.0.0.0', '1511364885', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157775', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"2Ngzom1eA31\\/RoVQEy1NTw==6747544\",\"p\":\"TX5djZVE73EHADSmfGQZIoAWwd0cqN2M36LM4r5iQEeBbefHerWo2KU95vARYJ9d8945619\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '0.0.0.0', '1511365141', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157776', '42', 'College', 'College', 'all', '/wechat-admin/index.php/Admin/College/all.html', '{\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"fvs83pfcmf751kf3ug9057nid0\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1510986513,1511253014,1511260658,1511364176\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511364176\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511329686,1511345481,1511346856,1511364179\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365142\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '0.0.0.0', '1511365160', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157777', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"HtK9Vmi\\/UnaF0m0iAZoV8A==7957273\",\"p\":\"3tKU\\/yzrsSY+mPo+aW6D1fBYfjdrUGafaX3Ky8ooydxZ0UZdNt4MeCN7ItkJVlUa2616800\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '0.0.0.0', '1511365316', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157778', '42', 'College', 'College', 'all', '/wechat-admin/index.php/Admin/College/all.html', '{\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"fvs83pfcmf751kf3ug9057nid0\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1510986513,1511253014,1511260658,1511364176\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511364176\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511329686,1511345481,1511346856,1511364179\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365318\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '0.0.0.0', '1511365334', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157779', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"qiiPdOicByghO9Eqq9v3pA==6372108\",\"p\":\"xuMFDcQHN5z0B24aD3YfSCqnv9n+aP+J4sx3FI8uXVwPX8KEeBLwGYeSw3NnpSCV3619179\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '0.0.0.0', '1511365435', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157780', '42', 'College', 'College', 'all', '/wechat-admin/index.php/Admin/College/all.html', '{\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"mqks7aj2h56j9omr6j97si8tg6\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365436\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '0.0.0.0', '1511365438', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157781', '42', 'College', 'College', 'all', '/wechat-admin/index.php/Admin/College/all.html', '{\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"mqks7aj2h56j9omr6j97si8tg6\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365439\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '0.0.0.0', '1511365552', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157782', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"FwCA0KUDeyJyoP+u32QTUQ==2603689\",\"p\":\"mZoUVgX0AUyvLmjwj6FpvMU1H0aQbkqVJcT6eDalxedPw0zhHklSDFNmhuNR\\/\\/Q18752670\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '0.0.0.0', '1511365564', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157783', '42', 'College', 'College', 'all', '/wechat-admin/index.php/Admin/College/all.html', '{\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"mqks7aj2h56j9omr6j97si8tg6\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365565\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '0.0.0.0', '1511365566', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157784', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"QkJ4JyJyyvCduw4Cib3dgQ==9640279\",\"p\":\"2gBWMurAAi2v7ZVA7ycNx54eH\\/p+QGwPUuTlMdtRzthRp32tZi80myLrbLnX3n1j1580452\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '0.0.0.0', '1511403830', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157785', '42', 'College', 'College', 'all', '/wechat-admin/index.php/Admin/College/all.html', '{\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511403831\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '0.0.0.0', '1511403833', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157786', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"NT4JirZlBL82m29JzGbn2w==8949395\",\"p\":\"TY37\\/htQIW6N+ocLwxMPpmqGC4iBM1\\/VevFCG0W4HJcw1B7stl2lGBjkwE5NHSrP4792120\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '0.0.0.0', '1511403957', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157787', '42', 'College', 'College', 'all', '/wechat-admin/index.php/Admin/College/all.html', '{\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511403958\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '0.0.0.0', '1511403959', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157788', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511403958\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 1 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共32 条记录', '0.0.0.0', '1511403960', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157789', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=insert', '{\"_submit\":\"insert\",\"pid\":\"13\",\"_addon_pid\":\"__FALSE__\",\"name\":\"音乐治疗\",\"switch\":\"1\",\"q\":\"insert\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511403961\"}', 'INSERT INTO `jxnu_college` (`pid`,`name`,`switch`) VALUES (\'13\',\'音乐治疗\',\'1\')', ' >> 学院与专业管理信息 >> 数据请求 >> <span class=\"text-info\">数据描述：insert|13|__FALSE__|音乐治疗|1</span> >> <span class=\"text-success\">数据新增成功！</span>', '0.0.0.0', '1511404017', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157790', '42', 'College', 'College', 'all', '/wechat-admin/index.php/Admin/College/all.html', '{\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511403961\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '0.0.0.0', '1511404018', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157791', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511403961\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 1 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共33 条记录', '0.0.0.0', '1511404019', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157792', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=list', '{\"draw\":\"2\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"search\":{\"pid\":\"1\"},\"q\":\"list\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404019\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 1 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 检索 >> 共2 条记录', '0.0.0.0', '1511404025', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157793', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=edit', '{\"pk\":\"encrypt_act-z0FHp25HSIMkK2N_WTEiAaHAhn9hZIhLcehTXvFSSIwXfF9feAO7QUAgHyJWrzdgxK45mWEq2rRArwKFqEncAQ\",\"q\":\"edit\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404019\"}', 'SELECT `name` FROM `jxnu_college` WHERE `id` = 24 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> <span class=\"text-info\">数据描述：24|1|物联网|1|1</span> >> <span class=\"text-success\">请求成功！</span>', '0.0.0.0', '1511404028', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157794', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=edit', '{\"pk\":\"encrypt_act-z0FHp25HSIMkK2N_WTEiAaHAhn9hZIhLcehTXvFSSIwXfF9feAO7QUAgHyJWrzdgxK45mWEq2rRArwKFqEncAQ\",\"q\":\"edit\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404019\"}', 'SELECT `name` FROM `jxnu_college` WHERE `id` = 24 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> <span class=\"text-info\">数据描述：24|1|物联网|1|1</span> >> <span class=\"text-success\">请求成功！</span>', '0.0.0.0', '1511404032', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157795', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=update', '{\"_submit\":\"update\",\"_token\":\"c15m6c8my377be790026m53b8y476975\",\"pid\":\"1\",\"_addon_pid\":\"__FALSE__\",\"name\":\"物联网工程\",\"switch\":\"1\",\"q\":\"update\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404019\"}', 'UPDATE `jxnu_college` SET `pid`=\'1\',`name`=\'物联网工程\',`switch`=\'1\' WHERE `id` = 24', ' >> 学院与专业管理信息 >> 数据请求 >> <span class=\"text-info\">数据描述：update|c15m6c8my377be790026m53b8y476975|1|__FALSE__|物联网工程|1</span> >> <span class=\"text-success\">信息编辑成功！</span>', '0.0.0.0', '1511404037', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157796', '42', 'College', 'College', 'all', '/wechat-admin/index.php/Admin/College/all.html', '{\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404019\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '0.0.0.0', '1511404037', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157797', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404019\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 1 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共33 条记录', '0.0.0.0', '1511404038', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157798', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=insert', '{\"_submit\":\"insert\",\"pid\":\"测试学院\",\"_addon_pid\":\"测试学院\",\"name\":\"没有专业\",\"switch\":\"1\",\"q\":\"insert\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404039\"}', 'INSERT INTO `jxnu_college` (`pid`,`name`,`switch`) VALUES (\'0\',\'没有专业\',\'1\')', ' >> 学院与专业管理信息 >> 数据请求 >> <span class=\"text-info\">数据描述：insert|测试学院|测试学院|没有专业|1</span> >> <span class=\"text-success\">数据新增成功！</span>', '0.0.0.0', '1511404088', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157799', '42', 'College', 'College', 'all', '/wechat-admin/index.php/Admin/College/all.html', '{\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404039\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '0.0.0.0', '1511404088', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157800', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404039\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 2 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共34 条记录', '0.0.0.0', '1511404089', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157801', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=edit', '{\"pk\":\"encrypt_act-hQmrBpWE69a5EV3wOMHOWHAvZSKQo2CMFAAqAdQbxvDdhL_Q52WUPeoaV5h-rU7F3UiJCtTifqQQdeZDKi4FtA\",\"q\":\"edit\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404090\"}', 'SELECT `name` FROM `jxnu_college` WHERE `id` = 34 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> <span class=\"text-info\">数据描述：34|0|没有专业|1|1</span> >> <span class=\"text-success\">请求成功！</span>', '0.0.0.0', '1511404100', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157802', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=edit', '{\"pk\":\"encrypt_act-hQmrBpWE69a5EV3wOMHOWHAvZSKQo2CMFAAqAdQbxvDdhL_Q52WUPeoaV5h-rU7F3UiJCtTifqQQdeZDKi4FtA\",\"q\":\"edit\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404090\"}', 'SELECT `name` FROM `jxnu_college` WHERE `id` = 34 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> <span class=\"text-info\">数据描述：34|0|没有专业|1|1</span> >> <span class=\"text-success\">请求成功！</span>', '0.0.0.0', '1511404109', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157803', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=update', '{\"_submit\":\"update\",\"_token\":\"me40b8619dmby1d3e2d931bb476y0b66\",\"pid\":\"34\",\"_addon_pid\":\"__FALSE__\",\"name\":\"没有专业\",\"switch\":\"1\",\"q\":\"update\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404090\"}', 'UPDATE `jxnu_college` SET `pid`=\'34\',`name`=\'没有专业\',`switch`=\'1\' WHERE `id` = 34', ' >> 学院与专业管理信息 >> 数据请求 >> <span class=\"text-info\">数据描述：update|me40b8619dmby1d3e2d931bb476y0b66|34|__FALSE__|没有专业|1</span> >> <span class=\"text-success\">信息编辑成功！</span>', '0.0.0.0', '1511404119', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157804', '42', 'College', 'College', 'all', '/wechat-admin/index.php/Admin/College/all.html', '{\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404090\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '0.0.0.0', '1511404119', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157805', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404090\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 2 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共34 条记录', '0.0.0.0', '1511404120', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157806', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=edit', '{\"pk\":\"encrypt_act-gkTnVx5g7MbK_hGq5xpH4d6mVXF7v6DYx9jGHhuLH6x5tDCB2i9IDg8oPS1OjQOA7MdUPD1Q9BOcH4STMh664A\",\"q\":\"edit\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404121\"}', 'SELECT `name` FROM `jxnu_college` WHERE `id` = 34 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> <span class=\"text-info\">数据描述：34|34|没有专业|1|1</span> >> <span class=\"text-success\">请求成功！</span>', '0.0.0.0', '1511404129', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157807', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=update', '{\"_submit\":\"update\",\"_token\":\"2e115b220e81671m19mb3m709y1d6m71\",\"pid\":\"222\",\"_addon_pid\":\"222\",\"name\":\"没有专业\",\"switch\":\"1\",\"q\":\"update\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404121\"}', 'UPDATE `jxnu_college` SET `pid`=\'222\',`name`=\'没有专业\',`switch`=\'1\' WHERE `id` = 34', ' >> 学院与专业管理信息 >> 数据请求 >> <span class=\"text-info\">数据描述：update|2e115b220e81671m19mb3m709y1d6m71|222|222|没有专业|1</span> >> <span class=\"text-success\">信息编辑成功！</span>', '0.0.0.0', '1511404154', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157808', '42', 'College', 'College', 'all', '/wechat-admin/index.php/Admin/College/all.html', '{\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404121\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '0.0.0.0', '1511404154', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157809', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404121\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 2 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共34 条记录', '0.0.0.0', '1511404155', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157810', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=delete', '{\"pk\":\"encrypt_act-ZF9Bghq5W5KTECfHblv8j_HP1XxKwPpFCt3Re6rEPkRx_tTqt7qxwQ5ABAf07Gk7l_QmUoJVpQSBglN4x81How\",\"q\":\"delete\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404156\"}', 'UPDATE `jxnu_college` SET `status`=(`id`+9) WHERE `id` IN (\'34\') AND `status` < \'9\'', ' >> 学院与专业管理信息 >> 数据请求 >> <span class=\"text-info\">数据描述：34|222|没有专业|1|1</span> >> <span class=\"text-success\">记录删除成功！</span>', '0.0.0.0', '1511404182', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157811', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=list', '{\"draw\":\"2\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404156\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 2 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共34 条记录', '0.0.0.0', '1511404182', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157812', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=delete', '{\"pk\":\"encrypt_act-Go8iWAdLglLkKV6JyTQGtHsRh-oGRdjNcmJ2-MyU4BRsVCfWJSnb3Opz9kDcg-GVJH1q0x6Ing3r-qHfWdMtFg\",\"q\":\"delete\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404156\"}', 'UPDATE `jxnu_college` SET `status`=(`id`+9) WHERE `id` IN (\'34\') AND `status` < \'9\'', ' >> 学院与专业管理信息 >> 数据请求 >> <span class=\"text-info\">数据描述：34|222||1|43</span> >> <span class=\"text-warning\">删除记录失败！</span>', '0.0.0.0', '1511404189', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157813', '42', 'College', 'College', 'all', '/wechat-admin/index.php/Admin/College/all.html', '{\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404156\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '0.0.0.0', '1511404191', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157814', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404156\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 2 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共34 条记录', '0.0.0.0', '1511404192', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157815', '42', 'College', 'College', 'all', '/wechat-admin/index.php/Admin/College/all.html', '{\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404193\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '0.0.0.0', '1511404258', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157816', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404193\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 1 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共33 条记录', '0.0.0.0', '1511404259', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157817', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=insert', '{\"_submit\":\"insert\",\"pid\":\"测试学院\",\"_addon_pid\":\"测试学院\",\"name\":\"\",\"switch\":\"1\",\"q\":\"insert\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404260\"}', 'INSERT INTO `jxnu_college` (`pid`,`name`,`switch`) VALUES (\'0\',\'\',\'1\')', ' >> 学院与专业管理信息 >> 数据请求 >> <span class=\"text-info\">数据描述：insert|测试学院|测试学院||1</span> >> <span class=\"text-success\">数据新增成功！</span>', '0.0.0.0', '1511404423', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157818', '42', 'College', 'College', 'all', '/wechat-admin/index.php/Admin/College/all.html', '{\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404260\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '0.0.0.0', '1511404423', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157819', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404260\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 2 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共34 条记录', '0.0.0.0', '1511404424', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157820', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=insert', '{\"_submit\":\"insert\",\"pid\":\"35\",\"_addon_pid\":\"__FALSE__\",\"name\":\"没有专业\",\"switch\":\"1\",\"q\":\"insert\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404424\"}', 'INSERT INTO `jxnu_college` (`pid`,`name`,`switch`) VALUES (\'35\',\'没有专业\',\'1\')', ' >> 学院与专业管理信息 >> 数据请求 >> <span class=\"text-info\">数据描述：insert|35|__FALSE__|没有专业|1</span> >> <span class=\"text-success\">数据新增成功！</span>', '0.0.0.0', '1511404453', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157821', '42', 'College', 'College', 'all', '/wechat-admin/index.php/Admin/College/all.html', '{\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404424\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '0.0.0.0', '1511404453', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157822', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404424\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 3 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共35 条记录', '0.0.0.0', '1511404454', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157823', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=list', '{\"draw\":\"2\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"10\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404454\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 1 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共35 条记录', '0.0.0.0', '1511404460', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157824', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=list', '{\"draw\":\"3\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"20\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404454\"}', 'SELECT `id`,`pid`,`name`,`switch`,`status` FROM `jxnu_college` WHERE `switch` = 1 AND `status` = 1 ORDER BY id desc LIMIT 20,10  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共35 条记录', '0.0.0.0', '1511404465', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157825', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=list', '{\"draw\":\"4\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"10\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404454\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 1 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共35 条记录', '0.0.0.0', '1511404467', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157826', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=list', '{\"draw\":\"5\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404454\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 3 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共35 条记录', '0.0.0.0', '1511404468', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157827', '42', 'College', 'College', 'all', '/wechat-admin/index.php/Admin/College/all.html', '{\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404454\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '0.0.0.0', '1511404512', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157828', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404454\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 2 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共12 条记录', '0.0.0.0', '1511404513', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157829', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=list', '{\"draw\":\"2\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"10\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404514\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 1 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共12 条记录', '0.0.0.0', '1511404523', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157830', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=list', '{\"draw\":\"3\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404514\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 2 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共12 条记录', '0.0.0.0', '1511404525', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157831', '42', 'College', 'College', 'all', '/wechat-admin/index.php/Admin/College/all.html', '{\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404514\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '0.0.0.0', '1511404641', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157832', '42', 'College', 'College', 'ajax', '/wechat-admin/index.php/Admin/College/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_dbd30ecee019be97b5bdb3bccd5a1040\":\"1504784576\",\"pgv_pvi\":\"6471651328\",\"HyFrame_SSID\":\"qmps22nbu559psntvvdt5cnrm3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511365431,1511403825\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511404514\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 2 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共12 条记录', '0.0.0.0', '1511404641', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157833', '40', null, 'HyStart', 'ajax', null, '{\"u\":\"FAveOfkPniY9qsVkClYmTg==3079109\",\"p\":\"LwVQ6koI1aspGUN7viBXV40ZnTSO3aUYXngWRrIe1dgOy7XtDiLXWEOhPQKN+7zz7187394\"}', null, ' >> 登录验证 >> <span class=\'text-warning\'>密码错误</span>', '39.176.195.175', '1511530215', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157834', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"ovGa6r+0qpQly2zJQ71fqA==6677343\",\"p\":\"UoBuz7\\/lEbTeqHGlQ6w\\/c4yaokjaX\\/Sk4AlY9W8ertTKX87XyrXxIwQvtnKk4IY+3635230\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '39.176.195.175', '1511530221', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157835', '42', 'Comment', 'Comment', 'all', '/index.php/Admin/Comment/all.html', '{\"HyFrame_SSID\":\"k230ea53oeqmam68non1h08ue6\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511530156\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530252\"}', '', ' >> 消息与评论内容信息 >> 管理列表页', '39.176.195.175', '1511530239', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157836', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"k230ea53oeqmam68non1h08ue6\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511530156\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530252\"}', 'SELECT `content` FROM `jxnu_comment` WHERE `content` = \'这个很好啊\' LIMIT 1  ', ' >> 消息与评论内容信息 >> 数据请求 >> 共4 条记录', '39.176.195.175', '1511530243', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157837', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=detail', '{\"pk\":\"encrypt_act-GPrLdJGs3fd8bfur84lAfzRhTl-UFNc4CQe_1VXseF8WPTqhmq42yfxc7oSFeJKaCcWsi6YJm_MiPqW84Ioo4w\",\"q\":\"detail\",\"HyFrame_SSID\":\"k230ea53oeqmam68non1h08ue6\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511530156\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530258\"}', '', ' >> 消息与评论内容信息 >> 数据请求 >> 浏览详情', '39.176.195.175', '1511530247', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157838', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=detail', '{\"pk\":\"encrypt_act-dHuuylMxFq3EcauzHX5ZKflcB2R3_784msw5G9eNtzI0_sIqJHLkxEZGsE4usdJcz8YLFpKZXrG8EKDPSwl1ow\",\"q\":\"detail\",\"HyFrame_SSID\":\"k230ea53oeqmam68non1h08ue6\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511530156\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530258\"}', '', ' >> 消息与评论内容信息 >> 数据请求 >> 浏览详情', '39.176.195.175', '1511530250', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157839', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"k230ea53oeqmam68non1h08ue6\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511530156\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530258\"}', 'SELECT `content` FROM `jxnu_comment` WHERE `content` = \'这个很好啊\' LIMIT 1  ', ' >> 消息与评论内容信息 >> 数据请求 >> 共4 条记录', '39.176.195.175', '1511530261', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157840', '42', 'College', 'College', 'all', '/index.php/Admin/College/all.html', '{\"HyFrame_SSID\":\"k230ea53oeqmam68non1h08ue6\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511530156\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530275\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '39.176.195.175', '1511530268', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157841', '42', 'College', 'College', 'ajax', '/index.php/Admin/College/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"k230ea53oeqmam68non1h08ue6\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511530156\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530275\"}', 'SELECT 1 FROM `jxnu_college` WHERE `pid` <> 0 AND `status` = 1 ', ' >> 学院与专业管理信息 >> 数据请求 >> 共0 条记录', '39.176.195.175', '1511530268', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157842', '42', 'College', 'College', 'ajax', '/index.php/Admin/College/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"k230ea53oeqmam68non1h08ue6\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511530156\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530283\"}', 'SELECT 1 FROM `jxnu_college` WHERE `pid` <> 0 AND `status` = 1 ', ' >> 学院与专业管理信息 >> 数据请求 >> 共0 条记录', '39.176.195.175', '1511530284', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157843', '42', 'Comment', 'Comment', 'all', '/index.php/Admin/Comment/all.html', '{\"HyFrame_SSID\":\"k230ea53oeqmam68non1h08ue6\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511530156\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530299\"}', '', ' >> 消息与评论内容信息 >> 管理列表页', '39.176.195.175', '1511530286', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157844', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"k230ea53oeqmam68non1h08ue6\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511530156\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530299\"}', 'SELECT `content` FROM `jxnu_comment` WHERE `content` = \'这个很好啊\' LIMIT 1  ', ' >> 消息与评论内容信息 >> 数据请求 >> 共4 条记录', '39.176.195.175', '1511530287', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157845', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=disable', '{\"pk\":\"encrypt_act-DAFm2epZF0xPcM_g2NnIgspwPMi04lFzeTT4sTYijWYQMEPp4h-1SqS_4pQ_3N5otUJc4Zz5EKAz_1-iEvGLHg\",\"q\":\"disable\",\"HyFrame_SSID\":\"k230ea53oeqmam68non1h08ue6\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511530156\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530301\"}', 'UPDATE `jxnu_comment` SET `status`=\'0\' WHERE `id` IN (\'1\')', ' >> 消息与评论内容信息 >> 数据请求 >> <span class=\"text-info\">数据描述：1|123123|1|这个很好啊|2017-11-22 23:12:19|1</span> >> <span class=\"text-success\">记录禁用成功！</span>', '39.176.195.175', '1511530324', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157846', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=list', '{\"draw\":\"2\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"k230ea53oeqmam68non1h08ue6\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511530156\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530301\"}', 'SELECT `content` FROM `jxnu_comment` WHERE `content` = \'这个很好啊\' LIMIT 1  ', ' >> 消息与评论内容信息 >> 数据请求 >> 共4 条记录', '39.176.195.175', '1511530325', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157847', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=enable', '{\"pk\":\"encrypt_act-AHmMperR12qnwbHj9uqZkDDgqftaCNPy27hk2jIq65F_PjaDAK7uZhk3rwB8mQSKopGDl2L2rqhNbj4qS3YgEA\",\"q\":\"enable\",\"HyFrame_SSID\":\"k230ea53oeqmam68non1h08ue6\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511530156\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530301\"}', 'UPDATE `jxnu_comment` SET `status`=\'1\' WHERE `id` IN (\'1\')', ' >> 消息与评论内容信息 >> 数据请求 >> <span class=\"text-info\">数据描述：1|123123|1|这个很好啊|2017-11-22 23:12:19|0</span> >> <span class=\"text-success\">记录启用成功！</span>', '39.176.195.175', '1511530328', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157848', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=list', '{\"draw\":\"3\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"k230ea53oeqmam68non1h08ue6\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511530156\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530301\"}', 'SELECT `content` FROM `jxnu_comment` WHERE `content` = \'这个很好啊\' LIMIT 1  ', ' >> 消息与评论内容信息 >> 数据请求 >> 共4 条记录', '39.176.195.175', '1511530328', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157849', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=disable', '{\"pk\":\"encrypt_act-tXEMw552DKxFZ8OosWQo_bnoElz6d8-FAof7k_nzkCKpq0zXjLyf1smfFcMKqxCZ3grdlEnOGZtjnwJ8SPGb8g,encrypt_act-L7jtscHS5zt2YptRUAo-1ExCbXY9bKCKEiR9DLAHjJiQGVYl4w1HYxnV7fvi3TOGYQH4QfkgO1VYWUIOJUK-yQ\",\"q\":\"disable\",\"HyFrame_SSID\":\"k230ea53oeqmam68non1h08ue6\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511530156\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530301\"}', 'UPDATE `jxnu_comment` SET `status`=\'0\' WHERE `id` IN (\'2\',\'1\')', ' >> 消息与评论内容信息 >> 数据请求 >> <span class=\"text-info\">数据描述：1|123123|1|这个很好啊|2017-11-22 23:12:19|1</span> >> <span class=\"text-success\">记录禁用成功！</span>', '39.176.195.175', '1511530334', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157850', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=list', '{\"draw\":\"4\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"k230ea53oeqmam68non1h08ue6\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511530156\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530301\"}', 'SELECT `content` FROM `jxnu_comment` WHERE `content` = \'这个很好啊\' LIMIT 1  ', ' >> 消息与评论内容信息 >> 数据请求 >> 共4 条记录', '39.176.195.175', '1511530334', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157851', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=enable', '{\"pk\":\"encrypt_act-oiHuDz3TZthqjwlMfZERrRZhr9JEyvZiHu3FpBmFglw9pU9VyBL-H2KMHzVOBkVQYJY__Hhjlp8eY5KNsSvwwA,encrypt_act-pEEgKT_uxuPsOHwBym4IuHdg5qoafIp1xlVNv8YQWSTIyOfz6gjB05F3VGLj_8ZurXcrAX-mj-4MFJVUUfZQ5Q\",\"q\":\"enable\",\"HyFrame_SSID\":\"k230ea53oeqmam68non1h08ue6\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511530156\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530301\"}', 'UPDATE `jxnu_comment` SET `status`=\'1\' WHERE `id` IN (\'2\',\'1\')', ' >> 消息与评论内容信息 >> 数据请求 >> <span class=\"text-info\">数据描述：1|123123|1|这个很好啊|2017-11-22 23:12:19|0</span> >> <span class=\"text-success\">记录启用成功！</span>', '39.176.195.175', '1511530339', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157852', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=list', '{\"draw\":\"5\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"k230ea53oeqmam68non1h08ue6\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511530156\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530301\"}', 'SELECT `content` FROM `jxnu_comment` WHERE `content` = \'这个很好啊\' LIMIT 1  ', ' >> 消息与评论内容信息 >> 数据请求 >> 共4 条记录', '39.176.195.175', '1511530339', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157853', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=detail', '{\"pk\":\"encrypt_act-twGqctynd9aU_b7xQtYpqusjT6YuqBW9N_GNbSRANQSkgFJL-4dpzw1J4l94JzjwndOHejmODEO1ZX2Z_RZCFA\",\"q\":\"detail\",\"HyFrame_SSID\":\"k230ea53oeqmam68non1h08ue6\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"Hm_lpvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511530156\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530301\"}', '', ' >> 消息与评论内容信息 >> 数据请求 >> 浏览详情', '39.176.195.175', '1511530916', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157854', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"U9JNO5Li3S+kXOoFai0jEg==1377904\",\"p\":\"bPRMYVZovbxY4hBfSqFOVmY9wbzYcIVnnj6U2D64IXcofMjzJsTFS+JTrodZKlFA9960079\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '202.101.194.203', '1511690532', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157855', '42', 'Comment', 'Comment', 'all', '/index.php/Admin/Comment/all.html', '{\"HyFrame_SSID\":\"rp82s88v5lqp1fardbmcpicon4\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511690828\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511690840\"}', '', ' >> 消息与评论内容信息 >> 管理列表页', '202.101.194.203', '1511690541', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157856', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"rp82s88v5lqp1fardbmcpicon4\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511690828\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511690840\"}', 'SELECT `content` FROM `jxnu_comment` WHERE `content` = \'这个很好啊\' LIMIT 1  ', ' >> 消息与评论内容信息 >> 数据请求 >> 共4 条记录', '202.101.194.203', '1511690543', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157857', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"rp82s88v5lqp1fardbmcpicon4\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511690828\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511690844\"}', 'SELECT `content` FROM `jxnu_comment` WHERE `content` = \'这个很好啊\' LIMIT 1  ', ' >> 消息与评论内容信息 >> 数据请求 >> 共4 条记录', '202.101.194.203', '1511690566', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157858', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"rp82s88v5lqp1fardbmcpicon4\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511690828\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511690867\"}', 'SELECT `content` FROM `jxnu_comment` WHERE `content` = \'这个很好啊\' LIMIT 1  ', ' >> 消息与评论内容信息 >> 数据请求 >> 共4 条记录', '202.101.194.203', '1511690586', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157859', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"rp82s88v5lqp1fardbmcpicon4\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511690828\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511690886\"}', 'SELECT `content` FROM `jxnu_comment` WHERE `content` = \'这个很好啊\' LIMIT 1  ', ' >> 消息与评论内容信息 >> 数据请求 >> 共4 条记录', '202.101.194.203', '1511690599', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157860', '42', 'College', 'College', 'all', '/index.php/Admin/College/all.html', '{\"HyFrame_SSID\":\"rp82s88v5lqp1fardbmcpicon4\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511690828\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511690900\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '202.101.194.203', '1511690601', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157861', '42', 'College', 'College', 'ajax', '/index.php/Admin/College/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"rp82s88v5lqp1fardbmcpicon4\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511690828\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511690900\"}', 'SELECT 1 FROM `jxnu_college` WHERE `pid` <> 0 AND `status` = 1 ', ' >> 学院与专业管理信息 >> 数据请求 >> 共0 条记录', '202.101.194.203', '1511690601', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157862', '40', null, 'HyStart', 'ajax', null, '{\"u\":\"Z8elvTaoVWyaNkvI6Wg+wg==9531972\",\"p\":\"e7BAv56dw+t7hB8XTBJ4lMt12UmIcyUtBEtu4r55X6UAgHz45Um2tueTJoALWDPN8786723\"}', null, ' >> 登录验证 >> <span class=\'text-warning\'>密码错误</span>', '223.104.10.152', '1511712464', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157863', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"0c9VVbRqpbzAPDhrmnMwgg==5391765\",\"p\":\"kerVkKEXtsHyQtt7DbGlndE4hYKn\\/AhHT9lveSMig4vg0XQjg\\/g7vMWY7VwDKOzr9506514\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '223.104.10.152', '1511712469', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157864', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"u9+7TqX8NAeEFwB6Qgu5CQ==7295929\",\"p\":\"jjrA6f4SIX9aQuXVkD\\/EQ\\/735nHvCRnfcH0qaB6rAo9jUg943bonFjbijgJXSToQ5741470\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '182.108.8.214', '1511759660', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157865', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"FFKZueY6WFmRxvDJbgXygQ==1596030\",\"p\":\"BO2UHX1eQ0zt1doGcEk6SpR4jgmPCygO1LDNnrbz1ocSpNwp\\/gdKrT56aZo5+Vm98498586\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '182.108.8.214', '1511759710', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157866', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"rzVVktYaUUKVAINwYGajRA==7830684\",\"p\":\"cZ3md9lI6d6jMLp5aUE\\/8r9ulCGnDsXKpu2TT8O1NDd\\/Hhqp\\/wk37CkezjvhfE2X7359272\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '182.108.8.214', '1511759876', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157867', '42', 'Articles', 'Articles', 'all', '/index.php/Admin/Articles/all.html', '{\"HyFrame_SSID\":\"p74eg0f9r7hid6hepd33lea4p5\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511760010\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511760179\"}', '', ' >> 动态与文章内容信息 >> 管理列表页', '182.108.8.214', '1511759879', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157868', '42', 'Articles', 'Articles', 'ajax', '/index.php/Admin/Articles/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"p74eg0f9r7hid6hepd33lea4p5\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511760010\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511760179\"}', 'SELECT `content` FROM `jxnu_article` WHERE `content` = \'哪位小姐姐可以帮忙带一杯奶茶吗？地点右下角，s230\' LIMIT 1  ', ' >> 动态与文章内容信息 >> 数据请求 >> 共12 条记录', '182.108.8.214', '1511759881', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157869', '42', 'Users', 'Users', 'all', '/index.php/Admin/Users/all.html', '{\"HyFrame_SSID\":\"p74eg0f9r7hid6hepd33lea4p5\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511760010\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511760183\"}', '', ' >> 用户信息 >> 管理列表页', '182.108.8.214', '1511759884', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157870', '42', 'Users', 'Users', 'ajax', '/index.php/Admin/Users/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"p74eg0f9r7hid6hepd33lea4p5\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511760010\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511760183\"}', 'SELECT `id`,`name`,`roles`,`user_no`,`password`,`user_img`,`authrity`,`integral`,`sex`,`phone`,`qq`,`email`,`session_id`,`login_last_time`,`login_times`,`status`,`admission_time` FROM `jxnu_user` WHERE `roles` <> 31 ORDER BY id desc LIMIT 10  ', ' >> 用户信息 >> 数据请求 >> 共31 条记录', '182.108.8.214', '1511759885', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157871', '42', 'Users', 'Users', 'ajax', '/index.php/Admin/Users/ajax?q=edit', '{\"pk\":\"encrypt_act-dflEwWoWHKa3kKBbpAlAZCvTxiSQXosPlNTmDViMHnzc3Q3avLO2o-JELaYl2XcgJOpiL0jg28LxK-SCWsOFjA\",\"q\":\"edit\",\"HyFrame_SSID\":\"p74eg0f9r7hid6hepd33lea4p5\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511760010\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511760187\"}', 'SELECT * FROM `jxnu_user` WHERE `id` = \'43\' ', ' >> 用户信息 >> 数据请求 >> <span class=\"text-info\">数据描述：43|辽竹||Q0j4TwGTfTL0fvcRKgRGia4SykgTLECkkDFDITiawFWYibVcRTrsM2FxA4m3Tn8Xx8SJSVc04eO2BuHMmK6qDviaOQ||https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTL0fvcRKgRGia4SykgTLECkkDFDITiawFWYibVcRTrsM2FxA4m3Tn8Xx8SJSVc04eO2BuHMmK6qDviaOQ/0|||||||0066a0d52d133b5fc7f129fa47ae1d506032c3bc8cf6da213c60e298974ca07c||0|1|</span> >> <span class=\"text-success\">请求成功！</span>', '182.108.8.214', '1511759890', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157872', '42', 'Users', 'Users', 'ajax', '/index.php/Admin/Users/ajax?q=update', '{\"_submit\":\"update\",\"_token\":\"032e082b4cc720dy1922cb059mmd3902\",\"integral\":\"1\",\"q\":\"update\",\"HyFrame_SSID\":\"p74eg0f9r7hid6hepd33lea4p5\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511760010\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511760187\"}', 'UPDATE `jxnu_user` SET `integral`=\'1\' WHERE `id` = 43', ' >> 用户信息 >> 数据请求 >> <span class=\"text-info\">数据描述：update|032e082b4cc720dy1922cb059mmd3902|1</span> >> <span class=\"text-success\">信息编辑成功！</span>', '182.108.8.214', '1511759896', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157873', '42', 'Users', 'Users', 'ajax', '/index.php/Admin/Users/ajax?q=list', '{\"draw\":\"2\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"p74eg0f9r7hid6hepd33lea4p5\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511760010\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511760187\"}', 'SELECT `id`,`name`,`roles`,`user_no`,`password`,`user_img`,`authrity`,`integral`,`sex`,`phone`,`qq`,`email`,`session_id`,`login_last_time`,`login_times`,`status`,`admission_time` FROM `jxnu_user` WHERE `roles` <> 31 ORDER BY id desc LIMIT 0,10  ', ' >> 用户信息 >> 数据请求 >> 共31 条记录', '182.108.8.214', '1511759896', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157874', '40', null, 'HyStart', 'ajax', null, '{\"u\":\"KrxmzmnBQf6pm1tmpFxQ2A==3317399\",\"p\":\"qmSsya0oS6xOFmz3qdEsS4Z08+xM7KZxPk\\/S3yirM78ZH8xDPJvV2eCGkwSa03F62427938\"}', null, ' >> 登录验证 >> <span class=\'text-warning\'>密码错误</span>', '219.229.253.148', '1511850038', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157875', '40', null, 'HyStart', 'ajax', null, '{\"u\":\"iT0TYitIYB4QexJ9tmUTbQ==1550122\",\"p\":\"dwpjjZyOwwlnDrzx7+t\\/h6eWK66Z92xwY3DkSx\\/D+ra3DomqMhvxLhNfr0yX+OFP1751800\"}', null, ' >> 登录验证 >> <span class=\'text-warning\'>密码错误</span>', '219.229.253.148', '1511850055', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157876', '40', null, 'HyStart', 'ajax', null, '{\"u\":\"\\/s7uUGCHjTGuMSbf8NwXsQ==2424936\",\"p\":\"VJH36VPUoVPzKuD3ywuVQlGD\\/y64raOd3SL73Rey8b5cK\\/\\/DhW7bdhyqtGR8H1gh3715197\"}', null, ' >> 登录验证 >> <span class=\'text-warning\'>密码错误</span>', '219.229.253.148', '1511850069', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157877', '40', null, 'HyStart', 'ajax', null, '{\"u\":\"XU6VpjTbNIQAUntEISoF6A==4828669\",\"p\":\"4HDdLfL76KJBlB6E81iWnbv5UGCh0muua3\\/4GxLCT7T2S3m0z2s9B15E9Njcymma1787040\"}', null, ' >> 登录验证 >> <span class=\'text-warning\'>密码错误</span>', '219.229.253.148', '1511850076', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157878', '40', null, 'HyStart', 'ajax', null, '{\"u\":\"QbTt\\/FNOGqFL7VdToSwx0A==6098676\",\"p\":\"JcW65r\\/ptBdwaOCcPp+\\/t1sq6sWfizKrowFqAkLLpVJjTeonNaj3W7BymWEPpZPM8727852\"}', null, ' >> 登录验证 >> <span class=\'text-warning\'>密码错误</span>', '219.229.253.148', '1511850083', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157879', '40', null, 'HyStart', 'ajax', null, '{\"u\":\"nXtPqPuPXRwTdqGmbOo0BA==3213971\",\"p\":\"8doFhf5siWGXLolc53veaFqv9tpiLKKw1WXHdJ6oJI82GXKEXp1A4qLGw7h0jIVS6538622\"}', null, ' >> 登录验证 >> <span class=\'text-warning\'>密码错误</span>', '219.229.253.148', '1511850088', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157880', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"XF7w00UBSpHFuDuDfbasXQ==8478739\",\"p\":\"4+VnADeVYF61Y5AFwipdLMTUvr5DfbaDmd7UQBlNqtRty56lQKZghIxlJxV4bE7V8061138\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '219.229.253.148', '1511850098', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157881', '42', 'Users', 'Users', 'all', '/index.php/Admin/Users/all.html', '{\"HyFrame_SSID\":\"6tjgjkurhf5t7bcuc8v056cd02\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850111\"}', '', ' >> 用户信息 >> 管理列表页', '219.229.253.148', '1511850646', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157882', '42', 'Users', 'Users', 'ajax', '/index.php/Admin/Users/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"6tjgjkurhf5t7bcuc8v056cd02\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850111\"}', 'SELECT `id`,`name`,`roles`,`user_no`,`password`,`user_img`,`authrity`,`integral`,`sex`,`phone`,`qq`,`email`,`session_id`,`login_last_time`,`login_times`,`status`,`admission_time` FROM `jxnu_user` WHERE `roles` <> 31 ORDER BY id desc LIMIT 10  ', ' >> 用户信息 >> 数据请求 >> 共31 条记录', '219.229.253.148', '1511850662', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157883', '42', 'Comment', 'Comment', 'all', '/index.php/Admin/Comment/all.html', '{\"HyFrame_SSID\":\"6tjgjkurhf5t7bcuc8v056cd02\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850669\"}', '', ' >> 消息与评论内容信息 >> 管理列表页', '219.229.253.148', '1511850789', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157884', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"6tjgjkurhf5t7bcuc8v056cd02\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850669\"}', 'SELECT `content` FROM `jxnu_comment` WHERE `content` = \'有人找你o，明月同学\' LIMIT 1  ', ' >> 消息与评论内容信息 >> 数据请求 >> 共22 条记录', '219.229.253.148', '1511850790', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157885', '42', 'College', 'College', 'all', '/index.php/Admin/College/all.html', '{\"HyFrame_SSID\":\"6tjgjkurhf5t7bcuc8v056cd02\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850792\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '219.229.253.148', '1511850793', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157886', '42', 'College', 'College', 'ajax', '/index.php/Admin/College/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"6tjgjkurhf5t7bcuc8v056cd02\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850792\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 2 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共12 条记录', '219.229.253.148', '1511850794', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157887', '42', 'Articles', 'Articles', 'all', '/index.php/Admin/Articles/all.html', '{\"HyFrame_SSID\":\"6tjgjkurhf5t7bcuc8v056cd02\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850797\"}', '', ' >> 动态与文章内容信息 >> 管理列表页', '219.229.253.148', '1511850798', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157888', '42', 'Articles', 'Articles', 'ajax', '/index.php/Admin/Articles/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"6tjgjkurhf5t7bcuc8v056cd02\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850797\"}', 'SELECT `content` FROM `jxnu_article` WHERE `content` = \'哪位小姐姐可以帮忙带一杯奶茶吗？地点右下角，s230\' LIMIT 1  ', ' >> 动态与文章内容信息 >> 数据请求 >> 共12 条记录', '219.229.253.148', '1511850799', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157889', '42', 'Articles', 'Articles', 'ajax', '/index.php/Admin/Articles/ajax?q=detail', '{\"pk\":\"encrypt_act-0pfpCF32BfqJ2ubMHQPgKWdNvUXPwM5AKr_eg0j183To0bmgB8oTppuChasmoBR2U7kbCg-wD1VJToXbTXJSVg\",\"q\":\"detail\",\"HyFrame_SSID\":\"6tjgjkurhf5t7bcuc8v056cd02\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850801\"}', '', ' >> 动态与文章内容信息 >> 数据请求 >> 浏览详情', '219.229.253.148', '1511850807', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157890', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"KKEddBUJLVECF03vn1vnkQ==2130681\",\"p\":\"DE62aT3V+XhYxqm6\\/+cr8k12T1S8V5ymwx2GoQrIxFG9y3wYLH4I76utVnjFKfnF9482713\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '219.229.253.148', '1511852947', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157891', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"R1ix+K3+fuifHtG28x9QjA==9097620\",\"p\":\"KPW947VPmTX9oIjwzTf3JDaO0AnJVS4qsUTBifXVEI35D7dfd9rLwEY4cXkal7LX1259620\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '219.229.253.148', '1511854167', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157892', '42', 'Users', 'Users', 'all', '/index.php/Admin/Users/all.html', '{\"HyFrame_SSID\":\"e2hkaas9u1pj351oc7hsshgoi2\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511854174\"}', '', ' >> 用户信息 >> 管理列表页', '219.229.253.148', '1511854174', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157893', '42', 'Users', 'Users', 'ajax', '/index.php/Admin/Users/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"e2hkaas9u1pj351oc7hsshgoi2\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511854174\"}', 'SELECT `id`,`name`,`roles`,`user_no`,`password`,`user_img`,`authrity`,`integral`,`sex`,`phone`,`qq`,`email`,`session_id`,`login_last_time`,`login_times`,`status`,`admission_time` FROM `jxnu_user` WHERE `roles` <> 31 ORDER BY id desc LIMIT 10  ', ' >> 用户信息 >> 数据请求 >> 共32 条记录', '219.229.253.148', '1511854175', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157894', '42', 'Users', 'Users', 'ajax', '/index.php/Admin/Users/ajax?q=list', '{\"draw\":\"2\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"search\":{\"status\":\"\"},\"q\":\"list\",\"HyFrame_SSID\":\"e2hkaas9u1pj351oc7hsshgoi2\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511854178\"}', 'SELECT `id`,`name`,`roles`,`user_no`,`password`,`user_img`,`authrity`,`integral`,`sex`,`phone`,`qq`,`email`,`session_id`,`login_last_time`,`login_times`,`status`,`admission_time` FROM `jxnu_user` WHERE `roles` <> 31 ORDER BY id desc LIMIT 0,10  ', ' >> 用户信息 >> 数据请求 >> 检索 >> 共32 条记录', '219.229.253.148', '1511854203', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157895', '42', 'Comment', 'Comment', 'all', '/index.php/Admin/Comment/all.html', '{\"HyFrame_SSID\":\"e2hkaas9u1pj351oc7hsshgoi2\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511854178\"}', '', ' >> 消息与评论内容信息 >> 管理列表页', '219.229.253.148', '1511854224', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157896', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"e2hkaas9u1pj351oc7hsshgoi2\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511854178\"}', 'SELECT `content` FROM `jxnu_comment` WHERE `content` = \'有人找你o，明月同学\' LIMIT 1  ', ' >> 消息与评论内容信息 >> 数据请求 >> 共22 条记录', '219.229.253.148', '1511854226', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157897', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=detail', '{\"pk\":\"encrypt_act-5JyOE--YaHAfFy9zbOLKzqF1pLRju4asWxhKGdrLdnFQvlEpVoXvEnnngLbYjj31lmbUT2O21w17ONOKUSWkrA\",\"q\":\"detail\",\"HyFrame_SSID\":\"e2hkaas9u1pj351oc7hsshgoi2\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511854228\"}', '', ' >> 消息与评论内容信息 >> 数据请求 >> 浏览详情', '219.229.253.148', '1511854230', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157898', '42', 'College', 'College', 'all', '/index.php/Admin/College/all.html', '{\"HyFrame_SSID\":\"e2hkaas9u1pj351oc7hsshgoi2\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511854228\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '219.229.253.148', '1511854889', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157899', '42', 'College', 'College', 'ajax', '/index.php/Admin/College/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"e2hkaas9u1pj351oc7hsshgoi2\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511854228\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 2 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共12 条记录', '219.229.253.148', '1511854891', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157900', '42', 'Comment', 'Comment', 'all', '/index.php/Admin/Comment/all.html', '{\"HyFrame_SSID\":\"e2hkaas9u1pj351oc7hsshgoi2\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511854893\"}', '', ' >> 消息与评论内容信息 >> 管理列表页', '219.229.253.148', '1511854929', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157901', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"HyFrame_SSID\":\"e2hkaas9u1pj351oc7hsshgoi2\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511854893\"}', 'SELECT `content` FROM `jxnu_comment` WHERE `content` = \'有人找你o，明月同学\' LIMIT 1  ', ' >> 消息与评论内容信息 >> 数据请求 >> 共22 条记录', '219.229.253.148', '1511854930', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157902', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=detail', '{\"pk\":\"encrypt_act-OnwjArjvD_BofFkpEDsuGCjc3jCSO5n4jeYHwlgIaKDgmwc-BtJEcBXyQ0f92kx1hedSNFzGqaXwV-LB8maAqg\",\"q\":\"detail\",\"HyFrame_SSID\":\"e2hkaas9u1pj351oc7hsshgoi2\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511850042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511854932\"}', '', ' >> 消息与评论内容信息 >> 数据请求 >> 浏览详情', '219.229.253.148', '1511854933', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157903', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"lyUsZPJhvANhLPJnKgxbGA==4199779\",\"p\":\"bBEhIHLcrY8y\\/mvZ43VMm8rXAqhOJB97jesp1MFMUmXgefwj45DckKAu68jglUYa2006714\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '219.229.253.148', '1511859133', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157904', '40', null, 'HyStart', 'ajax', null, '{\"u\":\"1L9Xe2GDgj0MEMAGFGDunA==1085871\",\"p\":\"A3XSihIQA1R\\/\\/Eu0TIcKwTrulD9GdWqpBOhIHYed6BLqU4LQfIbZzpDhWv8jNz8F8107540\"}', null, ' >> 登录验证 >> <span class=\'text-warning\'>密码错误</span>', '182.106.227.84', '1512042013', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157905', '40', null, 'HyStart', 'ajax', null, '{\"u\":\"i0sbCyK+TsM4TvU0EPjA7Q==5539314\",\"p\":\"HRoLgIKiabonlNUG5jrRfgUuS+or8uwCqpX2m9npAdyldaKVF4oNZXis0nWYuj352256015\"}', null, ' >> 登录验证 >> <span class=\'text-warning\'>密码错误</span>', '182.106.227.84', '1512042022', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157906', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"5nc7fBjc2b9EmSQ4kACp\\/w==1249946\",\"p\":\"t+GWwwAzACt8l7HBNjGH4L5+3InDRVN1jMgsTPWhnAXB9oKa300cNcz+WjQOoOmB5551160\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '182.106.227.84', '1512042042', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157907', '42', 'College', 'College', 'all', '/index.php/Admin/College/all.html', '{\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042069\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '182.106.227.84', '1512042073', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157908', '42', 'College', 'College', 'ajax', '/index.php/Admin/College/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042069\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 5 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共19 条记录', '182.106.227.84', '1512042076', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157909', '42', 'Users', 'Users', 'all', '/index.php/Admin/Users/all.html', '{\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042087\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', '', ' >> 用户信息 >> 管理列表页', '182.106.227.84', '1512042093', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157910', '42', 'Users', 'Users', 'ajax', '/index.php/Admin/Users/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042087\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `id`,`name`,`roles`,`user_no`,`password`,`user_img`,`authrity`,`integral`,`sex`,`phone`,`qq`,`email`,`session_id`,`login_last_time`,`login_times`,`status`,`admission_time` FROM `jxnu_user` WHERE `roles` <> 31 ORDER BY id desc LIMIT 10  ', ' >> 用户信息 >> 数据请求 >> 共33 条记录', '182.106.227.84', '1512042094', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157911', '42', 'Users', 'Users', 'ajax', '/index.php/Admin/Users/ajax?q=list', '{\"draw\":\"2\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"10\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042096\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `id`,`name`,`roles`,`user_no`,`password`,`user_img`,`authrity`,`integral`,`sex`,`phone`,`qq`,`email`,`session_id`,`login_last_time`,`login_times`,`status`,`admission_time` FROM `jxnu_user` WHERE `roles` <> 31 ORDER BY id desc LIMIT 10,10  ', ' >> 用户信息 >> 数据请求 >> 共33 条记录', '182.106.227.84', '1512042105', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157912', '42', 'Users', 'Users', 'ajax', '/index.php/Admin/Users/ajax?q=list', '{\"draw\":\"3\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"20\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042096\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `id`,`name`,`roles`,`user_no`,`password`,`user_img`,`authrity`,`integral`,`sex`,`phone`,`qq`,`email`,`session_id`,`login_last_time`,`login_times`,`status`,`admission_time` FROM `jxnu_user` WHERE `roles` <> 31 ORDER BY id desc LIMIT 20,10  ', ' >> 用户信息 >> 数据请求 >> 共33 条记录', '182.106.227.84', '1512042107', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157913', '42', 'Users', 'Users', 'ajax', '/index.php/Admin/Users/ajax?q=list', '{\"draw\":\"4\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"10\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042096\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `id`,`name`,`roles`,`user_no`,`password`,`user_img`,`authrity`,`integral`,`sex`,`phone`,`qq`,`email`,`session_id`,`login_last_time`,`login_times`,`status`,`admission_time` FROM `jxnu_user` WHERE `roles` <> 31 ORDER BY id desc LIMIT 10,10  ', ' >> 用户信息 >> 数据请求 >> 共33 条记录', '182.106.227.84', '1512042108', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157914', '42', 'Users', 'Users', 'ajax', '/index.php/Admin/Users/ajax?q=list', '{\"draw\":\"5\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"20\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042096\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `id`,`name`,`roles`,`user_no`,`password`,`user_img`,`authrity`,`integral`,`sex`,`phone`,`qq`,`email`,`session_id`,`login_last_time`,`login_times`,`status`,`admission_time` FROM `jxnu_user` WHERE `roles` <> 31 ORDER BY id desc LIMIT 20,10  ', ' >> 用户信息 >> 数据请求 >> 共33 条记录', '182.106.227.84', '1512042109', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157915', '42', 'Users', 'Users', 'ajax', '/index.php/Admin/Users/ajax?q=list', '{\"draw\":\"6\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"30\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042096\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `id`,`name`,`roles`,`user_no`,`password`,`user_img`,`authrity`,`integral`,`sex`,`phone`,`qq`,`email`,`session_id`,`login_last_time`,`login_times`,`status`,`admission_time` FROM `jxnu_user` WHERE `roles` <> 31 ORDER BY id desc LIMIT 30,10  ', ' >> 用户信息 >> 数据请求 >> 共33 条记录', '182.106.227.84', '1512042112', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157916', '42', 'Users', 'Users', 'ajax', '/index.php/Admin/Users/ajax?q=list', '{\"draw\":\"7\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"20\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042096\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `id`,`name`,`roles`,`user_no`,`password`,`user_img`,`authrity`,`integral`,`sex`,`phone`,`qq`,`email`,`session_id`,`login_last_time`,`login_times`,`status`,`admission_time` FROM `jxnu_user` WHERE `roles` <> 31 ORDER BY id desc LIMIT 20,10  ', ' >> 用户信息 >> 数据请求 >> 共33 条记录', '182.106.227.84', '1512042114', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157917', '42', 'Users', 'Users', 'ajax', '/index.php/Admin/Users/ajax?q=list', '{\"draw\":\"8\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"10\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042096\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `id`,`name`,`roles`,`user_no`,`password`,`user_img`,`authrity`,`integral`,`sex`,`phone`,`qq`,`email`,`session_id`,`login_last_time`,`login_times`,`status`,`admission_time` FROM `jxnu_user` WHERE `roles` <> 31 ORDER BY id desc LIMIT 10,10  ', ' >> 用户信息 >> 数据请求 >> 共33 条记录', '182.106.227.84', '1512042117', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157918', '42', 'Users', 'Users', 'ajax', '/index.php/Admin/Users/ajax?q=list', '{\"draw\":\"9\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042096\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `id`,`name`,`roles`,`user_no`,`password`,`user_img`,`authrity`,`integral`,`sex`,`phone`,`qq`,`email`,`session_id`,`login_last_time`,`login_times`,`status`,`admission_time` FROM `jxnu_user` WHERE `roles` <> 31 ORDER BY id desc LIMIT 0,10  ', ' >> 用户信息 >> 数据请求 >> 共33 条记录', '182.106.227.84', '1512042120', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157919', '42', 'Users', 'Users', 'ajax', '/index.php/Admin/Users/ajax?q=list', '{\"draw\":\"10\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"10\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042096\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `id`,`name`,`roles`,`user_no`,`password`,`user_img`,`authrity`,`integral`,`sex`,`phone`,`qq`,`email`,`session_id`,`login_last_time`,`login_times`,`status`,`admission_time` FROM `jxnu_user` WHERE `roles` <> 31 ORDER BY id desc LIMIT 10,10  ', ' >> 用户信息 >> 数据请求 >> 共33 条记录', '182.106.227.84', '1512042144', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157920', '42', 'Users', 'Users', 'ajax', '/index.php/Admin/Users/ajax?q=list', '{\"draw\":\"11\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"20\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042096\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `id`,`name`,`roles`,`user_no`,`password`,`user_img`,`authrity`,`integral`,`sex`,`phone`,`qq`,`email`,`session_id`,`login_last_time`,`login_times`,`status`,`admission_time` FROM `jxnu_user` WHERE `roles` <> 31 ORDER BY id desc LIMIT 20,10  ', ' >> 用户信息 >> 数据请求 >> 共33 条记录', '182.106.227.84', '1512042151', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157921', '42', 'Users', 'Users', 'ajax', '/index.php/Admin/Users/ajax?q=list', '{\"draw\":\"12\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"30\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042096\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `id`,`name`,`roles`,`user_no`,`password`,`user_img`,`authrity`,`integral`,`sex`,`phone`,`qq`,`email`,`session_id`,`login_last_time`,`login_times`,`status`,`admission_time` FROM `jxnu_user` WHERE `roles` <> 31 ORDER BY id desc LIMIT 30,10  ', ' >> 用户信息 >> 数据请求 >> 共33 条记录', '182.106.227.84', '1512042152', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157922', '42', 'Comment', 'Comment', 'all', '/index.php/Admin/Comment/all.html', '{\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042096\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', '', ' >> 消息与评论内容信息 >> 管理列表页', '182.106.227.84', '1512042189', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157923', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042096\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `content` FROM `jxnu_comment` WHERE `content` = \'有人找你o，明月同学\' LIMIT 1  ', ' >> 消息与评论内容信息 >> 数据请求 >> 共22 条记录', '182.106.227.84', '1512042190', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157924', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=detail', '{\"pk\":\"encrypt_act-X4WARHcZODqzT_eTeOOEgHYaGWDH1F65yVn7SaPDxA6i8OQIBQiT9gmAWFuG8D0bcs-sEGd6GtOPL0MWfkuVSQ\",\"q\":\"detail\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042192\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', '', ' >> 消息与评论内容信息 >> 数据请求 >> 浏览详情', '182.106.227.84', '1512042195', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157925', '42', 'Articles', 'Articles', 'all', '/index.php/Admin/Articles/all.html', '{\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042192\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', '', ' >> 动态与文章内容信息 >> 管理列表页', '182.106.227.84', '1512042305', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157926', '42', 'Articles', 'Articles', 'ajax', '/index.php/Admin/Articles/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042192\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `content` FROM `jxnu_article` WHERE `content` = \'哪位小姐姐可以帮忙带一杯奶茶吗？地点右下角，s230\' LIMIT 1  ', ' >> 动态与文章内容信息 >> 数据请求 >> 共12 条记录', '182.106.227.84', '1512042305', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157927', '42', 'Articles', 'Articles', 'ajax', '/index.php/Admin/Articles/ajax?q=detail', '{\"pk\":\"encrypt_act-mcA0mTnYIyxoKJN5Abqx2WLcrVlj6oIjeS2Z-_-fzNt9DkEMt1u4E1c-n0g-GlqeH6Xe2gInqK1r1TfoOSdZjQ\",\"q\":\"detail\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042308\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', '', ' >> 动态与文章内容信息 >> 数据请求 >> 浏览详情', '182.106.227.84', '1512042382', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157928', '42', 'College', 'College', 'all', '/index.php/Admin/College/all.html', '{\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042308\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', '', ' >> 学院与专业管理信息 >> 管理列表页', '182.106.227.84', '1512042392', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157929', '42', 'College', 'College', 'ajax', '/index.php/Admin/College/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042308\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 5 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共19 条记录', '182.106.227.84', '1512042393', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157930', '42', 'College', 'College', 'ajax', '/index.php/Admin/College/ajax?q=list', '{\"draw\":\"2\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"10\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042395\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 1 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共19 条记录', '182.106.227.84', '1512042401', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157931', '42', 'College', 'College', 'ajax', '/index.php/Admin/College/ajax?q=list', '{\"draw\":\"3\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042395\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 5 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共19 条记录', '182.106.227.84', '1512042410', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157932', '42', 'College', 'College', 'ajax', '/index.php/Admin/College/ajax?q=list', '{\"draw\":\"4\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"10\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042395\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 1 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共19 条记录', '182.106.227.84', '1512042412', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157933', '42', 'College', 'College', 'ajax', '/index.php/Admin/College/ajax?q=list', '{\"draw\":\"5\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042395\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 5 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共19 条记录', '182.106.227.84', '1512042416', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157934', '42', 'College', 'College', 'ajax', '/index.php/Admin/College/ajax?q=list', '{\"draw\":\"6\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"10\",\"length\":\"10\",\"q\":\"list\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512042395\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512041946\",\"HyFrame_SSID\":\"o35aevsp3jjm5fpia2eq88ulk7\"}', 'SELECT `name` FROM `jxnu_college` WHERE `status` = 1 AND `id` = 1 LIMIT 1  ', ' >> 学院与专业管理信息 >> 数据请求 >> 共19 条记录', '182.106.227.84', '1512042417', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157935', '42', null, 'HyStart', 'ajax', null, '{\"u\":\"ZhkocVLs9FGpl\\/d8T1322g==2186842\",\"p\":\"Ck30TK0yi3vfBNznrFRpZCD23HyKAuxFPjI0JL4WMmj0GueoHDj+GL3YSD8rmFnU9485212\"}', null, ' >> 登录验证 >> <span class=\'text-success\'>成功</span>', '219.229.253.148', '1512367041', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157936', '42', 'Articles', 'Articles', 'all', '/index.php/Admin/Articles/all.html', '{\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"HyFrame_SSID\":\"k5j6o3i3tv65dg9pmt9mkhcit3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187,1511712446,1512367042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512367050\"}', '', ' >> 动态与文章内容信息 >> 管理列表页', '219.229.253.148', '1512367052', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157937', '42', 'Articles', 'Articles', 'ajax', '/index.php/Admin/Articles/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"HyFrame_SSID\":\"k5j6o3i3tv65dg9pmt9mkhcit3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187,1511712446,1512367042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512367050\"}', 'SELECT `content` FROM `jxnu_article` WHERE `content` = \'哪位小姐姐可以帮忙带一杯奶茶吗？地点右下角，s230\' LIMIT 1  ', ' >> 动态与文章内容信息 >> 数据请求 >> 共12 条记录', '219.229.253.148', '1512367053', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157938', '42', 'Articles', 'Articles', 'ajax', '/index.php/Admin/Articles/ajax?q=disable', '{\"pk\":\"encrypt_act-VfAz2kdOL93GcWXWqqLNwl1Hw5urBdlYQXIgLNO4oAGGfjZsr2knmT16koTqYBXuVAY_JzxwuB5eSMY6F7jMhQ,encrypt_act-Aob5gSVWBv8HVdcrRQ8C6OsNTrUq_nVlnzN8Cq1BZ2JS7Sjj9x9vurBd1Fe8kt8Sijl-NfmVCxmv0guAyREG2g,encrypt_act-pIuMiiO5szhuQUr3FxndolZxNxOoPfyzeZqS758-tZEKH2UT3b4OEVmyCjryA4idK0lyOf4LNDo3IepvmEEt5g\",\"q\":\"disable\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"HyFrame_SSID\":\"k5j6o3i3tv65dg9pmt9mkhcit3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187,1511712446,1512367042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512367061\"}', 'UPDATE `jxnu_article` SET `status`=\'0\' WHERE `id` IN (\'13\',\'12\',\'11\')', ' >> 动态与文章内容信息 >> 数据请求 >> <span class=\"text-info\">数据描述：11|22|跳舞的黑衣服女生求介绍|251|2017-11-26 17:00:14|20|1|http://ockglmdea.bkt.clouddn.com/3.JPG|1</span> >> <span class=\"text-success\">记录禁用成功！</span>', '219.229.253.148', '1512367074', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157939', '42', 'Articles', 'Articles', 'ajax', '/index.php/Admin/Articles/ajax?q=list', '{\"draw\":\"2\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"HyFrame_SSID\":\"k5j6o3i3tv65dg9pmt9mkhcit3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187,1511712446,1512367042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512367061\"}', 'SELECT `content` FROM `jxnu_article` WHERE `content` = \'哪位小姐姐可以帮忙带一杯奶茶吗？地点右下角，s230\' LIMIT 1  ', ' >> 动态与文章内容信息 >> 数据请求 >> 共12 条记录', '219.229.253.148', '1512367074', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157940', '42', 'Articles', 'Articles', 'ajax', '/index.php/Admin/Articles/ajax?q=enable', '{\"pk\":\"encrypt_act-Bcy1ROWaYrV8CAlHPtruSnyzQD4QZgd8XvturUi_nHkL3VyI9krTB3GOqgKQfRgCgbZEu0t7I9C1XVbgwyGOdA,encrypt_act-lmqcjQwT1B0uq3VOQPtibyUHm56-iAYAueKjQ2bj92vpjlf-FwB-puCvKrUtsq-I4Q_Kr2zY5ZXSivMJxH8kuQ,encrypt_act-unWAS9-uUtzPRzXB4RcrB3zW17t0FQMxX0lthlq4NgoGXafjZcR1BZmRdHzVgFg48-oNqtjwZrfCW817FTsd0A\",\"q\":\"enable\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"HyFrame_SSID\":\"k5j6o3i3tv65dg9pmt9mkhcit3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187,1511712446,1512367042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512367061\"}', 'UPDATE `jxnu_article` SET `status`=\'1\' WHERE `id` IN (\'13\',\'12\',\'11\')', ' >> 动态与文章内容信息 >> 数据请求 >> <span class=\"text-info\">数据描述：11|22|跳舞的黑衣服女生求介绍|251|2017-11-26 17:00:14|20|1|http://ockglmdea.bkt.clouddn.com/3.JPG|0</span> >> <span class=\"text-success\">记录启用成功！</span>', '219.229.253.148', '1512367085', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157941', '42', 'Articles', 'Articles', 'ajax', '/index.php/Admin/Articles/ajax?q=list', '{\"draw\":\"3\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"HyFrame_SSID\":\"k5j6o3i3tv65dg9pmt9mkhcit3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187,1511712446,1512367042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512367061\"}', 'SELECT `content` FROM `jxnu_article` WHERE `content` = \'哪位小姐姐可以帮忙带一杯奶茶吗？地点右下角，s230\' LIMIT 1  ', ' >> 动态与文章内容信息 >> 数据请求 >> 共12 条记录', '219.229.253.148', '1512367085', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157942', '42', 'Comment', 'Comment', 'all', '/index.php/Admin/Comment/all.html', '{\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"HyFrame_SSID\":\"k5j6o3i3tv65dg9pmt9mkhcit3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187,1511712446,1512367042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512367061\"}', '', ' >> 消息与评论内容信息 >> 管理列表页', '219.229.253.148', '1512367150', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157943', '42', 'Comment', 'Comment', 'ajax', '/index.php/Admin/Comment/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"HyFrame_SSID\":\"k5j6o3i3tv65dg9pmt9mkhcit3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187,1511712446,1512367042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512367061\"}', 'SELECT `content` FROM `jxnu_comment` WHERE `content` = \'有人找你o，明月同学\' LIMIT 1  ', ' >> 消息与评论内容信息 >> 数据请求 >> 共22 条记录', '219.229.253.148', '1512367151', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157944', '42', 'Articles', 'Articles', 'all', '/index.php/Admin/Articles/all.html', '{\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"HyFrame_SSID\":\"k5j6o3i3tv65dg9pmt9mkhcit3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187,1511712446,1512367042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512367158\"}', '', ' >> 动态与文章内容信息 >> 管理列表页', '219.229.253.148', '1512367191', '1');
INSERT INTO `jxnu_frame_log` VALUES ('157945', '42', 'Articles', 'Articles', 'ajax', '/index.php/Admin/Articles/ajax?q=list', '{\"draw\":\"1\",\"order\":{\"field\":\"_checkbox\"},\"start\":\"0\",\"length\":\"10\",\"q\":\"list\",\"Hm_lvt_17615c0c7560aebb3674a0aa658e3b9c\":\"1511322785,1511530156\",\"HyFrame_SSID\":\"k5j6o3i3tv65dg9pmt9mkhcit3\",\"Hm_lvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1511530187,1511712446,1512367042\",\"Hm_lpvt_41c66ca2d9e89051b8f673b25979b6a0\":\"1512367158\"}', 'SELECT `content` FROM `jxnu_article` WHERE `content` = \'哪位小姐姐可以帮忙带一杯奶茶吗？地点右下角，s230\' LIMIT 1  ', ' >> 动态与文章内容信息 >> 数据请求 >> 共12 条记录', '219.229.253.148', '1512367191', '1');

-- ----------------------------
-- Table structure for jxnu_frame_role
-- ----------------------------
DROP TABLE IF EXISTS `jxnu_frame_role`;
CREATE TABLE `jxnu_frame_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(20) DEFAULT '',
  `title` varchar(20) DEFAULT '',
  `table` varchar(20) DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户角色表';

-- ----------------------------
-- Records of jxnu_frame_role
-- ----------------------------
INSERT INTO `jxnu_frame_role` VALUES ('31', '0', 'admin', '管理员', '', '1');

-- ----------------------------
-- Table structure for jxnu_frame_session
-- ----------------------------
DROP TABLE IF EXISTS `jxnu_frame_session`;
CREATE TABLE `jxnu_frame_session` (
  `session_id` varchar(255) NOT NULL,
  `session_expire` int(10) unsigned NOT NULL,
  `session_data` blob,
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_frame_session
-- ----------------------------
INSERT INTO `jxnu_frame_session` VALUES ('4m69q8n7v3lvdg5hamv3f89fk3', '1555485400', '');
INSERT INTO `jxnu_frame_session` VALUES ('6lvr9lbskqqr4t9oa5st16vte4', '1555484707', '');
INSERT INTO `jxnu_frame_session` VALUES ('84bhn98fnnln1p6u6d1o96qjq4', '1555485384', '');
INSERT INTO `jxnu_frame_session` VALUES ('aforgmbjcb7951ntd44uvh7u90', '1555485424', '');
INSERT INTO `jxnu_frame_session` VALUES ('b3qt3uosc9kkab52eg9uej1ij4', '1555485384', '');
INSERT INTO `jxnu_frame_session` VALUES ('cueo8na4tg3rhsfs63hsq4fo03', '1555485368', '');
INSERT INTO `jxnu_frame_session` VALUES ('dfpnbu0p4o6lrd0dnguqsp6mf6', '1555485671', '');
INSERT INTO `jxnu_frame_session` VALUES ('dunm4asmnu5cud879bsud6p983', '1555485369', '');
INSERT INTO `jxnu_frame_session` VALUES ('eaetouf4n250lq8kfb6fqv4640', '1555485361', '');
INSERT INTO `jxnu_frame_session` VALUES ('ems99d8654ql9usldki112t2b6', '1555485634', '');
INSERT INTO `jxnu_frame_session` VALUES ('g3ivkovmuhlc5ugto21njt4mr6', '1555485369', '');
INSERT INTO `jxnu_frame_session` VALUES ('hinlofqtdbfhhm7mo216f430c6', '1555484504', '');
INSERT INTO `jxnu_frame_session` VALUES ('hp0iu2hu1u5dj1jnvgmnjr88h4', '1555484503', '');
INSERT INTO `jxnu_frame_session` VALUES ('jm3b2aai3cmie914cen6vnfs36', '1555485369', '');
INSERT INTO `jxnu_frame_session` VALUES ('l10q59i6s2llera44um9jt5nr7', '1555485384', '');
INSERT INTO `jxnu_frame_session` VALUES ('l320o248a0fdbvm3817r2keia1', '1555485698', '');
INSERT INTO `jxnu_frame_session` VALUES ('l4ggr7k9es4brc178ari0erh47', '1555485361', '');
INSERT INTO `jxnu_frame_session` VALUES ('qv3u7agmm61p3i87jv1o8isuc2', '1555485361', '');
INSERT INTO `jxnu_frame_session` VALUES ('r7nmvrlpkngrjt5ka4unllmvf4', '1555484707', '');
INSERT INTO `jxnu_frame_session` VALUES ('rlioltgaqna9mo5ppv3pvvbnl3', '1555484707', '');
INSERT INTO `jxnu_frame_session` VALUES ('tke52d042iscs1g755mdhrrm25', '1555485391', '');
INSERT INTO `jxnu_frame_session` VALUES ('va272pdm3kq673oo1g30ivajr6', '1555484503', '');

-- ----------------------------
-- Table structure for jxnu_frame_setting
-- ----------------------------
DROP TABLE IF EXISTS `jxnu_frame_setting`;
CREATE TABLE `jxnu_frame_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` char(30) DEFAULT NULL,
  `value` char(255) DEFAULT NULL,
  `remark` char(50) DEFAULT NULL,
  `update_time` int(10) unsigned DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_frame_setting
-- ----------------------------

-- ----------------------------
-- Table structure for jxnu_position
-- ----------------------------
DROP TABLE IF EXISTS `jxnu_position`;
CREATE TABLE `jxnu_position` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `article_id` int(2) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `latitude` varchar(30) DEFAULT NULL,
  `longitude` varchar(30) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_position
-- ----------------------------
INSERT INTO `jxnu_position` VALUES ('1', '1', '校医院', '28.681317', '116.025667', '1');
INSERT INTO `jxnu_position` VALUES ('2', '2', '正大门', '28.675039', '116.032362', '1');
INSERT INTO `jxnu_position` VALUES ('3', '4', '图书馆', '28.675039', '116.032362', '1');
INSERT INTO `jxnu_position` VALUES ('4', '5', '校医院', '28.681317', '116.025667', '1');
INSERT INTO `jxnu_position` VALUES ('5', '6', '音乐艺术广场', '28.677806', '116.037447', '1');
INSERT INTO `jxnu_position` VALUES ('6', '7', '12栋宿舍', '28.682512', '116.033585', '1');
INSERT INTO `jxnu_position` VALUES ('7', '9', '体育场', '28.682362', '116.036139', '1');
INSERT INTO `jxnu_position` VALUES ('8', '13', '图文信息中心', '28.681806', '116.032104', '1');
INSERT INTO `jxnu_position` VALUES ('9', '14', '正大坊', '28.675039', '116.032362', '1');
INSERT INTO `jxnu_position` VALUES ('10', '15', '镜湖', '28.679208', '116.032244', '1');
INSERT INTO `jxnu_position` VALUES ('11', '16', '鹿园', '28.674766', '116.036439', '1');
INSERT INTO `jxnu_position` VALUES ('12', '18', null, '39.95933', '116.29845', '1');
INSERT INTO `jxnu_position` VALUES ('13', '19', null, '39.95933', '116.29845', '1');
INSERT INTO `jxnu_position` VALUES ('14', '20', null, '39.95933', '116.29845', '1');
INSERT INTO `jxnu_position` VALUES ('22', '28', null, '39.95933', '116.29845', '1');
INSERT INTO `jxnu_position` VALUES ('23', '29', null, '39.95933', '116.29845', '1');
INSERT INTO `jxnu_position` VALUES ('24', '30', null, '39.95933', '116.29845', '1');
INSERT INTO `jxnu_position` VALUES ('25', '31', null, '40.033996', '116.299033', '1');
INSERT INTO `jxnu_position` VALUES ('26', '32', null, '40.033996', '116.299033', '1');
INSERT INTO `jxnu_position` VALUES ('29', '36', null, '39.95933', '116.29845', '1');
INSERT INTO `jxnu_position` VALUES ('30', '37', null, '39.95933', '116.29845', '1');
INSERT INTO `jxnu_position` VALUES ('31', '38', null, '28.54538', '115.94422', '1');
INSERT INTO `jxnu_position` VALUES ('32', '39', null, '28.681401', '116.033734', '1');

-- ----------------------------
-- Table structure for jxnu_resources
-- ----------------------------
DROP TABLE IF EXISTS `jxnu_resources`;
CREATE TABLE `jxnu_resources` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `category_id` int(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `downloads` int(5) DEFAULT NULL,
  `value` int(5) DEFAULT NULL,
  `resource_type` int(1) DEFAULT NULL COMMENT '上传资源格式',
  `status` int(1) NOT NULL DEFAULT '1',
  `resource_name` varchar(255) DEFAULT NULL,
  `uri` varchar(11) NOT NULL,
  `college_id` int(11) DEFAULT NULL,
  `fav` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_resources
-- ----------------------------
INSERT INTO `jxnu_resources` VALUES ('1', '1', '1', '5000', '2000', '2', '1', '数字逻辑课后习题答案', '1.ppt', '27', '1');
INSERT INTO `jxnu_resources` VALUES ('2', '1', '1', '5000', '2000', '1', '1', '高数课后习题答案', '2.doc', null, '0');
INSERT INTO `jxnu_resources` VALUES ('3', '1', '1', '22', '2', '1', '1', '15考研真题', '3.doc', null, '0');
INSERT INTO `jxnu_resources` VALUES ('4', '3', '1', '1', '1', '3', '1', '马原题库', '4.xls', '1001', '0');
INSERT INTO `jxnu_resources` VALUES ('5', '2', '1', '1', '1', '1', '1', '近代史题库', '5.doc', '1002', '0');
INSERT INTO `jxnu_resources` VALUES ('6', '1', '1', '222', '1', '1', '1', '数据结构课后习题答案', '2.doc', '23', '1');
INSERT INTO `jxnu_resources` VALUES ('7', '1', '2', '1', '1', '1', '1', '数据结构15级试卷A', '2.doc', '23', '1');
INSERT INTO `jxnu_resources` VALUES ('8', '1', '1', '1', '1', '1', '1', '数据结构15级试卷B', '2.doc', '27', '1');
INSERT INTO `jxnu_resources` VALUES ('9', '1', '1', '1', '1', '1', '1', '计算机组成原理实验仪器介绍及实验报告', '2.doc', '25', '1');
INSERT INTO `jxnu_resources` VALUES ('10', '1', '1', '1', '1', '1', '1', '计算机网络数据统计', '2.doc', '26', '1');

-- ----------------------------
-- Table structure for jxnu_user
-- ----------------------------
DROP TABLE IF EXISTS `jxnu_user`;
CREATE TABLE `jxnu_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(20) DEFAULT NULL,
  `roles` char(20) DEFAULT '',
  `user_no` varchar(255) DEFAULT NULL,
  `password` char(150) DEFAULT NULL,
  `pic` char(150) DEFAULT NULL,
  `authrity` int(1) DEFAULT NULL,
  `integral` int(20) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `phone` char(60) DEFAULT NULL,
  `qq` char(12) DEFAULT NULL,
  `email` char(30) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `login_last_time` int(10) DEFAULT NULL,
  `login_times` int(10) unsigned DEFAULT '0',
  `status` int(10) unsigned DEFAULT '1',
  `admission_time` int(10) unsigned DEFAULT NULL,
  `college_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_user
-- ----------------------------
INSERT INTO `jxnu_user` VALUES ('1', '沈大哥', '0', '1039115768', '7bODgmOpMu_ErWSrxeOumHmTYoI02IBMptNSv95WjQ3Mma5cXapxzTgwUNlS2rfgIAgjUjzSqkBsk_oC8gRTJENEPjK2AWGimuDelPrgsIZ6EhHGo3FvdCa8yTZAmiF2', 'http://localwechatstatic.wvwvw.cn/5.JPG', '1', '100000', '', null, null, null, null, null, '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('2', '潘绥铭', '0', '1', null, 'http://localwechatstatic.wvwvw.cn/4.jpg', '1', '2222', null, null, null, null, null, null, '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('3', '稻壳', '0', '2', null, 'http://localwechatstatic.wvwvw.cn/6.jpg', '1', null, null, null, null, null, null, null, '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('4', '大虾', '0', '3', null, 'http://localwechatstatic.wvwvw.cn/11.jpg', '1', null, null, null, null, null, null, null, '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('5', '邵燕君', '0', '4', null, 'http://localwechatstatic.wvwvw.cn/3.jpg', '1', null, null, null, null, null, null, null, '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('6', '米兰', '0', '5', null, 'http://localwechatstatic.wvwvw.cn/7.jpg', '1', null, null, null, null, null, null, null, '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('7', '勺子', '0', '6', null, 'http://localwechatstatic.wvwvw.cn/1.jpg', '1', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('8', '国服第一李白', '0', '7', null, 'http://localwechatstatic.wvwvw.cn/9.jpg', '1', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('9', '陈昕', '0', '8', null, 'http://localwechatstatic.wvwvw.cn/3.jpg', '0', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('10', '芈月', '0', '9', null, 'http://localwechatstatic.wvwvw.cn/5.JPG', '1', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('11', 'star', '0', '10', null, 'http://localwechatstatic.wvwvw.cn/4.jpg', '1', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('12', 'hellobick', '0', '11', null, 'http://localwechatstatic.wvwvw.cn/6.jpg', '1', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('13', '王晓明', '0', '12', null, 'http://localwechatstatic.wvwvw.cn/11.jpg', '0', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('14', '稻壳er', '0', '13', null, 'http://localwechatstatic.wvwvw.cn/3.jpg', '1', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('15', '玉米棒', '0', '14', null, 'http://localwechatstatic.wvwvw.cn/7.jpg', '0', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('16', '包亚明', '0', '15', null, 'http://localwechatstatic.wvwvw.cn/1.jpg', '1', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('17', '明月', '0', '16', null, 'http://localwechatstatic.wvwvw.cn/9.jpg', '1', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('18', '虾米', '0', '17', null, 'http://localwechatstatic.wvwvw.cn/5.JPG', '1', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('19', 'mthink', '0', '18', null, 'http://localwechatstatic.wvwvw.cn/4.jpg', '1', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('20', '南帆', '0', '19', null, 'http://localwechatstatic.wvwvw.cn/6.jpg', '0', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('21', '布什x', '0', '20', null, 'http://localwechatstatic.wvwvw.cn/11.jpg', '1', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('22', '筷子', '0', '21', null, 'http://localwechatstatic.wvwvw.cn/3.jpg', '1', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('23', '陈映芳', '0', '22', null, 'http://localwechatstatic.wvwvw.cn/7.jpg', '1', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('24', '爆米花', '0', '23', null, 'http://localwechatstatic.wvwvw.cn/5.JPG', '1', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('25', '戴锦华编', '0', '24', null, 'http://localwechatstatic.wvwvw.cn/4.jpg', '1', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('26', '戴锦华', '0', '25', null, 'http://localwechatstatic.wvwvw.cn/6.jpg', '1', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('27', '宋伟杰', '0', '26', null, 'http://localwechatstatic.wvwvw.cn/11.jpg', '0', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('28', '金庸', '0', '27', null, 'http://localwechatstatic.wvwvw.cn/3.jpg', '1', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('29', '花生', '0', '28', null, 'http://localwechatstatic.wvwvw.cn/7.jpg', '1', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('30', '神哥哥', '0', '29', null, 'http://localwechatstatic.wvwvw.cn/5.JPG', '1', null, null, null, null, null, null, '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('38', '运维', '31', '8812', '43gdEpHatNMhjPdkXYwb906wD9XMBclmoJkKdYcXwch3z_jalUOwtPAxVCT7T_eVyXFiRL4f7nz2oaxTbejG2_2PzfYmTFbRhdh1HVLfrB_4Yjb7nJeTJCb97mv4_X6b', 'http://localwechatstatic.wvwvw.cn/4.jpg', '1', null, '男', null, null, null, '', '1491836767', '221', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('40', '管理员', '31', '123', '43gdEpHatNMhjPdkXYwb906wD9XMBclmoJkKdYcXwch3z_jalUOwtPAxVCT7T_eVyXFiRL4f7nz2oaxTbejG2_2PzfYmTFbRhdh1HVLfrB_4Yjb7nJeTJCb97mv4_X6b', 'http://localwechatstatic.wvwvw.cn/6.jpg', '1', null, '男', null, null, null, 'eejvli533f98h5hgng90quhlv5', '1507686177', '144', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('42', '11测试', '31', '123123', '7bODgmOpMu_ErWSrxeOumHmTYoI02IBMptNSv95WjQ3Mma5cXapxzTgwUNlS2rfgIAgjUjzSqkBsk_oC8gRTJENEPjK2AWGimuDelPrgsIZ6EhHGo3FvdCa8yTZAmiF2', 'http://localwechatstatic.wvwvw.cn/11.jpg', '1', null, '男', null, null, null, 'k5j6o3i3tv65dg9pmt9mkhcit3', '1512367041', '140', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('43', '辽竹', '', 'Q0j4TwGTfTL0fvcRKgRGia4SykgTLECkkDFDITiawFWYibVcRTrsM2FxA4m3Tn8Xx8SJSVc04eO2BuHMmK6qDviaOQ', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTL0fvcRKgRGia4SykgTLECkkDFDITiawFWYibVcRTrsM2FxA4m3Tn8Xx8SJSVc04eO2BuHMmK6qDviaOQ/0', null, '1', null, null, null, null, '8ffcdcc0e37c27997f72a3803961a7a66d45c455a6e6fdac93b8520f9bb17b2b', '1491836767', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('44', '胡悦', '', 'CpK8F54ibkpLNMjMwxOHia0O7iabGJzF84SYjiaicE88F4Jm6zID7csnRTO7eG0hgYPfG08vZGyzianbLLgNXeVosyDg', null, 'https://wx.qlogo.cn/mmopen/vi_32/CpK8F54ibkpLNMjMwxOHia0O7iabGJzF84SYjiaicE88F4Jm6zID7csnRTO7eG0hgYPfG08vZGyzianbLLgNXeVosyDg/0', null, null, null, null, null, null, '3d1c286215c640f9f295bbb7ac9d2147b1c655298b7833eb9007d4b627c2757f', '1507686177', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('46', '凡尘', '', 'en2ibMiaEiaWmssbxxeoaRvQiaOFV5H06xsWGO9Lpp5vPtibrKiaV5jfR5KicaUMooeaofO2aVeAsXGvFOoRPMpe7CrJg', null, 'https://wx.qlogo.cn/mmopen/vi_32/en2ibMiaEiaWmssbxxeoaRvQiaOFV5H06xsWGO9Lpp5vPtibrKiaV5jfR5KicaUMooeaofO2aVeAsXGvFOoRPMpe7CrJg/0', null, null, null, null, null, null, '3d3d68317b9176ddbdc565d4cf1fb5291f3687ad538b4fb1d24a2c353dd1d30d', '1512367041', '0', '1', null, '1');
INSERT INTO `jxnu_user` VALUES ('47', 'Old Fe', '', 'icuQGshGeeVLTmricXrLY3Hic5gAkQyLpofFXfkH5MybRpbBB9j7LNxNcHm55cQXicLiaTts3T1nLRtRuibUIOnicM1bw', null, 'https://wx.qlogo.cn/mmopen/vi_32/icuQGshGeeVLTmricXrLY3Hic5gAkQyLpofFXfkH5MybRpbBB9j7LNxNcHm55cQXicLiaTts3T1nLRtRuibUIOnicM1bw/0', null, null, null, null, null, null, 'dc3722b34e0144c9ad3bf25dec71ee9ffe47a98d6cf3641ffa7254c2858b429c', '1491836767', '0', '1', null, null);
INSERT INTO `jxnu_user` VALUES ('48', 'rdgztest_ZEZUBE', '', '', null, '', null, null, null, null, null, null, null, '1507686177', '0', '1', null, null);
INSERT INTO `jxnu_user` VALUES ('49', 'Old Fe', '', 'icuQGshGeeVLTmricXrLY3Hic5gAkQyLpofFXfkH5MybRpbBB9j7LNxNcHm55cQXicLiaicJ9Z6DIWaxZrYQxaKBkX9A', null, 'https://wx.qlogo.cn/mmopen/vi_32/icuQGshGeeVLTmricXrLY3Hic5gAkQyLpofFXfkH5MybRpbBB9j7LNxNcHm55cQXicLiaicJ9Z6DIWaxZrYQxaKBkX9A/0', null, null, null, null, null, null, 'a0bc039560cbb8cae3d340d927a6feb60c157b32cfbf4f781fbbfb70e23a98ba', '1512367041', '0', '1', null, null);
INSERT INTO `jxnu_user` VALUES ('141', '稻壳er', '', 'oh43t0LhBTCC1hebQwXn0YNyXqNM', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTL0fvcRKgRGia4SykgTLECkkDFDITiawFWYibVcRTrsM2FxA4m3Tn8Xx8SI17B85qU4U8DbXtkVVRqoQ/132', null, null, null, null, null, null, '0267ef3bb4630ee0f01f55557f9529e52d1a24ee6d27add87d0d650981d1fbb0', '1555483898', '0', '1', null, null);
