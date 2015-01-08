/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : shshop

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2014-12-17 18:11:01
*/

SET FOREIGN_KEY_CHECKS=0;



-- ----------------------------
-- Table structure for `ipc_sorts`
-- ----------------------------
DROP TABLE IF EXISTS `ipc_sorts`;
CREATE TABLE `ipc_sorts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sortname` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipc_sorts
-- ----------------------------
INSERT INTO `ipc_sorts` VALUES ('1', '电力应用平台');
INSERT INTO `ipc_sorts` VALUES ('2', '嵌入式应用平台');
INSERT INTO `ipc_sorts` VALUES ('3', '车载应用平台');
INSERT INTO `ipc_sorts` VALUES ('4', 'X86网络通信应用平台');
INSERT INTO `ipc_sorts` VALUES ('5', 'RISC网络通信应用平台');

-- ----------------------------
-- Table structure for `sh_index_carousel`
-- ----------------------------
DROP TABLE IF EXISTS `sh_index_carousel`;
CREATE TABLE `sh_index_carousel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `url` varchar(64) NOT NULL,
  `usable` tinyint(1) NOT NULL COMMENT '1-可用',
  `addTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sh_index_carousel
-- ----------------------------
INSERT INTO `sh_index_carousel` VALUES ('1', '上反垄断法冯绍峰孙菲菲地方', '哦我软件哦呜佛法就浪费睡懒觉发神经浪费龙卷风水电费拉精神分裂交水电费就浪费非王府井附近的副教授等放假了', 'images/carousel1.jpg', '1', '2014-11-16 10:26:35');
INSERT INTO `sh_index_carousel` VALUES ('2', '乱收费兰陵王佛欧文佛','无法将浪费啥地方了将双方均乱收费来精神分裂救死扶伤龙卷风善良劫匪交流方式', 'images/carousel2.jpg', '1', '2014-11-16 10:45:16');
INSERT INTO `sh_index_carousel` VALUES ('3', '兰陵王浪费了烦死了','烦死了大量绝对路径掂量掂量军队领导惊呆了多伦多顺丰到付孙菲菲上防辐射服', 'images/carousel3.jpg', '1', '2014-11-16 10:51:09');

-- ----------------------------
-- Table structure for `sh_index_column`
-- ----------------------------
DROP TABLE IF EXISTS `sh_index_column`;
CREATE TABLE `sh_index_column` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `heading` varchar(64) NOT NULL,
  `desc` varchar(150) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `addTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sh_index_column
-- ----------------------------
INSERT INTO `sh_index_column` VALUES ('1', '标题一', '标题一的描述', '标题一详细说明', '2014-11-16 11:07:00');
INSERT INTO `sh_index_column` VALUES ('2', '标题二', '标题二的描述', '标题二详细说明', '2014-11-16 11:07:27');
INSERT INTO `sh_index_column` VALUES ('3', '标题三', '标题三的描述', '标题三的详细说明', '2014-11-16 11:07:50');
INSERT INTO `sh_index_column` VALUES ('4', '标题四', '标题四的描述', '标题四详细说明', '2014-11-16 11:13:36');

-- ----------------------------
-- Table structure for `sh_user`
-- ----------------------------
DROP TABLE IF EXISTS `sh_user`;
CREATE TABLE `sh_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sh_user
-- ----------------------------
INSERT INTO `sh_user` VALUES ('2', 'gavin@163.com', 'Tam+OkJ2pGrF1u2/bURJx/82V6eU4l5j9/A7xYs0/kN/0Bi7dni2IdTFp3jVQN4g');


-- ----------------------------
-- Table structure for `ipc_products`
-- ----------------------------
DROP TABLE IF EXISTS `ipc_products`;
CREATE TABLE `ipc_products` (
  `ipc_model` varchar(64) NOT NULL,
  `ipc_name` varchar(64) NOT NULL,
  `ipc_brand` varchar(64) NOT NULL,
  `ipc_factory_address` varchar(64) NOT NULL,
  `ipc_system` varchar(64) NOT NULL,
  `ipc_desc` varchar(128) DEFAULT NULL,
  `addtime` datetime NOT NULL,
  `ipc_sortid` bigint(20) NOT NULL,
  `ipc_img_url` varchar(64) NOT NULL,
  PRIMARY KEY (`ipc_model`),
  KEY `FK_IPC_SORT` (`ipc_sortid`),
  CONSTRAINT `FK_IPC_SORT` FOREIGN KEY (`ipc_sortid`) REFERENCES `ipc_sorts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipc_products
-- ----------------------------
INSERT INTO `ipc_products` VALUES ('ACP-4000', 'ACP-4000', '研华', '台湾', 'linux', '4U上架式机箱，支持LED指示&声音警报通知', '2014-12-17 17:58:27', '1', 'gkj1.jpg');
INSERT INTO `ipc_products` VALUES ('ARK-1122H', 'ARK-1122H', '研华', '台湾', 'windows', '测试333333', '2014-12-17 17:49:51', '2', 'gkj2.jpg');
INSERT INTO `ipc_products` VALUES ('BIS-6660C', 'BIS-6660C', '研华', '台湾', 'Intel Bay Trail SOC', '测试', '2014-12-17 15:01:49', '1', 'gkj3.jpg');
INSERT INTO `ipc_products` VALUES ('IPC-610-H', 'IPC-610-H', '研华', '台湾', 'windows', '测试444444', '2014-12-17 17:57:44', '1', 'gkj4.jpg');
INSERT INTO `ipc_products` VALUES ('IPC-610-L', 'IPC-610-L', '研华', '台湾', 'Intel Bay Trail SOC', '测试222222', '2014-12-17 15:06:52', '1', 'gkj5.jpg');
