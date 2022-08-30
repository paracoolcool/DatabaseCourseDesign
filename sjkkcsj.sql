/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : sjkkcsj

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 30/08/2022 19:29:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for catechism
-- ----------------------------
DROP TABLE IF EXISTS `catechism`;
CREATE TABLE `catechism`  (
  `teacherid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `courseid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `course_courseid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of catechism
-- ----------------------------
INSERT INTO `catechism` VALUES ('005000024', '005A1080', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('005000027', '005A1080', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('005000028', '005C3100', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000012', '006A2190', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000013', '006A2190', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000014', '006A2290', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000015', '006A2290', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000016', '006A2390', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000017', '006A2390', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000018', '006A3180', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000019', '006A3180', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000020', '006A3190', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000021', '006A3190', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000022', '006A3220', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000023', '006A3220', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000029', '006A1330', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000030', '006A1330', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000031', '006A1400', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000032', '006A1400', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000033', '006A2020', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000034', '006A2020', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000035', '006A2500', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000036', '006A2500', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('006000037', '006A3250', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('010000026', '010C3050', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('013000010', '013C1466', '2009-2010-2', NULL);
INSERT INTO `catechism` VALUES ('013000025', '013C1464', '2009-2010-2', NULL);

-- ----------------------------
-- Table structure for cougrades
-- ----------------------------
DROP TABLE IF EXISTS `cougrades`;
CREATE TABLE `cougrades`  (
  `studentid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `courseid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `crousetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grades` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_courseid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_studentid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  INDEX `FK5euqu5ddpjxk4ij5ynbxsvelx`(`course_courseid`) USING BTREE,
  INDEX `FK1wtruim39i9smla5esp7sej1c`(`student_studentid`) USING BTREE,
  CONSTRAINT `FK1wtruim39i9smla5esp7sej1c` FOREIGN KEY (`student_studentid`) REFERENCES `student` (`studentid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK5euqu5ddpjxk4ij5ynbxsvelx` FOREIGN KEY (`course_courseid`) REFERENCES `course` (`courseid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cougrades
-- ----------------------------
INSERT INTO `cougrades` VALUES ('AP0803104', '002C1064', '69', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803104', '006A1290', '84', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803105', '004A3280', '53', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803105', '006A1310', '84', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803106', '005A1430', '70', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803106', '006A1410', '61', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803107', '006A1060', '62', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803107', '006A2140', '70', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803108', '006A1280', '75', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803108', '006A2420', '93', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803109', '006A2260', '69', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803109', '006A2440', '64', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803110', '006A3260', '69', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803110', '010C1180', '75', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803201', '006A3420', '87', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803201', '012C1014', '77', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803202', '013C1463', '68', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803202', '013C1465', '86', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803203', '018C1030', '75', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803203', '019C2102', '83', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803204', '006A1050', '88', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803204', '019C2101', '69', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803205', '005A1080', '77', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803205', '006A2190', '81', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803305', '010C1282', '89', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803305', '013C1465', '93', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803307', '010C1301', '91', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803307', '019C2102', '99', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803308', '006A1050', '60', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803308', '012C1012', '83', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803309', '006A2190', '25', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803309', '013C1430', '65', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803310', '006A2410', '82', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803310', '013C1461', '64', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803503', '015C1070', '70', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803506', '008C1010', '77', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803508', '006A1310', '77', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803508', '012C1011', '90', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803509', '006A1410', '72', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803509', '013C1440', '81', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803510', '006A2140', '15', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803510', '015C1080', '65', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803511', '006A2420', '80', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803511', '017C1030', '67', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803512', '002C1062', '61', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803512', '006A2440', '85', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803513', '006A1440', '74', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803513', '006A3260', '79', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803514', '006A3420', '76', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803514', '010C1050', '65', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803606', '005C3100', '87', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803606', '006A2410', '78', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803607', '006A1330', '53', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803607', '006A3180', '72', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803608', '006A1400', '70', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803608', '006A3190', '88', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803609', '006A2020', '65', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803609', '006A3220', '76', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803701', '006A2500', '94', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803701', '012C1020', '77', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803702', '006A3250', '75', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803702', '013C1460', '68', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803703', '010C3050', '88', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803704', '002C1061', '88', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803704', '013C1464', '91', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803705', '005A1260', '82', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803705', '006A2240', '92', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803706', '005C3090', '65', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803707', '006A1290', '85', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803707', '010C1281', '88', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803808', '006A3250', '77', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803808', '012C1013', '60', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803809', '010C3050', '83', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803809', '013C1420', '82', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803810', '013C1462', '79', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803810', '013C1464', '83', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803811', '005A1260', '63', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803811', '018C1512', '71', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803813', '005C3090', '92', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0803813', '018C1810', '75', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0806301', '006A3180', '87', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0806301', '018C1511', '62', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0806302', '002C1063', '60', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0806302', '006A3190', '71', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0806304', '005A1510', '71', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0806304', '006A3220', '82', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0806305', '006A2250', '60', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0806305', '006A3270', '63', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0806306', '010C1070', '64', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0806306', '013C1466', '60', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0806307', '006A2500', '70', '2009-2010-2', NULL, NULL, NULL);
INSERT INTO `cougrades` VALUES ('AP0806307', '010C1302', '85', '2009-2010-2', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `courseid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `coursename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `credits` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `khfangshi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `leibie` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`courseid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('002C1061', ' 大学英语', '必修', '考试', '3', NULL);
INSERT INTO `course` VALUES ('002C1062', ' 大学英语', '必修', '考试', '4', NULL);
INSERT INTO `course` VALUES ('002C1063', ' 大学英语', '必修', '考试', '4', NULL);
INSERT INTO `course` VALUES ('002C1064', ' 大学英语', '必修', '考试', '4', NULL);
INSERT INTO `course` VALUES ('004A3280', ' 自动控制原理', '任选', '考试', '3', NULL);
INSERT INTO `course` VALUES ('005A1080', ' 数字电路与逻辑设计', '必修', '考试', '4', NULL);
INSERT INTO `course` VALUES ('005A1260', ' 数字信号处理', '必修', '考试', '3', NULL);
INSERT INTO `course` VALUES ('005A1430', ' 信号与系统', '必修', '考试', '4', NULL);
INSERT INTO `course` VALUES ('005A1510', ' 电路分析基础Ⅰ', '必修', '考试', '3', NULL);
INSERT INTO `course` VALUES ('005C3090', ' 电子系统EDA', '任选', '考试', '2', NULL);
INSERT INTO `course` VALUES ('005C3100', ' 数字图象处理', '任选', '考查', '2', NULL);
INSERT INTO `course` VALUES ('006A1050', ' 计算机组成原理课程设计', '必修', '考查', '2', '1-2周');
INSERT INTO `course` VALUES ('006A1060', ' 数据结构', '必修', '考试', '4', NULL);
INSERT INTO `course` VALUES ('006A1280', ' 认识实习', '必修', '考查', '1', '假期');
INSERT INTO `course` VALUES ('006A1290', ' 生产实习', '必修', '考查', '2', '假期');
INSERT INTO `course` VALUES ('006A1310', ' 数据库课程设计', '必修', '考查', '1', '分散');
INSERT INTO `course` VALUES ('006A1320', ' 毕业设计', '必修', '考查', '16', NULL);
INSERT INTO `course` VALUES ('006A1330', ' 数据库原理', '必修', '考试', '3', NULL);
INSERT INTO `course` VALUES ('006A1400', ' 计算机组成原理', '必修', '考试', '3', NULL);
INSERT INTO `course` VALUES ('006A1410', ' 操作系统', '必修', '考试', '3', NULL);
INSERT INTO `course` VALUES ('006A1440', ' C++语言程序设计', '必修', '考试', '4', NULL);
INSERT INTO `course` VALUES ('006A2020', ' 计算方法', '限选', '考查', '3', NULL);
INSERT INTO `course` VALUES ('006A2140', ' 软件工程', '限选', '考查', '3', NULL);
INSERT INTO `course` VALUES ('006A2190', ' 编译原理', '限选', '考查', '4', NULL);
INSERT INTO `course` VALUES ('006A2240', ' 计算机导论', '限选', '考试', '2', '18学生上机');
INSERT INTO `course` VALUES ('006A2250', ' 离散数学', '限选', '考试', '4', NULL);
INSERT INTO `course` VALUES ('006A2260', ' 汇编语言程序设计', '限选', '考查', '4', NULL);
INSERT INTO `course` VALUES ('006A2290', '数据库语言及应用', '必修', '考试', '3', NULL);
INSERT INTO `course` VALUES ('006A2390', 'WEB程序设计', '限选', '考查', '3', NULL);
INSERT INTO `course` VALUES ('006A2410', ' 接口与通信', '限选', '考试', '3', NULL);
INSERT INTO `course` VALUES ('006A2420', ' 计算机网络原理', '限选', '考试', '3', NULL);
INSERT INTO `course` VALUES ('006A2440', ' 应用系统分析与设计', '限选', '考查', '3', NULL);
INSERT INTO `course` VALUES ('006A2500', ' 面向对象高级程序设计', '限选', '考查', '4', NULL);
INSERT INTO `course` VALUES ('006A3180', ' 计算机图形学', '任选', '考试', '3', NULL);
INSERT INTO `course` VALUES ('006A3190', ' 人工智能概论', '任选', '考查', '2', NULL);
INSERT INTO `course` VALUES ('006A3220', ' 计算机系统结构', '任选', '考查', '2', NULL);
INSERT INTO `course` VALUES ('006A3250', ' 专业英语', '任选', '考查', '2', NULL);
INSERT INTO `course` VALUES ('006A3260', ' 多媒体技术原理', '任选', '考查', '3', NULL);
INSERT INTO `course` VALUES ('006A3270', ' 计算机控制技术', '任选', '考试', '3', NULL);
INSERT INTO `course` VALUES ('006A3420', ' 网络协议分析与编程', '任选', '考试', '3', NULL);
INSERT INTO `course` VALUES ('008C1010', ' 工程制图', '必修', '考试', '3', NULL);
INSERT INTO `course` VALUES ('010C1050', ' 线性代数', '必修', '考查', '2', NULL);
INSERT INTO `course` VALUES ('010C1070', ' 复变函数', '必修', '考查', '2', NULL);
INSERT INTO `course` VALUES ('010C1180', ' 概率论与数理统计', '必修', '考查', '3', NULL);
INSERT INTO `course` VALUES ('010C1281', ' 高等数学', '必修', '考试', '5', '一');
INSERT INTO `course` VALUES ('010C1282', ' 高等数学', '必修', '考试', '5', '一');
INSERT INTO `course` VALUES ('010C1301', ' 大学物理', '必修', '考试', '3', NULL);
INSERT INTO `course` VALUES ('010C1302', ' 大学物理', '必修', '考试', '3', NULL);
INSERT INTO `course` VALUES ('010C3050', ' 数学建模', '任选', '考查', '2', NULL);
INSERT INTO `course` VALUES ('012C1011', ' 体育', '必修', '考查', '2', NULL);
INSERT INTO `course` VALUES ('012C1012', ' 体育', '必修', '考查', '2', NULL);
INSERT INTO `course` VALUES ('012C1013', ' 体育', '必修', '考查', '2', NULL);
INSERT INTO `course` VALUES ('012C1014', ' 体育', '必修', '考查', '2', NULL);
INSERT INTO `course` VALUES ('012C1020', ' 体育达标', '必修', '考查', '1', NULL);
INSERT INTO `course` VALUES ('013C1420', ' 马克思主义基本原理', '必修', '考查', '3', NULL);
INSERT INTO `course` VALUES ('013C1430', ' 中国近现代史纲要', '必修', '考查', '2', NULL);
INSERT INTO `course` VALUES ('013C1440', ' 思想道德修养与法律基础', '必修', '考查', '3', NULL);
INSERT INTO `course` VALUES ('013C1460', ' 形势与政策', '必修', '考查', '2', '92课外');
INSERT INTO `course` VALUES ('013C1461', ' 形势与政策', '必修', '考查', '0', NULL);
INSERT INTO `course` VALUES ('013C1462', ' 形势与政策', '必修', '考查', '0', NULL);
INSERT INTO `course` VALUES ('013C1463', ' 形势与政策', '必修', '考查', '0', NULL);
INSERT INTO `course` VALUES ('013C1464', ' 形势与政策', '必修', '考查', '0', NULL);
INSERT INTO `course` VALUES ('013C1465', ' 形势与政策', '必修', '考查', '0', NULL);
INSERT INTO `course` VALUES ('013C1466', ' 形势与政策', '必修', '考查', '0', NULL);
INSERT INTO `course` VALUES ('015C1070', ' 军事训练', '必修', '考查', '1', NULL);
INSERT INTO `course` VALUES ('015C1080', ' 军事理论', '必修', '考查', '1', '22课外');
INSERT INTO `course` VALUES ('017C1030', ' 大学生健康教育', '必修', '考查', '1', NULL);
INSERT INTO `course` VALUES ('018C1030', ' 电子实习', '必修', '考查', '2', NULL);
INSERT INTO `course` VALUES ('018C1511', ' 物理实验', '必修', '考查', '1.5', NULL);
INSERT INTO `course` VALUES ('018C1512', ' 物理实验', '必修', '考查', '1.5', NULL);
INSERT INTO `course` VALUES ('018C1810', ' 金工实习', '必修', '考查', '2', NULL);
INSERT INTO `course` VALUES ('019C2101', ' 大学生职业规划与就业指导', '限选', '考查', '0.5', NULL);
INSERT INTO `course` VALUES ('019C2102', ' 大学生职业规划与就业指导', '限选', '考查', '0.5', NULL);

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `deptid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deptname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`deptid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('01', '智能制造学部', NULL);
INSERT INTO `dept` VALUES ('02', '外国语学院', NULL);
INSERT INTO `dept` VALUES ('03', '轨道交通学院', NULL);
INSERT INTO `dept` VALUES ('04', '生物与大健康学院', NULL);
INSERT INTO `dept` VALUES ('05', '经济管理学院', NULL);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `studentid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deptid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fromplace` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `iszhusu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ptface` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sushephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dept_deptid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`studentid`) USING BTREE,
  INDEX `FKktjyhk8o04xf7g8vfkjw48i4w`(`dept_deptid`) USING BTREE,
  CONSTRAINT `FKktjyhk8o04xf7g8vfkjw48i4w` FOREIGN KEY (`dept_deptid`) REFERENCES `dept` (`deptid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('AP0803104', '1989-02-06', '03', '广东', '男', 'N', '刘树森', NULL, '团员', '44522', '01');
INSERT INTO `student` VALUES ('AP0803105', '1989-02-07', '03', '广东', '男', 'Y', '侯锦兵', NULL, '预备党员', '44522', '01');
INSERT INTO `student` VALUES ('AP0803106', '1989-02-08', '03', '广东', '男', 'Y', '胡伟', NULL, '团员', '44523', '01');
INSERT INTO `student` VALUES ('AP0803107', '1989-02-09', '03', '湖北', '女', 'Y', '张元元', NULL, '预备党员', '86912', '01');
INSERT INTO `student` VALUES ('AP0803108', '1989-02-10', '03', '江西', '男', 'Y', '余海', NULL, '预备党员', '44526', '02');
INSERT INTO `student` VALUES ('AP0803109', '1988-01-13', '03', '广东', '男', 'N', '余信明', NULL, '团员', NULL, '02');
INSERT INTO `student` VALUES ('AP0803110', '1988-01-14', '03', '广东', '男', 'Y', '张明新', NULL, '团员', '44524', '04');
INSERT INTO `student` VALUES ('AP0803201', '1988-01-15', '03', '广东', '女', 'Y', '梁丽', NULL, '团员', '86911', '03');
INSERT INTO `student` VALUES ('AP0803202', '1988-01-16', '03', '广东', '男', 'Y', '梁添', NULL, '团员', '44524', '01');
INSERT INTO `student` VALUES ('AP0803203', '1988-01-17', '03', '广东', '男', 'Y', '麦林青', NULL, '团员', '44524', '02');
INSERT INTO `student` VALUES ('AP0803204', '1988-01-18', '03', '广东', '男', 'Y', '莫达尚', NULL, '团员', '44524', '04');
INSERT INTO `student` VALUES ('AP0803205', '1988-01-19', '03', '广东', '男', 'Y', '欧扬严', NULL, '团员', '44525', '01');
INSERT INTO `student` VALUES ('AP0803303', '1989-02-23', '03', '广东', '男', 'Y', '余维明', NULL, '团员', '74909', '01');
INSERT INTO `student` VALUES ('AP0803304', '1989-02-24', '03', '广东', '女', 'Y', '谭敏儿', NULL, '党员', '87078', '02');
INSERT INTO `student` VALUES ('AP0803305', '1988-03-04', '04', '湖南', '女', 'N', '伍玉珏', NULL, '团员', NULL, '05');
INSERT INTO `student` VALUES ('AP0803307', '1989-09-16', '04', '江西', '女', 'N', '区芝颖', NULL, '群众', NULL, '05');
INSERT INTO `student` VALUES ('AP0803308', '1989-10-08', '04', '福建', '男', 'N', '王伟', NULL, '预备党员', NULL, '04');
INSERT INTO `student` VALUES ('AP0803309', '1988-06-03', '03', '广东', '女', 'N', '孙小梅', NULL, '群众', NULL, '03');
INSERT INTO `student` VALUES ('AP0803310', '1989-04-15', '03', '安徽', '男', 'N', '李伟新', NULL, '群众', NULL, '02');
INSERT INTO `student` VALUES ('AP0803342', '1989-02-22', '05', '广东', '男', 'Y', '余剑立', NULL, '团员', '74909', '01');
INSERT INTO `student` VALUES ('AP0803503', '1988-01-24', '05', '广东', '男', 'Y', '余浩然', NULL, '预备党员', '44526', '05');
INSERT INTO `student` VALUES ('AP0803506', '1988-01-25', '05', '广东', '男', 'Y', '俞威魏', NULL, '团员', '44526', '03');
INSERT INTO `student` VALUES ('AP0803508', '1988-01-26', '03', '广东', '男', 'Y', '袁斌', NULL, '群众', '44526', '05');
INSERT INTO `student` VALUES ('AP0803509', '1988-01-27', '03', '重庆', '男', 'Y', '张平', NULL, '团员', '44527', '02');
INSERT INTO `student` VALUES ('AP0803510', '1989-02-16', '03', '广东', '男', 'Y', '张伟', NULL, '群众', '44527', '01');
INSERT INTO `student` VALUES ('AP0803511', '1989-02-17', '03', '广东', '男', 'Y', '赵洲明', NULL, '团员', '44527', '01');
INSERT INTO `student` VALUES ('AP0803512', '1989-02-18', '03', '广东', '男', 'Y', '庄伟', NULL, '团员', '44527', '01');
INSERT INTO `student` VALUES ('AP0803513', '1989-02-02', '03', '广东', '男', 'Y', '洪彬斌', NULL, '团员', '44521', '03');
INSERT INTO `student` VALUES ('AP0803514', '1989-02-03', '03', '广东', '男', 'Y', '王泽清', NULL, '团员', '44521', '05');
INSERT INTO `student` VALUES ('AP0803606', '1988-01-20', '01', '广东', '男', 'Y', '王鑫', NULL, '团员', '44525', '03');
INSERT INTO `student` VALUES ('AP0803607', '1988-01-21', '01', '广东', '男', 'Y', '刘一民', NULL, '团员', '44525', '02');
INSERT INTO `student` VALUES ('AP0803608', '1988-01-22', '01', '广东', '男', 'Y', '姚健林', NULL, '团员', '44525', '01');
INSERT INTO `student` VALUES ('AP0803609', '1988-01-23', '01', '湖北', '女', 'Y', '姚燕', NULL, '团员', '86906', '05');
INSERT INTO `student` VALUES ('AP0803701', '1986-01-12', '01', '广东', '男', 'N', '蔡锐钦', NULL, '团员', '44531', '01');
INSERT INTO `student` VALUES ('AP0803702', '1986-01-13', '02', '广东', '男', 'Y', '蔡智明', NULL, '团员', '44520', '01');
INSERT INTO `student` VALUES ('AP0803703', '1986-01-14', '02', '广东', '男', 'N', '洪观正', NULL, '团员', '44520', '03');
INSERT INTO `student` VALUES ('AP0803704', '1986-01-15', '02', '湖南', '男', 'Y', '王亮', NULL, '预备党员', '44520', '01');
INSERT INTO `student` VALUES ('AP0803705', '1989-01-16', '02', '福建', '男', 'N', '万泉河', NULL, '群众', '44520', '02');
INSERT INTO `student` VALUES ('AP0803706', '1989-01-17', '02', '广东', '男', 'Y', '李小武', NULL, '团员', '44521', '04');
INSERT INTO `student` VALUES ('AP0803707', '1989-02-01', '03', '广东', '男', 'Y', '张明新', NULL, '预备党员', '44521', '01');
INSERT INTO `student` VALUES ('AP0803808', '1989-02-04', '03', '广东', '男', 'Y', '罗振铭', NULL, '团员', '44522', '05');
INSERT INTO `student` VALUES ('AP0803809', '1989-02-19', '03', '广东', '男', 'Y', '邹嵩', NULL, '团员', '44512', '03');
INSERT INTO `student` VALUES ('AP0803810', '1989-02-20', '03', '广东', '男', 'Y', '李景华', NULL, '团员', '44512', '05');
INSERT INTO `student` VALUES ('AP0803811', '1988-11-21', '03', '湖南', '女', 'N', '蒋敏燕', NULL, '团员', NULL, '05');
INSERT INTO `student` VALUES ('AP0803812', '1989-02-21', '03', '广东', '女', 'Y', '廖淑华', NULL, '团员', '87079', '04');
INSERT INTO `student` VALUES ('AP0803813', '1989-02-05', '03', '福建', '男', 'Y', '王青青', NULL, '团员', '44523', '02');
INSERT INTO `student` VALUES ('AP0806301', '1988-01-12', '01', '广东', '男', 'Y', '余杰伟', NULL, '团员', '44523', '04');
INSERT INTO `student` VALUES ('AP0806302', '1989-02-25', '01', '广东', '男', 'N', '区小鹏', NULL, '团员', NULL, '04');
INSERT INTO `student` VALUES ('AP0806303', '1989-02-26', '01', '广东', '男', 'Y', '肖明明', NULL, '团员', '74908', '01');
INSERT INTO `student` VALUES ('AP0806304', '1989-02-27', '01', '广东', '男', 'N', '季铭军', NULL, '团员', NULL, '03');
INSERT INTO `student` VALUES ('AP0806305', '1989-02-28', '01', '广东', '男', 'N', '靳荣声', NULL, '团员', NULL, '01');
INSERT INTO `student` VALUES ('AP0806306', '1989-03-01', '01', '广东', '男', 'Y', '刘文明', NULL, '群众', '71908', '01');
INSERT INTO `student` VALUES ('AP0806307', '1987-08-17', '02', '广东', '女', 'N', '谢梦娴', NULL, '团员', NULL, '01');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `teacherid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deptid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deptname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jobtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`teacherid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('005000010', '01', NULL, '女', '讲师', '冯小英');
INSERT INTO `teacher` VALUES ('005000011', '01', NULL, '女', '讲师', '李华倩');
INSERT INTO `teacher` VALUES ('005000012', '01', NULL, '女', '讲师', '张晚秋');
INSERT INTO `teacher` VALUES ('005000024', '01', NULL, '女', '讲师', '周敏怡');
INSERT INTO `teacher` VALUES ('005000027', '01', NULL, '男', '副教授', '张宏亮');
INSERT INTO `teacher` VALUES ('005000028', '01', NULL, '男', '副教授', '钱立峰');
INSERT INTO `teacher` VALUES ('006000012', '01', NULL, '男', '讲师', '周忠民');
INSERT INTO `teacher` VALUES ('006000013', '01', NULL, '女', '教授', '秦一平');
INSERT INTO `teacher` VALUES ('006000014', '01', NULL, '男', '教授', '徐光明');
INSERT INTO `teacher` VALUES ('006000015', '01', NULL, '男', '教授', '赵明生');
INSERT INTO `teacher` VALUES ('006000016', '01', NULL, '男', '讲师', '曹陆文');
INSERT INTO `teacher` VALUES ('006000017', '01', NULL, '男', '讲师', '曹英健');
INSERT INTO `teacher` VALUES ('006000018', '01', NULL, '女', '讲师', '马吉新');
INSERT INTO `teacher` VALUES ('006000019', '01', NULL, '女', '副教授', '陈秋丽');
INSERT INTO `teacher` VALUES ('006000020', '01', NULL, '男', '副教授', '黄晓鹏');
INSERT INTO `teacher` VALUES ('006000021', '01', NULL, '男', '副教授', '刘扬');
INSERT INTO `teacher` VALUES ('006000022', '01', NULL, '男', '副教授', '黄新华');
INSERT INTO `teacher` VALUES ('006000023', '01', NULL, '男', '副教授', '郑志明');
INSERT INTO `teacher` VALUES ('006000024', '01', NULL, '男', '副教授', '林文辉');
INSERT INTO `teacher` VALUES ('006000025', '02', NULL, '男', '副教授', '刘伟建');
INSERT INTO `teacher` VALUES ('006000029', '03', NULL, '男', '副教授', '张维新');
INSERT INTO `teacher` VALUES ('006000030', '03', NULL, '男', '副教授', '马明辉');
INSERT INTO `teacher` VALUES ('006000031', '03', NULL, '男', '副教授', '郭凤岙');
INSERT INTO `teacher` VALUES ('006000032', '03', NULL, '男', '副教授', '何益容');
INSERT INTO `teacher` VALUES ('006000033', '05', NULL, '男', '副教授', '张湘建');
INSERT INTO `teacher` VALUES ('006000034', '05', NULL, '女', '副教授', '刘玉铭');
INSERT INTO `teacher` VALUES ('006000035', '05', NULL, '男', '副教授', '胡志强');
INSERT INTO `teacher` VALUES ('006000036', '05', NULL, '男', '副教授', '罗晖怡');
INSERT INTO `teacher` VALUES ('006000037', '05', NULL, '男', '讲师', '赵士洲');
INSERT INTO `teacher` VALUES ('010000026', '04', NULL, '男', '副教授', '蔡阳');
INSERT INTO `teacher` VALUES ('010000037', '04', NULL, '男', '教授', '区先民');
INSERT INTO `teacher` VALUES ('013000010', '04', NULL, '男', '讲师', '江东晓');
INSERT INTO `teacher` VALUES ('013000025', '02', NULL, '男', '副教授', '李晓健');
INSERT INTO `teacher` VALUES ('013000038', '02', NULL, '男', '教授', '黄锋');
INSERT INTO `teacher` VALUES ('013000039', '02', NULL, '男', '教授', '李永亮');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('01', '123456', 'admin');

SET FOREIGN_KEY_CHECKS = 1;
