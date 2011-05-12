-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2010 年 09 月 27 日 02:15
-- 服务器版本: 5.0.45
-- PHP 版本: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `zencart_svn`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `address_book`
-- 

CREATE TABLE `address_book` (
  `address_book_id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `entry_gender` char(1) NOT NULL default '',
  `entry_company` varchar(64) default NULL,
  `entry_firstname` varchar(32) NOT NULL default '',
  `entry_lastname` varchar(32) NOT NULL default '',
  `entry_street_address` varchar(64) NOT NULL default '',
  `entry_suburb` varchar(32) default NULL,
  `entry_postcode` varchar(10) NOT NULL default '',
  `entry_city` varchar(32) NOT NULL default '',
  `entry_state` varchar(32) default NULL,
  `entry_country_id` int(11) NOT NULL default '0',
  `entry_zone_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`address_book_id`),
  KEY `idx_address_book_customers_id_zen` (`customers_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- 导出表中的数据 `address_book`
-- 

INSERT INTO `address_book` VALUES (3, 3, 'm', NULL, 'sadasd', 'asdasd', 'asdasd', 'asdasd', 'asasd', 'asdasd', ' asdasd', 1, 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `address_format`
-- 

CREATE TABLE `address_format` (
  `address_format_id` int(11) NOT NULL auto_increment,
  `address_format` varchar(128) NOT NULL default '',
  `address_summary` varchar(48) NOT NULL default '',
  PRIMARY KEY  (`address_format_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- 导出表中的数据 `address_format`
-- 

INSERT INTO `address_format` VALUES (1, '$firstname $lastname$cr$streets$cr$city, $postcode$cr$statecomma$country', '$city / $country');
INSERT INTO `address_format` VALUES (2, '$firstname $lastname$cr$streets$cr$city, $state    $postcode$cr$country', '$city, $state / $country');
INSERT INTO `address_format` VALUES (3, '$firstname $lastname$cr$streets$cr$city$cr$postcode - $statecomma$country', '$state / $country');
INSERT INTO `address_format` VALUES (4, '$firstname $lastname$cr$streets$cr$city ($postcode)$cr$country', '$postcode / $country');
INSERT INTO `address_format` VALUES (5, '$firstname $lastname$cr$streets$cr$postcode $city$cr$country', '$city / $country');
INSERT INTO `address_format` VALUES (6, '$firstname $lastname$cr$streets$cr$city$cr$state$cr$postcode$cr$country', '$postcode / $country');
INSERT INTO `address_format` VALUES (7, '$postcode$cr$state $city$cr$streets$cr$company$cr$firstname $lastname', '$city / $country');

-- --------------------------------------------------------

-- 
-- 表的结构 `admin`
-- 

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL auto_increment,
  `admin_name` varchar(32) NOT NULL default '',
  `admin_email` varchar(96) NOT NULL default '',
  `admin_pass` varchar(40) NOT NULL default '',
  `admin_level` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`admin_id`),
  KEY `idx_admin_name_zen` (`admin_name`),
  KEY `idx_admin_email_zen` (`admin_email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- 导出表中的数据 `admin`
-- 

INSERT INTO `admin` VALUES (1, 'admin', 'admin@admin.com', '4775258a309283cb681318eb743e8325:f8', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `admin_activity_log`
-- 

CREATE TABLE `admin_activity_log` (
  `log_id` int(15) NOT NULL auto_increment,
  `access_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `admin_id` int(11) NOT NULL default '0',
  `page_accessed` varchar(80) NOT NULL default '',
  `page_parameters` text,
  `ip_address` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`log_id`),
  KEY `idx_page_accessed_zen` (`page_accessed`),
  KEY `idx_access_date_zen` (`access_date`),
  KEY `idx_ip_zen` (`ip_address`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=285 ;

-- 
-- 导出表中的数据 `admin_activity_log`
-- 

INSERT INTO `admin_activity_log` VALUES (1, '2010-09-25 11:37:13', 0, 'login.php ', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (2, '2010-09-25 11:37:17', 0, 'login.php admin', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (3, '2010-09-25 11:37:20', 1, 'categories.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (4, '2010-09-25 11:37:21', 1, 'categories.php', 'cPath=13&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (5, '2010-09-25 11:37:22', 1, 'categories.php', 'cPath=13_14&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (6, '2010-09-25 11:37:22', 1, 'product.php', 'page=1&product_type=1&cPath=13_14&pID=25&action=new_product&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (7, '2010-09-25 15:20:55', 0, 'login.php ', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (8, '2010-09-25 15:20:58', 0, 'login.php admin', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (9, '2010-09-25 15:21:07', 1, 'configuration.php', 'gID=1&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (10, '2010-09-25 15:48:52', 1, 'configuration.php', 'gID=1&cID=2&action=edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (11, '2010-09-25 15:48:55', 1, 'configuration.php', 'gID=1&cID=1&action=edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (12, '2010-09-25 16:11:42', 0, 'login.php ', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (13, '2010-09-25 16:11:46', 0, 'login.php admin', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (14, '2010-09-25 16:11:51', 1, 'configuration.php', 'gID=1&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (15, '2010-09-25 16:11:56', 1, 'configuration.php', 'gID=19&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (16, '2010-09-25 16:12:01', 1, 'configuration.php', 'gID=19&cID=412&action=edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (17, '2010-09-25 16:12:08', 1, 'ezpages.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (18, '2010-09-25 16:12:10', 1, 'define_pages_editor.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (19, '2010-09-25 16:12:14', 1, 'define_pages_editor.php', 'securityToken=01178c68d966bada1dac4b42d1fa4f42&define_it=4&action=new_page&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (20, '2010-09-25 16:12:17', 1, 'define_pages_editor.php', 'lngdir=schinese&filename=define_main_page.php&action=save&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (21, '2010-09-25 16:12:17', 1, 'define_pages_editor.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (22, '2010-09-25 16:49:10', 1, 'product_types.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (23, '2010-09-25 16:49:13', 1, 'product_types.php', 'page=1&ptID=1&action=layout&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (24, '2010-09-25 16:49:16', 1, 'product_types.php', 'ptID=1&cID=15&action=layout_edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (25, '2010-09-25 16:49:20', 1, 'product_types.php', 'ptID=1&cID=15&action=layout_save&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (26, '2010-09-25 16:49:20', 1, 'product_types.php', 'gID=&cID=15&ptID=1&action=layout&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (27, '2010-09-25 17:16:51', 1, 'configuration.php', 'gID=22&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (28, '2010-09-25 17:16:55', 1, 'configuration.php', 'securityToken=01178c68d966bada1dac4b42d1fa4f42&language=en&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (29, '2010-09-25 17:45:49', 1, 'developers_tool_kit.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (30, '2010-09-25 17:45:55', 1, 'developers_tool_kit.php', 'action=locate_all_files&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (31, '2010-09-26 09:18:56', 0, 'login.php ', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (32, '2010-09-26 09:19:04', 0, 'login.php admin', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (33, '2010-09-26 09:19:14', 1, 'ezpages.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (34, '2010-09-26 09:19:17', 1, 'ezpages.php', 'action=new&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (35, '2010-09-26 09:20:05', 1, 'ezpages.php', 'action=insert&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (36, '2010-09-26 09:20:05', 1, 'ezpages.php', 'ezID=14&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (37, '2010-09-26 09:20:11', 1, 'ezpages.php', 'page=1&ezID=14&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (38, '2010-09-26 09:20:15', 1, 'ezpages.php', 'page=1&ezID=14&action=new&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (39, '2010-09-26 09:20:25', 1, 'ezpages.php', 'page=1&action=update&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (40, '2010-09-26 09:20:26', 1, 'ezpages.php', 'page=1&ezID=14&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (41, '2010-09-26 09:20:32', 1, 'ezpages.php', 'page=1&ezID=14&action=new&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (42, '2010-09-26 09:21:01', 1, 'ezpages.php', 'page=1&action=update&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (43, '2010-09-26 09:21:01', 1, 'ezpages.php', 'page=1&ezID=14&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (44, '2010-09-26 09:21:30', 1, 'ezpages.php', 'page=1&ezID=14&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (45, '2010-09-26 09:21:30', 1, 'ezpages.php', 'action=page_open_new_window&current=0&ezID=14&page=1&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (46, '2010-09-26 09:21:30', 1, 'ezpages.php', 'page=1&ezID=14&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (47, '2010-09-26 09:21:32', 1, 'ezpages.php', 'page=1&ezID=14&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (48, '2010-09-26 09:21:32', 1, 'ezpages.php', 'action=page_is_ssl&current=0&ezID=14&page=1&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (49, '2010-09-26 09:21:32', 1, 'ezpages.php', 'page=1&ezID=14&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (50, '2010-09-26 09:21:42', 1, 'ezpages.php', 'page=1&ezID=14&action=new&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (51, '2010-09-26 09:21:45', 1, 'ezpages.php', 'page=1&action=update&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (52, '2010-09-26 09:21:45', 1, 'ezpages.php', 'page=1&ezID=14&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (53, '2010-09-26 09:31:52', 1, 'developers_tool_kit.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (54, '2010-09-26 09:31:59', 1, 'developers_tool_kit.php', 'action=locate_all_files&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (55, '2010-09-26 09:34:12', 1, 'ezpages.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (56, '2010-09-26 09:34:14', 1, 'ezpages.php', 'page=1&ezID=14&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (57, '2010-09-26 09:34:15', 1, 'ezpages.php', 'page=1&ezID=14&action=new&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (58, '2010-09-26 09:34:18', 1, 'ezpages.php', 'page=1&ezID=14&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (59, '2010-09-26 09:34:20', 1, 'ezpages.php', 'page=1&ezID=14&action=delete&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (60, '2010-09-26 09:34:22', 1, 'ezpages.php', 'page=1&ezID=14&action=deleteconfirm&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (61, '2010-09-26 09:34:22', 1, 'ezpages.php', 'page=1&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (62, '2010-09-26 09:34:25', 1, 'ezpages.php', 'action=new&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (63, '2010-09-26 09:34:47', 1, 'ezpages.php', 'action=insert&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (64, '2010-09-26 09:34:47', 1, 'ezpages.php', 'ezID=15&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (65, '2010-09-26 09:35:05', 1, 'ezpages.php', 'page=1&ezID=15&action=delete&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (66, '2010-09-26 09:35:06', 1, 'ezpages.php', 'page=1&ezID=15&action=deleteconfirm&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (67, '2010-09-26 09:35:06', 1, 'ezpages.php', 'page=1&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (68, '2010-09-26 09:37:14', 1, 'ezpages.php', 'page=1&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (69, '2010-09-26 09:37:16', 1, 'dsf_shipping.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (70, '2010-09-26 09:37:25', 1, 'dsf_shipping.php', 'action=do_install&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (71, '2010-09-26 09:37:28', 1, 'dsf_shipping.php', 'action=account_info&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (72, '2010-09-26 09:37:34', 1, 'dsf_shipping.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (73, '2010-09-26 09:37:37', 1, 'dsf_shipping.php', 'action=account_edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (74, '2010-09-26 09:37:39', 1, 'dsf_shipping.php', 'action=account_info&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (75, '2010-09-26 09:37:43', 1, 'dsf_shipping.php', 'action=account_edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (76, '2010-09-26 09:37:47', 1, 'dsf_shipping.php', 'action=account_info&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (77, '2010-09-26 09:37:54', 1, 'modules.php', 'set=payment&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (78, '2010-09-26 09:38:03', 1, 'modules.php', 'set=shipping&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (79, '2010-09-26 09:38:06', 1, 'dsf_shipping.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (80, '2010-09-26 09:38:12', 1, 'dsf_shipping.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (81, '2010-09-26 09:38:13', 1, 'dsf_shipping.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (82, '2010-09-26 09:38:14', 1, 'dsf_shipping.php', 'page=1&sID=36&action=shipping_info&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (83, '2010-09-26 09:38:15', 1, 'dsf_shipping.php', 'page=1&sID=33&action=shipping_info&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (84, '2010-09-26 09:38:15', 1, 'dsf_shipping.php', 'page=1&sID=30&action=shipping_info&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (85, '2010-09-26 09:38:16', 1, 'dsf_shipping.php', 'page=1&sID=29&action=shipping_info&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (86, '2010-09-26 09:52:05', 1, 'dsf_shipping.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (87, '2010-09-26 09:52:07', 1, 'dsf_shipping.php', 'securityToken=f42829a83e6f22c5bcb86fa9eff5e36c&language=en&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (88, '2010-09-26 09:52:10', 1, 'dsf_shipping.php', 'page=1&sID=30&action=shipping_info&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (89, '2010-09-26 09:52:11', 1, 'dsf_shipping.php', 'page=1&sID=24&action=shipping_info&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (90, '2010-09-26 09:52:11', 1, 'dsf_shipping.php', 'page=1&sID=22&action=shipping_info&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (91, '2010-09-26 09:52:12', 1, 'dsf_shipping.php', 'page=1&sID=20&action=shipping_info&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (92, '2010-09-26 09:52:16', 1, 'dsf_shipping.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (93, '2010-09-26 09:52:17', 1, 'modules.php', 'set=ordertotal&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (94, '2010-09-26 09:52:18', 1, 'modules.php', 'set=shipping&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (95, '2010-09-26 09:52:20', 1, 'modules.php', 'set=payment&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (96, '2010-09-26 09:53:32', 1, 'configuration.php', 'gID=1&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (97, '2010-09-26 09:53:39', 1, 'configuration.php', 'gID=5&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (98, '2010-09-26 09:53:48', 1, 'configuration.php', 'gID=5&cID=134&action=edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (99, '2010-09-26 09:53:50', 1, 'configuration.php', 'gID=5&cID=133&action=edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (100, '2010-09-26 09:55:32', 1, 'dsf_shipping.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (101, '2010-09-26 09:55:45', 1, 'dsf_shipping.php', 'action=account_add&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (102, '2010-09-26 09:55:47', 1, 'dsf_shipping.php', 'action=account_add&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (103, '2010-09-26 09:55:48', 1, 'dsf_shipping.php', 'action=account_add&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (104, '2010-09-26 09:55:49', 1, 'dsf_shipping.php', 'action=account_add&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (105, '2010-09-26 09:57:02', 1, 'dsf_shipping.php', 'action=do_install&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (106, '2010-09-26 09:57:11', 1, 'dsf_shipping.php', 'action=account_info&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (107, '2010-09-26 09:57:16', 1, 'dsf_shipping.php', 'action=account_del&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (108, '2010-09-26 09:57:20', 1, 'dsf_shipping.php', 'action=account_delete&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (109, '2010-09-26 09:57:20', 1, 'dsf_shipping.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (110, '2010-09-26 09:57:32', 1, 'dsf_shipping.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (111, '2010-09-26 09:58:25', 1, 'dsf_shipping.php', 'action=do_install&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (112, '2010-09-26 09:58:29', 1, 'dsf_shipping.php', 'action=account_info&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (113, '2010-09-26 10:01:29', 1, 'dsf_shipping.php', 'action=account_edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (114, '2010-09-26 10:01:31', 1, 'dsf_shipping.php', 'page=1&sID=9&action=shipping_info&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (115, '2010-09-26 10:01:32', 1, 'dsf_shipping.php', 'page=1&sID=9&action=shipping_edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (116, '2010-09-26 10:01:34', 1, 'dsf_shipping.php', 'page=1&sID=1&action=shipping_info&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (117, '2010-09-26 10:01:36', 1, 'dsf_shipping.php', 'page=1&sID=1&action=shipping_edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (118, '2010-09-26 10:01:39', 1, 'dsf_shipping.php', 'page=1&sID=1&action=shipping_save&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (119, '2010-09-26 10:01:39', 1, 'dsf_shipping.php', 'page=1&sID=1&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (120, '2010-09-26 10:06:36', 1, 'developers_tool_kit.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (121, '2010-09-26 10:06:51', 1, 'developers_tool_kit.php', 'action=locate_all_files&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (122, '2010-09-26 10:52:27', 1, 'developers_tool_kit.php', 'action=locate_configuration&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (123, '2010-09-26 10:52:39', 1, 'configuration.php', 'gID=32&cID=568&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (124, '2010-09-26 10:52:45', 1, 'configuration.php', 'gID=32&cID=568&action=edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (125, '2010-09-26 10:52:52', 1, 'configuration.php', 'gID=32&cID=568&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (126, '2010-09-26 10:53:21', 1, 'configuration.php', 'gID=32&cID=564&action=edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (127, '2010-09-26 10:54:07', 1, 'configuration.php', 'gID=32&cID=568&action=edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (128, '2010-09-26 10:54:10', 1, 'configuration.php', 'gID=32&cID=568&action=save&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (129, '2010-09-26 10:54:10', 1, 'configuration.php', 'gID=32&cID=568&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (130, '2010-09-26 13:27:31', 0, 'login.php ', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (131, '2010-09-26 13:27:37', 0, 'login.php admin', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (132, '2010-09-26 13:27:41', 1, 'developers_tool_kit.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (133, '2010-09-26 13:28:07', 1, 'developers_tool_kit.php', 'action=locate_all_files&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (134, '2010-09-26 13:31:24', 1, 'developers_tool_kit.php', 'action=locate_class&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (135, '2010-09-26 13:53:30', 1, 'developers_tool_kit.php', 'action=locate_class&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (136, '2010-09-26 14:00:46', 1, 'developers_tool_kit.php', 'action=locate_function&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (137, '2010-09-26 14:24:28', 1, 'developers_tool_kit.php', 'action=locate_all_files&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (138, '2010-09-26 14:25:27', 1, 'developers_tool_kit.php', 'action=locate_all_files&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (139, '2010-09-26 14:29:25', 1, 'configuration.php', 'gID=1&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (140, '2010-09-26 14:29:29', 1, 'configuration.php', 'gID=8&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (141, '2010-09-26 14:29:31', 1, 'configuration.php', 'gID=19&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (142, '2010-09-26 14:29:34', 1, 'configuration.php', 'gID=24&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (143, '2010-09-26 14:30:23', 1, 'developers_tool_kit.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (144, '2010-09-26 14:30:31', 1, 'developers_tool_kit.php', 'action=locate_all_files&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (145, '2010-09-26 14:38:57', 1, 'layout_controller.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (146, '2010-09-26 14:39:02', 1, 'layout_controller.php', 'page=&cID=75&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (147, '2010-09-26 14:40:38', 1, 'layout_controller.php', 'page=&cID=73&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (148, '2010-09-26 14:40:43', 1, 'layout_controller.php', 'page=&cID=73&action=edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (149, '2010-09-26 14:55:25', 0, 'login.php ', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (150, '2010-09-26 15:30:44', 0, 'login.php admin', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (151, '2010-09-26 15:45:34', 1, 'login.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (152, '2010-09-26 15:45:38', 1, 'login.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (153, '2010-09-26 15:45:48', 1, 'modules.php', 'set=shipping&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (154, '2010-09-26 15:45:50', 1, 'modules.php', 'set=shipping&module=zones&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (155, '2010-09-26 15:45:52', 1, 'modules.php', 'set=shipping&module=zones&action=install&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (156, '2010-09-26 15:45:52', 1, 'modules.php', 'set=shipping&module=zones&action=edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (157, '2010-09-26 15:45:56', 1, 'modules.php', 'set=shipping&module=zones&action=save&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (158, '2010-09-26 15:45:56', 1, 'modules.php', 'set=shipping&module=zones&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (159, '2010-09-26 16:15:06', 0, 'login.php ', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (160, '2010-09-26 16:15:10', 0, 'login.php admin', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (161, '2010-09-26 16:15:18', 1, 'configuration.php', 'gID=17&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (162, '2010-09-26 16:15:21', 1, 'configuration.php', 'gID=32&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (163, '2010-09-26 16:15:36', 1, 'configuration.php', 'gID=15&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (164, '2010-09-26 16:15:39', 1, 'configuration.php', 'gID=15&cID=296&action=edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (165, '2010-09-26 16:15:48', 1, 'configuration.php', 'gID=15&cID=296&action=save&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (166, '2010-09-26 16:15:48', 1, 'configuration.php', 'gID=15&cID=296&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (167, '2010-09-26 16:17:16', 1, 'configuration.php', 'gID=15&cID=296&action=edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (168, '2010-09-26 16:17:18', 1, 'configuration.php', 'gID=15&cID=296&action=save&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (169, '2010-09-26 16:17:18', 1, 'configuration.php', 'gID=15&cID=296&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (170, '2010-09-26 16:21:10', 1, 'configuration.php', 'gID=15&cID=294&action=edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (171, '2010-09-26 16:21:11', 1, 'configuration.php', 'gID=15&cID=294&action=edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (172, '2010-09-26 16:21:20', 1, 'configuration.php', 'gID=15&cID=294&action=save&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (173, '2010-09-26 16:21:20', 1, 'configuration.php', 'gID=15&cID=294&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (174, '2010-09-26 16:22:52', 1, 'configuration.php', 'gID=15&cID=294&action=edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (175, '2010-09-26 16:23:00', 1, 'configuration.php', 'gID=15&cID=294&action=save&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (176, '2010-09-26 16:23:00', 1, 'configuration.php', 'gID=15&cID=294&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (177, '2010-09-26 16:23:18', 1, 'configuration.php', 'gID=1&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (178, '2010-09-26 16:23:27', 1, 'configuration.php', 'gID=2&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (179, '2010-09-26 16:23:29', 1, 'configuration.php', 'gID=3&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (180, '2010-09-26 16:23:36', 1, 'configuration.php', 'gID=15&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (181, '2010-09-26 16:24:04', 1, 'configuration.php', 'gID=32&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (182, '2010-09-26 16:24:19', 1, 'configuration.php', 'gID=32&cID=568&action=edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (183, '2010-09-26 16:24:40', 1, 'configuration.php', 'gID=32&cID=568&action=save&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (184, '2010-09-26 16:24:40', 1, 'configuration.php', 'gID=32&cID=568&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (185, '2010-09-26 16:41:37', 1, 'developers_tool_kit.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (186, '2010-09-26 16:41:43', 1, 'developers_tool_kit.php', 'action=locate_all_files&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (187, '2010-09-26 16:42:33', 1, 'developers_tool_kit.php', 'action=locate_all_files&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (188, '2010-09-26 18:04:18', 0, 'login.php ', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (189, '2010-09-26 18:04:25', 0, 'login.php admin', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (190, '2010-09-26 18:04:28', 1, 'configuration.php', 'gID=1&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (191, '2010-09-26 18:04:30', 1, 'configuration.php', 'gID=1&cID=593&action=edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (192, '2010-09-26 18:04:43', 1, 'configuration.php', 'gID=1&cID=593&action=save&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (193, '2010-09-26 18:04:43', 1, 'configuration.php', 'gID=1&cID=593&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (194, '2010-09-26 18:10:43', 0, 'login.php ', '', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (195, '2010-09-26 18:10:51', 0, 'login.php ', '', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (196, '2010-09-26 18:10:56', 0, 'login.php admin', '', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (197, '2010-09-26 18:11:09', 1, 'ezpages.php', '', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (198, '2010-09-26 18:11:12', 1, 'ezpages.php', 'action=new&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (199, '2010-09-26 18:11:28', 1, 'ezpages.php', 'action=insert&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (200, '2010-09-26 18:11:28', 1, 'ezpages.php', 'ezID=16&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (201, '2010-09-26 18:11:33', 1, 'ezpages.php', 'page=1&ezID=16&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (202, '2010-09-26 18:11:34', 1, 'ezpages.php', 'page=1&ezID=16&action=new&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (203, '2010-09-26 18:11:38', 1, 'ezpages.php', 'page=1&action=update&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (204, '2010-09-26 18:11:38', 1, 'ezpages.php', 'page=1&ezID=16&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (205, '2010-09-26 18:11:41', 1, 'ezpages.php', 'action=status_footer&current=0&ezID=16&page=1&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (206, '2010-09-26 18:11:41', 1, 'ezpages.php', 'page=1&ezID=16&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (207, '2010-09-26 18:11:42', 1, 'ezpages.php', 'page=1&ezID=16&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (208, '2010-09-26 18:11:43', 1, 'ezpages.php', 'action=status_header&current=0&ezID=16&page=1&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (209, '2010-09-26 18:11:43', 1, 'ezpages.php', 'page=1&ezID=16&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (210, '2010-09-26 18:11:43', 1, 'ezpages.php', 'page=1&ezID=16&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (211, '2010-09-26 18:12:04', 1, 'ezpages.php', 'page=1&ezID=16&action=new&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (212, '2010-09-26 18:12:21', 1, 'ezpages.php', 'page=1&action=update&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (213, '2010-09-26 18:12:21', 1, 'ezpages.php', 'page=1&ezID=16&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (214, '2010-09-26 18:12:36', 1, 'ezpages.php', 'page=1&ezID=16&action=delete&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (215, '2010-09-26 18:12:38', 1, 'ezpages.php', 'page=1&ezID=16&action=deleteconfirm&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (216, '2010-09-26 18:12:38', 1, 'ezpages.php', 'page=1&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (217, '2010-09-26 18:13:27', 0, 'login.php admin', '', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (218, '2010-09-26 18:16:06', 1, 'reviews.php', '', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (219, '2010-09-26 18:16:08', 1, 'reviews.php', 'action=setflag&flag=1&rID=5&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (220, '2010-09-26 18:16:08', 1, 'reviews.php', 'page=1&rID=5&action=preview&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (221, '2010-09-26 18:16:08', 1, 'reviews.php', 'rID=5&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (222, '2010-09-26 18:16:10', 1, 'reviews.php', 'page=1&rID=4&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (223, '2010-09-26 18:16:10', 1, 'reviews.php', 'action=setflag&flag=1&rID=4&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (224, '2010-09-26 18:16:10', 1, 'reviews.php', 'rID=4&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (225, '2010-09-26 18:16:10', 1, 'reviews.php', 'page=1&rID=3&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (226, '2010-09-26 18:16:10', 1, 'reviews.php', 'action=setflag&flag=1&rID=3&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (227, '2010-09-26 18:16:11', 1, 'reviews.php', 'rID=3&', '172.16.2.252');
INSERT INTO `admin_activity_log` VALUES (228, '2010-09-27 09:21:25', 0, 'login.php ', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (229, '2010-09-27 09:21:29', 0, 'login.php admin', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (230, '2010-09-27 09:21:33', 1, 'developers_tool_kit.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (231, '2010-09-27 09:21:37', 1, 'developers_tool_kit.php', 'action=locate_all_files&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (232, '2010-09-27 09:32:58', 1, 'developers_tool_kit.php', 'action=locate_configuration&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (233, '2010-09-27 09:33:05', 1, 'developers_tool_kit.php', 'action=locate_all_files&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (234, '2010-09-27 09:43:07', 1, 'categories.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (235, '2010-09-27 09:43:10', 1, 'customers.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (236, '2010-09-27 09:43:14', 1, 'customers.php', 'page=1&cID=2&action=confirm&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (237, '2010-09-27 09:43:15', 1, 'customers.php', 'page=1&cID=2&action=deleteconfirm&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (238, '2010-09-27 09:43:15', 1, 'customers.php', 'page=1&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (239, '2010-09-27 09:43:17', 1, 'customers.php', 'page=1&cID=1&action=confirm&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (240, '2010-09-27 09:43:18', 1, 'customers.php', 'page=1&cID=1&action=deleteconfirm&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (241, '2010-09-27 09:43:18', 1, 'customers.php', 'page=1&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (242, '2010-09-27 09:43:21', 1, 'configuration.php', 'gID=1&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (243, '2010-09-27 09:43:28', 1, 'configuration.php', 'gID=1&cID=594&action=edit&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (244, '2010-09-27 09:43:51', 1, 'reviews.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (245, '2010-09-27 09:43:55', 1, 'template_select.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (246, '2010-09-27 09:43:56', 1, 'layout_controller.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (247, '2010-09-27 09:43:58', 1, 'banner_manager.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (248, '2010-09-27 09:44:00', 1, 'mail.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (249, '2010-09-27 09:44:01', 1, 'admin.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (250, '2010-09-27 09:44:03', 1, 'image_handler.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (251, '2010-09-27 09:44:06', 1, 'coupon_admin.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (252, '2010-09-27 09:44:08', 1, 'media_manager.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (253, '2010-09-27 09:44:09', 1, 'record_artists.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (254, '2010-09-27 09:44:10', 1, 'record_company.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (255, '2010-09-27 09:44:11', 1, 'music_genre.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (256, '2010-09-27 09:44:12', 1, 'media_manager.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (257, '2010-09-27 09:44:13', 1, 'media_types.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (258, '2010-09-27 09:44:14', 1, 'template_select.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (259, '2010-09-27 09:44:15', 1, 'stats_products_viewed.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (260, '2010-09-27 09:44:16', 1, 'currencies.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (261, '2010-09-27 09:44:18', 1, 'countries.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (262, '2010-09-27 09:44:24', 1, 'zones.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (263, '2010-09-27 09:44:26', 1, 'geo_zones.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (264, '2010-09-27 09:44:29', 1, 'tax_classes.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (265, '2010-09-27 09:44:31', 1, 'tax_rates.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (266, '2010-09-27 09:44:32', 1, 'customers.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (267, '2010-09-27 09:44:33', 1, 'orders.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (268, '2010-09-27 09:44:35', 1, 'group_pricing.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (269, '2010-09-27 09:44:39', 1, 'paypal.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (270, '2010-09-27 09:44:41', 1, 'modules.php', 'set=payment&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (271, '2010-09-27 09:44:43', 1, 'modules.php', 'set=shipping&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (272, '2010-09-27 09:44:45', 1, 'modules.php', 'set=ordertotal&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (273, '2010-09-27 09:44:46', 1, 'dsf_shipping.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (274, '2010-09-27 09:44:48', 1, 'categories.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (275, '2010-09-27 09:44:49', 1, 'products_price_manager.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (276, '2010-09-27 09:44:50', 1, 'product_types.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (277, '2010-09-27 09:44:52', 1, 'options_name_manager.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (278, '2010-09-27 09:44:54', 1, 'option_values.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (279, '2010-09-27 09:44:56', 1, 'quick_updates.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (280, '2010-09-27 09:44:58', 1, 'categories.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (281, '2010-09-27 09:45:00', 1, 'configuration.php', 'gID=2&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (282, '2010-09-27 10:00:25', 1, 'developers_tool_kit.php', '', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (283, '2010-09-27 10:00:32', 1, 'developers_tool_kit.php', 'action=locate_function&', '172.16.2.26');
INSERT INTO `admin_activity_log` VALUES (284, '2010-09-27 10:00:45', 1, 'developers_tool_kit.php', 'action=locate_all_files&', '172.16.2.26');

-- --------------------------------------------------------

-- 
-- 表的结构 `authorizenet`
-- 

CREATE TABLE `authorizenet` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `customer_id` int(11) NOT NULL default '0',
  `order_id` int(11) NOT NULL default '0',
  `response_code` int(1) NOT NULL default '0',
  `response_text` varchar(255) NOT NULL default '',
  `authorization_type` varchar(50) NOT NULL default '',
  `transaction_id` bigint(20) default NULL,
  `sent` longtext NOT NULL,
  `received` longtext NOT NULL,
  `time` varchar(50) NOT NULL default '',
  `session_id` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `authorizenet`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `banners`
-- 

CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL auto_increment,
  `banners_title` varchar(64) NOT NULL default '',
  `banners_url` varchar(255) NOT NULL default '',
  `banners_image` varchar(64) NOT NULL default '',
  `banners_group` varchar(15) NOT NULL default '',
  `banners_html_text` text,
  `expires_impressions` int(7) default '0',
  `expires_date` datetime default NULL,
  `date_scheduled` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_status_change` datetime default NULL,
  `status` int(1) NOT NULL default '1',
  `banners_open_new_windows` int(1) NOT NULL default '1',
  `banners_on_ssl` int(1) NOT NULL default '1',
  `banners_sort_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`banners_id`),
  KEY `idx_status_group_zen` (`status`,`banners_group`),
  KEY `idx_expires_date_zen` (`expires_date`),
  KEY `idx_date_scheduled_zen` (`date_scheduled`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- 导出表中的数据 `banners`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `banners_history`
-- 

CREATE TABLE `banners_history` (
  `banners_history_id` int(11) NOT NULL auto_increment,
  `banners_id` int(11) NOT NULL default '0',
  `banners_shown` int(5) NOT NULL default '0',
  `banners_clicked` int(5) NOT NULL default '0',
  `banners_history_date` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`banners_history_id`),
  KEY `idx_banners_id_zen` (`banners_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `banners_history`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `categories`
-- 

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL auto_increment,
  `categories_image` varchar(64) default NULL,
  `parent_id` int(11) NOT NULL default '0',
  `sort_order` int(3) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  `categories_status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`categories_id`),
  KEY `idx_parent_id_cat_id_zen` (`parent_id`,`categories_id`),
  KEY `idx_status_zen` (`categories_status`),
  KEY `idx_sort_order_zen` (`sort_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

-- 
-- 导出表中的数据 `categories`
-- 

INSERT INTO `categories` VALUES (2, NULL, 0, 0, '2010-09-10 15:37:29', NULL, 1);
INSERT INTO `categories` VALUES (4, 'HF153.jpg', 2, 0, '2010-09-10 15:37:56', '2010-09-13 17:06:53', 1);
INSERT INTO `categories` VALUES (5, 'SZ04581530.jpg', 2, 0, '2010-09-10 17:56:58', '2010-09-13 17:06:42', 1);
INSERT INTO `categories` VALUES (6, 'SFA338.jpg', 0, 0, '2010-09-10 18:26:55', '2010-09-14 09:21:23', 1);
INSERT INTO `categories` VALUES (7, 'QW124.jpg', 6, 0, '2010-09-10 18:28:43', '2010-09-13 17:10:43', 1);
INSERT INTO `categories` VALUES (9, 'E4U-175.jpg', 2, 0, '2010-09-13 09:36:50', '2010-09-13 17:07:04', 1);
INSERT INTO `categories` VALUES (10, 'SZ09890044.jpg', 2, 0, '2010-09-13 09:59:22', '2010-09-13 17:07:16', 1);
INSERT INTO `categories` VALUES (11, 'SZM574.jpg', 6, 0, '2010-09-13 10:32:47', '2010-09-13 17:10:31', 1);
INSERT INTO `categories` VALUES (12, 'SFA1014.jpg', 6, 0, '2010-09-13 10:42:41', '2010-09-13 17:10:56', 1);
INSERT INTO `categories` VALUES (13, NULL, 0, 0, '2010-09-13 11:01:30', NULL, 0);
INSERT INTO `categories` VALUES (14, 'SZC711.jpg', 13, 0, '2010-09-13 11:04:47', '2010-09-13 17:06:14', 0);
INSERT INTO `categories` VALUES (15, 'SZC740.jpg', 13, 0, '2010-09-13 11:24:03', '2010-09-13 17:06:23', 0);
INSERT INTO `categories` VALUES (16, NULL, 0, 0, '2010-09-13 11:40:39', NULL, 1);
INSERT INTO `categories` VALUES (17, '00075997.jpg', 16, 0, '2010-09-13 11:41:11', '2010-09-13 17:09:21', 1);
INSERT INTO `categories` VALUES (18, 'CEV052.jpg', 16, 0, '2010-09-13 11:49:27', '2010-09-13 17:09:05', 1);
INSERT INTO `categories` VALUES (19, 'SZM871.jpg', 16, 0, '2010-09-13 13:45:45', '2010-09-13 17:08:43', 1);
INSERT INTO `categories` VALUES (20, 'YPY279.jpg', 16, 0, '2010-09-13 13:51:50', '2010-09-13 17:08:31', 1);
INSERT INTO `categories` VALUES (21, 'SFA1014.jpg', 16, 0, '2010-09-13 13:57:28', '2010-09-13 17:09:35', 1);
INSERT INTO `categories` VALUES (22, NULL, 0, 0, '2010-09-13 14:03:09', NULL, 1);
INSERT INTO `categories` VALUES (23, 'DSZZ055.jpg', 22, 0, '2010-09-13 14:03:38', '2010-09-13 17:11:53', 1);
INSERT INTO `categories` VALUES (24, 'WSM0228.jpg', 22, 0, '2010-09-13 14:16:08', '2010-09-13 17:11:39', 1);
INSERT INTO `categories` VALUES (25, '00094990.jpg', 22, 0, '2010-09-13 14:24:45', '2010-09-16 16:03:22', 1);
INSERT INTO `categories` VALUES (27, NULL, 0, 0, '2010-09-13 14:34:15', NULL, 1);
INSERT INTO `categories` VALUES (28, '00114259.jpg', 27, 0, '2010-09-13 14:34:34', '2010-09-13 17:13:10', 1);
INSERT INTO `categories` VALUES (29, '0923-T19.jpg', 27, 0, '2010-09-13 14:44:44', '2010-09-13 17:13:20', 1);
INSERT INTO `categories` VALUES (30, '00061371.jpg', 27, 0, '2010-09-13 14:58:36', '2010-09-13 17:13:32', 1);
INSERT INTO `categories` VALUES (31, '0718-28031.jpg', 27, 0, '2010-09-13 15:05:59', '2010-09-13 17:12:52', 1);
INSERT INTO `categories` VALUES (32, NULL, 0, 0, '2010-09-13 15:15:14', NULL, 1);
INSERT INTO `categories` VALUES (33, '0801-10562.jpg', 32, 0, '2010-09-13 15:15:31', '2010-09-13 17:14:00', 1);
INSERT INTO `categories` VALUES (34, '0801-10587.jpg', 32, 0, '2010-09-13 15:25:02', '2010-09-13 17:14:08', 1);
INSERT INTO `categories` VALUES (35, NULL, 0, 0, '2010-09-13 15:32:40', NULL, 1);
INSERT INTO `categories` VALUES (36, 'GZZQL0003.jpg', 35, 0, '2010-09-13 15:32:57', '2010-09-13 17:15:38', 1);
INSERT INTO `categories` VALUES (37, '0478-0809-5.jpg', 35, 0, '2010-09-13 15:40:09', '2010-09-13 17:15:25', 1);
INSERT INTO `categories` VALUES (38, 'YCSM0924-B012A.jpg', 35, 0, '2010-09-13 15:53:04', '2010-09-13 17:15:47', 1);
INSERT INTO `categories` VALUES (39, NULL, 0, 0, '2010-09-13 15:59:04', NULL, 1);
INSERT INTO `categories` VALUES (40, 'H300404896730.jpg', 39, 0, '2010-09-13 15:59:43', '2010-09-13 17:16:17', 1);
INSERT INTO `categories` VALUES (41, NULL, 0, 0, '2010-09-13 16:15:41', NULL, 1);
INSERT INTO `categories` VALUES (42, '00081966.jpg', 41, 0, '2010-09-13 16:16:32', '2010-09-13 17:14:41', 1);
INSERT INTO `categories` VALUES (43, '00124525.jpg', 41, 0, '2010-09-13 16:21:38', '2010-09-13 17:14:49', 1);
INSERT INTO `categories` VALUES (44, '1734184498482294a243fb2.jpg', 0, 0, '2010-09-13 16:29:03', '2010-09-16 17:47:08', 1);
INSERT INTO `categories` VALUES (46, '27020.jpg', 0, 0, '2010-09-13 16:55:39', '2010-09-13 17:07:54', 1);
INSERT INTO `categories` VALUES (48, NULL, 0, 0, '2010-09-13 17:01:16', NULL, 1);
INSERT INTO `categories` VALUES (49, '00094915.jpg', 48, 0, '2010-09-13 17:01:47', '2010-09-13 17:12:18', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `categories_description`
-- 

CREATE TABLE `categories_description` (
  `categories_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `categories_name` varchar(32) NOT NULL default '',
  `categories_description` text NOT NULL,
  PRIMARY KEY  (`categories_id`,`language_id`),
  KEY `idx_categories_name_zen` (`categories_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `categories_description`
-- 

INSERT INTO `categories_description` VALUES (2, 2, 'Cell Phones', '');
INSERT INTO `categories_description` VALUES (2, 1, 'Cell Phones', '');
INSERT INTO `categories_description` VALUES (4, 2, 'HiPhone', '');
INSERT INTO `categories_description` VALUES (4, 1, 'HiPhone', '');
INSERT INTO `categories_description` VALUES (5, 2, 'Bar Phone', '');
INSERT INTO `categories_description` VALUES (5, 1, 'Bar Phone', '');
INSERT INTO `categories_description` VALUES (6, 2, 'Electronics', '');
INSERT INTO `categories_description` VALUES (6, 1, 'Electronics', '');
INSERT INTO `categories_description` VALUES (7, 2, 'Security Systems', '');
INSERT INTO `categories_description` VALUES (7, 1, 'Security Systems', '');
INSERT INTO `categories_description` VALUES (9, 2, 'slide phone', '');
INSERT INTO `categories_description` VALUES (9, 1, 'slide phone', '');
INSERT INTO `categories_description` VALUES (10, 2, 'Watch Cell Phone', '');
INSERT INTO `categories_description` VALUES (10, 1, 'Watch Cell Phone', '');
INSERT INTO `categories_description` VALUES (11, 2, 'MP3 and Media Player', '');
INSERT INTO `categories_description` VALUES (11, 1, 'MP3 and Media Player', '');
INSERT INTO `categories_description` VALUES (12, 2, 'Video Game', '');
INSERT INTO `categories_description` VALUES (12, 1, 'Video Game', '');
INSERT INTO `categories_description` VALUES (13, 2, 'Car Electronics', '');
INSERT INTO `categories_description` VALUES (13, 1, 'Car Electronics', '');
INSERT INTO `categories_description` VALUES (14, 2, 'Car DVD Players', '');
INSERT INTO `categories_description` VALUES (14, 1, 'Car DVD Players', '');
INSERT INTO `categories_description` VALUES (15, 2, 'Car Lights', '');
INSERT INTO `categories_description` VALUES (15, 1, 'Car Lights', '');
INSERT INTO `categories_description` VALUES (16, 2, 'Computers', '');
INSERT INTO `categories_description` VALUES (16, 1, 'Computers', '');
INSERT INTO `categories_description` VALUES (17, 2, 'Laptops, Notebooks', '');
INSERT INTO `categories_description` VALUES (17, 1, 'Laptops, Notebooks', '');
INSERT INTO `categories_description` VALUES (18, 2, 'Input Devices', '');
INSERT INTO `categories_description` VALUES (18, 1, 'Input Devices', '');
INSERT INTO `categories_description` VALUES (19, 2, 'Drives and Storage', '');
INSERT INTO `categories_description` VALUES (19, 1, 'Drives and Storage', '');
INSERT INTO `categories_description` VALUES (20, 2, 'Computer Accessories', '');
INSERT INTO `categories_description` VALUES (20, 1, 'Computer Accessories', '');
INSERT INTO `categories_description` VALUES (21, 2, 'Networking', '');
INSERT INTO `categories_description` VALUES (21, 1, 'Networking', '');
INSERT INTO `categories_description` VALUES (22, 2, 'Gifts and Party Supplies', '');
INSERT INTO `categories_description` VALUES (22, 1, 'Gifts and Party Supplies', '');
INSERT INTO `categories_description` VALUES (23, 2, 'Valentine''s Day Gifts', '');
INSERT INTO `categories_description` VALUES (23, 1, 'Valentine''s Day Gifts', '');
INSERT INTO `categories_description` VALUES (24, 2, 'Mother''s Day Gifts', '');
INSERT INTO `categories_description` VALUES (24, 1, 'Mother''s Day Gifts', '');
INSERT INTO `categories_description` VALUES (25, 2, 'Father''s Day Gifts', '');
INSERT INTO `categories_description` VALUES (25, 1, 'Father''s Day Gifts', '');
INSERT INTO `categories_description` VALUES (27, 2, 'Home and Garden', '');
INSERT INTO `categories_description` VALUES (27, 1, 'Home and Garden', '');
INSERT INTO `categories_description` VALUES (28, 2, 'Faucets', '');
INSERT INTO `categories_description` VALUES (28, 1, 'Faucets', '');
INSERT INTO `categories_description` VALUES (29, 2, 'light', '');
INSERT INTO `categories_description` VALUES (29, 1, 'light', '');
INSERT INTO `categories_description` VALUES (30, 2, 'Paintings', '');
INSERT INTO `categories_description` VALUES (30, 1, 'Paintings', '');
INSERT INTO `categories_description` VALUES (31, 2, 'Bath', '');
INSERT INTO `categories_description` VALUES (31, 1, 'Bath', '');
INSERT INTO `categories_description` VALUES (32, 2, 'Jewelry', '');
INSERT INTO `categories_description` VALUES (32, 1, 'Jewelry', '');
INSERT INTO `categories_description` VALUES (33, 2, 'Cubic Zirconia Jewelry', '');
INSERT INTO `categories_description` VALUES (33, 1, 'Cubic Zirconia Jewelry', '');
INSERT INTO `categories_description` VALUES (34, 2, 'Sterling Silver Jewelry', '');
INSERT INTO `categories_description` VALUES (34, 1, 'Sterling Silver Jewelry', '');
INSERT INTO `categories_description` VALUES (35, 2, 'Sports Outdoor', '');
INSERT INTO `categories_description` VALUES (35, 1, 'Sports Outdoor', '');
INSERT INTO `categories_description` VALUES (36, 2, 'Fan Gear', '');
INSERT INTO `categories_description` VALUES (36, 1, 'Fan Gear', '');
INSERT INTO `categories_description` VALUES (37, 2, 'Cycling', '');
INSERT INTO `categories_description` VALUES (37, 1, 'Cycling', '');
INSERT INTO `categories_description` VALUES (38, 2, 'Water Sports', '');
INSERT INTO `categories_description` VALUES (38, 1, 'Water Sports', '');
INSERT INTO `categories_description` VALUES (39, 2, 'Toys and Hobbies', '');
INSERT INTO `categories_description` VALUES (39, 1, 'Toys and Hobbies', '');
INSERT INTO `categories_description` VALUES (40, 2, 'Radio Control', '');
INSERT INTO `categories_description` VALUES (40, 1, 'Radio Control', '');
INSERT INTO `categories_description` VALUES (41, 2, 'MiniInTheBox', '');
INSERT INTO `categories_description` VALUES (41, 1, 'MiniInTheBox', '');
INSERT INTO `categories_description` VALUES (42, 2, 'Computer Gadgets', '');
INSERT INTO `categories_description` VALUES (42, 1, 'Computer Gadgets', '');
INSERT INTO `categories_description` VALUES (43, 2, 'iPad Gadgets', '');
INSERT INTO `categories_description` VALUES (43, 1, 'iPad Gadgets', '');
INSERT INTO `categories_description` VALUES (44, 2, 'Clearance', '');
INSERT INTO `categories_description` VALUES (44, 1, 'Clearance', '');
INSERT INTO `categories_description` VALUES (46, 2, 'Clothing and Apparel', '');
INSERT INTO `categories_description` VALUES (46, 1, 'Clothing and Apparel', '');
INSERT INTO `categories_description` VALUES (48, 2, 'Health and Beauty', '');
INSERT INTO `categories_description` VALUES (48, 1, 'Health and Beauty', '');
INSERT INTO `categories_description` VALUES (49, 2, 'Baby and Kids', '');
INSERT INTO `categories_description` VALUES (49, 1, 'Baby and Kids', '');

-- --------------------------------------------------------

-- 
-- 表的结构 `configuration`
-- 

CREATE TABLE `configuration` (
  `configuration_id` int(11) NOT NULL auto_increment,
  `configuration_title` text NOT NULL,
  `configuration_key` varchar(255) NOT NULL default '',
  `configuration_value` text NOT NULL,
  `configuration_description` text NOT NULL,
  `configuration_group_id` int(11) NOT NULL default '0',
  `sort_order` int(5) default NULL,
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `use_function` text,
  `set_function` text,
  PRIMARY KEY  (`configuration_id`),
  UNIQUE KEY `unq_config_key_zen` (`configuration_key`),
  KEY `idx_key_value_zen` (`configuration_key`,`configuration_value`(10)),
  KEY `idx_cfg_grp_id_zen` (`configuration_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=616 ;

-- 
-- 导出表中的数据 `configuration`
-- 

INSERT INTO `configuration` VALUES (1, '商店名称', 'STORE_NAME', 'zen-cart.cn', '商店名称', 1, 1, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (2, '店主', 'STORE_OWNER', 'zen-cart.cn', '店主的名字', 1, 2, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (3, '国家或地区', 'STORE_COUNTRY', '223', '商店所在的国家或地区 <br /><br /><strong>备注: 请记住更新商店所在地区。</strong>', 1, 6, '2010-08-31 15:36:03', '2010-08-17 11:45:09', 'zen_get_country_name', 'zen_cfg_pull_down_country_list(');
INSERT INTO `configuration` VALUES (4, '地区', 'STORE_ZONE', '43', '商店所在地区', 1, 7, '2010-08-31 15:36:16', '2010-08-17 11:45:09', 'zen_cfg_get_zone_name', 'zen_cfg_pull_down_zone_list(');
INSERT INTO `configuration` VALUES (5, '预售商品排序', 'EXPECTED_PRODUCTS_SORT', 'desc', '预售商品方框的排序.', 1, 8, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''asc'', ''desc''), ');
INSERT INTO `configuration` VALUES (6, '预售商品排序字段', 'EXPECTED_PRODUCTS_FIELD', 'date_expected', '预售商品方框的排序字段.', 1, 9, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''products_name'', ''date_expected''), ');
INSERT INTO `configuration` VALUES (7, '使用缺省语言货币', 'USE_DEFAULT_LANGUAGE_CURRENCY', 'true', '自动转换到选择语言的相应货币', 1, 10, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (8, '语言选择', 'LANGUAGE_DEFAULT_SELECTOR', 'Default', '商店缺省的语言选择为商店的设置，还是用户浏览器中的设置？<br /><br />Default: 商店的缺省设置', 1, 11, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''Default'', ''Browser''), ');
INSERT INTO `configuration` VALUES (9, '使用搜索引擎友好的URLs (还在开发中)', 'SEARCH_ENGINE_FRIENDLY_URLS', 'false', 'Use search-engine safe urls for all site links', 6, 12, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (10, '添加商品后显示购物车', 'DISPLAY_CART', 'true', '添加商品后显示购物车 (或退回原来的状态)', 1, 14, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (11, '缺省搜索操作', 'ADVANCED_SEARCH_DEFAULT_OPERATOR', 'and', '缺省搜索操作', 1, 17, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''and'', ''or''), ');
INSERT INTO `configuration` VALUES (12, '商店地址和电话', 'STORE_NAME_ADDRESS', '商店名称\r\n 地址\r\n 国家\r\n 电话', '商店名称, 地址和电话号码, 用于打印文件和在线显示', 1, 18, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_textarea(');
INSERT INTO `configuration` VALUES (13, '显示分类计数', 'SHOW_COUNTS', 'false', '递归计算分类中商品数量', 1, 19, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (14, '税收小数位', 'TAX_DECIMAL_PLACES', '0', '税收金额的小数位', 1, 20, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (15, '显示含税价格', 'DISPLAY_PRICE_WITH_TAX', 'false', '显示含税价格 (True) 或 最后再加税 (False)', 1, 21, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (16, '在管理页面中显示含税价格', 'DISPLAY_PRICE_WITH_TAX_ADMIN', 'false', '在管理页面中(发票), 显示含税价格 (True) 或 最后再加税 (False)', 1, 21, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (17, '商品税的计算', 'STORE_PRODUCT_TAX_BASIS', 'Shipping', '计算商品税的基准. 选项为<br />Shipping - 基于送货地址<br />Billing 基于客户帐单地址<br />Store - 如果Billing/Shipping地区和商店所在地区相同, 采用商店的地址', 1, 21, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''Shipping'', ''Billing'', ''Store''), ');
INSERT INTO `configuration` VALUES (18, '运费税的计算', 'STORE_SHIPPING_TAX_BASIS', 'Shipping', '计算运费税的基准. 选项为<br />Shipping - 基于送货地址<br />Billing 基于客户帐单地址<br />Store - 如果Billing/Shipping地区和商店所在地区相同, 采用商店的地址 - 货运模块可以覆盖该设置', 1, 21, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''Shipping'', ''Billing'', ''Store''), ');
INSERT INTO `configuration` VALUES (19, '销售税显示', 'STORE_TAX_DISPLAY_STATUS', '0', '即使金额为零也显示销售税<br />0= 否<br />1= 是', 1, 21, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (20, '分开显示税项', 'SHOW_SPLIT_TAX_CHECKOUT', 'false', '如果有多个税项，结帐时每个税项单独显示一行', 1, 22, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (21, '管理对话超时秒数', 'SESSION_TIMEOUT_ADMIN', '3600', '输入以秒为单位的时间. 缺省=3600<br />例如: 3600= 1 小时<br /><br />备注: 时间太短会导致添加/编辑商品时超时', 1, 40, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (22, '管理设置最大进程执行时间', 'GLOBAL_SET_TIME_LIMIT', '60', '输入以秒为单位的时间, 管理设置最大进程执行时间。<br />缺省=60 秒<br />例如: 60= 1 分钟<br /><br />备注: 仅当您进程执行时间有问题时, 才需要修改该时间限制', 1, 42, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (23, '显示是否有新版本', 'SHOW_VERSION_UPDATE_IN_HEADER', 'false', '自动显示是否有Zen Cart新版本。打开该选项有时会降低管理页面打开时间。(显示于登录后的主索引页面和服务器信息页面)', 1, 44, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (24, '商店模式', 'STORE_STATUS', '0', '商店模式<br />0= 正常<br />1= 商品展示, 不显示价格<br />2= 商品展示, 显示价格', 1, 25, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2''), ');
INSERT INTO `configuration` VALUES (25, '服务器运行时数', 'DISPLAY_SERVER_UPTIME', 'true', '显示服务器运行时数在某些服务器上会导致日志文件中有错误记录。(true = 显示, false = 不显示)', 1, 46, '2003-11-08 20:24:47', '0001-01-01 00:00:00', '', 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (26, '丢失页面检测', 'MISSING_PAGE_CHECK', 'Page Not Found', 'Zen Cart能够检测不存在的页面并自动调转到索引页面。调试时可关闭该选项。<br /><br /><strong>缺省=On</strong><br />On = 如有不存在的页面，调整到''index''<br />Off = 不检测不存在的页面<br />Page Not Found = 显示页面不存在的提示页面', 1, 48, '2003-11-08 20:24:47', '0001-01-01 00:00:00', '', 'zen_cfg_select_option(array(''On'', ''Off'', ''Page Not Found''),');
INSERT INTO `configuration` VALUES (27, 'cURL代理服务器状态', 'CURL_PROXY_REQUIRED', 'False', '您的cURL是否使用代理服务器?', 1, 50, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''True'', ''False''), ');
INSERT INTO `configuration` VALUES (28, 'cURL代理服务器地址', 'CURL_PROXY_SERVER_DETAILS', '', '如果您使用GoDaddy或其他主机，并需要通过cURL使用代理服务器，在这里输入地址。<br />格式: 地址:端口<br />例如: GoDaddy主机，输入: <strong>proxy.shr.secureserver.net:3128</strong> 或 64.202.165.130:3128', 1, 51, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (29, 'HTML编辑器', 'HTML_EDITOR_PREFERENCE', 'NONE', '请选择用于管理电子邮件、电子商情和商品简介的文本编辑器。', 1, 110, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_pull_down_htmleditors(');
INSERT INTO `configuration` VALUES (30, '打开phpBB链接?', 'PHPBB_LINKS_ENABLED', 'false', 'Zen Cart的新帐号要和您的(已安装)phpBB论坛同步吗?', 1, 120, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (31, '显示分类计数 - 管理员', 'SHOW_COUNTS_ADMIN', 'true', '在管理页面显示分类计数吗?', 1, 19, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (32, '货币兑换比率', 'CURRENCY_UPLIFT_RATIO', '1.05', '自动更新汇率时，需要使用的"额外"比率是多少？<br />例如: 从汇率服务器更新银行汇率后，您要在银行汇率基础上增加多少比例来设置给客户的汇率？<br /><br /><strong>缺省: 1.05 </strong><br />将公布的银行汇率乘以1.05作为商店的汇率。', 1, 55, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (33, '名字', 'ENTRY_FIRST_NAME_MIN_LENGTH', '3', '名字最少字数', 2, 1, '2010-08-17 15:22:01', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (34, '姓氏', 'ENTRY_LAST_NAME_MIN_LENGTH', '1', '姓氏最少字数', 2, 2, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (35, '生日', 'ENTRY_DOB_MIN_LENGTH', '10', '生日最少字数', 2, 3, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (36, '电子邮件', 'ENTRY_EMAIL_ADDRESS_MIN_LENGTH', '6', '电子邮件地址最少字数', 2, 4, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (37, '地址', 'ENTRY_STREET_ADDRESS_MIN_LENGTH', '4', '地址最少字数', 2, 5, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (38, '公司', 'ENTRY_COMPANY_MIN_LENGTH', '0', '公司名称最少字数', 2, 6, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (39, '邮编', 'ENTRY_POSTCODE_MIN_LENGTH', '4', '邮编最少字数', 2, 7, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (40, '城市', 'ENTRY_CITY_MIN_LENGTH', '2', '城市最少字数', 2, 8, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (41, '省份', 'ENTRY_STATE_MIN_LENGTH', '2', '省份最少字数', 2, 9, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (42, '电话号码', 'ENTRY_TELEPHONE_MIN_LENGTH', '6', '电话号码最少字数', 2, 10, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (43, '密码', 'ENTRY_PASSWORD_MIN_LENGTH', '6', '密码最少字数', 2, 11, '2010-08-31 15:34:14', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (44, '信用卡持卡人姓名', 'CC_OWNER_MIN_LENGTH', '2', '信用卡持卡人姓名最少字数', 2, 12, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (45, '信用卡号', 'CC_NUMBER_MIN_LENGTH', '10', '信用卡号码最少字数', 2, 13, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (46, '信用卡CVV校验码', 'CC_CVV_MIN_LENGTH', '3', '信用卡CVV校验码最少字数', 2, 13, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (47, '商品评论文字', 'REVIEW_TEXT_MIN_LENGTH', '1', '商品评论文字最少字数', 2, 14, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (48, '畅销商品', 'MIN_DISPLAY_BESTSELLERS', '1', '成为畅销商品的最小销售数量', 2, 15, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (49, '同时购买商品', 'MIN_DISPLAY_ALSO_PURCHASED', '1', '显示为客户同时购买商品的最少数量', 2, 16, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (50, '昵称', 'ENTRY_NICK_MIN_LENGTH', '2', '昵称最少字数', 2, 1, '2010-08-17 15:22:07', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (51, '地址簿条目', 'MAX_ADDRESS_BOOK_ENTRIES', '5', '每个客户地址簿中最多允许的条目', 3, 1, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (52, '每页搜索结果', 'MAX_DISPLAY_SEARCH_RESULTS', '20', '搜索结果页面显示的商品数量', 3, 2, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (53, '前/后页导航页链接', 'MAX_DISPLAY_PAGE_LINKS', '5', '导航链接显示的数目的数量', 3, 3, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (54, '首页新进商品数量', 'MAX_DISPLAY_NEW_PRODUCTS', '6', '显示在首页的新进商品数量', 3, 4, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (55, '首页推荐商品数量', 'MAX_DISPLAY_SEARCH_RESULTS_FEATURED', '6', '显示在首页的推荐商品数量', 3, 5, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (56, '首页特价商品数量', 'MAX_DISPLAY_SPECIAL_PRODUCTS_INDEX', '6', '显示在首页的特价商品数量', 3, 6, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (57, '预售商品数量', 'MAX_DISPLAY_UPCOMING_PRODUCTS', '10', '显示的预售商品数量', 3, 7, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (58, '特价商品列表数量', 'MAX_DISPLAY_SPECIAL_PRODUCTS', '6', '特价商品列表每页显示的商品数量', 3, 8, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (59, '新进商品列表数量', 'MAX_DISPLAY_PRODUCTS_NEW', '10', '新进商品列表每页显示的商品数量', 3, 9, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (60, '推荐商品列表数量', 'MAX_DISPLAY_PRODUCTS_FEATURED_PRODUCTS', '10', '推荐商品列表每页显示的商品数量', 3, 29, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (61, '所有商品列表数量', 'MAX_DISPLAY_PRODUCTS_ALL', '10', '所有商品列表每页显示的商品数量', 3, 11, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (62, '分类商品列表数量', 'MAX_DISPLAY_PRODUCTS_LISTING', '10', '分类商品列表每页显示的商品数量', 3, 12, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (63, '畅销商品数量', 'MAX_DISPLAY_BESTSELLERS', '10', '畅销商品数量', 3, 13, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (64, '同时购买商品数量', 'MAX_DISPLAY_ALSO_PURCHASED', '6', '''客户同时购买的商品''方框中显示的商品数量', 3, 14, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (65, '边框中随机推荐商品数量', 'MAX_RANDOM_SELECT_FEATURED_PRODUCTS', '1', '在边框中显示的随机推荐商品的数量<br />输入在本边框中同时显示的商品数量。<br /><br />本边框中显示多少商品?', 3, 15, '2010-08-17 14:36:15', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (66, '边框中随机新进商品数量', 'MAX_RANDOM_SELECT_NEW', '1', '在边框中显示的随机新进商品的数量<br />输入在本边框中同时显示的商品数量。<br /><br />本边框中显示多少商品?', 3, 16, '2010-08-17 14:36:10', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (67, '边框中随机特价商品数量', 'MAX_RANDOM_SELECT_SPECIALS', '1', '在边框中显示的随机特价商品的数量<br />输入在本边框中同时显示的商品数量。<br /><br />本边框中显示多少商品?', 3, 17, '2010-08-17 14:36:22', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (68, '边框中随机商品评论数量', 'MAX_RANDOM_SELECT_REVIEWS', '1', '在边框中显示的随机商品评论的数量<br />输入在本边框中同时显示的商品数量。<br /><br />本边框中显示多少商品?', 3, 18, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (69, '每页商品评论数量', 'MAX_DISPLAY_NEW_REVIEWS', '6', '每页显示的商品评论数量', 3, 19, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (70, '厂商列表 - 滚动栏大小/样式', 'MAX_MANUFACTURERS_LIST', '1', '滚动栏窗口里显示的厂商数目。如果设为1或0显示下拉菜单', 3, 20, '2010-08-17 13:45:21', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (71, '厂商列表 - 检验商品存在', 'PRODUCTS_MANUFACTURERS_STATUS', '1', '要显示厂商名字，保证至少存在一个有效商品<br /><br />提示: 当该开关为开启时，如果有很多商品或厂商，会影响网站速度<br />0= 关 1= 开', 3, 21, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (72, '音乐类型列表 - 滚动栏大小/样式', 'MAX_MUSIC_GENRES_LIST', '3', '滚动栏窗口里显示的音乐类型数目. 如果设为1或0会显示下拉菜单。', 3, 22, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (73, '唱片公司列表 - 滚动栏大小/样式', 'MAX_RECORD_COMPANY_LIST', '3', '滚动栏窗口里显示的唱片公司数目. 如果设为1或0会显示下拉菜单。', 3, 23, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (74, '唱片公司名称长度', 'MAX_DISPLAY_RECORD_COMPANY_NAME_LEN', '15', '用于唱片公司栏; 唱片公司名称显示的最大长度. 太长的名字会被截断.', 3, 24, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (75, '音乐类型名称长度', 'MAX_DISPLAY_MUSIC_GENRES_NAME_LEN', '15', '用于音乐类型栏; 音乐类型名称显示的最大长度. 太长的名字会被截断.', 3, 25, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (76, '厂商名字长度', 'MAX_DISPLAY_MANUFACTURER_NAME_LEN', '15', '用于厂商栏; 厂商名字显示的最大长度. 太长的名字会被截断.', 3, 26, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (77, '每行分类数目', 'MAX_DISPLAY_CATEGORIES_PER_ROW', '3', '每行分类数目', 3, 27, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (78, '最近购买边框- 备注: 边框已关闭', 'MAX_DISPLAY_PRODUCTS_IN_ORDER_HISTORY_BOX', '6', '最近购买边框中显示的商品数量', 3, 28, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (79, '每页显示的客户订单数', 'MAX_DISPLAY_ORDER_HISTORY', '10', '''我的帐号''订单历史中显示的订单数目', 3, 29, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (80, '客户页显示最大客户数', 'MAX_DISPLAY_SEARCH_RESULTS_CUSTOMER', '20', '', 3, 30, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (81, '订单页显示最大订单数', 'MAX_DISPLAY_SEARCH_RESULTS_ORDERS', '20', '', 3, 31, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (82, '分析系统页面显示的商品数', 'MAX_DISPLAY_SEARCH_RESULTS_REPORTS', '20', '', 3, 32, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (83, '最大分类商品显示列表', 'MAX_DISPLAY_RESULTS_CATEGORIES', '10', '每页显示的商品数目', 3, 33, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (84, '商品属性 - 选项名称和值的显示', 'MAX_ROW_LISTS_OPTIONS', '10', '显示在商品属性页面的选项名称和值的数量', 3, 34, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (85, '商品属性 - 属性数量的显示', 'MAX_ROW_LISTS_ATTRIBUTES_CONTROLLER', '30', '显示在商品属性控制页面的属性数量', 3, 35, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (86, '商品属性 - 下载管理显示', 'MAX_DISPLAY_SEARCH_RESULTS_DOWNLOADS_MANAGER', '30', '下载管理页面显示的下载数量', 3, 36, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (87, '推荐商品 - 显示在管理页面的数量', 'MAX_DISPLAY_SEARCH_RESULTS_FEATURED_ADMIN', '10', '管理页面下每屏的推荐商品数量', 3, 37, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (88, '新进商品的定义', 'SHOW_NEW_PRODUCTS_LIMIT', '0', '新进商品列表的定义<br />0= 所有商品<br />1= 当前月份<br />7= 7 天<br />14= 14 天<br />30= 30 天<br />60= 60 天<br />90= 90 天<br />120= 120 天', 3, 40, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''7'', ''14'', ''30'', ''60'', ''90'', ''120''), ');
INSERT INTO `configuration` VALUES (89, '显示语言图标的数目', 'MAX_LANGUAGE_FLAGS_COLUMNS', '3', '语言边框中每行显示的语言图标的数目', 3, 50, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (90, '最大文件上传大小', 'MAX_FILE_UPLOAD_SIZE', '2048000', '允许上传文件的大小<br />缺省= 2048000', 3, 60, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (91, '允许上传的文件名后缀', 'UPLOAD_FILENAME_EXTENSIONS', 'jpg,jpeg,gif,png,eps,cdr,ai,pdf,tif,tiff,bmp,zip', '列出允许客户上传到您网站的文件类型 (文件名后缀)。用逗号(,)分开。不要包含点(.)。<br /><br />建议设置: "jpg,jpeg,gif,png,eps,cdr,ai,pdf,tif,tiff,bmp,zip"', 3, 61, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_textarea(');
INSERT INTO `configuration` VALUES (92, '管理订单下显示的订单内容', 'MAX_DISPLAY_RESULTS_ORDERS_DETAILS_LISTING', '0', '最多订单内容数<br />0 = 无限制', 3, 65, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (93, '管理页面显示的PayPal IPN的数量', 'MAX_DISPLAY_SEARCH_RESULTS_PAYPAL_IPN', '20', '管理页面显示PayPal IPN的数量<br />缺省为20', 3, 66, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (94, '商品链接多个分类的显示', 'MAX_DISPLAY_PRODUCTS_TO_CATEGORIES_COLUMNS', '3', '商品链接到多个分类的管理界面下，显示的列数<br />3 = 缺省', 3, 70, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (95, '简易页面的显示数量', 'MAX_DISPLAY_SEARCH_RESULTS_EZPAGE', '20', '简易页面的显示数量<br />20 = 缺省', 3, 71, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (96, '小图像宽度', 'SMALL_IMAGE_WIDTH', '100', '小图像象素宽度', 4, 1, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (97, '小图像高度', 'SMALL_IMAGE_HEIGHT', '100', '小图像象素高度', 4, 2, '2010-09-01 21:13:38', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (98, '标题图像宽度 - 管理页面', 'HEADING_IMAGE_WIDTH', '57', '管理页面的标题图像象素宽度<br />说明: 该值调整管理页面的间距，或可用在管理页面增加标题图像', 4, 3, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (99, '标题图像高度 - 管理页面', 'HEADING_IMAGE_HEIGHT', '40', '管理页面的标题图像象素高度<br />说明: 该值调整管理页面的间距，或可用在管理页面增加标题图像', 4, 4, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (100, '子分类图像宽度', 'SUBCATEGORY_IMAGE_WIDTH', '100', '子分类图像象素宽度', 4, 5, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (101, '子分类图像高度', 'SUBCATEGORY_IMAGE_HEIGHT', '57', '子分类图像象素高度', 4, 6, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (102, '计算图像尺寸', 'CONFIG_CALCULATE_IMAGE_SIZE', 'true', '是否计算图像尺寸?', 4, 7, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (103, '显示缺少的图像', 'IMAGE_REQUIRED', 'true', '显示缺少的图像。适合调试。', 4, 8, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (104, '图像 - 购物车状态', 'IMAGE_SHOPPING_CART_STATUS', '1', '是否在购物车中显示商品图像?<br />0= 否 1= 是', 4, 9, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (105, '图像 - 购物车宽度', 'IMAGE_SHOPPING_CART_WIDTH', '50', '缺省 = 50', 4, 10, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (106, '图像 - 购物车高度', 'IMAGE_SHOPPING_CART_HEIGHT', '40', '缺省 = 40', 4, 11, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (107, '分类图像宽度 - 商品信息页面', 'CATEGORY_ICON_IMAGE_WIDTH', '57', '商品信息页面的分类图标的象素宽度', 4, 13, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (108, '分类图像高度 - 商品信息页面', 'CATEGORY_ICON_IMAGE_HEIGHT', '40', '商品信息页面的分类图标的象素高度', 4, 14, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (109, '含子分类的分类图像宽度', 'SUBCATEGORY_IMAGE_TOP_WIDTH', '150', '含子分类的分类图像宽度', 4, 15, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (110, '含子分类的分类图像高度', 'SUBCATEGORY_IMAGE_TOP_HEIGHT', '85', '含子分类的分类图像高度', 4, 16, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (111, '商品信息 - 图像宽度', 'MEDIUM_IMAGE_WIDTH', '282', '商品信息图像的象素宽度', 4, 20, '2010-09-02 12:47:14', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (112, '商品信息 - 图像高度', 'MEDIUM_IMAGE_HEIGHT', '282', '商品信息图像的象素高度', 4, 21, '2010-09-02 12:47:20', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (113, '商品信息 - 中图像后缀', 'IMAGE_SUFFIX_MEDIUM', '_MED', '商品信息 - 中图像后缀<br />缺省 = _MED', 4, 22, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (114, '商品信息 - 大图像后缀', 'IMAGE_SUFFIX_LARGE', '_LRG', '商品信息 - 大图像后缀<br />缺省 = _LRG', 4, 23, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (115, '商品信息 - 每行附加图像数目', 'IMAGES_AUTO_ADDED', '3', '商品信息 - 每行附加图像数目<br />缺省 = 3', 4, 30, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (116, '图像 - 商品列表宽度', 'IMAGE_PRODUCT_LISTING_WIDTH', '100', '缺省 = 100', 4, 40, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (117, '图像 - 商品列表高度', 'IMAGE_PRODUCT_LISTING_HEIGHT', '80', '缺省 = 80', 4, 41, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (118, '图像 - 新进商品列表宽度', 'IMAGE_PRODUCT_NEW_LISTING_WIDTH', '100', '缺省 = 100', 4, 42, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (119, '图像 - 新进商品列表高度', 'IMAGE_PRODUCT_NEW_LISTING_HEIGHT', '80', '缺省 = 80', 4, 43, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (120, '图像 - 新进商品宽度', 'IMAGE_PRODUCT_NEW_WIDTH', '100', '缺省 = 100', 4, 44, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (121, '图像 - 新进商品高度', 'IMAGE_PRODUCT_NEW_HEIGHT', '80', '缺省 = 80', 4, 45, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (122, '图像 - 推荐商品宽度', 'IMAGE_FEATURED_PRODUCTS_LISTING_WIDTH', '100', '缺省 = 100', 4, 46, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (123, '图像 - 推荐商品高度', 'IMAGE_FEATURED_PRODUCTS_LISTING_HEIGHT', '80', '缺省 = 80', 4, 47, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (124, '图像 - 所有商品列表宽度', 'IMAGE_PRODUCT_ALL_LISTING_WIDTH', '100', '缺省 = 100', 4, 48, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (125, '图像 - 所有商品列表高度', 'IMAGE_PRODUCT_ALL_LISTING_HEIGHT', '80', '缺省 = 80', 4, 49, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (126, '商品图像 - 缺省图象状态', 'PRODUCTS_IMAGE_NO_IMAGE_STATUS', '1', '如果商品没有图像，是否使用缺省图象<br />0= 否<br />1= 是', 4, 60, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (127, '商品图像 - 缺省图象', 'PRODUCTS_IMAGE_NO_IMAGE', 'no_picture.gif', '如果商品没有图像，使用的缺省图象的文件名<br />缺省 = no_picture.gif', 4, 61, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (128, '图像 - 商品和分类使用同比例的图像', 'PROPORTIONAL_IMAGES_STATUS', '1', '商品和分类使用同比例的图像吗?<br /><br />提示: 图像比例中不要设置高度或宽度为0<br />0= 关 1= 开', 4, 75, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (129, '称呼字段', 'ACCOUNT_GENDER', 'true', '创建帐号时显示性别选择字段，用于发送电子邮件时的称呼。', 5, 1, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (130, '生日字段', 'ACCOUNT_DOB', 'true', '创建帐号时显示生日字段<br />说明: 生日字段的最小值设置为空时，该字段为可选项<br />生日字段的最小值>0时为必选项', 5, 2, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (131, '公司字段', 'ACCOUNT_COMPANY', 'false', '创建帐号时显示公司字段', 5, 3, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (132, '地址行二', 'ACCOUNT_SUBURB', 'true', '创建帐号时显示地址行二字段', 5, 4, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (133, '省份', 'ACCOUNT_STATE', 'true', '创建帐号时显示省份字段', 5, 5, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (134, '省份 - 总是显示下拉菜单？', 'ACCOUNT_STATE_DRAW_INITIAL_DROPDOWN', 'true', '省份总是显示为下拉菜单吗？', 5, 5, '2010-08-31 15:29:33', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (135, '创建帐号时的缺省国家', 'SHOW_CREATE_ACCOUNT_DEFAULT_COUNTRY', '223', '设置新建帐号时的默认国家：<br />默认为美国', 5, 6, NULL, '2010-08-17 11:45:09', 'zen_get_country_name', 'zen_cfg_pull_down_country_list_none(');
INSERT INTO `configuration` VALUES (136, '传真号码', 'ACCOUNT_FAX_NUMBER', 'false', '创建帐号时显示传真号码字段', 5, 10, '2010-08-31 16:04:52', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (137, '显示电子商情选择框', 'ACCOUNT_NEWSLETTER_STATUS', '0', '显示电子商情选择框<br />0= 否<br />1= 显示未选择<br />2= 显示已选择<br /><strong>提示: 将该值缺省为接受也许会违反您所在国或地区的规章</strong>', 5, 45, '2010-08-31 15:29:58', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2''), ');
INSERT INTO `configuration` VALUES (138, '缺省电子邮件格式', 'ACCOUNT_EMAIL_PREFERENCE', '0', '设置客户缺省电子邮件格式<br />0= 文本<br />1= HTML<br /><strong>提示: 将该值缺省为接受也许会违反您所在国或地区的规章。</strong>', 5, 46, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (139, '商品通知', 'CUSTOMERS_PRODUCTS_NOTIFICATION_STATUS', '1', '结帐时是否提示客户商品通知<br />0= 不提示<br />1= 提示 (除非已选择全局通知)<br /><br />提示: 边框要另外关闭', 5, 50, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (140, '购物模式 - 查看商品和价格', 'CUSTOMERS_APPROVAL', '0', '客户是否需要批准后才能购物<br />0= 不需要<br />1= 登录后才能浏览<br />2= 可以浏览，但登录后才显示价格<br />3= 演示用途<br /><br />建议选项 2 用于防止Spiders，如果您希望客户登录后才能查看价格。', 5, 55, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''), ');
INSERT INTO `configuration` VALUES (141, '客户批准模式 - 授权等待中', 'CUSTOMERS_APPROVAL_AUTHORIZATION', '0', '客户是否需要授权后才能购物<br />0= 不需要授权<br />1= 授权后才能浏览<br />2= 可以浏览，但授权后才显示价格<br />3= 客户可以浏览商品和价格，但需要授权后才可购物<br /><br />推荐使用选项 2 或 3 防止Spiders', 5, 65, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''), ');
INSERT INTO `configuration` VALUES (142, '客户授权: 文件名', 'CUSTOMERS_AUTHORIZATION_FILENAME', 'customers_authorization', '客户授权的文件名<br />提示: 不要包含后缀<br />缺省=customers_authorization', 5, 66, NULL, '2010-08-17 11:45:09', NULL, '');
INSERT INTO `configuration` VALUES (143, '客户授权: 隐藏页眉', 'CUSTOMERS_AUTHORIZATION_HEADER_OFF', 'false', '客户授权: 隐藏页眉 <br />(true=隐藏 false=显示)', 5, 67, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (144, '客户授权: 隐藏左栏目', 'CUSTOMERS_AUTHORIZATION_COLUMN_LEFT_OFF', 'false', '客户授权: 隐藏左栏目 <br />(true=隐藏 false=显示)', 5, 68, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (145, '客户授权: 隐藏右栏目', 'CUSTOMERS_AUTHORIZATION_COLUMN_RIGHT_OFF', 'false', '客户授权: 隐藏右栏目 <br />(true=隐藏 false=显示)', 5, 69, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (146, '客户授权: 隐藏页脚', 'CUSTOMERS_AUTHORIZATION_FOOTER_OFF', 'false', '客户授权: 隐藏页脚 <br />(true=隐藏 false=显示)', 5, 70, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (147, '客户授权: 隐藏价格', 'CUSTOMERS_AUTHORIZATION_PRICES_OFF', 'false', '客户授权: 隐藏价格 <br />(true=隐藏 false=显示)', 5, 71, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (148, '客户推荐模式', 'CUSTOMERS_REFERRAL_STATUS', '0', '客户推荐代码创建于<br />0= 关闭<br />1= 用户使用的第一张优惠券的号码<br />2= 客户可以在创建帐号时添加，如果为空可以编辑<br /><br />提示: 一旦客户推荐号码设置好，只能在客户管理下修改', 5, 80, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2''), ');
INSERT INTO `configuration` VALUES (149, '已安装支付模块', 'MODULE_PAYMENT_INSTALLED', 'freecharger.php;paypalwpp.php', '支付模块文件名用分号隔开。自动更新，无需编辑。(例如: freecharger.php;cod.php;paypal.php)', 6, 0, '2010-08-31 16:47:26', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (150, '已安装总额计算模块', 'MODULE_ORDER_TOTAL_INSTALLED', 'ot_subtotal.php;ot_shipping.php;ot_coupon.php;ot_group_pricing.php;ot_tax.php;ot_loworderfee.php;ot_gv.php;ot_total.php', '总额计算模块文件名用分号分开。自动更新，无需编辑。(例如: ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php)', 6, 0, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (151, '已安装配送模块', 'MODULE_SHIPPING_INSTALLED', 'flat.php;freeshipper.php;item.php;storepickup.php;zones.php', '配送模块文件名用分号分开。自动更新，无需编辑。(例如: ups.php;flat.php;item.php)', 6, 0, '2010-09-26 15:45:52', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (152, '启用免运费模块', 'MODULE_SHIPPING_FREESHIPPER_STATUS', 'True', '要启用免运费模块吗?', 6, 0, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''True'', ''False''), ');
INSERT INTO `configuration` VALUES (153, '免运费成本', 'MODULE_SHIPPING_FREESHIPPER_COST', '0.00', '免运费成本?', 6, 6, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (154, '手续费', 'MODULE_SHIPPING_FREESHIPPER_HANDLING', '0', '免运费手续费。', 6, 0, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (155, '税率', 'MODULE_SHIPPING_FREESHIPPER_TAX_CLASS', '0', '免运费手续费税率。', 6, 0, NULL, '2010-08-17 11:45:09', 'zen_get_tax_class_title', 'zen_cfg_pull_down_tax_classes(');
INSERT INTO `configuration` VALUES (156, '免运费地区', 'MODULE_SHIPPING_FREESHIPPER_ZONE', '0', '如果免运费，仅限于该地区。', 6, 0, NULL, '2010-08-17 11:45:09', 'zen_get_zone_class_title', 'zen_cfg_pull_down_zone_classes(');
INSERT INTO `configuration` VALUES (157, '显示排序', 'MODULE_SHIPPING_FREESHIPPER_SORT_ORDER', '0', '显示排序。', 6, 0, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (158, '商店提货', 'MODULE_SHIPPING_STOREPICKUP_STATUS', 'True', '使用商店提货?', 6, 0, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''True'', ''False''), ');
INSERT INTO `configuration` VALUES (159, '商店提货费用', 'MODULE_SHIPPING_STOREPICKUP_COST', '0.00', '商店提货费用。', 6, 0, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (160, '税率', 'MODULE_SHIPPING_STOREPICKUP_TAX_CLASS', '0', '商店提货处理费税率。', 6, 0, NULL, '2010-08-17 11:45:09', 'zen_get_tax_class_title', 'zen_cfg_pull_down_tax_classes(');
INSERT INTO `configuration` VALUES (161, '税率基准', 'MODULE_SHIPPING_STOREPICKUP_TAX_BASIS', 'Shipping', '运费税的计算方法。选项为<br />Shipping - 基于客户的送货地址<br />Billing 基于客户的帐单地址<br />Store - 如果帐单/送货地区和商店所在地区相同，采用商店地址', 6, 0, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''Shipping'', ''Billing''), ');
INSERT INTO `configuration` VALUES (162, '配送地区', 'MODULE_SHIPPING_STOREPICKUP_ZONE', '0', '如果选择了地区，只有该地区才使用该配送方式。', 6, 0, NULL, '2010-08-17 11:45:09', 'zen_get_zone_class_title', 'zen_cfg_pull_down_zone_classes(');
INSERT INTO `configuration` VALUES (163, '显示排序', 'MODULE_SHIPPING_STOREPICKUP_SORT_ORDER', '0', '显示的排序。', 6, 0, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (164, '按件计价', 'MODULE_SHIPPING_ITEM_STATUS', 'True', '使用按件计价吗?', 6, 0, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''True'', ''False''), ');
INSERT INTO `configuration` VALUES (165, '运输费用', 'MODULE_SHIPPING_ITEM_COST', '2.50', '运输费用随订单内件数的增加而增加的配送方式。', 6, 0, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (166, '手续费', 'MODULE_SHIPPING_ITEM_HANDLING', '0', '此配送方式的手续费。', 6, 0, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (167, '税率', 'MODULE_SHIPPING_ITEM_TAX_CLASS', '0', '此运费用下面的税率。', 6, 0, NULL, '2010-08-17 11:45:09', 'zen_get_tax_class_title', 'zen_cfg_pull_down_tax_classes(');
INSERT INTO `configuration` VALUES (168, '税率基准', 'MODULE_SHIPPING_ITEM_TAX_BASIS', 'Shipping', '运费税的计算方法。选项为<br />Shipping - 基于客户的送货地址<br />Billing 基于客户的帐单地址<br />Store - 如果帐单/送货地区和商店所在地区相同，采用商店地址', 6, 0, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''Shipping'', ''Billing'', ''Store''), ');
INSERT INTO `configuration` VALUES (169, '配送地区', 'MODULE_SHIPPING_ITEM_ZONE', '0', '如果选择了地区，只有该地区才使用该配送方式.', 6, 0, NULL, '2010-08-17 11:45:09', 'zen_get_zone_class_title', 'zen_cfg_pull_down_zone_classes(');
INSERT INTO `configuration` VALUES (170, '显示排序', 'MODULE_SHIPPING_ITEM_SORT_ORDER', '0', '显示的顺序。', 6, 0, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (171, '启用免费商品模块', 'MODULE_PAYMENT_FREECHARGER_STATUS', 'True', '您接受商品免费吗?', 6, 1, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''True'', ''False''), ');
INSERT INTO `configuration` VALUES (172, '显示排序.', 'MODULE_PAYMENT_FREECHARGER_SORT_ORDER', '0', '显示的顺序。低的显示在前。', 6, 0, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (173, '支付地区', 'MODULE_PAYMENT_FREECHARGER_ZONE', '0', '如果选择地区则仅限该地区使用此支付方式。', 6, 2, NULL, '2010-08-17 11:45:09', 'zen_get_zone_class_title', 'zen_cfg_pull_down_zone_classes(');
INSERT INTO `configuration` VALUES (174, '设置订单状态', 'MODULE_PAYMENT_FREECHARGER_ORDER_STATUS_ID', '0', '设置该支付方式下订单状态为', 6, 0, NULL, '2010-08-17 11:45:09', 'zen_get_order_status_name', 'zen_cfg_pull_down_order_statuses(');
INSERT INTO `configuration` VALUES (175, '含税', 'MODULE_ORDER_TOTAL_GROUP_PRICING_INC_TAX', 'false', '计算时含税?', 6, 6, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (176, '该模块已安装', 'MODULE_ORDER_TOTAL_GROUP_PRICING_STATUS', 'true', '', 6, 1, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true''), ');
INSERT INTO `configuration` VALUES (177, '显示排序', 'MODULE_ORDER_TOTAL_GROUP_PRICING_SORT_ORDER', '290', '显示的顺序.', 6, 2, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (178, '含运费', 'MODULE_ORDER_TOTAL_GROUP_PRICING_INC_SHIPPING', 'false', '计算时含运费?', 6, 5, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (179, '重算税价', 'MODULE_ORDER_TOTAL_GROUP_PRICING_CALC_TAX', 'Standard', '重新计算税', 6, 7, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''None'', ''Standard'', ''Credit Note''), ');
INSERT INTO `configuration` VALUES (180, '税率', 'MODULE_ORDER_TOTAL_GROUP_PRICING_TAX_CLASS', '0', '团体优惠时使用税率.', 6, 0, NULL, '2010-08-17 11:45:09', 'zen_get_tax_class_title', 'zen_cfg_pull_down_tax_classes(');
INSERT INTO `configuration` VALUES (181, '使用固定运费', 'MODULE_SHIPPING_FLAT_STATUS', 'True', '您要使用固定运费吗?', 6, 0, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''True'', ''False''), ');
INSERT INTO `configuration` VALUES (182, '配送费用', 'MODULE_SHIPPING_FLAT_COST', '5.00', '所有订单都收取该费用。', 6, 0, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (183, '税率种类', 'MODULE_SHIPPING_FLAT_TAX_CLASS', '0', '采用下面的运费税种。', 6, 0, NULL, '2010-08-17 11:45:09', 'zen_get_tax_class_title', 'zen_cfg_pull_down_tax_classes(');
INSERT INTO `configuration` VALUES (184, '税率基准', 'MODULE_SHIPPING_FLAT_TAX_BASIS', 'Shipping', '运费税的计算方法。选项为<br />Shipping - 基于客户的送货地址<br />Billing 基于客户的帐单地址<br />Store - 如果帐单/送货地区和商店所在地区相同，采用商店地址', 6, 0, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''Shipping'', ''Billing'', ''Store''), ');
INSERT INTO `configuration` VALUES (185, '配送地区', 'MODULE_SHIPPING_FLAT_ZONE', '0', '如果选择了地区，只有该地区才使用该配送方式。', 6, 0, NULL, '2010-08-17 11:45:09', 'zen_get_zone_class_title', 'zen_cfg_pull_down_zone_classes(');
INSERT INTO `configuration` VALUES (186, '显示排序', 'MODULE_SHIPPING_FLAT_SORT_ORDER', '0', '显示的顺序', 6, 0, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (187, '缺省货币', 'DEFAULT_CURRENCY', 'USD', '缺省货币', 6, 0, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (188, '缺省语言', 'DEFAULT_LANGUAGE', 'gb', '缺省语言', 6, 0, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (189, '缺省的新订单状态', 'DEFAULT_ORDERS_STATUS_ID', '1', '新建一个订单时，订单状态为该值。', 6, 0, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (190, '显示管理configuration_key', 'ADMIN_CONFIGURATION_KEY_ON', '0', '设置为1将在配置页面下显示configuration_key的名称', 6, 0, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (191, '始发国家或地区', 'SHIPPING_ORIGIN_COUNTRY', '44', '选择计算运费的始发国家或地区。', 7, 1, NULL, '2010-08-17 11:45:09', 'zen_get_country_name', 'zen_cfg_pull_down_country_list(');
INSERT INTO `configuration` VALUES (192, '邮编', 'SHIPPING_ORIGIN_ZIP', 'NONE', '输入商店邮编，用于运费计算。', 7, 2, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (193, '最大包裹重量', 'SHIPPING_MAX_WEIGHT', '999999', '邮递公司对单件包裹的最大重量限制。', 7, 3, '2010-08-31 16:05:36', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (194, '小包裹包装材料 - 百分比+重量', 'SHIPPING_BOX_WEIGHT', '0:0', '输入小包裹的包装材料重量<br />例子: 10% + 1克 10:1<br />10% + 0克 10:0<br />0% + 5克 0:5<br />0% + 0克 0:0', 7, 4, '2010-08-31 16:05:10', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (195, '大包裹包装材料 - 百分比+重量', 'SHIPPING_BOX_PADDING', '0:0', '输入大包裹的包装材料重量<br />例子: 10% + 1克 10:1<br />10% + 0克 10:0<br />0% + 5克 0:5<br />0% + 0克 0:0', 7, 5, '2010-08-31 16:06:06', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (196, '显示箱数和重量', 'SHIPPING_BOX_WEIGHT_DISPLAY', '3', '显示货物重量和箱数?<br /><br />0= 否<br />1= 只显示箱数<br />2= 只显示重量<br />3= 箱数和重量', 7, 15, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''), ');
INSERT INTO `configuration` VALUES (197, '运费估价显示', 'SHOW_SHIPPING_ESTIMATOR_BUTTON', '1', '<br />0= 否<br />1= 在购物车上显示按钮<br />2= 在购物车页面显示列表', 7, 20, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2''), ');
INSERT INTO `configuration` VALUES (198, '在发票管理中显示订单说明', 'ORDER_COMMENTS_INVOICE', '1', '在发票管理中要显示订单说明吗?<br />0= 不显示<br />1= 只显示客户的第一个说明<br />2= 订单的所有说明', 7, 25, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2''), ');
INSERT INTO `configuration` VALUES (199, '在装箱单管理中显示订单说明', 'ORDER_COMMENTS_PACKING_SLIP', '1', '在装箱单管理中要显示订单说明吗?<br />0= 不显示<br />1= 只显示客户的第一个说明<br />2= 订单的所有说明', 7, 26, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2''), ');
INSERT INTO `configuration` VALUES (200, '无重量商品免运费', 'ORDER_WEIGHT_ZERO_STATUS', '0', '如果订单商品重量为零，免运费吗?<br />0= 否<br />1= 是<br /><br />提示: 免运费时，打开免运费模块，这只会在免运费时显示。', 7, 15, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (201, '显示商品图像', 'PRODUCT_LIST_IMAGE', '1', '要显示商品图像吗?', 8, 1, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (202, '显示厂商名字', 'PRODUCT_LIST_MANUFACTURER', '0', '要显示商品厂商名字吗?', 8, 2, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (203, '显示商品型号', 'PRODUCT_LIST_MODEL', '3', '要显示商品型号吗?', 8, 3, '2010-08-31 16:08:26', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (204, '显示商品名称', 'PRODUCT_LIST_NAME', '2', '要显示商品名称吗?', 8, 4, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (205, '显示商品价格/加入购物车', 'PRODUCT_LIST_PRICE', '4', '要显示商品价格/添加到购物车吗?', 8, 5, '2010-08-31 16:08:21', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (206, '显示商品数量', 'PRODUCT_LIST_QUANTITY', '5', '要显示商品数量吗?', 8, 6, '2010-08-31 16:08:40', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (207, '显示商品重量', 'PRODUCT_LIST_WEIGHT', '6', '要显示商品重量吗?', 8, 7, '2010-08-31 16:08:45', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (208, '商品价格/添加到购物车方框的宽度', 'PRODUCTS_LIST_PRICE_WIDTH', '125', '定义商品价格/添加到购物车方框的宽度<br />缺省= 125', 8, 8, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (209, '显示分类/厂商过滤 (0=关; 1=开)', 'PRODUCT_LIST_FILTER', '1', '要显示分类/厂商过滤吗?', 8, 9, '2010-08-31 16:09:07', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (210, '前/后分页导航条 (1-页面顶部, 2-页面底部, 3-同时)', 'PREV_NEXT_BAR_LOCATION', '3', '设置前/后分页导航条的位置', 8, 10, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''1'', ''2'', ''3''), ');
INSERT INTO `configuration` VALUES (211, '显示商品列表缺省排序', 'PRODUCT_LISTING_DEFAULT_SORT_ORDER', '', '商品列表缺省排序<br />提示: 留空为商品排序。按照您指定的顺序排序商品列表。例如: 2a', 8, 15, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (212, '显示添加到购物车按钮 (0=关; 1=开; 2=开，且可以输入数量)', 'PRODUCT_LIST_PRICE_BUY_NOW', '1', '要显示添加到购物车按钮吗?<br /><br /><strong>说明:</strong> 如果采用选项2，请关闭下面的多个商品数量方框', 8, 20, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2''), ');
INSERT INTO `configuration` VALUES (213, '显示多个商品数量方框状态和设置按钮位置', 'PRODUCT_LISTING_MULTIPLE_ADD_TO_CART', '3', '要显示多个商品数量方框并设定按钮位置吗?<br />0= 否<br />1= 页面顶部<br />2= 页面底部<br />3= 同时', 8, 25, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''), ');
INSERT INTO `configuration` VALUES (214, '显示商品介绍', 'PRODUCT_LIST_DESCRIPTION', '150', '要显示商品介绍吗?<br /><br />0= 否<br />150= 建议长度, 或输入显示的最多字数', 8, 30, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (215, '商品列表升序标记', 'PRODUCT_LIST_SORT_ORDER_ASCENDING', '+', '用于表示升序的标记<br />缺省 = +', 8, 40, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_textarea_small(');
INSERT INTO `configuration` VALUES (216, '商品列表降序标记', 'PRODUCT_LIST_SORT_ORDER_DESCENDING', '-', '用于表示降序的标记<br />缺省 = -', 8, 41, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_textarea_small(');
INSERT INTO `configuration` VALUES (217, '商品列表中显示字母过滤选择', 'PRODUCT_LIST_ALPHA_SORTER', 'false', '在商品列表中显示字母过滤的选择吗?', 8, 50, '2010-08-31 16:12:02', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (218, '显示商品列表子分类图像', 'PRODUCT_LIST_CATEGORIES_IMAGE_STATUS', 'true', '在商品列表中显示子分类图像吗?', 8, 52, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (219, '显示商品列表总分类图像', 'PRODUCT_LIST_CATEGORIES_IMAGE_STATUS_TOP', 'true', '在商品列表中显示总分类图像吗?', 8, 53, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (220, '导航显示子分类', 'PRODUCT_LIST_CATEGORY_ROW_STATUS', '1', '经由总分类导航时显示子分类<br /><br />0= 否<br />1= 是', 8, 60, '2010-08-17 14:34:50', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (221, '检查库存', 'STOCK_CHECK', 'true', '检查库存是否足够', 9, 1, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (222, '减少库存', 'STOCK_LIMITED', 'true', '按照订单从库存中自动减少商品', 9, 2, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (223, '允许结帐', 'STOCK_ALLOW_CHECKOUT', 'true', '即使库存不够，也允许客户结帐', 9, 3, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (224, '显示缺货', 'STOCK_MARK_PRODUCT_OUT_OF_STOCK', '***', '在屏幕上提示客户商品库存量不足', 9, 4, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (225, '重新进货', 'STOCK_REORDER_LEVEL', '5', '定义何时需要重新进货', 9, 5, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (226, '缺货时, 商品的状态为', 'SHOW_PRODUCTS_SOLD_OUT', '0', '显示商品缺货<br /><br />0= 设置商品状态为关闭<br />1= 设置商品状态为打开', 9, 10, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (227, '用缺货图标代替加入购物车按钮', 'SHOW_PRODUCTS_SOLD_OUT_IMAGE', '1', '不显示加入购物车按钮，而显示缺货图标<br /><br />0= 否<br />1= 是', 9, 11, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (228, '数量小数位', 'QUANTITY_DECIMALS', '0', '商品数量允许几位小数?<br /><br />0= 不允许', 9, 15, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''), ');
INSERT INTO `configuration` VALUES (229, '购物车上显示 - 复选框或删除按钮', 'SHOW_SHOPPING_CART_DELETE', '3', '在购物车上显示，复选框或删除按钮<br /><br />1= 只显示删除按钮<br />2= 只显示复选框<br />3= 同时显示删除按钮和复选框', 9, 20, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''1'', ''2'', ''3''), ');
INSERT INTO `configuration` VALUES (230, '购物车上显示 - 更新购物车按钮的位置', 'SHOW_SHOPPING_CART_UPDATE', '2', '在购物车上显示更新购物车按钮，位于:<br /><br />1= 每个数量框后面<br />2= 所有商品下面<br />3= 同时显示在每个数量框后面和所有商品下面', 9, 22, '2010-08-31 16:22:47', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''1'', ''2'', ''3''), ');
INSERT INTO `configuration` VALUES (231, '在空购物车页面显示新进商品', 'SHOW_SHOPPING_CART_EMPTY_NEW_PRODUCTS', '0', '在空购物车页面显示新进商品<br />0= 否或设置显示顺序', 9, 30, '2010-08-31 16:23:29', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4''), ');
INSERT INTO `configuration` VALUES (232, '在空购物车页面显示推荐商品', 'SHOW_SHOPPING_CART_EMPTY_FEATURED_PRODUCTS', '0', '在空购物车页面显示推荐商品<br />0= 否或设置显示顺序', 9, 31, '2010-08-31 16:23:34', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4''), ');
INSERT INTO `configuration` VALUES (233, '在空购物车页面显示特价商品', 'SHOW_SHOPPING_CART_EMPTY_SPECIALS_PRODUCTS', '0', '在空购物车页面显示特价商品<br />0= 否或设置显示顺序', 9, 32, '2010-08-31 16:23:39', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4''), ');
INSERT INTO `configuration` VALUES (234, '在空购物车页面显示预售商品', 'SHOW_SHOPPING_CART_EMPTY_UPCOMING', '0', '在空购物车页面显示预售商品<br />0= 否或设置显示顺序', 9, 33, '2010-08-31 16:23:43', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4''), ');
INSERT INTO `configuration` VALUES (235, '登录时提醒合并购物车', 'SHOW_SHOPPING_CART_COMBINED', '1', '客户登录时，如果以前购物车中有商品，将于现有购物车中的商品合并。<br /><br />要提醒客户吗?<br /><br />0= OFF, 不提醒<br />1= Yes 提醒并转到购物车页面<br />2= Yes 提醒，但不转到购物车页面', 9, 35, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2''), ');
INSERT INTO `configuration` VALUES (236, '网页解析时间', 'STORE_PAGE_PARSE_TIME', 'false', '保存解析页面的时间', 10, 1, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (237, '日志保存到', 'STORE_PAGE_PARSE_TIME_LOG', 'D:/AppServ/www/zencart_24185/cache/page_parse_time.log', '记录页面解析时间的目录和文件名', 10, 2, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (238, '日志日期格式', 'STORE_PARSE_DATE_TIME_FORMAT', '%d/%m/%Y %H:%M:%S', '日期格式', 10, 3, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (239, '显示网页解析时间', 'DISPLAY_PAGE_PARSE_TIME', 'false', '在每个页面底部显示页面解析时间<br />显示解析时间并不要求保存。', 10, 4, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (240, '保存数据库查询', 'STORE_DB_TRANSACTIONS', 'false', '在页面解析时间记录中保存数据库查询(仅适用PHP4)', 10, 5, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (241, '电子邮件发送方式', 'EMAIL_TRANSPORT', 'PHP', '设置发送邮件的方式。<br /><strong>PHP</strong>为缺省方式，采用内置的PHP处理方式。<br />采用Windows和MacOS的服务器要修改该设置为<strong>SMTP</strong>。<br /><br /><strong>SMTPAUTH</strong>仅在服务器要求SMTP验证时使用，同时要设置SMTPAUTH的相应参数。<br /><br /><strong>sendmail</strong>用于linux/unix主机，使用主机上的sendmail程序<br /><strong>"sendmail-f"</strong>仅当服务器要求 -f 参数发送邮件，这个安全措施可以防止欺骗，但如果邮件服务器未设置使用该选项，会出错。<br /><br /><strong>Qmail</strong>用于linux/unix主机的Qmail邮件功能 /var/qmail/bin/sendmail', 12, 1, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''PHP'', ''sendmail'', ''sendmail-f'', ''smtp'', ''smtpauth'', ''Qmail''),');
INSERT INTO `configuration` VALUES (242, 'SMTP帐号邮箱', 'EMAIL_SMTPAUTH_MAILBOX', 'YourEmailAccountNameHere', '输入邮箱帐号名 (me@mydomain.com) 。这是SMTP授权帐号名。<br />仅在使用SMTPAUTH时需要。', 12, 101, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (243, 'SMTP帐号密码', 'EMAIL_SMTPAUTH_PASSWORD', 'YourPasswordHere', '输入SMTP邮箱的密码。<br />仅在使用SMTPAUTH时需要。', 12, 101, NULL, '2010-08-17 11:45:09', 'zen_cfg_password_display', NULL);
INSERT INTO `configuration` VALUES (244, 'SMTP主机', 'EMAIL_SMTPAUTH_MAIL_SERVER', 'mail.EnterYourDomain.com', '输入SMTP邮件服务器的DNS名字<br />例如: mail.mydomain.com<br />或 55.66.77.88', 12, 101, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (245, 'SMTP服务器端口', 'EMAIL_SMTPAUTH_MAIL_SERVER_PORT', '25', '输入SMTP邮件服务器端口号', 12, 101, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (246, '在文本格式邮件中转换货币符号', 'CURRENCIES_TRANSLATIONS', '', '文本格式邮件中使用什么货币符号转换？', 12, 120, NULL, '2003-11-21 00:00:00', NULL, 'zen_cfg_textarea_small(');
INSERT INTO `configuration` VALUES (247, '电子邮件换行', 'EMAIL_LINEFEED', 'LF', '定义分开邮件头的换行符', 12, 2, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''LF'', ''CRLF''),');
INSERT INTO `configuration` VALUES (248, '使用HTML格式发送电子邮件', 'EMAIL_USE_HTML', 'false', '是否使用HTML格式发送电子邮件', 12, 3, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (249, '通过DNS核对电子邮件地址', 'ENTRY_EMAIL_ADDRESS_CHECK', 'false', '是否通过DNS核对电子邮件地址', 6, 6, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (250, '发送电子邮件', 'SEND_EMAILS', 'true', '是否发出电子邮件', 12, 5, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (251, '电子邮件存档', 'EMAIL_ARCHIVE', 'false', '如果您在发邮件时，需要保存复制件，设置为 "true"。', 12, 6, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (252, '电子邮件出错信息', 'EMAIL_FRIENDLY_ERRORS', 'false', '如果邮件失败，是否显示错误信息?  设置为false将显示PHP错误信息. 仅在调试时设置为false.', 12, 7, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (253, '用于显示的店主邮件地址', 'STORE_OWNER_EMAIL_ADDRESS', 'admin@admin.com', '商店店主的电子邮件，显示给客户的联系方式。', 12, 10, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (254, '发件人邮件地址', 'EMAIL_FROM', 'admin@admin.com', '缺省的电子邮件发送人地址，在管理模块下输入邮件时可修改。', 12, 11, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (255, '电子邮件必须从现有域名发送', 'EMAIL_SEND_MUST_BE_STORE', 'Yes', '您的邮件服务器是否要求所有发出的邮件发送地址为你现有的域名？<br /><br />该设置通常用于防止欺骗和垃圾邮件。如果设置为Yes，所有邮件的发送地址为上面设置的发件人邮件地址。', 12, 11, NULL, '0001-01-01 00:00:00', NULL, 'zen_cfg_select_option(array(''No'', ''Yes''), ');
INSERT INTO `configuration` VALUES (256, '管理员电子邮件格式', 'ADMIN_EXTRA_EMAIL_FORMAT', 'TEXT', '请选择管理员电子邮件格式', 12, 12, NULL, '0001-01-01 00:00:00', NULL, 'zen_cfg_select_option(array(''TEXT'', ''HTML''), ');
INSERT INTO `configuration` VALUES (257, '发送订单确认电子邮件的复件到', 'SEND_EXTRA_ORDER_EMAILS_TO', 'admin@admin.com', '发送订单确认电子邮件的复件到以下地址，格式为：名字一 &lt;email@address1&gt;, 名字二 &lt;email@address2&gt;', 12, 12, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (258, '发送创建帐号电子邮件的复件 - 状态', 'SEND_EXTRA_CREATE_ACCOUNT_EMAILS_TO_STATUS', '0', '是否发送创建帐号电子邮件的复件<br />0= 否 1= 是', 12, 13, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''),');
INSERT INTO `configuration` VALUES (259, '发送创建帐号电子邮件的复件到', 'SEND_EXTRA_CREATE_ACCOUNT_EMAILS_TO', 'admin@admin.com', '发送创建帐号电子邮件的复件到以下地址，格式为：名字一 &lt;email@address1&gt;, 名字二 &lt;email@address2&gt;', 12, 14, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (260, '发送推荐给朋友电子邮件的复件 - 状态', 'SEND_EXTRA_TELL_A_FRIEND_EMAILS_TO_STATUS', '0', '是否发送推荐给朋友电子邮件的复件<br />0= 否 1= 是', 12, 15, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''),');
INSERT INTO `configuration` VALUES (261, '发送推荐给朋友电子邮件的复件到', 'SEND_EXTRA_TELL_A_FRIEND_EMAILS_TO', 'admin@admin.com', '发送推荐给朋友电子邮件的复件到以下地址，格式为：名字一 &lt;email@address1&gt;, 名字二 &lt;email@address2&gt;', 12, 16, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (262, '发送客户发送礼券的电子邮件的复件 - 状态', 'SEND_EXTRA_GV_CUSTOMER_EMAILS_TO_STATUS', '0', '是否发送客户发送礼券的电子邮件的复件<br />0= 否 1= 是', 12, 17, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''),');
INSERT INTO `configuration` VALUES (263, '发送客户发送礼券的电子邮件的复件到', 'SEND_EXTRA_GV_CUSTOMER_EMAILS_TO', 'admin@admin.com', '发送客户发送礼券的电子邮件的复件到以下地址，格式为：名字一 &lt;email@address1&gt;, 名字二 &lt;email@address2&gt;', 12, 18, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (264, '发送客户管理礼券邮件的电子邮件的复件 - 状态', 'SEND_EXTRA_GV_ADMIN_EMAILS_TO_STATUS', '0', '是否发送客户管理礼券邮件的电子邮件的复件<br />0= 否 1= 是', 12, 19, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''),');
INSERT INTO `configuration` VALUES (265, '发送客户管理礼券邮件的电子邮件的复件到', 'SEND_EXTRA_GV_ADMIN_EMAILS_TO', 'admin@admin.com', '发送客户管理礼券邮件的电子邮件的复件到以下地址，格式为：名字一 &lt;email@address1&gt;, 名字二 &lt;email@address2&gt;', 12, 20, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (266, '发送客户管理优惠券邮件的电子邮件的复件 - 状态', 'SEND_EXTRA_DISCOUNT_COUPON_ADMIN_EMAILS_TO_STATUS', '0', '是否发送客户管理优惠券邮件的电子邮件的复件<br />0= 否 1= 是', 12, 21, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''),');
INSERT INTO `configuration` VALUES (267, '发送客户管理优惠券邮件的电子邮件的复件到', 'SEND_EXTRA_DISCOUNT_COUPON_ADMIN_EMAILS_TO', 'admin@admin.com', '发送客户管理优惠券邮件的电子邮件的复件到以下地址，格式为：名字一 &lt;email@address1&gt;, 名字二 &lt;email@address2&gt;', 12, 22, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (268, '发送管理订单状态的电子邮件的复件 - 状态', 'SEND_EXTRA_ORDERS_STATUS_ADMIN_EMAILS_TO_STATUS', '0', '是否发送管理订单状态的电子邮件的复件<br />0= 否 1= 是', 12, 23, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''),');
INSERT INTO `configuration` VALUES (269, '发送管理订单状态的电子邮件的复件到', 'SEND_EXTRA_ORDERS_STATUS_ADMIN_EMAILS_TO', 'admin@admin.com', '发送管理订单状态的电子邮件的复件到以下地址，格式为：名字一 &lt;email@address1&gt;, 名字二 &lt;email@address2&gt;', 12, 24, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (270, '发送等待审核的电子邮件的复件 - 状态', 'SEND_EXTRA_REVIEW_NOTIFICATION_EMAILS_TO_STATUS', '0', '是否发送等待审核的电子邮件的复件<br />0= 否 1= 是', 12, 25, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''),');
INSERT INTO `configuration` VALUES (271, '发送等待审核的电子邮件的复件到', 'SEND_EXTRA_REVIEW_NOTIFICATION_EMAILS_TO', 'admin@admin.com', '发送等待审核的电子邮件的复件到以下地址，格式为：名字一 &lt;email@address1&gt;, 名字二 &lt;email@address2&gt;', 12, 26, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (272, '设置 "联系我们" 电子邮件下拉列表', 'CONTACT_US_LIST', '', '设置"联系我们"页面上列出的电子邮件地址，格式为：名字一 &lt;email@address1&gt;, 名字二 &lt;email@address2&gt;<br />仅有一个邮件地址时，不要输入，采用店主邮件地址', 12, 40, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_textarea(');
INSERT INTO `configuration` VALUES (273, '允许访客推荐给朋友', 'ALLOW_GUEST_TO_TELL_A_FRIEND', 'false', '允许访客推荐商品给朋友。<br />如果设置为[false]，推荐给朋友功能需要登录后使用。', 12, 50, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (274, '联系我们 - 显示商店名称和地址', 'CONTACT_US_STORE_NAME_ADDRESS', '1', '包含商店名称和地址<br />0= 否 1= 是', 12, 50, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (275, '商品库存提醒', 'SEND_LOWSTOCK_EMAIL', '0', '当商品处于低库存时，是否发送电子邮件<br />0= 否<br />1= 是', 12, 60, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''),');
INSERT INTO `configuration` VALUES (276, '发送库存提醒邮件到', 'SEND_EXTRA_LOW_STOCK_EMAILS_TO', 'admin@admin.com', '当商品处于低库存时，发送电子邮件到以下地址，格式为：名字一 &lt;email@address1&gt;, 名字二 &lt;email@address2&gt;', 12, 61, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (277, '显示退订电子商情链接', 'SHOW_NEWSLETTER_UNSUBSCRIBE_LINK', 'true', '是否在[信息]边框中，显示退订电子商情的链接？', 12, 70, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (278, '显示客户选择计数', 'AUDIENCE_SELECT_DISPLAY_COUNTS', 'true', '显示接收人名单时，是否显示计数？<br /><em>(如果有很多客户，这会影响速度)</em>', 12, 90, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (279, '允许下载', 'DOWNLOAD_ENABLED', 'true', '打开商品下载功能', 13, 1, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (280, '重定向下载', 'DOWNLOAD_BY_REDIRECT', 'true', '使用浏览器的重定向下载。在非Unix系统上关闭该功能。<br /><br />提示: 重定向打开时，将/pub设为777', 13, 2, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (281, '分块下载', 'DOWNLOAD_IN_CHUNKS', 'false', '如果关闭重定向下载，而您的PHP内存限制的设置低于8 MB，您可能需要打开该选项，使文件分块发送到浏览器。<br /><br />重定向下载打开时没有作用。', 13, 2, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (282, '下载有效期 (天数)', 'DOWNLOAD_MAX_DAYS', '7', '设置下载有效天数。0 表示无限制。', 13, 3, NULL, '2010-08-17 11:45:09', NULL, '');
INSERT INTO `configuration` VALUES (283, '允许下载次数 - 每件商品', 'DOWNLOAD_MAX_COUNT', '5', '设置允许下载次数。0 表示不允许下载。', 13, 4, NULL, '2010-08-17 11:45:09', NULL, '');
INSERT INTO `configuration` VALUES (284, '下载控制更新状态值', 'DOWNLOADS_ORDERS_STATUS_UPDATED_VALUE', '4', '哪个订单状态重置下载天数和下载次数 - 缺省为 4', 13, 10, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (285, '下载控制订单状态值 >= 最低状态', 'DOWNLOADS_CONTROLLER_ORDERS_STATUS', '2', '下载控制订单状态值 - 缺省 >= 2<br /><br />是否允许下载取决于订单的状态，订单状态高于该值的可以下载。订单状态由支付方式设定。这里设置该范围的最低值。', 13, 12, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (286, '下载控制订单状态值 <= 最高状态', 'DOWNLOADS_CONTROLLER_ORDERS_STATUS_END', '4', '下载控制订单状态值 - 缺省 <= 4<br /><br />是否允许下载取决于订单的状态，订单状态低于该值的可以下载。订单状态由支付方式设定。这里设置该范围的最高值。', 13, 13, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (287, '允许属性定价', 'ATTRIBUTES_ENABLED_PRICE_FACTOR', 'true', '允许属性定价', 13, 25, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (288, '允许批量优惠', 'ATTRIBUTES_ENABLED_QTY_PRICES', 'true', '允许批量优惠', 13, 26, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (289, '允许属性图像', 'ATTRIBUTES_ENABLED_IMAGES', 'true', '允许属性图像', 13, 28, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (290, '允许按词或字定价', 'ATTRIBUTES_ENABLED_TEXT_PRICES', 'true', '允许按词或字定价', 13, 35, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (291, '文字价格 - 空格免费', 'TEXT_SPACES_FREE', '1', '文字定价时，空格免费<br /><br />0= 否 1= 是', 13, 36, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (292, '只读选项类型 - 忽略添加到购物车', 'PRODUCTS_OPTIONS_TYPE_READONLY_IGNORED', '1', '当一个商品属性为只读时，是否显示添加到购物车按钮?<br />0= 不显示<br />1= 显示', 13, 37, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (293, '打开GZip压缩', 'GZIP_LEVEL', '0', '0= 否 1= 是', 14, 1, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''),');
INSERT INTO `configuration` VALUES (294, 'Sessions目录', 'SESSION_WRITE_DIRECTORY', 'D:/AppServ/www/zencart_svn/cache', '如果sessions是基于文件的，保存在该目录。', 15, 1, '2010-09-26 16:23:00', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (295, 'Cookie域名', 'SESSION_USE_FQDN', 'True', '如果选True，域名全称用于保存cookie, 例如：www.mydomain.com。如果选False，仅用域名的部分，例如：mydomain.com。如果您不确定，可以选True。', 15, 2, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''True'', ''False''), ');
INSERT INTO `configuration` VALUES (296, '强制使用Cookie', 'SESSION_FORCE_COOKIE_USE', 'False', 'Force the use of sessions when cookies are only enabled.', 15, 2, '2010-09-26 16:17:18', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''True'', ''False''), ');
INSERT INTO `configuration` VALUES (297, '检查SSL Sessions编号', 'SESSION_CHECK_SSL_SESSION_ID', 'False', 'Validate the SSL_SESSION_ID on every secure HTTPS page request.', 15, 3, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''True'', ''False''), ');
INSERT INTO `configuration` VALUES (298, '检查用户代理', 'SESSION_CHECK_USER_AGENT', 'False', 'Validate the clients browser user agent on every page request.', 15, 4, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''True'', ''False''), ');
INSERT INTO `configuration` VALUES (299, '检查IP地址', 'SESSION_CHECK_IP_ADDRESS', 'False', 'Validate the clients IP address on every page request.', 15, 5, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''True'', ''False''), ');
INSERT INTO `configuration` VALUES (300, '阻止机器人Sessions', 'SESSION_BLOCK_SPIDERS', 'True', 'Prevent known spiders from starting a session.', 15, 6, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''True'', ''False''), ');
INSERT INTO `configuration` VALUES (301, '重建Sessions', 'SESSION_RECREATE', 'True', 'Recreate the session to generate a new session ID when the customer logs on or creates an account (PHP >=4.1 needed).', 15, 7, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''True'', ''False''), ');
INSERT INTO `configuration` VALUES (302, 'IP到主机名转换', 'SESSION_IP_TO_HOST_ADDRESS', 'false', '转换IP地址为主机名<br /><br />提示: 在某些服务器上，会降低session初始化的速度或电子邮件执行时间。', 15, 10, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (303, '兑现代码长度', 'SECURITY_CODE_LENGTH', '10', '输入兑现代码长度<br />越长越安全', 16, 1, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (304, '缺省的金额为零的订单状态', 'DEFAULT_ZERO_BALANCE_ORDERS_STATUS_ID', '2', '当订单的余额为零, 订单状态为', 16, 0, NULL, '2010-08-17 11:45:09', 'zen_get_order_status_name', 'zen_cfg_pull_down_order_statuses(');
INSERT INTO `configuration` VALUES (305, '新客户的优惠券编号', 'NEW_SIGNUP_DISCOUNT_COUPON', '', '选择优惠券<br />', 16, 75, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_coupon_id(');
INSERT INTO `configuration` VALUES (306, '新客户的礼券金额', 'NEW_SIGNUP_GIFT_VOUCHER_AMOUNT', '', '没有就留空<br />或输入金额，如 10 表示 10.00元', 16, 76, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (307, '优惠券每页数量', 'MAX_DISPLAY_SEARCH_RESULTS_DISCOUNT_COUPONS', '20', '每页显示的优惠券数量', 16, 81, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (308, '优惠券分析页面上每页数量', 'MAX_DISPLAY_SEARCH_RESULTS_DISCOUNT_COUPONS_REPORTS', '20', '分析页面显示的优惠券数量', 16, 81, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (309, '接受信用卡 - VISA', 'CC_ENABLED_VISA', '1', '接受VISA 0= 否 1= 是', 17, 1, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (310, '接受信用卡 - MasterCard', 'CC_ENABLED_MC', '1', '接受MasterCard 0= 否 1= 是', 17, 2, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (311, '接受信用卡 - AmericanExpress', 'CC_ENABLED_AMEX', '0', '接受AmericanExpress 0= 否 1= 是', 17, 3, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (312, '接受信用卡 - Diners Club', 'CC_ENABLED_DINERS_CLUB', '0', '接受Diners Club 0= 否 1= 是', 17, 4, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (313, '接受信用卡 - Discover Card', 'CC_ENABLED_DISCOVER', '0', '接受Discover卡 0= 否 1= 是', 17, 5, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (314, '接受信用卡 - JCB', 'CC_ENABLED_JCB', '0', '接受JCB 0= 否 1= 是', 17, 6, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (315, '接受信用卡 - AUSTRALIAN BANKCARD', 'CC_ENABLED_AUSTRALIAN_BANKCARD', '0', '接受澳大利亚银行卡 0= 否 1= 是', 17, 7, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (316, '接受信用卡 - SOLO', 'CC_ENABLED_SOLO', '0', '接受SOLO 0= 否 1= 是', 17, 8, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (317, '接受信用卡 - Switch', 'CC_ENABLED_SWITCH', '0', '接受SWITCH 0= 否 1= 是', 17, 9, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (318, '接受信用卡 - Maestro', 'CC_ENABLED_MAESTRO', '0', '接受MAESTRO 0= 否 1= 是', 17, 10, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (319, '接受信用卡 - 付款时显示', 'SHOW_ACCEPTED_CREDIT_CARDS', '0', '付款页面是否显示接受信用卡?<br />0= 不显示<br />1= 显示文字<br />2= 显示图像<br /><br />备注: 图像和文字必须在相关信用卡的数据库和语言文件中同时定义.', 17, 50, '2010-08-31 16:46:59', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2''), ');
INSERT INTO `configuration` VALUES (320, '该模块已安装', 'MODULE_ORDER_TOTAL_GV_STATUS', 'true', '', 6, 1, NULL, '2003-10-30 22:16:40', NULL, 'zen_cfg_select_option(array(''true''),');
INSERT INTO `configuration` VALUES (321, '显示排序', 'MODULE_ORDER_TOTAL_GV_SORT_ORDER', '840', '显示的顺序。', 6, 2, NULL, '2003-10-30 22:16:40', NULL, NULL);
INSERT INTO `configuration` VALUES (322, '购买队列', 'MODULE_ORDER_TOTAL_GV_QUEUE', 'true', '您要将购买礼券排队吗?', 6, 3, NULL, '2003-10-30 22:16:40', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (323, '含运费', 'MODULE_ORDER_TOTAL_GV_INC_SHIPPING', 'true', '计算时含运费', 6, 5, NULL, '2003-10-30 22:16:40', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (324, '含税', 'MODULE_ORDER_TOTAL_GV_INC_TAX', 'true', '计算时含税。', 6, 6, NULL, '2003-10-30 22:16:40', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (325, '重算税价', 'MODULE_ORDER_TOTAL_GV_CALC_TAX', 'None', '重新计算税', 6, 7, NULL, '2003-10-30 22:16:40', NULL, 'zen_cfg_select_option(array(''None'', ''Standard'', ''Credit Note''),');
INSERT INTO `configuration` VALUES (326, '税率种类', 'MODULE_ORDER_TOTAL_GV_TAX_CLASS', '0', '接受礼券时，使用以下的税率种类。', 6, 0, NULL, '2003-10-30 22:16:40', 'zen_get_tax_class_title', 'zen_cfg_pull_down_tax_classes(');
INSERT INTO `configuration` VALUES (327, '含税金额', 'MODULE_ORDER_TOTAL_GV_CREDIT_TAX', 'false', '加入帐号时，在购买的礼券上加税', 6, 8, NULL, '2003-10-30 22:16:40', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (328, '设置订单状态', 'MODULE_ORDER_TOTAL_GV_ORDER_STATUS_ID', '0', '设置用礼券全额付款时订单的状态', 6, 0, NULL, '2010-08-17 11:45:09', 'zen_get_order_status_name', 'zen_cfg_pull_down_order_statuses(');
INSERT INTO `configuration` VALUES (329, '该模块已安装', 'MODULE_ORDER_TOTAL_LOWORDERFEE_STATUS', 'true', '', 6, 1, NULL, '2003-10-30 22:16:43', NULL, 'zen_cfg_select_option(array(''true''),');
INSERT INTO `configuration` VALUES (330, '显示排序', 'MODULE_ORDER_TOTAL_LOWORDERFEE_SORT_ORDER', '400', '显示的顺序。', 6, 2, NULL, '2003-10-30 22:16:43', NULL, NULL);
INSERT INTO `configuration` VALUES (331, '收取低额订单费', 'MODULE_ORDER_TOTAL_LOWORDERFEE_LOW_ORDER_FEE', 'false', '您要收取低额订单费用吗?', 6, 3, NULL, '2003-10-30 22:16:43', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (332, '收取低额订单费的订单金额', 'MODULE_ORDER_TOTAL_LOWORDERFEE_ORDER_UNDER', '50', '总金额低于该值的订单收取低额订单费。', 6, 4, NULL, '2003-10-30 22:16:43', 'currencies->format', NULL);
INSERT INTO `configuration` VALUES (333, '低额订单费', 'MODULE_ORDER_TOTAL_LOWORDERFEE_FEE', '5', '按百分比收取 - 包含符号 % 例如: 10%<br />收取固定金额 - 例如: 输入 5 表示 5.00元', 6, 5, NULL, '2003-10-30 22:16:43', '', NULL);
INSERT INTO `configuration` VALUES (334, '低额订单费适用的送货地区', 'MODULE_ORDER_TOTAL_LOWORDERFEE_DESTINATION', 'both', '该送货地区收取低额订单费。', 6, 6, NULL, '2003-10-30 22:16:43', NULL, 'zen_cfg_select_option(array(''national'', ''international'', ''both''),');
INSERT INTO `configuration` VALUES (335, '税率种类', 'MODULE_ORDER_TOTAL_LOWORDERFEE_TAX_CLASS', '0', '低额订单费使用下面的税率种类。', 6, 7, NULL, '2003-10-30 22:16:43', 'zen_get_tax_class_title', 'zen_cfg_pull_down_tax_classes(');
INSERT INTO `configuration` VALUES (336, '虚拟商品无低额订单费', 'MODULE_ORDER_TOTAL_LOWORDERFEE_VIRTUAL', 'false', '购物车中只有虚拟商品时，不收取低额订单费', 6, 8, NULL, '2004-04-20 22:16:43', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (337, '礼券无低额订单费', 'MODULE_ORDER_TOTAL_LOWORDERFEE_GV', 'false', '购物车中只有礼券时，不收取低额订单费', 6, 9, NULL, '2004-04-20 22:16:43', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (338, '该模块已安装', 'MODULE_ORDER_TOTAL_SHIPPING_STATUS', 'true', '', 6, 1, NULL, '2003-10-30 22:16:46', NULL, 'zen_cfg_select_option(array(''true''),');
INSERT INTO `configuration` VALUES (339, '显示排序', 'MODULE_ORDER_TOTAL_SHIPPING_SORT_ORDER', '200', '显示的顺序。', 6, 2, NULL, '2003-10-30 22:16:46', NULL, NULL);
INSERT INTO `configuration` VALUES (340, '允许免运费', 'MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING', 'false', '您要免运费吗?', 6, 3, NULL, '2003-10-30 22:16:46', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (341, '免运费的订单金额', 'MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING_OVER', '50', '当订单总金额大于设值时，免运费。', 6, 4, NULL, '2003-10-30 22:16:46', 'currencies->format', NULL);
INSERT INTO `configuration` VALUES (342, '免运费的送货地区', 'MODULE_ORDER_TOTAL_SHIPPING_DESTINATION', 'national', '当送货地区为该地区时，免运费。', 6, 5, NULL, '2003-10-30 22:16:46', NULL, 'zen_cfg_select_option(array(''national'', ''international'', ''both''),');
INSERT INTO `configuration` VALUES (343, '该模块已安装', 'MODULE_ORDER_TOTAL_SUBTOTAL_STATUS', 'true', '', 6, 1, NULL, '2003-10-30 22:16:49', NULL, 'zen_cfg_select_option(array(''true''),');
INSERT INTO `configuration` VALUES (344, '显示排序', 'MODULE_ORDER_TOTAL_SUBTOTAL_SORT_ORDER', '100', '显示的顺序。', 6, 2, NULL, '2003-10-30 22:16:49', NULL, NULL);
INSERT INTO `configuration` VALUES (345, '该模块已安装', 'MODULE_ORDER_TOTAL_TAX_STATUS', 'true', '', 6, 1, NULL, '2003-10-30 22:16:52', NULL, 'zen_cfg_select_option(array(''true''),');
INSERT INTO `configuration` VALUES (346, '显示排序', 'MODULE_ORDER_TOTAL_TAX_SORT_ORDER', '300', '显示的顺序。', 6, 2, NULL, '2003-10-30 22:16:52', NULL, NULL);
INSERT INTO `configuration` VALUES (347, '该模块已安装', 'MODULE_ORDER_TOTAL_TOTAL_STATUS', 'true', '', 6, 1, NULL, '2003-10-30 22:16:55', NULL, 'zen_cfg_select_option(array(''true''),');
INSERT INTO `configuration` VALUES (348, '显示排序', 'MODULE_ORDER_TOTAL_TOTAL_SORT_ORDER', '999', '显示的顺序。', 6, 2, NULL, '2003-10-30 22:16:55', NULL, NULL);
INSERT INTO `configuration` VALUES (349, '税率种类', 'MODULE_ORDER_TOTAL_COUPON_TAX_CLASS', '0', '优惠券采用下面的税类。', 6, 0, NULL, '2003-10-30 22:16:36', 'zen_get_tax_class_title', 'zen_cfg_pull_down_tax_classes(');
INSERT INTO `configuration` VALUES (350, '含税', 'MODULE_ORDER_TOTAL_COUPON_INC_TAX', 'false', '计算时含税。', 6, 6, NULL, '2003-10-30 22:16:36', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (351, '显示排序', 'MODULE_ORDER_TOTAL_COUPON_SORT_ORDER', '280', '显示的顺序。', 6, 2, NULL, '2003-10-30 22:16:36', NULL, NULL);
INSERT INTO `configuration` VALUES (352, '含运费', 'MODULE_ORDER_TOTAL_COUPON_INC_SHIPPING', 'false', '计算时含运费', 6, 5, NULL, '2003-10-30 22:16:36', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (353, '该模块已安装', 'MODULE_ORDER_TOTAL_COUPON_STATUS', 'true', '', 6, 1, NULL, '2003-10-30 22:16:36', NULL, 'zen_cfg_select_option(array(''true''),');
INSERT INTO `configuration` VALUES (354, '重算税价', 'MODULE_ORDER_TOTAL_COUPON_CALC_TAX', 'Standard', '重新计算税', 6, 7, NULL, '2003-10-30 22:16:36', NULL, 'zen_cfg_select_option(array(''None'', ''Standard'', ''Credit Note''),');
INSERT INTO `configuration` VALUES (355, '管理员演示', 'ADMIN_DEMO', '0', '是否打开管理员演示？<br />0= 否 1= 是', 6, 0, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (357, '文字商品选项类型', 'PRODUCTS_OPTIONS_TYPE_TEXT', '1', '文字商品选项类型数值', 6, NULL, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (358, '单选按钮商品选项类型', 'PRODUCTS_OPTIONS_TYPE_RADIO', '2', '单选按钮商品选项类型数值', 6, NULL, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (359, '多选商品选项类型', 'PRODUCTS_OPTIONS_TYPE_CHECKBOX', '3', '多选商品选项类型数值', 6, NULL, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (360, '文件商品选项类型', 'PRODUCTS_OPTIONS_TYPE_FILE', '4', '文件商品选项类型数值', 6, NULL, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (361, '文字和文件商品选项类型的编号', 'PRODUCTS_OPTIONS_VALUES_TEXT_ID', '0', '文字和文件商品选项类型的编号数值', 6, NULL, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (534, '商品缩略图', 'QUICKUPDATES_DISPLAY_THUMBNAIL', 'true', '是否显示商品缩略图', 31, 2, '2010-08-17 11:45:11', '2010-08-17 11:45:11', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (533, '商品编号', 'QUICKUPDATES_DISPLAY_ID', 'true', '是否显示商品编号', 31, 1, '2010-08-17 11:45:11', '2010-08-17 11:45:11', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (364, '只读选项类型', 'PRODUCTS_OPTIONS_TYPE_READONLY', '5', '只读选项类型数值', 6, NULL, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (365, '商品信息 - 商品选项名称排序', 'PRODUCTS_OPTIONS_SORT_ORDER', '0', '商品信息选项名称排序<br />0= 排序, 选项名称<br />1= 选项名称', 18, 35, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''),');
INSERT INTO `configuration` VALUES (366, '商品信息 - 商品选项属性值排序', 'PRODUCTS_OPTIONS_SORT_BY_PRICE', '1', '商品信息选项属性值排序<br />0= 排序, 价格<br />1= 排序, 选项值名称', 18, 36, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''),');
INSERT INTO `configuration` VALUES (367, '商品信息 - 在属性图像下显示选项值名称', 'PRODUCT_IMAGES_ATTRIBUTES_NAMES', '1', '商品信息 - 在属性图像下显示选项值名称?<br />0= 否 1= 是', 18, 41, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (368, '商品信息 - 显示优惠', 'SHOW_SALE_DISCOUNT_STATUS', '1', '商品信息 - 是否显示优惠？<br />0= 否 1= 是', 18, 45, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (369, '商品信息 - 优惠价格的显示格式', 'SHOW_SALE_DISCOUNT', '1', '商品信息 - 优惠价格的显示格式:<br />1= 显示百分比 2= 显示金额', 18, 46, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''1'', ''2''), ');
INSERT INTO `configuration` VALUES (370, '商品信息 - 显示优惠百分比的小数位', 'SHOW_SALE_DISCOUNT_DECIMALS', '0', '商品信息 - 优惠格式显示为百分比时的小数位:<br />缺省= 0', 18, 47, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (371, '商品信息 - 免费图像或文字', 'OTHER_IMAGE_PRICE_IS_FREE_ON', '1', '商品信息 - 是否在价格上显示免费字样的图像或文字<br />0= 文字<br />1= 图像', 18, 50, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (372, '商品信息 - 价格面议图像或文字', 'PRODUCTS_PRICE_IS_CALL_IMAGE_ON', '1', '商品信息 - 是否在价格上显示价格面议字样的图像或文字<br />0= 文字<br />1= 图像', 18, 51, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (373, '商品数量方框 - 添加新商品', 'PRODUCTS_QTY_BOX_STATUS', '1', '添加新商品时，缺省的数量方框显示状态?<br /><br />0= 否<br />1= 是<br />提示: 打开时，会显示数量方框，缺省的[添加到购物车]数量为 1', 18, 55, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (374, '商品评论请求批准', 'REVIEWS_APPROVAL', '1', '商品评论需要批准吗?<br /><br />提示: 当评论状态为关闭时，也不会显示<br /><br />0= 否 1= 是', 18, 62, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (375, '元标签 - 标题含商品型号', 'META_TAG_INCLUDE_MODEL', '1', '在Meta标签标题中包含商品型号吗?<br /><br />0= 否 1= 是', 18, 69, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (376, '元标签 - 标题含商品价格', 'META_TAG_INCLUDE_PRICE', '1', '在Meta标签标题中包含商品价格吗?<br /><br />0= 否 1= 是', 18, 70, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (377, '元标签的描述字段字数', 'MAX_META_TAG_DESCRIPTION_LENGTH', '50', '设置元标签的描述字段字数，缺省 50:', 18, 71, NULL, '2010-08-17 11:45:09', '', '');
INSERT INTO `configuration` VALUES (378, '每行显示的同时购买商品数', 'SHOW_PRODUCT_INFO_COLUMNS_ALSO_PURCHASED_PRODUCTS', '3', '每行显示的同时购买商品数<br />0= 关 或设置排序', 18, 72, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''10'', ''11'', ''12''), ');
INSERT INTO `configuration` VALUES (379, '导航条 - 位置', 'PRODUCT_INFO_PREVIOUS_NEXT', '1', '导航条位置<br />0= 否<br />1= 页面顶部<br />2= 页面底部<br />3= 同时', 18, 21, '2010-08-31 17:52:26', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''0'', ''text''=>''否''), array(''id''=>''1'', ''text''=>''页面顶部''), array(''id''=>''2'', ''text''=>''页面底部''), array(''id''=>''3'', ''text''=>''同时'')),');
INSERT INTO `configuration` VALUES (380, '导航条 - 排序', 'PRODUCT_INFO_PREVIOUS_NEXT_SORT', '1', '商品的显示顺序<br />0= 商品编号<br />1= 商品名称<br />2= 商品型号<br />3= 价格, 名称<br />4= 价格, 型号<br />5= 名称, 型号<br />6= 商品排序', 18, 22, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''0'', ''text''=>''商品编号''), array(''id''=>''1'', ''text''=>''商品名称''), array(''id''=>''2'', ''text''=>''商品型号''), array(''id''=>''3'', ''text''=>''价格 - 名称''), array(''id''=>''4'', ''text''=>''价格 - 型号''), array(''id''=>''5'', ''text''=>''名称 - 型号''), array(''id''=>''6'', ''text''=>''商品排序'')),');
INSERT INTO `configuration` VALUES (381, '导航条 - 按钮和图像', 'SHOW_PREVIOUS_NEXT_STATUS', '0', '是否显示按钮和图像:<br />0= 否<br />1= 是', 18, 20, '2010-08-31 17:27:07', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''0'', ''text''=>''否''), array(''id''=>''1'', ''text''=>''是'')),');
INSERT INTO `configuration` VALUES (382, '导航条 - 按钮和图像设置', 'SHOW_PREVIOUS_NEXT_IMAGES', '0', '显示按钮和图像的设置<br />0= 仅显示按钮<br />1= 按钮和商品图像<br />2= 仅显示商品图像', 18, 21, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''0'', ''text''=>''仅显示按钮''), array(''id''=>''1'', ''text''=>''按钮和商品图像''), array(''id''=>''2'', ''text''=>''仅显示商品图像'')),');
INSERT INTO `configuration` VALUES (383, '导航条 - 图像宽度?', 'PREVIOUS_NEXT_IMAGE_WIDTH', '50', '上一个/下一个 图像宽度?', 18, 22, NULL, '2010-08-17 11:45:09', '', '');
INSERT INTO `configuration` VALUES (384, '导航条 - 图像高度?', 'PREVIOUS_NEXT_IMAGE_HEIGHT', '40', '上一个/下一个 图像高度?', 18, 23, NULL, '2010-08-17 11:45:09', '', '');
INSERT INTO `configuration` VALUES (385, '分类导航条的位置', 'PRODUCT_INFO_CATEGORIES', '1', '商品的分类图像和名称位于导航条的上面<br />0= 否<br />1= 左对齐<br />2= 中间对齐<br />3= 右对齐', 18, 20, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''0'', ''text''=>''否''), array(''id''=>''1'', ''text''=>''左对齐''), array(''id''=>''2'', ''text''=>''中间对齐''), array(''id''=>''3'', ''text''=>''右对齐'')),');
INSERT INTO `configuration` VALUES (386, '分类导航条的名称和图像', 'PRODUCT_INFO_CATEGORIES_IMAGE_STATUS', '2', '商品分类图像和名称<br />0= 总是显示商品分类图像和名称<br />1= 只显示名称<br />2= 当非空时显示商品分类图像和名称', 18, 20, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''0'', ''text''=>''分类和图像''), array(''id''=>''1'', ''text''=>''仅分类''), array(''id''=>''2'', ''text''=>''非空时分类和图像'')),');
INSERT INTO `configuration` VALUES (387, '栏目宽度 - 左栏目', 'BOX_WIDTH_LEFT', '170px', '左栏目边框的宽度<br />可以输入 px<br />缺省 = 150px', 19, 1, NULL, '2003-11-21 22:16:36', NULL, NULL);
INSERT INTO `configuration` VALUES (388, '栏目宽度 - 右栏目', 'BOX_WIDTH_RIGHT', '140px', '右栏目边框的宽度<br />可以输入 px<br />缺省 = 150px', 19, 2, NULL, '2003-11-21 22:16:36', NULL, NULL);
INSERT INTO `configuration` VALUES (389, '导航条分割符', 'BREAD_CRUMBS_SEPARATOR', '&nbsp;::&nbsp;', '输入导航条分隔符<br />提示: 空格用 &amp;nbsp; <br />缺省 = &amp;nbsp;::&amp;nbsp;', 19, 3, NULL, '2003-11-21 22:16:36', NULL, 'zen_cfg_textarea_small(');
INSERT INTO `configuration` VALUES (390, '导航条', 'DEFINE_BREADCRUMB_STATUS', '1', '是否显示导航条<br />0= 关<br />1= 开<br />2= 仅不显示在首页', 19, 4, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2''), ');
INSERT INTO `configuration` VALUES (391, '畅销商品 - 数目填充', 'BEST_SELLERS_FILLER', '&nbsp;', '用什么分割数字?<br />缺省 = &amp;nbsp;', 19, 5, NULL, '2003-11-21 22:16:36', NULL, 'zen_cfg_textarea_small(');
INSERT INTO `configuration` VALUES (392, '畅销商品 - 截断商品名称', 'BEST_SELLERS_TRUNCATE', '35', '商品名称截断长度?<br />缺省 = 35', 19, 6, NULL, '2003-11-21 22:16:36', NULL, NULL);
INSERT INTO `configuration` VALUES (393, '畅销商品 - 截断商品名称后面加上 ...', 'BEST_SELLERS_TRUNCATE_MORE', 'true', '截断商品名称时，后面加上 ...<br />缺省 = true', 19, 7, '2003-03-21 13:08:25', '2003-03-21 11:42:47', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (394, '购物车边框', 'SHOW_SHOPPING_CART_BOX_STATUS', '0', '是否显示购物车边框<br />0= 总是显示<br />1= 满的时候<br />2= 满的时候，但查看购物车时不显示', 19, 8, '2010-08-31 18:17:56', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2''), ');
INSERT INTO `configuration` VALUES (395, '分类栏 - 显示特价商品链接', 'SHOW_CATEGORIES_BOX_SPECIALS', 'true', '在分类边框中显示特价商品链接', 19, 9, '2003-03-21 13:08:25', '2003-03-21 11:42:47', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (396, '分类栏 - 显示新进商品链接', 'SHOW_CATEGORIES_BOX_PRODUCTS_NEW', 'true', '在分类边框中显示新进商品链接', 19, 10, '2003-03-21 13:08:25', '2003-03-21 11:42:47', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (397, '分类栏 - 显示推荐商品链接', 'SHOW_CATEGORIES_BOX_FEATURED_PRODUCTS', 'true', '在分类边框中显示推荐商品链接', 19, 11, '2003-03-21 13:08:25', '2003-03-21 11:42:47', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (398, '分类栏 - 显示所有商品链接', 'SHOW_CATEGORIES_BOX_PRODUCTS_ALL', 'true', '在分类边框中显示所有商品链接', 19, 12, '2003-03-21 13:08:25', '2003-03-21 11:42:47', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (399, '左边栏目状态 - 全局', 'COLUMN_LEFT_STATUS', '1', '显示左栏目, 除非有文件替代<br />0= 左栏目总是关闭<br />1= 左栏目打开，除非有文件替代', 19, 15, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (400, '右边栏目状态 - 全局', 'COLUMN_RIGHT_STATUS', '1', '显示右栏目, 除非有文件替代<br />0= 右栏目总是关闭<br />1= 右栏目打开, 除非有文件替代', 19, 16, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (401, '栏目宽度 - 左', 'COLUMN_WIDTH_LEFT', '170px', '左边栏目的宽度<br />可以输入 px<br />缺省 = 150px', 19, 20, NULL, '2003-11-21 22:16:36', NULL, NULL);
INSERT INTO `configuration` VALUES (402, '栏目宽度 - 右', 'COLUMN_WIDTH_RIGHT', '140px', '右边栏目的宽度<br />可以输入 px<br />缺省 = 150px', 19, 21, NULL, '2003-11-21 22:16:36', NULL, NULL);
INSERT INTO `configuration` VALUES (403, '分类分割符', 'SHOW_CATEGORIES_SEPARATOR_LINK', '1', '分类名称之间显示分割符吗?<br />0= 否<br />1= 是', 19, 24, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (404, '分类名称和计数之间的分割符', 'CATEGORIES_SEPARATOR', '', '分类名称和计数间的分割符是?<br />缺省 = -&amp;gt;', 19, 25, NULL, '2003-11-21 22:16:36', NULL, 'zen_cfg_textarea_small(');
INSERT INTO `configuration` VALUES (405, '分类名称和子分类之间的分割符', 'CATEGORIES_SEPARATOR_SUBS', '', '分类名称和子分类之间的分割符是?<br />缺省 = |_&amp;nbsp;', 19, 26, NULL, '2004-03-25 22:16:36', NULL, 'zen_cfg_textarea_small(');
INSERT INTO `configuration` VALUES (406, '分类计数前缀', 'CATEGORIES_COUNT_PREFIX', '&nbsp;(', '计数要加前缀吗?<br />缺省= (', 19, 27, NULL, '2003-01-21 22:16:36', NULL, 'zen_cfg_textarea_small(');
INSERT INTO `configuration` VALUES (407, '分类计数后缀', 'CATEGORIES_COUNT_SUFFIX', ')', '计算后缀是?<br />缺省= )', 19, 28, NULL, '2003-01-21 22:16:36', NULL, 'zen_cfg_textarea_small(');
INSERT INTO `configuration` VALUES (408, '分类子分类缩排', 'CATEGORIES_SUBCATEGORIES_INDENT', '&nbsp;&nbsp;', '子分类的缩进为?<br />缺省= &nbsp;&nbsp;', 19, 29, NULL, '2004-06-24 22:16:36', NULL, 'zen_cfg_textarea_small(');
INSERT INTO `configuration` VALUES (409, '没有商品的分类', 'CATEGORIES_COUNT_ZERO', '0', '显示商品数量为零的分类吗?<br />0= 否<br />1= 是', 19, 30, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (410, '分隔分类边框', 'CATEGORIES_SPLIT_DISPLAY', 'True', '按商品类型分隔分类边框', 19, 31, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''True'', ''False''), ');
INSERT INTO `configuration` VALUES (411, '购物车 - 显示总计', 'SHOW_TOTALS_IN_CART', '1', '是否在购物车上显示总计<br />0= 否<br />1= 是: 件数 重量 金额<br />2= 是: 件数 重量 金额，重量为零时不显示<br />3= 是: 件数 金额', 19, 31, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''), ');
INSERT INTO `configuration` VALUES (412, '顾客欢迎词 - 显示在首页', 'SHOW_CUSTOMER_GREETING', '0', '在首页上显示顾客欢迎词<br />0= 否<br />1= 是', 19, 40, '2010-08-17 13:42:19', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (413, '分类 - 总是显示在首页', 'SHOW_CATEGORIES_ALWAYS', '0', '首页显示分类<br />0= 否<br />1= 是<br />首页显示的分类可以是主分类或一个特定子分类', 19, 45, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (414, '首页 - 显示分类', 'CATEGORIES_START_MAIN', '0', '0= 主分类<br />或输入分类编号<br />提示: 也可以使用子分类，例如: 3_10', 19, 46, NULL, '2010-08-17 11:45:09', '', '');
INSERT INTO `configuration` VALUES (415, '分类 - 显示子分类', 'SHOW_CATEGORIES_SUBCATEGORIES_ALWAYS', '1', '总是显示分类和子分类<br />0= 否, 只显示总分类<br />1= 是, 选择时总是显示分类和子分类', 19, 47, '2010-08-17 14:39:33', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (416, '广告显示组 - 标题位置 1', 'SHOW_BANNERS_GROUP_SET1', '', '广告显示组可以是一个广告组或多个广告组<br /><br />多个广告组，输入广告组名，用<strong>:</strong>分开<br /><br />例如: Wide-Banners:SideBox-Banners<br /><br />在标题位置 1，您要使用哪个广告组?<br />没有就留空', 19, 55, NULL, '2010-08-17 11:45:09', '', '');
INSERT INTO `configuration` VALUES (417, '广告显示组 - 标题位置 2', 'SHOW_BANNERS_GROUP_SET2', '', '广告显示组可以是一个广告组或多个广告组<br /><br />多个广告组，输入广告组名，用<strong>:</strong>分开<br /><br />例如: Wide-Banners:SideBox-Banners<br /><br />在标题位置 2，您要使用哪个广告组?<br />没有就留空', 19, 56, NULL, '2010-08-17 11:45:09', '', '');
INSERT INTO `configuration` VALUES (418, '广告显示组 - 标题位置 3', 'SHOW_BANNERS_GROUP_SET3', '', '广告显示组可以是一个广告组或多个广告组<br /><br />多个广告组，输入广告组名，用<strong>:</strong>分开<br /><br />例如: Wide-Banners:SideBox-Banners<br /><br />在标题位置 3，您要使用哪个广告组?<br />没有就留空', 19, 57, NULL, '2010-08-17 11:45:09', '', '');
INSERT INTO `configuration` VALUES (419, '广告显示组 - 页脚位置 1', 'SHOW_BANNERS_GROUP_SET4', '', '广告显示组可以是一个广告组或多个广告组<br /><br />多个广告组，输入广告组名，用<strong>:</strong>分开<br /><br />例如: Wide-Banners:SideBox-Banners<br /><br />在页脚位置 1，您要使用哪个广告组?<br />没有就留空', 19, 65, NULL, '2010-08-17 11:45:09', '', '');
INSERT INTO `configuration` VALUES (420, '广告显示组 - 页脚位置 2', 'SHOW_BANNERS_GROUP_SET5', '', '广告显示组可以是一个广告组或多个广告组<br /><br />多个广告组，输入广告组名，用<strong>:</strong>分开<br /><br />例如: Wide-Banners:SideBox-Banners<br /><br />在页脚位置 2，您要使用哪个广告组?<br />没有就留空', 19, 66, NULL, '2010-08-17 11:45:09', '', '');
INSERT INTO `configuration` VALUES (421, '广告显示组 - 页脚位置 3', 'SHOW_BANNERS_GROUP_SET6', '', '广告显示组可以是一个广告组或多个广告组<br /><br />多个广告组，输入广告组名，用<strong>:</strong>分开<br /><br />例如: Wide-Banners:SideBox-Banners<br /><br />缺省组为 Wide-Banners<br /><br />在页脚位置 3，您要使用哪个广告组?<br />没有就留空', 19, 67, '2010-08-17 11:59:11', '2010-08-17 11:45:09', '', '');
INSERT INTO `configuration` VALUES (422, '广告显示组 - 边框 banner_box', 'SHOW_BANNERS_GROUP_SET7', '', '广告显示组可以是一个广告组或多个广告组<br /><br />多个广告组，输入广告组名，用<strong>:</strong>分开<br /><br />例如: Wide-Banners:SideBox-Banners<br /><br />缺省组为 SideBox-Banners<br /><br />在边框的广告栏，您要使用哪个广告组?<br />没有就留空', 19, 70, '2010-08-17 11:59:21', '2010-08-17 11:45:09', '', '');
INSERT INTO `configuration` VALUES (423, '广告显示组 - 边框 banner_box2', 'SHOW_BANNERS_GROUP_SET8', '', '广告显示组可以是一个广告组或多个广告组<br /><br />多个广告组，输入广告组名，用<strong>:</strong>分开<br /><br />例如: Wide-Banners:SideBox-Banners<br /><br />缺省组为 SideBox-Banners<br /><br />在边框的广告栏2，您要使用哪个广告组?<br />没有就留空', 19, 71, '2010-08-17 11:59:26', '2010-08-17 11:45:09', '', '');
INSERT INTO `configuration` VALUES (424, '广告显示组 - 边框 banner_box_all', 'SHOW_BANNERS_GROUP_SET_ALL', '', '所有广告边框栏只可以设置一个广告组<br /><br />缺省组为 BannersAll<br /><br />在边框的所有广告栏，您要使用哪个广告组?<br />没有就留空', 19, 72, '2010-08-17 11:59:36', '2010-08-17 11:45:09', '', '');
INSERT INTO `configuration` VALUES (425, '页脚 - 显示IP地址', 'SHOW_FOOTER_IP', '0', '在页脚显示客户IP地址吗<br />0= 否<br />1= 是', 19, 80, '2010-08-17 14:41:07', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (426, '商品优惠数量 - 添加多少空白优惠?', 'DISCOUNT_QTY_ADD', '5', '在商品价格上添加多少空白优惠?', 19, 90, NULL, '2010-08-17 11:45:09', '', '');
INSERT INTO `configuration` VALUES (427, '商品优惠数量 - 每行显示多少?', 'DISCOUNT_QUANTITY_PRICES_COLUMN', '5', '商品信息页面每行显示多少优惠?', 19, 95, NULL, '2010-08-17 11:45:09', '', '');
INSERT INTO `configuration` VALUES (428, '分类/商品显示顺序', 'CATEGORIES_PRODUCTS_SORT_ORDER', '0', '分类/商品显示顺序<br />0= 分类/商品显示顺序/名称<br />1= 分类/商品名称<br />2= 商品型号<br />3= 商品数量+, 商品名称<br />4= 商品数量-, 商品名称<br />5= 商品价格+, 商品名称<br />6= 商品价格-, 商品名称', 19, 100, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4'', ''5'', ''6''), ');
INSERT INTO `configuration` VALUES (429, '选项名称和内容全局添加、复制和删除', 'OPTION_NAMES_VALUES_GLOBAL_STATUS', '1', '选项名称和内容全局添加、复制和删除<br />0= 隐藏<br />1= 显示<br />2= 商品型号', 19, 110, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (430, '分类标签菜单 打开/关闭', 'CATEGORIES_TABS_STATUS', '0', '分类标签<br />在页眉显示商店的分类目录，自己发挥想象力。<br />0= 隐藏分类标签<br />1= 显示分类标签', 19, 112, '2010-08-31 18:07:56', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (431, '网站地图 - 是否包含我的帐号链接', 'SHOW_ACCOUNT_LINKS_ON_SITE_MAP', 'Yes', '网站地图上是否显示到我的帐号的链接<br />说明: 搜索引擎会尝试索引该页面，通常不会转向安全页面，因为索引登录页面并无好处。<br /><br />缺省: false', 19, 115, '2010-08-31 18:08:14', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''Yes'', ''No''), ');
INSERT INTO `configuration` VALUES (432, '跳过单个商品的分类', 'SKIP_SINGLE_PRODUCT_CATEGORIES', 'True', '跳过单个商品的分类<br />如果设置为True，客户点击单个商品的分类时，Zen Cart将直接显示商品页面。<br />缺省: True', 19, 120, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''True'', ''False''), ');
INSERT INTO `configuration` VALUES (433, '分开登录页面', 'USE_SPLIT_LOGIN_MODE', 'False', '登录页面有两种显示模式: 分页模式 或 同页模式<br />分页模式，点击按钮后进入注册页面。同页模式，注册页面显示在登录之下。<br />缺省: True', 19, 121, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''True'', ''False''), ');
INSERT INTO `configuration` VALUES (434, 'CSS按钮', 'IMAGE_USE_CSS_BUTTONS', 'Yes', 'CSS按钮<br />使用CSS按钮替代图像(GIF/JPG)<br />按钮格式在stylesheet文件中定义。', 19, 147, '2010-08-31 18:08:56', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''No'', ''Yes''), ');
INSERT INTO `configuration` VALUES (435, '<strong>关闭维护中: 开/关</strong>', 'DOWN_FOR_MAINTENANCE', 'false', '网站维护中 <br />(true=是 false=否)', 20, 1, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (436, '网站维护中: 文件名', 'DOWN_FOR_MAINTENANCE_FILENAME', 'down_for_maintenance', '网站维护中: 文件名 <br />备注: 不含后缀<br />缺省=down_for_maintenance', 20, 2, NULL, '2010-08-17 11:45:09', NULL, '');
INSERT INTO `configuration` VALUES (437, '网站维护中: 隐藏页眉', 'DOWN_FOR_MAINTENANCE_HEADER_OFF', 'false', '网站维护中: 隐藏页眉 <br />(true=隐藏 false=显示)', 20, 3, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (438, '网站维护中: 隐藏左栏目', 'DOWN_FOR_MAINTENANCE_COLUMN_LEFT_OFF', 'false', '网站维护中: 隐藏左栏目 <br />(true=隐藏 false=显示)', 20, 4, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (439, '网站维护中: 隐藏右栏目', 'DOWN_FOR_MAINTENANCE_COLUMN_RIGHT_OFF', 'false', '网站维护中: 隐藏右栏目 <br />(true=隐藏 false=显示)', 20, 5, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (440, '网站维护中: 隐藏页脚', 'DOWN_FOR_MAINTENANCE_FOOTER_OFF', 'false', '网站维护中: 隐藏页脚 <br />(true=隐藏 false=显示)', 20, 6, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (441, '网站维护中: 隐藏价格', 'DOWN_FOR_MAINTENANCE_PRICES_OFF', 'false', '网站维护中: 隐藏价格 <br />(true=隐藏 false=显示)', 20, 7, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (442, '关闭维护中 (不包括该IP地址)', 'EXCLUDE_ADMIN_IP_FOR_MAINTENANCE', '您的IP地址(管理员)', '网站维护时，该地址仍然可以访问网站 (例如网管)<br />要输入多个地址，用逗号分开。如果您不知道IP地址，可以查看商店界面的页脚。', 20, 8, '2003-03-21 13:43:22', '2003-03-21 21:20:07', NULL, NULL);
INSERT INTO `configuration` VALUES (443, '关闭维护前发布通知: 开/关', 'WARN_BEFORE_DOWN_FOR_MAINTENANCE', 'false', '是否在网站维护前给出提醒信息<br />(true=是 false=否)<br />如果您将''网站维护中: 开/关''设为开，该值自动设为否', 20, 9, '2003-03-21 13:08:25', '2003-03-21 11:42:47', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (444, '维护前的通知日期和小时', 'PERIOD_BEFORE_DOWN_FOR_MAINTENANCE', '2003/05/15  2-3 PM', '输入网站维护的日期和时间', 20, 10, '2003-03-21 13:08:25', '2003-03-21 11:42:47', NULL, NULL);
INSERT INTO `configuration` VALUES (445, '显示网站管理员开始维护', 'DISPLAY_MAINTENANCE_TIME', 'false', '显示网管何时开始维护 <br />(true=是 false=否)<br />', 20, 11, '2003-03-21 13:08:25', '2003-03-21 11:42:47', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (446, '显示网站维护时段', 'DISPLAY_MAINTENANCE_PERIOD', 'false', '显示网站维护时段 <br />(true=是 false=否)<br />', 20, 12, '2003-03-21 13:08:25', '2003-03-21 11:42:47', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (447, '网站维护时段', 'TEXT_MAINTENANCE_PERIOD_TIME', '2h00', '输入网站维护时段(小时:分钟)', 20, 13, '2003-03-21 13:08:25', '2003-03-21 11:42:47', NULL, NULL);
INSERT INTO `configuration` VALUES (448, '结帐时确认顾客须知中条款', 'DISPLAY_CONDITIONS_ON_CHECKOUT', 'false', '结帐时显示客户必须同意的顾客须知中的条款。', 11, 1, '2010-08-31 16:38:01', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (449, '创建帐号时确认隐私声明', 'DISPLAY_PRIVACY_CONDITIONS', 'true', '创建帐号时显示客户必须同意的隐私声明。', 11, 2, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''true'', ''false''), ');
INSERT INTO `configuration` VALUES (450, '显示商品图像', 'PRODUCT_NEW_LIST_IMAGE', '1102', '要显示商品图像吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 21, 1, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (451, '显示商品数量', 'PRODUCT_NEW_LIST_QUANTITY', '1202', '要显示商品数量吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 21, 2, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (452, '显示商品马上购买按钮', 'PRODUCT_NEW_BUY_NOW', '1300', '要显示商品的立购买按钮吗<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 21, 3, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (453, '显示商品名称', 'PRODUCT_NEW_LIST_NAME', '2101', '要显示商品名称吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 21, 4, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (454, '显示商品型号', 'PRODUCT_NEW_LIST_MODEL', '2201', '要显示商品型号吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 21, 5, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (455, '显示厂商名字', 'PRODUCT_NEW_LIST_MANUFACTURER', '2302', '要显示商品的厂商名字吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 21, 6, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (456, '显示商品价格', 'PRODUCT_NEW_LIST_PRICE', '2402', '要显示商品价格吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 21, 7, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (457, '显示商品重量', 'PRODUCT_NEW_LIST_WEIGHT', '2502', '要显示商品重量吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 21, 8, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (458, '显示商品加入日期', 'PRODUCT_NEW_LIST_DATE_ADDED', '2601', '要显示商品的加入日期吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 21, 9, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (459, '显示商品简介', 'PRODUCT_NEW_LIST_DESCRIPTION', '150', '商品简介显示的字数<br /><br />0= 不显示<br />150= 建议字数，或者输入要显示的最多字数', 21, 10, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (460, '商品显示缺省排序', 'PRODUCT_NEW_LIST_SORT_DEFAULT', '6', '显示新进商品的缺省排序是什么?<br />缺省 = 6 日期由新到旧<br /><br />1= 商品名称<br />2= 商品介绍<br />3= 价格由低到高, 商品名称<br />4= 价格由高到低, 商品名称<br />5= 型号<br />6= 加入日期降序<br />7= 加入日期<br />8= 商品排序', 21, 11, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8''), ');
INSERT INTO `configuration` VALUES (461, '商品缺省的新组编号', 'PRODUCT_NEW_LIST_GROUP_ID', '21', '警告: 仅在新进商品组编号与缺省的21不同时，才修改该值。<br />新进商品组的编号是什么?', 21, 12, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (462, '显示多个商品数量方框并设定按钮位置', 'PRODUCT_NEW_LISTING_MULTIPLE_ADD_TO_CART', '3', '要显示添加多个商品数量方框并设定按钮位置吗?<br />0= 否<br />1= 页面顶部<br />2= 页面底部<br />3= 同时', 21, 25, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''), ');
INSERT INTO `configuration` VALUES (463, '屏蔽预售商品', 'SHOW_NEW_PRODUCTS_UPCOMING_MASKED', '1', '要在边框和中框的新进商品列表中屏蔽预售商品吗?<br />0= 否<br />1= 是', 21, 30, '2010-08-31 18:10:48', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (464, '显示商品图像', 'PRODUCT_FEATURED_LIST_IMAGE', '1102', '要显示商品图像吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 22, 1, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (465, '显示商品数量', 'PRODUCT_FEATURED_LIST_QUANTITY', '1202', '要显示商品数量吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 22, 2, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (466, '显示商品马上购买按钮', 'PRODUCT_FEATURED_BUY_NOW', '1300', '要显示商品的立购买按钮吗<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 22, 3, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (467, '显示商品名称', 'PRODUCT_FEATURED_LIST_NAME', '2101', '要显示商品名称吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 22, 4, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (468, '显示商品型号', 'PRODUCT_FEATURED_LIST_MODEL', '2201', '要显示商品型号吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 22, 5, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (469, '显示厂商名字', 'PRODUCT_FEATURED_LIST_MANUFACTURER', '2302', '要显示商品的厂商名字吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 22, 6, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (470, '显示商品价格', 'PRODUCT_FEATURED_LIST_PRICE', '2402', '要显示商品价格吗<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 22, 7, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (471, '显示商品重量', 'PRODUCT_FEATURED_LIST_WEIGHT', '2502', '要显示商品重量吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 22, 8, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (472, '显示商品加入日期', 'PRODUCT_FEATURED_LIST_DATE_ADDED', '2601', '要显示商品的加入日期吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 22, 9, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (473, '显示商品简介', 'PRODUCT_FEATURED_LIST_DESCRIPTION', '150', '商品简介显示的字数?<br /><br />0= 不显示<br />150= 建议字数，或者输入要显示的最多字数', 22, 10, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (474, '商品显示缺省排序', 'PRODUCT_FEATURED_LIST_SORT_DEFAULT', '1', '显示推荐商品的缺省排序是什么?<br />缺省 = 1 为商品名称<br /><br />1= 商品名称<br />2= 商品介绍<br />3= 价格由低到高, 商品名称<br />4= 价格由高到低, 商品名称<br />5= 型号<br />6= 加入日期降序<br />7= 加入日期<br />8= 商品排序', 22, 11, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8''), ');
INSERT INTO `configuration` VALUES (475, '推荐商品的缺省组编号', 'PRODUCT_FEATURED_LIST_GROUP_ID', '22', '警告: 仅在推荐商品组编号与缺省的22不同时，才修改该值<br />推荐商品组的编号是什么?', 22, 12, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (476, '显示多个商品数量方框并设定按钮位置', 'PRODUCT_FEATURED_LISTING_MULTIPLE_ADD_TO_CART', '3', '要显示添加多个商品数量方框并设定按钮位置吗?<br />0= 否<br />1= 页面顶部<br />2= 页面底部<br />3= 同时', 22, 25, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''), ');
INSERT INTO `configuration` VALUES (477, '显示商品图像', 'PRODUCT_ALL_LIST_IMAGE', '1102', '要显示商品图像吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 23, 1, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (478, '显示商品数量', 'PRODUCT_ALL_LIST_QUANTITY', '1202', '要显示商品数量吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 23, 2, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (479, '显示商品马上购买按钮', 'PRODUCT_ALL_BUY_NOW', '1300', '要显示商品的立购买按钮吗<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 23, 3, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (480, '显示商品名称', 'PRODUCT_ALL_LIST_NAME', '2101', '要显示商品名称吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 23, 4, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (481, '显示商品型号', 'PRODUCT_ALL_LIST_MODEL', '2201', '要显示商品型号吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 23, 5, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (482, '显示厂商名字', 'PRODUCT_ALL_LIST_MANUFACTURER', '2302', '要显示商品的厂商名字吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 23, 6, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (483, '显示商品价格', 'PRODUCT_ALL_LIST_PRICE', '2402', '要显示商品价格吗<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 23, 7, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (484, '显示商品重量', 'PRODUCT_ALL_LIST_WEIGHT', '2502', '要显示商品重量吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 23, 8, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (485, '显示商品加入日期', 'PRODUCT_ALL_LIST_DATE_ADDED', '2601', '要显示商品的加入日期吗?<br /><br />0= 否<br />第一位数字 左边还是右边<br />第二、三位数字 排序顺序<br />第四位数字 之后的空行数<br />', 23, 9, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (486, '显示商品简介', 'PRODUCT_ALL_LIST_DESCRIPTION', '150', '商品简介显示的字数?<br /><br />0= 不显示<br />150= 建议字数，或者输入要显示的最多字数', 23, 10, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (487, '商品显示缺省排序', 'PRODUCT_ALL_LIST_SORT_DEFAULT', '1', '显示所有商品的缺省排序是什么?<br />缺省 = 1 为商品名称<br /><br />1= 商品名称<br />2= 商品介绍<br />3= 价格由低到高, 商品名称<br />4= 价格由高到低, 商品名称<br />5= 型号<br />6= 加入日期降序<br />7= 加入日期<br />8= 商品排序', 23, 11, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8''), ');
INSERT INTO `configuration` VALUES (488, '商品缺省的所有组编号', 'PRODUCT_ALL_LIST_GROUP_ID', '23', '警告: 仅在所有商品组编号与缺省的23不同时，才修改该值<br />所有商品组的编号是什么?', 23, 12, NULL, '2010-08-17 11:45:09', NULL, NULL);
INSERT INTO `configuration` VALUES (489, '显示多个商品数量方框并设定按钮位置', 'PRODUCT_ALL_LISTING_MULTIPLE_ADD_TO_CART', '3', '要显示添加多个商品数量方框并设定按钮位置吗?<br />0= 否<br />1= 页面顶部<br />2= 页面底部<br />3= 同时', 23, 25, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''), ');
INSERT INTO `configuration` VALUES (490, '在首页上显示新进商品', 'SHOW_PRODUCT_INFO_MAIN_NEW_PRODUCTS', '1', '在首页上显示新进商品<br />0= 否 或设置排序顺序', 24, 65, '2010-08-17 13:50:04', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4''), ');
INSERT INTO `configuration` VALUES (491, '在首页上显示推荐商品', 'SHOW_PRODUCT_INFO_MAIN_FEATURED_PRODUCTS', '2', '在首页上显示推荐商品<br />0= 否 或设置排序顺序', 24, 66, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4''), ');
INSERT INTO `configuration` VALUES (492, '在首页上显示特价商品', 'SHOW_PRODUCT_INFO_MAIN_SPECIALS_PRODUCTS', '3', '在首页上显示特价商品<br />0= 否 或设置排序顺序', 24, 67, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4''), ');
INSERT INTO `configuration` VALUES (493, '在首页上显示预售商品', 'SHOW_PRODUCT_INFO_MAIN_UPCOMING', '4', '在首页上显示预售商品<br />0= 否 或设置排序顺序', 24, 68, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4''), ');
INSERT INTO `configuration` VALUES (494, '在首页上显示新进商品 - 分类及子分类', 'SHOW_PRODUCT_INFO_CATEGORY_NEW_PRODUCTS', '1', '在首页上显示新进商品 - 分类和子分类<br />0= 否 或设置排序顺序', 24, 70, '2010-08-17 13:52:01', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4''), ');
INSERT INTO `configuration` VALUES (495, '在首页上显示推荐商品 - 分类及子分类', 'SHOW_PRODUCT_INFO_CATEGORY_FEATURED_PRODUCTS', '2', '在首页上显示推荐商品 - 分类和子分类<br />0= 否 或设置排序顺序', 24, 71, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4''), ');
INSERT INTO `configuration` VALUES (496, '在首页上显示特价商品 - 分类及子分类', 'SHOW_PRODUCT_INFO_CATEGORY_SPECIALS_PRODUCTS', '3', '在首页上显示特价商品 - 分类和子分类<br />0= 否 或设置排序顺序', 24, 72, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4''), ');
INSERT INTO `configuration` VALUES (497, '在首页上显示预售商品 - 分类及子分类', 'SHOW_PRODUCT_INFO_CATEGORY_UPCOMING', '4', '在首页上显示预售商品 - 分类和子分类<br />0= 否 或设置排序顺序', 24, 73, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4''), ');
INSERT INTO `configuration` VALUES (498, '在首页上显示新进商品 - 错误和丢失商品页', 'SHOW_PRODUCT_INFO_MISSING_NEW_PRODUCTS', '1', '在首页上显示新进商品 - 错误和丢失商品<br />0= 否 或设置排序顺序', 24, 75, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4''), ');
INSERT INTO `configuration` VALUES (499, '在首页上显示推荐商品 - 错误和丢失商品页', 'SHOW_PRODUCT_INFO_MISSING_FEATURED_PRODUCTS', '2', '在首页上显示推荐商品 - 错误和丢失商品<br />0= 否 或设置排序顺序', 24, 76, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4''), ');
INSERT INTO `configuration` VALUES (500, '在首页上显示特价商品 - 错误和丢失商品页', 'SHOW_PRODUCT_INFO_MISSING_SPECIALS_PRODUCTS', '3', '在首页上显示特价商品 - 错误和丢失商品<br />0= 否 或设置排序顺序', 24, 77, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4''), ');
INSERT INTO `configuration` VALUES (501, '在首页上显示预售商品 - 错误和丢失商品页', 'SHOW_PRODUCT_INFO_MISSING_UPCOMING', '4', '在首页上显示预售商品 - 错误和丢失商品<br />0= 否 或设置排序顺序', 24, 78, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4''), ');
INSERT INTO `configuration` VALUES (502, '显示新进商品 - 商品列表下', 'SHOW_PRODUCT_INFO_LISTING_BELOW_NEW_PRODUCTS', '1', '在商品列表下显示新进商品<br />0= 否 或设置排序顺序', 24, 85, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4''), ');
INSERT INTO `configuration` VALUES (503, '显示推荐商品 - 商品列表下', 'SHOW_PRODUCT_INFO_LISTING_BELOW_FEATURED_PRODUCTS', '2', '在商品列表下显示推荐商品<br />0= 否 或设置排序顺序', 24, 86, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4''), ');
INSERT INTO `configuration` VALUES (504, '显示特价商品 - 商品列表下', 'SHOW_PRODUCT_INFO_LISTING_BELOW_SPECIALS_PRODUCTS', '3', '在商品列表下显示特价商品<br />0= 否 或设置排序顺序', 24, 87, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4''), ');
INSERT INTO `configuration` VALUES (505, '显示预售商品 - 商品列表下', 'SHOW_PRODUCT_INFO_LISTING_BELOW_UPCOMING', '4', '在商品列表下显示推荐商品<br />0= 否 或设置排序顺序', 24, 88, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3'', ''4''), ');
INSERT INTO `configuration` VALUES (506, '新进商品每行列数', 'SHOW_PRODUCT_INFO_COLUMNS_NEW_PRODUCTS', '3', '每行显示的新进商品数', 24, 95, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''10'', ''11'', ''12''), ');
INSERT INTO `configuration` VALUES (507, '推荐商品每行列数', 'SHOW_PRODUCT_INFO_COLUMNS_FEATURED_PRODUCTS', '3', '每行显示的推荐商品数', 24, 96, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''10'', ''11'', ''12''), ');
INSERT INTO `configuration` VALUES (508, '特价商品每行列数', 'SHOW_PRODUCT_INFO_COLUMNS_SPECIALS_PRODUCTS', '3', '每行显示的特价商品数', 24, 97, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''1'', ''2'', ''3'', ''4'', ''5'', ''6'', ''7'', ''8'', ''9'', ''10'', ''11'', ''12''), ');
INSERT INTO `configuration` VALUES (509, '过滤当前主分类的商品列表', 'SHOW_PRODUCT_INFO_ALL_PRODUCTS', '1', '显示当前主分类的商品列表，还是显示所有分类中的商品?<br />0= 关闭过滤 1=打开过滤 ', 24, 100, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''), ');
INSERT INTO `configuration` VALUES (510, '定义首页文字', 'DEFINE_MAIN_PAGE_STATUS', '1', '是否使用首页文字的链接/文字<br />0= 链接 是, 文字 否<br />1= 链接 是, 文字 是<br />2= 链接 否, 文字 是<br />3= 链接 否, 文字 否', 25, 60, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''),');
INSERT INTO `configuration` VALUES (511, '定义联系我们', 'DEFINE_CONTACT_US_STATUS', '1', '是否使用联系我们的链接/文字<br />0= 链接 是, 文字 否<br />1= 链接 是, 文字 是<br />2= 链接 否, 文字 是<br />3= 链接 否, 文字 否', 25, 61, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''),');
INSERT INTO `configuration` VALUES (512, '定义隐私声明', 'DEFINE_PRIVACY_STATUS', '1', '是否使用隐私声明的链接/文字<br />0= 链接 是, 文字 否<br />1= 链接 是, 文字 是<br />2= 链接 否, 文字 是<br />3= 链接 否, 文字 否', 25, 62, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''),');
INSERT INTO `configuration` VALUES (513, '定义发货付款须知', 'DEFINE_SHIPPINGINFO_STATUS', '1', '是否使用发货付款须知的链接/文字<br />0= 链接 是, 文字 否<br />1= 链接 是, 文字 是<br />2= 链接 否, 文字 是<br />3= 链接 否, 文字 否', 25, 63, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''),');
INSERT INTO `configuration` VALUES (514, '定义顾客须知', 'DEFINE_CONDITIONS_STATUS', '1', '是否使用顾客须知的链接/文字<br />0= 链接 是, 文字 否<br />1= 链接 是, 文字 是<br />2= 链接 否, 文字 是<br />3= 链接 否, 文字 否', 25, 64, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''),');
INSERT INTO `configuration` VALUES (515, '定义成功结帐页面', 'DEFINE_CHECKOUT_SUCCESS_STATUS', '1', '是否使用成功结帐页的链接/文字<br />0= 链接 是, 文字 否<br />1= 链接 是, 文字 是<br />2= 链接 否, 文字 是<br />3= 链接 否, 文字 否', 25, 65, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''),');
INSERT INTO `configuration` VALUES (516, '定义优惠券说明', 'DEFINE_DISCOUNT_COUPON_STATUS', '1', '是否使用优惠券说明的链接/文字<br />0= 链接 是, 文字 否<br />1= 链接 是, 文字 是<br />2= 链接 否, 文字 是<br />3= 链接 否, 文字 否', 25, 66, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''),');
INSERT INTO `configuration` VALUES (517, '定义网站地图', 'DEFINE_SITE_MAP_STATUS', '1', '是否使用网站地图的链接/文字<br />0= 链接 是, 文字 否<br />1= 链接 是, 文字 是<br />2= 链接 否, 文字 是<br />3= 链接 否, 文字 否', 25, 67, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''),');
INSERT INTO `configuration` VALUES (518, '定义Page-Not-Found', 'DEFINE_PAGE_NOT_FOUND_STATUS', '1', '使用定义页面下的Defined Page-Not-Found的文字?<br />0= 关闭定义文字<br />1= 打开定义文字', 25, 67, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''),');
INSERT INTO `configuration` VALUES (519, '定义页面二', 'DEFINE_PAGE_2_STATUS', '1', '是否使用页面二的链接/文字<br />0= 链接 是, 文字 否<br />1= 链接 是, 文字 是<br />2= 链接 否, 文字 是<br />3= 链接 否, 文字 否', 25, 82, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''),');
INSERT INTO `configuration` VALUES (520, '定义页面三', 'DEFINE_PAGE_3_STATUS', '1', '是否使用页面三的链接/文字<br />0= 链接 是, 文字 否<br />1= 链接 是, 文字 是<br />2= 链接 否, 文字 是<br />3= 链接 否, 文字 否', 25, 83, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''),');
INSERT INTO `configuration` VALUES (521, '定义页面四', 'DEFINE_PAGE_4_STATUS', '1', '是否使用页面四的链接/文字<br />0= 链接 是, 文字 否<br />1= 链接 是, 文字 是<br />2= 链接 否, 文字 是<br />3= 链接 否, 文字 否', 25, 84, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''),');
INSERT INTO `configuration` VALUES (522, '简易页面 - 页眉', 'EZPAGES_STATUS_HEADER', '1', '在全局范围打开/关闭简易页面的页眉<br />0 = 关闭<br />1 = 打开<br />2= 打开，仅限管理员IP，位于网站维护菜单<br />说明: 仅对管理员可见', 30, 10, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2''), ');
INSERT INTO `configuration` VALUES (523, '简易页面 - 页脚', 'EZPAGES_STATUS_FOOTER', '1', '在全局范围打开/关闭简易页面的页脚<br />0 = 关闭<br />1 = 打开<br />2= 打开，仅限管理员IP，位于网站维护菜单<br />说明: 仅对管理员可见', 30, 11, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2''), ');
INSERT INTO `configuration` VALUES (524, '简易页面 - 边框', 'EZPAGES_STATUS_SIDEBOX', '1', '在全局范围打开/关闭简易页面的边框<br />0 = 关闭<br />1 = 打开<br />2= 打开，仅限管理员IP，位于网站维护菜单<br />说明: 仅对管理员可见', 30, 12, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2''), ');
INSERT INTO `configuration` VALUES (525, '简易页面页眉分隔符', 'EZPAGES_SEPARATOR_HEADER', '::', '简易页面页眉分隔符<br />缺省 = &amp;nbsp;::&amp;nbsp;', 30, 20, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_textarea_small(');
INSERT INTO `configuration` VALUES (526, '简易页面页脚分隔符', 'EZPAGES_SEPARATOR_FOOTER', '::', '简易页面页脚分隔符<br />缺省 = &amp;nbsp;::&amp;nbsp;', 30, 21, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_textarea_small(');
INSERT INTO `configuration` VALUES (527, '简易页面导航按钮', 'EZPAGES_SHOW_PREV_NEXT_BUTTONS', '2', '是否在简易页面上显示导航按钮<br />0=否 (无按钮)<br />1="继续"<br />2="上一页/继续/下一页"<br /><br />缺省: 2', 30, 30, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2''), ');
INSERT INTO `configuration` VALUES (528, '简易页面目录', 'EZPAGES_SHOW_TABLE_CONTENTS', '1', '打开简易页面章节的目录吗?<br />0= OFF<br />1= ON', 30, 35, '2010-08-17 11:45:09', '2010-08-17 11:45:09', NULL, 'zen_cfg_select_option(array(''0'', ''1''),');
INSERT INTO `configuration` VALUES (529, '简易页面中不显示页眉的页面', 'EZPAGES_DISABLE_HEADER_DISPLAY_LIST', '', '简易页面中不显示商店的页眉的页面。<br />页编号用逗号分隔，不带空格<br />页编号可以从管理页面－工具－简易页面菜单中获得。<br />例如: 1,5,2<br />或留空。', 30, 40, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_textarea_small(');
INSERT INTO `configuration` VALUES (530, '简易页面中不显示页脚的页面', 'EZPAGES_DISABLE_FOOTER_DISPLAY_LIST', '', '简易页面中不显示商店的页脚的页面。<br />页编号用逗号分隔，不带空格<br />页编号可以从管理页面－工具－简易页面菜单中获得。<br />例如: 3,7<br />或留空。', 30, 41, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_textarea_small(');
INSERT INTO `configuration` VALUES (531, '简易页面中不显示左栏目的页面', 'EZPAGES_DISABLE_LEFTCOLUMN_DISPLAY_LIST', '', '简易页面中不显示商店的左栏目(边框)的页面。<br />页编号用逗号分隔，不带空格<br />页编号可以从管理页面－工具－简易页面菜单中获得。<br />例如: 21<br />或留空。', 30, 42, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_textarea_small(');
INSERT INTO `configuration` VALUES (532, '简易页面中不显示右栏目的页面', 'EZPAGES_DISABLE_RIGHTCOLUMN_DISPLAY_LIST', '', '简易页面中不显示商店的右栏目(边框)的页面。<br />页编号用逗号分隔，不带空格<br />页编号可以从管理页面－工具－简易页面菜单中获得。<br />例如: 3,82,13<br />或留空。', 30, 43, NULL, '2010-08-17 11:45:09', NULL, 'zen_cfg_textarea_small(');
INSERT INTO `configuration` VALUES (535, '商品型号', 'QUICKUPDATES_MODIFY_MODEL', 'true', '是否修改商品型号', 31, 3, '2010-08-17 11:45:11', '2010-08-17 11:45:11', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (536, '商品名称', 'QUICKUPDATES_MODIFY_NAME', 'true', '是否修改商品名称', 31, 4, '2010-08-17 11:45:11', '2010-08-17 11:45:11', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (537, '商品简介', 'QUICKUPDATES_MODIFY_DESCRIPTION', 'true', '是否修改商品简介', 31, 5, '2010-08-17 11:45:11', '2010-08-17 11:45:11', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (538, '商品状态', 'QUICKUPDATES_MODIFY_STATUS', 'true', '是否修改商品状态', 31, 6, '2010-08-17 11:45:11', '2010-08-17 11:45:11', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (539, '商品重量', 'QUICKUPDATES_MODIFY_WEIGHT', 'true', '是否修改商品重量', 31, 7, '2010-08-17 11:45:11', '2010-08-17 11:45:11', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (540, '商品数量', 'QUICKUPDATES_MODIFY_QUANTITY', 'true', '是否修改商品数量', 31, 8, '2010-08-17 11:45:11', '2010-08-17 11:45:11', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (541, '商品厂家', 'QUICKUPDATES_MODIFY_MANUFACTURER', 'true', '是否修改商品厂家', 31, 9, '2010-08-31 18:29:44', '2010-08-17 11:45:11', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (542, '商品税类', 'QUICKUPDATES_MODIFY_TAX', 'false', '是否修改商品税类', 31, 10, '2010-08-17 11:45:11', '2010-08-17 11:45:11', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (543, '商品分类', 'QUICKUPDATES_MODIFY_CATEGORY', 'true', '是否修改商品分类', 31, 11, '2010-08-17 11:45:11', '2010-08-17 11:45:11', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (544, '商品价格', 'QUICKUPDATES_DISPLAY_TVA_OVER', 'true', '鼠标指向商品时，是否显示含税价格', 31, 20, '2010-08-17 11:45:11', '2010-08-17 11:45:11', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (545, '前台商品页面的链接', 'QUICKUPDATES_DISPLAY_PREVIEW', 'false', '是否显示到前台商品信息页面的链接', 31, 30, '2010-08-17 11:45:11', '2010-08-17 11:45:11', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (546, '后台商品页面的链接', 'QUICKUPDATES_DISPLAY_EDIT', 'true', '是否显示到后台商品编辑页面的链接', 31, 31, '2010-08-17 11:45:11', '2010-08-17 11:45:11', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (547, '商品利润', 'QUICKUPDATES_ACTIVATE_COMMERCIAL_MARGIN', 'true', '是否显示商品利润', 31, 40, '2010-08-17 11:45:11', '2010-08-17 11:45:11', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (548, '商品排序', 'QUICKUPDATES_MODIFY_SORT_ORDER', 'true', '是否修改商品排序', 31, 11, '2010-08-17 11:45:11', '2010-08-17 11:45:11', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (549, '弹出窗口', 'QUICKUPDATES_MODIFY_DESCRIPTION_POPUP', 'true', '是否使用弹出链接修改商品简介', 31, 11, '2010-08-17 11:45:11', '2010-08-17 11:45:11', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (550, '商品列表 - 外观样式', 'PRODUCT_LISTING_LAYOUT_STYLE', 'columns', '选择外观样式:<br />商品可以单行显示(选择rows)，或每行显示多个商品(选择columns)', 8, 40, '2010-08-31 16:11:42', '2010-08-17 11:45:11', NULL, 'zen_cfg_select_option(array("rows", "columns"),');
INSERT INTO `configuration` VALUES (551, '商品列表 - 每行列数', 'PRODUCT_LISTING_COLUMNS_PER_ROW', '4', '选择商品列表中每行显示的商品数目，缺省为3', 8, 41, '2010-08-31 16:11:51', '2010-08-17 11:45:11', NULL, NULL);
INSERT INTO `configuration` VALUES (552, '打开搜索引擎优化吗?', 'SEO_ENABLED', 'false', '是否打开搜索引擎优化?  这是整站的开关。<br /><br />请将根目录下的文件htaccess_sample改名为 .htaccess，并修改其中的 /shop/ 为您的zen cart目录。如果Zen Cart安装在网页服务器的根目录下，就设置为 /', 32, 0, '2010-08-31 18:33:20', '2010-08-17 11:45:31', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (553, '在商品的网址中添加cPath吗?', 'SEO_ADD_CPATH_TO_PRODUCT_URLS', 'false', '该设置在商品的网址后添加cPath (例如: some-product-p-1.html?cPath=xx).', 32, 1, '2010-08-17 11:45:31', '2010-08-17 11:45:31', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (554, '在网址前增加上级分类吗?', 'SEO_ADD_CAT_PARENT', 'true', '该设置在分类网址前增加上级分类名称 (例如: parent-category-c-1.html).', 32, 2, '2010-08-17 11:45:31', '2010-08-17 11:45:31', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (555, '过滤太短的单词', 'SEO_URLS_FILTER_SHORT_WORDS', '0', '该设置从网址中过滤少于指定值的单词。', 32, 3, '2010-08-17 11:45:31', '2010-08-17 11:45:31', NULL, NULL);
INSERT INTO `configuration` VALUES (556, '输出兼容W3C的网址 (参数串)?', 'SEO_URLS_USE_W3C_VALID', 'false', '该设置输出兼容W3C的网址。', 32, 4, '2010-08-17 11:45:31', '2010-08-17 11:45:31', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (557, '打开缓存以减少查询次数吗?', 'USE_SEO_CACHE_GLOBAL', 'true', '该设置可以完全关闭缓存。', 32, 5, '2010-08-17 11:45:31', '2010-08-17 11:45:31', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (558, '打开商品缓存吗?', 'USE_SEO_CACHE_PRODUCTS', 'true', '该设置可以关闭商品缓存。', 32, 6, '2010-08-17 11:45:31', '2010-08-17 11:45:31', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (559, '打开目录缓存吗?', 'USE_SEO_CACHE_CATEGORIES', 'true', '该设置可以关闭分类缓存。', 32, 7, '2010-08-17 11:45:31', '2010-08-17 11:45:31', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (560, '打开厂家缓存吗?', 'USE_SEO_CACHE_MANUFACTURERS', 'true', '该设置可以关闭厂家缓存。', 32, 8, '2010-08-17 11:45:31', '2010-08-17 11:45:31', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (561, '打开文章缓存吗?', 'USE_SEO_CACHE_ARTICLES', 'true', '该设置可以关闭文章缓存。', 32, 9, '2010-08-17 11:45:31', '2010-08-17 11:45:31', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (562, '打开信息缓存吗?', 'USE_SEO_CACHE_INFO_PAGES', 'true', '该设置可以关闭信息缓存。', 32, 10, '2010-08-17 11:45:31', '2010-08-17 11:45:31', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (563, '打开自动跳转吗?', 'USE_SEO_REDIRECT', 'false', '该设置实现自动跳转，发送301文件头实现旧网址转向新网址。', 32, 11, '2010-08-17 11:45:31', '2010-08-17 11:45:31', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (564, '选择网址重写类型', 'SEO_REWRITE_TYPE', 'Rewrite', '选择网址重写的格式。', 32, 12, '2010-08-17 11:45:31', '2010-08-17 11:45:31', NULL, 'zen_cfg_select_option(array(''Rewrite''),');
INSERT INTO `configuration` VALUES (565, '输入特殊字符转换', 'SEO_CHAR_CONVERT_SET', '', '该设置转换特殊字符。<br><br>格式<b>必须</b>为: <b>char=>conv,char2=>conv2</b>', 32, 13, '2010-08-17 11:45:31', '2010-08-17 11:45:31', NULL, NULL);
INSERT INTO `configuration` VALUES (566, '要删除字母数字外的所有字符吗?', 'SEO_REMOVE_ALL_SPEC_CHARS', 'true', '该设置可以删除所有除字母和数字外的字符。', 32, 14, '2010-08-31 18:33:09', '2010-08-17 11:45:31', NULL, 'zen_cfg_select_option(array(''true'', ''false''),');
INSERT INTO `configuration` VALUES (567, '重置缓存', 'SEO_URLS_CACHE_RESET', 'false', '该设置重置搜索引擎优化缓存的数据。', 32, 15, '2010-08-17 11:45:31', '2010-08-17 11:45:31', 'zen_reset_cache_data_seo_urls', 'zen_cfg_select_option(array(''reset'', ''false''),');
INSERT INTO `configuration` VALUES (568, '输入需要优化的页面', 'SEO_URLS_ONLY_IN', 'index, product_info, products_new, products_all, featured_products, specials, contact_us, conditions, privacy, reviews, shippinginfo, faqs_all, site_map, gv_faq, discount_coupon, page, page_2, page_3, page_4', '本设置指定需要网址重写的页面，如果为空，所有页面网址都重写。<br><br>格式<b>必须</b>这样: <b>page1,page2,page3</b>', 32, 16, '2010-09-26 16:24:40', '2010-08-17 11:45:31', NULL, NULL);
INSERT INTO `configuration` VALUES (598, '打开地区运费方式', 'MODULE_SHIPPING_ZONES_STATUS', 'True', '您要采用地区运费的方式吗?', 6, 0, NULL, '2010-09-26 15:45:52', NULL, 'zen_cfg_select_option(array(''True'', ''False''), ');
INSERT INTO `configuration` VALUES (569, 'Enable this Payment Module', 'MODULE_PAYMENT_PAYPALWPP_STATUS', 'True', 'Do you want to enable this payment module?', 6, 25, NULL, '2010-08-31 16:47:25', NULL, 'zen_cfg_select_option(array(''True'', ''False''), ');
INSERT INTO `configuration` VALUES (570, 'Live or Sandbox', 'MODULE_PAYMENT_PAYPALWPP_SERVER', 'sandbox', '<strong>Live: </strong> Used to process Live transactions<br><strong>Sandbox: </strong>For developers and testing', 6, 25, NULL, '2010-08-31 16:47:25', NULL, 'zen_cfg_select_option(array(''live'', ''sandbox''), ');
INSERT INTO `configuration` VALUES (571, 'Express Checkout: Require Confirmed Address', 'MODULE_PAYMENT_PAYPALWPP_CONFIRMED_ADDRESS', 'No', 'Do you want to require that your (not-logged-in) customers use a *confirmed* address when choosing their shipping address in PayPal?<br />(this is ignored for logged-in customers)', 6, 25, NULL, '2010-08-31 16:47:25', NULL, 'zen_cfg_select_option(array(''Yes'', ''No''), ');
INSERT INTO `configuration` VALUES (572, 'Express Checkout: Select Cheapest Shipping Automatically', 'MODULE_PAYMENT_PAYPALWPP_AUTOSELECT_CHEAPEST_SHIPPING', 'Yes', 'When customer returns from PayPal, do we want to automatically select the Cheapest shipping method and skip the shipping page? (making it more *express*)<br />Note: enabling this means the customer does *not* have easy access to select an alternate shipping method (without going back to the Checkout-Step-1 page)', 6, 25, NULL, '2010-08-31 16:47:25', NULL, 'zen_cfg_select_option(array(''Yes'', ''No''), ');
INSERT INTO `configuration` VALUES (573, 'Express Checkout: Skip Payment Page', 'MODULE_PAYMENT_PAYPALWPP_SKIP_PAYMENT_PAGE', 'Yes', 'If the customer is checking out with Express Checkout, do you want to skip the checkout payment page, making things more *express*? <br /><strong>(NOTE: The Payment Page will auto-display regardless of this setting if you have Coupons or Gift Certificates enabled in your store.)</strong>', 6, 25, NULL, '2010-08-31 16:47:25', NULL, 'zen_cfg_select_option(array(''Yes'', ''No''), ');
INSERT INTO `configuration` VALUES (574, 'Express Checkout: Automatic Account Creation', 'MODULE_PAYMENT_PAYPALWPP_NEW_ACCT_NOTIFY', 'Yes', 'If a visitor is not an existing customer, a Zen Cart account is created for them.  Would you like make it a permanent account and send them an email containing their login information?<br />NOTE: Permanent accounts are auto-created if the customer purchases downloads or gift certificates, regardless of this setting.', 6, 25, NULL, '2010-08-31 16:47:25', NULL, 'zen_cfg_select_option(array(''Yes'', ''No''), ');
INSERT INTO `configuration` VALUES (575, 'Sort order of display.', 'MODULE_PAYMENT_PAYPALWPP_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', 6, 25, NULL, '2010-08-31 16:47:25', NULL, NULL);
INSERT INTO `configuration` VALUES (576, 'Payment Zone', 'MODULE_PAYMENT_PAYPALWPP_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', 6, 25, NULL, '2010-08-31 16:47:25', 'zen_get_zone_class_title', 'zen_cfg_pull_down_zone_classes(');
INSERT INTO `configuration` VALUES (577, 'Set Order Status', 'MODULE_PAYMENT_PAYPALWPP_ORDER_STATUS_ID', '2', 'Set the status of orders paid with this payment module to this value. <br /><strong>Recommended: Processing[2]</strong>', 6, 25, NULL, '2010-08-31 16:47:25', 'zen_get_order_status_name', 'zen_cfg_pull_down_order_statuses(');
INSERT INTO `configuration` VALUES (578, 'Set Unpaid Order Status', 'MODULE_PAYMENT_PAYPALWPP_ORDER_PENDING_STATUS_ID', '1', 'Set the status of unpaid orders made with this payment module to this value. <br /><strong>Recommended: Pending[1]</strong>', 6, 25, NULL, '2010-08-31 16:47:25', 'zen_get_order_status_name', 'zen_cfg_pull_down_order_statuses(');
INSERT INTO `configuration` VALUES (579, 'Set Refund Order Status', 'MODULE_PAYMENT_PAYPALWPP_REFUNDED_STATUS_ID', '1', 'Set the status of refunded orders to this value. <br /><strong>Recommended: Pending[1]</strong>', 6, 25, NULL, '2010-08-31 16:47:25', 'zen_get_order_status_name', 'zen_cfg_pull_down_order_statuses(');
INSERT INTO `configuration` VALUES (580, 'PayPal Page Style', 'MODULE_PAYMENT_PAYPALWPP_PAGE_STYLE', 'Primary', 'The page-layout style you want customers to see when they visit the PayPal site. You can configure your <strong>Custom Page Styles</strong> in your PayPal Profile settings. This value is case-sensitive.', 6, 25, NULL, '2010-08-31 16:47:25', NULL, NULL);
INSERT INTO `configuration` VALUES (581, 'Payment Action', 'MODULE_PAYMENT_PAYPALWPP_TRANSACTION_MODE', 'Final Sale', 'How do you want to obtain payment?<br /><strong>Default: Final Sale</strong>', 6, 25, NULL, '2010-08-31 16:47:25', NULL, 'zen_cfg_select_option(array(''Auth Only'', ''Final Sale''), ');
INSERT INTO `configuration` VALUES (582, 'Transaction Currency', 'MODULE_PAYMENT_PAYPALWPP_CURRENCY', 'Selected Currency', 'Which currency should the order be sent to PayPal as? <br />NOTE: if an unsupported currency is sent to PayPal, it will be auto-converted to USD (or GBP if using UK account)<br /><strong>Default: Selected Currency</strong>', 6, 25, NULL, '2010-08-31 16:47:25', NULL, 'zen_cfg_select_option(array(''Selected Currency'', ''Only USD'', ''Only AUD'', ''Only CAD'', ''Only EUR'', ''Only GBP'', ''Only CHF'', ''Only CZK'', ''Only DKK'', ''Only HKD'', ''Only HUF'', ''Only JPY'', ''Only NOK'', ''Only NZD'', ''Only PLN'', ''Only SEK'', ''Only SGD'', ''Only THB'', ''Only MXN'', ''Only ILS'', ''Only PHP'', ''Only TWD'', ''Only BRL'', ''Only MYR''), ');
INSERT INTO `configuration` VALUES (583, 'Fraud Mgmt Filters - FMF', 'MODULE_PAYMENT_PAYPALWPP_EC_RETURN_FMF_DETAILS', 'No', 'If you have enabled FMF support in your PayPal account and wish to utilize it in your transactions, set this to yes. Otherwise, leave it at No.', 6, 25, NULL, '2010-08-31 16:47:25', NULL, 'zen_cfg_select_option(array(''No'', ''Yes''), ');
INSERT INTO `configuration` VALUES (584, 'API Signature -- Username', 'MODULE_PAYMENT_PAYPALWPP_APIUSERNAME', 'xx2310_1280156772_biz_api1.163.com', 'The API Username from your PayPal API Signature settings under *API Access*. This value typically looks like an email address and is case-sensitive.', 6, 25, NULL, '2010-08-31 16:47:25', NULL, NULL);
INSERT INTO `configuration` VALUES (585, 'API Signature -- Password', 'MODULE_PAYMENT_PAYPALWPP_APIPASSWORD', '1280156777', 'The API Password from your PayPal API Signature settings under *API Access*. This value is a 16-character code and is case-sensitive.', 6, 25, NULL, '2010-08-31 16:47:25', 'zen_cfg_password_display', 'zen_cfg_password_input(');
INSERT INTO `configuration` VALUES (586, 'API Signature -- Signature Code', 'MODULE_PAYMENT_PAYPALWPP_APISIGNATURE', 'Alk5CR2e.VYJKll-gnNgVBSM2FdIAHcsSBBPNqFZGT4xwMa4RmAYfpQP', 'The API Signature from your PayPal API Signature settings under *API Access*. This value is a 56-character code, and is case-sensitive.', 6, 25, NULL, '2010-08-31 16:47:25', 'zen_cfg_password_display', '');
INSERT INTO `configuration` VALUES (587, 'PAYFLOW: User', 'MODULE_PAYMENT_PAYPALWPP_PFUSER', '', 'If you set up one or more additional users on the account, this value is the ID of the user authorized to process transactions. Otherwise it should be the same value as VENDOR. This value is case-sensitive.', 6, 25, NULL, '2010-08-31 16:47:25', NULL, NULL);
INSERT INTO `configuration` VALUES (588, 'PAYFLOW: Partner', 'MODULE_PAYMENT_PAYPALWPP_PFPARTNER', 'ZenCart', 'Your Payflow Partner name linked to your Payflow account. This value is case-sensitive.<br />Typical values: <strong>PayPal</strong> or <strong>ZenCart</strong>', 6, 25, NULL, '2010-08-31 16:47:25', NULL, NULL);
INSERT INTO `configuration` VALUES (589, 'PAYFLOW: Vendor', 'MODULE_PAYMENT_PAYPALWPP_PFVENDOR', '', 'Your merchant login ID that you created when you registered for the Payflow Pro account. This value is case-sensitive.', 6, 25, NULL, '2010-08-31 16:47:25', NULL, NULL);
INSERT INTO `configuration` VALUES (590, 'PAYFLOW: Password', 'MODULE_PAYMENT_PAYPALWPP_PFPASSWORD', '', 'The 6- to 32-character password that you defined while registering for the account. This value is case-sensitive.', 6, 25, NULL, '2010-08-31 16:47:25', 'zen_cfg_password_display', 'zen_cfg_password_input(');
INSERT INTO `configuration` VALUES (591, 'PayPal Mode', 'MODULE_PAYMENT_PAYPALWPP_MODULE_MODE', 'PayPal', 'Which PayPal API system should be used for processing? <br /><u>Choices:</u><br /><font color=green>For choice #1, you need to supply <strong>API Settings</strong> above.</font><br /><strong>1. PayPal</strong> = Express Checkout with a regular PayPal account<br />or<br /><font color=green>for choices 2 &amp; 3 you need to supply <strong>PAYFLOW settings</strong>, below (and have a Payflow account)</font><br /><strong>2. Payflow-UK</strong> = Website Payments Pro UK Payflow Edition<br /><strong>3. Payflow-US</strong> = Payflow Pro Gateway only<!--<br /><strong>4. PayflowUS+EC</strong> = Payflow Pro with Express Checkout-->', 6, 25, NULL, '2010-08-31 16:47:25', NULL, 'zen_cfg_select_option(array(''PayPal'', ''Payflow-UK'', ''Payflow-US''), ');
INSERT INTO `configuration` VALUES (592, 'Debug Mode', 'MODULE_PAYMENT_PAYPALWPP_DEBUGGING', 'Log File', 'Would you like to enable debug mode?  A complete detailed log of failed transactions will be emailed to the store owner.', 6, 25, NULL, '2010-08-31 16:47:25', NULL, 'zen_cfg_select_option(array(''Off'', ''Alerts Only'', ''Log File'', ''Log and Email''), ');
INSERT INTO `configuration` VALUES (593, '首页标题', 'HOME_PAGE_TITLE', 'zencart', '设置首页的标题', 1, 121, '2010-09-26 18:04:43', '0001-01-01 00:00:00', NULL, NULL);
INSERT INTO `configuration` VALUES (594, '首页关键词', 'HOME_PAGE_META_KEYWORDS', 'HOME_PAGE_META_KEYWORDS', '设置首页的关键词', 1, 122, '2010-09-25 16:40:18', '0001-01-01 00:00:00', NULL, NULL);
INSERT INTO `configuration` VALUES (595, '首页描述', 'HOME_PAGE_META_DESCRIPTION', 'HOME_PAGE_META_DESCRIPTION', '设置首页的描述', 1, 123, '2010-09-25 16:21:56', '0001-01-01 00:00:00', NULL, NULL);
INSERT INTO `configuration` VALUES (597, '4PX Shipping Exchange rate:', 'MODULE_SHIPPING_DSF_EXCHANGE', '6.8', '4PX Shipping Exchange rate', 7, 50, '2010-09-26 09:58:25', '2010-09-26 09:58:25', NULL, NULL);
INSERT INTO `configuration` VALUES (599, '计算方法', 'MODULE_SHIPPING_ZONES_METHOD', 'Weight', '运费计算是基于重量、价格还是数量?', 6, 0, NULL, '2010-09-26 15:45:52', NULL, 'zen_cfg_select_option(array(''Weight'', ''Price'', ''Item''), ');
INSERT INTO `configuration` VALUES (600, '税率种类', 'MODULE_SHIPPING_ZONES_TAX_CLASS', '0', '计算运费使用的税率种类。', 6, 0, NULL, '2010-09-26 15:45:52', 'zen_get_tax_class_title', 'zen_cfg_pull_down_tax_classes(');
INSERT INTO `configuration` VALUES (601, '税率基准', 'MODULE_SHIPPING_ZONES_TAX_BASIS', 'Shipping', '计算运费税的基准。选项为<br />Shipping - 基于客户的交货人地址<br />Billing - 基于客户的帐单地址<br />Store - 如果帐单地址/送货地区和商店地区相同，则基于商店地址', 6, 0, NULL, '2010-09-26 15:45:52', NULL, 'zen_cfg_select_option(array(''Shipping'', ''Billing'', ''Store''), ');
INSERT INTO `configuration` VALUES (602, '排序顺序', 'MODULE_SHIPPING_ZONES_SORT_ORDER', '0', '显示的顺序。', 6, 0, NULL, '2010-09-26 15:45:52', NULL, NULL);
INSERT INTO `configuration` VALUES (603, '设置不能发货的国家或地区，请输入用逗号分隔的两位ISO国家或地区代码', 'MODULE_SHIPPING_ZONES_SKIPPED', '', '不适用以下国家或地区:', 6, 0, NULL, '2010-09-26 15:45:52', NULL, 'zen_cfg_textarea(');
INSERT INTO `configuration` VALUES (604, '地区1 的国家或地区代码', 'MODULE_SHIPPING_ZONES_COUNTRIES_1', 'US,CA', '用逗号分开的两位ISO标准的国家或地区代码：地区1。<br />设置为00代表所有未指定的两位ISO国家或地区代码。', 6, 0, NULL, '2010-09-26 15:45:52', NULL, 'zen_cfg_textarea(');
INSERT INTO `configuration` VALUES (605, '地区1 的标准运费', 'MODULE_SHIPPING_ZONES_COST_1', '3:8.50,7:10.50,99:20.00', '地区1的运费基于分组的订单重量/价格。例如: 3:8.50,7:10.50,... 重量/价格低于或等于 3 的，运费为 8.50，送货地区1。<br />可以使用订单金额的百分比，例如 25:8.50,35:5%,40:9.50,10000:7%', 6, 0, NULL, '2010-09-26 15:45:52', NULL, 'zen_cfg_textarea(');
INSERT INTO `configuration` VALUES (606, '地区1的手续费', 'MODULE_SHIPPING_ZONES_HANDLING_1', '0', '该配送地区的手续费', 6, 0, NULL, '2010-09-26 15:45:52', NULL, NULL);
INSERT INTO `configuration` VALUES (607, '手续费基于订单还是箱数，地区1 (when by weight)', 'MODULE_SHIPPING_ZONES_HANDLING_METHOD_1', 'Order', 'Do you want to charge Handling Fee Per Order or Per Box?', 6, 0, NULL, '2010-09-26 15:45:52', NULL, 'zen_cfg_select_option(array(''Order'', ''Box''), ');
INSERT INTO `configuration` VALUES (608, '地区2 的国家或地区代码', 'MODULE_SHIPPING_ZONES_COUNTRIES_2', '', '用逗号分开的两位ISO标准的国家或地区代码：地区2。<br />设置为00代表所有未指定的两位ISO国家或地区代码。', 6, 0, NULL, '2010-09-26 15:45:52', NULL, 'zen_cfg_textarea(');
INSERT INTO `configuration` VALUES (609, '地区2 的标准运费', 'MODULE_SHIPPING_ZONES_COST_2', '3:8.50,7:10.50,99:20.00', '地区2的运费基于分组的订单重量/价格。例如: 3:8.50,7:10.50,... 重量/价格低于或等于 3 的，运费为 8.50，送货地区2。<br />可以使用订单金额的百分比，例如 25:8.50,35:5%,40:9.50,10000:7%', 6, 0, NULL, '2010-09-26 15:45:52', NULL, 'zen_cfg_textarea(');
INSERT INTO `configuration` VALUES (610, '地区2的手续费', 'MODULE_SHIPPING_ZONES_HANDLING_2', '0', '该配送地区的手续费', 6, 0, NULL, '2010-09-26 15:45:52', NULL, NULL);
INSERT INTO `configuration` VALUES (611, '手续费基于订单还是箱数，地区2 (when by weight)', 'MODULE_SHIPPING_ZONES_HANDLING_METHOD_2', 'Order', 'Do you want to charge Handling Fee Per Order or Per Box?', 6, 0, NULL, '2010-09-26 15:45:52', NULL, 'zen_cfg_select_option(array(''Order'', ''Box''), ');
INSERT INTO `configuration` VALUES (612, '地区3 的国家或地区代码', 'MODULE_SHIPPING_ZONES_COUNTRIES_3', '', '用逗号分开的两位ISO标准的国家或地区代码：地区3。<br />设置为00代表所有未指定的两位ISO国家或地区代码。', 6, 0, NULL, '2010-09-26 15:45:52', NULL, 'zen_cfg_textarea(');
INSERT INTO `configuration` VALUES (613, '地区3 的标准运费', 'MODULE_SHIPPING_ZONES_COST_3', '3:8.50,7:10.50,99:20.00', '地区3的运费基于分组的订单重量/价格。例如: 3:8.50,7:10.50,... 重量/价格低于或等于 3 的，运费为 8.50，送货地区3。<br />可以使用订单金额的百分比，例如 25:8.50,35:5%,40:9.50,10000:7%', 6, 0, NULL, '2010-09-26 15:45:52', NULL, 'zen_cfg_textarea(');
INSERT INTO `configuration` VALUES (614, '地区3的手续费', 'MODULE_SHIPPING_ZONES_HANDLING_3', '0', '该配送地区的手续费', 6, 0, NULL, '2010-09-26 15:45:52', NULL, NULL);
INSERT INTO `configuration` VALUES (615, '手续费基于订单还是箱数，地区3 (when by weight)', 'MODULE_SHIPPING_ZONES_HANDLING_METHOD_3', 'Order', 'Do you want to charge Handling Fee Per Order or Per Box?', 6, 0, NULL, '2010-09-26 15:45:52', NULL, 'zen_cfg_select_option(array(''Order'', ''Box''), ');
INSERT INTO `configuration` VALUES (616, 'Online help QQ', 'ONLINE_HELP_QQ','','input QQ online help link  http://wp.qq.com',33, 1,NOW(), NOW(), NULL, NULL);
INSERT INTO `configuration` VALUES (617, 'Online help MSN', 'ONLINE_HELP_MSN','','input MSN online help link  http://im.live.cn/imme/',33, 2,NOW(), NOW(), NULL, NULL);
INSERT INTO `configuration` VALUES (618, 'Online help Skype', 'ONLINE_HELP_SKYPE','','input SKYPE online help link', 33, 3,NOW(), NOW(), NULL, NULL);
INSERT INTO `configuration` VALUES (null, 'LOGO图标描述', 'HEADER_ALT_TEXT', '首页的LOGO图标描述信息', '设置首页的LOGO图标描述信息 (譬如:可填上网站公司的名称!)', 1, 999, '2011-05-05 11:18:30', '0001-01-01 00:00:00', NULL, NULL);


-- --------------------------------------------------------

-- 
-- 表的结构 `configuration_group`
-- 

CREATE TABLE `configuration_group` (
  `configuration_group_id` int(11) NOT NULL auto_increment,
  `configuration_group_title` varchar(64) NOT NULL default '',
  `configuration_group_description` varchar(255) NOT NULL default '',
  `sort_order` int(5) default NULL,
  `visible` int(1) default '1',
  PRIMARY KEY  (`configuration_group_id`),
  KEY `idx_visible_zen` (`visible`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

-- 
-- 导出表中的数据 `configuration_group`
-- 

INSERT INTO `configuration_group` VALUES (1, '基本设置', '商店的基本情况', 1, 1);
INSERT INTO `configuration_group` VALUES (2, '最小值', '功能/数据的最小值', 2, 1);
INSERT INTO `configuration_group` VALUES (3, '最大值', '功能/数据的最大值', 3, 1);
INSERT INTO `configuration_group` VALUES (4, '图像参数', '图像参数', 4, 1);
INSERT INTO `configuration_group` VALUES (5, '客户资料', '客户帐号选项配置', 5, 1);
INSERT INTO `configuration_group` VALUES (6, '模块选项', '在配置中不可见', 6, 0);
INSERT INTO `configuration_group` VALUES (7, '配送参数', '配送参数选项', 7, 1);
INSERT INTO `configuration_group` VALUES (8, '商品列表', '商品列表配置选项', 8, 1);
INSERT INTO `configuration_group` VALUES (9, '库存选项', '库存配置选项', 9, 1);
INSERT INTO `configuration_group` VALUES (10, '日志选项', '日志配置选项', 10, 1);
INSERT INTO `configuration_group` VALUES (11, '条款选项', '条款选项', 16, 1);
INSERT INTO `configuration_group` VALUES (12, '电子邮件', '电子邮件的基本设置', 12, 1);
INSERT INTO `configuration_group` VALUES (13, '属性设置', '商品属性设置', 13, 1);
INSERT INTO `configuration_group` VALUES (14, 'GZip压缩', 'GZip压缩选项', 14, 1);
INSERT INTO `configuration_group` VALUES (15, 'Sessions', 'Sessions选项', 15, 1);
INSERT INTO `configuration_group` VALUES (16, '礼券和优惠券', '礼券和优惠券', 16, 1);
INSERT INTO `configuration_group` VALUES (17, '信用卡', '接受的信用卡', 17, 1);
INSERT INTO `configuration_group` VALUES (18, '商品信息', '商品信息显示选项', 18, 1);
INSERT INTO `configuration_group` VALUES (19, '布局设置', '布局选项', 19, 1);
INSERT INTO `configuration_group` VALUES (20, '网站维护', '网站维护选项', 20, 1);
INSERT INTO `configuration_group` VALUES (21, '新进商品', '新进商品列表', 21, 1);
INSERT INTO `configuration_group` VALUES (22, '推荐商品', '推荐商品列表', 22, 1);
INSERT INTO `configuration_group` VALUES (23, '所有商品', '所有商品列表', 23, 1);
INSERT INTO `configuration_group` VALUES (24, '商品索引', '商品索引页面', 24, 1);
INSERT INTO `configuration_group` VALUES (25, '定义页面', '定义首页和其它HTML页面', 25, 1);
INSERT INTO `configuration_group` VALUES (30, '简易页面设置', '简易页面设置', 30, 1);
INSERT INTO `configuration_group` VALUES (31, '快速更新', '设置快速更新选项', 31, 1);
INSERT INTO `configuration_group` VALUES (32, '搜索引擎优化', '搜索引擎优化模块的选项', 32, 1);
INSERT INTO `configuration_group` VALUES (33, 'OnlineHelp', 'Online Help Configuration', 33, '1');


-- --------------------------------------------------------

-- 
-- 表的结构 `counter`
-- 

CREATE TABLE `counter` (
  `startdate` char(8) default NULL,
  `counter` int(12) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `counter`
-- 

INSERT INTO `counter` VALUES ('20100925', 1030);

-- --------------------------------------------------------

-- 
-- 表的结构 `counter_history`
-- 

CREATE TABLE `counter_history` (
  `startdate` char(8) NOT NULL default '',
  `counter` int(12) default NULL,
  `session_counter` int(12) default NULL,
  PRIMARY KEY  (`startdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `counter_history`
-- 

INSERT INTO `counter_history` VALUES ('20100925', 88, 8);
INSERT INTO `counter_history` VALUES ('20100926', 841, 101);
INSERT INTO `counter_history` VALUES ('20100927', 101, 3);

-- --------------------------------------------------------

-- 
-- 表的结构 `countries`
-- 

CREATE TABLE `countries` (
  `countries_id` int(11) NOT NULL auto_increment,
  `countries_name` varchar(64) NOT NULL default '',
  `countries_iso_code_2` char(2) NOT NULL default '',
  `countries_iso_code_3` char(3) NOT NULL default '',
  `address_format_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`countries_id`),
  KEY `idx_countries_name_zen` (`countries_name`),
  KEY `idx_address_format_id_zen` (`address_format_id`),
  KEY `idx_iso_2_zen` (`countries_iso_code_2`),
  KEY `idx_iso_3_zen` (`countries_iso_code_3`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=241 ;

-- 
-- 导出表中的数据 `countries`
-- 

INSERT INTO `countries` VALUES (240, 'Aaland Islands', 'AX', 'ALA', 1);
INSERT INTO `countries` VALUES (1, 'Afghanistan', 'AF', 'AFG', 1);
INSERT INTO `countries` VALUES (2, 'Albania', 'AL', 'ALB', 1);
INSERT INTO `countries` VALUES (3, 'Algeria', 'DZ', 'DZA', 1);
INSERT INTO `countries` VALUES (4, 'American Samoa', 'AS', 'ASM', 1);
INSERT INTO `countries` VALUES (5, 'Andorra', 'AD', 'AND', 1);
INSERT INTO `countries` VALUES (6, 'Angola', 'AO', 'AGO', 1);
INSERT INTO `countries` VALUES (7, 'Anguilla', 'AI', 'AIA', 1);
INSERT INTO `countries` VALUES (8, 'Antarctica', 'AQ', 'ATA', 1);
INSERT INTO `countries` VALUES (9, 'Antigua and Barbuda', 'AG', 'ATG', 1);
INSERT INTO `countries` VALUES (10, 'Argentina', 'AR', 'ARG', 1);
INSERT INTO `countries` VALUES (11, 'Armenia', 'AM', 'ARM', 1);
INSERT INTO `countries` VALUES (12, 'Aruba', 'AW', 'ABW', 1);
INSERT INTO `countries` VALUES (13, 'Australia', 'AU', 'AUS', 1);
INSERT INTO `countries` VALUES (14, 'Austria', 'AT', 'AUT', 5);
INSERT INTO `countries` VALUES (15, 'Azerbaijan', 'AZ', 'AZE', 1);
INSERT INTO `countries` VALUES (16, 'Bahamas', 'BS', 'BHS', 1);
INSERT INTO `countries` VALUES (17, 'Bahrain', 'BH', 'BHR', 1);
INSERT INTO `countries` VALUES (18, 'Bangladesh', 'BD', 'BGD', 1);
INSERT INTO `countries` VALUES (19, 'Barbados', 'BB', 'BRB', 1);
INSERT INTO `countries` VALUES (20, 'Belarus', 'BY', 'BLR', 1);
INSERT INTO `countries` VALUES (21, 'Belgium', 'BE', 'BEL', 1);
INSERT INTO `countries` VALUES (22, 'Belize', 'BZ', 'BLZ', 1);
INSERT INTO `countries` VALUES (23, 'Benin', 'BJ', 'BEN', 1);
INSERT INTO `countries` VALUES (24, 'Bermuda', 'BM', 'BMU', 1);
INSERT INTO `countries` VALUES (25, 'Bhutan', 'BT', 'BTN', 1);
INSERT INTO `countries` VALUES (26, 'Bolivia', 'BO', 'BOL', 1);
INSERT INTO `countries` VALUES (27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1);
INSERT INTO `countries` VALUES (28, 'Botswana', 'BW', 'BWA', 1);
INSERT INTO `countries` VALUES (29, 'Bouvet Island', 'BV', 'BVT', 1);
INSERT INTO `countries` VALUES (30, 'Brazil', 'BR', 'BRA', 1);
INSERT INTO `countries` VALUES (31, 'British Indian Ocean Territory', 'IO', 'IOT', 1);
INSERT INTO `countries` VALUES (32, 'Brunei Darussalam', 'BN', 'BRN', 1);
INSERT INTO `countries` VALUES (33, 'Bulgaria', 'BG', 'BGR', 1);
INSERT INTO `countries` VALUES (34, 'Burkina Faso', 'BF', 'BFA', 1);
INSERT INTO `countries` VALUES (35, 'Burundi', 'BI', 'BDI', 1);
INSERT INTO `countries` VALUES (36, 'Cambodia', 'KH', 'KHM', 1);
INSERT INTO `countries` VALUES (37, 'Cameroon', 'CM', 'CMR', 1);
INSERT INTO `countries` VALUES (38, 'Canada', 'CA', 'CAN', 2);
INSERT INTO `countries` VALUES (39, 'Cape Verde', 'CV', 'CPV', 1);
INSERT INTO `countries` VALUES (40, 'Cayman Islands', 'KY', 'CYM', 1);
INSERT INTO `countries` VALUES (41, 'Central African Republic', 'CF', 'CAF', 1);
INSERT INTO `countries` VALUES (42, 'Chad', 'TD', 'TCD', 1);
INSERT INTO `countries` VALUES (43, 'Chile', 'CL', 'CHL', 1);
INSERT INTO `countries` VALUES (44, '中国', 'CN', 'CHN', 7);
INSERT INTO `countries` VALUES (45, 'Christmas Island', 'CX', 'CXR', 1);
INSERT INTO `countries` VALUES (46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1);
INSERT INTO `countries` VALUES (47, 'Colombia', 'CO', 'COL', 1);
INSERT INTO `countries` VALUES (48, 'Comoros', 'KM', 'COM', 1);
INSERT INTO `countries` VALUES (49, 'Congo', 'CG', 'COG', 1);
INSERT INTO `countries` VALUES (50, 'Cook Islands', 'CK', 'COK', 1);
INSERT INTO `countries` VALUES (51, 'Costa Rica', 'CR', 'CRI', 1);
INSERT INTO `countries` VALUES (52, 'Cote D''Ivoire', 'CI', 'CIV', 1);
INSERT INTO `countries` VALUES (53, 'Croatia', 'HR', 'HRV', 1);
INSERT INTO `countries` VALUES (54, 'Cuba', 'CU', 'CUB', 1);
INSERT INTO `countries` VALUES (55, 'Cyprus', 'CY', 'CYP', 1);
INSERT INTO `countries` VALUES (56, 'Czech Republic', 'CZ', 'CZE', 1);
INSERT INTO `countries` VALUES (57, 'Denmark', 'DK', 'DNK', 1);
INSERT INTO `countries` VALUES (58, 'Djibouti', 'DJ', 'DJI', 1);
INSERT INTO `countries` VALUES (59, 'Dominica', 'DM', 'DMA', 1);
INSERT INTO `countries` VALUES (60, 'Dominican Republic', 'DO', 'DOM', 1);
INSERT INTO `countries` VALUES (61, 'Timor-Leste', 'TL', 'TLS', 1);
INSERT INTO `countries` VALUES (62, 'Ecuador', 'EC', 'ECU', 1);
INSERT INTO `countries` VALUES (63, 'Egypt', 'EG', 'EGY', 1);
INSERT INTO `countries` VALUES (64, 'El Salvador', 'SV', 'SLV', 1);
INSERT INTO `countries` VALUES (65, 'Equatorial Guinea', 'GQ', 'GNQ', 1);
INSERT INTO `countries` VALUES (66, 'Eritrea', 'ER', 'ERI', 1);
INSERT INTO `countries` VALUES (67, 'Estonia', 'EE', 'EST', 1);
INSERT INTO `countries` VALUES (68, 'Ethiopia', 'ET', 'ETH', 1);
INSERT INTO `countries` VALUES (69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1);
INSERT INTO `countries` VALUES (70, 'Faroe Islands', 'FO', 'FRO', 1);
INSERT INTO `countries` VALUES (71, 'Fiji', 'FJ', 'FJI', 1);
INSERT INTO `countries` VALUES (72, 'Finland', 'FI', 'FIN', 1);
INSERT INTO `countries` VALUES (73, 'France', 'FR', 'FRA', 1);
INSERT INTO `countries` VALUES (75, 'French Guiana', 'GF', 'GUF', 1);
INSERT INTO `countries` VALUES (76, 'French Polynesia', 'PF', 'PYF', 1);
INSERT INTO `countries` VALUES (77, 'French Southern Territories', 'TF', 'ATF', 1);
INSERT INTO `countries` VALUES (78, 'Gabon', 'GA', 'GAB', 1);
INSERT INTO `countries` VALUES (79, 'Gambia', 'GM', 'GMB', 1);
INSERT INTO `countries` VALUES (80, 'Georgia', 'GE', 'GEO', 1);
INSERT INTO `countries` VALUES (81, 'Germany', 'DE', 'DEU', 5);
INSERT INTO `countries` VALUES (82, 'Ghana', 'GH', 'GHA', 1);
INSERT INTO `countries` VALUES (83, 'Gibraltar', 'GI', 'GIB', 1);
INSERT INTO `countries` VALUES (84, 'Greece', 'GR', 'GRC', 1);
INSERT INTO `countries` VALUES (85, 'Greenland', 'GL', 'GRL', 1);
INSERT INTO `countries` VALUES (86, 'Grenada', 'GD', 'GRD', 1);
INSERT INTO `countries` VALUES (87, 'Guadeloupe', 'GP', 'GLP', 1);
INSERT INTO `countries` VALUES (88, 'Guam', 'GU', 'GUM', 1);
INSERT INTO `countries` VALUES (89, 'Guatemala', 'GT', 'GTM', 1);
INSERT INTO `countries` VALUES (90, 'Guinea', 'GN', 'GIN', 1);
INSERT INTO `countries` VALUES (91, 'Guinea-bissau', 'GW', 'GNB', 1);
INSERT INTO `countries` VALUES (92, 'Guyana', 'GY', 'GUY', 1);
INSERT INTO `countries` VALUES (93, 'Haiti', 'HT', 'HTI', 1);
INSERT INTO `countries` VALUES (94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1);
INSERT INTO `countries` VALUES (95, 'Honduras', 'HN', 'HND', 1);
INSERT INTO `countries` VALUES (96, 'Hong Kong', 'HK', 'HKG', 7);
INSERT INTO `countries` VALUES (97, 'Hungary', 'HU', 'HUN', 1);
INSERT INTO `countries` VALUES (98, 'Iceland', 'IS', 'ISL', 1);
INSERT INTO `countries` VALUES (99, 'India', 'IN', 'IND', 1);
INSERT INTO `countries` VALUES (100, 'Indonesia', 'ID', 'IDN', 1);
INSERT INTO `countries` VALUES (101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1);
INSERT INTO `countries` VALUES (102, 'Iraq', 'IQ', 'IRQ', 1);
INSERT INTO `countries` VALUES (103, 'Ireland', 'IE', 'IRL', 1);
INSERT INTO `countries` VALUES (104, 'Israel', 'IL', 'ISR', 1);
INSERT INTO `countries` VALUES (105, 'Italy', 'IT', 'ITA', 1);
INSERT INTO `countries` VALUES (106, 'Jamaica', 'JM', 'JAM', 1);
INSERT INTO `countries` VALUES (107, 'Japan', 'JP', 'JPN', 1);
INSERT INTO `countries` VALUES (108, 'Jordan', 'JO', 'JOR', 1);
INSERT INTO `countries` VALUES (109, 'Kazakhstan', 'KZ', 'KAZ', 1);
INSERT INTO `countries` VALUES (110, 'Kenya', 'KE', 'KEN', 1);
INSERT INTO `countries` VALUES (111, 'Kiribati', 'KI', 'KIR', 1);
INSERT INTO `countries` VALUES (112, 'Korea, Democratic People''s Republic of', 'KP', 'PRK', 1);
INSERT INTO `countries` VALUES (113, 'Korea, Republic of', 'KR', 'KOR', 1);
INSERT INTO `countries` VALUES (114, 'Kuwait', 'KW', 'KWT', 1);
INSERT INTO `countries` VALUES (115, 'Kyrgyzstan', 'KG', 'KGZ', 1);
INSERT INTO `countries` VALUES (116, 'Lao People''s Democratic Republic', 'LA', 'LAO', 1);
INSERT INTO `countries` VALUES (117, 'Latvia', 'LV', 'LVA', 1);
INSERT INTO `countries` VALUES (118, 'Lebanon', 'LB', 'LBN', 1);
INSERT INTO `countries` VALUES (119, 'Lesotho', 'LS', 'LSO', 1);
INSERT INTO `countries` VALUES (120, 'Liberia', 'LR', 'LBR', 1);
INSERT INTO `countries` VALUES (121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1);
INSERT INTO `countries` VALUES (122, 'Liechtenstein', 'LI', 'LIE', 1);
INSERT INTO `countries` VALUES (123, 'Lithuania', 'LT', 'LTU', 1);
INSERT INTO `countries` VALUES (124, 'Luxembourg', 'LU', 'LUX', 1);
INSERT INTO `countries` VALUES (125, 'Macau', 'MO', 'MAC', 1);
INSERT INTO `countries` VALUES (126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', 1);
INSERT INTO `countries` VALUES (127, 'Madagascar', 'MG', 'MDG', 1);
INSERT INTO `countries` VALUES (128, 'Malawi', 'MW', 'MWI', 1);
INSERT INTO `countries` VALUES (129, 'Malaysia', 'MY', 'MYS', 1);
INSERT INTO `countries` VALUES (130, 'Maldives', 'MV', 'MDV', 1);
INSERT INTO `countries` VALUES (131, 'Mali', 'ML', 'MLI', 1);
INSERT INTO `countries` VALUES (132, 'Malta', 'MT', 'MLT', 1);
INSERT INTO `countries` VALUES (133, 'Marshall Islands', 'MH', 'MHL', 1);
INSERT INTO `countries` VALUES (134, 'Martinique', 'MQ', 'MTQ', 1);
INSERT INTO `countries` VALUES (135, 'Mauritania', 'MR', 'MRT', 1);
INSERT INTO `countries` VALUES (136, 'Mauritius', 'MU', 'MUS', 1);
INSERT INTO `countries` VALUES (137, 'Mayotte', 'YT', 'MYT', 1);
INSERT INTO `countries` VALUES (138, 'Mexico', 'MX', 'MEX', 1);
INSERT INTO `countries` VALUES (139, 'Micronesia, Federated States of', 'FM', 'FSM', 1);
INSERT INTO `countries` VALUES (140, 'Moldova', 'MD', 'MDA', 1);
INSERT INTO `countries` VALUES (141, 'Monaco', 'MC', 'MCO', 1);
INSERT INTO `countries` VALUES (142, 'Mongolia', 'MN', 'MNG', 1);
INSERT INTO `countries` VALUES (143, 'Montserrat', 'MS', 'MSR', 1);
INSERT INTO `countries` VALUES (144, 'Morocco', 'MA', 'MAR', 1);
INSERT INTO `countries` VALUES (145, 'Mozambique', 'MZ', 'MOZ', 1);
INSERT INTO `countries` VALUES (146, 'Myanmar', 'MM', 'MMR', 1);
INSERT INTO `countries` VALUES (147, 'Namibia', 'NA', 'NAM', 1);
INSERT INTO `countries` VALUES (148, 'Nauru', 'NR', 'NRU', 1);
INSERT INTO `countries` VALUES (149, 'Nepal', 'NP', 'NPL', 1);
INSERT INTO `countries` VALUES (150, 'Netherlands', 'NL', 'NLD', 1);
INSERT INTO `countries` VALUES (151, 'Netherlands Antilles', 'AN', 'ANT', 1);
INSERT INTO `countries` VALUES (152, 'New Caledonia', 'NC', 'NCL', 1);
INSERT INTO `countries` VALUES (153, 'New Zealand', 'NZ', 'NZL', 1);
INSERT INTO `countries` VALUES (154, 'Nicaragua', 'NI', 'NIC', 1);
INSERT INTO `countries` VALUES (155, 'Niger', 'NE', 'NER', 1);
INSERT INTO `countries` VALUES (156, 'Nigeria', 'NG', 'NGA', 1);
INSERT INTO `countries` VALUES (157, 'Niue', 'NU', 'NIU', 1);
INSERT INTO `countries` VALUES (158, 'Norfolk Island', 'NF', 'NFK', 1);
INSERT INTO `countries` VALUES (159, 'Northern Mariana Islands', 'MP', 'MNP', 1);
INSERT INTO `countries` VALUES (160, 'Norway', 'NO', 'NOR', 1);
INSERT INTO `countries` VALUES (161, 'Oman', 'OM', 'OMN', 1);
INSERT INTO `countries` VALUES (162, 'Pakistan', 'PK', 'PAK', 1);
INSERT INTO `countries` VALUES (163, 'Palau', 'PW', 'PLW', 1);
INSERT INTO `countries` VALUES (164, 'Panama', 'PA', 'PAN', 1);
INSERT INTO `countries` VALUES (165, 'Papua New Guinea', 'PG', 'PNG', 1);
INSERT INTO `countries` VALUES (166, 'Paraguay', 'PY', 'PRY', 1);
INSERT INTO `countries` VALUES (167, 'Peru', 'PE', 'PER', 1);
INSERT INTO `countries` VALUES (168, 'Philippines', 'PH', 'PHL', 1);
INSERT INTO `countries` VALUES (169, 'Pitcairn', 'PN', 'PCN', 1);
INSERT INTO `countries` VALUES (170, 'Poland', 'PL', 'POL', 1);
INSERT INTO `countries` VALUES (171, 'Portugal', 'PT', 'PRT', 1);
INSERT INTO `countries` VALUES (172, 'Puerto Rico', 'PR', 'PRI', 1);
INSERT INTO `countries` VALUES (173, 'Qatar', 'QA', 'QAT', 1);
INSERT INTO `countries` VALUES (174, 'Reunion', 'RE', 'REU', 1);
INSERT INTO `countries` VALUES (175, 'Romania', 'RO', 'ROU', 1);
INSERT INTO `countries` VALUES (176, 'Russian Federation', 'RU', 'RUS', 1);
INSERT INTO `countries` VALUES (177, 'Rwanda', 'RW', 'RWA', 1);
INSERT INTO `countries` VALUES (178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1);
INSERT INTO `countries` VALUES (179, 'Saint Lucia', 'LC', 'LCA', 1);
INSERT INTO `countries` VALUES (180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1);
INSERT INTO `countries` VALUES (181, 'Samoa', 'WS', 'WSM', 1);
INSERT INTO `countries` VALUES (182, 'San Marino', 'SM', 'SMR', 1);
INSERT INTO `countries` VALUES (183, 'Sao Tome and Principe', 'ST', 'STP', 1);
INSERT INTO `countries` VALUES (184, 'Saudi Arabia', 'SA', 'SAU', 1);
INSERT INTO `countries` VALUES (185, 'Senegal', 'SN', 'SEN', 1);
INSERT INTO `countries` VALUES (186, 'Seychelles', 'SC', 'SYC', 1);
INSERT INTO `countries` VALUES (187, 'Sierra Leone', 'SL', 'SLE', 1);
INSERT INTO `countries` VALUES (188, 'Singapore', 'SG', 'SGP', 4);
INSERT INTO `countries` VALUES (189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 1);
INSERT INTO `countries` VALUES (190, 'Slovenia', 'SI', 'SVN', 1);
INSERT INTO `countries` VALUES (191, 'Solomon Islands', 'SB', 'SLB', 1);
INSERT INTO `countries` VALUES (192, 'Somalia', 'SO', 'SOM', 1);
INSERT INTO `countries` VALUES (193, 'South Africa', 'ZA', 'ZAF', 1);
INSERT INTO `countries` VALUES (194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 1);
INSERT INTO `countries` VALUES (195, 'Spain', 'ES', 'ESP', 3);
INSERT INTO `countries` VALUES (196, 'Sri Lanka', 'LK', 'LKA', 1);
INSERT INTO `countries` VALUES (197, 'St. Helena', 'SH', 'SHN', 1);
INSERT INTO `countries` VALUES (198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1);
INSERT INTO `countries` VALUES (199, 'Sudan', 'SD', 'SDN', 1);
INSERT INTO `countries` VALUES (200, 'Suriname', 'SR', 'SUR', 1);
INSERT INTO `countries` VALUES (201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1);
INSERT INTO `countries` VALUES (202, 'Swaziland', 'SZ', 'SWZ', 1);
INSERT INTO `countries` VALUES (203, 'Sweden', 'SE', 'SWE', 1);
INSERT INTO `countries` VALUES (204, 'Switzerland', 'CH', 'CHE', 1);
INSERT INTO `countries` VALUES (205, 'Syrian Arab Republic', 'SY', 'SYR', 1);
INSERT INTO `countries` VALUES (206, 'Taiwan', 'TW', 'TWN', 7);
INSERT INTO `countries` VALUES (207, 'Tajikistan', 'TJ', 'TJK', 1);
INSERT INTO `countries` VALUES (208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1);
INSERT INTO `countries` VALUES (209, 'Thailand', 'TH', 'THA', 1);
INSERT INTO `countries` VALUES (210, 'Togo', 'TG', 'TGO', 1);
INSERT INTO `countries` VALUES (211, 'Tokelau', 'TK', 'TKL', 1);
INSERT INTO `countries` VALUES (212, 'Tonga', 'TO', 'TON', 1);
INSERT INTO `countries` VALUES (213, 'Trinidad and Tobago', 'TT', 'TTO', 1);
INSERT INTO `countries` VALUES (214, 'Tunisia', 'TN', 'TUN', 1);
INSERT INTO `countries` VALUES (215, 'Turkey', 'TR', 'TUR', 1);
INSERT INTO `countries` VALUES (216, 'Turkmenistan', 'TM', 'TKM', 1);
INSERT INTO `countries` VALUES (217, 'Turks and Caicos Islands', 'TC', 'TCA', 1);
INSERT INTO `countries` VALUES (218, 'Tuvalu', 'TV', 'TUV', 1);
INSERT INTO `countries` VALUES (219, 'Uganda', 'UG', 'UGA', 1);
INSERT INTO `countries` VALUES (220, 'Ukraine', 'UA', 'UKR', 1);
INSERT INTO `countries` VALUES (221, 'United Arab Emirates', 'AE', 'ARE', 1);
INSERT INTO `countries` VALUES (222, 'United Kingdom', 'GB', 'GBR', 6);
INSERT INTO `countries` VALUES (223, 'United States', 'US', 'USA', 2);
INSERT INTO `countries` VALUES (224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1);
INSERT INTO `countries` VALUES (225, 'Uruguay', 'UY', 'URY', 1);
INSERT INTO `countries` VALUES (226, 'Uzbekistan', 'UZ', 'UZB', 1);
INSERT INTO `countries` VALUES (227, 'Vanuatu', 'VU', 'VUT', 1);
INSERT INTO `countries` VALUES (228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1);
INSERT INTO `countries` VALUES (229, 'Venezuela', 'VE', 'VEN', 1);
INSERT INTO `countries` VALUES (230, 'Viet Nam', 'VN', 'VNM', 1);
INSERT INTO `countries` VALUES (231, 'Virgin Islands (British)', 'VG', 'VGB', 1);
INSERT INTO `countries` VALUES (232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1);
INSERT INTO `countries` VALUES (233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1);
INSERT INTO `countries` VALUES (234, 'Western Sahara', 'EH', 'ESH', 1);
INSERT INTO `countries` VALUES (235, 'Yemen', 'YE', 'YEM', 1);
INSERT INTO `countries` VALUES (236, 'Serbia', 'RS', 'SRB', 1);
INSERT INTO `countries` VALUES (238, 'Zambia', 'ZM', 'ZMB', 1);
INSERT INTO `countries` VALUES (239, 'Zimbabwe', 'ZW', 'ZWE', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `coupons`
-- 

CREATE TABLE `coupons` (
  `coupon_id` int(11) NOT NULL auto_increment,
  `coupon_type` char(1) NOT NULL default 'F',
  `coupon_code` varchar(32) NOT NULL default '',
  `coupon_amount` decimal(15,4) NOT NULL default '0.0000',
  `coupon_minimum_order` decimal(15,4) NOT NULL default '0.0000',
  `coupon_start_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `coupon_expire_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `uses_per_coupon` int(5) NOT NULL default '1',
  `uses_per_user` int(5) NOT NULL default '0',
  `restrict_to_products` varchar(255) default NULL,
  `restrict_to_categories` varchar(255) default NULL,
  `restrict_to_customers` text,
  `coupon_active` char(1) NOT NULL default 'Y',
  `date_created` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  `coupon_zone_restriction` int(11) NOT NULL default '0',
  PRIMARY KEY  (`coupon_id`),
  KEY `idx_active_type_zen` (`coupon_active`,`coupon_type`),
  KEY `idx_coupon_code_zen` (`coupon_code`),
  KEY `idx_coupon_type_zen` (`coupon_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `coupons`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `coupons_description`
-- 

CREATE TABLE `coupons_description` (
  `coupon_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '0',
  `coupon_name` varchar(32) NOT NULL default '',
  `coupon_description` text,
  PRIMARY KEY  (`coupon_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `coupons_description`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `coupon_email_track`
-- 

CREATE TABLE `coupon_email_track` (
  `unique_id` int(11) NOT NULL auto_increment,
  `coupon_id` int(11) NOT NULL default '0',
  `customer_id_sent` int(11) NOT NULL default '0',
  `sent_firstname` varchar(32) default NULL,
  `sent_lastname` varchar(32) default NULL,
  `emailed_to` varchar(32) default NULL,
  `date_sent` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`unique_id`),
  KEY `idx_coupon_id_zen` (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `coupon_email_track`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `coupon_gv_customer`
-- 

CREATE TABLE `coupon_gv_customer` (
  `customer_id` int(5) NOT NULL default '0',
  `amount` decimal(15,4) NOT NULL default '0.0000',
  PRIMARY KEY  (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `coupon_gv_customer`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `coupon_gv_queue`
-- 

CREATE TABLE `coupon_gv_queue` (
  `unique_id` int(5) NOT NULL auto_increment,
  `customer_id` int(5) NOT NULL default '0',
  `order_id` int(5) NOT NULL default '0',
  `amount` decimal(15,4) NOT NULL default '0.0000',
  `date_created` datetime NOT NULL default '0001-01-01 00:00:00',
  `ipaddr` varchar(32) NOT NULL default '',
  `release_flag` char(1) NOT NULL default 'N',
  PRIMARY KEY  (`unique_id`),
  KEY `idx_cust_id_order_id_zen` (`customer_id`,`order_id`),
  KEY `idx_release_flag_zen` (`release_flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `coupon_gv_queue`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `coupon_redeem_track`
-- 

CREATE TABLE `coupon_redeem_track` (
  `unique_id` int(11) NOT NULL auto_increment,
  `coupon_id` int(11) NOT NULL default '0',
  `customer_id` int(11) NOT NULL default '0',
  `redeem_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `redeem_ip` varchar(32) NOT NULL default '',
  `order_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`unique_id`),
  KEY `idx_coupon_id_zen` (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `coupon_redeem_track`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `coupon_restrict`
-- 

CREATE TABLE `coupon_restrict` (
  `restrict_id` int(11) NOT NULL auto_increment,
  `coupon_id` int(11) NOT NULL default '0',
  `product_id` int(11) NOT NULL default '0',
  `category_id` int(11) NOT NULL default '0',
  `coupon_restrict` char(1) NOT NULL default 'N',
  PRIMARY KEY  (`restrict_id`),
  KEY `idx_coup_id_prod_id_zen` (`coupon_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `coupon_restrict`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `currencies`
-- 

CREATE TABLE `currencies` (
  `currencies_id` int(11) NOT NULL auto_increment,
  `title` varchar(32) NOT NULL default '',
  `code` char(3) NOT NULL default '',
  `symbol_left` varchar(24) default NULL,
  `symbol_right` varchar(24) default NULL,
  `decimal_point` char(1) default NULL,
  `thousands_point` char(1) default NULL,
  `decimal_places` char(1) default NULL,
  `value` float(13,8) default NULL,
  `last_updated` datetime default NULL,
  PRIMARY KEY  (`currencies_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- 导出表中的数据 `currencies`
-- 

INSERT INTO `currencies` VALUES (1, 'US Dollar', 'USD', '$', '', '.', ',', '2', 1.00000000, '2010-08-17 17:01:01');
INSERT INTO `currencies` VALUES (2, '人民币', 'CNY', '', '元', '.', '', '2', 7.13590479, '2010-08-17 17:01:05');
INSERT INTO `currencies` VALUES (3, 'Euro', 'EUR', '&euro;', '', '.', ',', '2', 0.81920999, '2010-08-17 17:01:06');
INSERT INTO `currencies` VALUES (4, 'GB Pound', 'GBP', '&pound;', '', '.', ',', '2', 0.67077672, '2010-08-17 17:01:09');
INSERT INTO `currencies` VALUES (5, 'Canadian Dollar', 'CAD', '$', '', '.', ',', '2', 1.09451997, '2010-08-17 17:01:11');
INSERT INTO `currencies` VALUES (6, 'Australian Dollar', 'AUD', '$', '', '.', ',', '2', 1.17558002, '2010-08-17 17:01:12');

-- --------------------------------------------------------

-- 
-- 表的结构 `customers`
-- 

CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL auto_increment,
  `customers_gender` char(1) NOT NULL default '',
  `customers_firstname` varchar(32) NOT NULL default '',
  `customers_lastname` varchar(32) NOT NULL default '',
  `customers_dob` datetime NOT NULL default '0001-01-01 00:00:00',
  `customers_email_address` varchar(96) NOT NULL default '',
  `customers_nick` varchar(96) NOT NULL default '',
  `customers_default_address_id` int(11) NOT NULL default '0',
  `customers_telephone` varchar(32) NOT NULL default '',
  `customers_fax` varchar(32) default NULL,
  `customers_password` varchar(40) NOT NULL default '',
  `customers_newsletter` char(1) default NULL,
  `customers_group_pricing` int(11) NOT NULL default '0',
  `customers_email_format` varchar(4) NOT NULL default 'TEXT',
  `customers_authorization` int(1) NOT NULL default '0',
  `customers_referral` varchar(32) NOT NULL default '',
  `customers_paypal_payerid` varchar(20) NOT NULL default '',
  `customers_paypal_ec` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`customers_id`),
  KEY `idx_email_address_zen` (`customers_email_address`),
  KEY `idx_referral_zen` (`customers_referral`(10)),
  KEY `idx_grp_pricing_zen` (`customers_group_pricing`),
  KEY `idx_nick_zen` (`customers_nick`),
  KEY `idx_newsletter_zen` (`customers_newsletter`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- 导出表中的数据 `customers`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `customers_basket`
-- 

CREATE TABLE `customers_basket` (
  `customers_basket_id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `products_id` tinytext NOT NULL,
  `customers_basket_quantity` float NOT NULL default '0',
  `final_price` decimal(15,4) NOT NULL default '0.0000',
  `customers_basket_date_added` varchar(8) default NULL,
  PRIMARY KEY  (`customers_basket_id`),
  KEY `idx_customers_id_zen` (`customers_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- 导出表中的数据 `customers_basket`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `customers_basket_attributes`
-- 

CREATE TABLE `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `products_id` tinytext NOT NULL,
  `products_options_id` varchar(64) NOT NULL default '0',
  `products_options_value_id` int(11) NOT NULL default '0',
  `products_options_value_text` blob,
  `products_options_sort_order` text NOT NULL,
  PRIMARY KEY  (`customers_basket_attributes_id`),
  KEY `idx_cust_id_prod_id_zen` (`customers_id`,`products_id`(36))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `customers_basket_attributes`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `customers_info`
-- 

CREATE TABLE `customers_info` (
  `customers_info_id` int(11) NOT NULL default '0',
  `customers_info_date_of_last_logon` datetime default NULL,
  `customers_info_number_of_logons` int(5) default NULL,
  `customers_info_date_account_created` datetime default NULL,
  `customers_info_date_account_last_modified` datetime default NULL,
  `global_product_notifications` int(1) default '0',
  PRIMARY KEY  (`customers_info_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `customers_info`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `customers_wishlist`
-- 

CREATE TABLE `customers_wishlist` (
  `products_id` int(13) NOT NULL default '0',
  `customers_id` int(13) NOT NULL default '0',
  `products_model` varchar(13) default NULL,
  `products_name` varchar(64) NOT NULL default '',
  `products_price` decimal(8,2) NOT NULL default '0.00',
  `final_price` decimal(8,2) NOT NULL default '0.00',
  `products_quantity` int(2) NOT NULL default '0',
  `wishlist_name` varchar(64) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `customers_wishlist`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `db_cache`
-- 

CREATE TABLE `db_cache` (
  `cache_entry_name` varchar(64) NOT NULL default '',
  `cache_data` mediumblob,
  `cache_entry_created` int(15) default NULL,
  PRIMARY KEY  (`cache_entry_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `db_cache`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `dsf_account_info`
-- 

CREATE TABLE `dsf_account_info` (
  `id` int(11) NOT NULL auto_increment,
  `dsf_username` varchar(32) NOT NULL,
  `dsf_password` varchar(32) NOT NULL,
  `company_name_en` varchar(128) default NULL,
  `company_name_cn` varchar(128) default NULL,
  `company_id` varchar(11) default NULL,
  `company_code` varchar(32) default NULL,
  `customer_service_code` varchar(32) default NULL,
  `customer_service_id` int(11) default NULL,
  `customer_service_name` varchar(32) default NULL,
  `maintainer_code` varchar(32) default NULL,
  `maintainer_id` int(11) default NULL,
  `maintainer_name` varchar(32) default NULL,
  `dsf_wsdl_url` varchar(256) default NULL,
  `calculate_wsdl_url` varchar(256) default NULL,
  `packet_codes` varchar(256) NOT NULL,
  `status` int(11) default NULL,
  `created` timestamp NULL default NULL,
  `modified` timestamp NULL default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `dsf_account_info`
-- 

INSERT INTO `dsf_account_info` VALUES (1, 'edmond2310', '012396', '', 'edmond2310_李跃飞', '61030', 'DC061030', '4PSZ0807', 12805, '曾子红', '4PSZ0458', 6466, '李慧', 'http://price.4px.cc/services/OrderServices?wsdl', 'http://price.4px.cc/services/CalculateServices?wsdl', 'A0115,A0116,A4001,A4002,A4003,A4004,A4010,A4011,A4020,A4021', 1, '2010-09-26 09:56:57', '2010-09-26 09:56:57');

-- --------------------------------------------------------

-- 
-- 表的结构 `dsf_countries`
-- 

CREATE TABLE `dsf_countries` (
  `dsf_countries_id` int(11) NOT NULL auto_increment,
  `dsf_countries_iso_code_2` varchar(32) NOT NULL,
  `dsf_countries_name_cn` varchar(128) default NULL,
  `dsf_countries_name_en` varchar(128) default NULL,
  PRIMARY KEY  (`dsf_countries_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=244 ;

-- 
-- 导出表中的数据 `dsf_countries`
-- 

INSERT INTO `dsf_countries` VALUES (1, 'WF', '瓦利斯群岛和富图纳群岛', 'WALLIS AND FUTUNA ISLANDS');
INSERT INTO `dsf_countries` VALUES (2, 'FM', '密克罗尼西亚', 'MICRONESIA, FEDERATED STATES OF');
INSERT INTO `dsf_countries` VALUES (3, 'MO', '澳门', 'MACAU');
INSERT INTO `dsf_countries` VALUES (4, 'ID', '印度尼西亚', 'INDONESIA');
INSERT INTO `dsf_countries` VALUES (5, 'AZ', '阿塞拜疆(独联体)', 'AZERBAIJAN');
INSERT INTO `dsf_countries` VALUES (6, 'RE', '留尼旺', 'REUNION ISLAND');
INSERT INTO `dsf_countries` VALUES (7, 'MW', '马拉维', 'MALAWI');
INSERT INTO `dsf_countries` VALUES (8, 'ZW', '津巴布韦', 'ZIMBABWE');
INSERT INTO `dsf_countries` VALUES (9, 'SE', '瑞典', 'SWEDEN');
INSERT INTO `dsf_countries` VALUES (10, 'LK', '斯里兰卡', 'SRI LANKA');
INSERT INTO `dsf_countries` VALUES (11, 'YT', '马约特', 'MAYOTTE');
INSERT INTO `dsf_countries` VALUES (12, 'ST', '圣多美和普林西比', 'SAO TOME AND PRINCIPE');
INSERT INTO `dsf_countries` VALUES (13, 'ME', '黑山共和国', 'MONTENEGRO,REPUBLIC OF');
INSERT INTO `dsf_countries` VALUES (14, 'GA', '加蓬', 'GABON');
INSERT INTO `dsf_countries` VALUES (15, 'ET', '埃塞俄比亚', 'ETHIOPIA');
INSERT INTO `dsf_countries` VALUES (16, 'GQ', '赤道几内亚', 'EQUATORIAL GUINEA ');
INSERT INTO `dsf_countries` VALUES (17, 'DJ', '吉布提', 'DJIBOUTI ');
INSERT INTO `dsf_countries` VALUES (18, 'CG', '刚果', 'CONGO');
INSERT INTO `dsf_countries` VALUES (19, 'TD', '乍得', 'CHAD');
INSERT INTO `dsf_countries` VALUES (20, 'CF', '中非共和国', 'CENTRAL AFRICAN REP');
INSERT INTO `dsf_countries` VALUES (21, 'CV', '佛得角群岛', 'CAPE VERDE');
INSERT INTO `dsf_countries` VALUES (22, 'CM', '喀麦隆', 'CAMEROON');
INSERT INTO `dsf_countries` VALUES (23, 'GM', '冈比亚', 'GAMBIA');
INSERT INTO `dsf_countries` VALUES (24, 'CU', '古巴', 'CUBA');
INSERT INTO `dsf_countries` VALUES (25, 'KP', '北朝鲜', 'KOREA,DEMOCRATIC PEOP');
INSERT INTO `dsf_countries` VALUES (26, 'XB', '伯奈尔岛', 'BONAIRE');
INSERT INTO `dsf_countries` VALUES (27, 'TV', '图瓦卢', 'TUVALU');
INSERT INTO `dsf_countries` VALUES (28, 'GL', '格陵兰', 'GREELAND');
INSERT INTO `dsf_countries` VALUES (29, 'IC', '加那利群岛', 'CANARY ISLANDS,THE');
INSERT INTO `dsf_countries` VALUES (30, 'FK', '福克兰群岛', 'FALKLAND ISLAND');
INSERT INTO `dsf_countries` VALUES (31, 'HK', '香港', 'HONG KONG ');
INSERT INTO `dsf_countries` VALUES (32, 'TJ', '塔吉克斯坦', 'TAJIKISTAN');
INSERT INTO `dsf_countries` VALUES (33, 'SB', '所罗门群岛', 'SOLOMON ISLANDS');
INSERT INTO `dsf_countries` VALUES (34, 'CN', '中国', 'CHINA');
INSERT INTO `dsf_countries` VALUES (35, 'SO', '索马里', 'SOMALIA');
INSERT INTO `dsf_countries` VALUES (36, 'SL', '塞拉里昂', 'SIERRA LEONE');
INSERT INTO `dsf_countries` VALUES (37, 'SC', '塞舌尔', 'SEYCHELLES, REP.');
INSERT INTO `dsf_countries` VALUES (38, 'SN', '塞内加尔', 'SENEGAL');
INSERT INTO `dsf_countries` VALUES (39, 'RW', '卢旺达', 'RWANDA');
INSERT INTO `dsf_countries` VALUES (40, 'NG', '尼日利亚', 'NIGERIA');
INSERT INTO `dsf_countries` VALUES (41, 'NA', '纳米比亚', 'NAMIBIA');
INSERT INTO `dsf_countries` VALUES (42, 'MZ', '莫桑比克', 'MOZAMBIQUE');
INSERT INTO `dsf_countries` VALUES (43, 'MA', '摩洛哥', 'MOROCCO');
INSERT INTO `dsf_countries` VALUES (44, 'MU', '毛里求斯', 'MAURITIUS');
INSERT INTO `dsf_countries` VALUES (45, 'MR', '毛里塔尼亚', 'MAURITANIA');
INSERT INTO `dsf_countries` VALUES (46, 'MT', '马尔他', 'MALTA');
INSERT INTO `dsf_countries` VALUES (47, 'ML', '马里', 'MALI');
INSERT INTO `dsf_countries` VALUES (48, 'MG', '马达加斯加', 'MADAGASCAR');
INSERT INTO `dsf_countries` VALUES (49, 'TO', '汤加', 'TONGA');
INSERT INTO `dsf_countries` VALUES (50, 'LS', '莱索托', 'LESOTHO');
INSERT INTO `dsf_countries` VALUES (51, 'KE', '肯尼亚', 'KENYA');
INSERT INTO `dsf_countries` VALUES (52, 'GW', '几内亚-比绍', 'GUINEA  BISSAU');
INSERT INTO `dsf_countries` VALUES (53, 'GH', '加纳', 'GHANA');
INSERT INTO `dsf_countries` VALUES (54, 'XS', '索马里共和国', 'SOMALILAND,REP (NORTH SOMALI)');
INSERT INTO `dsf_countries` VALUES (55, 'CR', '哥斯达黎加', 'COSTA RICA');
INSERT INTO `dsf_countries` VALUES (56, 'CL', '智利', 'CHILE');
INSERT INTO `dsf_countries` VALUES (57, 'BR', '巴西', 'BRAZIL');
INSERT INTO `dsf_countries` VALUES (58, 'BO', '波利维亚', 'BOLIVIA ');
INSERT INTO `dsf_countries` VALUES (59, 'BF', '布基纳法索', 'BURKINA FASO');
INSERT INTO `dsf_countries` VALUES (60, 'BW', '博茨瓦纳', 'BOTSWANA ');
INSERT INTO `dsf_countries` VALUES (61, 'BJ', '贝宁', 'BENIN');
INSERT INTO `dsf_countries` VALUES (62, 'AO', '安哥拉', 'ANGOLA');
INSERT INTO `dsf_countries` VALUES (63, 'IS', '冰岛', 'ICELAND');
INSERT INTO `dsf_countries` VALUES (64, 'GI', '直布罗陀', 'GIBRALTAR ');
INSERT INTO `dsf_countries` VALUES (65, 'MN', '蒙古', 'MONGOLIA');
INSERT INTO `dsf_countries` VALUES (66, 'ZM', '赞比亚', 'ZAMBIA');
INSERT INTO `dsf_countries` VALUES (67, 'ZR', '扎伊尔', 'ZAIRE');
INSERT INTO `dsf_countries` VALUES (68, 'UG', '乌干达', 'UGANDA');
INSERT INTO `dsf_countries` VALUES (69, 'TN', '突尼斯', 'TUNISIA');
INSERT INTO `dsf_countries` VALUES (70, 'TZ', '坦桑尼亚', 'TANZANIA');
INSERT INTO `dsf_countries` VALUES (71, 'SZ', '斯威士兰', 'SWAZILAND');
INSERT INTO `dsf_countries` VALUES (72, 'SD', '苏丹', 'SUDAN');
INSERT INTO `dsf_countries` VALUES (73, 'PT', '葡萄牙', 'PORTUGAL');
INSERT INTO `dsf_countries` VALUES (74, 'NO', '挪威', 'NORWAY');
INSERT INTO `dsf_countries` VALUES (75, 'IN', '印度', 'INDIA');
INSERT INTO `dsf_countries` VALUES (76, 'BD', '孟加拉国', 'BANGLADESH');
INSERT INTO `dsf_countries` VALUES (77, 'YE', '也门阿拉伯共合国', 'YEMEN, REPUBLIC OF.');
INSERT INTO `dsf_countries` VALUES (78, 'AE', '阿拉伯联合酋长国', 'UNITED ARAB EMIRATES');
INSERT INTO `dsf_countries` VALUES (79, 'SY', '叙利亚', 'SYRIA');
INSERT INTO `dsf_countries` VALUES (80, 'QA', '卡塔尔', 'QATAR');
INSERT INTO `dsf_countries` VALUES (81, 'PK', '巴基斯坦', 'PAKISTAN');
INSERT INTO `dsf_countries` VALUES (82, 'OM', '阿曼', 'OMAN');
INSERT INTO `dsf_countries` VALUES (83, 'SR', '苏里南', 'SURINAME');
INSERT INTO `dsf_countries` VALUES (84, 'KG', '吉尔吉斯斯坦', 'KYRGYZSTAN');
INSERT INTO `dsf_countries` VALUES (85, 'LU', '卢森堡', 'LUXEMBOURG');
INSERT INTO `dsf_countries` VALUES (86, 'FR', '法国', 'FRANCE');
INSERT INTO `dsf_countries` VALUES (87, 'NC', '新喀里多尼亚', 'NEW CALEDONIA');
INSERT INTO `dsf_countries` VALUES (88, 'FO', '法鲁群岛', 'FAROE ISLANDS ');
INSERT INTO `dsf_countries` VALUES (89, 'PF', '塔希堤岛', 'TAHITI');
INSERT INTO `dsf_countries` VALUES (90, 'PH', '菲律宾', 'PHILIPPINES');
INSERT INTO `dsf_countries` VALUES (91, 'TH', '泰国', 'THAILAND');
INSERT INTO `dsf_countries` VALUES (92, 'SG', '新加坡', 'SINGAPORE');
INSERT INTO `dsf_countries` VALUES (93, 'MY', '马来西亚', 'MALAYSIA');
INSERT INTO `dsf_countries` VALUES (94, 'TW', '台湾', 'TAIWAN');
INSERT INTO `dsf_countries` VALUES (95, 'BN', '文莱', 'BRUNEI ');
INSERT INTO `dsf_countries` VALUES (96, 'NZ', '新西兰', 'NEW ZEALAND');
INSERT INTO `dsf_countries` VALUES (97, 'NR', '瑙鲁共和国', 'NAURU REPUBLIC');
INSERT INTO `dsf_countries` VALUES (98, 'HU', '匈牙利', 'HUNGARY');
INSERT INTO `dsf_countries` VALUES (99, 'GE', '格鲁吉亚', 'GEORGIA');
INSERT INTO `dsf_countries` VALUES (100, 'CZ', '捷克共和国', 'CZECH,REPUBLIC');
INSERT INTO `dsf_countries` VALUES (101, 'HR', '克罗地亚', 'CROATIA');
INSERT INTO `dsf_countries` VALUES (102, 'BG', '保加利亚', 'BULGARIA');
INSERT INTO `dsf_countries` VALUES (103, 'HN', '洪都拉斯', 'HONDURAS');
INSERT INTO `dsf_countries` VALUES (104, 'AM', '亚美尼亚(独联体)', 'ARMENIA(C.I.S.)');
INSERT INTO `dsf_countries` VALUES (105, 'AL', '阿尔巴尼亚', 'ALBANIA');
INSERT INTO `dsf_countries` VALUES (106, 'GY', '圭亚那', 'GUYANA(BRITISH)');
INSERT INTO `dsf_countries` VALUES (107, 'GF', '法属圭亚那', 'FRENCH GUIANA');
INSERT INTO `dsf_countries` VALUES (108, 'SV', '萨尔瓦多', 'EL SALVADOR');
INSERT INTO `dsf_countries` VALUES (109, 'BM', '百慕大', 'BERMUDA ');
INSERT INTO `dsf_countries` VALUES (110, 'BB', '巴巴多斯', 'BARBADOS  ');
INSERT INTO `dsf_countries` VALUES (111, 'BS', '巴哈马', 'BAHAMAS');
INSERT INTO `dsf_countries` VALUES (112, 'AW', '阿鲁巴岛', 'ARUBA ');
INSERT INTO `dsf_countries` VALUES (113, 'MP', '塞班', 'SAIPAN');
INSERT INTO `dsf_countries` VALUES (114, 'WS', '西萨摩亚', 'WESTERN SAMOA');
INSERT INTO `dsf_countries` VALUES (115, 'DO', '多米尼加共合国', 'DOMINICAN REPUBLIC');
INSERT INTO `dsf_countries` VALUES (116, 'KY', '开曼群岛', 'CAYMAN ISLANDS');
INSERT INTO `dsf_countries` VALUES (117, 'XC', '库拉索岛(荷兰)', 'CURACAO');
INSERT INTO `dsf_countries` VALUES (118, 'US', '美国', 'U.S.A.');
INSERT INTO `dsf_countries` VALUES (119, 'MM', '缅甸', 'MYANMAR');
INSERT INTO `dsf_countries` VALUES (120, 'AD', '安道尔', 'ANDORRA');
INSERT INTO `dsf_countries` VALUES (121, 'LA', '老挝', 'LAOS');
INSERT INTO `dsf_countries` VALUES (122, 'CA', '加拿大', 'CANADA ');
INSERT INTO `dsf_countries` VALUES (123, 'KN', '圣基茨', 'ST.KITTS');
INSERT INTO `dsf_countries` VALUES (124, 'TP', '东帝汶', 'EAST TIMOR');
INSERT INTO `dsf_countries` VALUES (125, 'CD', '刚果共和国', 'CONGO,THE DEMOCRATIC REPUBLIC OF CD');
INSERT INTO `dsf_countries` VALUES (126, 'AF', '阿富汗', 'AFGHANISTAN');
INSERT INTO `dsf_countries` VALUES (127, 'XE', '圣尤斯塔提马斯岛', 'ST.EUSTATIUS');
INSERT INTO `dsf_countries` VALUES (128, 'MX', '墨西哥', 'MEXICO');
INSERT INTO `dsf_countries` VALUES (129, 'LB', '黎巴嫩', 'LEBANON');
INSERT INTO `dsf_countries` VALUES (130, 'KW', '科威特', 'KUWAIT');
INSERT INTO `dsf_countries` VALUES (131, 'IL', '以色列', 'ISRAEL');
INSERT INTO `dsf_countries` VALUES (132, 'IQ', '伊拉克', 'IRAQ');
INSERT INTO `dsf_countries` VALUES (133, 'EG', '埃及', 'EGYPT');
INSERT INTO `dsf_countries` VALUES (134, 'CY', '塞浦路斯', 'CYPRUS');
INSERT INTO `dsf_countries` VALUES (135, 'VE', '委内瑞拉', 'VENEZUELA');
INSERT INTO `dsf_countries` VALUES (136, 'UZ', '乌兹别克斯坦', 'UZBEKISTAN');
INSERT INTO `dsf_countries` VALUES (137, 'UA', '乌克兰', 'UKRAINE');
INSERT INTO `dsf_countries` VALUES (138, 'TM', '土库曼斯坦', 'TURKMENISTAN');
INSERT INTO `dsf_countries` VALUES (139, 'SI', '斯洛文尼亚', 'SLOVENIA');
INSERT INTO `dsf_countries` VALUES (140, 'PR', '波多黎各', 'PUERTO RICO');
INSERT INTO `dsf_countries` VALUES (141, 'RU', '俄罗斯联邦', 'RUSSIAN FEDERATION');
INSERT INTO `dsf_countries` VALUES (142, 'RO', '罗马尼亚', 'ROMANIA');
INSERT INTO `dsf_countries` VALUES (143, 'PE', '秘鲁', 'PERU');
INSERT INTO `dsf_countries` VALUES (144, 'PY', '巴拉圭', 'PARAGUAY ');
INSERT INTO `dsf_countries` VALUES (145, 'MD', '摩尔多瓦', 'MOLDOVA');
INSERT INTO `dsf_countries` VALUES (146, 'MK', '马其顿', 'MACEDONIA,YGSL.REP.');
INSERT INTO `dsf_countries` VALUES (147, 'PA', '巴拿马', 'PANAMA');
INSERT INTO `dsf_countries` VALUES (148, 'LV', '拉脱维亚', 'LATVIA');
INSERT INTO `dsf_countries` VALUES (149, 'NI', '尼加拉瓜', 'NICARAGUA');
INSERT INTO `dsf_countries` VALUES (150, 'KZ', '哈萨克斯坦', 'KAZAKHSTAN');
INSERT INTO `dsf_countries` VALUES (151, 'JP', '日本', 'JAPAN');
INSERT INTO `dsf_countries` VALUES (152, 'KH', '柬埔寨', 'CAMBODIA');
INSERT INTO `dsf_countries` VALUES (153, 'XM', '圣马腾岛', 'ST.MAARTEN');
INSERT INTO `dsf_countries` VALUES (154, 'LC', '圣卢西亚', 'ST.LUCIA');
INSERT INTO `dsf_countries` VALUES (155, 'MC', '摩纳哥', 'MONACO');
INSERT INTO `dsf_countries` VALUES (156, 'AG', '安提瓜', 'ANTIGUA  ');
INSERT INTO `dsf_countries` VALUES (157, 'AI', '安圭拉', 'ANGUILLA  ');
INSERT INTO `dsf_countries` VALUES (158, 'LI', '列支敦士登', 'LIECHTENSTEIN');
INSERT INTO `dsf_countries` VALUES (159, 'JE', '泽西岛(英属)', 'JERSEY');
INSERT INTO `dsf_countries` VALUES (160, 'VI', '美属维尔京群岛', 'VIRGIN ISLAND (US)');
INSERT INTO `dsf_countries` VALUES (161, 'VG', '英属维尔京群岛', 'VIRGIN ISLAND (GB)');
INSERT INTO `dsf_countries` VALUES (162, 'IT', '意大利', 'ITALY');
INSERT INTO `dsf_countries` VALUES (163, 'IE', '爱尔兰', 'IRELAND');
INSERT INTO `dsf_countries` VALUES (164, 'TT', '特立尼达和多巴哥', 'TRINIDAD AND TOBAGO');
INSERT INTO `dsf_countries` VALUES (165, 'FJ', '斐济', 'FIJI ');
INSERT INTO `dsf_countries` VALUES (166, 'DE', '德国', 'GERMANY');
INSERT INTO `dsf_countries` VALUES (167, 'MS', '蒙特塞拉岛', 'MONTSERRAT');
INSERT INTO `dsf_countries` VALUES (168, 'MQ', '马提尼克岛', 'MARTINIQUE');
INSERT INTO `dsf_countries` VALUES (169, 'JM', '牙买加', 'JAMAICA(SAVANNA)');
INSERT INTO `dsf_countries` VALUES (170, 'DM', '多米尼加', 'DOMINICA');
INSERT INTO `dsf_countries` VALUES (171, 'GB', '英国', 'UNITED KINGDOM ');
INSERT INTO `dsf_countries` VALUES (172, 'GP', '瓜德罗普', 'GUADELOUPE');
INSERT INTO `dsf_countries` VALUES (173, 'BE', '比利时', 'BELGIUM');
INSERT INTO `dsf_countries` VALUES (174, 'CS_', '塞尔维亚和黑山', 'SERBIA AND MONTENEGRO');
INSERT INTO `dsf_countries` VALUES (175, 'PG', '巴布亚新几内亚', 'PAPUA NEW GUINEA');
INSERT INTO `dsf_countries` VALUES (176, 'CH', '瑞士', 'SWITZERLAND');
INSERT INTO `dsf_countries` VALUES (177, 'NU', '纽埃岛', 'NIUE');
INSERT INTO `dsf_countries` VALUES (178, 'NL', '荷兰', 'NETHERLANDS');
INSERT INTO `dsf_countries` VALUES (179, 'GR', '希腊', 'GREECE');
INSERT INTO `dsf_countries` VALUES (180, 'BT', '不丹', 'BHUTAN');
INSERT INTO `dsf_countries` VALUES (181, 'AS', '美属萨摩亚群岛', 'AMERICAN SAMOA');
INSERT INTO `dsf_countries` VALUES (182, 'FI', '芬兰', 'FINLAND');
INSERT INTO `dsf_countries` VALUES (183, 'AT', '奥地利', 'AUSTRIA');
INSERT INTO `dsf_countries` VALUES (184, 'LY', '利比亚', 'LIBYA');
INSERT INTO `dsf_countries` VALUES (185, 'BA', '波黑共合国', 'BOSNIA & HERZEGOVIA');
INSERT INTO `dsf_countries` VALUES (186, 'CI', '科特迪瓦', 'COTE D''LVOIRE(IVORY)');
INSERT INTO `dsf_countries` VALUES (187, 'BI', '布隆迪', 'BURUNDI');
INSERT INTO `dsf_countries` VALUES (188, 'PW', '帕劳', 'PALAU');
INSERT INTO `dsf_countries` VALUES (189, 'EC', '厄瓜多尔', 'ECUADOR');
INSERT INTO `dsf_countries` VALUES (190, 'DZ', '阿尔及利亚', 'ALGERIA');
INSERT INTO `dsf_countries` VALUES (191, 'ER', '厄里特立亚', 'ERITREA ');
INSERT INTO `dsf_countries` VALUES (192, 'TG', '多哥', 'TOGO');
INSERT INTO `dsf_countries` VALUES (193, 'ZA', '南非', 'SOUTH AFRICA');
INSERT INTO `dsf_countries` VALUES (194, 'ES', '西班牙', 'SPAIN');
INSERT INTO `dsf_countries` VALUES (195, 'BH', '巴林', 'BAHRAIN ');
INSERT INTO `dsf_countries` VALUES (196, 'TR', '土耳其', 'TURKEY');
INSERT INTO `dsf_countries` VALUES (197, 'NP', '尼泊尔', 'NEPAL');
INSERT INTO `dsf_countries` VALUES (198, 'MV', '马尔代夫', 'MALDIVES');
INSERT INTO `dsf_countries` VALUES (199, 'JO', '约旦', 'JORDAN');
INSERT INTO `dsf_countries` VALUES (200, 'IR', '伊朗', 'IRAN(ISLAMIC REP.)');
INSERT INTO `dsf_countries` VALUES (201, 'UY', '乌拉圭', 'URUGUAY');
INSERT INTO `dsf_countries` VALUES (202, 'SK', '斯洛伐克共和国', 'SLOVAKIA REPUBLIC');
INSERT INTO `dsf_countries` VALUES (203, 'PL', '波兰', 'POLAND');
INSERT INTO `dsf_countries` VALUES (204, 'LT', '立陶宛', 'LITHUANIA');
INSERT INTO `dsf_countries` VALUES (205, 'XN', '尼维斯岛', 'NEVIS');
INSERT INTO `dsf_countries` VALUES (206, 'VC', '圣文森特岛', 'ST.VINCENT');
INSERT INTO `dsf_countries` VALUES (207, 'KI', '基利巴提共和国', 'KIRIBATI REPUBLIC');
INSERT INTO `dsf_countries` VALUES (208, 'GU', '关岛', 'GUAM ');
INSERT INTO `dsf_countries` VALUES (209, 'CK', '库克群岛', 'COOK ISLAND');
INSERT INTO `dsf_countries` VALUES (210, 'HT', '海地', 'HAITI');
INSERT INTO `dsf_countries` VALUES (211, 'GD', '格林纳达', 'GRENADA');
INSERT INTO `dsf_countries` VALUES (212, 'VU', '瓦努阿图', 'VANUATU');
INSERT INTO `dsf_countries` VALUES (213, 'SA', '沙特阿拉伯', 'SAUDI ARABIA');
INSERT INTO `dsf_countries` VALUES (214, 'NE', '尼日尔', 'NIGER');
INSERT INTO `dsf_countries` VALUES (215, 'LR', '利比里亚', 'LIBERIA');
INSERT INTO `dsf_countries` VALUES (216, 'GN', '几内亚', 'GUINEA');
INSERT INTO `dsf_countries` VALUES (217, 'CO', '哥伦比亚', 'COLOMBIA');
INSERT INTO `dsf_countries` VALUES (218, 'BZ', '伯利兹', 'BELIZE ');
INSERT INTO `dsf_countries` VALUES (219, 'AR', '阿根廷', 'ARGENTINA');
INSERT INTO `dsf_countries` VALUES (220, 'RS', '塞尔维亚共和国', 'SERBIA,REPUBLIC OF');
INSERT INTO `dsf_countries` VALUES (221, 'AN', '安的列斯群岛', 'NETHERLANDS ANTILLES');
INSERT INTO `dsf_countries` VALUES (222, 'KR', '韩国', 'SOUTH KOREA');
INSERT INTO `dsf_countries` VALUES (223, 'AU', '澳大利亚', 'AUSTRALIA');
INSERT INTO `dsf_countries` VALUES (224, 'KM', '科摩罗', 'COMOROS');
INSERT INTO `dsf_countries` VALUES (225, 'EE', '爱沙尼亚', 'ESTONIA');
INSERT INTO `dsf_countries` VALUES (226, 'BY', '白俄罗斯(独联体)', 'BELARUS');
INSERT INTO `dsf_countries` VALUES (227, 'GT', '危地马拉', 'GUATEMALA ');
INSERT INTO `dsf_countries` VALUES (228, 'XY', '圣巴特勒米岛', 'ST.BANTHELEMY');
INSERT INTO `dsf_countries` VALUES (229, 'VN', '越南', 'VIETNAM');
INSERT INTO `dsf_countries` VALUES (230, 'TC', '特克斯和凯科斯群岛', 'TURKS & CAICOS ISLANDS');
INSERT INTO `dsf_countries` VALUES (231, 'GG', '根西岛', 'GUERNSEY');
INSERT INTO `dsf_countries` VALUES (232, 'MH', '马绍尔群岛', 'MARSHALL ISLANDS');
INSERT INTO `dsf_countries` VALUES (233, 'DK', '丹麦', 'DENMARK');
INSERT INTO `dsf_countries` VALUES (234, 'KV', 'KOSOVO', 'KOSOVO');
INSERT INTO `dsf_countries` VALUES (235, 'SM', 'SAN MARINO', 'SAN MARINO');
INSERT INTO `dsf_countries` VALUES (236, 'PN', '皮特凯恩群岛', 'PITCAIRN ISLANDS');
INSERT INTO `dsf_countries` VALUES (237, 'SH', '圣赫勒拿岛', 'ST HELENA');
INSERT INTO `dsf_countries` VALUES (238, 'TA', '特里斯坦', 'TRISTAN DA CUNBA');
INSERT INTO `dsf_countries` VALUES (239, 'VA', '梵蒂冈', 'VATICAN CITY');
INSERT INTO `dsf_countries` VALUES (240, 'XG', '北非西班牙属土', 'SPANISH TERRITORIES OF N. AFRICA');
INSERT INTO `dsf_countries` VALUES (241, 'UM', '美国本土外小岛屿', 'UNITED STATES MINOR OUTLYING ISLANDS');
INSERT INTO `dsf_countries` VALUES (242, 'FX', '法属美特罗波利坦', 'FRANCE, METROPOLITAN');
INSERT INTO `dsf_countries` VALUES (243, 'PM', '圣皮埃尔和密克隆群岛', 'SAINT PIERRE AND MIQUELON');

-- --------------------------------------------------------

-- 
-- 表的结构 `dsf_countries_map`
-- 

CREATE TABLE `dsf_countries_map` (
  `id` int(11) NOT NULL auto_increment,
  `countries_id` int(11) default NULL,
  `dsf_countries_id` int(11) default NULL,
  `countries_iso_code_2` varchar(32) default NULL,
  `dsf_countries_iso_code_2` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  KEY `countries_id` (`countries_id`,`dsf_countries_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=227 ;

-- 
-- 导出表中的数据 `dsf_countries_map`
-- 

INSERT INTO `dsf_countries_map` VALUES (1, 139, 1, 'FM', 'FM');
INSERT INTO `dsf_countries_map` VALUES (2, 125, 2, 'MO', 'MO');
INSERT INTO `dsf_countries_map` VALUES (3, 100, 3, 'ID', 'ID');
INSERT INTO `dsf_countries_map` VALUES (4, 15, 4, 'AZ', 'AZ');
INSERT INTO `dsf_countries_map` VALUES (5, 174, 5, 'RE', 'RE');
INSERT INTO `dsf_countries_map` VALUES (6, 128, 6, 'MW', 'MW');
INSERT INTO `dsf_countries_map` VALUES (7, 239, 7, 'ZW', 'ZW');
INSERT INTO `dsf_countries_map` VALUES (8, 203, 8, 'SE', 'SE');
INSERT INTO `dsf_countries_map` VALUES (9, 196, 9, 'LK', 'LK');
INSERT INTO `dsf_countries_map` VALUES (10, 137, 10, 'YT', 'YT');
INSERT INTO `dsf_countries_map` VALUES (11, 183, 11, 'ST', 'ST');
INSERT INTO `dsf_countries_map` VALUES (12, 78, 13, 'GA', 'GA');
INSERT INTO `dsf_countries_map` VALUES (13, 68, 14, 'ET', 'ET');
INSERT INTO `dsf_countries_map` VALUES (14, 65, 15, 'GQ', 'GQ');
INSERT INTO `dsf_countries_map` VALUES (15, 58, 16, 'DJ', 'DJ');
INSERT INTO `dsf_countries_map` VALUES (16, 49, 17, 'CG', 'CG');
INSERT INTO `dsf_countries_map` VALUES (17, 42, 18, 'TD', 'TD');
INSERT INTO `dsf_countries_map` VALUES (18, 41, 19, 'CF', 'CF');
INSERT INTO `dsf_countries_map` VALUES (19, 39, 20, 'CV', 'CV');
INSERT INTO `dsf_countries_map` VALUES (20, 37, 21, 'CM', 'CM');
INSERT INTO `dsf_countries_map` VALUES (21, 79, 22, 'GM', 'GM');
INSERT INTO `dsf_countries_map` VALUES (22, 54, 23, 'CU', 'CU');
INSERT INTO `dsf_countries_map` VALUES (23, 112, 24, 'KP', 'KP');
INSERT INTO `dsf_countries_map` VALUES (24, 218, 26, 'TV', 'TV');
INSERT INTO `dsf_countries_map` VALUES (25, 85, 27, 'GL', 'GL');
INSERT INTO `dsf_countries_map` VALUES (26, 69, 29, 'FK', 'FK');
INSERT INTO `dsf_countries_map` VALUES (27, 96, 30, 'HK', 'HK');
INSERT INTO `dsf_countries_map` VALUES (28, 207, 31, 'TJ', 'TJ');
INSERT INTO `dsf_countries_map` VALUES (29, 191, 32, 'SB', 'SB');
INSERT INTO `dsf_countries_map` VALUES (30, 44, 33, 'CN', 'CN');
INSERT INTO `dsf_countries_map` VALUES (31, 192, 34, 'SO', 'SO');
INSERT INTO `dsf_countries_map` VALUES (32, 187, 35, 'SL', 'SL');
INSERT INTO `dsf_countries_map` VALUES (33, 186, 36, 'SC', 'SC');
INSERT INTO `dsf_countries_map` VALUES (34, 185, 37, 'SN', 'SN');
INSERT INTO `dsf_countries_map` VALUES (35, 177, 38, 'RW', 'RW');
INSERT INTO `dsf_countries_map` VALUES (36, 156, 39, 'NG', 'NG');
INSERT INTO `dsf_countries_map` VALUES (37, 147, 40, 'NA', 'NA');
INSERT INTO `dsf_countries_map` VALUES (38, 145, 41, 'MZ', 'MZ');
INSERT INTO `dsf_countries_map` VALUES (39, 144, 42, 'MA', 'MA');
INSERT INTO `dsf_countries_map` VALUES (40, 136, 43, 'MU', 'MU');
INSERT INTO `dsf_countries_map` VALUES (41, 135, 44, 'MR', 'MR');
INSERT INTO `dsf_countries_map` VALUES (42, 132, 45, 'MT', 'MT');
INSERT INTO `dsf_countries_map` VALUES (43, 131, 46, 'ML', 'ML');
INSERT INTO `dsf_countries_map` VALUES (44, 127, 47, 'MG', 'MG');
INSERT INTO `dsf_countries_map` VALUES (45, 212, 48, 'TO', 'TO');
INSERT INTO `dsf_countries_map` VALUES (46, 119, 49, 'LS', 'LS');
INSERT INTO `dsf_countries_map` VALUES (47, 110, 50, 'KE', 'KE');
INSERT INTO `dsf_countries_map` VALUES (48, 91, 51, 'GW', 'GW');
INSERT INTO `dsf_countries_map` VALUES (49, 82, 52, 'GH', 'GH');
INSERT INTO `dsf_countries_map` VALUES (50, 51, 54, 'CR', 'CR');
INSERT INTO `dsf_countries_map` VALUES (51, 43, 55, 'CL', 'CL');
INSERT INTO `dsf_countries_map` VALUES (52, 30, 56, 'BR', 'BR');
INSERT INTO `dsf_countries_map` VALUES (53, 26, 57, 'BO', 'BO');
INSERT INTO `dsf_countries_map` VALUES (54, 34, 58, 'BF', 'BF');
INSERT INTO `dsf_countries_map` VALUES (55, 28, 59, 'BW', 'BW');
INSERT INTO `dsf_countries_map` VALUES (56, 23, 60, 'BJ', 'BJ');
INSERT INTO `dsf_countries_map` VALUES (57, 6, 61, 'AO', 'AO');
INSERT INTO `dsf_countries_map` VALUES (58, 98, 62, 'IS', 'IS');
INSERT INTO `dsf_countries_map` VALUES (59, 83, 63, 'GI', 'GI');
INSERT INTO `dsf_countries_map` VALUES (60, 142, 64, 'MN', 'MN');
INSERT INTO `dsf_countries_map` VALUES (61, 238, 65, 'ZM', 'ZM');
INSERT INTO `dsf_countries_map` VALUES (62, 237, 66, 'ZR', 'ZR');
INSERT INTO `dsf_countries_map` VALUES (63, 219, 67, 'UG', 'UG');
INSERT INTO `dsf_countries_map` VALUES (64, 214, 68, 'TN', 'TN');
INSERT INTO `dsf_countries_map` VALUES (65, 208, 69, 'TZ', 'TZ');
INSERT INTO `dsf_countries_map` VALUES (66, 202, 70, 'SZ', 'SZ');
INSERT INTO `dsf_countries_map` VALUES (67, 199, 71, 'SD', 'SD');
INSERT INTO `dsf_countries_map` VALUES (68, 171, 72, 'PT', 'PT');
INSERT INTO `dsf_countries_map` VALUES (69, 160, 73, 'NO', 'NO');
INSERT INTO `dsf_countries_map` VALUES (70, 99, 74, 'IN', 'IN');
INSERT INTO `dsf_countries_map` VALUES (71, 18, 75, 'BD', 'BD');
INSERT INTO `dsf_countries_map` VALUES (72, 235, 76, 'YE', 'YE');
INSERT INTO `dsf_countries_map` VALUES (73, 221, 77, 'AE', 'AE');
INSERT INTO `dsf_countries_map` VALUES (74, 205, 78, 'SY', 'SY');
INSERT INTO `dsf_countries_map` VALUES (75, 173, 79, 'QA', 'QA');
INSERT INTO `dsf_countries_map` VALUES (76, 162, 80, 'PK', 'PK');
INSERT INTO `dsf_countries_map` VALUES (77, 161, 81, 'OM', 'OM');
INSERT INTO `dsf_countries_map` VALUES (78, 200, 82, 'SR', 'SR');
INSERT INTO `dsf_countries_map` VALUES (79, 115, 83, 'KG', 'KG');
INSERT INTO `dsf_countries_map` VALUES (80, 124, 84, 'LU', 'LU');
INSERT INTO `dsf_countries_map` VALUES (81, 73, 85, 'FR', 'FR');
INSERT INTO `dsf_countries_map` VALUES (82, 152, 86, 'NC', 'NC');
INSERT INTO `dsf_countries_map` VALUES (83, 70, 87, 'FO', 'FO');
INSERT INTO `dsf_countries_map` VALUES (84, 76, 88, 'PF', 'PF');
INSERT INTO `dsf_countries_map` VALUES (85, 168, 89, 'PH', 'PH');
INSERT INTO `dsf_countries_map` VALUES (86, 209, 90, 'TH', 'TH');
INSERT INTO `dsf_countries_map` VALUES (87, 188, 91, 'SG', 'SG');
INSERT INTO `dsf_countries_map` VALUES (88, 129, 92, 'MY', 'MY');
INSERT INTO `dsf_countries_map` VALUES (89, 206, 93, 'TW', 'TW');
INSERT INTO `dsf_countries_map` VALUES (90, 32, 94, 'BN', 'BN');
INSERT INTO `dsf_countries_map` VALUES (91, 153, 95, 'NZ', 'NZ');
INSERT INTO `dsf_countries_map` VALUES (92, 148, 96, 'NR', 'NR');
INSERT INTO `dsf_countries_map` VALUES (93, 97, 97, 'HU', 'HU');
INSERT INTO `dsf_countries_map` VALUES (94, 80, 98, 'GE', 'GE');
INSERT INTO `dsf_countries_map` VALUES (95, 56, 99, 'CZ', 'CZ');
INSERT INTO `dsf_countries_map` VALUES (96, 53, 100, 'HR', 'HR');
INSERT INTO `dsf_countries_map` VALUES (97, 33, 101, 'BG', 'BG');
INSERT INTO `dsf_countries_map` VALUES (98, 95, 102, 'HN', 'HN');
INSERT INTO `dsf_countries_map` VALUES (99, 11, 103, 'AM', 'AM');
INSERT INTO `dsf_countries_map` VALUES (100, 2, 104, 'AL', 'AL');
INSERT INTO `dsf_countries_map` VALUES (101, 92, 105, 'GY', 'GY');
INSERT INTO `dsf_countries_map` VALUES (102, 75, 106, 'GF', 'GF');
INSERT INTO `dsf_countries_map` VALUES (103, 64, 107, 'SV', 'SV');
INSERT INTO `dsf_countries_map` VALUES (104, 24, 108, 'BM', 'BM');
INSERT INTO `dsf_countries_map` VALUES (105, 19, 109, 'BB', 'BB');
INSERT INTO `dsf_countries_map` VALUES (106, 16, 110, 'BS', 'BS');
INSERT INTO `dsf_countries_map` VALUES (107, 12, 111, 'AW', 'AW');
INSERT INTO `dsf_countries_map` VALUES (108, 159, 112, 'MP', 'MP');
INSERT INTO `dsf_countries_map` VALUES (109, 181, 113, 'WS', 'WS');
INSERT INTO `dsf_countries_map` VALUES (110, 60, 114, 'DO', 'DO');
INSERT INTO `dsf_countries_map` VALUES (111, 40, 115, 'KY', 'KY');
INSERT INTO `dsf_countries_map` VALUES (112, 223, 117, 'US', 'US');
INSERT INTO `dsf_countries_map` VALUES (113, 146, 118, 'MM', 'MM');
INSERT INTO `dsf_countries_map` VALUES (114, 5, 119, 'AD', 'AD');
INSERT INTO `dsf_countries_map` VALUES (115, 116, 120, 'LA', 'LA');
INSERT INTO `dsf_countries_map` VALUES (116, 38, 121, 'CA', 'CA');
INSERT INTO `dsf_countries_map` VALUES (117, 178, 122, 'KN', 'KN');
INSERT INTO `dsf_countries_map` VALUES (118, 61, 123, 'TP', 'TP');
INSERT INTO `dsf_countries_map` VALUES (119, 1, 125, 'AF', 'AF');
INSERT INTO `dsf_countries_map` VALUES (120, 138, 127, 'MX', 'MX');
INSERT INTO `dsf_countries_map` VALUES (121, 118, 128, 'LB', 'LB');
INSERT INTO `dsf_countries_map` VALUES (122, 114, 129, 'KW', 'KW');
INSERT INTO `dsf_countries_map` VALUES (123, 104, 130, 'IL', 'IL');
INSERT INTO `dsf_countries_map` VALUES (124, 102, 131, 'IQ', 'IQ');
INSERT INTO `dsf_countries_map` VALUES (125, 63, 132, 'EG', 'EG');
INSERT INTO `dsf_countries_map` VALUES (126, 55, 133, 'CY', 'CY');
INSERT INTO `dsf_countries_map` VALUES (127, 229, 134, 'VE', 'VE');
INSERT INTO `dsf_countries_map` VALUES (128, 226, 135, 'UZ', 'UZ');
INSERT INTO `dsf_countries_map` VALUES (129, 220, 136, 'UA', 'UA');
INSERT INTO `dsf_countries_map` VALUES (130, 216, 137, 'TM', 'TM');
INSERT INTO `dsf_countries_map` VALUES (131, 190, 138, 'SI', 'SI');
INSERT INTO `dsf_countries_map` VALUES (132, 172, 139, 'PR', 'PR');
INSERT INTO `dsf_countries_map` VALUES (133, 176, 140, 'RU', 'RU');
INSERT INTO `dsf_countries_map` VALUES (134, 175, 141, 'RO', 'RO');
INSERT INTO `dsf_countries_map` VALUES (135, 167, 142, 'PE', 'PE');
INSERT INTO `dsf_countries_map` VALUES (136, 166, 143, 'PY', 'PY');
INSERT INTO `dsf_countries_map` VALUES (137, 140, 144, 'MD', 'MD');
INSERT INTO `dsf_countries_map` VALUES (138, 126, 145, 'MK', 'MK');
INSERT INTO `dsf_countries_map` VALUES (139, 164, 146, 'PA', 'PA');
INSERT INTO `dsf_countries_map` VALUES (140, 117, 147, 'LV', 'LV');
INSERT INTO `dsf_countries_map` VALUES (141, 154, 148, 'NI', 'NI');
INSERT INTO `dsf_countries_map` VALUES (142, 109, 149, 'KZ', 'KZ');
INSERT INTO `dsf_countries_map` VALUES (143, 107, 150, 'JP', 'JP');
INSERT INTO `dsf_countries_map` VALUES (144, 36, 151, 'KH', 'KH');
INSERT INTO `dsf_countries_map` VALUES (145, 179, 153, 'LC', 'LC');
INSERT INTO `dsf_countries_map` VALUES (146, 141, 154, 'MC', 'MC');
INSERT INTO `dsf_countries_map` VALUES (147, 9, 155, 'AG', 'AG');
INSERT INTO `dsf_countries_map` VALUES (148, 7, 156, 'AI', 'AI');
INSERT INTO `dsf_countries_map` VALUES (149, 122, 157, 'LI', 'LI');
INSERT INTO `dsf_countries_map` VALUES (150, 232, 159, 'VI', 'VI');
INSERT INTO `dsf_countries_map` VALUES (151, 231, 160, 'VG', 'VG');
INSERT INTO `dsf_countries_map` VALUES (152, 105, 161, 'IT', 'IT');
INSERT INTO `dsf_countries_map` VALUES (153, 103, 162, 'IE', 'IE');
INSERT INTO `dsf_countries_map` VALUES (154, 213, 163, 'TT', 'TT');
INSERT INTO `dsf_countries_map` VALUES (155, 71, 164, 'FJ', 'FJ');
INSERT INTO `dsf_countries_map` VALUES (156, 81, 165, 'DE', 'DE');
INSERT INTO `dsf_countries_map` VALUES (157, 143, 166, 'MS', 'MS');
INSERT INTO `dsf_countries_map` VALUES (158, 134, 167, 'MQ', 'MQ');
INSERT INTO `dsf_countries_map` VALUES (159, 106, 168, 'JM', 'JM');
INSERT INTO `dsf_countries_map` VALUES (160, 59, 169, 'DM', 'DM');
INSERT INTO `dsf_countries_map` VALUES (161, 222, 170, 'GB', 'GB');
INSERT INTO `dsf_countries_map` VALUES (162, 87, 171, 'GP', 'GP');
INSERT INTO `dsf_countries_map` VALUES (163, 21, 172, 'BE', 'BE');
INSERT INTO `dsf_countries_map` VALUES (164, 165, 174, 'PG', 'PG');
INSERT INTO `dsf_countries_map` VALUES (165, 204, 175, 'CH', 'CH');
INSERT INTO `dsf_countries_map` VALUES (166, 157, 176, 'NU', 'NU');
INSERT INTO `dsf_countries_map` VALUES (167, 150, 177, 'NL', 'NL');
INSERT INTO `dsf_countries_map` VALUES (168, 84, 178, 'GR', 'GR');
INSERT INTO `dsf_countries_map` VALUES (169, 25, 179, 'BT', 'BT');
INSERT INTO `dsf_countries_map` VALUES (170, 4, 180, 'AS', 'AS');
INSERT INTO `dsf_countries_map` VALUES (171, 72, 181, 'FI', 'FI');
INSERT INTO `dsf_countries_map` VALUES (172, 14, 182, 'AT', 'AT');
INSERT INTO `dsf_countries_map` VALUES (173, 121, 183, 'LY', 'LY');
INSERT INTO `dsf_countries_map` VALUES (174, 27, 184, 'BA', 'BA');
INSERT INTO `dsf_countries_map` VALUES (175, 52, 185, 'CI', 'CI');
INSERT INTO `dsf_countries_map` VALUES (176, 35, 186, 'BI', 'BI');
INSERT INTO `dsf_countries_map` VALUES (177, 163, 187, 'PW', 'PW');
INSERT INTO `dsf_countries_map` VALUES (178, 62, 188, 'EC', 'EC');
INSERT INTO `dsf_countries_map` VALUES (179, 3, 189, 'DZ', 'DZ');
INSERT INTO `dsf_countries_map` VALUES (180, 66, 190, 'ER', 'ER');
INSERT INTO `dsf_countries_map` VALUES (181, 210, 191, 'TG', 'TG');
INSERT INTO `dsf_countries_map` VALUES (182, 193, 192, 'ZA', 'ZA');
INSERT INTO `dsf_countries_map` VALUES (183, 195, 193, 'ES', 'ES');
INSERT INTO `dsf_countries_map` VALUES (184, 17, 194, 'BH', 'BH');
INSERT INTO `dsf_countries_map` VALUES (185, 215, 195, 'TR', 'TR');
INSERT INTO `dsf_countries_map` VALUES (186, 149, 196, 'NP', 'NP');
INSERT INTO `dsf_countries_map` VALUES (187, 130, 197, 'MV', 'MV');
INSERT INTO `dsf_countries_map` VALUES (188, 108, 198, 'JO', 'JO');
INSERT INTO `dsf_countries_map` VALUES (189, 101, 199, 'IR', 'IR');
INSERT INTO `dsf_countries_map` VALUES (190, 225, 200, 'UY', 'UY');
INSERT INTO `dsf_countries_map` VALUES (191, 189, 201, 'SK', 'SK');
INSERT INTO `dsf_countries_map` VALUES (192, 170, 202, 'PL', 'PL');
INSERT INTO `dsf_countries_map` VALUES (193, 123, 203, 'LT', 'LT');
INSERT INTO `dsf_countries_map` VALUES (194, 180, 205, 'VC', 'VC');
INSERT INTO `dsf_countries_map` VALUES (195, 111, 206, 'KI', 'KI');
INSERT INTO `dsf_countries_map` VALUES (196, 88, 207, 'GU', 'GU');
INSERT INTO `dsf_countries_map` VALUES (197, 50, 208, 'CK', 'CK');
INSERT INTO `dsf_countries_map` VALUES (198, 93, 209, 'HT', 'HT');
INSERT INTO `dsf_countries_map` VALUES (199, 86, 210, 'GD', 'GD');
INSERT INTO `dsf_countries_map` VALUES (200, 227, 211, 'VU', 'VU');
INSERT INTO `dsf_countries_map` VALUES (201, 184, 212, 'SA', 'SA');
INSERT INTO `dsf_countries_map` VALUES (202, 155, 213, 'NE', 'NE');
INSERT INTO `dsf_countries_map` VALUES (203, 120, 214, 'LR', 'LR');
INSERT INTO `dsf_countries_map` VALUES (204, 90, 215, 'GN', 'GN');
INSERT INTO `dsf_countries_map` VALUES (205, 47, 216, 'CO', 'CO');
INSERT INTO `dsf_countries_map` VALUES (206, 22, 217, 'BZ', 'BZ');
INSERT INTO `dsf_countries_map` VALUES (207, 10, 218, 'AR', 'AR');
INSERT INTO `dsf_countries_map` VALUES (208, 151, 220, 'AN', 'AN');
INSERT INTO `dsf_countries_map` VALUES (209, 113, 221, 'KR', 'KR');
INSERT INTO `dsf_countries_map` VALUES (210, 13, 222, 'AU', 'AU');
INSERT INTO `dsf_countries_map` VALUES (211, 48, 223, 'KM', 'KM');
INSERT INTO `dsf_countries_map` VALUES (212, 67, 224, 'EE', 'EE');
INSERT INTO `dsf_countries_map` VALUES (213, 20, 225, 'BY', 'BY');
INSERT INTO `dsf_countries_map` VALUES (214, 89, 226, 'GT', 'GT');
INSERT INTO `dsf_countries_map` VALUES (215, 230, 228, 'VN', 'VN');
INSERT INTO `dsf_countries_map` VALUES (216, 217, 229, 'TC', 'TC');
INSERT INTO `dsf_countries_map` VALUES (217, 133, 231, 'MH', 'MH');
INSERT INTO `dsf_countries_map` VALUES (218, 57, 232, 'DK', 'DK');
INSERT INTO `dsf_countries_map` VALUES (219, 182, 234, 'SM', 'SM');
INSERT INTO `dsf_countries_map` VALUES (220, 169, 235, 'PN', 'PN');
INSERT INTO `dsf_countries_map` VALUES (221, 197, 236, 'SH', 'SH');
INSERT INTO `dsf_countries_map` VALUES (222, 228, 238, 'VA', 'VA');
INSERT INTO `dsf_countries_map` VALUES (223, 224, 240, 'UM', 'UM');
INSERT INTO `dsf_countries_map` VALUES (224, 74, 241, 'FX', 'FX');
INSERT INTO `dsf_countries_map` VALUES (225, 198, 242, 'PM', 'PM');
INSERT INTO `dsf_countries_map` VALUES (226, 233, 243, 'WF', 'WF');

-- --------------------------------------------------------

-- 
-- 表的结构 `dsf_shipping`
-- 

CREATE TABLE `dsf_shipping` (
  `dsf_shipping_id` int(11) NOT NULL auto_increment,
  `dsf_shipping_code` varchar(32) NOT NULL,
  `dsf_shipping_name` varchar(128) NOT NULL,
  `shipping_displays_name` varchar(128) default NULL,
  `shipping_displays_image` varchar(256) default NULL,
  `shipping_displays_note` varchar(128) default NULL,
  `price_percentage` decimal(9,2) default NULL,
  `price_increase` decimal(9,2) default NULL,
  `sort_index` int(11) default NULL,
  `status` int(11) default NULL,
  `created` timestamp NULL default NULL,
  `modified` timestamp NULL default NULL,
  PRIMARY KEY  (`dsf_shipping_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- 
-- 导出表中的数据 `dsf_shipping`
-- 

INSERT INTO `dsf_shipping` VALUES (1, 'A0101', '4PX标准', '', '', '', 100.00, 0.00, 0, 1, '2010-09-26 09:56:59', '2010-09-26 02:01:39');
INSERT INTO `dsf_shipping` VALUES (2, 'A0105', '香港邮政美国专线', '', '', '', 100.00, 0.00, 0, 0, '2010-09-26 09:56:59', '2010-09-26 09:56:59');
INSERT INTO `dsf_shipping` VALUES (3, 'A0115', '4PX联邮通挂号', '', '', '', 100.00, 0.00, 0, 0, '2010-09-26 09:56:59', '2010-09-26 09:56:59');
INSERT INTO `dsf_shipping` VALUES (4, 'A0116', '4PX联邮通平邮', '', '', '', 100.00, 0.00, 0, 0, '2010-09-26 09:56:59', '2010-09-26 09:56:59');
INSERT INTO `dsf_shipping` VALUES (5, 'A0151', 'DHL出口', '', '', '', 100.00, 0.00, 0, 0, '2010-09-26 09:56:59', '2010-09-26 09:56:59');
INSERT INTO `dsf_shipping` VALUES (6, 'A0161', '香港UPS', '', '', '', 100.00, 0.00, 0, 0, '2010-09-26 09:56:59', '2010-09-26 09:56:59');
INSERT INTO `dsf_shipping` VALUES (7, 'A0191', '中国EMS国际', '', '', '', 100.00, 0.00, 0, 0, '2010-09-26 09:56:59', '2010-09-26 09:56:59');
INSERT INTO `dsf_shipping` VALUES (8, 'A3001', '空邮包裹', '', '', '', 100.00, 0.00, 0, 0, '2010-09-26 09:56:59', '2010-09-26 09:56:59');
INSERT INTO `dsf_shipping` VALUES (9, 'A3012', '香港邮政EMS', '', '', '', 100.00, 0.00, 0, 0, '2010-09-26 09:56:59', '2010-09-26 09:56:59');
INSERT INTO `dsf_shipping` VALUES (10, 'A3015', '新加坡EMS', '', '', '', 100.00, 0.00, 0, 0, '2010-09-26 09:56:59', '2010-09-26 09:56:59');
INSERT INTO `dsf_shipping` VALUES (11, 'A4001', '中国小包挂号(深圳)', '', '', '', 100.00, 0.00, 0, 0, '2010-09-26 09:56:59', '2010-09-26 09:56:59');
INSERT INTO `dsf_shipping` VALUES (12, 'A4002', '中国小包平邮(深圳)', '', '', '', 100.00, 0.00, 0, 0, '2010-09-26 09:56:59', '2010-09-26 09:56:59');
INSERT INTO `dsf_shipping` VALUES (13, 'A4003', '中国小包挂号(广州)', '', '', '', 100.00, 0.00, 0, 0, '2010-09-26 09:56:59', '2010-09-26 09:56:59');
INSERT INTO `dsf_shipping` VALUES (14, 'A4004', '中国小包平邮(广州)', '', '', '', 100.00, 0.00, 0, 0, '2010-09-26 09:56:59', '2010-09-26 09:56:59');
INSERT INTO `dsf_shipping` VALUES (15, 'A4010', '香港小包挂号', '', '', '', 100.00, 0.00, 0, 0, '2010-09-26 09:56:59', '2010-09-26 09:56:59');
INSERT INTO `dsf_shipping` VALUES (16, 'A4011', '香港小包平邮', '', '', '', 100.00, 0.00, 0, 0, '2010-09-26 09:56:59', '2010-09-26 09:56:59');
INSERT INTO `dsf_shipping` VALUES (17, 'A4020', '新加坡小包挂号', '', '', '', 100.00, 0.00, 0, 0, '2010-09-26 09:56:59', '2010-09-26 09:56:59');
INSERT INTO `dsf_shipping` VALUES (18, 'A4021', '新加坡小包平邮', '', '', '', 100.00, 0.00, 0, 0, '2010-09-26 09:56:59', '2010-09-26 09:56:59');
INSERT INTO `dsf_shipping` VALUES (19, 'A0171', 'FEDEX', '', '', '', 100.00, 0.00, 0, 0, '2010-09-26 09:56:59', '2010-09-26 09:56:59');

-- --------------------------------------------------------

-- 
-- 表的结构 `email_archive`
-- 

CREATE TABLE `email_archive` (
  `archive_id` int(11) NOT NULL auto_increment,
  `email_to_name` varchar(96) NOT NULL default '',
  `email_to_address` varchar(96) NOT NULL default '',
  `email_from_name` varchar(96) NOT NULL default '',
  `email_from_address` varchar(96) NOT NULL default '',
  `email_subject` varchar(255) NOT NULL default '',
  `email_html` text NOT NULL,
  `email_text` text NOT NULL,
  `date_sent` datetime NOT NULL default '0001-01-01 00:00:00',
  `module` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`archive_id`),
  KEY `idx_email_to_address_zen` (`email_to_address`),
  KEY `idx_module_zen` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `email_archive`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `ezpages`
-- 

CREATE TABLE `ezpages` (
  `pages_id` int(11) NOT NULL auto_increment,
  `languages_id` int(11) NOT NULL default '1',
  `pages_title` varchar(64) NOT NULL default '',
  `alt_url` varchar(255) NOT NULL default '',
  `alt_url_external` varchar(255) NOT NULL default '',
  `pages_html_text` mediumtext,
  `status_header` int(1) NOT NULL default '1',
  `status_sidebox` int(1) NOT NULL default '1',
  `status_footer` int(1) NOT NULL default '1',
  `status_toc` int(1) NOT NULL default '1',
  `header_sort_order` int(3) NOT NULL default '0',
  `sidebox_sort_order` int(3) NOT NULL default '0',
  `footer_sort_order` int(3) NOT NULL default '0',
  `toc_sort_order` int(3) NOT NULL default '0',
  `page_open_new_window` int(1) NOT NULL default '0',
  `page_is_ssl` int(1) NOT NULL default '0',
  `toc_chapter` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pages_id`),
  KEY `idx_lang_id_zen` (`languages_id`),
  KEY `idx_ezp_status_header_zen` (`status_header`),
  KEY `idx_ezp_status_sidebox_zen` (`status_sidebox`),
  KEY `idx_ezp_status_footer_zen` (`status_footer`),
  KEY `idx_ezp_status_toc_zen` (`status_toc`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- 
-- 导出表中的数据 `ezpages`
-- 

INSERT INTO `ezpages` VALUES (1, 1, '', 'index.php?main_page=shippinginfo', '', NULL, 0, 1, 1, 1, 0, 35, 30, 10, 0, 0, 10);
INSERT INTO `ezpages` VALUES (2, 1, '', 'index.php?main_page=contact_us', '', NULL, 0, 1, 0, 0, 0, 80, 90, 0, 0, 0, 0);
INSERT INTO `ezpages` VALUES (3, 1, '', '', '', NULL, 1, 1, 0, 0, 20, 20, 0, 0, 0, 0, 0);
INSERT INTO `ezpages` VALUES (4, 1, '', 'index.php?main_page=featured_products', '', NULL, 1, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0);
INSERT INTO `ezpages` VALUES (5, 1, '', 'index.php?main_page=site_map', '', NULL, 0, 0, 1, 0, 0, 70, 70, 0, 0, 0, 0);
INSERT INTO `ezpages` VALUES (6, 1, '', 'index.php?main_page=privacy', '', NULL, 0, 1, 1, 0, 0, 40, 40, 0, 0, 0, 0);
INSERT INTO `ezpages` VALUES (7, 1, '', 'index.php?main_page=unsubscribe', '', NULL, 0, 1, 0, 0, 0, 75, 0, 0, 0, 0, 0);
INSERT INTO `ezpages` VALUES (8, 1, '', '', '', NULL, 0, 1, 0, 0, 0, 60, 0, 0, 0, 0, 0);
INSERT INTO `ezpages` VALUES (9, 1, '', 'index.php', '', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `ezpages` VALUES (10, 1, '', 'index.php?main_page=products_new', '', NULL, 1, 0, 0, 0, 55, 0, 0, 0, 0, 0, 0);
INSERT INTO `ezpages` VALUES (11, 1, '', 'index.php?main_page=conditions', '', NULL, 0, 1, 1, 0, 0, 30, 20, 0, 0, 0, 0);
INSERT INTO `ezpages` VALUES (12, 1, '', 'index.php?main_page=specials', '', NULL, 1, 0, 0, 0, 80, 0, 0, 0, 0, 0, 0);
INSERT INTO `ezpages` VALUES (13, 1, '', 'index.php?main_page=create_account', '', NULL, 1, 0, 0, 0, 90, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `ezpages_content`
-- 

CREATE TABLE `ezpages_content` (
  `pc_id` int(11) NOT NULL auto_increment,
  `pages_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '1',
  `pages_title` varchar(64) NOT NULL default '',
  `pages_html_text` text,
  PRIMARY KEY  (`pc_id`),
  KEY `idx_ezpages_content` (`pages_id`,`languages_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

-- 
-- 导出表中的数据 `ezpages_content`
-- 

INSERT INTO `ezpages_content` VALUES (1, 1, 2, '发货付款', '');
INSERT INTO `ezpages_content` VALUES (2, 1, 1, 'Shipping', '');
INSERT INTO `ezpages_content` VALUES (3, 2, 2, '联系我们', '');
INSERT INTO `ezpages_content` VALUES (4, 2, 1, 'Contact Us', '');
INSERT INTO `ezpages_content` VALUES (5, 3, 2, '本店新闻', '演示商店正式开张<br /><br />所有商品都是演示用途，本站非营业网站<br /><br />下单仅限于测试各项功能');
INSERT INTO `ezpages_content` VALUES (6, 3, 1, 'News', 'This store is for demo purpose only. No order will be proceed. ');
INSERT INTO `ezpages_content` VALUES (7, 4, 2, '推荐商品', '');
INSERT INTO `ezpages_content` VALUES (8, 4, 1, 'Featured Products', '');
INSERT INTO `ezpages_content` VALUES (9, 5, 2, '网站地图', '');
INSERT INTO `ezpages_content` VALUES (10, 5, 1, 'Site Map', '');
INSERT INTO `ezpages_content` VALUES (11, 6, 2, '隐私声明', '');
INSERT INTO `ezpages_content` VALUES (12, 6, 1, 'Privacy', '');
INSERT INTO `ezpages_content` VALUES (13, 7, 2, '电子商情', '');
INSERT INTO `ezpages_content` VALUES (14, 7, 1, 'Newsletter', '');
INSERT INTO `ezpages_content` VALUES (15, 8, 2, '公司简介', '');
INSERT INTO `ezpages_content` VALUES (16, 8, 1, 'About Us', '');
INSERT INTO `ezpages_content` VALUES (17, 9, 2, '首页', '');
INSERT INTO `ezpages_content` VALUES (18, 9, 1, 'Home', '');
INSERT INTO `ezpages_content` VALUES (19, 10, 2, '新进商品', '');
INSERT INTO `ezpages_content` VALUES (20, 10, 1, 'New Products', '');
INSERT INTO `ezpages_content` VALUES (21, 11, 2, '顾客须知', '');
INSERT INTO `ezpages_content` VALUES (22, 11, 1, 'Conditions of Use', '');
INSERT INTO `ezpages_content` VALUES (23, 12, 2, '特价商品', '');
INSERT INTO `ezpages_content` VALUES (24, 12, 1, 'Specials', '');
INSERT INTO `ezpages_content` VALUES (25, 13, 2, '注册', '');
INSERT INTO `ezpages_content` VALUES (26, 13, 1, 'Register', '');
INSERT INTO `ezpages_content` VALUES (27, 14, 2, '中文简易页面c', 'dsaflaksdjlkjzxcvjakeowpijfjaosidjflk');
INSERT INTO `ezpages_content` VALUES (28, 14, 1, 'yycccc', 'lkjsdalkcxnvzx,mvndsjfopi');
INSERT INTO `ezpages_content` VALUES (29, 15, 2, '中文测试', '$breadcrumb->$breadcrumb->$breadcrumb->$breadcrumb->');
INSERT INTO `ezpages_content` VALUES (30, 15, 1, 'entest', '$breadcrumb->$breadcrumb->$breadcrumb->$breadcrumb->');
INSERT INTO `ezpages_content` VALUES (31, 16, 2, '配送', 'sdfsdf');
INSERT INTO `ezpages_content` VALUES (32, 16, 1, 'shipping', '');

-- --------------------------------------------------------

-- 
-- 表的结构 `featured`
-- 

CREATE TABLE `featured` (
  `featured_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `featured_date_added` datetime default NULL,
  `featured_last_modified` datetime default NULL,
  `expires_date` date NOT NULL default '0001-01-01',
  `date_status_change` datetime default NULL,
  `status` int(1) NOT NULL default '1',
  `featured_date_available` date NOT NULL default '0001-01-01',
  PRIMARY KEY  (`featured_id`),
  KEY `idx_status_zen` (`status`),
  KEY `idx_products_id_zen` (`products_id`),
  KEY `idx_date_avail_zen` (`featured_date_available`),
  KEY `idx_expires_date_zen` (`expires_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- 导出表中的数据 `featured`
-- 

INSERT INTO `featured` VALUES (1, 81, '2010-09-16 16:08:36', NULL, '0001-01-01', NULL, 1, '0001-01-01');
INSERT INTO `featured` VALUES (2, 29, '2010-09-16 16:47:44', '2010-09-16 17:26:18', '0001-01-01', NULL, 1, '0001-01-01');
INSERT INTO `featured` VALUES (3, 31, '2010-09-16 16:47:57', NULL, '0001-01-01', NULL, 1, '0001-01-01');
INSERT INTO `featured` VALUES (4, 4, '2010-09-16 16:49:08', NULL, '0001-01-01', NULL, 1, '0001-01-01');
INSERT INTO `featured` VALUES (5, 19, '2010-09-16 16:50:02', NULL, '0001-01-01', NULL, 1, '0001-01-01');
INSERT INTO `featured` VALUES (6, 46, '2010-09-16 17:10:27', NULL, '0001-01-01', NULL, 1, '0001-01-01');
INSERT INTO `featured` VALUES (7, 80, '2010-09-16 17:10:57', NULL, '0001-01-01', NULL, 1, '0001-01-01');
INSERT INTO `featured` VALUES (8, 24, '2010-09-16 17:11:23', NULL, '0001-01-01', NULL, 1, '0001-01-01');

-- --------------------------------------------------------

-- 
-- 表的结构 `files_uploaded`
-- 

CREATE TABLE `files_uploaded` (
  `files_uploaded_id` int(11) NOT NULL auto_increment,
  `sesskey` varchar(32) default NULL,
  `customers_id` int(11) default NULL,
  `files_uploaded_name` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`files_uploaded_id`),
  KEY `idx_customers_id_zen` (`customers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Must always have either a sesskey or customers_id' AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `files_uploaded`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `geo_zones`
-- 

CREATE TABLE `geo_zones` (
  `geo_zone_id` int(11) NOT NULL auto_increment,
  `geo_zone_name` varchar(32) NOT NULL default '',
  `geo_zone_description` varchar(255) NOT NULL default '',
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `geo_zones`
-- 

INSERT INTO `geo_zones` VALUES (1, '北京', '北京本地税率区', NULL, '2010-08-17 11:45:10');

-- --------------------------------------------------------

-- 
-- 表的结构 `get_terms_to_filter`
-- 

CREATE TABLE `get_terms_to_filter` (
  `get_term_name` varchar(255) NOT NULL default '',
  `get_term_table` varchar(64) NOT NULL,
  `get_term_name_field` varchar(64) NOT NULL,
  PRIMARY KEY  (`get_term_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `get_terms_to_filter`
-- 

INSERT INTO `get_terms_to_filter` VALUES ('manufacturers_id', 'TABLE_MANUFACTURERS', 'manufacturers_name');
INSERT INTO `get_terms_to_filter` VALUES ('music_genre_id', 'TABLE_MUSIC_GENRE', 'music_genre_name');
INSERT INTO `get_terms_to_filter` VALUES ('record_company_id', 'TABLE_RECORD_COMPANY', 'record_company_name');

-- --------------------------------------------------------

-- 
-- 表的结构 `group_pricing`
-- 

CREATE TABLE `group_pricing` (
  `group_id` int(11) NOT NULL auto_increment,
  `group_name` varchar(32) NOT NULL default '',
  `group_percentage` decimal(5,2) NOT NULL default '0.00',
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `group_pricing`
-- 

INSERT INTO `group_pricing` VALUES (1, 'VIP10%', 10.00, NULL, '2010-09-16 16:41:50');

-- --------------------------------------------------------

-- 
-- 表的结构 `languages`
-- 

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL auto_increment,
  `name` varchar(32) NOT NULL default '',
  `code` char(2) NOT NULL default '',
  `image` varchar(64) default NULL,
  `directory` varchar(32) default NULL,
  `sort_order` int(3) default NULL,
  PRIMARY KEY  (`languages_id`),
  KEY `idx_languages_name_zen` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- 导出表中的数据 `languages`
-- 

INSERT INTO `languages` VALUES (1, 'English', 'en', 'icon.gif', 'english', 20);
INSERT INTO `languages` VALUES (2, '简体中文', 'gb', 'icon.gif', 'schinese', 10);

-- --------------------------------------------------------

-- 
-- 表的结构 `layout_boxes`
-- 

CREATE TABLE `layout_boxes` (
  `layout_id` int(11) NOT NULL auto_increment,
  `layout_template` varchar(64) NOT NULL default '',
  `layout_box_name` varchar(64) NOT NULL default '',
  `layout_box_status` tinyint(1) NOT NULL default '0',
  `layout_box_location` tinyint(1) NOT NULL default '0',
  `layout_box_sort_order` int(11) NOT NULL default '0',
  `layout_box_sort_order_single` int(11) NOT NULL default '0',
  `layout_box_status_single` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`layout_id`),
  KEY `idx_name_template_zen` (`layout_template`,`layout_box_name`),
  KEY `idx_layout_box_status_zen` (`layout_box_status`),
  KEY `idx_layout_box_sort_order_zen` (`layout_box_sort_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=337 ;

-- 
-- 导出表中的数据 `layout_boxes`
-- 

INSERT INTO `layout_boxes` VALUES (1, 'default_template_settings', 'banner_box_all.php', 1, 1, 5, 0, 0);
INSERT INTO `layout_boxes` VALUES (2, 'default_template_settings', 'banner_box.php', 1, 0, 300, 1, 127);
INSERT INTO `layout_boxes` VALUES (3, 'default_template_settings', 'banner_box2.php', 1, 1, 15, 1, 15);
INSERT INTO `layout_boxes` VALUES (4, 'default_template_settings', 'best_sellers.php', 1, 1, 30, 70, 1);
INSERT INTO `layout_boxes` VALUES (5, 'default_template_settings', 'categories.php', 1, 0, 10, 10, 1);
INSERT INTO `layout_boxes` VALUES (6, 'default_template_settings', 'currencies.php', 1, 1, 80, 60, 1);
INSERT INTO `layout_boxes` VALUES (7, 'default_template_settings', 'document_categories.php', 1, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (8, 'default_template_settings', 'ezpages.php', 1, 1, -1, 2, 1);
INSERT INTO `layout_boxes` VALUES (9, 'default_template_settings', 'featured.php', 1, 0, 45, 0, 0);
INSERT INTO `layout_boxes` VALUES (10, 'default_template_settings', 'information.php', 1, 0, 50, 40, 1);
INSERT INTO `layout_boxes` VALUES (11, 'default_template_settings', 'languages.php', 1, 1, 70, 50, 1);
INSERT INTO `layout_boxes` VALUES (12, 'default_template_settings', 'manufacturers.php', 1, 0, 30, 20, 1);
INSERT INTO `layout_boxes` VALUES (13, 'default_template_settings', 'manufacturer_info.php', 1, 1, 35, 95, 1);
INSERT INTO `layout_boxes` VALUES (14, 'default_template_settings', 'more_information.php', 1, 0, 200, 200, 1);
INSERT INTO `layout_boxes` VALUES (15, 'default_template_settings', 'music_genres.php', 1, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (16, 'default_template_settings', 'order_history.php', 1, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (17, 'default_template_settings', 'product_notifications.php', 1, 1, 55, 85, 1);
INSERT INTO `layout_boxes` VALUES (18, 'default_template_settings', 'record_companies.php', 1, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (19, 'default_template_settings', 'reviews.php', 1, 0, 40, 0, 0);
INSERT INTO `layout_boxes` VALUES (20, 'default_template_settings', 'search.php', 1, 1, 10, 0, 0);
INSERT INTO `layout_boxes` VALUES (21, 'default_template_settings', 'search_header.php', 0, 0, 0, 0, 1);
INSERT INTO `layout_boxes` VALUES (22, 'default_template_settings', 'shopping_cart.php', 1, 1, 20, 30, 1);
INSERT INTO `layout_boxes` VALUES (23, 'default_template_settings', 'specials.php', 1, 1, 45, 0, 0);
INSERT INTO `layout_boxes` VALUES (24, 'default_template_settings', 'tell_a_friend.php', 1, 1, 65, 0, 0);
INSERT INTO `layout_boxes` VALUES (25, 'default_template_settings', 'whats_new.php', 1, 0, 20, 0, 0);
INSERT INTO `layout_boxes` VALUES (26, 'default_template_settings', 'whos_online.php', 1, 1, 200, 200, 1);
INSERT INTO `layout_boxes` VALUES (27, 'template_default', 'banner_box_all.php', 1, 1, 5, 0, 0);
INSERT INTO `layout_boxes` VALUES (28, 'template_default', 'banner_box.php', 1, 0, 300, 1, 127);
INSERT INTO `layout_boxes` VALUES (29, 'template_default', 'banner_box2.php', 1, 1, 15, 1, 15);
INSERT INTO `layout_boxes` VALUES (30, 'template_default', 'best_sellers.php', 1, 1, 30, 70, 1);
INSERT INTO `layout_boxes` VALUES (31, 'template_default', 'categories.php', 1, 0, 10, 10, 1);
INSERT INTO `layout_boxes` VALUES (32, 'template_default', 'currencies.php', 1, 1, 80, 60, 1);
INSERT INTO `layout_boxes` VALUES (33, 'template_default', 'ezpages.php', 1, 1, -1, 2, 1);
INSERT INTO `layout_boxes` VALUES (34, 'template_default', 'featured.php', 1, 0, 45, 0, 0);
INSERT INTO `layout_boxes` VALUES (35, 'template_default', 'information.php', 1, 0, 50, 40, 1);
INSERT INTO `layout_boxes` VALUES (36, 'template_default', 'languages.php', 1, 1, 70, 50, 1);
INSERT INTO `layout_boxes` VALUES (37, 'template_default', 'manufacturers.php', 1, 0, 30, 20, 1);
INSERT INTO `layout_boxes` VALUES (38, 'template_default', 'manufacturer_info.php', 1, 1, 35, 95, 1);
INSERT INTO `layout_boxes` VALUES (39, 'template_default', 'more_information.php', 1, 0, 200, 200, 1);
INSERT INTO `layout_boxes` VALUES (40, 'template_default', 'my_broken_box.php', 1, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (41, 'template_default', 'order_history.php', 1, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (42, 'template_default', 'product_notifications.php', 1, 1, 55, 85, 1);
INSERT INTO `layout_boxes` VALUES (43, 'template_default', 'reviews.php', 1, 0, 40, 0, 0);
INSERT INTO `layout_boxes` VALUES (44, 'template_default', 'search.php', 1, 1, 10, 0, 0);
INSERT INTO `layout_boxes` VALUES (45, 'template_default', 'search_header.php', 0, 0, 0, 0, 1);
INSERT INTO `layout_boxes` VALUES (46, 'template_default', 'shopping_cart.php', 1, 1, 20, 30, 1);
INSERT INTO `layout_boxes` VALUES (47, 'template_default', 'specials.php', 1, 1, 45, 0, 0);
INSERT INTO `layout_boxes` VALUES (48, 'template_default', 'tell_a_friend.php', 1, 1, 65, 0, 0);
INSERT INTO `layout_boxes` VALUES (49, 'template_default', 'whats_new.php', 1, 0, 20, 0, 0);
INSERT INTO `layout_boxes` VALUES (50, 'template_default', 'whos_online.php', 1, 1, 200, 200, 1);
INSERT INTO `layout_boxes` VALUES (51, 'classic', 'banner_box.php', 1, 0, 300, 1, 127);
INSERT INTO `layout_boxes` VALUES (52, 'classic', 'banner_box2.php', 0, 1, 15, 1, 1);
INSERT INTO `layout_boxes` VALUES (53, 'classic', 'banner_box_all.php', 1, 1, 5, 0, 0);
INSERT INTO `layout_boxes` VALUES (54, 'classic', 'best_sellers.php', 0, 1, 30, 70, 1);
INSERT INTO `layout_boxes` VALUES (55, 'classic', 'categories.php', 1, 0, 10, 10, 1);
INSERT INTO `layout_boxes` VALUES (56, 'classic', 'currencies.php', 1, 1, 80, 60, 1);
INSERT INTO `layout_boxes` VALUES (57, 'classic', 'document_categories.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (58, 'classic', 'ezpages.php', 0, 1, -1, 2, 0);
INSERT INTO `layout_boxes` VALUES (59, 'classic', 'featured.php', 1, 0, 45, 0, 0);
INSERT INTO `layout_boxes` VALUES (60, 'classic', 'information.php', 0, 0, 50, 40, 0);
INSERT INTO `layout_boxes` VALUES (61, 'classic', 'languages.php', 1, 1, 70, 50, 1);
INSERT INTO `layout_boxes` VALUES (62, 'classic', 'manufacturers.php', 1, 0, 30, 20, 1);
INSERT INTO `layout_boxes` VALUES (63, 'classic', 'manufacturer_info.php', 0, 1, 35, 95, 1);
INSERT INTO `layout_boxes` VALUES (64, 'classic', 'more_information.php', 0, 0, 200, 200, 0);
INSERT INTO `layout_boxes` VALUES (65, 'classic', 'music_genres.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (66, 'classic', 'order_history.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (67, 'classic', 'product_notifications.php', 0, 1, 55, 85, 0);
INSERT INTO `layout_boxes` VALUES (68, 'classic', 'record_companies.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (69, 'classic', 'reviews.php', 0, 0, 40, 0, 0);
INSERT INTO `layout_boxes` VALUES (70, 'classic', 'search.php', 0, 1, 10, 0, 0);
INSERT INTO `layout_boxes` VALUES (71, 'classic', 'search_header.php', 0, 0, 0, 0, 1);
INSERT INTO `layout_boxes` VALUES (72, 'classic', 'shopping_cart.php', 1, 1, 20, 30, 1);
INSERT INTO `layout_boxes` VALUES (73, 'classic', 'specials.php', 1, 1, 45, 0, 0);
INSERT INTO `layout_boxes` VALUES (74, 'classic', 'tell_a_friend.php', 0, 1, 65, 0, 0);
INSERT INTO `layout_boxes` VALUES (75, 'classic', 'whats_new.php', 1, 0, 20, 0, 0);
INSERT INTO `layout_boxes` VALUES (76, 'classic', 'whos_online.php', 0, 1, 200, 200, 0);
INSERT INTO `layout_boxes` VALUES (77, 'lite_blue', 'banner_box.php', 0, 0, 300, 1, 0);
INSERT INTO `layout_boxes` VALUES (78, 'lite_blue', 'banner_box2.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (79, 'lite_blue', 'banner_box_all.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (80, 'lite_blue', 'best_sellers.php', 1, 1, 30, 70, 1);
INSERT INTO `layout_boxes` VALUES (81, 'lite_blue', 'categories.php', 1, 0, 10, 10, 1);
INSERT INTO `layout_boxes` VALUES (82, 'lite_blue', 'currencies.php', 1, 1, 90, 0, 0);
INSERT INTO `layout_boxes` VALUES (83, 'lite_blue', 'document_categories.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (84, 'lite_blue', 'ezpages.php', 1, 1, 15, 5, 1);
INSERT INTO `layout_boxes` VALUES (85, 'lite_blue', 'featured.php', 1, 0, 25, 0, 0);
INSERT INTO `layout_boxes` VALUES (86, 'lite_blue', 'information.php', 0, 1, 5, 40, 1);
INSERT INTO `layout_boxes` VALUES (87, 'lite_blue', 'languages.php', 1, 1, 100, 0, 0);
INSERT INTO `layout_boxes` VALUES (88, 'lite_blue', 'manufacturers.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (89, 'lite_blue', 'manufacturer_info.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (90, 'lite_blue', 'more_information.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (91, 'lite_blue', 'music_genres.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (92, 'lite_blue', 'order_history.php', 1, 1, 25, 0, 0);
INSERT INTO `layout_boxes` VALUES (93, 'lite_blue', 'product_notifications.php', 1, 1, 55, 85, 1);
INSERT INTO `layout_boxes` VALUES (94, 'lite_blue', 'record_companies.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (95, 'lite_blue', 'reviews.php', 1, 1, 50, 0, 0);
INSERT INTO `layout_boxes` VALUES (96, 'lite_blue', 'search.php', 1, 1, 10, 0, 0);
INSERT INTO `layout_boxes` VALUES (97, 'lite_blue', 'search_header.php', 0, 0, 0, 30, 1);
INSERT INTO `layout_boxes` VALUES (98, 'lite_blue', 'shopping_cart.php', 1, 1, 20, 30, 1);
INSERT INTO `layout_boxes` VALUES (99, 'lite_blue', 'specials.php', 1, 0, 55, 0, 0);
INSERT INTO `layout_boxes` VALUES (100, 'lite_blue', 'tell_a_friend.php', 1, 1, 65, 0, 0);
INSERT INTO `layout_boxes` VALUES (101, 'lite_blue', 'whats_new.php', 1, 0, 30, 0, 0);
INSERT INTO `layout_boxes` VALUES (102, 'lite_blue', 'whos_online.php', 1, 1, 200, 200, 1);
INSERT INTO `layout_boxes` VALUES (103, 'lite_green', 'banner_box.php', 0, 0, 300, 1, 0);
INSERT INTO `layout_boxes` VALUES (104, 'lite_green', 'banner_box2.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (105, 'lite_green', 'banner_box_all.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (106, 'lite_green', 'best_sellers.php', 1, 1, 30, 70, 1);
INSERT INTO `layout_boxes` VALUES (107, 'lite_green', 'categories.php', 1, 0, 10, 10, 1);
INSERT INTO `layout_boxes` VALUES (108, 'lite_green', 'currencies.php', 1, 1, 90, 0, 0);
INSERT INTO `layout_boxes` VALUES (109, 'lite_green', 'document_categories.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (110, 'lite_green', 'ezpages.php', 1, 1, 15, 5, 1);
INSERT INTO `layout_boxes` VALUES (111, 'lite_green', 'featured.php', 1, 0, 25, 0, 0);
INSERT INTO `layout_boxes` VALUES (112, 'lite_green', 'information.php', 0, 1, 5, 40, 1);
INSERT INTO `layout_boxes` VALUES (113, 'lite_green', 'languages.php', 1, 1, 100, 0, 0);
INSERT INTO `layout_boxes` VALUES (114, 'lite_green', 'manufacturers.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (115, 'lite_green', 'manufacturer_info.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (116, 'lite_green', 'more_information.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (117, 'lite_green', 'music_genres.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (118, 'lite_green', 'order_history.php', 1, 1, 25, 0, 0);
INSERT INTO `layout_boxes` VALUES (119, 'lite_green', 'product_notifications.php', 1, 1, 55, 85, 1);
INSERT INTO `layout_boxes` VALUES (120, 'lite_green', 'record_companies.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (121, 'lite_green', 'reviews.php', 1, 1, 50, 0, 0);
INSERT INTO `layout_boxes` VALUES (122, 'lite_green', 'search.php', 1, 1, 10, 0, 0);
INSERT INTO `layout_boxes` VALUES (123, 'lite_green', 'search_header.php', 0, 0, 0, 30, 1);
INSERT INTO `layout_boxes` VALUES (124, 'lite_green', 'shopping_cart.php', 1, 1, 20, 30, 1);
INSERT INTO `layout_boxes` VALUES (125, 'lite_green', 'specials.php', 1, 0, 55, 0, 0);
INSERT INTO `layout_boxes` VALUES (126, 'lite_green', 'tell_a_friend.php', 1, 1, 65, 0, 0);
INSERT INTO `layout_boxes` VALUES (127, 'lite_green', 'whats_new.php', 1, 0, 30, 0, 0);
INSERT INTO `layout_boxes` VALUES (128, 'lite_green', 'whos_online.php', 1, 1, 200, 200, 1);
INSERT INTO `layout_boxes` VALUES (129, 'lite_grey', 'banner_box.php', 0, 0, 300, 1, 0);
INSERT INTO `layout_boxes` VALUES (130, 'lite_grey', 'banner_box2.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (131, 'lite_grey', 'banner_box_all.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (132, 'lite_grey', 'best_sellers.php', 1, 1, 30, 70, 1);
INSERT INTO `layout_boxes` VALUES (133, 'lite_grey', 'categories.php', 1, 0, 10, 10, 1);
INSERT INTO `layout_boxes` VALUES (134, 'lite_grey', 'currencies.php', 1, 1, 90, 0, 0);
INSERT INTO `layout_boxes` VALUES (135, 'lite_grey', 'document_categories.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (136, 'lite_grey', 'ezpages.php', 1, 1, 15, 5, 1);
INSERT INTO `layout_boxes` VALUES (137, 'lite_grey', 'featured.php', 1, 0, 25, 0, 0);
INSERT INTO `layout_boxes` VALUES (138, 'lite_grey', 'information.php', 0, 1, 5, 40, 1);
INSERT INTO `layout_boxes` VALUES (139, 'lite_grey', 'languages.php', 1, 1, 100, 0, 0);
INSERT INTO `layout_boxes` VALUES (140, 'lite_grey', 'manufacturers.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (141, 'lite_grey', 'manufacturer_info.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (142, 'lite_grey', 'more_information.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (143, 'lite_grey', 'music_genres.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (144, 'lite_grey', 'order_history.php', 1, 1, 25, 0, 0);
INSERT INTO `layout_boxes` VALUES (145, 'lite_grey', 'product_notifications.php', 1, 1, 55, 85, 1);
INSERT INTO `layout_boxes` VALUES (146, 'lite_grey', 'record_companies.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (147, 'lite_grey', 'reviews.php', 1, 1, 50, 0, 0);
INSERT INTO `layout_boxes` VALUES (148, 'lite_grey', 'search.php', 1, 1, 10, 0, 0);
INSERT INTO `layout_boxes` VALUES (149, 'lite_grey', 'search_header.php', 0, 0, 0, 30, 1);
INSERT INTO `layout_boxes` VALUES (150, 'lite_grey', 'shopping_cart.php', 1, 1, 20, 30, 1);
INSERT INTO `layout_boxes` VALUES (151, 'lite_grey', 'specials.php', 1, 0, 55, 0, 0);
INSERT INTO `layout_boxes` VALUES (152, 'lite_grey', 'tell_a_friend.php', 1, 1, 65, 0, 0);
INSERT INTO `layout_boxes` VALUES (153, 'lite_grey', 'whats_new.php', 1, 0, 30, 0, 0);
INSERT INTO `layout_boxes` VALUES (154, 'lite_grey', 'whos_online.php', 1, 1, 200, 200, 1);
INSERT INTO `layout_boxes` VALUES (155, 'lite_orange', 'banner_box.php', 0, 0, 300, 1, 0);
INSERT INTO `layout_boxes` VALUES (156, 'lite_orange', 'banner_box2.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (157, 'lite_orange', 'banner_box_all.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (158, 'lite_orange', 'best_sellers.php', 1, 1, 30, 70, 1);
INSERT INTO `layout_boxes` VALUES (159, 'lite_orange', 'categories.php', 1, 0, 10, 10, 1);
INSERT INTO `layout_boxes` VALUES (160, 'lite_orange', 'currencies.php', 1, 1, 90, 0, 0);
INSERT INTO `layout_boxes` VALUES (161, 'lite_orange', 'document_categories.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (162, 'lite_orange', 'ezpages.php', 1, 1, 15, 5, 1);
INSERT INTO `layout_boxes` VALUES (163, 'lite_orange', 'featured.php', 1, 0, 25, 0, 0);
INSERT INTO `layout_boxes` VALUES (164, 'lite_orange', 'information.php', 0, 1, 5, 40, 1);
INSERT INTO `layout_boxes` VALUES (165, 'lite_orange', 'languages.php', 1, 1, 100, 0, 0);
INSERT INTO `layout_boxes` VALUES (166, 'lite_orange', 'manufacturers.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (167, 'lite_orange', 'manufacturer_info.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (168, 'lite_orange', 'more_information.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (169, 'lite_orange', 'music_genres.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (170, 'lite_orange', 'order_history.php', 1, 1, 25, 0, 0);
INSERT INTO `layout_boxes` VALUES (171, 'lite_orange', 'product_notifications.php', 1, 1, 55, 85, 1);
INSERT INTO `layout_boxes` VALUES (172, 'lite_orange', 'record_companies.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (173, 'lite_orange', 'reviews.php', 1, 1, 50, 0, 0);
INSERT INTO `layout_boxes` VALUES (174, 'lite_orange', 'search.php', 1, 1, 10, 0, 0);
INSERT INTO `layout_boxes` VALUES (175, 'lite_orange', 'search_header.php', 0, 0, 0, 30, 1);
INSERT INTO `layout_boxes` VALUES (176, 'lite_orange', 'shopping_cart.php', 1, 1, 20, 30, 1);
INSERT INTO `layout_boxes` VALUES (177, 'lite_orange', 'specials.php', 1, 0, 55, 0, 0);
INSERT INTO `layout_boxes` VALUES (178, 'lite_orange', 'tell_a_friend.php', 1, 1, 65, 0, 0);
INSERT INTO `layout_boxes` VALUES (179, 'lite_orange', 'whats_new.php', 1, 0, 30, 0, 0);
INSERT INTO `layout_boxes` VALUES (180, 'lite_orange', 'whos_online.php', 1, 1, 200, 200, 1);
INSERT INTO `layout_boxes` VALUES (181, 'lite_red', 'banner_box.php', 0, 0, 300, 1, 0);
INSERT INTO `layout_boxes` VALUES (182, 'lite_red', 'banner_box2.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (183, 'lite_red', 'banner_box_all.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (184, 'lite_red', 'best_sellers.php', 1, 1, 30, 70, 1);
INSERT INTO `layout_boxes` VALUES (185, 'lite_red', 'categories.php', 1, 0, 10, 10, 1);
INSERT INTO `layout_boxes` VALUES (186, 'lite_red', 'currencies.php', 1, 1, 90, 0, 0);
INSERT INTO `layout_boxes` VALUES (187, 'lite_red', 'document_categories.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (188, 'lite_red', 'ezpages.php', 1, 1, 15, 5, 1);
INSERT INTO `layout_boxes` VALUES (189, 'lite_red', 'featured.php', 1, 0, 25, 0, 0);
INSERT INTO `layout_boxes` VALUES (190, 'lite_red', 'information.php', 0, 1, 5, 40, 1);
INSERT INTO `layout_boxes` VALUES (191, 'lite_red', 'languages.php', 1, 1, 100, 0, 0);
INSERT INTO `layout_boxes` VALUES (192, 'lite_red', 'manufacturers.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (193, 'lite_red', 'manufacturer_info.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (194, 'lite_red', 'more_information.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (195, 'lite_red', 'music_genres.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (196, 'lite_red', 'order_history.php', 1, 1, 25, 0, 0);
INSERT INTO `layout_boxes` VALUES (197, 'lite_red', 'product_notifications.php', 1, 1, 55, 85, 1);
INSERT INTO `layout_boxes` VALUES (198, 'lite_red', 'record_companies.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (199, 'lite_red', 'reviews.php', 1, 1, 50, 0, 0);
INSERT INTO `layout_boxes` VALUES (200, 'lite_red', 'search.php', 1, 1, 10, 0, 0);
INSERT INTO `layout_boxes` VALUES (201, 'lite_red', 'search_header.php', 0, 0, 0, 30, 1);
INSERT INTO `layout_boxes` VALUES (202, 'lite_red', 'shopping_cart.php', 1, 1, 20, 30, 1);
INSERT INTO `layout_boxes` VALUES (203, 'lite_red', 'specials.php', 1, 0, 55, 0, 0);
INSERT INTO `layout_boxes` VALUES (204, 'lite_red', 'tell_a_friend.php', 1, 1, 65, 0, 0);
INSERT INTO `layout_boxes` VALUES (205, 'lite_red', 'whats_new.php', 1, 0, 30, 0, 0);
INSERT INTO `layout_boxes` VALUES (206, 'lite_red', 'whos_online.php', 1, 1, 200, 200, 1);
INSERT INTO `layout_boxes` VALUES (207, 'pure_black_free', 'banner_box.php', 0, 0, 300, 1, 0);
INSERT INTO `layout_boxes` VALUES (208, 'pure_black_free', 'banner_box2.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (209, 'pure_black_free', 'banner_box_all.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (210, 'pure_black_free', 'best_sellers.php', 1, 1, 30, 70, 1);
INSERT INTO `layout_boxes` VALUES (211, 'pure_black_free', 'categories.php', 1, 0, 10, 10, 1);
INSERT INTO `layout_boxes` VALUES (212, 'pure_black_free', 'currencies.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (213, 'pure_black_free', 'document_categories.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (214, 'pure_black_free', 'ezpages.php', 1, 1, 15, 5, 1);
INSERT INTO `layout_boxes` VALUES (215, 'pure_black_free', 'featured.php', 1, 0, 25, 0, 0);
INSERT INTO `layout_boxes` VALUES (216, 'pure_black_free', 'information.php', 0, 1, 5, 40, 1);
INSERT INTO `layout_boxes` VALUES (217, 'pure_black_free', 'languages.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (218, 'pure_black_free', 'manufacturers.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (219, 'pure_black_free', 'manufacturer_info.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (220, 'pure_black_free', 'more_information.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (221, 'pure_black_free', 'music_genres.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (222, 'pure_black_free', 'order_history.php', 1, 1, 25, 0, 0);
INSERT INTO `layout_boxes` VALUES (223, 'pure_black_free', 'product_notifications.php', 1, 1, 55, 85, 1);
INSERT INTO `layout_boxes` VALUES (224, 'pure_black_free', 'record_companies.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (225, 'pure_black_free', 'reviews.php', 1, 1, 50, 0, 0);
INSERT INTO `layout_boxes` VALUES (226, 'pure_black_free', 'search.php', 1, 1, 10, 0, 0);
INSERT INTO `layout_boxes` VALUES (227, 'pure_black_free', 'search_header.php', 0, 0, 0, 30, 1);
INSERT INTO `layout_boxes` VALUES (228, 'pure_black_free', 'shopping_cart.php', 1, 1, 20, 30, 1);
INSERT INTO `layout_boxes` VALUES (229, 'pure_black_free', 'specials.php', 1, 0, 55, 0, 0);
INSERT INTO `layout_boxes` VALUES (230, 'pure_black_free', 'tell_a_friend.php', 1, 1, 65, 0, 0);
INSERT INTO `layout_boxes` VALUES (231, 'pure_black_free', 'whats_new.php', 1, 0, 30, 0, 0);
INSERT INTO `layout_boxes` VALUES (232, 'pure_black_free', 'whos_online.php', 1, 1, 200, 200, 1);
INSERT INTO `layout_boxes` VALUES (233, 'pure_blue_free', 'banner_box.php', 0, 0, 300, 1, 0);
INSERT INTO `layout_boxes` VALUES (234, 'pure_blue_free', 'banner_box2.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (235, 'pure_blue_free', 'banner_box_all.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (236, 'pure_blue_free', 'best_sellers.php', 1, 1, 30, 70, 1);
INSERT INTO `layout_boxes` VALUES (237, 'pure_blue_free', 'categories.php', 1, 0, 10, 10, 1);
INSERT INTO `layout_boxes` VALUES (238, 'pure_blue_free', 'currencies.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (239, 'pure_blue_free', 'document_categories.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (240, 'pure_blue_free', 'ezpages.php', 1, 1, 15, 5, 1);
INSERT INTO `layout_boxes` VALUES (241, 'pure_blue_free', 'featured.php', 1, 0, 25, 0, 0);
INSERT INTO `layout_boxes` VALUES (242, 'pure_blue_free', 'information.php', 0, 1, 5, 40, 1);
INSERT INTO `layout_boxes` VALUES (243, 'pure_blue_free', 'languages.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (244, 'pure_blue_free', 'manufacturers.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (245, 'pure_blue_free', 'manufacturer_info.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (246, 'pure_blue_free', 'more_information.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (247, 'pure_blue_free', 'music_genres.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (248, 'pure_blue_free', 'order_history.php', 1, 1, 25, 0, 0);
INSERT INTO `layout_boxes` VALUES (249, 'pure_blue_free', 'product_notifications.php', 1, 1, 55, 85, 1);
INSERT INTO `layout_boxes` VALUES (250, 'pure_blue_free', 'record_companies.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (251, 'pure_blue_free', 'reviews.php', 1, 1, 50, 0, 0);
INSERT INTO `layout_boxes` VALUES (252, 'pure_blue_free', 'search.php', 1, 1, 10, 0, 0);
INSERT INTO `layout_boxes` VALUES (253, 'pure_blue_free', 'search_header.php', 0, 0, 0, 30, 1);
INSERT INTO `layout_boxes` VALUES (254, 'pure_blue_free', 'shopping_cart.php', 1, 1, 20, 30, 1);
INSERT INTO `layout_boxes` VALUES (255, 'pure_blue_free', 'specials.php', 1, 0, 55, 0, 0);
INSERT INTO `layout_boxes` VALUES (256, 'pure_blue_free', 'tell_a_friend.php', 1, 1, 65, 0, 0);
INSERT INTO `layout_boxes` VALUES (257, 'pure_blue_free', 'whats_new.php', 1, 0, 30, 0, 0);
INSERT INTO `layout_boxes` VALUES (258, 'pure_blue_free', 'whos_online.php', 1, 1, 200, 200, 1);
INSERT INTO `layout_boxes` VALUES (259, 'pure_green_free', 'banner_box.php', 0, 0, 300, 1, 0);
INSERT INTO `layout_boxes` VALUES (260, 'pure_green_free', 'banner_box2.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (261, 'pure_green_free', 'banner_box_all.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (262, 'pure_green_free', 'best_sellers.php', 1, 1, 30, 70, 1);
INSERT INTO `layout_boxes` VALUES (263, 'pure_green_free', 'categories.php', 1, 0, 10, 10, 1);
INSERT INTO `layout_boxes` VALUES (264, 'pure_green_free', 'currencies.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (265, 'pure_green_free', 'document_categories.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (266, 'pure_green_free', 'ezpages.php', 1, 1, 15, 5, 1);
INSERT INTO `layout_boxes` VALUES (267, 'pure_green_free', 'featured.php', 1, 0, 25, 0, 0);
INSERT INTO `layout_boxes` VALUES (268, 'pure_green_free', 'information.php', 0, 1, 5, 40, 1);
INSERT INTO `layout_boxes` VALUES (269, 'pure_green_free', 'languages.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (270, 'pure_green_free', 'manufacturers.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (271, 'pure_green_free', 'manufacturer_info.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (272, 'pure_green_free', 'more_information.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (273, 'pure_green_free', 'music_genres.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (274, 'pure_green_free', 'order_history.php', 1, 1, 25, 0, 0);
INSERT INTO `layout_boxes` VALUES (275, 'pure_green_free', 'product_notifications.php', 1, 1, 55, 85, 1);
INSERT INTO `layout_boxes` VALUES (276, 'pure_green_free', 'record_companies.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (277, 'pure_green_free', 'reviews.php', 1, 1, 50, 0, 0);
INSERT INTO `layout_boxes` VALUES (278, 'pure_green_free', 'search.php', 1, 1, 10, 0, 0);
INSERT INTO `layout_boxes` VALUES (279, 'pure_green_free', 'search_header.php', 0, 0, 0, 30, 1);
INSERT INTO `layout_boxes` VALUES (280, 'pure_green_free', 'shopping_cart.php', 1, 1, 20, 30, 1);
INSERT INTO `layout_boxes` VALUES (281, 'pure_green_free', 'specials.php', 1, 0, 55, 0, 0);
INSERT INTO `layout_boxes` VALUES (282, 'pure_green_free', 'tell_a_friend.php', 1, 1, 65, 0, 0);
INSERT INTO `layout_boxes` VALUES (283, 'pure_green_free', 'whats_new.php', 1, 0, 30, 0, 0);
INSERT INTO `layout_boxes` VALUES (284, 'pure_green_free', 'whos_online.php', 1, 1, 200, 200, 1);
INSERT INTO `layout_boxes` VALUES (285, 'pure_orange_free', 'banner_box.php', 0, 0, 300, 1, 0);
INSERT INTO `layout_boxes` VALUES (286, 'pure_orange_free', 'banner_box2.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (287, 'pure_orange_free', 'banner_box_all.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (288, 'pure_orange_free', 'best_sellers.php', 1, 1, 30, 70, 1);
INSERT INTO `layout_boxes` VALUES (289, 'pure_orange_free', 'categories.php', 1, 0, 10, 10, 1);
INSERT INTO `layout_boxes` VALUES (290, 'pure_orange_free', 'currencies.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (291, 'pure_orange_free', 'document_categories.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (292, 'pure_orange_free', 'ezpages.php', 1, 1, 15, 5, 1);
INSERT INTO `layout_boxes` VALUES (293, 'pure_orange_free', 'featured.php', 1, 0, 25, 0, 0);
INSERT INTO `layout_boxes` VALUES (294, 'pure_orange_free', 'information.php', 0, 1, 5, 40, 1);
INSERT INTO `layout_boxes` VALUES (295, 'pure_orange_free', 'languages.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (296, 'pure_orange_free', 'manufacturers.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (297, 'pure_orange_free', 'manufacturer_info.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (298, 'pure_orange_free', 'more_information.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (299, 'pure_orange_free', 'music_genres.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (300, 'pure_orange_free', 'order_history.php', 1, 1, 25, 0, 0);
INSERT INTO `layout_boxes` VALUES (301, 'pure_orange_free', 'product_notifications.php', 1, 1, 55, 85, 1);
INSERT INTO `layout_boxes` VALUES (302, 'pure_orange_free', 'record_companies.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (303, 'pure_orange_free', 'reviews.php', 1, 1, 50, 0, 0);
INSERT INTO `layout_boxes` VALUES (304, 'pure_orange_free', 'search.php', 1, 1, 10, 0, 0);
INSERT INTO `layout_boxes` VALUES (305, 'pure_orange_free', 'search_header.php', 0, 0, 0, 30, 1);
INSERT INTO `layout_boxes` VALUES (306, 'pure_orange_free', 'shopping_cart.php', 1, 1, 20, 30, 1);
INSERT INTO `layout_boxes` VALUES (307, 'pure_orange_free', 'specials.php', 1, 0, 55, 0, 0);
INSERT INTO `layout_boxes` VALUES (308, 'pure_orange_free', 'tell_a_friend.php', 1, 1, 65, 0, 0);
INSERT INTO `layout_boxes` VALUES (309, 'pure_orange_free', 'whats_new.php', 1, 0, 30, 0, 0);
INSERT INTO `layout_boxes` VALUES (310, 'pure_orange_free', 'whos_online.php', 1, 1, 200, 200, 1);
INSERT INTO `layout_boxes` VALUES (311, 'pure_red_free', 'banner_box.php', 0, 0, 300, 1, 0);
INSERT INTO `layout_boxes` VALUES (312, 'pure_red_free', 'banner_box2.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (313, 'pure_red_free', 'banner_box_all.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (314, 'pure_red_free', 'best_sellers.php', 1, 1, 30, 70, 1);
INSERT INTO `layout_boxes` VALUES (315, 'pure_red_free', 'categories.php', 1, 0, 10, 10, 1);
INSERT INTO `layout_boxes` VALUES (316, 'pure_red_free', 'currencies.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (317, 'pure_red_free', 'document_categories.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (318, 'pure_red_free', 'ezpages.php', 1, 1, 15, 5, 1);
INSERT INTO `layout_boxes` VALUES (319, 'pure_red_free', 'featured.php', 1, 0, 25, 0, 0);
INSERT INTO `layout_boxes` VALUES (320, 'pure_red_free', 'information.php', 0, 1, 5, 40, 1);
INSERT INTO `layout_boxes` VALUES (321, 'pure_red_free', 'languages.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (322, 'pure_red_free', 'manufacturers.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (323, 'pure_red_free', 'manufacturer_info.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (324, 'pure_red_free', 'more_information.php', 0, 0, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (325, 'pure_red_free', 'music_genres.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (326, 'pure_red_free', 'order_history.php', 1, 1, 25, 0, 0);
INSERT INTO `layout_boxes` VALUES (327, 'pure_red_free', 'product_notifications.php', 1, 1, 55, 85, 1);
INSERT INTO `layout_boxes` VALUES (328, 'pure_red_free', 'record_companies.php', 0, 1, 0, 0, 0);
INSERT INTO `layout_boxes` VALUES (329, 'pure_red_free', 'reviews.php', 1, 1, 50, 0, 0);
INSERT INTO `layout_boxes` VALUES (330, 'pure_red_free', 'search.php', 1, 1, 10, 0, 0);
INSERT INTO `layout_boxes` VALUES (331, 'pure_red_free', 'search_header.php', 0, 0, 0, 30, 1);
INSERT INTO `layout_boxes` VALUES (332, 'pure_red_free', 'shopping_cart.php', 1, 1, 20, 30, 1);
INSERT INTO `layout_boxes` VALUES (333, 'pure_red_free', 'specials.php', 1, 0, 55, 0, 0);
INSERT INTO `layout_boxes` VALUES (334, 'pure_red_free', 'tell_a_friend.php', 1, 1, 65, 0, 0);
INSERT INTO `layout_boxes` VALUES (335, 'pure_red_free', 'whats_new.php', 1, 0, 30, 0, 0);
INSERT INTO `layout_boxes` VALUES (336, 'pure_red_free', 'whos_online.php', 1, 1, 200, 200, 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `manufacturers`
-- 

CREATE TABLE `manufacturers` (
  `manufacturers_id` int(11) NOT NULL auto_increment,
  `manufacturers_name` varchar(32) NOT NULL default '',
  `manufacturers_image` varchar(64) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  PRIMARY KEY  (`manufacturers_id`),
  KEY `idx_mfg_name_zen` (`manufacturers_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `manufacturers`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `manufacturers_info`
-- 

CREATE TABLE `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '0',
  `manufacturers_url` varchar(255) NOT NULL default '',
  `url_clicked` int(5) NOT NULL default '0',
  `date_last_click` datetime default NULL,
  PRIMARY KEY  (`manufacturers_id`,`languages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `manufacturers_info`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `media_clips`
-- 

CREATE TABLE `media_clips` (
  `clip_id` int(11) NOT NULL auto_increment,
  `media_id` int(11) NOT NULL default '0',
  `clip_type` smallint(6) NOT NULL default '0',
  `clip_filename` text NOT NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`clip_id`),
  KEY `idx_media_id_zen` (`media_id`),
  KEY `idx_clip_type_zen` (`clip_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `media_clips`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `media_manager`
-- 

CREATE TABLE `media_manager` (
  `media_id` int(11) NOT NULL auto_increment,
  `media_name` varchar(255) NOT NULL default '',
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`media_id`),
  KEY `idx_media_name_zen` (`media_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `media_manager`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `media_to_products`
-- 

CREATE TABLE `media_to_products` (
  `media_id` int(11) NOT NULL default '0',
  `product_id` int(11) NOT NULL default '0',
  KEY `idx_media_product_zen` (`media_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `media_to_products`
-- 

INSERT INTO `media_to_products` VALUES (1, 166);
INSERT INTO `media_to_products` VALUES (2, 169);
INSERT INTO `media_to_products` VALUES (2, 169);

-- --------------------------------------------------------

-- 
-- 表的结构 `media_types`
-- 

CREATE TABLE `media_types` (
  `type_id` int(11) NOT NULL auto_increment,
  `type_name` varchar(64) NOT NULL default '',
  `type_ext` varchar(8) NOT NULL default '',
  PRIMARY KEY  (`type_id`),
  KEY `idx_type_name_zen` (`type_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `media_types`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `meta_tags_categories_description`
-- 

CREATE TABLE `meta_tags_categories_description` (
  `categories_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL default '1',
  `metatags_title` varchar(255) NOT NULL default '',
  `metatags_keywords` text,
  `metatags_description` text,
  PRIMARY KEY  (`categories_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `meta_tags_categories_description`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `meta_tags_products_description`
-- 

CREATE TABLE `meta_tags_products_description` (
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL default '1',
  `metatags_title` varchar(255) NOT NULL default '',
  `metatags_keywords` text,
  `metatags_description` text,
  PRIMARY KEY  (`products_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `meta_tags_products_description`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `music_genre`
-- 

CREATE TABLE `music_genre` (
  `music_genre_id` int(11) NOT NULL auto_increment,
  `music_genre_name` varchar(32) NOT NULL default '',
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  PRIMARY KEY  (`music_genre_id`),
  KEY `idx_music_genre_name_zen` (`music_genre_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `music_genre`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `newsletters`
-- 

CREATE TABLE `newsletters` (
  `newsletters_id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `content_html` text NOT NULL,
  `module` varchar(255) NOT NULL default '',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_sent` datetime default NULL,
  `status` int(1) default NULL,
  `locked` int(1) default '0',
  PRIMARY KEY  (`newsletters_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `newsletters`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `orders`
-- 

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `customers_name` varchar(64) NOT NULL default '',
  `customers_company` varchar(64) default NULL,
  `customers_street_address` varchar(64) NOT NULL default '',
  `customers_suburb` varchar(32) default NULL,
  `customers_city` varchar(32) NOT NULL default '',
  `customers_postcode` varchar(10) NOT NULL default '',
  `customers_state` varchar(32) default NULL,
  `customers_country` varchar(32) NOT NULL default '',
  `customers_telephone` varchar(32) NOT NULL default '',
  `customers_email_address` varchar(96) NOT NULL default '',
  `customers_address_format_id` int(5) NOT NULL default '0',
  `delivery_name` varchar(64) NOT NULL default '',
  `delivery_company` varchar(64) default NULL,
  `delivery_street_address` varchar(64) NOT NULL default '',
  `delivery_suburb` varchar(32) default NULL,
  `delivery_city` varchar(32) NOT NULL default '',
  `delivery_postcode` varchar(10) NOT NULL default '',
  `delivery_state` varchar(32) default NULL,
  `delivery_country` varchar(32) NOT NULL default '',
  `delivery_address_format_id` int(5) NOT NULL default '0',
  `billing_name` varchar(64) NOT NULL default '',
  `billing_company` varchar(64) default NULL,
  `billing_street_address` varchar(64) NOT NULL default '',
  `billing_suburb` varchar(32) default NULL,
  `billing_city` varchar(32) NOT NULL default '',
  `billing_postcode` varchar(10) NOT NULL default '',
  `billing_state` varchar(32) default NULL,
  `billing_country` varchar(32) NOT NULL default '',
  `billing_address_format_id` int(5) NOT NULL default '0',
  `payment_method` varchar(128) NOT NULL default '',
  `payment_module_code` varchar(32) NOT NULL default '',
  `shipping_method` varchar(128) NOT NULL default '',
  `shipping_module_code` varchar(32) NOT NULL default '',
  `coupon_code` varchar(32) NOT NULL default '',
  `cc_type` varchar(20) default NULL,
  `cc_owner` varchar(64) default NULL,
  `cc_number` varchar(32) default NULL,
  `cc_expires` varchar(4) default NULL,
  `cc_cvv` blob,
  `last_modified` datetime default NULL,
  `date_purchased` datetime default NULL,
  `orders_status` int(5) NOT NULL default '0',
  `orders_date_finished` datetime default NULL,
  `currency` char(3) default NULL,
  `currency_value` decimal(14,6) default NULL,
  `order_total` decimal(14,2) default NULL,
  `order_tax` decimal(14,2) default NULL,
  `paypal_ipn_id` int(11) NOT NULL default '0',
  `ip_address` varchar(96) NOT NULL default '',
  PRIMARY KEY  (`orders_id`),
  KEY `idx_status_orders_cust_zen` (`orders_status`,`orders_id`,`customers_id`),
  KEY `idx_date_purchased_zen` (`date_purchased`),
  KEY `idx_cust_id_orders_id_zen` (`customers_id`,`orders_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `orders`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `orders_products`
-- 

CREATE TABLE `orders_products` (
  `orders_products_id` int(11) NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `products_id` int(11) NOT NULL default '0',
  `products_model` varchar(32) default NULL,
  `products_name` varchar(64) NOT NULL default '',
  `products_price` decimal(15,4) NOT NULL default '0.0000',
  `final_price` decimal(15,4) NOT NULL default '0.0000',
  `products_tax` decimal(7,4) NOT NULL default '0.0000',
  `products_quantity` float NOT NULL default '0',
  `onetime_charges` decimal(15,4) NOT NULL default '0.0000',
  `products_priced_by_attribute` tinyint(1) NOT NULL default '0',
  `product_is_free` tinyint(1) NOT NULL default '0',
  `products_discount_type` tinyint(1) NOT NULL default '0',
  `products_discount_type_from` tinyint(1) NOT NULL default '0',
  `products_prid` tinytext NOT NULL,
  PRIMARY KEY  (`orders_products_id`),
  KEY `idx_orders_id_prod_id_zen` (`orders_id`,`products_id`),
  KEY `idx_prod_id_orders_id_zen` (`products_id`,`orders_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `orders_products`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `orders_products_attributes`
-- 

CREATE TABLE `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `orders_products_id` int(11) NOT NULL default '0',
  `products_options` varchar(32) NOT NULL default '',
  `products_options_values` text NOT NULL,
  `options_values_price` decimal(15,4) NOT NULL default '0.0000',
  `price_prefix` char(1) NOT NULL default '',
  `product_attribute_is_free` tinyint(1) NOT NULL default '0',
  `products_attributes_weight` float NOT NULL default '0',
  `products_attributes_weight_prefix` char(1) NOT NULL default '',
  `attributes_discounted` tinyint(1) NOT NULL default '1',
  `attributes_price_base_included` tinyint(1) NOT NULL default '1',
  `attributes_price_onetime` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_offset` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_onetime` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_onetime_offset` decimal(15,4) NOT NULL default '0.0000',
  `attributes_qty_prices` text,
  `attributes_qty_prices_onetime` text,
  `attributes_price_words` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_words_free` int(4) NOT NULL default '0',
  `attributes_price_letters` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_letters_free` int(4) NOT NULL default '0',
  `products_options_id` int(11) NOT NULL default '0',
  `products_options_values_id` int(11) NOT NULL default '0',
  `products_prid` tinytext NOT NULL,
  PRIMARY KEY  (`orders_products_attributes_id`),
  KEY `idx_orders_id_prod_id_zen` (`orders_id`,`orders_products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `orders_products_attributes`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `orders_products_download`
-- 

CREATE TABLE `orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `orders_products_id` int(11) NOT NULL default '0',
  `orders_products_filename` varchar(255) NOT NULL default '',
  `download_maxdays` int(2) NOT NULL default '0',
  `download_count` int(2) NOT NULL default '0',
  `products_prid` tinytext NOT NULL,
  PRIMARY KEY  (`orders_products_download_id`),
  KEY `idx_orders_id_zen` (`orders_id`),
  KEY `idx_orders_products_id_zen` (`orders_products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `orders_products_download`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `orders_status`
-- 

CREATE TABLE `orders_status` (
  `orders_status_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `orders_status_name` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`orders_status_id`,`language_id`),
  KEY `idx_orders_status_name_zen` (`orders_status_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `orders_status`
-- 

INSERT INTO `orders_status` VALUES (1, 1, 'Pending');
INSERT INTO `orders_status` VALUES (2, 1, 'Processing');
INSERT INTO `orders_status` VALUES (3, 1, 'Delivered');
INSERT INTO `orders_status` VALUES (4, 1, 'Update');
INSERT INTO `orders_status` VALUES (1, 2, '等待中');
INSERT INTO `orders_status` VALUES (2, 2, '处理中');
INSERT INTO `orders_status` VALUES (3, 2, '已发货');
INSERT INTO `orders_status` VALUES (4, 2, '已更新');

-- --------------------------------------------------------

-- 
-- 表的结构 `orders_status_history`
-- 

CREATE TABLE `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `orders_status_id` int(5) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `customer_notified` int(1) default '0',
  `comments` text,
  PRIMARY KEY  (`orders_status_history_id`),
  KEY `idx_orders_id_status_id_zen` (`orders_id`,`orders_status_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `orders_status_history`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `orders_total`
-- 

CREATE TABLE `orders_total` (
  `orders_total_id` int(10) unsigned NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `text` varchar(255) NOT NULL default '',
  `value` decimal(15,4) NOT NULL default '0.0000',
  `class` varchar(32) NOT NULL default '',
  `sort_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`orders_total_id`),
  KEY `idx_ot_orders_id_zen` (`orders_id`),
  KEY `idx_ot_class_zen` (`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `orders_total`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `paypal`
-- 

CREATE TABLE `paypal` (
  `paypal_ipn_id` int(11) unsigned NOT NULL auto_increment,
  `order_id` int(11) unsigned NOT NULL default '0',
  `txn_type` varchar(40) NOT NULL default '',
  `module_name` varchar(40) NOT NULL default '',
  `module_mode` varchar(40) NOT NULL default '',
  `reason_code` varchar(40) default NULL,
  `payment_type` varchar(40) NOT NULL default '',
  `payment_status` varchar(32) NOT NULL default '',
  `pending_reason` varchar(32) default NULL,
  `invoice` varchar(128) default NULL,
  `mc_currency` char(3) NOT NULL default '',
  `first_name` varchar(32) NOT NULL default '',
  `last_name` varchar(32) NOT NULL default '',
  `payer_business_name` varchar(128) default NULL,
  `address_name` varchar(64) default NULL,
  `address_street` varchar(254) default NULL,
  `address_city` varchar(120) default NULL,
  `address_state` varchar(120) default NULL,
  `address_zip` varchar(10) default NULL,
  `address_country` varchar(64) default NULL,
  `address_status` varchar(11) default NULL,
  `payer_email` varchar(128) NOT NULL default '',
  `payer_id` varchar(32) NOT NULL default '',
  `payer_status` varchar(10) NOT NULL default '',
  `payment_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `business` varchar(128) NOT NULL default '',
  `receiver_email` varchar(128) NOT NULL default '',
  `receiver_id` varchar(32) NOT NULL default '',
  `txn_id` varchar(20) NOT NULL default '',
  `parent_txn_id` varchar(20) default NULL,
  `num_cart_items` tinyint(4) unsigned NOT NULL default '1',
  `mc_gross` decimal(7,2) NOT NULL default '0.00',
  `mc_fee` decimal(7,2) NOT NULL default '0.00',
  `payment_gross` decimal(7,2) default NULL,
  `payment_fee` decimal(7,2) default NULL,
  `settle_amount` decimal(7,2) default NULL,
  `settle_currency` char(3) default NULL,
  `exchange_rate` decimal(4,2) default NULL,
  `notify_version` varchar(6) NOT NULL default '',
  `verify_sign` varchar(128) NOT NULL default '',
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `memo` text,
  PRIMARY KEY  (`paypal_ipn_id`,`txn_id`),
  KEY `idx_order_id_zen` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `paypal`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `paypal_payment_status`
-- 

CREATE TABLE `paypal_payment_status` (
  `payment_status_id` int(11) NOT NULL auto_increment,
  `payment_status_name` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`payment_status_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- 导出表中的数据 `paypal_payment_status`
-- 

INSERT INTO `paypal_payment_status` VALUES (1, 'Completed');
INSERT INTO `paypal_payment_status` VALUES (2, 'Pending');
INSERT INTO `paypal_payment_status` VALUES (3, 'Failed');
INSERT INTO `paypal_payment_status` VALUES (4, 'Denied');
INSERT INTO `paypal_payment_status` VALUES (5, 'Refunded');
INSERT INTO `paypal_payment_status` VALUES (6, 'Canceled_Reversal');
INSERT INTO `paypal_payment_status` VALUES (7, 'Reversed');

-- --------------------------------------------------------

-- 
-- 表的结构 `paypal_payment_status_history`
-- 

CREATE TABLE `paypal_payment_status_history` (
  `payment_status_history_id` int(11) NOT NULL auto_increment,
  `paypal_ipn_id` int(11) NOT NULL default '0',
  `txn_id` varchar(64) NOT NULL default '',
  `parent_txn_id` varchar(64) NOT NULL default '',
  `payment_status` varchar(17) NOT NULL default '',
  `pending_reason` varchar(14) default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`payment_status_history_id`),
  KEY `idx_paypal_ipn_id_zen` (`paypal_ipn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `paypal_payment_status_history`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `paypal_session`
-- 

CREATE TABLE `paypal_session` (
  `unique_id` int(11) NOT NULL auto_increment,
  `session_id` text NOT NULL,
  `saved_session` mediumblob NOT NULL,
  `expiry` int(17) NOT NULL default '0',
  PRIMARY KEY  (`unique_id`),
  KEY `idx_session_id_zen` (`session_id`(36))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `paypal_session`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `paypal_testing`
-- 

CREATE TABLE `paypal_testing` (
  `paypal_ipn_id` int(11) unsigned NOT NULL auto_increment,
  `order_id` int(11) unsigned NOT NULL default '0',
  `custom` varchar(255) NOT NULL default '',
  `txn_type` varchar(40) NOT NULL default '',
  `module_name` varchar(40) NOT NULL default '',
  `module_mode` varchar(40) NOT NULL default '',
  `reason_code` varchar(40) default NULL,
  `payment_type` varchar(40) NOT NULL default '',
  `payment_status` varchar(32) NOT NULL default '',
  `pending_reason` varchar(32) default NULL,
  `invoice` varchar(128) default NULL,
  `mc_currency` char(3) NOT NULL default '',
  `first_name` varchar(32) NOT NULL default '',
  `last_name` varchar(32) NOT NULL default '',
  `payer_business_name` varchar(128) default NULL,
  `address_name` varchar(64) default NULL,
  `address_street` varchar(254) default NULL,
  `address_city` varchar(120) default NULL,
  `address_state` varchar(120) default NULL,
  `address_zip` varchar(10) default NULL,
  `address_country` varchar(64) default NULL,
  `address_status` varchar(11) default NULL,
  `payer_email` varchar(128) NOT NULL default '',
  `payer_id` varchar(32) NOT NULL default '',
  `payer_status` varchar(10) NOT NULL default '',
  `payment_date` datetime NOT NULL default '0001-01-01 00:00:00',
  `business` varchar(128) NOT NULL default '',
  `receiver_email` varchar(128) NOT NULL default '',
  `receiver_id` varchar(32) NOT NULL default '',
  `txn_id` varchar(20) NOT NULL default '',
  `parent_txn_id` varchar(20) default NULL,
  `num_cart_items` tinyint(4) unsigned NOT NULL default '1',
  `mc_gross` decimal(7,2) NOT NULL default '0.00',
  `mc_fee` decimal(7,2) NOT NULL default '0.00',
  `payment_gross` decimal(7,2) default NULL,
  `payment_fee` decimal(7,2) default NULL,
  `settle_amount` decimal(7,2) default NULL,
  `settle_currency` char(3) default NULL,
  `exchange_rate` decimal(4,2) default NULL,
  `notify_version` decimal(2,1) NOT NULL default '0.0',
  `verify_sign` varchar(128) NOT NULL default '',
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `memo` text,
  PRIMARY KEY  (`paypal_ipn_id`,`txn_id`),
  KEY `idx_order_id_zen` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `paypal_testing`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `products`
-- 

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL auto_increment,
  `products_type` int(11) NOT NULL default '1',
  `products_quantity` float NOT NULL default '0',
  `products_model` varchar(32) default NULL,
  `products_image` text,
  `products_price` decimal(15,4) NOT NULL default '0.0000',
  `products_virtual` tinyint(1) NOT NULL default '0',
  `products_date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `products_last_modified` datetime default NULL,
  `products_date_available` datetime default NULL,
  `products_weight` float NOT NULL default '0',
  `products_status` tinyint(1) NOT NULL default '0',
  `products_tax_class_id` int(11) NOT NULL default '0',
  `manufacturers_id` int(11) default NULL,
  `products_ordered` float NOT NULL default '0',
  `products_quantity_order_min` float NOT NULL default '1',
  `products_quantity_order_units` float NOT NULL default '1',
  `products_priced_by_attribute` tinyint(1) NOT NULL default '0',
  `product_is_free` tinyint(1) NOT NULL default '0',
  `product_is_call` tinyint(1) NOT NULL default '0',
  `products_quantity_mixed` tinyint(1) NOT NULL default '0',
  `product_is_always_free_shipping` tinyint(1) NOT NULL default '0',
  `products_qty_box_status` tinyint(1) NOT NULL default '1',
  `products_quantity_order_max` float NOT NULL default '0',
  `products_sort_order` int(11) NOT NULL default '0',
  `products_discount_type` tinyint(1) NOT NULL default '0',
  `products_discount_type_from` tinyint(1) NOT NULL default '0',
  `products_price_sorter` decimal(15,4) NOT NULL default '0.0000',
  `master_categories_id` int(11) NOT NULL default '0',
  `products_mixed_discount_quantity` tinyint(1) NOT NULL default '1',
  `metatags_title_status` tinyint(1) NOT NULL default '0',
  `metatags_products_name_status` tinyint(1) NOT NULL default '0',
  `metatags_model_status` tinyint(1) NOT NULL default '0',
  `metatags_price_status` tinyint(1) NOT NULL default '0',
  `metatags_title_tagline_status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`products_id`),
  KEY `idx_products_date_added_zen` (`products_date_added`),
  KEY `idx_products_status_zen` (`products_status`),
  KEY `idx_products_date_available_zen` (`products_date_available`),
  KEY `idx_products_ordered_zen` (`products_ordered`),
  KEY `idx_products_model_zen` (`products_model`),
  KEY `idx_products_price_sorter_zen` (`products_price_sorter`),
  KEY `idx_master_categories_id_zen` (`master_categories_id`),
  KEY `idx_products_sort_order_zen` (`products_sort_order`),
  KEY `idx_manufacturers_id_zen` (`manufacturers_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

-- 
-- 导出表中的数据 `products`
-- 

INSERT INTO `products` VALUES (1, 1, 10000, '', '2GbTFCard.jpg', 118.9900, 0, '2010-09-10 15:40:24', '2010-09-10 17:52:09', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 118.9900, 4, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (3, 1, 2000, '', 'SZ05590136.jpg', 129.9900, 0, '2010-09-10 17:54:41', '2010-09-10 17:55:12', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 129.9900, 4, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (2, 1, 1000, '', 'SZ00510043.jpg', 199.7000, 0, '2010-09-10 15:46:32', '2010-09-10 17:41:15', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 199.7000, 4, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (4, 1, 0, '', 'SZ04581142.jpg', 87.9900, 0, '2010-09-10 17:59:45', '2010-09-10 18:00:40', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 87.9900, 5, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (5, 1, 2000, '', 'SZ05430061.jpg', 70.9900, 0, '2010-09-10 18:02:22', '2010-09-10 18:02:38', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 68.0000, 5, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (6, 1, 2000, '', 'SZ04581491.jpg', 56.9900, 0, '2010-09-10 18:22:22', '2010-09-16 14:43:27', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 56.9900, 5, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (7, 1, 3000, '', 'YPY279.jpg', 69.9900, 0, '2010-09-10 18:30:17', '2010-09-10 18:30:38', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 69.9900, 7, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (8, 1, 10000, '', 'SZ05440554.jpg', 77.9900, 0, '2010-09-13 09:39:43', '2010-09-13 09:41:35', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 77.9900, 9, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (9, 1, 2000, '', 'SZ05440669.jpg', 138.0000, 0, '2010-09-13 09:43:58', '2010-09-13 09:44:26', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 138.0000, 9, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (10, 1, 20000, '', 'SZ09890044.jpg', 99.9900, 0, '2010-09-13 09:48:00', '2010-09-13 09:48:24', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 99.9900, 9, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (11, 1, 3000, '', 'OriginalPrice$164.99.jpg', 164.9900, 0, '2010-09-13 10:01:52', '2010-09-13 10:02:26', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 107.9900, 10, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (12, 1, 1000, '', 'SZ05430067.jpg', 149.9900, 0, '2010-09-13 10:09:41', '2010-09-13 10:10:05', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 149.9900, 10, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (13, 1, 3000, '', 'SZ05430056.jpg', 72.9900, 0, '2010-09-13 10:11:50', '2010-09-13 10:12:04', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 72.9900, 10, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (14, 1, 2000, '', 'QW124.jpg', 91.9900, 0, '2010-09-13 10:19:48', '2010-09-13 10:20:15', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 91.9900, 7, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (15, 1, 3000, '', 'SFA338.jpg', 185.9900, 0, '2010-09-13 10:22:38', '2010-09-13 10:23:54', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 185.9900, 7, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (16, 1, 5000, '', 'SFA1014.jpg', 214.9900, 0, '2010-09-13 10:31:06', '2010-09-13 10:31:24', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 214.9900, 7, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (17, 1, 3000, '', 'SZM871.jpg', 5.6900, 0, '2010-09-13 10:34:29', '2010-09-13 10:34:43', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 5.6900, 11, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (18, 1, 3000, '', 'SZM574.jpg', 15.9900, 0, '2010-09-13 10:36:41', '2010-09-13 10:36:58', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 15.9900, 11, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (19, 1, 3000, '', 'E4U-175.jpg', 21.9900, 0, '2010-09-13 10:38:27', '2010-09-13 10:38:52', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 21.9900, 11, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (20, 1, 2000, '', 'HF153.jpg', 30.9900, 0, '2010-09-13 10:41:03', '2010-09-13 10:41:27', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 30.9900, 11, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (21, 1, 2000, '', '00075997.jpg', 1.3000, 0, '2010-09-13 10:44:33', '2010-09-13 10:44:58', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0.9300, 12, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (22, 1, 2000, '', '4-Piece Set.jpg', 4.0700, 0, '2010-09-13 10:47:16', '2010-09-13 10:47:44', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 4.0700, 12, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (23, 1, 2000, '', '00079607.jpg', 4.1500, 0, '2010-09-13 10:52:10', '2010-09-13 10:52:36', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 4.1500, 12, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (24, 1, 2000, '', 'CEV052.jpg', 3.4900, 0, '2010-09-13 10:54:11', '2010-09-13 10:54:43', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 3.4900, 12, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (25, 1, 3000, '', 'SZC5815.jpg', 315.9900, 0, '2010-09-13 11:07:21', '2010-09-16 14:17:10', NULL, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 2, 0, 315.9900, 14, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (26, 1, 3000, '', 'SZC2589.jpg', 362.9900, 0, '2010-09-13 11:09:44', '2010-09-16 14:45:34', NULL, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 362.9900, 14, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (27, 1, 1000, '', 'SZC2226.jpg', 315.9900, 0, '2010-09-13 11:14:34', '2010-09-16 14:44:18', NULL, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 315.9900, 14, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (28, 1, 3000, '', 'SZC1836.jpg', 214.9900, 0, '2010-09-13 11:17:07', '2010-09-13 11:17:40', NULL, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 214.9900, 14, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (29, 1, 30000, '', 'SZC2148.jpg', 327.9900, 0, '2010-09-13 11:22:53', '2010-09-16 17:26:18', NULL, 0, 0, 0, 0, 3, 3, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 307.9900, 14, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (30, 1, 3000, '', 'SZC677.jpg', 19.1200, 0, '2010-09-13 11:25:26', '2010-09-13 11:25:51', NULL, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 19.1200, 15, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (31, 1, 3000, '', 'SZC1596.jpg', 14.7100, 0, '2010-09-13 11:27:39', '2010-09-13 11:27:58', NULL, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 14.7100, 15, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (32, 1, 3000, '', 'SZC740.jpg', 14.7100, 0, '2010-09-13 11:29:45', '2010-09-13 11:30:10', NULL, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 14.7100, 15, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (33, 1, 3000, '', 'SZC1360.jpg', 9.5800, 1, '2010-09-13 11:32:03', '2010-09-16 17:24:50', NULL, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0.0000, 15, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (34, 1, 3000, '', 'SZC711.jpg', 5.0000, 0, '2010-09-13 11:33:44', '2010-09-16 17:24:20', NULL, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0.0000, 15, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (35, 1, 3000, '', 'SZ09900001.jpg', 291.9900, 0, '2010-09-13 11:37:49', '2010-09-13 11:38:17', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 291.9900, 5, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (36, 1, 200, '', 'SMQ401.jpg', 400.3900, 0, '2010-09-13 11:43:43', '2010-09-13 11:44:03', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 285.9900, 17, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (37, 1, 2000, '', 'SMQ5661.jpg', 382.9900, 0, '2010-09-13 11:47:01', '2010-09-13 11:47:20', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 382.9900, 17, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (38, 1, 1000, '', '00078493.jpg', 4.9900, 0, '2010-09-13 11:56:36', '2010-09-13 11:56:59', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 4.9900, 18, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (39, 1, 3000, '', '00078656.jpg', 8.2100, 0, '2010-09-13 11:59:06', '2010-09-13 12:01:31', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 8.2100, 18, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (40, 1, 2000, '', '00081336.jpg', 24.9900, 0, '2010-09-13 13:47:36', '2010-09-13 13:48:20', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 23.7405, 19, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (41, 1, 230000, '', '00094556.jpg', 13.1100, 0, '2010-09-13 13:49:50', '2010-09-13 13:51:10', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 12.4545, 19, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (42, 1, 3000, '', '00079211.jpg', 2.5400, 0, '2010-09-13 13:53:06', '2010-09-13 13:53:45', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1.7900, 20, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (43, 1, 5000, '', '00085039.jpg', 8.7500, 0, '2010-09-13 13:55:54', '2010-09-13 13:56:23', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 8.7500, 20, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (44, 1, 3000, '', '00082631.jpg', 17.4900, 0, '2010-09-13 13:58:39', '2010-09-13 13:59:11', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 17.4900, 21, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (45, 1, 3000, '', '00141604.jpg', 17.9900, 0, '2010-09-13 14:00:43', '2010-09-13 14:01:04', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 17.9900, 21, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (46, 1, 2000, '', 'M3003.jpg', 47.5900, 0, '2010-09-13 14:04:38', '2010-09-16 17:10:47', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 33.9900, 23, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (47, 1, 3000, '', 'DSZZ091.jpg', 39.9900, 0, '2010-09-13 14:07:40', '2010-09-13 14:08:44', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 39.9900, 23, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (48, 1, 6000, '', 'DSZZ055.jpg', 0.0000, 0, '2010-09-13 14:13:48', NULL, NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0.0000, 23, 1, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (49, 1, 3000, '', 'WSM0228.jpg', 149.9900, 0, '2010-09-13 14:17:55', '2010-09-16 16:05:11', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 149.9900, 24, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (50, 1, 3000, '', 'WSM0216.jpg', 109.9900, 0, '2010-09-13 14:20:33', '2010-09-13 14:20:53', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 109.9900, 24, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (51, 1, 3000, '', 'WSM0201.jpg', 129.9900, 0, '2010-09-13 14:22:18', '2010-09-16 16:04:52', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 129.9900, 24, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (52, 1, 3000, '', '156mm.jpg', 50.9900, 0, '2010-09-13 14:25:58', '2010-09-13 14:29:10', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 50.9900, 25, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (53, 1, 0, '', '00094990.jpg', 189.9900, 0, '2010-09-13 14:28:45', '2010-09-16 16:06:04', '2019-12-31 00:00:00', 3, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 189.9900, 25, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (54, 1, 6000, '', 'PMBZXZ0049.jpg', 169.9900, 0, '2010-09-13 14:31:27', '2010-09-16 16:06:42', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 169.9900, 25, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (55, 1, 3000, '', '0567-HY-3083C.jpg', 99.9900, 0, '2010-09-13 14:36:13', '2010-09-13 14:36:29', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 99.9900, 28, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (56, 1, 3000, '', '00114259.jpg', 169.9900, 0, '2010-09-13 14:42:31', '2010-09-13 14:43:06', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 169.9900, 28, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (57, 1, 300, '', '0923-T19.jpg', 209.9900, 0, '2010-09-13 14:51:52', '2010-09-13 14:52:18', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 149.9900, 29, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (58, 1, 3000, '', '00096950.jpg', 49.9900, 0, '2010-09-13 14:56:50', '2010-09-13 14:57:45', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 49.9900, 29, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (59, 1, 300, '', '00078860.jpg', 238.9000, 0, '2010-09-13 15:00:31', '2010-09-13 15:01:59', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 238.9000, 30, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (60, 1, 3000, '', '00061371.jpg', 30.9600, 0, '2010-09-13 15:03:53', '2010-09-13 15:04:26', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 30.9600, 30, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (61, 1, 3000, '', '0718-28031.jpg', 49.9900, 0, '2010-09-13 15:06:59', '2010-09-13 15:07:21', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 48.0000, 31, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (62, 1, 3000, '', '0718-28008.jpg', 39.9300, 0, '2010-09-13 15:10:38', '2010-09-13 15:11:05', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 39.9300, 31, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (63, 1, 1000, '', 'SMQ5725.jpg', 45.9900, 0, '2010-09-13 15:13:36', '2010-09-13 15:14:01', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 45.9900, 21, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (64, 1, 200, '', 'SZY1735.jpg', 19.9900, 0, '2010-09-13 15:17:37', '2010-09-16 17:33:21', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 19.9900, 33, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (65, 1, 2000, '', 'JSZ036.jpg', 14.9900, 0, '2010-09-13 15:21:36', '2010-09-13 15:21:55', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 14.9900, 33, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (66, 1, 1300, '', 'TL0220.jpg', 9.9900, 0, '2010-09-13 15:23:31', '2010-09-13 15:24:15', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 9.9900, 33, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (67, 1, 3000, '', '0801-11879.jpg', 24.9900, 0, '2010-09-13 15:26:07', '2010-09-13 15:26:29', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 24.9900, 34, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (68, 1, 4500, '', '0801-10562.jpg', 32.9900, 0, '2010-09-13 15:27:52', '2010-09-13 15:28:16', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 32.9900, 34, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (69, 1, 1500, '', '00115649.jpg', 34.9900, 0, '2010-09-13 15:29:30', '2010-09-13 15:29:54', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 34.9900, 34, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (70, 1, 2000, '', '0801-10587.jpg', 24.9900, 0, '2010-09-13 15:31:31', '2010-09-13 15:31:52', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 24.9900, 34, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (71, 1, 0, '', 'GZZQL0003.jpg', 14.9900, 0, '2010-09-13 15:35:28', '2010-09-13 15:36:05', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 14.9900, 36, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (72, 1, 3500, '', 'GZZQ001.jpg', 20.1900, 0, '2010-09-13 15:37:47', '2010-09-16 16:46:12', NULL, 10, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 12.9900, 36, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (73, 1, 3000, '', '0478-0412-11.jpg', 59.9900, 0, '2010-09-13 15:41:19', '2010-09-13 15:41:39', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 59.9900, 37, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (74, 1, 6000, '', '0478-0809-5.jpg', 59.9900, 0, '2010-09-13 15:50:20', '2010-09-13 15:50:45', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 59.9900, 37, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (75, 1, 1000, 'FDSF23', 'YCSM0924-B012A.jpg', 39.9900, 0, '2010-09-13 15:54:27', '2010-09-16 16:46:47', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 39.9900, 38, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (76, 1, 2000, '', '0928-0512-1043-B73.jpg', 44.9900, 0, '2010-09-13 15:56:40', '2010-09-13 15:57:06', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 44.9900, 38, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (77, 1, 3000, '', 'H300404896730.jpg', 39.9900, 0, '2010-09-13 16:02:23', '2010-09-16 17:20:39', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 39.9900, 40, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (78, 1, 3000, '', 'GWS-DD-5030.jpg', 4.9900, 0, '2010-09-13 16:08:32', '2010-09-13 16:08:57', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 4.9900, 40, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (79, 1, 6000, '', 'GWPRO002S3D.jpg', 3.9900, 0, '2010-09-13 16:10:29', '2010-09-16 17:20:53', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 3.9900, 40, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (80, 1, 90000, '', '51807.jpg', 1.9900, 0, '2010-09-13 16:12:42', '2010-09-16 17:11:14', '2019-12-31 00:00:00', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 8, 0, 0, 0, 1.0000, 40, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (81, 1, 3000, '', '51911.jpg', 35.9900, 0, '2010-09-13 16:14:27', '2010-09-16 16:08:16', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 35.9900, 40, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (82, 1, 50000, '', '00077761.jpg', 2.5000, 0, '2010-09-13 16:18:23', '2010-09-13 16:18:57', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 2.5000, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (83, 1, 6000, '', '00081966.jpg', 15.7600, 0, '2010-09-13 16:20:26', '2010-09-16 16:46:12', NULL, 100, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 15.7600, 42, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (84, 1, 6000, 'MR002', '00124525.jpg', 7.4900, 0, '2010-09-13 16:24:51', '2010-09-16 16:46:47', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 7.4900, 43, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (85, 1, 5000, '', '00122590.jpg', 8.7900, 0, '2010-09-13 16:26:32', '2010-09-13 16:26:56', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 8.7900, 43, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (89, 1, 3000, '', '27020.jpg', 79.9900, 0, '2010-09-13 16:58:15', '2010-09-16 16:46:12', NULL, 500, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 79.9900, 46, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (90, 1, 3600, 'MZISI001', '065118862619.jpg', 79.9900, 0, '2010-09-13 16:59:50', '2010-09-16 16:46:47', NULL, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 75.0000, 46, 0, 0, 0, 0, 0, 0);
INSERT INTO `products` VALUES (91, 1, 200, '', '00094915.jpg', 28.9900, 0, '2010-09-13 17:04:25', '2010-09-16 16:46:12', NULL, 50, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 28.9900, 49, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `products_attributes`
-- 

CREATE TABLE `products_attributes` (
  `products_attributes_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `options_id` int(11) NOT NULL default '0',
  `options_values_id` int(11) NOT NULL default '0',
  `options_values_price` decimal(15,4) NOT NULL default '0.0000',
  `price_prefix` char(1) NOT NULL default '',
  `products_options_sort_order` int(11) NOT NULL default '0',
  `product_attribute_is_free` tinyint(1) NOT NULL default '0',
  `products_attributes_weight` float NOT NULL default '0',
  `products_attributes_weight_prefix` char(1) NOT NULL default '',
  `attributes_display_only` tinyint(1) NOT NULL default '0',
  `attributes_default` tinyint(1) NOT NULL default '0',
  `attributes_discounted` tinyint(1) NOT NULL default '1',
  `attributes_image` varchar(64) default NULL,
  `attributes_price_base_included` tinyint(1) NOT NULL default '1',
  `attributes_price_onetime` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_offset` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_onetime` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_factor_onetime_offset` decimal(15,4) NOT NULL default '0.0000',
  `attributes_qty_prices` text,
  `attributes_qty_prices_onetime` text,
  `attributes_price_words` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_words_free` int(4) NOT NULL default '0',
  `attributes_price_letters` decimal(15,4) NOT NULL default '0.0000',
  `attributes_price_letters_free` int(4) NOT NULL default '0',
  `attributes_required` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`products_attributes_id`),
  KEY `idx_id_options_id_values_zen` (`products_id`,`options_id`,`options_values_id`),
  KEY `idx_opt_sort_order_zen` (`products_options_sort_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

-- 
-- 导出表中的数据 `products_attributes`
-- 

INSERT INTO `products_attributes` VALUES (1, 31, 1, 1, 0.0000, '+', 1, 1, 0, '+', 0, 1, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (2, 31, 1, 2, 10.0000, '+', 2, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (3, 31, 1, 4, 10.0000, '+', 4, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (4, 31, 1, 3, 10.0000, '+', 3, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (5, 31, 2, 6, 0.0000, '+', 6, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (6, 31, 2, 7, 0.0000, '+', 7, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (7, 31, 4, 8, 0.0000, '+', 8, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (8, 31, 5, 11, 0.0000, '+', 0, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (9, 31, 5, 10, 0.0000, '+', 0, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (10, 31, 5, 9, 0.0000, '+', 0, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (11, 29, 5, 11, 0.0000, '+', 0, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (12, 29, 5, 10, 0.0000, '+', 0, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (13, 29, 5, 9, 0.0000, '+', 0, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (41, 29, 2, 5, 10.0000, '+', 5, 1, 5, '+', 0, 1, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (15, 29, 2, 6, 0.0000, '+', 6, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (16, 29, 2, 7, 0.0000, '+', 7, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (17, 6, 1, 2, 0.0000, '+', 2, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (18, 6, 1, 4, 0.0000, '+', 4, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (19, 6, 1, 12, 0.0000, '+', 0, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (20, 6, 1, 3, 0.0000, '+', 3, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (21, 6, 1, 1, 0.0000, '+', 1, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (22, 90, 1, 3, 0.0000, '+', 3, 1, 0, '+', 0, 0, 1, 'attributes/2.png', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (23, 90, 1, 1, 0.0000, '+', 1, 1, 0, '+', 0, 0, 1, 'attributes/3.png', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (24, 90, 2, 5, 0.0000, '+', 5, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (25, 90, 2, 6, 0.0000, '+', 6, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (26, 90, 2, 7, 0.0000, '+', 7, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (27, 43, 5, 11, 0.0000, '+', 0, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (28, 43, 5, 10, 0.0000, '+', 0, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (29, 43, 5, 9, 0.0000, '+', 0, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (30, 43, 5, 12, 10.0000, '+', 0, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (31, 81, 2, 5, 0.0000, '+', 5, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (32, 81, 2, 6, 0.0000, '+', 6, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (33, 81, 2, 7, 0.0000, '+', 7, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (34, 61, 4, 8, 0.0000, '+', 8, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (37, 4, 1, 4, 0.0000, '+', 4, 1, 0, '+', 0, 0, 1, 'attributes/4.png', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (36, 4, 1, 3, 0.0000, '+', 3, 1, 0, '+', 0, 0, 1, 'attributes/2.png', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (38, 29, 4, 8, 0.0000, '+', 8, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (39, 29, 1, 2, 0.0000, '+', 2, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (40, 29, 1, 4, 0.0000, '+', 4, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (42, 65, 2, 5, 0.0000, '+', 5, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (43, 65, 2, 6, 0.0000, '+', 6, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (44, 65, 2, 7, 0.0000, '+', 7, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (45, 29, 3, 13, 0.0000, '+', 0, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);
INSERT INTO `products_attributes` VALUES (46, 29, 6, 14, 0.0000, '+', 0, 1, 0, '+', 0, 0, 1, '', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '', '', 0.0000, 0, 0.0000, 0, 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `products_attributes_download`
-- 

CREATE TABLE `products_attributes_download` (
  `products_attributes_id` int(11) NOT NULL default '0',
  `products_attributes_filename` varchar(255) NOT NULL default '',
  `products_attributes_maxdays` int(2) default '0',
  `products_attributes_maxcount` int(2) default '0',
  PRIMARY KEY  (`products_attributes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `products_attributes_download`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `products_description`
-- 

CREATE TABLE `products_description` (
  `products_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL default '1',
  `products_name` varchar(64) NOT NULL default '',
  `products_description` text,
  `products_url` varchar(255) default NULL,
  `products_viewed` int(5) default '0',
  PRIMARY KEY  (`products_id`,`language_id`),
  KEY `idx_products_name_zen` (`products_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

-- 
-- 导出表中的数据 `products_description`
-- 

INSERT INTO `products_description` VALUES (1, 2, 'W003 Dual Card Quad Band TV WIFI JAVA Touch Screen Cell Phone Wh', 'Highlights\r\nFull-Screen View - Full-Screen View provides crystal-clear viewing and eliminates the need to squint to see those addresses in the contact book. \r\nDual SIM - This phone comes with Dual SIM technology, allowing you to switch easily between two SIM cards/phone numbers without having to physically take them out and swap them over-saving you time and hassle. \r\nFully Unlocked - Works on all four main GSM frequency bands for great reception world wide. \r\nFM Radio - A built-in FM tuner lets you tune into your favorite radio station wherever you are – great for chilling out and relaxing to some music whenever you feel like taking a break from the daily grind. \r\nBluetooth - Another feature of this great cell phone is its Bluetooth capability. Bluetooth allows the phone to communicate without devices, such as hands free headsets, wirelessly-a great solution for people constantly on the move. It also provides a safe and easy way to have a phone conversation while driving. \r\nJAVA - Built-in Java technology means you can get the latest Apps to use on this phone. Whether for business or pleasure, this phone provides a great platform for any Java-based application you want to run. \r\nTV-Enabled - Want to catch your favorite TV show while you’re out and about, or your team is playing and you’re nowhere near home? Not to worry, a powerful built-in analogue antenna will pick up all your favorite analogue TV channels for free! \r\nGravity Sensor - Looking for something a little more interesting in navigating your phone – try the gravity acceleration sensor. This nifty piece of technology lets you navigate your phone''s options without ever having to touch a button or screen. Just tilt and shake! \r\nDual Camera - Front and rear lenses for a more versatile shot. \r\nWiFi - Check emails or just surf the Web with advanced WiFi technology. News, e-mails, games, anything you want is at your finger tips! \r\nTouchscreen - Easy-to-use and responsive touchscreen allows for smooth navigating. No more do you have to worry about trying to press all those tiny little buttons – Touchscreen will make using your phone a breeze!', '', 0);
INSERT INTO `products_description` VALUES (1, 1, 'W003 Dual Card Quad Band TV WIFI JAVA Touch Screen Cell Phone Wh', 'Highlights\r\nFull-Screen View - Full-Screen View provides crystal-clear viewing and eliminates the need to squint to see those addresses in the contact book. \r\nDual SIM - This phone comes with Dual SIM technology, allowing you to switch easily between two SIM cards/phone numbers without having to physically take them out and swap them over-saving you time and hassle. \r\nFully Unlocked - Works on all four main GSM frequency bands for great reception world wide. \r\nFM Radio - A built-in FM tuner lets you tune into your favorite radio station wherever you are – great for chilling out and relaxing to some music whenever you feel like taking a break from the daily grind. \r\nBluetooth - Another feature of this great cell phone is its Bluetooth capability. Bluetooth allows the phone to communicate without devices, such as hands free headsets, wirelessly-a great solution for people constantly on the move. It also provides a safe and easy way to have a phone conversation while driving. \r\nJAVA - Built-in Java technology means you can get the latest Apps to use on this phone. Whether for business or pleasure, this phone provides a great platform for any Java-based application you want to run. \r\nTV-Enabled - Want to catch your favorite TV show while you’re out and about, or your team is playing and you’re nowhere near home? Not to worry, a powerful built-in analogue antenna will pick up all your favorite analogue TV channels for free! \r\nGravity Sensor - Looking for something a little more interesting in navigating your phone – try the gravity acceleration sensor. This nifty piece of technology lets you navigate your phone''s options without ever having to touch a button or screen. Just tilt and shake! \r\nDual Camera - Front and rear lenses for a more versatile shot. \r\nWiFi - Check emails or just surf the Web with advanced WiFi technology. News, e-mails, games, anything you want is at your finger tips! \r\nTouchscreen - Easy-to-use and responsive touchscreen allows for smooth navigating. No more do you have to worry about trying to press all those tiny little buttons – Touchscreen will make using your phone a breeze!', '', 4);
INSERT INTO `products_description` VALUES (2, 2, 'FLY YANG Hiphone F003 Dual Card Quad Band JAVA WIFI TV Touch Scr', 'Highlights\r\niPhone-Style Menu - Slick and familiar touchscreen menu has everything you need \r\nWiFi - Check emails, connect online, or surf the Web with advanced WiFi technology. \r\nTV-Enabled - Powerful analog antenna picks up your favorite TV channels for free! \r\nDual Camera - Front and rear lenses for a more versatile shot.', '', 0);
INSERT INTO `products_description` VALUES (2, 1, 'FLY YANG Hiphone F003 Dual Card Quad Band JAVA WIFI TV Touch Scr', 'Highlights\r\niPhone-Style Menu - Slick and familiar touchscreen menu has everything you need \r\nWiFi - Check emails, connect online, or surf the Web with advanced WiFi technology. \r\nTV-Enabled - Powerful analog antenna picks up your favorite TV channels for free! \r\nDual Camera - Front and rear lenses for a more versatile shot.', '', 7);
INSERT INTO `products_description` VALUES (3, 2, 'J8 WiFi TV Quad Band Dual Card Java Touch Screen Cell Phone Whit', 'Highlights\r\nWiFi - Check emails or just surf the Web with advanced WiFi technology. News, e-mails, games, anything you want is at your finger tips! \r\nTouchscreen - Easy-to-use and responsive touchscreen allows for smooth navigating. No more do you have to worry about trying to press all those tiny little buttons – Touchscreen will make using your phone a breeze! \r\nDual SIM - This phone comes with Dual SIM technology, allowing you to switch easily between two SIM cards/phone numbers without having to physically take them out and swap them over-saving you time and hassle. \r\nFully Unlocked - Works on all four main GSM frequency bands for great reception world wide. \r\nGSM850/900/1800/1900MHz. \r\nBluetooth - Another feature of this great cell phone is its Bluetooth capability. Bluetooth allows the phone to communicate without devices, such as hands free headsets, wirelessly-a great solution for people constantly on the move. It also provides a safe and easy way to have a phone conversation while driving. \r\nJAVA - Built-in Java technology means you can get the latest Apps to use on this phone. Whether for business or pleasure, this phone provides a great platform for any Java-based application you want to run. \r\nTV-Enabled - Want to catch your favorite TV show while you’re out and about, or your team is playing and you’re nowhere near home? Not to worry, a powerful built-in analogue antenna will pick up all your favorite analogue TV channels for free! \r\nFM Radio - A built-in FM tuner lets you tune into your favorite radio station wherever you are – great for chilling out and relaxing to some music whenever you feel like taking a break from the daily grind. \r\nDual Camera - Front and rear lenses for a more versatile shot. \r\nGravity Sensor - Looking for something a little more interesting in navigating your phone – try the gravity acceleration sensor. This nifty piece of technology lets you navigate your phone''s options without ever having to touch a button or screen. Just tilt and shake! G-sensor \r\nFull-Screen View - Full-Screen View provides crystal-clear viewing and eliminates the need to squint to see those addresses in the contact book.', '', 0);
INSERT INTO `products_description` VALUES (3, 1, 'J8 WiFi TV Quad Band Dual Card Java Touch Screen Cell Phone Whit', 'Highlights\r\nWiFi - Check emails or just surf the Web with advanced WiFi technology. News, e-mails, games, anything you want is at your finger tips! \r\nTouchscreen - Easy-to-use and responsive touchscreen allows for smooth navigating. No more do you have to worry about trying to press all those tiny little buttons – Touchscreen will make using your phone a breeze! \r\nDual SIM - This phone comes with Dual SIM technology, allowing you to switch easily between two SIM cards/phone numbers without having to physically take them out and swap them over-saving you time and hassle. \r\nFully Unlocked - Works on all four main GSM frequency bands for great reception world wide. \r\nGSM850/900/1800/1900MHz. \r\nBluetooth - Another feature of this great cell phone is its Bluetooth capability. Bluetooth allows the phone to communicate without devices, such as hands free headsets, wirelessly-a great solution for people constantly on the move. It also provides a safe and easy way to have a phone conversation while driving. \r\nJAVA - Built-in Java technology means you can get the latest Apps to use on this phone. Whether for business or pleasure, this phone provides a great platform for any Java-based application you want to run. \r\nTV-Enabled - Want to catch your favorite TV show while you’re out and about, or your team is playing and you’re nowhere near home? Not to worry, a powerful built-in analogue antenna will pick up all your favorite analogue TV channels for free! \r\nFM Radio - A built-in FM tuner lets you tune into your favorite radio station wherever you are – great for chilling out and relaxing to some music whenever you feel like taking a break from the daily grind. \r\nDual Camera - Front and rear lenses for a more versatile shot. \r\nGravity Sensor - Looking for something a little more interesting in navigating your phone – try the gravity acceleration sensor. This nifty piece of technology lets you navigate your phone''s options without ever having to touch a button or screen. Just tilt and shake! G-sensor \r\nFull-Screen View - Full-Screen View provides crystal-clear viewing and eliminates the need to squint to see those addresses in the contact book.', '', 0);
INSERT INTO `products_description` VALUES (4, 2, 'E71 Style Dual Card Quad Band TV QWERTY Keypad Cell Phone Gray a', 'Highlights\r\nDual SIM -  Dual working(Dual standby). \r\nFM Radio - Pick up your favorite FM radio stations wherever you are. \r\nBluetooth - High speed wireless technology. \r\nFull Screen View - Crystal clear viewing with our cinematic full-screen mode. \r\nFully Unlocked - Works on all four main GSM frequency bands for great reception world wide \r\nUltra thin - Slim and compact so it disappears in your pocket when not in use. Ultra thin phones are smart and efficient. \r\nMetal Cover  - Sleek and strong to keep your phone protected while looking great! \r\nQWERTY Keypad - Full QWERTY keypad for ease of use. \r\nTV-Enabled - Powerful analog antenna picks up your favorite TV channels for free! \r\nChange the wallpaper and song by shaking the phone \r\nFlashlight – help you take clear photos', '', 0);
INSERT INTO `products_description` VALUES (4, 1, 'E71 Style Dual Card Quad Band TV QWERTY Keypad Cell Phone Gray a', 'Highlights\r\nDual SIM -  Dual working(Dual standby). \r\nFM Radio - Pick up your favorite FM radio stations wherever you are. \r\nBluetooth - High speed wireless technology. \r\nFull Screen View - Crystal clear viewing with our cinematic full-screen mode. \r\nFully Unlocked - Works on all four main GSM frequency bands for great reception world wide \r\nUltra thin - Slim and compact so it disappears in your pocket when not in use. Ultra thin phones are smart and efficient. \r\nMetal Cover  - Sleek and strong to keep your phone protected while looking great! \r\nQWERTY Keypad - Full QWERTY keypad for ease of use. \r\nTV-Enabled - Powerful analog antenna picks up your favorite TV channels for free! \r\nChange the wallpaper and song by shaking the phone \r\nFlashlight – help you take clear photos', '', 5);
INSERT INTO `products_description` VALUES (5, 2, 'Mini N97 Qaud Band Dual Card TV Touch Screen Bar Cell Phone (2GB', 'Highlights\r\nDual SIM - This phone comes with Dual SIM technology, allowing you to switch easily between two SIM cards/phone numbers without having to physically take them out and swap them over-saving you time and hassle. \r\nFully Unlocked - Works on all four main GSM frequency bands for great reception world wide. \r\nFM Radio - A built-in FM tuner lets you tune into your favorite radio station wherever you are – great for chilling out and relaxing to some music whenever you feel like taking a break from the daily grind. \r\nBluetooth - Another feature of this great cell phone is its Bluetooth capability. Bluetooth allows the phone to communicate without devices, such as hands free headsets, wirelessly-a great solution for people constantly on the move. It also provides a safe and easy way to have a phone conversation while driving. \r\nTV-Enabled - Want to catch your favorite TV show while you’re out and about, or your team is playing and you’re nowhere near home? Not to worry, a powerful built-in analogue antenna will pick up all your favorite analogue TV channels for free! \r\nLow Price - Our best value phones with an unbeatable feature/price ratio. \r\nDual Camera - Front and rear lenses for a more versatile shot. \r\nTouch screen - Easy-to-use and responsive touchscreen allows for smooth navigating. No more do you have to worry about trying to press all those tiny little buttons – Touchscreen will make using your phone a breeze!', '', 0);
INSERT INTO `products_description` VALUES (5, 1, 'Mini N97 Qaud Band Dual Card TV Touch Screen Bar Cell Phone (2GB', 'Highlights\r\nDual SIM - This phone comes with Dual SIM technology, allowing you to switch easily between two SIM cards/phone numbers without having to physically take them out and swap them over-saving you time and hassle. \r\nFully Unlocked - Works on all four main GSM frequency bands for great reception world wide. \r\nFM Radio - A built-in FM tuner lets you tune into your favorite radio station wherever you are – great for chilling out and relaxing to some music whenever you feel like taking a break from the daily grind. \r\nBluetooth - Another feature of this great cell phone is its Bluetooth capability. Bluetooth allows the phone to communicate without devices, such as hands free headsets, wirelessly-a great solution for people constantly on the move. It also provides a safe and easy way to have a phone conversation while driving. \r\nTV-Enabled - Want to catch your favorite TV show while you’re out and about, or your team is playing and you’re nowhere near home? Not to worry, a powerful built-in analogue antenna will pick up all your favorite analogue TV channels for free! \r\nLow Price - Our best value phones with an unbeatable feature/price ratio. \r\nDual Camera - Front and rear lenses for a more versatile shot. \r\nTouch screen - Easy-to-use and responsive touchscreen allows for smooth navigating. No more do you have to worry about trying to press all those tiny little buttons – Touchscreen will make using your phone a breeze!', '', 0);
INSERT INTO `products_description` VALUES (6, 2, 'K900 Low Price Dual Card Torch FM Radio QWERTY Keypad Cell Phone', 'Highlights\r\nDual SIM -  Dual working(Dual standby). \r\nFM Radio - Pick up your favorite FM radio stations wherever you are. \r\nLow Price - Our best value phones with an unbeatable feature/price ratio. \r\nQWERTY Keypad - Full QWERTY keypad for ease of use.', '', 0);
INSERT INTO `products_description` VALUES (6, 1, 'K900 Low Price Dual Card Torch FM Radio QWERTY Keypad Cell Phone', 'Highlights\r\nDual SIM -  Dual working(Dual standby). \r\nFM Radio - Pick up your favorite FM radio stations wherever you are. \r\nLow Price - Our best value phones with an unbeatable feature/price ratio. \r\nQWERTY Keypad - Full QWERTY keypad for ease of use.', '', 0);
INSERT INTO `products_description` VALUES (7, 2, 'HD Waterproof Watch Camera 1280*960@30FPS Under Water 30M 4G(YPY', 'Highlights\r\nVioce Recording \r\nVideo Recording \r\nPicture Shooting \r\nPC Camera \r\nHD 1280*960, 30FPS \r\nWaterproof (under Water 30 m)', '', 1);
INSERT INTO `products_description` VALUES (7, 1, 'HD Waterproof Watch Camera 1280*960@30FPS Under Water 30M 4G(YPY', 'Highlights\r\nVioce Recording \r\nVideo Recording \r\nPicture Shooting \r\nPC Camera \r\nHD 1280*960, 30FPS \r\nWaterproof (under Water 30 m)', '', 2);
INSERT INTO `products_description` VALUES (8, 2, 'H608 Quad Band Dual Card Dual Standby TV JAVA Dual Camera Shuttl', 'Highlights\r\nBluetooth - High speed wireless technology. \r\nFM Radio - Pick up your favorite FM radio stations wherever you are. \r\nDual SIM -  Dual working(Dual standby). \r\nFully Unlocked - Works on all four main GSM frequency bands for great reception world wide. \r\nTV-Enabled - Powerful analog antenna picks up your favorite TV channels for free! \r\nDual Camera - Front and rear lenses for a more versatile shot. \r\nJava Enabled - Get the latest cool Apps on your phone with Java technology! \r\nQWERTY Keyboard - Full QWERTY keyboard for ease of use. \r\nSlide Function - Fantastic multi-faceted technology transforms your phone in a flick of the wrist!', '', 0);
INSERT INTO `products_description` VALUES (8, 1, 'H608 Quad Band Dual Card Dual Standby TV JAVA Dual Camera Shuttl', 'Highlights\r\nBluetooth - High speed wireless technology. \r\nFM Radio - Pick up your favorite FM radio stations wherever you are. \r\nDual SIM -  Dual working(Dual standby). \r\nFully Unlocked - Works on all four main GSM frequency bands for great reception world wide. \r\nTV-Enabled - Powerful analog antenna picks up your favorite TV channels for free! \r\nDual Camera - Front and rear lenses for a more versatile shot. \r\nJava Enabled - Get the latest cool Apps on your phone with Java technology! \r\nQWERTY Keyboard - Full QWERTY keyboard for ease of use. \r\nSlide Function - Fantastic multi-faceted technology transforms your phone in a flick of the wrist!', '', 1);
INSERT INTO `products_description` VALUES (9, 2, 'V908 WIFI Quad Band Dual Card TV WIFI JAVA Dual Camera QWERTY Ke', 'Highlights\r\nFully Unlocked - Works on all four main GSM frequency bands for great reception world wide. \r\nDual SIM - This phone comes with Dual SIM technology, allowing you to switch easily between two SIM cards/phone numbers without having to physically take them out and swap them over-saving you time and hassle. \r\nFM Radio - A built-in FM tuner lets you tune into your favorite radio station wherever you are – great for chilling out and relaxing to some music whenever you feel like taking a break from the daily grind. \r\nBluetooth - Another feature of this great cell phone is its Bluetooth capability. Bluetooth allows the phone to communicate without devices, such as hands free headsets, wirelessly-a great solution for people constantly on the move. It also provides a safe and easy way to have a phone conversation while driving. \r\nWiFi - Check emails or just surf the Web with advanced WiFi technology. News, e-mails, games, anything you want is at your finger tips! \r\nDual Camera - Front and rear lenses for a more versatile shot. \r\nJAVA - Built-in Java technology means you can get the latest Apps to use on this phone. Whether for business or pleasure, this phone provides a great platform for any Java-based application you want to run. \r\nTV-Enabled - Want to catch your favorite TV show while you’re out and about, or your team is playing and you’re nowhere near home? Not to worry, a powerful built-in analogue antenna will pick up all your favorite analogue TV channels for free! \r\nQWERTY Keypad - No more having to bother with alpha-numeric keys and having predictive text mess up your message – type e-mails more easily and quickly with this full QWERTY keypad. \r\nTouchscreen - Easy-to-use and responsive touchscreen allows for smooth navigating. No more do you have to worry about trying to press all those tiny little buttons – Touchscreen will make using your phone a breeze! \r\n180 degree* Screen - Sideways or longways, your screen follows you. \r\nFull-Screen View - Full-Screen View provides crystal-clear viewing and eliminates the need to squint to see those addresses in the contact book.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nSpecification\r\nStorage \r\nInternal Memory  81.9M \r\nPacked with Memory Card  N/A \r\nSupport Extend Card   2G \r\nScreen \r\nDisplay Size   3.2inch \r\nScreen Resolution   QVGA(240×320 pixels) \r\nScreen Type   TFT \r\nDisplay Color   256K \r\nSupport Format  \r\nRingtones Type   Polyphonic/MP3 \r\nAudio File Format  MP4/WAV/AMR/MID/AWB \r\nVideo File Format  3GP/MP4\r\n \r\nImage File Format  JPEG/BMP/GIF/PNG \r\nE-book Format  TXT \r\nFM Radio  Yes \r\nData Transfer & Connectivity  \r\nData Transfer   USB/Bluetooth \r\nMobile internet  WAP \r\nGPRS  Yes \r\nCamera \r\nCamera Pictrue Resolution  1280×960/1600×1200/640×480/240×400/400×240\r\n \r\nBattery \r\nStand-by Time   Up to 400 hours \r\nTalk Time   Up to 4 hours \r\nPower \r\ncharger  USB/Travel Charger \r\nInput \r\nInput  Handwrite/Keypad \r\nGeneral \r\nAnnounced  2010.July \r\nLanguages  English,French,Spanish,Portuguese,Italian,German,Bahasa Melayu,Bahasa Indonesia,Russian,Arabic,Turkish,Greek \r\nPhone Book  2000 Entries \r\nMessaging  SMS/MMS \r\nColor  White\r\n \r\nDimensions/W*D*H  110×57×15mm \r\nNet Weight   0.154Kg \r\nWhat''s in the Box  1× Cellphone\r\n1× Wired stereo earphones with built-in MIC and clip\r\n2× Rechargeable Li-ion battery\r\n1× Phone to USB cable\r\n1× Power adapter (100-240V 50/60Hz)\r\n1× User manual - English\r\n \r\n\r\n\r\n\r\n\r\nAdditional Features:\r\nWIFI \r\nDual Camera \r\nTV Function \r\nJAVA \r\nFlash Light \r\nDual cards standby phone \r\nSupport memory card \r\nMP3 / MP4 player \r\nCalendar \r\nAlarm \r\nWorldtime \r\nCalculator \r\nStopwatch \r\nBluetooth \r\nEbook reader \r\nMSN \r\nFacebook \r\nWAP \r\nMMS', '', 0);
INSERT INTO `products_description` VALUES (9, 1, 'V908 WIFI Quad Band Dual Card TV WIFI JAVA Dual Camera QWERTY Ke', 'Highlights\r\nFully Unlocked - Works on all four main GSM frequency bands for great reception world wide. \r\nDual SIM - This phone comes with Dual SIM technology, allowing you to switch easily between two SIM cards/phone numbers without having to physically take them out and swap them over-saving you time and hassle. \r\nFM Radio - A built-in FM tuner lets you tune into your favorite radio station wherever you are – great for chilling out and relaxing to some music whenever you feel like taking a break from the daily grind. \r\nBluetooth - Another feature of this great cell phone is its Bluetooth capability. Bluetooth allows the phone to communicate without devices, such as hands free headsets, wirelessly-a great solution for people constantly on the move. It also provides a safe and easy way to have a phone conversation while driving. \r\nWiFi - Check emails or just surf the Web with advanced WiFi technology. News, e-mails, games, anything you want is at your finger tips! \r\nDual Camera - Front and rear lenses for a more versatile shot. \r\nJAVA - Built-in Java technology means you can get the latest Apps to use on this phone. Whether for business or pleasure, this phone provides a great platform for any Java-based application you want to run. \r\nTV-Enabled - Want to catch your favorite TV show while you’re out and about, or your team is playing and you’re nowhere near home? Not to worry, a powerful built-in analogue antenna will pick up all your favorite analogue TV channels for free! \r\nQWERTY Keypad - No more having to bother with alpha-numeric keys and having predictive text mess up your message – type e-mails more easily and quickly with this full QWERTY keypad. \r\nTouchscreen - Easy-to-use and responsive touchscreen allows for smooth navigating. No more do you have to worry about trying to press all those tiny little buttons – Touchscreen will make using your phone a breeze! \r\n180 degree* Screen - Sideways or longways, your screen follows you. \r\nFull-Screen View - Full-Screen View provides crystal-clear viewing and eliminates the need to squint to see those addresses in the contact book.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nSpecification\r\nStorage \r\nInternal Memory  81.9M \r\nPacked with Memory Card  N/A \r\nSupport Extend Card   2G \r\nScreen \r\nDisplay Size   3.2inch \r\nScreen Resolution   QVGA(240×320 pixels) \r\nScreen Type   TFT \r\nDisplay Color   256K \r\nSupport Format  \r\nRingtones Type   Polyphonic/MP3 \r\nAudio File Format  MP4/WAV/AMR/MID/AWB \r\nVideo File Format  3GP/MP4\r\n \r\nImage File Format  JPEG/BMP/GIF/PNG \r\nE-book Format  TXT \r\nFM Radio  Yes \r\nData Transfer & Connectivity  \r\nData Transfer   USB/Bluetooth \r\nMobile internet  WAP \r\nGPRS  Yes \r\nCamera \r\nCamera Pictrue Resolution  1280×960/1600×1200/640×480/240×400/400×240\r\n \r\nBattery \r\nStand-by Time   Up to 400 hours \r\nTalk Time   Up to 4 hours \r\nPower \r\ncharger  USB/Travel Charger \r\nInput \r\nInput  Handwrite/Keypad \r\nGeneral \r\nAnnounced  2010.July \r\nLanguages  English,French,Spanish,Portuguese,Italian,German,Bahasa Melayu,Bahasa Indonesia,Russian,Arabic,Turkish,Greek \r\nPhone Book  2000 Entries \r\nMessaging  SMS/MMS \r\nColor  White\r\n \r\nDimensions/W*D*H  110×57×15mm \r\nNet Weight   0.154Kg \r\nWhat''s in the Box  1× Cellphone\r\n1× Wired stereo earphones with built-in MIC and clip\r\n2× Rechargeable Li-ion battery\r\n1× Phone to USB cable\r\n1× Power adapter (100-240V 50/60Hz)\r\n1× User manual - English\r\n \r\n\r\n\r\n\r\n\r\nAdditional Features:\r\nWIFI \r\nDual Camera \r\nTV Function \r\nJAVA \r\nFlash Light \r\nDual cards standby phone \r\nSupport memory card \r\nMP3 / MP4 player \r\nCalendar \r\nAlarm \r\nWorldtime \r\nCalculator \r\nStopwatch \r\nBluetooth \r\nEbook reader \r\nMSN \r\nFacebook \r\nWAP \r\nMMS', '', 0);
INSERT INTO `products_description` VALUES (10, 2, 'E75 Dual Card Quad Band TV WIFI JAVA QWERTY Keyboard Cell Phone ', 'Highlights\r\nFull-Screen View - Full-Screen View provides crystal-clear viewing and eliminates the need to squint to see those addresses in the contact book. \r\nDual SIM - This phone comes with Dual SIM technology, allowing you to switch easily between two SIM cards/phone numbers without having to physically take them out and swap them over-saving you time and hassle. \r\nFully Unlocked - Works on all four main GSM frequency bands for great reception world wide. \r\nFM Radio - A built-in FM tuner lets you tune into your favorite radio station wherever you are – great for chilling out and relaxing to some music whenever you feel like taking a break from the daily grind. \r\nBluetooth - Another feature of this great cell phone is its Bluetooth capability. Bluetooth allows the phone to communicate without devices, such as hands free headsets, wirelessly-a great solution for people constantly on the move. It also provides a safe and easy way to have a phone conversation while driving. \r\nJAVA - Built-in Java technology means you can get the latest Apps to use on this phone. Whether for business or pleasure, this phone provides a great platform for any Java-based application you want to run. \r\nTV-Enabled - Want to catch your favorite TV show while you’re out and about, or your team is playing and you’re nowhere near home? Not to worry, a powerful built-in analogue antenna will pick up all your favorite analogue TV channels for free! \r\nGravity Sensor - Looking for something a little more interesting in navigating your phone – try the gravity acceleration sensor. This nifty piece of technology lets you navigate your phone''s options without ever having to touch a button or screen. Just tilt and shake! \r\nDual Camera - Front and rear lenses for a more versatile shot. \r\nWiFi - Check emails or just surf the Web with advanced WiFi technology. News, e-mails, games, anything you want is at your finger tips! \r\nQWERTY Keypad - No more having to bother with alpha-numeric keys and having predictive text mess up your message – type e-mails more easily and quickly with this full QWERTY keypad.', '', 0);
INSERT INTO `products_description` VALUES (10, 1, 'E75 Dual Card Quad Band TV WIFI JAVA QWERTY Keyboard Cell Phone ', 'Highlights\r\nFull-Screen View - Full-Screen View provides crystal-clear viewing and eliminates the need to squint to see those addresses in the contact book. \r\nDual SIM - This phone comes with Dual SIM technology, allowing you to switch easily between two SIM cards/phone numbers without having to physically take them out and swap them over-saving you time and hassle. \r\nFully Unlocked - Works on all four main GSM frequency bands for great reception world wide. \r\nFM Radio - A built-in FM tuner lets you tune into your favorite radio station wherever you are – great for chilling out and relaxing to some music whenever you feel like taking a break from the daily grind. \r\nBluetooth - Another feature of this great cell phone is its Bluetooth capability. Bluetooth allows the phone to communicate without devices, such as hands free headsets, wirelessly-a great solution for people constantly on the move. It also provides a safe and easy way to have a phone conversation while driving. \r\nJAVA - Built-in Java technology means you can get the latest Apps to use on this phone. Whether for business or pleasure, this phone provides a great platform for any Java-based application you want to run. \r\nTV-Enabled - Want to catch your favorite TV show while you’re out and about, or your team is playing and you’re nowhere near home? Not to worry, a powerful built-in analogue antenna will pick up all your favorite analogue TV channels for free! \r\nGravity Sensor - Looking for something a little more interesting in navigating your phone – try the gravity acceleration sensor. This nifty piece of technology lets you navigate your phone''s options without ever having to touch a button or screen. Just tilt and shake! \r\nDual Camera - Front and rear lenses for a more versatile shot. \r\nWiFi - Check emails or just surf the Web with advanced WiFi technology. News, e-mails, games, anything you want is at your finger tips! \r\nQWERTY Keypad - No more having to bother with alpha-numeric keys and having predictive text mess up your message – type e-mails more easily and quickly with this full QWERTY keypad.', '', 0);
INSERT INTO `products_description` VALUES (11, 2, 'W968 Qaud Band Metal Cover Touch Screen FM Watch Cell Phone Blac', 'Highlights\r\nConstantly misplacing your phone or just don’t want to carry it around? Why not just strap it to your wrist? This fashionable watch doubling as a phone is the perfect combination of technology. Add it Bluetooth and this is possibly the most convenient phone around!\r\n\r\nBluetooth\r\nAnother feature of this great cell phone is its Bluetooth capability. Bluetooth allows the phone to communicate without devices, such as hands free headsets, wirelessly – a great solution for people constantly on the move. It also provides a safe and easy way to have a phone conversation while driving.\r\n\r\nFM Radio\r\nA built-in FM tuner lets you tune into your favorite radio station wherever you are – great for chilling out and relaxing to some music whenever you feel like taking a break from the daily grind.\r\n\r\nTouchscreen\r\nEasy-to-use and responsive touchscreen allows for smooth navigating. No more do you have to worry about trying to press all those tiny little buttons – Touchscreen will make using your phone a breeze!', '', 0);
INSERT INTO `products_description` VALUES (11, 1, 'W968 Qaud Band Metal Cover Touch Screen FM Watch Cell Phone Blac', 'Highlights\r\nConstantly misplacing your phone or just don’t want to carry it around? Why not just strap it to your wrist? This fashionable watch doubling as a phone is the perfect combination of technology. Add it Bluetooth and this is possibly the most convenient phone around!\r\n\r\nBluetooth\r\nAnother feature of this great cell phone is its Bluetooth capability. Bluetooth allows the phone to communicate without devices, such as hands free headsets, wirelessly – a great solution for people constantly on the move. It also provides a safe and easy way to have a phone conversation while driving.\r\n\r\nFM Radio\r\nA built-in FM tuner lets you tune into your favorite radio station wherever you are – great for chilling out and relaxing to some music whenever you feel like taking a break from the daily grind.\r\n\r\nTouchscreen\r\nEasy-to-use and responsive touchscreen allows for smooth navigating. No more do you have to worry about trying to press all those tiny little buttons – Touchscreen will make using your phone a breeze!', '', 3);
INSERT INTO `products_description` VALUES (12, 2, 'W980 Cool Stainless Steel Quad Band Bluetooth Mp3 / Mp4 Player W', 'Highlights\r\nStainless steel cell phone in watch style with crystal Decoration. \r\nTouch Screen - Easy-to-use and responsive touch screen function for smooth navigating. \r\nFully Unlocked - Works on all four main GSM frequency bands for great reception world wide \r\nFM Radio - Pick up your favorite FM radio stations wherever you are. \r\nBluetooth - High speed wireless technology.', '', 0);
INSERT INTO `products_description` VALUES (12, 1, 'W980 Cool Stainless Steel Quad Band Bluetooth Mp3 / Mp4 Player W', 'Highlights\r\nStainless steel cell phone in watch style with crystal Decoration. \r\nTouch Screen - Easy-to-use and responsive touch screen function for smooth navigating. \r\nFully Unlocked - Works on all four main GSM frequency bands for great reception world wide \r\nFM Radio - Pick up your favorite FM radio stations wherever you are. \r\nBluetooth - High speed wireless technology.', '', 0);
INSERT INTO `products_description` VALUES (13, 2, 'F3 Sports Tri Band Wrist Watch with Bluetooth Mp3/Mp4 Player Cel', 'Note:\r\nLightinthebox.com is offering some great phones with pretty high quality.The screen and outfit of those cell phones are delicate and detail focused.That means, we offer you a better price with such a high quality. Click here to find out more>>\r\n\r\nGreat Gifts w/ Purchase of the cheapest phones.\r\n--Get 2Gb TF card ($15) for free w/ purchase of None-Built in memory phones\r\n--Purchase Slide Phone ,Get Battery Charger ($5) for free\r\n--Purchase Hiphone ,and Add US$ 5.99 Get Solar Charger ($15)\r\n--Purchase Flip Phone ,and Add US$ 2.99 Get Bluetooth Headset ($10)\r\n--Purchase Wifi Cell Phone ,and Add US$ 2.99 Get Bluetooth Headset ($10)\r\n--Purchase Bar Phone and Add US$ 0.99,Get Battery Charger\r\n--All the promos can be cumulated', '', 0);
INSERT INTO `products_description` VALUES (13, 1, 'F3 Sports Tri Band Wrist Watch with Bluetooth Mp3/Mp4 Player Cel', 'Note:\r\nLightinthebox.com is offering some great phones with pretty high quality.The screen and outfit of those cell phones are delicate and detail focused.That means, we offer you a better price with such a high quality. Click here to find out more>>\r\n\r\nGreat Gifts w/ Purchase of the cheapest phones.\r\n--Get 2Gb TF card ($15) for free w/ purchase of None-Built in memory phones\r\n--Purchase Slide Phone ,Get Battery Charger ($5) for free\r\n--Purchase Hiphone ,and Add US$ 5.99 Get Solar Charger ($15)\r\n--Purchase Flip Phone ,and Add US$ 2.99 Get Bluetooth Headset ($10)\r\n--Purchase Wifi Cell Phone ,and Add US$ 2.99 Get Bluetooth Headset ($10)\r\n--Purchase Bar Phone and Add US$ 0.99,Get Battery Charger\r\n--All the promos can be cumulated', '', 0);
INSERT INTO `products_description` VALUES (14, 2, 'Waterproof IP Security Camera with WIFI and Night Vision(QW124)', 'Description: \r\nHighlights\r\nEasy to setup and use. So powerful in what it allows you to do. Feature-rich! The Skynet One - waterproof IP security camera with WIFI, night vision, and DVR functionality! When you can''t be there yourself, you can with Skynet One!\r\n\r\nSpecification\r\nWaterproof IP Security Camera with WIFI and Night Vision \r\nEasy Installation: Plug into power outlet \r\nIf using Ethernet, connect cable to camera \r\nIf using WIFI, connect antenna to camera \r\nInstall program on disk \r\nThe program generates an IP address \r\nPaste IP address into web browser and instantly view or record camera''s streamed videos \r\nHigh quality CMOS sensor \r\nAccess camera output from anywhere on the Web \r\nCan function with or without PC \r\nRecord 100 fps interpolated videos to your hard drive \r\nConnect through WiFi or LAN cable \r\nNightvision (24 IR LED''s) \r\nCamera sensor: 1/4 inch CMOS \r\nHorizontal Definition: 380 TV Lines \r\nLens: f=6.0mm \r\nMinimum Illumination: 0 Lux \r\nWhite balance: AUTO \r\nInfrared: Yes (24 LED lights) \r\nDaytime Effective Distance: 100 meters \r\nNighttime Effective Distance: 50 meters \r\nVideo Resolution: VGA (640x480), QVGA (320x240) \r\nVideo Frame Rate: VGA (30 fps interpolated to 100 fps), QVGA (30 fps interpolated to 100 fps) \r\nVideo Format: AVI (Motion JPEG) \r\nVideo File Size: ~ 30 Mb / minute (VGA) \r\nStill Image Format: JPEG \r\nIP Connectivity: Wired (RJ-45/10-100 Base T) or WIFI (802.11 b/g) \r\nWIFI Encryption: None, WEP, WPA-TKIP, WPA-AES, WPA2-AES, WPA2-TKIP + AES \r\nProtocols Supported: TCP/IP, DHCP, SMTP, HTTP, DDNS, UPNP, ICMP, FTP, DNS, UDP \r\nWaterproof: Yes \r\nRequires Computer: NO \r\nMulti-camera support: 4 \r\nBrowser Display: Single or Quad \r\nPower consumption: 3W \r\nCertification: CE, FCC \r\nDimensions: 170 mm (length) x 65 mm (diameter) \r\nManufacturers Ref: CDHC45N1MF3F \r\nRecording camera output is done through your IE browser Simply install the software on disk and it will add viewing and recording functionality to your browser \r\nSetup 4 cameras in order to monitor four different locations \r\nPackage Contents: IP Security Camera; WIFI Antenna; Power Adapter 100 240v; Mounting Kit; CD (English User Manual, Software) \r\nIn retail packaging', '', 0);
INSERT INTO `products_description` VALUES (14, 1, 'Waterproof IP Security Camera with WIFI and Night Vision(QW124)', 'Description: \r\nHighlights\r\nEasy to setup and use. So powerful in what it allows you to do. Feature-rich! The Skynet One - waterproof IP security camera with WIFI, night vision, and DVR functionality! When you can''t be there yourself, you can with Skynet One!\r\n\r\nSpecification\r\nWaterproof IP Security Camera with WIFI and Night Vision \r\nEasy Installation: Plug into power outlet \r\nIf using Ethernet, connect cable to camera \r\nIf using WIFI, connect antenna to camera \r\nInstall program on disk \r\nThe program generates an IP address \r\nPaste IP address into web browser and instantly view or record camera''s streamed videos \r\nHigh quality CMOS sensor \r\nAccess camera output from anywhere on the Web \r\nCan function with or without PC \r\nRecord 100 fps interpolated videos to your hard drive \r\nConnect through WiFi or LAN cable \r\nNightvision (24 IR LED''s) \r\nCamera sensor: 1/4 inch CMOS \r\nHorizontal Definition: 380 TV Lines \r\nLens: f=6.0mm \r\nMinimum Illumination: 0 Lux \r\nWhite balance: AUTO \r\nInfrared: Yes (24 LED lights) \r\nDaytime Effective Distance: 100 meters \r\nNighttime Effective Distance: 50 meters \r\nVideo Resolution: VGA (640x480), QVGA (320x240) \r\nVideo Frame Rate: VGA (30 fps interpolated to 100 fps), QVGA (30 fps interpolated to 100 fps) \r\nVideo Format: AVI (Motion JPEG) \r\nVideo File Size: ~ 30 Mb / minute (VGA) \r\nStill Image Format: JPEG \r\nIP Connectivity: Wired (RJ-45/10-100 Base T) or WIFI (802.11 b/g) \r\nWIFI Encryption: None, WEP, WPA-TKIP, WPA-AES, WPA2-AES, WPA2-TKIP + AES \r\nProtocols Supported: TCP/IP, DHCP, SMTP, HTTP, DDNS, UPNP, ICMP, FTP, DNS, UDP \r\nWaterproof: Yes \r\nRequires Computer: NO \r\nMulti-camera support: 4 \r\nBrowser Display: Single or Quad \r\nPower consumption: 3W \r\nCertification: CE, FCC \r\nDimensions: 170 mm (length) x 65 mm (diameter) \r\nManufacturers Ref: CDHC45N1MF3F \r\nRecording camera output is done through your IE browser Simply install the software on disk and it will add viewing and recording functionality to your browser \r\nSetup 4 cameras in order to monitor four different locations \r\nPackage Contents: IP Security Camera; WIFI Antenna; Power Adapter 100 240v; Mounting Kit; CD (English User Manual, Software) \r\nIn retail packaging', '', 0);
INSERT INTO `products_description` VALUES (15, 2, '4-Channel Video Multiplexer Embedded 2.4G Wireless Receiver and ', 'Highlights \r\nSupports real time 4 pictures display \r\nBuilt-in video multiplexer \r\n2.4G wireless receiver and camera\r\n\r\n\r\nSpecification\r\n Receiver \r\n Transmission Frequency  2.4GHz Digital\r\n \r\n Modulation Mode  FM \r\n Receive Channel  4-CH\r\n \r\n Unobstructed Effective Range  up to 100 meters \r\n Operating Temperature  0℃/50℃\r\n \r\n Video Output  1Vp-p@75Ω , S/N>38dB\r\n \r\n Audio  Output  10KΩ/200mVp-p\r\n \r\n Power Supply  AC Adapter\r\n \r\n Dimension  210x80x45mm \r\n Weight  0.4kg\r\n \r\n Camera \r\n Validity Pixel  PAL:628(H)x 582(V);   NTSC:510(H) x 492(V) \r\n Image Device  1/3" CMOS Sensor \r\n Horizontal Definition  380TV Line \r\n Angular Field of View  62° (f=6mm) \r\n \r\n Minimum Illumination  1Lux/F1.2 (Infrared LED ON)\r\n \r\n Power Supply  AC Adapter\r\n \r\n Dimension  ¢57mm x 67mm\r\n \r\n Weight  0.19kg', '', 0);
INSERT INTO `products_description` VALUES (15, 1, '4-Channel Video Multiplexer Embedded 2.4G Wireless Receiver and ', 'Highlights \r\nSupports real time 4 pictures display \r\nBuilt-in video multiplexer \r\n2.4G wireless receiver and camera\r\n\r\n\r\nSpecification\r\n Receiver \r\n Transmission Frequency  2.4GHz Digital\r\n \r\n Modulation Mode  FM \r\n Receive Channel  4-CH\r\n \r\n Unobstructed Effective Range  up to 100 meters \r\n Operating Temperature  0℃/50℃\r\n \r\n Video Output  1Vp-p@75Ω , S/N>38dB\r\n \r\n Audio  Output  10KΩ/200mVp-p\r\n \r\n Power Supply  AC Adapter\r\n \r\n Dimension  210x80x45mm \r\n Weight  0.4kg\r\n \r\n Camera \r\n Validity Pixel  PAL:628(H)x 582(V);   NTSC:510(H) x 492(V) \r\n Image Device  1/3" CMOS Sensor \r\n Horizontal Definition  380TV Line \r\n Angular Field of View  62° (f=6mm) \r\n \r\n Minimum Illumination  1Lux/F1.2 (Infrared LED ON)\r\n \r\n Power Supply  AC Adapter\r\n \r\n Dimension  ¢57mm x 67mm\r\n \r\n Weight  0.19kg', '', 0);
INSERT INTO `products_description` VALUES (16, 2, '2.4GHz Wireless Security Systems Tool Kit, 7-inch Digital Color ', 'Highlights\r\nLuxurious 2.4GHz Wireless Security Systems Tool Kit, 7-inch Digital Color TFT LCD, 2.4GHz Wireless Audio-visual Receiver Monitoring and 4PCS 2.4 GHz, OV Image Sensor Chip, 380 TV Lines, 24 IR LEDs,15 Meters Night Vision Scope, Security CCTV Wireless Color\r\n\r\nSpecification\r\nReceiver Specification:\r\n\r\nAspect Ration: 7 inch(16:9) \r\nDisplay Element: Color TFT LCD \r\nVideo System: PAL/NTSC \r\nActive Area: 154.08(mm) x 86.58(mm) \r\nResolution: 480(H) x RGB x 234(V) \r\nReceiver Channel: 4CH \r\nBrightness: 200cd/㎡ \r\nContrast Ratio: 300:1 \r\nDb Level: -90dB \r\nComposite Video (AV): One-way AV input \r\nOSD  Language: English \r\nInput Voltage: DC 12V \r\nMax Power Consumption: ≤8W \r\nCamera Specification:Imaging Sensor: OV Image Sensor Chip \r\nFrequency: 2.400~2.483MHz \r\nPixels: PAL: 628 x 582 \r\n        NTSC: 510 x 492 \r\nResolution: 380 TV Lines \r\nCamera Lights: 24 LED \r\nNight Vision Range: 15m \r\nLens Angle:  PAL: 60°\r\n             NTSC: 40° \r\nMinimum illumination: 1 Lux \r\nBandwidth: 25m \r\nAngular Field of View: 45°(F=60mm) \r\nPower Supply: DC + 5V \r\n\r\nFeatures:\r\n\r\n1. 7 inch TFT LCD  2.4GHz 4Channels Wireless AV Color Monitor. \r\n2. 4 Receiver Channel: \r\nCH1: 2414MHz, CH2: 2432MHz, CH3: 2450MHz, CH4: 2468MHz. \r\n3. PAL/NTSC System. \r\n4. Infrared LEDs for night-time vision, Effective night vision range: 15m. \r\n5. 380TV lines clear picture display. \r\n6. 24 LED Infrared Day&Night Security Color Camera. \r\n7. Low power consumption and high definition. \r\n8. Environmentally Friendly Design. \r\n9. Remote Control with Full Functions. \r\n\r\nItem Includes:\r\n\r\n1 x 7 inch TFT LCD 2.4GHz 4Channels Wireless AV Color Monitor \r\n4 x 2.4GHz, OV Chip, 380TVL, 24 LED Infrared Day&Night Security CCTV Wireless CMOS Color Camera \r\n1 x Adaptor for Monitor \r\n4 x Adaptor for Camera \r\n1 x RCA Connection Cable \r\n1 x Antenna \r\n1 x Standalone Remote Control', '', 0);
INSERT INTO `products_description` VALUES (16, 1, '2.4GHz Wireless Security Systems Tool Kit, 7-inch Digital Color ', 'Highlights\r\nLuxurious 2.4GHz Wireless Security Systems Tool Kit, 7-inch Digital Color TFT LCD, 2.4GHz Wireless Audio-visual Receiver Monitoring and 4PCS 2.4 GHz, OV Image Sensor Chip, 380 TV Lines, 24 IR LEDs,15 Meters Night Vision Scope, Security CCTV Wireless Color\r\n\r\nSpecification\r\nReceiver Specification:\r\n\r\nAspect Ration: 7 inch(16:9) \r\nDisplay Element: Color TFT LCD \r\nVideo System: PAL/NTSC \r\nActive Area: 154.08(mm) x 86.58(mm) \r\nResolution: 480(H) x RGB x 234(V) \r\nReceiver Channel: 4CH \r\nBrightness: 200cd/㎡ \r\nContrast Ratio: 300:1 \r\nDb Level: -90dB \r\nComposite Video (AV): One-way AV input \r\nOSD  Language: English \r\nInput Voltage: DC 12V \r\nMax Power Consumption: ≤8W \r\nCamera Specification:Imaging Sensor: OV Image Sensor Chip \r\nFrequency: 2.400~2.483MHz \r\nPixels: PAL: 628 x 582 \r\n        NTSC: 510 x 492 \r\nResolution: 380 TV Lines \r\nCamera Lights: 24 LED \r\nNight Vision Range: 15m \r\nLens Angle:  PAL: 60°\r\n             NTSC: 40° \r\nMinimum illumination: 1 Lux \r\nBandwidth: 25m \r\nAngular Field of View: 45°(F=60mm) \r\nPower Supply: DC + 5V \r\n\r\nFeatures:\r\n\r\n1. 7 inch TFT LCD  2.4GHz 4Channels Wireless AV Color Monitor. \r\n2. 4 Receiver Channel: \r\nCH1: 2414MHz, CH2: 2432MHz, CH3: 2450MHz, CH4: 2468MHz. \r\n3. PAL/NTSC System. \r\n4. Infrared LEDs for night-time vision, Effective night vision range: 15m. \r\n5. 380TV lines clear picture display. \r\n6. 24 LED Infrared Day&Night Security Color Camera. \r\n7. Low power consumption and high definition. \r\n8. Environmentally Friendly Design. \r\n9. Remote Control with Full Functions. \r\n\r\nItem Includes:\r\n\r\n1 x 7 inch TFT LCD 2.4GHz 4Channels Wireless AV Color Monitor \r\n4 x 2.4GHz, OV Chip, 380TVL, 24 LED Infrared Day&Night Security CCTV Wireless CMOS Color Camera \r\n1 x Adaptor for Monitor \r\n4 x Adaptor for Camera \r\n1 x RCA Connection Cable \r\n1 x Antenna \r\n1 x Standalone Remote Control', '', 0);
INSERT INTO `products_description` VALUES (17, 2, 'Card Reader MP3 Player Enclosure TF Card Support/5 Colors Availa', 'Highlights\r\nThis MP3 player is just like the iPod Shuffle – except that it’s only a fraction of the price. This player is perfect if you don’t want to carry a bulkier a player or if you are looking for something you can use while exercising.\r\nThis player is available in 5 colors and supports TF cards up to 4GB.\r\n\r\nSpecification\r\n\r\nStorage \r\nExpansion Slot  TF \r\nSupport Formats\r\n \r\nAudio Format\r\n  MP3, WMA, WMV\r\n \r\nControls\r\n \r\nControl Type  Button \r\nData Transfer  \r\nConnection Type   USB 2.0 \r\nCompatible Operating Systems   Microsoft Windows Vista,Windows 98/SE/ME/2000/XP,Linux 2.4.2 \r\nConnections \r\nHeadphones Jack   3.5 mm Stereo Jack \r\nBattery & Power  \r\nBattery Type   Built-in Rechargeable Lithium-Ion Battery \r\nWork Time   3-5 hours \r\nAudio Properties  \r\nMicrophone  Built- in \r\nGeneral \r\n\r\n \r\n \r\nProduct Type  MP3 Player \r\nSNR  85db \r\nColor  Black/Silver/Pink/Blue/Green\r\n \r\nNet Weight  0.06Kg\r\n \r\nDimension  50x30x8mm\r\n \r\nWhat''s in the box   1 Mp3 Player , 1 Power Adapter , 1 Earphone , 1 User Manual , 1 USB Cable', '', 0);
INSERT INTO `products_description` VALUES (17, 1, 'Card Reader MP3 Player Enclosure TF Card Support/5 Colors Availa', 'Highlights\r\nThis MP3 player is just like the iPod Shuffle – except that it’s only a fraction of the price. This player is perfect if you don’t want to carry a bulkier a player or if you are looking for something you can use while exercising.\r\nThis player is available in 5 colors and supports TF cards up to 4GB.\r\n\r\nSpecification\r\n\r\nStorage \r\nExpansion Slot  TF \r\nSupport Formats\r\n \r\nAudio Format\r\n  MP3, WMA, WMV\r\n \r\nControls\r\n \r\nControl Type  Button \r\nData Transfer  \r\nConnection Type   USB 2.0 \r\nCompatible Operating Systems   Microsoft Windows Vista,Windows 98/SE/ME/2000/XP,Linux 2.4.2 \r\nConnections \r\nHeadphones Jack   3.5 mm Stereo Jack \r\nBattery & Power  \r\nBattery Type   Built-in Rechargeable Lithium-Ion Battery \r\nWork Time   3-5 hours \r\nAudio Properties  \r\nMicrophone  Built- in \r\nGeneral \r\n\r\n \r\n \r\nProduct Type  MP3 Player \r\nSNR  85db \r\nColor  Black/Silver/Pink/Blue/Green\r\n \r\nNet Weight  0.06Kg\r\n \r\nDimension  50x30x8mm\r\n \r\nWhat''s in the box   1 Mp3 Player , 1 Power Adapter , 1 Earphone , 1 User Manual , 1 USB Cable', '', 0);
INSERT INTO `products_description` VALUES (18, 2, '1GB OLED MP3 Player with Clip Small LED Light (SZM574)', 'Highlights\r\nWith a small LED light on the  top side of the MP3 player,can be used as torch in darkness.\r\n\r\n\r\nSpecification\r\n\r\nStorage \r\nMemory Type   Flash Memory \r\nMemory Capacity   1GB \r\nScreen \r\nDisplay Type   OLED\r\n \r\nSupport Formats  \r\nAudio Format   MP3, WMA, WMV, WAV \r\nE- book Formats   TXT \r\nLyric Formats   LRC \r\nControls \r\nControl Type   Button \r\nData Transfer  \r\nConnection Type   USB 2.0 \r\nCompatible Operating Systems   Microsoft Windows Vista , Windows 98/SE/ME/2000/XP , Mac OS 10 , Linux 2.4.2 \r\nConnections \r\nHeadphones Jack   3.5 mm Stereo Jack \r\nBattery & Power  \r\nBattery Type   Built-in Rechargeable Lithium-Ion Battery \r\nWork Time   3--5 hours \r\nAudio Properties  \r\nMicrophone  Built- in \r\nBuilt in out Speaker   0.5 w \r\nGeneral \r\nProduct Type  MP3 / MP4 Player \r\nSNR  85db \r\nColor  Green\r\n \r\nDimensions/W*D*H  65x28x13mm \r\nLanguage  Multi- Languages \r\nNet Weight  0.12 \r\nWhat''s in the box   1 Mp3 Player , 1 User Manual , 1 Earphone , 1 Power Adapter , 1 USB Cable', '', 0);
INSERT INTO `products_description` VALUES (18, 1, '1GB OLED MP3 Player with Clip Small LED Light (SZM574)', 'Highlights\r\nWith a small LED light on the  top side of the MP3 player,can be used as torch in darkness.\r\n\r\n\r\nSpecification\r\n\r\nStorage \r\nMemory Type   Flash Memory \r\nMemory Capacity   1GB \r\nScreen \r\nDisplay Type   OLED\r\n \r\nSupport Formats  \r\nAudio Format   MP3, WMA, WMV, WAV \r\nE- book Formats   TXT \r\nLyric Formats   LRC \r\nControls \r\nControl Type   Button \r\nData Transfer  \r\nConnection Type   USB 2.0 \r\nCompatible Operating Systems   Microsoft Windows Vista , Windows 98/SE/ME/2000/XP , Mac OS 10 , Linux 2.4.2 \r\nConnections \r\nHeadphones Jack   3.5 mm Stereo Jack \r\nBattery & Power  \r\nBattery Type   Built-in Rechargeable Lithium-Ion Battery \r\nWork Time   3--5 hours \r\nAudio Properties  \r\nMicrophone  Built- in \r\nBuilt in out Speaker   0.5 w \r\nGeneral \r\nProduct Type  MP3 / MP4 Player \r\nSNR  85db \r\nColor  Green\r\n \r\nDimensions/W*D*H  65x28x13mm \r\nLanguage  Multi- Languages \r\nNet Weight  0.12 \r\nWhat''s in the box   1 Mp3 Player , 1 User Manual , 1 Earphone , 1 Power Adapter , 1 USB Cable', '', 0);
INSERT INTO `products_description` VALUES (19, 2, '1GB 1.8" TFT Screen MP4 / MP3 Players (Black) (E4U-175)', 'Description: \r\nHighlights:\r\nThis is one of the best price-for-performance portable media devices on the market. It comes with a 1GB of internal memory and a 1.8” TFT LCD screen. It’s loaded with features including FM radio, e-document manager, equalizer settings and a built-in microphone. AT only US$21.99 you will not be disappointed.\r\n\r\nSpecifications:\r\n1.8" TFT full display and super slim design \r\n1GB capacity \r\nVideo format: MTV AMV \r\nFM function \r\nFile format: mp1 mp2 mp3 WMA WMV ASF WAV \r\nJPEG picture browsing function \r\nE-document management \r\nBuilt-in microphone, record up 35 hours \r\nHigh speed USB port \r\nFirmware upgrading system \r\nMulti-play model \r\n7 Equalizer effects \r\nColor: Black \r\nRechargeable Li-Lon battery \r\nProduct size: 3.8*7.1*0.8 cm \r\nColor paper box size: 12*11*3.6 cm', '', 19);
INSERT INTO `products_description` VALUES (19, 1, '1GB 1.8" TFT Screen MP4 / MP3 Players (Black) (E4U-175)', 'Description: \r\nHighlights:\r\nThis is one of the best price-for-performance portable media devices on the market. It comes with a 1GB of internal memory and a 1.8” TFT LCD screen. It’s loaded with features including FM radio, e-document manager, equalizer settings and a built-in microphone. AT only US$21.99 you will not be disappointed.\r\n\r\nSpecifications:\r\n1.8" TFT full display and super slim design \r\n1GB capacity \r\nVideo format: MTV AMV \r\nFM function \r\nFile format: mp1 mp2 mp3 WMA WMV ASF WAV \r\nJPEG picture browsing function \r\nE-document management \r\nBuilt-in microphone, record up 35 hours \r\nHigh speed USB port \r\nFirmware upgrading system \r\nMulti-play model \r\n7 Equalizer effects \r\nColor: Black \r\nRechargeable Li-Lon battery \r\nProduct size: 3.8*7.1*0.8 cm \r\nColor paper box size: 12*11*3.6 cm', '', 4);
INSERT INTO `products_description` VALUES (20, 2, '1GB 3.0 Inch QVGA MP4/MP3 Player (HF153)', 'Description: \r\nHighlights\r\nThis is A Mini All-In-One MP4 Player \r\nTure Color TFT QVGA Panel (320x240 Pixels)-High Quality Video Output \r\nMusic, Video, Picture,Ebook, FM Radio, Voice Recorder, Game Function - All Included!', '', 0);
INSERT INTO `products_description` VALUES (20, 1, '1GB 3.0 Inch QVGA MP4/MP3 Player (HF153)', 'Description: \r\nHighlights\r\nThis is A Mini All-In-One MP4 Player \r\nTure Color TFT QVGA Panel (320x240 Pixels)-High Quality Video Output \r\nMusic, Video, Picture,Ebook, FM Radio, Voice Recorder, Game Function - All Included!', '', 0);
INSERT INTO `products_description` VALUES (21, 2, 'Screen Protectors Set for NDS Lite', 'Overview:\r\n\r\nPET Material Made in Japan \r\nTri-layer design for best filter and protection \r\nAnti-reflect layer against intense sunshine and provide clear picture \r\nPET layers against electromagnet radiation and protect your eyesight \r\nCome with a piece of', '', 0);
INSERT INTO `products_description` VALUES (21, 1, 'Screen Protectors Set for NDS Lite', 'Overview:\r\n\r\nPET Material Made in Japan \r\nTri-layer design for best filter and protection \r\nAnti-reflect layer against intense sunshine and provide clear picture \r\nPET layers against electromagnet radiation and protect your eyesight \r\nCome with a piece of', '', 0);
INSERT INTO `products_description` VALUES (22, 2, 'Protective Cartoon Sticker Set for NDSi/DSi (4-Piece Set)', 'Overview:\r\n\r\nFits your beloved console with exact precision \r\nLeaves no residue after removing it \r\nProtects your console from damage and dust \r\nSpruce up your console and individualize yourself', '', 0);
INSERT INTO `products_description` VALUES (22, 1, 'Protective Cartoon Sticker Set for NDSi/DSi (4-Piece Set)', 'Overview:\r\n\r\nFits your beloved console with exact precision \r\nLeaves no residue after removing it \r\nProtects your console from damage and dust \r\nSpruce up your console and individualize yourself', '', 0);
INSERT INTO `products_description` VALUES (23, 2, 'Protective Cartoon Sticker Set for NDSi/DSi (4-Piece Set)', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nSpecifications:\r\n\r\nDimensions: 5.31 in x 2.87 in x 0.01 in \r\nWeight: 1.41 oz', '', 0);
INSERT INTO `products_description` VALUES (23, 1, 'Protective Cartoon Sticker Set for NDSi/DSi (4-Piece Set)', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nSpecifications:\r\n\r\nDimensions: 5.31 in x 2.87 in x 0.01 in \r\nWeight: 1.41 oz', '', 0);
INSERT INTO `products_description` VALUES (24, 2, 'Nintendo DSi NDSi Screen Guard Screen Protector(CEV052)', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nSpecification\r\n100% brand new product \r\nHigh quality, ultra thin and clear screen protector \r\nSpecially designed for Nintendo Dsi', '', 1);
INSERT INTO `products_description` VALUES (24, 1, 'Nintendo DSi NDSi Screen Guard Screen Protector(CEV052)', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nSpecification\r\n100% brand new product \r\nHigh quality, ultra thin and clear screen protector \r\nSpecially designed for Nintendo Dsi', '', 0);
INSERT INTO `products_description` VALUES (25, 2, '7" Digital Touch Screen 2 Din In-Dash Car DVD Player - GPS - Blu', 'Highlights\r\nDisplay Size: 7-inch 16:9 TFT high definition LCD, Digital Touch-screen control with 3D User Interface easy to operate \r\nSlip down panel: Full motorized flip down mechanism for panel motion. Auto memory the panel position   \r\nBuilt-in functions: 3D Interface, DVD, Digital TV, FM/AM, 4x50w amplifier, Digital touch screen, Bluetooth, USB port, SD card slot RDS, CDC function, IPOD \r\nBluetooth: Built-in bluetooth for mobile hands-free. \r\nTV system: DVB-T build-in, auto select NTSC, PAL or SECAM \r\nRadio receiving: FM/AM with preset 30 stations, RDS available for Europe \r\nUSB port/SD card-reader: support MP4, DIVX, JPEG, MP3 and WMA playback \r\nIPOD: iPod ready \r\nCar reverse CCD camera input (switch automatically) \r\nCar backing display: It can connect the rearview camera \r\nAuto memory: All the set parameter and position can be memorized and restored automatically \r\nAseismatic: With excellent mechanical anti-vibration and electronic shock protection \r\nRemote controller: Full function remote operation \r\nVideo output/input : One video output, two video input (one video input for rear view camera ) \r\nCompatible with DVD,DVD-R,DVD-RW,HDVD,DVCD,MP3,MP4,CD-R,CD-RW,VCD,DIVX, WMA, and so on', '', 0);
INSERT INTO `products_description` VALUES (25, 1, '7" Digital Touch Screen 2 Din In-Dash Car DVD Player - GPS - Blu', 'Highlights\r\nDisplay Size: 7-inch 16:9 TFT high definition LCD, Digital Touch-screen control with 3D User Interface easy to operate \r\nSlip down panel: Full motorized flip down mechanism for panel motion. Auto memory the panel position   \r\nBuilt-in functions: 3D Interface, DVD, Digital TV, FM/AM, 4x50w amplifier, Digital touch screen, Bluetooth, USB port, SD card slot RDS, CDC function, IPOD \r\nBluetooth: Built-in bluetooth for mobile hands-free. \r\nTV system: DVB-T build-in, auto select NTSC, PAL or SECAM \r\nRadio receiving: FM/AM with preset 30 stations, RDS available for Europe \r\nUSB port/SD card-reader: support MP4, DIVX, JPEG, MP3 and WMA playback \r\nIPOD: iPod ready \r\nCar reverse CCD camera input (switch automatically) \r\nCar backing display: It can connect the rearview camera \r\nAuto memory: All the set parameter and position can be memorized and restored automatically \r\nAseismatic: With excellent mechanical anti-vibration and electronic shock protection \r\nRemote controller: Full function remote operation \r\nVideo output/input : One video output, two video input (one video input for rear view camera ) \r\nCompatible with DVD,DVD-R,DVD-RW,HDVD,DVCD,MP3,MP4,CD-R,CD-RW,VCD,DIVX, WMA, and so on', '', 9);
INSERT INTO `products_description` VALUES (26, 2, '7" Digital Touch Screen 2-Din Car DVD Player With 3D GUI-GPS-TV-', 'Description: \r\nHighlights\r\nAttention：the GPS card slot of this product only suits for SD Card! \r\nDisplay Size:6.95 inch 16:9 TFT high definition LCD, Touch-screen control with 3D User Interface easy to operate.       \r\nSlip Down Panel: Full motorized flip down mechanism for panel motion.          \r\nPixel: 800*480, high digital screen for good quality picture; Pixel:480*3*234RGB,RGB color out put for good quality picture \r\nBuilt-in Functions: HD,3D GUI,DVD,Analog TV,FM/AM,4x50w Amplifier,Touch screen ,Bluetooth system,IPOD,USB port,SD card reader,RDS,CDC   function,GPS system,DUAL ZONE. \r\nTouch Screen: It reduces visible buttons and increase friendliness of man-machine dialogue. \r\nBluetooth : Built-in Bluetooth for mobile hands-free.  \r\nTV System:  Analog TV tuner build-in, auto select NTSC, PAL or SECAM. \r\nRadio Receiving: FM/AM with preset 30 stations. RDS available for European market. \r\nUSB/SD Card Reader: support MP4, DIVX, JPEG,MP3 and WMA playback. \r\nCDC: support SANYO CDC changer,Car reverse CCD camera input (switch automatically)  11 Car backing display: connect the rearview camera. \r\nAuto Memory: All the set parameter and position can be memorized and restored automatically. \r\nAseismatic: With excellent mechanical anti-vibration and electronic shock protection. \r\nLanguage of OSD Menu with DVD :Chinese, English, French, German, Portuguese, Spanish. \r\nOperation Menu of Language: Chinese, English, Russian or others can OEM. \r\nRemote Controller: Full function remote operation. \r\nVideo Output/Input : One video output, two video input (one video input for rear view camera ). \r\nCompatible with DVD,DVD-R,DVD-RW,HDVD,DVCD,MP3,MP4,CD-R,CD-RW,VCD,DIVX, WMA,and so on. \r\nPower Supply：DC-12V. \r\nMaximal Power : 4X50W maximum power output. \r\nWorking Temperature：-20℃--+80℃', '', 0);
INSERT INTO `products_description` VALUES (26, 1, '7" Digital Touch Screen 2-Din Car DVD Player With 3D GUI-GPS-TV-', 'Description: \r\nHighlights\r\nAttention：the GPS card slot of this product only suits for SD Card! \r\nDisplay Size:6.95 inch 16:9 TFT high definition LCD, Touch-screen control with 3D User Interface easy to operate.       \r\nSlip Down Panel: Full motorized flip down mechanism for panel motion.          \r\nPixel: 800*480, high digital screen for good quality picture; Pixel:480*3*234RGB,RGB color out put for good quality picture \r\nBuilt-in Functions: HD,3D GUI,DVD,Analog TV,FM/AM,4x50w Amplifier,Touch screen ,Bluetooth system,IPOD,USB port,SD card reader,RDS,CDC   function,GPS system,DUAL ZONE. \r\nTouch Screen: It reduces visible buttons and increase friendliness of man-machine dialogue. \r\nBluetooth : Built-in Bluetooth for mobile hands-free.  \r\nTV System:  Analog TV tuner build-in, auto select NTSC, PAL or SECAM. \r\nRadio Receiving: FM/AM with preset 30 stations. RDS available for European market. \r\nUSB/SD Card Reader: support MP4, DIVX, JPEG,MP3 and WMA playback. \r\nCDC: support SANYO CDC changer,Car reverse CCD camera input (switch automatically)  11 Car backing display: connect the rearview camera. \r\nAuto Memory: All the set parameter and position can be memorized and restored automatically. \r\nAseismatic: With excellent mechanical anti-vibration and electronic shock protection. \r\nLanguage of OSD Menu with DVD :Chinese, English, French, German, Portuguese, Spanish. \r\nOperation Menu of Language: Chinese, English, Russian or others can OEM. \r\nRemote Controller: Full function remote operation. \r\nVideo Output/Input : One video output, two video input (one video input for rear view camera ). \r\nCompatible with DVD,DVD-R,DVD-RW,HDVD,DVCD,MP3,MP4,CD-R,CD-RW,VCD,DIVX, WMA,and so on. \r\nPower Supply：DC-12V. \r\nMaximal Power : 4X50W maximum power output. \r\nWorking Temperature：-20℃--+80℃', '', 2);
INSERT INTO `products_description` VALUES (27, 2, '7" Digital Touch Screen Slide Down Panel 2 Din Car DVD Player-Ro', 'Description: \r\nHighlights\r\nAttention: the GPS card slot of this product only suits for SD Card!\r\n\r\nThe latest technology equipped this amazing DVD with rotating menu, guaranteeing a great experience in turning pages from up to down, from left to right by touching the screen! \r\nThe digital screen brings brand-new visual enjoyment \r\nWith built-in 45 Bootlogos at your disposal \r\nSupports phone charge \r\nWith great GPS picture in picture function, it enables to adjust the size and place of the picture showed \r\nSupports rearview cameras of all formats(N/P) \r\nAble to memorize the calender, time, DVD display, FM and other setting history even if switched off \r\nWith Steering Wheel Control function \r\nThe Original PolNav(Brand) GPS Map (SZC2660) suits for this Car DVD Player', '', 0);
INSERT INTO `products_description` VALUES (27, 1, '7" Digital Touch Screen Slide Down Panel 2 Din Car DVD Player-Ro', 'Description: \r\nHighlights\r\nAttention: the GPS card slot of this product only suits for SD Card!\r\n\r\nThe latest technology equipped this amazing DVD with rotating menu, guaranteeing a great experience in turning pages from up to down, from left to right by touching the screen! \r\nThe digital screen brings brand-new visual enjoyment \r\nWith built-in 45 Bootlogos at your disposal \r\nSupports phone charge \r\nWith great GPS picture in picture function, it enables to adjust the size and place of the picture showed \r\nSupports rearview cameras of all formats(N/P) \r\nAble to memorize the calender, time, DVD display, FM and other setting history even if switched off \r\nWith Steering Wheel Control function \r\nThe Original PolNav(Brand) GPS Map (SZC2660) suits for this Car DVD Player', '', 1);
INSERT INTO `products_description` VALUES (28, 2, '7” Touch Screen 2 Din In-Dash Car DVD Player - iPod - TV - Bluet', 'This car entertainment features touch-screen technology, a TV analog receiver, and many more great functions. When you are on the road, this is best choice to entertain your passengers and help kill time. The 7" TFT LCD wide-screen display provides information for whatever source you are watching or listening to, and retracts when not in use. Excellent 16:9 aspect ration, stereo, USB port, and compatibility with multiple formats including JPEG, DivX and so on. Purchase this excellent Car DVD Player with one year warranty now!', '', 0);
INSERT INTO `products_description` VALUES (28, 1, '7” Touch Screen 2 Din In-Dash Car DVD Player - iPod - TV - Bluet', 'This car entertainment features touch-screen technology, a TV analog receiver, and many more great functions. When you are on the road, this is best choice to entertain your passengers and help kill time. The 7" TFT LCD wide-screen display provides information for whatever source you are watching or listening to, and retracts when not in use. Excellent 16:9 aspect ration, stereo, USB port, and compatibility with multiple formats including JPEG, DivX and so on. Purchase this excellent Car DVD Player with one year warranty now!', '', 0);
INSERT INTO `products_description` VALUES (29, 2, '6" Digital Touch Screen Car DVD Player-GPS-TV-FM-Bluetooth- For', 'Description: \r\nHighlights:\r\nLooking for a way to enhance your car travel experience? While you are on the road, this versatile player can help pass the time, providing countless hours of entertainment and fun. If you’re looking for a versatile player suited for Passat, Bora, and Polo cars, this is the one for you!\r\nAttention：the GPS card slot of this product only suits for SD Card! \r\n\r\nBluetooth: The Bluetooth function allows you to have handsfree conversations with your callers through your car stereo system, giving you a office away from your office! A simple pairing with your mobile phone when you first climb into your car means you won''t miss calls while you''re on the road.\r\n\r\nDigital Touchscreen: The 6” screen shows amazingly crisp images, and the touchscreen allows truly intuitive interaction. This easy to use interface not only looks good, but is convenient for quick switching from one entertainment choice to another.\r\n\r\nGPS Navigation: Never get lost again! Have an utterly stress-free driving experience with the GPS function that offers intelligent route planning, and eliminates all need for maps.\r\n\r\nIpod Compatibility: Those of you with an iPod need not worry – the player is iPod compatible, meaning that your entertainment can shift seamlessly from the vehicle to elsewhere. \r\n\r\nAnalog TV Receiver: Have an endless source of entertainment with the analog TV receiver, which allows you to tune into general TV channels wherever you go! Keep yourself in touch with the news, or simply flip through the channels for hours.', '', 0);
INSERT INTO `products_description` VALUES (29, 1, '6" Digital Touch Screen Car DVD Player-GPS-TV-FM-Bluetooth- For', 'Description: \r\nHighlights:\r\nLooking for a way to enhance your car travel experience? While you are on the road, this versatile player can help pass the time, providing countless hours of entertainment and fun. If you’re looking for a versatile player suited for Passat, Bora, and Polo cars, this is the one for you!\r\nAttention：the GPS card slot of this product only suits for SD Card! \r\n\r\nBluetooth: The Bluetooth function allows you to have handsfree conversations with your callers through your car stereo system, giving you a office away from your office! A simple pairing with your mobile phone when you first climb into your car means you won''t miss calls while you''re on the road.\r\n\r\nDigital Touchscreen: The 6” screen shows amazingly crisp images, and the touchscreen allows truly intuitive interaction. This easy to use interface not only looks good, but is convenient for quick switching from one entertainment choice to another.\r\n\r\nGPS Navigation: Never get lost again! Have an utterly stress-free driving experience with the GPS function that offers intelligent route planning, and eliminates all need for maps.\r\n\r\nIpod Compatibility: Those of you with an iPod need not worry – the player is iPod compatible, meaning that your entertainment can shift seamlessly from the vehicle to elsewhere. \r\n\r\nAnalog TV Receiver: Have an endless source of entertainment with the analog TV receiver, which allows you to tune into general TV channels wherever you go! Keep yourself in touch with the news, or simply flip through the channels for hours.', '', 17);
INSERT INTO `products_description` VALUES (30, 2, 'Car LED STRPBE LAMP YCL-648 (SZC677)', 'Description: \r\nSpecification\r\nSize: 21*17.5*5\r\nFeatures: \r\n1.using superhigh light led as the illuminant,saving electric power,super high ligt,long life \r\n2.neat and beautiful form design,it installs SCM control with various twinking \r\n3.The broken,flashing,constant-tranche control,the work of each state have led instructions', '', 0);
INSERT INTO `products_description` VALUES (30, 1, 'Car LED STRPBE LAMP YCL-648 (SZC677)', 'Description: \r\nSpecification\r\nSize: 21*17.5*5\r\nFeatures: \r\n1.using superhigh light led as the illuminant,saving electric power,super high ligt,long life \r\n2.neat and beautiful form design,it installs SCM control with various twinking \r\n3.The broken,flashing,constant-tranche control,the work of each state have led instructions', '', 0);
INSERT INTO `products_description` VALUES (31, 2, 'Car Decorative Lights YCL-641-White (SZC1596)', 'Description: \r\n\r\n\r\n\r\n\r\n\r\n\r\nFeatures\r\n\r\nDrill 2 holes of 6mm \r\nTighten screws and nuts to fix bracket \r\nAdjust light angle and tighen screws \r\nApply the sensor box on vibration plant by double side tape. The light will keep on lighting when car is moving  (only for intelligent type) \r\nDC-12V \r\nColor: White \r\nSize: 21*18*6', '', 0);
INSERT INTO `products_description` VALUES (31, 1, 'Car Decorative Lights YCL-641-White (SZC1596)', 'Description: \r\n\r\n\r\n\r\n\r\n\r\n\r\nFeatures\r\n\r\nDrill 2 holes of 6mm \r\nTighten screws and nuts to fix bracket \r\nAdjust light angle and tighen screws \r\nApply the sensor box on vibration plant by double side tape. The light will keep on lighting when car is moving  (only for intelligent type) \r\nDC-12V \r\nColor: White \r\nSize: 21*18*6', '', 17);
INSERT INTO `products_description` VALUES (32, 2, 'Car LED Flash Light HS- 51027 (SZC740)', 'Description: \r\nSpecification\r\nSize: 12.5*15*9.5\r\nFeatures: \r\n1.LightA flashes quickly for 8times.LightB flashes quickly for 8times ,Repeat continuously   \r\n2.lightA flashes once,Light B tlashes once ,Repeat continuously \r\n3.LightA and B flash once at the same time Repea continuously', '', 0);
INSERT INTO `products_description` VALUES (32, 1, 'Car LED Flash Light HS- 51027 (SZC740)', 'Description: \r\nSpecification\r\nSize: 12.5*15*9.5\r\nFeatures: \r\n1.LightA flashes quickly for 8times.LightB flashes quickly for 8times ,Repeat continuously   \r\n2.lightA flashes once,Light B tlashes once ,Repeat continuously \r\n3.LightA and B flash once at the same time Repea continuously', '', 0);
INSERT INTO `products_description` VALUES (33, 2, 'T10 5-Side SMD LED Surface SB - T10 - 4x1W-B(SZC1360)', 'Description: \r\nFeatures\r\nT10 5-Side SMD LED Indicator surface \r\nUsed as auto and truck side lights / indicator / small light / license plate lights / instrument lights / trunk Light / Side lights \r\nLED Specification: 4pcs * 9518 \r\nPower: 1W \r\nSize: 11*8*3', '', 0);
INSERT INTO `products_description` VALUES (33, 1, 'T10 5-Side SMD LED Surface SB - T10 - 4x1W-B(SZC1360)', 'Description: \r\nFeatures\r\nT10 5-Side SMD LED Indicator surface \r\nUsed as auto and truck side lights / indicator / small light / license plate lights / instrument lights / trunk Light / Side lights \r\nLED Specification: 4pcs * 9518 \r\nPower: 1W \r\nSize: 11*8*3', '', 0);
INSERT INTO `products_description` VALUES (34, 2, 'NONSLIP CAR PeDAL INSTLUCTION GT-212 (SZC711)', 'Description: \r\nSpecification\r\nSize: 18*25*2 \r\nFeatures: Reduces accidents ,because of its wide non-slip surface design. Specially Design surface That Works Even Better in snowy or rainy Weather Conditions. Adjustable to height makes it easier to operate your vehicle and diminishes foot fatigue.  \r\nInstallation:Take out one bolt from the base arm thus releasing one side of the base arm. Put the pedal cover on the original pedal and pull the holder shaft over the rest side of the original pedal.  lf necessary ,one side of the holder shaft may not be needed on certain types of vehicles.   Bring the base arm over the holder shaft.  Screw the bolt on the base arm and adjust the pedal pads to the desired angle,  By pressing down on the pedals.check to make sure that installationls secure .', '', 0);
INSERT INTO `products_description` VALUES (34, 1, 'NONSLIP CAR PeDAL INSTLUCTION GT-212 (SZC711)', 'Description: \r\nSpecification\r\nSize: 18*25*2 \r\nFeatures: Reduces accidents ,because of its wide non-slip surface design. Specially Design surface That Works Even Better in snowy or rainy Weather Conditions. Adjustable to height makes it easier to operate your vehicle and diminishes foot fatigue.  \r\nInstallation:Take out one bolt from the base arm thus releasing one side of the base arm. Put the pedal cover on the original pedal and pull the holder shaft over the rest side of the original pedal.  lf necessary ,one side of the holder shaft may not be needed on certain types of vehicles.   Bring the base arm over the holder shaft.  Screw the bolt on the base arm and adjust the pedal pads to the desired angle,  By pressing down on the pedals.check to make sure that installationls secure .', '', 1);
INSERT INTO `products_description` VALUES (35, 2, 'G580 Google Android System 3G WCDMA WIFI 3.2 Inch Thin Touch Scr', 'Highlights\r\nGoogle Android - Android Operation System for Cell Phone, developed by Goolgle. POP! \r\nPDA - Do more with your phone with great Personal Digital Assistant functions! \r\nSmart Phone - Mobilize every part of your life! Smart phones have all the Apps you need to organize your business and pleasure needs. \r\nTouch Screen - Easy-to-use and responsive touch screen function for smooth navigating. \r\nFully Unlocked - Works on all four main GSM frequency bands for great reception world wide. \r\nUltra-Thin - Slim and compact so it disappears in your pocket when not in use. Ultra-thin phones are smart and efficient. \r\nBuilt-In GPS - Never get lost with an accurate GPS system built in. \r\nGPS avialable region (Built-In 2GB memory card includes Map for the following country): China,German. \r\nJAVA - Built-in Java technology means you can get the latest Apps to use on this phone. Whether for business or pleasure, this phone provides a great platform for any Java-based application you want to run.', '', 0);
INSERT INTO `products_description` VALUES (35, 1, 'G580 Google Android System 3G WCDMA WIFI 3.2 Inch Thin Touch Scr', 'Highlights\r\nGoogle Android - Android Operation System for Cell Phone, developed by Goolgle. POP! \r\nPDA - Do more with your phone with great Personal Digital Assistant functions! \r\nSmart Phone - Mobilize every part of your life! Smart phones have all the Apps you need to organize your business and pleasure needs. \r\nTouch Screen - Easy-to-use and responsive touch screen function for smooth navigating. \r\nFully Unlocked - Works on all four main GSM frequency bands for great reception world wide. \r\nUltra-Thin - Slim and compact so it disappears in your pocket when not in use. Ultra-thin phones are smart and efficient. \r\nBuilt-In GPS - Never get lost with an accurate GPS system built in. \r\nGPS avialable region (Built-In 2GB memory card includes Map for the following country): China,German. \r\nJAVA - Built-in Java technology means you can get the latest Apps to use on this phone. Whether for business or pleasure, this phone provides a great platform for any Java-based application you want to run.', '', 0);
INSERT INTO `products_description` VALUES (36, 2, 'Hot Eee PC with 1.6G CPU/1GB RAM/160GB SATA HDD/10.2"LCD/Wifi(SM', 'This Eee PC offers even more options to users for unique user experiences. Users will be able to enjoy stable and reliable computing on-the-go; Super  VIA C7-Mobile processor 1.6G Hz and 1GB DDR2 RAM, 4 hours of battery life, high speed 802.11b/g connectivity and exclusive 160GB Storage makes it the ideal traveling companion for outdoor activities. The large 10.2" display provides comfortable viewing, and a keyboard that´s 92% sized of generic notebooks make for easier typing and relaxing usage. It is also available in 6 custom colored designs to fit your unique personality.\r\n\r\nHighlights:\r\n10.2” Screen \r\n1.6GHz \r\n1GB Memory(DDR2) \r\n160G HDD \r\nWIFI \r\n1x SD Card Slot \r\n3x USB 2.0 Ports\r\nFeatures:\r\nLarge Screen and Keyboard for Comfortable Usage\r\nThe Eee PC is equipped with a large 10.2" display that allows users to easily view documents and webpages comfortably\r\n\r\nThe keyboard is 92% the size of generic notebooks – making it more comfortable to type for more relaxed usage.\r\n\r\n\r\nExclusive 160GB Storage And 1.6G Hz CPU And 1Gb DDR2 RAM\r\n\r\n160GB file-encrypted Eee Storage with 5GB worth of downloads per day for easy accessibility from both Windows and Linux platforms\r\n\r\nChoice of either Windows or GNU Linux OS for convenient computing and an easy, excellent and exciting user experience\r\n\r\n\r\nHigh Speed Connectivity Anywhere with Wi-Fi 802.11b/g\r\nEasily functions in any connected environment with fast and complete connectivity (WiFi 802.11b/g)\r\n\r\nFull range of applications to enhance communication and computing experiences\r\n\r\nEee Connect for an easy way to connect two or more users through a remote desktop feature for easy troubleshooting.\r\n\r\n\r\nUnique Design to Fit Your Individual Personality\r\nThe Eee PC comes in four custom styles created with cutting-edge Infusion casing technology\r\n\r\nInfusion surface with inlaid motifs provides a new level of resilience – providing scratch resistance and a beautiful style that will not fade with time\r\n\r\nUsers can choose from Red, Green, Pearl White,blue and Fine Ebony', '', 0);
INSERT INTO `products_description` VALUES (36, 1, 'Hot Eee PC with 1.6G CPU/1GB RAM/160GB SATA HDD/10.2"LCD/Wifi(SM', 'This Eee PC offers even more options to users for unique user experiences. Users will be able to enjoy stable and reliable computing on-the-go; Super  VIA C7-Mobile processor 1.6G Hz and 1GB DDR2 RAM, 4 hours of battery life, high speed 802.11b/g connectivity and exclusive 160GB Storage makes it the ideal traveling companion for outdoor activities. The large 10.2" display provides comfortable viewing, and a keyboard that´s 92% sized of generic notebooks make for easier typing and relaxing usage. It is also available in 6 custom colored designs to fit your unique personality.\r\n\r\nHighlights:\r\n10.2” Screen \r\n1.6GHz \r\n1GB Memory(DDR2) \r\n160G HDD \r\nWIFI \r\n1x SD Card Slot \r\n3x USB 2.0 Ports\r\nFeatures:\r\nLarge Screen and Keyboard for Comfortable Usage\r\nThe Eee PC is equipped with a large 10.2" display that allows users to easily view documents and webpages comfortably\r\n\r\nThe keyboard is 92% the size of generic notebooks – making it more comfortable to type for more relaxed usage.\r\n\r\n\r\nExclusive 160GB Storage And 1.6G Hz CPU And 1Gb DDR2 RAM\r\n\r\n160GB file-encrypted Eee Storage with 5GB worth of downloads per day for easy accessibility from both Windows and Linux platforms\r\n\r\nChoice of either Windows or GNU Linux OS for convenient computing and an easy, excellent and exciting user experience\r\n\r\n\r\nHigh Speed Connectivity Anywhere with Wi-Fi 802.11b/g\r\nEasily functions in any connected environment with fast and complete connectivity (WiFi 802.11b/g)\r\n\r\nFull range of applications to enhance communication and computing experiences\r\n\r\nEee Connect for an easy way to connect two or more users through a remote desktop feature for easy troubleshooting.\r\n\r\n\r\nUnique Design to Fit Your Individual Personality\r\nThe Eee PC comes in four custom styles created with cutting-edge Infusion casing technology\r\n\r\nInfusion surface with inlaid motifs provides a new level of resilience – providing scratch resistance and a beautiful style that will not fade with time\r\n\r\nUsers can choose from Red, Green, Pearl White,blue and Fine Ebony', '', 0);
INSERT INTO `products_description` VALUES (37, 2, 'Notebook-Mini Laptop-12.1" TFT-Intel Atom N270-1.6GHz-1GB DDR2-1', 'Specification\r\n Performance \r\n Processor Type  Atom \r\n Processor Clock Speed  1.66G \r\n Processor / Manufacturer  Intel \r\n Processor Model  N270 \r\n \r\n Mainboard / Chipset Type  Intel 945GSE \r\n \r\n Cache Memory / Type  L1 cache \r\n Cache Memory / Installed Size  1M \r\n RAM / Technology  DDR 2 \r\n RAM Installed Size  1GB \r\n RAM Max Supported Size  4G \r\n Display Diagonal Size  12.1” \r\n Max Resolution  1366 x 768 \r\n Display Technology  TFT active matrix \r\n Graphics Type  Integrated Graphics \r\n Graphics Model  Intel GMA 950 \r\n Storage and Expansion \r\n Hard Drive Type  SATA \r\n Hard Drive Capacity  160G \r\n Hard Drive Spindle Speed  5400Rpm \r\n Optical Storage Type  DVD±RW \r\n PCMCIA Expansion  1x ExpressCard slot \r\n Input/Output Connectors \r\n Ports   3 x USB Port, 1 x SD/MMS Card slot, 1 x Earphone Port, 1 x Micro Port, 1 x VGA Port.\r\n \r\n Audio/Video  Realtek High Definition Audio Controller [B-0] \r\n Communications \r\n Networking / Data Link Protocol  Fast Ethernet \r\n Wireless Connection   Wifi \r\n Wireless Protocol  802.11 a/b/g \r\n General \r\n Product Type  Notebook \r\n Model  T100 \r\n Operating System  Windows XP Professional \r\n Keyboard  Full-Size Keyboard \r\n Pointing Device  TrackPad \r\n Battery Type  Polymer 3200AH/7.4V \r\n Battery / Run Time (up to)  2 Hours \r\n Power Device Type  AC Adapter \r\n Voltage required  100/240V \r\n Miscellaneous / Color  Black,gray,pink \r\n Dimensions / W x D x H  225x300x35 mm \r\n Net Weight  1.8KG \r\n Additional Features  1.3Mega Pixels Webcam', '', 1);
INSERT INTO `products_description` VALUES (37, 1, 'Notebook-Mini Laptop-12.1" TFT-Intel Atom N270-1.6GHz-1GB DDR2-1', 'Specification\r\n Performance \r\n Processor Type  Atom \r\n Processor Clock Speed  1.66G \r\n Processor / Manufacturer  Intel \r\n Processor Model  N270 \r\n \r\n Mainboard / Chipset Type  Intel 945GSE \r\n \r\n Cache Memory / Type  L1 cache \r\n Cache Memory / Installed Size  1M \r\n RAM / Technology  DDR 2 \r\n RAM Installed Size  1GB \r\n RAM Max Supported Size  4G \r\n Display Diagonal Size  12.1” \r\n Max Resolution  1366 x 768 \r\n Display Technology  TFT active matrix \r\n Graphics Type  Integrated Graphics \r\n Graphics Model  Intel GMA 950 \r\n Storage and Expansion \r\n Hard Drive Type  SATA \r\n Hard Drive Capacity  160G \r\n Hard Drive Spindle Speed  5400Rpm \r\n Optical Storage Type  DVD±RW \r\n PCMCIA Expansion  1x ExpressCard slot \r\n Input/Output Connectors \r\n Ports   3 x USB Port, 1 x SD/MMS Card slot, 1 x Earphone Port, 1 x Micro Port, 1 x VGA Port.\r\n \r\n Audio/Video  Realtek High Definition Audio Controller [B-0] \r\n Communications \r\n Networking / Data Link Protocol  Fast Ethernet \r\n Wireless Connection   Wifi \r\n Wireless Protocol  802.11 a/b/g \r\n General \r\n Product Type  Notebook \r\n Model  T100 \r\n Operating System  Windows XP Professional \r\n Keyboard  Full-Size Keyboard \r\n Pointing Device  TrackPad \r\n Battery Type  Polymer 3200AH/7.4V \r\n Battery / Run Time (up to)  2 Hours \r\n Power Device Type  AC Adapter \r\n Voltage required  100/240V \r\n Miscellaneous / Color  Black,gray,pink \r\n Dimensions / W x D x H  225x300x35 mm \r\n Net Weight  1.8KG \r\n Additional Features  1.3Mega Pixels Webcam', '', 1);
INSERT INTO `products_description` VALUES (38, 2, 'Cool Ring-Style Fingertip USB Optical Mouse', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nOverview:\r\n\r\n Innovative design, cool gadget \r\n Mouse attaches to index fingers \r\n Allows you to control the cursor/mouse and type at the same time \r\n Perfect for using in constrained areas (airplanes, trains and buses) \r\n 75% lighter than typical optical mouses (~1oz weight) \r\n USB powered Plug and play \r\n Scroll wheel feature available as well, just like regular mouses\r\n\r\n\r\nSpecifications:\r\n\r\nSize: 62x23x33mm (WxDxH) \r\nCable length: 1.2m \r\nWeight: 35g \r\nButton: 2 buttons and scroll button \r\nInterface: USB (A type connector) \r\nReading system: Optical sensor system (ball less) \r\nResolution: 800dpi \r\nSupport Windows ME/2000/2003/XP \r\nDimensions: 2.56 in x 1.38 in x 1.06 in \r\nWeight: 3.21 oz', '', 0);
INSERT INTO `products_description` VALUES (38, 1, 'Cool Ring-Style Fingertip USB Optical Mouse', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nOverview:\r\n\r\n Innovative design, cool gadget \r\n Mouse attaches to index fingers \r\n Allows you to control the cursor/mouse and type at the same time \r\n Perfect for using in constrained areas (airplanes, trains and buses) \r\n 75% lighter than typical optical mouses (~1oz weight) \r\n USB powered Plug and play \r\n Scroll wheel feature available as well, just like regular mouses\r\n\r\n\r\nSpecifications:\r\n\r\nSize: 62x23x33mm (WxDxH) \r\nCable length: 1.2m \r\nWeight: 35g \r\nButton: 2 buttons and scroll button \r\nInterface: USB (A type connector) \r\nReading system: Optical sensor system (ball less) \r\nResolution: 800dpi \r\nSupport Windows ME/2000/2003/XP \r\nDimensions: 2.56 in x 1.38 in x 1.06 in \r\nWeight: 3.21 oz', '', 0);
INSERT INTO `products_description` VALUES (39, 2, 'Simple USB Mouse', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nOverview:\r\n\r\nSmall size and exquisite design \r\nOptical sensor high resolution to 800dpi \r\nGives smooth and precise motion almost on any smooth surface \r\n2 buttons and scroll wheel provide full control\r\nSpecifications:\r\n\r\nDimensions: 3.62 in x 1.97 in x 1.38 in \r\nWeight: 3.63 oz', '', 0);
INSERT INTO `products_description` VALUES (39, 1, 'Simple USB Mouse', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nOverview:\r\n\r\nSmall size and exquisite design \r\nOptical sensor high resolution to 800dpi \r\nGives smooth and precise motion almost on any smooth surface \r\n2 buttons and scroll wheel provide full control\r\nSpecifications:\r\n\r\nDimensions: 3.62 in x 1.97 in x 1.38 in \r\nWeight: 3.63 oz', '', 0);
INSERT INTO `products_description` VALUES (40, 2, 'Memory Stick Pro Duo Memory Card with MS Adapter (8GB)', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nSpecifications:\r\nDimensions: 1.18 in x 0.79 in x 0.07 in \r\nWeight: 0.67 oz', '', 1);
INSERT INTO `products_description` VALUES (40, 1, 'Memory Stick Pro Duo Memory Card with MS Adapter (8GB)', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nSpecifications:\r\nDimensions: 1.18 in x 0.79 in x 0.07 in \r\nWeight: 0.67 oz', '', 0);
INSERT INTO `products_description` VALUES (41, 2, 'Cute Butterfly USB 2.0 Flash/Jump Drive (1GB)', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nOverview:\r\n\r\nCompliant with USB 2.0 High-speed spec \r\nPlug & Play, no drivers required for Windows 2000/XP/Server 2003/Vista/Server 2008', '', 0);
INSERT INTO `products_description` VALUES (41, 1, 'Cute Butterfly USB 2.0 Flash/Jump Drive (1GB)', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nOverview:\r\n\r\nCompliant with USB 2.0 High-speed spec \r\nPlug & Play, no drivers required for Windows 2000/XP/Server 2003/Vista/Server 2008', '', 2);
INSERT INTO `products_description` VALUES (42, 2, 'Mini Bluetooth 2.0 Adapter Dongle Vista Compatible', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nOverview：\r\n\r\nBluetooth V2.0 Class 1 (class 1 is manufacturer rated) \r\nMaximum wireless distance: 100 meters (as per Bluetooth class 1 standard) \r\nSupports native Windows bluetooth stack (Windows XP and Vista, Windows 7)', '', 0);
INSERT INTO `products_description` VALUES (42, 1, 'Mini Bluetooth 2.0 Adapter Dongle Vista Compatible', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nOverview：\r\n\r\nBluetooth V2.0 Class 1 (class 1 is manufacturer rated) \r\nMaximum wireless distance: 100 meters (as per Bluetooth class 1 standard) \r\nSupports native Windows bluetooth stack (Windows XP and Vista, Windows 7)', '', 0);
INSERT INTO `products_description` VALUES (43, 2, 'Full Range FM Transmitter MP3 Player with IR Remote (SD/MMC/MP3/', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nOverview:\r\n\r\n206 Preset FM Channels \r\nTakes SD/MMC/MP3/USB/3.5mm Line In for Other AUDIO DEVICES \r\nPlays MP3/WMA files \r\nBlue backlight \r\nInfraRed IR Remote Controller included', '', 1);
INSERT INTO `products_description` VALUES (43, 1, 'Full Range FM Transmitter MP3 Player with IR Remote (SD/MMC/MP3/', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nOverview:\r\n\r\n206 Preset FM Channels \r\nTakes SD/MMC/MP3/USB/3.5mm Line In for Other AUDIO DEVICES \r\nPlays MP3/WMA files \r\nBlue backlight \r\nInfraRed IR Remote Controller included', '', 1);
INSERT INTO `products_description` VALUES (44, 2, 'Hi-Gain 802.11G USB Wifi Dongle for PC and Wii / PSP / NDS', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nOverview:\r\n\r\n Online gaming through any internet-enabled PC \r\n A high speed wireless LAN USB adapter \r\n Compatible with USB 2.0 and 1.1 \r\n Unique design with mini size \r\n Supplied with a software CD and an antenna', '', 10);
INSERT INTO `products_description` VALUES (44, 1, 'Hi-Gain 802.11G USB Wifi Dongle for PC and Wii / PSP / NDS', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nOverview:\r\n\r\n Online gaming through any internet-enabled PC \r\n A high speed wireless LAN USB adapter \r\n Compatible with USB 2.0 and 1.1 \r\n Unique design with mini size \r\n Supplied with a software CD and an antenna', '', 0);
INSERT INTO `products_description` VALUES (45, 2, 'Wireless 802.11N Hi-Speed WiFi Internet Connection USB Adapter', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nOverview:\r\n Product Description: Wifi 802.11N USB Dongle for wireless internet\r\n Operating Wifi Standards: IEEE 802.11N, IEEE 802.11G, IEEE 802.11B\r\n Data Rates:\r\n- 802.11N: up to 300 Mbps (adaptive)\r\n- 802.11G: up to 54 Mbps (adaptive)\r\n- 802.11B: up to Mbps (adaptive)\r\n Typical Operating Range: Up to 300M unobstructed and 100M with normal furnishings\r\n Security:\r\n- 64/128-bit WEP Data Encryption\r\n- WPA/WPA2 and WPA-PSK/WPA2-PSK Advanced Security\r\n- Wi-Fi Protected Security (WPS)\r\nSpecification:\r\n\r\nDimensions:3.46in*1.14in*0.47in \r\nWeight:1.4oz', '', 0);
INSERT INTO `products_description` VALUES (45, 1, 'Wireless 802.11N Hi-Speed WiFi Internet Connection USB Adapter', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nOverview:\r\n Product Description: Wifi 802.11N USB Dongle for wireless internet\r\n Operating Wifi Standards: IEEE 802.11N, IEEE 802.11G, IEEE 802.11B\r\n Data Rates:\r\n- 802.11N: up to 300 Mbps (adaptive)\r\n- 802.11G: up to 54 Mbps (adaptive)\r\n- 802.11B: up to Mbps (adaptive)\r\n Typical Operating Range: Up to 300M unobstructed and 100M with normal furnishings\r\n Security:\r\n- 64/128-bit WEP Data Encryption\r\n- WPA/WPA2 and WPA-PSK/WPA2-PSK Advanced Security\r\n- Wi-Fi Protected Security (WPS)\r\nSpecification:\r\n\r\nDimensions:3.46in*1.14in*0.47in \r\nWeight:1.4oz', '', 0);
INSERT INTO `products_description` VALUES (46, 2, '1GB Small MP3 Player Red M3003', 'Highlights:\r\nThis digital music player comes with a built in USB connector meaning you can connect it to your PC immediately to transfer songs without any additional cords. Miniature and lightweight in design, it is a great choice for runners or other athletes. The player can also be worn around the neck or as a keyring. \r\n\r\nSupports Common File Formats: The most common audio file formats (MP3 and WMA) are all supported by this product so there is no need to convert the music files you already have on your computer. \r\n\r\nBuilt-in Microphone: Take and store notes anytime with the built in microphone. Alternatively, unleash your creativity by capturing some ‘soundscapes’. Capture the sound of a bird singing in the morning, the collection of sounds from a day at the beach or see what you can pick up in other natural spaces like the woods, bush or countryside. \r\n\r\n3.5mm Earphone Jack:  Although the player comes with ready to use earphones, have the option of using other earphones with this universal jack. Most earphones on the market will fit this jack.\r\n\r\n5 Screen Savers: Choose a different screen saver everyday to suit your mood.\r\n\r\nAll Accessories Included: User manual, earphones a USB extension cable are all included ensuring you can enjoy your music right away.', '', 5);
INSERT INTO `products_description` VALUES (46, 1, '1GB Small MP3 Player Red M3003', 'Highlights:\r\nThis digital music player comes with a built in USB connector meaning you can connect it to your PC immediately to transfer songs without any additional cords. Miniature and lightweight in design, it is a great choice for runners or other athletes. The player can also be worn around the neck or as a keyring. \r\n\r\nSupports Common File Formats: The most common audio file formats (MP3 and WMA) are all supported by this product so there is no need to convert the music files you already have on your computer. \r\n\r\nBuilt-in Microphone: Take and store notes anytime with the built in microphone. Alternatively, unleash your creativity by capturing some ‘soundscapes’. Capture the sound of a bird singing in the morning, the collection of sounds from a day at the beach or see what you can pick up in other natural spaces like the woods, bush or countryside. \r\n\r\n3.5mm Earphone Jack:  Although the player comes with ready to use earphones, have the option of using other earphones with this universal jack. Most earphones on the market will fit this jack.\r\n\r\n5 Screen Savers: Choose a different screen saver everyday to suit your mood.\r\n\r\nAll Accessories Included: User manual, earphones a USB extension cable are all included ensuring you can enjoy your music right away.', '', 2);
INSERT INTO `products_description` VALUES (47, 2, '14k 6.5 - 7mm AA White Freshwater Pearl Three - Piece Set (16in ', 'An indulgent classic! This gorgeous set is created from genuine high quality freshwater pearls. Carefully grown over many years, they have been gently harvested and matched to the strictest of standards.\r\nThis set is part of hand selected selection of gorgeous freshwater  cultured pearls. You will adore the flexibility of the 6.5 to 7mm pearl size. Perfect for both casual and formal events.\r\nA perfect gift for her or a nice treat to your self, this genuine pearl set is a great bargain at our low one line price.\r\n\r\n  Size   6.5mm-7.0mm \r\n  Body Color   White\r\n \r\n  Shape   Shape Round \r\n  Nacklace/Bracelet Length   16 inch/ 7inch \r\n  Luster   Good \r\n  Blemish   90% - 95% Free \r\n  Smoothness   Good \r\n  Matching   Good \r\n  Nacre   Very Thick \r\n  Origin   China \r\n  Overall Quality    AA \r\n\r\n\r\n\r\n \r\n\r\nClasp available :\r\n\r\n \r\n\r\n \r\n\r\n\r\n \r\n\r\n \r\n\r\nWe have several options of  clasp(A,B,C,D), you might choose your favorite one from them(as picture)(the clasp been within the necklace is not available) , state your choice on the comment along with your order. If you don''t have any preference specified, we''ll ship with the default most favorable one.Clasp is made of 14k gold post.\r\n\r\n \r\n\r\nSpecification\r\nYour necklace will be carefully packed and shipped to you in an elegant velvet lined box and accompanied by lots of FREE extras (please see below).', '', 1);
INSERT INTO `products_description` VALUES (47, 1, '14k 6.5 - 7mm AA White Freshwater Pearl Three - Piece Set (16in ', 'An indulgent classic! This gorgeous set is created from genuine high quality freshwater pearls. Carefully grown over many years, they have been gently harvested and matched to the strictest of standards.\r\nThis set is part of hand selected selection of gorgeous freshwater  cultured pearls. You will adore the flexibility of the 6.5 to 7mm pearl size. Perfect for both casual and formal events.\r\nA perfect gift for her or a nice treat to your self, this genuine pearl set is a great bargain at our low one line price.\r\n\r\n  Size   6.5mm-7.0mm \r\n  Body Color   White\r\n \r\n  Shape   Shape Round \r\n  Nacklace/Bracelet Length   16 inch/ 7inch \r\n  Luster   Good \r\n  Blemish   90% - 95% Free \r\n  Smoothness   Good \r\n  Matching   Good \r\n  Nacre   Very Thick \r\n  Origin   China \r\n  Overall Quality    AA \r\n\r\n\r\n\r\n \r\n\r\nClasp available :\r\n\r\n \r\n\r\n \r\n\r\n\r\n \r\n\r\n \r\n\r\nWe have several options of  clasp(A,B,C,D), you might choose your favorite one from them(as picture)(the clasp been within the necklace is not available) , state your choice on the comment along with your order. If you don''t have any preference specified, we''ll ship with the default most favorable one.Clasp is made of 14k gold post.\r\n\r\n \r\n\r\nSpecification\r\nYour necklace will be carefully packed and shipped to you in an elegant velvet lined box and accompanied by lots of FREE extras (please see below).', '', 0);
INSERT INTO `products_description` VALUES (48, 2, '14k Gold White 7.5 - 8mm AAAA Freshwater Pearl Earring (DSZZ055)', 'The quintessential pieces of jewelry. This gorgeous white earring set is created from genuine high quality freshwater pearls. Carefully grown over many years, they have been gently harvested and matched to the strictest of standards.\r\n\r\nThis earring set showcases white freshwater 7.5 to 8mm pearls and is an overall AAAA quality - combining amazing mirror-like AAAA luster, perfect (and very rare) AAAA shape and AAAA body.Each pearl is mounted on a 14K yellow gold post to showcase the best of each individual pearl.', '', 0);
INSERT INTO `products_description` VALUES (48, 1, '14k Gold White 7.5 - 8mm AAAA Freshwater Pearl Earring (DSZZ055)', 'The quintessential pieces of jewelry. This gorgeous white earring set is created from genuine high quality freshwater pearls. Carefully grown over many years, they have been gently harvested and matched to the strictest of standards.\r\n\r\nThis earring set showcases white freshwater 7.5 to 8mm pearls and is an overall AAAA quality - combining amazing mirror-like AAAA luster, perfect (and very rare) AAAA shape and AAAA body.Each pearl is mounted on a 14K yellow gold post to showcase the best of each individual pearl.', '', 0);
INSERT INTO `products_description` VALUES (49, 2, 'Empire V-neck Sweep / Brush Train Chiffon Elastic Woven Satin Ma', 'Description: \r\nNote:\r\n LightInTheBox.com is the world’s leading wedding apparel supplier, providing high quality products with great service. It has come to our attention that some websites are using our product images to promote their low quality products. Please be careful to not buy from these sites as quality cannot be guaranteed.Click here to find out more>> \r\nSilhouette: Empire\r\nNeck:  V-neck\r\nTrain:  Sweep / Brush Train\r\nSleeve length: Short\r\nMaterial: Chiffon, Elastic Woven Satin \r\nNet weight:  2KG\r\nShipping weight:  2.5KG\r\nColor: White', '', 0);
INSERT INTO `products_description` VALUES (49, 1, 'Empire V-neck Sweep / Brush Train Chiffon Elastic Woven Satin Ma', 'Description: \r\nNote:\r\n LightInTheBox.com is the world’s leading wedding apparel supplier, providing high quality products with great service. It has come to our attention that some websites are using our product images to promote their low quality products. Please be careful to not buy from these sites as quality cannot be guaranteed.Click here to find out more>> \r\nSilhouette: Empire\r\nNeck:  V-neck\r\nTrain:  Sweep / Brush Train\r\nSleeve length: Short\r\nMaterial: Chiffon, Elastic Woven Satin \r\nNet weight:  2KG\r\nShipping weight:  2.5KG\r\nColor: White', '', 1);
INSERT INTO `products_description` VALUES (50, 2, 'Empire Strapless Short / Mini Satin Organza Maternity Wedding Dr', 'Description: \r\nNote:\r\n LightInTheBox.com is the world’s leading wedding apparel supplier, providing high quality products with great service. It has come to our attention that some websites are using our product images to promote their low quality products. Please be careful to not buy from these sites as quality cannot be guaranteed.Click here to find out more>> \r\nSilhouette: Empire\r\nNeck: Strapless   \r\nTrain: Short / Mini   \r\nSleeve length: Sleeveless   \r\nMaterial: Satin , Organza      \r\nEmbellishment: Sashes / Ribbons   \r\nNet weight:  1.5KG\r\nShipping weight:  2KG\r\nColor: White', '', 0);
INSERT INTO `products_description` VALUES (50, 1, 'Empire Strapless Short / Mini Satin Organza Maternity Wedding Dr', 'Description: \r\nNote:\r\n LightInTheBox.com is the world’s leading wedding apparel supplier, providing high quality products with great service. It has come to our attention that some websites are using our product images to promote their low quality products. Please be careful to not buy from these sites as quality cannot be guaranteed.Click here to find out more>> \r\nSilhouette: Empire\r\nNeck: Strapless   \r\nTrain: Short / Mini   \r\nSleeve length: Sleeveless   \r\nMaterial: Satin , Organza      \r\nEmbellishment: Sashes / Ribbons   \r\nNet weight:  1.5KG\r\nShipping weight:  2KG\r\nColor: White', '', 0);
INSERT INTO `products_description` VALUES (51, 2, 'Empire Straps Floor-length Elastic Woven Satin Chiffon Maternity', 'Description: \r\nNote:\r\n LightInTheBox.com is the world’s leading wedding apparel supplier, providing high quality products with great service. It has come to our attention that some websites are using our product images to promote their low quality products. Please be careful to not buy from these sites as quality cannot be guaranteed.Click here to find out more>> \r\nSilhouette: Empire\r\nNeck: Straps  \r\nTrain: Floor-length     \r\nSleeve length: Sleeveless \r\nMaterial: Elastic Woven Satin, Chiffon\r\nEmbellishment: Lace  \r\nNet weight: 2KG\r\nShipping weight: 2.5KG\r\nColor: White', '', 0);
INSERT INTO `products_description` VALUES (51, 1, 'Empire Straps Floor-length Elastic Woven Satin Chiffon Maternity', 'Description: \r\nNote:\r\n LightInTheBox.com is the world’s leading wedding apparel supplier, providing high quality products with great service. It has come to our attention that some websites are using our product images to promote their low quality products. Please be careful to not buy from these sites as quality cannot be guaranteed.Click here to find out more>> \r\nSilhouette: Empire\r\nNeck: Straps  \r\nTrain: Floor-length     \r\nSleeve length: Sleeveless \r\nMaterial: Elastic Woven Satin, Chiffon\r\nEmbellishment: Lace  \r\nNet weight: 2KG\r\nShipping weight: 2.5KG\r\nColor: White', '', 0);
INSERT INTO `products_description` VALUES (52, 2, 'Health Electronic Cigarette Pipe Holder DSE601 156 mm', 'Description: \r\nProduct Features:\r\nNormal working voltage: 3.3~4.2V\r\nLength: 156mm\r\nWeight for single cigarette: 115 g\r\nPacking: Unit packing\r\nSize(cm): 52x32x28\r\n\r\nColors: Brown / Black\r\n\r\nAtomized Cartridge:\r\nThe atomized cartridge is composed of an inhaler and a liquid container. The liquid container contains nicotine diluents which are ready to be atomized; it does not contain ingredients harmful to human body, such as tar and carcinogenic substance. The inhaler and liquid container are disposable. According to nicotine content, the atomized cartridges are classified into four kinds: high, medium, low and zero. Cartridge with high, medium or low nicotine content are only used as the substitute for cigarette during the process of smoke abstention, and the cartridge free of nicotine is for long-term use. \r\n\r\nExcept that, We also have  different flavor for choice like Tobacco, Mint, Mint Grass, Apple, Strawberry, Cherry, Vanilla, Chocolate, Coffee, Clove, Turkey, pipe, Cigar, Banana, Cream, Clove, Banana, Orange, Melon, Juicy Peach, Grape, Lemon, Ginseng, Coconut, Mango,and etc. please choose from the same type of cartridge according to you need. \r\n\r\nCartridge Details:\r\nMouthfuls for each cartridge can keep 900 mouthfuls\r\nNicotine content of each cartridge equals to 60pcs traditional cigarette\r\n\r\nBattery Details:\r\nContent of battery : 950mAh\r\nFull battery can keep for 1200 mouthfuls\r\nCharge time :3.5—4 hours\r\nLife of battery :300 times charger\r\n\r\nCertificate Available:\r\nCE/ROHS/SGS \r\nRoHs Standard: YES\r\nQC Standard: AQL1.5-4.0\r\n\r\nKit Includes:\r\n1×E-pipe\r\n1×Atomizing device\r\n3×Atomized cartridge \r\n2×Battery\r\n1×Charger\r\n1×Instruction Manual\r\n\r\nForbidden users:\r\nMinors under 18 years old. \r\nPeople without the habit of smoking. \r\nPeople sensitive to cigarette or any other ingredients in the inhalant. \r\nPregnant and breast feeding women.', '', 0);
INSERT INTO `products_description` VALUES (52, 1, 'Health Electronic Cigarette Pipe Holder DSE601 156 mm', 'Description: \r\nProduct Features:\r\nNormal working voltage: 3.3~4.2V\r\nLength: 156mm\r\nWeight for single cigarette: 115 g\r\nPacking: Unit packing\r\nSize(cm): 52x32x28\r\n\r\nColors: Brown / Black\r\n\r\nAtomized Cartridge:\r\nThe atomized cartridge is composed of an inhaler and a liquid container. The liquid container contains nicotine diluents which are ready to be atomized; it does not contain ingredients harmful to human body, such as tar and carcinogenic substance. The inhaler and liquid container are disposable. According to nicotine content, the atomized cartridges are classified into four kinds: high, medium, low and zero. Cartridge with high, medium or low nicotine content are only used as the substitute for cigarette during the process of smoke abstention, and the cartridge free of nicotine is for long-term use. \r\n\r\nExcept that, We also have  different flavor for choice like Tobacco, Mint, Mint Grass, Apple, Strawberry, Cherry, Vanilla, Chocolate, Coffee, Clove, Turkey, pipe, Cigar, Banana, Cream, Clove, Banana, Orange, Melon, Juicy Peach, Grape, Lemon, Ginseng, Coconut, Mango,and etc. please choose from the same type of cartridge according to you need. \r\n\r\nCartridge Details:\r\nMouthfuls for each cartridge can keep 900 mouthfuls\r\nNicotine content of each cartridge equals to 60pcs traditional cigarette\r\n\r\nBattery Details:\r\nContent of battery : 950mAh\r\nFull battery can keep for 1200 mouthfuls\r\nCharge time :3.5—4 hours\r\nLife of battery :300 times charger\r\n\r\nCertificate Available:\r\nCE/ROHS/SGS \r\nRoHs Standard: YES\r\nQC Standard: AQL1.5-4.0\r\n\r\nKit Includes:\r\n1×E-pipe\r\n1×Atomizing device\r\n3×Atomized cartridge \r\n2×Battery\r\n1×Charger\r\n1×Instruction Manual\r\n\r\nForbidden users:\r\nMinors under 18 years old. \r\nPeople without the habit of smoking. \r\nPeople sensitive to cigarette or any other ingredients in the inhalant. \r\nPregnant and breast feeding women.', '', 0);
INSERT INTO `products_description` VALUES (53, 2, 'Single-Breasted 2 Button Side-vented Notch Lapel Standard Wool G', 'Description: \r\nStyle: American style\r\nLayout: Straight(Waist=Bust)\r\nLapel: Notch Lapel Standard  \r\nPlacket: Single-Breasted 2 Button\r\nVented: Side-vented \r\nPocket: cover pocket\r\nLining Fabric: Camlet/Silk Cotton\r\nShow as Picture of Fabric: 50% Wool LightBrown Plain\r\nFabric ID of Show as Picture：this suit only uses the fabric as you seen on the product pic, other fabrics are not available to choose\r\nOccasions: Business/Formal/Job Interview/Ceremony/Wedding/Evening Party\r\nMaintenance: Dry Clean/No trichlorethylene/iron low/in the shade\r\nNet Weight: 1.2KG\r\nShipping Weight: 1.4KG', '', 0);
INSERT INTO `products_description` VALUES (53, 1, 'Single-Breasted 2 Button Side-vented Notch Lapel Standard Wool G', 'Description: \r\nStyle: American style\r\nLayout: Straight(Waist=Bust)\r\nLapel: Notch Lapel Standard  \r\nPlacket: Single-Breasted 2 Button\r\nVented: Side-vented \r\nPocket: cover pocket\r\nLining Fabric: Camlet/Silk Cotton\r\nShow as Picture of Fabric: 50% Wool LightBrown Plain\r\nFabric ID of Show as Picture：this suit only uses the fabric as you seen on the product pic, other fabrics are not available to choose\r\nOccasions: Business/Formal/Job Interview/Ceremony/Wedding/Evening Party\r\nMaintenance: Dry Clean/No trichlorethylene/iron low/in the shade\r\nNet Weight: 1.2KG\r\nShipping Weight: 1.4KG', '', 1);
INSERT INTO `products_description` VALUES (54, 2, 'Single-Breasted 2 Button Side-vented Notch Lapel Cotton Groom We', 'Description: \r\nStyle: European style\r\nLayout: Waist(Waist<Bust)\r\nLapel: Notch Lapel Standard(Width 7-9cm)\r\nPlacket: Single-Breasted 2 Button\r\nVented: Side-vented\r\nPocket: Cover/ Lined Pocket\r\nLining Fabric: Polyester\r\nShow as Picture of Fabric: 50% Wool Black Strip\r\nFabric ID of Show as Picture：this suit only uses the fabric as you seen on the product pic, other fabrics are not available to choose\r\nOccasions: Business/ Formal/ Ceremony/ Evening Party/ Wedding/ Job Interview/ Valentine''s Day\r\nMaintenance: Dry Clean/ No trichlorethylene/ Low heat/ In the shade\r\nNet Weight: 1.2KG\r\nShipping Weight: 1.4KG', '', 0);
INSERT INTO `products_description` VALUES (54, 1, 'Single-Breasted 2 Button Side-vented Notch Lapel Cotton Groom We', 'Description: \r\nStyle: European style\r\nLayout: Waist(Waist<Bust)\r\nLapel: Notch Lapel Standard(Width 7-9cm)\r\nPlacket: Single-Breasted 2 Button\r\nVented: Side-vented\r\nPocket: Cover/ Lined Pocket\r\nLining Fabric: Polyester\r\nShow as Picture of Fabric: 50% Wool Black Strip\r\nFabric ID of Show as Picture：this suit only uses the fabric as you seen on the product pic, other fabrics are not available to choose\r\nOccasions: Business/ Formal/ Ceremony/ Evening Party/ Wedding/ Job Interview/ Valentine''s Day\r\nMaintenance: Dry Clean/ No trichlorethylene/ Low heat/ In the shade\r\nNet Weight: 1.2KG\r\nShipping Weight: 1.4KG', '', 0);
INSERT INTO `products_description` VALUES (55, 2, 'Two Handles Chrome Widespread Bathroom Sink Faucet - Free Shippi', 'Specification\r\n\r\n Product Description   Two Handles Chrome Widespread Bathroom Sink Faucet with Hot and Cold Switch Function\r\n \r\n Suitable Place   Sink\r\n \r\n Installation Type   Centerset\r\n \r\n Valve Type\r\n   Ceramic Valve\r\n \r\n Finish   Chrome\r\n \r\n Faucet Total Height   5.5 cm\r\n \r\n\r\n Spout Height   3.5 cm\r\n \r\n\r\n Spout Length   16 cm\r\n \r\n\r\n Spout Width   19.5 cm\r\n \r\n\r\n Shipping Weight (kg)   2.69\r\n \r\n What''s in the box   1 x Faucet; \r\n  2 x Hose; \r\n  1 x Accessory Set; \r\n  1 x Installation Instruction \r\n\r\n\r\nFeatures\r\nThis faucet is easy to install even without prior experience, and meets or exceeds all applicable industry standards. \r\n\r\nAll of our faucets are leak-resistant due to the durability of their ceramic valves and have been tested for quality. \r\n\r\nThe service life of the valves are extraordinary and will withstand more than 600,000 uses, as well as extreme heat. Further tests include high pressure tests at 1.6Mpa.', '', 0);
INSERT INTO `products_description` VALUES (55, 1, 'Two Handles Chrome Widespread Bathroom Sink Faucet - Free Shippi', 'Specification\r\n\r\n Product Description   Two Handles Chrome Widespread Bathroom Sink Faucet with Hot and Cold Switch Function\r\n \r\n Suitable Place   Sink\r\n \r\n Installation Type   Centerset\r\n \r\n Valve Type\r\n   Ceramic Valve\r\n \r\n Finish   Chrome\r\n \r\n Faucet Total Height   5.5 cm\r\n \r\n\r\n Spout Height   3.5 cm\r\n \r\n\r\n Spout Length   16 cm\r\n \r\n\r\n Spout Width   19.5 cm\r\n \r\n\r\n Shipping Weight (kg)   2.69\r\n \r\n What''s in the box   1 x Faucet; \r\n  2 x Hose; \r\n  1 x Accessory Set; \r\n  1 x Installation Instruction \r\n\r\n\r\nFeatures\r\nThis faucet is easy to install even without prior experience, and meets or exceeds all applicable industry standards. \r\n\r\nAll of our faucets are leak-resistant due to the durability of their ceramic valves and have been tested for quality. \r\n\r\nThe service life of the valves are extraordinary and will withstand more than 600,000 uses, as well as extreme heat. Further tests include high pressure tests at 1.6Mpa.', '', 0);
INSERT INTO `products_description` VALUES (56, 2, 'Single Handle Chrome Waterfall LED Bathroom Sink Faucet 0812-LS0', 'Specification\r\n\r\n Product Description   Single Handle LED Glass Sink Faucet With Hot and Cold Switch Function\r\n \r\n Suitable Place   Sink\r\n \r\n Installation Type   Waterfall\r\n \r\n Valve Type\r\n   Ceramic Valve\r\n \r\n Material   Brass\r\n \r\n Finish   Chrome\r\n \r\n Dimension   33*17*14cm\r\n \r\n Shipping Weight (kg)   1.5\r\n \r\n What''s in the box   1 x Faucet;\r\n  2 x Hose; \r\n  1 x Accessory Set; \r\n  1 x Installation Instruction \r\n\r\n\r\nFeatures\r\nThis sleekly designed single lever LED faucet is best suited for use over a bathroom sink. The chrome and glass style is the perfect addition to top off a minimalistic bathroom design.', '', 0);
INSERT INTO `products_description` VALUES (56, 1, 'Single Handle Chrome Waterfall LED Bathroom Sink Faucet 0812-LS0', 'Specification\r\n\r\n Product Description   Single Handle LED Glass Sink Faucet With Hot and Cold Switch Function\r\n \r\n Suitable Place   Sink\r\n \r\n Installation Type   Waterfall\r\n \r\n Valve Type\r\n   Ceramic Valve\r\n \r\n Material   Brass\r\n \r\n Finish   Chrome\r\n \r\n Dimension   33*17*14cm\r\n \r\n Shipping Weight (kg)   1.5\r\n \r\n What''s in the box   1 x Faucet;\r\n  2 x Hose; \r\n  1 x Accessory Set; \r\n  1 x Installation Instruction \r\n\r\n\r\nFeatures\r\nThis sleekly designed single lever LED faucet is best suited for use over a bathroom sink. The chrome and glass style is the perfect addition to top off a minimalistic bathroom design.', '', 0);
INSERT INTO `products_description` VALUES (57, 2, 'Tiffany-style Floral Table Lamp(0923-T19)', 'Description: \r\nSpecification\r\nProduct Description Tiffany-style Floral Table Lamp\r\n \r\nMaterial Stained Glass, Zinc Alloy \r\n \r\nColor Available Shown As Picture \r\nProduct Dimension D41 cm × H54 cm\r\n \r\nScrew Specification E27 (Buld Not Included) \r\nShipping Weight \r\n 4.6 kg\r\n \r\n\r\n\r\nFeatures\r\nTiffany-style floral table lamp is sure to brighten your home decor \r\nLighting is sure to dress up any room in your home or office', '', 0);
INSERT INTO `products_description` VALUES (57, 1, 'Tiffany-style Floral Table Lamp(0923-T19)', 'Description: \r\nSpecification\r\nProduct Description Tiffany-style Floral Table Lamp\r\n \r\nMaterial Stained Glass, Zinc Alloy \r\n \r\nColor Available Shown As Picture \r\nProduct Dimension D41 cm × H54 cm\r\n \r\nScrew Specification E27 (Buld Not Included) \r\nShipping Weight \r\n 4.6 kg\r\n \r\n\r\n\r\nFeatures\r\nTiffany-style floral table lamp is sure to brighten your home decor \r\nLighting is sure to dress up any room in your home or office', '', 1);
INSERT INTO `products_description` VALUES (58, 2, 'Butterfly Tie Red Shade Table Lamp(0836-MT-8328E)', 'Description: \r\nSpecification\r\nProduct Description Butterfly Tie Red Shade Table Lamp \r\nMaterial Iron Chrome Finish, Crystal \r\nLight Source Color Warm Color \r\nColor Available Shown As Picture \r\nProduct Dimension 50 cm. H × 15 cm. Diameter \r\nSuitable Places Bedroom\r\n \r\nCoverage 10 ㎡ - 15 ㎡\r\n \r\nScrew Specification E27, Max 60 W\r\n \r\nShipping Weight (kg) 1.65 kg\r\n \r\n\r\n\r\nFeatures\r\nLampshade Dimension: 18.5 cm. H × 13 cm. Diameter', '', 0);
INSERT INTO `products_description` VALUES (58, 1, 'Butterfly Tie Red Shade Table Lamp(0836-MT-8328E)', 'Description: \r\nSpecification\r\nProduct Description Butterfly Tie Red Shade Table Lamp \r\nMaterial Iron Chrome Finish, Crystal \r\nLight Source Color Warm Color \r\nColor Available Shown As Picture \r\nProduct Dimension 50 cm. H × 15 cm. Diameter \r\nSuitable Places Bedroom\r\n \r\nCoverage 10 ㎡ - 15 ㎡\r\n \r\nScrew Specification E27, Max 60 W\r\n \r\nShipping Weight (kg) 1.65 kg\r\n \r\n\r\n\r\nFeatures\r\nLampshade Dimension: 18.5 cm. H × 13 cm. Diameter', '', 0);
INSERT INTO `products_description` VALUES (59, 2, 'Handmade Decorative People Painting - Free Shipping (0695 -PE-37', 'Description: \r\nSpecification\r\n\r\n Title  Hand Made Abstract Painting \r\n Subject  \r\n  Abstract \r\n Materials  Canvas \r\n Sizes Available  S \r\n Suitable Place  Great for living room, children room, study, coffee bar ,club, hotel \r\n Actual Dimensions                         \r\n S size: 70 cm x 90 cm     \r\n \r\n \r\n Shipping Weight\r\n  1 kg \r\n\r\n\r\nFeatures\r\nThis is a real oil painting, NOT a print or transfer.   \r\n100% hand painted by Chinese expert artists with oil paint on real canvas. Without digital technique. \r\nCanvas only, no frame included \r\nHanging wire not included/ Painting without stretched bar \r\nThis canvas Art Collection is being custom built for you. Please allow 7 - 9 business days for the artist to finish.', '', 1);
INSERT INTO `products_description` VALUES (59, 1, 'Handmade Decorative People Painting - Free Shipping (0695 -PE-37', 'Description: \r\nSpecification\r\n\r\n Title  Hand Made Abstract Painting \r\n Subject  \r\n  Abstract \r\n Materials  Canvas \r\n Sizes Available  S \r\n Suitable Place  Great for living room, children room, study, coffee bar ,club, hotel \r\n Actual Dimensions                         \r\n S size: 70 cm x 90 cm     \r\n \r\n \r\n Shipping Weight\r\n  1 kg \r\n\r\n\r\nFeatures\r\nThis is a real oil painting, NOT a print or transfer.   \r\n100% hand painted by Chinese expert artists with oil paint on real canvas. Without digital technique. \r\nCanvas only, no frame included \r\nHanging wire not included/ Painting without stretched bar \r\nThis canvas Art Collection is being custom built for you. Please allow 7 - 9 business days for the artist to finish.', '', 2);
INSERT INTO `products_description` VALUES (60, 2, 'Handmade Oil Painting Cornfield 20"x24"(YCF-MP004)', 'Specification\r\n\r\n Original Artist:\r\n  Vincent Van Gogh \r\n Title  Cornfield \r\n Style  Post-Impressionism \r\n Subject    Museum Masters \r\n Materials  Canvas \r\n Suitable Place  Great for living room, bedroom, study, coffee  bar, club, hotel \r\n Dimensions  \r\n 20in.W x 24in.H\r\n\r\n\r\n \r\n\r\n\r\nFeatures\r\n20" X 24" Oil Painting On Canvas Hand painted oil reproduction of a famous painting.\r\nThis is a REAL oil painting-NOT a print, poster,giclee and canvas transfer.   \r\n100% Hand Painted BY Chinese expert ARTISTS with oil paint on real Canvas.Without digital technique  \r\n\r\nCanvas only, no frame included\r\n Hanging wire not included/ Painting without stretched bar', '', 0);
INSERT INTO `products_description` VALUES (60, 1, 'Handmade Oil Painting Cornfield 20"x24"(YCF-MP004)', 'Specification\r\n\r\n Original Artist:\r\n  Vincent Van Gogh \r\n Title  Cornfield \r\n Style  Post-Impressionism \r\n Subject    Museum Masters \r\n Materials  Canvas \r\n Suitable Place  Great for living room, bedroom, study, coffee  bar, club, hotel \r\n Dimensions  \r\n 20in.W x 24in.H\r\n\r\n\r\n \r\n\r\n\r\nFeatures\r\n20" X 24" Oil Painting On Canvas Hand painted oil reproduction of a famous painting.\r\nThis is a REAL oil painting-NOT a print, poster,giclee and canvas transfer.   \r\n100% Hand Painted BY Chinese expert ARTISTS with oil paint on real Canvas.Without digital technique  \r\n\r\nCanvas only, no frame included\r\n Hanging wire not included/ Painting without stretched bar', '', 1);
INSERT INTO `products_description` VALUES (61, 2, 'Luxurious 4-Pieces Polyresin Bathroom Accessory Set (0718-28031)', 'Description: \r\nSpecifications\r\nProduct Description Luxurious 4-Pieces Polyresin Bathroom Accessory Set \r\nSuitable Place Bathroom \r\nMaterial High Quality Polyresin (specially, our supplier is the leading manufacturer in clear polyresin production) \r\nDimensions 1 Unit Lotion Dispenser, Wide / Tall Size: 5.51 x 4.02 inch, Approx. (14 x 10.2 cm)\r\n1 Unit Toothbrush Holder, Wide / Tall Size: 2.99 x 5 inch, Approx. (7.6 x 12.7 cm)\r\n1 Unit Tumbler, Wide / Tall Size: 2.52 x 4.02 inch, Approx. (6.4 x 10.2 cm)\r\n1 Unit Soap Dish, Wide Size: 5.51 inch, Approx. (14 cm) \r\nShipping Weight 1.9 Kg', '', 2);
INSERT INTO `products_description` VALUES (61, 1, 'Luxurious 4-Pieces Polyresin Bathroom Accessory Set (0718-28031)', 'Description: \r\nSpecifications\r\nProduct Description Luxurious 4-Pieces Polyresin Bathroom Accessory Set \r\nSuitable Place Bathroom \r\nMaterial High Quality Polyresin (specially, our supplier is the leading manufacturer in clear polyresin production) \r\nDimensions 1 Unit Lotion Dispenser, Wide / Tall Size: 5.51 x 4.02 inch, Approx. (14 x 10.2 cm)\r\n1 Unit Toothbrush Holder, Wide / Tall Size: 2.99 x 5 inch, Approx. (7.6 x 12.7 cm)\r\n1 Unit Tumbler, Wide / Tall Size: 2.52 x 4.02 inch, Approx. (6.4 x 10.2 cm)\r\n1 Unit Soap Dish, Wide Size: 5.51 inch, Approx. (14 cm) \r\nShipping Weight 1.9 Kg', '', 0);
INSERT INTO `products_description` VALUES (62, 2, 'Luxurious 4-Pieces Polyresin Bathroom Accessory Set (0718-28008)', 'Description: \r\nSpecifications\r\nProduct Description Luxurious 4-Pieces Polyresin Bathroom Accessory Set \r\nSuitable Place Bathroom \r\nMaterial High Quality Polyresin (specially, our supplier is the leading manufacturer in clear polyresin production) \r\nDimensions 1 Unit Lotion Dispenser, Wide / Tall Size: 3.35 x 8.27 inch, Approx. (8.5 x 21 cm)\r\n1 Unit Toothbrush Holder, Wide / Tall Size: 2.76 x 5.71 inch, Approx. (7 x 14.5 cm)\r\n1 Unit Tumbler, Wide / Tall Size: 3.35 x 4.45 inch, Approx. (8.5 x 11.3 cm)\r\n1 Unit Soap Dish, Wide Size: 4.92 inch, Approx. (12.5 cm) \r\nShipping Weight 1.4 Kg', '', 0);
INSERT INTO `products_description` VALUES (62, 1, 'Luxurious 4-Pieces Polyresin Bathroom Accessory Set (0718-28008)', 'Description: \r\nSpecifications\r\nProduct Description Luxurious 4-Pieces Polyresin Bathroom Accessory Set \r\nSuitable Place Bathroom \r\nMaterial High Quality Polyresin (specially, our supplier is the leading manufacturer in clear polyresin production) \r\nDimensions 1 Unit Lotion Dispenser, Wide / Tall Size: 3.35 x 8.27 inch, Approx. (8.5 x 21 cm)\r\n1 Unit Toothbrush Holder, Wide / Tall Size: 2.76 x 5.71 inch, Approx. (7 x 14.5 cm)\r\n1 Unit Tumbler, Wide / Tall Size: 3.35 x 4.45 inch, Approx. (8.5 x 11.3 cm)\r\n1 Unit Soap Dish, Wide Size: 4.92 inch, Approx. (12.5 cm) \r\nShipping Weight 1.4 Kg', '', 1);
INSERT INTO `products_description` VALUES (63, 2, 'Portable Wireless-N 3G Router(SMQ5725)', 'Description: \r\nHighlight\r\nCellular Redundancy Failover to 3G \r\nWorks with USB 3G Card(CDMA2000 EVDO, TD-SCDMA, HSPA/WCDMA) \r\nSupport PPPoE, Dynamic IP, and static IP broadband functions \r\nAutomatic dialing, On-demand dialing, detachable time dialing, filling most dialing requirements \r\nSupports UPnP, DDNS, static routing \r\nSupports SSID broadcast control and MAC access control list \r\nSupports 64/128/152-bit WEP, complies with 128 bit WPA(TKIP/AES), Shared Key Authentication \r\nBuilt-in firewall features IP, MAC, URL filtering which flexibly controls online access and time \r\nBuilt-in DHCP server with automatic dynamic IP address distribution \r\nUser interface supports free WEB software updates \r\nSupports configuration file backup an restore \r\nInternal antennas', '', 1);
INSERT INTO `products_description` VALUES (63, 1, 'Portable Wireless-N 3G Router(SMQ5725)', 'Description: \r\nHighlight\r\nCellular Redundancy Failover to 3G \r\nWorks with USB 3G Card(CDMA2000 EVDO, TD-SCDMA, HSPA/WCDMA) \r\nSupport PPPoE, Dynamic IP, and static IP broadband functions \r\nAutomatic dialing, On-demand dialing, detachable time dialing, filling most dialing requirements \r\nSupports UPnP, DDNS, static routing \r\nSupports SSID broadcast control and MAC access control list \r\nSupports 64/128/152-bit WEP, complies with 128 bit WPA(TKIP/AES), Shared Key Authentication \r\nBuilt-in firewall features IP, MAC, URL filtering which flexibly controls online access and time \r\nBuilt-in DHCP server with automatic dynamic IP address distribution \r\nUser interface supports free WEB software updates \r\nSupports configuration file backup an restore \r\nInternal antennas', '', 0);
INSERT INTO `products_description` VALUES (64, 2, 'Charming Crystal Flower And Pearl Wedding Jewelry Set (SZY1735)', 'Description: \r\nMaterial: Alloy with Stone and Imitation Pearl \r\nPlating: Rhodium Plated\r\nNet Weight: 0.5kg \r\nPendant size: 1.2cmx1.2cm\r\nColor: Clear \r\nChain length: Chain:16inch +1.2 inch Extension ；Earring:1.6*3.5cm \r\n\r\n\r\nYour jewelry will be carefully packed and shipped to you in an elegant bag  (please see below).', '', 2);
INSERT INTO `products_description` VALUES (64, 1, 'Charming Crystal Flower And Pearl Wedding Jewelry Set (SZY1735)', 'Description: \r\nMaterial: Alloy with Stone and Imitation Pearl \r\nPlating: Rhodium Plated\r\nNet Weight: 0.5kg \r\nPendant size: 1.2cmx1.2cm\r\nColor: Clear \r\nChain length: Chain:16inch +1.2 inch Extension ；Earring:1.6*3.5cm \r\n\r\n\r\nYour jewelry will be carefully packed and shipped to you in an elegant bag  (please see below).', '', 3);
INSERT INTO `products_description` VALUES (65, 2, 'Gorgeous Alloy with Clear Crystal Wedding Bridal Jewelry Set 152', 'Description: \r\nMaterial: Alloy with Clear Crystal\r\nPlating: Rhodium Plated\r\nWearing Method: Earclip\r\nNecklace Chain Length: 15.30 inch, 4.72 inch Extension\r\nEarring Size: 6 mm x 45 mm\r\nColor: Clear\r\nNet weight: 0.2 KG', '', 0);
INSERT INTO `products_description` VALUES (65, 1, 'Gorgeous Alloy with Clear Crystal Wedding Bridal Jewelry Set 152', 'Description: \r\nMaterial: Alloy with Clear Crystal\r\nPlating: Rhodium Plated\r\nWearing Method: Earclip\r\nNecklace Chain Length: 15.30 inch, 4.72 inch Extension\r\nEarring Size: 6 mm x 45 mm\r\nColor: Clear\r\nNet weight: 0.2 KG', '', 4);
INSERT INTO `products_description` VALUES (66, 2, 'Gorgeous Clear Crystals Wedding Bridal Jewelry Set (TL0220)', 'Description: \r\nMaterial:  Alloy with Clear Crystals\r\nPlating: Rhodium Plated\r\nNecklace Length: Adjustable from 11.42 to 16.14 inch (Approx. 29 to 41cm)\r\nEarrings: Earclip\r\nColor: Clear\r\nNet Weight: 0.1 kg\r\nShipping Weight: 0.24 kg', '', 1);
INSERT INTO `products_description` VALUES (66, 1, 'Gorgeous Clear Crystals Wedding Bridal Jewelry Set (TL0220)', 'Description: \r\nMaterial:  Alloy with Clear Crystals\r\nPlating: Rhodium Plated\r\nNecklace Length: Adjustable from 11.42 to 16.14 inch (Approx. 29 to 41cm)\r\nEarrings: Earclip\r\nColor: Clear\r\nNet Weight: 0.1 kg\r\nShipping Weight: 0.24 kg', '', 0);
INSERT INTO `products_description` VALUES (67, 2, 'Beautiful 925 Sterling Silver With Jade Decoration Platinum Plat', 'Description: \r\nMaterial: 925 Sterling Silver With Jade\r\nPlating: Platinum Plated\r\nSize: Length x Width: 180 x 5 mm \r\nShown Color: Green\r\nNet Weight: 0.15 Kg\r\nShipping Weight: 0.24 Kg', '', 0);
INSERT INTO `products_description` VALUES (67, 1, 'Beautiful 925 Sterling Silver With Jade Decoration Platinum Plat', 'Description: \r\nMaterial: 925 Sterling Silver With Jade\r\nPlating: Platinum Plated\r\nSize: Length x Width: 180 x 5 mm \r\nShown Color: Green\r\nNet Weight: 0.15 Kg\r\nShipping Weight: 0.24 Kg', '', 0);
INSERT INTO `products_description` VALUES (68, 2, 'Beautiful 925 Sterling Silver With CZ Cubic Zirconia Decoration ', 'Description: \r\nMaterial: 925 Sterling Silver With CZ Cubic Zirconia\r\nPlating: Platinum Plated\r\nSize: Length x Width: 190 x 6 mm \r\nShown Color: Multi-colored\r\nNet Weight: 0.15 Kg\r\nShipping Weight: 0.24 Kg', '', 0);
INSERT INTO `products_description` VALUES (68, 1, 'Beautiful 925 Sterling Silver With CZ Cubic Zirconia Decoration ', 'Description: \r\nMaterial: 925 Sterling Silver With CZ Cubic Zirconia\r\nPlating: Platinum Plated\r\nSize: Length x Width: 190 x 6 mm \r\nShown Color: Multi-colored\r\nNet Weight: 0.15 Kg\r\nShipping Weight: 0.24 Kg', '', 0);
INSERT INTO `products_description` VALUES (69, 2, 'Shining Crystal With Platinum Plated Bracelet (0801-11350-11351)', 'Description: \r\nMaterial: Top Quality Crystal and 925 Sterling Silver  \r\nPlating: Platinum Plated\r\nSize: Crystal Width 8mm\r\nShown Color: Champagne, Clear\r\nNet Weight: 0.09 Kg\r\nShipping Weight: 0.12 Kg', '', 0);
INSERT INTO `products_description` VALUES (69, 1, 'Shining Crystal With Platinum Plated Bracelet (0801-11350-11351)', 'Description: \r\nMaterial: Top Quality Crystal and 925 Sterling Silver  \r\nPlating: Platinum Plated\r\nSize: Crystal Width 8mm\r\nShown Color: Champagne, Clear\r\nNet Weight: 0.09 Kg\r\nShipping Weight: 0.12 Kg', '', 0);
INSERT INTO `products_description` VALUES (70, 2, 'Beautiful 925 Sterling Silver With Crystal Decoration Platinum P', 'Description: \r\nMaterial: 925 Sterling Silver With Crystal\r\nPlating: Platinum Plated\r\nSize: Length x Width: 190 x 14 mm \r\nShown Color: Champagne\r\nNet Weight: 0.15 Kg\r\nShipping Weight: 0.24 Kg', '', 0);
INSERT INTO `products_description` VALUES (70, 1, 'Beautiful 925 Sterling Silver With Crystal Decoration Platinum P', 'Description: \r\nMaterial: 925 Sterling Silver With Crystal\r\nPlating: Platinum Plated\r\nSize: Length x Width: 190 x 14 mm \r\nShown Color: Champagne\r\nNet Weight: 0.15 Kg\r\nShipping Weight: 0.24 Kg', '', 0);
INSERT INTO `products_description` VALUES (71, 2, '10-11 Newcastle Customized Home Soccer Jersey & Short Kit (GZZQL', 'Material: 100% Polyester, breathable and easy-care  \r\nAvailable Size: L XL XXL XXXL \r\nUnit Package Weight: 0.5 kg \r\n\r\n\r\nPlease choose your size\r\n\r\n Size Chart \r\nSize L XL XXL XXXL \r\nNeck (inch) 16-16.5 17-17.5 18-18.5 19-19.5 \r\nChest (inch) 42-44 46-48 50-52 54-56', '', 1);
INSERT INTO `products_description` VALUES (71, 1, '10-11 Newcastle Customized Home Soccer Jersey & Short Kit (GZZQL', 'Material: 100% Polyester, breathable and easy-care  \r\nAvailable Size: L XL XXL XXXL \r\nUnit Package Weight: 0.5 kg \r\n\r\n\r\nPlease choose your size\r\n\r\n Size Chart \r\nSize L XL XXL XXXL \r\nNeck (inch) 16-16.5 17-17.5 18-18.5 19-19.5 \r\nChest (inch) 42-44 46-48 50-52 54-56', '', 2);
INSERT INTO `products_description` VALUES (72, 2, '09-10 Manchester United Customized Home Red & Black Soccer Jerse', 'Material: 100% Polyester, breathable and easy-care  \r\nAvailable Size: L XL XXL XXXL \r\nUnit Package Weight: 0.5 kg \r\n\r\n\r\nPlease choose your size\r\n\r\n Size Chart \r\nSize L XL XXL XXXL \r\nNeck (inch) 16-16.5 17-17.5 18-18.5 19-19.5 \r\nChest (inch) 42-44 46-48 50-52 54-56', '', 1);
INSERT INTO `products_description` VALUES (72, 1, '09-10 Manchester United Customized Home Red & Black Soccer Jerse', 'Material: 100% Polyester, breathable and easy-care  \r\nAvailable Size: L XL XXL XXXL \r\nUnit Package Weight: 0.5 kg \r\n\r\n\r\nPlease choose your size\r\n\r\n Size Chart \r\nSize L XL XXL XXXL \r\nNeck (inch) 16-16.5 17-17.5 18-18.5 19-19.5 \r\nChest (inch) 42-44 46-48 50-52 54-56', '', 0);
INSERT INTO `products_description` VALUES (73, 2, '2008 Francaise Des Jeux Team Short Sleeves Cycling Jersey with B', 'Description: \r\nMaterial: 90% Polyester, 10% Lycra \r\nAvailable Size:  M / L / XL / XXL \r\nNet Weight: 0.5KG\r\nFeatures\r\nCOOLMAX: Quick-Dry Function and Make you Feel More Comfortable \r\nHigh Quality Tights Fabric: Light and Decrease the Wind 3 Rear Pockets \r\nIt Can Keep you Dry and Cool in the Hot Condition and Warm in Cold Condition \r\nEven you’re Sweaty,the Jersey Never Adhere to your Skin', '', 0);
INSERT INTO `products_description` VALUES (73, 1, '2008 Francaise Des Jeux Team Short Sleeves Cycling Jersey with B', 'Description: \r\nMaterial: 90% Polyester, 10% Lycra \r\nAvailable Size:  M / L / XL / XXL \r\nNet Weight: 0.5KG\r\nFeatures\r\nCOOLMAX: Quick-Dry Function and Make you Feel More Comfortable \r\nHigh Quality Tights Fabric: Light and Decrease the Wind 3 Rear Pockets \r\nIt Can Keep you Dry and Cool in the Hot Condition and Warm in Cold Condition \r\nEven you’re Sweaty,the Jersey Never Adhere to your Skin', '', 0);
INSERT INTO `products_description` VALUES (74, 2, '2010 Tour de France Sky Team Short Sleeves White Jersey with Bib', 'Description: \r\nMaterial: 90% Polyester, 10% Lycra \r\nAvailable Size:  M, L, XL, XXL \r\nNet Weight: 0.5KG\r\nFeatures\r\nCOOLMAX: Quick-Dry Function and Make you Feel More Comfortable \r\nHigh Quality Tights Fabric: Light and Decrease the Wind 3 Rear Pockets \r\nIt Can Keep you Dry and Cool in the Hot Condition and Warm in Cold Condition \r\nEven you’re Sweaty,the Jersey Never Adhere to your Skin', '', 0);
INSERT INTO `products_description` VALUES (74, 1, '2010 Tour de France Sky Team Short Sleeves White Jersey with Bib', 'Description: \r\nMaterial: 90% Polyester, 10% Lycra \r\nAvailable Size:  M, L, XL, XXL \r\nNet Weight: 0.5KG\r\nFeatures\r\nCOOLMAX: Quick-Dry Function and Make you Feel More Comfortable \r\nHigh Quality Tights Fabric: Light and Decrease the Wind 3 Rear Pockets \r\nIt Can Keep you Dry and Cool in the Hot Condition and Warm in Cold Condition \r\nEven you’re Sweaty,the Jersey Never Adhere to your Skin', '', 0);
INSERT INTO `products_description` VALUES (75, 2, 'Beach Sexy - Leopard Line Print(YCSM0924-B012A)', 'Description: \r\nPush-up triangle top\r\nShown with string bottom\r\nLove lift? Crave cleavage? Removable padding for maximum push-up in a wide variety of colors and prints.\r\n• Sleek shape\r\n• Underwire cups\r\n• Ties at neck\r\n• Adjustable back closure\r\n• Imported nylon/Lycra® spandex', '', 1);
INSERT INTO `products_description` VALUES (75, 1, 'Beach Sexy - Leopard Line Print(YCSM0924-B012A)', 'Description: \r\nPush-up triangle top\r\nShown with string bottom\r\nLove lift? Crave cleavage? Removable padding for maximum push-up in a wide variety of colors and prints.\r\n• Sleek shape\r\n• Underwire cups\r\n• Ties at neck\r\n• Adjustable back closure\r\n• Imported nylon/Lycra® spandex', '', 0);
INSERT INTO `products_description` VALUES (76, 2, '2010 New Arrival Sexy Stripes Skirt 3 piece Bikini Swimwear Set(', 'Description: \r\nColor: Yellow, Blue, Pink\r\nSize: M, L, XL\r\nMaterial: \r\nBody: 82% nylon, 18% spandex\r\nLining: 100% polyester\r\nFeatures\r\n\r\nKeep your beach attire looking simple yet sexy with this 2010 New Arrival Bikini. \r\nCross back ties tie off at center back creating a secure and customizable fit. \r\nLined for greater comfort. \r\nHand wash cold and hang dry in shade.', '', 0);
INSERT INTO `products_description` VALUES (76, 1, '2010 New Arrival Sexy Stripes Skirt 3 piece Bikini Swimwear Set(', 'Description: \r\nColor: Yellow, Blue, Pink\r\nSize: M, L, XL\r\nMaterial: \r\nBody: 82% nylon, 18% spandex\r\nLining: 100% polyester\r\nFeatures\r\n\r\nKeep your beach attire looking simple yet sexy with this 2010 New Arrival Bikini. \r\nCross back ties tie off at center back creating a secure and customizable fit. \r\nLined for greater comfort. \r\nHand wash cold and hang dry in shade.', '', 0);
INSERT INTO `products_description` VALUES (77, 2, 'EZRun 9T KV4300 Sensorless Brushless Motor For 1/10 Car(H3004048', 'Description: \r\nFeatures\r\nTop quality materials:\r\nAl shell (case)\r\nHigh quality magnets\r\nCopper wires of high temperature endurance\r\nGood quality bearings\r\n\r\nDustproof design. \r\nLow price but good quality, easy to use.', '', 0);
INSERT INTO `products_description` VALUES (77, 1, 'EZRun 9T KV4300 Sensorless Brushless Motor For 1/10 Car(H3004048', 'Description: \r\nFeatures\r\nTop quality materials:\r\nAl shell (case)\r\nHigh quality magnets\r\nCopper wires of high temperature endurance\r\nGood quality bearings\r\n\r\nDustproof design. \r\nLow price but good quality, easy to use.', '', 0);
INSERT INTO `products_description` VALUES (78, 2, 'GWS EP Propeller 127x76mm 6pcs/set(GWS-DD-5030)', 'Description: \r\nGeneral Information\r\nGWS EP Propeller (DD-5030 127x76mm) \r\nColours vary. Not always orange\r\n\r\nDD:Direct Drive (fast spinning) -Straight Edge\r\nRD:Reduction Drive (Slow Fly, Outrunner or Gearbox) - Curved Edge\r\n\r\nNote: Propellers colour may differ from that in the photo\r\n\r\nAttributes\r\nBy Use Of: Airplane\r\nThread pitch: 76mm\r\nDiameter: 127mm\r\nMaterial: Plastic\r\n\r\nSpecification\r\n Blade mumber  2\r\n \r\n Directionfrotation\r\n  normal \r\n Blade type  low speed\r\n \r\n Weight  21g\r\n \r\n Length (Inch [X])  5\r\n \r\n Pitch (Inch [Y])  3', '', 1);
INSERT INTO `products_description` VALUES (78, 1, 'GWS EP Propeller 127x76mm 6pcs/set(GWS-DD-5030)', 'Description: \r\nGeneral Information\r\nGWS EP Propeller (DD-5030 127x76mm) \r\nColours vary. Not always orange\r\n\r\nDD:Direct Drive (fast spinning) -Straight Edge\r\nRD:Reduction Drive (Slow Fly, Outrunner or Gearbox) - Curved Edge\r\n\r\nNote: Propellers colour may differ from that in the photo\r\n\r\nAttributes\r\nBy Use Of: Airplane\r\nThread pitch: 76mm\r\nDiameter: 127mm\r\nMaterial: Plastic\r\n\r\nSpecification\r\n Blade mumber  2\r\n \r\n Directionfrotation\r\n  normal \r\n Blade type  low speed\r\n \r\n Weight  21g\r\n \r\n Length (Inch [X])  5\r\n \r\n Pitch (Inch [Y])  3', '', 1);
INSERT INTO `products_description` VALUES (79, 2, 'GWS HD8040 3 Blade Prop 2pc pack(GWPRO002S3D)', 'Description: \r\nGeneral Information\r\nGWS HD8040 3 Blade Prop (2pc pack)\r\nEach blade is an 8040\r\nComes with adapter plugs, 1/4,8mm,6mm,5mm,4mm,3mm\r\n\r\nAttributes\r\nBy Use Of: Airplane\r\nThread pitch: 102mm\r\nDiameter: 203mm\r\nMaterial: Plastic\r\n\r\nSpecification\r\n Blade mumber  3\r\n \r\n Directionfrotation\r\n  normal \r\n Blade type  high speed\r\n \r\n Weight  25g\r\n \r\n Length (Inch [X])  8\r\n \r\n Pitch (Inch [Y])  4', '', 0);
INSERT INTO `products_description` VALUES (79, 1, 'GWS HD8040 3 Blade Prop 2pc pack(GWPRO002S3D)', 'Description: \r\nGeneral Information\r\nGWS HD8040 3 Blade Prop (2pc pack)\r\nEach blade is an 8040\r\nComes with adapter plugs, 1/4,8mm,6mm,5mm,4mm,3mm\r\n\r\nAttributes\r\nBy Use Of: Airplane\r\nThread pitch: 102mm\r\nDiameter: 203mm\r\nMaterial: Plastic\r\n\r\nSpecification\r\n Blade mumber  3\r\n \r\n Directionfrotation\r\n  normal \r\n Blade type  high speed\r\n \r\n Weight  25g\r\n \r\n Length (Inch [X])  8\r\n \r\n Pitch (Inch [Y])  4', '', 0);
INSERT INTO `products_description` VALUES (80, 2, '6*3mm Polyurethane Tubing For Gas-100cm (51807)', 'Description: \r\nSpecification\r\nFor gasoline \r\nMaterial: polyurethane \r\nColor:Black,Red,Yellow,Blue,Green \r\nO.D.: 6mm \r\nI.D.: 3mm \r\nLength: 100cm \r\nQuantity: 1pcs \r\nWeight: 33g', '', 0);
INSERT INTO `products_description` VALUES (80, 1, '6*3mm Polyurethane Tubing For Gas-100cm (51807)', 'Description: \r\nSpecification\r\nFor gasoline \r\nMaterial: polyurethane \r\nColor:Black,Red,Yellow,Blue,Green \r\nO.D.: 6mm \r\nI.D.: 3mm \r\nLength: 100cm \r\nQuantity: 1pcs \r\nWeight: 33g', '', 0);
INSERT INTO `products_description` VALUES (81, 2, '1/10 Aluminum Adjustable Pipe - Type B (51911)', 'Description: \r\nSpecification\r\nFor 1/10 RC car \r\nMaterial: aluminum alloy \r\nColor: Golden,Blue,Black, Black gold,Purple,Red,Silver,Titanium \r\nWeight: 87g \r\nQuantity: 1 pcs \r\nSize: \r\nLength: 136mm \r\nDiameter: 34mm', '', 2);
INSERT INTO `products_description` VALUES (81, 1, '1/10 Aluminum Adjustable Pipe - Type B (51911)', 'Description: \r\nSpecification\r\nFor 1/10 RC car \r\nMaterial: aluminum alloy \r\nColor: Golden,Blue,Black, Black gold,Purple,Red,Silver,Titanium \r\nWeight: 87g \r\nQuantity: 1 pcs \r\nSize: \r\nLength: 136mm \r\nDiameter: 34mm', '', 2);
INSERT INTO `products_description` VALUES (82, 2, 'PC to TV Cable (S-Video + 3.5mm to Composite AV) 5 ft', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nOverview:\r\n\r\n5 feet long connection cable \r\nConnects your PC (with a TV out video card) to TV \r\nCan be split into two cables and used separately: S-Video to compsite video and 3.5mm audio to RCA composite cable', '', 1);
INSERT INTO `products_description` VALUES (82, 1, 'PC to TV Cable (S-Video + 3.5mm to Composite AV) 5 ft', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nOverview:\r\n\r\n5 feet long connection cable \r\nConnects your PC (with a TV out video card) to TV \r\nCan be split into two cables and used separately: S-Video to compsite video and 3.5mm audio to RCA composite cable', '', 0);
INSERT INTO `products_description` VALUES (83, 2, 'USB SATA/IDE Cable Set', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nOverview:\r\n\r\nConverts all SATA, 2.5" IDE, and 3.5" IDE to USB 2.0 connection \r\nAccommodate all existing storage devices such as 2.5" HDD, 3.5" HDD, CD-ROM, CD-RW, DVD-ROM, DVD-RW, DVD+RW \r\nSupport plug-n-play, USB Hot-Swap\r\nSpecifications:\r\n\r\nPower Supply:  DC5V', '', 0);
INSERT INTO `products_description` VALUES (83, 1, 'USB SATA/IDE Cable Set', 'Description: \r\nNote:\r\n This MiniInTheBox product will be shipped by airmail, and should take 15-30 working days from when the order has been processed to arrive. The exact amount of days is dependant on the destination country of your order. \r\nOverview:\r\n\r\nConverts all SATA, 2.5" IDE, and 3.5" IDE to USB 2.0 connection \r\nAccommodate all existing storage devices such as 2.5" HDD, 3.5" HDD, CD-ROM, CD-RW, DVD-ROM, DVD-RW, DVD+RW \r\nSupport plug-n-play, USB Hot-Swap\r\nSpecifications:\r\n\r\nPower Supply:  DC5V', '', 0);
INSERT INTO `products_description` VALUES (84, 2, 'National Flag Plastic Protective Back Case for Apple iPad - Spai', 'Description: \r\nOverview:\r\n\r\n Spain national flag designed \r\n Made of high quality plastic material \r\n Protect your iPad from any scratch and dirt \r\n Easy to install and remove, no any tool needed \r\n Cut-out design allows user can access all keypad / button and slot without having to remove the skin\r\nSpecification:\r\n\r\nDimensions:9.65in*7.68in*0.35in \r\nWeight:3.57oz', '', 0);
INSERT INTO `products_description` VALUES (84, 1, 'National Flag Plastic Protective Back Case for Apple iPad - Spai', 'Description: \r\nOverview:\r\n\r\n Spain national flag designed \r\n Made of high quality plastic material \r\n Protect your iPad from any scratch and dirt \r\n Easy to install and remove, no any tool needed \r\n Cut-out design allows user can access all keypad / button and slot without having to remove the skin\r\nSpecification:\r\n\r\nDimensions:9.65in*7.68in*0.35in \r\nWeight:3.57oz', '', 0);
INSERT INTO `products_description` VALUES (85, 2, 'Protective Hard Plastic Case for Apple 9.7" iPad-6170575', 'Description: \r\nOverview:\r\n\r\n Protect your device against everyday scratches, dirt and oils caused by everyday use \r\n Skin-like feel with anti-slip grip that provide added protection against accidental drops \r\n Made by innovative high durability hard plastic material \r\n Have holes opened for all vital functions like handsfree, charger, and memory card\r\nSpecification:\r\n\r\nDimensions:9.84in*7.68in*0.39in \r\nWeight:3.97oz', '', 0);
INSERT INTO `products_description` VALUES (85, 1, 'Protective Hard Plastic Case for Apple 9.7" iPad-6170575', 'Description: \r\nOverview:\r\n\r\n Protect your device against everyday scratches, dirt and oils caused by everyday use \r\n Skin-like feel with anti-slip grip that provide added protection against accidental drops \r\n Made by innovative high durability hard plastic material \r\n Have holes opened for all vital functions like handsfree, charger, and memory card\r\nSpecification:\r\n\r\nDimensions:9.84in*7.68in*0.39in \r\nWeight:3.97oz', '', 0);
INSERT INTO `products_description` VALUES (89, 2, 'A-line V-neck Tea-Length Elastic Woven Satin Chiffon Bridesmaid/', 'Description: \r\nNote:\r\n LightInTheBox.com is the world’s leading wedding apparel supplier, providing high quality products with great service. It has come to our attention that some websites are using our product images to promote their low quality products. Please be careful to not buy from these sites as quality cannot be guaranteed.Click here to find out more>> \r\nSilhouette: A-line\r\nNeck: V-neck\r\nHemline: Tea-length\r\nMaterial: Elastic Woven Satin, Chiffon\r\nNet Weight: 0.5KG\r\nShipping Weight: 1KG\r\nShown Color: Pink', '', 38);
INSERT INTO `products_description` VALUES (89, 1, 'A-line V-neck Tea-Length Elastic Woven Satin Chiffon Bridesmaid/', 'Description: \r\nNote:\r\n LightInTheBox.com is the world’s leading wedding apparel supplier, providing high quality products with great service. It has come to our attention that some websites are using our product images to promote their low quality products. Please be careful to not buy from these sites as quality cannot be guaranteed.Click here to find out more>> \r\nSilhouette: A-line\r\nNeck: V-neck\r\nHemline: Tea-length\r\nMaterial: Elastic Woven Satin, Chiffon\r\nNet Weight: 0.5KG\r\nShipping Weight: 1KG\r\nShown Color: Pink', '', 5);
INSERT INTO `products_description` VALUES (90, 2, 'A-line Straps Tea-length Satin Bridesmaid/ Wedding Party Dress (', 'Description: \r\nNote:\r\n LightInTheBox.com is the world’s leading wedding apparel supplier, providing high quality products with great service. It has come to our attention that some websites are using our product images to promote their low quality products. Please be careful to not buy from these sites as quality cannot be guaranteed.Click here to find out more>> \r\nSilhouette: A-line\r\nNeckline: Straps  \r\nHemline / Train: Tea-length\r\nSleeve length: Sleeveless\r\nFabric: Satin \r\nEmbelishment: Ruffles\r\nShown Color: Dark Navy\r\nNet Weight: 0.5KG\r\nShipping Weight: 1KG', '', 2);
INSERT INTO `products_description` VALUES (90, 1, 'A-line Straps Tea-length Satin Bridesmaid/ Wedding Party Dress (', 'Description: \r\nNote:\r\n LightInTheBox.com is the world’s leading wedding apparel supplier, providing high quality products with great service. It has come to our attention that some websites are using our product images to promote their low quality products. Please be careful to not buy from these sites as quality cannot be guaranteed.Click here to find out more>> \r\nSilhouette: A-line\r\nNeckline: Straps  \r\nHemline / Train: Tea-length\r\nSleeve length: Sleeveless\r\nFabric: Satin \r\nEmbelishment: Ruffles\r\nShown Color: Dark Navy\r\nNet Weight: 0.5KG\r\nShipping Weight: 1KG', '', 4);
INSERT INTO `products_description` VALUES (91, 2, '2010 Baby Carrier - Adjustable(0529-03.16-4)', 'Description: \r\nColor\r\n1# Navy Blue\r\n2# Brow\r\n3# Grey\r\n\r\nMaterial: Foam and TC Compound Material\r\n\r\nFeatures\r\nFits from 3 to 30 Months body height with adjustable shoulder and chest straps;\r\nDurability/strength tested up to 13 kg;  \r\nEasy buckling system exclusive to the front 2 back rider; \r\nAdjustable lumbar support helps prevent back strain;', '', 6);
INSERT INTO `products_description` VALUES (91, 1, '2010 Baby Carrier - Adjustable(0529-03.16-4)', 'Description: \r\nColor\r\n1# Navy Blue\r\n2# Brow\r\n3# Grey\r\n\r\nMaterial: Foam and TC Compound Material\r\n\r\nFeatures\r\nFits from 3 to 30 Months body height with adjustable shoulder and chest straps;\r\nDurability/strength tested up to 13 kg;  \r\nEasy buckling system exclusive to the front 2 back rider; \r\nAdjustable lumbar support helps prevent back strain;', '', 13);

-- --------------------------------------------------------

-- 
-- 表的结构 `products_discount_quantity`
-- 

CREATE TABLE `products_discount_quantity` (
  `discount_id` int(4) NOT NULL default '0',
  `products_id` int(11) NOT NULL default '0',
  `discount_qty` float NOT NULL default '0',
  `discount_price` decimal(15,4) NOT NULL default '0.0000',
  KEY `idx_id_qty_zen` (`products_id`,`discount_qty`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `products_discount_quantity`
-- 

INSERT INTO `products_discount_quantity` VALUES (1, 25, 5, 309.9900);
INSERT INTO `products_discount_quantity` VALUES (2, 25, 10, 299.9900);
INSERT INTO `products_discount_quantity` VALUES (3, 25, 20, 288.8800);
INSERT INTO `products_discount_quantity` VALUES (2, 81, 20, 20.0000);
INSERT INTO `products_discount_quantity` VALUES (1, 81, 10, 10.0000);
INSERT INTO `products_discount_quantity` VALUES (2, 29, 20, 15.0000);
INSERT INTO `products_discount_quantity` VALUES (1, 29, 10, 8.0000);

-- --------------------------------------------------------

-- 
-- 表的结构 `products_notifications`
-- 

CREATE TABLE `products_notifications` (
  `products_id` int(11) NOT NULL default '0',
  `customers_id` int(11) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`products_id`,`customers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `products_notifications`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `products_options`
-- 

CREATE TABLE `products_options` (
  `products_options_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `products_options_name` varchar(32) NOT NULL default '',
  `products_options_sort_order` int(11) NOT NULL default '0',
  `products_options_type` int(5) NOT NULL default '0',
  `products_options_length` smallint(2) NOT NULL default '32',
  `products_options_comment` varchar(64) default NULL,
  `products_options_size` smallint(2) NOT NULL default '32',
  `products_options_images_per_row` int(2) default '5',
  `products_options_images_style` int(1) default '0',
  `products_options_rows` smallint(2) NOT NULL default '1',
  PRIMARY KEY  (`products_options_id`,`language_id`),
  KEY `idx_lang_id_zen` (`language_id`),
  KEY `idx_products_options_sort_order_zen` (`products_options_sort_order`),
  KEY `idx_products_options_name_zen` (`products_options_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `products_options`
-- 

INSERT INTO `products_options` VALUES (1, 2, '颜色', 1, 0, 32, NULL, 32, 0, 0, 0);
INSERT INTO `products_options` VALUES (1, 1, 'Color', 1, 0, 32, NULL, 32, 0, 0, 0);
INSERT INTO `products_options` VALUES (2, 2, '大小', 2, 2, 32, NULL, 32, 0, 0, 0);
INSERT INTO `products_options` VALUES (2, 1, 'Size', 2, 2, 32, NULL, 32, 0, 0, 0);
INSERT INTO `products_options` VALUES (3, 2, '备注', 3, 1, 32, '', 32, 0, 0, 1);
INSERT INTO `products_options` VALUES (3, 1, 'Comments', 3, 1, 32, '', 32, 0, 0, 1);
INSERT INTO `products_options` VALUES (4, 2, '描述：', 4, 5, 32, NULL, 32, 0, 0, 0);
INSERT INTO `products_options` VALUES (4, 1, 'description：', 4, 5, 32, NULL, 32, 0, 0, 0);
INSERT INTO `products_options` VALUES (5, 2, '语言', 5, 3, 32, NULL, 32, 0, 0, 0);
INSERT INTO `products_options` VALUES (5, 1, 'languages', 5, 3, 32, NULL, 32, 0, 0, 0);
INSERT INTO `products_options` VALUES (6, 2, '', 0, 4, 32, '', 32, 0, 0, 0);
INSERT INTO `products_options` VALUES (6, 1, 'file', 0, 4, 32, '', 32, 0, 0, 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `products_options_types`
-- 

CREATE TABLE `products_options_types` (
  `products_options_types_id` int(11) NOT NULL default '0',
  `products_options_types_name` varchar(32) default NULL,
  PRIMARY KEY  (`products_options_types_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Track products_options_types';

-- 
-- 导出表中的数据 `products_options_types`
-- 

INSERT INTO `products_options_types` VALUES (0, '下拉');
INSERT INTO `products_options_types` VALUES (1, '文本');
INSERT INTO `products_options_types` VALUES (2, '单选');
INSERT INTO `products_options_types` VALUES (3, '多选');
INSERT INTO `products_options_types` VALUES (4, '文件');
INSERT INTO `products_options_types` VALUES (5, '只读');

-- --------------------------------------------------------

-- 
-- 表的结构 `products_options_values`
-- 

CREATE TABLE `products_options_values` (
  `products_options_values_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `products_options_values_name` varchar(64) NOT NULL default '',
  `products_options_values_sort_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`products_options_values_id`,`language_id`),
  KEY `idx_products_options_values_name_zen` (`products_options_values_name`),
  KEY `idx_products_options_values_sort_order_zen` (`products_options_values_sort_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `products_options_values`
-- 

INSERT INTO `products_options_values` VALUES (1, 2, '白色', 1);
INSERT INTO `products_options_values` VALUES (1, 1, 'white', 1);
INSERT INTO `products_options_values` VALUES (2, 2, '黑色', 2);
INSERT INTO `products_options_values` VALUES (2, 1, 'black', 2);
INSERT INTO `products_options_values` VALUES (3, 2, '红色', 3);
INSERT INTO `products_options_values` VALUES (3, 1, 'red', 3);
INSERT INTO `products_options_values` VALUES (4, 2, '蓝色', 4);
INSERT INTO `products_options_values` VALUES (4, 1, 'blue', 4);
INSERT INTO `products_options_values` VALUES (5, 2, '大', 5);
INSERT INTO `products_options_values` VALUES (5, 1, 'max', 5);
INSERT INTO `products_options_values` VALUES (6, 2, '中', 6);
INSERT INTO `products_options_values` VALUES (6, 1, 'mid', 6);
INSERT INTO `products_options_values` VALUES (7, 2, '小', 7);
INSERT INTO `products_options_values` VALUES (7, 1, 'mix', 7);
INSERT INTO `products_options_values` VALUES (8, 2, '关于此商品描述', 8);
INSERT INTO `products_options_values` VALUES (8, 1, 'This is a good product.', 8);
INSERT INTO `products_options_values` VALUES (9, 2, '法语', 0);
INSERT INTO `products_options_values` VALUES (9, 1, 'France', 0);
INSERT INTO `products_options_values` VALUES (10, 2, '英语', 0);
INSERT INTO `products_options_values` VALUES (10, 1, 'English', 0);
INSERT INTO `products_options_values` VALUES (11, 2, '中文', 0);
INSERT INTO `products_options_values` VALUES (11, 1, 'Chinese', 0);
INSERT INTO `products_options_values` VALUES (12, 2, '日文', 0);
INSERT INTO `products_options_values` VALUES (12, 1, 'Japanese', 0);
INSERT INTO `products_options_values` VALUES (13, 2, '', 0);
INSERT INTO `products_options_values` VALUES (13, 1, '122', 0);
INSERT INTO `products_options_values` VALUES (14, 2, '', 0);
INSERT INTO `products_options_values` VALUES (14, 1, 'test', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `products_options_values_to_products_options`
-- 

CREATE TABLE `products_options_values_to_products_options` (
  `products_options_values_to_products_options_id` int(11) NOT NULL auto_increment,
  `products_options_id` int(11) NOT NULL default '0',
  `products_options_values_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`products_options_values_to_products_options_id`),
  KEY `idx_products_options_id_zen` (`products_options_id`),
  KEY `idx_products_options_values_id_zen` (`products_options_values_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

-- 
-- 导出表中的数据 `products_options_values_to_products_options`
-- 

INSERT INTO `products_options_values_to_products_options` VALUES (1, 1, 1);
INSERT INTO `products_options_values_to_products_options` VALUES (2, 1, 2);
INSERT INTO `products_options_values_to_products_options` VALUES (3, 1, 3);
INSERT INTO `products_options_values_to_products_options` VALUES (4, 1, 4);
INSERT INTO `products_options_values_to_products_options` VALUES (5, 2, 5);
INSERT INTO `products_options_values_to_products_options` VALUES (6, 2, 6);
INSERT INTO `products_options_values_to_products_options` VALUES (7, 2, 7);
INSERT INTO `products_options_values_to_products_options` VALUES (15, 3, 13);
INSERT INTO `products_options_values_to_products_options` VALUES (9, 4, 8);
INSERT INTO `products_options_values_to_products_options` VALUES (10, 5, 9);
INSERT INTO `products_options_values_to_products_options` VALUES (11, 5, 10);
INSERT INTO `products_options_values_to_products_options` VALUES (12, 5, 11);
INSERT INTO `products_options_values_to_products_options` VALUES (13, 5, 12);
INSERT INTO `products_options_values_to_products_options` VALUES (17, 6, 14);
INSERT INTO `products_options_values_to_products_options` VALUES (16, 3, 0);
INSERT INTO `products_options_values_to_products_options` VALUES (18, 6, 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `products_to_categories`
-- 

CREATE TABLE `products_to_categories` (
  `products_id` int(11) NOT NULL default '0',
  `categories_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`products_id`,`categories_id`),
  KEY `idx_cat_prod_id_zen` (`categories_id`,`products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `products_to_categories`
-- 

INSERT INTO `products_to_categories` VALUES (1, 4);
INSERT INTO `products_to_categories` VALUES (2, 4);
INSERT INTO `products_to_categories` VALUES (3, 4);
INSERT INTO `products_to_categories` VALUES (4, 5);
INSERT INTO `products_to_categories` VALUES (5, 5);
INSERT INTO `products_to_categories` VALUES (6, 5);
INSERT INTO `products_to_categories` VALUES (7, 7);
INSERT INTO `products_to_categories` VALUES (8, 9);
INSERT INTO `products_to_categories` VALUES (9, 9);
INSERT INTO `products_to_categories` VALUES (10, 9);
INSERT INTO `products_to_categories` VALUES (11, 10);
INSERT INTO `products_to_categories` VALUES (12, 10);
INSERT INTO `products_to_categories` VALUES (13, 10);
INSERT INTO `products_to_categories` VALUES (14, 7);
INSERT INTO `products_to_categories` VALUES (15, 7);
INSERT INTO `products_to_categories` VALUES (16, 7);
INSERT INTO `products_to_categories` VALUES (17, 11);
INSERT INTO `products_to_categories` VALUES (18, 11);
INSERT INTO `products_to_categories` VALUES (19, 11);
INSERT INTO `products_to_categories` VALUES (20, 11);
INSERT INTO `products_to_categories` VALUES (21, 12);
INSERT INTO `products_to_categories` VALUES (22, 12);
INSERT INTO `products_to_categories` VALUES (23, 12);
INSERT INTO `products_to_categories` VALUES (24, 12);
INSERT INTO `products_to_categories` VALUES (25, 14);
INSERT INTO `products_to_categories` VALUES (26, 14);
INSERT INTO `products_to_categories` VALUES (27, 14);
INSERT INTO `products_to_categories` VALUES (28, 14);
INSERT INTO `products_to_categories` VALUES (29, 14);
INSERT INTO `products_to_categories` VALUES (30, 15);
INSERT INTO `products_to_categories` VALUES (31, 15);
INSERT INTO `products_to_categories` VALUES (32, 15);
INSERT INTO `products_to_categories` VALUES (33, 15);
INSERT INTO `products_to_categories` VALUES (34, 15);
INSERT INTO `products_to_categories` VALUES (35, 5);
INSERT INTO `products_to_categories` VALUES (36, 17);
INSERT INTO `products_to_categories` VALUES (37, 17);
INSERT INTO `products_to_categories` VALUES (38, 18);
INSERT INTO `products_to_categories` VALUES (39, 18);
INSERT INTO `products_to_categories` VALUES (40, 19);
INSERT INTO `products_to_categories` VALUES (41, 19);
INSERT INTO `products_to_categories` VALUES (42, 20);
INSERT INTO `products_to_categories` VALUES (43, 20);
INSERT INTO `products_to_categories` VALUES (44, 21);
INSERT INTO `products_to_categories` VALUES (45, 21);
INSERT INTO `products_to_categories` VALUES (46, 23);
INSERT INTO `products_to_categories` VALUES (47, 23);
INSERT INTO `products_to_categories` VALUES (48, 23);
INSERT INTO `products_to_categories` VALUES (49, 24);
INSERT INTO `products_to_categories` VALUES (50, 24);
INSERT INTO `products_to_categories` VALUES (51, 24);
INSERT INTO `products_to_categories` VALUES (52, 25);
INSERT INTO `products_to_categories` VALUES (53, 25);
INSERT INTO `products_to_categories` VALUES (54, 25);
INSERT INTO `products_to_categories` VALUES (55, 28);
INSERT INTO `products_to_categories` VALUES (56, 28);
INSERT INTO `products_to_categories` VALUES (57, 29);
INSERT INTO `products_to_categories` VALUES (58, 29);
INSERT INTO `products_to_categories` VALUES (59, 30);
INSERT INTO `products_to_categories` VALUES (60, 30);
INSERT INTO `products_to_categories` VALUES (61, 31);
INSERT INTO `products_to_categories` VALUES (62, 31);
INSERT INTO `products_to_categories` VALUES (63, 21);
INSERT INTO `products_to_categories` VALUES (64, 33);
INSERT INTO `products_to_categories` VALUES (65, 33);
INSERT INTO `products_to_categories` VALUES (66, 33);
INSERT INTO `products_to_categories` VALUES (67, 34);
INSERT INTO `products_to_categories` VALUES (68, 34);
INSERT INTO `products_to_categories` VALUES (69, 34);
INSERT INTO `products_to_categories` VALUES (70, 34);
INSERT INTO `products_to_categories` VALUES (71, 36);
INSERT INTO `products_to_categories` VALUES (72, 36);
INSERT INTO `products_to_categories` VALUES (73, 37);
INSERT INTO `products_to_categories` VALUES (74, 37);
INSERT INTO `products_to_categories` VALUES (75, 38);
INSERT INTO `products_to_categories` VALUES (76, 38);
INSERT INTO `products_to_categories` VALUES (77, 40);
INSERT INTO `products_to_categories` VALUES (78, 40);
INSERT INTO `products_to_categories` VALUES (79, 40);
INSERT INTO `products_to_categories` VALUES (80, 40);
INSERT INTO `products_to_categories` VALUES (81, 40);
INSERT INTO `products_to_categories` VALUES (82, 42);
INSERT INTO `products_to_categories` VALUES (83, 42);
INSERT INTO `products_to_categories` VALUES (84, 43);
INSERT INTO `products_to_categories` VALUES (85, 43);
INSERT INTO `products_to_categories` VALUES (89, 46);
INSERT INTO `products_to_categories` VALUES (90, 46);
INSERT INTO `products_to_categories` VALUES (91, 49);

-- --------------------------------------------------------

-- 
-- 表的结构 `product_music_extra`
-- 

CREATE TABLE `product_music_extra` (
  `products_id` int(11) NOT NULL default '0',
  `artists_id` int(11) NOT NULL default '0',
  `record_company_id` int(11) NOT NULL default '0',
  `music_genre_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`products_id`),
  KEY `idx_music_genre_id_zen` (`music_genre_id`),
  KEY `idx_artists_id_zen` (`artists_id`),
  KEY `idx_record_company_id_zen` (`record_company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `product_music_extra`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `product_types`
-- 

CREATE TABLE `product_types` (
  `type_id` int(11) NOT NULL auto_increment,
  `type_name` varchar(255) NOT NULL default '',
  `type_handler` varchar(255) NOT NULL default '',
  `type_master_type` int(11) NOT NULL default '1',
  `allow_add_to_cart` char(1) NOT NULL default 'Y',
  `default_image` varchar(255) NOT NULL default '',
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `last_modified` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`type_id`),
  KEY `idx_type_master_type_zen` (`type_master_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- 导出表中的数据 `product_types`
-- 

INSERT INTO `product_types` VALUES (1, '商品 - 普通', 'product', 1, 'Y', '', '2010-08-17 11:45:10', '2010-08-17 11:45:10');
INSERT INTO `product_types` VALUES (2, '商品 - 音乐', 'product_music', 1, 'Y', '', '2010-08-17 11:45:10', '2010-08-17 11:45:10');
INSERT INTO `product_types` VALUES (3, '文档 - 普通', 'document_general', 3, 'N', '', '2010-08-17 11:45:10', '2010-08-17 11:45:10');
INSERT INTO `product_types` VALUES (4, '文档 - 商品', 'document_product', 3, 'Y', '', '2010-08-17 11:45:10', '2010-08-17 11:45:10');
INSERT INTO `product_types` VALUES (5, '商品 - 免运费', 'product_free_shipping', 1, 'Y', '', '2010-08-17 11:45:10', '2010-08-17 11:45:10');

-- --------------------------------------------------------

-- 
-- 表的结构 `product_types_to_category`
-- 

CREATE TABLE `product_types_to_category` (
  `product_type_id` int(11) NOT NULL default '0',
  `category_id` int(11) NOT NULL default '0',
  KEY `idx_category_id_zen` (`category_id`),
  KEY `idx_product_type_id_zen` (`product_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `product_types_to_category`
-- 

INSERT INTO `product_types_to_category` VALUES (5, 25);

-- --------------------------------------------------------

-- 
-- 表的结构 `product_type_layout`
-- 

CREATE TABLE `product_type_layout` (
  `configuration_id` int(11) NOT NULL auto_increment,
  `configuration_title` text NOT NULL,
  `configuration_key` varchar(255) NOT NULL default '',
  `configuration_value` text NOT NULL,
  `configuration_description` text NOT NULL,
  `product_type_id` int(11) NOT NULL default '0',
  `sort_order` int(5) default NULL,
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  `use_function` text,
  `set_function` text,
  PRIMARY KEY  (`configuration_id`),
  UNIQUE KEY `unq_config_key_zen` (`configuration_key`),
  KEY `idx_key_value_zen` (`configuration_key`,`configuration_value`(10)),
  KEY `idx_type_id_sort_order_zen` (`product_type_id`,`sort_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=144 ;

-- 
-- 导出表中的数据 `product_type_layout`
-- 

INSERT INTO `product_type_layout` VALUES (1, '显示型号', 'SHOW_PRODUCT_INFO_MODEL', '1', '在商品页面显示型号 0= 否 1= 是', 1, 1, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (2, '显示重量', 'SHOW_PRODUCT_INFO_WEIGHT', '1', '在商品页面显示重量 0= 否 1= 是', 1, 2, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (3, '显示属性重量', 'SHOW_PRODUCT_INFO_WEIGHT_ATTRIBUTES', '1', '在商品页面显示属性重量 0= 否 1= 是', 1, 3, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (4, '显示厂商', 'SHOW_PRODUCT_INFO_MANUFACTURER', '1', '在商品页面显示厂商名字 0= 否 1= 是', 1, 4, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (5, '显示购物车中数量', 'SHOW_PRODUCT_INFO_IN_CART_QTY', '1', '在商品页面显示购物车中商品数量 0= 否 1= 是', 1, 5, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (6, '显示库存数量', 'SHOW_PRODUCT_INFO_QUANTITY', '1', '在商品页面显示库存数量 0= 否 1= 是', 1, 6, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (7, '显示商品评论计数', 'SHOW_PRODUCT_INFO_REVIEWS_COUNT', '1', '在商品页面显示商品评论计数 0= 否 1= 是', 1, 7, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (8, '显示商品评论按钮', 'SHOW_PRODUCT_INFO_REVIEWS', '1', '在商品页面显示商品评论按钮 0= 否 1= 是', 1, 8, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (9, '显示上市日期', 'SHOW_PRODUCT_INFO_DATE_AVAILABLE', '1', '在商品页面显示上市日期 0= 否 1= 是', 1, 9, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (10, '显示加入日期', 'SHOW_PRODUCT_INFO_DATE_ADDED', '1', '在商品页面显示加入日期 0= 否 1= 是', 1, 10, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (11, '显示商品网址', 'SHOW_PRODUCT_INFO_URL', '1', '在商品页面显示网址 0= 否 1= 是', 1, 11, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (12, '显示商品附加图像', 'SHOW_PRODUCT_INFO_ADDITIONAL_IMAGES', '1', '在商品页面显示附加图像 0= 否 1= 是', 1, 13, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (13, '显示最低价格文字', 'SHOW_PRODUCT_INFO_STARTING_AT', '1', '是否在含属性的商品页面显示最低价格文字 0= 否 1= 是', 1, 12, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (14, '显示推荐给朋友按钮', 'SHOW_PRODUCT_INFO_TELL_A_FRIEND', '1', '在商品页面显示推荐给朋友按钮<br /><br />提示: 关闭该设置不会影响[推荐给朋友]边框，而关闭[推荐给朋友]边框也不影响本按钮<br />0= 否 1= 是', 1, 15, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (15, '商品免运费图像 - 分类', 'SHOW_PRODUCT_INFO_ALWAYS_FREE_SHIPPING_IMAGE_SWITCH', '1', '是否在分类中显示免运费图像/文字?', 1, 16, '2010-09-25 16:49:20', '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (16, '商品价格缺省税种 - 增加新商品时', 'DEFAULT_PRODUCT_TAX_CLASS_ID', '0', '增加新商品时，缺省的商品价格税种的编号是?', 1, 100, NULL, '2010-08-17 11:45:10', '', '');
INSERT INTO `product_type_layout` VALUES (17, '虚拟商品缺省状态 - 不需要送货地址 - 增加新商品时', 'DEFAULT_PRODUCT_PRODUCTS_VIRTUAL', '0', '增加新商品时，缺省的虚拟商品状态为开?', 1, 101, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (18, '商品免运费缺省状态 - 正常运费 - 增加新商品时', 'DEFAULT_PRODUCT_PRODUCTS_IS_ALWAYS_FREE_SHIPPING', '0', '增加新商品时，缺省为免运费吗？<br />是，打开免运费<br />否，关闭免运费<br />特定，可下载商品需要发货', 1, 102, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes, Always ON''), array(''id''=>''0'', ''text''=>''No, Always OFF''), array(''id''=>''2'', ''text''=>''Special'')), ');
INSERT INTO `product_type_layout` VALUES (19, '显示型号', 'SHOW_PRODUCT_MUSIC_INFO_MODEL', '1', '在商品页面显示型号 0= 否 1= 是', 2, 1, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (20, '显示重量', 'SHOW_PRODUCT_MUSIC_INFO_WEIGHT', '0', '在商品页面显示重量 0= 否 1= 是', 2, 2, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (21, '显示属性重量', 'SHOW_PRODUCT_MUSIC_INFO_WEIGHT_ATTRIBUTES', '1', '在商品页面显示属性重量 0= 否 1= 是', 2, 3, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (22, '显示歌手', 'SHOW_PRODUCT_MUSIC_INFO_ARTIST', '1', '在商品页面显示歌手名字 0= 否 1= 是', 2, 4, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (23, '显示音乐类型', 'SHOW_PRODUCT_MUSIC_INFO_GENRE', '1', '在商品页面显示音乐类型 0= 否 1= 是', 2, 4, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (24, '显示唱片公司', 'SHOW_PRODUCT_MUSIC_INFO_RECORD_COMPANY', '1', '在商品页面显示唱片公司 0= 否 1= 是', 2, 4, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (25, '显示购物车中数量', 'SHOW_PRODUCT_MUSIC_INFO_IN_CART_QTY', '1', '在商品页面显示购物车中商品数量 0= 否 1= 是', 2, 5, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (26, '显示库存数量', 'SHOW_PRODUCT_MUSIC_INFO_QUANTITY', '0', '在商品页面显示库存数量 0= 否 1= 是', 2, 6, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (27, '显示商品评论计数', 'SHOW_PRODUCT_MUSIC_INFO_REVIEWS_COUNT', '1', '在商品页面显示商品评论计数 0= 否 1= 是', 2, 7, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (28, '显示商品评论按钮', 'SHOW_PRODUCT_MUSIC_INFO_REVIEWS', '1', '在商品页面显示商品评论按钮 0= 否 1= 是', 2, 8, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (29, '显示上市日期', 'SHOW_PRODUCT_MUSIC_INFO_DATE_AVAILABLE', '1', '在商品页面显示上市日期 0= 否 1= 是', 2, 9, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (30, '显示加入日期', 'SHOW_PRODUCT_MUSIC_INFO_DATE_ADDED', '1', '在商品页面显示加入日期 0= 否 1= 是', 2, 10, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (31, '显示商品附加图像', 'SHOW_PRODUCT_MUSIC_INFO_ADDITIONAL_IMAGES', '1', '在商品页面显示附加图像 0= 否 1= 是', 2, 13, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (32, '显示价格文字最低至', 'SHOW_PRODUCT_MUSIC_INFO_STARTING_AT', '1', '是否在含属性的商品页面显示最低价格文字 0= 否 1= 是', 2, 12, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (33, '显示推荐给朋友按钮', 'SHOW_PRODUCT_MUSIC_INFO_TELL_A_FRIEND', '1', '在商品页面显示推荐给朋友按钮<br /><br />提示: 关闭该设置不会影响[推荐给朋友]边框，而关闭[推荐给朋友]边框也不影响本按钮<br />0= 否 1= 是', 2, 15, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (34, '商品免运费图像 - 分类', 'SHOW_PRODUCT_MUSIC_INFO_ALWAYS_FREE_SHIPPING_IMAGE_SWITCH', '0', '是否在列表中显示免运费图像/文字?', 2, 16, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (35, '商品价格缺省税种 - 增加新商品时', 'DEFAULT_PRODUCT_MUSIC_TAX_CLASS_ID', '0', '增加新商品时，缺省的商品价格税种的编号是?', 2, 100, NULL, '2010-08-17 11:45:10', '', '');
INSERT INTO `product_type_layout` VALUES (36, '虚拟商品缺省状态 - 不需要送货地址 - 增加新商品时', 'DEFAULT_PRODUCT_MUSIC_PRODUCTS_VIRTUAL', '0', '增加新商品时，缺省的虚拟商品状态为开?', 2, 101, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (37, '商品免运费缺省状态 - 正常运费 - 增加新商品时', 'DEFAULT_PRODUCT_MUSIC_PRODUCTS_IS_ALWAYS_FREE_SHIPPING', '0', '增加新商品时，缺省为免运费吗？<br />是，打开免运费<br />否，关闭免运费<br />特定，可下载商品需要发货', 2, 102, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes, Always ON''), array(''id''=>''0'', ''text''=>''No, Always OFF''), array(''id''=>''2'', ''text''=>''Special'')), ');
INSERT INTO `product_type_layout` VALUES (38, '显示商品评论计数', 'SHOW_DOCUMENT_GENERAL_INFO_REVIEWS_COUNT', '1', '在商品页面显示商品评论计数 Info 0= 否 1= 是', 3, 7, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (39, '显示商品评论按钮', 'SHOW_DOCUMENT_GENERAL_INFO_REVIEWS', '1', '在商品页面显示商品评论按钮 0= 否 1= 是', 3, 8, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (40, '显示上市日期', 'SHOW_DOCUMENT_GENERAL_INFO_DATE_AVAILABLE', '1', '在商品页面显示上市日期 0= 否 1= 是', 3, 9, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (41, '显示加入日期', 'SHOW_DOCUMENT_GENERAL_INFO_DATE_ADDED', '1', '在商品页面显示加入日期 0= 否 1= 是', 3, 10, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (42, '显示推荐给朋友按钮', 'SHOW_DOCUMENT_GENERAL_INFO_TELL_A_FRIEND', '1', '在商品页面显示推荐给朋友按钮<br /><br />提示: 关闭该设置不会影响[推荐给朋友]边框，而关闭[推荐给朋友]边框也不影响本按钮<br />0= 否 1= 是', 3, 15, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (43, '显示商品网址', 'SHOW_DOCUMENT_GENERAL_INFO_URL', '1', '在商品页面显示网址 0= 否 1= 是', 3, 11, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (44, '显示商品附加图像', 'SHOW_DOCUMENT_GENERAL_INFO_ADDITIONAL_IMAGES', '1', '在商品页面显示附加图像 0= 否 1= 是', 3, 13, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (45, '显示型号', 'SHOW_DOCUMENT_PRODUCT_INFO_MODEL', '1', '在商品页面显示型号 0= 否 1= 是', 4, 1, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (46, '显示重量', 'SHOW_DOCUMENT_PRODUCT_INFO_WEIGHT', '0', '在商品页面显示重量 0= 否 1= 是', 4, 2, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (47, '显示属性重量', 'SHOW_DOCUMENT_PRODUCT_INFO_WEIGHT_ATTRIBUTES', '1', '在商品页面显示属性重量 0= 否 1= 是', 4, 3, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (48, '显示厂商', 'SHOW_DOCUMENT_PRODUCT_INFO_MANUFACTURER', '1', '在商品页面显示厂商名字 0= 否 1= 是', 4, 4, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (49, '显示购物车中数量', 'SHOW_DOCUMENT_PRODUCT_INFO_IN_CART_QTY', '1', '在商品页面显示购物车中商品数量 0= 否 1= 是', 4, 5, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (50, '显示库存数量', 'SHOW_DOCUMENT_PRODUCT_INFO_QUANTITY', '0', '在商品页面显示库存数量 0= 否 1= 是', 4, 6, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (51, '显示商品评论计数', 'SHOW_DOCUMENT_PRODUCT_INFO_REVIEWS_COUNT', '1', '在商品页面显示商品评论计数 0= 否 1= 是', 4, 7, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (52, '显示商品评论按钮', 'SHOW_DOCUMENT_PRODUCT_INFO_REVIEWS', '1', '在商品页面显示商品评论按钮 0= 否 1= 是', 4, 8, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (53, '显示上市日期', 'SHOW_DOCUMENT_PRODUCT_INFO_DATE_AVAILABLE', '1', '在商品页面显示上市日期 0= 否 1= 是', 4, 9, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (54, '显示加入日期', 'SHOW_DOCUMENT_PRODUCT_INFO_DATE_ADDED', '1', '在商品页面显示加入日期 0= 否 1= 是', 4, 10, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (55, '显示商品网址', 'SHOW_DOCUMENT_PRODUCT_INFO_URL', '1', '在商品页面显示网址 0= 否 1= 是', 4, 11, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (56, '显示商品附加图像', 'SHOW_DOCUMENT_PRODUCT_INFO_ADDITIONAL_IMAGES', '1', '在商品页面显示附加图像 0= 否 1= 是', 4, 13, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (57, '显示价格文字最低至', 'SHOW_DOCUMENT_PRODUCT_INFO_STARTING_AT', '1', '是否在含属性的商品页面显示最低价格文字 0= 否 1= 是', 4, 12, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (58, '显示推荐给朋友按钮', 'SHOW_DOCUMENT_PRODUCT_INFO_TELL_A_FRIEND', '1', '在商品页面显示推荐给朋友按钮<br /><br />提示: 关闭该设置不会影响[推荐给朋友]边框，而关闭[推荐给朋友]边框也不影响本按钮<br />0= 否 1= 是', 4, 15, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (59, '商品免运费图像状态 - 分类', 'SHOW_DOCUMENT_PRODUCT_INFO_ALWAYS_FREE_SHIPPING_IMAGE_SWITCH', '0', '是否在列表中显示免运费图像/文字?', 4, 16, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (60, '商品价格缺省税种 - 增加新商品时', 'DEFAULT_DOCUMENT_PRODUCT_TAX_CLASS_ID', '0', '增加新商品时，缺省的商品价格税种的编号是?', 4, 100, NULL, '2010-08-17 11:45:10', '', '');
INSERT INTO `product_type_layout` VALUES (61, '虚拟商品缺省状态 - 不需要送货地址 - 增加新商品时', 'DEFAULT_DOCUMENT_PRODUCT_PRODUCTS_VIRTUAL', '0', '增加新商品时，缺省的虚拟商品状态为开?', 4, 101, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (62, '商品免运费缺省状态 - 正常运费 - 增加新商品时', 'DEFAULT_DOCUMENT_PRODUCT_PRODUCTS_IS_ALWAYS_FREE_SHIPPING', '0', '增加新商品时，缺省为免运费吗？<br />是，打开免运费<br />否，关闭免运费<br />特定，可下载商品需要发货', 4, 102, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes, Always ON''), array(''id''=>''0'', ''text''=>''No, Always OFF''), array(''id''=>''2'', ''text''=>''Special'')), ');
INSERT INTO `product_type_layout` VALUES (63, '显示型号', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_MODEL', '1', '在商品页面显示型号 0= 否 1= 是', 5, 1, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (64, '显示重量', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_WEIGHT', '0', '在商品页面显示重量 0= 否 1= 是', 5, 2, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (65, '显示属性重量', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_WEIGHT_ATTRIBUTES', '1', '在商品页面显示属性重量 0= 否 1= 是', 5, 3, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (66, '显示厂商', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_MANUFACTURER', '1', '在商品页面显示厂商名字 0= 否 1= 是', 5, 4, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (67, '显示购物车中数量', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_IN_CART_QTY', '1', '在商品页面显示购物车中商品数量 0= 否 1= 是', 5, 5, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (68, '显示库存数量', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_QUANTITY', '1', '在商品页面显示库存数量 0= 否 1= 是', 5, 6, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (69, '显示商品评论计数', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_REVIEWS_COUNT', '1', '在商品页面显示商品评论计数 0= 否 1= 是', 5, 7, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (70, '显示商品评论按钮', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_REVIEWS', '1', '在商品页面显示商品评论按钮 0= 否 1= 是', 5, 8, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (71, '显示上市日期', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_DATE_AVAILABLE', '0', '在商品页面显示上市日期 0= 否 1= 是', 5, 9, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (72, '显示加入日期', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_DATE_ADDED', '1', '在商品页面显示加入日期 0= 否 1= 是', 5, 10, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (73, '显示商品网址', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_URL', '1', '在商品页面显示网址 0= 否 1= 是', 5, 11, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (74, '显示商品附加图像', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_ADDITIONAL_IMAGES', '1', '在商品页面显示附加图像 0= 否 1= 是', 5, 13, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (75, '显示价格文字 最低至', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_STARTING_AT', '1', '是否在含属性的商品页面显示最低价格文字 0= 否 1= 是', 5, 12, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (76, '显示推荐给朋友按钮', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_TELL_A_FRIEND', '1', '在商品页面显示推荐给朋友按钮<br /><br />提示: 关闭该设置不会影响[推荐给朋友]边框，而关闭[推荐给朋友]边框也不影响本按钮<br />0= 否 1= 是', 5, 15, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (77, '商品免运费图像 - 分类', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_ALWAYS_FREE_SHIPPING_IMAGE_SWITCH', '1', '是否在列表中显示免运费图像/文字?', 5, 16, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (78, '商品价格缺省税种 - 增加新商品时', 'DEFAULT_PRODUCT_FREE_SHIPPING_TAX_CLASS_ID', '0', '增加新商品时，缺省的商品价格税种的编号是?', 5, 100, NULL, '2010-08-17 11:45:10', '', '');
INSERT INTO `product_type_layout` VALUES (79, '虚拟商品缺省状态 - 不需要送货地址 - 增加新商品时', 'DEFAULT_PRODUCT_FREE_SHIPPING_PRODUCTS_VIRTUAL', '0', '增加新商品时，缺省的虚拟商品状态为开?', 5, 101, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (80, '商品免运费缺省状态 - 正常运费 - 增加新商品时', 'DEFAULT_PRODUCT_FREE_SHIPPING_PRODUCTS_IS_ALWAYS_FREE_SHIPPING', '1', '增加新商品时，缺省为免运费吗？<br />是，打开免运费<br />否，关闭免运费<br />特定，可下载商品需要发货', 5, 102, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes, Always ON''), array(''id''=>''0'', ''text''=>''No, Always OFF''), array(''id''=>''2'', ''text''=>''Special'')), ');
INSERT INTO `product_type_layout` VALUES (81, '显示元标签标题缺省值 - 商品标题', 'SHOW_PRODUCT_INFO_METATAGS_TITLE_STATUS', '1', '在元标签标题上显示商品标题 0= 否 1= 是', 1, 50, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (82, '显示元标签标题缺省值 - 商品名称', 'SHOW_PRODUCT_INFO_METATAGS_PRODUCTS_NAME_STATUS', '1', '在元标签标题上显示商品名称 0= 否 1= 是', 1, 51, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (83, '显示元标签标题缺省值 - 商品型号', 'SHOW_PRODUCT_INFO_METATAGS_MODEL_STATUS', '1', '在元标签标题上显示商品型号 0= 否 1= 是', 1, 52, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (84, '显示元标签标题缺省值 - 商品价格', 'SHOW_PRODUCT_INFO_METATAGS_PRICE_STATUS', '1', '在元标签标题上显示商品价格 0= 否 1= 是', 1, 53, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (85, '显示元标签标题缺省值 - 商品标签行', 'SHOW_PRODUCT_INFO_METATAGS_TITLE_TAGLINE_STATUS', '1', '在元标签标题上显示商品标签行 0= 否 1= 是', 1, 54, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (86, '显示元标签标题缺省值 - 商品标题', 'SHOW_PRODUCT_MUSIC_INFO_METATAGS_TITLE_STATUS', '1', '在元标签标题上显示商品标题 0= 否 1= 是', 2, 50, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (87, '显示元标签标题缺省值 - 商品名称', 'SHOW_PRODUCT_MUSIC_INFO_METATAGS_PRODUCTS_NAME_STATUS', '1', '在元标签标题上显示商品名称 0= 否 1= 是', 2, 51, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (88, '显示元标签标题缺省值 - 商品型号', 'SHOW_PRODUCT_MUSIC_INFO_METATAGS_MODEL_STATUS', '1', '在元标签标题上显示商品型号 0= 否 1= 是', 2, 52, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (89, '显示元标签标题缺省值 - 商品价格', 'SHOW_PRODUCT_MUSIC_INFO_METATAGS_PRICE_STATUS', '1', '在元标签标题上显示商品价格 0= 否 1= 是', 2, 53, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (90, '显示元标签标题缺省值 - 商品标签行', 'SHOW_PRODUCT_MUSIC_INFO_METATAGS_TITLE_TAGLINE_STATUS', '1', '在元标签标题上显示商品标签行 0= 否 1= 是', 2, 54, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (91, '显示元标签标题缺省值 - 文档标题', 'SHOW_DOCUMENT_GENERAL_INFO_METATAGS_TITLE_STATUS', '1', '在元标签标题上显示文档标题 0= 否 1= 是', 3, 50, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (92, '显示元标签标题缺省值 - 文档名称', 'SHOW_DOCUMENT_GENERAL_INFO_METATAGS_PRODUCTS_NAME_STATUS', '1', '在元标签标题上显示文档名称 0= 否 1= 是', 3, 51, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (93, '显示元标签标题缺省值 - 文档 Tagline', 'SHOW_DOCUMENT_GENERAL_INFO_METATAGS_TITLE_TAGLINE_STATUS', '1', '在元标签标题上显示文档标签行 Title 0= 否 1= 是', 3, 54, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (94, '显示元标签标题缺省值 - 文档标题', 'SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_TITLE_STATUS', '1', '在元标签标题上显示文档标题 0= 否 1= 是', 4, 50, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (95, '显示元标签标题缺省值 - 文档名称', 'SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_PRODUCTS_NAME_STATUS', '1', '在元标签标题上显示文档名称 0= 否 1= 是', 4, 51, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (96, '显示元标签标题缺省值 - 文档型号', 'SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_MODEL_STATUS', '1', '在元标签标题上显示文档型号 0= 否 1= 是', 4, 52, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (97, '显示元标签标题缺省值 - 文档价格', 'SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_PRICE_STATUS', '1', '在元标签标题上显示文档价格 0= 否 1= 是', 4, 53, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (98, '显示元标签标题缺省值 - 文档 Tagline', 'SHOW_DOCUMENT_PRODUCT_INFO_METATAGS_TITLE_TAGLINE_STATUS', '1', '在元标签标题上显示文档标签行 0= 否 1= 是', 4, 54, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (99, '显示元标签标题缺省值 - 商品标题', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_TITLE_STATUS', '1', '在元标签标题上显示商品标题 0= 否 1= 是', 5, 50, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (100, '显示元标签标题缺省值 - 商品名称', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_PRODUCTS_NAME_STATUS', '1', '在元标签标题上显示商品名称 0= 否 1= 是', 5, 51, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (101, '显示元标签标题缺省值 - 商品型号', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_MODEL_STATUS', '1', '在元标签标题上显示商品型号 0= 否 1= 是', 5, 52, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (102, '显示元标签标题缺省值 - 商品价格', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_PRICE_STATUS', '1', '在元标签标题上显示商品价格 0= 否 1= 是', 5, 53, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (103, '显示元标签标题缺省值 - 商品标签行', 'SHOW_PRODUCT_FREE_SHIPPING_INFO_METATAGS_TITLE_TAGLINE_STATUS', '1', '在元标签标题上显示商品标签行 0= 否 1= 是', 5, 54, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''True''), array(''id''=>''0'', ''text''=>''False'')), ');
INSERT INTO `product_type_layout` VALUES (104, '商品属性仅用于显示 - 缺省', 'DEFAULT_PRODUCT_ATTRIBUTES_DISPLAY_ONLY', '0', '商品属性仅用于显示<br />仅用于显示<br />0= 否 1= 是', 1, 200, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (105, '商品属性免费 - 缺省', 'DEFAULT_PRODUCT_ATTRIBUTE_IS_FREE', '1', '商品属性免费<br />商品免费时属性免费<br />0= 否 1= 是', 1, 201, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (106, '商品属性缺省 - 缺省', 'DEFAULT_PRODUCT_ATTRIBUTES_DEFAULT', '0', '商品属性缺省<br />缺省选中的属性<br />0= 否 1= 是', 1, 202, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (107, '商品属性有优惠 - 缺省', 'DEFAULT_PRODUCT_ATTRIBUTES_DISCOUNTED', '1', '商品属性有优惠<br />商品特价/促销同样适用于属性<br />0= 否 1= 是', 1, 203, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (108, '商品属性定价包含商品基价 - 缺省', 'DEFAULT_PRODUCT_ATTRIBUTES_PRICE_BASE_INCLUDED', '1', '商品属性定价包含商品基价<br />根据属性定价时，包含商品基价<br />0= 否 1= 是', 1, 204, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (109, '商品属性是必选的 - 缺省', 'DEFAULT_PRODUCT_ATTRIBUTES_REQUIRED', '0', '商品属性是必选的<br />属性是必须的<br />0= 否 1= 是', 1, 205, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (110, '商品属性价格前缀 - 缺省', 'DEFAULT_PRODUCT_PRICE_PREFIX', '1', '商品属性价格前缀<br />缺省的属性价格前缀<br />留空, + 或 -', 1, 206, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''0'', ''text''=>''Blank''), array(''id''=>''1'', ''text''=>''+''), array(''id''=>''2'', ''text''=>''-'')), ');
INSERT INTO `product_type_layout` VALUES (111, '商品属性重量前缀 - 缺省', 'DEFAULT_PRODUCT_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX', '1', '商品属性重量前缀<br />缺省的属性重量前缀<br />留空, + 或 -', 1, 207, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''0'', ''text''=>''Blank''), array(''id''=>''1'', ''text''=>''+''), array(''id''=>''2'', ''text''=>''-'')), ');
INSERT INTO `product_type_layout` VALUES (112, '音乐属性仅用于显示 - 缺省', 'DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_DISPLAY_ONLY', '0', '音乐属性仅用于显示 - 缺省<br />仅用于显示用途<br />0= 否 1= 是', 2, 200, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (113, '音乐属性免费 - 缺省', 'DEFAULT_PRODUCT_MUSIC_ATTRIBUTE_IS_FREE', '1', '音乐属性免费<br />商品免费时属性免费<br />0= 否 1= 是', 2, 201, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (114, '音乐属性缺省 - 缺省', 'DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_DEFAULT', '0', '音乐属性缺省<br />缺省选中的属性<br />0= 否 1= 是', 2, 202, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (115, '音乐属性有优惠 - 缺省', 'DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_DISCOUNTED', '1', '音乐属性有优惠<br />商品特价/促销同样适用于属性<br />0= 否 1= 是', 2, 203, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (116, '音乐属性定价包含商品基价 - 缺省', 'DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_PRICE_BASE_INCLUDED', '1', '音乐属性定价包含商品基价<br />根据属性定价时，包含商品基价<br />0= 否 1= 是', 2, 204, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (117, '音乐属性是必选的 - 缺省', 'DEFAULT_PRODUCT_MUSIC_ATTRIBUTES_REQUIRED', '0', '音乐属性是必选的<br />属性是必须的<br />0= 否 1= 是', 2, 205, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (118, '音乐属性价格前缀 - 缺省', 'DEFAULT_PRODUCT_MUSIC_PRICE_PREFIX', '1', '音乐属性价格前缀<br />缺省的属性价格前缀<br />留空, + 或 -', 2, 206, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''0'', ''text''=>''Blank''), array(''id''=>''1'', ''text''=>''+''), array(''id''=>''2'', ''text''=>''-'')), ');
INSERT INTO `product_type_layout` VALUES (119, '音乐属性重量前缀 - 缺省', 'DEFAULT_PRODUCT_MUSIC_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX', '1', '音乐属性重量前缀<br />缺省的属性重量前缀<br />留空, + 或 -', 2, 207, NULL, '2010-08-17 11:45:10', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''0'', ''text''=>''Blank''), array(''id''=>''1'', ''text''=>''+''), array(''id''=>''2'', ''text''=>''-'')), ');
INSERT INTO `product_type_layout` VALUES (120, '普通文档属性仅用于显示 - 缺省', 'DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_DISPLAY_ONLY', '0', '普通文档属性仅用于显示 - 缺省<br />仅用于显示用途<br />0= 否 1= 是', 3, 200, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (121, '普通文档属性免费 - 缺省', 'DEFAULT_DOCUMENT_GENERAL_ATTRIBUTE_IS_FREE', '1', '普通文档属性免费<br />商品免费时属性免费<br />0= 否 1= 是', 3, 201, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (122, '普通文档属性缺省 - 缺省', 'DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_DEFAULT', '0', '普通文档属性缺省<br />缺省选中的属性<br />0= 否 1= 是', 3, 202, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (123, '普通文档属性有优惠 - 缺省', 'DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_DISCOUNTED', '1', '普通文档属性有优惠<br />商品特价/促销同样适用于属性<br />0= 否 1= 是', 3, 203, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (124, '普通文档属性定价包含商品基价 - 缺省', 'DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_PRICE_BASE_INCLUDED', '1', '普通文档属性定价包含商品基价<br />根据属性定价时，包含商品基价<br />0= 否 1= 是', 3, 204, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (125, '普通文档属性是必选的 - 缺省', 'DEFAULT_DOCUMENT_GENERAL_ATTRIBUTES_REQUIRED', '0', '普通文档属性是必选的<br />属性是必须的<br />0= 否 1= 是', 3, 205, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (126, '普通文档属性价格前缀 - 缺省', 'DEFAULT_DOCUMENT_GENERAL_PRICE_PREFIX', '1', '普通文档属性价格前缀<br />缺省的属性价格前缀<br />留空, + 或 -', 3, 206, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''0'', ''text''=>''Blank''), array(''id''=>''1'', ''text''=>''+''), array(''id''=>''2'', ''text''=>''-'')), ');
INSERT INTO `product_type_layout` VALUES (127, '普通文档属性重量前缀 - 缺省', 'DEFAULT_DOCUMENT_GENERAL_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX', '1', '普通文档属性重量前缀<br />缺省的属性重量前缀<br />留空, + 或 -', 3, 207, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''0'', ''text''=>''Blank''), array(''id''=>''1'', ''text''=>''+''), array(''id''=>''2'', ''text''=>''-'')), ');
INSERT INTO `product_type_layout` VALUES (128, '商品文档属性仅用于显示 - 缺省', 'DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_DISPLAY_ONLY', '0', '商品文档属性仅用于显示 - 缺省<br />仅用于显示用途<br />0= 否 1= 是', 4, 200, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (129, '商品文档属性免费 - 缺省', 'DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTE_IS_FREE', '1', '商品文档属性免费<br />商品免费时属性免费<br />0= 否 1= 是', 4, 201, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (130, '商品文档属性缺省 - 缺省', 'DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_DEFAULT', '0', '商品文档属性缺省<br />缺省选中的属性<br />0= 否 1= 是', 4, 202, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (131, '商品文档属性有优惠 - 缺省', 'DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_DISCOUNTED', '1', '商品文档属性有优惠<br />商品特价/促销同样适用于属性<br />0= 否 1= 是', 4, 203, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (132, '商品文档属性定价包含商品基价 - 缺省', 'DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_PRICE_BASE_INCLUDED', '1', '商品文档属性定价包含商品基价<br />根据属性定价时，包含商品基价<br />0= 否 1= 是', 4, 204, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (133, '商品文档属性是必选的 - 缺省', 'DEFAULT_DOCUMENT_PRODUCT_ATTRIBUTES_REQUIRED', '0', '商品文档属性是必选的<br />属性是必须的<br />0= 否 1= 是', 4, 205, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (134, '商品文档属性价格前缀 - 缺省', 'DEFAULT_DOCUMENT_PRODUCT_PRICE_PREFIX', '1', '商品文档属性价格前缀<br />缺省的属性价格前缀<br />留空, + 或 -', 4, 206, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''0'', ''text''=>''Blank''), array(''id''=>''1'', ''text''=>''+''), array(''id''=>''2'', ''text''=>''-'')), ');
INSERT INTO `product_type_layout` VALUES (135, '商品文档属性重量前缀 - 缺省', 'DEFAULT_DOCUMENT_PRODUCT_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX', '1', '商品文档属性重量前缀<br />缺省的属性重量前缀<br />留空, + 或 -', 4, 207, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''0'', ''text''=>''Blank''), array(''id''=>''1'', ''text''=>''+''), array(''id''=>''2'', ''text''=>''-'')), ');
INSERT INTO `product_type_layout` VALUES (136, '免运费商品属性仅用于显示 - 缺省', 'DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_DISPLAY_ONLY', '0', '免运费商品属性仅用于显示 - 缺省<br />仅用于显示用途<br />0= 否 1= 是', 5, 201, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (137, '免运费商品属性免费 - 缺省', 'DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTE_IS_FREE', '1', '免运费商品属性免费<br />商品免费时属性免费<br />0= 否 1= 是', 5, 201, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (138, '免运费商品属性缺省 - 缺省', 'DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_DEFAULT', '0', '免运费商品属性缺省<br />缺省选中的属性<br />0= 否 1= 是', 5, 202, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (139, '免运费商品属性有优惠 - 缺省', 'DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_DISCOUNTED', '1', '免运费商品属性有优惠<br />商品特价/促销同样适用于属性<br />0= 否 1= 是', 5, 203, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (140, '免运费商品属性定价包含商品基价 - 缺省', 'DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_PRICE_BASE_INCLUDED', '1', '免运费商品属性定价包含商品基价<br />根据属性定价时，包含商品基价<br />0= 否 1= 是', 5, 204, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (141, '免运费商品属性是必选的 - 缺省', 'DEFAULT_PRODUCT_FREE_SHIPPING_ATTRIBUTES_REQUIRED', '0', '免运费商品属性是必选的<br />属性是必须的<br />0= 否 1= 是', 5, 205, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''1'', ''text''=>''Yes''), array(''id''=>''0'', ''text''=>''No'')), ');
INSERT INTO `product_type_layout` VALUES (142, '免运费商品属性价格前缀 - 缺省', 'DEFAULT_PRODUCT_FREE_SHIPPING_PRICE_PREFIX', '1', '免运费商品属性价格前缀<br />缺省的属性价格前缀<br />留空, + 或 -', 5, 206, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''0'', ''text''=>''Blank''), array(''id''=>''1'', ''text''=>''+''), array(''id''=>''2'', ''text''=>''-'')), ');
INSERT INTO `product_type_layout` VALUES (143, '免运费商品属性重量前缀 - 缺省', 'DEFAULT_PRODUCT_FREE_SHIPPING_PRODUCTS_ATTRIBUTES_WEIGHT_PREFIX', '1', '免运费商品属性重量前缀<br />缺省的属性重量前缀<br />留空, + 或 -', 5, 207, NULL, '2010-08-17 11:45:11', NULL, 'zen_cfg_select_drop_down(array(array(''id''=>''0'', ''text''=>''Blank''), array(''id''=>''1'', ''text''=>''+''), array(''id''=>''2'', ''text''=>''-'')), ');

-- --------------------------------------------------------

-- 
-- 表的结构 `project_version`
-- 

CREATE TABLE `project_version` (
  `project_version_id` tinyint(3) NOT NULL auto_increment,
  `project_version_key` varchar(40) NOT NULL default '',
  `project_version_major` varchar(20) NOT NULL default '',
  `project_version_minor` varchar(20) NOT NULL default '',
  `project_version_patch1` varchar(20) NOT NULL default '',
  `project_version_patch2` varchar(20) NOT NULL default '',
  `project_version_patch1_source` varchar(20) NOT NULL default '',
  `project_version_patch2_source` varchar(20) NOT NULL default '',
  `project_version_comment` varchar(250) NOT NULL default '',
  `project_version_date_applied` datetime NOT NULL default '0001-01-01 01:01:01',
  PRIMARY KEY  (`project_version_id`),
  UNIQUE KEY `idx_project_version_key_zen` (`project_version_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Database Version Tracking' AUTO_INCREMENT=3 ;

-- 
-- 导出表中的数据 `project_version`
-- 

INSERT INTO `project_version` VALUES (1, 'Zen-Cart Main', '1', '3.9e', '', '', '', '', 'Fresh Installation', '2010-08-17 11:45:11');
INSERT INTO `project_version` VALUES (2, 'Zen-Cart Database', '1', '3.9e', '', '', '', '', 'Fresh Installation', '2010-08-17 11:45:11');

-- --------------------------------------------------------

-- 
-- 表的结构 `project_version_history`
-- 

CREATE TABLE `project_version_history` (
  `project_version_id` tinyint(3) NOT NULL auto_increment,
  `project_version_key` varchar(40) NOT NULL default '',
  `project_version_major` varchar(20) NOT NULL default '',
  `project_version_minor` varchar(20) NOT NULL default '',
  `project_version_patch` varchar(20) NOT NULL default '',
  `project_version_comment` varchar(250) NOT NULL default '',
  `project_version_date_applied` datetime NOT NULL default '0001-01-01 01:01:01',
  PRIMARY KEY  (`project_version_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Database Version Tracking History' AUTO_INCREMENT=3 ;

-- 
-- 导出表中的数据 `project_version_history`
-- 

INSERT INTO `project_version_history` VALUES (1, 'Zen-Cart Main', '1', '3.9e', '', 'Fresh Installation', '2010-08-17 11:45:11');
INSERT INTO `project_version_history` VALUES (2, 'Zen-Cart Database', '1', '3.9e', '', 'Fresh Installation', '2010-08-17 11:45:11');

-- --------------------------------------------------------

-- 
-- 表的结构 `query_builder`
-- 

CREATE TABLE `query_builder` (
  `query_id` int(11) NOT NULL auto_increment,
  `query_category` varchar(40) NOT NULL default '',
  `query_name` varchar(80) NOT NULL default '',
  `query_description` text NOT NULL,
  `query_string` text NOT NULL,
  `query_keys_list` text NOT NULL,
  PRIMARY KEY  (`query_id`),
  UNIQUE KEY `query_name` (`query_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Stores queries for re-use in Admin email and report modules' AUTO_INCREMENT=8 ;

-- 
-- 导出表中的数据 `query_builder`
-- 

INSERT INTO `query_builder` VALUES (1, 'email', '所有客户', '返回所有客户的姓名和电子邮件地址，用于批量发送电子邮件(例如: 电子商情、优惠券、礼券、短信等)。', 'select customers_email_address, customers_firstname, customers_lastname from TABLE_CUSTOMERS order by customers_lastname, customers_firstname, customers_email_address', '');
INSERT INTO `query_builder` VALUES (2, 'email,newsletters', '所有电子商情订阅者', '返回电子商情订阅者的姓名和电子邮件地址。', 'select customers_firstname, customers_lastname, customers_email_address from TABLE_CUSTOMERS where customers_newsletter = ''1''', '');
INSERT INTO `query_builder` VALUES (3, 'email,newsletters', '以往客户(超过三个月) (订阅者)', '以前曾经购物，但最近三个月内没有购物的客户订阅者', 'select o.date_purchased, c.customers_email_address, c.customers_lastname, c.customers_firstname from TABLE_CUSTOMERS c, TABLE_ORDERS o WHERE c.customers_id = o.customers_id AND c.customers_newsletter = 1 GROUP BY c.customers_email_address HAVING max(o.date_purchased) <= subdate(now(),INTERVAL 3 MONTH) ORDER BY c.customers_lastname, c.customers_firstname ASC', '');
INSERT INTO `query_builder` VALUES (4, 'email,newsletters', '最近三个月的客户(订阅者)', '最近三个月内有购物的电子商情订阅者。', 'select c.customers_email_address, c.customers_lastname, c.customers_firstname from TABLE_CUSTOMERS c, TABLE_ORDERS o where c.customers_newsletter = ''1'' AND c.customers_id = o.customers_id and o.date_purchased > subdate(now(),INTERVAL 3 MONTH) GROUP BY c.customers_email_address order by c.customers_lastname, c.customers_firstname ASC', '');
INSERT INTO `query_builder` VALUES (5, 'email,newsletters', '最近三个月的客户(无论是否订阅)', '所有曾经购物的顾客，不论是否订阅电子商情。', 'select c.customers_email_address, c.customers_lastname, c.customers_firstname from TABLE_CUSTOMERS c, TABLE_ORDERS o WHERE c.customers_id = o.customers_id and o.date_purchased > subdate(now(),INTERVAL 3 MONTH) GROUP BY c.customers_email_address order by c.customers_lastname, c.customers_firstname ASC', '');
INSERT INTO `query_builder` VALUES (6, 'email,newsletters', '管理员', '仅当前管理员的电子邮件帐号', 'select ''ADMIN'' as customers_firstname, admin_name as customers_lastname, admin_email as customers_email_address from TABLE_ADMIN where admin_id = $SESSION:admin_id', '');
INSERT INTO `query_builder` VALUES (7, 'email,newsletters', '从未购物的客户', '发给已注册但从未购物的客户', 'SELECT DISTINCT c.customers_email_address as customers_email_address, c.customers_lastname as customers_lastname, c.customers_firstname as customers_firstname FROM TABLE_CUSTOMERS c LEFT JOIN  TABLE_ORDERS o ON c.customers_id=o.customers_id WHERE o.date_purchased IS NULL', '');

-- --------------------------------------------------------

-- 
-- 表的结构 `record_artists`
-- 

CREATE TABLE `record_artists` (
  `artists_id` int(11) NOT NULL auto_increment,
  `artists_name` varchar(32) NOT NULL default '',
  `artists_image` varchar(64) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  PRIMARY KEY  (`artists_id`),
  KEY `idx_rec_artists_name_zen` (`artists_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `record_artists`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `record_artists_info`
-- 

CREATE TABLE `record_artists_info` (
  `artists_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '0',
  `artists_url` varchar(255) NOT NULL default '',
  `url_clicked` int(5) NOT NULL default '0',
  `date_last_click` datetime default NULL,
  PRIMARY KEY  (`artists_id`,`languages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `record_artists_info`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `record_company`
-- 

CREATE TABLE `record_company` (
  `record_company_id` int(11) NOT NULL auto_increment,
  `record_company_name` varchar(32) NOT NULL default '',
  `record_company_image` varchar(64) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  PRIMARY KEY  (`record_company_id`),
  KEY `idx_rec_company_name_zen` (`record_company_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `record_company`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `record_company_info`
-- 

CREATE TABLE `record_company_info` (
  `record_company_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '0',
  `record_company_url` varchar(255) NOT NULL default '',
  `url_clicked` int(5) NOT NULL default '0',
  `date_last_click` datetime default NULL,
  PRIMARY KEY  (`record_company_id`,`languages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `record_company_info`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `reviews`
-- 

CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `customers_id` int(11) default NULL,
  `customers_name` varchar(64) NOT NULL default '',
  `reviews_rating` int(1) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  `reviews_read` int(5) NOT NULL default '0',
  `status` int(1) NOT NULL default '1',
  PRIMARY KEY  (`reviews_id`),
  KEY `idx_products_id_zen` (`products_id`),
  KEY `idx_customers_id_zen` (`customers_id`),
  KEY `idx_status_zen` (`status`),
  KEY `idx_date_added_zen` (`date_added`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- 导出表中的数据 `reviews`
-- 

INSERT INTO `reviews` VALUES (1, 25, NULL, 'xiao huang', 4, '2010-09-16 14:09:08', NULL, 0, 1);
INSERT INTO `reviews` VALUES (2, 65, NULL, 'xiao huang', 5, '2010-09-16 14:13:18', NULL, 50, 1);
INSERT INTO `reviews` VALUES (3, 25, 3, 'sadasd asdasd', 4, '2010-09-16 14:57:21', NULL, 0, 1);
INSERT INTO `reviews` VALUES (4, 65, 3, 'sadasd asdasd', 4, '2010-09-16 15:11:53', NULL, 0, 1);
INSERT INTO `reviews` VALUES (5, 46, NULL, 'waff haha', 4, '2010-09-26 18:16:01', NULL, 1, 1);
INSERT INTO `reviews` VALUES (6, 46, NULL, 'waff haha', 5, '2010-09-26 18:20:39', NULL, 0, 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `reviews_description`
-- 

CREATE TABLE `reviews_description` (
  `reviews_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '0',
  `reviews_text` text NOT NULL,
  PRIMARY KEY  (`reviews_id`,`languages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `reviews_description`
-- 

INSERT INTO `reviews_description` VALUES (1, 1, 'very good!3Q!');
INSERT INTO `reviews_description` VALUES (2, 1, 'good！ I like it!');
INSERT INTO `reviews_description` VALUES (3, 1, 'dasdas');
INSERT INTO `reviews_description` VALUES (4, 1, 'adsdas');
INSERT INTO `reviews_description` VALUES (5, 2, 'sdfsdfds');
INSERT INTO `reviews_description` VALUES (6, 1, 'dsfds');

-- --------------------------------------------------------

-- 
-- 表的结构 `salemaker_sales`
-- 

CREATE TABLE `salemaker_sales` (
  `sale_id` int(11) NOT NULL auto_increment,
  `sale_status` tinyint(4) NOT NULL default '0',
  `sale_name` varchar(30) NOT NULL default '',
  `sale_deduction_value` decimal(15,4) NOT NULL default '0.0000',
  `sale_deduction_type` tinyint(4) NOT NULL default '0',
  `sale_pricerange_from` decimal(15,4) NOT NULL default '0.0000',
  `sale_pricerange_to` decimal(15,4) NOT NULL default '0.0000',
  `sale_specials_condition` tinyint(4) NOT NULL default '0',
  `sale_categories_selected` text,
  `sale_categories_all` text,
  `sale_date_start` date NOT NULL default '0001-01-01',
  `sale_date_end` date NOT NULL default '0001-01-01',
  `sale_date_added` date NOT NULL default '0001-01-01',
  `sale_date_last_modified` date NOT NULL default '0001-01-01',
  `sale_date_status_change` date NOT NULL default '0001-01-01',
  PRIMARY KEY  (`sale_id`),
  KEY `idx_sale_status_zen` (`sale_status`),
  KEY `idx_sale_date_start_zen` (`sale_date_start`),
  KEY `idx_sale_date_end_zen` (`sale_date_end`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `salemaker_sales`
-- 

INSERT INTO `salemaker_sales` VALUES (1, 1, '10%discount', 5.0000, 1, 0.0000, 0.0000, 0, '19', ',19,', '0001-01-01', '0001-01-01', '2010-09-16', '2010-09-16', '0001-01-01');

-- --------------------------------------------------------

-- 
-- 表的结构 `seo_cache`
-- 

CREATE TABLE `seo_cache` (
  `cache_id` varchar(32) NOT NULL default '',
  `cache_language_id` tinyint(1) NOT NULL default '0',
  `cache_name` varchar(255) NOT NULL default '',
  `cache_data` mediumtext NOT NULL,
  `cache_global` tinyint(1) NOT NULL default '1',
  `cache_gzip` tinyint(1) NOT NULL default '1',
  `cache_method` varchar(20) NOT NULL default 'RETURN',
  `cache_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `cache_expires` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`cache_id`,`cache_language_id`),
  KEY `cache_id` (`cache_id`),
  KEY `cache_language_id` (`cache_language_id`),
  KEY `cache_global` (`cache_global`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `seo_cache`
-- 

INSERT INTO `seo_cache` VALUES ('ca34fbe5f9a075091ad59abf02c259a7', 2, 'seo_urls_v2_products', 'rVhNj+u4EbznV+T2EiAHSrIsGTktNjnmA0FyXlAkJXFMiRySskb+9Sm2LM/k7aMRBLmMB5ZVbHZXVxcpVa9n9btvf//H3/70r5//+ctff/rLn38pvv3ht99Wxiq5cCO4l+8Llx2fZbytutdv/MajXcQYhFdqFsoYN9pZreO33//xN/JHiFVCfGvT2/F2oB3oeTwds4hlQuzNtvF5GDWt3/8g4oS9r3pEnEU8JUTVFCFuRh2xHbEi6lX5uF3V5rh8bnnwfONZxDohTnrW86V55wul8ACOtyMgpLDj/glZDl0W8JwArxfGjF2d1+IZZrRejP3kudT2h4FmIZsEOcqVR+Wdt7bHf2IUfFKeF2XLLmdWsd6FZZbK068qNp2GzW1ZyJYgz6w9knfsOX2GCB51W7ylyuwP0lJhXGI0WchLgrxdGDHoe9hPVn7iHUnIIhYsQaqmPoI7UD/RDoyts+iBZ4HykHvfXM7tUexJRTSQvYE5n/3ST3uKj7bpDBd5TOL5emmZsDYlT89GhRCiUuaIuDOLitbGcXLV5E7O8A2lykNSM/ZVcNbHEL1Onb16HSLFteo4/hARCchjUvMQPYhE2gUlFq/jtjMpgaY2xEqzHsZ400Hb+X0tylMek9rnJEY+z8rctFR2WkzUzqgP5dXUKSmVLE/Dqr1KSfFKKI1cY5E8KLUQXhrvx2tHpGFDVqeATJqrjo2exSj1oKmCxvo8JLVQkkmvOJoEVdhLAGk0NixexT49DYtLGa+FBVoA+7XJS0dBTVQMnYUWPRFTGoVBciduDB6YlMtwn+rmRRqpd4BUtLGPu2SDJU/MkPh3VaelaOrsHkvqFoBULOXl/TbwrxhjX9RV/mXqi31lsCMqAbkKAWmxfpbB6Kjy7xL/H2+huEgkCjSHqBGzf2JoGfTJaRAAX+XBiPn/LzCiPLQ9qllarI+t6H2Tw5LKTcPxuV+hbqwus6FVRPahbtlg7WAUOOwtdkWcrIZVyInmWFWm/McRyz4UJQ9JVB+Rb6WcSNQpzoNwC6ro+VSc2dAFHvkoZcFKI2TqzzDl4YjmM+A6a69pqhnuonVFWYBXKQ0GrmCay4ZhnfGOZaT0ZZEHJIonWfN6HmjqwosM0ErtltBZhxpzM9kl5OlREbmDniAKeOf1j09E4klN1iOtIBCKIxe7f5E6NOVoClxiX8q3L+bwiRgtFuQCY0t5+BCsXrLeYJC9LZOTHlxFBrKbPxGvUxafWluyx8rSzmAAJDJyYSfHI36TT8Fpl/PFGAjfoPop4jNMOsX1bPK0M+0hmihfkNMk8CQfGzF71AOGTcvKohiwucSOPTB0rRNpZGgIkQPr80BE6kNnCWoedXBKEdkSZ/ysorAQeBExELDOIwd5TGI1Uksa+Nygh0pW8H/594i+xel6rptp4nwdITu9V2Hcp5bi3sQRfvZQkeKs5zzaLs+n62CNJKimbhMs599hAjfRW4b7ndV5gT0RkdXkMMtuyMY1rAil80sYUc/U87rv4bFBMDB3haWY0bx6nvIjpN4dDkFizHO0CIzDiBGUaEdvWz/w+c6nZP5mDOsVIzUFmx92NTF/j5NAQ2+s9UbNQxx/Fd0j6id+Np9QxmRDFUcNMMtF9HbWQoCCmJ4RNXFqRKYVZFWdWVHU5ymvVBhFAIMgo4s6zGSMdVmmRsXcgItA6vAFhEyMUDC1O9LU/VCiIR8hNcV/DSpsWm6AoZ7WfO+CEIg0rhYeR6I8YvSQoxVBBpfMRMdBSUBg2WvPF4GRCYYGnHeczkdKHbJHuuM+YFOV+904/BqYtUVpAsujUv9EsJDPUE8ckVB4j3pxiJOBG2CXsorFJQ9ALfPUy6jh4WQY4Zg+IdrqPMW2KtsXKaNGSfua8KpUAkFEiK1TFgR3aBV0xfCZpnlg50vtVNVkIztToxyQVpsDBdhzr5WRJfsoT5vosUuWd1pn6g2zfMD4Ymo9/IizZoPMaBzy9mJyAZcS0gxSkTVFi0NWlZ+SZ+qM/wWUtfkd70YIUpCqdwj0XIGvmGk+TO91U+bF6ky9AGPuoSSDSNOUG9ABJ2TUxSUpfSjJm1qVoZ2G+1Y0cDm5G4LzboCgSAq5A0vttrtdoD1WeGB2XktuPpGLF7bqTL0wPFAFfNUBBn0lrfseLRpWwu1mw6Q26BRf0AqLuZQ11MUbpCFog7NHivntCzHtjLMAGAlPgM887N4cL2HFXSydFnftMTA11tipb/NT6ry7I5jFzzKlAL+GpCTcII524GILYS2qGn8ryHwuAw11y+sMPAr2GeJzxTwsNU+BxXGRJKDZmAILDmOTvis5QhWDRd/4t2T6N5piOKQN9/t7/lDaUOuwS8EmjgGqUqUWjDkl/xMZOkRnoC8r5MOkzikZa3twXXAdoEHhTS0fUfGJ4gpGYcYEseGkNg97wCnreTOI0xvGQMkKBlPvcYGWoFW4bt9jktP4gqhfYFI/oUy4plMfkGvrMOMQkcLF0YxzeZig2KeOFWXeQjTUPikwFCUZmRsucICWbg0cROyqfazIMHX6mkzFqjHueDqX5TNIHaTuKMUlXm8nuLYAM5M8RAhkeNI/MKrWw2kWBYMzH/GjEzvlBa2h/hnWoBxMPYa6Ub4om48GPuHsRDps4qGUNS6z8pFRu+B3o2yxXAVSSGTLutIJhzPygDs3y1gZKpnFaHcaF4ybBeK4YEi9gcZJZpOJiZtTXV1cinx/tcRahzNyvIn0XqCrj6qepmjTecAGUJjf6j6f45ZYCjedDnhwEzvOi6K0xMAZSmXnJOV8QMcmp4kdx+TNb6pDBtCXCkXhDqNW4x40YFLmU0EM/ATAuJAP1K84lyYhnYuG1S8uIFqqDU/8JXuMDLz2nEnXFc4IOl+rCykZYe5W9glK5vgT4TEq0EBxwyVPyJ94LlT+1DAd73D3hZbBTHxSADcAFwx7zE+o678B', 1, 1, 'EVAL', '2010-09-25 03:37:01', '2010-10-25 03:37:01');
INSERT INTO `seo_cache` VALUES ('a93b9170a03ff54d81e95917742ea01b', 2, 'seo_urls_v2_categories', 'jZVNb9swDEDv+xW7ZQN2mD+atuipGIqdtgHDLjsJtMTYWmRJkJRk3q8fQzdFVCRy73wiTT7SCjfa4ofVl8dfT19//Pwtvj9+exL16tP7lURj/OAsxtXHh3fqcqBo89BBM1IibnKig7CArI8AGpQpOKtloZy1uH0VG1Hugk5TnGLCsYDW4j6vKxqtcKGyWlSfc+oASQ4vnbvehrWoqleljr4Bq0ZUGryBCUOR5hGdNWVP1boeRrxOVQ3XCuEMK0WLah5uBkgIaq/mAgvtrBpRzYN+TRvdD6lE8rilG/0uYSgGiorH/RJrwCfno3UJO+e2C+wdd+OUR1vKp3CvZcn3iuY2e3LiVNB7jDS4mFyAvtT+tahnW07sqXCQlDS6oBdS16zMiYoW08GFrbb99SnW7EmvN+lYo4dAq7Dz3hRT1bWo2ZWL3B4M2kRXIyqYOKKUXtQs0cWXRpcGGvHbnmGbLj6zgbc+w7oMbkTqRU8ioy2UfitqViSL38BOYknfmjA2JMNY+mKuhtXIIA/62Oe+4DFla1iKDOyoIdeTNazEHzygCVMpTDQswXOk3HVa/tNB0g2GN9E8+OdIur7BHL9Fmz2GZZynHb0LKTraS+cK17C5EQ0fjSx+A7ZHWMBYiAyTkzzWWegLZWMvMozuPpnM9RZQFiO56biLg+u64hY296JlKXIggNKOhkA/Q3M9VctWjNpqcmigc/i3FCtaduI8/HRlelB9Ufi2Ei17ck5rT9giOf9eDE0JrCxcznb+JRg6FzQa6h14umRY+vx5cxFMGii+Q9ilguvtnWjnpc2JDrqJ8K1WvIP/AQ==', 1, 1, 'EVAL', '2010-09-25 03:37:02', '2010-10-25 03:37:02');
INSERT INTO `seo_cache` VALUES ('4404c1df54fdb1291c8dd9bb259f32a9', 2, 'seo_urls_v2_manufacturers', 'AwA=', 1, 1, 'EVAL', '2010-09-25 03:37:02', '2010-10-25 03:37:02');
INSERT INTO `seo_cache` VALUES ('ca34fbe5f9a075091ad59abf02c259a7', 1, 'seo_urls_v2_products', 'rVhNj+u4EbznV+T2EiAHSrIsGTktNjnmA0FyXlAkJXFMiRySskb+9Sm2LM/k7aMRBLmMB5ZVbHZXVxcpVa9n9btvf//H3/70r5//+ctff/rLn38pvv3ht99Wxiq5cCO4l+8Llx2fZbytutdv/MajXcQYhFdqFsoYN9pZreO33//xN/JHiFVCfGvT2/F2oB3oeTwds4hlQuzNtvF5GDWt3/8g4oS9r3pEnEU8JUTVFCFuRh2xHbEi6lX5uF3V5rh8bnnwfONZxDohTnrW86V55wul8ACOtyMgpLDj/glZDl0W8JwArxfGjF2d1+IZZrRejP3kudT2h4FmIZsEOcqVR+Wdt7bHf2IUfFKeF2XLLmdWsd6FZZbK068qNp2GzW1ZyJYgz6w9knfsOX2GCB51W7ylyuwP0lJhXGI0WchLgrxdGDHoe9hPVn7iHUnIIhYsQaqmPoI7UD/RDoyts+iBZ4HykHvfXM7tUexJRTSQvYE5n/3ST3uKj7bpDBd5TOL5emmZsDYlT89GhRCiUuaIuDOLitbGcXLV5E7O8A2lykNSM/ZVcNbHEL1Onb16HSLFteo4/hARCchjUvMQPYhE2gUlFq/jtjMpgaY2xEqzHsZ400Hb+X0tylMek9rnJEY+z8rctFR2WkzUzqgP5dXUKSmVLE/Dqr1KSfFKKI1cY5E8KLUQXhrvx2tHpGFDVqeATJqrjo2exSj1oKmCxvo8JLVQkkmvOJoEVdhLAGk0NixexT49DYtLGa+FBVoA+7XJS0dBTVQMnYUWPRFTGoVBciduDB6YlMtwn+rmRRqpd4BUtLGPu2SDJU/MkPh3VaelaOrsHkvqFoBULOXl/TbwrxhjX9RV/mXqi31lsCMqAbkKAWmxfpbB6Kjy7xL/H2+huEgkCjSHqBGzf2JoGfTJaRAAX+XBiPn/LzCiPLQ9qllarI+t6H2Tw5LKTcPxuV+hbqwus6FVRPahbtlg7WAUOOwtdkWcrIZVyInmWFWm/McRyz4UJQ9JVB+Rb6WcSNQpzoNwC6ro+VSc2dAFHvkoZcFKI2TqzzDl4YjmM+A6a69pqhnuonVFWYBXKQ0GrmCay4ZhnfGOZaT0ZZEHJIonWfN6HmjqwosM0ErtltBZhxpzM9kl5OlREbmDniAKeOf1j09E4klN1iOtIBCKIxe7f5E6NOVoClxiX8q3L+bwiRgtFuQCY0t5+BCsXrLeYJC9LZOTHlxFBrKbPxGvUxafWluyx8rSzmAAJDJyYSfHI36TT8Fpl/PFGAjfoPop4jNMOsX1bPK0M+0hmihfkNMk8CQfGzF71AOGTcvKohiwucSOPTB0rRNpZGgIkQPr80BE6kNnCWoedXBKEdkSZ/ysorAQeBExELDOIwd5TGI1Uksa+Nygh0pW8H/594i+xel6rptp4nwdITu9V2Hcp5bi3sQRfvZQkeKs5zzaLs+n62CNJKimbhMs599hAjfRW4b7ndV5gT0RkdXkMMtuyMY1rAil80sYUc/U87rv4bFBMDB3haWY0bx6nvIjpN4dDkFizHO0CIzDiBGUaEdvWz/w+c6nZP5mDOsVIzUFmx92NTF/j5NAQ2+s9UbNQxx/Fd0j6id+Np9QxmRDFUcNMMtF9HbWQoCCmJ4RNXFqRKYVZFWdWVHU5ymvVBhFAIMgo4s6zGSMdVmmRsXcgItA6vAFhEyMUDC1O9LU/VCiIR8hNcV/DSpsWm6AoZ7WfO+CEIg0rhYeR6I8YvSQoxVBBpfMRMdBSUBg2WvPF4GRCYYGnHeczkdKHbJHuuM+YFOV+904/BqYtUVpAsujUv9EsJDPUE8ckVB4j3pxiJOBG2CXsorFJQ9ALfPUy6jh4WQY4Zg+IdrqPMW2KtsXKaNGSfua8KpUAkFEiK1TFgR3aBV0xfCZpnlg50vtVNVkIztToxyQVpsDBdhzr5WRJfsoT5vosUuWd1pn6g2zfMD4Ymo9/IizZoPMaBzy9mJyAZcS0gxSkTVFi0NWlZ+SZ+qM/wWUtfkd70YIUpCqdwj0XIGvmGk+TO91U+bF6ky9AGPuoSSDSNOUG9ABJ2TUxSUpfSjJm1qVoZ2G+1Y0cDm5G4LzboCgSAq5A0vttrtdoD1WeGB2XktuPpGLF7bqTL0wPFAFfNUBBn0lrfseLRpWwu1mw6Q26BRf0AqLuZQ11MUbpCFog7NHivntCzHtjLMAGAlPgM887N4cL2HFXSydFnftMTA11tipb/NT6ry7I5jFzzKlAL+GpCTcII524GILYS2qGn8ryHwuAw11y+sMPAr2GeJzxTwsNU+BxXGRJKDZmAILDmOTvis5QhWDRd/4t2T6N5piOKQN9/t7/lDaUOuwS8EmjgGqUqUWjDkl/xMZOkRnoC8r5MOkzikZa3twXXAdoEHhTS0fUfGJ4gpGYcYEseGkNg97wCnreTOI0xvGQMkKBlPvcYGWoFW4bt9jktP4gqhfYFI/oUy4plMfkGvrMOMQkcLF0YxzeZig2KeOFWXeQjTUPikwFCUZmRsucICWbg0cROyqfazIMHX6mkzFqjHueDqX5TNIHaTuKMUlXm8nuLYAM5M8RAhkeNI/MKrWw2kWBYMzH/GjEzvlBa2h/hnWoBxMPYa6Ub4om48GPuHsRDps4qGUNS6z8pFRu+B3o2yxXAVSSGTLutIJhzPygDs3y1gZKpnFaHcaF4ybBeK4YEi9gcZJZpOJiZtTXV1cinx/tcRahzNyvIn0XqCrj6qepmjTecAGUJjf6j6f45ZYCjedDnhwEzvOi6K0xMAZSmXnJOV8QMcmp4kdx+TNb6pDBtCXCkXhDqNW4x40YFLmU0EM/ATAuJAP1K84lyYhnYuG1S8uIFqqDU/8JXuMDLz2nEnXFc4IOl+rCykZYe5W9glK5vgT4TEq0EBxwyVPyJ94LlT+1DAd73D3hZbBTHxSADcAFwx7zE+o678B', 1, 1, 'EVAL', '2010-09-25 08:55:14', '2010-10-25 08:55:14');
INSERT INTO `seo_cache` VALUES ('a93b9170a03ff54d81e95917742ea01b', 1, 'seo_urls_v2_categories', 'jZVNb9swDEDv+xW7ZQN2mD+atuipGIqdtgHDLjsJtMTYWmRJkJRk3q8fQzdFVCRy73wiTT7SCjfa4ofVl8dfT19//Pwtvj9+exL16tP7lURj/OAsxtXHh3fqcqBo89BBM1IibnKig7CArI8AGpQpOKtloZy1uH0VG1Hugk5TnGLCsYDW4j6vKxqtcKGyWlSfc+oASQ4vnbvehrWoqleljr4Bq0ZUGryBCUOR5hGdNWVP1boeRrxOVQ3XCuEMK0WLah5uBkgIaq/mAgvtrBpRzYN+TRvdD6lE8rilG/0uYSgGiorH/RJrwCfno3UJO+e2C+wdd+OUR1vKp3CvZcn3iuY2e3LiVNB7jDS4mFyAvtT+tahnW07sqXCQlDS6oBdS16zMiYoW08GFrbb99SnW7EmvN+lYo4dAq7Dz3hRT1bWo2ZWL3B4M2kRXIyqYOKKUXtQs0cWXRpcGGvHbnmGbLj6zgbc+w7oMbkTqRU8ioy2UfitqViSL38BOYknfmjA2JMNY+mKuhtXIIA/62Oe+4DFla1iKDOyoIdeTNazEHzygCVMpTDQswXOk3HVa/tNB0g2GN9E8+OdIur7BHL9Fmz2GZZynHb0LKTraS+cK17C5EQ0fjSx+A7ZHWMBYiAyTkzzWWegLZWMvMozuPpnM9RZQFiO56biLg+u64hY296JlKXIggNKOhkA/Q3M9VctWjNpqcmigc/i3FCtaduI8/HRlelB9Ufi2Ei17ck5rT9giOf9eDE0JrCxcznb+JRg6FzQa6h14umRY+vx5cxFMGii+Q9ilguvtnWjnpc2JDrqJ8K1WvIP/AQ==', 1, 1, 'EVAL', '2010-09-25 08:55:14', '2010-10-25 08:55:14');
INSERT INTO `seo_cache` VALUES ('4404c1df54fdb1291c8dd9bb259f32a9', 1, 'seo_urls_v2_manufacturers', 'AwA=', 1, 1, 'EVAL', '2010-09-25 08:55:14', '2010-10-25 08:55:14');

-- --------------------------------------------------------

-- 
-- 表的结构 `sessions`
-- 

CREATE TABLE `sessions` (
  `sesskey` varchar(32) NOT NULL default '',
  `expiry` int(11) unsigned NOT NULL default '0',
  `value` mediumblob NOT NULL,
  PRIMARY KEY  (`sesskey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `sessions`
-- 

INSERT INTO `sessions` VALUES ('c4e072db4ab0534887be6f99b18c06de', 1285555113, 0x6332566a64584a7064486c556232746c626e787a4f6a4d794f6949304e54686a4e47566b4f4745324e325a6a4e54686c596d566c4e445a6b5a44637a4d574e6c4d7a52694e4349375933567a644739745a584a7a58326876633352665957526b636d567a6333787a4f6a49314f694a50526b5a4a51305666535642665645396653453954564639425245525352564e54496a746a59584a3053555238637a6f774f6949694f324e68636e5238547a6f784d6a6f696332687663484270626d644459584a30496a6f344f6e747a4f6a6736496d4e76626e526c626e527a496a74684f6a513665326b364f54453759546f784f6e747a4f6a4d36496e4630655349375a446f784d44743961546f344f5474684f6a453665334d364d7a6f6963585235496a746b4f6a45774f3331704f6a45354f3245364d547037637a6f7a4f694a7864486b694f3251364d54413766576b364e44593759546f784f6e747a4f6a4d36496e4630655349375a446f784d4441774f333139637a6f314f694a3062335268624349375a446f7a4e5449354f5334324f546b354f546b354f546b354f5463774f446b324d5459354e54517a4d6a59324d6a6b324d7a67324e7a45344e7a5537637a6f324f694a335a576c6e614851694f3251364e5455774d44747a4f6a5936496d4e68636e524a52434937637a6f314f6949354d5449354d694937637a6f784d6a6f695932397564475675644639306558426c496a747a4f6a6736496e426f65584e7059324673496a747a4f6a45344f694a6d636d566c58334e6f615842776157356e58326c305a5730694f3251364d5441774d44747a4f6a49774f694a6d636d566c58334e6f615842776157356e5833646c6157646f644349375a446f774f334d364d546b36496d5a795a5756666332687063484270626d646663484a70593255694f3251364d7a4d354f54413766573568646d6c6e5958527062323538547a6f784e7a6f69626d46326157646864476c76626b687063335276636e6b694f6a493665334d364e446f69634746306143493759546f7a4f6e74704f6a413759546f304f6e747a4f6a5136496e42685a3255694f334d364e546f696157356b5a5867694f334d364e446f696257396b5a534937637a6f324f694a4f54303554553077694f334d364d7a6f695a325630496a747a4f6a413649694937637a6f304f694a7762334e30496a74684f6a41366533313961546f784f3245364e447037637a6f304f694a775957646c496a747a4f6a45794f694a77636d396b64574e30633139755a5863694f334d364e446f696257396b5a534937637a6f324f694a4f54303554553077694f334d364d7a6f695a325630496a747a4f6a413649694937637a6f304f694a7762334e30496a74684f6a41366533313961546f794f3245364e447037637a6f304f694a775957646c496a747a4f6a45794f694a77636d396b64574e3058326c755a6d38694f334d364e446f696257396b5a534937637a6f324f694a4f54303554553077694f334d364d7a6f695a325630496a74684f6a493665334d364e546f6959314268644767694f334d364d6a6f694e4459694f334d364d544536496e4279623252315933527a58326c6b496a747a4f6a4936496a6735496a7439637a6f304f694a7762334e30496a74684f6a41366533313966584d364f446f696332356863484e6f623351694f3245364e447037637a6f304f694a775957646c496a747a4f6a45794f694a77636d396b64574e3058326c755a6d38694f334d364e446f696257396b5a534937637a6f324f694a4f54303554553077694f334d364d7a6f695a325630496a74684f6a493665334d364e546f6959314268644767694f334d364d6a6f694e4459694f334d364d544536496e4279623252315933527a58326c6b496a747a4f6a4936496a6735496a7439637a6f304f694a7762334e30496a74684f6a41366533313966574e6f5a574e7258335a6862476c6b66484d364e446f6964484a315a534937624746755a3356685a325638637a6f334f694a6c626d647361584e6f496a74735957356e6457466e5a584e6661575238637a6f784f694978496a74735957356e6457466e5a584e665932396b5a58787a4f6a4936496d5675496a746a64584a795a57356a6558787a4f6a4d36496c5654524349376447396b59586c6661584e38637a6f784d446f694d6a41784d4330774f5330794e7949376458426b5958526c5258687761584a6864476c76626e4e38596a6f784f334e6c63334e706232356659323931626e526c636e78694f6a45375933567a644739745a584a7a58326c775832466b5a484a6c63334e38637a6f784d546f694d5463794c6a45324c6a49754d6a59694f32356c64313977636d396b64574e30633139705a463970626c396a59584a3066484d364d446f69496a7432595778705a4639306231396a6147566a61323931644878694f6a4537593246796446396c636e4a76636e4e38637a6f774f6949694f324e68636e526659323931626e5279655639705a48787a4f6a4d36496a49794d79493759323931626e527965563970626d5a76664745364d7a7037637a6f784e446f6959323931626e52796157567a58323568625755694f334d364d544d36496c56756158526c5a434254644746305a584d694f334d364d6a4136496d4e7664573530636d6c6c63313970633239665932396b5a563879496a747a4f6a4936496c5654496a747a4f6a49774f694a6a6233567564484a705a584e6661584e7658324e765a4756664d794937637a6f7a4f694a56553045694f33303d);
INSERT INTO `sessions` VALUES ('9c9314344dd942bf9ec351012a91eee1', 1285554985, 0x6332566a64584a7064486c556232746c626e787a4f6a4d794f694a6b4e32566b597a497a4d7a67305a446b334d5749305a5749354f474e694f47493359324d785a6d566b5a434937624746755a3356685a325638637a6f344f694a7a59326870626d567a5a534937624746755a3356685a32567a58326c6b66484d364d546f694d694937624746755a3356685a32567a58324e765a475638637a6f794f694a6e59694937633256735a574e305a575266596d393466484d364d544d36496d4e76626d5a705a33567959585270623234694f326830625778665a57527064473979583342795a575a6c636d567559325666633352686448567a66484d364e446f69546b394f52534937);
INSERT INTO `sessions` VALUES ('7b9ca3bd77f067f755cc809442d11e46', 1285557373, 0x6332566a64584a7064486c556232746c626e787a4f6a4d794f694a6b4e32566b597a497a4d7a67305a446b334d5749305a5749354f474e694f47493359324d785a6d566b5a434937624746755a3356685a325638637a6f344f694a7a59326870626d567a5a534937624746755a3356685a32567a58326c6b66484d364d546f694d694937624746755a3356685a32567a58324e765a475638637a6f794f694a6e59694937633256735a574e305a575266596d393466484d364d544d36496d4e76626d5a705a33567959585270623234694f326830625778665a57527064473979583342795a575a6c636d567559325666633352686448567a66484d364e446f69546b394f52534937595752746157356661575238637a6f784f694978496a746a5958526c5a3239796157567a58334279623252315933527a58334e76636e526662334a6b5a584a38637a6f784f694977496a746b61584e776247463558324e686447566e62334a705a584e665a484a76634752766432353861546f774f324e766446396e646e787a4f6a5136496a41754d4441694f32397764476c76626c39755957316c63313932595778315a584e66593239776157567966484d364d546f694d53493763585670593274666458426b5958526c633378684f6a513665334d364d546736496e463161574e7258324e7663486c665a6e4a76625639705a43493761546f784f334d364d546336496e463161574e7258324e7663486c66626e5674596d5679496a74704f6a4137637a6f784e546f6963484a765a48566a64484e66633352686448567a496a747a4f6a4d36496d467362434937637a6f784e7a6f69593246305a576476636d6c6c6331397a64326c30593267694f334d364d544536496d7870626d746c5a46396a5958527a496a7439);

-- --------------------------------------------------------

-- 
-- 表的结构 `specials`
-- 

CREATE TABLE `specials` (
  `specials_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `specials_new_products_price` decimal(15,4) NOT NULL default '0.0000',
  `specials_date_added` datetime default NULL,
  `specials_last_modified` datetime default NULL,
  `expires_date` date NOT NULL default '0001-01-01',
  `date_status_change` datetime default NULL,
  `status` int(1) NOT NULL default '1',
  `specials_date_available` date NOT NULL default '0001-01-01',
  PRIMARY KEY  (`specials_id`),
  KEY `idx_status_zen` (`status`),
  KEY `idx_products_id_zen` (`products_id`),
  KEY `idx_date_avail_zen` (`specials_date_available`),
  KEY `idx_expires_date_zen` (`expires_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

-- 
-- 导出表中的数据 `specials`
-- 

INSERT INTO `specials` VALUES (1, 11, 107.9900, '2010-09-13 10:02:41', NULL, '2010-09-30', NULL, 1, '2010-09-13');
INSERT INTO `specials` VALUES (2, 21, 0.9300, '2010-09-13 10:45:16', NULL, '2011-09-08', NULL, 1, '2010-09-13');
INSERT INTO `specials` VALUES (3, 36, 285.9900, '2010-09-13 11:44:27', NULL, '2010-12-31', NULL, 1, '2010-09-13');
INSERT INTO `specials` VALUES (4, 42, 1.7900, '2010-09-13 13:54:01', NULL, '2012-09-27', NULL, 1, '2010-09-13');
INSERT INTO `specials` VALUES (5, 46, 33.9900, '2010-09-13 14:14:40', NULL, '2012-09-29', NULL, 1, '2010-09-13');
INSERT INTO `specials` VALUES (6, 57, 149.9900, '2010-09-13 14:52:28', NULL, '0001-01-01', NULL, 1, '2010-09-13');
INSERT INTO `specials` VALUES (7, 72, 12.9900, '2010-09-13 15:38:25', NULL, '0001-01-01', NULL, 1, '2010-09-13');
INSERT INTO `specials` VALUES (8, 29, 307.9900, '2010-09-16 14:05:47', '2010-09-16 17:26:18', '0001-01-01', NULL, 1, '0001-01-01');
INSERT INTO `specials` VALUES (9, 90, 75.0000, '2010-09-16 15:56:29', NULL, '0001-01-01', NULL, 1, '0001-01-01');
INSERT INTO `specials` VALUES (10, 80, 1.0000, '2010-09-16 16:40:17', NULL, '0001-01-01', NULL, 1, '0001-01-01');
INSERT INTO `specials` VALUES (12, 5, 68.0000, '2010-09-16 16:49:54', NULL, '0001-01-01', NULL, 1, '0001-01-01');
INSERT INTO `specials` VALUES (13, 61, 48.0000, '2010-09-16 16:50:15', NULL, '0001-01-01', NULL, 1, '0001-01-01');

-- --------------------------------------------------------

-- 
-- 表的结构 `tax_class`
-- 

CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL auto_increment,
  `tax_class_title` varchar(32) NOT NULL default '',
  `tax_class_description` varchar(255) NOT NULL default '',
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `tax_class`
-- 

INSERT INTO `tax_class` VALUES (1, '附加购物税', '以下商品含非食物、服务等。', NULL, '2010-08-17 11:45:10');

-- --------------------------------------------------------

-- 
-- 表的结构 `tax_rates`
-- 

CREATE TABLE `tax_rates` (
  `tax_rates_id` int(11) NOT NULL auto_increment,
  `tax_zone_id` int(11) NOT NULL default '0',
  `tax_class_id` int(11) NOT NULL default '0',
  `tax_priority` int(5) default '1',
  `tax_rate` decimal(7,4) NOT NULL default '0.0000',
  `tax_description` varchar(255) NOT NULL default '',
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`tax_rates_id`),
  KEY `idx_tax_zone_id_zen` (`tax_zone_id`),
  KEY `idx_tax_class_id_zen` (`tax_class_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `tax_rates`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `template_select`
-- 

CREATE TABLE `template_select` (
  `template_id` int(11) NOT NULL auto_increment,
  `template_dir` varchar(64) NOT NULL default '',
  `template_language` varchar(64) NOT NULL default '0',
  PRIMARY KEY  (`template_id`),
  KEY `idx_tpl_lang_zen` (`template_language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `template_select`
-- 

INSERT INTO `template_select` VALUES (1, 'classic', '0');

-- --------------------------------------------------------

-- 
-- 表的结构 `upgrade_exceptions`
-- 

CREATE TABLE `upgrade_exceptions` (
  `upgrade_exception_id` smallint(5) NOT NULL auto_increment,
  `sql_file` varchar(50) default NULL,
  `reason` varchar(200) default NULL,
  `errordate` datetime default '0001-01-01 00:00:00',
  `sqlstatement` text,
  PRIMARY KEY  (`upgrade_exception_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `upgrade_exceptions`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `whos_online`
-- 

CREATE TABLE `whos_online` (
  `customer_id` int(11) default NULL,
  `full_name` varchar(64) NOT NULL default '',
  `session_id` varchar(128) NOT NULL default '',
  `ip_address` varchar(15) NOT NULL default '',
  `time_entry` varchar(14) NOT NULL default '',
  `time_last_click` varchar(14) NOT NULL default '',
  `last_page_url` varchar(255) NOT NULL default '',
  `host_address` text NOT NULL,
  `user_agent` varchar(255) NOT NULL default '',
  KEY `idx_ip_address_zen` (`ip_address`),
  KEY `idx_session_id_zen` (`session_id`),
  KEY `idx_customer_id_zen` (`customer_id`),
  KEY `idx_time_entry_zen` (`time_entry`),
  KEY `idx_time_last_click_zen` (`time_last_click`),
  KEY `idx_last_page_url_zen` (`last_page_url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 导出表中的数据 `whos_online`
-- 

INSERT INTO `whos_online` VALUES (0, '&yen;Guest', 'c4e072db4ab0534887be6f99b18c06de', '172.16.2.26', '1285552494', '1285553673', '/zencart_svn/index.php?main_page=product_info&cPath=46&products_id=89', 'OFFICE_IP_TO_HOST_ADDRESS', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.2.10) Gecko/20100914 Firefox/3.6.10');

-- --------------------------------------------------------

-- 
-- 表的结构 `zones`
-- 

CREATE TABLE `zones` (
  `zone_id` int(11) NOT NULL auto_increment,
  `zone_country_id` int(11) NOT NULL default '0',
  `zone_code` varchar(32) NOT NULL default '',
  `zone_name` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`zone_id`),
  KEY `idx_zone_country_id_zen` (`zone_country_id`),
  KEY `idx_zone_code_zen` (`zone_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=224 ;

-- 
-- 导出表中的数据 `zones`
-- 

INSERT INTO `zones` VALUES (1, 223, 'AL', 'Alabama');
INSERT INTO `zones` VALUES (2, 223, 'AK', 'Alaska');
INSERT INTO `zones` VALUES (3, 223, 'AS', 'American Samoa');
INSERT INTO `zones` VALUES (4, 223, 'AZ', 'Arizona');
INSERT INTO `zones` VALUES (5, 223, 'AR', 'Arkansas');
INSERT INTO `zones` VALUES (6, 223, 'AF', 'Armed Forces Africa');
INSERT INTO `zones` VALUES (7, 223, 'AA', 'Armed Forces Americas');
INSERT INTO `zones` VALUES (8, 223, 'AC', 'Armed Forces Canada');
INSERT INTO `zones` VALUES (9, 223, 'AE', 'Armed Forces Europe');
INSERT INTO `zones` VALUES (10, 223, 'AM', 'Armed Forces Middle East');
INSERT INTO `zones` VALUES (11, 223, 'AP', 'Armed Forces Pacific');
INSERT INTO `zones` VALUES (12, 223, 'CA', 'California');
INSERT INTO `zones` VALUES (13, 223, 'CO', 'Colorado');
INSERT INTO `zones` VALUES (14, 223, 'CT', 'Connecticut');
INSERT INTO `zones` VALUES (15, 223, 'DE', 'Delaware');
INSERT INTO `zones` VALUES (16, 223, 'DC', 'District of Columbia');
INSERT INTO `zones` VALUES (17, 223, 'FM', 'Federated States Of Micronesia');
INSERT INTO `zones` VALUES (18, 223, 'FL', 'Florida');
INSERT INTO `zones` VALUES (19, 223, 'GA', 'Georgia');
INSERT INTO `zones` VALUES (20, 223, 'GU', 'Guam');
INSERT INTO `zones` VALUES (21, 223, 'HI', 'Hawaii');
INSERT INTO `zones` VALUES (22, 223, 'ID', 'Idaho');
INSERT INTO `zones` VALUES (23, 223, 'IL', 'Illinois');
INSERT INTO `zones` VALUES (24, 223, 'IN', 'Indiana');
INSERT INTO `zones` VALUES (25, 223, 'IA', 'Iowa');
INSERT INTO `zones` VALUES (26, 223, 'KS', 'Kansas');
INSERT INTO `zones` VALUES (27, 223, 'KY', 'Kentucky');
INSERT INTO `zones` VALUES (28, 223, 'LA', 'Louisiana');
INSERT INTO `zones` VALUES (29, 223, 'ME', 'Maine');
INSERT INTO `zones` VALUES (30, 223, 'MH', 'Marshall Islands');
INSERT INTO `zones` VALUES (31, 223, 'MD', 'Maryland');
INSERT INTO `zones` VALUES (32, 223, 'MA', 'Massachusetts');
INSERT INTO `zones` VALUES (33, 223, 'MI', 'Michigan');
INSERT INTO `zones` VALUES (34, 223, 'MN', 'Minnesota');
INSERT INTO `zones` VALUES (35, 223, 'MS', 'Mississippi');
INSERT INTO `zones` VALUES (36, 223, 'MO', 'Missouri');
INSERT INTO `zones` VALUES (37, 223, 'MT', 'Montana');
INSERT INTO `zones` VALUES (38, 223, 'NE', 'Nebraska');
INSERT INTO `zones` VALUES (39, 223, 'NV', 'Nevada');
INSERT INTO `zones` VALUES (40, 223, 'NH', 'New Hampshire');
INSERT INTO `zones` VALUES (41, 223, 'NJ', 'New Jersey');
INSERT INTO `zones` VALUES (42, 223, 'NM', 'New Mexico');
INSERT INTO `zones` VALUES (43, 223, 'NY', 'New York');
INSERT INTO `zones` VALUES (44, 223, 'NC', 'North Carolina');
INSERT INTO `zones` VALUES (45, 223, 'ND', 'North Dakota');
INSERT INTO `zones` VALUES (46, 223, 'MP', 'Northern Mariana Islands');
INSERT INTO `zones` VALUES (47, 223, 'OH', 'Ohio');
INSERT INTO `zones` VALUES (48, 223, 'OK', 'Oklahoma');
INSERT INTO `zones` VALUES (49, 223, 'OR', 'Oregon');
INSERT INTO `zones` VALUES (50, 163, 'PW', 'Palau');
INSERT INTO `zones` VALUES (51, 223, 'PA', 'Pennsylvania');
INSERT INTO `zones` VALUES (52, 223, 'PR', 'Puerto Rico');
INSERT INTO `zones` VALUES (53, 223, 'RI', 'Rhode Island');
INSERT INTO `zones` VALUES (54, 223, 'SC', 'South Carolina');
INSERT INTO `zones` VALUES (55, 223, 'SD', 'South Dakota');
INSERT INTO `zones` VALUES (56, 223, 'TN', 'Tennessee');
INSERT INTO `zones` VALUES (57, 223, 'TX', 'Texas');
INSERT INTO `zones` VALUES (58, 223, 'UT', 'Utah');
INSERT INTO `zones` VALUES (59, 223, 'VT', 'Vermont');
INSERT INTO `zones` VALUES (60, 223, 'VI', 'Virgin Islands');
INSERT INTO `zones` VALUES (61, 223, 'VA', 'Virginia');
INSERT INTO `zones` VALUES (62, 223, 'WA', 'Washington');
INSERT INTO `zones` VALUES (63, 223, 'WV', 'West Virginia');
INSERT INTO `zones` VALUES (64, 223, 'WI', 'Wisconsin');
INSERT INTO `zones` VALUES (65, 223, 'WY', 'Wyoming');
INSERT INTO `zones` VALUES (66, 44, '安徽', '安徽');
INSERT INTO `zones` VALUES (67, 44, '北京', '北京');
INSERT INTO `zones` VALUES (68, 44, '重庆', '重庆');
INSERT INTO `zones` VALUES (69, 44, '福建', '福建');
INSERT INTO `zones` VALUES (70, 44, '甘肃', '甘肃');
INSERT INTO `zones` VALUES (71, 44, '广东', '广东');
INSERT INTO `zones` VALUES (72, 44, '广西', '广西');
INSERT INTO `zones` VALUES (73, 44, '贵州', '贵州');
INSERT INTO `zones` VALUES (74, 44, '海南', '海南');
INSERT INTO `zones` VALUES (75, 44, '河北', '河北');
INSERT INTO `zones` VALUES (76, 44, '黑龙江', '黑龙江');
INSERT INTO `zones` VALUES (77, 44, '河南', '河南');
INSERT INTO `zones` VALUES (78, 44, '香港', '香港');
INSERT INTO `zones` VALUES (79, 44, '湖北', '湖北');
INSERT INTO `zones` VALUES (80, 44, '湖南', '湖南');
INSERT INTO `zones` VALUES (81, 44, '江苏', '江苏');
INSERT INTO `zones` VALUES (82, 44, '江西', '江西');
INSERT INTO `zones` VALUES (83, 44, '吉林', '吉林');
INSERT INTO `zones` VALUES (84, 44, '辽宁', '辽宁');
INSERT INTO `zones` VALUES (85, 44, '澳门', '澳门');
INSERT INTO `zones` VALUES (86, 44, '内蒙古', '内蒙古');
INSERT INTO `zones` VALUES (87, 44, '宁夏', '宁夏');
INSERT INTO `zones` VALUES (88, 44, '青海', '青海');
INSERT INTO `zones` VALUES (89, 44, '山西', '山西');
INSERT INTO `zones` VALUES (90, 44, '陕西', '陕西');
INSERT INTO `zones` VALUES (91, 44, '山东', '山东');
INSERT INTO `zones` VALUES (92, 44, '上海', '上海');
INSERT INTO `zones` VALUES (93, 44, '四川', '四川');
INSERT INTO `zones` VALUES (94, 44, '台湾', '台湾');
INSERT INTO `zones` VALUES (95, 44, '天津', '天津');
INSERT INTO `zones` VALUES (96, 44, '新疆', '新疆');
INSERT INTO `zones` VALUES (97, 44, '西藏', '西藏');
INSERT INTO `zones` VALUES (98, 44, '云南', '云南');
INSERT INTO `zones` VALUES (99, 44, '浙江', '浙江');
INSERT INTO `zones` VALUES (100, 38, 'AB', 'Alberta');
INSERT INTO `zones` VALUES (101, 38, 'BC', 'British Columbia');
INSERT INTO `zones` VALUES (102, 38, 'MB', 'Manitoba');
INSERT INTO `zones` VALUES (103, 38, 'NL', 'Newfoundland');
INSERT INTO `zones` VALUES (104, 38, 'NB', 'New Brunswick');
INSERT INTO `zones` VALUES (105, 38, 'NS', 'Nova Scotia');
INSERT INTO `zones` VALUES (106, 38, 'NT', 'Northwest Territories');
INSERT INTO `zones` VALUES (107, 38, 'NU', 'Nunavut');
INSERT INTO `zones` VALUES (108, 38, 'ON', 'Ontario');
INSERT INTO `zones` VALUES (109, 38, 'PE', 'Prince Edward Island');
INSERT INTO `zones` VALUES (110, 38, 'QC', 'Quebec');
INSERT INTO `zones` VALUES (111, 38, 'SK', 'Saskatchewan');
INSERT INTO `zones` VALUES (112, 38, 'YT', 'Yukon Territory');
INSERT INTO `zones` VALUES (113, 81, 'NDS', 'Niedersachsen');
INSERT INTO `zones` VALUES (114, 81, 'BAW', 'Baden Wrtemberg');
INSERT INTO `zones` VALUES (115, 81, 'BAY', 'Bayern');
INSERT INTO `zones` VALUES (116, 81, 'BER', 'Berlin');
INSERT INTO `zones` VALUES (117, 81, 'BRG', 'Brandenburg');
INSERT INTO `zones` VALUES (118, 81, 'BRE', 'Bremen');
INSERT INTO `zones` VALUES (119, 81, 'HAM', 'Hamburg');
INSERT INTO `zones` VALUES (120, 81, 'HES', 'Hessen');
INSERT INTO `zones` VALUES (121, 81, 'MEC', 'Mecklenburg-Vorpommern');
INSERT INTO `zones` VALUES (122, 81, 'NRW', 'Nordrhein-Westfalen');
INSERT INTO `zones` VALUES (123, 81, 'RHE', 'Rheinland-Pfalz');
INSERT INTO `zones` VALUES (124, 81, 'SAR', 'Saarland');
INSERT INTO `zones` VALUES (125, 81, 'SAS', 'Sachsen');
INSERT INTO `zones` VALUES (126, 81, 'SAC', 'Sachsen-Anhalt');
INSERT INTO `zones` VALUES (127, 81, 'SCN', 'Schleswig-Holstein');
INSERT INTO `zones` VALUES (128, 81, 'THE', 'Thringen');
INSERT INTO `zones` VALUES (129, 14, 'WI', 'Wien');
INSERT INTO `zones` VALUES (130, 14, 'NO', 'Niedersterreich');
INSERT INTO `zones` VALUES (131, 14, 'OO', 'Obersterreich');
INSERT INTO `zones` VALUES (132, 14, 'SB', 'Salzburg');
INSERT INTO `zones` VALUES (133, 14, 'KN', 'Krnten');
INSERT INTO `zones` VALUES (134, 14, 'ST', 'Steiermark');
INSERT INTO `zones` VALUES (135, 14, 'TI', 'Tirol');
INSERT INTO `zones` VALUES (136, 14, 'BL', 'Burgenland');
INSERT INTO `zones` VALUES (137, 14, 'VB', 'Voralberg');
INSERT INTO `zones` VALUES (138, 204, 'AG', 'Aargau');
INSERT INTO `zones` VALUES (139, 204, 'AI', 'Appenzell Innerrhoden');
INSERT INTO `zones` VALUES (140, 204, 'AR', 'Appenzell Ausserrhoden');
INSERT INTO `zones` VALUES (141, 204, 'BE', 'Bern');
INSERT INTO `zones` VALUES (142, 204, 'BL', 'Basel-Landschaft');
INSERT INTO `zones` VALUES (143, 204, 'BS', 'Basel-Stadt');
INSERT INTO `zones` VALUES (144, 204, 'FR', 'Freiburg');
INSERT INTO `zones` VALUES (145, 204, 'GE', 'Genf');
INSERT INTO `zones` VALUES (146, 204, 'GL', 'Glarus');
INSERT INTO `zones` VALUES (147, 204, 'JU', 'Graubnden');
INSERT INTO `zones` VALUES (148, 204, 'JU', 'Jura');
INSERT INTO `zones` VALUES (149, 204, 'LU', 'Luzern');
INSERT INTO `zones` VALUES (150, 204, 'NE', 'Neuenburg');
INSERT INTO `zones` VALUES (151, 204, 'NW', 'Nidwalden');
INSERT INTO `zones` VALUES (152, 204, 'OW', 'Obwalden');
INSERT INTO `zones` VALUES (153, 204, 'SG', 'St. Gallen');
INSERT INTO `zones` VALUES (154, 204, 'SH', 'Schaffhausen');
INSERT INTO `zones` VALUES (155, 204, 'SO', 'Solothurn');
INSERT INTO `zones` VALUES (156, 204, 'SZ', 'Schwyz');
INSERT INTO `zones` VALUES (157, 204, 'TG', 'Thurgau');
INSERT INTO `zones` VALUES (158, 204, 'TI', 'Tessin');
INSERT INTO `zones` VALUES (159, 204, 'UR', 'Uri');
INSERT INTO `zones` VALUES (160, 204, 'VD', 'Waadt');
INSERT INTO `zones` VALUES (161, 204, 'VS', 'Wallis');
INSERT INTO `zones` VALUES (162, 204, 'ZG', 'Zug');
INSERT INTO `zones` VALUES (163, 204, 'ZH', 'Zrich');
INSERT INTO `zones` VALUES (164, 195, 'A Corua', 'A Corua');
INSERT INTO `zones` VALUES (165, 195, 'Alava', 'Alava');
INSERT INTO `zones` VALUES (166, 195, 'Albacete', 'Albacete');
INSERT INTO `zones` VALUES (167, 195, 'Alicante', 'Alicante');
INSERT INTO `zones` VALUES (168, 195, 'Almeria', 'Almeria');
INSERT INTO `zones` VALUES (169, 195, 'Asturias', 'Asturias');
INSERT INTO `zones` VALUES (170, 195, 'Avila', 'Avila');
INSERT INTO `zones` VALUES (171, 195, 'Badajoz', 'Badajoz');
INSERT INTO `zones` VALUES (172, 195, 'Baleares', 'Baleares');
INSERT INTO `zones` VALUES (173, 195, 'Barcelona', 'Barcelona');
INSERT INTO `zones` VALUES (174, 195, 'Burgos', 'Burgos');
INSERT INTO `zones` VALUES (175, 195, 'Caceres', 'Caceres');
INSERT INTO `zones` VALUES (176, 195, 'Cadiz', 'Cadiz');
INSERT INTO `zones` VALUES (177, 195, 'Cantabria', 'Cantabria');
INSERT INTO `zones` VALUES (178, 195, 'Castellon', 'Castellon');
INSERT INTO `zones` VALUES (179, 195, 'Ceuta', 'Ceuta');
INSERT INTO `zones` VALUES (180, 195, 'Ciudad Real', 'Ciudad Real');
INSERT INTO `zones` VALUES (181, 195, 'Cordoba', 'Cordoba');
INSERT INTO `zones` VALUES (182, 195, 'Cuenca', 'Cuenca');
INSERT INTO `zones` VALUES (183, 195, 'Girona', 'Girona');
INSERT INTO `zones` VALUES (184, 195, 'Granada', 'Granada');
INSERT INTO `zones` VALUES (185, 195, 'Guadalajara', 'Guadalajara');
INSERT INTO `zones` VALUES (186, 195, 'Guipuzcoa', 'Guipuzcoa');
INSERT INTO `zones` VALUES (187, 195, 'Huelva', 'Huelva');
INSERT INTO `zones` VALUES (188, 195, 'Huesca', 'Huesca');
INSERT INTO `zones` VALUES (189, 195, 'Jaen', 'Jaen');
INSERT INTO `zones` VALUES (190, 195, 'La Rioja', 'La Rioja');
INSERT INTO `zones` VALUES (191, 195, 'Las Palmas', 'Las Palmas');
INSERT INTO `zones` VALUES (192, 195, 'Leon', 'Leon');
INSERT INTO `zones` VALUES (193, 195, 'Lleida', 'Lleida');
INSERT INTO `zones` VALUES (194, 195, 'Lugo', 'Lugo');
INSERT INTO `zones` VALUES (195, 195, 'Madrid', 'Madrid');
INSERT INTO `zones` VALUES (196, 195, 'Malaga', 'Malaga');
INSERT INTO `zones` VALUES (197, 195, 'Melilla', 'Melilla');
INSERT INTO `zones` VALUES (198, 195, 'Murcia', 'Murcia');
INSERT INTO `zones` VALUES (199, 195, 'Navarra', 'Navarra');
INSERT INTO `zones` VALUES (200, 195, 'Ourense', 'Ourense');
INSERT INTO `zones` VALUES (201, 195, 'Palencia', 'Palencia');
INSERT INTO `zones` VALUES (202, 195, 'Pontevedra', 'Pontevedra');
INSERT INTO `zones` VALUES (203, 195, 'Salamanca', 'Salamanca');
INSERT INTO `zones` VALUES (204, 195, 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife');
INSERT INTO `zones` VALUES (205, 195, 'Segovia', 'Segovia');
INSERT INTO `zones` VALUES (206, 195, 'Sevilla', 'Sevilla');
INSERT INTO `zones` VALUES (207, 195, 'Soria', 'Soria');
INSERT INTO `zones` VALUES (208, 195, 'Tarragona', 'Tarragona');
INSERT INTO `zones` VALUES (209, 195, 'Teruel', 'Teruel');
INSERT INTO `zones` VALUES (210, 195, 'Toledo', 'Toledo');
INSERT INTO `zones` VALUES (211, 195, 'Valencia', 'Valencia');
INSERT INTO `zones` VALUES (212, 195, 'Valladolid', 'Valladolid');
INSERT INTO `zones` VALUES (213, 195, 'Vizcaya', 'Vizcaya');
INSERT INTO `zones` VALUES (214, 195, 'Zamora', 'Zamora');
INSERT INTO `zones` VALUES (215, 195, 'Zaragoza', 'Zaragoza');
INSERT INTO `zones` VALUES (216, 13, 'ACT', 'Australian Capital Territory');
INSERT INTO `zones` VALUES (217, 13, 'NSW', 'New South Wales');
INSERT INTO `zones` VALUES (218, 13, 'NT', 'Northern Territory');
INSERT INTO `zones` VALUES (219, 13, 'QLD', 'Queensland');
INSERT INTO `zones` VALUES (220, 13, 'SA', 'South Australia');
INSERT INTO `zones` VALUES (221, 13, 'TAS', 'Tasmania');
INSERT INTO `zones` VALUES (222, 13, 'VIC', 'Victoria');
INSERT INTO `zones` VALUES (223, 13, 'WA', 'Western Australia');

-- --------------------------------------------------------

-- 
-- 表的结构 `zones_to_geo_zones`
-- 

CREATE TABLE `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL auto_increment,
  `zone_country_id` int(11) NOT NULL default '0',
  `zone_id` int(11) default NULL,
  `geo_zone_id` int(11) default NULL,
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0001-01-01 00:00:00',
  PRIMARY KEY  (`association_id`),
  KEY `idx_zones_zen` (`geo_zone_id`,`zone_country_id`,`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `zones_to_geo_zones`
-- 

INSERT INTO `zones_to_geo_zones` VALUES (1, 44, 67, 1, NULL, '2010-08-17 11:45:10');
