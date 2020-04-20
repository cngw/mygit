/*
 Navicat Premium Data Transfer

 Source Server         : centos
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : 34.83.171.71:3306
 Source Schema         : djangoblog

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 20/04/2020 15:45:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accounts_bloguser
-- ----------------------------
DROP TABLE IF EXISTS `accounts_bloguser`;
CREATE TABLE `accounts_bloguser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nickname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mugshot` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accounts_bloguser
-- ----------------------------
INSERT INTO `accounts_bloguser` VALUES (1, 'pbkdf2_sha256$120000$hKDRXLzxKAx4$XXFPm41ElZBc0mAik0foHTV+vqO+/TA+gWZxBgbfwCo=', '2019-11-18 08:01:14.083303', 1, 'admin', '', '', '', 1, 1, '2019-04-10 19:52:57.462450', '', '', '2019-04-10 19:52:57.462483', '2019-04-10 19:52:57.462514');
INSERT INTO `accounts_bloguser` VALUES (2, 'test!q@w#eTYU', NULL, 0, '测试用户', '', '', 'test@test.com', 0, 1, '2019-04-10 19:53:17.257070', '', '', '2019-04-10 19:53:17.257097', '2019-04-10 19:53:17.257102');
INSERT INTO `accounts_bloguser` VALUES (4, 'password', '2019-04-12 14:58:00.000000', 0, 'gao', 'w', 'g', 'gaoweicn@foxmail.com', 0, 1, '2019-04-12 14:57:00.000000', '', '', '2019-04-12 14:57:00.000000', '2019-04-12 14:57:00.000000');
INSERT INTO `accounts_bloguser` VALUES (5, 'admin', '2019-04-13 01:57:00.000000', 0, 'cngw', 'w', 'g', 'robertfly@qq.com', 0, 1, '2019-04-13 01:56:00.000000', 'gw', '', '2019-04-13 01:56:00.000000', '2019-04-13 01:56:00.000000');
INSERT INTO `accounts_bloguser` VALUES (6, 'pbkdf2_sha256$120000$yTuW5c79HD8E$Migi/0jAs18Ca3SvYFWt8TNmg0hROPzIkK043/vpy9A=', '2019-04-13 02:01:03.162695', 0, 'ggww', '', '', 'gaoweichinese@gmail.com', 0, 1, '2019-04-13 02:00:25.419563', '', '', '2019-04-13 02:00:25.419604', '2019-04-13 02:00:25.419609');
INSERT INTO `accounts_bloguser` VALUES (7, 'g', '2019-08-20 10:12:00.000000', 0, 'g', '', '', 'g@gmail.com', 0, 1, '2019-08-20 10:12:00.000000', '', '', '2019-08-20 10:12:00.000000', '2019-08-20 10:12:00.000000');
INSERT INTO `accounts_bloguser` VALUES (8, 'pbkdf2_sha256$120000$3DVPvqkAvenN$ofe/oKcTEeccNV0OyEwO3ol/u0Hf/eJ6Z47hygZ5GAY=', '2019-11-21 04:14:23.639960', 0, 't', '', '', 't@tmail.com', 0, 1, '2019-11-21 04:14:08.449228', '', '', '2019-11-21 04:14:08.449253', '2019-11-21 04:14:08.449257');

-- ----------------------------
-- Table structure for accounts_bloguser_groups
-- ----------------------------
DROP TABLE IF EXISTS `accounts_bloguser_groups`;
CREATE TABLE `accounts_bloguser_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bloguser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `accounts_bloguser_groups_bloguser_id_group_id_fc37e89b_uniq`(`bloguser_id`, `group_id`) USING BTREE,
  INDEX `accounts_bloguser_groups_group_id_98d76804_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `accounts_bloguser_gr_bloguser_id_a16ccbb7_fk_accounts_` FOREIGN KEY (`bloguser_id`) REFERENCES `accounts_bloguser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `accounts_bloguser_groups_group_id_98d76804_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accounts_bloguser_groups
-- ----------------------------

-- ----------------------------
-- Table structure for accounts_bloguser_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `accounts_bloguser_user_permissions`;
CREATE TABLE `accounts_bloguser_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bloguser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `accounts_bloguser_user_p_bloguser_id_permission_i_14808777_uniq`(`bloguser_id`, `permission_id`) USING BTREE,
  INDEX `accounts_bloguser_us_permission_id_ae5159b9_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `accounts_bloguser_us_bloguser_id_7e1b5742_fk_accounts_` FOREIGN KEY (`bloguser_id`) REFERENCES `accounts_bloguser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `accounts_bloguser_us_permission_id_ae5159b9_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accounts_bloguser_user_permissions
-- ----------------------------
INSERT INTO `accounts_bloguser_user_permissions` VALUES (1, 5, 25);

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add site', 6, 'add_site');
INSERT INTO `auth_permission` VALUES (22, 'Can change site', 6, 'change_site');
INSERT INTO `auth_permission` VALUES (23, 'Can delete site', 6, 'delete_site');
INSERT INTO `auth_permission` VALUES (24, 'Can view site', 6, 'view_site');
INSERT INTO `auth_permission` VALUES (25, 'Can add 文章', 7, 'add_article');
INSERT INTO `auth_permission` VALUES (26, 'Can change 文章', 7, 'change_article');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 文章', 7, 'delete_article');
INSERT INTO `auth_permission` VALUES (28, 'Can view 文章', 7, 'view_article');
INSERT INTO `auth_permission` VALUES (29, 'Can add 网站配置', 8, 'add_blogsettings');
INSERT INTO `auth_permission` VALUES (30, 'Can change 网站配置', 8, 'change_blogsettings');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 网站配置', 8, 'delete_blogsettings');
INSERT INTO `auth_permission` VALUES (32, 'Can view 网站配置', 8, 'view_blogsettings');
INSERT INTO `auth_permission` VALUES (33, 'Can add 分类', 9, 'add_category');
INSERT INTO `auth_permission` VALUES (34, 'Can change 分类', 9, 'change_category');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 分类', 9, 'delete_category');
INSERT INTO `auth_permission` VALUES (36, 'Can view 分类', 9, 'view_category');
INSERT INTO `auth_permission` VALUES (37, 'Can add 友情链接', 10, 'add_links');
INSERT INTO `auth_permission` VALUES (38, 'Can change 友情链接', 10, 'change_links');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 友情链接', 10, 'delete_links');
INSERT INTO `auth_permission` VALUES (40, 'Can view 友情链接', 10, 'view_links');
INSERT INTO `auth_permission` VALUES (41, 'Can add 侧边栏', 11, 'add_sidebar');
INSERT INTO `auth_permission` VALUES (42, 'Can change 侧边栏', 11, 'change_sidebar');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 侧边栏', 11, 'delete_sidebar');
INSERT INTO `auth_permission` VALUES (44, 'Can view 侧边栏', 11, 'view_sidebar');
INSERT INTO `auth_permission` VALUES (45, 'Can add 标签', 12, 'add_tag');
INSERT INTO `auth_permission` VALUES (46, 'Can change 标签', 12, 'change_tag');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 标签', 12, 'delete_tag');
INSERT INTO `auth_permission` VALUES (48, 'Can view 标签', 12, 'view_tag');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_bloguser');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_bloguser');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_bloguser');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_bloguser');
INSERT INTO `auth_permission` VALUES (53, 'Can add 评论', 14, 'add_comment');
INSERT INTO `auth_permission` VALUES (54, 'Can change 评论', 14, 'change_comment');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 评论', 14, 'delete_comment');
INSERT INTO `auth_permission` VALUES (56, 'Can view 评论', 14, 'view_comment');
INSERT INTO `auth_permission` VALUES (57, 'Can add oauth配置', 15, 'add_oauthconfig');
INSERT INTO `auth_permission` VALUES (58, 'Can change oauth配置', 15, 'change_oauthconfig');
INSERT INTO `auth_permission` VALUES (59, 'Can delete oauth配置', 15, 'delete_oauthconfig');
INSERT INTO `auth_permission` VALUES (60, 'Can view oauth配置', 15, 'view_oauthconfig');
INSERT INTO `auth_permission` VALUES (61, 'Can add oauth用户', 16, 'add_oauthuser');
INSERT INTO `auth_permission` VALUES (62, 'Can change oauth用户', 16, 'change_oauthuser');
INSERT INTO `auth_permission` VALUES (63, 'Can delete oauth用户', 16, 'delete_oauthuser');
INSERT INTO `auth_permission` VALUES (64, 'Can view oauth用户', 16, 'view_oauthuser');
INSERT INTO `auth_permission` VALUES (65, 'Can add 命令', 17, 'add_commands');
INSERT INTO `auth_permission` VALUES (66, 'Can change 命令', 17, 'change_commands');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 命令', 17, 'delete_commands');
INSERT INTO `auth_permission` VALUES (68, 'Can view 命令', 17, 'view_commands');
INSERT INTO `auth_permission` VALUES (69, 'Can add 邮件发送log', 18, 'add_emailsendlog');
INSERT INTO `auth_permission` VALUES (70, 'Can change 邮件发送log', 18, 'change_emailsendlog');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 邮件发送log', 18, 'delete_emailsendlog');
INSERT INTO `auth_permission` VALUES (72, 'Can view 邮件发送log', 18, 'view_emailsendlog');
INSERT INTO `auth_permission` VALUES (73, 'Can add OwnTrackLogs', 19, 'add_owntracklog');
INSERT INTO `auth_permission` VALUES (74, 'Can change OwnTrackLogs', 19, 'change_owntracklog');
INSERT INTO `auth_permission` VALUES (75, 'Can delete OwnTrackLogs', 19, 'delete_owntracklog');
INSERT INTO `auth_permission` VALUES (76, 'Can view OwnTrackLogs', 19, 'view_owntracklog');

-- ----------------------------
-- Table structure for blog_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_time` datetime(6) NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(10) UNSIGNED NOT NULL,
  `article_order` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `title`(`title`) USING BTREE,
  INDEX `blog_article_author_id_905add38_fk_accounts_bloguser_id`(`author_id`) USING BTREE,
  INDEX `blog_article_category_id_7e38f15e_fk_blog_category_id`(`category_id`) USING BTREE,
  CONSTRAINT `blog_article_author_id_905add38_fk_accounts_bloguser_id` FOREIGN KEY (`author_id`) REFERENCES `accounts_bloguser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `blog_article_category_id_7e38f15e_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_article
-- ----------------------------
INSERT INTO `blog_article` VALUES (1, '2019-04-10 19:53:21.024043', '2019-04-10 19:53:21.024061', 'What\'s Python', '**The Python**\r\nPython is an easy to learn, powerful programming language. It has efficient high-level data structures and a simple but effective approach to object-oriented programming. Python’s elegant syntax and dynamic typing, together with its interpreted nature, make it an ideal language for scripting and rapid application development in many areas on most platforms.\r\n\r\nThe Python interpreter and the extensive standard library are freely available in source or binary form for all major platforms from the Python Web site, https://www.python.org/, and may be freely distributed. The same site also contains distributions of and pointers to many free third party Python modules, programs and tools, and additional documentation.\r\n\r\nThe Python interpreter is easily extended with new functions and data types implemented in C or C++ (or other languages callable from C). Python is also suitable as an extension language for customizable applications.\r\n\r\nThis tutorial introduces the reader informally to the basic concepts and features of the Python language and system. It helps to have a Python interpreter handy for hands-on experience, but all examples are self-contained, so the tutorial can be read off-line as well.\r\n\r\nFor a description of standard objects and modules, see The Python Standard Library. The Python Language Reference gives a more formal definition of the language. To write extensions in C or C++, read Extending and Embedding the Python Interpreter and Python/C API Reference Manual. There are also several books covering Python in depth.\r\n\r\nThis tutorial does not attempt to be comprehensive and cover every single feature, or even every commonly used feature. Instead, it introduces many of Python’s most noteworthy features, and will give you a good idea of the language’s flavor and style. After reading it, you will be able to read and write Python modules and programs, and you will be ready to learn more about the various Python library modules described in The Python Standard Library.\r\n\r\n> Reproduced', '2019-04-11 22:09:00.000000', 'p', 'o', 'a', 34, 0, 1, 2);
INSERT INTO `blog_article` VALUES (20, '2019-04-12 15:02:31.057288', '2019-04-12 15:02:31.057303', '知足常乐', '**知足常乐**\r\n快乐是人类社会众望所归的最高境界。\r\n\r\n所谓君子之交谈如水。一个把名缰利锁看得太重的人。注定是不快乐的。\r\n\r\n快乐就是看淡尘世的物欲、烦恼，不慕荣利。假如你喜欢武侠小说，你没有必要愧对红楼梦；假如你喜欢的人突然销声匿迹，你没有必要寻死觅活地断言他一定洒脱地离去；假如你的朋友不幸，你没有必要怨天尤人；假如你认为张曼玉艳美绝俗，你没有必要眼馋肚饱虐待老婆；假如你已经身心交病，那就去教堂忏悔，没有必要仇视别人的平庸；坦然面对心融神会，快乐就在你心里。\r\n\r\n我怜悯一个有点荣誉的人，就旁若无人而因此失去快乐的人。\r\n\r\n能把名利得失置之度外，而凡事都能以诚相待的人一生将是快乐的。我们应从平谈的生活中去提炼体会，如：赤城待人的那种快乐。低待遇下一如既往工作的快乐，助人为乐一介不取的快乐，一片至诚去感化恶人的快乐，热心被人误解依然如故的快乐，信实可靠的服务态度为目的的快乐，尽责任吃苦耐劳的快乐，因为这些“快乐”能保持住人内心的快乐，使人的容貌永远那么牵挂，一句亲切的问候。甚至一个关切的眼神，快乐无处不有，唯有胸襟开阔的人，才能体会到。\r\n\r\n形单影只的人仍然可以享受着闲情逸致的快乐。乐山乐水各不相同。爱静的人可以看书、听音乐、上网、写作、画画、搜集各种收藏品。爱动的人则不妨练习舞蹈、慢跑、爬山、游泳。看电影、上健身房。做编织、陶艺。练瑜枷、潜心发明、闭门创作，摄影、观鸟，我们仍然兴复不浅，乐不可支。\r\n\r\n人生苦短，岁月如流，乐天知命，为什么不乐乐陶陶的。\r\n\r\n为什么要疾首蹙额，为眼前一时的顿挫心胆俱碎？\r\n\r\n为什么要对那些你看不惯的人和事心烦率乱？\r\n\r\n岂不知我们都是尘世间相映成趣的战友。\r\n\r\n人世一切冤天屈地，无妄之灾，荣华富贵，香娇玉嫩……都将随身亡命殒。\r\n\r\n而人生长着百年，短则数十寒暑，又有何值得耀武扬威的，不过是烟云过眼矣？\r\n\r\n人生如月，月满则亏，凡事岂能尽人意，但求于心无愧。\r\n\r\n无愧我心，则恩同再造，那些得失又算不了甚么。世界上没有完美无缺得事物。奉劝多愁善感的朋友。饮醇自醉，快乐起来吧！\r\n\r\n芸芸众生，绿水青山，名胜古迹，敞开心胸，便会云蒸霞蔚，快乐将永远伴随着你！\r\n\r\n> 转载', '2019-04-12 15:02:00.000000', 'p', 'o', 'a', 43, 1, 1, 3);
INSERT INTO `blog_article` VALUES (21, '2019-04-13 03:45:19.765305', '2019-04-13 03:45:19.765320', 'How to set up Nginx+Gunicorn+Django(Python)', '# Nginx+Gunicorn+Django(Python)\r\n\r\nWhen we have finished a project and going to delploy on the web, we might face the problem, how we are going to deploy.\r\nHere is my way to do it: Nginx+Gunicorn\r\n\r\nGunicorn is a kind of tool samialar with uWSGI but it\'s much more simple than uWSGI settiing.\r\n\r\n## Niginx setup\r\nFirst you need to install the Niginx\r\nbelow is the niginx install command on centOS:\r\n`yum install Niginx`\r\nWaithing the install completed.\r\nThen we need to change the Nginx configure setting, normally it\'s under etc/Nginx/nginx.conf ,  after we opened it, we need to take a look where the configure file link the supported file:\r\n```python\r\nserver {\r\n	listen       80 default_server;\r\n	listen       [::]:80 default_server;\r\n	server_name  _;\r\n	root         /usr/share/nginx/html;\r\n\r\n	# Load configuration files for the default server block.\r\n	include /etc/nginx/default.d/*.conf;\r\n\r\n	location / {\r\n	}\r\n```\r\nAfter we know the supported configure file, then we need to open the file and do the setting, below is what i have set on my server:\r\n```\r\n    server {\r\n        listen 80;\r\n        server_name cngw.cf;\r\n        server_name_in_redirect off;\r\n        access_log /www/wwwroot/log/nginx.access.log;\r\n        error_log /www/wwwroot/log/nginx.error.log;\r\n    \r\n        location / {\r\n            proxy_pass http://127.0.0.1:8000;\r\n            proxy_pass_header       Authorization;\r\n            proxy_pass_header       WWW-Authenticate;\r\n            proxy_set_header Host $host;\r\n            proxy_set_header X-Real-IP $remote_addr;\r\n            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;\r\n        }\r\n    \r\n        location /static/ {\r\n            alias /www/wwwroot/DjangoBlog/collectedstatic/;\r\n        }\r\n    }\r\n```\r\nNeed to restar the service after all configure\r\n`sudo service nginx restart`\r\n\r\n## Gunicorn setup\r\nThen we need to go to set up the gunicorn. Go to you project virtual enviroment to use pip install the gunicorn:\r\n`pip install gunicorn`\r\nAfter we have installed the gunicorn, we need to do some setting.\r\nIn the project ettings.p INSTALLED_APPS add gunicorn：\r\n```python\r\nINSTALLED_APPS = [\r\n...\r\n...\r\n\'gunicorn\',\r\n]\r\n```\r\ngunicorn.conf.py\r\n```python\r\nimport multiprocessing\r\nbind = \"127.0.0.1:8000\"\r\nworkers = 2\r\nerrorlog = \'/home/xxx/xxx/gunicorn.error.log\'\r\naccesslog = \'/home/xxx/xxx/gunicorn.access.log\'\r\nloglevel = \'debug\'\r\nproc_name = \'gunicorn_project\'\r\n```\r\n\r\n## Start the project\r\nNow we can start up the gunicorn:\r\n`$ sudo nohup gunicorn 项目名.wsgi:application -c /home/xxx/xxx/gunicorn.conf.py& `\r\n\r\nEvery thing is done, enjoy your project on web.\r\n\r\n> Original', '2019-04-13 03:44:00.000000', 'p', 'o', 'a', 47, 0, 1, 1);

-- ----------------------------
-- Table structure for blog_article_tags
-- ----------------------------
DROP TABLE IF EXISTS `blog_article_tags`;
CREATE TABLE `blog_article_tags`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `blog_article_tags_article_id_tag_id_b78a22e9_uniq`(`article_id`, `tag_id`) USING BTREE,
  INDEX `blog_article_tags_tag_id_88eb3ed9_fk_blog_tag_id`(`tag_id`) USING BTREE,
  CONSTRAINT `blog_article_tags_article_id_82c02dd6_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `blog_article_tags_tag_id_88eb3ed9_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_article_tags
-- ----------------------------
INSERT INTO `blog_article_tags` VALUES (2, 1, 1);
INSERT INTO `blog_article_tags` VALUES (1, 1, 2);
INSERT INTO `blog_article_tags` VALUES (39, 20, 4);
INSERT INTO `blog_article_tags` VALUES (40, 21, 1);

-- ----------------------------
-- Table structure for blog_blogsettings
-- ----------------------------
DROP TABLE IF EXISTS `blog_blogsettings`;
CREATE TABLE `blog_blogsettings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_seo_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_sub_length` int(11) NOT NULL,
  `sidebar_article_count` int(11) NOT NULL,
  `sidebar_comment_count` int(11) NOT NULL,
  `show_google_adsense` tinyint(1) NOT NULL,
  `google_adsense_codes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `open_site_comment` tinyint(1) NOT NULL,
  `beiancode` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `analyticscode` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_gongan_code` tinyint(1) NOT NULL,
  `gongan_beiancode` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `resource_path` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_blogsettings
-- ----------------------------
INSERT INTO `blog_blogsettings` VALUES (1, '偉  -  GW', '道可道, 非常道. 名可名, 非常名.', 'Django Blog', 'Django,Python,Computer,Technology,Semiconductor', 900, 10, 5, 0, '', 1, NULL, 'Statistic', 0, '', '/var/www/resource/');

-- ----------------------------
-- Table structure for blog_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_category_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `blog_category_parent_category_id_f50c3c0c_fk_blog_category_id`(`parent_category_id`) USING BTREE,
  INDEX `blog_category_slug_92643dc5`(`slug`) USING BTREE,
  CONSTRAINT `blog_category_parent_category_id_f50c3c0c_fk_blog_category_id` FOREIGN KEY (`parent_category_id`) REFERENCES `blog_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_category
-- ----------------------------
INSERT INTO `blog_category` VALUES (1, '2019-04-10 19:53:18.456053', '2019-04-10 19:53:18.456071', 'Technology-科技', 'wo-shi-fu-lei-mu', NULL);
INSERT INTO `blog_category` VALUES (2, '2019-04-10 19:53:19.609703', '2019-04-10 19:53:19.609720', 'Python', 'zi-lei-mu', 1);
INSERT INTO `blog_category` VALUES (3, '2019-04-11 22:02:26.758956', '2019-04-11 22:02:26.758968', 'LifeStyle-生活', 'life-style-sheng-huo', NULL);

-- ----------------------------
-- Table structure for blog_links
-- ----------------------------
DROP TABLE IF EXISTS `blog_links`;
CREATE TABLE `blog_links`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sequence` int(11) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `show_type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  UNIQUE INDEX `sequence`(`sequence`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_links
-- ----------------------------
INSERT INTO `blog_links` VALUES (1, 'This is a side link', 'http://cngw.cf', 1, 1, 'a', '2019-04-12 01:37:38.355623', '2019-04-12 01:37:38.355634');

-- ----------------------------
-- Table structure for blog_sidebar
-- ----------------------------
DROP TABLE IF EXISTS `blog_sidebar`;
CREATE TABLE `blog_sidebar`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sequence` int(11) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sequence`(`sequence`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_sidebar
-- ----------------------------
INSERT INTO `blog_sidebar` VALUES (1, '悟', '博知者寡言，半知者放言，无知者肆言。- 《古兰经》\r\n\r\n人静而后安，安而能后定，定而能后慧，慧而能后悟，悟而能后得。 -《大学》\r\n\r\n“Inside us there is something that has no name, that something is what we are.” – Jose Saramago', 1, 1, '2019-04-12 01:35:51.644844', '2019-04-12 01:35:51.644856');

-- ----------------------------
-- Table structure for blog_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `blog_tag_slug_01068d0e`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_tag
-- ----------------------------
INSERT INTO `blog_tag` VALUES (1, '2019-04-10 19:53:20.556022', '2019-04-10 19:53:20.556034', 'Python', 'biao-qian');
INSERT INTO `blog_tag` VALUES (2, '2019-04-10 19:53:22.694060', '2019-04-10 19:53:22.694078', 'Excel', 'biao-qian-1');
INSERT INTO `blog_tag` VALUES (3, '2019-04-10 19:53:24.391993', '2019-04-10 19:53:24.392010', 'Semicon', 'biao-qian-2');
INSERT INTO `blog_tag` VALUES (4, '2019-04-10 19:53:26.015213', '2019-04-10 19:53:26.015229', 'Life Sytle', 'biao-qian-3');
INSERT INTO `blog_tag` VALUES (5, '2019-04-10 19:53:28.403697', '2019-04-10 19:53:28.403721', 'Photo', 'biao-qian-4');
INSERT INTO `blog_tag` VALUES (6, '2019-04-10 19:53:30.012297', '2019-04-10 19:53:30.012314', 'Sky', 'biao-qian-5');

-- ----------------------------
-- Table structure for comments_comment
-- ----------------------------
DROP TABLE IF EXISTS `comments_comment`;
CREATE TABLE `comments_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `article_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `comments_comment_article_id_94fe60a2_fk_blog_article_id`(`article_id`) USING BTREE,
  INDEX `comments_comment_author_id_334ce9e2_fk_accounts_bloguser_id`(`author_id`) USING BTREE,
  INDEX `comments_comment_parent_comment_id_71289d4a_fk_comments_`(`parent_comment_id`) USING BTREE,
  CONSTRAINT `comments_comment_article_id_94fe60a2_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comments_comment_author_id_334ce9e2_fk_accounts_bloguser_id` FOREIGN KEY (`author_id`) REFERENCES `accounts_bloguser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comments_comment_parent_comment_id_71289d4a_fk_comments_` FOREIGN KEY (`parent_comment_id`) REFERENCES `comments_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments_comment
-- ----------------------------
INSERT INTO `comments_comment` VALUES (1, 'nice article', '2019-04-13 02:04:35.580362', '2019-04-13 02:04:35.580380', 1, 1, 6, NULL);
INSERT INTO `comments_comment` VALUES (2, 'correct, happiness is easy go get.', '2019-08-20 10:13:04.904964', '2019-08-20 10:13:04.904981', 1, 20, 7, NULL);
INSERT INTO `comments_comment` VALUES (3, 'sound great', '2019-11-21 04:14:52.911858', '2019-11-21 04:14:52.911870', 1, 20, 8, NULL);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_accounts_bloguser_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_bloguser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_bloguser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2019-04-11 21:54:05.935836', '1', 'Cngw\'s Blog', 2, '[{\"changed\": {\"fields\": [\"sitename\", \"site_description\", \"site_seo_description\", \"site_keywords\", \"analyticscode\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (2, '2019-04-11 21:58:24.111447', '1', 'GW\'s Blog (伟-博客)', 2, '[{\"changed\": {\"fields\": [\"sitename\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (3, '2019-04-11 22:01:20.624025', '1', 'Technology-科技', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (4, '2019-04-11 22:01:55.284207', '2', 'Python', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (5, '2019-04-11 22:02:27.316052', '3', 'Life Style - 生活', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (6, '2019-04-11 22:02:35.350058', '1', 'Technology - 科技', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (7, '2019-04-11 22:06:50.527949', '19', 'nice title 19', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (8, '2019-04-11 22:06:50.582032', '18', 'nice title 18', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (9, '2019-04-11 22:06:50.591849', '17', 'nice title 17', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (10, '2019-04-11 22:06:50.598896', '16', 'nice title 16', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (11, '2019-04-11 22:06:50.605969', '15', 'nice title 15', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (12, '2019-04-11 22:06:50.612489', '14', 'nice title 14', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (13, '2019-04-11 22:06:50.618895', '13', 'nice title 13', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (14, '2019-04-11 22:06:50.625152', '12', 'nice title 12', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (15, '2019-04-11 22:06:50.632672', '11', 'nice title 11', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (16, '2019-04-11 22:06:50.640556', '10', 'nice title 10', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (17, '2019-04-11 22:06:50.647403', '9', 'nice title 9', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (18, '2019-04-11 22:06:50.654433', '8', 'nice title 8', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (19, '2019-04-11 22:06:50.662116', '7', 'nice title 7', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (20, '2019-04-11 22:06:50.670260', '6', 'nice title 6', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (21, '2019-04-11 22:06:50.678117', '5', 'nice title 5', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (22, '2019-04-11 22:06:50.686500', '4', 'nice title 4', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (23, '2019-04-11 22:06:50.693731', '3', 'nice title 3', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (24, '2019-04-11 22:06:50.700008', '2', 'nice title 2', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (25, '2019-04-11 22:09:36.779269', '3', '', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (26, '2019-04-11 22:11:06.099978', '1', 'What\'s Python', 2, '[{\"changed\": {\"fields\": [\"title\", \"body\", \"pub_time\", \"author\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (27, '2019-04-12 01:29:05.729840', '11', '标签10', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (28, '2019-04-12 01:29:05.755781', '12', '标签11', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (29, '2019-04-12 01:29:05.777270', '13', '标签12', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (30, '2019-04-12 01:29:05.782944', '14', '标签13', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (31, '2019-04-12 01:29:05.853660', '15', '标签14', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (32, '2019-04-12 01:29:05.878320', '16', '标签15', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (33, '2019-04-12 01:29:05.896191', '17', '标签16', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (34, '2019-04-12 01:29:05.914823', '18', '标签17', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (35, '2019-04-12 01:29:05.933895', '19', '标签18', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (36, '2019-04-12 01:29:05.939887', '20', '标签19', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (37, '2019-04-12 01:29:05.962415', '7', '标签6', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (38, '2019-04-12 01:29:05.980131', '8', '标签7', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (39, '2019-04-12 01:29:05.995384', '9', '标签8', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (40, '2019-04-12 01:29:06.009859', '10', '标签9', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (41, '2019-04-12 01:29:23.197965', '1', 'Python', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (42, '2019-04-12 01:29:32.120415', '2', 'Excel', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (43, '2019-04-12 01:30:20.253444', '3', 'Semicon', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (44, '2019-04-12 01:30:38.322885', '4', 'Life Sytle', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (45, '2019-04-12 01:30:50.968164', '5', 'Photo', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (46, '2019-04-12 01:30:59.676317', '6', 'Sky', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (47, '2019-04-12 01:33:18.096584', '3', '', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (48, '2019-04-12 01:35:51.648078', '1', 'This is side slide', 1, '[{\"added\": {}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (49, '2019-04-12 01:36:18.530119', '2', 'Side show2', 1, '[{\"added\": {}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (50, '2019-04-12 01:37:38.691835', '1', 'This is a side link', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (51, '2019-04-12 01:38:23.394968', '1', 'This is a side link', 2, '[{\"changed\": {\"fields\": [\"link\"]}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (52, '2019-04-12 14:59:50.340891', '4', 'gaoweicn@foxmail.com', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (53, '2019-04-12 15:01:18.272994', '3', '', 3, '', 13, 1);
INSERT INTO `django_admin_log` VALUES (54, '2019-04-12 15:02:31.841510', '20', '知足常乐', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (55, '2019-04-13 01:57:59.211666', '5', 'robertfly@qq.com', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (56, '2019-04-13 02:16:44.918867', '20', '知足常乐', 2, '[{\"changed\": {\"fields\": [\"tags\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (57, '2019-04-13 02:18:27.190549', '1', 'Technology - 科技', 2, '[{\"changed\": {\"fields\": [\"parent_category\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (58, '2019-04-13 02:18:34.481605', '1', 'Technology - 科技', 2, '[]', 9, 1);
INSERT INTO `django_admin_log` VALUES (59, '2019-04-13 02:18:41.699134', '3', 'Life Style - 生活', 2, '[{\"changed\": {\"fields\": [\"parent_category\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (60, '2019-04-13 02:18:47.221141', '2', 'Python', 2, '[]', 9, 1);
INSERT INTO `django_admin_log` VALUES (61, '2019-04-13 02:36:29.237159', '1', 'About', 2, '[{\"changed\": {\"fields\": [\"name\", \"content\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (62, '2019-04-13 02:37:14.723900', '1', 'About', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (63, '2019-04-13 02:37:37.411828', '1', 'About', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (64, '2019-04-13 02:38:38.108502', '1', '悟', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (65, '2019-04-13 02:41:27.345705', '1', '悟', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (66, '2019-04-13 02:42:25.061241', '1', '悟', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (67, '2019-04-13 02:43:26.620848', '1', '悟', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (68, '2019-04-13 02:47:52.411497', '2', 'Feeling', 2, '[{\"changed\": {\"fields\": [\"name\", \"content\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (69, '2019-04-13 02:49:03.977957', '1', '悟', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (70, '2019-04-13 02:49:35.370071', '1', '悟', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (71, '2019-04-13 02:49:59.972666', '2', 'Feeling', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (72, '2019-04-13 02:50:52.126169', '3', 'Life Style - 生活', 2, '[{\"changed\": {\"fields\": [\"parent_category\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (73, '2019-04-13 02:51:04.893623', '1', 'Technology - 科技', 2, '[]', 9, 1);
INSERT INTO `django_admin_log` VALUES (74, '2019-04-13 02:51:24.598702', '3', 'Life Style - 生活', 2, '[{\"changed\": {\"fields\": [\"parent_category\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (75, '2019-04-13 02:51:32.156487', '1', 'Technology - 科技', 2, '[{\"changed\": {\"fields\": [\"parent_category\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (76, '2019-04-13 02:55:20.329902', '20', '知足常乐', 2, '[{\"changed\": {\"fields\": [\"body\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (77, '2019-04-13 03:12:25.505757', '2', 'Feeling', 3, '', 11, 1);
INSERT INTO `django_admin_log` VALUES (78, '2019-04-13 03:12:51.649884', '1', '悟', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (79, '2019-04-13 03:13:25.091191', '1', '悟', 2, '[]', 11, 1);
INSERT INTO `django_admin_log` VALUES (80, '2019-04-13 03:13:45.462884', '1', '悟', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (81, '2019-04-13 03:14:13.355100', '1', '悟', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (82, '2019-04-13 03:14:58.605498', '1', '悟', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (83, '2019-04-13 03:15:37.705514', '1', '悟', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (84, '2019-04-13 03:15:53.354673', '1', '悟', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (85, '2019-04-13 03:45:20.909660', '21', 'How to set up Nginx+Gunicorn+Django(Python)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (86, '2019-04-13 03:46:32.335651', '21', 'How to set up Nginx+Gunicorn+Django(Python)', 2, '[{\"changed\": {\"fields\": [\"body\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (87, '2019-04-13 03:48:22.112151', '21', 'How to set up Nginx+Gunicorn+Django(Python)', 2, '[{\"changed\": {\"fields\": [\"body\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (88, '2019-04-13 03:49:32.780354', '21', 'How to set up Nginx+Gunicorn+Django(Python)', 2, '[{\"changed\": {\"fields\": [\"body\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (89, '2019-04-13 03:51:11.403171', '21', 'How to set up Nginx+Gunicorn+Django(Python)', 2, '[{\"changed\": {\"fields\": [\"body\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (90, '2019-04-13 03:52:43.368696', '21', 'How to set up Nginx+Gunicorn+Django(Python)', 2, '[{\"changed\": {\"fields\": [\"body\", \"views\", \"tags\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (91, '2019-04-14 01:43:24.031401', '21', 'How to set up Nginx+Gunicorn+Django(Python)', 2, '[{\"changed\": {\"fields\": [\"body\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (92, '2019-04-14 01:44:51.210115', '21', 'How to set up Nginx+Gunicorn+Django(Python)', 2, '[{\"changed\": {\"fields\": [\"body\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (93, '2019-04-14 11:09:13.535500', '21', 'How to set up Nginx+Gunicorn+Django(Python)', 2, '[{\"changed\": {\"fields\": [\"body\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (94, '2019-04-14 11:23:10.470295', '1', 'GW\'s Blog (伟-博客)', 2, '[{\"changed\": {\"fields\": [\"site_description\", \"article_sub_length\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (95, '2019-04-14 11:23:50.077300', '1', 'GW\'s Blog (伟-博客)', 2, '[]', 8, 1);
INSERT INTO `django_admin_log` VALUES (96, '2019-04-14 11:26:12.198518', '3', 'LifeStyle-生活', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (97, '2019-04-14 11:26:29.656173', '1', 'Technology-科技', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (98, '2019-04-14 11:27:28.557680', '1', 'GW\'s Blog (伟-博客)', 2, '[{\"changed\": {\"fields\": [\"article_sub_length\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (99, '2019-04-14 11:49:41.477269', '1', 'GW\'s Blog (伟-博客)', 2, '[{\"changed\": {\"fields\": [\"site_description\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (100, '2019-04-14 11:50:09.731758', '1', 'GW\'s Blog (伟-博客)', 2, '[{\"changed\": {\"fields\": [\"site_description\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (101, '2019-04-14 11:56:19.835478', '20', '知足常乐', 2, '[{\"changed\": {\"fields\": [\"body\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (102, '2019-04-14 11:57:35.139512', '20', '知足常乐', 2, '[{\"changed\": {\"fields\": [\"body\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (103, '2019-04-14 11:58:48.167191', '21', 'How to set up Nginx+Gunicorn+Django(Python)', 2, '[{\"changed\": {\"fields\": [\"body\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (104, '2019-04-14 11:59:25.118375', '1', 'What\'s Python', 2, '[{\"changed\": {\"fields\": [\"body\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (105, '2019-04-14 13:25:11.185281', '1', 'gwcn.ga', 2, '[{\"changed\": {\"fields\": [\"domain\", \"name\"]}}]', 6, 1);
INSERT INTO `django_admin_log` VALUES (106, '2019-04-14 13:25:57.029905', '1', '伟-GW', 2, '[{\"changed\": {\"fields\": [\"sitename\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (107, '2019-04-14 13:26:23.431513', '1', '伟 -  GW', 2, '[{\"changed\": {\"fields\": [\"sitename\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (108, '2019-04-14 13:27:03.999113', '1', '偉  -  GW', 2, '[{\"changed\": {\"fields\": [\"sitename\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (109, '2019-04-14 13:29:19.059070', '1', '偉  -  GW', 2, '[{\"changed\": {\"fields\": [\"site_description\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (110, '2019-04-14 13:30:17.923631', '20', '知足常乐', 2, '[{\"changed\": {\"fields\": [\"article_order\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (111, '2019-08-20 10:14:58.475944', '7', 'g@gmail.com', 2, '[{\"changed\": {\"fields\": [\"password\", \"last_login\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (112, '2019-11-18 10:35:26.928625', '1', '偉  -  GW', 2, '[{\"changed\": {\"fields\": [\"site_description\"]}}]', 8, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (13, 'accounts', 'bloguser');
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (7, 'blog', 'article');
INSERT INTO `django_content_type` VALUES (8, 'blog', 'blogsettings');
INSERT INTO `django_content_type` VALUES (9, 'blog', 'category');
INSERT INTO `django_content_type` VALUES (10, 'blog', 'links');
INSERT INTO `django_content_type` VALUES (11, 'blog', 'sidebar');
INSERT INTO `django_content_type` VALUES (12, 'blog', 'tag');
INSERT INTO `django_content_type` VALUES (14, 'comments', 'comment');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (15, 'oauth', 'oauthconfig');
INSERT INTO `django_content_type` VALUES (16, 'oauth', 'oauthuser');
INSERT INTO `django_content_type` VALUES (19, 'owntracks', 'owntracklog');
INSERT INTO `django_content_type` VALUES (17, 'servermanager', 'commands');
INSERT INTO `django_content_type` VALUES (18, 'servermanager', 'emailsendlog');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (6, 'sites', 'site');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2019-04-10 19:52:20.224513');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2019-04-10 19:52:20.350338');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2019-04-10 19:52:20.709351');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2019-04-10 19:52:20.783988');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2019-04-10 19:52:20.797663');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2019-04-10 19:52:20.811213');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2019-04-10 19:52:20.827401');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2019-04-10 19:52:20.834536');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2019-04-10 19:52:20.847300');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2019-04-10 19:52:20.859381');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2019-04-10 19:52:20.873392');
INSERT INTO `django_migrations` VALUES (12, 'accounts', '0001_initial', '2019-04-10 19:52:21.258675');
INSERT INTO `django_migrations` VALUES (13, 'admin', '0001_initial', '2019-04-10 19:52:21.411082');
INSERT INTO `django_migrations` VALUES (14, 'admin', '0002_logentry_remove_auto_add', '2019-04-10 19:52:21.430443');
INSERT INTO `django_migrations` VALUES (15, 'admin', '0003_logentry_add_action_flag_choices', '2019-04-10 19:52:21.452873');
INSERT INTO `django_migrations` VALUES (16, 'blog', '0001_initial', '2019-04-10 19:52:22.014148');
INSERT INTO `django_migrations` VALUES (17, 'comments', '0001_initial', '2019-04-10 19:52:22.160351');
INSERT INTO `django_migrations` VALUES (18, 'oauth', '0001_initial', '2019-04-10 19:52:22.263627');
INSERT INTO `django_migrations` VALUES (19, 'owntracks', '0001_initial', '2019-04-10 19:52:22.292487');
INSERT INTO `django_migrations` VALUES (20, 'servermanager', '0001_initial', '2019-04-10 19:52:22.367373');
INSERT INTO `django_migrations` VALUES (21, 'sessions', '0001_initial', '2019-04-10 19:52:22.413804');
INSERT INTO `django_migrations` VALUES (22, 'sites', '0001_initial', '2019-04-10 19:52:22.442736');
INSERT INTO `django_migrations` VALUES (23, 'sites', '0002_alter_domain_unique', '2019-04-10 19:52:22.469255');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('0v21j3yd4prdb7emh33joniv7iiizvb0', 'YjhlZmM0NjJjZTdjOTJlNjU3YTA0MzgxMzA1NmI1OWRiZTY3ZWUwNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMudXNlcl9sb2dpbl9iYWNrZW5kLkVtYWlsT3JVc2VybmFtZU1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmMmExYTA2ZjI2NTgzZTRjNDhmZGNiZTgwNzE4ZTQ0MGE1MTdhYTEifQ==', '2019-04-27 02:08:50.626142');
INSERT INTO `django_session` VALUES ('2fw47np7742qdizt9bopvvccp45h7pgo', 'YjhlZmM0NjJjZTdjOTJlNjU3YTA0MzgxMzA1NmI1OWRiZTY3ZWUwNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMudXNlcl9sb2dpbl9iYWNrZW5kLkVtYWlsT3JVc2VybmFtZU1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmMmExYTA2ZjI2NTgzZTRjNDhmZGNiZTgwNzE4ZTQ0MGE1MTdhYTEifQ==', '2019-04-28 13:24:23.077888');
INSERT INTO `django_session` VALUES ('56xc10ww4cyk129voy7eihljlhvflbnv', 'M2IzMzA4NjkyODE2MzFjMTQyY2ZjNzE1ZGZkMWQ2NzMxYTgwMTAzZjp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMudXNlcl9sb2dpbl9iYWNrZW5kLkVtYWlsT3JVc2VybmFtZU1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjBmNjU2YjE0OWE4MTg4YTZiZTdmZmJmNzdiYzEwYjljMTM3YjI4NjAifQ==', '2019-04-27 02:01:03.665588');
INSERT INTO `django_session` VALUES ('5wrbiweuzfykjhe59r3x6qmpo403li4g', 'YjhlZmM0NjJjZTdjOTJlNjU3YTA0MzgxMzA1NmI1OWRiZTY3ZWUwNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMudXNlcl9sb2dpbl9iYWNrZW5kLkVtYWlsT3JVc2VybmFtZU1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmMmExYTA2ZjI2NTgzZTRjNDhmZGNiZTgwNzE4ZTQ0MGE1MTdhYTEifQ==', '2019-09-03 10:16:25.099760');
INSERT INTO `django_session` VALUES ('f0w16inj5ruuei6gsdfrhb4xcdpjgwcy', 'YjhlZmM0NjJjZTdjOTJlNjU3YTA0MzgxMzA1NmI1OWRiZTY3ZWUwNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMudXNlcl9sb2dpbl9iYWNrZW5kLkVtYWlsT3JVc2VybmFtZU1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmMmExYTA2ZjI2NTgzZTRjNDhmZGNiZTgwNzE4ZTQ0MGE1MTdhYTEifQ==', '2019-04-26 01:28:07.691415');
INSERT INTO `django_session` VALUES ('gez9ixdjtto5qg59f25mfoyxxqmnqx0g', 'YjhlZmM0NjJjZTdjOTJlNjU3YTA0MzgxMzA1NmI1OWRiZTY3ZWUwNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMudXNlcl9sb2dpbl9iYWNrZW5kLkVtYWlsT3JVc2VybmFtZU1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmMmExYTA2ZjI2NTgzZTRjNDhmZGNiZTgwNzE4ZTQ0MGE1MTdhYTEifQ==', '2019-05-20 18:06:24.781327');
INSERT INTO `django_session` VALUES ('rhxuo1bek4oro9bmm7tpsxqlktkhjvml', 'YjhlZmM0NjJjZTdjOTJlNjU3YTA0MzgxMzA1NmI1OWRiZTY3ZWUwNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMudXNlcl9sb2dpbl9iYWNrZW5kLkVtYWlsT3JVc2VybmFtZU1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmMmExYTA2ZjI2NTgzZTRjNDhmZGNiZTgwNzE4ZTQ0MGE1MTdhYTEifQ==', '2019-04-24 19:58:14.054676');
INSERT INTO `django_session` VALUES ('u0xcwfzgqa4lmtyyqb40y1d4af29t7ou', 'YjhlZmM0NjJjZTdjOTJlNjU3YTA0MzgxMzA1NmI1OWRiZTY3ZWUwNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMudXNlcl9sb2dpbl9iYWNrZW5kLkVtYWlsT3JVc2VybmFtZU1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmMmExYTA2ZjI2NTgzZTRjNDhmZGNiZTgwNzE4ZTQ0MGE1MTdhYTEifQ==', '2019-09-02 16:30:30.464611');
INSERT INTO `django_session` VALUES ('x1409r40efs3m98a68wy46tnlkq14kna', 'MGM0MGIxZmUzNTAyMDNjM2E5NTU0MDJhMjQ0ZmIxNjNkYzVhYWYyYzp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMudXNlcl9sb2dpbl9iYWNrZW5kLkVtYWlsT3JVc2VybmFtZU1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjE4MmZiOWI1ZjFlNTA4MTQ0MzhkM2JhYWQ1ODc5YzQxMWYwY2Q3NGIifQ==', '2019-12-05 04:14:24.019653');
INSERT INTO `django_session` VALUES ('zpad705obfu8gvtcp5pa5fbusm39al8p', 'YjhlZmM0NjJjZTdjOTJlNjU3YTA0MzgxMzA1NmI1OWRiZTY3ZWUwNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMudXNlcl9sb2dpbl9iYWNrZW5kLkVtYWlsT3JVc2VybmFtZU1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmMmExYTA2ZjI2NTgzZTRjNDhmZGNiZTgwNzE4ZTQ0MGE1MTdhYTEifQ==', '2019-04-25 21:43:38.883479');

-- ----------------------------
-- Table structure for django_site
-- ----------------------------
DROP TABLE IF EXISTS `django_site`;
CREATE TABLE `django_site`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_site_domain_a2e37b91_uniq`(`domain`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_site
-- ----------------------------
INSERT INTO `django_site` VALUES (1, 'gwcn.ga', 'gwcn.ga');

-- ----------------------------
-- Table structure for oauth_oauthconfig
-- ----------------------------
DROP TABLE IF EXISTS `oauth_oauthconfig`;
CREATE TABLE `oauth_oauthconfig`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `appkey` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `appsecret` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `callback_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_oauthconfig
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_oauthuser
-- ----------------------------
DROP TABLE IF EXISTS `oauth_oauthuser`;
CREATE TABLE `oauth_oauthuser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nikename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `picture` varchar(350) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `matedata` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `author_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_oauthuser_author_id_a975bef0_fk_accounts_bloguser_id`(`author_id`) USING BTREE,
  CONSTRAINT `oauth_oauthuser_author_id_a975bef0_fk_accounts_bloguser_id` FOREIGN KEY (`author_id`) REFERENCES `accounts_bloguser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_oauthuser
-- ----------------------------

-- ----------------------------
-- Table structure for owntracks_owntracklog
-- ----------------------------
DROP TABLE IF EXISTS `owntracks_owntracklog`;
CREATE TABLE `owntracks_owntracklog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `created_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of owntracks_owntracklog
-- ----------------------------

-- ----------------------------
-- Table structure for servermanager_commands
-- ----------------------------
DROP TABLE IF EXISTS `servermanager_commands`;
CREATE TABLE `servermanager_commands`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `command` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `describe` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of servermanager_commands
-- ----------------------------

-- ----------------------------
-- Table structure for servermanager_emailsendlog
-- ----------------------------
DROP TABLE IF EXISTS `servermanager_emailsendlog`;
CREATE TABLE `servermanager_emailsendlog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailto` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_result` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of servermanager_emailsendlog
-- ----------------------------
INSERT INTO `servermanager_emailsendlog` VALUES (1, 'gaoweichinese@gmail.com', '感谢您发表的评论', '\n                   <p>非常感谢您在本站发表评论</p>\n                   您可以访问\n                   <a href=\"https://example.com/article/2019/4/10/1.html\" rel=\"bookmark\">What\'s Python</a>\n                   来查看您的评论，\n                   再次感谢您！\n                   <br />\n                   如果上面链接无法打开，请将此链接复制至浏览器。\n                   https://example.com/article/2019/4/10/1.html\n                   ', 0, '2019-04-13 02:04:36.776970');
INSERT INTO `servermanager_emailsendlog` VALUES (2, 'g@gmail.com', '感谢您发表的评论', '\n                   <p>非常感谢您在本站发表评论</p>\n                   您可以访问\n                   <a href=\"https://example.com/article/2019/4/12/20.html\" rel=\"bookmark\">知足常乐</a>\n                   来查看您的评论，\n                   再次感谢您！\n                   <br />\n                   如果上面链接无法打开，请将此链接复制至浏览器。\n                   https://example.com/article/2019/4/12/20.html\n                   ', 0, '2019-08-20 10:13:06.686864');
INSERT INTO `servermanager_emailsendlog` VALUES (3, 't@tmail.com', '感谢您发表的评论', '\n                   <p>非常感谢您在本站发表评论</p>\n                   您可以访问\n                   <a href=\"https://gwcn.ga/article/2019/4/12/20.html\" rel=\"bookmark\">知足常乐</a>\n                   来查看您的评论，\n                   再次感谢您！\n                   <br />\n                   如果上面链接无法打开，请将此链接复制至浏览器。\n                   https://gwcn.ga/article/2019/4/12/20.html\n                   ', 0, '2019-11-21 04:14:54.121920');

SET FOREIGN_KEY_CHECKS = 1;
