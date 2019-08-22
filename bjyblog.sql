/*
 Navicat Premium Data Transfer

 Source Server         : mypj
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : bjyblog

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 22/08/2019 16:25:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bjy_article_tags
-- ----------------------------
DROP TABLE IF EXISTS `bjy_article_tags`;
CREATE TABLE `bjy_article_tags`  (
  `article_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章id',
  `tag_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '标签id',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of bjy_article_tags
-- ----------------------------
INSERT INTO `bjy_article_tags` VALUES (1, 1, '2017-07-18 07:35:12', '2019-08-22 14:28:39', '2019-08-22 14:28:39');
INSERT INTO `bjy_article_tags` VALUES (2, 7, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (3, 10, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (4, 13, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (4, 6, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (4, 1, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (5, 4, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (5, 12, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (6, 4, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (6, 12, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (8, 6, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (7, 7, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (8, 10, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (9, 6, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (9, 0, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (9, 0, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (10, 6, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (11, 6, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (12, 6, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (13, 6, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (14, 6, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (15, 6, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (16, 1, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (16, 6, NULL, NULL, NULL);
INSERT INTO `bjy_article_tags` VALUES (17, 6, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for bjy_articles
-- ----------------------------
DROP TABLE IF EXISTS `bjy_articles`;
CREATE TABLE `bjy_articles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章表主键',
  `category_id` tinyint(1) NOT NULL DEFAULT 0 COMMENT '分类id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'slug',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '作者',
  `markdown` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'markdown文章内容',
  `html` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'markdown转的html页面',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '关键词',
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '封面图',
  `is_top` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否置顶 1是 0否',
  `click` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击数',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bjy_articles
-- ----------------------------
INSERT INTO `bjy_articles` VALUES (1, 1, '写给 thinkphp 开发者的 laravel 系列教程 (一) 序言', 'laravel-series-tutorial-for-thinkphp-developers-1-preface', '白俊遥', '终于；终于；终于；\r\n开始正式写 laravel 系列了；\r\n本系列教程主要面向的是多少懂点 thinkphp3.X 的开发者们；\r\n我把我从tp3转到laravel的历程转成一篇篇的文章教程；\r\n愿这一系列的文章；\r\n能成为童鞋们踏入laravel的引路人；\r\n\r\n如果还没下定决定要使用laravel；\r\n那么我上来就是一个连接；\r\n[关于 thinkphp 和 laravel 框架的选择](http://baijunyao.com/article/109)\r\n不是别人说好我也跟着说好的；\r\n而是我实实在在的使用过后；\r\n不断的发现 laravel 的优雅；\r\n真心喜欢；才这么推荐的；\r\n\r\n另外学习使用 laravel 不同于 thinkphp；\r\nthinkphp 的问题；百度一下基本都能解决；\r\nlaravel 一定要有一把梯子来翻墙；\r\ngoogle是必不可少的；\r\n现在体会不到没关系；\r\n咱边学边感受；\r\n最近一段时间大批的vpn被关停了；\r\n这里我推荐一款依然坚挺的；\r\n我一直在用的；\r\n也比较喜欢的`免费`翻墙软件；\r\n[推荐开发工具系列之 -- 翻墙软件 lantern](http://baijunyao.com/article/107)\r\n\r\n最后给童鞋们推荐比较不错的国内的laravel网站；\r\n[Laravel China 社区](https://laravel-china.org/)\r\n[Laravel 学院](http://laravelacademy.org/)\r\n[laravel速查表](https://cs.laravel-china.org/)\r\n\r\n种一棵树最好的时间是十年前；其次是现在；\r\n让我们开始吧；\r\n![laravel](/uploads/article/5958ab4dd9db4.jpg \"laravel\")', '<p>终于；终于；终于；<br>开始正式写 laravel 系列了；<br>本系列教程主要面向的是多少懂点 thinkphp3.X 的开发者们；<br>我把我从tp3转到laravel的历程转成一篇篇的文章教程；<br>愿这一系列的文章；<br>能成为童鞋们踏入laravel的引路人；</p><p>如果还没下定决定要使用laravel；<br>那么我上来就是一个连接；<br><a href=\"http://baijunyao.com/article/109\">关于 thinkphp 和 laravel 框架的选择</a><br>不是别人说好我也跟着说好的；<br>而是我实实在在的使用过后；<br>不断的发现 laravel 的优雅；<br>真心喜欢；才这么推荐的；</p><p>另外学习使用 laravel 不同于 thinkphp；<br>thinkphp 的问题；百度一下基本都能解决；<br>laravel 一定要有一把梯子来翻墙；<br>google是必不可少的；<br>现在体会不到没关系；<br>咱边学边感受；<br>最近一段时间大批的vpn被关停了；<br>这里我推荐一款依然坚挺的；<br>我一直在用的；<br>也比较喜欢的<code>免费</code>翻墙软件；<br><a href=\"http://baijunyao.com/article/107\">推荐开发工具系列之 -- 翻墙软件 lantern</a></p><p>最后给童鞋们推荐比较不错的国内的laravel网站；<br><a href=\"https://laravel-china.org/\">Laravel China 社区</a><br><a href=\"http://laravelacademy.org/\">Laravel 学院</a><br><a href=\"https://cs.laravel-china.org/\">laravel速查表</a></p><p>种一棵树最好的时间是十年前；其次是现在；<br>让我们开始吧；<br><img src=\"/uploads/article/5958ab4dd9db4.jpg\" alt=\"laravel\" title=\"laravel\"></p>', '终于；终于；终于；\r\n开始正式写 laravel 系列了；\r\n本系列教程主要面向的是多少懂点 thinkphp3.X 的开发者们；\r\n我把我从tp3转到laravel的历程转成一篇篇的文章教程；\r\n愿这一系列的文章；\r\n能成为童鞋们踏入laravel的引路人；\r\n\r\n如果还没下定决定要使用laravel；\r\n那么我上来就是一个连接；\r\n\r\n不是别人说好我也跟着说好的；\r\n而是我实实在在的使用过后；...', 'laravel,thinkphp, 教程', '/uploads/article/5958ab4dd9db4.jpg', 1, 670, '2017-07-16 07:35:12', '2019-08-22 14:28:39', '2019-08-22 14:28:39');
INSERT INTO `bjy_articles` VALUES (2, 7, '小程序文本溢出显示省略号（单行/多行）', 'Applet text overflow display ellipsis (single line/multiple lines)', '邓荣光', '**1. 单行：外部容器应加overflow: hidden;否则不显示省略**\r\n```css\r\n.text {\r\n    overflow: hidden;\r\n    white-space: nowrap;\r\n    text-overflow: ellipsis; \r\n}\r\n```\r\n**2. 多行**\r\n```css\r\n.text {\r\n	overflow: hidden;\r\n	text-overflow: ellipsis;\r\n	display: -webkit-box;\r\n	word-break: break-all;\r\n	-webkit-box-orient: vertical;\r\n	-webkit-line-clamp: 2; \r\n}\r\n\r\n```', '<p><strong>1. 单行：外部容器应加overflow: hidden;否则不显示省略</strong></p>\n<pre><code class=\"language-css\">.text {\n    overflow: hidden;\n    white-space: nowrap;\n    text-overflow: ellipsis; \n}\n</code></pre>\n<p><strong>2. 多行</strong></p>\n<pre><code class=\"language-css\">.text {\n	overflow: hidden;\n	text-overflow: ellipsis;\n	display: -webkit-box;\n	word-break: break-all;\n	-webkit-box-orient: vertical;\n	-webkit-line-clamp: 2; \n}\n\n</code></pre>\n', '小程序文本溢出显示省略号（单行/多行）', '小程序 微信小程序', '/uploads/article/20190822/5d5e352b9448d.jpg', 0, 228, '2019-01-04 16:35:12', '2019-08-22 14:57:57', NULL);
INSERT INTO `bjy_articles` VALUES (3, 2, '随机获取Mysql数据表的一条或多条记录', 'randomly-get-one-or-more-records-of-the-mysql-data-table', '邓荣光', '```sql\r\nSELECT * FROM users WHERE userId >= ((SELECT MAX(userId) FROM users)-(SELECT MIN(userId) FROM users)) * RAND() + (SELECT MIN(userId) FROM users) LIMIT 1\r\n\r\n```\r\n执行该sql语句，用时0.039s，效率太给力了！接着我就把”LIMIT 1“改为了”LIMIT 10000“，用时0.063s。经过多次验证，结果肯定是随机的！\r\n结论：随机取一条或多条记录，方法都不错！', '<pre><code class=\"language-sql\">SELECT * FROM users WHERE userId &gt;= ((SELECT MAX(userId) FROM users)-(SELECT MIN(userId) FROM users)) * RAND() + (SELECT MIN(userId) FROM users) LIMIT 1\n\n</code></pre>\n<p>执行该sql语句，用时0.039s，效率太给力了！接着我就把”LIMIT 1“改为了”LIMIT 10000“，用时0.063s。经过多次验证，结果肯定是随机的！\n结论：随机取一条或多条记录，方法都不错！</p>\n', '随机获取Mysql数据表的一条或多条记录```sqlSELECT  FROM users WHERE userId = ((SELECT MAX(userId) FROM users)(SELECT MIN(userId) FROM users))  RAND() + (SELECT MIN(userId) FROM users) LIMIT 1```执行该sql语句，用时0.039s，效率太给力了！接着我就把”LIMIT 1“改为了”LIMIT 10000“，用时0.063s。经过', 'php mysql 随机', '/uploads/article/default.jpg', 0, 1, '2019-08-22 15:17:05', '2019-08-22 15:50:26', NULL);
INSERT INTO `bjy_articles` VALUES (5, 4, 'css文字上下居中，一行文字居中，两行或多行文字同样居中', 'the-css-text-is-centered-up-and-down-one-line-of-text-is-centered-and-two-or-more-lines-of-text-are-also-centered', '邓荣光', '#### 利用 Flex布局 来实现\r\nhtml\r\n```html\r\n<div id=\"box\">\r\n   <span>两个黄鹂鸣翠柳</span>\r\n</div>\r\n```\r\ncss\r\n```css\r\n#box {\r\n	width: 200px;\r\n	height: 120px;\r\n	border: 1px solid red;\r\n	/*text-align: center;*/\r\n	display: flex;\r\n	align-items: center;\r\n	justify-content: center;\r\n}\r\n```', '<h4>利用 Flex布局 来实现</h4>\n<p>html</p>\n<pre><code class=\"language-html\">&lt;div id=&quot;box&quot;&gt;\n   &lt;span&gt;两个黄鹂鸣翠柳&lt;/span&gt;\n&lt;/div&gt;\n</code></pre>\n<p>css</p>\n<pre><code class=\"language-css\">#box {\n	width: 200px;\n	height: 120px;\n	border: 1px solid red;\n	/*text-align: center;*/\n	display: flex;\n	align-items: center;\n	justify-content: center;\n}\n</code></pre>\n', ' 利用 Flex布局 来实现\r\nhtml\r\n```html\r\n<div id=\"box\"\r\n   <span两个黄鹂鸣翠柳</span\r\n</div\r\n```\r\ncss\r\n```css\r\nbox {\r\n	width: 200px;\r\n	height: 120px;\r\n	border: 1px solid red;\r\n	/textalign: center;/\r\n	display: flex;\r\n	alignitems: center;\r\n	justifycontent: center;\r\n}\r\n```', 'CSS', '/uploads/article/default.jpg', 0, 0, '2019-08-22 15:25:58', '2019-08-22 15:25:58', NULL);
INSERT INTO `bjy_articles` VALUES (4, 1, 'laravel 5.5 项目部署到虚拟主机', 'laravel-55-project-deployed-to-virtual-host', '邓荣光', '-------------------序言\r\n\r\n心有猛虎 细嗅蔷薇\r\n- **第一步**\r\n- 首先要把laravel 项目FTP 上传到虚拟机上\r\n- **第二步**\r\n- 把根目录下的 server.php 重命名为 index.php\r\n- **第三步**\r\n- 修改.env文件的数据库配置等\r\n- **第四步**\r\n- 修改config文件夹下 的 app.php 中的 Encryption Key 下的配置 改为\r\n```php\r\n\'key\' => env(\'APP_KEY\', \'1234567890qwerty\'),\r\n\'cipher\' => \'AES-128-CBC\',\r\n```\r\n因为虚拟机不支持’AES-256-CBC’所以用128位加密，256位加密使用32位字符串，128位使用16位字符串，需要查看错误的话\r\n就把debug打开\r\n- **第五步**\r\n我在.env文件改了 好像没起作用 索性就去 config 文件夹下的database.php 文件中修改 数据库地址就是\r\n虚拟机里面数据库的地址 照着数据库填就ok，然后修改项目根目录的.env文件名为.env_bak或者删除.env文件\r\n- **第六步**\r\n由于访问的时候入口文件在public目录下面，这时候访问url会变成url/public/，重写规则跳转就行了,在根目录新建.htaccess文件，写入一下内容\r\n```php\r\n<IfModule mod_rewrite.c>\r\nRewriteEngine on\r\nRewriteCond %{REQUEST_URI} !^public\r\nRewriteRule ^(.*)$ public/$1 [L]\r\n</IfModule>\r\n```\r\n- **第七步**\r\n到这一步基本就没有什么问题了，但是在使用ajax的时候，post方法有可能会被301跳转然后变成get 所以就需要\r\n打开public目录下的.htaccess文件删除下面这一段：\r\n```php\r\n# Redirect Trailing Slashes If Not A Folder...\r\nRewriteCond %{REQUEST_FILENAME} !-d\r\nRewriteRule ^(.*)/$ /$1 [L,R=301]\r\n```\r\n- 补充一个问题\r\n- config/database.php 里面 因为DMS 数据库版本是	mysql 5.1.73\r\n\'charset\' => \'utf8\', \'collation\' => \'utf8_unicode_ci\',\r\n- 在DMS数据库 导入的时候 编码 要是 utf-8 哦 不然 前台页面 乱码', '<p>-------------------序言</p>\n<p>心有猛虎 细嗅蔷薇</p>\n<ul>\n<li>\n<strong>第一步</strong>\n</li>\n<li>首先要把laravel 项目FTP 上传到虚拟机上</li>\n<li>\n<strong>第二步</strong>\n</li>\n<li>把根目录下的 server.php 重命名为 index.php</li>\n<li>\n<strong>第三步</strong>\n</li>\n<li>修改.env文件的数据库配置等</li>\n<li>\n<strong>第四步</strong>\n</li>\n<li>修改config文件夹下 的 app.php 中的 Encryption Key 下的配置 改为</li>\n</ul>\n<pre><code class=\"language-php\">\'key\' =&gt; env(\'APP_KEY\', \'1234567890qwerty\'),\n\'cipher\' =&gt; \'AES-128-CBC\',\n</code></pre>\n<p>因为虚拟机不支持’AES-256-CBC’所以用128位加密，256位加密使用32位字符串，128位使用16位字符串，需要查看错误的话\n就把debug打开</p>\n<ul>\n<li>\n<strong>第五步</strong>\n我在.env文件改了 好像没起作用 索性就去 config 文件夹下的database.php 文件中修改 数据库地址就是\n虚拟机里面数据库的地址 照着数据库填就ok，然后修改项目根目录的.env文件名为.env_bak或者删除.env文件</li>\n<li>\n<strong>第六步</strong>\n由于访问的时候入口文件在public目录下面，这时候访问url会变成url/public/，重写规则跳转就行了,在根目录新建.htaccess文件，写入一下内容</li>\n</ul>\n<pre><code class=\"language-php\">&lt;IfModule mod_rewrite.c&gt;\nRewriteEngine on\nRewriteCond %{REQUEST_URI} !^public\nRewriteRule ^(.*)$ public/$1 [L]\n&lt;/IfModule&gt;\n</code></pre>\n<ul>\n<li>\n<strong>第七步</strong>\n到这一步基本就没有什么问题了，但是在使用ajax的时候，post方法有可能会被301跳转然后变成get 所以就需要\n打开public目录下的.htaccess文件删除下面这一段：</li>\n</ul>\n<pre><code class=\"language-php\"># Redirect Trailing Slashes If Not A Folder...\nRewriteCond %{REQUEST_FILENAME} !-d\nRewriteRule ^(.*)/$ /$1 [L,R=301]\n</code></pre>\n<ul>\n<li>补充一个问题</li>\n<li>config/database.php 里面 因为DMS 数据库版本是	mysql 5.1.73\n\'charset\' =&gt; \'utf8\', \'collation\' =&gt; \'utf8_unicode_ci\',</li>\n<li>在DMS数据库 导入的时候 编码 要是 utf-8 哦 不然 前台页面 乱码</li>\n</ul>\n', 'laravel 5.5 项目部署到虚拟主机序言心有猛虎 细嗅蔷薇 第一步 首先要把laravel 项目FTP 上传到虚拟机上 第二步 把根目录下的 server.php 重命名为 index.php 第三步 修改.env文件的数据库配置等 第四步 修改config文件夹下 的 app.php 中的 Encryption Key 下的配置 改为```php\'key\' = env(\'APP_KEY\', \'1234567890qwerty\'),\'ciph', 'laravel', '/uploads/article/default.jpg', 0, 2, '2019-08-22 15:21:17', '2019-08-22 15:21:57', NULL);
INSERT INTO `bjy_articles` VALUES (6, 4, 'CSS3自定义滚动条样式 -webkit-scrollbar', 'css3-custom-scrollbar-style-webkit-scrollbar', '邓荣光', '当内容超出容器时，容器会出现滚动条，其自带的滚动条有时无法满足我们审美要求，那么我们可以通过css伪类来实现对滚动条的自定义。\r\n\r\n首先我们要了解滚动条。滚动条从外观来看是由两部分组成：1，可以滑动的部分，我们叫它滑块2，滚动条的轨道，即滑块的轨道，一般来说滑块的颜色比轨道的颜色深。\r\n\r\n滚动条的css样式主要有三部分组成：\r\n\r\n1、::-webkit-scrollbar 定义了滚动条整体的样式；\r\n\r\n2、::-webkit-scrollbar-thumb 滑块部分；\r\n\r\n3、::-webkit-scrollbar-thumb 轨道部分；\r\n\r\n下面以overflow-y:auto;为例（overflow-x:auto同）\r\n\r\nhtml代码：\r\n```html\r\n<div class=\"test test-1\">\r\n        <div class=\"scrollbar\"></div>\r\n</div>\r\n```\r\ncss代码：\r\n```css\r\n.test{\r\n    width: 50px;\r\n    height: 200px;\r\n    overflow: auto;\r\n    float: left;\r\n    margin: 5px;\r\n    border: none;\r\n}\r\n.scrollbar{\r\n    width: 30px;\r\n    height: 300px;\r\n    margin: 0 auto;\r\n \r\n}\r\n\r\n.test-1::-webkit-scrollbar {/*滚动条整体样式*/\r\n	width: 5rpx;     /*高宽分别对应横竖滚动条的尺寸*/\r\n	height: 1rpx;\r\n}\r\n.test-1::-webkit-scrollbar-thumb {/*滚动条里面小方块*/\r\n	border-radius: 10px;\r\n	-webkit-box-shadow: inset 0 0 5px rgba(219, 133, 133, 0.2);\r\n	background: #cab3b3;\r\n}\r\n.test-1::-webkit-scrollbar-track {/*滚动条里面轨道*/\r\n	-webkit-box-shadow: inset 0 0 5px rgba(0,0,0,0.2);\r\n	border-radius: 10px;\r\n	background: #EDEDED;\r\n}\r\n```\r\n效果如下如：\r\n![](/uploads/article/20190822/5d5e44036a8e9.png)\r\n如果要改变滚动条的宽度：在::-webkit-scrollbar中改变即可；如果要改变滚动条滑块的圆角，在::-webkit-scrollbar-thumb 中改变；如果要改轨道的圆角在::-webkit-scrollbar-track中改变；\r\n\r\n此外，滚动条的滑块不仅可以填充颜色还可以填充图片如下：\r\n\r\ncss代码：\r\n```css\r\n.test-5::-webkit-scrollbar {/*滚动条整体样式*/\r\n    width: 10px;     /*高宽分别对应横竖滚动条的尺寸*/\r\n    height: 1px;\r\n}\r\n.test-5::-webkit-scrollbar-thumb {/*滚动条里面小方块*/\r\n	border-radius: 10px;\r\n	background-color: #F90;\r\n	background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .2) 25%, 	transparent 25%, transparent 50%, rgba(255, 255, 255, .2) 50%, rgba(255, 255, 255, .2) 75%, transparent 75%, transparent);\r\n    }\r\n.test-5::-webkit-scrollbar-track {/*滚动条里面轨道*/\r\n    -webkit-box-shadow: inset 0 0 5px rgba(0,0,0,0.2);\r\n    /*border-radius: 10px;*/\r\n    background: #EDEDED;\r\n}\r\n\r\n```\r\nhtml代码：\r\n```html\r\n<div class=\"test test-5\">\r\n    <div class=\"scrollbar\"></div>\r\n</div>\r\n```\r\n![](/uploads/article/20190822/5d5e4456c936b.png)\r\n以上就可以做出自己喜欢的滚动条了；\r\n\r\n如果文档中会有多个滚动条出现，而且希望所有的滚动条样式是一样的，那么伪元素前面不需要加上class、id、标签名等之类的任何东西。', '<p>当内容超出容器时，容器会出现滚动条，其自带的滚动条有时无法满足我们审美要求，那么我们可以通过css伪类来实现对滚动条的自定义。</p>\n<p>首先我们要了解滚动条。滚动条从外观来看是由两部分组成：1，可以滑动的部分，我们叫它滑块2，滚动条的轨道，即滑块的轨道，一般来说滑块的颜色比轨道的颜色深。</p>\n<p>滚动条的css样式主要有三部分组成：</p>\n<p>1、::-webkit-scrollbar 定义了滚动条整体的样式；</p>\n<p>2、::-webkit-scrollbar-thumb 滑块部分；</p>\n<p>3、::-webkit-scrollbar-thumb 轨道部分；</p>\n<p>下面以overflow-y:auto;为例（overflow-x:auto同）</p>\n<p>html代码：</p>\n<pre><code class=\"language-html\">&lt;div class=&quot;test test-1&quot;&gt;\n        &lt;div class=&quot;scrollbar&quot;&gt;&lt;/div&gt;\n&lt;/div&gt;\n</code></pre>\n<p>css代码：</p>\n<pre><code class=\"language-css\">.test{\n    width: 50px;\n    height: 200px;\n    overflow: auto;\n    float: left;\n    margin: 5px;\n    border: none;\n}\n.scrollbar{\n    width: 30px;\n    height: 300px;\n    margin: 0 auto;\n \n}\n\n.test-1::-webkit-scrollbar {/*滚动条整体样式*/\n	width: 5rpx;     /*高宽分别对应横竖滚动条的尺寸*/\n	height: 1rpx;\n}\n.test-1::-webkit-scrollbar-thumb {/*滚动条里面小方块*/\n	border-radius: 10px;\n	-webkit-box-shadow: inset 0 0 5px rgba(219, 133, 133, 0.2);\n	background: #cab3b3;\n}\n.test-1::-webkit-scrollbar-track {/*滚动条里面轨道*/\n	-webkit-box-shadow: inset 0 0 5px rgba(0,0,0,0.2);\n	border-radius: 10px;\n	background: #EDEDED;\n}\n</code></pre>\n<p>效果如下如：\n<img src=\"/uploads/article/20190822/5d5e44036a8e9.png\" alt=\"\" />\n如果要改变滚动条的宽度：在::-webkit-scrollbar中改变即可；如果要改变滚动条滑块的圆角，在::-webkit-scrollbar-thumb 中改变；如果要改轨道的圆角在::-webkit-scrollbar-track中改变；</p>\n<p>此外，滚动条的滑块不仅可以填充颜色还可以填充图片如下：</p>\n<p>css代码：</p>\n<pre><code class=\"language-css\">.test-5::-webkit-scrollbar {/*滚动条整体样式*/\n    width: 10px;     /*高宽分别对应横竖滚动条的尺寸*/\n    height: 1px;\n}\n.test-5::-webkit-scrollbar-thumb {/*滚动条里面小方块*/\n	border-radius: 10px;\n	background-color: #F90;\n	background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, .2) 25%, 	transparent 25%, transparent 50%, rgba(255, 255, 255, .2) 50%, rgba(255, 255, 255, .2) 75%, transparent 75%, transparent);\n    }\n.test-5::-webkit-scrollbar-track {/*滚动条里面轨道*/\n    -webkit-box-shadow: inset 0 0 5px rgba(0,0,0,0.2);\n    /*border-radius: 10px;*/\n    background: #EDEDED;\n}\n\n</code></pre>\n<p>html代码：</p>\n<pre><code class=\"language-html\">&lt;div class=&quot;test test-5&quot;&gt;\n    &lt;div class=&quot;scrollbar&quot;&gt;&lt;/div&gt;\n&lt;/div&gt;\n</code></pre>\n<p><img src=\"/uploads/article/20190822/5d5e4456c936b.png\" alt=\"\" />\n以上就可以做出自己喜欢的滚动条了；</p>\n<p>如果文档中会有多个滚动条出现，而且希望所有的滚动条样式是一样的，那么伪元素前面不需要加上class、id、标签名等之类的任何东西。</p>\n', '当内容超出容器时，容器会出现滚动条，其自带的滚动条有时无法满足我们审美要求，那么我们可以通过css伪类来实现对滚动条的自定义。\r\n\r\n首先我们要了解滚动条。滚动条从外观来看是由两部分组成：1，可以滑动的部分，我们叫它滑块2，滚动条的轨道，即滑块的轨道，一般来说滑块的颜色比轨道的颜色深。\r\n\r\n滚动条的css样式主要有三部分组成：\r\n\r\n1、::webkitscrollbar 定义了滚动条整体的样式；\r\n\r\n2、::webkitscrollbarthumb 滑块部分；\r\n\r\n3、::webkitscroll', 'CSS', '/uploads/article/20190822/5d5e44036a8e9.png', 0, 1, '2019-08-22 15:29:41', '2019-08-22 15:29:50', NULL);
INSERT INTO `bjy_articles` VALUES (7, 7, 'mpvue样式绑定总结', 'mpvue-style-binding-summary', '转载', '[https://blog.csdn.net/mate_ge/article/details/81181935](https://blog.csdn.net/mate_ge/article/details/81181935 \"https://blog.csdn.net/mate_ge/article/details/81181935\")\r\n\r\n做个跳转', '<p><a href=\"https://blog.csdn.net/mate_ge/article/details/81181935\" title=\"https://blog.csdn.net/mate_ge/article/details/81181935\">https://blog.csdn.net/mate_ge/article/details/81181935</a></p>\n<p>做个跳转</p>\n', 'https://blog.csdn.net/mate_ge/article/details/81181935做个跳转', '小程序', '/uploads/article/20190822/5d5e460dde277.jpg', 0, 2, '2019-08-22 15:35:19', '2019-08-22 15:36:49', NULL);
INSERT INTO `bjy_articles` VALUES (8, 2, 'MySQL修改默认地址问题', 'mysql-modify-the-default-address-problem', '邓荣光', '比如地址信息表 default 字段 1 表示默认地址 0 表示非默认\r\n有没有 1 条语句可以把要修改的地址 default 字段设为 1 同时该用户的其他地址信息 default 字段设为 0\r\n\r\n可以这样：\r\n```sql\r\nupdate your_table set is_default = (case when id = 3 then 1 else 0 end)\r\n```\r\nid=xx 设置为你想要设为 1 的 ID', '<p>比如地址信息表 default 字段 1 表示默认地址 0 表示非默认\n有没有 1 条语句可以把要修改的地址 default 字段设为 1 同时该用户的其他地址信息 default 字段设为 0</p>\n<p>可以这样：</p>\n<pre><code class=\"language-sql\">update your_table set is_default = (case when id = 3 then 1 else 0 end)\n</code></pre>\n<p>id=xx 设置为你想要设为 1 的 ID</p>\n', '比如地址信息表 default 字段 1 表示默认地址 0 表示非默认\r\n有没有 1 条语句可以把要修改的地址 default 字段设为 1 同时该用户的其他地址信息 default 字段设为 0\r\n\r\n可以这样：\r\n```sql\r\nupdate your_table set is_default = (case when id = 3 then 1 else 0 end)\r\n```\r\nid=xx 设置为你想要设为 1 的 ID', 'MySQL', '/uploads/article/default.jpg', 0, 0, '2019-08-22 15:39:18', '2019-08-22 15:39:18', NULL);
INSERT INTO `bjy_articles` VALUES (9, 1, '自用的一个PHP API JSON输出函数', 'a-php-api-json-output-function-for-your-own-use', '邓荣光', '```php\r\n	/**\r\n	* API JOSN输出函数\r\n	* @param string  $info 消息\r\n	* @param integer $code 接口错误码，很关键的参数\r\n	* @param array   $data 附加数据\r\n	* @param string  $location 重定向\r\n	* @return array\r\n	*/\r\n	public static function var_json($info = \'\', $code = 500, $data = array(), $location = \'\') {\r\n	    $out[\'code\'] = $code ?: 0;\r\n	    $out[\'info\'] = $info ?: ($out[\'code\'] ? \'error\' : \'success\');\r\n	    $out[\'data\'] = $data ?: array();\r\n	    $out[\'location\'] = $location;\r\n	    header(\'Content-Type: application/json; charset=utf-8\');\r\n	    echo json_encode($out, JSON_HEX_TAG);\r\n	    return;\r\n	}\r\n```', '<pre><code class=\"language-php\">	/**\n	* API JOSN输出函数\n	* @param string  $info 消息\n	* @param integer $code 接口错误码，很关键的参数\n	* @param array   $data 附加数据\n	* @param string  $location 重定向\n	* @return array\n	*/\n	public static function var_json($info = \'\', $code = 500, $data = array(), $location = \'\') {\n	    $out[\'code\'] = $code ?: 0;\n	    $out[\'info\'] = $info ?: ($out[\'code\'] ? \'error\' : \'success\');\n	    $out[\'data\'] = $data ?: array();\n	    $out[\'location\'] = $location;\n	    header(\'Content-Type: application/json; charset=utf-8\');\n	    echo json_encode($out, JSON_HEX_TAG);\n	    return;\n	}\n</code></pre>\n', '```php\r\n	/\r\n	 API JOSN输出函数\r\n	 @param string  $info 消息\r\n	 @param integer $code 接口错误码，很关键的参数\r\n	 @param array   $data 附加数据\r\n	 @param string  $location 重定向\r\n	 @return array\r\n	/\r\n	public static function var_json($info = \'\', $code = 500, $data = array(), $locat', 'php,api,json', '/uploads/article/default.jpg', 0, 0, '2019-08-22 15:41:04', '2019-08-22 15:41:04', NULL);
INSERT INTO `bjy_articles` VALUES (10, 7, '巧用array_map()和array_reduce()替代foreach循环', 'use-array-map-and-array-reduce-instead-of-foreach-loop', '邓荣光', '工作中经常会用到foreach 遍历数据，但是PHP有两个内置函数可以实现foreach很难实现的功能\r\n\r\n1、array_reduce( $arr , callable $callback ) 使用回调函数迭代地将数组简化为单一的值。\r\n\r\n其中arr为输入数组， arr 为输入数组，arr为输入数组，callback($result , value)接受两个参数, value)接受两个参数,value)接受两个参数,result为上一次迭代产生的值，$value是当前迭代的值。\r\n\r\n使用array_reduce()替代foreach()循环最常用的一个业务场景也许就是数组求和，比如:\r\n```php\r\n$arr = array(\'1\',\'2\',\'3\'); //计算数组中数字的和\r\n$sum = 0;\r\nforeach($arr as $v){  //使用 foreach循环计算\r\n  $sum  += $v;// echo $sum\r\n}\r\necho array_reduce($arr , function($result , $v){ //使用array_reduce()迭代求和\r\n  Return $result+$v;\r\n});\r\n```\r\n再比如，从数据库中查询出一组数据，接下来想得到他们的 id 值，拼接成类似 (1,2,3,4,5) 字符串，然后在 “SELECT * WHERE id in(1,2,3,4,5) ” 处理，这时候完全可以 foreach() 数组处理，其实也可以使用 array_reduce()，因为 array_reduce()就是“迭代地将数组简化为单一的值”，如下\r\n```php\r\n$arr = array(\r\n  array(\"id\"=>1,\'name\'=>\"a\"),\r\n  array(\"id\"=>2,\"name\"=>\"c\"),\r\n  array(\"id\"=>3,\"name\"=>\"d\")\r\n     );\r\necho array_reduce($arr , function($result , $v){\r\n	Return $result.\',\'.$v[\'id\'];\r\n});\r\n```\r\n在业务中遇到foreach循环处理，有时候我们就可以想想能不能像这样处理。\r\n\r\n2、array_map(callback $callback , $arr) 返回用户自定义函数作用后的数组。回调函数接受的参数数目应该和传递给 array_map() 函数的数组数目一致。\r\n\r\n向array_map传入数组，出来的还是数组，而不是上面array_reduce()的一个值。所以，array_map()最简单的就是把callback函数作用到每个数组的值上，最常见的场景就是 intval()、trim() 数组中的值，在一些框架的源码中也经常见到，比如：\r\n```php\r\n$arr = array(\'2\',\'3\',\'4\',\'5\');\r\n\r\narray_map(\'intval\' , $arr);//在拼接sql查询的时候，很有用\r\n\r\narray_map(\'htmlspecialchars\' , $arr);\r\n```\r\n虽然有时候foreach完全可以达到相同的效果，但是在代码中使用 array_map、array_reduce还有array_filter之类的函数，可以让代码更加的简洁，而不是一个php文件到处都是foreach循环。 “这并非炫耀什么奇技淫巧，这只是PHP自己的正常的方式而已” 。', '<p>工作中经常会用到foreach 遍历数据，但是PHP有两个内置函数可以实现foreach很难实现的功能</p>\n<p>1、array_reduce( $arr , callable $callback ) 使用回调函数迭代地将数组简化为单一的值。</p>\n<p>其中arr为输入数组， arr 为输入数组，arr为输入数组，callback($result , value)接受两个参数, value)接受两个参数,value)接受两个参数,result为上一次迭代产生的值，$value是当前迭代的值。</p>\n<p>使用array_reduce()替代foreach()循环最常用的一个业务场景也许就是数组求和，比如:</p>\n<pre><code class=\"language-php\">$arr = array(\'1\',\'2\',\'3\'); //计算数组中数字的和\n$sum = 0;\nforeach($arr as $v){  //使用 foreach循环计算\n  $sum  += $v;// echo $sum\n}\necho array_reduce($arr , function($result , $v){ //使用array_reduce()迭代求和\n  Return $result+$v;\n});\n</code></pre>\n<p>再比如，从数据库中查询出一组数据，接下来想得到他们的 id 值，拼接成类似 (1,2,3,4,5) 字符串，然后在 “SELECT * WHERE id in(1,2,3,4,5) ” 处理，这时候完全可以 foreach() 数组处理，其实也可以使用 array_reduce()，因为 array_reduce()就是“迭代地将数组简化为单一的值”，如下</p>\n<pre><code class=\"language-php\">$arr = array(\n  array(&quot;id&quot;=&gt;1,\'name\'=&gt;&quot;a&quot;),\n  array(&quot;id&quot;=&gt;2,&quot;name&quot;=&gt;&quot;c&quot;),\n  array(&quot;id&quot;=&gt;3,&quot;name&quot;=&gt;&quot;d&quot;)\n     );\necho array_reduce($arr , function($result , $v){\n	Return $result.\',\'.$v[\'id\'];\n});\n</code></pre>\n<p>在业务中遇到foreach循环处理，有时候我们就可以想想能不能像这样处理。</p>\n<p>2、array_map(callback $callback , $arr) 返回用户自定义函数作用后的数组。回调函数接受的参数数目应该和传递给 array_map() 函数的数组数目一致。</p>\n<p>向array_map传入数组，出来的还是数组，而不是上面array_reduce()的一个值。所以，array_map()最简单的就是把callback函数作用到每个数组的值上，最常见的场景就是 intval()、trim() 数组中的值，在一些框架的源码中也经常见到，比如：</p>\n<pre><code class=\"language-php\">$arr = array(\'2\',\'3\',\'4\',\'5\');\n\narray_map(\'intval\' , $arr);//在拼接sql查询的时候，很有用\n\narray_map(\'htmlspecialchars\' , $arr);\n</code></pre>\n<p>虽然有时候foreach完全可以达到相同的效果，但是在代码中使用 array_map、array_reduce还有array_filter之类的函数，可以让代码更加的简洁，而不是一个php文件到处都是foreach循环。 “这并非炫耀什么奇技淫巧，这只是PHP自己的正常的方式而已” 。</p>\n', '工作中经常会用到foreach 遍历数据，但是PHP有两个内置函数可以实现foreach很难实现的功能\r\n\r\n1、array_reduce( $arr , callable $callback ) 使用回调函数迭代地将数组简化为单一的值。\r\n\r\n其中arr为输入数组， arr 为输入数组，arr为输入数组，callback($result , value)接受两个参数, value)接受两个参数,value)接受两个参数,result为上一次迭代产生的值，$value是当前迭代的值。\r\n\r\n使用array', 'php,array_map,array_reduce', '/uploads/article/default.jpg', 0, 1, '2019-08-22 15:42:57', '2019-08-22 16:17:22', NULL);
INSERT INTO `bjy_articles` VALUES (11, 1, 'PHP对二维数组进行重新排序', 'php-reorders-two-dimensional-arrays', '邓荣光', '```php\r\n$last_ages = array_column($arrUsers,\'age\');\r\narray_multisort($last_ages ,SORT_DESC,$arrUsers);\r\nvar_dump($arrUsers);\r\n```\r\nage->字段,$last_ages->要处理的数组', '<pre><code class=\"language-php\">$last_ages = array_column($arrUsers,\'age\');\narray_multisort($last_ages ,SORT_DESC,$arrUsers);\nvar_dump($arrUsers);\n</code></pre>\n<p>age-&gt;字段,$last_ages-&gt;要处理的数组</p>\n', '```php\r\n$last_ages = array_column($arrUsers,\'age\');\r\narray_multisort($last_ages ,SORT_DESC,$arrUsers);\r\nvar_dump($arrUsers);\r\n```\r\nage字段,$last_ages要处理的数组', 'php', '/uploads/article/default.jpg', 0, 0, '2019-08-22 15:44:05', '2019-08-22 15:44:05', NULL);
INSERT INTO `bjy_articles` VALUES (12, 1, 'php 多维数组指定某个值作为键', 'php-multidimensional-array-specifies-a-value-as-a-key', '邓荣光', '二维数组,把键为’id’的值作为新数组(Newarr)的键,值为原来的值\r\n```php\r\n$temp_key = array_column($arr,\'id\');  //键值\r\n$Newarr= array_combine($temp_key,$arr) ;\r\n```', '<p>二维数组,把键为’id’的值作为新数组(Newarr)的键,值为原来的值</p>\n<pre><code class=\"language-php\">$temp_key = array_column($arr,\'id\');  //键值\n$Newarr= array_combine($temp_key,$arr) ;\n</code></pre>\n', '二维数组,把键为’id’的值作为新数组(Newarr)的键,值为原来的值\r\n```php\r\n$temp_key = array_column($arr,\'id\');  //键值\r\n$Newarr= array_combine($temp_key,$arr) ;\r\n```', 'php', '/uploads/article/default.jpg', 0, 0, '2019-08-22 15:44:45', '2019-08-22 15:44:45', NULL);
INSERT INTO `bjy_articles` VALUES (13, 1, 'php 删除一维数组中某一个值元素的操作方法', 'php-delete-operation-method-of-a-value-element-in-a-one-dimensional-array', '邓荣光', '```php\r\n<?php\r\n\r\n$tmp = \'324\';\r\n\r\n$arr = array(\r\n\r\n\'0\' => \'321\',\r\n\r\n\'1\' => \'322\',\r\n\r\n\'2\' => \'323\',\r\n\r\n\'3\' => \'324\',\r\n\r\n\'4\' => \'325\',\r\n\r\n\'5\' => \'326\',\r\n\r\n);\r\n$arr = array_merge(array_diff($arr, array($tmp)));\r\n$arr = array_merge(array_diff($arr, $tmp));\r\n//上面的两种方式都是可以的\r\n\r\nvar_dump($arr);\r\n\r\n```', '<pre><code class=\"language-php\">&lt;?php\n\n$tmp = \'324\';\n\n$arr = array(\n\n\'0\' =&gt; \'321\',\n\n\'1\' =&gt; \'322\',\n\n\'2\' =&gt; \'323\',\n\n\'3\' =&gt; \'324\',\n\n\'4\' =&gt; \'325\',\n\n\'5\' =&gt; \'326\',\n\n);\n$arr = array_merge(array_diff($arr, array($tmp)));\n$arr = array_merge(array_diff($arr, $tmp));\n//上面的两种方式都是可以的\n\nvar_dump($arr);\n\n</code></pre>\n', '```php\r\n<?php\r\n\r\n$tmp = \'324\';\r\n\r\n$arr = array(\r\n\r\n\'0\' = \'321\',\r\n\r\n\'1\' = \'322\',\r\n\r\n\'2\' = \'323\',\r\n\r\n\'3\' = \'324\',\r\n\r\n\'4\' = \'325\',\r\n\r\n\'5\' = \'326\',\r\n\r\n);\r\n$arr = array_merge(array_diff($arr, array($tmp)));\r\n$arr = array_merge(array_diff($arr, $tmp));\r\n//上面的两种', 'php', '/uploads/article/default.jpg', 0, 0, '2019-08-22 15:45:29', '2019-08-22 15:45:29', NULL);
INSERT INTO `bjy_articles` VALUES (14, 1, '简单实现卓易刷微信步数的PHP源码', 'simple-implementation-of-zhuoyi-brush-wechat-step-php-source-code', '邓荣光', '这是官方接口,不是二次或N次开发的接口\r\n需要引入一个类库，地址：[https://packagist.org/packages/php-curl-class/php-curl-class](https://packagist.org/packages/php-curl-class/php-curl-class \"https://packagist.org/packages/php-curl-class/php-curl-class\")\r\n```php\r\n<?php\r\n \r\nrequire __DIR__ . \'/vendor/autoload.php\';\r\n \r\nuse \\Curl\\Curl;\r\n$curl = new Curl();\r\n \r\n$salt=\'8061FD\';//sign计算盐\r\n \r\n$step=5462;//提交步数\r\n \r\n \r\n$account = \'abcdef\';//绑定微信的卓易账号\r\n$timestamp = time();\r\n$sign = md5($account . $salt . $timestamp);\r\n \r\n$host = \"http://weixin.droi.com/health/phone/index.php/SendWechat/getWxOpenid\";\r\n$curl->post($host,\r\n    array(\r\n        \'accountId\' => $account,\r\n        \'timeStamp\' => $timestamp,\r\n        \'sign\' => $sign\r\n    ));\r\n \r\nif ($curl->error) {\r\n    die(\'Error: \' . $curl->errorCode . \': \' . $curl->errorMessage . \"\\n\");\r\n} else {\r\n    $rep = json_decode( $curl->response, true );\r\n    if( $rep[\'code\']!==0 ) {\r\n        die( \'getWxOpenid:\'.$rep[\'messsage\'].\"\\n\" );\r\n    }\r\n    $openid=$rep[\'openid\'];\r\n    echo \"WeChatOpenId: {$openid}\\n\";\r\n}\r\necho \"</br>\";\r\necho \"</br>\";\r\n$timestamp = time();\r\n$sign=md5($account.$salt.$step.$salt.$timestamp.$salt.$openid);\r\n$host = \"http://weixin.droi.com/health/phone/index.php/SendWechat/stepSubmit\";\r\n$curl->post($host,\r\n    array(\r\n        \'accountId\' => $account,\r\n        \'jibuNuber\'=>$step,\r\n        \'timeStamp\' => $timestamp,\r\n        \'sign\' => $sign\r\n    ));\r\n \r\nif ($curl->error) {\r\n    die(\'stepSubmit: \' . $curl->errorCode . \': \' . $curl->errorMessage . \"\\n\");\r\n} else {\r\n    $rep = json_decode($curl->response,true);\r\n    echo \"stepSubmit: \".$rep[\'messsage\'];\r\n}\r\n \r\n$curl->close();\r\n\r\n```', '<p>这是官方接口,不是二次或N次开发的接口\n需要引入一个类库，地址：<a href=\"https://packagist.org/packages/php-curl-class/php-curl-class\" title=\"https://packagist.org/packages/php-curl-class/php-curl-class\">https://packagist.org/packages/php-curl-class/php-curl-class</a></p>\n<pre><code class=\"language-php\">&lt;?php\n \nrequire __DIR__ . \'/vendor/autoload.php\';\n \nuse \\Curl\\Curl;\n$curl = new Curl();\n \n$salt=\'8061FD\';//sign计算盐\n \n$step=5462;//提交步数\n \n \n$account = \'abcdef\';//绑定微信的卓易账号\n$timestamp = time();\n$sign = md5($account . $salt . $timestamp);\n \n$host = &quot;http://weixin.droi.com/health/phone/index.php/SendWechat/getWxOpenid&quot;;\n$curl-&gt;post($host,\n    array(\n        \'accountId\' =&gt; $account,\n        \'timeStamp\' =&gt; $timestamp,\n        \'sign\' =&gt; $sign\n    ));\n \nif ($curl-&gt;error) {\n    die(\'Error: \' . $curl-&gt;errorCode . \': \' . $curl-&gt;errorMessage . &quot;\\n&quot;);\n} else {\n    $rep = json_decode( $curl-&gt;response, true );\n    if( $rep[\'code\']!==0 ) {\n        die( \'getWxOpenid:\'.$rep[\'messsage\'].&quot;\\n&quot; );\n    }\n    $openid=$rep[\'openid\'];\n    echo &quot;WeChatOpenId: {$openid}\\n&quot;;\n}\necho &quot;&lt;/br&gt;&quot;;\necho &quot;&lt;/br&gt;&quot;;\n$timestamp = time();\n$sign=md5($account.$salt.$step.$salt.$timestamp.$salt.$openid);\n$host = &quot;http://weixin.droi.com/health/phone/index.php/SendWechat/stepSubmit&quot;;\n$curl-&gt;post($host,\n    array(\n        \'accountId\' =&gt; $account,\n        \'jibuNuber\'=&gt;$step,\n        \'timeStamp\' =&gt; $timestamp,\n        \'sign\' =&gt; $sign\n    ));\n \nif ($curl-&gt;error) {\n    die(\'stepSubmit: \' . $curl-&gt;errorCode . \': \' . $curl-&gt;errorMessage . &quot;\\n&quot;);\n} else {\n    $rep = json_decode($curl-&gt;response,true);\n    echo &quot;stepSubmit: &quot;.$rep[\'messsage\'];\n}\n \n$curl-&gt;close();\n\n</code></pre>\n', '这是官方接口,不是二次或N次开发的接口\r\n需要引入一个类库，地址：\r\n```php\r\n<?php\r\n \r\nrequire __DIR__ . \'/vendor/autoload.php\';\r\n \r\nuse \\Curl\\Curl;\r\n$curl = new Curl();\r\n \r\n$salt=\'8061FD\';//sign计算盐\r\n \r\n$step=5462;//提交步数\r\n \r\n \r\n$account = \'abcdef\';//绑定微信的卓易账号\r\n$timestamp = time();\r\n$sign ', '刷步数,php,源码', '/uploads/article/default.jpg', 0, 1, '2019-08-22 15:46:26', '2019-08-22 15:57:58', NULL);
INSERT INTO `bjy_articles` VALUES (15, 2, 'mysql字符串函数：FIND_IN_SET（）使用方法详解', 'mysql-string-function-find-in-set-use-method-detailed', '邓荣光', '**语法：**\r\nFIND_IN_SET(str,strlist)\r\n\r\n - 第一个参数str是要查找的字符串。 \r\n - 第二个参数strlist是要搜索的逗号分隔的字符串列表。\r\n\r\n \r\n\r\n假如字符串str 在由N 子链组成的字符串列表strlist 中，则返回值的范围在 1 到 N 之间。\r\n\r\n \r\n\r\n一个字符串列表就是一个由一些被‘,’符号分开的子链组成的字符串。如果第一个参数是一个常数字符串，而第二个是type SET列，则 FIND_IN_SET() 函数被优化，使用比特计算。\r\n\r\n \r\n\r\n如果str不在strlist 或strlist 为空字符串，则返回值为 0 。如任意一个参数为NULL，则返回值为 NULL。这个函数在第一个参数包含一个逗号(‘,’)时将无法正常运行。\r\n\r\n - 现在有一张users表，如下：\r\n\r\n|id|user_name|emails|\r\n|--|--|--|\r\n|1|小张|a@fujieace.com,b@fujieace.com,c@fujieace.com|\r\n|2|小王|aa@fujieace.com,bb@fujieace.com,cc@fujieace.com|\r\n|3|李四|aa@fujieace.com,b@fujieace.com,d@fujieace.com|\r\n|4|王五|aa@fujieace.com,e@fujieace.com,f@fujieace.com|\r\n\r\n问：我们如何用sql查找所有“emails”字段中有“aa@fujieace.com”的用户？\r\n\r\n \r\n\r\n答：用以下sql即可实现；\r\n\r\n```\r\nselect * from users where FIND_IN_SET(\'aa@fujieace.com\',emails);\r\n```\r\n\r\n **拓展知识：**\r\n\r\n```\r\nmysql> SELECT FIND_IN_SET(\'b\',\'a,b,c,d\');\r\n-> 2 \r\n```\r\n因为：b 在strlist集合中放在2的位置，计算从1开始，不是从0开始；\r\n\r\n```\r\nselect FIND_IN_SET(\'1\',\'1\');\r\n```\r\n返回值：就是1；\r\n\r\n这时候的strlist集合有点特殊，只有一个字符串，其实就是要求前一个字符串一定要在后一个字符串集合中才返回 大于0的数；\r\n\r\n```\r\nselect FIND_IN_SET(\'2\',\'1，2\');返回2\r\nselect FIND_IN_SET(\'6\',\'1\'); 返回0\r\n```\r\n\r\n**注意事项：**\r\n\r\n```\r\nselect * from fujieace where FIND_IN_SET(id,\'1,2,3,4,5\');\r\n```\r\n使用find_in_set函数一次返回多条记录；\r\n\r\nid 是一个表的字段 然后每条记录分别是id等于1，2，3，4，5的时候；\r\n\r\n \r\n有点类似in （集合）\r\n```\r\nselect * from fujieace where id in (1,2,3,4,5);\r\n```', '<p><strong>语法：</strong>\nFIND_IN_SET(str,strlist)</p>\n<ul>\n<li>第一个参数str是要查找的字符串。</li>\n<li>第二个参数strlist是要搜索的逗号分隔的字符串列表。</li>\n</ul>\n<p>假如字符串str 在由N 子链组成的字符串列表strlist 中，则返回值的范围在 1 到 N 之间。</p>\n<p>一个字符串列表就是一个由一些被‘,’符号分开的子链组成的字符串。如果第一个参数是一个常数字符串，而第二个是type SET列，则 FIND_IN_SET() 函数被优化，使用比特计算。</p>\n<p>如果str不在strlist 或strlist 为空字符串，则返回值为 0 。如任意一个参数为NULL，则返回值为 NULL。这个函数在第一个参数包含一个逗号(‘,’)时将无法正常运行。</p>\n<ul>\n<li>现在有一张users表，如下：</li>\n</ul>\n<table>\n<thead>\n<tr>\n<th>id</th>\n<th>user_name</th>\n<th>emails</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>小张</td>\n<td>a@fujieace.com,b@fujieace.com,c@fujieace.com</td>\n</tr>\n<tr>\n<td>2</td>\n<td>小王</td>\n<td>aa@fujieace.com,bb@fujieace.com,cc@fujieace.com</td>\n</tr>\n<tr>\n<td>3</td>\n<td>李四</td>\n<td>aa@fujieace.com,b@fujieace.com,d@fujieace.com</td>\n</tr>\n<tr>\n<td>4</td>\n<td>王五</td>\n<td>aa@fujieace.com,e@fujieace.com,f@fujieace.com</td>\n</tr>\n</tbody>\n</table>\n<p>问：我们如何用sql查找所有“emails”字段中有“aa@fujieace.com”的用户？</p>\n<p>答：用以下sql即可实现；</p>\n<pre><code>select * from users where FIND_IN_SET(\'aa@fujieace.com\',emails);\n</code></pre>\n<p><strong>拓展知识：</strong></p>\n<pre><code>mysql&gt; SELECT FIND_IN_SET(\'b\',\'a,b,c,d\');\n-&gt; 2 \n</code></pre>\n<p>因为：b 在strlist集合中放在2的位置，计算从1开始，不是从0开始；</p>\n<pre><code>select FIND_IN_SET(\'1\',\'1\');\n</code></pre>\n<p>返回值：就是1；</p>\n<p>这时候的strlist集合有点特殊，只有一个字符串，其实就是要求前一个字符串一定要在后一个字符串集合中才返回 大于0的数；</p>\n<pre><code>select FIND_IN_SET(\'2\',\'1，2\');返回2\nselect FIND_IN_SET(\'6\',\'1\'); 返回0\n</code></pre>\n<p><strong>注意事项：</strong></p>\n<pre><code>select * from fujieace where FIND_IN_SET(id,\'1,2,3,4,5\');\n</code></pre>\n<p>使用find_in_set函数一次返回多条记录；</p>\n<p>id 是一个表的字段 然后每条记录分别是id等于1，2，3，4，5的时候；</p>\n<p>有点类似in （集合）</p>\n<pre><code>select * from fujieace where id in (1,2,3,4,5);\n</code></pre>\n', '语法：FIND_IN_SET(str,strlist)  第一个参数str是要查找的字符串。   第二个参数strlist是要搜索的逗号分隔的字符串列表。 假如字符串str 在由N 子链组成的字符串列表strlist 中，则返回值的范围在 1 到 N 之间。 一个字符串列表就是一个由一些被‘,’符号分开的子链组成的字符串。如果第一个参数是一个常数字符串，而第二个是type SET列，则 FIND_IN_SET() 函数被优化，使用比特计算。', 'mysql', '/uploads/article/default.jpg', 0, 1, '2019-08-22 15:48:32', '2019-08-22 15:50:15', NULL);
INSERT INTO `bjy_articles` VALUES (16, 1, 'Laravel模型类&DB类操作数据库', 'laravel-model-class-db-class-operation-database', '邓荣光', '一、使用DB类操作数据库\r\n配置好数据库连接后，就可以使用DB类来运行查询。DB类为每种查询提供了相应方法：select, update, insert, delete和statement。\r\n\r\n1、运行原生sql查询\r\n注意：原生sql语句中的数据表名，必须是包含前缀的完整表名。\r\n\r\n-> 运行 select/insert/update/delete 查询\r\n\r\n    $results = DB::select(\'select * from users where id = ?\', [1]);\r\n\r\nselect方法以数组的形式返回结果集，数组中的每一个结果都是一个PHP StdClass对象，从而允许你像下面这样访问\r\n\r\n    结果值：\r\n    \r\n    foreach ($results as $user) {\r\n        echo $user->name;\r\n    }\r\n\r\n-> 运行一个通用语句\r\n有些数据库语句不返回任何值，对于这种类型的操作，可以使用DB类的statement方法：该方法返回布尔值true或false，代表语句执行成功或失败。\r\n\r\n    DB::statement(\'drop table users\');\r\n\r\n2、查询构建器\r\n指定操作的数据表：\r\n\r\n    DB::table(表名);\r\n\r\n注：查询构建器中table方法中的表名，是不包含前缀的表名。\r\n\r\n-> 查询数据\r\n①获取多条数据–get方法\r\n\r\n    $users = DB::table(\'users\')->where(\'name\', \'John\')->get();\r\n\r\nget方法返回包含结果集的Illuminate\\Support\\Collection，其中每一个结果都是PHP的StdClass对象实例。你可以像访问对象的属性一样访问字段的值：\r\n\r\n    foreach ($users as $user) {\r\n        echo $user->name;\r\n    }\r\n\r\n②获取一条数据–first方法\r\n如果你只是想要从数据表中获取一行数据，可以使用first方法，该方法将会返回单个StdClass对象：\r\n\r\n    $user = DB::table(\'users\')->where(\'name\', \'John\')->first();\r\n    echo $user->name;\r\n\r\n注：根据主键获取一条数据–find方法\r\n如果你想要根据主键值从数据表中获取数据，可以使用find方法（必须传递参数）：\r\n\r\n    //传递一个主键值，获取一条数据\r\n    $user = DB::table(\'users\')->find(1);\r\n\r\n③聚合查询（统计查询）\r\n查询构建器还提供了多个聚合方法，如count, max, min, avg和 sum，你可以在构造查询之后调用这些方法：\r\n\r\n\r\n    $users = DB::table(\'users\')->count();\r\n    $price = DB::table(\'orders\')->max(\'price\');\r\n\r\n④select子句–select方法\r\n当然，我们并不总是想要获取数据表的所有列，使用select方法，你可以为查询指定自定义的select子句：\r\n\r\n    $users = DB::table(\'users\')->select(\'name\', \'email as user_email\')->get();\r\n\r\n⑤where子句–where方法\r\n\r\n    $users = DB::table(\'users\')\r\n                ->where(\'votes\', \'>=\', 100)\r\n                ->get();\r\n    $users = DB::table(\'users\')\r\n                ->where(\'votes\', \'<>\', 100)\r\n                ->get();\r\n    $users = DB::table(\'users\')\r\n                ->where(\'name\', \'like\', \'T%\')\r\n                ->get();\r\n\r\n还可以传递条件数组到where函数：\r\n\r\n    $users = DB::table(\'users\')->where([\'id\'=>\'1\'])->get();\r\n    $users = DB::table(\'users\')->where([\r\n        [\'status\', \'=\', \'1\'],\r\n        [\'subscribed\', \'<>\', \'1\'],\r\n    ])->get();\r\n\r\n-> 插入数据\r\n\r\n    DB::table(\'users\')->insert([\r\n        [\'email\' => \'taylor@example.com\', \'votes\' => 0],\r\n        [\'email\' => \'dayle@example.com\', \'votes\' => 0]\r\n    ]);\r\n\r\n自增ID\r\n如果数据表有自增ID，使用insertGetId方法来插入记录并返回ID值：\r\n\r\n    $id = DB::table(\'users\')->insertGetId(\r\n        [\'email\' => \'john@example.com\', \'votes\' => 0]\r\n    );\r\n\r\n-> 更新数据\r\n\r\n    DB::table(\'users\')\r\n                ->where(\'id\', 1)\r\n                ->update([\'votes\' => 1]);\r\n    这两个方法都至少接收一个参数：需要修改的列。第二个参数是可选的，用于控制列值增加/减少的数目。\r\n    DB::table(\'users\')->increment(\'votes\');\r\n    DB::table(\'users\')->increment(\'votes\', 5);\r\n    DB::table(\'users\')->decrement(\'votes\');\r\n    DB::table(\'users\')->decrement(\'votes\', 5);\r\n\r\n-> 删除数据\r\n查询构建器还可以通过delete方法从表中删除记录：\r\n\r\n    DB::table(\'users\')->delete();\r\n    DB::table(\'users\')->where(\'votes\', \'>\', 100)->delete();\r\n\r\n清除整张表，也就是删除所有列并将自增ID置为0，可以使用truncate方法：\r\n\r\n    DB::table(\'users\')->truncate();\r\n\r\n二、模型中的数据操作\r\n增删改查 (CURD ： create update read delete)\r\n\r\nEloquent模型本身是一个功能强大的查询构建器，可以通过模型调用DB类查询构建器中的方法。模型本身也封装了一些自己的方法，用于进行数据查询、插入、更新、删除等操作。\r\n\r\n1、查询一条数据\r\n①调用find方法（必须传递参数）\r\n\r\n    // 通过主键获取一条数据...\r\n    $manager = Manager::find(1);\r\n\r\n②调用first方法（不需要传递参数）\r\n\r\n    // 获取匹配查询条件的第一条数据...\r\n    $manager = Manager::where(\'active\', 1)->first();\r\n\r\n注：通过模型调用find方法和first方法，返回值都是一个包含数据的模型对象。这个对象可以当做数组来用，也可以调用toArray方法直接转化为数组。\r\n\r\n    // 通过主键获取一条数据...\r\n    $manager = Manager::find(1)->toArray();\r\n\r\n2、查询多条数据（推荐get方法）\r\n①调用模型本身的all方法\r\n\r\n    //调用模型的all方法 查询所有数据\r\n    $managers = Manager::all();\r\n    //可以传递参数，指定要查询的字段\r\n    $managers = Manager::all(\'id\', \'username\');\r\n    或者 传递数组格式的字段参数\r\n    $managers = Manager::all([\'id\', \'username\']);\r\n\r\n注：all方法是模型本身封装的一个静态方法，只能直接调用，前面不能调用where等方法。\r\n②调用find方法\r\n还可以通过传递主键数组来调用find方法，这将会返回匹配记录集合：\r\n\r\n    //根据主键数组查询多条数据\r\n    \r\n        $managers = Manager::find([1, 2, 3]);\r\n\r\n③调用get方法（推荐）\r\n\r\n//根据条件查询数据\r\n\r\n    $managers = Manager::where(\'status\', 1)->get();\r\n\r\n注：查询多条数据，返回的是一个包含模型对象的数据集合。\r\n\r\n3、添加数据\r\n可以通过模型调用查询构建器的insert方法进行添加数据操作，这里主要介绍模型的方法。\r\n\r\n-> 静态create方法添加数据\r\n可以静态调用create方法，传递数据数组，进行批量字段复制并添加。\r\n使用create方法之前，必须先在模型中定义哪些属性是可以进行赋值的，使用模型上的$fillable属性即可实现。\r\n\r\n控制器中调用模型的create方法：\r\n\r\n    $data = [\'username\' => \'admin100\', \'status\' => 1];\r\n    $manager = Manager::create($data);\r\n    $id = $manager->id;\r\n\r\ncreate方法返回包含了插入数据的模型对象本身。\r\n\r\n-> save方法添加数据（不推荐）\r\n\r\n    $manager = new Manager;\r\n    $manager->username = \'admin100\';\r\n    $manager->save();\r\n\r\nsave方法返回值：成功时返回true，失败时返回false。\r\n添加成功后，可以通过模型调用id属性，获取添加记录的主键值。\r\n\r\n    $id = $manager->id;\r\n\r\n4、修改数据\r\n-> update方法修改数据\r\n通常还可以调用查询构建器的update方法同时修改满足条件的一条或多条数据。\r\n\r\n    //根据条件更新数据\r\n    $manager = Manager::where(\'id\', 1)->update([\'status\' => 1]);\r\n\r\n-> save方法修改数据（不推荐）\r\n模型的save方法还可以用于更新数据表已存在的数据。\r\n\r\n    //先查询到要修改的数据\r\n    $manager = Manager::find(1);\r\n    //设置想要更新的属性\r\n    $manager->email = \'laravel@qq.com\' ;\r\n    //调用save方法\r\n    $manager->save();\r\n\r\n5、删除数据（推荐destroy方法）\r\n-> 模型本身的delete方法删除数据\r\n\r\n    //先查询到要删除的数据\r\n    $manager = Manager::find(2);\r\n    //调用delete方法\r\n    $manager->delete();\r\n\r\n-> 模型本身的静态destroy方法删除数据\r\n\r\n    //根据主键id删除一条数据\r\n    Manager::destroy(2);\r\n    //根据多个主键id批量删除数据\r\n    Manager::destroy([2,3]);\r\n    Manager::destroy(2,3);\r\n\r\n-> 查询构建器的delete方法删除数据\r\n可以根据where条件，直接调用查询构建器的delete方法，删除满足条件的数据\r\n\r\n    //先查询到要删除的数据\r\n    Manager::where(\'id\', 2)->delete();\r\n\r\n6、软删除\r\n-> 软删除\r\n要启用模型的软删除功能，可以使用模型上的Illuminate\\Database\\Eloquent\\SoftDeletes这个trait ：\r\n\r\n    namespace App\\Http\\Models;\r\n    \r\n    use Illuminate\\Database\\Eloquent\\Model;\r\n    //引入SoftDeletes 这个trait\r\n    use Illuminate\\Database\\Eloquent\\SoftDeletes;\r\n    \r\n    class Manager extends Model{\r\n        //SoftDeletes 这个trait\r\n    use SoftDeletes;\r\n    //指定软删除字段名称\r\n        protected $dates = [\'deleted_at\'];\r\n    }\r\n\r\n进行以上设置后，调用模型本身的delete方法和destroy方法删除数据，都会进行软删除。\r\ndeleted_at列将被设置为当前日期和时间，并且，当查询一个使用软删除的模型时，被软删除的模型将会自动从查询结果中排除。\r\n\r\n-> 查询被软删除的数据\r\n被软删除数据将会自动从查询结果中排除，但是，如果你想要被软删除的数据出现在查询结果中，可以使用withTrashed方法：\r\n\r\n    $managers = Manager::withTrashed()->get();\r\n\r\n也可以使用onlyTrashed方法只获取软删除数据：\r\n\r\n    $managers = Manager::onlyTrashed()->get();\r\n\r\n-> 恢复被软删除的数据\r\n有时候你希望恢复一个被软删除的模型，可以使用restore方法：\r\n\r\n    $manager = Manager::withTrashed()->first();\r\n    $manager->restore();\r\n\r\n你还可以在查询中使用restore方法来快速恢复多个模型：\r\n\r\n    Manager::withTrashed()\r\n            ->where(\'id\', \'>\', 1)\r\n            ->restore();\r\n        \r\n-> 永久删除数据\r\n有时候你真的需要从数据库中删除一个模型，可以使用forceDelete方法：\r\n\r\n    // 强制删除单个模型实例...\r\n    $manager = Manager::find(1);\r\n    $manager->forceDelete();\r\n\r\n三、where方法详解\r\n-> 简单的where子句\r\n\r\n    //完整语法\r\n    where(\'字段名\', \'表达式\', \'查询条件\')\r\n    //表达式为 等于号，可以省略不写。\r\n    where(\'字段名\',  \'查询条件\')\r\n    //用法\r\n    $managers = Manager::where(\'id\', \'>\', 3)->get();\r\n\r\n\r\n-> or语句\r\n你可以通过方法链将多个where约束链接到一起，也可以添加or子句到查询，orWhere方法和where方法接收参数一样：\r\n\r\n    $managers = Manager::where(\'id\', \'>\', 3)\r\n                        ->orWhere(\'status\', 1)\r\n                        ->get();\r\n\r\n-> 批量条件\r\n\r\n    $users = DB::table(\'users\')->where([\'id\'=>\'1\'])->get();\r\n    $users = DB::table(\'users\')->where([\r\n        [\'status\', \'=\', \'1\'],\r\n        [\'subscribed\', \'<>\', \'1\'],\r\n    ])->get();\r\n    //基本语法\r\n    where([\'字段名\'=> \'字段值\'])\r\n    where([[\'字段名\', \'比较表达式\', \'字段值\'],[\'字段名\', \'比较表达式\', \'字段值\']])\r\n\r\n-> 更多where子句\r\nwhereBetween\r\nwhereBetween方法验证列值是否在给定值之间：\r\n\r\n    $users = DB::table(\'users\')->whereBetween(\'votes\', [1, 100])->get();\r\n\r\nwhereNotBetween\r\nwhereNotBetween方法验证列值不在给定值之间：\r\n\r\n    $users = DB::table(\'users\')->whereNotBetween(\'votes\', [1, 100])->get();\r\n\r\nwhereIn/whereNotIn\r\nwhereIn方法验证给定列的值是否在给定数组中：\r\n\r\n    $users = DB::table(\'users\')->whereIn(\'id\', [1, 2, 3])->get();\r\n\r\nwhereNotIn方法验证给定列的值不在给定数组中：\r\n\r\n    $users = DB::table(\'users\')->whereNotIn(\'id\', [1, 2, 3])->get();\r\n\r\nwhereNull/whereNotNull\r\nwhereNull方法验证给定列的值为NULL：\r\n\r\n    $users = DB::table(\'users\')->whereNull(\'updated_at\') ->get();\r\n\r\nwhereNotNull方法验证给定列的值不是NULL：\r\n\r\n    $users = DB::table(\'users\')->whereNotNull(\'updated_at\')->get();\r\n\r\nwhereDate / whereMonth / whereDay / whereYear\r\nwhereDate方法用于比较字段值和日期：\r\n\r\n    $users = DB::table(\'users\')->whereDate(\'created_at\', \'2016-10-10\')->get();\r\n\r\nwhereMonth方法用于比较字段值和一年中的指定月份：\r\n\r\n    $users = DB::table(\'users\')->whereMonth(\'created_at\', \'10\')->get();\r\n\r\nwhereDay方法用于比较字段值和一月中的制定天：\r\n\r\n    $users = DB::table(\'users\')->whereDay(\'created_at\', \'10\')->get();\r\n\r\nwhereYear方法用于比较字段值和指定年：\r\n\r\n    $users = DB::table(\'users\')->whereYear(\'created_at\', \'2016\')->get();\r\n\r\nwhereColumn\r\nwhereColumn方法用于验证两个字段是否相等：\r\n\r\n    $users = DB::table(\'users\')->whereColumn(\'first_name\', \'last_name\')->get();\r\n\r\n还可以传递一个比较运算符到该方法：\r\n\r\n    $users = DB::table(\'users\')->whereColumn(\'updated_at\', \'>\', \'created_at\')\r\n                ->get();\r\n\r\n\r\n还可以传递多条件数组到whereColumn方法，这些条件通过and操作符进行连接：\r\n\r\n    $users = DB::table(\'users\')\r\n                ->whereColumn([\r\n                    [\'first_name\', \'=\', \'last_name\'],\r\n                    [\'updated_at\', \'>\', \'created_at\']\r\n                ])->get();', '<p>一、使用DB类操作数据库\n配置好数据库连接后，就可以使用DB类来运行查询。DB类为每种查询提供了相应方法：select, update, insert, delete和statement。</p>\n<p>1、运行原生sql查询\n注意：原生sql语句中的数据表名，必须是包含前缀的完整表名。</p>\n<p>-&gt; 运行 select/insert/update/delete 查询</p>\n<pre><code>$results = DB::select(\'select * from users where id = ?\', [1]);\n</code></pre>\n<p>select方法以数组的形式返回结果集，数组中的每一个结果都是一个PHP StdClass对象，从而允许你像下面这样访问</p>\n<pre><code>结果值：\n\nforeach ($results as $user) {\n    echo $user-&gt;name;\n}\n</code></pre>\n<p>-&gt; 运行一个通用语句\n有些数据库语句不返回任何值，对于这种类型的操作，可以使用DB类的statement方法：该方法返回布尔值true或false，代表语句执行成功或失败。</p>\n<pre><code>DB::statement(\'drop table users\');\n</code></pre>\n<p>2、查询构建器\n指定操作的数据表：</p>\n<pre><code>DB::table(表名);\n</code></pre>\n<p>注：查询构建器中table方法中的表名，是不包含前缀的表名。</p>\n<p>-&gt; 查询数据\n①获取多条数据–get方法</p>\n<pre><code>$users = DB::table(\'users\')-&gt;where(\'name\', \'John\')-&gt;get();\n</code></pre>\n<p>get方法返回包含结果集的Illuminate\\Support\\Collection，其中每一个结果都是PHP的StdClass对象实例。你可以像访问对象的属性一样访问字段的值：</p>\n<pre><code>foreach ($users as $user) {\n    echo $user-&gt;name;\n}\n</code></pre>\n<p>②获取一条数据–first方法\n如果你只是想要从数据表中获取一行数据，可以使用first方法，该方法将会返回单个StdClass对象：</p>\n<pre><code>$user = DB::table(\'users\')-&gt;where(\'name\', \'John\')-&gt;first();\necho $user-&gt;name;\n</code></pre>\n<p>注：根据主键获取一条数据–find方法\n如果你想要根据主键值从数据表中获取数据，可以使用find方法（必须传递参数）：</p>\n<pre><code>//传递一个主键值，获取一条数据\n$user = DB::table(\'users\')-&gt;find(1);\n</code></pre>\n<p>③聚合查询（统计查询）\n查询构建器还提供了多个聚合方法，如count, max, min, avg和 sum，你可以在构造查询之后调用这些方法：</p>\n<pre><code>$users = DB::table(\'users\')-&gt;count();\n$price = DB::table(\'orders\')-&gt;max(\'price\');\n</code></pre>\n<p>④select子句–select方法\n当然，我们并不总是想要获取数据表的所有列，使用select方法，你可以为查询指定自定义的select子句：</p>\n<pre><code>$users = DB::table(\'users\')-&gt;select(\'name\', \'email as user_email\')-&gt;get();\n</code></pre>\n<p>⑤where子句–where方法</p>\n<pre><code>$users = DB::table(\'users\')\n            -&gt;where(\'votes\', \'&gt;=\', 100)\n            -&gt;get();\n$users = DB::table(\'users\')\n            -&gt;where(\'votes\', \'&lt;&gt;\', 100)\n            -&gt;get();\n$users = DB::table(\'users\')\n            -&gt;where(\'name\', \'like\', \'T%\')\n            -&gt;get();\n</code></pre>\n<p>还可以传递条件数组到where函数：</p>\n<pre><code>$users = DB::table(\'users\')-&gt;where([\'id\'=&gt;\'1\'])-&gt;get();\n$users = DB::table(\'users\')-&gt;where([\n    [\'status\', \'=\', \'1\'],\n    [\'subscribed\', \'&lt;&gt;\', \'1\'],\n])-&gt;get();\n</code></pre>\n<p>-&gt; 插入数据</p>\n<pre><code>DB::table(\'users\')-&gt;insert([\n    [\'email\' =&gt; \'taylor@example.com\', \'votes\' =&gt; 0],\n    [\'email\' =&gt; \'dayle@example.com\', \'votes\' =&gt; 0]\n]);\n</code></pre>\n<p>自增ID\n如果数据表有自增ID，使用insertGetId方法来插入记录并返回ID值：</p>\n<pre><code>$id = DB::table(\'users\')-&gt;insertGetId(\n    [\'email\' =&gt; \'john@example.com\', \'votes\' =&gt; 0]\n);\n</code></pre>\n<p>-&gt; 更新数据</p>\n<pre><code>DB::table(\'users\')\n            -&gt;where(\'id\', 1)\n            -&gt;update([\'votes\' =&gt; 1]);\n这两个方法都至少接收一个参数：需要修改的列。第二个参数是可选的，用于控制列值增加/减少的数目。\nDB::table(\'users\')-&gt;increment(\'votes\');\nDB::table(\'users\')-&gt;increment(\'votes\', 5);\nDB::table(\'users\')-&gt;decrement(\'votes\');\nDB::table(\'users\')-&gt;decrement(\'votes\', 5);\n</code></pre>\n<p>-&gt; 删除数据\n查询构建器还可以通过delete方法从表中删除记录：</p>\n<pre><code>DB::table(\'users\')-&gt;delete();\nDB::table(\'users\')-&gt;where(\'votes\', \'&gt;\', 100)-&gt;delete();\n</code></pre>\n<p>清除整张表，也就是删除所有列并将自增ID置为0，可以使用truncate方法：</p>\n<pre><code>DB::table(\'users\')-&gt;truncate();\n</code></pre>\n<p>二、模型中的数据操作\n增删改查 (CURD ： create update read delete)</p>\n<p>Eloquent模型本身是一个功能强大的查询构建器，可以通过模型调用DB类查询构建器中的方法。模型本身也封装了一些自己的方法，用于进行数据查询、插入、更新、删除等操作。</p>\n<p>1、查询一条数据\n①调用find方法（必须传递参数）</p>\n<pre><code>// 通过主键获取一条数据...\n$manager = Manager::find(1);\n</code></pre>\n<p>②调用first方法（不需要传递参数）</p>\n<pre><code>// 获取匹配查询条件的第一条数据...\n$manager = Manager::where(\'active\', 1)-&gt;first();\n</code></pre>\n<p>注：通过模型调用find方法和first方法，返回值都是一个包含数据的模型对象。这个对象可以当做数组来用，也可以调用toArray方法直接转化为数组。</p>\n<pre><code>// 通过主键获取一条数据...\n$manager = Manager::find(1)-&gt;toArray();\n</code></pre>\n<p>2、查询多条数据（推荐get方法）\n①调用模型本身的all方法</p>\n<pre><code>//调用模型的all方法 查询所有数据\n$managers = Manager::all();\n//可以传递参数，指定要查询的字段\n$managers = Manager::all(\'id\', \'username\');\n或者 传递数组格式的字段参数\n$managers = Manager::all([\'id\', \'username\']);\n</code></pre>\n<p>注：all方法是模型本身封装的一个静态方法，只能直接调用，前面不能调用where等方法。\n②调用find方法\n还可以通过传递主键数组来调用find方法，这将会返回匹配记录集合：</p>\n<pre><code>//根据主键数组查询多条数据\n\n    $managers = Manager::find([1, 2, 3]);\n</code></pre>\n<p>③调用get方法（推荐）</p>\n<p>//根据条件查询数据</p>\n<pre><code>$managers = Manager::where(\'status\', 1)-&gt;get();\n</code></pre>\n<p>注：查询多条数据，返回的是一个包含模型对象的数据集合。</p>\n<p>3、添加数据\n可以通过模型调用查询构建器的insert方法进行添加数据操作，这里主要介绍模型的方法。</p>\n<p>-&gt; 静态create方法添加数据\n可以静态调用create方法，传递数据数组，进行批量字段复制并添加。\n使用create方法之前，必须先在模型中定义哪些属性是可以进行赋值的，使用模型上的$fillable属性即可实现。</p>\n<p>控制器中调用模型的create方法：</p>\n<pre><code>$data = [\'username\' =&gt; \'admin100\', \'status\' =&gt; 1];\n$manager = Manager::create($data);\n$id = $manager-&gt;id;\n</code></pre>\n<p>create方法返回包含了插入数据的模型对象本身。</p>\n<p>-&gt; save方法添加数据（不推荐）</p>\n<pre><code>$manager = new Manager;\n$manager-&gt;username = \'admin100\';\n$manager-&gt;save();\n</code></pre>\n<p>save方法返回值：成功时返回true，失败时返回false。\n添加成功后，可以通过模型调用id属性，获取添加记录的主键值。</p>\n<pre><code>$id = $manager-&gt;id;\n</code></pre>\n<p>4、修改数据\n-&gt; update方法修改数据\n通常还可以调用查询构建器的update方法同时修改满足条件的一条或多条数据。</p>\n<pre><code>//根据条件更新数据\n$manager = Manager::where(\'id\', 1)-&gt;update([\'status\' =&gt; 1]);\n</code></pre>\n<p>-&gt; save方法修改数据（不推荐）\n模型的save方法还可以用于更新数据表已存在的数据。</p>\n<pre><code>//先查询到要修改的数据\n$manager = Manager::find(1);\n//设置想要更新的属性\n$manager-&gt;email = \'laravel@qq.com\' ;\n//调用save方法\n$manager-&gt;save();\n</code></pre>\n<p>5、删除数据（推荐destroy方法）\n-&gt; 模型本身的delete方法删除数据</p>\n<pre><code>//先查询到要删除的数据\n$manager = Manager::find(2);\n//调用delete方法\n$manager-&gt;delete();\n</code></pre>\n<p>-&gt; 模型本身的静态destroy方法删除数据</p>\n<pre><code>//根据主键id删除一条数据\nManager::destroy(2);\n//根据多个主键id批量删除数据\nManager::destroy([2,3]);\nManager::destroy(2,3);\n</code></pre>\n<p>-&gt; 查询构建器的delete方法删除数据\n可以根据where条件，直接调用查询构建器的delete方法，删除满足条件的数据</p>\n<pre><code>//先查询到要删除的数据\nManager::where(\'id\', 2)-&gt;delete();\n</code></pre>\n<p>6、软删除\n-&gt; 软删除\n要启用模型的软删除功能，可以使用模型上的Illuminate\\Database\\Eloquent\\SoftDeletes这个trait ：</p>\n<pre><code>namespace App\\Http\\Models;\n\nuse Illuminate\\Database\\Eloquent\\Model;\n//引入SoftDeletes 这个trait\nuse Illuminate\\Database\\Eloquent\\SoftDeletes;\n\nclass Manager extends Model{\n    //SoftDeletes 这个trait\nuse SoftDeletes;\n//指定软删除字段名称\n    protected $dates = [\'deleted_at\'];\n}\n</code></pre>\n<p>进行以上设置后，调用模型本身的delete方法和destroy方法删除数据，都会进行软删除。\ndeleted_at列将被设置为当前日期和时间，并且，当查询一个使用软删除的模型时，被软删除的模型将会自动从查询结果中排除。</p>\n<p>-&gt; 查询被软删除的数据\n被软删除数据将会自动从查询结果中排除，但是，如果你想要被软删除的数据出现在查询结果中，可以使用withTrashed方法：</p>\n<pre><code>$managers = Manager::withTrashed()-&gt;get();\n</code></pre>\n<p>也可以使用onlyTrashed方法只获取软删除数据：</p>\n<pre><code>$managers = Manager::onlyTrashed()-&gt;get();\n</code></pre>\n<p>-&gt; 恢复被软删除的数据\n有时候你希望恢复一个被软删除的模型，可以使用restore方法：</p>\n<pre><code>$manager = Manager::withTrashed()-&gt;first();\n$manager-&gt;restore();\n</code></pre>\n<p>你还可以在查询中使用restore方法来快速恢复多个模型：</p>\n<pre><code>Manager::withTrashed()\n        -&gt;where(\'id\', \'&gt;\', 1)\n        -&gt;restore();\n    \n</code></pre>\n<p>-&gt; 永久删除数据\n有时候你真的需要从数据库中删除一个模型，可以使用forceDelete方法：</p>\n<pre><code>// 强制删除单个模型实例...\n$manager = Manager::find(1);\n$manager-&gt;forceDelete();\n</code></pre>\n<p>三、where方法详解\n-&gt; 简单的where子句</p>\n<pre><code>//完整语法\nwhere(\'字段名\', \'表达式\', \'查询条件\')\n//表达式为 等于号，可以省略不写。\nwhere(\'字段名\',  \'查询条件\')\n//用法\n$managers = Manager::where(\'id\', \'&gt;\', 3)-&gt;get();\n</code></pre>\n<p>-&gt; or语句\n你可以通过方法链将多个where约束链接到一起，也可以添加or子句到查询，orWhere方法和where方法接收参数一样：</p>\n<pre><code>$managers = Manager::where(\'id\', \'&gt;\', 3)\n                    -&gt;orWhere(\'status\', 1)\n                    -&gt;get();\n</code></pre>\n<p>-&gt; 批量条件</p>\n<pre><code>$users = DB::table(\'users\')-&gt;where([\'id\'=&gt;\'1\'])-&gt;get();\n$users = DB::table(\'users\')-&gt;where([\n    [\'status\', \'=\', \'1\'],\n    [\'subscribed\', \'&lt;&gt;\', \'1\'],\n])-&gt;get();\n//基本语法\nwhere([\'字段名\'=&gt; \'字段值\'])\nwhere([[\'字段名\', \'比较表达式\', \'字段值\'],[\'字段名\', \'比较表达式\', \'字段值\']])\n</code></pre>\n<p>-&gt; 更多where子句\nwhereBetween\nwhereBetween方法验证列值是否在给定值之间：</p>\n<pre><code>$users = DB::table(\'users\')-&gt;whereBetween(\'votes\', [1, 100])-&gt;get();\n</code></pre>\n<p>whereNotBetween\nwhereNotBetween方法验证列值不在给定值之间：</p>\n<pre><code>$users = DB::table(\'users\')-&gt;whereNotBetween(\'votes\', [1, 100])-&gt;get();\n</code></pre>\n<p>whereIn/whereNotIn\nwhereIn方法验证给定列的值是否在给定数组中：</p>\n<pre><code>$users = DB::table(\'users\')-&gt;whereIn(\'id\', [1, 2, 3])-&gt;get();\n</code></pre>\n<p>whereNotIn方法验证给定列的值不在给定数组中：</p>\n<pre><code>$users = DB::table(\'users\')-&gt;whereNotIn(\'id\', [1, 2, 3])-&gt;get();\n</code></pre>\n<p>whereNull/whereNotNull\nwhereNull方法验证给定列的值为NULL：</p>\n<pre><code>$users = DB::table(\'users\')-&gt;whereNull(\'updated_at\') -&gt;get();\n</code></pre>\n<p>whereNotNull方法验证给定列的值不是NULL：</p>\n<pre><code>$users = DB::table(\'users\')-&gt;whereNotNull(\'updated_at\')-&gt;get();\n</code></pre>\n<p>whereDate / whereMonth / whereDay / whereYear\nwhereDate方法用于比较字段值和日期：</p>\n<pre><code>$users = DB::table(\'users\')-&gt;whereDate(\'created_at\', \'2016-10-10\')-&gt;get();\n</code></pre>\n<p>whereMonth方法用于比较字段值和一年中的指定月份：</p>\n<pre><code>$users = DB::table(\'users\')-&gt;whereMonth(\'created_at\', \'10\')-&gt;get();\n</code></pre>\n<p>whereDay方法用于比较字段值和一月中的制定天：</p>\n<pre><code>$users = DB::table(\'users\')-&gt;whereDay(\'created_at\', \'10\')-&gt;get();\n</code></pre>\n<p>whereYear方法用于比较字段值和指定年：</p>\n<pre><code>$users = DB::table(\'users\')-&gt;whereYear(\'created_at\', \'2016\')-&gt;get();\n</code></pre>\n<p>whereColumn\nwhereColumn方法用于验证两个字段是否相等：</p>\n<pre><code>$users = DB::table(\'users\')-&gt;whereColumn(\'first_name\', \'last_name\')-&gt;get();\n</code></pre>\n<p>还可以传递一个比较运算符到该方法：</p>\n<pre><code>$users = DB::table(\'users\')-&gt;whereColumn(\'updated_at\', \'&gt;\', \'created_at\')\n            -&gt;get();\n</code></pre>\n<p>还可以传递多条件数组到whereColumn方法，这些条件通过and操作符进行连接：</p>\n<pre><code>$users = DB::table(\'users\')\n            -&gt;whereColumn([\n                [\'first_name\', \'=\', \'last_name\'],\n                [\'updated_at\', \'&gt;\', \'created_at\']\n            ])-&gt;get();\n</code></pre>\n', '一、使用DB类操作数据库\r\n配置好数据库连接后，就可以使用DB类来运行查询。DB类为每种查询提供了相应方法：select, update, insert, delete和statement。\r\n\r\n1、运行原生sql查询\r\n注意：原生sql语句中的数据表名，必须是包含前缀的完整表名。\r\n\r\n 运行 select/insert/update/delete 查询\r\n\r\n    $results = DB::select(\'select  from users where id = ?\', );\r\n\r\nsele', 'php,laravel', '/uploads/article/default.jpg', 0, 0, '2019-08-22 15:49:44', '2019-08-22 15:49:44', NULL);

-- ----------------------------
-- Table structure for bjy_categories
-- ----------------------------
DROP TABLE IF EXISTS `bjy_categories`;
CREATE TABLE `bjy_categories`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类主键id',
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'slug',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `sort` tinyint(1) NOT NULL DEFAULT 0 COMMENT '排序',
  `pid` tinyint(1) NOT NULL DEFAULT 0 COMMENT '父级栏目id',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bjy_categories
-- ----------------------------
INSERT INTO `bjy_categories` VALUES (1, 'PHP', 'php', 'php', 'php相关的文章', 1, 0, '2017-07-16 07:35:12', '2019-08-22 14:12:00', NULL);
INSERT INTO `bjy_categories` VALUES (2, 'MySQL', 'for-deletion', 'mysql', '关于MySQL的文章', 2, 0, '2019-01-04 16:35:12', '2019-08-22 14:12:40', NULL);
INSERT INTO `bjy_categories` VALUES (6, '技术之外', 'outside-of-technology', '技术之外', '关于技术之外的文章', 6, 0, '2019-08-22 14:16:13', '2019-08-22 14:16:13', NULL);
INSERT INTO `bjy_categories` VALUES (4, '前端', 'front-end', 'html,css,js,jq', '关于前端的文章', 3, 0, '2019-08-22 14:14:12', '2019-08-22 14:14:12', NULL);
INSERT INTO `bjy_categories` VALUES (5, '服务器', 'server', 'linux', '关于服务器的文章', 5, 0, '2019-08-22 14:14:45', '2019-08-22 14:14:45', NULL);
INSERT INTO `bjy_categories` VALUES (7, '小程序', 'applets', '小程序', '关于小程序的文章', 4, 0, '2019-08-22 14:17:03', '2019-08-22 14:17:03', NULL);

-- ----------------------------
-- Table structure for bjy_comments
-- ----------------------------
DROP TABLE IF EXISTS `bjy_comments`;
CREATE TABLE `bjy_comments`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `socialite_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论用户id 关联socialite_user表的id',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1：文章评论',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父级id',
  `article_id` int(10) UNSIGNED NOT NULL COMMENT '文章id',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `status` tinyint(1) NOT NULL COMMENT '1:已审核 0：未审核',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bjy_comments
-- ----------------------------
INSERT INTO `bjy_comments` VALUES (1, 1, 1, 0, 1, '评论的内容', 1, '2017-07-16 07:35:12', '2016-07-16 07:35:12', NULL);

-- ----------------------------
-- Table structure for bjy_configs
-- ----------------------------
DROP TABLE IF EXISTS `bjy_configs`;
CREATE TABLE `bjy_configs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '配置项键名',
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '配置项键值 1表示开启 0 关闭',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 173 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bjy_configs
-- ----------------------------
INSERT INTO `bjy_configs` VALUES (101, 'app.name', '邓荣光博客', '2018-08-22 21:03:01', '2018-08-22 21:03:01', NULL);
INSERT INTO `bjy_configs` VALUES (102, 'bjyblog.head.keywords', '个人博客,博客模板,thinkphp,laravel博客,php博客,技术博客,邓荣光', '2018-08-22 21:03:01', '2018-08-22 21:03:01', NULL);
INSERT INTO `bjy_configs` VALUES (103, 'bjyblog.head.description', '邓荣光的php博客,个人技术博客,bjyblog,bjyadmin官方网站', '2018-08-22 21:03:01', '2018-08-22 21:03:01', NULL);
INSERT INTO `bjy_configs` VALUES (107, 'bjyblog.water.text', '', '2018-08-22 21:03:01', '2019-08-22 15:32:06', NULL);
INSERT INTO `bjy_configs` VALUES (109, 'bjyblog.water.size', '15', '2018-08-22 21:03:01', '2018-08-22 21:03:01', NULL);
INSERT INTO `bjy_configs` VALUES (110, 'bjyblog.water.color', '', '2018-08-22 21:03:01', '2019-08-22 15:32:06', NULL);
INSERT INTO `bjy_configs` VALUES (117, 'bjyblog.icp', '豫ICP备14009546号-3', '2018-08-22 21:03:01', '2018-08-22 21:03:01', NULL);
INSERT INTO `bjy_configs` VALUES (118, 'bjyblog.admin_email', 'gloryisable@gmail.com', '2018-08-22 21:03:01', '2019-08-22 14:00:31', NULL);
INSERT INTO `bjy_configs` VALUES (119, 'bjyblog.copyright_word', '本文为邓荣光原创文章,转载无需和我联系,但请注明来自<a href=\"http://\">邓荣光博客</a>http://baijunyao.com', '2018-08-22 21:03:01', '2019-08-22 14:27:06', NULL);
INSERT INTO `bjy_configs` VALUES (123, 'bjyblog.statistics', '', '2018-08-25 17:04:02', '2018-08-25 17:04:02', NULL);
INSERT INTO `bjy_configs` VALUES (125, 'bjyblog.author', '邓荣光', '2018-08-22 21:03:01', '2019-08-22 14:25:45', NULL);
INSERT INTO `bjy_configs` VALUES (128, 'bjyblog.baidu_site_url', '', '2018-08-22 21:03:01', '2018-08-22 21:03:01', NULL);
INSERT INTO `bjy_configs` VALUES (141, 'bjyblog.alt_word', '邓荣光博客', '2018-08-22 21:03:01', '2019-08-22 14:27:06', NULL);
INSERT INTO `bjy_configs` VALUES (142, 'mail.host', '', '2018-08-22 21:03:01', '2018-08-22 21:03:01', NULL);
INSERT INTO `bjy_configs` VALUES (143, 'mail.username', '', '2018-08-22 21:03:01', '2018-08-22 21:03:01', NULL);
INSERT INTO `bjy_configs` VALUES (144, 'mail.password', '', '2018-08-22 21:03:01', '2018-08-22 21:03:01', NULL);
INSERT INTO `bjy_configs` VALUES (145, 'mail.from.name', '', '2018-08-22 21:03:01', '2018-08-22 21:03:01', NULL);
INSERT INTO `bjy_configs` VALUES (148, 'bjyblog.notification_email', 'gloryisable@gmail.com', '2018-08-22 21:03:01', '2019-08-22 14:00:31', NULL);
INSERT INTO `bjy_configs` VALUES (149, 'bjyblog.head.title', '邓荣光博客,技术博客,个人博客模板, php博客系统', '2018-08-22 21:03:01', '2018-08-22 21:03:01', NULL);
INSERT INTO `bjy_configs` VALUES (150, 'bjyblog.qq_qun.article_id', '1', '2018-08-22 21:03:01', '2018-08-22 21:03:01', NULL);
INSERT INTO `bjy_configs` VALUES (151, 'bjyblog.qq_qun.number', '', '2018-08-22 21:03:01', '2019-08-22 14:04:06', NULL);
INSERT INTO `bjy_configs` VALUES (152, 'bjyblog.qq_qun.code', '<a target=\"_blank\" href=\"//shang.qq.com/wpa/qunwpa?idkey=bba3fea90444ee6caf1fb1366027873fe14e86bada254d41ce67768fadd729ee\"><img border=\"0\" src=\"//pub.idqqimg.com/wpa/images/group.png\" alt=\"白俊遥博客群\" title=\"白俊遥博客群\"></a>', '2018-08-22 21:03:01', '2018-08-22 21:03:01', NULL);
INSERT INTO `bjy_configs` VALUES (153, 'bjyblog.qq_qun.or_code', '/uploads/images/default.png', '2018-08-22 21:03:01', '2018-08-22 21:03:01', NULL);
INSERT INTO `bjy_configs` VALUES (154, 'mail.driver', 'smtp', '2018-08-22 21:03:01', '2018-08-22 21:03:01', NULL);
INSERT INTO `bjy_configs` VALUES (155, 'mail.port', '465', '2018-08-22 21:03:01', '2018-08-22 21:03:01', NULL);
INSERT INTO `bjy_configs` VALUES (156, 'mail.encryption', 'ssl', '2018-08-22 21:03:01', '2018-08-22 21:03:01', NULL);
INSERT INTO `bjy_configs` VALUES (157, 'mail.from.address', '', '2018-08-22 21:03:01', '2018-08-22 21:03:01', NULL);
INSERT INTO `bjy_configs` VALUES (158, 'sentry.dsn', '', '2018-08-22 21:03:01', '2018-08-22 21:03:01', NULL);
INSERT INTO `bjy_configs` VALUES (159, 'database.connections.mysql.dump.dump_binary_path', '/bin/', '2018-12-03 21:39:22', '2018-12-03 21:39:22', NULL);
INSERT INTO `bjy_configs` VALUES (160, 'filesystems.disks.oss.access_id', '', '2018-12-04 22:29:52', '2018-12-04 22:29:52', NULL);
INSERT INTO `bjy_configs` VALUES (161, 'filesystems.disks.oss.access_key', '', '2018-12-04 22:29:52', '2018-12-04 22:29:52', NULL);
INSERT INTO `bjy_configs` VALUES (162, 'filesystems.disks.oss.bucket', '', '2018-12-04 22:29:52', '2018-12-04 22:29:52', NULL);
INSERT INTO `bjy_configs` VALUES (163, 'filesystems.disks.oss.endpoint', '', '2018-12-04 22:29:52', '2018-12-04 22:29:52', NULL);
INSERT INTO `bjy_configs` VALUES (164, 'backup.backup.destination.disks', '[]', '2018-12-04 22:29:52', '2018-12-04 22:29:52', NULL);
INSERT INTO `bjy_configs` VALUES (165, 'backup.notifications.mail.to', '', '2018-12-04 22:29:52', '2018-12-04 22:29:52', NULL);
INSERT INTO `bjy_configs` VALUES (166, 'app.locale', 'zh-CN', '2019-02-26 21:10:52', '2019-08-22 13:58:52', NULL);
INSERT INTO `bjy_configs` VALUES (167, 'bjyblog.seo.use_slug', 'false', '2019-05-19 19:43:00', '2019-05-19 19:43:00', NULL);
INSERT INTO `bjy_configs` VALUES (168, 'bjyblog.social_share.select_plugin', 'sharejs', '2019-05-27 22:22:00', '2019-05-27 22:22:00', NULL);
INSERT INTO `bjy_configs` VALUES (169, 'bjyblog.social_share.jssocials_config', '{\r\n    shares: [\"email\", \"twitter\", \"facebook\", \"googleplus\", \"linkedin\", \"pinterest\", \"stumbleupon\", \"pocket\", \"whatsapp\", \"messenger\", \"vkontakte\", \"telegram\", \"line\"],\r\n    showLabel: false,\r\n    showCount: false,\r\n    shareIn: \"popup\"\r\n}', '2019-05-27 22:22:00', '2019-05-27 22:22:00', NULL);
INSERT INTO `bjy_configs` VALUES (170, 'bjyblog.social_share.sharejs_config', '{\r\n    sites: [\"weibo\", \"qq\", \"wechat\", \"douban\", \"qzone\", \"linkedin\", \"facebook\", \"twitter\", \"google\"]\r\n}', '2019-05-27 22:22:00', '2019-05-27 22:22:00', NULL);
INSERT INTO `bjy_configs` VALUES (171, 'bjyblog.logo_with_php_tag', 'false', '2019-05-28 23:15:00', '2019-08-22 13:59:16', NULL);
INSERT INTO `bjy_configs` VALUES (172, 'bjyblog.cdn_domain', '', '2019-08-05 22:15:00', '2019-08-05 22:15:00', NULL);

-- ----------------------------
-- Table structure for bjy_consoles
-- ----------------------------
DROP TABLE IF EXISTS `bjy_consoles`;
CREATE TABLE `bjy_consoles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bjy_consoles
-- ----------------------------
INSERT INTO `bjy_consoles` VALUES (1, 'App\\Console\\Commands\\Upgrade\\V5_5_5_0', '2018-09-27 22:26:00', '2018-09-27 22:26:00', NULL);
INSERT INTO `bjy_consoles` VALUES (3, 'App\\Console\\Commands\\Upgrade\\V5_5_6_0', '2018-09-28 10:26:00', '2018-09-28 10:26:00', NULL);
INSERT INTO `bjy_consoles` VALUES (4, 'App\\Console\\Commands\\Upgrade\\V5_5_7_0', '2018-11-06 22:26:00', '2018-11-06 22:26:00', NULL);
INSERT INTO `bjy_consoles` VALUES (5, 'App\\Console\\Commands\\Upgrade\\V5_5_8_0', '2018-12-31 21:03:00', '2018-12-31 21:03:00', NULL);
INSERT INTO `bjy_consoles` VALUES (6, 'App\\Console\\Commands\\Upgrade\\V5_5_9_0', '2018-12-31 21:03:00', '2018-12-31 21:03:00', NULL);
INSERT INTO `bjy_consoles` VALUES (7, 'App\\Console\\Commands\\Upgrade\\V5_5_10_0', '2018-12-31 21:03:00', '2018-12-31 21:03:00', NULL);
INSERT INTO `bjy_consoles` VALUES (8, 'App\\Console\\Commands\\Upgrade\\V5_5_11_0', '2019-02-26 21:10:00', '2019-02-26 21:10:00', NULL);
INSERT INTO `bjy_consoles` VALUES (9, 'App\\Console\\Commands\\Upgrade\\V5_8_1_0', '2019-02-26 21:10:00', '2019-02-26 21:10:00', NULL);
INSERT INTO `bjy_consoles` VALUES (10, 'App\\Console\\Commands\\Upgrade\\V5_8_2_0', '2019-02-26 21:10:00', '2019-02-26 21:10:00', NULL);
INSERT INTO `bjy_consoles` VALUES (11, 'App\\Console\\Commands\\Upgrade\\V5_8_3_0', '2019-05-17 21:10:00', '2019-05-17 21:10:00', NULL);
INSERT INTO `bjy_consoles` VALUES (12, 'App\\Console\\Commands\\Upgrade\\V5_8_4_0', '2019-05-19 18:28:00', '2019-05-19 18:28:00', NULL);
INSERT INTO `bjy_consoles` VALUES (13, 'App\\Console\\Commands\\Upgrade\\V5_8_5_0', '2019-06-01 18:28:00', '2019-06-01 18:28:00', NULL);
INSERT INTO `bjy_consoles` VALUES (14, 'App\\Console\\Commands\\Upgrade\\V5_8_6_0', '2019-06-22 18:28:00', '2019-06-22 18:28:00', NULL);
INSERT INTO `bjy_consoles` VALUES (15, 'App\\Console\\Commands\\Upgrade\\V5_8_7_0', '2019-06-28 18:28:00', '2019-06-28 18:28:00', NULL);
INSERT INTO `bjy_consoles` VALUES (16, 'App\\Console\\Commands\\Upgrade\\V5_8_8_0', '2019-07-01 22:28:00', '2019-07-01 22:28:00', NULL);
INSERT INTO `bjy_consoles` VALUES (18, 'App\\Console\\Commands\\Upgrade\\V5_8_9_0', '2019-07-27 14:28:00', '2019-07-27 14:28:00', NULL);
INSERT INTO `bjy_consoles` VALUES (19, 'App\\Console\\Commands\\Upgrade\\V5_8_10_0', '2019-08-02 22:01:00', '2019-08-02 22:01:00', NULL);
INSERT INTO `bjy_consoles` VALUES (20, 'App\\Console\\Commands\\Upgrade\\V5_8_11_0', '2019-08-05 22:11:00', '2019-08-05 22:11:00', NULL);

-- ----------------------------
-- Table structure for bjy_failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `bjy_failed_jobs`;
CREATE TABLE `bjy_failed_jobs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bjy_friendship_links
-- ----------------------------
DROP TABLE IF EXISTS `bjy_friendship_links`;
CREATE TABLE `bjy_friendship_links`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '链接名',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '链接地址',
  `sort` tinyint(1) NULL DEFAULT 1 COMMENT '排序',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bjy_friendship_links
-- ----------------------------
INSERT INTO `bjy_friendship_links` VALUES (1, '白俊遥博客', 'https://baijunyao.com', 1, '2017-07-16 07:35:12', '2016-07-16 07:35:12', NULL);
INSERT INTO `bjy_friendship_links` VALUES (2, '已删除', 'https://deleted.com', 2, '2019-01-04 16:35:12', '2019-01-04 16:35:12', '2019-01-04 16:35:12');

-- ----------------------------
-- Table structure for bjy_git_projects
-- ----------------------------
DROP TABLE IF EXISTS `bjy_git_projects`;
CREATE TABLE `bjy_git_projects`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '项目主键',
  `sort` tinyint(4) NOT NULL DEFAULT 1 COMMENT '排序',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:github 2:gitee',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '项目名',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bjy_git_projects
-- ----------------------------
INSERT INTO `bjy_git_projects` VALUES (1, 1, 1, 'baijunyao/thinkphp-bjyadmin', '2017-10-23 21:09:04', '2017-10-26 21:42:40', NULL);
INSERT INTO `bjy_git_projects` VALUES (2, 2, 2, 'baijunyao/thinkphp-bjyadmin', '2017-10-26 21:43:07', '2017-10-26 22:02:28', NULL);
INSERT INTO `bjy_git_projects` VALUES (3, 3, 1, 'baijunyao/thinkphp-bjyblog', '2017-10-26 21:43:26', '2017-10-26 22:02:40', NULL);
INSERT INTO `bjy_git_projects` VALUES (4, 4, 2, 'baijunyao/thinkbjy', '2017-10-26 21:43:56', '2017-10-26 22:02:59', NULL);
INSERT INTO `bjy_git_projects` VALUES (5, 5, 1, 'baijunyao/laravel-bjyadmin', '2017-10-26 22:03:15', '2017-10-26 22:03:15', NULL);
INSERT INTO `bjy_git_projects` VALUES (6, 6, 1, 'baijunyao/laravel-bjyblog', '2017-10-26 22:03:23', '2017-10-26 22:03:23', NULL);
INSERT INTO `bjy_git_projects` VALUES (7, 7, 2, 'baijunyao/laravel-bjyadmin', '2017-10-26 22:07:24', '2017-10-26 22:07:59', NULL);
INSERT INTO `bjy_git_projects` VALUES (8, 8, 2, 'baijunyao/laravel-bjyblog', '2017-10-26 22:07:47', '2017-10-26 22:08:04', NULL);
INSERT INTO `bjy_git_projects` VALUES (9, 9, 2, 'deleted/deleted', '2019-01-04 16:35:12', '2019-01-04 16:35:12', '2019-01-04 16:35:12');

-- ----------------------------
-- Table structure for bjy_jobs
-- ----------------------------
DROP TABLE IF EXISTS `bjy_jobs`;
CREATE TABLE `bjy_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED NULL DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `bjy_jobs_queue_reserved_at_index`(`queue`, `reserved_at`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bjy_migrations
-- ----------------------------
DROP TABLE IF EXISTS `bjy_migrations`;
CREATE TABLE `bjy_migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bjy_migrations
-- ----------------------------
INSERT INTO `bjy_migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `bjy_migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `bjy_migrations` VALUES (3, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `bjy_migrations` VALUES (4, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `bjy_migrations` VALUES (5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `bjy_migrations` VALUES (6, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `bjy_migrations` VALUES (7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `bjy_migrations` VALUES (8, '2017_07_11_225347_create_article_tags_table', 1);
INSERT INTO `bjy_migrations` VALUES (9, '2017_07_11_225347_create_articles_table', 1);
INSERT INTO `bjy_migrations` VALUES (10, '2017_07_11_225347_create_categories_table', 1);
INSERT INTO `bjy_migrations` VALUES (11, '2017_07_11_225347_create_comments_table', 1);
INSERT INTO `bjy_migrations` VALUES (12, '2017_07_11_225347_create_configs_table', 1);
INSERT INTO `bjy_migrations` VALUES (13, '2017_07_11_225347_create_friendship_links_table', 1);
INSERT INTO `bjy_migrations` VALUES (14, '2017_07_11_225347_create_notes_table', 1);
INSERT INTO `bjy_migrations` VALUES (15, '2017_07_11_225347_create_socialite_users_table', 1);
INSERT INTO `bjy_migrations` VALUES (16, '2017_07_11_225347_create_tags_table', 1);
INSERT INTO `bjy_migrations` VALUES (17, '2017_08_26_211441_create_jobs_table', 1);
INSERT INTO `bjy_migrations` VALUES (18, '2017_08_26_212556_create_failed_jobs_table', 1);
INSERT INTO `bjy_migrations` VALUES (19, '2017_10_18_203752_create_git_projects_table', 1);
INSERT INTO `bjy_migrations` VALUES (20, '2018_08_01_191920_create_navs_table', 1);
INSERT INTO `bjy_migrations` VALUES (21, '2018_09_04_204500_create_sites_table', 1);
INSERT INTO `bjy_migrations` VALUES (22, '2018_09_26_144126_create_consoles_table', 1);
INSERT INTO `bjy_migrations` VALUES (23, '2019_05_07_225949_create_socialite_clients_table', 1);

-- ----------------------------
-- Table structure for bjy_navs
-- ----------------------------
DROP TABLE IF EXISTS `bjy_navs`;
CREATE TABLE `bjy_navs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '菜单主键',
  `sort` tinyint(4) NOT NULL DEFAULT 1 COMMENT '排序',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '链接',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bjy_navs
-- ----------------------------
INSERT INTO `bjy_navs` VALUES (1, 1, '随言碎语', 'note', '2018-08-04 12:41:26', '2018-08-04 12:41:26', NULL);
INSERT INTO `bjy_navs` VALUES (2, 1, '开源项目', 'git', '2018-08-04 12:41:26', '2018-08-04 12:41:26', NULL);
INSERT INTO `bjy_navs` VALUES (3, 1, '已删除', 'deleted', '2019-01-04 16:35:12', '2019-01-04 16:35:12', '2019-01-04 16:35:12');

-- ----------------------------
-- Table structure for bjy_notes
-- ----------------------------
DROP TABLE IF EXISTS `bjy_notes`;
CREATE TABLE `bjy_notes`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bjy_notes
-- ----------------------------
INSERT INTO `bjy_notes` VALUES (1, '技术这东西；懂的越多；不懂的就越多；', '2017-07-18 07:35:12', '2016-07-18 07:35:12', NULL);
INSERT INTO `bjy_notes` VALUES (2, '“如果我拒绝了你。是不是以后就不能找你修电脑了！”', '2019-01-04 16:35:12', '2019-08-22 14:18:53', NULL);

-- ----------------------------
-- Table structure for bjy_oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `bjy_oauth_access_tokens`;
CREATE TABLE `bjy_oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `bjy_oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bjy_oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `bjy_oauth_auth_codes`;
CREATE TABLE `bjy_oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bjy_oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `bjy_oauth_clients`;
CREATE TABLE `bjy_oauth_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `bjy_oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bjy_oauth_clients
-- ----------------------------
INSERT INTO `bjy_oauth_clients` VALUES (1, NULL, 'laravel-bjyblog Password Grant Client', '', 'http://localhost', 0, 1, 0, '2019-06-29 20:35:12', '2019-06-29 20:35:12');

-- ----------------------------
-- Table structure for bjy_oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `bjy_oauth_personal_access_clients`;
CREATE TABLE `bjy_oauth_personal_access_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `bjy_oauth_personal_access_clients_client_id_index`(`client_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for bjy_oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `bjy_oauth_refresh_tokens`;
CREATE TABLE `bjy_oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `bjy_oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bjy_password_resets
-- ----------------------------
DROP TABLE IF EXISTS `bjy_password_resets`;
CREATE TABLE `bjy_password_resets`  (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `bjy_password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bjy_sites
-- ----------------------------
DROP TABLE IF EXISTS `bjy_sites`;
CREATE TABLE `bjy_sites`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `socialite_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '第三方用户id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '网站名',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '网站链接',
  `audit` tinyint(4) NOT NULL DEFAULT 0 COMMENT '审核状态1为通过审核',
  `sort` tinyint(4) NOT NULL DEFAULT 0 COMMENT '排序',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bjy_sites
-- ----------------------------
INSERT INTO `bjy_sites` VALUES (1, 1, '白俊遥博客', '白俊遥的个人博客', 'https://baijunyao.com', 0, 1, '2018-11-15 20:35:12', '2018-11-15 20:35:12', NULL);
INSERT INTO `bjy_sites` VALUES (2, 1, '已删除', '用于测试', 'https://deleted.com', 1, 1, '2019-01-04 16:35:12', '2019-01-04 16:35:12', '2019-01-04 16:35:12');

-- ----------------------------
-- Table structure for bjy_socialite_clients
-- ----------------------------
DROP TABLE IF EXISTS `bjy_socialite_clients`;
CREATE TABLE `bjy_socialite_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `client_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `client_secret` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bjy_socialite_clients
-- ----------------------------
INSERT INTO `bjy_socialite_clients` VALUES (1, 'qq', 'qq', '', '', '2019-05-08 22:13:54', '2019-05-08 22:13:54', NULL);
INSERT INTO `bjy_socialite_clients` VALUES (2, 'weibo', 'weibo', '', '', '2019-05-08 22:13:54', '2019-05-08 22:13:54', NULL);
INSERT INTO `bjy_socialite_clients` VALUES (3, 'github', 'github', '', '', '2019-05-08 22:13:54', '2019-05-08 22:13:54', NULL);
INSERT INTO `bjy_socialite_clients` VALUES (4, 'google', 'google', '', '', '2019-05-14 23:26:38', '2019-05-14 23:26:38', NULL);
INSERT INTO `bjy_socialite_clients` VALUES (5, 'facebook', 'facebook', '', '', '2019-05-14 23:26:38', '2019-05-14 23:26:38', NULL);
INSERT INTO `bjy_socialite_clients` VALUES (6, 'vkontakte', 'vk', '', '', '2019-07-01 23:26:38', '2019-07-01 23:26:38', NULL);

-- ----------------------------
-- Table structure for bjy_socialite_users
-- ----------------------------
DROP TABLE IF EXISTS `bjy_socialite_users`;
CREATE TABLE `bjy_socialite_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `socialite_client_id` tinyint(1) NOT NULL DEFAULT 1 COMMENT '类型 1：QQ  2：新浪微博 3：github',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '第三方昵称',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '头像',
  `openid` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `access_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'access_token token',
  `last_login_ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `login_times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '登录次数',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `is_admin` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否是admin',
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bjy_socialite_users
-- ----------------------------
INSERT INTO `bjy_socialite_users` VALUES (1, 1, '白俊遥', '/uploads/article/default.jpg', '1', '', '127.0.0.1', 1, 'baijunyao@baijunyao.com', 0, NULL, '2017-07-24 07:35:12', '2017-07-24 07:35:12', NULL);
INSERT INTO `bjy_socialite_users` VALUES (2, 1, '已删除', '/uploads/article/default.jpg', '2', '', '127.0.0.1', 1, 'deleted@baijunyao.com', 0, NULL, '2019-01-04 16:35:12', '2019-01-04 16:35:12', '2019-01-04 16:35:12');

-- ----------------------------
-- Table structure for bjy_tags
-- ----------------------------
DROP TABLE IF EXISTS `bjy_tags`;
CREATE TABLE `bjy_tags`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '标签主键',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名',
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'slug',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bjy_tags
-- ----------------------------
INSERT INTO `bjy_tags` VALUES (1, 'Laravel', 'laravel', '2017-07-16 07:35:12', '2019-08-22 14:08:50', NULL);
INSERT INTO `bjy_tags` VALUES (5, 'ThinkPHP', 'thinkphp', '2019-08-22 14:09:10', '2019-08-22 14:09:10', NULL);
INSERT INTO `bjy_tags` VALUES (4, 'HTML', 'html', '2019-08-22 14:08:44', '2019-08-22 14:08:44', NULL);
INSERT INTO `bjy_tags` VALUES (6, 'PHP', 'php', '2019-08-22 14:09:17', '2019-08-22 14:09:17', NULL);
INSERT INTO `bjy_tags` VALUES (7, '微信小程序', 'wechat-applet', '2019-08-22 14:09:25', '2019-08-22 14:09:25', NULL);
INSERT INTO `bjy_tags` VALUES (8, 'JavaScript', 'javascript', '2019-08-22 14:09:34', '2019-08-22 14:09:34', NULL);
INSERT INTO `bjy_tags` VALUES (9, 'jQuery', 'jquery', '2019-08-22 14:09:39', '2019-08-22 14:09:39', NULL);
INSERT INTO `bjy_tags` VALUES (10, 'MySQL', 'mysql', '2019-08-22 14:09:47', '2019-08-22 14:09:47', NULL);
INSERT INTO `bjy_tags` VALUES (11, 'Linux', 'linux', '2019-08-22 14:10:11', '2019-08-22 14:10:11', NULL);
INSERT INTO `bjy_tags` VALUES (12, 'CSS', 'css', '2019-08-22 14:10:22', '2019-08-22 14:10:22', NULL);
INSERT INTO `bjy_tags` VALUES (13, '服务器', 'server', '2019-08-22 14:11:05', '2019-08-22 14:11:05', NULL);
INSERT INTO `bjy_tags` VALUES (14, '酸酸乳', 'yogurt', '2019-08-22 14:11:08', '2019-08-22 14:11:08', NULL);
INSERT INTO `bjy_tags` VALUES (15, 'mpvue', 'mpvue', '2019-08-22 15:32:57', '2019-08-22 15:32:57', NULL);
INSERT INTO `bjy_tags` VALUES (16, 'api', 'api', '2019-08-22 15:40:15', '2019-08-22 15:40:15', NULL);
INSERT INTO `bjy_tags` VALUES (17, 'json', 'json', '2019-08-22 15:40:24', '2019-08-22 15:40:24', NULL);

-- ----------------------------
-- Table structure for bjy_users
-- ----------------------------
DROP TABLE IF EXISTS `bjy_users`;
CREATE TABLE `bjy_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `bjy_users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bjy_users
-- ----------------------------
INSERT INTO `bjy_users` VALUES (1, 'test', 'test@test.com', NULL, '$2y$10$/7AAd.blTFWiqGxuVfNTGO4ApPqCsiP8IHFoX6PWuWz9zMn0IpdZ6', 'qvSRGgtTVYlodezCgDvF8poGlJoFe1KQ75AT2vYg9gCLnOGJUiWswkRAcWFk', '2016-10-22 07:35:12', '2016-10-22 07:35:12', NULL);
INSERT INTO `bjy_users` VALUES (2, 'Administrator', '1005398026@qq.com', NULL, '$2y$10$CsY6i7HuWyImoUmc8R3w2OnXgRLaSla7xq7EGF/Ulgu7xnDNfye7W', 's3w8sydLKM45HZLrbtr4G0ANaLPSi5pumeqc9YEtlc563ygVS9UkC1ehC927', '2019-01-04 15:35:12', '2019-08-22 14:06:22', NULL);

SET FOREIGN_KEY_CHECKS = 1;
