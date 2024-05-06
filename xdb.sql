/*
 Navicat MySQL Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : xdb

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 08/05/2023 22:48:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for x_menu
-- ----------------------------
DROP TABLE IF EXISTS `x_menu`;
CREATE TABLE `x_menu`  (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `redirect` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `is_leaf` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hidden` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_menu
-- ----------------------------
INSERT INTO `x_menu` VALUES (1, 'Layout', '/sys', '/sys/user', 'sysManage', '系统管理', 'userManage', 0, 'N', 0);
INSERT INTO `x_menu` VALUES (2, 'sys/user', 'user', NULL, 'userList', '用户列表', 'user', 1, 'Y', 0);
INSERT INTO `x_menu` VALUES (3, 'sys/role', 'role', NULL, 'roleList', '角色列表', 'roleManage', 1, 'Y', 0);
INSERT INTO `x_menu` VALUES (4, 'Layout', '/test', '/test/test1', 'test', '功能测试', 'form', 0, 'N', 0);
INSERT INTO `x_menu` VALUES (5, 'test/test1', 'test1', '', 'test1', '测试点一', 'form', 4, 'Y', 0);
INSERT INTO `x_menu` VALUES (6, 'test/test2', 'test2', '', 'test2', '测试点二', 'form', 4, 'Y', 0);
INSERT INTO `x_menu` VALUES (7, 'test/test3', 'test3', '', 'test3', '测试点三', 'form', 4, 'Y', 0);

-- ----------------------------
-- Table structure for x_role
-- ----------------------------
DROP TABLE IF EXISTS `x_role`;
CREATE TABLE `x_role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role_desc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_role
-- ----------------------------
INSERT INTO `x_role` VALUES (1, 'admin', '超级管理员');
INSERT INTO `x_role` VALUES (2, 'hr', '人事管理员');
INSERT INTO `x_role` VALUES (3, 'normal', '普通员工');

-- ----------------------------
-- Table structure for x_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `x_role_menu`;
CREATE TABLE `x_role_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `menu_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_role_menu
-- ----------------------------
INSERT INTO `x_role_menu` VALUES (11, 1, 1);
INSERT INTO `x_role_menu` VALUES (12, 1, 2);
INSERT INTO `x_role_menu` VALUES (13, 1, 3);
INSERT INTO `x_role_menu` VALUES (14, 1, 4);
INSERT INTO `x_role_menu` VALUES (15, 1, 5);
INSERT INTO `x_role_menu` VALUES (16, 1, 6);
INSERT INTO `x_role_menu` VALUES (17, 1, 7);
INSERT INTO `x_role_menu` VALUES (18, 3, 4);
INSERT INTO `x_role_menu` VALUES (19, 3, 5);
INSERT INTO `x_role_menu` VALUES (20, 3, 6);
INSERT INTO `x_role_menu` VALUES (21, 3, 7);

-- ----------------------------
-- Table structure for x_user
-- ----------------------------
DROP TABLE IF EXISTS `x_user`;
CREATE TABLE `x_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT NULL,
  `avatar` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deleted` int(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_user
-- ----------------------------
INSERT INTO `x_user` VALUES (1, 'admin', '$2a$10$fT9xEnPbSYSOpy.b5kqCkuJaNPnU.sP7HTB7ztGzQbbwCZ3OQ3oy.', 'super@aliyun.com', '18677778888', 1, 'https://pic1.zhimg.com/v2-7c6505eed9db133f0d85db3315335864_r.jpg', 0);
INSERT INTO `x_user` VALUES (2, 'zhangsan', '$2a$10$fT9xEnPbSYSOpy.b5kqCkuJaNPnU.sP7HTB7ztGzQbbwCZ3OQ3oy.', 'zhangsan@gmail.com', '13966667777', 0, 'https://pic2.zhimg.com/v2-3950c56f4dc0a833bece39ec257f8401_r.jpg', 0);
INSERT INTO `x_user` VALUES (3, 'lisa', '565656', 'lisi@gmail.com', '13966667778', 1, 'https://pic2.zhimg.com/v2-4dbd9490f32cfe8fcc8a379a97593d69_r.jpg', 0);
INSERT INTO `x_user` VALUES (4, 'wang', '123123', 'wangwu@gmail.com', '13966667772', 0, 'https://pic1.zhimg.com/v2-e2630e9cca6e806b00c1262d1ab15dac_r.jpg', 0);
INSERT INTO `x_user` VALUES (5, 'zhaoer', '999999', 'zhaoer@gmail.com', '13966667776', 1, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 0);
INSERT INTO `x_user` VALUES (6, 'songliu', '321321', 'songliu@gmail.com', '13966667771', 1, 'https://pic4.zhimg.com/v2-3b3843b9c7aff5fd559e109e78970693_r.jpg', 0);
INSERT INTO `x_user` VALUES (7, 'aaa', '666555', 'aaa@aliyun.com', '18899998888', 1, 'https://pic3.zhimg.com/v2-698a5ea814e785a2a7f1c00237c38b6e_r.jpg', 0);
INSERT INTO `x_user` VALUES (8, 'bbb', '666666', 'bbb@qq.com', '18888888999', 0, 'https://pic3.zhimg.com/v2-163d91c36ba4cdcf1472734b434f1baa_r.jpg', 0);
INSERT INTO `x_user` VALUES (9, 'ccc', '858585', '1111@ali.com', '11111111', 1, 'https://pic3.zhimg.com/80/v2-ede5e509f2c00a447134024105e4e2de_720w.webp', 0);
INSERT INTO `x_user` VALUES (10, 'xxx222', '111111', '1122@qq.com', '111111122', 0, 'https://pic4.zhimg.com/v2-0d5794ab7de2dfd2d1a81d4ef6f539eb_r.jpg', 0);
INSERT INTO `x_user` VALUES (11, 'yyy', '456789', '1111111@ali.com', '1111111', 1, 'https://pic4.zhimg.com/v2-2767be12e3a4162e2e8615832ed6cb17_r.jpg', 0);
INSERT INTO `x_user` VALUES (12, 'xxx6', '56464', 'xxx6@aliyun.com', '18677778886', 1, 'https://pic3.zhimg.com/v2-1e8d062cccd193b461344ab5412277fa_r.jpg', 0);
INSERT INTO `x_user` VALUES (13, 'test', '123456', 'test@ali.com', '11111111111', 1, 'https://pic1.zhimg.com/v2-ea64e1b6b458e3f3c4d5955d79e7ccb4_r.jpg', 0);
INSERT INTO `x_user` VALUES (14, 'xxx', '1234554', 'xxx@ali.com', '11111111111', 1, 'https://pic2.zhimg.com/v2-022520e51e18628344406889b00fd9bd_r.jpg', 0);
INSERT INTO `x_user` VALUES (15, 'hrh', '123456', '2328722120@qq.com', '17773418030', 1, 'https://pic1.zhimg.com/v2-4575ef91dac12b27d45a37fe860a7904_r.jpg', 0);
INSERT INTO `x_user` VALUES (16, 'zby', '111111', '2321555@qq.com', '188774114', 0, 'https://pic1.zhimg.com/v2-11f89daf97c89972ee02a808750ee884_r.jpg', 0);
INSERT INTO `x_user` VALUES (17, '12345', '$2a$10$fT9xEnPbSYSOpy.b5kqCkuJaNPnU.sP7HTB7ztGzQbbwCZ3OQ3oy.', '45555556@qq.com', '15672455555', 1, 'https://pic3.zhimg.com/v2-3138a81b743c0b9c2c792c61f0f016c6_r.jpg', 1);

-- ----------------------------
-- Table structure for x_user_role
-- ----------------------------
DROP TABLE IF EXISTS `x_user_role`;
CREATE TABLE `x_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_user_role
-- ----------------------------
INSERT INTO `x_user_role` VALUES (1, 1, 1);
INSERT INTO `x_user_role` VALUES (2, 1, 3);
INSERT INTO `x_user_role` VALUES (6, 3, 2);
INSERT INTO `x_user_role` VALUES (7, 4, 2);
INSERT INTO `x_user_role` VALUES (8, 4, 3);
INSERT INTO `x_user_role` VALUES (11, 2, 3);

SET FOREIGN_KEY_CHECKS = 1;
