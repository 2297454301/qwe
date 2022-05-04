/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : kgc1125

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 11/03/2022 15:16:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade`  (
  `gradeid` int NOT NULL AUTO_INCREMENT,
  `granename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`gradeid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES (1, '一年级');
INSERT INTO `grade` VALUES (2, '二年级');
INSERT INTO `grade` VALUES (3, '三年级');

-- ----------------------------
-- Table structure for kgc1125
-- ----------------------------
DROP TABLE IF EXISTS `kgc1125`;
CREATE TABLE `kgc1125`  (
  `studentNo` int NOT NULL COMMENT '学号',
  `LoginPwd` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `StudentName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `Sex` tinyint(1) NULL DEFAULT NULL COMMENT '性别，取值0或1',
  `GradeId` int NULL DEFAULT NULL COMMENT '年纪编号',
  `Phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '联系电话，允许为空，即可选输入',
  `Address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地址，允许为空，即可选输入',
  `bornDate` datetime(0) NULL DEFAULT NULL COMMENT '出生日期',
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮箱账号，允许为空',
  `IdentityCard` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '身份正好'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kgc1125
-- ----------------------------

-- ----------------------------
-- Table structure for peoloe
-- ----------------------------
DROP TABLE IF EXISTS `peoloe`;
CREATE TABLE `peoloe`  (
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓名'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of peoloe
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键，学号',
  `pwd` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '123456' COMMENT '密码',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '匿名' COMMENT '学生姓名',
  `SEX` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '男',
  `birthday` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '123456', '匿名', '男', '2021-11-25 16:13:44');

-- ----------------------------
-- Table structure for student1
-- ----------------------------
DROP TABLE IF EXISTS `student1`;
CREATE TABLE `student1`  (
  `studentno` int NOT NULL,
  `studentname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NIMIN',
  `gradeid` int NULL DEFAULT NULL,
  PRIMARY KEY (`studentno`) USING BTREE,
  INDEX `FK_gradeid`(`gradeid`) USING BTREE,
  CONSTRAINT `FK_gradeid` FOREIGN KEY (`gradeid`) REFERENCES `grade` (`gradeid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student1
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
