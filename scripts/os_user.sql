/*
 Navicat Premium Data Transfer

 Source Server         : sql
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : os_user

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 19/10/2023 22:27:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lecturer
-- ----------------------------
DROP TABLE IF EXISTS `lecturer`;
CREATE TABLE `lecturer`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int(0) NOT NULL DEFAULT 1 COMMENT '排序',
  `lecturer_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '讲师名称',
  `lecturer_mobile` char(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '讲师手机',
  `lecturer_position` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '讲师职位',
  `lecturer_head` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '讲师头像',
  `introduce` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '简介',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '讲师信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lecturer
-- ----------------------------
INSERT INTO `lecturer` VALUES (1064776676173942786, '2018-11-20 15:44:14', '2022-09-28 20:06:04', 1, 1, '领课', '13800138001', '提供在线教育解决方案', 'https://file.roncoos.com/education/education/765d471f0e314f64a7d35fc0b39295e0.png', '<p>&nbsp;&nbsp;领课网络（全称：广州市领课网络科技有限公司）作为一家软件科技企业，致力于为客户提供专业化的软件产品技术解决方案。公司成立于2016年，是通过国家认定的高新技术企业。<span style=\"color: var(--el-text-color-regular); text-align: initial;\">核心软件产品有：在线教育系统、支付结算系统、会务系统、直播系统。以不断迭代创新的核心软件产品为基础，为客户提供高品质的教育系统定制开发服务、教育系统SaaS服务、支付结算系统开发服务、会务系统开发服务等。</span></p>');
INSERT INTO `lecturer` VALUES (1568540063406608386, '2022-09-10 18:01:07', '2023-10-12 16:42:46', 1, 2, '冯老师', '18302045627', '高级讲师', 'https://file.roncoos.com/eduos/public/62fa955324df46dba1e5070a4f4e8d46.jpg', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;领课网络（全称：广州市领课网络科技有限公司）作为一家软件科技企业，致力于为客户提供专业化的软件产品技术解决方案。公司成立于2016年，是通过国家认定的高新技术企业。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;核心软件产品有：在线教育系统、支付结算系统、会务系统、直播系统。以不断迭代创新的核心软件产品为基础，为客户提供高品质的教育系统定制开发服务、教育系统SaaS服务、支付结算系统开发服务、会务系统开发服务等。</p>');

-- ----------------------------
-- Table structure for log_login
-- ----------------------------
DROP TABLE IF EXISTS `log_login`;
CREATE TABLE `log_login`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `login_status` tinyint(0) NOT NULL DEFAULT 1 COMMENT '登录状态(0失败，1成功，2注册)',
  `login_ip` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '登录IP',
  `country` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '国家',
  `province` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '市',
  `browser` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '浏览器',
  `os` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '操作系统',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户登录日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_login
-- ----------------------------
INSERT INTO `log_login` VALUES (1714641490642219009, '2023-10-18 21:56:02', 1592154504513572866, 0, '127.0.0.1', '中国', '', '', 'Chrome:118', 'Windows 10');
INSERT INTO `log_login` VALUES (1714641627095511041, '2023-10-18 21:56:35', 1592154504513572866, 0, '127.0.0.1', '中国', '', '', 'Chrome:118', 'Windows 10');
INSERT INTO `log_login` VALUES (1714641668833030146, '2023-10-18 21:56:45', 1592154504513572866, 0, '127.0.0.1', '中国', '', '', 'Chrome:118', 'Windows 10');
INSERT INTO `log_login` VALUES (1714641807572217858, '2023-10-18 21:57:18', 1592154504513572866, 0, '127.0.0.1', '中国', '', '', 'Chrome:118', 'Windows 10');
INSERT INTO `log_login` VALUES (1714641830590558209, '2023-10-18 21:57:23', 1592154504513572866, 0, '127.0.0.1', '中国', '', '', 'Chrome:118', 'Windows 10');
INSERT INTO `log_login` VALUES (1714641842250723329, '2023-10-18 21:57:26', 1592154504513572866, 0, '127.0.0.1', '中国', '', '', 'Chrome:118', 'Windows 10');
INSERT INTO `log_login` VALUES (1714641991811215362, '2023-10-18 21:58:02', 1592154504513572866, 0, '127.0.0.1', '中国', '', '', 'Chrome:118', 'Windows 10');
INSERT INTO `log_login` VALUES (1714643267647188994, '2023-10-18 22:03:06', 1592154504513572866, 0, '127.0.0.1', '中国', '', '', 'Chrome:118', 'Windows 10');
INSERT INTO `log_login` VALUES (1714643292636852225, '2023-10-18 22:03:12', 1592154504513572866, 0, '127.0.0.1', '中国', '', '', 'Chrome:118', 'Windows 10');
INSERT INTO `log_login` VALUES (1714643622745354241, '2023-10-18 22:04:30', 1592154504513572866, 0, '127.0.0.1', '中国', '', '', 'Chrome:118', 'Windows 10');
INSERT INTO `log_login` VALUES (1714645043259650049, '2023-10-18 22:10:09', 1714645040785010690, 2, '127.0.0.1', '中国', '', '', 'Chrome:118', 'Windows 10');
INSERT INTO `log_login` VALUES (1714645088134508545, '2023-10-18 22:10:20', 1714645040785010690, 1, '127.0.0.1', '中国', '', '', 'Chrome:118', 'Windows 10');
INSERT INTO `log_login` VALUES (1714836726798667777, '2023-10-19 10:51:50', 1714645040785010690, 1, '127.0.0.1', '中国', '', '', 'Chrome:118', 'Windows 10');
INSERT INTO `log_login` VALUES (1714864749472174082, '2023-10-19 12:43:11', 1714645040785010690, 1, '127.0.0.1', '中国', '', '', 'Chrome:118', 'Windows 10');

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1有效, 0无效)',
  `sort` int(0) NOT NULL DEFAULT 1 COMMENT '排序',
  `msg_type` tinyint(0) NOT NULL DEFAULT 1 COMMENT '短信类型(1系统消息,2其他)',
  `msg_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '短信标题',
  `msg_text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '短信内容',
  `is_time_send` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否定时发送（1是，0否）',
  `send_time` datetime(0) NULL DEFAULT NULL COMMENT '发送时间',
  `is_send` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否已发送(1是;0否)',
  `is_top` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否置顶(1是;0否)',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '站内信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for msg_user
-- ----------------------------
DROP TABLE IF EXISTS `msg_user`;
CREATE TABLE `msg_user`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1有效, 0无效)',
  `sort` int(0) NOT NULL DEFAULT 1 COMMENT '排序',
  `msg_id` bigint(0) NOT NULL COMMENT '短信ID',
  `user_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `mobile` char(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `msg_type` tinyint(0) NOT NULL DEFAULT 1 COMMENT '短信类型(1系统消息,2其他)',
  `msg_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '短信标题',
  `is_read` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否阅读(1是;0否)',
  `is_top` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否置顶(1是;0否)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '站内信用户记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `order_no` bigint(0) NOT NULL COMMENT '订单号',
  `user_id` bigint(0) NOT NULL COMMENT '下单用户编号',
  `mobile` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '下单用户电话',
  `register_time` datetime(0) NULL DEFAULT NULL COMMENT '下单用户注册时间',
  `course_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '课程ID',
  `ruling_price` decimal(11, 2) NULL DEFAULT NULL COMMENT '划线价',
  `course_price` decimal(11, 2) NULL DEFAULT NULL COMMENT '课程价格',
  `pay_type` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '支付方式：1微信支付，2支付宝支付',
  `order_status` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单状态：1待支付，2成功支付，3支付失败，4关闭支付',
  `remark_cus` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '客户备注',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '后台备注',
  `pay_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '支付时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_order_no`(`order_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '订单信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_pay
-- ----------------------------
DROP TABLE IF EXISTS `order_pay`;
CREATE TABLE `order_pay`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `order_no` bigint(0) NOT NULL COMMENT '订单号',
  `serial_number` bigint(0) NOT NULL DEFAULT 0 COMMENT '流水号',
  `ruling_price` decimal(11, 2) NULL DEFAULT NULL COMMENT '划线价',
  `course_price` decimal(11, 2) NULL DEFAULT NULL COMMENT '课程价格',
  `pay_type` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '支付方式：1微信支付，2支付宝支付，3积分支付，4手工录单',
  `order_status` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单状态：1待支付，2成功支付，3支付失败，4已关闭，5已退款, 6订单解绑',
  `remark_cus` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '客户备注',
  `pay_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '支付时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '订单支付信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for region
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region`  (
  `id` bigint(0) UNSIGNED NOT NULL COMMENT '主键',
  `parent_id` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父id',
  `level` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '级别',
  `province_code` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '区域编码（国标）',
  `center_lng` decimal(12, 9) NOT NULL COMMENT '中心经度',
  `center_lat` decimal(12, 9) NOT NULL COMMENT '中心维度',
  `province_id` int(0) NOT NULL COMMENT '省Id',
  `province_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '省名称',
  `city_id` int(0) NOT NULL COMMENT '市Id',
  `city_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '城市编码',
  `city_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '市名称',
  `region_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '区域名称',
  `district_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '区名称',
  `merger_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '全路径名称',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '行政区域表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log`  (
  `branch_id` bigint(0) NOT NULL COMMENT 'branch transaction id',
  `xid` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'global transaction id',
  `context` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'undo_log context,such as serialization',
  `rollback_info` longblob NOT NULL COMMENT 'rollback info',
  `log_status` int(0) NOT NULL COMMENT '0:normal status,1:defense status',
  `log_created` datetime(6) NOT NULL COMMENT 'create datetime',
  `log_modified` datetime(6) NOT NULL COMMENT 'modify datetime',
  UNIQUE INDEX `ux_undo_log`(`xid`, `branch_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'AT transaction mode undo table' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `mobile` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '手机号码',
  `mobile_salt` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码盐',
  `mobile_psw` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '登录密码',
  `nickname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `user_sex` tinyint(0) UNSIGNED NULL DEFAULT 3 COMMENT '用户性别(1男，2女，3保密)',
  `user_age` int(0) NULL DEFAULT NULL COMMENT '用户年龄',
  `user_head` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1592154504513572866, '2022-11-14 21:56:29', '2023-10-18 22:04:19', 1, '18302045627', 'fca32f470f8d4042ae045f9cb8a97efb', '76B598F6A094FE441B04FE8BFB50372BFE61F8B0', '作者', 1, 100, 'https://file.roncoos.com/education/education/593da653debb488088d7dc9ac4f4baa8.png', '18302045627（微信同号），可提供有偿指导');
INSERT INTO `users` VALUES (1714645040785010690, '2023-10-18 22:10:08', '2023-10-19 12:58:53', 1, '13095632526', '3b2a993f5b364918beaa4794cafc6788', '0dd1cd9cea38013372507abfed8d5f6fa41a1091', 'jeffery', 1, 1, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
