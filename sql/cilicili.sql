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

 Date: 23/07/2023 22:45:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
INSERT INTO `review` VALUES ('028f95f3-7ee8-462c-bc84-952e3503399e', '4', '3', '你好', '2023-07-23 21:55:48', '2', '0305f510-d80e-4388-81d8-fb992d737113', 'b1004425-64df-4bf0-b454-7bb146a018a4');
INSERT INTO `review` VALUES ('0305f510-d80e-4388-81d8-fb992d737113', '4', '2', '12', '2023-07-23 21:32:29', '2', 'b1004425-64df-4bf0-b454-7bb146a018a4', 'b1004425-64df-4bf0-b454-7bb146a018a4');
INSERT INTO `review` VALUES ('1a80aa47-e3e0-4afb-ad8f-a04bff2fb60c', '4', '2', '2', '2023-07-23 20:28:57', '2', 'c5932413-6e82-4847-8dfd-1593795de16b', 'c5932413-6e82-4847-8dfd-1593795de16b');
INSERT INTO `review` VALUES ('372501de-1924-4a50-be75-50569a72dbd4', '41', '2', '?', '2023-07-23 21:50:15', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('6fc05e66-b26c-4792-a430-f0b903198801', '4', '2', '3', '2023-07-23 20:29:01', '2', '1a80aa47-e3e0-4afb-ad8f-a04bff2fb60c', 'c5932413-6e82-4847-8dfd-1593795de16b');
INSERT INTO `review` VALUES ('a1b4da93-dcd3-4a6f-ab3c-729cc18cad79', '4', '3', '大家好 我是张三', '2023-07-23 21:55:26', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('b1004425-64df-4bf0-b454-7bb146a018a4', '4', '2', '666', '2023-07-23 21:32:24', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('bf46d8c8-468c-48e8-9aee-f045987669ea', '4', '2', '5', '2023-07-23 20:29:11', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('c5932413-6e82-4847-8dfd-1593795de16b', '4', '2', '1', '2023-07-23 20:28:54', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('dc3c327e-17a5-4adf-9f3a-2487ef3b08ef', '5', '2', '辉夜大小姐！！！', '2023-07-23 21:53:24', NULL, NULL, NULL);
INSERT INTO `review` VALUES ('dfb8f9f5-d3fe-435e-9f53-ec20b9dc7929', '4', '3', '大哥 求带', '2023-07-23 21:55:39', '2', 'b1004425-64df-4bf0-b454-7bb146a018a4', 'b1004425-64df-4bf0-b454-7bb146a018a4');
INSERT INTO `review` VALUES ('f9937fc1-4c76-436f-b175-a0d593fc6758', '4', '2', '4', '2023-07-23 20:29:05', '2', 'c5932413-6e82-4847-8dfd-1593795de16b', 'c5932413-6e82-4847-8dfd-1593795de16b');
INSERT INTO `review` VALUES ('fcc745fa-6ebc-4605-8ec0-dbb8127522a2', '1', '2', '炮姐 爱你！！！！！！！！', '2023-07-23 21:08:41', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for review_copy1
-- ----------------------------
DROP TABLE IF EXISTS `review_copy1`;
CREATE TABLE `review_copy1`  (
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
-- Records of review_copy1
-- ----------------------------
INSERT INTO `review_copy1` VALUES ('08d568a7-682c-4244-bcae-10a9c46f5156', '4', '1', '233', '2023-07-22 14:02:22', '1', '39392409-8953-4521-89c2-404270837fef', '1');
INSERT INTO `review_copy1` VALUES ('093ca390-9fb0-494e-8d67-e415a715d741', '4', '2', '丰田车友会的作用666', '2023-07-23 20:22:20', NULL, NULL, NULL);
INSERT INTO `review_copy1` VALUES ('1', '4', '1', '小埋如果暑假一直都在玩游戏看漫画的话也就是说她并没有写作业换句话说就是她们根本没有作业，这也就表明了我马上要开学了还没有写完暑假作业，也就是说我还是继续追番吧反正也补不完_(:3」∠)_', '2023-07-13 08:17:19', NULL, NULL, '');
INSERT INTO `review_copy1` VALUES ('1989fbf8-b7b9-4bb2-9b81-b13f68de5f41', '4', '2', '22', '2023-07-23 20:19:51', '2', '98839620-9ba2-41f9-9767-8d20821244c4', '98839620-9ba2-41f9-9767-8d20821244c4');
INSERT INTO `review_copy1` VALUES ('2', '4', '2', '大佬666', '2023-07-22 08:19:13', '1', '1', '1');
INSERT INTO `review_copy1` VALUES ('24762f38-2974-4d6a-b6aa-d5c769be0ba1', '4', '3', '这次总行了扒？？', '2023-07-22 17:08:15', '3', '3', '3');
INSERT INTO `review_copy1` VALUES ('26ef80ec-7fb4-4f6e-b07a-a94d6d6f329a', '4', '2', 'ewq', '2023-07-23 20:27:26', '2', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review_copy1` VALUES ('27b219cc-136b-42fc-93cf-e27dbf249c9b', '4', '2', '小跟班', '2023-07-22 16:30:24', '2', '2', '1');
INSERT INTO `review_copy1` VALUES ('3', '4', '3', '新人求关照', '2023-07-19 08:24:33', NULL, NULL, NULL);
INSERT INTO `review_copy1` VALUES ('39392409-8953-4521-89c2-404270837fef', '4', '1', '不用谢', '2023-07-22 14:01:57', '1', '4', '1');
INSERT INTO `review_copy1` VALUES ('4', '4', '1', '哈哈，谢谢', '2023-07-22 09:03:13', '2', '2', '1');
INSERT INTO `review_copy1` VALUES ('4767e5b6-3e11-45e0-adae-a0d3f725c08b', '4', '3', '这是我', '2023-07-22 16:37:32', '1', 'a768ff01-1df4-4b8a-a0ff-dec6ffe249b6', '1');
INSERT INTO `review_copy1` VALUES ('4b0ead8e-46b4-49a5-82d0-a29ed6d71c2d', '4', '3', 'wer', '2023-07-22 17:26:21', '2', '2', '1');
INSERT INTO `review_copy1` VALUES ('52145267-6781-4b8c-b78f-1a94ccd46c79', '4', '3', '吞吞吐吐', '2023-07-22 16:48:57', '1', '1', '');
INSERT INTO `review_copy1` VALUES ('55456fe7-8920-4939-a70d-77d787f689b5', '4', '2', '自己回复自己', '2023-07-23 10:17:15', '2', '66d88665-a73a-4b70-acdb-44438db27962', '66d88665-a73a-4b70-acdb-44438db27962');
INSERT INTO `review_copy1` VALUES ('5545b4a1-9451-4779-a4bd-51f8e910a0e9', '50', '2', '刚睡完午觉', '2023-07-23 13:56:58', NULL, NULL, NULL);
INSERT INTO `review_copy1` VALUES ('58403ed9-da8b-4623-b23e-787bb38004f2', '4', '3', '555', '2023-07-22 16:45:42', '2', '65a8d31a-2406-411b-865a-b91ba6a66641', '1');
INSERT INTO `review_copy1` VALUES ('5b5295b0-e990-46aa-a128-7b0d493de6cc', '4', '2', '444', '2023-07-23 10:06:12', '1', '1', '1');
INSERT INTO `review_copy1` VALUES ('608092f5-15b5-43a5-85b5-cd504d2b32f2', '4', '3', '这是我自己', '2023-07-22 16:37:16', '3', '3', NULL);
INSERT INTO `review_copy1` VALUES ('608f68b9-8aa7-435f-8fe9-27e3409d43e5', '4', '2', '回复大魔王', '2023-07-22 16:33:20', '1', '79965c3a-bd77-4b5e-a31b-5fac4870bdd0', '1');
INSERT INTO `review_copy1` VALUES ('65a8d31a-2406-411b-865a-b91ba6a66641', '4', '2', '@@@@@@@@@@', '2023-07-22 14:06:53', '2', '2', '1');
INSERT INTO `review_copy1` VALUES ('65c8346e-1771-430a-aead-08ee463a378f', '4', '3', '鸽鸽', '2023-07-22 16:55:23', '1', '1', '');
INSERT INTO `review_copy1` VALUES ('662b8dba-531f-4716-93fa-2bb6e47e8373', '48', '1', 'soga', '2023-07-22 16:18:26', '1', '8705a47d-3785-44d8-8aa3-2706ac2199ba', '1');
INSERT INTO `review_copy1` VALUES ('66d88665-a73a-4b70-acdb-44438db27962', '4', '2', 'haode', '2023-07-23 10:17:03', NULL, NULL, NULL);
INSERT INTO `review_copy1` VALUES ('6ab4db8c-a19e-4505-9f0c-816fe64b19f2', '4', '2', '回复小跟班', '2023-07-22 16:31:42', '2', 'b5d350e4-584a-4e03-93b1-3fb5122ca41f', '1');
INSERT INTO `review_copy1` VALUES ('6bfea8b8-512c-4e47-b195-5de035126777', '4', '3', 'rrr', '2023-07-22 14:06:37', '3', '3', NULL);
INSERT INTO `review_copy1` VALUES ('6c1d0e0f-926c-4333-af0d-8533f8551b2b', '4', '2', '难受啊dd', '2023-07-22 22:03:53', '3', 'a96d7dd2-35ab-4b9c-90cd-6192b1b97038', '3');
INSERT INTO `review_copy1` VALUES ('6e0a2c96-f220-4328-9349-4b7be37d9030', '4', '3', 'qwe', '2023-07-22 17:25:52', '2', '2', '1');
INSERT INTO `review_copy1` VALUES ('79536225-6ec2-48cc-b6ac-0046b7f3bf83', '4', '3', '张三再次', '2023-07-22 16:38:47', '3', '3', NULL);
INSERT INTO `review_copy1` VALUES ('79965c3a-bd77-4b5e-a31b-5fac4870bdd0', '4', '1', '回复大魔王', '2023-07-22 16:31:28', '1', '662b8dba-531f-4716-93fa-2bb6e47e8373', '1');
INSERT INTO `review_copy1` VALUES ('7b31557f-d30c-4a87-b3da-72e014ebbe08', '41', '1', '没人吗？', '2023-07-23 10:18:38', NULL, NULL, NULL);
INSERT INTO `review_copy1` VALUES ('7c54b15f-dace-462c-9a9d-0f933e1ba39c', '4', '2', '123123', '2023-07-23 20:20:07', '2', 'ad1d75b4-3768-4ef4-a613-aa536bf7bbe4', 'ad1d75b4-3768-4ef4-a613-aa536bf7bbe4');
INSERT INTO `review_copy1` VALUES ('83f22e79-347d-4b8b-884b-a6754fde6161', '4', '3', '333', '2023-07-22 17:04:42', '1', '1', '');
INSERT INTO `review_copy1` VALUES ('85561fa0-2b5e-4b9f-a1e6-08db6294787f', '4', '2', '1', '2023-07-23 20:27:35', '2', 'f6c42a54-a5c7-4e43-917e-cce13bfbd0d5', '093ca390-9fb0-494e-8d67-e415a715d741');
INSERT INTO `review_copy1` VALUES ('8705a47d-3785-44d8-8aa3-2706ac2199ba', '4', '1', 'yoshi', '2023-07-22 14:16:13', '1', '08d568a7-682c-4244-bcae-10a9c46f5156', '1');
INSERT INTO `review_copy1` VALUES ('89a275e4-0747-496f-ad6d-b23ab0d24425', '4', '2', 'ewq', '2023-07-23 20:27:17', '2', 'e9aee5a4-3886-4aed-a258-10c772b160af', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review_copy1` VALUES ('8fde2d65-0a39-4fde-9b75-470a6505caa9', '4', '2', '555', '2023-07-22 14:07:44', '2', '65a8d31a-2406-411b-865a-b91ba6a66641', '1');
INSERT INTO `review_copy1` VALUES ('901e3910-0528-4a43-a9e6-0abe786435e2', '4', '3', '233', '2023-07-22 17:28:03', '3', '3', '3');
INSERT INTO `review_copy1` VALUES ('9544849b-9e26-4027-a971-21c83a063299', '50', '2', '困', '2023-07-23 13:57:15', '2', '5545b4a1-9451-4779-a4bd-51f8e910a0e9', '5545b4a1-9451-4779-a4bd-51f8e910a0e9');
INSERT INTO `review_copy1` VALUES ('96835762-6105-46b1-a7ae-a7028d84dc9b', '4', '3', '吞吞吐吐', '2023-07-22 16:48:36', '1', '1', '');
INSERT INTO `review_copy1` VALUES ('98839620-9ba2-41f9-9767-8d20821244c4', '4', '2', '333', '2023-07-23 20:16:52', NULL, NULL, NULL);
INSERT INTO `review_copy1` VALUES ('9e2363c8-1396-44ea-9b4b-a7d4faa2b22f', '4', '2', 'ewqw', '2023-07-23 20:27:30', '2', 'f83a4c77-7121-4765-9e07-ca69e4f2087c', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review_copy1` VALUES ('a3a99f5e-4e44-4f21-beae-a31c92ea3812', '4', '3', '哥哥', '2023-07-22 16:47:14', '1', '39392409-8953-4521-89c2-404270837fef', '1');
INSERT INTO `review_copy1` VALUES ('a65608ef-d3b7-4569-9f7f-e0ce4727bf92', '4', '2', '回复小跟班', '2023-07-22 16:33:29', '2', '6ab4db8c-a19e-4505-9f0c-816fe64b19f2', '1');
INSERT INTO `review_copy1` VALUES ('a768ff01-1df4-4b8a-a0ff-dec6ffe249b6', '4', '1', '@22222222', '2023-07-22 14:07:16', '1', '39392409-8953-4521-89c2-404270837fef', '1');
INSERT INTO `review_copy1` VALUES ('a96d7dd2-35ab-4b9c-90cd-6192b1b97038', '4', '3', '1', '2023-07-22 17:28:08', '3', '3', '3');
INSERT INTO `review_copy1` VALUES ('ac18d24c-219b-4aa8-80c5-36b600bb8184', '4', '2', '沙发', '2023-07-23 10:10:02', '2', '2', '1');
INSERT INTO `review_copy1` VALUES ('ad1d75b4-3768-4ef4-a613-aa536bf7bbe4', '4', '2', '123', '2023-07-23 20:16:43', NULL, NULL, NULL);
INSERT INTO `review_copy1` VALUES ('b5d350e4-584a-4e03-93b1-3fb5122ca41f', '46', '2', '123', '2023-07-22 16:30:40', '2', '2', '1');
INSERT INTO `review_copy1` VALUES ('b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee', '4', '2', '234', '2023-07-23 20:24:24', NULL, NULL, NULL);
INSERT INTO `review_copy1` VALUES ('b62095a4-a3c8-4fdb-bdab-cd57b7921e9c', '4', '2', '丰田车友会的作用', '2023-07-23 20:22:12', NULL, NULL, NULL);
INSERT INTO `review_copy1` VALUES ('ba5ccea8-03fc-4aad-8997-2bd8718e21bd', '4', '3', '00', '2023-07-22 16:51:13', '2', '2', '1');
INSERT INTO `review_copy1` VALUES ('c6250f08-6410-4da5-833a-80a01e7e4826', '4', '3', '我是张三', '2023-07-22 16:39:29', '1', '1', '');
INSERT INTO `review_copy1` VALUES ('c9a22d3b-ed37-49fd-b4b5-df94856245c7', '4', '2', '555', '2023-07-23 10:06:26', '2', '5b5295b0-e990-46aa-a128-7b0d493de6cc', '1');
INSERT INTO `review_copy1` VALUES ('cfde791d-9e67-4916-a763-20a275523f4b', '4', '2', '', '2023-07-23 20:26:27', '2', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review_copy1` VALUES ('d2b1b1f2-0019-4e56-bd99-e78fc8dd67c8', '4', '2', '4432', '2023-07-23 20:25:44', '2', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review_copy1` VALUES ('d5635255-00cd-4a34-88ae-59975b70bc2c', '4', '2', '这次呢？', '2023-07-23 20:21:24', '2', '98839620-9ba2-41f9-9767-8d20821244c4', '98839620-9ba2-41f9-9767-8d20821244c4');
INSERT INTO `review_copy1` VALUES ('d635ffee-f804-4d40-a75e-20a5cb7e5990', '4', '2', '4432', '2023-07-23 20:24:28', '2', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review_copy1` VALUES ('de76a419-8495-48f6-aeb7-975de07d242d', '4', '2', '4432', '2023-07-23 20:26:14', '2', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review_copy1` VALUES ('e5dc4f6c-c87a-4937-b431-a188ecbdb4b4', '4', '3', '给个', '2023-07-22 16:47:43', '2', '2', '1');
INSERT INTO `review_copy1` VALUES ('e81bb23d-b1d3-49ee-a8df-a135835b6a11', '4', '2', '4432', '2023-07-23 20:24:33', '2', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review_copy1` VALUES ('e9aee5a4-3886-4aed-a258-10c772b160af', '4', '2', 'qwe', '2023-07-23 20:27:07', '2', 'f83a4c77-7121-4765-9e07-ca69e4f2087c', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review_copy1` VALUES ('f25e2994-fef3-4f1b-ab53-7d87fda7baf7', '4', '2', '22234', '2023-07-23 20:20:23', '2', '98839620-9ba2-41f9-9767-8d20821244c4', '98839620-9ba2-41f9-9767-8d20821244c4');
INSERT INTO `review_copy1` VALUES ('f6c42a54-a5c7-4e43-917e-cce13bfbd0d5', '4', '2', '3太34t', '2023-07-23 20:22:27', '2', '093ca390-9fb0-494e-8d67-e415a715d741', '093ca390-9fb0-494e-8d67-e415a715d741');
INSERT INTO `review_copy1` VALUES ('f6ce5976-40f1-4cf0-96c7-d1f490cf3dbf', '4', '1', '567', '2023-07-22 14:08:53', '1', '39392409-8953-4521-89c2-404270837fef', '1');
INSERT INTO `review_copy1` VALUES ('f83a4c77-7121-4765-9e07-ca69e4f2087c', '4', '2', '', '2023-07-23 20:26:31', '2', 'cfde791d-9e67-4916-a763-20a275523f4b', 'b604a9a5-2bb6-490e-a6dc-aa823cb2b1ee');
INSERT INTO `review_copy1` VALUES ('f9646792-d16c-4203-ae5e-3a2fadeb407f', '4', '3', '卡卡卡', '2023-07-22 17:08:45', '1', '1', '1');
INSERT INTO `review_copy1` VALUES ('fc7ee477-fec1-454b-b473-09d493f4ce2c', '4', '1', '哈哈 我来也', '2023-07-23 10:17:54', '2', '55456fe7-8920-4939-a70d-77d787f689b5', '66d88665-a73a-4b70-acdb-44438db27962');
INSERT INTO `review_copy1` VALUES ('ff6678e5-ae93-42c4-bf1c-d403526a662e', '52', '2', '555', '2023-07-22 18:15:20', '2', '65a8d31a-2406-411b-865a-b91ba6a66641', '1');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'qiu', '123', 'qxy大魔王', NULL, 6);
INSERT INTO `user` VALUES ('2', 'test', 'test', 'qxy小跟班', NULL, 5);
INSERT INTO `user` VALUES ('3', 'zhangsan', '123', '张三', NULL, 3);

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `current` int NOT NULL,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `display_index` int NULL DEFAULT NULL,
  `total` int NOT NULL,
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', '某科学的超电磁炮 第一季', 1, '/image/diancipao2.jpg', 4, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-1.mp4', NULL);
INSERT INTO `video` VALUES ('10', '某科学的超电磁炮 第一季', 6, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-6.mp4', NULL);
INSERT INTO `video` VALUES ('11', '某科学的超电磁炮 第一季', 7, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-7.mp4', NULL);
INSERT INTO `video` VALUES ('12', '某科学的超电磁炮 第一季', 8, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-8.mp4', NULL);
INSERT INTO `video` VALUES ('13', '某科学的超电磁炮 第一季', 9, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-9.mp4', NULL);
INSERT INTO `video` VALUES ('14', '某科学的超电磁炮 第一季', 10, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-10.mp4', NULL);
INSERT INTO `video` VALUES ('15', '某科学的超电磁炮 第一季', 11, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-11.mp4', NULL);
INSERT INTO `video` VALUES ('16', '某科学的超电磁炮 第一季', 12, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-12.mp4', NULL);
INSERT INTO `video` VALUES ('17', '某科学的超电磁炮 第一季', 13, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-13.mp4', NULL);
INSERT INTO `video` VALUES ('18', '某科学的超电磁炮 第一季', 14, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-14.mp4', NULL);
INSERT INTO `video` VALUES ('19', '某科学的超电磁炮 第一季', 15, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-15.mp4', NULL);
INSERT INTO `video` VALUES ('2', '约会大作战 第一季', 1, '/image/yuezhan2.jpeg', 3, 13, '/约会大作战 第一季/约会大作战 第一季-1.mp4', NULL);
INSERT INTO `video` VALUES ('20', '某科学的超电磁炮 第一季', 16, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-16.mp4', NULL);
INSERT INTO `video` VALUES ('21', '某科学的超电磁炮 第一季', 17, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-17.mp4', NULL);
INSERT INTO `video` VALUES ('22', '某科学的超电磁炮 第一季', 18, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-18.mp4', NULL);
INSERT INTO `video` VALUES ('23', '某科学的超电磁炮 第一季', 19, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-19.mp4', NULL);
INSERT INTO `video` VALUES ('24', '某科学的超电磁炮 第一季', 20, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-20.mp4', NULL);
INSERT INTO `video` VALUES ('25', '某科学的超电磁炮 第一季', 21, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-21.mp4', NULL);
INSERT INTO `video` VALUES ('26', '某科学的超电磁炮 第一季', 22, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-22.mp4', NULL);
INSERT INTO `video` VALUES ('27', '某科学的超电磁炮 第一季', 23, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-23.mp4', NULL);
INSERT INTO `video` VALUES ('28', '某科学的超电磁炮 第一季', 24, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-24.mp4', NULL);
INSERT INTO `video` VALUES ('29', '约会大作战 第一季', 2, NULL, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-2.mp4', NULL);
INSERT INTO `video` VALUES ('3', '干物妹！小埋', 1, '/image/ganwumeixiaomai.jpg', 5, 12, '/干物妹！小埋/干物妹！小埋-1.mp4', NULL);
INSERT INTO `video` VALUES ('30', '约会大作战 第一季', 3, NULL, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-3.mp4', NULL);
INSERT INTO `video` VALUES ('31', '约会大作战 第一季', 4, NULL, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-4.mp4', NULL);
INSERT INTO `video` VALUES ('32', '约会大作战 第一季', 5, NULL, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-5.mp4', NULL);
INSERT INTO `video` VALUES ('33', '约会大作战 第一季', 6, NULL, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-6.mp4', NULL);
INSERT INTO `video` VALUES ('34', '约会大作战 第一季', 7, NULL, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-7.mp4', NULL);
INSERT INTO `video` VALUES ('35', '约会大作战 第一季', 8, NULL, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-8.mp4', NULL);
INSERT INTO `video` VALUES ('36', '约会大作战 第一季', 9, NULL, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-9.mp4', NULL);
INSERT INTO `video` VALUES ('37', '约会大作战 第一季', 10, NULL, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-10.mp4', NULL);
INSERT INTO `video` VALUES ('38', '约会大作战 第一季', 11, NULL, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-11.mp4', NULL);
INSERT INTO `video` VALUES ('39', '约会大作战 第一季', 12, NULL, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-12.mp4', NULL);
INSERT INTO `video` VALUES ('4', '天使降临到我身边', 1, '/image/tianshijianglin.jpg', 1, 13, '/天使降临到我身边/天使降临到我身边-1.mp4', NULL);
INSERT INTO `video` VALUES ('40', '约会大作战 第一季', 13, NULL, NULL, 13, '/约会大作战 第一季/约会大作战 第一季-13.mp4', NULL);
INSERT INTO `video` VALUES ('41', '天使降临到我身边', 2, NULL, NULL, 13, '/天使降临到我身边/天使降临到我身边-2.mp4', NULL);
INSERT INTO `video` VALUES ('42', '天使降临到我身边', 3, NULL, NULL, 13, '/天使降临到我身边/天使降临到我身边-3.mp4', NULL);
INSERT INTO `video` VALUES ('43', '天使降临到我身边', 4, NULL, NULL, 13, '/天使降临到我身边/天使降临到我身边-4.mp4', NULL);
INSERT INTO `video` VALUES ('44', '天使降临到我身边', 5, NULL, NULL, 13, '/天使降临到我身边/天使降临到我身边-5.mp4', NULL);
INSERT INTO `video` VALUES ('45', '天使降临到我身边', 6, NULL, NULL, 13, '/天使降临到我身边/天使降临到我身边-6.mp4', NULL);
INSERT INTO `video` VALUES ('46', '天使降临到我身边', 7, NULL, NULL, 13, '/天使降临到我身边/天使降临到我身边-7.mp4', NULL);
INSERT INTO `video` VALUES ('47', '天使降临到我身边', 8, NULL, NULL, 13, '/天使降临到我身边/天使降临到我身边-8.mp4', NULL);
INSERT INTO `video` VALUES ('48', '天使降临到我身边', 9, NULL, NULL, 13, '/天使降临到我身边/天使降临到我身边-9.mp4', NULL);
INSERT INTO `video` VALUES ('49', '天使降临到我身边', 10, NULL, NULL, 13, '/天使降临到我身边/天使降临到我身边-10.mp4', NULL);
INSERT INTO `video` VALUES ('5', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 1, '/image/huiye.jpg', 2, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-1.mp4', NULL);
INSERT INTO `video` VALUES ('50', '天使降临到我身边', 11, NULL, NULL, 13, '/天使降临到我身边/天使降临到我身边-11.mp4', NULL);
INSERT INTO `video` VALUES ('51', '天使降临到我身边', 12, NULL, NULL, 13, '/天使降临到我身边/天使降临到我身边-12.mp4', NULL);
INSERT INTO `video` VALUES ('52', '天使降临到我身边', 13, NULL, NULL, 13, '/天使降临到我身边/天使降临到我身边-13.mp4', NULL);
INSERT INTO `video` VALUES ('53', '干物妹！小埋', 2, NULL, NULL, 12, '/干物妹！小埋/干物妹！小埋-2.mp4', NULL);
INSERT INTO `video` VALUES ('54', '干物妹！小埋', 3, NULL, NULL, 12, '/干物妹！小埋/干物妹！小埋-3.mp4', NULL);
INSERT INTO `video` VALUES ('55', '干物妹！小埋', 4, NULL, NULL, 12, '/干物妹！小埋/干物妹！小埋-4.mp4', NULL);
INSERT INTO `video` VALUES ('56', '干物妹！小埋', 5, NULL, NULL, 12, '/干物妹！小埋/干物妹！小埋-5.mp4', NULL);
INSERT INTO `video` VALUES ('57', '干物妹！小埋', 6, NULL, NULL, 12, '/干物妹！小埋/干物妹！小埋-6.mp4', NULL);
INSERT INTO `video` VALUES ('58', '干物妹！小埋', 7, NULL, NULL, 12, '/干物妹！小埋/干物妹！小埋-7.mp4', NULL);
INSERT INTO `video` VALUES ('59', '干物妹！小埋', 8, NULL, NULL, 12, '/干物妹！小埋/干物妹！小埋-8.mp4', NULL);
INSERT INTO `video` VALUES ('6', '某科学的超电磁炮 第一季', 2, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-2.mp4', NULL);
INSERT INTO `video` VALUES ('60', '干物妹！小埋', 9, NULL, NULL, 12, '/干物妹！小埋/干物妹！小埋-9.mp4', NULL);
INSERT INTO `video` VALUES ('61', '干物妹！小埋', 10, NULL, NULL, 12, '/干物妹！小埋/干物妹！小埋-10.mp4', NULL);
INSERT INTO `video` VALUES ('62', '干物妹！小埋', 11, NULL, NULL, 12, '/干物妹！小埋/干物妹！小埋-11.mp4', NULL);
INSERT INTO `video` VALUES ('63', '干物妹！小埋', 12, NULL, NULL, 12, '/干物妹！小埋/干物妹！小埋-12.mp4', NULL);
INSERT INTO `video` VALUES ('64', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 2, NULL, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-2.mp4', NULL);
INSERT INTO `video` VALUES ('65', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 3, NULL, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-3.mp4', NULL);
INSERT INTO `video` VALUES ('66', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 4, NULL, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-4.mp4', NULL);
INSERT INTO `video` VALUES ('67', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 5, NULL, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-5.mp4', NULL);
INSERT INTO `video` VALUES ('68', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 6, NULL, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-6.mp4', NULL);
INSERT INTO `video` VALUES ('69', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 7, NULL, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-7.mp4', NULL);
INSERT INTO `video` VALUES ('7', '某科学的超电磁炮 第一季', 3, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-3.mp4', NULL);
INSERT INTO `video` VALUES ('70', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 8, NULL, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-8.mp4', NULL);
INSERT INTO `video` VALUES ('71', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 9, NULL, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-9.mp4', NULL);
INSERT INTO `video` VALUES ('72', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 10, NULL, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-10.mp4', NULL);
INSERT INTO `video` VALUES ('73', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 11, NULL, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-11.mp4', NULL);
INSERT INTO `video` VALUES ('74', '辉夜大小姐想让我告白～天才们的恋爱头脑战～', 12, NULL, NULL, 12, '/辉夜大小姐想让我告白～天才们的恋爱头脑战～/辉夜大小姐想让我告白～天才们的恋爱头脑战～-12.mp4', NULL);
INSERT INTO `video` VALUES ('8', '某科学的超电磁炮 第一季', 4, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-4.mp4', NULL);
INSERT INTO `video` VALUES ('9', '某科学的超电磁炮 第一季', 5, NULL, NULL, 24, '/某科学的超电磁炮 第一季/某科学的超电磁炮 第一季-5.mp4', NULL);

SET FOREIGN_KEY_CHECKS = 1;
