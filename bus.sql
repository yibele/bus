/*
Navicat MySQL Data Transfer

Source Server         : localhoost
Source Server Version : 50147
Source Host           : localhost:3306
Source Database       : bus_test

Target Server Type    : MYSQL
Target Server Version : 50147
File Encoding         : 65001

Date: 2011-05-09 16:14:27
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `busaccidentinformation`
-- ----------------------------
DROP TABLE IF EXISTS `busaccidentinformation`;
CREATE TABLE `busaccidentinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `busId` int(11) DEFAULT NULL,
  `accidentDegree` int(11) DEFAULT NULL,
  `accidentLocation` varchar(255) COLLATE utf8_bin DEFAULT '0',
  `lineId` int(11) DEFAULT NULL,
  `accidentContent` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `report` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of busaccidentinformation
-- ----------------------------
INSERT INTO busaccidentinformation VALUES ('1', '2010-08-31 18:58:00', '1', '1', '紫竹桥', '1', '拥堵', '张', null, null, null, null, '0');
INSERT INTO busaccidentinformation VALUES ('2', '2010-08-31 18:59:23', '2', '1', '万寿寺', '2', '拥堵', '王', null, null, null, null, '0');
INSERT INTO busaccidentinformation VALUES ('3', '2010-08-24 18:25:12', '1', '3', '长安大街', '3', '拥堵', '当前用户', null, null, null, null, '0');
INSERT INTO busaccidentinformation VALUES ('4', '2010-11-21 12:07:54', '2', '1', '赵公口', '4', '拥堵', '当前用户', null, null, null, null, '0');
INSERT INTO busaccidentinformation VALUES ('5', '2010-11-21 14:05:53', '2', '2', '公主坟', '5', '拥堵', '当前用户', null, null, null, null, '0');
INSERT INTO busaccidentinformation VALUES ('6', '2010-11-21 14:13:59', '2', '1', '中关村', '6', '拥堵', '当前用户', null, null, null, null, '0');
INSERT INTO busaccidentinformation VALUES ('7', '2011-03-29 10:23:04', '2', '1', '海淀', '1', '拥堵', '当前用户', null, null, null, null, '0');
INSERT INTO busaccidentinformation VALUES ('8', '2011-03-29 11:39:03', '2', '1', '中关村南', '1', '抢路', '当前用户', null, null, null, null, '0');
INSERT INTO busaccidentinformation VALUES ('9', '2011-03-29 11:42:54', '2', '1', '公主坟', '1', '撞车', '当前用户', null, null, null, null, '0');

-- ----------------------------
-- Table structure for `busblockinformation`
-- ----------------------------
DROP TABLE IF EXISTS `busblockinformation`;
CREATE TABLE `busblockinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `roadName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `busId` int(11) DEFAULT NULL,
  `lineId` int(11) DEFAULT NULL,
  `blockLocation` varchar(255) COLLATE utf8_bin DEFAULT '0',
  `blockContent` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `isRelieve` int(10) unsigned zerofill DEFAULT '0000000000' COMMENT '是否解除拥堵信息',
  `relieveContent` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '处理方法',
  `report` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of busblockinformation
-- ----------------------------
INSERT INTO busblockinformation VALUES ('1', '2010-08-25 18:08:47', '1', '学院路', '1', '1', '学院路', '', '0000000001', '处理完毕', '小刚', null, '2010-08-19 17:02:48', null, null, '0');
INSERT INTO busblockinformation VALUES ('2', '2010-08-25 18:09:31', '3', '成府路', '2', '1', '成府路', null, '0000000001', '处理完毕', '王伟', null, '2010-08-18 18:10:10', null, null, '0');
INSERT INTO busblockinformation VALUES ('3', '2010-08-23 22:28:48', '1', '牛街', '1', '1', '牛街', null, '0000000000', '处理完毕', '当前用户', null, null, null, null, '0');
INSERT INTO busblockinformation VALUES ('4', '2010-08-24 10:46:17', '3', '中关村一桥', '1', '1', '中关村一桥', null, '0000000001', '处理完毕', '当前用户', null, null, null, null, '0');
INSERT INTO busblockinformation VALUES ('5', '2010-10-26 15:54:30', '2', '成府路', '2', '1', '成府路', null, '0000000001', '处理完毕', '当前用户', null, null, null, null, '0');
INSERT INTO busblockinformation VALUES ('6', '2011-03-28 19:44:22', '2', null, '2', '1', '0', null, '0000000000', null, '当前用户', null, null, null, null, '0');
INSERT INTO busblockinformation VALUES ('7', '2011-03-28 19:53:39', '1', null, '2', '1', '0', null, '0000000000', null, '当前用户', null, null, null, null, '0');

-- ----------------------------
-- Table structure for `busblocktype`
-- ----------------------------
DROP TABLE IF EXISTS `busblocktype`;
CREATE TABLE `busblocktype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of busblocktype
-- ----------------------------
INSERT INTO busblocktype VALUES ('1', '低', null, null, null, null, null, '0');
INSERT INTO busblocktype VALUES ('2', '中', null, null, null, null, null, '0');
INSERT INTO busblocktype VALUES ('3', '高', null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for `busbreakruleinformation`
-- ----------------------------
DROP TABLE IF EXISTS `busbreakruleinformation`;
CREATE TABLE `busbreakruleinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `breakRuleLocation` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `breakRuleContent` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `breakRuleTime` datetime DEFAULT NULL,
  `breakRuleTypeId` int(11) DEFAULT NULL,
  `reasonable` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of busbreakruleinformation
-- ----------------------------

-- ----------------------------
-- Table structure for `busbusdeal`
-- ----------------------------
DROP TABLE IF EXISTS `busbusdeal`;
CREATE TABLE `busbusdeal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `unusualBusId` int(11) DEFAULT '0',
  `dealTime` datetime DEFAULT NULL,
  `dealContent` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `dealResult` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `dealPerson` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of busbusdeal
-- ----------------------------
INSERT INTO busbusdeal VALUES ('1', null, '0', '2010-08-18 13:02:00', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('2', null, '0', '2010-08-19 13:02:00', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('3', null, '0', '2010-08-20 13:02:00', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('4', null, '0', '2010-08-21 13:02:00', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('5', null, '0', '2010-08-22 13:02:00', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('6', null, '0', '2010-08-23 13:02:00', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('7', null, '0', '2010-08-24 13:02:00', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('8', null, '1', '2010-08-25 13:02:00', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('9', null, '3', '2010-08-26 13:02:00', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('10', null, '2', '2010-08-27 13:02:00', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('11', null, '4', '2010-08-28 13:02:00', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('12', null, '6', '2010-09-01 13:02:00', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('13', null, '0', '2010-08-29 13:02:00', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('14', null, '9', '2010-10-25 17:15:38', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('15', null, '8', '2010-11-06 16:02:07', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('16', null, '135', '2010-11-06 16:09:38', 'turu', null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('17', null, '105', '2010-11-06 16:13:03', '', null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('18', null, '323', '2010-11-07 10:57:00', 'jkh', null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('19', null, '330', '2010-11-07 10:57:46', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('20', null, '19', '2010-11-20 17:35:34', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('21', null, '23', '2010-11-20 17:35:50', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('22', null, '96', '2010-11-20 17:37:44', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('23', null, '96', '2010-11-20 17:37:58', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('24', null, '124', '2010-11-20 17:38:14', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('25', null, '83', '2010-11-20 17:45:40', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('26', null, '81', '2010-11-20 17:49:19', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('27', null, '20', '2010-11-20 18:25:06', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('28', null, '20', '2010-11-20 18:30:57', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('29', null, '97', '2010-11-20 18:33:38', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('30', null, '95', '2010-11-20 18:36:30', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('31', null, '91', '2010-11-20 18:37:28', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('32', null, '12', '2010-11-20 18:37:36', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('33', null, '113', '2010-11-20 18:40:19', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('34', null, '112', '2010-11-20 18:41:39', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('35', null, '125', '2010-11-20 18:42:48', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('36', null, '180', '2010-11-20 18:44:18', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('37', null, '11', '2010-11-20 18:44:30', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('38', null, '33', '2010-11-20 18:44:43', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('39', null, '27', '2010-11-20 18:45:06', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('40', null, '345', '2010-11-26 16:30:52', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('41', null, '22', '2010-12-07 11:30:58', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('42', null, '61', '2010-12-07 15:06:13', 'gfhf', null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('43', null, '179', '2010-12-08 11:05:42', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('44', null, '449', '2011-03-28 17:58:35', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('45', null, '329', '2011-03-28 18:17:25', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('46', null, '21', '2011-03-29 17:48:59', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('47', null, '78', '2011-03-30 10:14:33', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('48', null, '79', '2011-03-30 10:16:40', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('49', null, '111', '2011-03-30 10:37:50', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('50', null, '138', '2011-03-30 10:52:13', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('51', null, '152', '2011-03-30 11:08:03', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('52', null, '166', '2011-03-30 11:09:09', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('53', null, '28', '2011-03-30 11:40:02', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('54', null, '194', '2011-03-30 11:56:15', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('55', null, '94', '2011-03-30 11:56:34', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('56', null, '10', '2011-03-30 11:57:03', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('57', null, '29', '2011-03-30 11:57:20', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('58', null, '31', '2011-03-30 11:57:57', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('59', null, '30', '2011-03-30 12:01:31', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('60', null, '32', '2011-03-30 12:01:54', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('61', null, '371', '2011-03-30 12:07:08', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('62', null, '316', '2011-03-30 12:25:21', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('63', null, '208', '2011-04-01 22:10:19', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('64', null, '17', '2011-04-01 23:02:03', '', null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('65', null, '489', '2011-04-01 23:23:14', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('66', null, '250', '2011-04-01 23:27:42', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('67', null, '264', '2011-04-01 23:28:12', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('68', null, '463', '2011-04-01 23:31:06', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('69', null, '90', '2011-04-02 14:34:56', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('70', null, '93', '2011-04-20 18:41:13', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('71', null, '277', '2011-04-26 15:27:42', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('72', null, '277', '2011-04-26 15:33:01', null, null, null, null, null, null, null, '0');
INSERT INTO busbusdeal VALUES ('73', null, '34', '2011-04-26 16:36:43', '', null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for `busbusinformation`
-- ----------------------------
DROP TABLE IF EXISTS `busbusinformation`;
CREATE TABLE `busbusinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `busNo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `busStatusId` int(255) DEFAULT '0',
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of busbusinformation
-- ----------------------------
INSERT INTO busbusinformation VALUES ('1', null, 'E32433', '1', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('2', null, 'A34254', '1', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('3', null, 'AY7872', '1', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('4', null, 'A09850', '1', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('5', null, 'AS1478', '1', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('6', null, 'AY9857', '1', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('7', null, 'E78421', '1', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('8', null, 'E57543', '1', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('9', null, 'E45649', '1', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('10', null, 'SA4522', '1', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('11', null, 'Q15487', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('12', null, 'Q87545', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('13', null, 'Q56578', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('14', null, 'Q14578', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('15', null, 'Q87645', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('16', null, 'Q13549', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('17', null, 'Q47548', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('18', null, 'AX4896', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('19', null, 'AX4123', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('20', null, 'AX7412', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('21', null, 'AX1984', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('22', null, 'AX96859', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('23', null, 'AX7745', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('24', null, 'AX6957', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('25', null, 'HF5742', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('26', null, 'HF1234', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('27', null, 'HF4567', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('28', null, 'HF7954', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('29', null, 'HF6487', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('30', null, 'HF9889', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('31', null, 'HF7859', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('32', null, 'HF1257', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('33', null, 'HF4359', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('34', null, 'HF0215', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('35', '', 'AC4751', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('36', null, 'AC75541', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('37', null, 'AC9541', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('38', null, 'AC7458', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('39', null, 'AC1459', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('40', null, 'AC2468', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('41', null, 'AC3694', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('42', null, 'AC1573', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('43', null, 'AC3447', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('44', null, 'AC1054', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('45', null, 'DD4751', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('46', null, 'DD6658', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('47', null, 'DD4576', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('48', null, 'DD8847', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('49', null, 'DD6571', '0', null, null, null, null, '0');
INSERT INTO busbusinformation VALUES ('50', null, 'DD9972', '0', null, null, null, null, '0');

-- ----------------------------
-- Table structure for `busbusinformationline`
-- ----------------------------
DROP TABLE IF EXISTS `busbusinformationline`;
CREATE TABLE `busbusinformationline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `busInformationId` int(11) DEFAULT NULL,
  `lineId` int(255) DEFAULT '0',
  `crewId` int(11) DEFAULT '0',
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of busbusinformationline
-- ----------------------------
INSERT INTO busbusinformationline VALUES ('1', '1', '1', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('2', '2', '1', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('3', '3', '1', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('4', '4', '1', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('5', '5', '1', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('6', '6', '1', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('7', '7', '2', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('8', '8', '2', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('9', '9', '2', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('10', '10', '2', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('11', '11', '2', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('12', '12', '2', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('13', '13', '3', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('14', '14', '3', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('15', '15', '3', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('16', '16', '3', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('17', '17', '3', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('18', '36', '6', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('19', '24', '4', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('20', '23', '4', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('21', '22', '4', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('22', '21', '4', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('23', '20', '4', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('24', '19', '4', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('25', '18', '3', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('26', '29', '5', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('27', '28', '5', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('28', '27', '5', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('29', '26', '5', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('30', '25', '5', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('31', '35', '6', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('32', '34', '6', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('33', '33', '6', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('34', '32', '6', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('35', '31', '6', '0', null, null, null, null, '0');
INSERT INTO busbusinformationline VALUES ('36', '30', '5', '0', null, null, null, null, '0');

-- ----------------------------
-- Table structure for `busbusstatus`
-- ----------------------------
DROP TABLE IF EXISTS `busbusstatus`;
CREATE TABLE `busbusstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of busbusstatus
-- ----------------------------
INSERT INTO busbusstatus VALUES ('1', '启用', null, null, null, null, '0');
INSERT INTO busbusstatus VALUES ('2', '禁用', null, null, null, null, '0');

-- ----------------------------
-- Table structure for `buscontrolmode`
-- ----------------------------
DROP TABLE IF EXISTS `buscontrolmode`;
CREATE TABLE `buscontrolmode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of buscontrolmode
-- ----------------------------
INSERT INTO buscontrolmode VALUES ('1', '增开区间车', null, null, null, null, null, '0');
INSERT INTO buscontrolmode VALUES ('2', '增开班次', null, null, null, null, null, '0');
INSERT INTO buscontrolmode VALUES ('3', '甩站', null, null, null, null, null, '0');
INSERT INTO buscontrolmode VALUES ('4', '绕行', null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for `buscrew`
-- ----------------------------
DROP TABLE IF EXISTS `buscrew`;
CREATE TABLE `buscrew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `crewStatusId` int(255) DEFAULT '0',
  `location` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of buscrew
-- ----------------------------
INSERT INTO buscrew VALUES ('1', '韩世荣', '001', '1', '百万庄东口', null, null, null, null, '0');
INSERT INTO buscrew VALUES ('2', '胡军', '002', '1', '国家工商总局', null, null, null, null, '0');
INSERT INTO buscrew VALUES ('3', '胡勇', '003', '1', '茂林居', null, null, null, null, '0');
INSERT INTO buscrew VALUES ('4', '纪道平', '004', '1', '会城门', null, null, null, null, '0');
INSERT INTO buscrew VALUES ('5', '李峰', '005', '1', '菜户营桥西', null, null, null, null, '0');
INSERT INTO buscrew VALUES ('6', '林波', null, '1', '茂林居', null, null, null, null, '0');
INSERT INTO buscrew VALUES ('7', '赵志超', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('8', '赵振铎', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('9', '张不平', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('10', '张升', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('11', '方志远', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('12', '高雄俊', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('13', '胡继宏', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('14', '黄焕生', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('15', '纪德军', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('16', '刘维胜', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('17', '毛勇', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('18', '庞道华', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('19', '乔吉昌', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('20', '沈辉', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('21', '陶静', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('22', '王冰涛', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('23', '王峥', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('24', '魏红斌', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('25', '熊伟', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('26', '许光国', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('27', '杨旭波', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('28', '尤国玉', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('29', '张国樊', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('30', '张明', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('31', '张修顺', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('32', '章豪杰', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('33', '赵平', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('34', '周志国', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('35', '陈波', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('36', '陈胜海', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('37', '邓友全', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('38', '丁宏刚', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('39', '杜长金', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('40', '范大庆', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('41', '龚秋林', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('42', '韩秉光', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('43', '黄学峰', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('44', '李贵明', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('45', '刘菲', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('46', '刘军', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('47', '施学桂', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('48', '邰清红', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('49', '王四洪', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('50', '熊吉峰', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('51', '鄢家国', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('52', '姚有明', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('53', '张伟', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('54', '赵丰', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('55', '周光亮', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('56', '周伟', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('57', '丁波', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('58', '李剑', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('59', '马望生', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('60', '魏松', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('61', '杨汉涛', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('62', '张家云', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('63', '曹敏', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('64', '丰全', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('65', '冯世芳', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('66', '刘晓敏', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('67', '马淑萍', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('68', '王芳', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('69', '杨赵平', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('70', '张爱玲', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('71', '赵建华', '100', '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('72', '董小芸', '101', '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('73', '方卫星', '102', '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('74', '金辉', '103', '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('75', '田广明', '104', '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('76', '田志强', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('77', '涂少敏', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('78', '魏玉乐', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('79', '叶宏', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('80', '曾卫东', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('81', '张璟', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('82', '张均', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('83', '张俊', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('84', '张涛', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('85', '赵昊章', null, '1', null, null, null, null, null, '0');
INSERT INTO buscrew VALUES ('86', '郑海峰', null, '1', null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for `buscrewbusinformation`
-- ----------------------------
DROP TABLE IF EXISTS `buscrewbusinformation`;
CREATE TABLE `buscrewbusinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `busInformationId` int(11) DEFAULT NULL,
  `crewId` int(255) DEFAULT NULL,
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of buscrewbusinformation
-- ----------------------------
INSERT INTO buscrewbusinformation VALUES ('1', '1', '1', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('2', '2', '2', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('3', '3', '3', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('4', '4', '4', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('5', '5', '5', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('6', '6', '6', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('7', '7', '7', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('8', '8', '8', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('9', '9', '9', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('10', '10', '10', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('11', '11', '11', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('12', '12', '12', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('13', '13', '13', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('14', '14', '14', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('15', '15', '15', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('16', '16', '16', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('17', '17', '17', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('18', '18', '18', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('19', '19', '19', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('20', '20', '20', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('21', '21', '21', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('22', '22', '22', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('23', '23', '23', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('24', '24', '24', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('25', '25', '25', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('26', '26', '26', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('27', '27', '27', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('28', '28', '28', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('29', '29', '29', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('30', '30', '30', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('31', '31', '31', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('32', '32', '32', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('33', '33', '33', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('34', '34', '34', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('35', '35', '35', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('36', '36', '36', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('37', '37', '37', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('38', '38', '38', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('39', '39', '39', null, null, null, null, '0');
INSERT INTO buscrewbusinformation VALUES ('40', '40', '40', null, null, null, null, '0');

-- ----------------------------
-- Table structure for `buscrewrole`
-- ----------------------------
DROP TABLE IF EXISTS `buscrewrole`;
CREATE TABLE `buscrewrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crewId` int(11) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `isDeleted` varchar(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buscrewrole
-- ----------------------------
INSERT INTO buscrewrole VALUES ('1', '1', '1', '0');
INSERT INTO buscrewrole VALUES ('2', '2', '1', '0');
INSERT INTO buscrewrole VALUES ('3', '3', '1', '0');
INSERT INTO buscrewrole VALUES ('4', '4', '1', '0');
INSERT INTO buscrewrole VALUES ('5', '5', '1', '0');
INSERT INTO buscrewrole VALUES ('6', '6', '1', '0');
INSERT INTO buscrewrole VALUES ('7', '7', '1', '0');
INSERT INTO buscrewrole VALUES ('8', '8', '1', '0');
INSERT INTO buscrewrole VALUES ('9', '9', '1', '0');
INSERT INTO buscrewrole VALUES ('10', '10', '1', '0');
INSERT INTO buscrewrole VALUES ('11', '11', '1', '0');
INSERT INTO buscrewrole VALUES ('12', '12', '1', '0');
INSERT INTO buscrewrole VALUES ('13', '13', '1', '0');
INSERT INTO buscrewrole VALUES ('14', '14', '1', '0');
INSERT INTO buscrewrole VALUES ('15', '15', '1', '0');
INSERT INTO buscrewrole VALUES ('16', '16', '1', '0');
INSERT INTO buscrewrole VALUES ('17', '17', '1', '0');
INSERT INTO buscrewrole VALUES ('18', '18', '1', '0');
INSERT INTO buscrewrole VALUES ('19', '19', '1', '0');
INSERT INTO buscrewrole VALUES ('20', '20', '1', '0');
INSERT INTO buscrewrole VALUES ('21', '21', '1', '0');
INSERT INTO buscrewrole VALUES ('22', '22', '1', '0');
INSERT INTO buscrewrole VALUES ('23', '23', '1', '0');
INSERT INTO buscrewrole VALUES ('24', '24', '1', '0');
INSERT INTO buscrewrole VALUES ('25', '25', '1', '0');
INSERT INTO buscrewrole VALUES ('26', '26', '1', '0');
INSERT INTO buscrewrole VALUES ('27', '27', '1', '0');
INSERT INTO buscrewrole VALUES ('28', '28', '1', '0');
INSERT INTO buscrewrole VALUES ('29', '29', '1', '0');
INSERT INTO buscrewrole VALUES ('30', '30', '1', '0');
INSERT INTO buscrewrole VALUES ('31', '31', '1', '0');
INSERT INTO buscrewrole VALUES ('32', '32', '1', '0');
INSERT INTO buscrewrole VALUES ('33', '33', '1', '0');
INSERT INTO buscrewrole VALUES ('34', '34', '1', '0');
INSERT INTO buscrewrole VALUES ('35', '35', '1', '0');
INSERT INTO buscrewrole VALUES ('36', '36', '1', '0');
INSERT INTO buscrewrole VALUES ('37', '37', '1', '0');
INSERT INTO buscrewrole VALUES ('38', '38', '1', '0');
INSERT INTO buscrewrole VALUES ('39', '39', '1', '0');
INSERT INTO buscrewrole VALUES ('40', '40', '1', '0');
INSERT INTO buscrewrole VALUES ('41', '41', '1', '0');
INSERT INTO buscrewrole VALUES ('42', '42', '1', '0');
INSERT INTO buscrewrole VALUES ('43', '43', '1', '0');
INSERT INTO buscrewrole VALUES ('44', '44', '1', '0');
INSERT INTO buscrewrole VALUES ('45', '45', '1', '0');
INSERT INTO buscrewrole VALUES ('46', '46', '1', '0');
INSERT INTO buscrewrole VALUES ('47', '47', '1', '0');
INSERT INTO buscrewrole VALUES ('48', '48', '1', '0');
INSERT INTO buscrewrole VALUES ('49', '49', '1', '0');
INSERT INTO buscrewrole VALUES ('50', '50', '1', '0');
INSERT INTO buscrewrole VALUES ('51', '51', '1', '0');
INSERT INTO buscrewrole VALUES ('52', '52', '1', '0');
INSERT INTO buscrewrole VALUES ('53', '53', '1', '0');
INSERT INTO buscrewrole VALUES ('54', '54', '1', '0');
INSERT INTO buscrewrole VALUES ('55', '55', '1', '0');
INSERT INTO buscrewrole VALUES ('56', '56', '1', '0');
INSERT INTO buscrewrole VALUES ('57', '57', '1', '0');
INSERT INTO buscrewrole VALUES ('58', '58', '1', '0');
INSERT INTO buscrewrole VALUES ('59', '59', '1', '0');
INSERT INTO buscrewrole VALUES ('60', '60', '1', '0');
INSERT INTO buscrewrole VALUES ('61', '61', '1', '0');
INSERT INTO buscrewrole VALUES ('62', '62', '1', '0');
INSERT INTO buscrewrole VALUES ('63', '63', '1', '0');
INSERT INTO buscrewrole VALUES ('64', '64', '1', '0');
INSERT INTO buscrewrole VALUES ('65', '65', '1', '0');
INSERT INTO buscrewrole VALUES ('66', '66', '1', '0');
INSERT INTO buscrewrole VALUES ('67', '67', '1', '0');
INSERT INTO buscrewrole VALUES ('68', '68', '1', '0');
INSERT INTO buscrewrole VALUES ('69', '69', '1', '0');
INSERT INTO buscrewrole VALUES ('70', '70', '1', '0');
INSERT INTO buscrewrole VALUES ('71', '71', '2', '0');
INSERT INTO buscrewrole VALUES ('72', '72', '2', '0');
INSERT INTO buscrewrole VALUES ('73', '73', '2', '0');
INSERT INTO buscrewrole VALUES ('74', '74', '3', '0');
INSERT INTO buscrewrole VALUES ('75', '75', '4', '0');

-- ----------------------------
-- Table structure for `buscrewstatus`
-- ----------------------------
DROP TABLE IF EXISTS `buscrewstatus`;
CREATE TABLE `buscrewstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of buscrewstatus
-- ----------------------------
INSERT INTO buscrewstatus VALUES ('1', '正常', null, null, null, null, '0');
INSERT INTO buscrewstatus VALUES ('2', '闲置', null, null, null, null, '0');

-- ----------------------------
-- Table structure for `buscrewunused`
-- ----------------------------
DROP TABLE IF EXISTS `buscrewunused`;
CREATE TABLE `buscrewunused` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crewId` int(11) DEFAULT NULL,
  `isDeal` int(11) unsigned zerofill DEFAULT '00000000000',
  `location` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of buscrewunused
-- ----------------------------
INSERT INTO buscrewunused VALUES ('1', '5', '00000000001', '二里庄', null, '2010-08-25 16:02:46', null, null, '0');
INSERT INTO buscrewunused VALUES ('2', '7', '00000000000', '张家口', null, '2010-08-31 16:02:49', null, null, '0');
INSERT INTO buscrewunused VALUES ('3', '9', '00000000000', '会城门', null, '2010-08-30 17:33:59', null, null, '0');
INSERT INTO buscrewunused VALUES ('4', '14', '00000000000', '德胜门南站', null, '2010-08-31 17:34:42', null, null, '0');
INSERT INTO buscrewunused VALUES ('5', '17', '00000000000', '宽街路口南', null, '2010-08-30 17:34:39', null, null, '0');
INSERT INTO buscrewunused VALUES ('6', '22', '00000000000', '靛厂新村', null, '2010-08-22 17:35:04', null, null, '0');

-- ----------------------------
-- Table structure for `buseventline`
-- ----------------------------
DROP TABLE IF EXISTS `buseventline`;
CREATE TABLE `buseventline` (
  `id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `lineid` int(11) NOT NULL,
  `busid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buseventline
-- ----------------------------
INSERT INTO buseventline VALUES ('1', '1', '1', '1');
INSERT INTO buseventline VALUES ('2', '1', '1', '2');
INSERT INTO buseventline VALUES ('3', '1', '2', '3');
INSERT INTO buseventline VALUES ('4', '2', '3', '4');
INSERT INTO buseventline VALUES ('5', '2', '3', '5');
INSERT INTO buseventline VALUES ('6', '3', '5', '8');
INSERT INTO buseventline VALUES ('7', '4', '1', '1');
INSERT INTO buseventline VALUES ('8', '4', '1', '2');
INSERT INTO buseventline VALUES ('9', '5', '1', '2');
INSERT INTO buseventline VALUES ('10', '6', '1', '2');
INSERT INTO buseventline VALUES ('11', '5', '1', '2');

-- ----------------------------
-- Table structure for `busevents`
-- ----------------------------
DROP TABLE IF EXISTS `busevents`;
CREATE TABLE `busevents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `line` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `busNo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `activity` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of busevents
-- ----------------------------
INSERT INTO busevents VALUES ('1', '国庆节', '2011-10-01 10:32:32', '天安门附近', '1', '1', '大型集会，人多车多', '当前用户', '2011-08-25 10:32:32', null, null, '0');
INSERT INTO busevents VALUES ('2', '中秋节', '2011-09-21 14:41:54', '颐和园站附近', '2', '2', '小规模聚会', '当前用户', '2011-08-31 10:36:08', null, null, '0');
INSERT INTO busevents VALUES ('3', '春节', '2011-12-01 14:42:34', '东三环附近', '3', '3', '超大规模集会', '当前用户', '2011-08-24 14:39:40', null, null, '0');
INSERT INTO busevents VALUES ('4', '端午节', '2011-05-02 18:25:29', '长安大街', '4', '4', '超大估摸集会', '当前用户', '2011-08-24 18:25:29', null, null, '0');
INSERT INTO busevents VALUES ('5', '重阳节', '2010-09-28 18:24:07', '突然有热源有', '5', '5', '让他也容易 ', '当前用户', '2010-09-28 18:24:07', null, null, '0');
INSERT INTO busevents VALUES ('6', '天安门东', '2011-03-30 14:49:46', '天安门东', null, null, null, '当前用户', '2011-03-29 14:49:46', null, null, '0');

-- ----------------------------
-- Table structure for `buslineinformation`
-- ----------------------------
DROP TABLE IF EXISTS `buslineinformation`;
CREATE TABLE `buslineinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `startPointId` int(11) DEFAULT '0',
  `EndPointId` int(11) DEFAULT NULL,
  `beginTime` datetime DEFAULT '0000-00-00 00:00:00',
  `endTime` datetime DEFAULT '0000-00-00 00:00:00',
  `isAircondition` int(11) unsigned zerofill DEFAULT '00000000000' COMMENT '是否是空调车',
  `startBlank` int(11) DEFAULT '15' COMMENT '发车间隔',
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of buslineinformation
-- ----------------------------
INSERT INTO buslineinformation VALUES ('1', '112路', '1', '14', '2010-08-17 05:30:00', '2010-08-31 11:30:00', '00000000001', '15', null, null, null, null, '0');
INSERT INTO buslineinformation VALUES ('2', '407路', '2', '6', '2010-08-17 06:30:00', '2010-08-31 09:30:00', '00000000001', '20', null, null, null, null, '0');
INSERT INTO buslineinformation VALUES ('3', '307路', '3', '7', '2010-08-17 06:00:00', '2010-08-31 09:00:00', '00000000000', '15', null, null, null, null, '0');
INSERT INTO buslineinformation VALUES ('4', '328路', '4', '8', '2010-08-17 07:00:00', '2010-08-31 09:00:00', '00000000001', '20', null, null, null, null, '0');
INSERT INTO buslineinformation VALUES ('5', '运通109', '2', '10', '2010-08-17 05:30:00', '2010-08-31 11:30:00', '00000000000', '15', null, null, null, null, '0');
INSERT INTO buslineinformation VALUES ('6', '114l路', '1', '4', '2010-08-17 06:30:00', '2010-08-31 11:30:00', '00000000001', '15', null, null, null, null, '0');

-- ----------------------------
-- Table structure for `busrole`
-- ----------------------------
DROP TABLE IF EXISTS `busrole`;
CREATE TABLE `busrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of busrole
-- ----------------------------
INSERT INTO busrole VALUES ('1', '乘务员');
INSERT INTO busrole VALUES ('2', '调度员');
INSERT INTO busrole VALUES ('3', '业务管理员');
INSERT INTO busrole VALUES ('4', '系统管理员');

-- ----------------------------
-- Table structure for `busspaceline`
-- ----------------------------
DROP TABLE IF EXISTS `busspaceline`;
CREATE TABLE `busspaceline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controlmodeId` int(11) DEFAULT NULL,
  `crewId` int(11) DEFAULT NULL,
  `lineId` int(11) DEFAULT NULL,
  `startId` int(11) DEFAULT NULL,
  `endId` int(11) DEFAULT NULL,
  `isExec` int(11) unsigned zerofill DEFAULT '00000000000',
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of busspaceline
-- ----------------------------
INSERT INTO busspaceline VALUES ('1', '2', '1', '1', '1', '2', '00000000000', '2011-04-06 10:00:30', '2010-10-08 19:33:35', '2010-08-08 00:00:00', null, null, '0');
INSERT INTO busspaceline VALUES ('2', '2', '2', '1', '1', '2', '00000000000', '2011-04-28 10:11:59', '2010-08-24 10:12:02', '2010-08-08 00:00:00', null, null, '0');
INSERT INTO busspaceline VALUES ('3', '1', '2', '1', '1', '2', '00000000000', '2011-04-28 18:52:26', '2010-08-23 18:52:28', '2010-08-23 17:02:34', null, null, '0');
INSERT INTO busspaceline VALUES ('4', '2', '2', '1', '1', '2', '00000000000', '2011-04-29 18:52:23', '2010-08-23 18:52:31', '2010-08-23 17:02:46', null, null, '0');
INSERT INTO busspaceline VALUES ('5', '2', '2', '1', '1', '2', '00000000000', '2011-04-04 18:52:19', '2010-08-23 18:52:32', '2010-08-23 18:52:44', null, null, '0');
INSERT INTO busspaceline VALUES ('6', '2', '2', '1', '1', '2', '00000000000', '2011-04-05 18:52:17', '2010-08-23 18:52:34', '2010-08-23 18:52:47', null, null, '0');
INSERT INTO busspaceline VALUES ('8', '3', '2', '1', '1', '2', '00000000001', '2011-04-28 18:52:11', '2010-08-23 18:52:39', '2010-08-23 18:52:51', null, null, '0');
INSERT INTO busspaceline VALUES ('9', '4', '4', '1', '1', '2', '00000000000', '2010-10-08 18:52:07', '2010-08-23 18:52:42', '2010-08-23 18:52:52', null, null, '0');
INSERT INTO busspaceline VALUES ('10', '3', '2', '1', '1', '2', '00000000000', '2010-09-28 14:28:18', '2010-09-29 14:28:24', '2010-09-29 14:28:29', null, null, '0');
INSERT INTO busspaceline VALUES ('11', '4', '2', '1', '1', '2', '00000000001', '2011-04-28 14:29:56', '2010-09-28 14:31:29', '2010-09-28 14:33:20', null, null, '0');
INSERT INTO busspaceline VALUES ('12', '4', '2', '1', '1', '2', '00000000000', '2010-09-30 16:08:47', '2010-09-30 16:08:53', '2010-09-30 16:08:58', null, null, '0');
INSERT INTO busspaceline VALUES ('13', '1', '1', '1', '1', '2', '00000000000', '2010-10-09 14:08:39', '2010-10-09 14:09:00', '2010-10-08 14:09:24', null, null, '0');
INSERT INTO busspaceline VALUES ('14', '1', '1', '1', '1', '2', '00000000000', '2010-10-10 14:08:44', '2010-10-10 14:09:05', '2010-10-08 14:09:24', null, null, '0');
INSERT INTO busspaceline VALUES ('15', '1', '1', '1', '1', '2', '00000000000', '2010-10-11 14:08:50', '2010-10-11 14:09:10', '2010-10-08 14:09:24', null, null, '0');
INSERT INTO busspaceline VALUES ('16', '1', '1', '1', '1', '2', '00000000000', '2010-10-12 14:08:54', '2010-10-12 14:09:14', '2010-10-08 14:09:24', null, null, '0');
INSERT INTO busspaceline VALUES ('20', '1', '3', '1', '1', '2', '00000000000', '2010-10-09 14:10:12', '2010-10-09 14:10:40', '2010-10-08 14:09:24', null, null, '0');
INSERT INTO busspaceline VALUES ('21', '1', '3', '1', '1', '2', '00000000000', '2010-10-10 14:10:16', '2010-10-10 14:10:43', '2010-10-08 14:09:24', null, null, '0');
INSERT INTO busspaceline VALUES ('22', '1', '3', '1', '1', '2', '00000000000', '2010-10-11 14:10:21', '2010-10-11 14:10:48', '2010-10-08 14:09:24', null, null, '0');
INSERT INTO busspaceline VALUES ('23', '1', '3', '1', '1', '2', '00000000000', '2010-10-12 14:10:25', '2010-10-12 14:10:53', '2010-10-08 14:09:24', null, null, '0');
INSERT INTO busspaceline VALUES ('24', '2', '2', '1', '1', '2', '00000000000', '2011-04-06 14:11:36', '2010-10-09 14:11:56', '2010-10-08 14:09:24', null, null, '0');
INSERT INTO busspaceline VALUES ('25', '2', '2', '1', '1', '2', '00000000000', '2011-04-07 14:11:41', '2010-10-10 14:12:00', '2010-10-08 14:09:24', null, null, '0');
INSERT INTO busspaceline VALUES ('26', '2', '2', '1', '1', '2', '00000000000', '2011-04-08 14:11:46', '2010-10-11 14:12:04', '2010-10-08 14:09:24', null, null, '0');
INSERT INTO busspaceline VALUES ('27', '2', '2', '1', '1', '2', '00000000000', '2011-04-09 14:11:50', '2010-10-12 14:12:09', '2010-10-08 14:09:24', null, null, '0');
INSERT INTO busspaceline VALUES ('28', '4', '2', '1', '1', '2', '00000000000', '2010-10-09 14:13:21', '2010-10-09 14:13:43', '2010-10-08 14:09:24', null, null, '0');
INSERT INTO busspaceline VALUES ('29', '4', '2', '1', '1', '2', '00000000000', '2010-10-10 14:13:25', '2010-10-10 14:13:50', '2010-10-08 14:09:24', null, null, '0');
INSERT INTO busspaceline VALUES ('30', '4', '2', '1', '1', '2', '00000000000', '2010-10-11 14:13:31', '2010-10-11 14:13:56', '2010-10-08 14:09:24', null, null, '0');
INSERT INTO busspaceline VALUES ('31', '4', '2', '1', '1', '2', '00000000000', '2010-10-12 14:13:36', '2010-10-12 14:14:01', '2010-10-08 14:09:24', null, null, '0');
INSERT INTO busspaceline VALUES ('32', '4', '2', '1', '1', '2', '00000000000', '2010-10-13 14:15:39', '2010-10-13 14:15:44', '2010-10-08 14:09:24', null, null, '0 ');
INSERT INTO busspaceline VALUES ('33', '1', '2', '1', '1', '2', '00000000000', '2010-10-21 13:31:47', '2010-10-21 13:31:47', null, null, null, '0');
INSERT INTO busspaceline VALUES ('34', '2', '2', '1', '1', '2', '00000000000', '2010-10-21 13:31:47', '2010-10-21 13:31:47', null, null, null, '0');
INSERT INTO busspaceline VALUES ('35', '3', '2', '1', '1', '2', '00000000000', '2010-10-21 13:31:47', '2010-10-21 13:31:47', null, null, null, '0');
INSERT INTO busspaceline VALUES ('36', '4', '2', '1', '1', '2', '00000000000', '2010-10-21 13:31:47', '2010-10-21 13:31:47', null, null, null, '0');
INSERT INTO busspaceline VALUES ('37', '1', '2', '1', '1', '2', '00000000000', '2010-11-02 16:57:36', '2010-11-02 16:57:36', null, null, null, '0');
INSERT INTO busspaceline VALUES ('38', '2', '2', '1', '1', '2', '00000000000', '2010-11-02 16:57:36', '2010-11-02 16:57:36', null, null, null, '0');
INSERT INTO busspaceline VALUES ('39', '3', '2', '1', '1', '2', '00000000000', '2010-11-02 16:57:36', '2010-11-02 16:57:36', null, null, null, '0');
INSERT INTO busspaceline VALUES ('40', '4', '2', '1', '1', '2', '00000000000', '2010-11-02 16:57:36', '2010-11-02 16:57:36', null, null, null, '0');
INSERT INTO busspaceline VALUES ('41', '1', '2', '1', '1', '2', '00000000000', '2010-11-03 11:51:35', '2010-11-03 11:51:35', null, null, null, '0');
INSERT INTO busspaceline VALUES ('42', '2', '2', '1', '1', '2', '00000000000', '2010-11-03 11:51:35', '2010-11-03 11:51:35', null, null, null, '0');
INSERT INTO busspaceline VALUES ('43', '3', '2', '1', '1', '2', '00000000000', '2010-11-03 11:51:35', '2010-11-03 11:51:35', null, null, null, '0');
INSERT INTO busspaceline VALUES ('44', '4', '2', '1', '1', '2', '00000000000', '2010-11-03 11:51:35', '2010-11-03 11:51:35', null, null, null, '0');
INSERT INTO busspaceline VALUES ('45', '1', '2', '1', '1', '2', '00000000000', '2010-11-05 16:06:13', '2010-11-05 16:06:13', null, null, null, '0');
INSERT INTO busspaceline VALUES ('46', '2', '2', '1', '1', '2', '00000000000', '2010-11-05 16:06:13', '2010-11-05 16:06:13', null, null, null, '0');
INSERT INTO busspaceline VALUES ('47', '3', '2', '1', '1', '2', '00000000000', '2010-11-05 16:06:13', '2010-11-05 16:06:13', null, null, null, '0');
INSERT INTO busspaceline VALUES ('48', '4', '2', '1', '1', '2', '00000000000', '2010-11-05 16:06:13', '2010-11-05 16:06:13', null, null, null, '0');
INSERT INTO busspaceline VALUES ('49', '1', '2', '1', '1', '2', '00000000000', '2010-11-06 15:53:40', '2010-11-06 15:53:40', null, null, null, '0');
INSERT INTO busspaceline VALUES ('50', '2', '2', '1', '1', '2', '00000000000', '2010-11-06 15:53:40', '2010-11-06 15:53:40', null, null, null, '0');
INSERT INTO busspaceline VALUES ('51', '3', '2', '1', '1', '2', '00000000000', '2010-11-06 15:53:40', '2010-11-06 15:53:40', null, null, null, '0');
INSERT INTO busspaceline VALUES ('52', '4', '2', '1', '1', '2', '00000000000', '2010-11-06 15:53:40', '2010-11-06 15:53:40', null, null, null, '0');
INSERT INTO busspaceline VALUES ('53', '1', '2', '1', '1', '2', '00000000000', '2010-11-07 10:38:01', '2010-11-07 10:38:01', null, null, null, '0');
INSERT INTO busspaceline VALUES ('54', '2', '2', '1', '1', '2', '00000000000', '2010-11-07 10:38:01', '2010-11-07 10:38:01', null, null, null, '0');
INSERT INTO busspaceline VALUES ('55', '3', '2', '1', '1', '2', '00000000000', '2010-11-07 10:38:01', '2010-11-07 10:38:01', null, null, null, '0');
INSERT INTO busspaceline VALUES ('56', '4', '2', '1', '1', '2', '00000000000', '2010-11-07 10:38:01', '2010-11-07 10:38:01', null, null, null, '0');
INSERT INTO busspaceline VALUES ('57', '1', '2', '1', '1', '2', '00000000000', '2010-11-08 18:36:27', '2010-11-08 18:36:27', null, null, null, '0');
INSERT INTO busspaceline VALUES ('58', '2', '2', '1', '1', '2', '00000000000', '2010-11-08 18:36:27', '2010-11-08 18:36:27', null, null, null, '0');
INSERT INTO busspaceline VALUES ('59', '3', '2', '1', '1', '2', '00000000000', '2010-11-08 18:36:27', '2010-11-08 18:36:27', null, null, null, '0');
INSERT INTO busspaceline VALUES ('60', '4', '2', '1', '1', '2', '00000000000', '2010-11-08 18:36:27', '2010-11-08 18:36:27', null, null, null, '0');
INSERT INTO busspaceline VALUES ('61', '1', '2', '1', '1', '2', '00000000000', '2010-11-09 19:08:38', '2010-11-09 19:08:38', null, null, null, '0');
INSERT INTO busspaceline VALUES ('62', '2', '2', '1', '1', '2', '00000000000', '2010-11-09 19:08:38', '2010-11-09 19:08:38', null, null, null, '0');
INSERT INTO busspaceline VALUES ('63', '3', '2', '1', '1', '2', '00000000000', '2010-11-09 19:08:38', '2010-11-09 19:08:38', null, null, null, '0');
INSERT INTO busspaceline VALUES ('64', '4', '2', '1', '1', '2', '00000000000', '2010-11-09 19:08:38', '2010-11-09 19:08:38', null, null, null, '0');
INSERT INTO busspaceline VALUES ('65', '1', '2', '1', '1', '2', '00000000000', '2010-11-10 15:26:05', '2010-11-10 15:26:05', null, null, null, '0');
INSERT INTO busspaceline VALUES ('66', '2', '2', '1', '1', '2', '00000000000', '2010-11-10 15:26:05', '2010-11-10 15:26:05', null, null, null, '0');
INSERT INTO busspaceline VALUES ('67', '3', '2', '1', '1', '2', '00000000000', '2010-11-10 15:26:05', '2010-11-10 15:26:05', null, null, null, '0');
INSERT INTO busspaceline VALUES ('68', '4', '2', '1', '1', '2', '00000000000', '2010-11-10 15:26:05', '2010-11-10 15:26:05', null, null, null, '0');
INSERT INTO busspaceline VALUES ('69', '1', '2', '1', '1', '2', '00000000000', '2010-11-11 11:17:12', '2010-11-11 11:17:12', null, null, null, '0');
INSERT INTO busspaceline VALUES ('70', '2', '2', '1', '1', '2', '00000000000', '2010-11-11 11:17:12', '2010-11-11 11:17:12', null, null, null, '0');
INSERT INTO busspaceline VALUES ('71', '3', '2', '1', '1', '2', '00000000000', '2010-11-11 11:17:12', '2010-11-11 11:17:12', null, null, null, '0');
INSERT INTO busspaceline VALUES ('72', '4', '2', '1', '1', '2', '00000000000', '2010-11-11 11:17:12', '2010-11-11 11:17:12', null, null, null, '0');
INSERT INTO busspaceline VALUES ('73', '1', '2', '1', '1', '2', '00000000000', '2010-11-15 11:23:47', '2010-11-15 11:23:47', null, null, null, '0');
INSERT INTO busspaceline VALUES ('74', '2', '2', '1', '1', '2', '00000000000', '2010-11-15 11:23:47', '2010-11-15 11:23:47', null, null, null, '0');
INSERT INTO busspaceline VALUES ('75', '3', '2', '1', '1', '2', '00000000000', '2010-11-15 11:23:47', '2010-11-15 11:23:47', null, null, null, '0');
INSERT INTO busspaceline VALUES ('76', '4', '2', '1', '1', '2', '00000000000', '2010-11-15 11:23:47', '2010-11-15 11:23:47', null, null, null, '0');
INSERT INTO busspaceline VALUES ('77', '1', '2', '1', '1', '2', '00000000000', '2010-11-16 11:18:19', '2010-11-16 11:18:19', null, null, null, '0');
INSERT INTO busspaceline VALUES ('78', '2', '2', '1', '1', '2', '00000000000', '2010-11-16 11:18:19', '2010-11-16 11:18:19', null, null, null, '0');
INSERT INTO busspaceline VALUES ('79', '3', '2', '1', '1', '2', '00000000000', '2010-11-16 11:18:19', '2010-11-16 11:18:19', null, null, null, '0');
INSERT INTO busspaceline VALUES ('80', '4', '2', '1', '1', '2', '00000000000', '2010-11-16 11:18:19', '2010-11-16 11:18:19', null, null, null, '0');
INSERT INTO busspaceline VALUES ('81', '2', '2', '2', '1', '2', '00000000000', '2010-11-21 11:26:05', null, '2010-11-20 15:10:17', null, null, '0');
INSERT INTO busspaceline VALUES ('82', '3', '1', '1', '2', '2', '00000000000', null, null, '2010-11-21 15:53:20', null, null, '0');
INSERT INTO busspaceline VALUES ('83', '3', '8', '2', '18', '21', '00000000000', null, null, '2010-12-07 12:30:53', null, null, '0');
INSERT INTO busspaceline VALUES ('84', '1', '5', '1', '1', '2', '00000000000', null, null, '2011-03-25 16:24:00', null, null, '0');
INSERT INTO busspaceline VALUES ('85', '3', '1', '1', '1', '2', '00000000000', null, null, '2011-03-25 16:40:53', null, null, '0');
INSERT INTO busspaceline VALUES ('86', '1', '7', '1', '1', '2', '00000000000', null, null, '2011-03-25 16:54:39', null, null, '0');
INSERT INTO busspaceline VALUES ('87', '1', '9', '1', '1', '3', '00000000000', null, null, '2011-03-25 17:27:55', null, null, '0');
INSERT INTO busspaceline VALUES ('88', '1', '5', '6', '75', '80', '00000000000', null, null, '2011-03-30 10:18:31', null, null, '0');

-- ----------------------------
-- Table structure for `busstationinformation`
-- ----------------------------
DROP TABLE IF EXISTS `busstationinformation`;
CREATE TABLE `busstationinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `axisX` int(11) DEFAULT NULL,
  `axisY` int(11) DEFAULT NULL,
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of busstationinformation
-- ----------------------------
INSERT INTO busstationinformation VALUES ('1', '动物园', '0', '0', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('2', '北京展览馆', '1', '1', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('3', '二里沟东口', '2', '2', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('4', '百万庄东口', '3', '3', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('5', '展览路', '4', '4', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('6', '月坛北街北站', '5', '5', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('7', '国家工商总局', '6', '6', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('8', '三里河东口', '7', '7', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('9', '茂林居', '8', '8', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('10', '玉渊潭南门', '9', '9', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('11', '会城门', '10', '10', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('12', '北蜂窝路', '11', '11', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('13', '北蜂窝路南口', '12', '12', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('14', '北蜂窝站西口', '13', '13', '1', null, null, null, '0');
INSERT INTO busstationinformation VALUES ('15', '菜户营桥西', '1', '2', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('16', '菜户营桥', '1', '3', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('17', '菜户营桥北', '1', '4', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('18', '白纸坊桥北', '1', '5', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('19', '椿树馆街', '1', '6', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('20', '广安门南', '1', '7', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('21', '广安门内', '1', '8', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('22', '牛街路口西', '1', '9', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('23', '菜市口西', '1', '10', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('24', '果子巷', '1', '11', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('25', '虎坊桥路口西', '1', '12', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('26', '板章路', '1', '13', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('27', '美食街南口', '1', '14', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('28', '前门', '1', '15', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('29', '南长街', '1', '16', '2', null, null, null, '0');
INSERT INTO busstationinformation VALUES ('30', '永定门内', '2', '3', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('31', '沙子口', '2', '4', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('32', '木樨园桥北', '2', '5', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('33', '海户屯', '2', '6', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('34', '德胜门', '2', '7', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('35', '德胜门南站', '2', '8', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('36', '果子市', '2', '9', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('37', '德内甘水桥', '2', '10', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('38', '铸钟厂', '2', '11', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('39', '鼓楼大街', '2', '12', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('40', '地安门内', '2', '13', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('41', '景山后街', '2', '14', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('42', '西板桥', '2', '15', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('43', '北海', '2', '16', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('44', '西华门', '2', '17', '3', null, null, null, '0');
INSERT INTO busstationinformation VALUES ('45', '天桥', '3', '1', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('46', '大栅栏', '3', '2', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('47', '东华门', '3', '4', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('48', '北京妇产医院', '4', '5', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('49', '沙滩路口南', '4', '6', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('50', '宽街路口南', '4', '7', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('51', '靛厂新村', '4', '8', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('52', '靛厂村', '4', '9', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('53', '莲宝路口东', '4', '10', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('54', '马官营西', '4', '11', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('55', '六里桥北里', '4', '12', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('56', '公主坟南', '4', '13', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('57', '公主坟东', '4', '14', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('58', '军事博物馆', '4', '15', '', null, null, null, '0');
INSERT INTO busstationinformation VALUES ('59', '木樨地西', '4', '16', '4', null, null, null, '0');
INSERT INTO busstationinformation VALUES ('60', '四惠站', '5', '1', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('61', '八王坟西', '5', '2', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('62', '郎家园', '5', '3', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('63', '大北窑东', '5', '4', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('64', '大北窑西', '5', '6', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('65', '永安里路口西', '5', '7', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('66', '日坛路', '5', '8', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('67', '北京站口东', '5', '9', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('68', '东单路口西', '5', '10', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('69', '天安门东', '5', '11', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('70', '天安门西', '5', '12', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('71', '西单路口东', '5', '13', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('72', '复兴门内', '5', '14', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('73', '南礼士路', '5', '15', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('74', '工会大楼', '5', '16', '5', null, null, null, '0');
INSERT INTO busstationinformation VALUES ('75', '锣鼓巷', '6', '1', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('76', '平安里路口东', '6', '2', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('77', '平安医院', '6', '3', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('78', '官园', '6', '4', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('79', '车公庄东', '6', '5', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('80', '三塔寺', '6', '7', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('81', '郝家湾', '6', '8', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('82', '四道口东', '6', '9', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('83', '白石桥南', '6', '10', null, null, null, null, '0');
INSERT INTO busstationinformation VALUES ('84', '紫竹院南门', '6', '11', '6', null, null, null, '0');

-- ----------------------------
-- Table structure for `busstationinformationline`
-- ----------------------------
DROP TABLE IF EXISTS `busstationinformationline`;
CREATE TABLE `busstationinformationline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stationInformationId` int(11) DEFAULT NULL,
  `lineId` int(255) DEFAULT '0',
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of busstationinformationline
-- ----------------------------
INSERT INTO busstationinformationline VALUES ('1', '1', '1', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('2', '2', '1', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('3', '3', '1', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('4', '4', '1', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('5', '5', '1', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('6', '6', '1', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('7', '7', '1', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('8', '8', '1', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('9', '9', '1', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('10', '10', '1', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('11', '11', '1', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('12', '12', '1', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('13', '13', '1', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('14', '14', '1', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('15', '15', '2', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('16', '16', '2', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('17', '17', '2', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('18', '18', '2', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('19', '19', '2', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('20', '20', '2', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('21', '21', '2', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('22', '22', '2', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('23', '23', '2', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('24', '24', '2', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('25', '25', '2', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('26', '26', '2', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('27', '27', '2', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('28', '28', '2', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('29', '29', '2', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('30', '30', '3', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('31', '31', '3', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('32', '32', '3', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('33', '33', '3', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('34', '34', '3', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('35', '35', '3', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('36', '36', '3', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('37', '37', '3', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('38', '38', '3', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('39', '39', '3', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('40', '40', '3', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('41', '41', '3', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('42', '42', '3', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('43', '43', '3', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('44', '44', '3', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('45', '45', '4', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('46', '46', '4', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('47', '47', '4', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('48', '48', '4', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('49', '49', '4', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('50', '50', '4', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('51', '51', '4', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('52', '52', '4', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('53', '53', '4', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('54', '54', '4', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('55', '55', '4', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('56', '56', '4', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('57', '57', '4', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('58', '58', '4', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('59', '59', '4', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('60', '60', '5', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('61', '61', '5', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('62', '62', '5', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('63', '63', '5', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('64', '64', '5', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('65', '65', '5', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('66', '66', '5', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('67', '67', '5', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('68', '68', '5', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('69', '69', '5', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('70', '70', '5', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('71', '71', '5', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('72', '72', '5', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('73', '73', '5', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('74', '74', '5', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('75', '75', '6', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('76', '2', '6', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('78', '76', '6', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('79', '77', '6', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('80', '28', '6', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('81', '78', '6', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('82', '79', '6', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('84', '31', '6', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('85', '80', '6', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('86', '81', '6', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('87', '58', '6', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('88', '82', '6', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('89', '83', '6', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('90', '61', '6', null, null, null, null, '0');
INSERT INTO busstationinformationline VALUES ('91', '84', '6', null, null, null, null, '0');

-- ----------------------------
-- Table structure for `busstationtraffic`
-- ----------------------------
DROP TABLE IF EXISTS `busstationtraffic`;
CREATE TABLE `busstationtraffic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lineId` int(11) DEFAULT NULL,
  `stationId` int(11) DEFAULT NULL,
  `trafficDegreeId` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `isSolution` varchar(2) COLLATE utf8_bin DEFAULT '0',
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of busstationtraffic
-- ----------------------------
INSERT INTO busstationtraffic VALUES ('1', '动物园', '1', '1', '1', '2010-11-06 08:39:59', '0', null, null, null, null, '0');
INSERT INTO busstationtraffic VALUES ('2', '北京展览馆', '2', '2', '1', '2010-11-06 12:40:24', '0', null, null, null, null, '0');
INSERT INTO busstationtraffic VALUES ('3', '二里沟东口', '3', '3', '2', '2010-11-06 14:21:05', '0', null, null, null, null, '0');
INSERT INTO busstationtraffic VALUES ('4', '西三环', '4', '4', '3', '2010-11-06 14:21:32', '0', null, null, null, null, '0');

-- ----------------------------
-- Table structure for `bustrafficdegree`
-- ----------------------------
DROP TABLE IF EXISTS `bustrafficdegree`;
CREATE TABLE `bustrafficdegree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of bustrafficdegree
-- ----------------------------
INSERT INTO bustrafficdegree VALUES ('1', '低', null, null, null, null, '0');
INSERT INTO bustrafficdegree VALUES ('2', '中', null, null, null, null, '0');
INSERT INTO bustrafficdegree VALUES ('3', '高', null, null, null, null, '0');

-- ----------------------------
-- Table structure for `busunusualbus`
-- ----------------------------
DROP TABLE IF EXISTS `busunusualbus`;
CREATE TABLE `busunusualbus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lineId` int(11) DEFAULT NULL,
  `crewId` int(11) DEFAULT NULL,
  `degreeType` int(11) DEFAULT NULL,
  `busId` int(11) DEFAULT '0',
  `reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `unusualTime` datetime DEFAULT NULL,
  `local` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `unusualTypeId` int(11) DEFAULT NULL,
  `reasonable` int(11) unsigned zerofill DEFAULT '00000000000',
  `isImpactLine` int(11) unsigned zerofill DEFAULT '00000000000',
  `unusualBusApproachId` int(11) DEFAULT '0',
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=540 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of busunusualbus
-- ----------------------------
INSERT INTO busunusualbus VALUES ('1', '1', '1', '1', '1', '车门坏了', '2010-10-08 11:14:26', '东三环', '7', '00000000000', '00000000000', '0', null, '2010-08-30 11:17:01', null, null, '0');
INSERT INTO busunusualbus VALUES ('2', '1', '2', '1', '2', '车门关不上', '2010-10-08 11:16:34', '中关村', '9', '00000000000', '00000000000', '0', null, '2010-08-30 11:16:57', null, null, '0');
INSERT INTO busunusualbus VALUES ('3', '1', '3', '1', '3', '爆胎', '2010-10-08 13:55:41', '上帝', '8', '00000000000', '00000000000', '0', null, '2010-08-21 13:54:54', null, null, '0');
INSERT INTO busunusualbus VALUES ('4', '1', '4', '1', '4', '爆胎2', '2010-08-21 15:11:06', '紫竹桥', '10', '00000000000', '00000000000', '0', null, '2010-08-22 12:28:00', null, null, '0');
INSERT INTO busunusualbus VALUES ('5', '1', '5', '1', '5', '爆胎3', '2010-10-08 15:11:08', '花园桥', '11', '00000000001', '00000000000', '0', null, '2010-08-22 12:28:02', null, null, '0');
INSERT INTO busunusualbus VALUES ('6', '1', '6', '1', '6', '车站客流量', '2010-08-21 15:11:10', '航天桥', '12', '00000000000', '00000000000', '0', null, '2010-08-22 12:28:04', null, null, '0');
INSERT INTO busunusualbus VALUES ('7', '1', '7', '1', '7', '爆胎5', '2010-10-08 15:11:12', '新兴桥', '6', '00000000001', '00000000000', '0', null, '2010-08-22 12:28:07', null, null, '0');
INSERT INTO busunusualbus VALUES ('8', '1', '8', '1', '8', 'heufd', '2010-10-08 12:26:01', '东三环', '2', '00000000000', '00000000001', '2', null, '2010-08-22 12:28:07', null, null, '0');
INSERT INTO busunusualbus VALUES ('9', '1', '9', '1', '9', 'queue', '2010-08-24 12:26:04', '西二旗', '1', '00000000000', '00000000001', '2', null, '2010-08-22 12:28:07', null, null, '0');
INSERT INTO busunusualbus VALUES ('10', '1', '10', '1', '10', '燃油量异常', '2010-10-08 12:26:06', '狼垡桥', '3', '00000000000', '00000000001', '1', null, '2010-08-22 12:28:07', null, null, '0');
INSERT INTO busunusualbus VALUES ('11', '1', '11', '1', '11', '发动机异常', '2010-10-08 12:26:09', '三元桥', '4', '00000000000', '00000000001', '1', null, '2010-08-22 12:28:07', null, null, '0');
INSERT INTO busunusualbus VALUES ('12', '1', '5', '1', '5', '车温异常', '2010-10-08 12:26:12', '十里河桥', '5', '00000000000', '00000000001', '2', null, '2010-08-22 12:28:07', null, null, '0');
INSERT INTO busunusualbus VALUES ('13', '1', '4', '1', '4', '车载客流量', '2010-08-24 14:03:57', '三元桥', '11', '00000000001', '00000000000', '0', null, '2010-08-10 14:05:46', null, null, '0');
INSERT INTO busunusualbus VALUES ('14', '1', '3', '1', '3', '虚开班次', '2010-08-24 14:08:19', '大黄庄', '9', '00000000000', '00000000000', '0', null, '2010-08-24 14:08:52', null, null, '0');
INSERT INTO busunusualbus VALUES ('15', '1', '2', '1', '2', '私自甩站', '2010-08-24 14:09:42', '朝阳公园', '8', '00000000000', '00000000000', '0', null, '2010-08-24 14:09:01', null, null, '0');
INSERT INTO busunusualbus VALUES ('16', '1', '1', '1', '1', '私自绕行', '2010-08-24 14:11:08', '朝阳公园', '7', '00000000001', '00000000000', '0', null, '2010-08-24 14:11:28', null, null, '0');
INSERT INTO busunusualbus VALUES ('17', '1', '6', '1', '6', '车速异常', '2010-08-24 14:11:54', '东三环', '6', '00000000000', '00000000000', '0', null, '2010-08-24 14:12:21', null, null, '0');
INSERT INTO busunusualbus VALUES ('18', '1', '1', '1', '1', '车站客流量异常', '2010-08-24 14:11:54', '紫竹桥', '13', '00000000000', '00000000000', '0', null, '2010-08-24 14:12:21', null, null, '0');
INSERT INTO busunusualbus VALUES ('19', '2', '2', '1', '1', '车门关不上', '2010-09-28 15:26:14', '朝阳公园', '1', '00000000000', '00000000001', '2', null, '2010-09-28 15:26:43', null, null, '0');
INSERT INTO busunusualbus VALUES ('20', '2', '2', '2', '4', '车门坏了', '2010-09-29 15:28:18', '航天桥', '1', '00000000000', '00000000001', '2', null, '2010-09-29 15:28:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('21', '1', '2', '3', '5', '车门异常', '2010-09-30 15:29:31', '紫竹桥', '1', '00000000000', '00000000001', '1', null, '2010-09-30 15:29:51', null, null, '0');
INSERT INTO busunusualbus VALUES ('22', '3', '2', '2', '6', '车胎坏了', '2010-09-28 15:31:14', '中关村', '2', '00000000000', '00000000001', '2', null, '2010-09-28 15:31:32', null, null, '0');
INSERT INTO busunusualbus VALUES ('23', '4', '9', '1', '9', '车胎破了', '2010-10-08 15:32:17', '航天桥', '1', '00000000000', '00000000001', '1', null, '2010-09-29 15:32:31', null, null, '0');
INSERT INTO busunusualbus VALUES ('24', '2', '2', '1', '4', '车胎坏了', '2010-09-30 15:33:12', '新兴桥', '2', '00000000000', '00000000001', '3', null, '2010-09-30 15:33:28', null, null, '0');
INSERT INTO busunusualbus VALUES ('25', '1', '2', '1', '4', '燃油量异常', '2010-09-28 15:34:54', '三元桥', '3', '00000000000', '00000000000', '0', null, '2010-09-28 15:35:12', null, null, '0');
INSERT INTO busunusualbus VALUES ('26', '1', '2', '1', '3', '燃油过多', '2010-09-29 15:35:58', '紫竹桥', '3', '00000000000', '00000000000', '0', null, '2010-09-29 15:36:19', null, null, '0');
INSERT INTO busunusualbus VALUES ('27', '2', '2', '1', '4', '燃油过多', '2010-09-30 15:37:03', '中关村', '3', '00000000000', '00000000001', '1', null, '2010-09-30 15:37:15', null, null, '0');
INSERT INTO busunusualbus VALUES ('28', '1', '2', '1', '4', '发动机异常', '2010-09-28 15:38:40', '白纸坊桥北', '4', '00000000000', '00000000001', '2', null, '2010-09-28 15:39:51', null, null, '0');
INSERT INTO busunusualbus VALUES ('29', '1', '2', '1', '8', '发动机坏了', '2010-09-29 15:40:53', '沙滩路口南', '4', '00000000000', '00000000001', '1', null, '2010-09-29 15:41:19', null, null, '0');
INSERT INTO busunusualbus VALUES ('30', '1', '2', '1', '3', '发动机异常', '2010-09-30 15:41:49', '东华门', '4', '00000000000', '00000000001', '2', null, '2010-09-30 15:42:07', null, null, '0');
INSERT INTO busunusualbus VALUES ('31', '2', '2', '2', '2', '车温异常', '2010-09-28 15:42:46', '永定门内', '5', '00000000000', '00000000001', '2', null, '2010-09-28 15:43:08', null, null, '0');
INSERT INTO busunusualbus VALUES ('32', '2', '2', '2', '2', '车温异常', '2010-09-29 15:43:33', '美食街南口', '5', '00000000000', '00000000001', '2', null, '2010-09-29 15:44:01', null, null, '0');
INSERT INTO busunusualbus VALUES ('33', '2', '2', '2', '2', '车温异常', '2010-09-30 15:45:11', '前门', '5', '00000000000', '00000000001', '1', null, '2010-09-30 15:45:31', null, null, '0');
INSERT INTO busunusualbus VALUES ('34', '2', '2', '2', '2', '车速异常', '2010-09-30 15:47:41', '美食街南口', '6', '00000000000', '00000000000', '0', null, '2010-09-30 15:48:15', null, null, '0');
INSERT INTO busunusualbus VALUES ('35', '2', '2', '2', '2', '车速异常', '2010-09-29 15:47:38', '美食街南口', '6', '00000000001', '00000000000', '0', null, '2010-09-29 15:48:13', null, null, '0');
INSERT INTO busunusualbus VALUES ('36', '2', '2', '2', '2', '车速异常', '2010-09-28 15:47:35', '木樨园桥北', '6', '00000000001', '00000000000', '0', null, '2010-09-28 15:48:10', null, null, '0');
INSERT INTO busunusualbus VALUES ('37', '2', '2', '2', '2', '私自绕行', '2010-09-28 15:49:21', '新兴桥', '7', '00000000001', '00000000000', '0', null, '2010-09-28 15:49:55', null, null, '0');
INSERT INTO busunusualbus VALUES ('38', '2', '2', '2', '2', '私自绕行', '2010-09-29 15:49:24', '椿树馆街', '7', '00000000000', '00000000000', '0', null, '2010-09-29 15:49:57', null, null, '0');
INSERT INTO busunusualbus VALUES ('39', '2', '2', '2', '2', '私自绕行', '2010-09-30 15:49:28', '椿树馆街', '7', '00000000001', '00000000000', '0', null, '2010-09-30 15:50:01', null, null, '0');
INSERT INTO busunusualbus VALUES ('40', '1', '2', '3', '5', '私自甩站', '2010-09-28 15:51:47', '椿树馆街', '8', '00000000000', '00000000000', '0', null, '2010-09-28 15:52:17', null, null, '0');
INSERT INTO busunusualbus VALUES ('41', '1', '2', '3', '5', '私自甩站', '2010-09-29 15:51:51', '永定门内', '8', '00000000000', '00000000000', '0', null, '2010-09-29 15:52:21', null, null, '0');
INSERT INTO busunusualbus VALUES ('42', '1', '2', '3', '5', '私自甩站', '2010-09-30 15:51:54', '永定门内', '8', '00000000000', '00000000000', '0', null, '2010-09-30 15:52:24', null, null, '0');
INSERT INTO busunusualbus VALUES ('43', '1', '2', '1', '4', '虚开班次', '2010-09-28 15:53:29', '海户屯', '9', '00000000000', '00000000000', '0', null, '2010-09-28 15:53:59', null, null, '0');
INSERT INTO busunusualbus VALUES ('44', '1', '2', '1', '4', '虚开班次', '2010-09-29 15:53:26', '紫竹桥', '9', '00000000000', '00000000000', '0', null, '2010-09-29 15:54:02', null, null, '0');
INSERT INTO busunusualbus VALUES ('45', '1', '2', '1', '4', '虚开班次', '2010-09-30 15:53:19', '海户屯', '9', '00000000000', '00000000000', '0', null, '2010-09-30 15:54:05', null, null, '0');
INSERT INTO busunusualbus VALUES ('46', '1', '2', '3', '6', '首末车发车异常', '2010-09-28 16:02:49', '德胜门', '10', '00000000000', '00000000000', '0', null, '2010-09-28 16:03:27', null, null, '0');
INSERT INTO busunusualbus VALUES ('47', '1', '2', '3', '6', '首末车发车异常', '2010-09-29 16:02:52', '紫竹桥', '10', '00000000000', '00000000000', '0', null, '2010-09-29 16:03:32', null, null, '0');
INSERT INTO busunusualbus VALUES ('48', '1', '2', '3', '6', '首末车发车异常', '2010-09-30 16:02:56', '德胜门', '10', '00000000000', '00000000000', '0', null, '2010-09-30 16:03:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('49', '2', '2', '2', '3', '车载客流量异常', '2010-09-28 16:05:34', '海户屯', '11', '00000000000', '00000000000', '0', null, '2010-09-28 16:05:58', null, null, '0');
INSERT INTO busunusualbus VALUES ('50', '2', '2', '2', '3', '车载客流量异常', '2010-09-29 16:05:38', '海户屯', '11', '00000000000', '00000000000', '0', null, '2010-09-29 16:06:02', null, null, '0');
INSERT INTO busunusualbus VALUES ('51', '2', '2', '2', '3', '车载客流量异常', '2010-09-30 16:05:41', '海户屯', '11', '00000000000', '00000000000', '0', null, '2010-09-30 16:06:05', null, null, '0');
INSERT INTO busunusualbus VALUES ('52', '1', '2', '1', '1', '校区附近车辆异常', '2010-09-28 16:08:21', '前门', '12', '00000000000', '00000000000', '0', null, '2010-09-28 16:08:56', null, null, '0');
INSERT INTO busunusualbus VALUES ('53', '1', '2', '1', '1', '校区附近车辆异常', '2010-09-29 16:08:24', '沙滩路口南', '12', '00000000001', '00000000000', '0', null, '2010-09-29 16:08:58', null, null, '0');
INSERT INTO busunusualbus VALUES ('54', '1', '2', '1', '1', '校区附近车辆异常', '2010-09-30 16:08:27', '航天桥', '12', '00000000000', '00000000000', '0', null, '2010-09-30 16:09:02', null, null, '0');
INSERT INTO busunusualbus VALUES ('55', '3', '2', '1', '2', '车站客流量异常', '2010-09-28 16:09:54', '前门', '12', '00000000000', '00000000000', '0', null, '2010-09-28 16:10:22', null, null, '0');
INSERT INTO busunusualbus VALUES ('56', '3', '2', '1', '2', '车站客流量异常', '2010-09-29 16:09:57', '紫竹桥', '12', '00000000000', '00000000000', '0', null, '2010-09-29 16:10:26', null, null, '0');
INSERT INTO busunusualbus VALUES ('57', '3', '2', '1', '2', '车站客流量异常', '2010-09-30 16:09:59', '紫竹桥', '12', '00000000000', '00000000000', '0', null, '2010-09-30 16:10:29', null, null, '0');
INSERT INTO busunusualbus VALUES ('58', '1', '1', '1', '1', '车门坏了', '2010-10-09 13:35:01', '东三环', '7', '00000000000', '00000000000', '0', null, '2010-10-08 13:35:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('59', '1', '1', '1', '1', '车门坏了', '2010-10-10 13:36:02', '西三环', '7', '00000000000', '00000000000', '0', null, '2010-10-08 13:36:19', null, null, '0');
INSERT INTO busunusualbus VALUES ('60', '1', '1', '1', '1', '车门损坏', '2010-10-11 13:37:17', '东三环', '7', '00000000000', '00000000000', '0', null, '2010-10-08 13:37:33', null, null, '0');
INSERT INTO busunusualbus VALUES ('61', '1', '1', '1', '1', '车门损坏', '2010-10-12 13:37:56', '西三环', '7', '00000000000', '00000000000', '0', null, '2010-10-08 13:38:11', null, null, '0');
INSERT INTO busunusualbus VALUES ('62', '1', '2', '1', '2', '车门无法关闭', '2010-10-09 13:39:08', '中关村', '9', '00000000000', '00000000000', '0', null, '2010-10-08 13:39:33', null, null, '0');
INSERT INTO busunusualbus VALUES ('63', '1', '2', '1', '2', '车门关不上', '2010-10-10 13:39:57', '中关村西', '9', '00000000000', '00000000000', '0', null, '2010-10-08 13:40:18', null, null, '0');
INSERT INTO busunusualbus VALUES ('64', '1', '2', '1', '2', '车门无法关闭', '2010-10-11 13:40:48', '中关村东', '9', '00000000000', '00000000000', '0', null, '2010-10-08 13:41:08', null, null, '0');
INSERT INTO busunusualbus VALUES ('65', '1', '2', '1', '2', '车门关不上', '2010-10-12 13:41:30', '中关村', '9', '00000000000', '00000000000', '0', null, '2010-10-08 13:41:51', null, null, '0');
INSERT INTO busunusualbus VALUES ('66', '1', '3', '1', '3', '爆胎', '2010-10-09 13:43:03', '上地东', '8', '00000000000', '00000000000', '0', null, '2010-10-08 13:43:39', null, null, '0');
INSERT INTO busunusualbus VALUES ('67', '1', '3', '1', '3', '爆胎', '2010-10-10 13:43:58', '上地南', '8', '00000000000', '00000000000', '0', null, '2010-10-08 13:44:22', null, null, '0');
INSERT INTO busunusualbus VALUES ('68', '1', '3', '1', '3', '爆胎', '2010-10-11 13:44:40', '上地西1', '8', '00000000000', '00000000000', '0', null, '2010-10-08 13:45:01', null, null, '0');
INSERT INTO busunusualbus VALUES ('69', '1', '3', '1', '3', '爆胎', '2010-10-12 13:45:20', '上地北', '8', '00000000000', '00000000000', '0', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('70', '1', '5', '1', '5', '胎压异常', '2010-10-09 13:47:19', '花园桥东', '11', '00000000000', '00000000000', '0', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('71', '1', '5', '1', '5', '胎压异常', '2010-10-10 13:47:23', '花园桥西', '11', '00000000000', '00000000000', '0', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('72', '1', '5', '1', '5', '胎压异常', '2010-10-11 13:47:28', '花园桥南', '11', '00000000000', '00000000000', '0', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('73', '1', '5', '1', '5', '胎压异常', '2010-10-12 13:47:31', '花园桥北', '11', '00000000000', '00000000000', '0', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('74', '1', '7', '1', '7', '胎压问题', '2010-10-09 13:51:42', '新兴桥', '6', '00000000001', '00000000000', '0', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('75', '1', '7', '1', '7', '胎压问题', '2010-10-10 13:51:47', '新兴桥', '6', '00000000000', '00000000000', '0', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('76', '1', '7', '1', '7', '胎压问题', '2010-10-11 13:51:51', '新兴桥', '6', '00000000000', '00000000000', '0', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('77', '1', '7', '1', '7', '胎压问题', '2010-10-12 13:51:57', '新兴桥', '6', '00000000000', '00000000000', '0', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('78', '1', '8', '1', '8', '胎压', '2010-10-09 13:55:06', '东三环1', '2', '00000000000', '00000000001', '2', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('79', '1', '8', '1', '8', '胎压', '2010-10-10 13:55:10', '东三环', '2', '00000000000', '00000000001', '1', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('80', '1', '8', '1', '8', '胎压', '2010-10-11 13:55:15', '东三环', '2', '00000000000', '00000000001', '3', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('81', '1', '8', '1', '8', '胎压', '2010-10-12 13:55:19', '东三环', '2', '00000000000', '00000000001', '2', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('82', '1', '10', '1', '10', '燃油量异常', '2010-10-09 13:57:45', '狼垡桥', '3', '00000000000', '00000000000', '0', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('83', '1', '10', '1', '10', '燃油量异常', '2010-10-10 13:57:50', '狼垡桥', '3', '00000000000', '00000000001', '2', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('84', '1', '10', '1', '10', '燃油量异常', '2010-10-11 13:57:58', '狼垡桥', '3', '00000000000', '00000000000', '0', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('85', '2', '10', '1', '10', '燃油量异常', '2010-10-12 13:58:03', '狼垡桥', '3', '00000000000', '00000000000', '0', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('86', '1', '2', '1', '11', '发动机异常', '2010-10-09 14:00:37', '三元桥', '4', '00000000000', '00000000000', '0', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('87', '1', '2', '1', '11', '发动机异常', '2010-10-10 14:00:42', '三元桥', '4', '00000000000', '00000000000', '0', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('88', '1', '2', '1', '11', '发动机异常', '2010-10-11 14:00:48', '三元桥', '4', '00000000000', '00000000000', '0', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('89', '1', '2', '1', '11', '发动机异常', '2010-10-12 14:00:52', '三元桥', '4', '00000000000', '00000000000', '0', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('90', '1', '5', '1', '5', '车温异常', '2010-10-09 14:03:24', '十里河桥', '5', '00000000000', '00000000001', '1', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('91', '1', '2', '1', '5', '车温异常', '2010-10-10 14:03:29', '十里河桥', '5', '00000000000', '00000000001', '1', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('92', '1', '2', '1', '5', '车温异常', '2010-10-11 14:03:34', '十里河桥', '5', '00000000000', '00000000000', '0', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('93', '1', '2', '1', '5', '车温异常', '2010-10-12 14:03:38', '十里河桥', '5', '00000000000', '00000000001', '2', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('94', '1', '2', '1', '9', '车胎破了', '2010-10-09 14:05:58', '航天桥', '1', '00000000000', '00000000001', '2', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('95', '2', '2', '1', '9', '车胎破了', '2010-10-10 14:06:02', '航天桥', '1', '00000000000', '00000000001', '2', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('96', '1', '2', '1', '9', '车胎破了', '2010-10-11 14:06:06', '航天桥', '1', '00000000000', '00000000001', '2', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('97', '1', '2', '1', '9', '车胎破了', '2010-10-12 14:06:15', '航天桥', '1', '00000000000', '00000000001', '2', null, '2010-10-08 13:45:35', null, null, '0');
INSERT INTO busunusualbus VALUES ('98', '1', '2', '1', '11', '发动机异常', '2010-10-08 15:16:05', '2222', '4', '00000000000', '00000000000', '0', null, '2010-10-08 15:16:23', null, null, '0');
INSERT INTO busunusualbus VALUES ('99', '1', '2', '1', '1', 'aaa', '2010-10-18 15:48:39', '航天桥', '7', '00000000000', '00000000000', '1', null, '2010-10-08 15:49:12', null, null, '0');
INSERT INTO busunusualbus VALUES ('100', '1', '2', '1', '2', 'bbb', '2010-10-18 15:49:34', '三元桥', '9', '00000000000', '00000000000', '1', null, '2010-10-08 15:50:04', null, null, '0');
INSERT INTO busunusualbus VALUES ('101', '1', '2', '1', '3', 'ccc', '2010-10-18 15:52:34', '花园桥', '8', '00000000000', '00000000000', '1', null, '2010-10-08 15:52:56', null, null, '0');
INSERT INTO busunusualbus VALUES ('102', '1', '4', '1', '4', 'ddd', '2010-10-08 15:53:18', '东三环', '10', '00000000000', '00000000000', '1', null, '2010-10-08 15:53:38', null, null, '0');
INSERT INTO busunusualbus VALUES ('103', '1', '2', '1', '5', 'eee', '2010-10-18 15:54:06', '新兴桥', '11', '00000000000', '00000000000', '1', null, '2010-10-08 15:54:25', null, null, '0');
INSERT INTO busunusualbus VALUES ('104', '1', '2', '1', '6', 'fff', '2010-10-08 15:55:05', '紫竹桥', '12', '00000000000', '00000000000', '1', null, '2010-10-08 15:56:24', null, null, '0');
INSERT INTO busunusualbus VALUES ('105', '1', '2', '1', '7', 'ggg', '2010-10-18 15:56:47', '十里河桥', '6', '00000000000', '00000000000', '1', null, '2010-10-08 15:57:19', null, null, '0');
INSERT INTO busunusualbus VALUES ('106', '1', '2', '1', '8', 'hhh', '2010-10-08 15:57:35', '狼垡桥', '2', '00000000000', '00000000000', '1', null, '2010-10-08 15:58:27', null, null, '0');
INSERT INTO busunusualbus VALUES ('107', '1', '2', '1', '9', 'iii', '2010-10-08 15:58:44', '航天桥', '1', '00000000000', '00000000000', '1', null, '2010-10-08 15:59:16', null, null, '0');
INSERT INTO busunusualbus VALUES ('108', '1', '2', '1', '10', 'jjj', '2010-10-08 15:59:44', '中关村', '3', '00000000000', '00000000000', '1', null, '2010-10-08 16:00:13', null, null, '0');
INSERT INTO busunusualbus VALUES ('109', '1', '2', '1', '11', 'kkk', '2010-10-08 16:00:31', '前门', '4', '00000000000', '00000000000', '1', null, '2010-10-08 16:00:50', null, null, '0');
INSERT INTO busunusualbus VALUES ('110', '1', '2', '1', '1', 'error', '2010-10-22 18:53:12', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('111', '1', '2', '1', '1', 'error', '2010-10-22 18:53:12', '前门', '2', '00000000000', '00000000001', '1', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('112', '1', '2', '1', '1', 'error', '2010-10-22 18:53:12', '前门', '3', '00000000000', '00000000001', '2', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('113', '1', '2', '1', '1', 'error', '2010-10-22 18:53:12', '前门', '4', '00000000000', '00000000001', '2', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('114', '1', '2', '1', '1', 'error', '2010-10-22 18:53:12', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('115', '1', '2', '1', '1', 'error', '2010-10-22 18:53:12', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('116', '1', '2', '1', '1', 'error', '2010-10-22 18:53:12', '前门', '7', '00000000001', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('117', '1', '2', '1', '1', 'error', '2010-10-22 18:53:12', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('118', '1', '2', '1', '1', 'error', '2010-10-22 18:53:12', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('119', '1', '2', '1', '1', 'error', '2010-10-22 18:53:12', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('120', '1', '2', '1', '1', 'error', '2010-10-22 18:53:12', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('121', '1', '2', '1', '1', 'error', '2010-10-22 18:53:12', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('122', '1', '2', '1', '1', 'error', '2010-10-22 18:53:12', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('124', '1', '2', '1', '1', 'error', '2010-10-21 10:02:47', '前门', '1', '00000000000', '00000000001', '2', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('125', '1', '2', '1', '1', 'error', '2010-10-21 10:02:47', '前门', '2', '00000000000', '00000000001', '1', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('126', '1', '2', '1', '1', 'error', '2010-10-21 10:02:47', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('127', '1', '2', '1', '1', 'error', '2010-10-21 10:02:47', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('128', '1', '2', '1', '1', 'error', '2010-10-21 10:02:47', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('129', '1', '2', '1', '1', 'error', '2010-10-21 10:02:47', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('130', '1', '2', '1', '1', 'error', '2010-10-21 10:02:47', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('131', '1', '2', '1', '1', 'error', '2010-10-21 10:02:47', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('132', '1', '2', '1', '1', 'error', '2010-10-21 10:02:47', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('133', '1', '2', '1', '1', 'error', '2010-10-21 10:02:47', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('134', '1', '2', '1', '1', 'error', '2010-10-21 10:02:47', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('135', '1', '2', '1', '1', 'error', '2010-10-21 10:02:47', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('136', '1', '2', '1', '1', 'error', '2010-10-21 10:02:47', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('137', '1', '1', '1', '1', 'error', '2010-10-25 10:14:51', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('138', '1', '2', '1', '1', 'error', '2010-10-25 10:14:51', '前门', '2', '00000000000', '00000000001', '2', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('139', '1', '3', '1', '1', 'error', '2010-10-25 10:14:51', '前门', '3', '00000000000', '00000000001', '3', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('140', '1', '4', '1', '1', 'error', '2010-10-25 10:14:51', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('141', '1', '5', '1', '1', 'error', '2010-10-25 10:14:51', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('142', '1', '6', '1', '1', 'error', '2010-10-25 10:14:51', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('143', '1', '7', '1', '1', 'error', '2010-10-25 10:14:51', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('144', '1', '8', '1', '1', 'error', '2010-10-25 10:14:51', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('145', '1', '9', '1', '1', 'error', '2010-10-25 10:14:51', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('146', '1', '10', '1', '1', 'error', '2010-10-25 10:14:51', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('147', '1', '11', '1', '1', 'error', '2010-10-25 10:14:51', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('148', '1', '12', '1', '1', 'error', '2010-10-25 10:14:51', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('149', '1', '13', '1', '1', 'error', '2010-10-25 10:14:51', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('150', '1', '14', '1', '1', 'error', '2010-10-25 10:14:51', '前门', '14', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('151', '1', '1', '1', '1', 'error', '2010-10-25 14:03:48', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('152', '1', '2', '1', '1', 'error', '2010-10-25 14:03:48', '前门', '2', '00000000000', '00000000001', '2', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('153', '1', '3', '1', '1', 'error', '2010-10-25 14:03:48', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('154', '1', '4', '1', '1', 'error', '2010-10-25 14:03:48', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('155', '1', '5', '1', '1', 'error', '2010-10-25 14:03:48', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('156', '1', '6', '1', '1', 'error', '2010-10-25 14:03:48', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('157', '1', '7', '1', '1', 'error', '2010-10-25 14:03:48', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('158', '1', '8', '1', '1', 'error', '2010-10-25 14:03:48', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('159', '1', '9', '1', '1', 'error', '2010-10-25 14:03:48', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('160', '1', '10', '1', '1', 'error', '2010-10-25 14:03:48', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('161', '1', '11', '1', '1', 'error', '2010-10-25 14:03:48', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('162', '1', '12', '1', '1', 'error', '2010-10-25 14:03:48', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('163', '1', '13', '1', '1', 'error', '2010-10-25 14:03:48', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('164', '1', '14', '1', '1', 'error', '2010-10-25 14:03:48', '前门', '14', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('165', '1', '1', '1', '1', 'error', '2010-10-25 15:01:20', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('166', '1', '2', '1', '1', 'error', '2010-10-25 15:01:20', '前门', '2', '00000000000', '00000000001', '2', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('167', '1', '3', '1', '1', 'error', '2010-10-25 15:01:20', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('168', '1', '4', '1', '1', 'error', '2010-10-25 15:01:20', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('169', '1', '5', '1', '1', 'error', '2010-10-25 15:01:20', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('170', '1', '6', '1', '1', 'error', '2010-10-25 15:01:20', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('171', '1', '7', '1', '1', 'error', '2010-10-25 15:01:20', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('172', '1', '8', '1', '1', 'error', '2010-10-25 15:01:20', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('173', '1', '9', '1', '1', 'error', '2010-10-25 15:01:20', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('174', '1', '10', '1', '1', 'error', '2010-10-25 15:01:20', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('175', '1', '11', '1', '1', 'error', '2010-10-25 15:01:20', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('176', '1', '12', '1', '1', 'error', '2010-10-25 15:01:20', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('177', '1', '13', '1', '1', 'error', '2010-10-25 15:01:20', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('178', '1', '14', '1', '1', 'error', '2010-10-25 15:01:20', '前门', '14', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('179', '1', '1', '1', '1', 'error', '2010-10-25 17:09:58', '前门', '1', '00000000000', '00000000001', '2', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('180', '1', '2', '1', '1', 'error', '2010-10-25 17:09:58', '前门', '2', '00000000000', '00000000001', '1', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('181', '1', '3', '1', '1', 'error', '2010-10-25 17:09:58', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('182', '1', '4', '1', '1', 'error', '2010-10-25 17:09:58', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('183', '1', '5', '1', '1', 'error', '2010-10-25 17:09:58', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('184', '1', '6', '1', '1', 'error', '2010-10-25 17:09:58', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('185', '1', '7', '1', '1', 'error', '2010-10-25 17:09:58', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('186', '1', '8', '1', '1', 'error', '2010-10-25 17:09:58', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('187', '1', '9', '1', '1', 'error', '2010-10-25 17:09:58', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('188', '1', '10', '1', '1', 'error', '2010-10-25 17:09:58', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('189', '1', '11', '1', '1', 'error', '2010-10-25 17:09:58', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('190', '1', '12', '1', '1', 'error', '2010-10-25 17:09:58', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('191', '1', '13', '1', '1', 'error', '2010-10-25 17:09:58', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('192', '1', '14', '1', '1', 'error', '2010-10-25 17:09:58', '前门', '14', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('193', '1', '1', '1', '1', 'error', '2010-10-25 18:08:37', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('194', '1', '2', '1', '1', 'error', '2010-10-25 18:08:37', '前门', '2', '00000000000', '00000000001', '2', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('195', '1', '3', '1', '1', 'error', '2010-10-25 18:08:37', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('196', '1', '4', '1', '1', 'error', '2010-10-25 18:08:37', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('197', '1', '5', '1', '1', 'error', '2010-10-25 18:08:37', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('198', '1', '6', '1', '1', 'error', '2010-10-25 18:08:37', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('199', '1', '7', '1', '1', 'error', '2010-10-25 18:08:37', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('200', '1', '8', '1', '1', 'error', '2010-10-25 18:08:37', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('201', '1', '9', '1', '1', 'error', '2010-10-25 18:08:37', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('202', '1', '10', '1', '1', 'error', '2010-10-25 18:08:37', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('203', '1', '11', '1', '1', 'error', '2010-10-25 18:08:37', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('204', '1', '12', '1', '1', 'error', '2010-10-25 18:08:37', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('205', '1', '13', '1', '1', 'error', '2010-10-25 18:08:37', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('206', '1', '14', '1', '1', 'error', '2010-10-25 18:08:37', '前门', '14', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('207', '1', '1', '1', '1', 'error', '2010-10-25 18:17:49', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('208', '1', '2', '1', '1', 'error', '2010-10-25 18:17:49', '前门', '2', '00000000000', '00000000001', '2', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('209', '1', '3', '1', '1', 'error', '2010-10-25 18:17:49', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('210', '1', '4', '1', '1', 'error', '2010-10-25 18:17:49', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('211', '1', '5', '1', '1', 'error', '2010-10-25 18:17:49', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('212', '1', '6', '1', '1', 'error', '2010-10-25 18:17:49', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('213', '1', '7', '1', '1', 'error', '2010-10-25 18:17:49', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('214', '1', '8', '1', '1', 'error', '2010-10-25 18:17:49', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('215', '1', '9', '1', '1', 'error', '2010-10-25 18:17:49', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('216', '1', '10', '1', '1', 'error', '2010-10-25 18:17:49', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('217', '1', '11', '1', '1', 'error', '2010-10-25 18:17:49', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('218', '1', '12', '1', '1', 'error', '2010-10-25 18:17:49', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('219', '1', '13', '1', '1', 'error', '2010-10-25 18:17:49', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('220', '1', '14', '1', '1', 'error', '2010-10-25 18:17:49', '前门', '14', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('221', '1', '1', '1', '1', 'error', '2010-10-26 10:43:35', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('222', '1', '2', '1', '1', 'error', '2010-10-26 10:43:35', '前门', '2', '00000000000', '00000000000', '3', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('223', '1', '3', '1', '1', 'error', '2010-10-26 10:43:35', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('224', '1', '4', '1', '1', 'error', '2010-10-26 10:43:35', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('225', '1', '5', '1', '1', 'error', '2010-10-26 10:43:35', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('226', '1', '6', '1', '1', 'error', '2010-10-26 10:43:35', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('227', '1', '7', '1', '1', 'error', '2010-10-26 10:43:35', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('228', '1', '8', '1', '1', 'error', '2010-10-26 10:43:35', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('229', '1', '9', '1', '1', 'error', '2010-10-26 10:43:35', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('230', '1', '10', '1', '1', 'error', '2010-10-26 10:43:35', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('231', '1', '11', '1', '1', 'error', '2010-10-26 10:43:35', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('232', '1', '12', '1', '1', 'error', '2010-10-26 10:43:35', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('233', '1', '13', '1', '1', 'error', '2010-10-26 10:43:35', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('234', '1', '14', '1', '1', 'error', '2010-10-26 10:43:35', '前门', '14', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('235', '1', '1', '1', '1', 'error', '2010-10-26 15:11:21', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('236', '1', '2', '1', '1', 'error', '2010-10-26 15:11:21', '前门', '2', '00000000000', '00000000000', '1', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('237', '1', '3', '1', '1', 'error', '2010-10-26 15:11:21', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('238', '1', '4', '1', '1', 'error', '2010-10-26 15:11:21', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('239', '1', '5', '1', '1', 'error', '2010-10-26 15:11:21', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('240', '1', '6', '1', '1', 'error', '2010-10-26 15:11:21', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('241', '1', '7', '1', '1', 'error', '2010-10-26 15:11:21', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('242', '1', '8', '1', '1', 'error', '2010-10-26 15:11:21', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('243', '1', '9', '1', '1', 'error', '2010-10-26 15:11:21', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('244', '1', '10', '1', '1', 'error', '2010-10-26 15:11:21', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('245', '1', '11', '1', '1', 'error', '2010-10-26 15:11:21', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('246', '1', '12', '1', '1', 'error', '2010-10-26 15:11:21', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('247', '1', '13', '1', '1', 'error', '2010-10-26 15:11:21', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('248', '1', '14', '1', '1', 'error', '2010-10-26 15:11:21', '前门', '14', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('249', '1', '1', '1', '1', 'error', '2010-10-26 18:14:40', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('250', '1', '2', '1', '1', 'error', '2010-10-26 18:14:40', '前门', '2', '00000000000', '00000000001', '1', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('251', '1', '3', '1', '1', 'error', '2010-10-26 18:14:40', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('252', '1', '4', '1', '1', 'error', '2010-10-26 18:14:40', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('253', '1', '5', '1', '1', 'error', '2010-10-26 18:14:40', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('254', '1', '6', '1', '1', 'error', '2010-10-26 18:14:40', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('255', '1', '7', '1', '1', 'error', '2010-10-26 18:14:40', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('256', '1', '8', '1', '1', 'error', '2010-10-26 18:14:40', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('257', '1', '9', '1', '1', 'error', '2010-10-26 18:14:40', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('258', '1', '10', '1', '1', 'error', '2010-10-26 18:14:40', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('259', '1', '11', '1', '1', 'error', '2010-10-26 18:14:40', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('260', '1', '12', '1', '1', 'error', '2010-10-26 18:14:40', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('261', '1', '13', '1', '1', 'error', '2010-10-26 18:14:40', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('262', '1', '14', '1', '1', 'error', '2010-10-26 18:14:40', '前门', '14', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('263', '1', '2', '1', '1', 'error', '2010-10-27 14:55:49', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('264', '1', '2', '1', '1', 'error', '2010-10-27 14:55:49', '前门', '2', '00000000000', '00000000001', '2', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('265', '1', '2', '1', '1', 'error', '2010-10-27 14:55:49', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('266', '1', '2', '1', '1', 'error', '2010-10-27 14:55:49', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('267', '1', '2', '1', '1', 'error', '2010-10-27 14:55:49', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('268', '1', '2', '1', '1', 'error', '2010-10-27 14:55:49', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('269', '1', '2', '1', '1', 'error', '2010-10-27 14:55:49', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('270', '1', '2', '1', '1', 'error', '2010-10-27 14:55:49', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('271', '1', '2', '1', '1', 'error', '2010-10-27 14:55:49', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('272', '1', '2', '1', '1', 'error', '2010-10-27 14:55:49', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('273', '1', '2', '1', '1', 'error', '2010-10-27 14:55:49', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('274', '1', '2', '1', '1', 'error', '2010-10-27 14:55:49', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('275', '1', '2', '1', '1', 'error', '2010-10-27 14:55:49', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('276', '1', '2', '1', '1', 'error', '2010-11-02 16:52:54', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('277', '1', '2', '1', '1', 'error', '2010-11-02 16:52:54', '前门', '2', '00000000000', '00000000001', '3', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('278', '1', '2', '1', '1', 'error', '2010-11-02 16:52:54', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('279', '1', '2', '1', '1', 'error', '2010-11-02 16:52:54', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('280', '1', '2', '1', '1', 'error', '2010-11-02 16:52:54', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('281', '1', '2', '1', '1', 'error', '2010-11-02 16:52:54', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('282', '1', '2', '1', '1', 'error', '2010-11-02 16:52:54', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('283', '1', '2', '1', '1', 'error', '2010-11-02 16:52:54', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('284', '1', '2', '1', '1', 'error', '2010-11-02 16:52:54', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('285', '1', '2', '1', '1', 'error', '2010-11-02 16:52:54', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('286', '1', '2', '1', '1', 'error', '2010-11-02 16:52:54', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('287', '1', '2', '1', '1', 'error', '2010-11-02 16:52:54', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('288', '1', '2', '1', '1', 'error', '2010-11-02 16:52:54', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('289', '1', '2', '1', '1', 'error', '2010-11-03 11:51:28', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('290', '1', '2', '1', '1', 'error', '2010-11-03 11:51:28', '前门', '2', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('291', '1', '2', '1', '1', 'error', '2010-11-03 11:51:28', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('292', '1', '2', '1', '1', 'error', '2010-11-03 11:51:28', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('293', '1', '2', '1', '1', 'error', '2010-11-03 11:51:28', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('294', '1', '2', '1', '1', 'error', '2010-11-03 11:51:28', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('295', '1', '2', '1', '1', 'error', '2010-11-03 11:51:28', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('296', '1', '2', '1', '1', 'error', '2010-11-03 11:51:28', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('297', '1', '2', '1', '1', 'error', '2010-11-03 11:51:28', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('298', '1', '2', '1', '1', 'error', '2010-11-03 11:51:28', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('299', '1', '2', '1', '1', 'error', '2010-11-03 11:51:28', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('300', '1', '2', '1', '1', 'error', '2010-11-03 11:51:28', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('301', '1', '2', '1', '1', 'error', '2010-11-03 11:51:28', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('302', '1', '2', '1', '1', 'error', '2010-11-05 14:18:34', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('303', '1', '2', '1', '1', 'error', '2010-11-05 14:18:34', '前门', '2', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('304', '1', '2', '1', '1', 'error', '2010-11-05 14:18:34', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('305', '1', '2', '1', '1', 'error', '2010-11-05 14:18:34', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('306', '1', '2', '1', '1', 'error', '2010-11-05 14:18:34', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('307', '1', '2', '1', '1', 'error', '2010-11-05 14:18:34', '前门', '6', '00000000001', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('308', '1', '2', '1', '1', 'error', '2010-11-05 14:18:34', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('309', '1', '2', '1', '1', 'error', '2010-11-05 14:18:34', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('310', '1', '2', '1', '1', 'error', '2010-11-05 14:18:34', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('311', '1', '2', '1', '1', 'error', '2010-11-05 14:18:34', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('312', '1', '2', '1', '1', 'error', '2010-11-05 14:18:34', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('313', '1', '2', '1', '1', 'error', '2010-11-05 14:18:34', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('314', '1', '2', '1', '1', 'error', '2010-11-05 14:18:34', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('315', '1', '2', '1', '1', 'error', '2010-11-06 10:42:41', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('316', '1', '2', '1', '1', 'error', '2010-11-06 10:42:41', '前门', '2', '00000000000', '00000000001', '2', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('317', '1', '2', '1', '1', 'error', '2010-11-06 10:42:41', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('318', '1', '2', '1', '1', 'error', '2010-11-06 10:42:41', '前门', '4', '00000000000', '00000000000', '1', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('319', '1', '2', '1', '1', 'error', '2010-11-06 10:42:41', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('320', '1', '2', '1', '1', 'error', '2010-11-06 10:42:41', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('321', '1', '2', '1', '1', 'error', '2010-11-06 10:42:41', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('322', '1', '2', '1', '1', 'error', '2010-11-06 10:42:41', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('323', '1', '2', '1', '1', 'error', '2010-11-06 10:42:41', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('324', '1', '2', '1', '1', 'error', '2010-11-06 10:42:41', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('325', '1', '2', '1', '1', 'error', '2010-11-06 10:42:41', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('326', '1', '2', '1', '1', 'error', '2010-11-06 10:42:41', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('327', '1', '2', '1', '1', 'error', '2010-11-06 10:42:41', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('328', '1', '2', '1', '1', 'error', '2010-11-07 10:34:12', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('329', '1', '2', '1', '1', 'error', '2010-11-07 10:34:12', '前门', '2', '00000000000', '00000000001', '1', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('330', '1', '2', '1', '1', 'error', '2010-11-07 10:34:12', '前门', '3', '00000000000', '00000000001', '2', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('331', '1', '2', '1', '1', 'error', '2010-11-07 10:34:12', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('332', '1', '2', '1', '1', 'error', '2010-11-07 10:34:12', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('333', '1', '2', '1', '1', 'error', '2010-11-07 10:34:12', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('334', '1', '2', '1', '1', 'error', '2010-11-07 10:34:12', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('335', '1', '2', '1', '1', 'error', '2010-11-07 10:34:12', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('336', '1', '2', '1', '1', 'error', '2010-11-07 10:34:12', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('337', '1', '2', '1', '1', 'error', '2010-11-07 10:34:12', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('338', '1', '2', '1', '1', 'error', '2010-11-07 10:34:12', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('339', '1', '2', '1', '1', 'error', '2010-11-07 10:34:12', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('340', '1', '2', '1', '1', 'error', '2010-11-07 10:34:12', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('341', '1', null, '1', '2', null, '2010-11-07 19:23:22', '士大夫', '13', '00000000000', '00000000000', '0', '当前用户', null, null, null, '0');
INSERT INTO busunusualbus VALUES ('342', '1', '2', '1', '1', 'error', '2010-11-08 10:33:38', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('343', '1', '2', '1', '1', 'error', '2010-11-08 10:33:38', '前门', '2', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('344', '1', '2', '1', '1', 'error', '2010-11-08 10:33:38', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('345', '1', '2', '1', '1', 'error', '2010-11-08 10:33:38', '前门', '4', '00000000000', '00000000001', '1', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('346', '1', '2', '1', '1', 'error', '2010-11-08 10:33:38', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('347', '1', '2', '1', '1', 'error', '2010-11-08 10:33:38', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('348', '1', '2', '1', '1', 'error', '2010-11-08 10:33:38', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('349', '1', '2', '1', '1', 'error', '2010-11-08 10:33:38', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('350', '1', '2', '1', '1', 'error', '2010-11-08 10:33:38', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('351', '1', '2', '1', '1', 'error', '2010-11-08 10:33:38', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('352', '1', '2', '1', '1', 'error', '2010-11-08 10:33:38', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('353', '1', '2', '1', '1', 'error', '2010-11-08 10:33:38', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('354', '1', '2', '1', '1', 'error', '2010-11-08 10:33:38', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('355', '1', '2', '1', '1', 'error', '2010-11-09 18:18:02', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('356', '1', '2', '1', '1', 'error', '2010-11-09 18:18:02', '前门', '2', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('357', '1', '2', '1', '1', 'error', '2010-11-09 18:18:02', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('358', '1', '2', '1', '1', 'error', '2010-11-09 18:18:02', '前门', '4', '00000000000', '00000000001', '3', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('359', '1', '2', '1', '1', 'error', '2010-11-09 18:18:02', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('360', '1', '2', '1', '1', 'error', '2010-11-09 18:18:02', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('361', '1', '2', '1', '1', 'error', '2010-11-09 18:18:02', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('362', '1', '2', '1', '1', 'error', '2010-11-09 18:18:02', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('363', '1', '2', '1', '1', 'error', '2010-11-09 18:18:02', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('364', '1', '2', '1', '1', 'error', '2010-11-09 18:18:02', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('365', '1', '2', '1', '1', 'error', '2010-11-09 18:18:02', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('366', '1', '2', '1', '1', 'error', '2010-11-09 18:18:02', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('367', '1', '2', '1', '1', 'error', '2010-11-09 18:18:02', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('368', '1', '2', '1', '1', 'error', '2010-11-10 11:35:55', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('369', '1', '2', '1', '1', 'error', '2010-11-10 11:35:55', '前门', '2', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('370', '1', '2', '1', '1', 'error', '2010-11-10 11:35:55', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('371', '1', '2', '1', '1', 'error', '2010-11-10 11:35:55', '前门', '4', '00000000000', '00000000001', '2', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('372', '1', '2', '1', '1', 'error', '2010-11-10 11:35:55', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('373', '1', '2', '1', '1', 'error', '2010-11-10 11:35:55', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('374', '1', '2', '1', '1', 'error', '2010-11-10 11:35:55', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('375', '1', '2', '1', '1', 'error', '2010-11-10 11:35:55', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('376', '1', '2', '1', '1', 'error', '2010-11-10 11:35:55', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('377', '1', '2', '1', '1', 'error', '2010-11-10 11:35:55', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('378', '1', '2', '1', '1', 'error', '2010-11-10 11:35:55', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('379', '1', '2', '1', '1', 'error', '2010-11-10 11:35:55', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('380', '1', '2', '1', '1', 'error', '2010-11-10 11:35:55', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('381', '1', '2', '1', '1', 'error', '2010-11-11 10:42:51', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('382', '1', '2', '1', '1', 'error', '2010-11-11 10:42:51', '前门', '2', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('383', '1', '2', '1', '1', 'error', '2010-11-11 10:42:51', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('384', '1', '2', '1', '1', 'error', '2010-11-11 10:42:51', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('385', '1', '2', '1', '1', 'error', '2010-11-11 10:42:51', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('386', '1', '2', '1', '1', 'error', '2010-11-11 10:42:51', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('387', '1', '2', '1', '1', 'error', '2010-11-11 10:42:51', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('388', '1', '2', '1', '1', 'error', '2010-11-11 10:42:51', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('389', '1', '2', '1', '1', 'error', '2010-11-11 10:42:51', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('390', '1', '2', '1', '1', 'error', '2010-11-11 10:42:51', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('391', '1', '2', '1', '1', 'error', '2010-11-11 10:42:51', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('392', '1', '2', '1', '1', 'error', '2010-11-11 10:42:51', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('393', '1', '2', '1', '1', 'error', '2010-11-11 10:42:51', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('394', '1', '2', '1', '1', 'error', '2010-11-15 10:59:20', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('395', '1', '2', '1', '1', 'error', '2010-11-15 10:59:20', '前门', '2', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('396', '1', '2', '1', '1', 'error', '2010-11-15 10:59:20', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('397', '1', '2', '1', '1', 'error', '2010-11-15 10:59:20', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('398', '1', '2', '1', '1', 'error', '2010-11-15 10:59:20', '前门', '5', '00000000000', '00000000000', '3', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('399', '1', '2', '1', '1', 'error', '2010-11-15 10:59:20', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('400', '1', '2', '1', '1', 'error', '2010-11-15 10:59:20', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('401', '1', '2', '1', '1', 'error', '2010-11-15 10:59:20', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('402', '1', '2', '1', '1', 'error', '2010-11-15 10:59:20', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('403', '1', '2', '1', '1', 'error', '2010-11-15 10:59:20', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('404', '1', '2', '1', '1', 'error', '2010-11-15 10:59:20', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('405', '1', '2', '1', '1', 'error', '2010-11-15 10:59:20', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('406', '1', '2', '1', '1', 'error', '2010-11-15 10:59:20', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('407', '1', '2', '1', '1', 'error', '2010-11-16 10:58:18', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('408', '1', '2', '1', '1', 'error', '2010-11-16 10:58:18', '前门', '2', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('409', '1', '2', '1', '1', 'error', '2010-11-16 10:58:18', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('410', '1', '2', '1', '1', 'error', '2010-11-16 10:58:18', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('411', '1', '2', '1', '1', 'error', '2010-11-16 10:58:18', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('412', '1', '2', '1', '1', 'error', '2010-11-16 10:58:18', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('413', '1', '2', '1', '1', 'error', '2010-11-16 10:58:18', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('414', '1', '2', '1', '1', 'error', '2010-11-16 10:58:18', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('415', '1', '2', '1', '1', 'error', '2010-11-16 10:58:18', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('416', '1', '2', '1', '1', 'error', '2010-11-16 10:58:18', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('417', '1', '2', '1', '1', 'error', '2010-11-16 10:58:18', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('418', '1', '2', '1', '1', 'error', '2010-11-16 10:58:18', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('419', '1', '2', '1', '1', 'error', '2010-11-16 10:58:18', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('420', '1', '2', '1', '1', 'error', '2010-11-17 14:13:03', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('421', '1', '2', '1', '1', 'error', '2010-11-17 14:13:03', '前门', '2', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('422', '1', '2', '1', '1', 'error', '2010-11-17 14:13:03', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('423', '1', '2', '1', '1', 'error', '2010-11-17 14:13:03', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('424', '1', '2', '1', '1', 'error', '2010-11-17 14:13:03', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('425', '1', '2', '1', '1', 'error', '2010-11-17 14:13:03', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('426', '1', '2', '1', '1', 'error', '2010-11-17 14:13:03', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('427', '1', '2', '1', '1', 'error', '2010-11-17 14:13:03', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('428', '1', '2', '1', '1', 'error', '2010-11-17 14:13:03', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('429', '1', '2', '1', '1', 'error', '2010-11-17 14:13:03', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('430', '1', '2', '1', '1', 'error', '2010-11-17 14:13:03', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('431', '1', '2', '1', '1', 'error', '2010-11-17 14:13:03', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('432', '1', '2', '1', '1', 'error', '2010-11-17 14:13:03', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('433', '1', '2', '1', '1', 'error', '2010-11-20 12:06:45', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('434', '1', '2', '1', '1', 'error', '2010-11-20 12:06:45', '前门', '2', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('435', '1', '2', '1', '1', 'error', '2010-11-20 12:06:45', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('436', '1', '2', '1', '1', 'error', '2010-11-20 12:06:45', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('437', '1', '2', '1', '1', 'error', '2010-11-20 12:06:45', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('438', '1', '2', '1', '1', 'error', '2010-11-20 12:06:45', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('439', '1', '2', '1', '1', 'error', '2010-11-20 12:06:45', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('440', '1', '2', '1', '1', 'error', '2010-11-20 12:06:45', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('441', '1', '2', '1', '1', 'error', '2010-11-20 12:06:45', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('442', '1', '2', '1', '1', 'error', '2010-11-20 12:06:45', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('443', '1', '2', '1', '1', 'error', '2010-11-20 12:06:45', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('444', '1', '2', '1', '1', 'error', '2010-11-20 12:06:45', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('445', '1', '2', '1', '1', 'error', '2010-11-20 12:06:45', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('446', '1', null, '1', '2', null, '2010-11-20 12:18:43', 'fd', '13', '00000000000', '00000000000', '0', '当前用户', null, null, null, '0');
INSERT INTO busunusualbus VALUES ('447', '1', null, '1', '2', null, '2010-11-20 12:24:20', 'fd', '13', '00000000000', '00000000000', '0', '当前用户', null, null, null, '0');
INSERT INTO busunusualbus VALUES ('448', '1', '2', '1', '1', 'error', '2010-11-21 11:27:08', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('449', '1', '2', '1', '1', 'error', '2010-11-21 11:27:08', '前门', '2', '00000000000', '00000000001', '2', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('450', '1', '2', '1', '1', 'error', '2010-11-21 11:27:08', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('451', '1', '2', '1', '1', 'error', '2010-11-21 11:27:08', '前门', '4', '00000000000', '00000000000', '1', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('452', '1', '2', '1', '1', 'error', '2010-11-21 11:27:08', '前门', '5', '00000000000', '00000000000', '3', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('453', '1', '2', '1', '1', 'error', '2010-11-21 11:27:08', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('454', '1', '2', '1', '1', 'error', '2010-11-21 11:27:08', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('455', '1', '2', '1', '1', 'error', '2010-11-21 11:27:08', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('456', '1', '2', '1', '1', 'error', '2010-11-21 11:27:08', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('457', '1', '2', '1', '1', 'error', '2010-11-21 11:27:08', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('458', '1', '2', '1', '1', 'error', '2010-11-21 11:27:08', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('459', '1', '2', '1', '1', 'error', '2010-11-21 11:27:08', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('460', '1', '2', '1', '1', 'error', '2010-11-21 11:27:08', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('461', '1', null, '1', '2', null, '2010-11-21 14:38:54', '说的', '13', '00000000000', '00000000000', '0', '当前用户', null, null, null, '0');
INSERT INTO busunusualbus VALUES ('462', '1', '2', '1', '1', 'error', '2011-03-29 19:19:49', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('463', '1', '2', '1', '1', 'error', '2011-03-29 19:19:49', '前门', '2', '00000000000', '00000000001', '2', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('464', '1', '2', '1', '1', 'error', '2011-03-29 19:19:49', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('465', '1', '2', '1', '1', 'error', '2011-03-29 19:19:49', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('466', '1', '2', '1', '1', 'error', '2011-03-29 19:19:49', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('467', '1', '2', '1', '1', 'error', '2011-03-29 19:19:49', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('468', '1', '2', '1', '1', 'error', '2011-03-29 19:19:49', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('469', '1', '2', '1', '1', 'error', '2011-03-29 19:19:49', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('470', '1', '2', '1', '1', 'error', '2011-03-29 19:19:49', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('471', '1', '2', '1', '1', 'error', '2011-03-29 19:19:49', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('472', '1', '2', '1', '1', 'error', '2011-03-29 19:19:49', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('473', '1', '2', '1', '1', 'error', '2011-03-29 19:19:49', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('474', '1', '2', '1', '1', 'error', '2011-03-29 19:19:49', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('475', '1', '2', '1', '1', 'error', '2011-03-30 14:02:15', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('476', '1', '2', '1', '1', 'error', '2011-03-30 14:02:15', '前门', '2', '00000000000', '00000000000', '3', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('477', '1', '2', '1', '1', 'error', '2011-03-30 14:02:15', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('478', '1', '2', '1', '1', 'error', '2011-03-30 14:02:15', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('479', '1', '2', '1', '1', 'error', '2011-03-30 14:02:15', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('480', '1', '2', '1', '1', 'error', '2011-03-30 14:02:15', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('481', '1', '2', '1', '1', 'error', '2011-03-30 14:02:15', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('482', '1', '2', '1', '1', 'error', '2011-03-30 14:02:15', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('483', '1', '2', '1', '1', 'error', '2011-03-30 14:02:15', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('484', '1', '2', '1', '1', 'error', '2011-03-30 14:02:15', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('485', '1', '2', '1', '1', 'error', '2011-03-30 14:02:15', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('486', '1', '2', '1', '1', 'error', '2011-03-30 14:02:15', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('487', '1', '2', '1', '1', 'error', '2011-03-30 14:02:15', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('488', '1', '2', '1', '1', 'error', '2011-04-01 18:42:02', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('489', '1', '2', '1', '1', 'error', '2011-04-01 18:42:02', '前门', '2', '00000000000', '00000000001', '1', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('490', '1', '2', '1', '1', 'error', '2011-04-01 18:42:02', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('491', '1', '2', '1', '1', 'error', '2011-04-01 18:42:02', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('492', '1', '2', '1', '1', 'error', '2011-04-01 18:42:02', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('493', '1', '2', '1', '1', 'error', '2011-04-01 18:42:02', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('494', '1', '2', '1', '1', 'error', '2011-04-01 18:42:02', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('495', '1', '2', '1', '1', 'error', '2011-04-01 18:42:02', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('496', '1', '2', '1', '1', 'error', '2011-04-01 18:42:02', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('497', '1', '2', '1', '1', 'error', '2011-04-01 18:42:02', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('498', '1', '2', '1', '1', 'error', '2011-04-01 18:42:02', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('499', '1', '2', '1', '1', 'error', '2011-04-01 18:42:02', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('500', '1', '2', '1', '1', 'error', '2011-04-01 18:42:02', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('501', '1', '2', '1', '1', 'error', '2011-04-02 16:21:10', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('502', '1', '2', '1', '1', 'error', '2011-04-02 16:21:10', '前门', '2', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('503', '1', '2', '1', '1', 'error', '2011-04-02 16:21:10', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('504', '1', '2', '1', '1', 'error', '2011-04-02 16:21:10', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('505', '1', '2', '1', '1', 'error', '2011-04-02 16:21:10', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('506', '1', '2', '1', '1', 'error', '2011-04-02 16:21:10', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('507', '1', '2', '1', '1', 'error', '2011-04-02 16:21:10', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('508', '1', '2', '1', '1', 'error', '2011-04-02 16:21:10', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('509', '1', '2', '1', '1', 'error', '2011-04-02 16:21:10', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('510', '1', '2', '1', '1', 'error', '2011-04-02 16:21:10', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('511', '1', '2', '1', '1', 'error', '2011-04-02 16:21:10', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('512', '1', '2', '1', '1', 'error', '2011-04-02 16:21:10', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('513', '1', '2', '1', '1', 'error', '2011-04-02 16:21:10', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('514', '1', '2', '1', '1', 'error', '2011-04-06 18:13:04', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('515', '1', '2', '1', '1', 'error', '2011-04-06 18:13:04', '前门', '2', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('516', '1', '2', '1', '1', 'error', '2011-04-06 18:13:04', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('517', '1', '2', '1', '1', 'error', '2011-04-06 18:13:04', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('518', '1', '2', '1', '1', 'error', '2011-04-06 18:13:04', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('519', '1', '2', '1', '1', 'error', '2011-04-06 18:13:04', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('520', '1', '2', '1', '1', 'error', '2011-04-06 18:13:04', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('521', '1', '2', '1', '1', 'error', '2011-04-06 18:13:04', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('522', '1', '2', '1', '1', 'error', '2011-04-06 18:13:04', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('523', '1', '2', '1', '1', 'error', '2011-04-06 18:13:04', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('524', '1', '2', '1', '1', 'error', '2011-04-06 18:13:04', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('525', '1', '2', '1', '1', 'error', '2011-04-06 18:13:04', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('526', '1', '2', '1', '1', 'error', '2011-04-06 18:13:04', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('527', '1', '2', '1', '1', 'error', '2011-04-28 14:43:03', '前门', '1', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('528', '1', '2', '1', '1', 'error', '2011-04-28 14:43:03', '前门', '2', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('529', '1', '2', '1', '1', 'error', '2011-04-28 14:43:03', '前门', '3', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('530', '1', '2', '1', '1', 'error', '2011-04-28 14:43:03', '前门', '4', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('531', '1', '2', '1', '1', 'error', '2011-04-28 14:43:03', '前门', '5', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('532', '1', '2', '1', '1', 'error', '2011-04-28 14:43:03', '前门', '6', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('533', '1', '2', '1', '1', 'error', '2011-04-28 14:43:03', '前门', '7', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('534', '1', '2', '1', '1', 'error', '2011-04-28 14:43:03', '前门', '8', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('535', '1', '2', '1', '1', 'error', '2011-04-28 14:43:03', '前门', '9', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('536', '1', '2', '1', '1', 'error', '2011-04-28 14:43:03', '前门', '10', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('537', '1', '2', '1', '1', 'error', '2011-04-28 14:43:03', '前门', '11', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('538', '1', '2', '1', '1', 'error', '2011-04-28 14:43:03', '前门', '12', '00000000000', '00000000000', '0', null, null, null, null, '0');
INSERT INTO busunusualbus VALUES ('539', '1', '2', '1', '1', 'error', '2011-04-28 14:43:03', '前门', '13', '00000000000', '00000000000', '0', null, null, null, null, '0');

-- ----------------------------
-- Table structure for `busunusualbusapproach`
-- ----------------------------
DROP TABLE IF EXISTS `busunusualbusapproach`;
CREATE TABLE `busunusualbusapproach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of busunusualbusapproach
-- ----------------------------
INSERT INTO busunusualbusapproach VALUES ('1', '立即开往维修站', null, null, null, null, '0');
INSERT INTO busunusualbusapproach VALUES ('2', '原地等待', null, null, null, null, '0');
INSERT INTO busunusualbusapproach VALUES ('3', '完成任务后开往维修站', null, null, null, null, '0');

-- ----------------------------
-- Table structure for `busunusualtype`
-- ----------------------------
DROP TABLE IF EXISTS `busunusualtype`;
CREATE TABLE `busunusualtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `isDeleted` varchar(2) COLLATE utf8_bin DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of busunusualtype
-- ----------------------------
INSERT INTO busunusualtype VALUES ('1', '车门异常', null, null, null, null, '0');
INSERT INTO busunusualtype VALUES ('2', '胎压异常', null, null, null, null, '0');
INSERT INTO busunusualtype VALUES ('3', '燃油量异常', null, null, null, null, '0');
INSERT INTO busunusualtype VALUES ('4', '发动机异常', null, null, null, null, '0');
INSERT INTO busunusualtype VALUES ('5', '车温异常', null, null, null, null, '0');
INSERT INTO busunusualtype VALUES ('6', '车速异常', null, null, null, null, '0');
INSERT INTO busunusualtype VALUES ('7', '私自绕行', null, null, null, null, '0');
INSERT INTO busunusualtype VALUES ('8', '私自甩站', null, null, null, null, '0');
INSERT INTO busunusualtype VALUES ('9', '虚开班次', null, null, null, null, '0');
INSERT INTO busunusualtype VALUES ('10', '首末车发车异常', null, null, null, null, '0');
INSERT INTO busunusualtype VALUES ('11', '车载客流量异常', null, null, null, null, '0');
INSERT INTO busunusualtype VALUES ('12', '校区附近车辆异常', null, null, null, null, '0');
INSERT INTO busunusualtype VALUES ('13', '车站客流量异常', null, null, null, null, '0');