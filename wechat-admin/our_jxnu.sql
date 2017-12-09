/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : our_jxnu

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-12-09 13:04:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jxnu_article
-- ----------------------------
DROP TABLE IF EXISTS `jxnu_article`;
CREATE TABLE `jxnu_article` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `user_id` int(1) DEFAULT NULL,
  `content` text,
  `comment_num` int(10) DEFAULT NULL,
  `deadline` varchar(50) DEFAULT NULL,
  `value` int(10) DEFAULT NULL COMMENT '价值，用于积分计算',
  `article_type` int(1) DEFAULT NULL,
  `file_id` int(5) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_article
-- ----------------------------
INSERT INTO `jxnu_article` VALUES ('1', '123123', '请问有人看见我的校园卡吗，长这个样子的', '10', '5天', '100', '1', null, '1');
INSERT INTO `jxnu_article` VALUES ('2', '123123', '正大门就是这么好看', '15', '1天', '20', '2', null, '1');
INSERT INTO `jxnu_article` VALUES ('3', '123123', '帮我找到我的小狗狗', '2', '2小时', '30', '1', null, '1');

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
  `user_id` int(2) DEFAULT NULL,
  `collect_type` int(2) DEFAULT NULL COMMENT '点赞，收藏互助，收藏资源，收藏风景',
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_collect
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_college
-- ----------------------------
INSERT INTO `jxnu_college` VALUES ('1', '0', '计算机信息工程学院', '0', '1');
INSERT INTO `jxnu_college` VALUES ('2', '0', '软件学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('3', '0', '马克思主义学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('4', '0', '政法学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('5', '0', '财政金融学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('6', '0', '地理与环境学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('7', '0', '教育学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('8', '0', '传播学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('9', '0', '心理学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('10', '0', '体育学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('11', '0', '文学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('12', '0', '外国语学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('13', '0', '音乐学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('14', '0', '美术学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('15', '0', '历史文化与旅游学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('16', '0', '数学与信息科学学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('17', '0', '物理与通信电子学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('18', '0', '化学化工学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('19', '0', '生命科学学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('20', '0', '商学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('21', '0', '城市建设学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('22', '0', '初等教育学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('23', '1', '网络工程', '0', '0');
INSERT INTO `jxnu_college` VALUES ('24', '1', '物联网工程', '0', '0');
INSERT INTO `jxnu_college` VALUES ('25', '2', '管理科学与工程', '0', '0');
INSERT INTO `jxnu_college` VALUES ('26', '3', '马克思主义哲学', '0', '0');
INSERT INTO `jxnu_college` VALUES ('27', '3', '中国哲学', '0', '0');
INSERT INTO `jxnu_college` VALUES ('28', '4', '法学理论', '0', '0');
INSERT INTO `jxnu_college` VALUES ('29', '4', '宪法学与行政法学', '0', '0');
INSERT INTO `jxnu_college` VALUES ('30', '4', '社会工作', '0', '0');
INSERT INTO `jxnu_college` VALUES ('31', '5', '产业经济学', '0', '0');
INSERT INTO `jxnu_college` VALUES ('32', '5', '会计学', '0', '0');
INSERT INTO `jxnu_college` VALUES ('33', '13', '音乐治疗', '0', '0');
INSERT INTO `jxnu_college` VALUES ('35', '0', '测试学院', '0', '0');
INSERT INTO `jxnu_college` VALUES ('36', '35', '没有专业', '0', '0');
INSERT INTO `jxnu_college` VALUES ('38', '0', '猜你喜欢', '1', '1');

-- ----------------------------
-- Table structure for jxnu_comment
-- ----------------------------
DROP TABLE IF EXISTS `jxnu_comment`;
CREATE TABLE `jxnu_comment` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `user_id` int(1) DEFAULT NULL,
  `article_id` int(1) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_comment
-- ----------------------------
INSERT INTO `jxnu_comment` VALUES ('1', '123123', '1', '这个很好啊', '2017-11-22 23:12:19', '1');
INSERT INTO `jxnu_comment` VALUES ('2', '123123', '1', '我看不见', '2017-11-22 23:12:47', '1');
INSERT INTO `jxnu_comment` VALUES ('3', '123123', '2', '只是测试的嘛', '2017-11-22 23:13:03', '1');
INSERT INTO `jxnu_comment` VALUES ('4', '123123', '3', '假的假的', '2017-11-22 23:13:16', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=2455 DEFAULT CHARSET=utf8;

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
INSERT INTO `jxnu_frame_action` VALUES ('300000', '0', 'nav', '用户管理', '', ' icon-directions', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('400000', '0', 'nav', '消息与评论', '', ' icon-directions', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('500000', '0', 'nav', '文章管理', '', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('600000', '0', 'nav', '学院与专业', '', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('600001', '600100', 'url', '列表', 'Admin/College/ajax?q=list', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('600002', '600100', 'url', '新增', 'Admin/College/ajax?q=insert', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('600003', '600100', 'url', '更新', 'Admin/College/ajax?q=update', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('600004', '600100', 'url', '删除', 'Admin/College/ajax?q=delete', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('600005', '600100', 'url', '编辑', 'Admin/College/ajax?q=edit', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('600100', '600000', 'menu', '学院与专业管理', 'Admin/College/all', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('1100100', '1100000', 'url', '基础信息修改', '1100000', '', '500', '1');
INSERT INTO `jxnu_frame_action` VALUES ('1100200', '1100000', 'url', '密码修改', 'System/User/ajax?q=pwdMe', '', '500', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=157833 DEFAULT CHARSET=utf8 COMMENT='操作日志表';

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
INSERT INTO `jxnu_frame_session` VALUES ('5vp3nlcr1bt7iu6gm83q2usr81', '1511688416', '');

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
  `lotitude` varchar(30) DEFAULT NULL,
  `longitude` varchar(30) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_position
-- ----------------------------

-- ----------------------------
-- Table structure for jxnu_resources
-- ----------------------------
DROP TABLE IF EXISTS `jxnu_resources`;
CREATE TABLE `jxnu_resources` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `category_id` int(1) DEFAULT NULL,
  `user_id` int(1) DEFAULT NULL,
  `downloads` int(5) DEFAULT NULL,
  `value` int(5) DEFAULT NULL,
  `resource_type` int(1) DEFAULT NULL COMMENT '上传资源格式',
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_resources
-- ----------------------------

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
  `user_img` char(150) DEFAULT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jxnu_user
-- ----------------------------
INSERT INTO `jxnu_user` VALUES ('38', '运维', '31', '8812', '43gdEpHatNMhjPdkXYwb906wD9XMBclmoJkKdYcXwch3z_jalUOwtPAxVCT7T_eVyXFiRL4f7nz2oaxTbejG2_2PzfYmTFbRhdh1HVLfrB_4Yjb7nJeTJCb97mv4_X6b', null, null, '男', null, null, null, '', '1491836767', '221', '1', null);
INSERT INTO `jxnu_user` VALUES ('40', '管理员', '31', '123', '43gdEpHatNMhjPdkXYwb906wD9XMBclmoJkKdYcXwch3z_jalUOwtPAxVCT7T_eVyXFiRL4f7nz2oaxTbejG2_2PzfYmTFbRhdh1HVLfrB_4Yjb7nJeTJCb97mv4_X6b', null, null, '男', null, null, null, 'eejvli533f98h5hgng90quhlv5', '1507686177', '144', '1', null);
INSERT INTO `jxnu_user` VALUES ('42', '11测试', '31', '123123', '7bODgmOpMu_ErWSrxeOumHmTYoI02IBMptNSv95WjQ3Mma5cXapxzTgwUNlS2rfgIAgjUjzSqkBsk_oC8gRTJENEPjK2AWGimuDelPrgsIZ6EhHGo3FvdCa8yTZAmiF2', null, null, '男', null, null, null, 'qmps22nbu559psntvvdt5cnrm3', '1511403957', '109', '1', null);
INSERT INTO `jxnu_user` VALUES ('48', ' 辽竹', '', 'Q0j4TwGTfTL0fvcRKgRGia4SykgTLECkkDFDITiawFWYibVcRTrsM2FxA4m3Tn8Xx8SJSVc04eO2BuHMmK6qDviaOQ', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTL0fvcRKgRGia4SykgTLECkkDFDITiawFWYibVcRTrsM2FxA4m3Tn8Xx8SJSVc04eO2BuHMmK6qDviaOQ/0\r\n', null, null, null, null, null, '6197209f1b30e8af99d26823f51b55f9aa0807d0ee25eeafb42a04be0c30e21a', null, '0', '1', null);
