/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50641
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50641
File Encoding         : 65001

Date: 2019-04-11 14:04:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) DEFAULT NULL COMMENT '用户名称',
  `real_name` varchar(60) DEFAULT NULL COMMENT '真实名称',
  `sex` tinyint(3) DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(20) DEFAULT NULL COMMENT '电话',
  `email` varchar(60) DEFAULT NULL COMMENT '邮箱',
  `note` varchar(200) DEFAULT NULL COMMENT '备注',
  `position_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_4` (`position_id`),
  CONSTRAINT `fk_4` FOREIGN KEY (`position_id`) REFERENCES `t_position` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'lison', '李小宇', '1', '186995587411', 'lison@qq.com', 'lison的备注', '1');
INSERT INTO `t_user` VALUES ('2', 'james', '陈大雷', '1', '18677885200', 'james@qq.com', 'james的备注', '2');
INSERT INTO `t_user` VALUES ('3', 'cindy', '王美丽11', '2', '18695988747', 'xxoo@163.com', 'cindy\'s note', '1');
INSERT INTO `t_user` VALUES ('126', 'mark', '毛毛', '1', '18695988747', 'xxoo@163.com', 'mark\'s note', '1');
INSERT INTO `t_user` VALUES ('129', 'mark', '毛毛', '1', '18695988747', 'xxoo@163.com', 'mark\'s note', '1');
