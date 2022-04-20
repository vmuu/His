/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : yxtx_mms

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 08/04/2022 09:59:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bed_info
-- ----------------------------
DROP TABLE IF EXISTS `bed_info`;
CREATE TABLE `bed_info`  (
  `bed_id` int(11) NOT NULL,
  `bed_no` int(255) NULL DEFAULT NULL,
  `bed_price` int(255) NULL DEFAULT NULL,
  `bed_state` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`bed_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bed_info
-- ----------------------------
INSERT INTO `bed_info` VALUES (1, 101, 100, 0);
INSERT INTO `bed_info` VALUES (2, 102, 100, 0);
INSERT INTO `bed_info` VALUES (3, 103, 100, 0);
INSERT INTO `bed_info` VALUES (4, 104, 100, 1);
INSERT INTO `bed_info` VALUES (5, 105, 100, 1);
INSERT INTO `bed_info` VALUES (6, 106, 100, 1);
INSERT INTO `bed_info` VALUES (7, 107, 200, 0);
INSERT INTO `bed_info` VALUES (8, 108, 200, 0);
INSERT INTO `bed_info` VALUES (9, 109, 200, 0);
INSERT INTO `bed_info` VALUES (10, 110, 200, 0);
INSERT INTO `bed_info` VALUES (11, 111, 200, 0);
INSERT INTO `bed_info` VALUES (12, 112, 200, 0);
INSERT INTO `bed_info` VALUES (13, 113, 200, 0);
INSERT INTO `bed_info` VALUES (14, 114, 200, 0);
INSERT INTO `bed_info` VALUES (15, 115, 200, 1);
INSERT INTO `bed_info` VALUES (16, 116, 200, 0);
INSERT INTO `bed_info` VALUES (17, 117, 200, 0);
INSERT INTO `bed_info` VALUES (18, 118, 200, 0);
INSERT INTO `bed_info` VALUES (19, 119, 200, 0);
INSERT INTO `bed_info` VALUES (20, 120, 200, 0);
INSERT INTO `bed_info` VALUES (21, 121, 200, 0);
INSERT INTO `bed_info` VALUES (22, 122, 200, 0);
INSERT INTO `bed_info` VALUES (23, 123, 200, 0);
INSERT INTO `bed_info` VALUES (24, 124, 200, 0);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '科别编号',
  `category_sort` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生科别',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '内科');
INSERT INTO `category` VALUES (2, '外科');
INSERT INTO `category` VALUES (3, '儿科');
INSERT INTO `category` VALUES (4, '妇科');
INSERT INTO `category` VALUES (5, '神经内一科');
INSERT INTO `category` VALUES (6, '神经内二科');
INSERT INTO `category` VALUES (7, '神经内三科');
INSERT INTO `category` VALUES (8, '呼吸与危重症医');
INSERT INTO `category` VALUES (9, '消化内科');
INSERT INTO `category` VALUES (10, '感染疾病科');
INSERT INTO `category` VALUES (11, '皮肤科');
INSERT INTO `category` VALUES (12, '中西医结合科');
INSERT INTO `category` VALUES (13, '心血管内科一病区');
INSERT INTO `category` VALUES (14, '心血管内科二病');
INSERT INTO `category` VALUES (15, '内分泌科');
INSERT INTO `category` VALUES (16, '肾病科');
INSERT INTO `category` VALUES (17, '普通外科一病区');
INSERT INTO `category` VALUES (18, '骨一科');
INSERT INTO `category` VALUES (19, '泌尿外科');
INSERT INTO `category` VALUES (20, '烧伤整形与皮肤');
INSERT INTO `category` VALUES (21, '妇产科');
INSERT INTO `category` VALUES (22, '急诊医学科');
INSERT INTO `category` VALUES (23, '新生儿病区');

-- ----------------------------
-- Table structure for doctor_info
-- ----------------------------
DROP TABLE IF EXISTS `doctor_info`;
CREATE TABLE `doctor_info`  (
  `doctor_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `doctor_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `doctor_sex` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `doctor_title` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称',
  `doctor_job` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务',
  `doctor_subject` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科别',
  `doctor_birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `job_tiem` date NULL DEFAULT NULL COMMENT '工作日期',
  PRIMARY KEY (`doctor_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doctor_info
-- ----------------------------
INSERT INTO `doctor_info` VALUES (1, '羊禹飞', '女', '主任医师', '科主任', '1', '1985-02-04', '2019-10-05');
INSERT INTO `doctor_info` VALUES (3, '李四', '男', '医师', '科员', '2', '1985-02-06', '2019-10-07');
INSERT INTO `doctor_info` VALUES (4, '王五', '女', '医师', '科员', '2', '1985-02-07', '2019-10-08');
INSERT INTO `doctor_info` VALUES (5, '蔡青山', '男', '主任医师', '科主任', '2', '1985-02-08', '2019-10-09');
INSERT INTO `doctor_info` VALUES (11, '杨明金', '男', '主任医师', '科主任', '19', '2021-05-15', '2021-05-13');
INSERT INTO `doctor_info` VALUES (12, '郭超', '女', '医师', '科主任', '20', '2021-05-07', '2021-03-12');
INSERT INTO `doctor_info` VALUES (14, '杨明金', '男', '主任医师', '科主任', '1', '1985-02-04', '2019-10-05');
INSERT INTO `doctor_info` VALUES (15, '王五', '女', '医师', '科员', '9', '1985-02-05', '2019-10-06');
INSERT INTO `doctor_info` VALUES (16, '颜权良', '男', '医师', '科员', '12', '1985-02-06', '2019-10-07');
INSERT INTO `doctor_info` VALUES (17, '李光华', '女', '主任医师', '科主任', '6', '1985-02-07', '2019-10-08');
INSERT INTO `doctor_info` VALUES (18, '杨雪峰', '男', '医师', '科主任', '10', '1985-02-08', '2019-10-09');
INSERT INTO `doctor_info` VALUES (19, '吴用', '女', '主任医师', '科主任', '14', '1980-01-01', '2019-10-10');
INSERT INTO `doctor_info` VALUES (20, '肖恩', '男', '医师', '科员', '13', '1980-01-02', '2019-10-11');
INSERT INTO `doctor_info` VALUES (21, '杨明金', '女', '主任医师', '科员', '19', '1989-01-03', '2019-10-12');
INSERT INTO `doctor_info` VALUES (22, '王五', '男', '医师', '科员', '17', '1980-01-04', '2019-10-13');
INSERT INTO `doctor_info` VALUES (23, '颜权良', '女', '医师', '科员', '18', '1981-01-05', '2019-10-14');
INSERT INTO `doctor_info` VALUES (24, '李光华', '男', '医师', '科员', '6', '1980-01-06', '2019-10-15');
INSERT INTO `doctor_info` VALUES (25, '杨雪峰', '女', '医师', '科员', '21', '1985-01-07', '2019-10-16');
INSERT INTO `doctor_info` VALUES (26, '吴用', '男', '医师', '科员', '9', '1980-01-08', '2019-10-17');
INSERT INTO `doctor_info` VALUES (27, '肖恩', '女', '医师', '科员', '11', '1980-01-09', '2019-10-18');

-- ----------------------------
-- Table structure for login_info
-- ----------------------------
DROP TABLE IF EXISTS `login_info`;
CREATE TABLE `login_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户的权限',
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `permissions` int(255) NOT NULL COMMENT '权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_info
-- ----------------------------
INSERT INTO `login_info` VALUES (1, 'admin', '123456', 1);
INSERT INTO `login_info` VALUES (2, 'ymj', '123456', 1);
INSERT INTO `login_info` VALUES (3, 'gc', '123456', 2);

-- ----------------------------
-- Table structure for patient_info
-- ----------------------------
DROP TABLE IF EXISTS `patient_info`;
CREATE TABLE `patient_info`  (
  `patient_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `patient_subject` int(255) NULL DEFAULT NULL COMMENT '科别，与科别表关联',
  `patient_bedno` int(11) NULL DEFAULT NULL COMMENT '病床号',
  `patient_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病人姓名',
  `patient_sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病人性别',
  `patient_age` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病人年龄',
  `patient_disease` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病状',
  `patient_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主治医师，与医生编号关联',
  `admission_date` datetime(0) NULL DEFAULT NULL COMMENT '入院时间',
  `discharge_date` datetime(0) NOT NULL COMMENT '出院时间',
  PRIMARY KEY (`patient_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of patient_info
-- ----------------------------
INSERT INTO `patient_info` VALUES (3, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (4, 1, 4, '王七', '男', '42', '发烧，伴随头痛', '2', '2019-08-04 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (5, 2, 5, '肖尔', '男', '54', '发烧，伴随头痛112', '3', '2019-08-05 00:00:00', '2021-04-14 00:00:00');
INSERT INTO `patient_info` VALUES (6, 2, 6, '李华', '男', '52', '发烧，伴随头痛', '3', '2019-08-06 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (7, 2, 7, '李明', '女', '30', '发烧，伴随头痛', '3', '2019-08-07 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (8, 2, 7, '王五', '女', '20', '发烧，伴随头痛', '4', '2019-08-15 00:00:00', '2021-04-14 00:00:00');
INSERT INTO `patient_info` VALUES (52, 1, 2, '杨海红', '男', '549', '发烧，伴随头痛', '2', '2019-08-05 00:00:00', '2021-04-14 00:00:00');
INSERT INTO `patient_info` VALUES (53, 1, 3, '羊禹飞', '女', '68', '耳鸣', '2', '2019-08-03 00:00:00', '2021-04-14 00:00:00');
INSERT INTO `patient_info` VALUES (54, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (55, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (58, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-05-01 00:00:00');
INSERT INTO `patient_info` VALUES (59, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (60, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (61, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (62, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (63, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (64, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (65, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (66, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (67, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (68, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (69, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (70, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (71, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (72, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (73, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (74, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (75, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (76, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (77, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (78, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (79, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (80, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (81, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (82, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (83, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (84, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (85, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (86, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (87, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (88, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (89, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (90, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (91, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (92, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (93, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (94, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (95, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (96, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (97, 1, 3, '李武', '男', '35', '发烧，伴随头痛', '2', '2019-08-03 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (98, 2, 5, '肖尔', '女', '54', '发烧，伴随头痛', '3', '2019-08-05 00:00:00', '2021-04-14 21:54:55');
INSERT INTO `patient_info` VALUES (100, 4, 24, '杨明金', '女', '50', '社交恐惧症4234', '5', '2020-11-12 00:00:00', '2020-11-12 00:00:00');
INSERT INTO `patient_info` VALUES (101, 4, 1, '杨明金', '男', '46', '12121', '4', '2001-12-12 00:00:00', '2001-12-12 00:00:00');
INSERT INTO `patient_info` VALUES (106, 4, 1, '张张三', '男', '2020', '111', '1', '2021-04-02 00:00:00', '2021-04-02 00:00:00');
INSERT INTO `patient_info` VALUES (107, 4, 1, '杨海红', '男', '50', 'youbing ', '1', '2021-05-02 00:00:00', '2021-04-22 00:00:00');
INSERT INTO `patient_info` VALUES (108, 4, 22, '张三', '女', '60', '啊啊啊啊', '1', '2021-04-15 00:00:00', '2021-04-23 00:00:00');
INSERT INTO `patient_info` VALUES (109, 4, 8, 'waike', '女', '45', 'aaaaa', '1', '2021-04-22 00:00:00', '2021-04-30 00:00:00');
INSERT INTO `patient_info` VALUES (110, 18, 1, '郭超', '女', '52', '无', '5', '2021-03-10 00:00:00', '2021-05-22 00:00:00');
INSERT INTO `patient_info` VALUES (111, 17, 15, '阿道夫', '男', '12', '发热', '1', '2021-05-06 00:00:00', '2021-05-28 00:00:00');

-- ----------------------------
-- Table structure for tb_users
-- ----------------------------
DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE `tb_users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PASSWORD` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_users
-- ----------------------------
INSERT INTO `tb_users` VALUES (1, 'yhh', '123456', '男', '2001-12-13', '2942164171@qq.com');
INSERT INTO `tb_users` VALUES (2, 'yqc', '123', 'boy', '2021-07-01', '29429164171@qq.com');
INSERT INTO `tb_users` VALUES (3, 'gc', '123456', 'boy', '2021-07-25', '29429164171@qq.com');

-- ----------------------------
-- Table structure for toll_message
-- ----------------------------
DROP TABLE IF EXISTS `toll_message`;
CREATE TABLE `toll_message`  (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `patient_id` int(11) NULL DEFAULT NULL COMMENT '病人编号',
  `charge_projects` int(11) NULL DEFAULT NULL COMMENT '收费项目',
  `price` int(11) NULL DEFAULT NULL COMMENT '单价',
  `sum_price` int(11) NULL DEFAULT NULL COMMENT '金额',
  `toll_time` datetime(0) NULL DEFAULT NULL COMMENT '收费日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of toll_message
-- ----------------------------
INSERT INTO `toll_message` VALUES (1, 1, 1, 100, 200, '2021-04-11 14:26:18');
INSERT INTO `toll_message` VALUES (2, 2, 1, 2500, 500, '2021-05-08 14:31:06');
INSERT INTO `toll_message` VALUES (3, 5, 2, 200, 500, '2021-04-13 14:31:30');
INSERT INTO `toll_message` VALUES (4, 3, 3, 1965, 500, '2021-05-07 09:03:24');

-- ----------------------------
-- Table structure for toll_project
-- ----------------------------
DROP TABLE IF EXISTS `toll_project`;
CREATE TABLE `toll_project`  (
  `toll_id` int(11) NOT NULL COMMENT '收费项目id',
  `toll_project` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名',
  `toll_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '项目价格',
  PRIMARY KEY (`toll_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of toll_project
-- ----------------------------
INSERT INTO `toll_project` VALUES (1, 'X线检查', 100.00);
INSERT INTO `toll_project` VALUES (2, 'X线透视检查', 200.00);
INSERT INTO `toll_project` VALUES (3, '普通透视', 150.00);
INSERT INTO `toll_project` VALUES (4, 'X线摄影', 200.00);
INSERT INTO `toll_project` VALUES (5, 'B超', 50.00);

SET FOREIGN_KEY_CHECKS = 1;
