/*
Navicat MySQL Data Transfer

Source Server         : yu
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2019-12-05 17:00:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for addnews
-- ----------------------------
DROP TABLE IF EXISTS `addnews`;
CREATE TABLE `addnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jinliId` int(11) DEFAULT NULL,
  `yuangongid` int(11) DEFAULT NULL,
  `stuId` int(11) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `jingliName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addnews
-- ----------------------------
INSERT INTO `addnews` VALUES ('1', '4', '2', '18', '2019-05-22 17:25:29', 'ysd');
INSERT INTO `addnews` VALUES ('2', '4', '3', '20', '2019-05-22 17:41:11', 'ysd');
INSERT INTO `addnews` VALUES ('3', '4', '2', '21', '2019-05-22 18:11:40', 'ysd');
INSERT INTO `addnews` VALUES ('4', '4', '2', '22', '2019-05-23 07:57:36', 'ysd');
INSERT INTO `addnews` VALUES ('5', '4', '2', '28', '2019-05-23 07:57:45', 'ysd');
INSERT INTO `addnews` VALUES ('6', '4', '2', '31', '2019-05-23 20:20:01', 'ysd');
INSERT INTO `addnews` VALUES ('7', '4', '6', '23', '2019-05-26 19:12:12', 'ysd');
INSERT INTO `addnews` VALUES ('8', '4', '2', '23', '2019-05-26 19:27:41', 'ysd');
INSERT INTO `addnews` VALUES ('9', '4', '2', '30', '2019-05-26 20:01:55', 'ysd');
INSERT INTO `addnews` VALUES ('10', '4', '2', '31', '2019-05-26 20:01:55', 'ysd');
INSERT INTO `addnews` VALUES ('11', '4', '2', '1', '2019-05-26 20:05:09', 'ysd');
INSERT INTO `addnews` VALUES ('12', '4', '2', '2', '2019-05-26 20:05:09', 'ysd');
INSERT INTO `addnews` VALUES ('13', '4', '2', '23', '2019-05-26 20:22:43', 'ysd');
INSERT INTO `addnews` VALUES ('14', '4', '2', '28', '2019-05-26 20:22:43', 'ysd');
INSERT INTO `addnews` VALUES ('15', '4', '3', '32', '2019-05-26 20:22:56', 'ysd');
INSERT INTO `addnews` VALUES ('16', '4', '3', '33', '2019-05-26 20:22:56', 'ysd');
INSERT INTO `addnews` VALUES ('17', '4', '3', '34', '2019-05-26 20:32:29', 'ysd');
INSERT INTO `addnews` VALUES ('18', '4', '3', '35', '2019-05-26 20:32:29', 'ysd');
INSERT INTO `addnews` VALUES ('19', '4', '3', '36', '2019-05-26 20:34:35', 'ysd');
INSERT INTO `addnews` VALUES ('20', '4', '3', '37', '2019-05-26 20:34:35', 'ysd');
INSERT INTO `addnews` VALUES ('21', '4', '2', '38', '2019-05-26 20:35:07', 'ysd');
INSERT INTO `addnews` VALUES ('22', '4', '2', '39', '2019-05-26 20:35:07', 'ysd');
INSERT INTO `addnews` VALUES ('23', '4', '2', '5', '2019-05-27 08:41:19', 'ysd');
INSERT INTO `addnews` VALUES ('24', '4', '2', '40', '2019-05-27 08:41:19', 'ysd');
INSERT INTO `addnews` VALUES ('25', '4', '2', '41', '2019-05-27 08:41:23', 'ysd');
INSERT INTO `addnews` VALUES ('35', null, '2', '8', '2019-05-29 11:35:56', null);
INSERT INTO `addnews` VALUES ('36', null, '3', '9', '2019-05-29 11:35:56', null);
INSERT INTO `addnews` VALUES ('37', null, '2', '14', '2019-05-29 11:35:56', null);
INSERT INTO `addnews` VALUES ('38', null, '3', '23', '2019-05-29 11:35:56', null);
INSERT INTO `addnews` VALUES ('39', null, '2', '25', '2019-05-29 11:35:56', null);
INSERT INTO `addnews` VALUES ('42', '4', '2', '26', '2019-05-29 11:42:08', 'ysd');
INSERT INTO `addnews` VALUES ('43', '4', '2', '27', '2019-05-29 11:42:08', 'ysd');
INSERT INTO `addnews` VALUES ('44', null, '2', '28', '2019-05-29 15:21:33', null);
INSERT INTO `addnews` VALUES ('45', null, '3', '29', '2019-05-29 15:21:33', null);
INSERT INTO `addnews` VALUES ('46', null, '2', '30', '2019-05-29 15:21:33', null);
INSERT INTO `addnews` VALUES ('47', null, '3', '31', '2019-05-29 15:21:33', null);
INSERT INTO `addnews` VALUES ('48', null, '2', '32', '2019-05-29 15:21:33', null);
INSERT INTO `addnews` VALUES ('50', '4', '22', '2', '2019-05-29 17:22:56', 'ysd');
INSERT INTO `addnews` VALUES ('51', '4', '22', '3', '2019-05-29 17:22:56', 'ysd');
INSERT INTO `addnews` VALUES ('52', '4', '22', '4', '2019-05-29 17:22:56', 'ysd');
INSERT INTO `addnews` VALUES ('53', '4', '32', '33', '2019-05-31 09:07:13', 'ysd');
INSERT INTO `addnews` VALUES ('54', '4', '32', '34', '2019-05-31 09:07:19', 'ysd');
INSERT INTO `addnews` VALUES ('55', '4', '32', '35', '2019-05-31 09:07:19', 'ysd');
INSERT INTO `addnews` VALUES ('56', '4', '32', '84', '2019-05-31 10:36:19', 'ysd');
INSERT INTO `addnews` VALUES ('57', '4', '2', '36', '2019-05-31 10:47:04', 'ysd');
INSERT INTO `addnews` VALUES ('58', '4', '2', '41', '2019-09-18 20:18:58', 'ysd');
INSERT INTO `addnews` VALUES ('59', '4', '2', '3', '2019-09-18 20:26:34', 'ysd');
INSERT INTO `addnews` VALUES ('60', '4', '2', '4', '2019-09-18 20:26:34', 'ysd');

-- ----------------------------
-- Table structure for askers
-- ----------------------------
DROP TABLE IF EXISTS `askers`;
CREATE TABLE `askers` (
  `askerId` int(11) NOT NULL AUTO_INCREMENT,
  `askerName` varchar(255) DEFAULT NULL COMMENT '发问者姓名',
  `checkState` varchar(255) DEFAULT NULL COMMENT '发问状态',
  `checkInTime` datetime DEFAULT NULL COMMENT '发问的时间',
  `userid` int(11) DEFAULT NULL COMMENT '改变状态',
  `weight` int(11) DEFAULT NULL COMMENT '重量',
  `roleName` varchar(255) DEFAULT NULL COMMENT '职业姓名',
  `bakContent` varchar(2000) DEFAULT NULL COMMENT '内容',
  PRIMARY KEY (`askerId`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of askers
-- ----------------------------
INSERT INTO `askers` VALUES ('2', 'yy', '已签到', '2019-05-17 11:08:15', '3', '75', '咨询师', '这一段时间表现不错');
INSERT INTO `askers` VALUES ('3', 'fish', '已签到', '2019-05-17 09:56:24', '2', '78', '网络咨询师', '我很满意');
INSERT INTO `askers` VALUES ('4', 'gsy', '已签到', '2019-05-17 13:31:43', '5', '77', '网络咨询师', null);
INSERT INTO `askers` VALUES ('6', 'zd', '已签到', '2019-05-17 14:02:08', '18', '77', '网络咨询师', '很棒');
INSERT INTO `askers` VALUES ('11', 'yy', '已签到', '2019-05-19 19:50:13', '3', '89', '咨询师', null);
INSERT INTO `askers` VALUES ('12', 'jack', '已签到', '2019-05-19 21:14:35', '11', '65', '网络咨询师', '还不错');
INSERT INTO `askers` VALUES ('13', 'yy', '已签到', '2019-05-21 11:00:09', '3', '65', '咨询师', '表现还行');
INSERT INTO `askers` VALUES ('14', 'fish', '已签到', '2019-05-21 15:16:36', '2', '56', '网络咨询师', null);
INSERT INTO `askers` VALUES ('15', 'fish', '已签到', '2019-05-22 19:53:48', '2', '76', '网络咨询师', null);
INSERT INTO `askers` VALUES ('16', 'fish', '已签到', '2019-05-23 07:56:03', '2', '87', '网络咨询师', null);
INSERT INTO `askers` VALUES ('17', 'fish', '已签到', '2019-05-24 08:56:18', '2', '87', '网络咨询师', null);
INSERT INTO `askers` VALUES ('18', 'fish', '已签到', '2019-05-27 08:05:59', '2', '87', '网络咨询师', null);
INSERT INTO `askers` VALUES ('19', 'yy', '已签到', '2019-05-27 08:06:25', '3', '67', '咨询师', null);
INSERT INTO `askers` VALUES ('22', 'zxj', '已签到', '2019-05-27 17:25:29', '7', '67', '网络咨询师', null);
INSERT INTO `askers` VALUES ('23', 'fish', '已签到', '2019-05-29 11:11:04', '2', '87', '网络咨询师', null);
INSERT INTO `askers` VALUES ('24', 'yy', '已签到', '2019-05-29 11:12:45', '3', '67', '咨询师', null);
INSERT INTO `askers` VALUES ('25', 'qwe', '已签到', '2019-05-29 17:18:46', '22', '88', '咨询师', null);
INSERT INTO `askers` VALUES ('26', 'asd', '已签到', '2019-05-30 09:52:02', '29', null, 'ew', null);
INSERT INTO `askers` VALUES ('27', 'yy', '已签到', '2019-05-30 11:21:09', '3', '67', '咨询师', null);
INSERT INTO `askers` VALUES ('28', 'fish', '已签到', '2019-05-30 14:49:36', '2', '87', '网络咨询师', 'hello');
INSERT INTO `askers` VALUES ('29', 'fish', '已签到', '2019-05-31 08:38:44', '2', '87', '网络咨询师', null);
INSERT INTO `askers` VALUES ('30', 'hac', '已签到', '2019-05-31 08:42:05', '32', null, '咨询师', null);
INSERT INTO `askers` VALUES ('31', 'fish', '已签到', '2019-12-05 09:04:57', '2', '87', '网络咨询师', null);

-- ----------------------------
-- Table structure for modules
-- ----------------------------
DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '模块编号',
  `text` varchar(25) DEFAULT NULL COMMENT '模块名称',
  `parentId` int(11) DEFAULT NULL COMMENT '父模块编号',
  `path` varchar(50) DEFAULT NULL COMMENT '模块路径',
  `weight` decimal(10,2) DEFAULT NULL COMMENT '权重',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of modules
-- ----------------------------
INSERT INTO `modules` VALUES ('10', '跟踪日志', '2', 'stu/netfollows', null);
INSERT INTO `modules` VALUES ('11', '我的客户', '2', 'stu/myStu', null);
INSERT INTO `modules` VALUES ('12', '网络客户', '2', 'stu/onlineStu', null);
INSERT INTO `modules` VALUES ('13', '员工签到', '1', 'emp/userCheck', null);
INSERT INTO `modules` VALUES ('15', '员工统计', '4', 'sta/sta', null);
INSERT INTO `modules` VALUES ('16', '模块管理', '3', 'syss/modules', null);
INSERT INTO `modules` VALUES ('17', '角色管理', '3', 'syss/jsgl', null);
INSERT INTO `modules` VALUES ('18', '用户管理', '3', 'syss/user', null);
INSERT INTO `modules` VALUES ('19', '全部学生', '2', 'stu/allStu', null);
INSERT INTO `modules` VALUES ('20', '员工分量', '1', 'emp/weight', null);
INSERT INTO `modules` VALUES ('21', '客户统计', '4', 'sta/stu', null);

-- ----------------------------
-- Table structure for netfollows
-- ----------------------------
DROP TABLE IF EXISTS `netfollows`;
CREATE TABLE `netfollows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` int(11) DEFAULT NULL COMMENT '学生编号',
  `studentName` varchar(255) DEFAULT NULL COMMENT '学生姓名',
  `followTime` datetime DEFAULT NULL COMMENT '跟踪时间',
  `nextFollowTime` datetime DEFAULT NULL COMMENT '下一次跟踪时间',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `userId` int(11) DEFAULT NULL COMMENT '用户编号',
  `followType` varchar(255) DEFAULT NULL COMMENT '跟踪类别',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `followState` varchar(255) DEFAULT NULL COMMENT '跟踪状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of netfollows
-- ----------------------------
INSERT INTO `netfollows` VALUES ('27', '26', '李皇', '2019-05-22 15:46:49', null, '活泼', '3', '面谈', null, '上门未报名');
INSERT INTO `netfollows` VALUES ('28', '21', '刘嵩', '2019-05-23 07:55:44', null, '你小子坏的哼', '2', '网络', null, '思量');
INSERT INTO `netfollows` VALUES ('29', '15', '刘悦儿', '2019-05-23 08:30:28', null, '还好', '2', '面谈', null, '上门未报名');
INSERT INTO `netfollows` VALUES ('30', '3', 'gsy', '2019-05-24 11:57:58', null, 'test', '3', '面谈', null, '思量');
INSERT INTO `netfollows` VALUES ('31', '5', '李丹', '2019-05-26 20:54:00', null, 'hehe', '2', '网络', null, '思量');
INSERT INTO `netfollows` VALUES ('32', '10', '孙德', '2019-05-26 20:58:17', null, '2222', '3', '面谈', null, '上门未报名');
INSERT INTO `netfollows` VALUES ('33', '9', '秦风', '2019-05-26 20:58:51', null, '姐妹们', '4', '面谈', null, '思量');
INSERT INTO `netfollows` VALUES ('34', '21', '刘嵩', '2019-05-27 08:20:44', null, '', '2', '面谈', null, '报名未进班');
INSERT INTO `netfollows` VALUES ('35', '1', '张三', '2019-05-29 17:24:41', null, 'youqingkuang', '22', '', null, '');
INSERT INTO `netfollows` VALUES ('36', '33', '张敏', '2019-05-31 09:08:29', null, 'nnnnn', '32', '网络', null, '上门未报名');

-- ----------------------------
-- Table structure for parentmodules
-- ----------------------------
DROP TABLE IF EXISTS `parentmodules`;
CREATE TABLE `parentmodules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parentmodules
-- ----------------------------
INSERT INTO `parentmodules` VALUES ('1', '员工系统', null);
INSERT INTO `parentmodules` VALUES ('2', '客户资源', null);
INSERT INTO `parentmodules` VALUES ('3', '系统管理', null);
INSERT INTO `parentmodules` VALUES ('4', '可视图化', null);

-- ----------------------------
-- Table structure for rolemodules
-- ----------------------------
DROP TABLE IF EXISTS `rolemodules`;
CREATE TABLE `rolemodules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) DEFAULT NULL COMMENT '角色编号',
  `moduleId` int(11) DEFAULT NULL COMMENT '功能模块编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rolemodules
-- ----------------------------
INSERT INTO `rolemodules` VALUES ('6', '1', '16');
INSERT INTO `rolemodules` VALUES ('7', '1', '17');
INSERT INTO `rolemodules` VALUES ('8', '1', '18');
INSERT INTO `rolemodules` VALUES ('48', '2', '10');
INSERT INTO `rolemodules` VALUES ('49', '2', '12');
INSERT INTO `rolemodules` VALUES ('151', '4', '13');
INSERT INTO `rolemodules` VALUES ('152', '4', '20');
INSERT INTO `rolemodules` VALUES ('153', '4', '10');
INSERT INTO `rolemodules` VALUES ('154', '4', '19');
INSERT INTO `rolemodules` VALUES ('155', '4', '15');
INSERT INTO `rolemodules` VALUES ('156', '4', '21');
INSERT INTO `rolemodules` VALUES ('170', '3', '10');
INSERT INTO `rolemodules` VALUES ('171', '3', '11');
INSERT INTO `rolemodules` VALUES ('172', '3', '12');
INSERT INTO `rolemodules` VALUES ('173', '3', '4');
INSERT INTO `rolemodules` VALUES ('174', '3', '21');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户组编号',
  `name` varchar(25) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', '超级管理员');
INSERT INTO `roles` VALUES ('2', '网络咨询师');
INSERT INTO `roles` VALUES ('3', '咨询师');
INSERT INTO `roles` VALUES ('4', '咨询经理');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `sex` int(255) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `status` varchar(255) DEFAULT NULL COMMENT '学历',
  `state` int(255) DEFAULT NULL COMMENT '状态',
  `msgSource` varchar(255) DEFAULT NULL COMMENT '来源渠道',
  `sourceUrl` varchar(255) DEFAULT NULL COMMENT '来源网站',
  `sourceKeyWorld` varchar(255) DEFAULT NULL COMMENT '来源关键词',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `netPusherId` int(11) DEFAULT NULL COMMENT '推销者id',
  `askerId` int(11) DEFAULT NULL COMMENT '发布者id',
  `qq` varchar(255) DEFAULT NULL,
  `weixin` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `learnForward` varchar(255) DEFAULT NULL COMMENT '来源部门',
  `isValid` int(11) DEFAULT NULL COMMENT '是否有效',
  `record` varchar(255) DEFAULT NULL COMMENT '课程方向',
  `isReturnVist` int(11) DEFAULT NULL COMMENT '是否回访',
  `firstVistTime` datetime DEFAULT NULL COMMENT '第一次回访时间',
  `isHome` int(255) DEFAULT NULL COMMENT '是否上门',
  `homeTime` datetime DEFAULT NULL COMMENT '上门时间',
  `lostValid` varchar(255) DEFAULT NULL COMMENT '无效原因',
  `isPay` int(11) DEFAULT NULL COMMENT '是否缴费',
  `payTime` datetime DEFAULT NULL COMMENT '缴费时间',
  `money` varchar(255) DEFAULT NULL COMMENT '金额',
  `isReturnMoney` int(255) DEFAULT NULL COMMENT '是否退费',
  `isInClass` int(11) DEFAULT NULL COMMENT '是否进班',
  `inClassTime` datetime DEFAULT NULL COMMENT '进班时间',
  `inClassContent` varchar(255) DEFAULT NULL COMMENT '进班备注',
  `askerContent` varchar(255) DEFAULT NULL COMMENT '退费原因',
  `isDel` int(11) DEFAULT NULL COMMENT '是否删除',
  `formPart` varchar(255) DEFAULT NULL COMMENT '来源部门',
  `concern` varchar(255) DEFAULT NULL COMMENT '影响',
  `isBaoBei` int(255) DEFAULT NULL COMMENT '是否报备',
  `ziXunName` varchar(255) DEFAULT NULL COMMENT '咨询师姓名',
  `createUser` varchar(255) DEFAULT NULL COMMENT '录入人',
  `dafen` int(11) DEFAULT NULL COMMENT '打分',
  `returnMoneyReason` varchar(255) DEFAULT NULL COMMENT '退费原因',
  `preMoney` varchar(255) DEFAULT NULL COMMENT '定金金额',
  `preMoneyTime` datetime DEFAULT NULL COMMENT '定金时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '张三', '2', '20', '17395728370', '本科', '2', '网络查询', 'bigfish.com', '报考', '新乡', '3', '1', '627839462@qq.com', '184927384', '听说这很不错', '2019-05-07 15:34:32', '人事部', '1', '0', '2', null, '2', null, null, '1', null, null, null, '2', null, null, null, null, null, null, '1', '李四', null, '100', null, null, null);
INSERT INTO `student` VALUES ('2', '王五', '2', '20', '12346956213', '本科', '1', '网络查询', 'baidu.com', '报考', '开封', '3', '1', '1236547892@qq.com', '1234567995462', '还行', '2019-05-13 22:25:01', '人事部', '1', '0', '2', null, '2', null, null, '2', null, null, null, '2', null, null, null, null, null, null, '1', '张三撒', null, '100', null, null, null);
INSERT INTO `student` VALUES ('3', 'gsy', '1', '14', '12345678909', '大专', '1', '网络查询', '131', '报考', '郑州', '2', '1', '11@11.com', '12345678909', '13131', '2019-05-14 18:11:00', '人事部', '2', '0', '2', null, '1', null, '太丑', '1', null, null, null, '2', null, null, null, null, null, null, '1', '刘芳', null, '100', null, null, null);
INSERT INTO `student` VALUES ('4', '哇', '2', '34', '12345678952', '本科', '2', '网络查询', 'baidu.com', '报考', '杭州', '2', '1', '1236547892@qq.com', '123456987', '还可以', '2019-05-13 18:11:04', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, '2', null, null, null, null, null, null, '1', '李红', null, '100', null, null, null);
INSERT INTO `student` VALUES ('5', '李丹', '2', '20', '13345698652', '本科', '1', '网络查询', 'baidu.com', '报考', '上海', '3', '1', '1236547896@qq.com', '12345698652', '你好吗', '2019-05-06 18:11:11', '人事部', '2', '0', '2', null, '1', null, '', '1', null, null, null, '2', null, null, null, null, null, null, '1', '李四', '333', '100', null, null, null);
INSERT INTO `student` VALUES ('6', '刘芳', '1', '22', '12364523652', '大专', '2', '网络查询', 'baidu.com', '报考', '北京', '2', '1', '1236578956@163.com', '12364523652', '挺好的', '2019-05-02 18:11:17', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, '2', null, null, null, null, null, null, '1', '刘芳', null, '90', null, null, null);
INSERT INTO `student` VALUES ('7', '黄芳', '2', '20', '12547896523', '本科', '1', '网络查询', 'baidu.com', '报考', '南京', '3', '1', '1254789652@qq.com', '12547896523', '想学的专业', '2019-05-02 18:11:22', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, '2', null, null, null, null, null, null, '1', '李红', null, '80', null, null, null);
INSERT INTO `student` VALUES ('8', '华润', '1', '19', '12365789562', '大专', '2', '网络查询', 'baidu.com', '报考', '湖南', '2', '1', '5524789652@qq.com', '12365789562', '喜欢的东西', '2019-04-02 18:11:30', '人事部', '1', '0', '2', null, '2', null, '影响市容', '2', null, null, null, '2', null, null, null, null, null, null, '1', '李四', null, '98', null, null, null);
INSERT INTO `student` VALUES ('9', '秦风', '1', '20', '12365412365', '本科', '2', '网络查询', 'baidu.com', '报考', '湖北', '3', '1', '5896574235@qq.com', '12365412365', '平常喜欢干什么', '2019-05-08 18:11:38', '人事部', '1', '0', '2', null, '2', null, null, '2', null, null, null, '2', null, null, null, null, null, null, '1', '刘芳', null, '100', null, null, null);
INSERT INTO `student` VALUES ('10', '孙德', '1', '25', '15621236547', '本科', '1', '网络查询', 'baidu.com', '报考', '湖北', '2', '1', '2254789652@qq.com', '15621236547', '你知道云时代吗', '2019-05-03 18:11:43', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李红', null, '90', null, null, null);
INSERT INTO `student` VALUES ('11', '李峰', '1', '20', '12365896542', '大专', '1', '网络查询', 'baidu.com', '报考', '南昌', '18', '1', '2254478965@163.com', '12365896542', '想学的专业', '2019-05-25 18:11:51', '人事部', '1', '0', '2', null, '2', null, null, '2', null, null, null, null, null, null, null, null, null, null, '1', '李四', null, '100', null, null, null);
INSERT INTO `student` VALUES ('12', '东方', '2', '22', '12542365981', '大专', '2', '网络查询', 'baidu.com', '报考', '越南', '3', '1', '5547789653@163.com', '12542365981', '喜欢的东西', '2019-05-17 18:11:57', '人事部', '1', '0', '2', null, '2', null, null, '2', null, null, null, null, null, null, null, null, null, null, '1', '李红', null, '90', null, null, null);
INSERT INTO `student` VALUES ('13', '皇甫', '2', '23', '12365478521', '本科', '1', '网络查询', 'baidu.com', '报考', '新疆', '18', '1', '5589635789@163.com', '12365478521', '挺好的', '2019-05-18 18:12:02', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘芳', null, '80', null, null, null);
INSERT INTO `student` VALUES ('14', '上官风', '1', '25', '12354265324', '大专', '1', '网络查询', 'baidu.com', '报考', '开封', '2', '1', '5585589625@163.com', '12354265324', '你知道云时代吗', '2019-04-03 18:12:09', '人事部', '1', '0', '2', null, '2', null, null, '2', null, null, null, null, null, null, null, null, null, null, '1', '李红', null, '90', null, null, null);
INSERT INTO `student` VALUES ('15', '刘悦儿', '2', '22', '12365478954', '本科', '1', '网络查询', 'baidu.com', '报考', '信阳', '2', '1', '12354789657@163.com', '12365478954', '平常喜欢干什么', '2019-05-16 18:12:23', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李红', null, '90', null, null, null);
INSERT INTO `student` VALUES ('16', '黄涛', '1', '20', '12547896521', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', '2', '1', '14452825651@163.com', '12547896521', '挺好的', '2019-04-11 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李四', null, '100', null, null, null);
INSERT INTO `student` VALUES ('17', '黄风', '1', '21', '12547874521', '大专', '2', '网络查询', 'baidu.com', '报考', '安徽', '2', '1', '11452825652@163.com', '12547896521', '挺好的', '2019-04-11 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李四', null, '100', null, null, null);
INSERT INTO `student` VALUES ('18', '李涛', '2', '23', '12247896521', '本科', '1', '网络查询', 'baidu.com', '报考', '信阳', '2', '1', '12452825621@163.com', '13547896522', '点赞', '2019-04-11 18:12:21', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李四', null, '100', null, null, null);
INSERT INTO `student` VALUES ('19', '杨阳', '1', '21', '12317896521', '大专', '2', '网络查询', 'baidu.com', '报考', '南阳', '3', '1', '14452825651@163.com', '12547816523', '还不错', '2019-04-12 18:12:29', '人事部', '1', '网站', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('20', '邵邵', '2', '20', '11447896521', '大专', '1', '网络查询', 'baidu.com', '报考', '郑州', '3', '1', '14452815651@163.com', '12547896524', '挺好的', '2019-04-11 18:12:19', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李五', null, '100', null, null, null);
INSERT INTO `student` VALUES ('21', '刘嵩', '1', '20', '12517896521', '大专', '2', '网络查询', 'baidu.com', '报考', '信阳', '2', '1', '15452825652@163.com', '12547896511', '挺好的', '2019-04-11 18:12:29', '人事部', '2', '0', '2', null, '1', null, 'chua', '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('22', '杨嵩', '2', '20', '16517896521', '大专', '2', '网络查询', 'baidu.com', '报考', '海口', '2', '1', '16452825652@163.com', '12547896531', '很好的', '2019-04-11 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('23', '李达', '1', '22', '19517896121', '大专', '2', '网络查询', 'baidu.com', '报考', '湖南', '3', '1', '17452825652@163.com', '12547896541', '专业不错', '2019-04-11 18:12:39', '人事部', '2', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('24', '刘嵩', '1', '20', '12517896121', '本科', '2', '网络查询', 'baidu.com', '报考', '湖北', '3', '1', '13452825652@163.com', '12547896551', '挺好的', '2019-04-11 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('25', '王二', '2', '20', '10517896521', '大专', '2', '网络查询', 'baidu.com', '报考', '四川', '2', '1', '13452825652@163.com', '1254789451', '挺好的', '2019-04-13 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('26', '李皇', '1', '21', '12517893521', '大专', '1', '网络查询', 'baidu.com', '报考', '汶川', '2', '1', '14452825152@163.com', '12547894521', '学校挺美的', '2019-04-19 18:12:29', '人事部', '2', '0', '2', null, '1', null, '太调皮', '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('27', '刘阳', '1', '20', '12517896521', '大专', '2', '网络查询', 'baidu.com', '报考', '漯河', '2', '1', '12452825652@163.com', '12547893521', '挺好的', '2019-05-11 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '90', null, null, null);
INSERT INTO `student` VALUES ('28', '李刚', '2', '20', '12527896521', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', '2', '1', '14452825650@163.com', '12547890531', '不错不错', '2019-05-21 18:12:29', '人事部', '2', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('29', '王尔', '1', '22', '12517816521', '本科', '2', '网络查询', 'baidu.com', '报考', '信阳', '2', '1', '11452825622@163.com', '12547896324', '挺好的', '2019-04-22 18:12:29', '人事部', '2', '0', '2', null, '1', null, 'hengbucuo', '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('30', '李奥', '1', '20', '12517896500', '大专', '1', '网络查询', 'baidu.com', '报考', '新乡', '2', '1', '11452825652@163.com', '12547896125', '不错不错', '2019-04-22 19:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李五', null, '100', null, null, null);
INSERT INTO `student` VALUES ('31', '刘奥', '2', '21', '12517826521', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', '3', '1', '11452825652@163.com', '12547896527', '学校可以', '2019-05-11 18:12:29', '人事部', '2', '0', '2', null, '1', null, '不看好', '1', null, null, null, null, null, null, null, null, null, null, '1', '张三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('32', '杨越', '1', '20', '12617896521', '大专', '2', '网络查询', 'baidu.com', '报考', '安徽', '2', '1', '12452825111@163.com', '12541116522', '可以可以', '2019-05-15 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('33', '张敏', '1', '20', '12517833321', '大专', '2', '网络查询', 'baidu.com', '报考', '浙江', '32', '1', '14452825622@163.com', '12547826524', '推荐学校', '2019-04-19 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '张大', null, '100', null, null, null);
INSERT INTO `student` VALUES ('34', '刘星星', '1', '20', '16517896521', '大专', '2', '网络查询', 'baidu.com', '报考', '湖南', '32', '1', '14252825652@163.com', '12542896512', '挺不错', '2019-04-21 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('35', '刘毅', '1', '21', '12517896511', '大专', '1', '网络查询', 'baidu.com', '报考', '周口', '32', '1', '14452825252@163.com', '12547892524', '挺好的', '2019-04-11 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('36', '李嵩', '2', '20', '12517826521', '大专', '2', '网络查询', 'baidu.com', '报考', '浙江', '2', '1', '14452835652@163.com', '12547196525', '大力支持', '2019-04-11 18:12:59', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('37', '黄鑫', '1', '21', '12517816521', '大专', '2', '网络查询', 'baidu.com', '报考', '西藏', '22', '1', '13452825652@163.com', '12517896535', '挺好的', '2019-04-12 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('38', '王嵩', '2', '22', '12537896521', '大专', '2', '网络查询', 'baidu.com', '报考', '上海', '2', '1', '12452825652@163.com', '12541896526', '挺好的', '2019-04-22 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('39', '汤东', '1', '21', '12517816521', '大专', '1', '网络查询', 'baidu.com', '报考', '新乡', '2', '1', '14452821652@163.com', '13547896521', '挺好的', '2019-04-11 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('40', '高嵩', '2', '20', '12527896524', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', '2', '1', '14252825652@163.com', '12517896521', '专业不错', '2019-04-11 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('41', '刘嵩', '2', '20', '12217896523', '大专', '1', '网络查询', 'baidu.com', '报考', '安徽', '2', '1', '14452825252@163.com', '12547296521', '挺好的', '2019-04-11 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘芳', null, '100', null, null, null);
INSERT INTO `student` VALUES ('42', '高雪', '1', '22', '12217896522', '大专', '2', '网络查询', 'baidu.com', '报考', '南阳', null, '1', '14453825252@163.com', '12347296521', '学校挺好的', '2019-05-21 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('43', '李娜娜', '1', '20', '12217896522', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', null, '1', '14452825251@163.com', '1254216511', '挺好的', '2019-05-11 18:12:19', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('44', '王雪', '2', '21', '11217896521', '大专', '1', '网络查询', 'baidu.com', '报考', '信阳', '2', '1', '14452825262@163.com', '125472927', '挺好的', '2019-04-11 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘芳', null, '100', null, null, null);
INSERT INTO `student` VALUES ('45', '王哈哈', '1', '20', '12217896890', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', null, '1', '14452825232@163.com', '127296532', '挺好的', '2019-05-12 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('46', '高嵩', '1', '20', '12917896521', '大专', '2', '网络查询', 'baidu.com', '报考', '安徽', '22', '1', '14452825252@163.com', '127296522', '非常不错', '2019-05-11 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘芳', null, '100', null, null, null);
INSERT INTO `student` VALUES ('47', '邵华', '1', '20', '12217896321', '大专', '2', '网络查询', 'baidu.com', '报考', '新乡', null, '1', '14452225111@163.com', '1547296114', '值得推荐', '2019-05-23 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('48', '李华', '2', '20', '12217896531', '大专', '1', '网络查询', 'baidu.com', '报考', '周口', null, '1', '14552825252@163.com', '1254796524', '非常不错', '2019-04-11 16:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘芳', null, '100', null, null, null);
INSERT INTO `student` VALUES ('49', '高洪', '2', '22', '13237896331', '大专', '1', '网络查询', 'baidu.com', '报考', '漯河', null, '1', '14452825551@163.com', '1354216525', '挺好的', '2019-04-16 19:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘芳', null, '100', null, null, null);
INSERT INTO `student` VALUES ('50', '高航', '1', '21', '12317896521', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', null, '1', '14352825252@163.com', '1354296522', '挺好的', '2019-05-11 20:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘芳', null, '100', null, null, null);
INSERT INTO `student` VALUES ('51', '高宇', '1', '21', '13227896521', '大专', '2', '网络查询', 'baidu.com', '报考', '淮阳', null, '1', '14351825252@163.com', '1357296526', '挺好的', '2019-05-21 16:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘芳', null, '100', null, null, null);
INSERT INTO `student` VALUES ('52', '高义', '2', '23', '12337896521', '大专', '2', '网络查询', 'baidu.com', '报考', '南阳', null, '1', '14353825252@163.com', '13527296522', '很不错推荐', '2019-05-31 19:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘芳', null, '100', null, null, null);
INSERT INTO `student` VALUES ('53', '高航', '1', '21', '124517896521', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', null, '1', '14311825252@163.com', '13117296521', '专业挺好的', '2019-05-23 10:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘芳', null, '100', null, null, null);
INSERT INTO `student` VALUES ('54', '李元', '2', '21', '12437896531', '大专', '2', '网络查询', 'baidu.com', '报考', '信阳', null, '1', '14353825252@163.com', '12247296521', '专业挺好的', '2019-05-11 14:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘圆', null, '100', null, null, null);
INSERT INTO `student` VALUES ('55', '李刚子', '2', '22', '12217896531', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', null, '1', '14353115252@163.com', '12247211521', '挺好的', '2019-05-21 15:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘圆', null, '100', null, null, null);
INSERT INTO `student` VALUES ('56', '高邑', '1', '21', '13317896521', '大专', '2', '网络查询', 'baidu.com', '报考', '登封', null, '1', '14353115252@163.com', '12217296521', 'z', '2019-05-11 14:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '张三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('58', '张东', '2', '23', '15317891131', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', null, '1', '14358925252@163.com', '1224729521', '热力推荐', '2019-05-11 19:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '张三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('59', '吴丽', '1', '21', '16917896531', '大专', '1', '网络查询', 'baidu.com', '报考', '驻马店', null, '1', '14353125252@163.com', '1224296121', '这个学校不错', '2019-05-11 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李四', null, '100', null, null, null);
INSERT INTO `student` VALUES ('60', '张宝', '2', '22', '17317892531', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', null, '1', '19353825252@163.com', '1224796521', '想报这个学校', '2019-05-11 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '张三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('61', '王康', '2', '24', '12211892511', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', null, '1', '19353898252@163.com', '1984296521', '听说还可以', '2019-05-11 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '张三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('62', '李雪', '2', '24', '12417892121', '大专', '1', '网络查询', 'baidu.com', '报考', '周口', null, '1', '19351225252@163.com', '1894296521', '想去这个学校', '2019-05-11 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李四', null, '100', null, null, null);
INSERT INTO `student` VALUES ('63', '李元', '1', '22', '12311292531', '大专', '2', '网络查询', 'baidu.com', '报考', '驻马店', null, '1', '19353827852@163.com', '1224296523', '不错哦', '2019-05-11 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘芳', null, '100', null, null, null);
INSERT INTO `student` VALUES ('64', '李小小', '2', '21', '12312892531', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', null, '1', '1935345252@163.com', '1247296541', '美丽的学校', '2019-05-11 17:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘芳', null, '100', null, null, null);
INSERT INTO `student` VALUES ('65', '李元', '1', '24', '12317892531', '大专', '2', '网络查询', 'baidu.com', '报考', '信阳', null, '1', '19350925252@163.com', '1229296551', '挺乔巴', '2019-05-11 16:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘圆圆', null, '100', null, null, null);
INSERT INTO `student` VALUES ('66', '王小', '2', '22', '12317892531', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', null, '1', '19353825252@163.com', '124729526', '可以可以', '2019-05-11 15:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '张三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('67', '张昊', '1', '21', '12317892500', '大专', '2', '网络查询', 'baidu.com', '报考', '安徽', null, '1', '1335382752@163.com', '12247396571', '这个学校可以试试', '2019-05-11 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李四', null, '100', null, null, null);
INSERT INTO `student` VALUES ('68', '韩俊', '2', '23', '12517891231', '大专', '2', '网络查询', 'baidu.com', '报考', '淮阳', null, '1', '12351125252@163.com', '12212296621', '大家可以去看看', '2019-05-11 16:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李四', null, '100', null, null, null);
INSERT INTO `student` VALUES ('69', '吴员', '1', '24', '12317812531', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', null, '1', '11353825252@163.com', '19247296521', '看起来还不错', '2019-05-11 17:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '张三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('70', '张韩', '2', '25', '12321892531', '大专', '2', '网络查询', 'baidu.com', '报考', '南阳', null, '1', '19353813252@163.com', '1224729654', '专业挺好的', '2019-05-11 18:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李四', null, '100', null, null, null);
INSERT INTO `student` VALUES ('71', '王保元', '2', '21', '12317892331', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', null, '1', '19353825262@163.com', '12247296421', '新乡的学校', '2019-05-11 19:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘芳', null, '100', null, null, null);
INSERT INTO `student` VALUES ('72', '李收', '2', '21', '15317892522', '大专', '2', '网络查询', 'baidu.com', '报考', '淮滨', null, '1', '12353825252@163.com', '12247296590', '这个专业可以', '2019-05-11 20:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘芳', null, '100', null, null, null);
INSERT INTO `student` VALUES ('73', '赵元', '2', '21', '12317892125', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', null, '1', '19353825098@163.com', '12247296124', '校企合作还行', '2019-05-11 10:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '张三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('74', '王炫', '2', '21', '12317342532', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', null, '1', '13353825252@163.com', '12147296521', '专业挺好', '2019-05-11 20:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘芳', null, '100', null, null, null);
INSERT INTO `student` VALUES ('75', '李元', '2', '21', '14517892531', '大专', '2', '网络查询', 'baidu.com', '报考', '浙江', null, '1', '19253825342@163.com', '1257296521', '报这个学校吧', '2019-05-11 22:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘芳', null, '100', null, null, null);
INSERT INTO `student` VALUES ('76', '李元', '2', '21', '19017232531', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', null, '1', '12353825522@163.com', '18947296521', '电子系不错', '2019-05-11 10:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘芳', null, '100', null, null, null);
INSERT INTO `student` VALUES ('77', '李元', '2', '21', '17517892531', '大专', '2', '网络查询', 'baidu.com', '报考', '湖南', null, '1', '19253825232@163.com', '12247196511', '可以报试试', '2019-05-11 16:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '张三', null, '100', null, null, null);
INSERT INTO `student` VALUES ('78', '李元', '2', '21', '12417452531', '大专', '2', '网络查询', 'baidu.com', '报考', '驻马店', null, '1', '12253825252@163.com', '15244296522', '就报这个学校', '2019-05-11 13:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '李四', null, '100', null, null, null);
INSERT INTO `student` VALUES ('79', '李元', '2', '21', '12314392531', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', null, '1', '19353825422@163.com', '12121296523', '大力推荐', '2019-05-11 16:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘芳', null, '100', null, null, null);
INSERT INTO `student` VALUES ('80', '李元', '2', '21', '12227892531', '大专', '2', '网络查询', 'baidu.com', '报考', '周口', null, '1', '10353825212@163.com', '12247296431', '专业挺好的不错', '2019-05-11 19:12:29', '人事部', '1', '0', '2', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '1', '刘圆圆', null, '100', null, null, null);
INSERT INTO `student` VALUES ('81', '1', '1', '1', '1', '1', '2', '1', '1', '1', null, null, null, '1', '1', '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, null);
INSERT INTO `student` VALUES ('83', '你', '1', '11', '13345678909', '大专', null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `student` VALUES ('84', '435443', '1', '32', '13834678767', '大专', null, null, null, null, null, '32', null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `student` VALUES ('85', '111', '1', '3', '13256789098', '一本', null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for userchecks
-- ----------------------------
DROP TABLE IF EXISTS `userchecks`;
CREATE TABLE `userchecks` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL COMMENT '用户ID',
  `userName` varchar(255) DEFAULT NULL COMMENT '用户姓名',
  `checkInTime` datetime DEFAULT NULL COMMENT '发问的时间',
  `checkState` varchar(255) DEFAULT NULL COMMENT '发问的时间',
  `isCancel` varchar(255) DEFAULT NULL COMMENT '取消',
  `checkOutTime` datetime DEFAULT NULL COMMENT '检查退出时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userchecks
-- ----------------------------
INSERT INTO `userchecks` VALUES ('1', '1', 'yu', '2019-05-14 19:25:29', '已签到', '已签出', '2019-05-14 19:25:32');
INSERT INTO `userchecks` VALUES ('2', '2', 'fish', '2019-05-14 19:26:45', '已签到', '已签出', '2019-05-14 19:26:48');
INSERT INTO `userchecks` VALUES ('3', '1', 'yu', '2019-05-15 10:25:15', '已签到', '已签出', '2019-05-17 10:22:51');
INSERT INTO `userchecks` VALUES ('4', '2', 'fish', '2019-05-15 10:27:53', '已签到', '已签出', '2019-05-17 10:24:01');
INSERT INTO `userchecks` VALUES ('5', '4', 'ysd', '2019-05-16 08:16:10', '已签到', '已签出', '2019-05-25 17:52:16');
INSERT INTO `userchecks` VALUES ('6', '16', 'get', '2019-05-16 10:44:41', '已签到', '已签出', '2019-05-16 10:44:44');
INSERT INTO `userchecks` VALUES ('7', '20', 'ytx', '2019-05-16 10:45:21', '已签到', '已签出', '2019-05-16 10:45:25');
INSERT INTO `userchecks` VALUES ('9', '15', 'post', '2019-05-16 10:48:28', '已签到', '已签出', '2019-05-16 10:48:48');
INSERT INTO `userchecks` VALUES ('11', '1', 'yu', '2019-05-16 11:10:06', '已签到', '已签出', '2019-05-16 20:27:27');
INSERT INTO `userchecks` VALUES ('12', '4', 'ysd', '2019-05-17 08:20:37', '已签到', '已签出', '2019-05-17 09:53:21');
INSERT INTO `userchecks` VALUES ('15', '1', 'yu', '2019-05-17 08:28:14', '已签到', '已签出', '2019-05-25 17:52:16');
INSERT INTO `userchecks` VALUES ('16', '2', 'fish', '2019-05-17 09:56:24', '已签到', '已签出', '2019-05-17 10:01:26');
INSERT INTO `userchecks` VALUES ('17', '3', 'yy', '2019-05-17 11:08:15', '已签到', '已签出', '2019-09-18 16:50:11');
INSERT INTO `userchecks` VALUES ('18', '5', 'gsy', '2019-05-17 13:31:43', '已签到', '已签出', '2019-05-17 13:34:47');
INSERT INTO `userchecks` VALUES ('19', '6', 'wyh', '2019-05-17 13:35:49', '已签到', '已签出', '2019-05-17 13:36:10');
INSERT INTO `userchecks` VALUES ('20', '18', 'zd', '2019-05-17 14:02:08', '已签到', '已签出', '2019-05-17 14:03:17');
INSERT INTO `userchecks` VALUES ('21', '4', 'ysd', '2019-05-18 08:21:00', '已签到', '已签出', '2019-05-18 14:10:58');
INSERT INTO `userchecks` VALUES ('22', '1', 'yu', '2019-05-18 14:33:38', '已签到', '已签出', '2019-05-18 16:02:42');
INSERT INTO `userchecks` VALUES ('23', '1', 'yu', '2019-05-19 15:26:01', '已签到', '已签出', '2019-05-19 18:44:14');
INSERT INTO `userchecks` VALUES ('24', '4', 'ysd', '2019-05-19 18:52:17', '已签到', '已签出', '2019-05-19 21:12:38');
INSERT INTO `userchecks` VALUES ('25', '3', 'yy', '2019-05-19 19:50:13', '已签到', '已签出', '2019-05-19 19:54:27');
INSERT INTO `userchecks` VALUES ('26', '8', 'wjp', '2019-05-19 21:13:39', '已签到', '已签出', '2019-05-19 21:13:51');
INSERT INTO `userchecks` VALUES ('27', '11', 'jack', '2019-05-19 21:14:35', '已签到', '已签出', '2019-05-19 21:14:48');
INSERT INTO `userchecks` VALUES ('28', '1', 'yu', '2019-05-20 09:22:47', '已签到', '已签出', '2019-05-20 11:51:28');
INSERT INTO `userchecks` VALUES ('29', '4', 'ysd', '2019-05-20 10:47:13', '已签到', '已签出', '2019-05-20 10:56:49');
INSERT INTO `userchecks` VALUES ('30', '4', 'ysd', '2019-05-21 10:33:17', '已签到', '已签出', '2019-05-22 16:25:53');
INSERT INTO `userchecks` VALUES ('31', '3', 'yy', '2019-05-21 11:00:09', '已签到', '未签出', null);
INSERT INTO `userchecks` VALUES ('32', '1', 'yu', '2019-05-21 11:15:34', '已签到', '已签出', '2019-05-25 16:55:19');
INSERT INTO `userchecks` VALUES ('33', '2', 'fish', '2019-05-21 15:16:36', '已签到', '已签出', '2019-05-26 20:36:34');
INSERT INTO `userchecks` VALUES ('34', '4', 'ysd', '2019-05-22 16:24:26', '已签到', '已签出', '2019-05-27 08:40:44');
INSERT INTO `userchecks` VALUES ('35', '2', 'fish', '2019-05-22 19:53:48', '已签到', '已签出', '2019-05-26 20:36:34');
INSERT INTO `userchecks` VALUES ('36', '2', 'fish', '2019-05-23 07:56:03', '已签到', '已签出', '2019-05-23 10:34:08');
INSERT INTO `userchecks` VALUES ('37', '3', 'yy', '2019-05-23 09:51:51', '已签到', '已签出', '2019-05-23 18:45:09');
INSERT INTO `userchecks` VALUES ('38', '4', 'ysd', '2019-05-23 18:45:48', '已签到', '已签出', '2019-05-23 18:45:52');
INSERT INTO `userchecks` VALUES ('39', '1', 'yu', '2019-05-23 19:15:40', '已签到', '已签出', '2019-05-23 19:32:27');
INSERT INTO `userchecks` VALUES ('40', '1', 'yu', '2019-05-24 08:55:07', '已签到', '已签出', '2019-05-26 20:36:34');
INSERT INTO `userchecks` VALUES ('41', '4', 'ysd', '2019-05-24 08:55:33', '已签到', '已签出', '2019-05-26 20:36:34');
INSERT INTO `userchecks` VALUES ('42', '2', 'fish', '2019-05-24 08:56:18', '已签到', '已签出', '2019-05-27 08:40:44');
INSERT INTO `userchecks` VALUES ('43', '3', 'yy', '2019-05-25 15:39:11', '已签到', '已签出', '2019-05-27 08:40:44');
INSERT INTO `userchecks` VALUES ('44', '4', 'ysd', '2019-05-26 19:07:08', '已签到', '��ǩ��', '2019-09-18 16:50:19');
INSERT INTO `userchecks` VALUES ('45', '6', 'wyh', '2019-05-26 19:22:22', '已签到', '��ǩ��', '2019-09-18 16:50:19');
INSERT INTO `userchecks` VALUES ('46', '2', 'fish', '2019-05-26 20:35:49', '已签到', '已签出', '2019-05-26 20:35:54');
INSERT INTO `userchecks` VALUES ('47', '2', 'fish', '2019-05-27 08:05:59', '已签到', '未签出', null);
INSERT INTO `userchecks` VALUES ('48', '3', 'yy', '2019-05-27 08:06:25', '已签到', '未签出', null);
INSERT INTO `userchecks` VALUES ('49', '1', 'yu', '2019-05-27 08:36:39', '已签到', '未签出', null);
INSERT INTO `userchecks` VALUES ('53', '7', 'zxj', '2019-05-27 17:25:29', '已签到', '未签出', null);
INSERT INTO `userchecks` VALUES ('54', '4', 'ysd', '2019-05-29 10:20:37', '已签到', '未签出', null);
INSERT INTO `userchecks` VALUES ('55', '2', 'fish', '2019-05-29 11:11:04', '已签到', '未签出', null);
INSERT INTO `userchecks` VALUES ('56', '3', 'yy', '2019-05-29 11:12:45', '已签到', '未签出', null);
INSERT INTO `userchecks` VALUES ('58', '1', 'yu', '2019-05-29 18:12:11', '已签到', '未签出', null);
INSERT INTO `userchecks` VALUES ('59', '1', 'yu', '2019-05-30 08:34:56', '已签到', '未签出', null);
INSERT INTO `userchecks` VALUES ('60', '29', 'asd', '2019-05-30 09:52:02', '已签到', '未签出', null);
INSERT INTO `userchecks` VALUES ('61', '4', 'ysd', '2019-05-30 11:05:28', '已签到', '未签出', null);
INSERT INTO `userchecks` VALUES ('62', '3', 'yy', '2019-05-30 11:21:09', '已签到', '未签出', null);
INSERT INTO `userchecks` VALUES ('63', '2', 'fish', '2019-05-30 14:49:36', '已签到', '未签出', null);
INSERT INTO `userchecks` VALUES ('64', '2', 'fish', '2019-05-31 08:38:44', '已签到', '未签出', null);
INSERT INTO `userchecks` VALUES ('65', '1', 'yu', '2019-05-31 08:39:41', '已签到', '未签出', null);
INSERT INTO `userchecks` VALUES ('66', '32', 'hac', '2019-05-31 08:42:05', '已签到', '未签出', null);
INSERT INTO `userchecks` VALUES ('67', '1', 'yu', '2019-09-16 19:39:35', '已签到', '未签出', null);
INSERT INTO `userchecks` VALUES ('68', '1', 'yu', '2019-09-18 19:54:08', '已签到', '已签出', '2019-09-18 19:54:20');
INSERT INTO `userchecks` VALUES ('69', '1', 'yu', '2019-12-05 08:59:41', '已签到', '未签出', null);
INSERT INTO `userchecks` VALUES ('70', '2', 'fish', '2019-12-05 09:04:57', '已签到', '未签出', null);
INSERT INTO `userchecks` VALUES ('71', '1', 'yu', '2019-12-05 09:12:23', '已签到', 'δǩ��', null);
INSERT INTO `userchecks` VALUES ('72', '4', 'ysd', '2019-12-05 10:21:01', '已签到', '未签出', null);

-- ----------------------------
-- Table structure for userroles
-- ----------------------------
DROP TABLE IF EXISTS `userroles`;
CREATE TABLE `userroles` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `userId` int(11) DEFAULT NULL COMMENT '用户编号',
  `roleId` int(11) DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userroles
-- ----------------------------
INSERT INTO `userroles` VALUES ('1', '1', '1');
INSERT INTO `userroles` VALUES ('2', '2', '2');
INSERT INTO `userroles` VALUES ('3', '3', '3');
INSERT INTO `userroles` VALUES ('4', '4', '4');
INSERT INTO `userroles` VALUES ('6', '5', '2');
INSERT INTO `userroles` VALUES ('10', '8', '4');
INSERT INTO `userroles` VALUES ('11', '8', '3');
INSERT INTO `userroles` VALUES ('12', '8', '2');
INSERT INTO `userroles` VALUES ('15', '11', '2');
INSERT INTO `userroles` VALUES ('16', '12', '3');
INSERT INTO `userroles` VALUES ('17', '13', '3');
INSERT INTO `userroles` VALUES ('18', '14', '2');
INSERT INTO `userroles` VALUES ('19', '15', '4');
INSERT INTO `userroles` VALUES ('20', '16', '2');
INSERT INTO `userroles` VALUES ('21', '17', '3');
INSERT INTO `userroles` VALUES ('22', '18', '2');
INSERT INTO `userroles` VALUES ('23', '19', '2');
INSERT INTO `userroles` VALUES ('24', '20', '2');
INSERT INTO `userroles` VALUES ('26', '22', '3');
INSERT INTO `userroles` VALUES ('32', '24', '3');
INSERT INTO `userroles` VALUES ('33', '25', '3');
INSERT INTO `userroles` VALUES ('38', '32', '3');
INSERT INTO `userroles` VALUES ('39', '28', '2');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `loginName` varchar(25) DEFAULT NULL COMMENT '登录名',
  `passWord` varchar(25) DEFAULT NULL COMMENT '密码',
  `isLockOut` int(1) DEFAULT NULL COMMENT '是否锁定',
  `lastLoginTime` datetime DEFAULT NULL COMMENT '最后一次登陆时间',
  `createTime` datetime DEFAULT NULL COMMENT '账户创建时间',
  `psdWrongTime` int(11) DEFAULT NULL COMMENT '密码错误次数',
  `lockTime` datetime DEFAULT NULL COMMENT '被锁定时间',
  `protectEmail` varchar(25) DEFAULT NULL COMMENT '密保邮箱',
  `protectMTel` varchar(11) DEFAULT NULL COMMENT '密保手机号',
  `resetPassword` varchar(255) DEFAULT '' COMMENT '重置密码',
  `quanzhong` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'yu', '123', '0', '2019-12-05 14:01:55', '2019-04-22 10:48:52', '1', '2019-04-26 14:36:14', 'superwhalefish@163.com', '15238817434', 'ysd123', null);
INSERT INTO `users` VALUES ('2', 'fish', '456', '0', '2019-12-05 14:13:47', '2019-04-24 12:32:02', '1', null, '123@qq.com', '13467856756', 'ysd123', '87');
INSERT INTO `users` VALUES ('3', 'yy', '123', '0', '2019-09-18 18:56:32', '2019-01-15 15:39:02', '1', null, '233@qq.com', '13812932189', 'ysd123', '67');
INSERT INTO `users` VALUES ('4', 'ysd', 'ysd123', '2', '2019-12-05 14:20:41', '2019-05-01 15:39:05', '1', '2019-05-27 08:40:04', '544@qq.com', '13333333333', 'ysd123', null);
INSERT INTO `users` VALUES ('7', 'zxj', '123456', '2', '2019-05-27 17:17:35', null, '1', null, '345@qq.com', '45678932145', 'ysd123', '67');
INSERT INTO `users` VALUES ('11', 'jack', '234', '2', '2019-05-19 21:14:22', '2019-05-08 08:01:34', '1', null, '365@qq.com', '12369857456', 'ysd123', '79');
INSERT INTO `users` VALUES ('16', 'get', '268', '1', '2019-05-16 10:44:29', null, '1', '2019-05-24 09:03:59', '895@qq.com', '15987456231', 'ysd123', '66');
INSERT INTO `users` VALUES ('17', 'cdh', '1111', '2', null, null, '1', null, '156@qq.com', '15987463254', 'ysd123', '81');
INSERT INTO `users` VALUES ('18', 'zd', '666', '2', '2019-05-17 14:02:00', null, '1', null, '186@qq.com', '13698745621', 'ysd123', '90');
INSERT INTO `users` VALUES ('28', 'qw', 'ysd123', '2', '2019-05-30 08:55:04', '2019-05-30 08:53:42', '1', '2019-12-05 09:13:11', '123', '132122222', '', null);
INSERT INTO `users` VALUES ('32', 'hac', '123', '2', '2019-05-31 11:09:58', '2019-05-31 08:40:57', '1', null, '123@qq.com', '15238817434', '', null);
