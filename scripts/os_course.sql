/*
 Navicat Premium Data Transfer

 Source Server         : sql
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : os_course

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 19/10/2023 22:26:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int(0) NOT NULL DEFAULT 1 COMMENT '排序',
  `parent_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '父分类ID',
  `category_type` tinyint(0) NOT NULL DEFAULT 1 COMMENT '类型(1课程，2资源)',
  `category_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '名称',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1080387521456295937, '2019-01-02 16:57:10', '2022-09-24 13:58:05', 1, 50, 0, 1, '职业 / 技能 / 培训', '一级');
INSERT INTO `category` VALUES (1080744766018883585, '2019-01-03 16:36:44', '2022-09-24 14:23:21', 1, 60, 0, 1, '工业 / 设计 / 技术', '一级');
INSERT INTO `category` VALUES (1080744807735431170, '2019-01-03 16:36:54', '2022-09-23 20:01:43', 1, 2, 1080744766018883585, 1, '现代汽车技术', '');
INSERT INTO `category` VALUES (1080747124211781634, '2019-01-03 16:46:06', '2022-09-24 13:53:08', 1, 20, 0, 1, '后端 / 前端 / 运维', '一级');
INSERT INTO `category` VALUES (1080747249965404161, '2019-01-03 16:46:36', '2022-09-23 19:57:38', 1, 1, 1080747124211781634, 1, '前端开发', '');
INSERT INTO `category` VALUES (1080748559775240194, '2019-01-03 16:51:48', '2022-09-23 20:01:47', 1, 3, 1080744766018883585, 1, '工业产品设计', '');
INSERT INTO `category` VALUES (1080750603160457217, '2019-01-03 16:59:56', '2022-09-28 20:00:48', 1, 15, 0, 1, '一级 / 二级 / 三级', '一级');
INSERT INTO `category` VALUES (1080750628284338178, '2019-01-03 17:00:02', '2019-01-03 17:00:02', 1, 1, 1080750603160457217, 1, '二级分类', '');
INSERT INTO `category` VALUES (1080752583811469314, '2019-01-03 17:07:48', '2022-09-23 20:01:26', 1, 1, 1080744766018883585, 1, '智能制造技术', '');
INSERT INTO `category` VALUES (1080756158205726721, '2019-01-03 17:22:00', '2022-09-20 16:01:21', 1, 10, 0, 1, '龙果开源项目', '开源项目');
INSERT INTO `category` VALUES (1080756229487923201, '2019-01-03 17:22:17', '2022-09-20 16:02:12', 1, 50, 1080756158205726721, 1, '龙果管理系统', '龙果管理系统');
INSERT INTO `category` VALUES (1080758871769419777, '2019-01-03 17:32:47', '2022-09-20 16:01:55', 1, 20, 1080756158205726721, 1, '龙果支付系统', '龙果支付系统');
INSERT INTO `category` VALUES (1080759411039473666, '2019-01-03 17:34:56', '2022-09-23 19:57:31', 1, 1, 1080747124211781634, 1, '后端开发', '');
INSERT INTO `category` VALUES (1248244148498632705, '2020-04-09 21:39:30', '2020-04-09 21:39:30', 1, 10, 1080756158205726721, 1, '领课教育系统', '领课教育系统');
INSERT INTO `category` VALUES (1248244366195593217, '2020-04-09 21:40:22', '2022-09-20 16:02:08', 1, 40, 1080756158205726721, 1, '龙果运维系统', '龙果运维系统');
INSERT INTO `category` VALUES (1248244730181488641, '2020-04-09 21:41:49', '2022-09-20 16:02:03', 1, 30, 1080756158205726721, 1, '龙果充值系统', '龙果充值系统');
INSERT INTO `category` VALUES (1248244972591288322, '2020-04-09 21:42:47', '2022-09-20 16:02:17', 1, 60, 1080756158205726721, 1, '龙果代码生成', '龙果代码生成');
INSERT INTO `category` VALUES (1248245231656669186, '2020-04-09 21:43:49', '2022-09-20 16:02:20', 1, 70, 1080756158205726721, 1, '龙果教程项目', '龙果教程项目');
INSERT INTO `category` VALUES (1248247216749449218, '2020-04-09 21:51:42', '2020-04-09 21:51:42', 1, 1, 1080750603160457217, 1, '二级分类', NULL);
INSERT INTO `category` VALUES (1248247230154444802, '2020-04-09 21:51:45', '2020-04-09 21:51:45', 1, 1, 1080750603160457217, 1, '二级分类', NULL);
INSERT INTO `category` VALUES (1248247267194343426, '2020-04-09 21:51:54', '2022-09-23 20:03:01', 1, 1, 1080387521456295937, 1, '岗位技能', NULL);
INSERT INTO `category` VALUES (1248247524271624193, '2020-04-09 21:52:55', '2022-09-23 19:57:54', 1, 1, 1080759411039473666, 1, 'Php', NULL);
INSERT INTO `category` VALUES (1248247537039085570, '2020-04-09 21:52:58', '2022-09-23 19:57:47', 1, 1, 1080759411039473666, 1, 'Java', NULL);
INSERT INTO `category` VALUES (1248248345805754369, '2020-04-09 21:56:11', '2022-09-20 16:02:24', 1, 80, 1080756158205726721, 1, '龙果集成项目', '龙果集成项目');
INSERT INTO `category` VALUES (1572865086661345282, '2022-09-22 16:27:13', '2022-09-23 19:58:10', 1, 1, 1080747249965404161, 1, 'Html', NULL);
INSERT INTO `category` VALUES (1573280583823491074, '2022-09-23 19:58:15', '2022-09-23 19:58:15', 1, 1, 1080747249965404161, 1, 'Vue', NULL);
INSERT INTO `category` VALUES (1573280633505021954, '2022-09-23 19:58:27', '2022-09-24 13:50:16', 1, 3, 1080747124211781634, 1, '测试运维', NULL);
INSERT INTO `category` VALUES (1573283013906759681, '2022-09-23 20:07:55', '2022-09-23 20:07:55', 1, 1, 1248247230154444802, 1, '三级分类', NULL);
INSERT INTO `category` VALUES (1573283036610527233, '2022-09-23 20:08:00', '2022-09-23 20:08:00', 1, 1, 1248247230154444802, 1, '三级分类', NULL);
INSERT INTO `category` VALUES (1573283054562148354, '2022-09-23 20:08:05', '2022-09-23 20:08:05', 1, 1, 1248247230154444802, 1, '三级分类', NULL);
INSERT INTO `category` VALUES (1573550086444613633, '2022-09-24 13:49:10', '2022-09-24 13:49:20', 1, 3, 1080759411039473666, 1, 'Go', NULL);
INSERT INTO `category` VALUES (1573550195932725249, '2022-09-24 13:49:36', '2022-09-24 13:49:36', 1, 3, 1080747249965404161, 1, 'Css', NULL);
INSERT INTO `category` VALUES (1573550409687040001, '2022-09-24 13:50:27', '2022-09-24 13:50:27', 1, 1, 1573280633505021954, 1, '测试', '1');
INSERT INTO `category` VALUES (1573550454209576962, '2022-09-24 13:50:38', '2022-09-24 13:50:38', 1, 2, 1573280633505021954, 1, '运维', '');
INSERT INTO `category` VALUES (1573550736201023490, '2022-09-24 13:51:45', '2022-09-24 13:51:45', 1, 1, 1248247216749449218, 1, '三级分类', NULL);
INSERT INTO `category` VALUES (1573550748003794945, '2022-09-24 13:51:48', '2022-09-24 13:51:48', 1, 1, 1248247216749449218, 1, '三级分类', NULL);
INSERT INTO `category` VALUES (1573550760246968321, '2022-09-24 13:51:51', '2022-09-24 13:51:51', 1, 1, 1248247216749449218, 1, '三级分类', NULL);
INSERT INTO `category` VALUES (1573550773303836674, '2022-09-24 13:51:54', '2022-09-24 13:51:54', 1, 1, 1080750628284338178, 1, '三级分类', NULL);
INSERT INTO `category` VALUES (1573550786167767042, '2022-09-24 13:51:57', '2022-09-24 13:51:57', 1, 1, 1080750628284338178, 1, '三级分类', NULL);
INSERT INTO `category` VALUES (1573550798519992322, '2022-09-24 13:52:00', '2022-09-24 13:52:00', 1, 1, 1080750628284338178, 1, '三级分类', NULL);
INSERT INTO `category` VALUES (1573552154337148929, '2022-09-24 13:57:23', '2022-09-24 13:57:23', 1, 2, 1080387521456295937, 1, '美容美发', NULL);
INSERT INTO `category` VALUES (1573552178374705153, '2022-09-24 13:57:29', '2022-09-24 13:57:29', 1, 1, 1080387521456295937, 1, '家政服务', '3');
INSERT INTO `category` VALUES (1575093300918087681, '2022-09-28 20:01:21', '2022-09-28 20:01:54', 1, 100, 0, 1, '市场 / 营销 / 产品', NULL);
INSERT INTO `category` VALUES (1575093505876946945, '2022-09-28 20:02:10', '2022-09-28 20:02:10', 1, 1, 1575093300918087681, 1, '市场', NULL);
INSERT INTO `category` VALUES (1575093528551354369, '2022-09-28 20:02:15', '2022-09-28 20:02:35', 1, 2, 1575093300918087681, 1, '营销', NULL);
INSERT INTO `category` VALUES (1575093546016436226, '2022-09-28 20:02:19', '2022-09-28 20:02:38', 1, 3, 1575093300918087681, 1, '产品', NULL);

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int(0) NOT NULL DEFAULT 1 COMMENT '排序',
  `lecturer_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '讲师ID',
  `category_id` bigint(0) NULL DEFAULT 0 COMMENT '分类ID',
  `course_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '课程名称',
  `course_logo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '课程封面',
  `introduce` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '课程简介',
  `is_free` tinyint(0) NOT NULL DEFAULT 0 COMMENT '是否免费(1:免费，0:收费)',
  `ruling_price` decimal(11, 2) NULL DEFAULT NULL COMMENT '划线价',
  `course_price` decimal(11, 2) NULL DEFAULT NULL COMMENT '课程价格',
  `is_putaway` tinyint(0) NOT NULL DEFAULT 1 COMMENT '是否上架(1:上架，0:下架)',
  `course_sort` int(0) NOT NULL DEFAULT 0 COMMENT '课程排序(前端显示使用)',
  `count_buy` int(0) NOT NULL DEFAULT 0 COMMENT '购买人数',
  `count_study` int(0) NOT NULL DEFAULT 0 COMMENT '学习人数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '课程信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1080756535567257601, '2019-01-03 17:50:39', '2022-09-24 16:16:41', 1, 99, 1064776676173942786, 1080756229487923201, '龙果管理系统', 'http://static.roncoos.com/os/005.jpg', '<p>领课网络（全称：广州市领课网络科技有限公司）作为一家软件科技企业，致力于为客户提供专业化的软件产品技术解决方案。公司成立于2016年，是通过国家认定的高新技术企业。</p><p>核心软件产品有：在线教育系统、支付结算系统、会务系统、直播系统。以不断迭代创新的核心软件产品为基础，为客户提供高品质的教育系统定制开发服务、教育系统SaaS服务、支付结算系统开发服务、会务系统开发服务等。</p><p>领课团队拥有十多年的互联网软件产品技术研发经验，以产品技术创新为驱动，以高品质服务为宗旨，为企业提一站式数字化应用解决方案。</p>', 0, 0.99, 0.02, 1, 3, 0, 155);
INSERT INTO `course` VALUES (1080758482462511106, '2019-01-03 17:50:31', '2022-09-23 20:18:10', 1, 75, 1064776676173942786, 1248244366195593217, '龙果运维系统', 'http://static.roncoos.com/os/004.jpg', '<p>领课网络（全称：广州市领课网络科技有限公司）作为一家软件科技企业，致力于为客户提供专业化的软件产品技术解决方案。公司成立于2016年，是通过国家认定的高新技术企业。</p><p>核心软件产品有：在线教育系统、支付结算系统、会务系统、直播系统。以不断迭代创新的核心软件产品为基础，为客户提供高品质的教育系统定制开发服务、教育系统SaaS服务、支付结算系统开发服务、会务系统开发服务等。</p><p>领课团队拥有十多年的互联网软件产品技术研发经验，以产品技术创新为驱动，以高品质服务为宗旨，为企业提一站式数字化应用解决方案。</p>', 0, 0.01, 0.01, 1, 100, 1, 171);
INSERT INTO `course` VALUES (1080759102707798018, '2019-01-03 17:50:29', '2022-09-24 14:26:29', 1, 85, 1064776676173942786, 1080758871769419777, '龙果支付系统', 'http://static.roncoos.com/os/002.jpg', '<p>&nbsp;&nbsp;&nbsp;领课网络（全称：广州市领课网络科技有限公司）作为一家软件科技企业，致力于为客户提供专业化的软件产品技术解决方案。公司成立于2016年，是通过国家认定的高新技术企业。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;核心软件产品有：在线教育系统、支付结算系统、会务系统、直播系统。以不断迭代创新的核心软件产品为基础，为客户提供高品质的教育系统定制开发服务、教育系统SaaS服务、支付结算系统开发服务、会务系统开发服务等。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;领课团队拥有十多年的互联网软件产品技术研发经验，以产品技术创新为驱动，以高品质服务为宗旨，为企业提一站式数字化应用解决方案。</p><p><img src=\"https://dev-os.roncoos.com/gateway/system/images/e7a3a976640b41d78d7fdab01f299011.png\" contenteditable=\"false\" style=\"font-size: var(--font-size); color: var(--el-text-color-regular); text-align: initial;\"/></p><br/>', 0, 300000.00, 300000.00, 1, 2, 0, 836);
INSERT INTO `course` VALUES (1080759557655564289, '2019-01-03 17:50:26', '2022-09-29 14:42:52', 1, 90, 1064776676173942786, 1248244148498632705, '领课教育系统', 'http://static.roncoos.com/os/001.jpg', '<h4><img src=\"https://www.roncoo.net/_nuxt/img/san01.310ef3c.png\" alt=\"在线教育平台系统搭建\" style=\"color: var(--el-text-color-regular); text-align: initial;\"/><br/></h4><br/>', 0, 100000.00, 100000.00, 1, 1, 1024, 8888);
INSERT INTO `course` VALUES (1246446673697738753, '2020-04-13 10:54:22', '2022-09-23 20:17:57', 1, 30, 1568540063406608386, 1248244972591288322, '龙果代码生成', 'http://static.roncoos.com/os/008.jpg', '<p>领课网络（全称：广州市领课网络科技有限公司）作为一家软件科技企业，致力于为客户提供专业化的软件产品技术解决方案。公司成立于2016年，是通过国家认定的高新技术企业。</p><p>核心软件产品有：在线教育系统、支付结算系统、会务系统、直播系统。以不断迭代创新的核心软件产品为基础，为客户提供高品质的教育系统定制开发服务、教育系统SaaS服务、支付结算系统开发服务、会务系统开发服务等。</p><p>领课团队拥有十多年的互联网软件产品技术研发经验，以产品技术创新为驱动，以高品质服务为宗旨，为企业提一站式数字化应用解决方案。</p>', 0, 1.22, 1.11, 1, 10, 0, 0);
INSERT INTO `course` VALUES (1248473637832937473, '2020-04-13 10:54:19', '2022-09-28 20:14:48', 1, 60, 1064776676173942786, 1248245231656669186, '龙果教程项目', 'http://static.roncoos.com/os/007.jpg', '<p><img src=\"https://dev-os.roncoos.com/gateway/system/images/20cbf3e684f6472896f2d7d3a3ca6145.jpg\" contenteditable=\"false\"/></p>', 0, 100.00, 0.01, 1, 3, 1, 1);
INSERT INTO `course` VALUES (1248882669827706881, '2020-04-13 10:54:16', '2022-09-24 16:16:36', 1, 65, 1064776676173942786, 1248248345805754369, '龙果集成项目', 'http://static.roncoos.com/os/006.jpg', '<p>领课网络（全称：广州市领课网络科技有限公司）作为一家软件科技企业，致力于为客户提供专业化的软件产品技术解决方案。公司成立于2016年，是通过国家认定的高新技术企业。</p><p>核心软件产品有：在线教育系统、支付结算系统、会务系统、直播系统。以不断迭代创新的核心软件产品为基础，为客户提供高品质的教育系统定制开发服务、教育系统SaaS服务、支付结算系统开发服务、会务系统开发服务等。</p><p>领课团队拥有十多年的互联网软件产品技术研发经验，以产品技术创新为驱动，以高品质服务为宗旨，为企业提一站式数字化应用解决方案。</p>', 1, 0.00, 0.00, 1, 20, 0, 0);
INSERT INTO `course` VALUES (1249286274804142081, '2020-04-13 10:43:59', '2022-09-24 15:03:54', 1, 80, 1064776676173942786, 1248244730181488641, '龙果充值系统', 'http://static.roncoos.com/os/003.jpg', '<p>领课网络（全称：广州市领课网络科技有限公司）作为一家软件科技企业，致力于为客户提供专业化的软件产品技术解决方案。公司成立于2016年，是通过国家认定的高新技术企业。</p><p>核心软件产品有：在线教育系统、支付结算系统、会务系统、直播系统。以不断迭代创新的核心软件产品为基础，为客户提供高品质的教育系统定制开发服务、教育系统SaaS服务、支付结算系统开发服务、会务系统开发服务等。</p><p>领课团队拥有十多年的互联网软件产品技术研发经验，以产品技术创新为驱动，以高品质服务为宗旨，为企业提一站式数字化应用解决方案。</p>', 0, 0.11, 0.11, 1, 100, 0, 0);

-- ----------------------------
-- Table structure for course_chapter
-- ----------------------------
DROP TABLE IF EXISTS `course_chapter`;
CREATE TABLE `course_chapter`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int(0) NOT NULL DEFAULT 1 COMMENT '排序',
  `course_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '课程ID',
  `chapter_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '章节名称',
  `chapter_desc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '章节描述',
  `is_free` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否免费(1免费，0收费)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '章节信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_chapter
-- ----------------------------
INSERT INTO `course_chapter` VALUES (1080756594904076290, '2019-01-03 17:50:39', '2019-01-03 17:50:39', 1, 1, 1080756535567257601, '第一章', NULL, 0);
INSERT INTO `course_chapter` VALUES (1568524667282608129, '2022-09-10 16:59:57', '2022-09-28 20:30:02', 1, 1, 1080758482462511106, '第三章', NULL, 1);
INSERT INTO `course_chapter` VALUES (1568525966162083841, '2022-09-10 17:05:06', '2022-09-28 20:29:58', 1, 1, 1080758482462511106, '第二章', NULL, 1);
INSERT INTO `course_chapter` VALUES (1568526949114003457, '2022-09-10 17:09:01', '2022-09-28 20:29:53', 1, 1, 1080758482462511106, '第一章', NULL, 1);
INSERT INTO `course_chapter` VALUES (1568787966599450626, '2022-09-11 10:26:12', '2022-09-28 20:27:19', 1, 1, 1248473637832937473, '章节2', NULL, 1);
INSERT INTO `course_chapter` VALUES (1568787988535660546, '2022-09-11 10:26:17', '2022-09-28 20:27:48', 1, 2, 1248473637832937473, '章节3', NULL, 1);
INSERT INTO `course_chapter` VALUES (1568788006608916482, '2022-09-11 10:26:22', '2022-09-28 20:26:57', 1, 1, 1248473637832937473, '章节1', NULL, 1);
INSERT INTO `course_chapter` VALUES (1568790483920027649, '2022-09-11 10:36:12', '2022-09-28 20:31:01', 1, 1, 1246446673697738753, '第一章', NULL, 1);
INSERT INTO `course_chapter` VALUES (1569112587710316545, '2022-09-12 07:56:08', '2022-09-12 07:56:12', 1, 1, 1085453180200448002, '新手如何入门', NULL, 1);
INSERT INTO `course_chapter` VALUES (1569112697382977537, '2022-09-12 07:56:34', '2022-09-12 08:16:36', 1, 2, 1085453180200448002, '如何提高能力', NULL, 1);
INSERT INTO `course_chapter` VALUES (1572148158623907842, '2022-09-20 16:58:24', '2022-09-20 16:58:24', 1, 1, 1248882669827706881, '免费课程', NULL, 1);
INSERT INTO `course_chapter` VALUES (1572845844297707522, '2022-09-22 15:10:46', '2022-09-22 15:10:46', 1, 1, 1080759102707798018, '测试', NULL, 1);
INSERT INTO `course_chapter` VALUES (1572937287129464834, '2022-09-22 21:14:07', '2022-09-23 20:16:37', 1, 1, 1249286274804142081, '龙果充值', NULL, 1);
INSERT INTO `course_chapter` VALUES (1573286640792731650, '2022-09-23 20:22:20', '2022-09-26 14:41:52', 1, 1, 1080759557655564289, '如何搭建一套在线教育系统', NULL, 1);
INSERT INTO `course_chapter` VALUES (1574288285487964162, '2022-09-26 14:42:30', '2022-09-26 14:42:30', 1, 2, 1080759557655564289, '如何找到合适的在线教育系统', NULL, 1);
INSERT INTO `course_chapter` VALUES (1640903337124679682, '2023-03-29 10:26:56', '2023-03-29 10:26:56', 1, 1, 1640903265695682562, '1', NULL, 1);
INSERT INTO `course_chapter` VALUES (1640905892600860673, '2023-03-29 10:37:06', '2023-03-29 10:37:06', 1, 1, 1640905820483997697, '章1', NULL, 1);
INSERT INTO `course_chapter` VALUES (1640918458253299713, '2023-03-29 11:27:01', '2023-03-29 11:27:01', 1, 1, 1640918423964864514, '章1', NULL, 1);
INSERT INTO `course_chapter` VALUES (1640925700935503874, '2023-03-29 11:55:48', '2023-03-29 11:55:48', 1, 1, 1640925656291332097, '章1', NULL, 1);
INSERT INTO `course_chapter` VALUES (1640954713452171266, '2023-03-29 13:51:05', '2023-03-29 13:51:05', 1, 2, 1640925656291332097, '章2', NULL, 1);

-- ----------------------------
-- Table structure for course_chapter_period
-- ----------------------------
DROP TABLE IF EXISTS `course_chapter_period`;
CREATE TABLE `course_chapter_period`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int(0) NOT NULL DEFAULT 1 COMMENT '排序',
  `course_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '课程ID',
  `chapter_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '章节ID',
  `period_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '课时名称',
  `period_desc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课时描述',
  `is_free` tinyint(0) NOT NULL DEFAULT 0 COMMENT '是否免费(1免费，0收费)',
  `resource_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '资源ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '课时信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_chapter_period
-- ----------------------------
INSERT INTO `course_chapter_period` VALUES (1066954337870966785, '2019-01-03 17:50:39', '2022-09-28 20:29:03', 1, 1, 1080756535567257601, 1080756594904076290, '系统的简单介绍和如何部署', NULL, 1, 1570254977909227521);
INSERT INTO `course_chapter_period` VALUES (1568788221785100289, '2022-09-11 10:27:13', '2022-09-28 20:27:28', 1, 1, 1248473637832937473, 1568787966599450626, '第1节', NULL, 1, 1570254977909227521);
INSERT INTO `course_chapter_period` VALUES (1568788236544856066, '2022-09-11 10:27:16', '2022-09-28 20:27:36', 1, 2, 1248473637832937473, 1568787966599450626, '第2节', NULL, 1, 1570253224128118786);
INSERT INTO `course_chapter_period` VALUES (1568790507953389570, '2022-09-11 10:36:18', '2022-09-28 20:31:03', 1, 1, 1246446673697738753, 1568790483920027649, '第一节', NULL, 1, 1570254977909227521);
INSERT INTO `course_chapter_period` VALUES (1569112812256575489, '2022-09-12 07:57:01', '2022-09-15 11:29:08', 1, 1, 1085453180200448002, 1569112697382977537, '入门第一堂课', NULL, 1, 1570253224128118786);
INSERT INTO `course_chapter_period` VALUES (1569117819357970434, '2022-09-12 08:16:55', '2022-09-15 11:45:40', 1, 1, 1085453180200448002, 1569112587710316545, '新手第一堂课', NULL, 1, 1570254977909227521);
INSERT INTO `course_chapter_period` VALUES (1572148196175511553, '2022-09-20 16:58:24', '2022-09-20 16:58:24', 1, 1, 1248882669827706881, 1572148158623907842, '面孔', NULL, 1, 1570254977909227521);
INSERT INTO `course_chapter_period` VALUES (1572845869950070785, '2022-09-22 15:10:46', '2023-07-19 14:56:10', 1, 1, 1080759102707798018, 1572845844297707522, '测试', NULL, 1, 1681557983522320386);
INSERT INTO `course_chapter_period` VALUES (1572845920587902978, '2022-09-22 15:10:46', '2022-09-22 15:10:46', 1, 1, 1080759102707798018, 1572845844297707522, '测试2', NULL, 1, 1570253224128118786);
INSERT INTO `course_chapter_period` VALUES (1572862508754038785, '2022-09-10 17:05:06', '2022-09-28 20:30:17', 1, 1, 1080758482462511106, 1568525966162083841, '第二节', NULL, 1, 1570253224128118786);
INSERT INTO `course_chapter_period` VALUES (1572862534867775490, '2022-09-10 17:09:01', '2022-09-28 20:30:12', 1, 1, 1080758482462511106, 1568526949114003457, '第一节', NULL, 1, 1570254977909227521);
INSERT INTO `course_chapter_period` VALUES (1572937320415461378, '2022-09-22 21:14:07', '2022-09-23 20:16:04', 1, 1, 1249286274804142081, 1572937287129464834, '系统介绍', NULL, 1, 1570254977909227521);
INSERT INTO `course_chapter_period` VALUES (1573286759915159554, '2022-09-23 20:22:48', '2022-09-26 14:42:05', 1, 1, 1080759557655564289, 1573286640792731650, '如何选型', NULL, 1, 1570254977909227521);
INSERT INTO `course_chapter_period` VALUES (1574291623881318402, '2022-09-26 14:55:46', '2022-09-26 14:55:46', 1, 2, 1080759557655564289, 1574288285487964162, '如何找到', NULL, 1, 1570253224128118786);
INSERT INTO `course_chapter_period` VALUES (1575099815532032001, '2022-09-28 20:27:14', '2022-09-28 20:27:43', 1, 1, 1248473637832937473, 1568788006608916482, '第1节', NULL, 1, 1570254977909227521);
INSERT INTO `course_chapter_period` VALUES (1575099996965040129, '2022-09-28 20:27:57', '2022-09-28 20:27:57', 1, 2, 1248473637832937473, 1568787988535660546, '第1节', NULL, 1, 1570254977909227521);
INSERT INTO `course_chapter_period` VALUES (1640903364286992386, '2023-03-29 10:27:03', '2023-03-29 10:27:03', 1, 1, 1640903265695682562, 1640903337124679682, '1', NULL, 1, 1570254977909227521);
INSERT INTO `course_chapter_period` VALUES (1640905932656463874, '2023-03-29 10:37:15', '2023-03-29 10:37:15', 1, 1, 1640905820483997697, 1640905892600860673, '节1', NULL, 1, 1570254977909227521);
INSERT INTO `course_chapter_period` VALUES (1640918488179658754, '2023-03-29 11:27:09', '2023-03-29 11:27:09', 1, 1, 1640918423964864514, 1640918458253299713, '节1', NULL, 1, 1570254977909227521);
INSERT INTO `course_chapter_period` VALUES (1640925731788804097, '2023-03-29 11:55:56', '2023-03-29 11:55:56', 1, 1, 1640925656291332097, 1640925700935503874, '节1', NULL, 1, 1570254977909227521);
INSERT INTO `course_chapter_period` VALUES (1640954755160330242, '2023-03-29 13:51:15', '2023-03-29 13:51:15', 1, 2, 1640925656291332097, 1640954713452171266, '节1', NULL, 1, 1570253224128118786);

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int(0) NOT NULL DEFAULT 1 COMMENT '排序',
  `resource_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '资源名称',
  `resource_type` tinyint(0) NOT NULL DEFAULT 1 COMMENT '资源类型(1:视频2:音频;3:文档)',
  `resource_size` bigint(0) NOT NULL COMMENT '资源大小',
  `resource_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源地址',
  `vod_platform` tinyint(0) NULL DEFAULT NULL COMMENT '点播平台',
  `storage_platform` tinyint(0) NULL DEFAULT NULL COMMENT '存储平台',
  `video_status` tinyint(0) NULL DEFAULT 1 COMMENT '状态(1转码中，2成功，3失败)',
  `video_length` int(0) NULL DEFAULT NULL COMMENT '资源时长，单位秒',
  `video_vid` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '资源vid',
  `doc_page` int(0) NULL DEFAULT 0 COMMENT '资源页数，单位页',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '课程视频信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES (1570253224128118786, '2022-09-15 11:28:37', '2023-03-24 17:44:25', 1, 1, '演示视频2.mp4', 1, 15984462, NULL, 2, 1, 2, 79, 'b0906b1697d8e76da76bb6d1e9bb0057_b', NULL);
INSERT INTO `resource` VALUES (1570254977909227521, '2022-09-15 11:35:35', '2022-09-26 14:32:38', 1, 1, '演示视频1.mp4', 1, 20463594, NULL, 2, 1, 2, 87, 'b0906b1697cf4e60e7aba3d25d999293_b', NULL);

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
-- Table structure for user_course
-- ----------------------------
DROP TABLE IF EXISTS `user_course`;
CREATE TABLE `user_course`  (
  `id` bigint(0) NOT NULL DEFAULT 2 COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int(0) NOT NULL DEFAULT 1 COMMENT '排序',
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `course_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '课程ID',
  `buy_type` tinyint(0) NULL DEFAULT 1 COMMENT '购买类型(1支付，2免费)',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_course_id_user_no`(`course_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '课程用户关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_course_collect
-- ----------------------------
DROP TABLE IF EXISTS `user_course_collect`;
CREATE TABLE `user_course_collect`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int(0) NOT NULL DEFAULT 1 COMMENT '排序',
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `course_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '课程ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '课程收藏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_course_comment
-- ----------------------------
DROP TABLE IF EXISTS `user_course_comment`;
CREATE TABLE `user_course_comment`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int(0) NOT NULL DEFAULT 1 COMMENT '排序',
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `course_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '课程ID',
  `comment_id` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论ID',
  `comment_text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '课程评论' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_study
-- ----------------------------
DROP TABLE IF EXISTS `user_study`;
CREATE TABLE `user_study`  (
  `id` bigint(0) NOT NULL DEFAULT 0 COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `course_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '课程ID',
  `chapter_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '章节ID',
  `period_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '课时ID',
  `user_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `resource_type` tinyint(0) NOT NULL DEFAULT 1 COMMENT '资源类型(1:视频2:音频;3:文档)',
  `current_duration` int(0) NOT NULL DEFAULT 0 COMMENT '当前学习时长，单位秒',
  `current_page` int(0) NOT NULL DEFAULT 0 COMMENT '当前学习页数，单位页',
  `progress` decimal(5, 2) NOT NULL DEFAULT 20.00 COMMENT '进度(百分比)',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_user_peroid`(`period_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '课程用户学习日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for zone
-- ----------------------------
DROP TABLE IF EXISTS `zone`;
CREATE TABLE `zone`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常;0:禁用)',
  `sort` int(0) NOT NULL DEFAULT 1 COMMENT '排序',
  `zone_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `zone_desc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '专区' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zone
-- ----------------------------
INSERT INTO `zone` VALUES (1014339060298440705, '2018-07-04 10:45:07', '2022-09-29 08:56:39', 1, 1000, '热门课程', '每一门都是好课程');
INSERT INTO `zone` VALUES (1060472271471714305, '2018-11-08 18:02:24', '2022-09-29 08:56:22', 1, 100, '精品课程', '领课出品，皆是精品');

-- ----------------------------
-- Table structure for zone_course
-- ----------------------------
DROP TABLE IF EXISTS `zone_course`;
CREATE TABLE `zone_course`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常;0:禁用)',
  `sort` int(0) NOT NULL COMMENT '排序',
  `zone_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '专区编号',
  `course_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '课程ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '专区课程关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zone_course
-- ----------------------------
INSERT INTO `zone_course` VALUES (1249532098754695170, '2020-04-13 10:57:22', '2022-09-23 20:48:43', 1, 3, 1060472271471714305, 1246446673697738753);
INSERT INTO `zone_course` VALUES (1249532114823073793, '2020-04-13 10:57:26', '2022-09-23 20:48:40', 1, 2, 1060472271471714305, 1248473637832937473);
INSERT INTO `zone_course` VALUES (1249532330120892418, '2020-04-13 10:58:17', '2022-09-23 20:35:58', 1, 10, 1060472271471714305, 1248882669827706881);
INSERT INTO `zone_course` VALUES (1249533042133356546, '2020-04-13 11:01:07', '2022-09-23 20:24:23', 1, 1, 1014339060298440705, 1080759557655564289);
INSERT INTO `zone_course` VALUES (1569209824343764993, '2022-09-12 14:22:31', '2022-09-26 14:58:57', 1, 1, 1060472271471714305, 1080759102707798018);
INSERT INTO `zone_course` VALUES (1573288939711725570, '2022-09-23 20:31:28', '2022-09-23 20:31:28', 1, 1, 1060472271471714305, 1080759557655564289);
INSERT INTO `zone_course` VALUES (1573293377251803137, '2022-09-23 20:49:06', '2022-09-24 08:51:01', 1, 2, 1060472271471714305, 1249286274804142081);
INSERT INTO `zone_course` VALUES (1573568479549784066, '2022-09-24 15:02:15', '2022-09-24 15:02:26', 1, 9, 1060472271471714305, 1080758482462511106);
INSERT INTO `zone_course` VALUES (1573568633736593410, '2022-09-24 15:02:52', '2022-09-24 15:02:52', 1, 5, 1060472271471714305, 1080756535567257601);
INSERT INTO `zone_course` VALUES (1573569158418857986, '2022-09-24 15:04:57', '2022-09-26 14:58:13', 1, 2, 1014339060298440705, 1080759102707798018);
INSERT INTO `zone_course` VALUES (1573569185501478914, '2022-09-24 15:05:03', '2022-09-24 15:05:12', 1, 3, 1014339060298440705, 1249286274804142081);
INSERT INTO `zone_course` VALUES (1574292326934749186, '2022-09-26 14:58:34', '2022-09-26 14:58:34', 1, 4, 1014339060298440705, 1248882669827706881);

SET FOREIGN_KEY_CHECKS = 1;
