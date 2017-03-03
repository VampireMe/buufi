/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : buufi

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-03-03 18:27:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bg_city`
-- ----------------------------
DROP TABLE IF EXISTS `bg_city`;
CREATE TABLE `bg_city` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '模块名',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '名称标识',
  `creator` int(10) NOT NULL DEFAULT '0' COMMENT '创建人',
  `operator` int(10) NOT NULL DEFAULT '0' COMMENT '最后操作者',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `operate_time` int(11) NOT NULL DEFAULT '0' COMMENT '操作时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态（1：正常；0：弃用）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='城市表';

-- ----------------------------
-- Records of bg_city
-- ----------------------------

-- ----------------------------
-- Table structure for `bg_department`
-- ----------------------------
DROP TABLE IF EXISTS `bg_department`;
CREATE TABLE `bg_department` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '部门名',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '名称标识',
  `leader` int(10) NOT NULL DEFAULT '0' COMMENT '负责人',
  `parent` int(10) NOT NULL DEFAULT '0' COMMENT '父部分',
  `creator` int(10) NOT NULL DEFAULT '0' COMMENT '创建人',
  `city_id` int(10) NOT NULL DEFAULT '0' COMMENT '所在城市（0：不区分；）',
  `operator` int(10) NOT NULL DEFAULT '0' COMMENT '最后操作者',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `operate_time` int(11) NOT NULL DEFAULT '0' COMMENT '操作时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态（1：正常；0：弃用）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of bg_department
-- ----------------------------

-- ----------------------------
-- Table structure for `bg_module`
-- ----------------------------
DROP TABLE IF EXISTS `bg_module`;
CREATE TABLE `bg_module` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '模块名',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '名称标识',
  `project` tinyint(2) NOT NULL DEFAULT '1' COMMENT '所在项目（1: PC；2：M；3：APP；4：微信）',
  `description` varchar(100) DEFAULT '' COMMENT '描述',
  `parent` int(10) NOT NULL DEFAULT '0' COMMENT '父模块',
  `creator` int(10) NOT NULL DEFAULT '0' COMMENT '创建人',
  `operator` int(10) NOT NULL DEFAULT '0' COMMENT '最后操作者',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `operate_time` int(11) NOT NULL DEFAULT '0' COMMENT '操作时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态（1：正常；0：弃用）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块表';

-- ----------------------------
-- Records of bg_module
-- ----------------------------

-- ----------------------------
-- Table structure for `bg_privilege`
-- ----------------------------
DROP TABLE IF EXISTS `bg_privilege`;
CREATE TABLE `bg_privilege` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '模块名',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '名称标识',
  `module_id` int(10) NOT NULL DEFAULT '0' COMMENT '所在模块',
  `description` varchar(100) DEFAULT '' COMMENT '描述',
  `creator` int(10) NOT NULL DEFAULT '0' COMMENT '创建人',
  `operator` int(10) NOT NULL DEFAULT '0' COMMENT '最后操作者',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `operate_time` int(11) NOT NULL DEFAULT '0' COMMENT '操作时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态（1：正常；0：弃用）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of bg_privilege
-- ----------------------------

-- ----------------------------
-- Table structure for `bg_role`
-- ----------------------------
DROP TABLE IF EXISTS `bg_role`;
CREATE TABLE `bg_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '组名',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '名称标识',
  `creator` int(10) NOT NULL DEFAULT '0' COMMENT '创建人',
  `operator` int(10) NOT NULL DEFAULT '0' COMMENT '最后操作者',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `operate_time` int(11) NOT NULL DEFAULT '0' COMMENT '操作时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态（1：正常；0：弃用）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of bg_role
-- ----------------------------

-- ----------------------------
-- Table structure for `bg_user`
-- ----------------------------
DROP TABLE IF EXISTS `bg_user`;
CREATE TABLE `bg_user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` char(16) NOT NULL COMMENT '用户名',
  `password` char(60) NOT NULL COMMENT '密码',
  `email` char(32) NOT NULL COMMENT '用户邮箱',
  `mobile` char(15) NOT NULL DEFAULT '' COMMENT '用户手机',
  `department_id` int(10) NOT NULL DEFAULT '0' COMMENT '所属部门',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `reg_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '注册IP',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_login_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '最后登录IP',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) DEFAULT '0' COMMENT '用户状态 1正常 0禁用',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of bg_user
-- ----------------------------

-- ----------------------------
-- Table structure for `bg_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `bg_user_group`;
CREATE TABLE `bg_user_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '组名',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '名称标识',
  `leader` int(10) DEFAULT '0' COMMENT '小组负责人',
  `department_id` int(10) NOT NULL DEFAULT '0' COMMENT '所在项目（0：未添加部门）',
  `city_id` int(10) DEFAULT '0' COMMENT '所在城市（0：不区分）',
  `creator` int(10) NOT NULL DEFAULT '0' COMMENT '创建人',
  `operator` int(10) NOT NULL DEFAULT '0' COMMENT '最后操作者',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `operate_time` int(11) NOT NULL DEFAULT '0' COMMENT '操作时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态（1：正常；0：弃用）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块表';

-- ----------------------------
-- Records of bg_user_group
-- ----------------------------

-- ----------------------------
-- Table structure for `bg_user_log`
-- ----------------------------
DROP TABLE IF EXISTS `bg_user_log`;
CREATE TABLE `bg_user_log` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL COMMENT '用户uid',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `controller` varchar(50) NOT NULL COMMENT '控制器',
  `action` varchar(50) NOT NULL COMMENT '动作',
  `querystring` varchar(255) NOT NULL COMMENT '查询字符串',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `ip` varchar(15) NOT NULL DEFAULT '0.0.0.0' COMMENT 'IP',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='后台日志';

-- ----------------------------
-- Records of bg_user_log
-- ----------------------------

-- ----------------------------
-- Table structure for `city_module_rel`
-- ----------------------------
DROP TABLE IF EXISTS `city_module_rel`;
CREATE TABLE `city_module_rel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `city_id` int(10) NOT NULL COMMENT '城市id',
  `module_id` int(10) NOT NULL COMMENT '模块id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='城市模块中间表';

-- ----------------------------
-- Records of city_module_rel
-- ----------------------------

-- ----------------------------
-- Table structure for `role_privilege_rel`
-- ----------------------------
DROP TABLE IF EXISTS `role_privilege_rel`;
CREATE TABLE `role_privilege_rel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role_id` int(10) NOT NULL COMMENT '角色id',
  `privilege_id` int(10) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色权限中间表';

-- ----------------------------
-- Records of role_privilege_rel
-- ----------------------------

-- ----------------------------
-- Table structure for `user_group_privilege_rel`
-- ----------------------------
DROP TABLE IF EXISTS `user_group_privilege_rel`;
CREATE TABLE `user_group_privilege_rel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(10) NOT NULL COMMENT '用户组id',
  `privilege_id` int(10) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户组权限中间表';

-- ----------------------------
-- Records of user_group_privilege_rel
-- ----------------------------

-- ----------------------------
-- Table structure for `user_group_user_rel`
-- ----------------------------
DROP TABLE IF EXISTS `user_group_user_rel`;
CREATE TABLE `user_group_user_rel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(10) NOT NULL COMMENT '用户组id',
  `user_id` int(10) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户组--用户中间表';

-- ----------------------------
-- Records of user_group_user_rel
-- ----------------------------

-- ----------------------------
-- Table structure for `user_role_rel`
-- ----------------------------
DROP TABLE IF EXISTS `user_role_rel`;
CREATE TABLE `user_role_rel` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户角色中间表';

-- ----------------------------
-- Records of user_role_rel
-- ----------------------------
