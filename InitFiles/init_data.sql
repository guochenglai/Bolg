###################################  readme  ###################################
#
#  该文件只用来初始化数据库内容，需要有限执行dblog.sql创建数据库
#
###################################  readme  ###################################
# 清空文章表
TRUNCATE TABLE `dblog`.`biz_article`;

# 清空标签表
TRUNCATE TABLE `dblog`.`biz_tags`;
# 初始化标签
INSERT INTO `dblog`.`biz_tags` VALUES ('1', 'Leetcode', null, now(), now());
INSERT INTO `dblog`.`biz_tags` VALUES ('2', 'Java', null, now(), now());
INSERT INTO `dblog`.`biz_tags` VALUES ('3', 'C++', null, now(), now());
INSERT INTO `dblog`.`biz_tags` VALUES ('4', 'C#', null, now(), now());
INSERT INTO `dblog`.`biz_tags` VALUES ('5', 'Other', null, now(), now());

# 清空文章分类表
TRUNCATE TABLE `dblog`.`biz_type`;
# 初始化文章分类
INSERT INTO `dblog`.`biz_type` VALUES ('1', null, 'Leetcode', 'LeetCode题解', '1', 'fa fa-css3', '1', now(), now());
INSERT INTO `dblog`.`biz_type` VALUES ('2', null, 'SystemDesign', '系统设计', '1', 'fa fa-folder-open-o', '1', now(), now());
INSERT INTO `dblog`.`biz_type` VALUES ('3', null, 'Technology', 'Java、C++、C#、MySQL等技术文章分享', '2', 'fa fa-coffee', '1', now(), now());

# 清空系统配置表
TRUNCATE TABLE `dblog`.`sys_config`;
# 初始化系统配置
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (1, 'homeDesc', 'Welcome', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (2, 'homeKeywords', '郭承来', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (3, 'domain', 'guochenglai.com', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (4, 'cmsUrl', 'http://104.41.185.226:8085', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (5, 'siteUrl', 'http://104.41.185.226:8443', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (6, 'siteName', '语言', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (7, 'siteDesc', '心之所向，无所不成', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (8, 'siteFavicon', 'http://104.41.185.226:8443/img/favicon.png', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (9, 'staticWebSite', 'http://104.41.185.226:8443', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (10, 'authorName', '郭承来', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (11, 'authorEmail', 'gcl272633743@163.com', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (13, 'qq', '272633743', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (16, 'maintenance', '0', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (17, 'maintenanceDate', now(), now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (18, 'comment', '1', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (19, 'qiniuBasePath', NULL, now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (20, 'qiniuAccessKey', NULL, now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (21, 'qiniuSecretKey', NULL, now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (22, 'qiniuBucketName', NULL, now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (23, 'baiduPushToken', NULL, now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (24, 'wxPraiseCode', NULL, now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (25, 'zfbPraiseCode', NULL, now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (26, 'baiduApiAk', 'NwHaYlGalDEpgxm46xBaC3T9', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (27, 'spiderConfig', '{\r\n            imooc: {\r\n                domain: \"www.imooc.com\",\r\n                titleRegex: \"//span[@class=js-title]/html()\",\r\n                authorRegex: \"//div[@class=name_con]/p[@class=name]/a[@class=nick]/html()\",\r\n                releaseDateRegex: \"//div[@class=\'dc-profile\']/div[@class=\'l\']/span[@class=\'spacer\']/text()\",\r\n                contentRegex: \"//div[@class=detail-content]/html()\",\r\n                targetLinksRegex: \"/article/[0-9]{1,10}\",\r\n                tagRegex: \"//div[@class=cat-box]/div[@class=cat-wrap]/a[@class=cat]/html()\",\r\n                header: [\r\n                    \"Host=www.imooc.com\",\r\n                    \"Referer=https://www.imooc.com\"\r\n                ],\r\n                entryUrls: \'https://www.imooc.com/u/{uid}/articles?page={curPage}\'\r\n            },\r\n            csdn: {\r\n                domain: \"blog.csdn.net\",\r\n                titleRegex: \"//h1[@class=title-article]/html()\",\r\n                authorRegex: \"//a[@class=follow-nickName]/html()\",\r\n                releaseDateRegex: \"//div[@class=\'article-bar-top\']/span[@class=\'time\']/text()\",\r\n                contentRegex: \"//div[@class=article_content]/html()\",\r\n                targetLinksRegex: \".*blog\\\\.csdn\\\\.net/{uid}/article/details/[0-9a-zA-Z]{1,15}\",\r\n                tagRegex: \"//span[@class=artic-tag-box]/a[@class=tag-link]/html()\",\r\n                header: [\r\n                    \"Host=blog.csdn.net\",\r\n                    \"Referer=https://blog.csdn.net/{uid}/article/list/1\"\r\n                ],\r\n                entryUrls: \'https://blog.csdn.net/{uid}/article/list/{curPage}\'\r\n            },\r\n            iteye: {\r\n                domain: \"{uid}.iteye.com\",\r\n                titleRegex: \"//div[@class=blog_title]/h3/a/html()\",\r\n                authorRegex: \"//div[@id=blog_owner_name]/html()\",\r\n                releaseDateRegex: \"//div[@class=blog_bottom]/ul/li/html()\",\r\n                contentRegex: \"//div[@class=blog_content]/html()\",\r\n                targetLinksRegex: \".*{uid}\\\\.iteye\\\\.com/blog/[0-9]+\",\r\n                tagRegex: \"//div[@class=news_tag]/a/html()\",\r\n                header: [\r\n                    \"Host={uid}.iteye.com\",\r\n                    \"Referer=http://{uid}.iteye.com/\"\r\n                ],\r\n                entryUrls: \'http://{uid}.iteye.com/?page={curPage}\'\r\n            },\r\n            csblogs: {\r\n                domain: \"www.cnblogs.com\",\r\n                titleRegex: \"//a[@id=cb_post_title_url]/html()\",\r\n                authorRegex: \"//div[@class=postDesc]/a[1]/html()\",\r\n                releaseDateRegex: \"//span[@id=post-date]/html()\",\r\n                contentRegex: \"//div[@id=cnblogs_post_body]/html()\",\r\n                targetLinksRegex: \".*www\\\\.cnblogs\\\\.com/{uid}/p/[\\\\w\\\\d]+\\\\.html\",\r\n                tagRegex: \"//div[@id=EntryTag]/a/html()\",\r\n                header: [\r\n                    \"Host=www.cnblogs.com\",\r\n                    \"Referer=https://www.cnblogs.com/\"\r\n                ],\r\n                entryUrls: \'https://www.cnblogs.com/{uid}/default.html?page={curPage}\'\r\n            }\r\n        }', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (28, 'anonymous', '1', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (29, 'editorPlaceholder', 'Say Something', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (30, 'editorAlert', 'Be Civilization and Harmony', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (31, 'defaultUserAvatar', '[\r\n	\"http://104.41.185.226:8443/img/random/user/1.jpg\",\r\n	\"http://104.41.185.226:8443/img/random/user/2.jpg\",\r\n	\"http://104.41.185.226:8443/img/random/user/3.jpg\",\r\n	\"http://104.41.185.226:8443/img/random/user/4.jpg\",\r\n	\"http://104.41.185.226:8443/img/random/user/5.jpg\",\r\n	\"http://104.41.185.226:8443/img/random/user/6.jpg\",\r\n	\"http://104.41.185.226:8443/img/random/user/7.jpg\",\r\n	\"http://104.41.185.226:8443/img/random/user/8.jpg\",\r\n	\"http://104.41.185.226:8443/img/random/user/9.jpg\",\r\n	\"http://104.41.185.226:8443/img/random/user/10.jpg\",\r\n	\"http://104.41.185.226:8443/img/random/user/11.jpg\",\r\n	\"http://104.41.185.226:8443/img/random/user/12.jpg\",\r\n	\"http://104.41.185.226:8443/img/random/user/13.jpg\",\r\n	\"http://104.41.185.226:8443/img/random/user/14.jpg\",\r\n	\"http://104.41.185.226:8443/img/random/user/15.jpg\",\r\n	\"http://104.41.185.226:8443/img/random/user/16.jpg\",\r\n	\"http://104.41.185.226:8443/img/random/user/17.jpg\",\r\n	\"http://104.41.185.226:8443/img/random/user/18.jpg\",\r\n	\"http://104.41.185.226:8443/img/random/user/19.jpg\",\r\n	\"http://104.41.185.226:8443/img/random/user/20.jpg\"\r\n]', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (32, 'sessionTimeOut', '5', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (33, 'sessionTimeOutUnit', 'MINUTES', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (34, 'loginRetryNum', '5', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (35, 'installdate', now(), now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (36, 'copyright', 'Copyright guochenglai', now(), now());
INSERT INTO `dblog`.`sys_config`(`id`, `config_key`, `config_value`, `create_time`, `update_time`) VALUES (37, 'dynamicTitle', '', now(), now());

# 清空系统模板表
TRUNCATE TABLE `dblog`.`sys_template`;
# 初始化系统模板
INSERT INTO `dblog`.`sys_template` VALUES ('1', 'TM_SITEMAP_XML', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<urlset xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\" xsi:schemaLocation=\"http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd\">\r\n	<url>\r\n		<loc>${config.siteUrl}</loc>\r\n		<priority>1.0</priority>\r\n		<lastmod>${.now?string(\"yyyy-MM-dd\")}</lastmod>\r\n		<changefreq>daily</changefreq>\r\n	</url>\r\n	<url>\r\n		<loc>${config.siteUrl}/about</loc>\r\n		<priority>0.6</priority>\r\n		<lastmod>${.now?string(\"yyyy-MM-dd\")}</lastmod>\r\n		<changefreq>daily</changefreq>\r\n	</url>\r\n	<url>\r\n		<loc>${config.siteUrl}/links</loc>\r\n		<priority>0.6</priority>\r\n		<lastmod>${.now?string(\"yyyy-MM-dd\")}</lastmod>\r\n		<changefreq>daily</changefreq>\r\n	</url>\r\n	<url>\r\n		<loc>${config.siteUrl}/guestbook</loc>\r\n		<priority>0.6</priority>\r\n		<lastmod>${.now?string(\"yyyy-MM-dd\")}</lastmod>\r\n		<changefreq>daily</changefreq>\r\n	</url>\r\n	<url>\r\n		<loc>${config.siteUrl}/updateLog</loc>\r\n		<priority>0.6</priority>\r\n		<lastmod>${.now?string(\"yyyy-MM-dd\")}</lastmod>\r\n		<changefreq>daily</changefreq>\r\n	</url>\r\n	<url>\r\n		<loc>${config.siteUrl}/recommended</loc>\r\n		<priority>0.6</priority>\r\n		<lastmod>${.now?string(\"yyyy-MM-dd\")}</lastmod>\r\n		<changefreq>daily</changefreq>\r\n	</url>\r\n	<#list articleList as item>\r\n		<url>\r\n			<loc>${config.siteUrl}/article/${item.id}</loc>\r\n			<priority>0.6</priority>\r\n			<lastmod>${item.updateTime?string(\"yyyy-MM-dd\")}</lastmod>\r\n			<changefreq>daily</changefreq>\r\n		</url>\r\n	</#list>\r\n	<#list articleTypeList as item>\r\n	   <url>\r\n			<loc>${config.siteUrl}/type/${item.id}</loc>\r\n			<priority>0.6</priority>\r\n			<lastmod>${item.updateTime?string(\"yyyy-MM-dd\")}</lastmod>\r\n			<changefreq>daily</changefreq>\r\n		</url>\r\n	</#list>\r\n	\r\n	<#list articleTagsList as item>\r\n	   <url>\r\n			<loc>${config.siteUrl}/tag/${item.id}</loc>\r\n			<priority>0.6</priority>\r\n			<lastmod>${item.updateTime?string(\"yyyy-MM-dd\")}</lastmod>\r\n			<changefreq>daily</changefreq>\r\n		</url>\r\n	</#list>\r\n</urlset>', now(), now());
INSERT INTO `dblog`.`sys_template` VALUES ('2', 'TM_SITEMAP_TXT', '${config.siteUrl}\r\n${config.siteUrl}/about\r\n${config.siteUrl}/links\r\n${config.siteUrl}/guestbook\r\n${config.siteUrl}/updateLog\r\n${config.siteUrl}/recommended\r\n<#list articleList as item>\r\n${config.siteUrl}/article/${item.id}\r\n</#list>\r\n<#list articleTypeList as item>\r\n${config.siteUrl}/type/${item.id}\r\n</#list>\r\n<#list articleTagsList as item>\r\n${config.siteUrl}/tag/${item.id}\r\n</#list>', now(), now());
INSERT INTO `dblog`.`sys_template` VALUES ('3', 'TM_SITEMAP_HTML', '<!DOCTYPE html>\r\n<html lang=\"zh-CN\">\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>\r\n    <title>${config.siteName} 网站地图</title>\r\n    <meta name=\"author\" content=\"SiteMapX.com\"/>\r\n    <meta name=\"robots\" content=\"index,follow\"/>\r\n    <style type=\"text/css\">\r\n        body {\r\n            color: #000000;\r\n            background: #ffffff;\r\n            margin: 20px;\r\n            font-family: Verdana, Arial, Helvetica, sans-serif;\r\n            font-size: 12px;\r\n        }\r\n\r\n        #myTable {\r\n            list-style: none;\r\n            margin: 10px 0px 10px 0px;\r\n            padding: 0px;\r\n            width: 100%;\r\n            min-width: 804px;\r\n        }\r\n\r\n        #myTable li {\r\n            list-style-type: none;\r\n            width: 100%;\r\n            min-width: 404px;\r\n            height: 20px;\r\n            line-height: 20px;\r\n        }\r\n\r\n        .pull-left{\r\n            float: left!important;\r\n        }\r\n        .pull-right{\r\n            float: right!important;\r\n        }\r\n\r\n        #myTable li .T1-h {\r\n            font-weight: bold;\r\n            min-width: 300px;\r\n        }\r\n\r\n        #myTable li .T2-h {\r\n            width: 200px;\r\n            font-weight: bold;\r\n        }\r\n\r\n        #myTable li .T3-h {\r\n            width: 200px;\r\n            font-weight: bold;\r\n        }\r\n\r\n        #myTable li .T4-h {\r\n            width: 100px;\r\n            font-weight: bold;\r\n        }\r\n\r\n        #myTable li .T1 {\r\n            min-width: 300px;\r\n        }\r\n\r\n        #myTable li .T2 {\r\n            width: 200px;\r\n        }\r\n\r\n        #myTable li .T3 {\r\n            width: 200px;\r\n        }\r\n\r\n        #myTable li .T4 {\r\n            width: 100px;\r\n        }\r\n\r\n        #footer {\r\n            padding: 2px;\r\n            margin: 0px;\r\n            font-size: 8pt;\r\n            color: gray;\r\n            min-width: 900px;\r\n        }\r\n\r\n        #footer a {\r\n            color: gray;\r\n        }\r\n\r\n        .myClear {\r\n            clear: both;\r\n        }\r\n\r\n        #nav, #content, #footer {padding: 8px; border: 1px solid #EEEEEE; clear: both; width: 95%; margin: auto; margin-top: 10px;}\r\n\r\n    </style>\r\n</head>\r\n<body>\r\n<h2 style=\"text-align: center; margin-top: 20px\">${config.siteName?if_exists} 网站地图 </h2>\r\n<div id=\"nav\"><a href=\"${config.siteUrl?if_exists}\"><strong>${config.siteName?if_exists}</strong></a> &raquo; <a href=\"${config.siteUrl?if_exists}/sitemap.html\">站点地图</a></div>\r\n<div id=\"content\">\r\n    <h3>最新文章</h3>\r\n    <ul id=\"myTable\">\r\n        <li>\r\n            <div class=\"T1-h pull-left\">URL</div>\r\n            <div class=\"T2-h pull-right\">Last Change</div>\r\n            <div class=\"T3-h pull-right\">Change Frequency</div>\r\n            <div class=\"T4-h pull-right\">Priority</div>\r\n        </li>\r\n        <div class=\"myClear\"></div>\r\n        <li>\r\n            <div class=\"T1 pull-left\"><a href=\"${config.siteUrl}\" title=\"${config.siteName}\">${config.siteName} | 心之所向，无所不成</a></div>\r\n            <div class=\"T2 pull-right\">${.now?string(\"yyyy-MM-dd\")}</div>\r\n            <div class=\"T3 pull-right\">daily</div>\r\n            <div class=\"T4 pull-right\">1</div>\r\n        </li>\r\n        <div class=\"myClear\"></div>\r\n        <li>\r\n            <div class=\"T1 pull-left\"><a href=\"${config.siteUrl}/about\" title=\"${config.siteName}\">About | ${config.siteName}</a></div>\r\n            <div class=\"T2 pull-right\">${.now?string(\"yyyy-MM-dd\")}</div>\r\n            <div class=\"T3 pull-right\">daily</div>\r\n            <div class=\"T4 pull-right\">0.6</div>\r\n        </li>\r\n        <div class=\"myClear\"></div>\r\n        <li>\r\n            <div class=\"T1 pull-left\"><a href=\"${config.siteUrl}/links\" title=\"${config.siteName}\">友情链接 | ${config.siteName}</a></div>\r\n            <div class=\"T2 pull-right\">${.now?string(\"yyyy-MM-dd\")}</div>\r\n            <div class=\"T3 pull-right\">daily</div>\r\n            <div class=\"T4 pull-right\">0.6</div>\r\n        </li>\r\n        <div class=\"myClear\"></div>\r\n        <li>\r\n            <div class=\"T1 pull-left\"><a href=\"${config.siteUrl}/guestbook\" title=\"${config.siteName}\">MessageBoard | ${config.siteName}</a></div>\r\n            <div class=\"T2 pull-right\">${.now?string(\"yyyy-MM-dd\")}</div>\r\n            <div class=\"T3 pull-right\">daily</div>\r\n            <div class=\"T4 pull-right\">0.6</div>\r\n        </li>\r\n        <div class=\"myClear\"></div>\r\n        <li>\r\n            <div class=\"T1 pull-left\"><a href=\"${config.siteUrl}/updateLog\" title=\"${config.siteName}\">网站更新记录 | ${config.siteName}</a></div>\r\n            <div class=\"T2 pull-right\">${.now?string(\"yyyy-MM-dd\")}</div>\r\n            <div class=\"T3 pull-right\">daily</div>\r\n            <div class=\"T4 pull-right\">0.6</div>\r\n        </li>\r\n		<div class=\"myClear\"></div>\r\n        <li>\r\n            <div class=\"T1 pull-left\"><a href=\"${config.siteUrl}/recommended\" title=\"${config.siteName}\">站长推荐 | ${config.siteName}</a></div>\r\n            <div class=\"T2 pull-right\">${.now?string(\"yyyy-MM-dd\")}</div>\r\n            <div class=\"T3 pull-right\">daily</div>\r\n            <div class=\"T4 pull-right\">0.6</div>\r\n        </li>\r\n        <div class=\"myClear\"></div>\r\n        <#list articleList as item>\r\n            <li>\r\n                <div class=\"T1 pull-left\"><a href=\"${config.siteUrl}/article/${item.id}\" title=\"${item.title}\">${item.title} | ${config.siteName}</a></div>\r\n                <div class=\"T2 pull-right\">${item.updateTime?string(\"yyyy-MM-dd\")}</div>\r\n                <div class=\"T3 pull-right\">daily</div>\r\n                <div class=\"T4 pull-right\">0.6</div>\r\n            </li>\r\n            <div class=\"myClear\"></div>\r\n        </#list>\r\n    </ul>\r\n</div>\r\n<div id=\"content\">\r\n    <h3>分类目录</h3>\r\n    <ul id=\"myTable\">\r\n        <#list articleTypeList as item>\r\n            <li>\r\n                <div class=\"T1 pull-left\"><a href=\"${config.siteUrl}/type/${item.id}\" title=\"${item.name}\">${item.name} | ${config.siteName}</a></div>\r\n                <div class=\"T2 pull-right\">${item.updateTime?string(\"yyyy-MM-dd\")}</div>\r\n                <div class=\"T3 pull-right\">daily</div>\r\n                <div class=\"T4 pull-right\">0.6</div>\r\n            </li>\r\n            <div class=\"myClear\"></div>\r\n        </#list>\r\n    </ul>\r\n</div>\r\n<div id=\"content\">\r\n    <h3>标签目录</h3>\r\n    <ul id=\"myTable\">\r\n        <#list articleTagsList as item>\r\n            <li>\r\n                <div class=\"T1 pull-left\"><a href=\"${config.siteUrl}/tag/${item.id}\" title=\"${item.name}\">${item.name} | ${config.siteName}</a></div>\r\n                <div class=\"T2 pull-right\">${item.updateTime?string(\"yyyy-MM-dd\")}</div>\r\n                <div class=\"T3 pull-right\">daily</div>\r\n                <div class=\"T4 pull-right\">0.6</div>\r\n            </li>\r\n            <div class=\"myClear\"></div>\r\n        </#list>\r\n    </ul>\r\n</div>\r\n<div id=\"footer\">\r\n    该文件由<a href=\"${config.siteUrl}\" title=\"${config.siteName}\">${config.siteName}</a>网站自动生成。\r\n</div>\r\n</body>\r\n</html>', now(), now());
INSERT INTO `dblog`.`sys_template` VALUES ('4', 'TM_ROBOTS', 'Crawl-delay: 5\r\nSitemap: ${config.cmsUrl}/sitemap.txt\r\nSitemap: ${config.cmsUrl}/sitemap.xml\r\nSitemap: ${config.cmsUrl}/sitemap.html\r\n', now(), now());
INSERT INTO `dblog`.`sys_template` VALUES ('8', 'TM_LINKS_TO_ADMIN', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <title>友情链接操作通知</title>\r\n</head>\r\n<body>\r\n<div style=\"border-radius:5px;font-size:13px;width:680px;font-family:微软雅黑,\'Helvetica Neue\',Arial,sans-serif;margin:10px auto 0px;border:1px solid #eee;max-width:100%\">\r\n    <div style=\"width:100%;background:#2f889a;color:#ffffff;border-radius:5px 5px 0 0\">\r\n        <p style=\"font-size:15px;word-break:break-all;padding:20px 32px;margin:0\">\r\n            友情链接操作通知\r\n        </p>\r\n    </div>\r\n    <div style=\"margin:0px auto;width:90%\">\r\n        <p>有新的友情链接加入，信息如下</p>\r\n        <p>\r\n        <ul>\r\n            <li>${link.name?if_exists}</li>\r\n            <li>${link.url?if_exists}</li>\r\n            <li>${link.description?if_exists}</li>\r\n            <#if link.favicon?exists><li><img src=\"${link.favicon?if_exists}\" width=\"100\" alt=\"LOGO\"></li></#if>\r\n        </ul>\r\n        </p>\r\n        <p><a style=\"text-decoration:none;\" href=\"${config.cmsUrl}\" target=\"_blank\">去后台继续审核</a>。</p>\r\n        <p>（注：此邮件由系统自动发出，请勿回复。）</p>\r\n    </div>\r\n    <div class=\"adL\">\r\n    </div>\r\n</div>\r\n</body>\r\n</html>', now(), now());
INSERT INTO `dblog`.`sys_template` VALUES ('9', 'TM_NEW_COMMENT', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <title>新评论通知</title>\r\n</head>\r\n<body>\r\n<div style=\"border-radius:5px;font-size:13px;width:680px;font-family:微软雅黑,\'Helvetica Neue\',Arial,sans-serif;margin:10px auto 0px;border:1px solid #eee;max-width:100%\">\r\n    <div style=\"width:100%;background:#2f889a;color:#ffffff;border-radius:5px 5px 0 0\">\r\n        <p style=\"font-size:15px;word-break:break-all;padding:20px 32px;margin:0\">\r\n            新评论通知\r\n        </p>\r\n    </div>\r\n    <div style=\"margin:0px auto;width:90%\">\r\n        <p>\r\n            评论内容：\r\n        </p>\r\n        <div style=\"background:#efefef;margin:15px 0px;padding:1px 15px;border-radius:5px;font-size:14px;color:#333\"><#if comment?exists>${comment.content}<#else>**无评论内容**</#if></div>\r\n        <p>\r\n            <a style=\"text-decoration:none;\" href=\"${config.siteUrl}${comment.sourceUrl}\" target=\"_blank\">查看完整评论</a>\r\n        </p>\r\n        <p>（注：此邮件由系统自动发出，请勿回复。）</p>\r\n    </div>\r\n    <div class=\"adL\">\r\n    </div>\r\n</div>\r\n</body>\r\n</html>', now(), now());
INSERT INTO `dblog`.`sys_template` VALUES ('10', 'TM_NGINX_FILE_SERVER', 'server {\r\n    listen 80;\r\n    server_name serverName;\r\n    root serverPath;\r\n	error_page 403 /error.html;\r\n	location = /error.html {\r\n		return 404;\r\n	}\r\n	autoindex off; \r\n	autoindex_exact_size off; \r\n	autoindex_localtime off; \r\n	\r\n	location ^~ / {\r\n		proxy_set_header Host $host:$server_port;\r\n    }\r\n	\r\n	location ~*\\.(jpg|gif|png|swf|flv|wma|wmv|asf|mp3|mmf|zip|rar|js|css)$ {\r\n		expires 30d;\r\n		valid_referers serverReferers;\r\n		if ($invalid_referer) {\r\n			rewrite ^/ serverLogoPath;\r\n		}\r\n    }\r\n}\r\n', now(), now());

# 清空系统更新通知表
TRUNCATE TABLE `dblog`.`sys_update_recorde`;
# 初始化系统更新通知
INSERT INTO `dblog`.`sys_update_recorde` VALUES ('1', '1.0.1', '第一版', now(), now(), now());

# 清空系统资源表
TRUNCATE TABLE `dblog`.`sys_resources`;
# 初始化系统资源
INSERT INTO `dblog`.`sys_resources` VALUES (1, '用户管理', 'menu', '', '', 0, 4, 0, 1, 'fa fa-users', now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (2, '用户列表', 'menu', '/users', 'users', 1, 1, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (3, '新增用户', 'button', NULL, 'user:add', 2, 2, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (4, '批量删除用户', 'button', NULL, 'user:batchDelete', 2, 3, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (5, '编辑用户', 'button', NULL, 'user:edit,user:get', 2, 4, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (6, '删除用户', 'button', NULL, 'user:delete', 2, 5, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (7, '分配用户角色', 'button', NULL, 'user:allotRole', 2, 6, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (8, '权限管理', 'menu', '', '', 0, 3, 0, 1, 'fa fa-cogs', now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (9, '资源管理', 'menu', '/resources', 'resources', 8, 1, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (10, '新增资源', 'button', NULL, 'resource:add', 9, 2, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (11, '批量删除资源', 'button', NULL, 'resource:batchDelete', 9, 3, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (12, '编辑资源', 'button', NULL, 'resource:edit,resource:get', 9, 4, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (13, '删除资源', 'button', NULL, 'resource:delete', 9, 5, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (14, '角色管理', 'menu', '/roles', 'roles', 8, 2, 0, 1, '', now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (15, '新增角色', 'button', NULL, 'role:add', 14, 2, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (16, '批量删除角色', 'button', NULL, 'role:batchDelete', 14, 3, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (17, '编辑角色', 'button', NULL, 'role:edit,role:get', 14, 4, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (18, '删除角色', 'button', NULL, 'role:delete', 14, 5, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (19, '分配角色资源', 'button', NULL, 'role:allotResource', 14, 6, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (20, '文章管理', 'menu', '', '', 0, 1, 0, 1, 'fa fa-list', now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (21, '文章列表', 'menu', '/articles', 'articles', 20, 1, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (22, '发表文章', 'button', NULL, 'article:publish', 21, 2, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (23, '批量删除文章', 'button', NULL, 'article:batchDelete', 21, 3, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (24, '批量推送文章', 'button', NULL, 'article:batchPush', 21, 4, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (25, '推送文章', 'button', NULL, 'article:push', 21, 5, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (26, '置顶文章', 'button', NULL, 'article:top', 21, 6, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (27, '推荐文章', 'button', NULL, 'article:recommend', 21, 7, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (28, '编辑文章', 'button', NULL, 'article:edit,article:get', 21, 8, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (29, '删除文章', 'button', NULL, 'article:delete', 21, 9, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (30, '分类列表', 'menu', '/article/types', 'types', 20, 2, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (31, '添加分类', 'button', NULL, 'type:add', 30, 2, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (32, '批量删除分类', 'button', NULL, 'type:batchDelete', 30, 3, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (33, '编辑分类', 'button', NULL, 'type:edit,type:get', 30, 4, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (34, '删除分类', 'button', NULL, 'type:delete', 30, 5, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (35, '标签列表', 'menu', '/article/tags', 'tags', 20, 2, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (36, '添加标签', 'button', NULL, 'tag:add', 35, 2, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (37, '批量删除标签', 'button', NULL, 'tag:batchDelete', 35, 3, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (38, '编辑标签', 'button', NULL, 'tag:edit,tag:get', 35, 4, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (39, '删除标签', 'button', NULL, 'tag:delete', 35, 5, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (40, '网站管理', 'menu', '', '', 0, 2, 0, 1, 'fa fa-globe', now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (46, '评论管理', 'menu', '/comments', 'comments', 40, 2, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (47, '批量删除评论', 'button', NULL, 'comment:batchDelete', 46, 2, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (48, '回复评论', 'button', NULL, 'comment:reply', 46, 3, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (49, '审核评论', 'button', NULL, 'comment:audit', 46, 4, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (50, '删除评论', 'button', NULL, 'comment:delete', 46, 5, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (51, '模板管理', 'menu', '/templates', 'templates', 40, 3, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (52, '添加模板', 'button', NULL, 'template:add', 51, 2, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (53, '批量删除模板', 'button', NULL, 'template:batchDelete', 51, 3, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (54, '编辑模板', 'button', NULL, 'template:edit,template:get', 51, 4, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (55, '删除模板', 'button', NULL, 'template:delete', 51, 5, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (56, '更新日志', 'menu', '/updates', 'updateLogs', 40, 4, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (57, '添加更新日志', 'button', NULL, 'updateLog:add', 51, 2, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (58, '批量删除更新日志', 'button', NULL, 'updateLog:batchDelete', 51, 3, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (59, '编辑更新日志', 'button', NULL, 'updateLog:edit,updateLog:get', 51, 4, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (60, '删除更新日志', 'button', NULL, 'updateLog:delete', 51, 5, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (61, '公告管理', 'menu', '/notices', 'notices', 40, 5, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (62, '添加公告', 'button', NULL, 'notice:add', 61, 2, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (63, '批量删除公告', 'button', NULL, 'notice:batchDelete', 61, 3, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (64, '编辑公告', 'button', NULL, 'notice:edit,notice:get', 61, 4, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (65, '删除公告', 'button', NULL, 'notice:delete', 61, 5, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (66, '发布公告', 'button', NULL, 'notice:release', 61, 6, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (67, '撤回公告', 'button', NULL, 'notice:withdraw', 61, 7, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (68, '测试页面', 'menu', '', '', 0, 6, 0, 1, 'fa fa-desktop', now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (69, 'icons图标', 'menu', '/icons', 'icons', 68, 2, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (70, 'shiro测试', 'menu', '/shiro', 'shiro', 68, 3, 0, 1, NULL, now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (71, '推送消息', 'menu', '/notice', 'notice', 72, NULL, 0, 1, '', now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (72, '实验室', 'menu', '', '', 0, 5, 0, 1, 'fa fa-flask', now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (73, '文章搬运工', 'menu', '/remover', 'remover', 72, NULL, 0, 1, '', now(), now());
INSERT INTO `dblog`.`sys_resources` VALUES (74, '编辑器', 'menu', '/editor', 'editor', 68, NULL, 0, 1, '', now(), now());

INSERT INTO `dblog`.`sys_resources` VALUES (75, '文件管理', 'menu', '/files', 'files', 40, 6, 0, 1, NULL, now(), now());

# 清空系统角色
TRUNCATE TABLE `dblog`.`sys_role`;
# 初始化系统角色
INSERT INTO `dblog`.`sys_role` VALUES ('1', 'role:root', '超级管理员', '1', now(), now());
INSERT INTO `dblog`.`sys_role` VALUES ('2', 'role:admin', '管理员', '1', now(), now());
INSERT INTO `dblog`.`sys_role` VALUES ('3', 'role:comment', '评论审核管理员', '1', now(), now());

# 清空角色->资源对应内容
TRUNCATE TABLE `dblog`.`sys_role_resources`;
# 初始化角色->资源对应内容
INSERT INTO `dblog`.`sys_role_resources` VALUES ('1', '1', '1', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('2', '1', '2', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('3', '1', '3', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('4', '1', '4', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('5', '1', '5', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('6', '1', '6', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('7', '1', '7', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('8', '1', '8', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('9', '1', '9', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('10', '1', '10', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('11', '1', '11', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('12', '1', '12', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('13', '1', '13', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('14', '1', '14', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('15', '1', '15', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('16', '1', '16', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('17', '1', '17', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('18', '1', '18', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('19', '1', '19', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('20', '1', '20', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('21', '1', '21', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('22', '1', '22', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('23', '1', '23', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('24', '1', '24', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('25', '1', '25', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('26', '1', '26', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('27', '1', '27', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('28', '1', '28', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('29', '1', '29', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('30', '1', '30', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('31', '1', '31', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('32', '1', '32', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('33', '1', '33', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('34', '1', '34', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('35', '1', '35', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('36', '1', '36', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('37', '1', '37', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('38', '1', '38', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('39', '1', '39', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('40', '1', '40', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('41', '1', '41', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('42', '1', '42', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('43', '1', '43', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('44', '1', '44', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('45', '1', '45', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('46', '1', '46', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('47', '1', '47', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('48', '1', '48', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('49', '1', '49', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('50', '1', '50', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('51', '1', '51', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('52', '1', '52', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('53', '1', '57', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('54', '1', '53', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('55', '1', '58', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('56', '1', '54', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('57', '1', '59', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('58', '1', '55', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('59', '1', '60', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('60', '1', '56', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('61', '1', '61', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('62', '1', '62', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('63', '1', '63', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('64', '1', '64', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('65', '1', '65', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('66', '1', '66', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('67', '1', '67', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('68', '1', '68', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('84', '2', '20', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('85', '2', '21', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('86', '2', '24', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('87', '2', '25', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('88', '2', '26', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('89', '2', '27', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('93', '3', '40', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('94', '3', '46', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('95', '3', '48', now(), now());
INSERT INTO `dblog`.`sys_role_resources` VALUES ('96', '3', '49', now(), now());

# 清空系统用户表
TRUNCATE TABLE `dblog`.`sys_user`;
# 初始化系统用户
INSERT INTO `dblog`.`sys_user` VALUES (1, 'root', 'CGUx1FN++xS+4wNDFeN6DA==', '超级管理员', '18910523425', '272633743@qq.com', '272633743', NULL, NULL, 'https://104.41.185.226/img/favicon.png', 'ROOT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '0:0:0:0:0:0:0:1', '2019-06-01 11:59:23', 254, NULL, 1, now(), now());
INSERT INTO `dblog`.`sys_user` VALUES (2, 'admin', 'gXp2EbyZ+sB/A6QUMhiUJQ==', '管理员', '18910523425', '272633743@qq.com', '272633743', NULL, NULL, NULL, 'ADMIN', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1',now(), 2, NULL, 1,now(),now());
INSERT INTO `dblog`.`sys_user` VALUES (3, 'comment-admin', 'x9qCx3yP05yWfIE5wXbCsg==', '评论审核管理员', '', '', '', NULL, NULL, NULL, 'ADMIN', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1',now(), 1, NULL, 1,now(),now());

# 清空用户角色关联数据
TRUNCATE TABLE `dblog`.`sys_user_role`;
# 初始化用户角色关联数据
INSERT INTO `dblog`.`sys_user_role` VALUES ('1', '1', '1', now(), now());
INSERT INTO `dblog`.`sys_user_role` VALUES ('2', '2', '2', now(), now());
INSERT INTO `dblog`.`sys_user_role` VALUES ('3', '3', '3', now(), now());

# 清空评论数据
TRUNCATE TABLE `dblog`.`biz_comment`;