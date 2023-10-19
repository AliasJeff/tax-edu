/*
 Navicat Premium Data Transfer

 Source Server         : sql
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : os_system

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 19/10/2023 22:27:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` bigint(0) NOT NULL COMMENT '主键ID',
  `config_type` tinyint(0) NOT NULL DEFAULT 1 COMMENT '配置类型(1:站点信息，2:系统信息、3:其他)',
  `content_type` tinyint(0) NOT NULL DEFAULT 1 COMMENT '内容类型(1:文本、2:富文本、3图片、4布尔、5枚举)',
  `config_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '参数名称',
  `config_key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '参数键名',
  `config_value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '参数键值',
  `config_show` bit(1) NOT NULL DEFAULT b'1' COMMENT '配置展示(0:隐藏、1:显示)',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sort` int(0) NOT NULL DEFAULT 100 COMMENT '排序，默认值:100',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ak_configkey`(`config_key`) USING BTREE COMMENT '参数键名'
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '系统配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (101, 1, 1, '网站域名', 'websiteDomain', 'http://localhost/', b'1', '网站主域名，注意以斜杠结尾', 1, '2021-12-10 14:28:29', '2023-06-05 16:28:32');
INSERT INTO `sys_config` VALUES (102, 1, 1, '网站名称', 'websiteName', '领课教育系统', b'1', '网站名称', 2, '2022-06-18 17:29:48', '2022-09-29 09:04:55');
INSERT INTO `sys_config` VALUES (103, 1, 3, '网站LOGO', 'websiteLogo', 'https://static.roncoos.com/os/10.png', b'1', '网站LOGO带文字和图标，建议尺寸 510×108px', 10, '2022-02-18 14:57:23', '2022-09-24 11:55:55');
INSERT INTO `sys_config` VALUES (104, 1, 3, '网站ICON', 'websiteIcon', 'https://file.roncoos.com/education/education/3c55cc236d1c41e7825fe553606ebe6d.png', b'1', '网站ICON，建议尺寸 64×64px', 30, '2022-02-18 14:55:47', '2022-09-26 15:31:26');
INSERT INTO `sys_config` VALUES (105, 1, 1, '网站描述', 'websiteDesc', '领课网络·为企业和培训机构在线培训提供一站式解决方案，包括录播、直播、班级、考试、证书等在线培训工具，且提供网校定制，网校开发，网校搭建等全生命周期的管理与服务。', b'1', '用于在店铺登录页面底部展示，例如：“**科技·知识产品与用户服务的数字化工具”', 40, '2022-02-18 16:40:27', '2022-09-29 09:06:51');
INSERT INTO `sys_config` VALUES (106, 1, 1, '网站版权', 'websiteCopyright', '© 2016-现在 广州市领课网络技术有限公司', b'1', '例如：“Copyright © 2015-现在 ******网络技术有限公司 All Rights Reserved”', 50, '2022-02-18 16:32:40', '2022-09-11 12:12:19');
INSERT INTO `sys_config` VALUES (107, 1, 1, '网站ICP', 'websiteIcp', '粤ICP备16009964号 -1', b'1', '例如：“粤ICP备********号-1”', 60, '2022-02-18 16:34:32', '2022-09-11 12:12:23');
INSERT INTO `sys_config` VALUES (108, 1, 1, '公安部备案号', 'websitePrn', '粤公网安备44010602005928号', b'1', '公安部备案号', 70, '2022-03-22 11:47:44', '2022-09-29 14:12:54');
INSERT INTO `sys_config` VALUES (110, 1, 2, '网站用户协议', 'websiteUserAgreement', '<p>一、用户协议总则<br/>1、本协议双方为广州市领课网络科技有限公司（以下简称：领课网络）旗下的领课教育系统（域名为：<a href=\"https://eduos.roncoo.net/\" target=\"_blank\">https://eduos.roncoo.net/</a>）和领课教育系统的注册用户（以下简称：用户）。<br/>2、用户在注册前请仔细阅读本协议的条款，并按照页面上的提示完成全部注册程序。<br/>3、用户在进行注册过程中点击“同意”按钮，即表示用户已充分知悉和完全接受本协议项下全部条款，进而与领课教育系统达成本协议。<br/><br/>二、用户服务使用说明<br/>1、用户在注册时应按照注册提示填写准确的用户名、密码及真实的联系邮箱、手机号码等相关个人资料，符合完整、准确的要求。<br/>2、用户一旦注册成功，便成为领课教育系统网站合法的注册用户，将获得本网站的一个用户账号和相应密码，用户可随时修改自己的用户密码。用户应对其账号和密码安全负全部责任，并应对其用户名下所进行的所有行为和事件承担相应的法律责任。<br/>3、用户同意接受领课教育系统网站通过电子邮件或其他方式向用户发送有关商业信息。<br/>4、领课教育系统网站不对用户所发布信息的删除或储存失败负责。<br/>5、领课教育系统网站不提供账号删除服务，如果用户需要删除账号，请直接放弃使用即可。<br/>6、领课教育系统网站有判定用户的行为是否符合本网站服务条款要求的权利，如果用户违背了服务条款的规定，本网站有权对其用户所提供的网络服务进行中断或停止使用。<br/>7、用户不得以任何非法目的或其它方式对领课教育系统网站的个人用户账号进行转让、转借、倒卖、账号共享等行为（用户账号仅限由其本人使用）。<br/><br/>三、协议内容的变更和修订<br/>1、领课教育系统网站有权在必要时修改服务条款，领课教育系统网站服务条款一旦发生变动，将会在重要页面上提示修改内容。<br/>2、用户如果不同意领课教育系统所改动的内容，可自行停止使用本站网络服务。<br/>3、如果用户继续享用本站网络服务，则视为同意接受本网站服务条款的变动。<br/>4、领课教育系统网站可随时根据实际情况中断或终止一项或多项网络服务而无需对任何用户或第三方承担任何责任，如用户对一项或多项网络服务的中断或终止有异议，可以行使如下权利：<br/>（1）自行停止使用领课教育系统网站的网络服务。<br/>（2）通知领课教育系统网站停止对该用户的服务。 结束用户服务后，用户使用网络服务的权利立即终止，从终止时起，用户没有权利再进行处理任何未完成的信息或服务，领课教育系统网站也没有义务为其传送任何未处理的信息或未完成的服务给用户或任何第三方。<br/><br/>四、用户隐私条款<br/>领课教育系统网站将严格履行用户个人隐私保密义务，承诺不公开、编辑或透露用户个人信息，但以下特殊情况除外：<br/>1、经注册用户事先许可授权。<br/>2、遵守国家法律法规或配合相关政府部门的要求。<br/>3、遵从领课教育系统网站合法服务程序。<br/>4、为维护社会公众利益以及领课教育系统网站的合法权益所必须。<br/><br/>五、注册用户的权利与义务<br/>1、注册用户在使用领课教育系统网站服务时，必须遵守中华人民共和国相关法律法规的规定，用户应同意将不会利用本服务进行任何违法或不正当的活动，否则用户将自行承担由此产生的一切法律责任。<br/>2、用户在账号使用过程中不得上载、展示、张贴、传播或以其它方式传送含有下列内容之一的信息：<br/>（1） 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的。<br/>（2） 损害国家荣誉和利益的。<br/>（3） 煽动民族仇恨、民族歧视、破坏民族团结的。<br/>（4） 破坏国家宗教政策，宣扬邪教和封建迷信的。<br/>（5） 散布谣言，扰乱社会秩序，破坏社会稳定的。<br/>（6） 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的。<br/>（7） 侮辱或者诽谤他人，侵害他人合法权利的。<br/>（8） 含有虚假、有害、胁迫、侵害他人隐私、骚扰、侵害、中伤、粗俗、猥亵、或其它道德上令人反感的内容。<br/>3、不得为任何非法目的而使用网络服务系统。<br/>4、不得利用领课教育系统网站服务故意制作、传播计算机病毒等破坏性程序，或其他从事任何危害计算机信息网络安全的行为。<br/>5、若用户行为违反上述约定，领课教育系统网站有权作出独立判断并立即取消用户的服务账号，用户应对自己网上的行为承担一切法律责任，领课教育系统网站的系统记录有可能作为用户违反法律的证据提交给相关主管部门。<br/>6、用户应同意保障和维护领课教育系统网站全体成员及其他用户的利益，如因违反本协议或违反有关的法律法规而给领课教育系统网站或任何第三者造成损失，用户应承担因此产生的法律责任。<br/><br/>六、领课教育系统网络服务内容的所有权<br/>1、领课教育系统网站定义的网络服务内容包括但不限于：教学视频、资料、源码、文字、软件、声音、图片、商标等。该等内容均受《著作权法》、《商标法》、《专利法》、《计算机软件保护条例》及其他相关法律法规的保护。<br/>2、领课教育系统网站所有的文章版权归原文作者和领课教育系统网站共同所有，任何人需要转载本网站版内的文章，必须事先取得原文作者和领课教育系统网站的授权同意。<br/>3、未经领课教育系统网站或其他有权第三方的事先许可授权，用户不得对包括但不限于：教学视频</p>', b'0', '网站用户协议', 100, '2022-09-24 14:47:36', '2022-09-29 09:09:24');
INSERT INTO `sys_config` VALUES (201, 3, 5, '点播平台', 'vodPlatform', '1', b'1', '默认点播平台', 1, '2021-12-10 14:18:25', '2023-06-23 20:31:28');
INSERT INTO `sys_config` VALUES (202, 4, 5, '存储平台', 'storagePlatform', '2', b'1', '默认存储平台', 1, '2021-12-10 14:21:48', '2023-06-22 07:33:57');
INSERT INTO `sys_config` VALUES (203, 5, 5, '短信平台', 'smsPlatform', '1', b'1', '默认短信平台', 1, '2021-12-10 14:23:37', '2023-06-22 07:33:59');
INSERT INTO `sys_config` VALUES (290, 3, 1, '【私有云】Url', 'priyUrl', '-', b'1', '【私有云】接口地址，独立收费应用，请联系作者', 100, '2023-03-25 21:56:26', '2023-07-18 15:20:16');
INSERT INTO `sys_config` VALUES (291, 3, 1, '【私有云】AccessKeyId', 'priyAccessKeyId', '-', b'1', '【私有云】AccessKeyId，独立收费应用，请联系作者', 110, '2023-03-25 21:56:52', '2023-07-18 15:20:23');
INSERT INTO `sys_config` VALUES (292, 3, 1, '【私有云】AccessKeySecret', 'priyAccessKeySecret', '-', b'1', '【私有云】AccessKeySecret，独立收费应用，请联系作者', 120, '2023-03-25 21:57:07', '2023-07-18 15:20:28');
INSERT INTO `sys_config` VALUES (301, 3, 1, '【保利威】User ID', 'polyvUserId', '-', b'1', '【保利威】UserId', 20, '2021-12-10 14:33:40', '2023-02-19 13:49:47');
INSERT INTO `sys_config` VALUES (302, 3, 1, '【保利威】点播Write Token', 'polyvWriteToken', '-', b'1', '【保利威】Write Token', 30, '2021-12-10 14:34:45', '2023-02-19 13:49:48');
INSERT INTO `sys_config` VALUES (303, 3, 1, '【保利威】点播Read Token', 'polyvReadToken', '-', b'1', '【保利威】Read Token', 40, '2021-12-10 14:35:46', '2023-02-19 13:49:50');
INSERT INTO `sys_config` VALUES (304, 3, 1, '【保利威】点播Secret Key', 'polyvSecretKey', '-', b'1', '【保利威】Secret Key', 50, '2021-12-10 14:37:58', '2023-02-19 13:49:54');
INSERT INTO `sys_config` VALUES (305, 3, 1, '【百家云】伙伴ID', 'baijyPartnerId', '-', b'1', '百家云伙伴ID', 110, '2021-12-10 14:42:36', '2022-09-11 12:13:00');
INSERT INTO `sys_config` VALUES (306, 3, 1, '【百家云】伙伴秘钥', 'baijyPartnerKey', '-', b'1', '百家云伙伴秘钥', 120, '2021-12-10 14:43:14', '2022-09-11 12:13:03');
INSERT INTO `sys_config` VALUES (307, 3, 1, '【百家云】安全秘钥', 'baijySecretKey', '-', b'1', '百家云安全秘钥', 130, '2021-12-10 14:43:38', '2022-09-11 12:13:06');
INSERT INTO `sys_config` VALUES (401, 4, 1, '【阿里云】存储Key ID', 'aliyunAccessKeyId', '-', b'1', '阿里云存储 AccessKeyId', 10, '2021-12-10 14:48:57', '2022-10-09 08:50:58');
INSERT INTO `sys_config` VALUES (402, 4, 1, '【阿里云】存储Key Secret', 'aliyunAccessKeySecret', '-', b'1', '阿里云存储 AccessKeySecret', 20, '2021-12-10 14:54:30', '2022-10-09 08:50:56');
INSERT INTO `sys_config` VALUES (403, 4, 1, '【阿里云】存储Endpoint', 'aliyunOssEndpoint', '-', b'1', '阿里云存储 Endpoint', 40, '2021-12-10 14:58:17', '2023-05-10 10:18:32');
INSERT INTO `sys_config` VALUES (404, 4, 1, '【阿里云】存储Bucket', 'aliyunOssBucket', '-', b'1', '阿里云存储Bucket', 50, '2021-12-10 15:00:26', '2023-06-05 16:28:16');
INSERT INTO `sys_config` VALUES (405, 4, 1, '【阿里云】存储Bucket域名', 'aliyunOssUrl', '-', b'1', '阿里云存访问域名，文件访问，注意以斜杠结尾', 60, '2021-12-10 15:01:05', '2023-06-05 16:28:12');
INSERT INTO `sys_config` VALUES (411, 4, 1, '【MinIO】存储Key ID', 'minioAccessKey', '-', b'1', 'MinIo存储 AccessKeyId', 10, '2022-11-14 17:26:35', '2023-07-19 11:45:33');
INSERT INTO `sys_config` VALUES (412, 4, 1, '【MinIO】存储Key Secret', 'minioSecretKey', '-', b'1', 'MinIo存储 AccessKeySecret', 20, '2022-11-14 17:26:49', '2023-07-19 11:45:39');
INSERT INTO `sys_config` VALUES (413, 4, 1, '【MinIO】存储Endpoint', 'minioEndpoint', '-', b'1', 'MinIo存储 Endpoint', 40, '2022-11-14 17:26:12', '2023-07-19 11:45:52');
INSERT INTO `sys_config` VALUES (414, 4, 1, '【MinIO】存储Bucket', 'minioBucket', 'eduos', b'1', 'MinIo存储Bucket', 50, '2022-07-28 17:22:32', '2023-07-19 11:46:00');
INSERT INTO `sys_config` VALUES (415, 4, 1, '【MinIO】存储访问域名', 'minioDomain', '-', b'1', 'MinIO存访问域名，文件访问，注意以斜杠结尾', 100, '2021-12-10 14:47:55', '2023-07-19 11:45:55');
INSERT INTO `sys_config` VALUES (498, 5, 1, '【阿里云】短信签名', 'aliyunSmsSignName', '领课网络', b'1', '短信签名', 1, '2021-12-10 15:05:10', '2022-09-22 16:32:53');
INSERT INTO `sys_config` VALUES (499, 5, 1, '【阿里云】短信Key ID', 'aliyunSmsAccessKeyId', '-', b'1', '阿里云AccessKeyId', 30, '2021-12-10 15:09:38', '2022-10-09 08:50:54');
INSERT INTO `sys_config` VALUES (500, 5, 1, '【阿里云】短信Key Secret', 'aliyunSmsAccessKeySecret', '-', b'1', '阿里云云AccessKeySecret', 31, '2021-12-10 15:06:55', '2022-10-09 08:50:52');
INSERT INTO `sys_config` VALUES (503, 5, 1, '【阿里云】验证码短信Code', 'aliyunSmsAuthCode', '-', b'1', '短信模板：您的验证码${code}，该验证码5分钟内有效，请勿泄漏于他人！', 50, '2021-12-10 15:11:43', '2023-05-10 10:16:51');
INSERT INTO `sys_config` VALUES (504, 5, 1, '【领课云】短信签名', 'lkyunSmsSignName', '领课网络', b'1', '短信签名', 60, '2021-12-13 10:21:35', '2022-11-14 17:31:23');
INSERT INTO `sys_config` VALUES (505, 5, 1, '【领课云】Key ID', 'lkyunSmsAccessKeyId', '-', b'1', '领课云AccessKeyId', 310, '2021-12-10 15:06:14', '2023-05-10 10:17:42');
INSERT INTO `sys_config` VALUES (506, 5, 1, '【领课云】Key Secret', 'lkyunSmsAccessKeySecret', '-', b'1', '领课云AccessKeySecret', 320, '2021-12-10 15:06:55', '2023-05-10 10:17:45');
INSERT INTO `sys_config` VALUES (507, 5, 1, '【领课云】验证码短信Code', 'lkyunSmsAuthCode', '-', b'1', '短信模板：您的验证码${code}，该验证码5分钟内有效，请勿泄漏于他人！', 340, '2021-12-13 10:17:41', '2023-05-10 10:17:47');
INSERT INTO `sys_config` VALUES (601, 6, 1, '【支付宝支付】应用ID', 'aliPayAppId', '-', b'1', '支付宝App Id', 20, '2022-03-03 15:23:43', '2022-10-09 08:50:36');
INSERT INTO `sys_config` VALUES (602, 6, 1, '【支付宝支付】商户私钥', 'aliPayAppPrivateKey', '-', b'0', '支付宝App Private Key', 40, '2022-03-03 15:25:47', '2022-10-09 08:50:34');
INSERT INTO `sys_config` VALUES (603, 6, 1, '【支付宝支付】公钥', 'aliPayPublicKey', '-', b'0', '支付宝Public Key', 50, '2022-03-03 15:26:26', '2022-10-09 08:50:31');
INSERT INTO `sys_config` VALUES (604, 6, 1, '【微信支付】商户ID', 'wxPayMchId', '-', b'1', '微信支付Mch Id', 70, '2022-03-03 15:17:40', '2022-09-22 16:29:45');
INSERT INTO `sys_config` VALUES (605, 6, 1, '【微信支付】应用ID', 'wxPayAppId', '-', b'1', '微信支付App Id', 80, '2022-03-03 14:52:20', '2022-09-22 16:29:43');
INSERT INTO `sys_config` VALUES (606, 6, 1, '【微信支付】商户证书', 'wxPayMchPrivateCert', '-', b'0', '微信支付商户证书', 90, '2022-03-03 15:19:35', '2022-09-22 16:29:41');
INSERT INTO `sys_config` VALUES (607, 6, 1, '【微信支付】商户私钥', 'wxPayWxMchPrivateKey', '-', b'0', '微信支付Mch Private Key', 100, '2022-03-03 15:18:36', '2022-09-22 16:29:38');
INSERT INTO `sys_config` VALUES (608, 6, 1, '【微信支付】API V3 Key', 'wxPayApiV3Key', '-', b'1', '微信支付API秘钥(V3 Key)', 110, '2022-03-03 15:20:39', '2022-09-22 16:29:36');
INSERT INTO `sys_config` VALUES (701, 3, 1, '【保利威】AppID', 'polyvAppId', '-', b'1', '【保利威】AppID', 60, '2023-02-19 13:45:23', '2023-02-19 13:48:15');
INSERT INTO `sys_config` VALUES (702, 3, 1, '【保利威】AppSecret', 'polyvAppSecret', '-', b'1', '【保利威】AppSecret', 70, '2023-02-19 13:46:27', '2023-02-19 13:48:25');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(0) UNSIGNED NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `user_id` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '操作人ID',
  `real_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '真实姓名',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'IP地址',
  `operation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户操作',
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方法',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求路径',
  `content` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求参数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台操作日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序',
  `parent_id` bigint(0) UNSIGNED NOT NULL COMMENT '父ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `menu_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由路径',
  `auth_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '权限值',
  `menu_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `menu_type` tinyint(0) NOT NULL DEFAULT 1 COMMENT '菜单类型(1目录,2菜单,3权限)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1639622113793937410 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1153478139284656128, '2019-08-01 16:38:56', '2022-09-24 14:02:51', 1, 1, 0, '概况总览', '/dashboard', '', '概况总览', '概况', 1);
INSERT INTO `sys_menu` VALUES (1153478139284656129, '2019-07-23 09:33:11', '2022-08-30 16:34:44', 1, 10, 0, '常用功能', '/common', '', '常用功能', '订单管理', 1);
INSERT INTO `sys_menu` VALUES (1153478559176429569, '2019-07-23 09:34:51', '2022-08-30 16:42:35', 1, 50, 0, '课程管理', '/course', '', '课程管理', '课程管理', 1);
INSERT INTO `sys_menu` VALUES (1153478801917579265, '2019-07-23 09:35:49', '2022-09-22 22:27:18', 1, 80, 0, '用户管理', '/users', '', '学员管理', '学员管理', 1);
INSERT INTO `sys_menu` VALUES (1153478801917579266, '2019-07-23 10:52:35', '2022-09-24 14:03:36', 1, 100, 0, '权限管理', '/pms', '', '权限管理', '权限管理', 1);
INSERT INTO `sys_menu` VALUES (1153493010483089409, '2019-07-23 10:32:17', '2022-08-30 16:35:02', 1, 2, 1153478139284656129, '课程订单', '/order', '', '课程订单', '订单列表', 2);
INSERT INTO `sys_menu` VALUES (1153493835884367873, '2019-07-23 10:35:33', '2022-08-30 16:42:06', 1, 10, 1153478139284656129, '轮播管理', '/carousel', '', '轮播管理', 'PC端设置', 2);
INSERT INTO `sys_menu` VALUES (1153494438295474177, '2019-07-23 10:37:57', '2022-08-30 16:43:09', 1, 5, 1153478139284656129, '专区管理', '/zone', '', '专区管理', 'PC端设置', 2);
INSERT INTO `sys_menu` VALUES (1153494935626682369, '2019-07-23 10:39:56', '2022-08-30 16:41:57', 1, 20, 1153478139284656129, '头部导航', '/nav', '', '头部导航', '头部导航列表接口', 2);
INSERT INTO `sys_menu` VALUES (1153495155055890433, '2019-07-23 10:40:48', '2022-08-30 16:41:59', 1, 40, 1153478139284656129, '友情链接', '/link', '', '友情链接', '友情链接', 2);
INSERT INTO `sys_menu` VALUES (1153495948102307842, '2019-07-23 10:43:57', '2022-09-02 11:54:46', 1, 1, 1153478559176429569, '课程列表', '/list', '', '课程管理', '课程列表', 2);
INSERT INTO `sys_menu` VALUES (1153496241066053634, '2019-07-23 10:45:07', '2022-08-30 16:47:37', 1, 10, 1153478559176429569, '分类管理', '/category', '', '课程分类', '分类列表', 2);
INSERT INTO `sys_menu` VALUES (1153496795896975361, '2019-07-23 10:47:19', '2022-09-22 22:28:16', 1, 3, 1153478801917579265, '讲师列表', '/lecturer', '', '讲师管理', '讲师列表', 2);
INSERT INTO `sys_menu` VALUES (1153498940276838401, '2019-07-23 10:55:50', '2022-09-24 14:18:04', 1, 1, 1153478801917579266, '账号管理', '/user', '', '用户管理', '用户管理', 2);
INSERT INTO `sys_menu` VALUES (1153499292782923778, '2019-07-23 10:57:14', '2022-09-24 14:09:45', 1, 2, 1153478801917579266, '角色管理', '/role', '', '角色管理', '角色管理', 2);
INSERT INTO `sys_menu` VALUES (1153499423880089601, '2019-07-23 10:57:46', '2022-09-24 14:18:05', 1, 3, 1153478801917579266, '菜单管理', '/menu', '', '菜单管理', '菜单管理', 2);
INSERT INTO `sys_menu` VALUES (1154683387156230146, '2019-07-26 17:22:25', '2022-09-24 08:55:34', 1, 1, 1153493010483089409, '修改', '', 'user:admin:order:info:edit', NULL, '订单查看', 3);
INSERT INTO `sys_menu` VALUES (1156030361037971458, '2019-07-30 10:34:49', '2022-09-24 09:42:18', 1, 1, 1153493835884367873, '保存', '', 'system:admin:website:carousel:save', NULL, '保存接口', 3);
INSERT INTO `sys_menu` VALUES (1156030992003899394, '2019-07-30 10:37:20', '2022-09-24 09:42:31', 1, 4, 1153493835884367873, '修改', '', 'system:admin:website:carousel:edit', NULL, '更新接口', 3);
INSERT INTO `sys_menu` VALUES (1156032296088510465, '2019-07-30 10:42:31', '2022-09-24 08:56:40', 1, 2, 1153494438295474177, '保存', '', 'course:admin:zone:save', NULL, '保存接口', 3);
INSERT INTO `sys_menu` VALUES (1156032474489036801, '2019-07-30 10:43:13', '2022-09-24 08:56:45', 1, 3, 1153494438295474177, '删除', '', 'course:admin:zone:delete', NULL, '删除', 3);
INSERT INTO `sys_menu` VALUES (1156033449756991490, '2019-07-30 10:47:06', '2022-09-24 08:56:48', 1, 4, 1153494438295474177, '修改', '', 'course:admin:zone:edit', NULL, '修改页面', 3);
INSERT INTO `sys_menu` VALUES (1156033853009960961, '2019-07-30 10:48:42', '2022-09-24 08:55:24', 1, 1, 1153494438295474177, '列出', '', 'course:admin:zone:page', NULL, '更新接口', 3);
INSERT INTO `sys_menu` VALUES (1156036831607529473, '2019-07-30 11:00:32', '2022-09-24 09:42:44', 1, 1, 1153493835884367873, '列表', '', 'system:admin:website:carousel:page', NULL, '修改页面弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156037020263129089, '2019-07-30 11:01:17', '2022-09-24 09:42:57', 1, 3, 1153493835884367873, '删除', '', 'system:admin:website:carousel:delete', NULL, '删除接口', 3);
INSERT INTO `sys_menu` VALUES (1156039959035781122, '2019-07-30 11:12:58', '2022-09-24 09:47:09', 1, 2, 1153494935626682369, '保存', '', 'system:admin:website:nav:save', NULL, '保存接口', 3);
INSERT INTO `sys_menu` VALUES (1156040289144283137, '2019-07-30 11:14:16', '2022-09-24 09:47:14', 1, 3, 1153494935626682369, '删除', '', 'system:admin:website:nav:delete', NULL, '删除接口', 3);
INSERT INTO `sys_menu` VALUES (1156040630476742658, '2019-07-30 11:15:38', '2022-09-24 09:47:21', 1, 4, 1153494935626682369, '修改', '', 'system:admin:website:nav:edit', NULL, '修改弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156040868612546562, '2019-07-30 11:16:34', '2022-09-24 09:46:49', 1, 1, 1153494935626682369, '列出', '', 'system:admin:website:nav:page', NULL, '更新接口', 3);
INSERT INTO `sys_menu` VALUES (1156099301554528257, '2019-07-30 15:08:46', '2022-09-24 09:49:44', 1, 2, 1153495155055890433, '保存', '', 'system:admin:website:link:save', NULL, '保存接口', 3);
INSERT INTO `sys_menu` VALUES (1156099420307857410, '2019-07-30 15:09:14', '2022-09-24 09:49:50', 1, 3, 1153495155055890433, '删除', '', 'system:admin:website:link:delete', NULL, '删除接口', 3);
INSERT INTO `sys_menu` VALUES (1156099620929806338, '2019-07-30 15:10:02', '2022-09-24 09:49:58', 1, 4, 1153495155055890433, '修改', '', 'system:admin:website:link:edit', NULL, '修改弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156099736667430914, '2019-07-30 15:10:30', '2022-09-24 09:49:34', 1, 1, 1153495155055890433, '列出', '', 'system:admin:website:link:page', NULL, '更新接口', 3);
INSERT INTO `sys_menu` VALUES (1156102063474352129, '2019-07-30 15:19:44', '2023-10-12 13:55:21', 1, 2, 1153495948102307842, '保存', '', 'course:admin:course:save', NULL, '修改弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156102212472807425, '2019-07-30 15:20:20', '2022-09-26 14:38:49', 1, 1, 1153495948102307842, '列出', '', 'course:admin:course:page', NULL, '更新接口', 3);
INSERT INTO `sys_menu` VALUES (1156389609588662274, '2019-07-31 10:22:21', '2022-09-24 10:01:52', 1, 3, 1153496241066053634, '删除', '', 'course:admin:category:delete', NULL, '添加弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156389834885701634, '2019-07-31 10:23:15', '2022-09-24 10:01:40', 1, 2, 1153496241066053634, '保存', '', 'course:admin:category:save', NULL, '保存接口', 3);
INSERT INTO `sys_menu` VALUES (1156390300390531073, '2019-07-31 10:25:06', '2022-09-24 10:01:58', 1, 4, 1153496241066053634, '修改', '', 'course:admin:category:edit', NULL, '修改弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156390708198514689, '2019-07-31 10:26:43', '2022-09-24 11:34:00', 1, 1, 1153496241066053634, '列出', '', 'course:admin:category:list', NULL, '删除', 3);
INSERT INTO `sys_menu` VALUES (1156393404230017026, '2019-07-31 10:37:26', '2022-09-24 10:05:09', 1, 1, 1153496795896975361, '保存', '', 'user:admin:lecturer:save', NULL, '修改、查看、设置分成弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156393596735987714, '2019-07-31 10:38:11', '2022-09-24 10:04:58', 1, 1, 1153496795896975361, '列出', '', 'user:admin:lecturer:page', NULL, '更新', 3);
INSERT INTO `sys_menu` VALUES (1156467976803459073, '2019-07-31 15:33:45', '2022-09-24 11:16:08', 1, 2, 1153498940276838401, '添加', '', 'system:admin:sys:user:save', NULL, '保存接口', 3);
INSERT INTO `sys_menu` VALUES (1156468115706224642, '2019-07-31 15:34:18', '2022-09-24 11:16:11', 1, 3, 1153498940276838401, '删除', '', 'system:admin:sys:user:delete', NULL, '删除接口', 3);
INSERT INTO `sys_menu` VALUES (1156471160762540033, '2019-07-31 15:46:24', '2022-09-24 11:18:03', 1, 4, 1153498940276838401, '修改', '', 'system:admin:sys:user:edit', NULL, '修改弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156471428245889026, '2019-07-31 15:47:28', '2022-08-31 09:56:55', 1, 10, 1153498940276838401, '修改密码', '', 'system:admin:sys:user:password', NULL, '更新接口', 3);
INSERT INTO `sys_menu` VALUES (1156472210034794497, '2019-07-31 15:50:34', '2022-09-24 11:21:47', 1, 10, 1153498940276838401, '设置角色', '', 'system:admin:sys:role:user:list\nsystem:admin:sys:role:user:save', NULL, '设置角色弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156473195461353473, '2019-07-31 15:54:29', '2022-09-24 11:17:52', 1, 1, 1153498940276838401, '列出', '', 'system:admin:sys:user:page\nsystem:admin:sys:user:view', NULL, '列出用户', 3);
INSERT INTO `sys_menu` VALUES (1156473846425722881, '2019-07-31 15:57:04', '2022-08-30 15:43:40', 1, 1, 1153499292782923778, '添加', '', 'system:admin:sys:role:save', NULL, '添加弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156474159387910146, '2019-07-31 15:58:19', '2022-09-24 11:15:39', 1, 3, 1153499292782923778, '删除', '', 'system:admin:sys:role:delete', NULL, '删除接口', 3);
INSERT INTO `sys_menu` VALUES (1156475549820657665, '2019-07-31 16:03:51', '2022-09-24 11:15:42', 1, 4, 1153499292782923778, '修改', '', 'system:admin:sys:role:edit', NULL, '修改修改弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156475975043391490, '2019-07-31 16:05:32', '2022-09-24 11:20:34', 1, 100, 1153499292782923778, '分配菜单', '', 'system:admin:sys:menu:role:list\nsystem:admin:sys:menu:role:save', NULL, '设置权限弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156477233678524418, '2019-07-31 16:10:32', '2022-09-24 10:57:57', 1, 2, 1153499423880089601, '保存', '', 'system:admin:sys:menu:save', NULL, '添加弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156477431565787138, '2019-07-31 16:11:19', '2022-09-24 10:58:05', 1, 3, 1153499423880089601, '删除', '', 'system:admin:sys:menu:delete', NULL, '删除接口', 3);
INSERT INTO `sys_menu` VALUES (1156478453679923201, '2019-07-31 16:15:23', '2022-09-24 11:00:56', 1, 1, 1153499423880089601, '列出', '', 'system:admin:sys:menu:list\nsystem:admin:sys:menu:view', NULL, '修改弹窗', 3);
INSERT INTO `sys_menu` VALUES (1156478738817097730, '2019-07-31 16:16:31', '2022-09-24 11:12:39', 1, 4, 1153499423880089601, '更新', '', 'system:admin:sys:menu:edit', NULL, '更新', 3);
INSERT INTO `sys_menu` VALUES (1158310111785873409, '2019-08-05 17:33:44', '2022-09-24 08:55:30', 1, 1, 1153493010483089409, '列出', '', 'user:admin:order:info:page', NULL, '修改备注', 3);
INSERT INTO `sys_menu` VALUES (1160850528846749698, '2019-08-12 17:48:27', '2022-08-30 16:47:32', 1, 1, 1153478801917579265, '学员列表', '/list', '', '学员管理', '学员列表', 2);
INSERT INTO `sys_menu` VALUES (1160851003339972610, '2019-08-12 17:50:20', '2022-09-24 10:04:37', 1, 1, 1160850528846749698, '修改', '', 'user:admin:users:edit', NULL, '修改、查看弹窗', 3);
INSERT INTO `sys_menu` VALUES (1160851295330639874, '2019-08-12 17:51:29', '2022-09-24 10:04:28', 1, 1, 1160850528846749698, '列出', '', 'user:admin:users:page', NULL, '更新接口', 3);
INSERT INTO `sys_menu` VALUES (1532239489307533314, '2022-06-02 13:55:36', '2022-09-24 14:21:09', 1, 1, 1153478139284656128, '概况总览', '/', '', '概况总览', '概况', 2);
INSERT INTO `sys_menu` VALUES (1564520814505746433, '2022-08-30 15:50:04', '2022-09-24 11:17:34', 1, 1, 1153499292782923778, '列出', '', 'system:admin:sys:role:page\nsystem:admin:sys:role:view', NULL, NULL, 3);
INSERT INTO `sys_menu` VALUES (1565592545140002818, '2022-09-02 14:48:44', '2022-09-24 10:41:01', 1, 2, 1153478559176429569, '课程资源', '/resource', ' ', '课程资源', NULL, 2);
INSERT INTO `sys_menu` VALUES (1567783867401756674, '2022-09-08 15:56:16', '2022-09-24 14:18:06', 1, 1, 1153478801917579266, '配置管理', '/config', ' ', '配置管理', NULL, 2);
INSERT INTO `sys_menu` VALUES (1573120189033185281, '2022-09-23 09:20:54', '2022-09-24 14:20:26', 1, 1, 1532239489307533314, '登录人数统计', '', 'user:admin:stat:login', NULL, NULL, 3);
INSERT INTO `sys_menu` VALUES (1573120499143245825, '2022-09-23 09:22:08', '2022-09-23 09:23:05', 1, 100, 1532239489307533314, '点播套餐统计', '', 'system:admin:stat:vod', NULL, NULL, 3);
INSERT INTO `sys_menu` VALUES (1573492156370255874, '2022-09-24 09:58:58', '2022-09-24 09:58:58', 1, 3, 1153495948102307842, '删除', '', 'course:admin:course:delete', NULL, NULL, 3);
INSERT INTO `sys_menu` VALUES (1573492202025254913, '2022-09-24 09:59:09', '2022-09-26 14:38:45', 1, 4, 1153495948102307842, '修改', '', 'course:admin:course:edit', NULL, NULL, 3);
INSERT INTO `sys_menu` VALUES (1573492329754394626, '2022-09-24 09:59:40', '2022-09-24 09:59:57', 1, 1, 1565592545140002818, '列出', '', 'course:admin:resource:page', NULL, NULL, 3);
INSERT INTO `sys_menu` VALUES (1573492379121352706, '2022-09-24 09:59:51', '2023-06-05 15:41:10', 1, 2, 1565592545140002818, '保存', '', 'course:admin:resource:save', NULL, NULL, 3);
INSERT INTO `sys_menu` VALUES (1573492445341024258, '2022-09-24 10:00:07', '2022-09-24 10:00:07', 1, 3, 1565592545140002818, '删除', '', 'course:admin:resource:delete', NULL, NULL, 3);
INSERT INTO `sys_menu` VALUES (1573492482569666562, '2022-09-24 10:00:16', '2022-09-24 10:00:16', 1, 4, 1565592545140002818, '修改', '', 'course:admin:resource:edit', NULL, NULL, 3);
INSERT INTO `sys_menu` VALUES (1573493755847114754, '2022-09-24 10:05:20', '2022-09-24 10:05:20', 1, 3, 1153496795896975361, '删除', '', 'user:admin:lecturer:delete', NULL, NULL, 3);
INSERT INTO `sys_menu` VALUES (1573493794539569154, '2022-09-24 10:05:29', '2022-09-24 10:05:29', 1, 4, 1153496795896975361, '修改', '', 'user:admin:lecturer:edit', NULL, NULL, 3);
INSERT INTO `sys_menu` VALUES (1573494086966444034, '2022-09-24 10:06:39', '2022-09-24 10:07:15', 1, 1, 1567783867401756674, '列出', '', 'system:admin:sys:config:list', NULL, NULL, 3);
INSERT INTO `sys_menu` VALUES (1573494211377889282, '2022-09-24 10:07:08', '2022-09-24 10:07:08', 1, 100, 1567783867401756674, '修改', '', 'system:admin:sys:config:edit', NULL, NULL, 3);
INSERT INTO `sys_menu` VALUES (1574287231530647553, '2022-09-26 14:38:19', '2022-09-26 14:44:41', 1, 100, 1153495948102307842, '章节管理', '', 'course:admin:course:chapter:page\ncourse:admin:course:chapter:edit\ncourse:admin:course:chapter:save\ncourse:admin:course:chapter:delete\ncourse:admin:course:chapter:period:edit\ncourse:admin:course:chapter:period:save\ncourse:admin:course:chapter:period:delete', NULL, NULL, 3);
INSERT INTO `sys_menu` VALUES (1574291916324945922, '2022-09-26 14:56:56', '2022-09-26 14:57:59', 1, 100, 1153494438295474177, '课程管理', '', 'course:admin:zone:course:page\ncourse:admin:zone:course:edit\ncourse:admin:zone:course:save\ncourse:admin:zone:course:delete', NULL, NULL, 3);
INSERT INTO `sys_menu` VALUES (1581266107501166593, '2022-10-15 20:49:53', '2023-10-12 13:56:09', 1, 100, 1565592545140002818, '上传', '', 'course:admin:resource:vod:config\nsystem:admin:upload:doc\nsystem:admin:upload:pic', NULL, NULL, 3);
INSERT INTO `sys_menu` VALUES (1585200121060564994, '2022-10-26 17:22:15', '2022-10-26 17:22:20', 1, 10, 1153478801917579265, '登录日志', '/logLogin', NULL, '课程订单', NULL, 2);
INSERT INTO `sys_menu` VALUES (1585200197719859202, '2022-10-26 17:22:33', '2022-10-26 17:22:33', 1, 100, 1585200121060564994, '列出', '', 'user:admin:log:login:page', NULL, NULL, 3);
INSERT INTO `sys_menu` VALUES (1596067580820398082, '2022-11-25 17:05:39', '2023-03-25 21:35:27', 1, 100, 1153495948102307842, '数据', '', 'course:admin:user:course:record\ncourse:admin:user:study:page', NULL, NULL, 3);
INSERT INTO `sys_menu` VALUES (1627178918674022401, '2023-02-19 13:31:00', '2023-02-19 13:31:00', 1, 110, 1567783867401756674, '视频云初始化', '', 'system:admin:sys:config:video:init', NULL, NULL, 3);
INSERT INTO `sys_menu` VALUES (1639622113793937409, '2023-03-25 21:35:49', '2023-03-25 21:36:02', 1, 100, 1160850528846749698, '数据', '', 'course:admin:user:course:page\ncourse:admin:user:study:page', NULL, NULL, 3);

-- ----------------------------
-- Table structure for sys_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_role`;
CREATE TABLE `sys_menu_role`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序',
  `menu_id` bigint(0) UNSIGNED NOT NULL COMMENT '菜单ID',
  `role_id` bigint(0) UNSIGNED NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1712389040806932482 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu_role
-- ----------------------------
INSERT INTO `sys_menu_role` VALUES (1712388980614475777, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1153478139284656128, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980660613121, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1532239489307533314, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980685778945, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1573120189033185281, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980698361858, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1573120499143245825, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980715139074, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1153478139284656129, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980727721986, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1153493010483089409, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980748693505, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1158310111785873409, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980761276417, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1154683387156230146, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980778053634, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1153494438295474177, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980790636545, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156033853009960961, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980807413762, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156032296088510465, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980819996674, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156032474489036801, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980836773889, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156033449756991490, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980853551106, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1574291916324945922, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980866134017, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1153493835884367873, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980882911233, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156036831607529473, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980899688449, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156030361037971458, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980916465666, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156037020263129089, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980929048578, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156030992003899394, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980945825793, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1153494935626682369, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980958408705, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156040868612546562, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980970991618, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156039959035781122, 1);
INSERT INTO `sys_menu_role` VALUES (1712388980987768834, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156040289144283137, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981000351746, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156040630476742658, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981017128961, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1153495155055890433, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981033906178, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156099736667430914, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981050683393, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156099301554528257, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981067460609, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156099420307857410, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981080043522, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156099620929806338, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981096820738, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1153478559176429569, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981117792258, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1153495948102307842, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981130375169, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156102212472807425, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981147152386, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156102063474352129, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981163929601, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1573492156370255874, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981180706818, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1573492202025254913, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981193289729, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1596067580820398082, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981205872641, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1574287231530647553, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981218455553, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1565592545140002818, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981231038465, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1573492329754394626, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981243621378, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1573492379121352706, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981256204289, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1573492445341024258, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981268787202, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1573492482569666562, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981277175809, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1581266107501166593, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981289758721, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1153496241066053634, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981302341633, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156390708198514689, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981314924546, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156389834885701634, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981323313153, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156389609588662274, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981335896066, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156390300390531073, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981348478978, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1153478801917579265, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981361061890, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1160850528846749698, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981373644801, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1160851295330639874, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981386227714, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1160851003339972610, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981398810625, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1639622113793937409, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981411393538, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1153496795896975361, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981423976449, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156393596735987714, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981436559361, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156393404230017026, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981453336577, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1573493755847114754, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981465919490, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1573493794539569154, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981478502401, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1585200121060564994, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981495279617, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1585200197719859202, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981507862530, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1153478801917579266, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981520445442, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1567783867401756674, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981533028353, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1573494086966444034, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981545611266, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1573494211377889282, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981558194177, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1627178918674022401, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981570777090, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1153498940276838401, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981583360001, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156473195461353473, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981595942913, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156467976803459073, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981608525825, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156468115706224642, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981621108737, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156471160762540033, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981633691649, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156472210034794497, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981646274561, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156471428245889026, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981658857473, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1153499292782923778, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981671440386, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1564520814505746433, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981679828993, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156473846425722881, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981692411905, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156474159387910146, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981704994818, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156475549820657665, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981713383425, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156475975043391490, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981730160642, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1153499423880089601, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981738549250, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156478453679923201, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981751132162, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156477233678524418, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981763715074, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156477431565787138, 1);
INSERT INTO `sys_menu_role` VALUES (1712388981776297985, '2023-10-12 16:45:22', '2023-10-12 16:45:22', 1, 1, 1156478738817097730, 1);
INSERT INTO `sys_menu_role` VALUES (1712389039699636225, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1153478139284656128, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039716413442, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1532239489307533314, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039728996354, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1573120189033185281, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039745773569, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1573120499143245825, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039758356481, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1153478139284656129, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039775133698, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1153493010483089409, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039787716610, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1158310111785873409, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039800299522, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1154683387156230146, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039812882434, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1153494438295474177, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039825465346, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156033853009960961, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039838048258, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156032296088510465, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039850631169, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156032474489036801, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039863214082, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156033449756991490, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039879991298, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1574291916324945922, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039892574210, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1153493835884367873, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039905157121, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156036831607529473, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039921934337, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156030361037971458, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039934517250, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156037020263129089, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039947100162, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156030992003899394, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039959683073, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1153494935626682369, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039976460290, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156040868612546562, 3);
INSERT INTO `sys_menu_role` VALUES (1712389039989043201, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156039959035781122, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040001626114, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156040289144283137, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040010014722, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156040630476742658, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040022597634, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1153495155055890433, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040035180545, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156099736667430914, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040047763458, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156099301554528257, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040060346369, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156099420307857410, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040072929281, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156099620929806338, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040085512194, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1153478559176429569, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040093900801, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1153495948102307842, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040106483713, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156102212472807425, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040119066626, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156102063474352129, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040131649538, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1573492156370255874, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040140038145, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1573492202025254913, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040152621058, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1596067580820398082, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040169398273, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1574287231530647553, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040181981186, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1565592545140002818, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040194564098, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1573492329754394626, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040207147010, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1573492379121352706, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040219729921, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1573492445341024258, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040232312834, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1573492482569666562, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040244895746, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1581266107501166593, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040257478657, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1153496241066053634, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040270061570, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156390708198514689, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040282644481, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156389834885701634, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040295227393, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156389609588662274, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040307810305, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156390300390531073, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040320393217, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1153478801917579265, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040332976130, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1160850528846749698, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040345559042, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1160851295330639874, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040362336257, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1160851003339972610, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040374919170, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1639622113793937409, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040387502082, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1153496795896975361, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040400084994, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156393596735987714, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040416862210, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156393404230017026, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040429445122, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1573493755847114754, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040446222338, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1573493794539569154, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040458805250, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1585200121060564994, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040475582465, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1585200197719859202, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040488165377, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1153478801917579266, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040504942593, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1567783867401756674, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040517525506, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1573494086966444034, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040530108418, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1573494211377889282, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040542691329, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1627178918674022401, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040555274241, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1153498940276838401, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040567857153, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156473195461353473, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040597217281, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156467976803459073, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040613994498, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156468115706224642, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040634966018, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156471160762540033, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040651743233, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156472210034794497, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040668520450, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156471428245889026, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040676909057, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1153499292782923778, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040689491969, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1564520814505746433, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040706269185, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156473846425722881, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040723046402, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156474159387910146, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040735629314, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156475549820657665, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040748212226, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156475975043391490, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040760795138, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1153499423880089601, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040773378050, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156478453679923201, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040785960961, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156477233678524418, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040794349570, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156477431565787138, 3);
INSERT INTO `sys_menu_role` VALUES (1712389040806932481, '2023-10-12 16:45:36', '2023-10-12 16:45:36', 1, 1, 1156478738817097730, 3);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序',
  `role_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '2018-02-06 15:47:52', '2022-09-24 11:21:02', 1, 100, '超级管理员', '全部权限');
INSERT INTO `sys_role` VALUES (3, '2018-12-28 18:23:38', '2018-12-28 18:23:38', 1, 1, '演示角色', '仅有查看功能');

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序',
  `role_id` bigint(0) UNSIGNED NOT NULL COMMENT '角色ID',
  `user_id` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1714642864562012163 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色用户关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES (1573517760360738818, '2022-09-24 11:40:43', '2022-09-24 11:40:43', 1, 1, 1, 2);
INSERT INTO `sys_role_user` VALUES (1575363604110213122, '2022-09-29 13:55:26', '2022-09-29 13:55:26', 1, 1, 3, 3);
INSERT INTO `sys_role_user` VALUES (1656129282924101633, '2023-05-10 10:49:25', '2023-05-10 10:49:25', 1, 1, 1, 1656129262824996866);
INSERT INTO `sys_role_user` VALUES (1714642864562012162, '2023-10-18 22:01:30', '2023-10-18 22:01:30', 1, 1, 1, 1714642818722463745);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序',
  `mobile` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '手机',
  `mobile_salt` varchar(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码盐',
  `mobile_psw` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '登录密码',
  `real_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '真实姓名',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `AK_phone`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1714642818722463746 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台用户信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (2, '2022-09-28 20:24:35', '2023-10-18 21:25:20', 1, 100, '18800000000', '5028942950634c4aacf8f0cff6de74ec', '64F9CC7C724D58EFB33B6CA29E90D1B936A770BD', '管理员', '系统所有权限');
INSERT INTO `sys_user` VALUES (3, '2018-12-28 16:57:47', '2023-10-18 21:54:21', 1, 1, '13300000000', '7eee6feca86d428ea123c9130cb5927d', '64F9CC7C724D58EFB33B6CA29E90D1B936A770BD', '演示用户', '只有查看权限');
INSERT INTO `sys_user` VALUES (1656129262824996866, '2023-05-10 10:49:20', '2023-07-18 20:58:48', 1, 1, '18302045627', 'a2b4b3d58e07469798cfdbc5a68d3e54', '4FE51C4951C5B9E1B7838C9F673F4ACBEA21650E', '冯老师', '可提供有偿指导');
INSERT INTO `sys_user` VALUES (1714642818722463745, '2023-10-18 22:01:19', '2023-10-18 22:02:29', 1, 1, '19557864422', 'c181ec09f41346f38cde374e8f432820', '76B598F6A094FE441B04FE8BFB50372BFE61F8B0', 'jeffery', NULL);

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
-- Table structure for website_carousel
-- ----------------------------
DROP TABLE IF EXISTS `website_carousel`;
CREATE TABLE `website_carousel`  (
  `id` bigint(0) UNSIGNED NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1:正常，0:禁用)',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '排序',
  `carousel_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '广告标题',
  `carousel_img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '广告图片',
  `carousel_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '广告链接',
  `carousel_target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '广告跳转方式',
  `begin_time` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '广告信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of website_carousel
-- ----------------------------
INSERT INTO `website_carousel` VALUES (1, '1899-12-30 01:00:00', '1899-12-30 01:00:00', 1, 1, '领课教育系统', 'http://static.roncoos.com/os/11.jpg', 'https://www.roncoo.net/', '_blank', '2019-01-01 08:00:00', '2029-12-31 08:00:00');
INSERT INTO `website_carousel` VALUES (3, '1899-12-30 01:00:00', '1899-12-30 01:00:00', 1, 2, '龙果支付系统', 'http://static.roncoos.com/os/12.jpg', 'https://pay.roncoo.net/', '_blank', '2019-01-01 10:02:02', '2029-12-31 08:00:00');
INSERT INTO `website_carousel` VALUES (4, '1899-12-30 01:00:00', '1899-12-30 01:00:00', 1, 5, '视频点播宣传', 'https://static-dev.roncoo.com/course/587ead2ffb694d1ca1d28e262b54accb.png', 'https://www.roncoo.net/', '_blank', '2019-01-01 10:02:02', '2029-12-31 08:00:00');

-- ----------------------------
-- Table structure for website_link
-- ----------------------------
DROP TABLE IF EXISTS `website_link`;
CREATE TABLE `website_link`  (
  `id` bigint(0) NOT NULL COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1有效, 0无效)',
  `sort` int(0) NOT NULL DEFAULT 1 COMMENT '排序',
  `link_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '名称',
  `link_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '链接',
  `link_target` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '跳转方式(_blank，_self)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '站点友情链接' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of website_link
-- ----------------------------
INSERT INTO `website_link` VALUES (1141615695317078018, '2019-06-20 15:57:56', '2019-06-20 15:57:56', 1, 90, '龙果学院', 'https://www.roncoo.com/', '_blank');
INSERT INTO `website_link` VALUES (1143825091871023106, '2019-06-26 18:17:18', '2019-06-26 18:17:18', 1, 1, '领课网络', 'https://www.roncoo.net/', '_blank');

-- ----------------------------
-- Table structure for website_nav
-- ----------------------------
DROP TABLE IF EXISTS `website_nav`;
CREATE TABLE `website_nav`  (
  `id` bigint(0) NOT NULL DEFAULT 0 COMMENT '主键',
  `gmt_create` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `status_id` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(1有效, 0无效)',
  `sort` int(0) NOT NULL DEFAULT 1 COMMENT '排序',
  `nav_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '导航标题',
  `nav_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '导航url',
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '跳转方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '头部导航' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of website_nav
-- ----------------------------
INSERT INTO `website_nav` VALUES (1064696486139854849, '2018-11-20 09:47:57', '2022-09-22 20:42:39', 1, 1, '首页', '/index', '_self');
INSERT INTO `website_nav` VALUES (1064696486139854850, '2018-11-07 17:09:32', '2022-09-07 19:05:58', 1, 2, '课程中心', '/list', '_self');
INSERT INTO `website_nav` VALUES (1064696486139854851, '2019-01-16 15:49:36', '2022-09-29 11:52:43', 1, 3, '帮助文档', 'https://eduos.roncoo.net/doc?from=eduos', '_blank');
INSERT INTO `website_nav` VALUES (1085443582223257603, '2019-01-16 15:49:36', '2022-09-24 21:58:47', 1, 5, '体验环境(商业版)', 'https://demo-edu.roncoo.com/?from=eduos', '_blank');

SET FOREIGN_KEY_CHECKS = 1;
