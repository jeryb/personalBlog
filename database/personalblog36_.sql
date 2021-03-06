/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : personalblog

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-06-08 22:17:58
*/


/*DROP database IF EXISTS `personalBlog`;
create database personalBlog character set utf8 collate utf8_general_ci;*/
USE personalBlog;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tp_admin
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin`;
CREATE TABLE `tp_admin` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(255) DEFAULT NULL COMMENT '管理员名称',
  `password` VARCHAR(255) DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MYISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin
-- ----------------------------
INSERT INTO `tp_admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3');
INSERT INTO `tp_admin` VALUES ('2', 'fry', '3abf3fc2c74417325898901330b4ceb1');
INSERT INTO `tp_admin` VALUES ('5', 'jing', '43ae0add70fd1bda16d0700282cd8d2d');
INSERT INTO `tp_admin` VALUES ('4', 'admin123', '3abf3fc2c74417325898901330b4ceb1');
INSERT INTO `tp_admin` VALUES ('6', 'try', 'a76118d22b240b1641d405636ecb8395');
INSERT INTO `tp_admin` VALUES ('7', 'admin12', '21232f297a57a5a743894a0e4a801fc3');

-- ----------------------------
-- Table structure for tp_article
-- ----------------------------
DROP TABLE IF EXISTS `tp_article`;
CREATE TABLE `tp_article` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `title` VARCHAR(255) DEFAULT NULL COMMENT '文章标题',
  `author` VARCHAR(255) DEFAULT NULL COMMENT '文章作者',
  `desc` VARCHAR(255) DEFAULT NULL COMMENT '文章简介',
  `keywords` VARCHAR(255) DEFAULT NULL COMMENT '文章的关键词',
  `content` TEXT COMMENT '文章内容',
  `pic` VARCHAR(255) DEFAULT NULL COMMENT '文章缩略图，是一个地址',
  `click` INT(10) UNSIGNED ZEROFILL DEFAULT '0000000000' COMMENT '点击数',
  `state` INT(10) UNSIGNED ZEROFILL DEFAULT '0000000000' COMMENT '文章状态 0：不推荐  1：推荐',
  `time` INT(11) DEFAULT NULL COMMENT '文章发布时间，时间戳',
  `cateid` INT(11) DEFAULT NULL COMMENT '文章所属的栏目',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MYISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_article
-- ----------------------------
INSERT INTO `tp_article` VALUES ('2', 'fry', 'fry', 'fry', 'fry,123,31231', '<p>fry</p>', 'uploads/20180411\\053d78f4175fc348312c21b85308e38d.jpg', '0000000005', '0000000000', '1523407937', '8');
INSERT INTO `tp_article` VALUES ('3', '文章22', '文章', '文章', '文章', '<p>文章</p>', 'uploads/20180411\\3746a38487dec33bcb127bd77f38f228.jpg', '0000000001', '0000000001', '1523410763', '2');
INSERT INTO `tp_article` VALUES ('4', 'dfsadfs', 'dfsadfs', 'dfsadfs', 'dfsadfs', '<p>dfsadfs</p>', 'uploads/20180411\\82e787fac56080dcbada14a13a289da1.jpg', '0000000002', '0000000001', '1523411354', '2');
INSERT INTO `tp_article` VALUES ('5', '生日', '生日', '生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日', '生日', '<p>生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日！！</p><p>生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日！！</p><p>生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日！！</p><p>生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日！！</p><p>生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日！！</p><p>生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日！！</p><p>生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日！！</p><p>生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日！！</p><p>生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日！！</p><p>生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日！！</p><p>生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日生日！！</p>', '', '0000000003', '0000000001', '1523519708', '5');
INSERT INTO `tp_article` VALUES ('6', '孕妇可以学开车吗 孕妇开车注意事项', 'fry', '孕妇可以学开车吗?学开车对于孕妇来说是个体力活，对孕妇本身和胎儿的影响是非常大。下面就随小编边一起来了解一些孕妇开车注意事项吧。这些生活小常识，孕妈妈们要记得哦。', '生活小常识', '<p><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\">孕妇可以学开车吗?学开车对于孕妇来说是个体力活，对孕妇本身和胎儿的影响是非常大。下面就随小编边一起来了解一些孕妇开车注意事项吧。这些生活小常识，孕妈妈们要记得哦。</span></p><p><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\"><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\">孕妇可以学开车吗?学开车对于孕妇来说是个体力活，对孕妇本身和胎儿的影响是非常大。下面就随小编边一起来了解一些孕妇开车注意事项吧。这些生活小常识，孕妈妈们要记得哦。</span></span></p><p><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\"><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\"><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\">孕妇可以学开车吗?学开车对于孕妇来说是个体力活，对孕妇本身和胎儿的影响是非常大。下面就随小编边一起来了解一些孕妇开车注意事项吧。这些生活小常识，孕妈妈们要记得哦。</span></span></span></p><p><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\"><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\"><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\"><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\">孕妇可以学开车吗?学开车对于孕妇来说是个体力活，对孕妇本身和胎儿的影响是非常大。下面就随小编边一起来了解一些孕妇开车注意事项吧。这些生活小常识，孕妈妈们要记得哦。</span></span></span></span></p><p><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\"><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\"><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\"><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\"><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\">孕妇可以学开车吗?学开车对于孕妇来说是个体力活，对孕妇本身和胎儿的影响是非常大。下面就随小编边一起来了解一些孕妇开车注意事项吧。这些生活小常识，孕妈妈们要记得哦。</span></span></span></span></span></p><p><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\"><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\"><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\"><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\"><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\"><span style=\"color: rgb(140, 140, 140); font-family: tahoma, &quot;microsoft yahei&quot;, 微软雅黑; font-size: 14px;\">孕妇可以学开车吗?学开车对于孕妇来说是个体力活，对孕妇本身和胎儿的影响是非常大。下面就随小编边一起来了解一些孕妇开车注意事项吧。这些生活小常识，孕妈妈们要记得哦。</span></span></span></span></span></span></p>', 'uploads/20180412\\b74de978c265f9cc19fe4842b1ceb836.jpg', '0000000013', '0000000001', '1523522637', '5');
INSERT INTO `tp_article` VALUES ('7', '在家如何自制烤肉 烤肉串致癌不适宜多吃', '美食家', '烧烤不管是男生还是女生都很热爱，而且是夏天冬天都适合的美食。如果你不想在外吃烤肉，那么你也可以在家自制哦。下面我们一起来看看在家如何自制烤肉吧。', '烤肉', '<p>烧烤不管是男生还是女生都很热爱，而且是夏天冬天都适合的美食。如果你不想在外吃烤肉，那么你也可以在家自制哦。下面我们一起来看看在家如何自制烤肉吧。</p><p>烧烤不管是男生还是女生都很热爱，而且是夏天冬天都适合的美食。如果你不想在外吃烤肉，那么你也可以在家自制哦。下面我们一起来看看在家如何自制烤肉吧。</p><p>烧烤不管是男生还是女生都很热爱，而且是夏天冬天都适合的美食。如果你不想在外吃烤肉，那么你也可以在家自制哦。下面我们一起来看看在家如何自制烤肉吧。</p><p>烧烤不管是男生还是女生都很热爱，而且是夏天冬天都适合的美食。如果你不想在外吃烤肉，那么你也可以在家自制哦。下面我们一起来看看在家如何自制烤肉吧。</p><p>烧烤不管是男生还是女生都很热爱，而且是夏天冬天都适合的美食。如果你不想在外吃烤肉，那么你也可以在家自制哦。下面我们一起来看看在家如何自制烤肉吧。</p><p>烧烤不管是男生还是女生都很热爱，而且是夏天冬天都适合的美食。如果你不想在外吃烤肉，那么你也可以在家自制哦。下面我们一起来看看在家如何自制烤肉吧。</p>', 'uploads/20180412\\383e2d9a92be0cc29a1ef5fc5ccd534f.jpg', '0000000019', '0000000001', '1523530577', '1');
INSERT INTO `tp_article` VALUES ('8', '部门聚餐通知怎么写 6篇范文推荐', '青蛙呱呱', '公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！', '聚餐', '<p>公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！</p><p>公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！</p><p>公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！</p><p>公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！</p><p>公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！</p><p>公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！</p><p>公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！</p><p>公司聚餐是非常普遍的公司活动，那么公司部门聚餐通知怎么写呢？以下是小编提供的一些范文，供大家参考哦！</p>', 'uploads/20180412\\77449ca2d3416005e128cebfc71f6e49.jpg', '0000000007', '0000000001', '1523530801', '1');
INSERT INTO `tp_article` VALUES ('9', '老爸过生日送什么礼物好 老爸过生日送什么好', '一刀流', '父亲过生日，肯定要送个爸爸平时用得着的东西，每次用的时候就能想到是你送的，那么老爸过生日送什么礼物好呢？', '生日礼物', '<p>父亲过生日，肯定要送个爸爸平时用得着的东西，每次用的时候就能想到是你送的，那么老爸过生日送什么礼物好呢？</p><p>父亲过生日，肯定要送个爸爸平时用得着的东西，每次用的时候就能想到是你送的，那么老爸过生日送什么礼物好呢？</p><p>父亲过生日，肯定要送个爸爸平时用得着的东西，每次用的时候就能想到是你送的，那么老爸过生日送什么礼物好呢？</p><p>父亲过生日，肯定要送个爸爸平时用得着的东西，每次用的时候就能想到是你送的，那么老爸过生日送什么礼物好呢？</p><p>父亲过生日，肯定要送个爸爸平时用得着的东西，每次用的时候就能想到是你送的，那么老爸过生日送什么礼物好呢？</p><p>父亲过生日，肯定要送个爸爸平时用得着的东西，每次用的时候就能想到是你送的，那么老爸过生日送什么礼物好呢？</p><p>父亲过生日，肯定要送个爸爸平时用得着的东西，每次用的时候就能想到是你送的，那么老爸过生日送什么礼物好呢？</p>', 'uploads/20180412\\469e35892dd396564fb8c74a001df391.jpg', '0000000014', '0000000001', '1523530898', '5');
INSERT INTO `tp_article` VALUES ('10', '深圳公司聚餐好去处 满足吃货们的各种需求', '十四郎', '深圳公司聚餐好去处有哪些呢？以下是wed114小编给吃货们整理出来的一些很有特色的餐厅，如果你实在想不到很中意的去处，不妨考虑一下这些地方吧。', '聚餐', '<p>深圳公司聚餐好去处有哪些呢？以下是wed114小编给吃货们整理出来的一些很有特色的餐厅，如果你实在想不到很中意的去处，不妨考虑一下这些地方吧。</p><p>深圳公司聚餐好去处有哪些呢？以下是wed114小编给吃货们整理出来的一些很有特色的餐厅，如果你实在想不到很中意的去处，不妨考虑一下这些地方吧。</p><p>深圳公司聚餐好去处有哪些呢？以下是wed114小编给吃货们整理出来的一些很有特色的餐厅，如果你实在想不到很中意的去处，不妨考虑一下这些地方吧。</p><p>深圳公司聚餐好去处有哪些呢？以下是wed114小编给吃货们整理出来的一些很有特色的餐厅，如果你实在想不到很中意的去处，不妨考虑一下这些地方吧。</p><p>深圳公司聚餐好去处有哪些呢？以下是wed114小编给吃货们整理出来的一些很有特色的餐厅，如果你实在想不到很中意的去处，不妨考虑一下这些地方吧。</p><p>深圳公司聚餐好去处有哪些呢？以下是wed114小编给吃货们整理出来的一些很有特色的餐厅，如果你实在想不到很中意的去处，不妨考虑一下这些地方吧。</p>', 'uploads/20180412\\c0f60de955d11fcd350f016b0c2d1abb.jpg', '0000000033', '0000000000', '1523531011', '1');
INSERT INTO `tp_article` VALUES ('11', '吃火锅拉肚子怎么办 五种生活小方法教你有效缓解', '火锅君', '在日常生活中我们经常会吃火锅，但大家吃完火锅过后普遍都有一个共同的特点，那就是会拉肚子。那么，我们吃火锅拉肚子怎么办才能有效解决呢？下面让我们一起来看看吧！', '火锅', '<p>在日常生活中我们经常会吃火锅，但大家吃完火锅过后普遍都有一个共同的特点，那就是会拉肚子。那么，我们吃火锅拉肚子怎么办才能有效解决呢？下面让我们一起来看看吧！在日常生活中我们经常会吃火锅，但大家吃完火锅过后普遍都有一个共同的特点，那就是会拉肚子。那么，我们吃火锅拉肚子怎么办才能有效解决呢？下面让我们一起来看看吧！</p><p>在日常生活中我们经常会吃火锅，但大家吃完火锅过后普遍都有一个共同的特点，那就是会拉肚子。那么，我们吃火锅拉肚子怎么办才能有效解决呢？下面让我们一起来看看吧！</p><p>在日常生活中我们经常会吃火锅，但大家吃完火锅过后普遍都有一个共同的特点，那就是会拉肚子。那么，我们吃火锅拉肚子怎么办才能有效解决呢？下面让我们一起来看看吧！</p><p>在日常生活中我们经常会吃火锅，但大家吃完火锅过后普遍都有一个共同的特点，那就是会拉肚子。那么，我们吃火锅拉肚子怎么办才能有效解决呢？下面让我们一起来看看吧！</p><p>在日常生活中我们经常会吃火锅，但大家吃完火锅过后普遍都有一个共同的特点，那就是会拉肚子。那么，我们吃火锅拉肚子怎么办才能有效解决呢？下面让我们一起来看看吧！在日常生活中我们经常会吃火锅，但大家吃完火锅过后普遍都有一个共同的特点，那就是会拉肚子。那么，我们吃火锅拉肚子怎么办才能有效解决呢？下面让我们一起来看看吧！在日常生活中我们经常会吃火锅，但大家吃完火锅过后普遍都有一个共同的特点，那就是会拉肚子。那么，我们吃火锅拉肚子怎么办才能有效解决呢？下面让我们一起来看看吧！在日常生活中我们经常会吃火锅，但大家吃完火锅过后普遍都有一个共同的特点，那就是会拉肚子。那么，我们吃火锅拉肚子怎么办才能有效解决呢？下面让我们一起来看看吧！</p>', 'uploads/20180412\\7b698ebdcefae95ec733e97d19038022.jpg', '0000000003', '0000000001', '1523531084', '1');
INSERT INTO `tp_article` VALUES ('12', '女生过生日送什么礼物比较好 可以讨女生开心的礼物', '爱心大大', '有用的礼物不如无用的礼物。建议你不要送实用性太强的东西，那么女生过生日送什么礼物比较好呢？哪些礼物可以讨女生开心呢？下面一起来看看吧！', '生日礼物', '<p>有用的礼物不如无用的礼物。建议你不要送实用性太强的东西，那么女生过生日送什么礼物比较好呢？哪些礼物可以讨女生开心呢？下面一起来看看吧！</p><p>有用的礼物不如无用的礼物。建议你不要送实用性太强的东西，那么女生过生日送什么礼物比较好呢？哪些礼物可以讨女生开心呢？下面一起来看看吧！</p><p>有用的礼物不如无用的礼物。建议你不要送实用性太强的东西，那么女生过生日送什么礼物比较好呢？哪些礼物可以讨女生开心呢？下面一起来看看吧！</p><p>有用的礼物不如无用的礼物。建议你不要送实用性太强的东西，那么女生过生日送什么礼物比较好呢？哪些礼物可以讨女生开心呢？下面一起来看看吧！</p>', 'uploads/20180412\\e6938480dc70c709222c6d5d2e13885b.jpg', '0000000003', '0000000001', '1523531205', '5');
INSERT INTO `tp_article` VALUES ('13', '衣服上的烧烤味怎么处理 小方法巧除味', '爆肉君', '很多人都都喜欢吃烧烤，可是吃完烧脑的苦恼是衣服上总有一股晒考味，那么衣服上的烧烤味怎么处理?头发上的烧烤味又怎么处理呢?一起随小编来看看吧。', '烤肉', '<p>很多人都都喜欢吃烧烤，可是吃完烧脑的苦恼是衣服上总有一股晒考味，那么衣服上的烧烤味怎么处理?头发上的烧烤味又怎么处理呢?一起随小编来看看吧。</p><p>很多人都都喜欢吃烧烤，可是吃完烧脑的苦恼是衣服上总有一股晒考味，那么衣服上的烧烤味怎么处理?头发上的烧烤味又怎么处理呢?一起随小编来看看吧。</p><p>很多人都都喜欢吃烧烤，可是吃完烧脑的苦恼是衣服上总有一股晒考味，那么衣服上的烧烤味怎么处理?头发上的烧烤味又怎么处理呢?一起随小编来看看吧。</p><p>很多人都都喜欢吃烧烤，可是吃完烧脑的苦恼是衣服上总有一股晒考味，那么衣服上的烧烤味怎么处理?头发上的烧烤味又怎么处理呢?一起随小编来看看吧。</p>', 'uploads/20180412\\bf68556894cc0a177bfe1b86e19b05c3.jpg', '0000000003', '0000000001', '1523531276', '5');
INSERT INTO `tp_article` VALUES ('14', '广州公司聚餐好去处 聚餐休闲的好地方', '广州君', '广州公司聚餐好去处有哪些呢？以下是小编整理的一些网友推荐的餐厅以及推荐理由，需要的朋友不妨来看看有没有让你满意的吧。', '聚餐', '<p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \"><strong style=\"list-style: none; margin: 0px; padding: 0px;\">广州公司聚餐好去处</strong>有哪些呢?以下是小编整理的一些网友推荐的<span style=\"text-decoration:underline;\"><a href=\"http://localhost:81/jiehun/canting/\" target=\"_blank\" style=\"list-style: none; margin: 0px; padding: 0px; outline: none; text-decoration-line: none; color: rgb(11, 59, 140); display: inline-block;\">餐厅</a></span>以及推荐理由，需要的朋友不妨来看看有没有让你满意的吧。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \"><a href=\"http://localhost:81/personalBlog/public/index.php/index/article/index/arid/20160920156214_2.html\" style=\"list-style: none; margin: 0px; padding: 0px; outline: none; text-decoration-line: none; color: rgb(11, 59, 140); display: inline-block;\"><img src=\"http://www.blog.com:81/static/admin/ueditor/themes/default/images/spacer.gif\" alt=\"å¹¿å·å¬å¸èé¤å¥½å»å¤ èé¤ä¼é²çå¥½å°æ¹\"/><img src=\"/ueditor/php/upload/image/20180608/1528467118775819.jpg\" title=\"1528467118775819.jpg\" alt=\"55_160920113801_1.jpg\"/></a></p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \"><strong style=\"list-style: none; margin: 0px; padding: 0px;\">1：香江大酒店茶皇厅</strong></p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">地址：番禺区大石迎宾路538号香江大酒店2楼(近沙溪大桥)</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">电话：020-84786888转 84786168</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">价格人均：￥79</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">网友评价：口味:21 环境:19 服务:19</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">餐厅简介: 虽说也做“中餐和早茶”，但自助餐才是真正的“拳头产品”。一落座，先送一份炖汤，“真材实料”，而且“每天不同”。自取的食物品种“多”，味道“好”，甚至有“不少”“普通自助吃不到”的“贵价食品”。“三文鱼、象拔蚌、北极贝任吃”，还有很多的<span style=\"text-decoration:underline;\"><a href=\"http://localhost:81/jiehun/z96592.html\" target=\"_blank\" style=\"list-style: none; margin: 0px; padding: 0px; outline: none; text-decoration-line: none; color: rgb(11, 59, 140); display: inline-block;\">海鲜</a></span>、炖汤、甜水等。环境和服务都“好好”，“生日当天凭身份证”还可以“免费一位”。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">推荐菜式: 三文鱼、象拔蚌、木瓜炖雪蛤、冻蟹。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \"><strong style=\"list-style: none; margin: 0px; padding: 0px;\">2：白虎西餐厅(长隆酒店)</strong></p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">地址：广州市番禺区大石迎宾路</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">电话：020-84786838</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">价格人均：￥159</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">网友评价：口味:22 环境:32 服务:26</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">推荐理由： 环境“一流”，自助餐种类“多”，口味“不错”。去的话，可以“随意”吃三文鱼而“不用排队”，还有“超多的海鲜、刺身、寿司之类”，点心、<span style=\"text-decoration:underline;\"><a href=\"http://localhost:81/jiehun/shuiguo/\" target=\"_blank\" style=\"list-style: none; margin: 0px; padding: 0px; outline: none; text-decoration-line: none; color: rgb(11, 59, 140); display: inline-block;\">水果</a></span>也“相当好”。“最最喜欢”的是可以“一边看白虎，一边吃饭”，“不知不觉”总能“吃多”。吃完后，“一路走去”，还可以观赏“不少动物”。因此，就算价钱“超五星级”，也是“物有所值”。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \"><strong style=\"list-style: none; margin: 0px; padding: 0px;\">3：唐荔园餐厅</strong></p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">地址：荔湾区黄沙大道如意坊路口荔湾湖公园内</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">电话：020-81702228</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">价格人均：￥71</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">网友评价：口味:22 环境:26 服务:18</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">简介: 公园里的“园林酒家”，档次“不差”，性价比也“很好”。做的是“正宗<span style=\"text-decoration:underline;\"><a href=\"http://localhost:81/jiehun/yuecai/\" target=\"_blank\" style=\"list-style: none; margin: 0px; padding: 0px; outline: none; text-decoration-line: none; color: rgb(11, 59, 140); display: inline-block;\">粤菜</a></span>”，颇具“西关风味”。早茶也“不错”，“一直开到中午”。环境“冇得弹”，临湖，空气“清新”。“靠湖边”的桌子“用绿色花栏隔开”，“不会相互干扰”。最爱等到“晚上”，湖中“各色彩灯”亮起时，到“湖心的小艇”上用餐(设最低消费)，“别有一番感受”。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">推荐菜谱: 乳鸽、艇仔粥。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \"><strong style=\"list-style: none; margin: 0px; padding: 0px;\">4：利苑酒家</strong></p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">越秀店地址：越秀区建设六马路33号宜安广场4楼</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">越秀店电话：020-84786888转 84786168</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \"><img src=\"/ueditor/php/upload/image/20180608/1528467148371708.jpg\" title=\"1528467148371708.jpg\" alt=\"55_160920113818_1.jpg\"/></p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \"><strong style=\"list-style: none; margin: 0px; padding: 0px;\">5：顺峰海鲜酒楼</strong></p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">珠江新城店地址：天河区珠江新城华夏路8号合景国际金融广场4楼</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">珠江新城店电话：85500028</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">价格人均：￥79</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">网友评价：口味:23 环境:21 服务:24</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">餐厅简介: “广州顶级的粤菜餐厅之一”。环境和出品“一流”。“最欣赏”的是服务——有什么要求，“眉稍抬，手未举，口没开”，“马上”就有人“迎上来”。多吃两次，领班就能“记住你的名字和喜欢的食物”。想象一下，带客户过来，领班“离得老远就认出你”，“热情”地打招呼，席间照顾得“无微不至”，真是“很有face”。P.S.工作日11:30开始营业。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">推荐菜式: 片皮鸭、萝卜酥、榴梿酥、鲍汁鹅掌。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \"><strong style=\"list-style: none; margin: 0px; padding: 0px;\">6：稻香酒家</strong></p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">地址：天河区马场路36号太阳新天地购物中心7楼708号</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">电话：38326088</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">价格人均：￥66</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">网友评价：口味:23 环境:21 服务:23</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">餐厅简介: 一个“一直会去的店”。一进门就是“很高级”“很华丽”的感觉。菜“比较有特色”，而且“个个都不错”。点心“出名精致”同“好味”，让“品尝成了一种享受”。价钱“不算便宜”，但是“物有所值”。服务“态度好得不得了”。因此，光顾“次数比较多”。惟一不足的就是人“太多”，“次次都要等位”，而且等的时间“比较长”。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">推荐菜式:蛋挞、皮蛋粥、虾饺、XO酱萝卜糕、香柠蛋散。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">海珠店地址电话：海珠区滨江东路81号半岛游艇俱乐部内 34296118</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">越秀店地址电话：越秀区东风西路163号之1号铺 81363839</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">价格人均：￥108</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">网友评价：口味:21 环境:24 服务:20</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">餐厅简介: 菜肴口味“挺顺德的”。“特色”菜不少，就是味道“不太有特色”。点心“比较正宗”，做得“很精致”，口味当然也“值得一赞”。包间“很大”，“漂亮又干净”，而且有一些“可以看到江景”。服务很好，“每吃一道菜换一次盘子”。价格“不便宜”，“不属于普通家庭的消费层次”。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \"><strong style=\"list-style: none; margin: 0px; padding: 0px;\">7：广州蕉叶餐厅</strong></p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">天河店地址电话：天河区天河北路28号时代广场2楼 38910728</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">世贸店地址电话：越秀区环市东路371号世界贸易中心6楼 87763738</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">广视店地址电话：越秀区麓湖路8号广视宾馆1楼 83597499</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">价格人均：￥100</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">网友评价：口味:22 环境:21 服务:20</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">餐厅简介: 泰国菜做得很“地道”，“酸辣刺激”。冬荫功海鲜汤“一定要试”，招牌咖喱蟹吃剩下来的汁，还可以拿来“捞饭”。最叫人“喜欢”的是厨师、侍者“充满激情”的歌舞，令人“气血沸腾”。要是跟他们“对上眼”，还会被“热情”地“强拉”出去一起“跳舞”呢。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, \">推荐菜式: 猪颈肉、冬荫功汤、咖喱皇炒蟹、榴梿薄饼、椰青海鲜焗饭、椰汁糕。</p><p><br/></p>', 'uploads/20180412\\cfd862f1d820100a97f1bcf6eb73a04f.jpg', '0000000026', '0000000001', '1523531335', '1');
INSERT INTO `tp_article` VALUES ('15', '老年人过生日送什么礼物好 老人过生日送什么好', '青蛙呱呱', '老人过生日送什么礼物不重要，重要的是心意。那么老年人过生日送什么礼物好呢？下面随wed114结婚网小编一起来看看吧！', '生日礼物', '<p>老人过生日送什么礼物不重要，重要的是心意。那么老年人过生日送什么礼物好呢？下面随wed114结婚网小编一起来看看吧！</p><p>老人过生日送什么礼物不重要，重要的是心意。那么老年人过生日送什么礼物好呢？下面随wed114结婚网小编一起来看看吧！</p><p>老人过生日送什么礼物不重要，重要的是心意。那么老年人过生日送什么礼物好呢？下面随wed114结婚网小编一起来看看吧！</p><p>老人过生日送什么礼物不重要，重要的是心意。那么老年人过生日送什么礼物好呢？下面随wed114结婚网小编一起来看看吧！</p><p>老人过生日送什么礼物不重要，重要的是心意。那么老年人过生日送什么礼物好呢？下面随wed114结婚网小编一起来看看吧！</p>', 'uploads/20180412\\47182da34c31592aed113205022afca0.jpg', '0000000004', '0000000001', '1523531419', '5');

-- ----------------------------
-- Table structure for tp_cate
-- ----------------------------
DROP TABLE IF EXISTS `tp_cate`;
CREATE TABLE `tp_cate` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '栏目id',
  `catename` VARCHAR(255) DEFAULT NULL COMMENT '栏目名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MYISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_cate
-- ----------------------------
INSERT INTO `tp_cate` VALUES ('1', '美食');
INSERT INTO `tp_cate` VALUES ('2', '健身');
INSERT INTO `tp_cate` VALUES ('3', '养生');
INSERT INTO `tp_cate` VALUES ('4', '服装');
INSERT INTO `tp_cate` VALUES ('5', '生活');
INSERT INTO `tp_cate` VALUES ('6', '娱乐');
INSERT INTO `tp_cate` VALUES ('7', '旅游');
INSERT INTO `tp_cate` VALUES ('8', '婚嫁');

-- ----------------------------
-- Table structure for tp_links
-- ----------------------------
DROP TABLE IF EXISTS `tp_links`;
CREATE TABLE `tp_links` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '链接id',
  `title` VARCHAR(255) DEFAULT NULL COMMENT '链接标题',
  `url` VARCHAR(255) DEFAULT NULL COMMENT '链接地址',
  `desc` VARCHAR(255) DEFAULT NULL COMMENT '链接说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MYISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_links
-- ----------------------------
INSERT INTO `tp_links` VALUES ('3', '百度', 'https://www.baidu.com', '百度网');
INSERT INTO `tp_links` VALUES ('2', '360', 'https://www.360.cn', '360网');
INSERT INTO `tp_links` VALUES ('4', 'google', 'https://www.google.cn', 'google webpage');

-- ----------------------------
-- Table structure for tp_tags
-- ----------------------------
DROP TABLE IF EXISTS `tp_tags`;
CREATE TABLE `tp_tags` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '标签id',
  `tagname` VARCHAR(255) DEFAULT NULL COMMENT '标签名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MYISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_tags
-- ----------------------------
