/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80033 (8.0.33)
 Source Host           : localhost:3306
 Source Schema         : cilicili

 Target Server Type    : MySQL
 Target Server Version : 80033 (8.0.33)
 File Encoding         : 65001

 Date: 30/07/2023 21:22:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `config_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `config_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('001', 'carouselFigure', '[4,5,3,2,1]');

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `reviewVideoId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `reviewContent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `reviewTime` datetime NOT NULL,
  `toReplyUserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '引用评论的评论人',
  `toReplyReviewId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '引用评论的评论内容',
  `primaryReviewId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属一级评论',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES ('00f734a2-4c0a-4980-8b96-e499e840d6c9', '1', '4', '43', '2023-07-25 22:56:32', '4', '93b874f1-76fc-4679-ad20-cf58e24e754e', '156c4116-2229-494b-8b5b-714c6ffe76f7');
INSERT INTO `review` VALUES ('0197f569-0da0-4518-a7a4-6b15f80c8325', '12', '4', 'erer', '2023-07-25 21:14:16', '4', '4f11001b-b9e3-4b89-9409-c77a3eccd289', '98a441ce-8a9f-42ba-8855-03c8e3b47e4b');
INSERT INTO `review` VALUES ('01baca67-bfd6-4b3c-ae56-092a70b3b8fc', '4', '4', '12', '2023-07-26 18:45:43', '4', '055c54b1-20d5-49ee-b5ab-28f949fa38ab', '055c54b1-20d5-49ee-b5ab-28f949fa38ab');
INSERT INTO `review` VALUES ('0272f505-4081-448e-b1f9-3410b5d2bbbf', '4', '4', '3', '2023-07-26 18:45:48', '4', 'bd3d59d8-f99c-46d8-944b-f415986d3819', '055c54b1-20d5-49ee-b5ab-28f949fa38ab');
INSERT INTO `review` VALUES ('02b4b848-e0b3-4074-a297-8a9cc16973d6', '4', '2', 'we', '2023-07-24 22:09:18', '2', '89a275e4-0747-496f-ad6d-b23ab0d24425', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review` VALUES ('030359ec-82f6-4a26-b1d1-2acd1011175a', '1', '4', '3', '2023-07-25 22:16:36', '4', '743f6e08-bff5-4538-8dbf-13982e6dad24', '743f6e08-bff5-4538-8dbf-13982e6dad24');
INSERT INTO `review` VALUES ('055c54b1-20d5-49ee-b5ab-28f949fa38ab', '4', '4', '1', '2023-07-26 18:45:40', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('0661afb2-87f0-47c1-bd6c-7c61c61f3b68', '51', '4', '23', '2023-07-26 23:02:02', '4', '7425f503-7c0a-467f-b718-6b5a4b10856b', '7425f503-7c0a-467f-b718-6b5a4b10856b');
INSERT INTO `review` VALUES ('06e5a0fd-7fd6-4a8d-905c-2e9463a37683', '4', '4', '123', '2023-07-26 20:15:45', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('06fcc438-a71b-43d5-a98c-615d6274a4d1', '1', '4', '323', '2023-07-25 23:01:03', '4', '3fc7e685-635d-4eb4-b3ad-d7b16ab9331a', '3fc7e685-635d-4eb4-b3ad-d7b16ab9331a');
INSERT INTO `review` VALUES ('07d8ea7c-1d97-4cd9-9135-3a70a5ccf2d3', '4', '4', '123', '2023-07-26 20:15:50', '4', '06e5a0fd-7fd6-4a8d-905c-2e9463a37683', '06e5a0fd-7fd6-4a8d-905c-2e9463a37683');
INSERT INTO `review` VALUES ('07fed6b5-73df-450c-99b1-c8ee5a651e51', '4', '4', '232', '2023-07-26 20:01:16', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('08430cfb-a215-4d4f-99c2-96d5d2407245', '5', '4', '第一', '2023-07-27 22:09:36', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('087d26ee-041e-4202-ae52-5b11126b64d6', '32', '4', '沙发', '2023-07-27 21:09:24', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('08d568a7-682c-4244-bcae-10a9c46f5156', '4', '1', '233', '2023-07-22 14:02:22', '1', '39392409-8953-4521-89c2-404270837fef', '1');
INSERT INTO `review` VALUES ('093ca390-9fb0-494e-8d67-e415a715d741', '4', '2', '丰田车友会的作用666', '2023-07-23 20:22:20', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('0b1ec803-8030-427e-8a72-d55052c83de1', '4', '4', '123', '2023-07-26 20:15:39', '4', 'fa48b0ac-2ae0-4dd3-b1f2-6a4a9b074661', 'fa48b0ac-2ae0-4dd3-b1f2-6a4a9b074661');
INSERT INTO `review` VALUES ('0babdad6-9859-4334-996d-c0b2f8b57352', '4', '4', '123', '2023-07-26 20:18:36', '4', '70380443-0287-477b-85d0-6de3c8491760', '70380443-0287-477b-85d0-6de3c8491760');
INSERT INTO `review` VALUES ('0dd24544-a4e0-450f-ace2-b1bae99cb064', '51', '4', ' ', '2023-07-26 23:01:59', '4', '7425f503-7c0a-467f-b718-6b5a4b10856b', '7425f503-7c0a-467f-b718-6b5a4b10856b');
INSERT INTO `review` VALUES ('0dd4678d-64e0-4c6a-aacc-c755b3b46373', '51', '4', '      ', '2023-07-27 19:41:08', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('1', '4', '1', '小埋如果暑假一直都在玩游戏看漫画的话也就是说她并没有写作业换句话说就是她们根本没有作业，这也就表明了我马上要开学了还没有写完暑假作业，也就是说我还是继续追番吧反正也补不完_(:3」∠)_', '2023-07-13 08:17:19', NULL, NULL, '');
INSERT INTO `review` VALUES ('12667f43-b0c1-4831-9ef9-f3b861fca2f6', '4', '2', '??', '2023-07-30 12:55:52', '1', 'bfe88508-edf9-4491-96ba-b8838227916f', 'bfe88508-edf9-4491-96ba-b8838227916f');
INSERT INTO `review` VALUES ('12a02685-ea92-446d-92fb-c49b08bb68e6', '4', '2', '123', '2023-07-24 23:04:47', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('1324bfae-f1f8-4bd7-80b2-54c51a02e6e2', '1', '4', '中午好', '2023-07-29 11:14:14', '4', '1504d519-5d33-43c5-b280-a45b276c20ec', 'a736bf6e-b402-4c73-85a5-000b07483fd8');
INSERT INTO `review` VALUES ('13a36b8b-40ed-41a9-aa52-7798db289e94', '4', '4', '123', '2023-07-26 20:18:32', '4', '70380443-0287-477b-85d0-6de3c8491760', '70380443-0287-477b-85d0-6de3c8491760');
INSERT INTO `review` VALUES ('1504d519-5d33-43c5-b280-a45b276c20ec', '1', '4', '你好', '2023-07-29 11:14:07', '4', 'a736bf6e-b402-4c73-85a5-000b07483fd8', 'a736bf6e-b402-4c73-85a5-000b07483fd8');
INSERT INTO `review` VALUES ('156c4116-2229-494b-8b5b-714c6ffe76f7', '1', '4', '342', '2023-07-25 22:56:19', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('1989fbf8-b7b9-4bb2-9b81-b13f68de5f41', '4', '2', '22', '2023-07-23 20:19:51', '2', '98839620-9ba2-41f9-9767-8d20821244c4', '98839620-9ba2-41f9-9767-8d20821244c4');
INSERT INTO `review` VALUES ('1a0516ab-2e21-45ac-8614-932823fe13be', '1', '4', '323', '2023-07-25 23:00:49', '4', 'c102b5e6-5a24-4798-afb0-3debe846c16a', 'b79cefd2-ad41-446e-b9db-514ead53cf1b');
INSERT INTO `review` VALUES ('1b4187dd-0acf-47b3-a673-318effbfd2de', '1', '4', 'we', '2023-07-25 22:19:28', '4', '2221f4de-f0dd-4019-9959-d9d0e647dd53', '28a1f4d2-c0f5-4285-b28c-1e22d17558ae');
INSERT INTO `review` VALUES ('1da736b1-45ec-4610-9e1e-669ed41bf220', '4', '4', 'we', '2023-07-26 20:01:12', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('1e10005e-dec1-4a87-9fad-90451f3fefba', '4', '2', '233', '2023-07-24 23:04:27', '2', 'b5d0b840-2c45-4c30-9706-01a4ededaa1a', 'b62095a4-a3c8-4fdb-bdab-cd57b7921e9c');
INSERT INTO `review` VALUES ('1fc08ace-a1d6-4b11-a980-36d687ad7cfc', '4', '4', '2', '2023-07-26 19:57:42', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('2', '4', '2', '大佬666', '2023-07-22 08:19:13', '1', '1', '1');
INSERT INTO `review` VALUES ('2020f333-d12b-49ae-a077-c6f3bf1f83bf', '4', '4', 'ewew', '2023-07-25 23:11:23', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('21e97a8f-0eef-43a5-9de2-f67a7b26882d', '1', '4', 'we', '2023-07-25 22:58:06', '4', '730d3248-6277-41e3-bc14-6de79d1f2a96', 'b73114d6-81e1-4543-98f1-8f57e95d3553');
INSERT INTO `review` VALUES ('2221f4de-f0dd-4019-9959-d9d0e647dd53', '1', '4', 'e', '2023-07-25 22:19:25', '4', 'b65e4b23-6c59-469d-9112-007da4dce8a2', '28a1f4d2-c0f5-4285-b28c-1e22d17558ae');
INSERT INTO `review` VALUES ('22ec1f0d-2fbc-40d7-886e-a894ab768649', '4', '4', '1232', '2023-07-26 20:05:17', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('230e4c0a-77a3-4fdd-8299-ed0c071f90fb', '4', '2', 'test', '2023-07-29 22:31:15', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('23aebd3f-7c1d-4eb3-bcde-47123108399d', '12', '4', '789', '2023-07-25 21:14:55', '4', '7cd62a87-1d11-479e-a325-73bfe6ee8d0e', '7cd62a87-1d11-479e-a325-73bfe6ee8d0e');
INSERT INTO `review` VALUES ('23d16d7e-3e36-4874-978e-8a8c944ca09e', '4', '4', '3', '2023-07-26 18:45:53', '4', '3eb5eef2-894f-4c45-a15d-cee34d459394', '055c54b1-20d5-49ee-b5ab-28f949fa38ab');
INSERT INTO `review` VALUES ('24762f38-2974-4d6a-b6aa-d5c769be0ba1', '4', '3', '这次总行了扒？？', '2023-07-22 17:08:15', '3', '3', '3');
INSERT INTO `review` VALUES ('24e3173c-e460-4d97-a293-6a4d080260a3', '4', '4', '333', '2023-07-25 23:11:13', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('2547f9bc-a0f5-46eb-bb3a-d9e9964de53a', '1', '4', 'ewr', '2023-07-25 22:16:00', '4', '2a6cf4b4-e557-47ba-96f3-71dd44e03ccc', 'b788b9b9-2310-4ff3-a9d8-35a962368141');
INSERT INTO `review` VALUES ('26c63642-44af-4f63-b794-f4091ecefaa1', '4', '4', '大家好 我是小灰灰', '2023-07-23 23:01:07', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('26ef80ec-7fb4-4f6e-b07a-a94d6d6f329a', '4', '2', 'ewq', '2023-07-23 20:27:26', '2', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review` VALUES ('27b219cc-136b-42fc-93cf-e27dbf249c9b', '4', '2', '小跟班', '2023-07-22 16:30:24', '2', '2', '1');
INSERT INTO `review` VALUES ('28752b2f-3ad0-4f0a-86d5-0ea5988c830f', '4', '4', '34', '2023-07-26 20:00:29', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('28a1f4d2-c0f5-4285-b28c-1e22d17558ae', '1', '4', 'w', '2023-07-25 22:19:07', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('2999ef73-da74-47d1-9d6f-a9b703e16bb1', '1', '4', 'try', '2023-07-25 22:31:08', '4', '1b4187dd-0acf-47b3-a673-318effbfd2de', '28a1f4d2-c0f5-4285-b28c-1e22d17558ae');
INSERT INTO `review` VALUES ('29cbabec-6066-4895-946d-7fbebad13ab8', '1', '4', 'er', '2023-07-25 22:16:03', '4', '2547f9bc-a0f5-46eb-bb3a-d9e9964de53a', 'b788b9b9-2310-4ff3-a9d8-35a962368141');
INSERT INTO `review` VALUES ('2a16cca1-4fde-4b0e-ab12-0dbcc020513c', '1', '4', '23', '2023-07-25 23:01:01', '4', '3fc7e685-635d-4eb4-b3ad-d7b16ab9331a', '3fc7e685-635d-4eb4-b3ad-d7b16ab9331a');
INSERT INTO `review` VALUES ('2a6cf4b4-e557-47ba-96f3-71dd44e03ccc', '1', '4', 'ewr', '2023-07-25 22:08:35', '4', 'acced721-a529-418a-809c-f73a9d91f08a', 'b788b9b9-2310-4ff3-a9d8-35a962368141');
INSERT INTO `review` VALUES ('2af591ea-743c-4e68-9479-fdab636e294e', '1', '4', '23', '2023-07-25 23:01:05', '4', '3fc7e685-635d-4eb4-b3ad-d7b16ab9331a', '3fc7e685-635d-4eb4-b3ad-d7b16ab9331a');
INSERT INTO `review` VALUES ('2c547bb9-6331-48f0-bcfc-f6fd83da72f5', '4', '4', '23', '2023-07-26 20:10:39', '4', 'bd3d59d8-f99c-46d8-944b-f415986d3819', '055c54b1-20d5-49ee-b5ab-28f949fa38ab');
INSERT INTO `review` VALUES ('2c7c2ac8-bdae-40aa-87e4-7c608181ed76', '1', '4', 'wqe', '2023-07-25 22:56:41', '4', 'b73114d6-81e1-4543-98f1-8f57e95d3553', 'b73114d6-81e1-4543-98f1-8f57e95d3553');
INSERT INTO `review` VALUES ('2d488a27-3111-4f74-a7bf-9d1623dc9d2b', '12', '4', 'were', '2023-07-25 21:14:21', '4', '6e971b4a-e40e-469d-95f6-6acd040724d2', '98a441ce-8a9f-42ba-8855-03c8e3b47e4b');
INSERT INTO `review` VALUES ('2d7ea156-665c-48e2-a2a0-38362b65a7ea', '4', '4', '1123', '2023-07-26 20:18:38', '4', '70380443-0287-477b-85d0-6de3c8491760', '70380443-0287-477b-85d0-6de3c8491760');
INSERT INTO `review` VALUES ('2d812e39-ccbb-482e-abd2-f580f8e5b2d4', '12', '4', '434', '2023-07-25 21:14:02', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('2e0e9176-b1ed-4354-8e3e-b2d36afc03e9', '12', '4', '234', '2023-07-25 21:13:56', '4', '5bcb0972-a45e-44c5-b678-05112b5be1be', '5bcb0972-a45e-44c5-b678-05112b5be1be');
INSERT INTO `review` VALUES ('2fc2c0f3-d9cc-46e3-8bbb-801f7e61b2c4', '1', '4', 'we', '2023-07-25 22:57:57', '4', '2c7c2ac8-bdae-40aa-87e4-7c608181ed76', 'b73114d6-81e1-4543-98f1-8f57e95d3553');
INSERT INTO `review` VALUES ('3', '4', '3', '新人求关照', '2023-07-19 08:24:33', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('3002618a-dad2-4670-902f-446a14a29f5e', '1', '4', '23', '2023-07-25 23:00:44', '4', 'a5f614ff-23cd-4674-89d3-c51d97fc7f46', 'b79cefd2-ad41-446e-b9db-514ead53cf1b');
INSERT INTO `review` VALUES ('31d9ecd4-4e71-4450-b6e8-9b4666a9c50e', '1', '4', '222', '2023-07-26 23:27:06', '4', '2a16cca1-4fde-4b0e-ab12-0dbcc020513c', '3fc7e685-635d-4eb4-b3ad-d7b16ab9331a');
INSERT INTO `review` VALUES ('345d509f-d2f8-4571-9566-35903805f398', '1', '4', '12312', '2023-07-25 23:01:07', '4', '3fc7e685-635d-4eb4-b3ad-d7b16ab9331a', '3fc7e685-635d-4eb4-b3ad-d7b16ab9331a');
INSERT INTO `review` VALUES ('35c06347-785a-4907-bc6b-67c1905084a1', '1', '4', '23', '2023-07-25 22:58:59', '4', '541d2d42-d055-445c-afb0-c9098769b17b', '541d2d42-d055-445c-afb0-c9098769b17b');
INSERT INTO `review` VALUES ('37193ec3-bb5b-456a-a3e5-bb4c3076e13c', '4', '4', '2', '2023-07-26 19:57:45', '4', '1fc08ace-a1d6-4b11-a980-36d687ad7cfc', '1fc08ace-a1d6-4b11-a980-36d687ad7cfc');
INSERT INTO `review` VALUES ('3849ec59-faaf-4dce-95a1-1a9af0bc43b1', '2', '3', '666', '2023-07-28 20:13:47', '3', '5f58363c-a500-4e85-96b7-7e3befd889b4', '5f58363c-a500-4e85-96b7-7e3befd889b4');
INSERT INTO `review` VALUES ('39392409-8953-4521-89c2-404270837fef', '4', '1', '不用谢', '2023-07-22 14:01:57', '1', '4', '1');
INSERT INTO `review` VALUES ('3a92e911-e418-4498-91ff-06db732c6ab5', '51', '4', '？', '2023-07-26 23:02:09', '4', '0dd24544-a4e0-450f-ace2-b1bae99cb064', '7425f503-7c0a-467f-b718-6b5a4b10856b');
INSERT INTO `review` VALUES ('3b3626c9-7f6a-45dc-ba75-f592188edfd9', '1', '4', '3', '2023-07-25 22:33:27', '4', 'b73114d6-81e1-4543-98f1-8f57e95d3553', 'b73114d6-81e1-4543-98f1-8f57e95d3553');
INSERT INTO `review` VALUES ('3c816b07-6174-411c-8de4-900d72367250', '1', '4', '4', '2023-07-25 22:07:01', '4', '9ea2ab82-bb69-4e14-b63c-520dc8251e0f', '995a8abd-2ef2-41e7-adc1-62e51c4e3396');
INSERT INTO `review` VALUES ('3dcada2d-a197-4d42-a977-68b8cbd80ab4', '1', '4', '2', '2023-07-25 22:16:25', '4', '743f6e08-bff5-4538-8dbf-13982e6dad24', '743f6e08-bff5-4538-8dbf-13982e6dad24');
INSERT INTO `review` VALUES ('3eb5eef2-894f-4c45-a15d-cee34d459394', '4', '4', '3', '2023-07-26 18:45:50', '4', '0272f505-4081-448e-b1f9-3410b5d2bbbf', '055c54b1-20d5-49ee-b5ab-28f949fa38ab');
INSERT INTO `review` VALUES ('3fa19991-9457-4c3b-a486-c0655950bb73', '4', '4', '123', '2023-07-26 20:15:41', '4', 'fa48b0ac-2ae0-4dd3-b1f2-6a4a9b074661', 'fa48b0ac-2ae0-4dd3-b1f2-6a4a9b074661');
INSERT INTO `review` VALUES ('3fc7e685-635d-4eb4-b3ad-d7b16ab9331a', '1', '4', '23', '2023-07-25 23:00:59', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('4', '4', '1', '哈哈，谢谢', '2023-07-22 09:03:13', '2', '2', '1');
INSERT INTO `review` VALUES ('40f42f99-bae5-4cfc-a37d-cde5418524be', '4', '4', '23', '2023-07-26 20:03:25', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('421e9d4f-4118-4d12-bdaa-19a99edb81df', '1', '4', '333', '2023-07-29 10:49:40', '4', '2a16cca1-4fde-4b0e-ab12-0dbcc020513c', '3fc7e685-635d-4eb4-b3ad-d7b16ab9331a');
INSERT INTO `review` VALUES ('42d98ef8-fc1e-49e8-a46f-6404e5823c60', '1', '4', '23', '2023-07-25 22:59:01', '4', '541d2d42-d055-445c-afb0-c9098769b17b', '541d2d42-d055-445c-afb0-c9098769b17b');
INSERT INTO `review` VALUES ('43274990-3419-49db-801e-9c33ec5cbb08', '1', '4', 'e', '2023-07-25 22:19:14', '4', '28a1f4d2-c0f5-4285-b28c-1e22d17558ae', '28a1f4d2-c0f5-4285-b28c-1e22d17558ae');
INSERT INTO `review` VALUES ('439b1bfe-4a63-4f57-ac49-7470b6a81444', '1', '4', 'rty', '2023-07-25 22:31:12', '4', '2999ef73-da74-47d1-9d6f-a9b703e16bb1', '28a1f4d2-c0f5-4285-b28c-1e22d17558ae');
INSERT INTO `review` VALUES ('45cc4a03-2205-407d-9f1e-4cd43a80aca1', '1', '4', 'erer', '2023-07-25 21:13:43', '4', '995a8abd-2ef2-41e7-adc1-62e51c4e3396', '995a8abd-2ef2-41e7-adc1-62e51c4e3396');
INSERT INTO `review` VALUES ('46dff9b8-a2de-4c7f-9f69-14219275ef18', '4', '4', '3', '2023-07-26 19:59:32', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('475b4583-f79a-4b06-9887-bbff753ce1be', '3', '4', '233', '2023-07-25 19:05:15', '4', 'a6a34a88-587e-49d7-ae97-843a193ec6f8', 'a6a34a88-587e-49d7-ae97-843a193ec6f8');
INSERT INTO `review` VALUES ('4767e5b6-3e11-45e0-adae-a0d3f725c08b', '4', '3', '这是我', '2023-07-22 16:37:32', '1', 'a768ff01-1df4-4b8a-a0ff-dec6ffe249b6', '1');
INSERT INTO `review` VALUES ('48f25b8f-ea26-47bf-bfc3-4823fc447f35', '1', '4', 'e', '2023-07-25 22:19:09', '4', '28a1f4d2-c0f5-4285-b28c-1e22d17558ae', '28a1f4d2-c0f5-4285-b28c-1e22d17558ae');
INSERT INTO `review` VALUES ('4a5428b1-51a0-4284-8a86-0de2fa7143dc', '4', '4', '123', '2023-07-26 20:15:52', '4', '06e5a0fd-7fd6-4a8d-905c-2e9463a37683', '06e5a0fd-7fd6-4a8d-905c-2e9463a37683');
INSERT INTO `review` VALUES ('4b0ead8e-46b4-49a5-82d0-a29ed6d71c2d', '4', '3', 'wer', '2023-07-22 17:26:21', '2', '2', '1');
INSERT INTO `review` VALUES ('4bb1c5de-aa44-4204-9795-f362cf1b46d3', '4', '4', '2', '2023-07-26 20:12:22', '4', 'e83c6c9b-1564-4b37-a2e1-1efab507e9b7', 'e83c6c9b-1564-4b37-a2e1-1efab507e9b7');
INSERT INTO `review` VALUES ('4d11e285-65cf-4eab-9e17-4744d5fc9dfb', '12', '4', '99', '2023-07-25 21:14:56', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('4d67527b-5cd8-4706-a0e1-34284a95f9a0', '46', '4', '23', '2023-07-26 22:59:43', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('4e44f30b-f898-4e94-a71a-a9622ed2fb52', '1', '4', '34', '2023-07-25 22:33:32', '4', 'b73114d6-81e1-4543-98f1-8f57e95d3553', 'b73114d6-81e1-4543-98f1-8f57e95d3553');
INSERT INTO `review` VALUES ('4eb68c8d-fdb2-48dd-908f-8feea9f220d1', '4', '4', '222', '2023-07-25 19:02:09', '4', '26c63642-44af-4f63-b794-f4091ecefaa1', '26c63642-44af-4f63-b794-f4091ecefaa1');
INSERT INTO `review` VALUES ('4f11001b-b9e3-4b89-9409-c77a3eccd289', '12', '4', 'werer', '2023-07-25 21:14:11', '4', '98a441ce-8a9f-42ba-8855-03c8e3b47e4b', '98a441ce-8a9f-42ba-8855-03c8e3b47e4b');
INSERT INTO `review` VALUES ('4f2a0f5e-83f0-46ab-8e59-ff26e8714066', '4', '4', 'i', '2023-07-25 23:12:15', '4', '71719a07-24a0-4043-9a7c-102348150de6', '71719a07-24a0-4043-9a7c-102348150de6');
INSERT INTO `review` VALUES ('52145267-6781-4b8c-b78f-1a94ccd46c79', '4', '3', '吞吞吐吐', '2023-07-22 16:48:57', '1', '1', '');
INSERT INTO `review` VALUES ('539685ba-20dd-402d-9503-cdab4f3cb59d', '51', '2', '第十', '2023-07-30 13:12:02', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('540e81c7-51e4-49cd-9d41-8876f5544e37', '1', '4', '23', '2023-07-25 22:59:03', '4', '541d2d42-d055-445c-afb0-c9098769b17b', '541d2d42-d055-445c-afb0-c9098769b17b');
INSERT INTO `review` VALUES ('541d2d42-d055-445c-afb0-c9098769b17b', '1', '4', '23', '2023-07-25 22:58:49', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('54e3392d-f2b2-48e6-898b-8082d1e34a74', '1', '4', '2323', '2023-07-25 22:58:20', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('55456fe7-8920-4939-a70d-77d787f689b5', '4', '2', '自己回复自己', '2023-07-23 10:17:15', '2', '66d88665-a73a-4b70-acdb-44438db27962', '66d88665-a73a-4b70-acdb-44438db27962');
INSERT INTO `review` VALUES ('5545b4a1-9451-4779-a4bd-51f8e910a0e9', '50', '2', '刚睡完午觉', '2023-07-23 13:56:58', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('5643dc26-7e61-4b16-8f18-657dd7457938', '4', '4', '3', '2023-07-26 19:57:55', '4', '1fc08ace-a1d6-4b11-a980-36d687ad7cfc', '1fc08ace-a1d6-4b11-a980-36d687ad7cfc');
INSERT INTO `review` VALUES ('57c95d57-c5d4-415d-9ee9-938186ef822f', '100', '4', '12', '2023-07-29 10:39:37', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('583580bf-47e3-4b46-93d0-adca958c80f5', '4', '4', '5', '2023-07-26 20:12:28', '4', 'e83c6c9b-1564-4b37-a2e1-1efab507e9b7', 'e83c6c9b-1564-4b37-a2e1-1efab507e9b7');
INSERT INTO `review` VALUES ('58403ed9-da8b-4623-b23e-787bb38004f2', '4', '3', '555', '2023-07-22 16:45:42', '2', '65a8d31a-2406-411b-865a-b91ba6a66641', '1');
INSERT INTO `review` VALUES ('58a22b63-3493-4f37-9ab6-65a41d06ee94', '101', '4', '和合法', '2023-07-29 10:40:47', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('58a69842-5b21-4434-9800-c0b24a2d81a1', '1', '4', '123', '2023-07-25 22:59:46', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('590e0b11-435e-4ed3-a152-25e8272088ba', '1', '4', '23', '2023-07-25 22:58:55', '4', '541d2d42-d055-445c-afb0-c9098769b17b', '541d2d42-d055-445c-afb0-c9098769b17b');
INSERT INTO `review` VALUES ('5a2922b4-87c2-4fd4-8995-990d22ee20b2', '1', '4', '23', '2023-07-25 22:58:57', '4', '541d2d42-d055-445c-afb0-c9098769b17b', '541d2d42-d055-445c-afb0-c9098769b17b');
INSERT INTO `review` VALUES ('5b3fc1f9-a1c5-4dd6-89df-371f3a9bec11', '4', '4', '34324', '2023-07-25 21:10:35', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('5b5295b0-e990-46aa-a128-7b0d493de6cc', '4', '2', '444', '2023-07-23 10:06:12', '1', '1', '1');
INSERT INTO `review` VALUES ('5bcb0972-a45e-44c5-b678-05112b5be1be', '12', '4', '32423', '2023-07-25 21:13:54', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('5caf221d-ea6c-4c92-a02b-c8e45f1eb0b3', '4', '4', 'ii', '2023-07-25 23:12:11', '4', '71719a07-24a0-4043-9a7c-102348150de6', '71719a07-24a0-4043-9a7c-102348150de6');
INSERT INTO `review` VALUES ('5f58363c-a500-4e85-96b7-7e3befd889b4', '2', '3', '第1话 四月十日', '2023-07-28 20:13:43', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('608092f5-15b5-43a5-85b5-cd504d2b32f2', '4', '3', '这是我自己', '2023-07-22 16:37:16', '3', '3', NULL);
INSERT INTO `review` VALUES ('608f68b9-8aa7-435f-8fe9-27e3409d43e5', '4', '2', '回复大魔王', '2023-07-22 16:33:20', '1', '79965c3a-bd77-4b5e-a31b-5fac4870bdd0', '1');
INSERT INTO `review` VALUES ('622ccaba-afb2-404f-80f4-b26f90232bfe', '4', '4', '23', '2023-07-26 20:00:20', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('64421481-bac9-4e96-8c38-ad733e2fb551', '1', '1', 'hehe', '2023-07-29 17:50:44', '4', 'e88c1d05-0c43-489e-8e7a-2a2b49283637', 'a736bf6e-b402-4c73-85a5-000b07483fd8');
INSERT INTO `review` VALUES ('651c781f-04a2-4c5e-b0df-a3994eb750a0', '1', '4', '4', '2023-07-25 22:56:28', '4', '156c4116-2229-494b-8b5b-714c6ffe76f7', '156c4116-2229-494b-8b5b-714c6ffe76f7');
INSERT INTO `review` VALUES ('655ab017-efde-4538-af07-15788b254658', '1', '4', '3', '2023-07-25 22:33:25', '4', 'b5b8a030-5b3b-41d5-8946-f6d9f96a0fdd', 'b73114d6-81e1-4543-98f1-8f57e95d3553');
INSERT INTO `review` VALUES ('65a8d31a-2406-411b-865a-b91ba6a66641', '4', '2', '@@@@@@@@@@', '2023-07-22 14:06:53', '2', '2', '1');
INSERT INTO `review` VALUES ('65c8346e-1771-430a-aead-08ee463a378f', '4', '3', '鸽鸽', '2023-07-22 16:55:23', '1', '1', '');
INSERT INTO `review` VALUES ('662b8dba-531f-4716-93fa-2bb6e47e8373', '48', '1', 'soga', '2023-07-22 16:18:26', '1', '8705a47d-3785-44d8-8aa3-2706ac2199ba', '1');
INSERT INTO `review` VALUES ('66d88665-a73a-4b70-acdb-44438db27962', '4', '2', 'haode', '2023-07-23 10:17:03', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('6768604f-a610-4427-8b94-b3abea2fd16d', '4', '4', '1', '2023-07-26 19:55:50', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('69522891-d11e-46e1-a82e-3f9ec47195ff', '1', '4', 'qwewe', '2023-07-25 21:13:38', '4', '995a8abd-2ef2-41e7-adc1-62e51c4e3396', '995a8abd-2ef2-41e7-adc1-62e51c4e3396');
INSERT INTO `review` VALUES ('6a584993-9c0a-498e-831f-10dbb389f3f1', '1', '4', 'e', '2023-07-25 22:19:17', '4', '28a1f4d2-c0f5-4285-b28c-1e22d17558ae', '28a1f4d2-c0f5-4285-b28c-1e22d17558ae');
INSERT INTO `review` VALUES ('6ab4db8c-a19e-4505-9f0c-816fe64b19f2', '4', '2', '回复小跟班', '2023-07-22 16:31:42', '2', 'b5d350e4-584a-4e03-93b1-3fb5122ca41f', '1');
INSERT INTO `review` VALUES ('6abfe09c-b512-4d4f-ba6e-e9beaa9aba84', '46', '4', '34', '2023-07-26 22:59:40', '4', 'cb1eff56-29f9-45a4-a6b5-0221787f7b0c', 'cb1eff56-29f9-45a4-a6b5-0221787f7b0c');
INSERT INTO `review` VALUES ('6b47a72b-3482-4c6e-aa6b-79e1a0b0426f', '4', '4', '123', '2023-07-25 21:10:28', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('6b5d1714-c029-4931-b7fe-01dc317b00d8', '4', '2', '22', '2023-07-30 13:10:40', '4', '22ec1f0d-2fbc-40d7-886e-a894ab768649', '22ec1f0d-2fbc-40d7-886e-a894ab768649');
INSERT INTO `review` VALUES ('6b81e2bf-a8e3-4b9d-a47a-c946496defb1', '3', '4', '344', '2023-07-25 19:05:02', '4', 'a6a34a88-587e-49d7-ae97-843a193ec6f8', 'a6a34a88-587e-49d7-ae97-843a193ec6f8');
INSERT INTO `review` VALUES ('6bfea8b8-512c-4e47-b195-5de035126777', '4', '3', 'rrr', '2023-07-22 14:06:37', '3', '3', NULL);
INSERT INTO `review` VALUES ('6c1d0e0f-926c-4333-af0d-8533f8551b2b', '4', '2', '难受啊dd', '2023-07-22 22:03:53', '3', 'a96d7dd2-35ab-4b9c-90cd-6192b1b97038', '3');
INSERT INTO `review` VALUES ('6d3e9c58-a6f8-4c5d-86fb-8886ffb13350', '3', '4', '233', '2023-07-25 19:05:12', '4', '6b81e2bf-a8e3-4b9d-a47a-c946496defb1', 'a6a34a88-587e-49d7-ae97-843a193ec6f8');
INSERT INTO `review` VALUES ('6d8c92e9-4886-4a66-a020-6fc43a88acf9', '4', '4', '12', '2023-07-26 23:04:24', '3', '3', '3');
INSERT INTO `review` VALUES ('6e0a2c96-f220-4328-9349-4b7be37d9030', '4', '3', 'qwe', '2023-07-22 17:25:52', '2', '2', '1');
INSERT INTO `review` VALUES ('6e971b4a-e40e-469d-95f6-6acd040724d2', '12', '4', 'werer', '2023-07-25 21:14:13', '4', '4f11001b-b9e3-4b89-9409-c77a3eccd289', '98a441ce-8a9f-42ba-8855-03c8e3b47e4b');
INSERT INTO `review` VALUES ('70380443-0287-477b-85d0-6de3c8491760', '4', '4', '1', '2023-07-26 20:18:23', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('71719a07-24a0-4043-9a7c-102348150de6', '4', '4', 'wew', '2023-07-25 23:11:25', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('71885388-994b-4096-bf3f-dd3ed6a77731', '46', '4', '23', '2023-07-26 22:59:36', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('730d3248-6277-41e3-bc14-6de79d1f2a96', '1', '4', 'wewe', '2023-07-25 22:33:43', '4', 'b73114d6-81e1-4543-98f1-8f57e95d3553', 'b73114d6-81e1-4543-98f1-8f57e95d3553');
INSERT INTO `review` VALUES ('7425f503-7c0a-467f-b718-6b5a4b10856b', '51', '4', ' ', '2023-07-26 23:01:51', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('743f6e08-bff5-4538-8dbf-13982e6dad24', '1', '4', '324', '2023-07-25 22:08:02', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('74c678ba-bb80-425b-92a2-d3a27f65cf4f', '4', '4', '3', '2023-07-26 19:57:58', '4', '1fc08ace-a1d6-4b11-a980-36d687ad7cfc', '1fc08ace-a1d6-4b11-a980-36d687ad7cfc');
INSERT INTO `review` VALUES ('75f041f8-b39a-4ea6-a681-bfd0eed640a9', '4', '4', 'wewe', '2023-07-25 23:11:21', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('76271194-422c-464c-91f2-2fffcca24dfc', '4', '4', '333', '2023-07-26 19:56:01', '4', '7d5ac7bc-0c67-481c-a832-ca138e35a8e9', '6768604f-a610-4427-8b94-b3abea2fd16d');
INSERT INTO `review` VALUES ('762f4d52-4f55-47b0-8fb3-9b580e77375c', '51', '2', '？', '2023-07-30 13:12:06', '4', '0dd4678d-64e0-4c6a-aacc-c755b3b46373', '0dd4678d-64e0-4c6a-aacc-c755b3b46373');
INSERT INTO `review` VALUES ('7715e083-7094-4eb6-9cec-96543ce4fbc0', '4', '4', '1', '2023-07-26 20:12:31', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('7816607b-0a35-4872-a639-5ec7c7c8f381', '32', '4', '？', '2023-07-27 21:09:47', '2', 'd1c21bf6-6b58-4158-aad0-3c57a35550af', 'd1c21bf6-6b58-4158-aad0-3c57a35550af');
INSERT INTO `review` VALUES ('79536225-6ec2-48cc-b6ac-0046b7f3bf83', '4', '3', '张三再次', '2023-07-22 16:38:47', '3', '3', NULL);
INSERT INTO `review` VALUES ('79965c3a-bd77-4b5e-a31b-5fac4870bdd0', '4', '1', '回复大魔王', '2023-07-22 16:31:28', '1', '662b8dba-531f-4716-93fa-2bb6e47e8373', '1');
INSERT INTO `review` VALUES ('7b31557f-d30c-4a87-b3da-72e014ebbe08', '41', '1', '没人吗？', '2023-07-23 10:18:38', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('7bf80303-0290-4405-8343-bfc2be33ae77', '4', '4', '23', '2023-07-26 20:10:41', '4', '0272f505-4081-448e-b1f9-3410b5d2bbbf', '055c54b1-20d5-49ee-b5ab-28f949fa38ab');
INSERT INTO `review` VALUES ('7c54b15f-dace-462c-9a9d-0f933e1ba39c', '4', '2', '123123', '2023-07-23 20:20:07', '2', 'ad1d75b4-3768-4ef4-a613-aa536bf7bbe4', 'ad1d75b4-3768-4ef4-a613-aa536bf7bbe4');
INSERT INTO `review` VALUES ('7c79a4d8-e105-4696-8813-57484d891cf8', '4', '4', '3', '2023-07-26 20:12:24', '4', 'e83c6c9b-1564-4b37-a2e1-1efab507e9b7', 'e83c6c9b-1564-4b37-a2e1-1efab507e9b7');
INSERT INTO `review` VALUES ('7cd62a87-1d11-479e-a325-73bfe6ee8d0e', '12', '4', 'erer', '2023-07-25 21:14:24', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('7cf4105e-7905-49ab-ba6f-5e71de9587cf', '1', '4', 'wewe', '2023-07-25 22:58:08', '4', '4e44f30b-f898-4e94-a71a-a9622ed2fb52', 'b73114d6-81e1-4543-98f1-8f57e95d3553');
INSERT INTO `review` VALUES ('7d5ac7bc-0c67-481c-a832-ca138e35a8e9', '4', '4', '23', '2023-07-26 19:55:56', '4', '9a9a63fa-6baf-4dd5-83fc-b5e9f863d9f6', '6768604f-a610-4427-8b94-b3abea2fd16d');
INSERT INTO `review` VALUES ('7e7d4cf0-eaa0-4fa6-902b-b812c0fbaa59', '4', '2', '234', '2023-07-24 22:07:54', '2', 'f6c42a54-a5c7-4e43-917e-cce13bfbd0d5', '093ca390-9fb0-494e-8d67-e415a715d741');
INSERT INTO `review` VALUES ('7ef2bb43-cf12-4591-b8ac-43f74c664421', '4', '4', '23', '2023-07-26 20:10:36', '4', '01baca67-bfd6-4b3c-ae56-092a70b3b8fc', '055c54b1-20d5-49ee-b5ab-28f949fa38ab');
INSERT INTO `review` VALUES ('8259b379-4b63-4021-9b2b-864cbd2d94c7', '4', '4', '3', '2023-07-26 19:58:56', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('8383f6ea-171a-44b6-907e-12e73592a136', '4', '4', '333', '2023-07-25 19:03:26', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('83f22e79-347d-4b8b-884b-a6754fde6161', '4', '3', '333', '2023-07-22 17:04:42', '1', '1', '');
INSERT INTO `review` VALUES ('84ffeb5b-6ca3-4d18-9774-d03a1a3d37b7', '1', '4', '2', '2023-07-25 22:16:30', '4', 'ab947987-070d-43ab-b894-da2c821eeb0b', '743f6e08-bff5-4538-8dbf-13982e6dad24');
INSERT INTO `review` VALUES ('85561fa0-2b5e-4b9f-a1e6-08db6294787f', '4', '2', '1', '2023-07-23 20:27:35', '2', 'f6c42a54-a5c7-4e43-917e-cce13bfbd0d5', '093ca390-9fb0-494e-8d67-e415a715d741');
INSERT INTO `review` VALUES ('8672634a-572e-43b1-ad3c-1c4ee5580337', '4', '4', '3243', '2023-07-25 21:13:13', '4', 'b8cf60ee-99ec-4518-95f7-440b2336ee72', 'b8cf60ee-99ec-4518-95f7-440b2336ee72');
INSERT INTO `review` VALUES ('8705a47d-3785-44d8-8aa3-2706ac2199ba', '4', '1', 'yoshi', '2023-07-22 14:16:13', '1', '08d568a7-682c-4244-bcae-10a9c46f5156', '1');
INSERT INTO `review` VALUES ('8769b12a-2cdc-4088-a7ee-fe41a2cd59bd', '4', '4', '2', '2023-07-26 20:00:12', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('8814afc3-ffe2-497b-b3f6-abdc742245fe', '4', '4', '123', '2023-07-26 20:15:56', '4', '06e5a0fd-7fd6-4a8d-905c-2e9463a37683', '06e5a0fd-7fd6-4a8d-905c-2e9463a37683');
INSERT INTO `review` VALUES ('8825601a-f8e7-468e-bb99-484179bee823', '1', '4', 'were', '2023-07-25 22:08:39', '4', '9ffaa29a-94a6-4611-b86a-a8534d730b80', 'b788b9b9-2310-4ff3-a9d8-35a962368141');
INSERT INTO `review` VALUES ('89a275e4-0747-496f-ad6d-b23ab0d24425', '4', '2', 'ewq', '2023-07-23 20:27:17', '2', 'e9aee5a4-3886-4aed-a258-10c772b160af', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review` VALUES ('8a5cb983-423c-4026-9da7-4e8fa470b35b', '4', '4', '23423', '2023-07-25 19:03:30', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('8af66faf-71bd-49cb-a6fa-427488344fd0', '4', '2', '3', '2023-07-24 22:23:13', '2', 'b62095a4-a3c8-4fdb-bdab-cd57b7921e9c', 'b62095a4-a3c8-4fdb-bdab-cd57b7921e9c');
INSERT INTO `review` VALUES ('8b852438-56d5-4b02-bc37-18cd6a47643b', '4', '4', ' ', '2023-07-25 23:12:06', '4', '71719a07-24a0-4043-9a7c-102348150de6', '71719a07-24a0-4043-9a7c-102348150de6');
INSERT INTO `review` VALUES ('8dc4b127-2e65-4c69-8c6c-94bcaf1b10e4', '32', '4', '支持', '2023-07-27 21:09:06', '2', 'd1c21bf6-6b58-4158-aad0-3c57a35550af', 'd1c21bf6-6b58-4158-aad0-3c57a35550af');
INSERT INTO `review` VALUES ('8e683463-f873-4f10-8219-1a3a31d70ef9', '4', '4', '33', '2023-07-26 20:00:23', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('8ed0fb30-e84f-40df-8d41-d4691657a88b', '4', '4', '12312', '2023-07-26 20:15:33', '4', 'fa48b0ac-2ae0-4dd3-b1f2-6a4a9b074661', 'fa48b0ac-2ae0-4dd3-b1f2-6a4a9b074661');
INSERT INTO `review` VALUES ('8fde2d65-0a39-4fde-9b75-470a6505caa9', '4', '2', '555', '2023-07-22 14:07:44', '2', '65a8d31a-2406-411b-865a-b91ba6a66641', '1');
INSERT INTO `review` VALUES ('901e3910-0528-4a43-a9e6-0abe786435e2', '4', '3', '233', '2023-07-22 17:28:03', '3', '3', '3');
INSERT INTO `review` VALUES ('92dd3320-bf8e-4164-a499-b18ff08f267f', '4', '4', '3', '2023-07-26 19:57:48', '4', '37193ec3-bb5b-456a-a3e5-bb4c3076e13c', '1fc08ace-a1d6-4b11-a980-36d687ad7cfc');
INSERT INTO `review` VALUES ('93b874f1-76fc-4679-ad20-cf58e24e754e', '1', '4', '4', '2023-07-25 22:56:25', '4', '156c4116-2229-494b-8b5b-714c6ffe76f7', '156c4116-2229-494b-8b5b-714c6ffe76f7');
INSERT INTO `review` VALUES ('940213ab-4765-4097-b146-f90771d8ff8e', '4', '4', '22', '2023-07-26 20:03:20', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('94767c24-5ac6-4fd5-848d-0389ea15f38f', '12', '4', '534', '2023-07-25 21:13:58', '4', '2e0e9176-b1ed-4354-8e3e-b2d36afc03e9', '5bcb0972-a45e-44c5-b678-05112b5be1be');
INSERT INTO `review` VALUES ('9544849b-9e26-4027-a971-21c83a063299', '50', '2', '困', '2023-07-23 13:57:15', '2', '5545b4a1-9451-4779-a4bd-51f8e910a0e9', '5545b4a1-9451-4779-a4bd-51f8e910a0e9');
INSERT INTO `review` VALUES ('96835762-6105-46b1-a7ae-a7028d84dc9b', '4', '3', '吞吞吐吐', '2023-07-22 16:48:36', '1', '1', '');
INSERT INTO `review` VALUES ('97698715-67c4-4e82-af8a-b1c32b625d79', '1', '4', '3', '2023-07-25 22:56:21', '4', '156c4116-2229-494b-8b5b-714c6ffe76f7', '156c4116-2229-494b-8b5b-714c6ffe76f7');
INSERT INTO `review` VALUES ('978f5719-0cb4-43bd-a928-149d2cb5d8f7', '1', '4', '2323', '2023-07-25 23:00:52', '4', '1a0516ab-2e21-45ac-8614-932823fe13be', 'b79cefd2-ad41-446e-b9db-514ead53cf1b');
INSERT INTO `review` VALUES ('97af2d0e-f85c-4379-89aa-c69e763263d4', '102', '4', '12', '2023-07-29 12:55:52', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('98839620-9ba2-41f9-9767-8d20821244c4', '4', '2', '333', '2023-07-23 20:16:52', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('98a441ce-8a9f-42ba-8855-03c8e3b47e4b', '12', '4', 'erer', '2023-07-25 21:14:06', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('995a8abd-2ef2-41e7-adc1-62e51c4e3396', '1', '4', 'weqw', '2023-07-25 21:13:33', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('9a9a63fa-6baf-4dd5-83fc-b5e9f863d9f6', '4', '4', '3', '2023-07-26 19:55:53', '4', '6768604f-a610-4427-8b94-b3abea2fd16d', '6768604f-a610-4427-8b94-b3abea2fd16d');
INSERT INTO `review` VALUES ('9b3c5384-ccda-44ce-b53e-e5af25d29c4a', '4', '4', '123', '2023-07-26 20:18:34', '4', '70380443-0287-477b-85d0-6de3c8491760', '70380443-0287-477b-85d0-6de3c8491760');
INSERT INTO `review` VALUES ('9c7fc2a3-7de3-4176-b785-4ee263a22797', '4', '2', 'we', '2023-07-24 22:09:25', '2', '9e2363c8-1396-44ea-9b4b-a7d4faa2b22f', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review` VALUES ('9e2363c8-1396-44ea-9b4b-a7d4faa2b22f', '4', '2', 'ewqw', '2023-07-23 20:27:30', '2', 'f83a4c77-7121-4765-9e07-ca69e4f2087c', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review` VALUES ('9e79604d-f379-4791-b649-41fb6cd14815', '12', '4', '789', '2023-07-25 21:14:53', '4', 'b711dd24-a057-45b7-b13c-e7dfe196b71b', '7cd62a87-1d11-479e-a325-73bfe6ee8d0e');
INSERT INTO `review` VALUES ('9ea2ab82-bb69-4e14-b63c-520dc8251e0f', '1', '4', '2343', '2023-07-25 21:13:49', '4', '45cc4a03-2205-407d-9f1e-4cd43a80aca1', '995a8abd-2ef2-41e7-adc1-62e51c4e3396');
INSERT INTO `review` VALUES ('9ffaa29a-94a6-4611-b86a-a8534d730b80', '1', '4', 'wer', '2023-07-25 22:08:37', '4', 'acced721-a529-418a-809c-f73a9d91f08a', 'b788b9b9-2310-4ff3-a9d8-35a962368141');
INSERT INTO `review` VALUES ('a0490753-23d9-4d79-8ba1-6ea0c4ae1d5c', '46', '4', '12', '2023-07-26 22:59:34', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('a31b8e7f-ee2f-46f1-8e1f-e35207c3bb5a', '1', '4', 'we', '2023-07-25 22:58:02', '4', '655ab017-efde-4538-af07-15788b254658', 'b73114d6-81e1-4543-98f1-8f57e95d3553');
INSERT INTO `review` VALUES ('a3a99f5e-4e44-4f21-beae-a31c92ea3812', '4', '3', '哥哥', '2023-07-22 16:47:14', '1', '39392409-8953-4521-89c2-404270837fef', '1');
INSERT INTO `review` VALUES ('a52f4082-3ed7-49a2-8cd3-43284d70ff0f', '1', '4', '111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '2023-07-29 10:55:52', '4', 'efae38e8-8cd5-4e54-b40d-16ce961fc02f', '3fc7e685-635d-4eb4-b3ad-d7b16ab9331a');
INSERT INTO `review` VALUES ('a5f614ff-23cd-4674-89d3-c51d97fc7f46', '1', '4', '2', '2023-07-25 23:00:41', '4', 'b79cefd2-ad41-446e-b9db-514ead53cf1b', 'b79cefd2-ad41-446e-b9db-514ead53cf1b');
INSERT INTO `review` VALUES ('a65608ef-d3b7-4569-9f7f-e0ce4727bf92', '4', '2', '回复小跟班', '2023-07-22 16:33:29', '2', '6ab4db8c-a19e-4505-9f0c-816fe64b19f2', '1');
INSERT INTO `review` VALUES ('a6a34a88-587e-49d7-ae97-843a193ec6f8', '3', '4', 'first', '2023-07-25 19:04:58', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('a736bf6e-b402-4c73-85a5-000b07483fd8', '1', '4', '22', '2023-07-29 11:01:17', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('a768ff01-1df4-4b8a-a0ff-dec6ffe249b6', '4', '1', '@22222222', '2023-07-22 14:07:16', '1', '39392409-8953-4521-89c2-404270837fef', '1');
INSERT INTO `review` VALUES ('a7a8854e-de58-4244-973d-bba7edc309cf', '4', '3', '赞', '2023-07-28 19:33:53', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('a96d7dd2-35ab-4b9c-90cd-6192b1b97038', '4', '3', '1', '2023-07-22 17:28:08', '3', '3', '3');
INSERT INTO `review` VALUES ('ab85b3a5-ba47-4ade-82d0-8cfc69f12197', '4', '4', '12', '2023-07-26 23:04:19', '1', '1', '1');
INSERT INTO `review` VALUES ('ab947987-070d-43ab-b894-da2c821eeb0b', '1', '4', '2', '2023-07-25 22:16:27', '4', '743f6e08-bff5-4538-8dbf-13982e6dad24', '743f6e08-bff5-4538-8dbf-13982e6dad24');
INSERT INTO `review` VALUES ('abdaf26f-98b8-40ca-86ce-d3bc60a264bd', '4', '4', '3', '2023-07-26 19:58:00', '4', '1fc08ace-a1d6-4b11-a980-36d687ad7cfc', '1fc08ace-a1d6-4b11-a980-36d687ad7cfc');
INSERT INTO `review` VALUES ('ac18d24c-219b-4aa8-80c5-36b600bb8184', '4', '2', '沙发', '2023-07-23 10:10:02', '2', '2', '1');
INSERT INTO `review` VALUES ('acced721-a529-418a-809c-f73a9d91f08a', '1', '4', 'ewrew', '2023-07-25 22:08:32', '4', 'b788b9b9-2310-4ff3-a9d8-35a962368141', 'b788b9b9-2310-4ff3-a9d8-35a962368141');
INSERT INTO `review` VALUES ('acd017e0-bb79-43a3-b994-a5f717c1e31c', '4', '4', '3213', '2023-07-26 20:15:37', '4', 'fa48b0ac-2ae0-4dd3-b1f2-6a4a9b074661', 'fa48b0ac-2ae0-4dd3-b1f2-6a4a9b074661');
INSERT INTO `review` VALUES ('ace2ae8f-ba05-4e38-946e-ee3b52fad38a', '4', '4', '12323', '2023-07-26 20:15:35', '4', 'fa48b0ac-2ae0-4dd3-b1f2-6a4a9b074661', 'fa48b0ac-2ae0-4dd3-b1f2-6a4a9b074661');
INSERT INTO `review` VALUES ('ad075e28-ff8b-4aa0-94d6-d147346e40a3', '4', '4', '123', '2023-07-25 21:10:26', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('ad1d75b4-3768-4ef4-a613-aa536bf7bbe4', '4', '2', '123', '2023-07-23 20:16:43', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('b066c1f1-6ef8-433c-a343-6a5ec20ee5df', '5', '2', 'test', '2023-07-30 11:44:33', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('b1018080-d99b-43b7-94b2-d43f6e4534c3', '105', '4', 'kawaii！', '2023-07-29 11:19:33', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('b21c2c2e-ecd8-4ec0-b066-cd0b999e7689', '4', '4', '2343', '2023-07-25 21:13:16', '4', '8672634a-572e-43b1-ad3c-1c4ee5580337', 'b8cf60ee-99ec-4518-95f7-440b2336ee72');
INSERT INTO `review` VALUES ('b5652e61-e8ee-4ca7-88b7-6d65d9bbe909', '12', '4', 'erer', '2023-07-25 21:14:18', '4', '0197f569-0da0-4518-a7a4-6b15f80c8325', '98a441ce-8a9f-42ba-8855-03c8e3b47e4b');
INSERT INTO `review` VALUES ('b5b8a030-5b3b-41d5-8946-f6d9f96a0fdd', '1', '4', '2', '2023-07-25 22:33:22', '4', 'b73114d6-81e1-4543-98f1-8f57e95d3553', 'b73114d6-81e1-4543-98f1-8f57e95d3553');
INSERT INTO `review` VALUES ('b5d0b840-2c45-4c30-9706-01a4ededaa1a', '4', '2', '1', '2023-07-24 22:23:09', '2', 'b62095a4-a3c8-4fdb-bdab-cd57b7921e9c', 'b62095a4-a3c8-4fdb-bdab-cd57b7921e9c');
INSERT INTO `review` VALUES ('b5d350e4-584a-4e03-93b1-3fb5122ca41f', '46', '2', '123', '2023-07-22 16:30:40', '2', '2', '1');
INSERT INTO `review` VALUES ('b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee', '4', '2', '234', '2023-07-23 20:24:24', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('b62095a4-a3c8-4fdb-bdab-cd57b7921e9c', '4', '2', '丰田车友会的作用', '2023-07-23 20:22:12', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('b65e4b23-6c59-469d-9112-007da4dce8a2', '1', '4', 'e', '2023-07-25 22:19:22', '4', '28a1f4d2-c0f5-4285-b28c-1e22d17558ae', '28a1f4d2-c0f5-4285-b28c-1e22d17558ae');
INSERT INTO `review` VALUES ('b711dd24-a057-45b7-b13c-e7dfe196b71b', '12', '4', '7897', '2023-07-25 21:14:50', '4', '7cd62a87-1d11-479e-a325-73bfe6ee8d0e', '7cd62a87-1d11-479e-a325-73bfe6ee8d0e');
INSERT INTO `review` VALUES ('b73114d6-81e1-4543-98f1-8f57e95d3553', '1', '4', '12', '2023-07-25 22:33:20', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('b7519516-70b0-4500-bfba-17d082c1bc5b', '107', '2', '第一', '2023-07-30 13:09:37', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('b788b9b9-2310-4ff3-a9d8-35a962368141', '1', '4', '3243', '2023-07-25 22:08:07', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('b79cefd2-ad41-446e-b9db-514ead53cf1b', '1', '4', '2323', '2023-07-25 22:59:49', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('b8cf60ee-99ec-4518-95f7-440b2336ee72', '4', '4', '23123', '2023-07-25 21:13:11', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('b9cd2e09-12bd-4823-8247-5b568ec11064', '4', '2', '3', '2023-07-24 22:23:02', '2', 'f6c42a54-a5c7-4e43-917e-cce13bfbd0d5', '093ca390-9fb0-494e-8d67-e415a715d741');
INSERT INTO `review` VALUES ('ba5ccea8-03fc-4aad-8997-2bd8718e21bd', '4', '3', '00', '2023-07-22 16:51:13', '2', '2', '1');
INSERT INTO `review` VALUES ('bd3d59d8-f99c-46d8-944b-f415986d3819', '4', '4', '2', '2023-07-26 18:45:46', '4', '055c54b1-20d5-49ee-b5ab-28f949fa38ab', '055c54b1-20d5-49ee-b5ab-28f949fa38ab');
INSERT INTO `review` VALUES ('be9ce7b2-f7dc-4bec-a9ce-2040a7d36058', '1', '4', '4', '2023-07-25 22:07:05', '4', '9ea2ab82-bb69-4e14-b63c-520dc8251e0f', '995a8abd-2ef2-41e7-adc1-62e51c4e3396');
INSERT INTO `review` VALUES ('bfe88508-edf9-4491-96ba-b8838227916f', '4', '1', '怎么都没头像？', '2023-07-29 17:55:29', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('c102b5e6-5a24-4798-afb0-3debe846c16a', '1', '4', '23', '2023-07-25 23:00:47', '4', '3002618a-dad2-4670-902f-446a14a29f5e', 'b79cefd2-ad41-446e-b9db-514ead53cf1b');
INSERT INTO `review` VALUES ('c4f9e828-b7c9-4c77-be45-bb2e948cb672', '1', '4', '4', '2023-07-25 22:33:29', '4', 'b73114d6-81e1-4543-98f1-8f57e95d3553', 'b73114d6-81e1-4543-98f1-8f57e95d3553');
INSERT INTO `review` VALUES ('c6250f08-6410-4da5-833a-80a01e7e4826', '4', '3', '我是张三', '2023-07-22 16:39:29', '1', '1', '');
INSERT INTO `review` VALUES ('c9a22d3b-ed37-49fd-b4b5-df94856245c7', '4', '2', '555', '2023-07-23 10:06:26', '2', '5b5295b0-e990-46aa-a128-7b0d493de6cc', '1');
INSERT INTO `review` VALUES ('ca317bae-bd5a-462d-9724-b3845a3ab8b2', '1', '4', '222', '2023-07-29 11:03:30', '4', 'e88c1d05-0c43-489e-8e7a-2a2b49283637', 'a736bf6e-b402-4c73-85a5-000b07483fd8');
INSERT INTO `review` VALUES ('cb1eff56-29f9-45a4-a6b5-0221787f7b0c', '46', '4', '23', '2023-07-26 22:59:38', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('cec66bc8-a62d-44ec-ad53-74caf4d59654', '1', '4', '2', '2023-07-25 22:16:33', '4', '84ffeb5b-6ca3-4d18-9774-d03a1a3d37b7', '743f6e08-bff5-4538-8dbf-13982e6dad24');
INSERT INTO `review` VALUES ('cf064f01-d255-4e53-831d-186beebe2eb1', '1', '4', 'er', '2023-07-25 22:16:03', '4', '2547f9bc-a0f5-46eb-bb3a-d9e9964de53a', 'b788b9b9-2310-4ff3-a9d8-35a962368141');
INSERT INTO `review` VALUES ('cfde791d-9e67-4916-a763-20a275523f4b', '4', '2', '', '2023-07-23 20:26:27', '2', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review` VALUES ('d1c21bf6-6b58-4158-aad0-3c57a35550af', '32', '2', '折纸 yyds!!!', '2023-07-27 21:08:34', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('d2373bf7-ae13-4f70-8cf2-72a0cd5c2567', '4', '4', '2323', '2023-07-26 20:03:58', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('d2b1b1f2-0019-4e56-bd99-e78fc8dd67c8', '4', '2', '4432', '2023-07-23 20:25:44', '2', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review` VALUES ('d5635255-00cd-4a34-88ae-59975b70bc2c', '4', '2', '这次呢？', '2023-07-23 20:21:24', '2', '98839620-9ba2-41f9-9767-8d20821244c4', '98839620-9ba2-41f9-9767-8d20821244c4');
INSERT INTO `review` VALUES ('d6205537-c303-4312-bbd1-75f0a87f6a84', '4', '4', 'o', '2023-07-25 23:12:17', '4', '71719a07-24a0-4043-9a7c-102348150de6', '71719a07-24a0-4043-9a7c-102348150de6');
INSERT INTO `review` VALUES ('d635ffee-f804-4d40-a75e-20a5cb7e5990', '4', '2', '4432', '2023-07-23 20:24:28', '2', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review` VALUES ('d668aead-0166-401d-9029-5ba9fe226b6e', '4', '4', '1', '2023-07-26 20:12:20', '4', 'e83c6c9b-1564-4b37-a2e1-1efab507e9b7', 'e83c6c9b-1564-4b37-a2e1-1efab507e9b7');
INSERT INTO `review` VALUES ('d6861c69-8236-42e5-bf6d-751bced5a436', '4', '4', '2', '2023-07-26 19:57:52', '4', '1fc08ace-a1d6-4b11-a980-36d687ad7cfc', '1fc08ace-a1d6-4b11-a980-36d687ad7cfc');
INSERT INTO `review` VALUES ('d6f81116-a8da-4947-867a-e1aa28b40182', '4', '4', '4', '2023-07-26 20:12:26', '4', 'e83c6c9b-1564-4b37-a2e1-1efab507e9b7', 'e83c6c9b-1564-4b37-a2e1-1efab507e9b7');
INSERT INTO `review` VALUES ('d85cbf2f-97e1-4a69-b333-7a88c8e86c5d', '102', '4', '22', '2023-07-29 17:17:46', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('d8d3cf93-33e7-4ed5-b714-4ae4e9eb00a7', '1', '4', 'e', '2023-07-25 22:19:12', '4', '28a1f4d2-c0f5-4285-b28c-1e22d17558ae', '28a1f4d2-c0f5-4285-b28c-1e22d17558ae');
INSERT INTO `review` VALUES ('db6fa29d-f512-434a-8a54-7f65550a4a00', '100', '4', 'ayaya!!!', '2023-07-29 09:22:56', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('de76a419-8495-48f6-aeb7-975de07d242d', '4', '2', '4432', '2023-07-23 20:26:14', '2', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review` VALUES ('e1ead16f-7013-4704-9bdd-4aa6b5a707e9', '4', '4', '324', '2023-07-26 19:59:41', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('e316a3d5-886f-46f8-b99c-532b4b8e4cf1', '12', '4', '234', '2023-07-25 21:14:00', '4', '5bcb0972-a45e-44c5-b678-05112b5be1be', '5bcb0972-a45e-44c5-b678-05112b5be1be');
INSERT INTO `review` VALUES ('e5a7d242-6e2f-4dfd-b17a-b8235baf1b3a', '1', '4', '4', '2023-07-25 22:56:23', '4', '156c4116-2229-494b-8b5b-714c6ffe76f7', '156c4116-2229-494b-8b5b-714c6ffe76f7');
INSERT INTO `review` VALUES ('e5dc4f6c-c87a-4937-b431-a188ecbdb4b4', '4', '3', '给个', '2023-07-22 16:47:43', '2', '2', '1');
INSERT INTO `review` VALUES ('e81bb23d-b1d3-49ee-a8df-a135835b6a11', '4', '2', '4432', '2023-07-23 20:24:33', '2', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review` VALUES ('e83c6c9b-1564-4b37-a2e1-1efab507e9b7', '4', '4', '23323', '2023-07-26 20:05:21', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('e88c1d05-0c43-489e-8e7a-2a2b49283637', '1', '4', '333', '2023-07-29 11:01:23', '4', 'a736bf6e-b402-4c73-85a5-000b07483fd8', 'a736bf6e-b402-4c73-85a5-000b07483fd8');
INSERT INTO `review` VALUES ('e98e85dc-627d-4f3e-ac87-09c4f93c34b7', '4', '2', '刷新一下', '2023-07-30 12:57:58', '2', '12667f43-b0c1-4831-9ef9-f3b861fca2f6', 'bfe88508-edf9-4491-96ba-b8838227916f');
INSERT INTO `review` VALUES ('e9aee5a4-3886-4aed-a258-10c772b160af', '4', '2', 'qwe', '2023-07-23 20:27:07', '2', 'f83a4c77-7121-4765-9e07-ca69e4f2087c', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review` VALUES ('e9f9a37a-501f-42a9-8e86-895b4e7ff4f2', '4', '2', '2', '2023-07-24 22:23:11', '2', 'b62095a4-a3c8-4fdb-bdab-cd57b7921e9c', 'b62095a4-a3c8-4fdb-bdab-cd57b7921e9c');
INSERT INTO `review` VALUES ('ef387176-4e4f-4f61-992c-2d4ba474b727', '4', '4', '123', '2023-07-26 20:15:54', '4', '06e5a0fd-7fd6-4a8d-905c-2e9463a37683', '06e5a0fd-7fd6-4a8d-905c-2e9463a37683');
INSERT INTO `review` VALUES ('efae38e8-8cd5-4e54-b40d-16ce961fc02f', '1', '4', '212222222222222221222222222222222122222222222222212222222222222221222222222', '2023-07-29 10:55:36', '4', '2a16cca1-4fde-4b0e-ab12-0dbcc020513c', '3fc7e685-635d-4eb4-b3ad-d7b16ab9331a');
INSERT INTO `review` VALUES ('f1044745-28ac-40e3-8d36-eca15ff5004c', '51', '4', '23', '2023-07-26 23:02:03', '4', '7425f503-7c0a-467f-b718-6b5a4b10856b', '7425f503-7c0a-467f-b718-6b5a4b10856b');
INSERT INTO `review` VALUES ('f25e2994-fef3-4f1b-ab53-7d87fda7baf7', '4', '2', '22234', '2023-07-23 20:20:23', '2', '98839620-9ba2-41f9-9767-8d20821244c4', '98839620-9ba2-41f9-9767-8d20821244c4');
INSERT INTO `review` VALUES ('f6794170-25b7-4491-96f6-287e12e2baa3', '4', '4', '3', '2023-07-26 19:57:50', '4', '1fc08ace-a1d6-4b11-a980-36d687ad7cfc', '1fc08ace-a1d6-4b11-a980-36d687ad7cfc');
INSERT INTO `review` VALUES ('f6c42a54-a5c7-4e43-917e-cce13bfbd0d5', '4', '2', '3太34t', '2023-07-23 20:22:27', '2', '093ca390-9fb0-494e-8d67-e415a715d741', '093ca390-9fb0-494e-8d67-e415a715d741');
INSERT INTO `review` VALUES ('f6ce5976-40f1-4cf0-96c7-d1f490cf3dbf', '4', '1', '567', '2023-07-22 14:08:53', '1', '39392409-8953-4521-89c2-404270837fef', '1');
INSERT INTO `review` VALUES ('f83a4c77-7121-4765-9e07-ca69e4f2087c', '4', '2', '', '2023-07-23 20:26:31', '2', 'cfde791d-9e67-4916-a763-20a275523f4b', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review` VALUES ('f8c71866-be24-4860-8159-12a6eb7606b8', '4', '4', 'we', '2023-07-26 19:57:38', '4', '9a9a63fa-6baf-4dd5-83fc-b5e9f863d9f6', '6768604f-a610-4427-8b94-b3abea2fd16d');
INSERT INTO `review` VALUES ('f8e1cf0a-2514-4846-ba29-b42902c2a815', '4', '4', '2', '2023-07-26 19:58:47', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('f9646792-d16c-4203-ae5e-3a2fadeb407f', '4', '3', '卡卡卡', '2023-07-22 17:08:45', '1', '1', '1');
INSERT INTO `review` VALUES ('fa24a37a-fccd-42bb-8f8e-4e2606f74ea5', '32', '4', '在吗\n？', '2023-07-27 21:09:34', '2', 'd1c21bf6-6b58-4158-aad0-3c57a35550af', 'd1c21bf6-6b58-4158-aad0-3c57a35550af');
INSERT INTO `review` VALUES ('fa48b0ac-2ae0-4dd3-b1f2-6a4a9b074661', '4', '4', '1212', '2023-07-26 20:15:25', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('fc60e7fb-90e7-4afd-bad9-7e2444d9bfd7', '1', '4', 'ewe', '2023-07-25 22:58:24', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('fc7ee477-fec1-454b-b473-09d493f4ce2c', '4', '1', '哈哈 我来也', '2023-07-23 10:17:54', '2', '55456fe7-8920-4939-a70d-77d787f689b5', '66d88665-a73a-4b70-acdb-44438db27962');
INSERT INTO `review` VALUES ('fce17b65-dd5b-4958-80d4-25db823f9121', '4', '4', '23', '2023-07-26 20:03:52', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('ff04260f-275a-47c5-96d9-491fe1c36fcf', '46', '4', '23', '2023-07-26 22:59:42', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('ff6678e5-ae93-42c4-bf1c-d403526a662e', '52', '2', '555', '2023-07-22 18:15:20', '2', '65a8d31a-2406-411b-865a-b91ba6a66641', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `userIcon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `userLevel` int NOT NULL,
  `coin` int NOT NULL,
  `follow` int NOT NULL,
  `fans` int NOT NULL,
  `action` int NOT NULL,
  `sign` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '个性签名',
  `space_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '空间封面',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'qiuxinyu', 'qxy123', 'qxy大魔王', '/image/user_icon/1.webp', 6, 0, 0, 0, 0, '大魔王就是我，我就是大魔王', '/image/space_cover/1.jpg');
INSERT INTO `user` VALUES ('2', 'test', 'test', '测试账号', '/image/user_icon/2.jpg', 2, 0, 0, 0, 0, NULL, '/image/space_cover/2.jpg');
INSERT INTO `user` VALUES ('3', 'zhangsan', '123', '张三', '/image/user_icon/3.jpeg', 3, 0, 0, 0, 0, NULL, '/image/space_cover/3.jpg');
INSERT INTO `user` VALUES ('4', 'hh', 'hh', '小灰灰', '/image/user_icon/4.jpeg', 1, 0, 0, 0, 0, NULL, '/image/space_cover/4.jpg');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '视频名称',
  `current` int NULL DEFAULT NULL COMMENT '当前集数',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '视频封面',
  `total` int NULL DEFAULT NULL COMMENT '总集数',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '视频源',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '视频标题',
  `uploader_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '上传者id',
  `upload_time` datetime NULL DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', '某科学的超电磁炮 第一季', 1, '/image/diancipao2.jpg', 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-1.mp4', '第1话 电击使 Electro Master', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('10', '某科学的超电磁炮 第一季', 6, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-6.mp4', '第6话 这种事大家都很积极哦', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('100', 'LOVE涙色／松浦亜弥 2003', 1, '/image/video_cover/100.png', 1, '/videos/LOVE涙色／松浦亜弥 2003.mp4', 'LOVE涙色／松浦亜弥 2003', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('105', 'Wrestling 川井友香子 × 岩﨑理栄 56Kg Jr.Q Cup2013-331', 1, '/image/video_cover/105.png', 1, '/videos/Wrestling 川井友香子 × 岩﨑理栄 56Kg Jr.Q Cup2013-331.mp4', 'Wrestling 川井友香子 × 岩﨑理栄 56Kg Jr.Q Cup2013-331', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('11', '某科学的超电磁炮 第一季', 7, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-7.mp4', '第7话 能力与力量', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('110', '《青鸟》全网最高音画质！ DNA都跟着跳起来！ブルーバード', 1, '/image/video_cover/110.png', 1, '/《青鸟》全网最高音画质！ DNA都跟着跳起来！ブルーバード.mp4', '《青鸟》全网最高音画质！ DNA都跟着跳起来！ブルーバード', '1', '2023-07-30 19:27:33');
INSERT INTO `video` VALUES ('111', 'Music Video「気ままな天使たち」', 1, '/image/video_cover/111.png', 1, '/videos/Music Video「気ままな天使たち」.mp4', 'Music Video「気ままな天使たち」', '1', '2023-07-30 19:27:33');
INSERT INTO `video` VALUES ('112', 'GARNiDELiA《极乐净土》2019 现场，所长！还是那间！！！', 1, '/image/video_cover/112.png', 1, '/videos/GARNiDELiA《极乐净土》2019 现场，所长！还是那间！！！.mp4', 'GARNiDELiA《极乐净土》2019 现场，所长！还是那间！！！', '1', '2023-07-30 19:27:33');
INSERT INTO `video` VALUES ('113', '坂井泉水《不要认输》2004现场，姐姐最励志的一首！！！', 1, '/image/video_cover/113.png', 1, '/videos/坂井泉水《不要认输》2004现场，姐姐最励志的一首！！！.mp4', '坂井泉水《不要认输》2004现场，姐姐最励志的一首！！！', '1', '2023-07-30 19:27:33');
INSERT INTO `video` VALUES ('114', '极乐净土【舞见 第4弹!!!】', 1, '/image/video_cover/114.png', 1, '/videos/极乐净土【舞见 第4弹!!!】.mp4', '极乐净土【舞见 第4弹!!!】', '1', '2023-07-30 19:27:33');
INSERT INTO `video` VALUES ('115', '生物股长《SAKURA》2016现场，多少人的入坑曲？！！', 1, '/image/video_cover/115.png', 1, '/videos/生物股长《SAKURA》2016现场，多少人的入坑曲？！！.mp4', '生物股长《SAKURA》2016现场，多少人的入坑曲？！！', '1', '2023-07-30 19:27:33');
INSERT INTO `video` VALUES ('116', '未闻花名ED《secret base ~君がくれたもの~》现场，面码找到你了！！！', 1, '/image/video_cover/116.png', 1, '/videos/未闻花名ED《secret base ~君がくれたもの~》现场，面码找到你了！！！.mp4', '未闻花名ED《secret base ~君がくれたもの~》现场，面码找到你了！！！', '1', '2023-07-30 19:27:33');
INSERT INTO `video` VALUES ('12', '某科学的超电磁炮 第一季', 8, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-8.mp4', '第8话 幻想御手（Level Upper）', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('13', '某科学的超电磁炮 第一季', 9, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-9.mp4', '第9话 多数派报告', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('14', '某科学的超电磁炮 第一季', 10, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-10.mp4', '第10话 沉默的多数派', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('15', '某科学的超电磁炮 第一季', 11, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-11.mp4', '第11话 木山老师', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('16', '某科学的超电磁炮 第一季', 12, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-12.mp4', '第12话 ＡＩＭ猛兽', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('17', '某科学的超电磁炮 第一季', 13, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-13.mp4', '第13话 虽说比基尼很招人目光不过连衣裙很能衬出身体的线条只适合苗条的人穿呢', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('18', '某科学的超电磁炮 第一季', 14, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-14.mp4', '第14话 特别训练', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('19', '某科学的超电磁炮 第一季', 15, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-15.mp4', '第15话 武装无能力集团', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('2', '约会大作战 第一季', 1, '/image/yuezhan2.jpeg', 13, '/约会大作战 第一季/约会大作战 第一季-1.mp4', '第1话 四月十日', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('20', '某科学的超电磁炮 第一季', 16, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-16.mp4', '第16话 学园都市', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('21', '某科学的超电磁炮 第一季', 17, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-17.mp4', '第17话 暑假的一些事', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('22', '某科学的超电磁炮 第一季', 18, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-18.mp4', '第18话 罗汉柏园', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('23', '某科学的超电磁炮 第一季', 19, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-19.mp4', '第19话 盛夏祭典', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('24', '某科学的超电磁炮 第一季', 20, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-20.mp4', '第20话 乱杂开放', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('25', '某科学的超电磁炮 第一季', 21, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-21.mp4', '第21话 声音', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('26', '某科学的超电磁炮 第一季', 22, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-22.mp4', '第22话 Level6（以非神之身上达天意者）', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('27', '某科学的超电磁炮 第一季', 23, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-23.mp4', '第23话 现在、你眼中看到什么?', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('28', '某科学的超电磁炮 第一季', 24, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-24.mp4', '第24话 亲爱的朋友', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('29', '约会大作战 第一季', 2, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-2.mp4', NULL, '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('3', '干物妹！小埋', 1, '/image/ganwumeixiaomai.jpg', 12, '/干物妹！小埋/干物妹！小埋-1.mp4', '第1话 小埋与哥哥', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('30', '约会大作战 第一季', 3, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-3.mp4', NULL, '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('31', '约会大作战 第一季', 4, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-4.mp4', NULL, '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('32', '约会大作战 第一季', 5, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-5.mp4', '第5话 冰冻的大地', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('33', '约会大作战 第一季', 6, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-6.mp4', '第6话 恋爱的温泉', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('34', '约会大作战 第一季', 7, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-7.mp4', NULL, '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('35', '约会大作战 第一季', 8, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-8.mp4', NULL, '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('36', '约会大作战 第一季', 9, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-9.mp4', NULL, '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('37', '约会大作战 第一季', 10, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-10.mp4', '第10话 炎之精灵（Efreet）', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('38', '约会大作战 第一季', 11, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-11.mp4', '第11话 倒数计时', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('39', '约会大作战 第一季', 12, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-12.mp4', '第12话 无法割舍的东西', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('4', '天使降临到我身边', 1, '/image/tianshijianglin.jpg', 13, '/天使降临到我身边/天使降临到我身边-1.mp4', '第1话 心里痒痒的感觉', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('40', '约会大作战 第一季', 13, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-13.mp4', NULL, '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('41', '天使降临到我身边', 2, NULL, 13, '/天使降临到我身边/天使降临到我身边-2.mp4', '第2话 超级无敌可爱', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('42', '天使降临到我身边', 3, NULL, 13, '/天使降临到我身边/天使降临到我身边-3.mp4', '第3话 铭印', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('43', '天使降临到我身边', 4, NULL, 13, '/天使降临到我身边/天使降临到我身边-4.mp4', '第4话 方便说两句吗', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('44', '天使降临到我身边', 5, NULL, 13, '/天使降临到我身边/天使降临到我身边-5.mp4', '第5话 好啦 交给我来吧', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('45', '天使降临到我身边', 6, NULL, 13, '/天使降临到我身边/天使降临到我身边-6.mp4', '第6话 宫姐没有朋友哦', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('46', '天使降临到我身边', 7, NULL, 13, '/天使降临到我身边/天使降临到我身边-7.mp4', '第7话 听不懂宫姐在说什么', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('47', '天使降临到我身边', 8, NULL, 13, '/天使降临到我身边/天使降临到我身边-8.mp4', '第8话 有些事情不知为妙', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('48', '天使降临到我身边', 9, NULL, 13, '/天使降临到我身边/天使降临到我身边-9.mp4', '第9话 陪到我睡着哦', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('49', '天使降临到我身边', 10, NULL, 13, '/天使降临到我身边/天使降临到我身边-10.mp4', '第10话 又多嘴了', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('5', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 1, '/image/huiye.jpg', 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-1.mp4', '第1话 想被邀请看电影 / 无法阻止的辉夜大小姐 / 辉夜大小姐想品尝', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('50', '天使降临到我身边', 11, NULL, 13, '/天使降临到我身边/天使降临到我身边-11.mp4', '第11话 也就是说 是姐姐不好', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('51', '天使降临到我身边', 12, NULL, 13, '/天使降临到我身边/天使降临到我身边-12.mp4', '第12话 天使的目光', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('52', '天使降临到我身边', 13, NULL, 13, '/天使降临到我身边/天使降临到我身边-13.mp4', '13(OVA) 不会辜负期待啊   总是形影不离   换上这身衣服吧！   我是姐姐哦', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('53', '干物妹！小埋', 2, NULL, 12, '/干物妹！小埋/干物妹！小埋-2.mp4', '第2话 小埋与海老名', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('54', '干物妹！小埋', 3, NULL, 12, '/干物妹！小埋/干物妹！小埋-3.mp4', '第3话 小埋与弟子', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('55', '干物妹！小埋', 4, NULL, 12, '/干物妹！小埋/干物妹！小埋-4.mp4', '第4话 小埋与竞争对手', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('56', '干物妹！小埋', 5, NULL, 12, '/干物妹！小埋/干物妹！小埋-5.mp4', '第5话 小埋与暑假', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('57', '干物妹！小埋', 6, NULL, 12, '/干物妹！小埋/干物妹！小埋-6.mp4', '第6话 小埋的生日', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('58', '干物妹！小埋', 7, NULL, 12, '/干物妹！小埋/干物妹！小埋-7.mp4', '第7话 小埋的哥哥', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('59', '干物妹！小埋', 8, NULL, 12, '/干物妹！小埋/干物妹！小埋-8.mp4', '第8话 小埋与圣诞节与正月', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('6', '某科学的超电磁炮 第一季', 2, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-2.mp4', '第2话 炎日下工作 必须补充水分', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('60', '干物妹！小埋', 9, NULL, 12, '/干物妹！小埋/干物妹！小埋-9.mp4', '第9话 小埋与情人节', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('61', '干物妹！小埋', 10, NULL, 12, '/干物妹！小埋/干物妹！小埋-10.mp4', '第10话 小埋与现在与很久以前', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('62', '干物妹！小埋', 11, NULL, 12, '/干物妹！小埋/干物妹！小埋-11.mp4', '第11话 小埋的每一天', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('63', '干物妹！小埋', 12, NULL, 12, '/干物妹！小埋/干物妹！小埋-12.mp4', '第12话 小埋与大家', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('64', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 2, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-2.mp4', '第2话 辉夜大小姐想要交换/藤原想出门/白银御行想隐瞒', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('65', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 3, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-3.mp4', '第3话 白银御行还没体验/辉夜大小姐想被猜中/辉夜大小姐想走路', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('66', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 4, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-4.mp4', '第4话 辉夜大小姐想被欣赏/学生会想让别人说出口/辉夜大小姐想收到信息/白银御行想说话', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('67', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 5, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-5.mp4', '第5话 辉夜大小姐想完成任务 / 白银御行想展示 / 辉夜大小姐想一起撑伞', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('68', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 6, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-6.mp4', '第6话 石上优想活下去/藤原千花想测试/辉夜大小姐想被注意到', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('69', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 7, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-7.mp4', '第7话 白银御行想工作/辉夜大小姐想让人加入/辉夜大小姐想忍住', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('7', '某科学的超电磁炮 第一季', 3, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-3.mp4', '第3话 被盯上的常盘台', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('70', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 8, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-8.mp4', '第8话 辉夜大小姐想被称呼/白银御行不能输/于是石上优闭上了双眼', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('71', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 9, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-9.mp4', '第9话 辉夜大小姐想送人回家/藤原千花想探病/关于四宫辉夜①', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('72', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 10, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-10.mp4', '第10话 辉夜大小姐不允许/辉夜大小姐想原谅/白银御行想出门', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('73', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 11, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-11.mp4', '第11话 早坂爱想泡澡/藤原千花超想吃/白银御行想见面/听不见烟花的声音 前篇', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('74', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 12, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-12.mp4', '第12话 听不见烟花的声音 后篇/辉夜大小姐不想逃避', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('8', '某科学的超电磁炮 第一季', 4, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-4.mp4', '第4话 都市传说', '1', '2023-07-29 16:28:53');
INSERT INTO `video` VALUES ('9', '某科学的超电磁炮 第一季', 5, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-5.mp4', '第5话 某两人的新人研修', '1', '2023-07-29 16:28:53');

SET FOREIGN_KEY_CHECKS = 1;
