/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100407
 Source Host           : localhost:3306
 Source Schema         : movie

 Target Server Type    : MySQL
 Target Server Version : 100407
 File Encoding         : 65001

 Date: 07/12/2021 16:52:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `director` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `length` double NOT NULL,
  `genre` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (1, 'myexam', 'Max Musterman 3', 120.3, 0);
INSERT INTO `movie` VALUES (2, 'Some Action Movie 2', 'Max Musterman 2', 120.3, 0);
INSERT INTO `movie` VALUES (3, 'Some Action Movie', 'Max Musterman', 120.3, 3);
INSERT INTO `movie` VALUES (4, 'in my life', 'jeerawat thaenthaisong', 120.3, 0);

SET FOREIGN_KEY_CHECKS = 1;
