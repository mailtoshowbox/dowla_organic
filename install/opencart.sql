DROP TABLE IF EXISTS `oc_address`;

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO oc_address VALUES(1,1,'Hari','society','deluxeinfotech','old kosad road,','old kosad road,','surat',394107,209,3193,'');
INSERT INTO oc_address VALUES(2,2,'ashish','vekariya','','147,shiv','','surat',395010,222,3527,'');
INSERT INTO oc_address VALUES(3,3,'ashish','vekariya','','147,shiv','','surat',395010,222,3527,'');
INSERT INTO oc_address VALUES(4,3,'Hari','society','Carmarthenshire','old kosad road,','old kosad road,','surat',394107,209,3203,'');
INSERT INTO oc_address VALUES(8,4,'ashish','vekariya','','147,shiv','','surat',395010,218,3419,'');
INSERT INTO oc_address VALUES(9,5,'ashish','vekariya','','147,shiv','','surat',395010,219,3424,'');
INSERT INTO oc_address VALUES(10,6,'ashish','vekariya','','147,shiv','','surat',395010,222,3527,'');



DROP TABLE IF EXISTS `oc_api`;

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO oc_api VALUES(1,'Default','Se5s2g6DB7327GfYS3rR2sZd221n7HKNqAJNeVTQE2btNSirf3sOjogA8JJ3Oc9rdwQslvOsDtYhak28JJkmxnXekikieMqbicNj2XFUtkhtJVmAx56H1iKiCIha7FJXLMKPu1Mo33H5obeQRR1MaEXlb0U7uAlBdf2wjaDHst9iiu38x7CeZqty4op5WypujRWtZxb5l7vjEQ1O8wtz4MYlGzzmuTyheZ6dKjQasqOYZVrzrVf7lsxAxKTop8kQ',1,'2019-05-15 22:53:36','2019-05-15 22:53:36');
INSERT INTO oc_api VALUES(2,'Default','LRwsofoR6tmZnvsOWCHTQY9JFUiwkDXdFjAlm6mFbDZvEuEedLVh7XtM81tPpNVg0m7GQDhRgPfq6PMUBkj51wqsNarpNkBnSxWEzVNDCb3WOuYibQUoDG1Dr1h21qF6rduxS1oA59JRp2H0QYvFc4XIMrKlY4pz2Yu0h6bVpXBep5FdAayC03ivN06ffMzybko3YTVZCqFgHLbjK0gH3vFZK1tdtLqTGQVbngnwdW0UmDzGbdnqtpsprjJvUMqk',1,'2019-06-14 22:20:36','2019-06-14 22:20:36');
INSERT INTO oc_api VALUES(3,'Default','GKU0AoqykiWKo3txhtVUi1OfLh5fRvHQezBCAhDXAo0oM2IzyEufQ2ViGbTugf1Qv093leVGLbKyUB3nRAZWL657ctxNNMKCDTfoKJaKMUbmjKAeETXYPaIowEVl6aSIpHg9PxE4nQeWnDQk7ejMnO5br6wZuR23qATHUWE8GDBXAOXdD0Lt6oVmpdTywd1D0D9xUV7RtHUCN6JYDuW0xTIMUkSBabNxYC7t6KDFTJwoEeyA23TeUJNeIctMk2hE',1,'2019-08-01 22:02:08','2019-08-01 22:02:08');
INSERT INTO oc_api VALUES(4,'Default','VxXbI2PrcoWNsO9LJIJOnFC8Nmq7kAeSSzSl6crzrxjHhhePA4xmGVFLTi46nTE9GN51mB9SlvsjlH4jZiDUCgCKWj4tGY0aTjyHu6jC0O6ZWJFgLJLQjVOiy9BVVlkPVaS5g9USI7g3VlhoUlNj6UdRoDypIjsa4VXRknV2horXWR8JKiINA91TOKZJiC43IToE4n1K2ZB3IheSV6p3HYQXapGq4D7gZGAIC9jpTU4Y3FXdFuF3D6ZsJNnslqzv',1,'2019-08-27 22:06:05','2019-08-27 22:06:05');



DROP TABLE IF EXISTS `oc_api_ip`;

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`),
  KEY `api_id` (`api_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO oc_api_ip VALUES(1,2,'123.201.225.199');



DROP TABLE IF EXISTS `oc_api_session`;

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`),
  KEY `api_id` (`api_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO oc_api_session VALUES(1,2,'66e6aaea69df96b59e367b0785','123.201.225.199','2019-06-30 17:41:03','2019-06-30 17:41:09');
INSERT INTO oc_api_session VALUES(2,2,'20fbd2ffb42f74f4dc89eb902d','123.201.225.199','2019-06-30 17:44:02','2019-06-30 17:44:17');



DROP TABLE IF EXISTS `oc_attribute`;

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_group_id` (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO oc_attribute VALUES(1,6,1);
INSERT INTO oc_attribute VALUES(2,6,5);
INSERT INTO oc_attribute VALUES(3,6,3);
INSERT INTO oc_attribute VALUES(4,3,1);
INSERT INTO oc_attribute VALUES(5,3,2);
INSERT INTO oc_attribute VALUES(6,3,3);
INSERT INTO oc_attribute VALUES(7,3,4);
INSERT INTO oc_attribute VALUES(8,3,5);
INSERT INTO oc_attribute VALUES(9,3,6);
INSERT INTO oc_attribute VALUES(10,3,7);
INSERT INTO oc_attribute VALUES(11,3,8);



DROP TABLE IF EXISTS `oc_attribute_description`;

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_attribute_description VALUES(1,1,'Description');
INSERT INTO oc_attribute_description VALUES(2,1,'No. of Cores');
INSERT INTO oc_attribute_description VALUES(4,1,'test 1');
INSERT INTO oc_attribute_description VALUES(5,1,'test 2');
INSERT INTO oc_attribute_description VALUES(6,1,'test 3');
INSERT INTO oc_attribute_description VALUES(7,1,'test 4');
INSERT INTO oc_attribute_description VALUES(8,1,'test 5');
INSERT INTO oc_attribute_description VALUES(9,1,'test 6');
INSERT INTO oc_attribute_description VALUES(10,1,'test 7');
INSERT INTO oc_attribute_description VALUES(11,1,'test 8');
INSERT INTO oc_attribute_description VALUES(3,1,'Clockspeed');
INSERT INTO oc_attribute_description VALUES(1,4,'Description');
INSERT INTO oc_attribute_description VALUES(2,4,'No. of Cores');
INSERT INTO oc_attribute_description VALUES(4,4,'test 1');
INSERT INTO oc_attribute_description VALUES(5,4,'test 2');
INSERT INTO oc_attribute_description VALUES(6,4,'test 3');
INSERT INTO oc_attribute_description VALUES(7,4,'test 4');
INSERT INTO oc_attribute_description VALUES(8,4,'test 5');
INSERT INTO oc_attribute_description VALUES(9,4,'test 6');
INSERT INTO oc_attribute_description VALUES(10,4,'test 7');
INSERT INTO oc_attribute_description VALUES(11,4,'test 8');
INSERT INTO oc_attribute_description VALUES(3,4,'Clockspeed');
INSERT INTO oc_attribute_description VALUES(1,7,'Description');
INSERT INTO oc_attribute_description VALUES(2,7,'No. of Cores');
INSERT INTO oc_attribute_description VALUES(4,7,'test 1');
INSERT INTO oc_attribute_description VALUES(5,7,'test 2');
INSERT INTO oc_attribute_description VALUES(6,7,'test 3');
INSERT INTO oc_attribute_description VALUES(7,7,'test 4');
INSERT INTO oc_attribute_description VALUES(8,7,'test 5');
INSERT INTO oc_attribute_description VALUES(9,7,'test 6');
INSERT INTO oc_attribute_description VALUES(10,7,'test 7');
INSERT INTO oc_attribute_description VALUES(11,7,'test 8');
INSERT INTO oc_attribute_description VALUES(3,7,'Clockspeed');



DROP TABLE IF EXISTS `oc_attribute_group`;

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO oc_attribute_group VALUES(3,2);
INSERT INTO oc_attribute_group VALUES(4,1);
INSERT INTO oc_attribute_group VALUES(5,3);
INSERT INTO oc_attribute_group VALUES(6,4);



DROP TABLE IF EXISTS `oc_attribute_group_description`;

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_attribute_group_description VALUES(3,1,'Memory');
INSERT INTO oc_attribute_group_description VALUES(4,1,'Technical');
INSERT INTO oc_attribute_group_description VALUES(5,1,'Motherboard');
INSERT INTO oc_attribute_group_description VALUES(6,1,'Processor');
INSERT INTO oc_attribute_group_description VALUES(3,4,'Memory');
INSERT INTO oc_attribute_group_description VALUES(4,4,'Technical');
INSERT INTO oc_attribute_group_description VALUES(5,4,'Motherboard');
INSERT INTO oc_attribute_group_description VALUES(6,4,'Processor');
INSERT INTO oc_attribute_group_description VALUES(3,7,'Memory');
INSERT INTO oc_attribute_group_description VALUES(4,7,'Technical');
INSERT INTO oc_attribute_group_description VALUES(5,7,'Motherboard');
INSERT INTO oc_attribute_group_description VALUES(6,7,'Processor');



DROP TABLE IF EXISTS `oc_banner`;

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO oc_banner VALUES(6,'Rose',1);
INSERT INTO oc_banner VALUES(7,'Home Page Slideshow',1);
INSERT INTO oc_banner VALUES(8,'Manufacturers',1);



DROP TABLE IF EXISTS `oc_banner_image`;

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

INSERT INTO oc_banner_image VALUES(79,7,1,'iPhone 6','index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0);
INSERT INTO oc_banner_image VALUES(94,8,1,'NFL','','catalog/demo/manufacturer/nfl.png',0);
INSERT INTO oc_banner_image VALUES(95,8,1,'RedBull','','catalog/demo/manufacturer/redbull.png',0);
INSERT INTO oc_banner_image VALUES(96,8,1,'Sony','','catalog/demo/manufacturer/sony.png',0);
INSERT INTO oc_banner_image VALUES(91,8,1,'Coca Cola','','catalog/demo/manufacturer/cocacola.png',0);
INSERT INTO oc_banner_image VALUES(92,8,1,'Burger King','','catalog/demo/manufacturer/burgerking.png',0);
INSERT INTO oc_banner_image VALUES(93,8,1,'Canon','','catalog/demo/manufacturer/canon.png',0);
INSERT INTO oc_banner_image VALUES(88,8,1,'Harley Davidson','','catalog/demo/manufacturer/harley.png',0);
INSERT INTO oc_banner_image VALUES(89,8,1,'Dell','','catalog/demo/manufacturer/dell.png',0);
INSERT INTO oc_banner_image VALUES(90,8,1,'Disney','','catalog/demo/manufacturer/disney.png',0);
INSERT INTO oc_banner_image VALUES(80,7,1,'MacBookAir','','catalog/demo/banners/MacBookAir.jpg',0);
INSERT INTO oc_banner_image VALUES(97,8,1,'Starbucks','','catalog/demo/manufacturer/starbucks.png',0);
INSERT INTO oc_banner_image VALUES(98,8,1,'Nintendo','','catalog/demo/manufacturer/nintendo.png',0);
INSERT INTO oc_banner_image VALUES(101,7,4,'iPhone 6','index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0);
INSERT INTO oc_banner_image VALUES(130,6,7,'White','index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/themefactory/leftbanner/1.jpg',0);
INSERT INTO oc_banner_image VALUES(103,8,4,'NFL','','catalog/demo/manufacturer/nfl.png',0);
INSERT INTO oc_banner_image VALUES(104,8,4,'RedBull','','catalog/demo/manufacturer/redbull.png',0);
INSERT INTO oc_banner_image VALUES(105,8,4,'Sony','','catalog/demo/manufacturer/sony.png',0);
INSERT INTO oc_banner_image VALUES(106,8,4,'Coca Cola','','catalog/demo/manufacturer/cocacola.png',0);
INSERT INTO oc_banner_image VALUES(107,8,4,'Burger King','','catalog/demo/manufacturer/burgerking.png',0);
INSERT INTO oc_banner_image VALUES(108,8,4,'Canon','','catalog/demo/manufacturer/canon.png',0);
INSERT INTO oc_banner_image VALUES(109,8,4,'Harley Davidson','','catalog/demo/manufacturer/harley.png',0);
INSERT INTO oc_banner_image VALUES(110,8,4,'Dell','','catalog/demo/manufacturer/dell.png',0);
INSERT INTO oc_banner_image VALUES(111,8,4,'Disney','','catalog/demo/manufacturer/disney.png',0);
INSERT INTO oc_banner_image VALUES(112,7,4,'MacBookAir','','catalog/demo/banners/MacBookAir.jpg',0);
INSERT INTO oc_banner_image VALUES(113,8,4,'Starbucks','','catalog/demo/manufacturer/starbucks.png',0);
INSERT INTO oc_banner_image VALUES(114,8,4,'Nintendo','','catalog/demo/manufacturer/nintendo.png',0);
INSERT INTO oc_banner_image VALUES(115,7,7,'iPhone 6','index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0);
INSERT INTO oc_banner_image VALUES(129,6,1,'White','index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/themefactory/leftbanner/1.jpg',0);
INSERT INTO oc_banner_image VALUES(117,8,7,'NFL','','catalog/demo/manufacturer/nfl.png',0);
INSERT INTO oc_banner_image VALUES(118,8,7,'RedBull','','catalog/demo/manufacturer/redbull.png',0);
INSERT INTO oc_banner_image VALUES(119,8,7,'Sony','','catalog/demo/manufacturer/sony.png',0);
INSERT INTO oc_banner_image VALUES(120,8,7,'Coca Cola','','catalog/demo/manufacturer/cocacola.png',0);
INSERT INTO oc_banner_image VALUES(121,8,7,'Burger King','','catalog/demo/manufacturer/burgerking.png',0);
INSERT INTO oc_banner_image VALUES(122,8,7,'Canon','','catalog/demo/manufacturer/canon.png',0);
INSERT INTO oc_banner_image VALUES(123,8,7,'Harley Davidson','','catalog/demo/manufacturer/harley.png',0);
INSERT INTO oc_banner_image VALUES(124,8,7,'Dell','','catalog/demo/manufacturer/dell.png',0);
INSERT INTO oc_banner_image VALUES(125,8,7,'Disney','','catalog/demo/manufacturer/disney.png',0);
INSERT INTO oc_banner_image VALUES(126,7,7,'MacBookAir','','catalog/demo/banners/MacBookAir.jpg',0);
INSERT INTO oc_banner_image VALUES(127,8,7,'Starbucks','','catalog/demo/manufacturer/starbucks.png',0);
INSERT INTO oc_banner_image VALUES(128,8,7,'Nintendo','','catalog/demo/manufacturer/nintendo.png',0);



DROP TABLE IF EXISTS `oc_cart`;

CREATE TABLE `oc_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

INSERT INTO oc_cart VALUES(19,0,4,'fde75e1c9898af10230c0446ce',44,0,'[]',1,'2019-06-06 21:08:53');
INSERT INTO oc_cart VALUES(21,0,3,'b84a6672b4c0b1058732885aac',43,0,'[]',1,'2019-06-07 00:12:36');
INSERT INTO oc_cart VALUES(22,0,3,'b84a6672b4c0b1058732885aac',32,0,'[]',1,'2019-06-07 00:13:09');
INSERT INTO oc_cart VALUES(24,0,3,'b84a6672b4c0b1058732885aac',45,0,'[]',1,'2019-06-07 00:14:05');
INSERT INTO oc_cart VALUES(27,0,3,'b84a6672b4c0b1058732885aac',44,0,'[]',1,'2019-06-09 03:46:20');
INSERT INTO oc_cart VALUES(28,0,3,'b84a6672b4c0b1058732885aac',49,0,'[]',1,'2019-06-09 03:46:21');
INSERT INTO oc_cart VALUES(34,0,5,'1d41c35d251048725baaad85a5',31,0,'[]',1,'2019-06-09 14:00:25');
INSERT INTO oc_cart VALUES(35,0,5,'1d41c35d251048725baaad85a5',44,0,'[]',2,'2019-06-09 14:00:25');
INSERT INTO oc_cart VALUES(38,0,3,'b84a6672b4c0b1058732885aac',33,0,'[]',2,'2019-06-09 15:56:59');
INSERT INTO oc_cart VALUES(39,0,3,'b84a6672b4c0b1058732885aac',40,0,'[]',2,'2019-06-09 15:56:59');
INSERT INTO oc_cart VALUES(40,0,5,'1d41c35d251048725baaad85a5',45,0,'[]',1,'2019-06-09 17:26:37');
INSERT INTO oc_cart VALUES(67,0,6,'1f593eee10df72a22e677a88d0',46,0,'[]',1,'2019-06-30 18:12:03');
INSERT INTO oc_cart VALUES(68,0,6,'1f593eee10df72a22e677a88d0',41,0,'[]',2,'2019-06-30 18:38:42');
INSERT INTO oc_cart VALUES(69,0,6,'1f593eee10df72a22e677a88d0',34,0,'[]',1,'2019-06-30 18:38:50');
INSERT INTO oc_cart VALUES(70,0,6,'1f593eee10df72a22e677a88d0',29,0,'[]',1,'2019-06-30 18:38:53');
INSERT INTO oc_cart VALUES(71,0,3,'b84a6672b4c0b1058732885aac',48,0,'[]',1,'2019-06-30 19:04:50');
INSERT INTO oc_cart VALUES(85,0,3,'b84a6672b4c0b1058732885aac',46,0,'[]',1,'2019-07-15 17:22:42');



DROP TABLE IF EXISTS `oc_category`;

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

INSERT INTO oc_category VALUES(20,'catalog/themefactory/categorybanner/1.jpg',0,1,1,3,1,'2009-01-05 21:49:43','2019-08-30 21:55:58');
INSERT INTO oc_category VALUES(90,'catalog/themefactory/categorybanner/1.jpg',87,0,1,2,1,'2019-06-01 22:32:58','2019-07-15 11:13:43');
INSERT INTO oc_category VALUES(33,'catalog/themefactory/categorybanner/1.jpg',0,1,1,1,1,'2009-02-03 14:17:55','2019-08-30 21:55:32');
INSERT INTO oc_category VALUES(87,'catalog/themefactory/categorybanner/1.jpg',0,1,1,2,1,'2019-06-01 22:26:33','2019-08-29 22:39:44');
INSERT INTO oc_category VALUES(88,'catalog/themefactory/categorybanner/1.jpg',87,0,1,2,1,'2019-06-01 22:32:39','2019-07-15 11:13:44');
INSERT INTO oc_category VALUES(89,'catalog/themefactory/categorybanner/1.jpg',87,0,1,2,1,'2019-06-01 22:32:49','2019-07-15 11:11:54');
INSERT INTO oc_category VALUES(91,'catalog/themefactory/categorybanner/1.jpg',87,0,1,2,1,'2019-06-01 22:33:14','2019-07-15 11:11:23');
INSERT INTO oc_category VALUES(92,'catalog/themefactory/categorybanner/1.jpg',0,1,1,5,0,'2019-06-12 21:37:30','2019-08-08 21:19:36');
INSERT INTO oc_category VALUES(59,'catalog/themefactory/categorybanner/1.jpg',33,0,1,1,1,'2019-05-22 23:02:34','2019-07-15 11:10:40');
INSERT INTO oc_category VALUES(60,'catalog/themefactory/categorybanner/1.jpg',33,0,1,1,1,'2019-05-22 23:03:05','2019-08-31 00:04:38');
INSERT INTO oc_category VALUES(61,'catalog/themefactory/categorybanner/1.jpg',33,0,1,1,1,'2019-05-22 23:03:42','2019-08-31 00:05:19');
INSERT INTO oc_category VALUES(62,'catalog/themefactory/categorybanner/1.jpg',33,0,1,1,1,'2019-05-22 23:04:08','2019-08-31 00:05:02');



DROP TABLE IF EXISTS `oc_category_description`;

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_category_description VALUES(88,1,'Tops','','Tops','','');
INSERT INTO oc_category_description VALUES(88,7,'???','','???','','');
INSERT INTO oc_category_description VALUES(90,1,'Sarees','','Sarees','','');
INSERT INTO oc_category_description VALUES(90,7,'??????','','??????','','');
INSERT INTO oc_category_description VALUES(61,1,'Seeds &amp; Spices','','Suits','','');
INSERT INTO oc_category_description VALUES(33,1,'Organic Vegetable','','Organic Vegetable','','');
INSERT INTO oc_category_description VALUES(87,7,'SeaFood','','SeaFood','','');
INSERT INTO oc_category_description VALUES(89,7,'??????','','??????','','');
INSERT INTO oc_category_description VALUES(91,7,'?????','','?????','','');
INSERT INTO oc_category_description VALUES(20,7,'Organic Fruits','&lt;p&gt;\r\n\r\nExample of category description text&lt;/p&gt;\r\n\r\n','Organic Fruits','Example of category description','');
INSERT INTO oc_category_description VALUES(91,1,'Blouse','','Blouse','','');
INSERT INTO oc_category_description VALUES(89,1,'Dresses','','Dresses','','');
INSERT INTO oc_category_description VALUES(60,1,'Wine &amp; Beer','','Jeans','','');
INSERT INTO oc_category_description VALUES(59,1,'T-Shirts','','T-Shirts','','');
INSERT INTO oc_category_description VALUES(59,7,'?? ????','','?? ????','','');
INSERT INTO oc_category_description VALUES(62,1,'Bakery','','Pent','','');
INSERT INTO oc_category_description VALUES(92,7,'????? ??????','','????? ??????','','');
INSERT INTO oc_category_description VALUES(92,1,'Sportwear','','Sportswear','','');
INSERT INTO oc_category_description VALUES(33,7,'Organic Vegetable','','Organic Vegetable','','');
INSERT INTO oc_category_description VALUES(87,1,'SeaFood','','SeaFood','','');
INSERT INTO oc_category_description VALUES(20,1,'Organic Fruits','&lt;p&gt;\r\n\r\nExample of category description text&lt;/p&gt;\r\n\r\n','Organic Fruits','Example of category description','');
INSERT INTO oc_category_description VALUES(60,7,'????','','????','','');
INSERT INTO oc_category_description VALUES(62,7,'????','','????','','');
INSERT INTO oc_category_description VALUES(61,7,'????','','????','','');



DROP TABLE IF EXISTS `oc_category_filter`;

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_category_filter VALUES(20,1);
INSERT INTO oc_category_filter VALUES(20,2);
INSERT INTO oc_category_filter VALUES(20,3);
INSERT INTO oc_category_filter VALUES(20,4);
INSERT INTO oc_category_filter VALUES(20,5);
INSERT INTO oc_category_filter VALUES(20,6);
INSERT INTO oc_category_filter VALUES(33,1);
INSERT INTO oc_category_filter VALUES(33,2);
INSERT INTO oc_category_filter VALUES(33,3);
INSERT INTO oc_category_filter VALUES(33,4);
INSERT INTO oc_category_filter VALUES(33,5);
INSERT INTO oc_category_filter VALUES(33,6);
INSERT INTO oc_category_filter VALUES(59,1);
INSERT INTO oc_category_filter VALUES(59,2);
INSERT INTO oc_category_filter VALUES(59,3);
INSERT INTO oc_category_filter VALUES(59,4);
INSERT INTO oc_category_filter VALUES(59,5);
INSERT INTO oc_category_filter VALUES(59,6);
INSERT INTO oc_category_filter VALUES(60,1);
INSERT INTO oc_category_filter VALUES(60,2);
INSERT INTO oc_category_filter VALUES(60,3);
INSERT INTO oc_category_filter VALUES(60,4);
INSERT INTO oc_category_filter VALUES(60,5);
INSERT INTO oc_category_filter VALUES(60,6);
INSERT INTO oc_category_filter VALUES(61,1);
INSERT INTO oc_category_filter VALUES(61,2);
INSERT INTO oc_category_filter VALUES(61,3);
INSERT INTO oc_category_filter VALUES(61,4);
INSERT INTO oc_category_filter VALUES(61,5);
INSERT INTO oc_category_filter VALUES(61,6);
INSERT INTO oc_category_filter VALUES(62,1);
INSERT INTO oc_category_filter VALUES(62,2);
INSERT INTO oc_category_filter VALUES(62,3);
INSERT INTO oc_category_filter VALUES(62,4);
INSERT INTO oc_category_filter VALUES(62,5);
INSERT INTO oc_category_filter VALUES(62,6);
INSERT INTO oc_category_filter VALUES(87,1);
INSERT INTO oc_category_filter VALUES(87,2);
INSERT INTO oc_category_filter VALUES(87,3);
INSERT INTO oc_category_filter VALUES(87,4);
INSERT INTO oc_category_filter VALUES(87,5);
INSERT INTO oc_category_filter VALUES(87,6);
INSERT INTO oc_category_filter VALUES(88,1);
INSERT INTO oc_category_filter VALUES(88,2);
INSERT INTO oc_category_filter VALUES(88,3);
INSERT INTO oc_category_filter VALUES(88,4);
INSERT INTO oc_category_filter VALUES(88,5);
INSERT INTO oc_category_filter VALUES(88,6);
INSERT INTO oc_category_filter VALUES(89,1);
INSERT INTO oc_category_filter VALUES(89,2);
INSERT INTO oc_category_filter VALUES(89,3);
INSERT INTO oc_category_filter VALUES(89,4);
INSERT INTO oc_category_filter VALUES(89,5);
INSERT INTO oc_category_filter VALUES(89,6);
INSERT INTO oc_category_filter VALUES(90,1);
INSERT INTO oc_category_filter VALUES(90,2);
INSERT INTO oc_category_filter VALUES(90,3);
INSERT INTO oc_category_filter VALUES(90,4);
INSERT INTO oc_category_filter VALUES(90,5);
INSERT INTO oc_category_filter VALUES(90,6);
INSERT INTO oc_category_filter VALUES(91,1);
INSERT INTO oc_category_filter VALUES(91,2);
INSERT INTO oc_category_filter VALUES(91,3);
INSERT INTO oc_category_filter VALUES(91,4);
INSERT INTO oc_category_filter VALUES(91,5);
INSERT INTO oc_category_filter VALUES(91,6);



DROP TABLE IF EXISTS `oc_category_path`;

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_category_path VALUES(91,91,1);
INSERT INTO oc_category_path VALUES(90,90,1);
INSERT INTO oc_category_path VALUES(91,87,0);
INSERT INTO oc_category_path VALUES(89,89,1);
INSERT INTO oc_category_path VALUES(90,87,0);
INSERT INTO oc_category_path VALUES(88,88,1);
INSERT INTO oc_category_path VALUES(89,87,0);
INSERT INTO oc_category_path VALUES(87,87,0);
INSERT INTO oc_category_path VALUES(88,87,0);
INSERT INTO oc_category_path VALUES(20,20,0);
INSERT INTO oc_category_path VALUES(33,33,0);
INSERT INTO oc_category_path VALUES(92,92,0);
INSERT INTO oc_category_path VALUES(59,59,1);
INSERT INTO oc_category_path VALUES(59,33,0);
INSERT INTO oc_category_path VALUES(60,60,1);
INSERT INTO oc_category_path VALUES(60,33,0);
INSERT INTO oc_category_path VALUES(61,61,1);
INSERT INTO oc_category_path VALUES(61,33,0);
INSERT INTO oc_category_path VALUES(62,62,1);
INSERT INTO oc_category_path VALUES(62,33,0);



DROP TABLE IF EXISTS `oc_category_to_layout`;

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_category_to_layout VALUES(33,0,0);
INSERT INTO oc_category_to_layout VALUES(59,0,0);
INSERT INTO oc_category_to_layout VALUES(60,0,0);
INSERT INTO oc_category_to_layout VALUES(61,0,0);
INSERT INTO oc_category_to_layout VALUES(62,0,0);
INSERT INTO oc_category_to_layout VALUES(87,0,0);
INSERT INTO oc_category_to_layout VALUES(89,0,0);
INSERT INTO oc_category_to_layout VALUES(91,0,0);
INSERT INTO oc_category_to_layout VALUES(90,0,0);
INSERT INTO oc_category_to_layout VALUES(88,0,0);
INSERT INTO oc_category_to_layout VALUES(20,0,0);
INSERT INTO oc_category_to_layout VALUES(92,0,0);



DROP TABLE IF EXISTS `oc_category_to_store`;

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_category_to_store VALUES(20,0);
INSERT INTO oc_category_to_store VALUES(33,0);
INSERT INTO oc_category_to_store VALUES(59,0);
INSERT INTO oc_category_to_store VALUES(60,0);
INSERT INTO oc_category_to_store VALUES(61,0);
INSERT INTO oc_category_to_store VALUES(62,0);
INSERT INTO oc_category_to_store VALUES(87,0);
INSERT INTO oc_category_to_store VALUES(88,0);
INSERT INTO oc_category_to_store VALUES(89,0);
INSERT INTO oc_category_to_store VALUES(90,0);
INSERT INTO oc_category_to_store VALUES(91,0);
INSERT INTO oc_category_to_store VALUES(92,0);



DROP TABLE IF EXISTS `oc_country`;

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`),
  KEY `iso_code_2` (`iso_code_2`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

INSERT INTO oc_country VALUES(1,'Afghanistan','AF','AFG','',0,1);
INSERT INTO oc_country VALUES(2,'Albania','AL','ALB','',0,1);
INSERT INTO oc_country VALUES(3,'Algeria','DZ','DZA','',0,1);
INSERT INTO oc_country VALUES(4,'American Samoa','AS','ASM','',0,1);
INSERT INTO oc_country VALUES(5,'Andorra','AD','AND','',0,1);
INSERT INTO oc_country VALUES(6,'Angola','AO','AGO','',0,1);
INSERT INTO oc_country VALUES(7,'Anguilla','AI','AIA','',0,1);
INSERT INTO oc_country VALUES(8,'Antarctica','AQ','ATA','',0,1);
INSERT INTO oc_country VALUES(9,'Antigua and Barbuda','AG','ATG','',0,1);
INSERT INTO oc_country VALUES(10,'Argentina','AR','ARG','',0,1);
INSERT INTO oc_country VALUES(11,'Armenia','AM','ARM','',0,1);
INSERT INTO oc_country VALUES(12,'Aruba','AW','ABW','',0,1);
INSERT INTO oc_country VALUES(13,'Australia','AU','AUS','',0,1);
INSERT INTO oc_country VALUES(14,'Austria','AT','AUT','',0,1);
INSERT INTO oc_country VALUES(15,'Azerbaijan','AZ','AZE','',0,1);
INSERT INTO oc_country VALUES(16,'Bahamas','BS','BHS','',0,1);
INSERT INTO oc_country VALUES(17,'Bahrain','BH','BHR','',0,1);
INSERT INTO oc_country VALUES(18,'Bangladesh','BD','BGD','',0,1);
INSERT INTO oc_country VALUES(19,'Barbados','BB','BRB','',0,1);
INSERT INTO oc_country VALUES(20,'Belarus','BY','BLR','',0,1);
INSERT INTO oc_country VALUES(21,'Belgium','BE','BEL','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,1);
INSERT INTO oc_country VALUES(22,'Belize','BZ','BLZ','',0,1);
INSERT INTO oc_country VALUES(23,'Benin','BJ','BEN','',0,1);
INSERT INTO oc_country VALUES(24,'Bermuda','BM','BMU','',0,1);
INSERT INTO oc_country VALUES(25,'Bhutan','BT','BTN','',0,1);
INSERT INTO oc_country VALUES(26,'Bolivia','BO','BOL','',0,1);
INSERT INTO oc_country VALUES(27,'Bosnia and Herzegovina','BA','BIH','',0,1);
INSERT INTO oc_country VALUES(28,'Botswana','BW','BWA','',0,1);
INSERT INTO oc_country VALUES(29,'Bouvet Island','BV','BVT','',0,1);
INSERT INTO oc_country VALUES(30,'Brazil','BR','BRA','',0,1);
INSERT INTO oc_country VALUES(31,'British Indian Ocean Territory','IO','IOT','',0,1);
INSERT INTO oc_country VALUES(32,'Brunei Darussalam','BN','BRN','',0,1);
INSERT INTO oc_country VALUES(33,'Bulgaria','BG','BGR','',0,1);
INSERT INTO oc_country VALUES(34,'Burkina Faso','BF','BFA','',0,1);
INSERT INTO oc_country VALUES(35,'Burundi','BI','BDI','',0,1);
INSERT INTO oc_country VALUES(36,'Cambodia','KH','KHM','',0,1);
INSERT INTO oc_country VALUES(37,'Cameroon','CM','CMR','',0,1);
INSERT INTO oc_country VALUES(38,'Canada','CA','CAN','',0,1);
INSERT INTO oc_country VALUES(39,'Cape Verde','CV','CPV','',0,1);
INSERT INTO oc_country VALUES(40,'Cayman Islands','KY','CYM','',0,1);
INSERT INTO oc_country VALUES(41,'Central African Republic','CF','CAF','',0,1);
INSERT INTO oc_country VALUES(42,'Chad','TD','TCD','',0,1);
INSERT INTO oc_country VALUES(43,'Chile','CL','CHL','',0,1);
INSERT INTO oc_country VALUES(44,'China','CN','CHN','',0,1);
INSERT INTO oc_country VALUES(45,'Christmas Island','CX','CXR','',0,1);
INSERT INTO oc_country VALUES(46,'Cocos (Keeling) Islands','CC','CCK','',0,1);
INSERT INTO oc_country VALUES(47,'Colombia','CO','COL','',0,1);
INSERT INTO oc_country VALUES(48,'Comoros','KM','COM','',0,1);
INSERT INTO oc_country VALUES(49,'Congo','CG','COG','',0,1);
INSERT INTO oc_country VALUES(50,'Cook Islands','CK','COK','',0,1);
INSERT INTO oc_country VALUES(51,'Costa Rica','CR','CRI','',0,1);
INSERT INTO oc_country VALUES(52,'Cote D\'Ivoire','CI','CIV','',0,1);
INSERT INTO oc_country VALUES(53,'Croatia','HR','HRV','',0,1);
INSERT INTO oc_country VALUES(54,'Cuba','CU','CUB','',0,1);
INSERT INTO oc_country VALUES(55,'Cyprus','CY','CYP','',0,1);
INSERT INTO oc_country VALUES(56,'Czech Republic','CZ','CZE','',0,1);
INSERT INTO oc_country VALUES(57,'Denmark','DK','DNK','',0,1);
INSERT INTO oc_country VALUES(58,'Djibouti','DJ','DJI','',0,1);
INSERT INTO oc_country VALUES(59,'Dominica','DM','DMA','',0,1);
INSERT INTO oc_country VALUES(60,'Dominican Republic','DO','DOM','',0,1);
INSERT INTO oc_country VALUES(61,'East Timor','TL','TLS','',0,1);
INSERT INTO oc_country VALUES(62,'Ecuador','EC','ECU','',0,1);
INSERT INTO oc_country VALUES(63,'Egypt','EG','EGY','',0,1);
INSERT INTO oc_country VALUES(64,'El Salvador','SV','SLV','',0,1);
INSERT INTO oc_country VALUES(65,'Equatorial Guinea','GQ','GNQ','',0,1);
INSERT INTO oc_country VALUES(66,'Eritrea','ER','ERI','',0,1);
INSERT INTO oc_country VALUES(67,'Estonia','EE','EST','',0,1);
INSERT INTO oc_country VALUES(68,'Ethiopia','ET','ETH','',0,1);
INSERT INTO oc_country VALUES(69,'Falkland Islands (Malvinas)','FK','FLK','',0,1);
INSERT INTO oc_country VALUES(70,'Faroe Islands','FO','FRO','',0,1);
INSERT INTO oc_country VALUES(71,'Fiji','FJ','FJI','',0,1);
INSERT INTO oc_country VALUES(72,'Finland','FI','FIN','',0,1);
INSERT INTO oc_country VALUES(74,'France, Metropolitan','FR','FRA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1);
INSERT INTO oc_country VALUES(75,'French Guiana','GF','GUF','',0,1);
INSERT INTO oc_country VALUES(76,'French Polynesia','PF','PYF','',0,1);
INSERT INTO oc_country VALUES(77,'French Southern Territories','TF','ATF','',0,1);
INSERT INTO oc_country VALUES(78,'Gabon','GA','GAB','',0,1);
INSERT INTO oc_country VALUES(79,'Gambia','GM','GMB','',0,1);
INSERT INTO oc_country VALUES(80,'Georgia','GE','GEO','',0,1);
INSERT INTO oc_country VALUES(81,'Germany','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1);
INSERT INTO oc_country VALUES(82,'Ghana','GH','GHA','',0,1);
INSERT INTO oc_country VALUES(83,'Gibraltar','GI','GIB','',0,1);
INSERT INTO oc_country VALUES(84,'Greece','GR','GRC','',0,1);
INSERT INTO oc_country VALUES(85,'Greenland','GL','GRL','',0,1);
INSERT INTO oc_country VALUES(86,'Grenada','GD','GRD','',0,1);
INSERT INTO oc_country VALUES(87,'Guadeloupe','GP','GLP','',0,1);
INSERT INTO oc_country VALUES(88,'Guam','GU','GUM','',0,1);
INSERT INTO oc_country VALUES(89,'Guatemala','GT','GTM','',0,1);
INSERT INTO oc_country VALUES(90,'Guinea','GN','GIN','',0,1);
INSERT INTO oc_country VALUES(91,'Guinea-Bissau','GW','GNB','',0,1);
INSERT INTO oc_country VALUES(92,'Guyana','GY','GUY','',0,1);
INSERT INTO oc_country VALUES(93,'Haiti','HT','HTI','',0,1);
INSERT INTO oc_country VALUES(94,'Heard and Mc Donald Islands','HM','HMD','',0,1);
INSERT INTO oc_country VALUES(95,'Honduras','HN','HND','',0,1);
INSERT INTO oc_country VALUES(96,'Hong Kong','HK','HKG','',0,1);
INSERT INTO oc_country VALUES(97,'Hungary','HU','HUN','',0,1);
INSERT INTO oc_country VALUES(98,'Iceland','IS','ISL','',0,1);
INSERT INTO oc_country VALUES(99,'India','IN','IND','',0,1);
INSERT INTO oc_country VALUES(100,'Indonesia','ID','IDN','',0,1);
INSERT INTO oc_country VALUES(101,'Iran (Islamic Republic of)','IR','IRN','',0,1);
INSERT INTO oc_country VALUES(102,'Iraq','IQ','IRQ','',0,1);
INSERT INTO oc_country VALUES(103,'Ireland','IE','IRL','',0,1);
INSERT INTO oc_country VALUES(104,'Israel','IL','ISR','',0,1);
INSERT INTO oc_country VALUES(105,'Italy','IT','ITA','',0,1);
INSERT INTO oc_country VALUES(106,'Jamaica','JM','JAM','',0,1);
INSERT INTO oc_country VALUES(107,'Japan','JP','JPN','',0,1);
INSERT INTO oc_country VALUES(108,'Jordan','JO','JOR','',0,1);
INSERT INTO oc_country VALUES(109,'Kazakhstan','KZ','KAZ','',0,1);
INSERT INTO oc_country VALUES(110,'Kenya','KE','KEN','',0,1);
INSERT INTO oc_country VALUES(111,'Kiribati','KI','KIR','',0,1);
INSERT INTO oc_country VALUES(112,'North Korea','KP','PRK','',0,1);
INSERT INTO oc_country VALUES(113,'South Korea','KR','KOR','',0,1);
INSERT INTO oc_country VALUES(114,'Kuwait','KW','KWT','',0,1);
INSERT INTO oc_country VALUES(115,'Kyrgyzstan','KG','KGZ','',0,1);
INSERT INTO oc_country VALUES(116,'Lao People\'s Democratic Republic','LA','LAO','',0,1);
INSERT INTO oc_country VALUES(117,'Latvia','LV','LVA','',0,1);
INSERT INTO oc_country VALUES(118,'Lebanon','LB','LBN','',0,1);
INSERT INTO oc_country VALUES(119,'Lesotho','LS','LSO','',0,1);
INSERT INTO oc_country VALUES(120,'Liberia','LR','LBR','',0,1);
INSERT INTO oc_country VALUES(121,'Libyan Arab Jamahiriya','LY','LBY','',0,1);
INSERT INTO oc_country VALUES(122,'Liechtenstein','LI','LIE','',0,1);
INSERT INTO oc_country VALUES(123,'Lithuania','LT','LTU','',0,1);
INSERT INTO oc_country VALUES(124,'Luxembourg','LU','LUX','',0,1);
INSERT INTO oc_country VALUES(125,'Macau','MO','MAC','',0,1);
INSERT INTO oc_country VALUES(126,'FYROM','MK','MKD','',0,1);
INSERT INTO oc_country VALUES(127,'Madagascar','MG','MDG','',0,1);
INSERT INTO oc_country VALUES(128,'Malawi','MW','MWI','',0,1);
INSERT INTO oc_country VALUES(129,'Malaysia','MY','MYS','',0,1);
INSERT INTO oc_country VALUES(130,'Maldives','MV','MDV','',0,1);
INSERT INTO oc_country VALUES(131,'Mali','ML','MLI','',0,1);
INSERT INTO oc_country VALUES(132,'Malta','MT','MLT','',0,1);
INSERT INTO oc_country VALUES(133,'Marshall Islands','MH','MHL','',0,1);
INSERT INTO oc_country VALUES(134,'Martinique','MQ','MTQ','',0,1);
INSERT INTO oc_country VALUES(135,'Mauritania','MR','MRT','',0,1);
INSERT INTO oc_country VALUES(136,'Mauritius','MU','MUS','',0,1);
INSERT INTO oc_country VALUES(137,'Mayotte','YT','MYT','',0,1);
INSERT INTO oc_country VALUES(138,'Mexico','MX','MEX','',0,1);
INSERT INTO oc_country VALUES(139,'Micronesia, Federated States of','FM','FSM','',0,1);
INSERT INTO oc_country VALUES(140,'Moldova, Republic of','MD','MDA','',0,1);
INSERT INTO oc_country VALUES(141,'Monaco','MC','MCO','',0,1);
INSERT INTO oc_country VALUES(142,'Mongolia','MN','MNG','',0,1);
INSERT INTO oc_country VALUES(143,'Montserrat','MS','MSR','',0,1);
INSERT INTO oc_country VALUES(144,'Morocco','MA','MAR','',0,1);
INSERT INTO oc_country VALUES(145,'Mozambique','MZ','MOZ','',0,1);
INSERT INTO oc_country VALUES(146,'Myanmar','MM','MMR','',0,1);
INSERT INTO oc_country VALUES(147,'Namibia','NA','NAM','',0,1);
INSERT INTO oc_country VALUES(148,'Nauru','NR','NRU','',0,1);
INSERT INTO oc_country VALUES(149,'Nepal','NP','NPL','',0,1);
INSERT INTO oc_country VALUES(150,'Netherlands','NL','NLD','',0,1);
INSERT INTO oc_country VALUES(151,'Netherlands Antilles','AN','ANT','',0,1);
INSERT INTO oc_country VALUES(152,'New Caledonia','NC','NCL','',0,1);
INSERT INTO oc_country VALUES(153,'New Zealand','NZ','NZL','',0,1);
INSERT INTO oc_country VALUES(154,'Nicaragua','NI','NIC','',0,1);
INSERT INTO oc_country VALUES(155,'Niger','NE','NER','',0,1);
INSERT INTO oc_country VALUES(156,'Nigeria','NG','NGA','',0,1);
INSERT INTO oc_country VALUES(157,'Niue','NU','NIU','',0,1);
INSERT INTO oc_country VALUES(158,'Norfolk Island','NF','NFK','',0,1);
INSERT INTO oc_country VALUES(159,'Northern Mariana Islands','MP','MNP','',0,1);
INSERT INTO oc_country VALUES(160,'Norway','NO','NOR','',0,1);
INSERT INTO oc_country VALUES(161,'Oman','OM','OMN','',0,1);
INSERT INTO oc_country VALUES(162,'Pakistan','PK','PAK','',0,1);
INSERT INTO oc_country VALUES(163,'Palau','PW','PLW','',0,1);
INSERT INTO oc_country VALUES(164,'Panama','PA','PAN','',0,1);
INSERT INTO oc_country VALUES(165,'Papua New Guinea','PG','PNG','',0,1);
INSERT INTO oc_country VALUES(166,'Paraguay','PY','PRY','',0,1);
INSERT INTO oc_country VALUES(167,'Peru','PE','PER','',0,1);
INSERT INTO oc_country VALUES(168,'Philippines','PH','PHL','',0,1);
INSERT INTO oc_country VALUES(169,'Pitcairn','PN','PCN','',0,1);
INSERT INTO oc_country VALUES(170,'Poland','PL','POL','',0,1);
INSERT INTO oc_country VALUES(171,'Portugal','PT','PRT','',0,1);
INSERT INTO oc_country VALUES(172,'Puerto Rico','PR','PRI','',0,1);
INSERT INTO oc_country VALUES(173,'Qatar','QA','QAT','',0,1);
INSERT INTO oc_country VALUES(174,'Reunion','RE','REU','',0,1);
INSERT INTO oc_country VALUES(175,'Romania','RO','ROM','',0,1);
INSERT INTO oc_country VALUES(176,'Russian Federation','RU','RUS','',0,1);
INSERT INTO oc_country VALUES(177,'Rwanda','RW','RWA','',0,1);
INSERT INTO oc_country VALUES(178,'Saint Kitts and Nevis','KN','KNA','',0,1);
INSERT INTO oc_country VALUES(179,'Saint Lucia','LC','LCA','',0,1);
INSERT INTO oc_country VALUES(180,'Saint Vincent and the Grenadines','VC','VCT','',0,1);
INSERT INTO oc_country VALUES(181,'Samoa','WS','WSM','',0,1);
INSERT INTO oc_country VALUES(182,'San Marino','SM','SMR','',0,1);
INSERT INTO oc_country VALUES(183,'Sao Tome and Principe','ST','STP','',0,1);
INSERT INTO oc_country VALUES(184,'Saudi Arabia','SA','SAU','',0,1);
INSERT INTO oc_country VALUES(185,'Senegal','SN','SEN','',0,1);
INSERT INTO oc_country VALUES(186,'Seychelles','SC','SYC','',0,1);
INSERT INTO oc_country VALUES(187,'Sierra Leone','SL','SLE','',0,1);
INSERT INTO oc_country VALUES(188,'Singapore','SG','SGP','',0,1);
INSERT INTO oc_country VALUES(189,'Slovak Republic','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1);
INSERT INTO oc_country VALUES(190,'Slovenia','SI','SVN','',0,1);
INSERT INTO oc_country VALUES(191,'Solomon Islands','SB','SLB','',0,1);
INSERT INTO oc_country VALUES(192,'Somalia','SO','SOM','',0,1);
INSERT INTO oc_country VALUES(193,'South Africa','ZA','ZAF','',0,1);
INSERT INTO oc_country VALUES(194,'South Georgia &amp; South Sandwich Islands','GS','SGS','',0,1);
INSERT INTO oc_country VALUES(195,'Spain','ES','ESP','',0,1);
INSERT INTO oc_country VALUES(196,'Sri Lanka','LK','LKA','',0,1);
INSERT INTO oc_country VALUES(197,'St. Helena','SH','SHN','',0,1);
INSERT INTO oc_country VALUES(198,'St. Pierre and Miquelon','PM','SPM','',0,1);
INSERT INTO oc_country VALUES(199,'Sudan','SD','SDN','',0,1);
INSERT INTO oc_country VALUES(200,'Suriname','SR','SUR','',0,1);
INSERT INTO oc_country VALUES(201,'Svalbard and Jan Mayen Islands','SJ','SJM','',0,1);
INSERT INTO oc_country VALUES(202,'Swaziland','SZ','SWZ','',0,1);
INSERT INTO oc_country VALUES(203,'Sweden','SE','SWE','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1);
INSERT INTO oc_country VALUES(204,'Switzerland','CH','CHE','',0,1);
INSERT INTO oc_country VALUES(205,'Syrian Arab Republic','SY','SYR','',0,1);
INSERT INTO oc_country VALUES(206,'Taiwan','TW','TWN','',0,1);
INSERT INTO oc_country VALUES(207,'Tajikistan','TJ','TJK','',0,1);
INSERT INTO oc_country VALUES(208,'Tanzania, United Republic of','TZ','TZA','',0,1);
INSERT INTO oc_country VALUES(209,'Thailand','TH','THA','',0,1);
INSERT INTO oc_country VALUES(210,'Togo','TG','TGO','',0,1);
INSERT INTO oc_country VALUES(211,'Tokelau','TK','TKL','',0,1);
INSERT INTO oc_country VALUES(212,'Tonga','TO','TON','',0,1);
INSERT INTO oc_country VALUES(213,'Trinidad and Tobago','TT','TTO','',0,1);
INSERT INTO oc_country VALUES(214,'Tunisia','TN','TUN','',0,1);
INSERT INTO oc_country VALUES(215,'Turkey','TR','TUR','',0,1);
INSERT INTO oc_country VALUES(216,'Turkmenistan','TM','TKM','',0,1);
INSERT INTO oc_country VALUES(217,'Turks and Caicos Islands','TC','TCA','',0,1);
INSERT INTO oc_country VALUES(218,'Tuvalu','TV','TUV','',0,1);
INSERT INTO oc_country VALUES(219,'Uganda','UG','UGA','',0,1);
INSERT INTO oc_country VALUES(220,'Ukraine','UA','UKR','',0,1);
INSERT INTO oc_country VALUES(221,'United Arab Emirates','AE','ARE','',0,1);
INSERT INTO oc_country VALUES(222,'United Kingdom','GB','GBR','',1,1);
INSERT INTO oc_country VALUES(223,'United States','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1);
INSERT INTO oc_country VALUES(224,'United States Minor Outlying Islands','UM','UMI','',0,1);
INSERT INTO oc_country VALUES(225,'Uruguay','UY','URY','',0,1);
INSERT INTO oc_country VALUES(226,'Uzbekistan','UZ','UZB','',0,1);
INSERT INTO oc_country VALUES(227,'Vanuatu','VU','VUT','',0,1);
INSERT INTO oc_country VALUES(228,'Vatican City State (Holy See)','VA','VAT','',0,1);
INSERT INTO oc_country VALUES(229,'Venezuela','VE','VEN','',0,1);
INSERT INTO oc_country VALUES(230,'Viet Nam','VN','VNM','',0,1);
INSERT INTO oc_country VALUES(231,'Virgin Islands (British)','VG','VGB','',0,1);
INSERT INTO oc_country VALUES(232,'Virgin Islands (U.S.)','VI','VIR','',0,1);
INSERT INTO oc_country VALUES(233,'Wallis and Futuna Islands','WF','WLF','',0,1);
INSERT INTO oc_country VALUES(234,'Western Sahara','EH','ESH','',0,1);
INSERT INTO oc_country VALUES(235,'Yemen','YE','YEM','',0,1);
INSERT INTO oc_country VALUES(237,'Democratic Republic of Congo','CD','COD','',0,1);
INSERT INTO oc_country VALUES(238,'Zambia','ZM','ZMB','',0,1);
INSERT INTO oc_country VALUES(239,'Zimbabwe','ZW','ZWE','',0,1);
INSERT INTO oc_country VALUES(242,'Montenegro','ME','MNE','',0,1);
INSERT INTO oc_country VALUES(243,'Serbia','RS','SRB','',0,1);
INSERT INTO oc_country VALUES(244,'Aaland Islands','AX','ALA','',0,1);
INSERT INTO oc_country VALUES(245,'Bonaire, Sint Eustatius and Saba','BQ','BES','',0,1);
INSERT INTO oc_country VALUES(246,'Curacao','CW','CUW','',0,1);
INSERT INTO oc_country VALUES(247,'Palestinian Territory, Occupied','PS','PSE','',0,1);
INSERT INTO oc_country VALUES(248,'South Sudan','SS','SSD','',0,1);
INSERT INTO oc_country VALUES(249,'St. Barthelemy','BL','BLM','',0,1);
INSERT INTO oc_country VALUES(250,'St. Martin (French part)','MF','MAF','',0,1);
INSERT INTO oc_country VALUES(251,'Canary Islands','IC','ICA','',0,1);
INSERT INTO oc_country VALUES(252,'Ascension Island (British)','AC','ASC','',0,1);
INSERT INTO oc_country VALUES(253,'Kosovo, Republic of','XK','UNK','',0,1);
INSERT INTO oc_country VALUES(254,'Isle of Man','IM','IMN','',0,1);
INSERT INTO oc_country VALUES(255,'Tristan da Cunha','TA','SHN','',0,1);
INSERT INTO oc_country VALUES(256,'Guernsey','GG','GGY','',0,1);
INSERT INTO oc_country VALUES(257,'Jersey','JE','JEY','',0,1);



DROP TABLE IF EXISTS `oc_coupon`;

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO oc_coupon VALUES(4,'-10% Discount',2222,'P',10.0000,0,0,0.0000,'2014-01-01','2020-01-01',10,10,0,'2009-01-27 13:55:03');
INSERT INTO oc_coupon VALUES(5,'Free Shipping',3333,'P',0.0000,0,1,100.0000,'2014-01-01','2014-02-01',10,10,0,'2009-03-14 21:13:53');
INSERT INTO oc_coupon VALUES(6,'-10.00 Discount',1111,'F',10.0000,0,0,10.0000,'2014-01-01','2020-01-01',100000,10000,0,'2009-03-14 21:15:18');



DROP TABLE IF EXISTS `oc_coupon_category`;

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_coupon_history`;

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `order_id` (`order_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_coupon_product`;

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_currency`;

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`),
  KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO oc_currency VALUES(1,'Pound Sterling','GBP','','?',2,0.61250001,1,'2019-08-08 22:00:15');
INSERT INTO oc_currency VALUES(2,'US Dollar','USD','$','',2,1.00000000,1,'2019-09-06 07:45:29');
INSERT INTO oc_currency VALUES(3,'Euro','EUR','?','',2,0.78460002,1,'2019-08-08 22:00:00');



DROP TABLE IF EXISTS `oc_custom_field`;

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_custom_field_customer_group`;

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_custom_field_description`;

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_custom_field_value`;

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`),
  KEY `custom_field_id` (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_custom_field_value_description`;

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`),
  KEY `custom_field_id` (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_customer`;

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `customer_group_id` (`customer_group_id`),
  KEY `store_id` (`store_id`),
  KEY `email` (`email`),
  KEY `address_id` (`address_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO oc_customer VALUES(1,1,0,1,'demo','demo','mayur@gmail.com',9387464789,'','12202ec9408a59d72c1f4a83c84351945ac2299f','5zVac0QtM','','',1,1,'','192.168.0.100',1,0,'','','2019-05-16 23:50:40');
INSERT INTO oc_customer VALUES(2,1,0,1,'ashish','vekariya','tomwilliam274@gmail.com',8866902013,'','e971f6740d3cc2acc6f9fad3101afcc074dedb42','H10JrdfSF','','',1,0,'','192.168.0.108',1,0,'','','2019-05-16 23:56:31');
INSERT INTO oc_customer VALUES(3,1,0,1,'demo','demo','demo@demo.com',8866902013,'','1a5590f4a862c17634f8c42ea050a6fe01d583ff','rNtsssBYw','','',1,3,'','219.91.236.188',1,0,'','','2019-05-17 00:17:23');
INSERT INTO oc_customer VALUES(4,1,0,1,'ashish','vekariya','tomwillaaaaiam274@gmail.com',8866902013,'','9d25c5dd69dfba272d33beaa50a75373ad19f9ea','qkzvsBy2a','','',1,8,'','192.168.0.108',1,0,'','','2019-06-06 21:08:50');
INSERT INTO oc_customer VALUES(5,1,0,1,'ashish','vekariya','ashishvekariya1906@gmail.com',8866902013,'','12a6339462b71ee6696b6f07609bb82bb1a6680d','VyEPE42cc','','',1,9,'','192.168.0.108',1,0,'','','2019-06-09 14:00:22');
INSERT INTO oc_customer VALUES(6,1,0,1,'ashish','vekariya','demo@gmail.com',8596321562,'','94f61ef01e92dcd4bb06afd7c22dc106d41ce82f','7sZiB0KQ3','','',1,10,'','123.201.225.199',1,0,'','','2019-06-30 17:40:05');



DROP TABLE IF EXISTS `oc_customer_activity`;

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`),
  KEY `customer_id` (`customer_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_customer_affiliate`;

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_customer_approval`;

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_approval_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_customer_group`;

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO oc_customer_group VALUES(1,0,1);



DROP TABLE IF EXISTS `oc_customer_group_description`;

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_customer_group_description VALUES(1,1,'Default','test');
INSERT INTO oc_customer_group_description VALUES(1,4,'Default','test');
INSERT INTO oc_customer_group_description VALUES(1,7,'Default','test');



DROP TABLE IF EXISTS `oc_customer_history`;

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_customer_ip`;

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

INSERT INTO oc_customer_ip VALUES(1,1,'192.168.0.100','2019-05-16 23:50:44');
INSERT INTO oc_customer_ip VALUES(2,2,'192.168.0.108','2019-05-16 23:56:31');
INSERT INTO oc_customer_ip VALUES(3,3,'192.168.0.108','2019-05-17 00:17:24');
INSERT INTO oc_customer_ip VALUES(4,3,'192.168.0.100','2019-05-17 00:26:45');
INSERT INTO oc_customer_ip VALUES(5,3,'192.168.0.104','2019-05-17 22:22:37');
INSERT INTO oc_customer_ip VALUES(6,3,'192.168.0.107','2019-06-05 21:36:17');
INSERT INTO oc_customer_ip VALUES(7,4,'192.168.0.108','2019-06-06 21:08:52');
INSERT INTO oc_customer_ip VALUES(8,5,'192.168.0.108','2019-06-09 14:00:25');
INSERT INTO oc_customer_ip VALUES(9,5,'192.168.0.108','2019-06-09 14:00:25');
INSERT INTO oc_customer_ip VALUES(10,3,'219.91.237.123','2019-06-25 00:43:39');
INSERT INTO oc_customer_ip VALUES(11,6,'123.201.225.199','2019-06-30 17:40:06');
INSERT INTO oc_customer_ip VALUES(12,6,'123.201.225.199','2019-06-30 17:40:06');
INSERT INTO oc_customer_ip VALUES(13,3,'123.201.225.199','2019-06-30 18:39:29');
INSERT INTO oc_customer_ip VALUES(14,3,'157.32.249.49','2019-07-15 11:32:24');
INSERT INTO oc_customer_ip VALUES(15,3,'219.91.238.65','2019-07-15 11:34:52');
INSERT INTO oc_customer_ip VALUES(16,3,'219.91.238.159','2019-07-15 14:33:37');
INSERT INTO oc_customer_ip VALUES(17,3,'219.91.236.188','2019-07-15 16:22:35');



DROP TABLE IF EXISTS `oc_customer_login`;

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO oc_customer_login VALUES(2,'','192.168.0.108',5,'2019-06-08 22:20:45','2019-06-09 08:16:32');
INSERT INTO oc_customer_login VALUES(3,'','192.168.0.107',1,'2019-06-08 22:22:22','2019-06-08 22:22:22');
INSERT INTO oc_customer_login VALUES(4,'emp@deluxeinfotech.com','123.201.225.199',1,'2019-06-30 13:12:24','2019-06-30 13:12:24');
INSERT INTO oc_customer_login VALUES(5,'demo@demo.com','::1',1,'2019-08-04 12:47:58','2019-08-04 12:47:58');



DROP TABLE IF EXISTS `oc_customer_online`;

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_customer_reward`;

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`),
  KEY `customer_id` (`customer_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_customer_search`;

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_customer_transaction`;

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_customer_wishlist`;

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_customer_wishlist VALUES(1,28,'2019-05-17 00:09:58');
INSERT INTO oc_customer_wishlist VALUES(1,40,'2019-05-17 00:10:00');
INSERT INTO oc_customer_wishlist VALUES(1,29,'2019-05-17 00:10:02');
INSERT INTO oc_customer_wishlist VALUES(3,40,'2019-06-09 15:56:58');
INSERT INTO oc_customer_wishlist VALUES(3,42,'2019-07-15 11:32:24');
INSERT INTO oc_customer_wishlist VALUES(3,30,'2019-05-17 00:17:47');
INSERT INTO oc_customer_wishlist VALUES(3,43,'2019-07-15 11:32:24');
INSERT INTO oc_customer_wishlist VALUES(3,49,'2019-06-05 21:38:41');
INSERT INTO oc_customer_wishlist VALUES(3,44,'2019-06-05 21:38:45');



DROP TABLE IF EXISTS `oc_download`;

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_download_description`;

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_event`;

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

INSERT INTO oc_event VALUES(1,'activity_customer_add','catalog/model/account/customer/addCustomer/after','event/activity/addCustomer',1,0);
INSERT INTO oc_event VALUES(2,'activity_customer_edit','catalog/model/account/customer/editCustomer/after','event/activity/editCustomer',1,0);
INSERT INTO oc_event VALUES(3,'activity_customer_password','catalog/model/account/customer/editPassword/after','event/activity/editPassword',1,0);
INSERT INTO oc_event VALUES(4,'activity_customer_forgotten','catalog/model/account/customer/editCode/after','event/activity/forgotten',1,0);
INSERT INTO oc_event VALUES(5,'activity_transaction','catalog/model/account/customer/addTransaction/after','event/activity/addTransaction',1,0);
INSERT INTO oc_event VALUES(6,'activity_customer_login','catalog/model/account/customer/deleteLoginAttempts/after','event/activity/login',1,0);
INSERT INTO oc_event VALUES(7,'activity_address_add','catalog/model/account/address/addAddress/after','event/activity/addAddress',1,0);
INSERT INTO oc_event VALUES(8,'activity_address_edit','catalog/model/account/address/editAddress/after','event/activity/editAddress',1,0);
INSERT INTO oc_event VALUES(9,'activity_address_delete','catalog/model/account/address/deleteAddress/after','event/activity/deleteAddress',1,0);
INSERT INTO oc_event VALUES(10,'activity_affiliate_add','catalog/model/account/customer/addAffiliate/after','event/activity/addAffiliate',1,0);
INSERT INTO oc_event VALUES(11,'activity_affiliate_edit','catalog/model/account/customer/editAffiliate/after','event/activity/editAffiliate',1,0);
INSERT INTO oc_event VALUES(12,'activity_order_add','catalog/model/checkout/order/addOrderHistory/before','event/activity/addOrderHistory',1,0);
INSERT INTO oc_event VALUES(13,'activity_return_add','catalog/model/account/return/addReturn/after','event/activity/addReturn',1,0);
INSERT INTO oc_event VALUES(14,'mail_transaction','catalog/model/account/customer/addTransaction/after','mail/transaction',1,0);
INSERT INTO oc_event VALUES(15,'mail_forgotten','catalog/model/account/customer/editCode/after','mail/forgotten',1,0);
INSERT INTO oc_event VALUES(16,'mail_customer_add','catalog/model/account/customer/addCustomer/after','mail/register',1,0);
INSERT INTO oc_event VALUES(17,'mail_customer_alert','catalog/model/account/customer/addCustomer/after','mail/register/alert',1,0);
INSERT INTO oc_event VALUES(18,'mail_affiliate_add','catalog/model/account/customer/addAffiliate/after','mail/affiliate',1,0);
INSERT INTO oc_event VALUES(19,'mail_affiliate_alert','catalog/model/account/customer/addAffiliate/after','mail/affiliate/alert',1,0);
INSERT INTO oc_event VALUES(20,'mail_voucher','catalog/model/checkout/order/addOrderHistory/after','extension/total/voucher/send',1,0);
INSERT INTO oc_event VALUES(21,'mail_order_add','catalog/model/checkout/order/addOrderHistory/before','mail/order',1,0);
INSERT INTO oc_event VALUES(22,'mail_order_alert','catalog/model/checkout/order/addOrderHistory/before','mail/order/alert',1,0);
INSERT INTO oc_event VALUES(23,'statistics_review_add','catalog/model/catalog/review/addReview/after','event/statistics/addReview',1,0);
INSERT INTO oc_event VALUES(24,'statistics_return_add','catalog/model/account/return/addReturn/after','event/statistics/addReturn',1,0);
INSERT INTO oc_event VALUES(25,'statistics_order_history','catalog/model/checkout/order/addOrderHistory/after','event/statistics/addOrderHistory',1,0);
INSERT INTO oc_event VALUES(26,'admin_mail_affiliate_approve','admin/model/customer/customer_approval/approveAffiliate/after','mail/affiliate/approve',1,0);
INSERT INTO oc_event VALUES(27,'admin_mail_affiliate_deny','admin/model/customer/customer_approval/denyAffiliate/after','mail/affiliate/deny',1,0);
INSERT INTO oc_event VALUES(28,'admin_mail_customer_approve','admin/model/customer/customer_approval/approveCustomer/after','mail/customer/approve',1,0);
INSERT INTO oc_event VALUES(29,'admin_mail_customer_deny','admin/model/customer/customer_approval/denyCustomer/after','mail/customer/deny',1,0);
INSERT INTO oc_event VALUES(30,'admin_mail_reward','admin/model/customer/customer/addReward/after','mail/reward',1,0);
INSERT INTO oc_event VALUES(31,'admin_mail_transaction','admin/model/customer/customer/addTransaction/after','mail/transaction',1,0);
INSERT INTO oc_event VALUES(32,'admin_mail_return','admin/model/sale/return/addReturn/after','mail/return',1,0);
INSERT INTO oc_event VALUES(33,'admin_mail_forgotten','admin/model/user/user/editCode/after','mail/forgotten',1,0);



DROP TABLE IF EXISTS `oc_extension`;

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`),
  KEY `type` (`type`),
  KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

INSERT INTO oc_extension VALUES(1,'payment','cod');
INSERT INTO oc_extension VALUES(2,'total','shipping');
INSERT INTO oc_extension VALUES(3,'total','sub_total');
INSERT INTO oc_extension VALUES(4,'total','tax');
INSERT INTO oc_extension VALUES(5,'total','total');
INSERT INTO oc_extension VALUES(6,'module','banner');
INSERT INTO oc_extension VALUES(7,'module','carousel');
INSERT INTO oc_extension VALUES(8,'total','credit');
INSERT INTO oc_extension VALUES(9,'shipping','flat');
INSERT INTO oc_extension VALUES(10,'total','handling');
INSERT INTO oc_extension VALUES(11,'total','low_order_fee');
INSERT INTO oc_extension VALUES(12,'total','coupon');
INSERT INTO oc_extension VALUES(13,'module','category');
INSERT INTO oc_extension VALUES(14,'module','account');
INSERT INTO oc_extension VALUES(15,'total','reward');
INSERT INTO oc_extension VALUES(16,'total','voucher');
INSERT INTO oc_extension VALUES(17,'payment','free_checkout');
INSERT INTO oc_extension VALUES(18,'module','featured');
INSERT INTO oc_extension VALUES(19,'module','slideshow');
INSERT INTO oc_extension VALUES(20,'theme','default');
INSERT INTO oc_extension VALUES(21,'dashboard','activity');
INSERT INTO oc_extension VALUES(22,'dashboard','sale');
INSERT INTO oc_extension VALUES(23,'dashboard','recent');
INSERT INTO oc_extension VALUES(24,'dashboard','order');
INSERT INTO oc_extension VALUES(25,'dashboard','online');
INSERT INTO oc_extension VALUES(26,'dashboard','map');
INSERT INTO oc_extension VALUES(27,'dashboard','customer');
INSERT INTO oc_extension VALUES(28,'dashboard','chart');
INSERT INTO oc_extension VALUES(29,'report','sale_coupon');
INSERT INTO oc_extension VALUES(31,'report','customer_search');
INSERT INTO oc_extension VALUES(32,'report','customer_transaction');
INSERT INTO oc_extension VALUES(33,'report','product_purchased');
INSERT INTO oc_extension VALUES(34,'report','product_viewed');
INSERT INTO oc_extension VALUES(35,'report','sale_return');
INSERT INTO oc_extension VALUES(36,'report','sale_order');
INSERT INTO oc_extension VALUES(37,'report','sale_shipping');
INSERT INTO oc_extension VALUES(38,'report','sale_tax');
INSERT INTO oc_extension VALUES(39,'report','customer_activity');
INSERT INTO oc_extension VALUES(40,'report','customer_order');
INSERT INTO oc_extension VALUES(41,'report','customer_reward');
INSERT INTO oc_extension VALUES(109,'module','tntbrandlist');
INSERT INTO oc_extension VALUES(90,'module','tntcategoryslider');
INSERT INTO oc_extension VALUES(50,'module','tntslider');
INSERT INTO oc_extension VALUES(96,'module','tntsocialicon');
INSERT INTO oc_extension VALUES(53,'module','tnttabproduct');
INSERT INTO oc_extension VALUES(59,'module','tnttestimonial');
INSERT INTO oc_extension VALUES(77,'module','tntcustomerservices');
INSERT INTO oc_extension VALUES(93,'module','tntthemesetting');
INSERT INTO oc_extension VALUES(74,'module','bestseller');
INSERT INTO oc_extension VALUES(75,'module','latest');
INSERT INTO oc_extension VALUES(76,'module','special');
INSERT INTO oc_extension VALUES(82,'module','tntnewsletter');
INSERT INTO oc_extension VALUES(80,'module','tntnewsletterpopup');
INSERT INTO oc_extension VALUES(83,'module','tntlefttestimonial');
INSERT INTO oc_extension VALUES(84,'module','tntleftrightproduct');
INSERT INTO oc_extension VALUES(85,'module','filter');
INSERT INTO oc_extension VALUES(86,'module','information');
INSERT INTO oc_extension VALUES(92,'module','tntbanners');
INSERT INTO oc_extension VALUES(98,'module','tntnewsletterlist');
INSERT INTO oc_extension VALUES(101,'module','tntfooterlogo');
INSERT INTO oc_extension VALUES(103,'module','tntofferbanner');
INSERT INTO oc_extension VALUES(104,'module','tntblogcategory');
INSERT INTO oc_extension VALUES(105,'module','tntblog');
INSERT INTO oc_extension VALUES(107,'module','tntpaymenticon');



DROP TABLE IF EXISTS `oc_extension_install`;

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

INSERT INTO oc_extension_install VALUES(17,0,'themesetting.ocmod.zip','2019-09-06 14:36:01');



DROP TABLE IF EXISTS `oc_extension_path`;

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_filter`;

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`),
  KEY `filter_group_id` (`filter_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO oc_filter VALUES(7,1,4);
INSERT INTO oc_filter VALUES(10,2,0);
INSERT INTO oc_filter VALUES(4,2,1);
INSERT INTO oc_filter VALUES(1,1,1);
INSERT INTO oc_filter VALUES(2,1,2);
INSERT INTO oc_filter VALUES(3,1,3);
INSERT INTO oc_filter VALUES(5,2,2);
INSERT INTO oc_filter VALUES(6,2,3);



DROP TABLE IF EXISTS `oc_filter_description`;

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_filter_description VALUES(4,1,2,'Lettuce');
INSERT INTO oc_filter_description VALUES(5,7,2,'Herbs And Spices');
INSERT INTO oc_filter_description VALUES(5,1,2,'Herbs And Spices');
INSERT INTO oc_filter_description VALUES(6,7,2,'Greens');
INSERT INTO oc_filter_description VALUES(7,7,1,'Melons');
INSERT INTO oc_filter_description VALUES(7,1,1,'Melons');
INSERT INTO oc_filter_description VALUES(1,7,1,'Berries');
INSERT INTO oc_filter_description VALUES(1,1,1,'Berries');
INSERT INTO oc_filter_description VALUES(2,7,1,'Stone Fruit');
INSERT INTO oc_filter_description VALUES(6,1,2,'Greens');
INSERT INTO oc_filter_description VALUES(2,1,1,'Stone Fruit');
INSERT INTO oc_filter_description VALUES(3,7,1,'Citrus');
INSERT INTO oc_filter_description VALUES(3,1,1,'Citrus');
INSERT INTO oc_filter_description VALUES(4,7,2,'Lettuce');
INSERT INTO oc_filter_description VALUES(10,1,2,'Radish');
INSERT INTO oc_filter_description VALUES(10,7,2,'Radish');



DROP TABLE IF EXISTS `oc_filter_group`;

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO oc_filter_group VALUES(1,1);
INSERT INTO oc_filter_group VALUES(2,2);



DROP TABLE IF EXISTS `oc_filter_group_description`;

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_filter_group_description VALUES(1,1,'Fruit');
INSERT INTO oc_filter_group_description VALUES(2,1,'Vegetable');
INSERT INTO oc_filter_group_description VALUES(1,7,'Fruit');
INSERT INTO oc_filter_group_description VALUES(2,7,'Vegetable');



DROP TABLE IF EXISTS `oc_geo_zone`;

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO oc_geo_zone VALUES(3,'UK VAT Zone','UK VAT','2009-01-06 23:26:25','2010-02-26 22:33:24');
INSERT INTO oc_geo_zone VALUES(4,'UK Shipping','UK Shipping Zones','2009-06-23 01:14:53','2010-12-15 15:18:13');



DROP TABLE IF EXISTS `oc_information`;

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO oc_information VALUES(3,1,3,1);
INSERT INTO oc_information VALUES(4,1,1,1);
INSERT INTO oc_information VALUES(5,1,4,1);
INSERT INTO oc_information VALUES(6,1,2,1);



DROP TABLE IF EXISTS `oc_information_description`;

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_information_description VALUES(5,4,'Terms &amp; Conditions','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n','Terms &amp; Conditions','','');
INSERT INTO oc_information_description VALUES(5,1,'Terms &amp; Conditions','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n','Terms &amp; Conditions','','');
INSERT INTO oc_information_description VALUES(3,1,'Privacy Policy','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n','Privacy Policy','','');
INSERT INTO oc_information_description VALUES(6,1,'Delivery Information','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n','Delivery Information','','');
INSERT INTO oc_information_description VALUES(3,4,'Privacy Policy','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n','Privacy Policy','','');
INSERT INTO oc_information_description VALUES(6,4,'Delivery Information','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n','Delivery Information','','');
INSERT INTO oc_information_description VALUES(4,1,'About Us','&lt;h1&gt;About Us&lt;/h1&gt;\r\n &lt;h2&gt;Welcome to T90&lt;/h2&gt;\r\n&lt;p&gt;\r\nWe aim to offer our customers a variety of the latest Watches. We?ve come a long way, so we know exactly which direction to take when supplying you with high quality yet budget friendly products. We offer all of this while providing excellent customer service and friendly support.&lt;/p&gt;\r\n&lt;p&gt;\r\nWe always keep an eye on the latest trends in Sneaker and put our customers? wishes first. That is why we have satisfied customers all over the world, and are thrilled to be a part of the Sneaker industry.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nThe interests of our customers are always the top priority for us, so we hope you will enjoy our products as much as we enjoy making them available to you.\r\n&lt;/p&gt;\r\n\r\n&lt;h4&gt;What is an About Us Page?&lt;/h4&gt;\r\n&lt;p&gt;\r\nAn About Us Page is a page on your website that tells your readers all about you. It includes a detailed description covering all aspects of your business and you as entrepreneurs. This includes the products or services you are offering, how you came into being as a business, your mission and vision, your aim, and maybe something about your future goals too. Your ?About Us? page is your perfect opportunity to tell a compelling story about yourself and your business.\r\n&lt;/p&gt;\r\n\r\n&lt;h4&gt;About Us Page: What Should an About Us Page Include?&lt;/h4&gt;\r\n&lt;p&gt;\r\nIt is important not to overlook the marketing potential that lies within the content of your website?s About Us page. The About Us page plays a large part in the impression you leave on a visitor to your website. It is your chance to make the best out of this opportunity and present yourself and your brand in the best possible way. This is where people come to learn more about your brand and the people behind it. There?s also a high chance that your About Us page will be your most frequently viewed page. You need to make sure that the information you add on the About Us page accurately represents who you are as a brand. That?s why we?ve included a list that you can go through to make sure you haven?t missed anything crucial.\r\n&lt;/p&gt;\r\n&lt;ol style=&quot;list-style-type: decimal;padding-left:30px;&quot;&gt;\r\n &lt;li&gt;&lt;h5&gt;Vision and Mission&lt;/h5&gt;\r\n&lt;p&gt;\r\n Start your About Us page by telling your customers about yourself. What is unique about you, what are your key features and what is your mission? &lt;span style=&quot;font-weight: 400;&quot;&gt;Try to stand out by conveying your values and culture as a brand, or what brought your company together. Use this area to fully answer the question of who you are as a brand, and what you represent. This does not means that it has to be overly lengthy, but you can nonetheless use this space to communicate yourself in the way you are comfortable with, with your audience.&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;\r\n&lt;p&gt;&lt;/p&gt;\r\n&lt;li&gt;&lt;h5&gt;Your History&lt;/h5&gt;\r\n&lt;p&gt;\r\n Take the visitors on your website to a trip down memory lane, and give them an insight to the history behind your store. Here, you can show them where, how, and when you started, and everything your business has accomplished on the way. This is you chance to share your relevant milestones and achievements relating to your business in an engaging way. You can even choose to present your history to your viewers in the form of a timeline, which allows you to display a large amount of information in a visually engaging manner. Your customers or potential customers might be interested in seeing how you grew over the years.&lt;/p&gt;&lt;/li&gt;\r\n&lt;p&gt;&lt;/p&gt;\r\n&lt;li&gt;&lt;h5&gt;Team Member Profiles&lt;/h5&gt;\r\n&lt;p&gt;\r\n Add an emotional element to your About Us page by adding details of the people that are driving the passion at your business. People find it easier to connect with human beings, so allow the personality of your crew to shine through the About Us page.\r\n&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;&lt;h5&gt;Multimedia &amp;amp; Infographics&lt;/h5&gt;\r\n&lt;p&gt;A well-built infographic might help visitors remember about you or your business better than any amount of words. So if you think it works better for your brand or business, skip the lengthy description, or add a well-designed graphic that can help your visitors understand your concept. Or maybe you would like to add a cool video about how your business was created, or about your story and let it speak for itself.\r\n&lt;/p&gt;&lt;/li&gt;\r\n&lt;/ol&gt;','About Us','','');
INSERT INTO oc_information_description VALUES(5,7,'Terms &amp; Conditions','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n','Terms &amp; Conditions','','');
INSERT INTO oc_information_description VALUES(3,7,'Privacy Policy','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n','Privacy Policy','','');
INSERT INTO oc_information_description VALUES(6,7,'Delivery Information','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n','Delivery Information','','');
INSERT INTO oc_information_description VALUES(4,7,'About Us','&lt;h1&gt;About Us&lt;/h1&gt;\r\n &lt;h2&gt;Welcome to T90&lt;/h2&gt;\r\n&lt;p&gt;\r\nWe aim to offer our customers a variety of the latest Watches. We?ve come a long way, so we know exactly which direction to take when supplying you with high quality yet budget friendly products. We offer all of this while providing excellent customer service and friendly support.&lt;/p&gt;\r\n&lt;p&gt;\r\nWe always keep an eye on the latest trends in Sneaker and put our customers? wishes first. That is why we have satisfied customers all over the world, and are thrilled to be a part of the Sneaker industry.\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nThe interests of our customers are always the top priority for us, so we hope you will enjoy our products as much as we enjoy making them available to you.\r\n&lt;/p&gt;\r\n\r\n&lt;h4&gt;What is an About Us Page?&lt;/h4&gt;\r\n&lt;p&gt;\r\nAn About Us Page is a page on your website that tells your readers all about you. It includes a detailed description covering all aspects of your business and you as entrepreneurs. This includes the products or services you are offering, how you came into being as a business, your mission and vision, your aim, and maybe something about your future goals too. Your ?About Us? page is your perfect opportunity to tell a compelling story about yourself and your business.\r\n&lt;/p&gt;\r\n\r\n&lt;h4&gt;About Us Page: What Should an About Us Page Include?&lt;/h4&gt;\r\n&lt;p&gt;\r\nIt is important not to overlook the marketing potential that lies within the content of your website?s About Us page. The About Us page plays a large part in the impression you leave on a visitor to your website. It is your chance to make the best out of this opportunity and present yourself and your brand in the best possible way. This is where people come to learn more about your brand and the people behind it. There?s also a high chance that your About Us page will be your most frequently viewed page. You need to make sure that the information you add on the About Us page accurately represents who you are as a brand. That?s why we?ve included a list that you can go through to make sure you haven?t missed anything crucial.\r\n&lt;/p&gt;\r\n&lt;ol style=&quot;list-style-type: decimal;padding-left:30px;&quot;&gt;\r\n &lt;li&gt;&lt;h5&gt;Vision and Mission&lt;/h5&gt;\r\n&lt;p&gt;\r\n Start your About Us page by telling your customers about yourself. What is unique about you, what are your key features and what is your mission? &lt;span style=&quot;font-weight: 400;&quot;&gt;Try to stand out by conveying your values and culture as a brand, or what brought your company together. Use this area to fully answer the question of who you are as a brand, and what you represent. This does not means that it has to be overly lengthy, but you can nonetheless use this space to communicate yourself in the way you are comfortable with, with your audience.&lt;/span&gt;&lt;/p&gt;&lt;/li&gt;\r\n&lt;p&gt;&lt;/p&gt;\r\n&lt;li&gt;&lt;h5&gt;Your History&lt;/h5&gt;\r\n&lt;p&gt;\r\n Take the visitors on your website to a trip down memory lane, and give them an insight to the history behind your store. Here, you can show them where, how, and when you started, and everything your business has accomplished on the way. This is you chance to share your relevant milestones and achievements relating to your business in an engaging way. You can even choose to present your history to your viewers in the form of a timeline, which allows you to display a large amount of information in a visually engaging manner. Your customers or potential customers might be interested in seeing how you grew over the years.&lt;/p&gt;&lt;/li&gt;\r\n&lt;p&gt;&lt;/p&gt;\r\n&lt;li&gt;&lt;h5&gt;Team Member Profiles&lt;/h5&gt;\r\n&lt;p&gt;\r\n Add an emotional element to your About Us page by adding details of the people that are driving the passion at your business. People find it easier to connect with human beings, so allow the personality of your crew to shine through the About Us page.\r\n&lt;/p&gt;\r\n&lt;/li&gt;\r\n&lt;li&gt;&lt;h5&gt;Multimedia &amp;amp; Infographics&lt;/h5&gt;\r\n&lt;p&gt;A well-built infographic might help visitors remember about you or your business better than any amount of words. So if you think it works better for your brand or business, skip the lengthy description, or add a well-designed graphic that can help your visitors understand your concept. Or maybe you would like to add a cool video about how your business was created, or about your story and let it speak for itself.\r\n&lt;/p&gt;&lt;/li&gt;\r\n&lt;/ol&gt;','About Us','','');



DROP TABLE IF EXISTS `oc_information_to_layout`;

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`),
  KEY `layout_id` (`layout_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_information_to_layout VALUES(4,0,0);



DROP TABLE IF EXISTS `oc_information_to_store`;

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_information_to_store VALUES(3,0);
INSERT INTO oc_information_to_store VALUES(4,0);
INSERT INTO oc_information_to_store VALUES(5,0);
INSERT INTO oc_information_to_store VALUES(6,0);



DROP TABLE IF EXISTS `oc_language`;

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`),
  KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO oc_language VALUES(1,'English','en-gb','en-US,en_US.UTF-8,en_US,en-gb,english','gb.png','english',1,1);
INSERT INTO oc_language VALUES(7,'arbic','ar','ar','','',2,1);



DROP TABLE IF EXISTS `oc_layout`;

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO oc_layout VALUES(1,'Home');
INSERT INTO oc_layout VALUES(2,'Product');
INSERT INTO oc_layout VALUES(3,'Category');
INSERT INTO oc_layout VALUES(4,'Default');
INSERT INTO oc_layout VALUES(5,'Manufacturer');
INSERT INTO oc_layout VALUES(6,'Account');
INSERT INTO oc_layout VALUES(7,'Checkout');
INSERT INTO oc_layout VALUES(8,'Contact');
INSERT INTO oc_layout VALUES(9,'Sitemap');
INSERT INTO oc_layout VALUES(10,'Affiliate');
INSERT INTO oc_layout VALUES(11,'Information');
INSERT INTO oc_layout VALUES(12,'Compare');
INSERT INTO oc_layout VALUES(13,'Search');



DROP TABLE IF EXISTS `oc_layout_module`;

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`),
  KEY `layout_id` (`layout_id`),
  KEY `code` (`code`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=711 DEFAULT CHARSET=utf8;

INSERT INTO oc_layout_module VALUES(400,3,'tntleftrightproduct.68','column_left',3);
INSERT INTO oc_layout_module VALUES(433,11,'tntlefttestimonial.67','column_left',2);
INSERT INTO oc_layout_module VALUES(432,11,'banner.31','column_left',1);
INSERT INTO oc_layout_module VALUES(431,11,'category','column_left',0);
INSERT INTO oc_layout_module VALUES(284,12,'category','column_left',0);
INSERT INTO oc_layout_module VALUES(398,3,'tntlefttestimonial.67','column_left',1);
INSERT INTO oc_layout_module VALUES(399,3,'banner.31','column_left',2);
INSERT INTO oc_layout_module VALUES(708,1,'tntblog.83','content_top',9);
INSERT INTO oc_layout_module VALUES(709,1,'tntnewsletter.66','content_top',10);
INSERT INTO oc_layout_module VALUES(705,1,'special.61','content_top',6);
INSERT INTO oc_layout_module VALUES(706,1,'tnttestimonial.49','content_top',7);
INSERT INTO oc_layout_module VALUES(707,1,'tntbrandlist.87','content_top',8);
INSERT INTO oc_layout_module VALUES(397,3,'category','column_left',0);
INSERT INTO oc_layout_module VALUES(401,3,'filter','column_left',4);
INSERT INTO oc_layout_module VALUES(426,13,'information','column_left',2);
INSERT INTO oc_layout_module VALUES(425,13,'tntlefttestimonial.67','column_left',1);
INSERT INTO oc_layout_module VALUES(424,13,'banner.31','column_left',0);
INSERT INTO oc_layout_module VALUES(704,1,'tntcategoryslider.70','content_top',5);
INSERT INTO oc_layout_module VALUES(703,1,'tnttabproduct.43','content_top',4);
INSERT INTO oc_layout_module VALUES(701,1,'tntcustomerservices.62','content_top',2);
INSERT INTO oc_layout_module VALUES(702,1,'tntofferbanner.81','content_top',3);
INSERT INTO oc_layout_module VALUES(700,1,'tntbanners.72','content_top',1);
INSERT INTO oc_layout_module VALUES(699,1,'tntslider.40','content_top',0);
INSERT INTO oc_layout_module VALUES(710,1,'tntnewsletterpopup.64','content_top',11);



DROP TABLE IF EXISTS `oc_layout_route`;

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`),
  KEY `layout_id` (`layout_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;

INSERT INTO oc_layout_route VALUES(168,6,0,'account/%');
INSERT INTO oc_layout_route VALUES(142,10,0,'affiliate/%');
INSERT INTO oc_layout_route VALUES(118,3,0,'product/category');
INSERT INTO oc_layout_route VALUES(20,2,0,'product/product');
INSERT INTO oc_layout_route VALUES(134,11,0,'information/information');
INSERT INTO oc_layout_route VALUES(143,7,0,'checkout/%');
INSERT INTO oc_layout_route VALUES(31,8,0,'information/contact');
INSERT INTO oc_layout_route VALUES(32,9,0,'information/sitemap');
INSERT INTO oc_layout_route VALUES(144,4,0,'');
INSERT INTO oc_layout_route VALUES(140,5,0,'product/manufacturer');
INSERT INTO oc_layout_route VALUES(86,12,0,'product/compare');
INSERT INTO oc_layout_route VALUES(128,13,0,'product/search');
INSERT INTO oc_layout_route VALUES(174,1,0,'common/home');



DROP TABLE IF EXISTS `oc_length_class`;

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO oc_length_class VALUES(1,1.00000000);
INSERT INTO oc_length_class VALUES(2,10.00000000);
INSERT INTO oc_length_class VALUES(3,0.39370000);



DROP TABLE IF EXISTS `oc_length_class_description`;

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_length_class_description VALUES(1,1,'Centimeter','cm');
INSERT INTO oc_length_class_description VALUES(2,1,'Millimeter','mm');
INSERT INTO oc_length_class_description VALUES(3,1,'Inch','in');
INSERT INTO oc_length_class_description VALUES(1,4,'Centimeter','cm');
INSERT INTO oc_length_class_description VALUES(2,4,'Millimeter','mm');
INSERT INTO oc_length_class_description VALUES(3,4,'Inch','in');
INSERT INTO oc_length_class_description VALUES(1,7,'Centimeter','cm');
INSERT INTO oc_length_class_description VALUES(2,7,'Millimeter','mm');
INSERT INTO oc_length_class_description VALUES(3,7,'Inch','in');



DROP TABLE IF EXISTS `oc_location`;

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_manufacturer`;

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO oc_manufacturer VALUES(5,'Puma','catalog/demo/htc_logo.jpg',0);
INSERT INTO oc_manufacturer VALUES(6,'U.S. Polo Assn.','catalog/demo/palm_logo.jpg',0);
INSERT INTO oc_manufacturer VALUES(7,'Fila','catalog/demo/hp_logo.jpg',0);
INSERT INTO oc_manufacturer VALUES(8,'Rebook','catalog/demo/apple_logo.jpg',0);
INSERT INTO oc_manufacturer VALUES(9,'Zara','catalog/demo/canon_logo.jpg',0);
INSERT INTO oc_manufacturer VALUES(10,'Levi\'s','catalog/demo/sony_logo.jpg',0);



DROP TABLE IF EXISTS `oc_manufacturer_to_store`;

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_manufacturer_to_store VALUES(5,0);
INSERT INTO oc_manufacturer_to_store VALUES(6,0);
INSERT INTO oc_manufacturer_to_store VALUES(7,0);
INSERT INTO oc_manufacturer_to_store VALUES(8,0);
INSERT INTO oc_manufacturer_to_store VALUES(9,0);
INSERT INTO oc_manufacturer_to_store VALUES(10,0);



DROP TABLE IF EXISTS `oc_marketing`;

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`),
  KEY `name` (`name`),
  KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_megamenu`;

CREATE TABLE `oc_megamenu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `menu_type` varchar(255) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO oc_megamenu VALUES(1,1,'horizontal','horizontal');



DROP TABLE IF EXISTS `oc_megamenu_sub_item`;

CREATE TABLE `oc_megamenu_sub_item` (
  `sub_menu_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_menu_item_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sub_menu_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_megamenu_sub_item_description`;

CREATE TABLE `oc_megamenu_sub_item_description` (
  `sub_menu_item_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`sub_menu_item_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_megamenu_top_item`;

CREATE TABLE `oc_megamenu_top_item` (
  `menu_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `has_title` tinyint(1) NOT NULL DEFAULT '0',
  `has_link` tinyint(1) NOT NULL DEFAULT '0',
  `has_child` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `item_align` varchar(255) NOT NULL,
  `sub_menu_type` varchar(255) NOT NULL,
  `sub_menu_content_type` varchar(255) NOT NULL,
  `sub_menu_content_columns` int(11) DEFAULT NULL,
  `sub_menu_content` text,
  PRIMARY KEY (`menu_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO oc_megamenu_top_item VALUES(1,1,1,1,1,0,0,0,'home','#','','left','mega','widget',1,'[]');
INSERT INTO oc_megamenu_top_item VALUES(2,1,1,1,1,1,0,0,'Flowers','#','','left','mega','widget',1,'{\"widget\":[{\"name\":\"Aconite\",\"category_id\":\"33\",\"show_image\":\"0\",\"show_child\":\"0\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"0\"},{\"name\":\"Balloon Flower\",\"category_id\":\"25\",\"show_image\":\"0\",\"show_child\":\"1\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"1\"},{\"name\":\"Caladium\",\"category_id\":\"20\",\"show_image\":\"0\",\"show_child\":\"0\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"2\"},{\"name\":\"Daffodil\",\"category_id\":\"18\",\"show_image\":\"0\",\"show_child\":\"1\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"3\"},{\"name\":{\"1\":\"\"},\"content\":{\"1\":\"&lt;p&gt;&lt;img src=&quot;http:\\/\\/192.168.0.108\\/opc\\/flower_floralle_101\\/image\\/catalog\\/themefactory\\/categorybanner\\/1.jpg&quot; style=&quot;width: 804px;&quot;&gt;&lt;br&gt;&lt;\\/p&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"6\",\"position\":\"4\"},{\"name\":{\"1\":\"\"},\"content\":{\"1\":\"&lt;p&gt;&lt;img src=&quot;http:\\/\\/192.168.0.108\\/opc\\/flower_floralle_101\\/image\\/catalog\\/themefactory\\/categorybanner\\/1.jpg&quot; style=&quot;width: 365px;&quot;&gt;&lt;img src=&quot;http:\\/\\/192.168.0.108\\/opc\\/flower_floralle_101\\/image\\/catalog\\/themefactory\\/categorybanner\\/1.jpg&quot; style=&quot;width: 365px;&quot;&gt;&lt;img src=&quot;http:\\/\\/192.168.0.108\\/opc\\/flower_floralle_101\\/image\\/catalog\\/themefactory\\/categorybanner\\/1.jpg&quot; style=&quot;width: 365px;&quot;&gt;&lt;br&gt;&lt;\\/p&gt;\"},\"type\":\"html\",\"cols\":\"6\",\"position\":\"5\",\"show_title\":\"1\"}]}');
INSERT INTO oc_megamenu_top_item VALUES(3,1,1,1,1,1,0,0,'Yellow','#','','left','flyout','widget',1,'{\"widget\":[{\"name\":\"Epimedium\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"0\",\"category_id\":\"24\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Gaillardia\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"1\",\"category_id\":\"17\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Heliotrope\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"2\",\"category_id\":\"78\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Impatiens\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"3\",\"category_id\":\"83\",\"show_image\":\"0\",\"show_child\":\"1\"}]}');
INSERT INTO oc_megamenu_top_item VALUES(4,1,1,1,1,1,0,0,'Red','#','','left','mega','widget',1,'{\"widget\":[{\"name\":\"Apple Cinema 30&quot;\",\"type\":\"product\",\"cols\":\"3\",\"position\":\"0\",\"product_id\":\"42\",\"show_image\":\"1\"},{\"name\":\"Canon EOS 5D\",\"type\":\"product\",\"cols\":\"3\",\"position\":\"1\",\"product_id\":\"30\",\"show_image\":\"0\"},{\"name\":\"HP LP3065\",\"type\":\"product\",\"cols\":\"3\",\"position\":\"2\",\"product_id\":\"47\",\"show_image\":\"1\"},{\"name\":\"HTC Touch HD\",\"type\":\"product\",\"cols\":\"3\",\"position\":\"3\",\"product_id\":\"28\",\"show_image\":\"0\"},{\"name\":\"iMac\",\"type\":\"product\",\"cols\":\"3\",\"position\":\"4\",\"product_id\":\"41\",\"show_image\":\"1\"},{\"name\":\"iPhone\",\"type\":\"product\",\"cols\":\"3\",\"position\":\"5\",\"product_id\":\"40\",\"show_image\":\"0\"},{\"name\":\"iPod Classic\",\"type\":\"product\",\"cols\":\"3\",\"position\":\"6\",\"product_id\":\"48\",\"show_image\":\"1\"},{\"name\":\"MacBook\",\"type\":\"product\",\"cols\":\"3\",\"position\":\"7\",\"product_id\":\"43\",\"show_image\":\"1\"}]}');
INSERT INTO oc_megamenu_top_item VALUES(5,1,1,1,1,1,25,0,'Blue','index.php?route=product/category&amp;path=25','','left','mega','widget',1,'{\"widget\":[{\"name\":\"Aconite\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"0\",\"category_id\":\"33\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Impatiens\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"1\",\"category_id\":\"83\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Apple Cinema 30&quot;\",\"type\":\"product\",\"cols\":\"3\",\"position\":\"2\",\"product_id\":\"42\",\"show_image\":\"1\"},{\"name\":{\"1\":\"\"},\"content\":{\"1\":\"&lt;p&gt;new&lt;\\/p&gt;\"},\"type\":\"html\",\"cols\":\"3\",\"position\":\"3\",\"show_title\":\"1\"}]}');
INSERT INTO oc_megamenu_top_item VALUES(6,1,1,1,1,1,0,0,'Red',3,'','left','mega','widget',1,'{\"widget\":[{\"name\":\"Gaillardia\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"0\",\"category_id\":\"17\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Epimedium\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"1\",\"category_id\":\"24\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":{\"1\":\"\"},\"content\":{\"1\":\"\"},\"type\":\"html\",\"cols\":\"3\",\"position\":\"2\",\"show_title\":\"1\"},{\"name\":{\"1\":\"\"},\"content\":{\"1\":\"\"},\"type\":\"html\",\"cols\":\"3\",\"position\":\"3\",\"show_title\":\"1\"}]}');



DROP TABLE IF EXISTS `oc_megamenu_top_item_description`;

CREATE TABLE `oc_megamenu_top_item_description` (
  `menu_item_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`menu_item_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO oc_megamenu_top_item_description VALUES(1,1,'home');
INSERT INTO oc_megamenu_top_item_description VALUES(2,1,'Flowers');
INSERT INTO oc_megamenu_top_item_description VALUES(3,1,'Yellow');
INSERT INTO oc_megamenu_top_item_description VALUES(4,1,'Red');
INSERT INTO oc_megamenu_top_item_description VALUES(5,1,'Blue');
INSERT INTO oc_megamenu_top_item_description VALUES(6,1,'Red');



DROP TABLE IF EXISTS `oc_modification`;

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`),
  KEY `name` (`name`),
  KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO oc_modification VALUES(14,17,'theme setting','themesetting','Theme',1.18,'','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n    <code>themesetting</code>\r\n    <name>theme setting</name>\r\n    <version>1.18</version>\r\n    <author>Theme</author>\r\n\r\n    <file path=\"admin/controller/marketplace/extension.php\">\r\n        <operation>\r\n            <search><![CDATA[$this->load->controller(\'common/footer\');]]></search>\r\n            <add position=\"after\"><![CDATA[ $curl = curl_init(\"https://deluxeinfotech.com/themes/opencart/demo_opencart/index.php?route=common/btnoffer\");\r\n\r\n        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0);\r\n        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);\r\n        curl_setopt($curl, CURLOPT_FORBID_REUSE, 1);\r\n        curl_setopt($curl, CURLOPT_FRESH_CONNECT, 1);\r\n        curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1);\r\n        $data[\'offerhtml\'] = curl_exec($curl);]]></add>\r\n        </operation>      \r\n    </file>\r\n    <file path=\"admin/view/template/marketplace/extension.twig\">\r\n        <operation>\r\n            <search><![CDATA[<div class=\"panel panel-default\">]]></search>\r\n            <add position=\"before\"><![CDATA[<div class=\"panel panel-default\">\r\n        <fieldset>\r\n                {{ offerhtml }}\r\n        </fieldset>\r\n      </div>]]></add>\r\n        </operation>      \r\n    </file> \r\n  \r\n \r\n       \r\n    <file path=\"admin/language/en-gb/common/column_left.php\">\r\n        <operation>\r\n            <search><![CDATA[$_[\'text_other_status\']         = \'Other Statuses\';]]></search>\r\n            <add position=\"after\"><![CDATA[$_[\'text_tnt\'] = \'TNT Extension\';]]></add>\r\n        </operation>      \r\n    </file>   \r\n    <file path=\"admin/model/catalog/category.php\">\r\n        <operation>\r\n            <search><![CDATA[public function getCategories($data = array()) {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                    public function getcustomcategories($data = array()) {\r\n                        $sql = \"SELECT cp.category_id AS category_id, GROUP_CONCAT(cd1.name ORDER BY cp.level SEPARATOR \'&nbsp;&nbsp;&gt;&nbsp;&nbsp;\') AS name, c1.parent_id, c1.sort_order FROM \" . DB_PREFIX . \"category_path cp LEFT JOIN \" . DB_PREFIX . \"category c1 ON (cp.category_id = c1.category_id) LEFT JOIN \" . DB_PREFIX . \"category c2 ON (cp.path_id = c2.category_id) LEFT JOIN \" . DB_PREFIX . \"category_description cd1 ON (cp.path_id = cd1.category_id) LEFT JOIN \" . DB_PREFIX . \"category_description cd2 ON (cp.category_id = cd2.category_id) WHERE cd1.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\' AND cd2.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\' AND c1.parent_id = \'0\'\";\r\n\r\n                        if (!empty($data[\'filter_name\'])) {\r\n                            $sql .= \" AND cd2.name LIKE \'%\" . $this->db->escape($data[\'filter_name\']) . \"%\'\";\r\n                        }\r\n\r\n                        $sql .= \" GROUP BY cp.category_id\";\r\n\r\n                        $sort_data = array(\r\n                            \'name\',\r\n                            \'sort_order\'\r\n                        );\r\n\r\n                        if (isset($data[\'sort\']) && in_array($data[\'sort\'], $sort_data)) {\r\n                            $sql .= \" ORDER BY \" . $data[\'sort\'];\r\n                        } else {\r\n                            $sql .= \" ORDER BY sort_order\";\r\n                        }\r\n\r\n                        if (isset($data[\'order\']) && ($data[\'order\'] == \'DESC\')) {\r\n                            $sql .= \" DESC\";\r\n                        } else {\r\n                            $sql .= \" ASC\";\r\n                        }\r\n\r\n                        if (isset($data[\'start\']) || isset($data[\'limit\'])) {\r\n                            if ($data[\'start\'] < 0) {\r\n                                $data[\'start\'] = 0;\r\n                            }\r\n\r\n                            if ($data[\'limit\'] < 1) {\r\n                                $data[\'limit\'] = 20;\r\n                            }\r\n\r\n                            $sql .= \" LIMIT \" . (int)$data[\'start\'] . \",\" . (int)$data[\'limit\'];\r\n                        }\r\n\r\n                        $query = $this->db->query($sql);\r\n\r\n                        return $query->rows;\r\n                    }\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/controller/common/header.php\">\r\n        <operation>\r\n            <search><![CDATA[$data[\'base\'] = $server;]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                $data[\'callno\'] = $this->config->get(\'config_telephone\');\r\n                $data[\'email\'] = $this->config->get(\'config_email\');\r\n                $data[\'contactus\'] = \"Contact us\";\r\n                $data[\'callnotext\'] = \"QUESTIONS? CALL :\";\r\n            \r\n                if (!isset($this->request->get[\'route\']) || $this->request->get[\'route\'] == \'common/home\'){\r\n                    $data[\'page\'] = \"home\";\r\n                    }else{\r\n                        $data[\'page\'] = \"not\";\r\n                    }\r\n                        if(empty($_SERVER[\'QUERY_STRING\']) || $_SERVER[\'QUERY_STRING\'] == \"route=common/home\"){\r\n                    $data[\'badclassname\'] = \"badindex\";\r\n                }else{\r\n                    $data[\'badclassname\'] = \"\";\r\n                }\r\n                    $data[\'loaderimage\'] = HTTP_SERVER .\"image/catalog/themefactory/loader/3.gif\";\r\n                    $data[\'loadingimage\'] = HTTPS_SERVER.\"/image/catalog/themefactory/loader/loader.gif\";\r\n                       \r\n                       /*$data[\'themeoption\'] = $this->load->controller(\'common/tntthemeoption\');*/\r\n            if(empty($_SERVER[\'QUERY_STRING\']) || $_SERVER[\'QUERY_STRING\'] == \"route=common/home\"){\r\n                $data[\'badclassname\'] = \"badindex\";\r\n            }else{\r\n                $data[\'badclassname\'] = \"\";\r\n            }\r\n                \r\n            ]]></add>\r\n        </operation> \r\n    </file>\r\n    <file path=\"admin/controller/common/column_left.php\">\r\n        <operation>\r\n            <search><![CDATA[$this->load->model(\'report/statistics\')]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                $tnt = array();\r\n                $this->load->model(\'tnt/tntslider\');\r\n                $module_name = $this->model_tnt_tntslider->getmodulename();\r\n                $tnt[] = array(\r\n                    \'name\'     => \"Theme Setting\",\r\n                    \'href\'     => $this->url->link(\'extension/module/tntthemesetting\',\'user_token=\' . $this->session->data[\'user_token\'], true),\r\n                    \'children\' => array()       \r\n                );\r\n                foreach ($module_name as $key => $value) {\r\n                    if ($this->user->hasPermission(\'access\', \'report/report\')) {\r\n                        $tnt[] = array(\r\n                            \'name\'     => $value[\'name\'],\r\n                            \'href\'     => $this->url->link(\'extension/module/\'.$value[\'code\'].\'\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&module_id=\' . $value[\'module_id\'], true),\r\n                            \'children\' => array()       \r\n                        );\r\n                    }\r\n                }\r\n                $data[\'menus\'][] = array(\r\n                    \'id\'       => \'menu-tnt\',\r\n                    \'icon\'     => \'fa-television\',\r\n                    \'name\'     => $this->language->get(\'text_tnt\'),\r\n                    \'href\'     => \'\',\r\n                    \'children\' => $tnt\r\n                );\r\n            ]]></add>\r\n        </operation>      \r\n    </file>\r\n    <file path=\"catalog/controller/checkout/cart.php\"> \r\n        <operation>\r\n            <search><![CDATA[if (!$json) {]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                $this->load->model(\'tool/image\');\r\n                $json[\'price\'] = $this->currency->format($this->tax->calculate($product_info[\'price\'], $product_info[\'tax_class_id\'], $this->config->get(\'config_tax\')), $this->session->data[\'currency\']);\r\n                $json[\'special\'] = $this->currency->format($this->tax->calculate($product_info[\'special\'], $product_info[\'tax_class_id\'], $this->config->get(\'config_tax\')), $this->session->data[\'currency\']);\r\n\r\n                $json[\'link\'] =  $this->url->link(\'product/product\', \'product_id=\' . $product_info[\'product_id\']);\r\n                $json[\'cartlink\'] =  $this->url->link(\'checkout/cart\', \'product_id=\' . $product_info[\'product_id\']);\r\n\r\n                $json[\'name\'] = $product_info[\'name\'];\r\n                $width  = $this->config->get(\'tntthemesetting_popupcart_width\');\r\n                $height = $this->config->get(\'tntthemesetting_popupcart_height\');\r\n                $json[\'image\'] = $this->model_tool_image->resize($product_info[\'image\'], $width, $height);\r\n\r\n            ]]></add>\r\n        </operation>      \r\n    </file>\r\n    <file path=\"catalog/controller/common/cart.php\"> \r\n        <operation>\r\n            <search><![CDATA[$data[\'text_items\']]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                $data[\'text_badtotal\'] = $this->cart->countProducts();\r\n            ]]></add>\r\n        </operation>      \r\n    </file>\r\n    <file path=\"catalog/controller/common/footer.php\">\r\n        <operation>\r\n            <search><![CDATA[// Whos Online]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n\r\n            \r\n            $language_id            = $this->config->get(\'config_language_id\');\r\n            $data[\'storeemail\']     = $this->config->get(\'config_email\');\r\n            $data[\'storetelephone\'] = $this->config->get(\'config_telephone\');\r\n            $data[\'storeaddress\']   = nl2br($this->config->get(\'config_address\'));\r\n            $sqlquery               = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"country WHERE country_id              = \'\" . $this->config->get(\'config_country_id\') . \"\' \");\r\n            $data[\'countriesname\']  = $sqlquery->row[\'name\'];\r\n            $data[\'socialicon\']     = $this->load->controller(\'common/tntsocialicon\');\r\n            $data[\'payemtnicon\']    = $this->load->controller(\'common/tntpaymenticon\');\r\n            $data[\'footerlogo\']    = $this->load->controller(\'common/tntfooterlogo\');\r\n            \r\n            $data[\'copyright\']      = $this->config->get(\'tntthemesetting_footer\')[\'language\'][$language_id][\'copyrighttext\'];\r\n            $data[\'copyrightlink\']  = $this->config->get(\'tntthemesetting_footer\')[\'language\'][$language_id][\'copyrightlink\'];\r\n                    \r\n                   \r\n                    $data[\'newsletterdata\']       = $this->load->controller(\'common/tntnewsletter\');\r\n                    $data[\'blog\'] = $this->load->controller(\'common/tntblog\');\r\n                    \r\n                    $customtext             = $this->config->get(\'tntthemesetting_footer\')[\'language\'][$language_id];\r\n                    $data[\'copyright\']      = $customtext[\'copyrighttext\'];\r\n                    $data[\'copyrightlink\']  = $customtext[\'copyrightlink\'];\r\n               \r\n            ]]></add>\r\n        </operation>      \r\n    </file>\r\n  \r\n    <file path=\"catalog/controller/product/manufacturer.php\">\r\n        <operation>\r\n            <search><![CDATA[$this->load->model(\'tool/image\');]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                 $this->load->model(\'tnt/tntallquery\');\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[if ((float)$result[\'special\']) {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                $speciallabel        = \"\";\r\n                $date               = $this->model_tnt_tntallquery->getproductspecialdate($result[\'product_id\']);\r\n                $speciallabel       = $date;    \r\n                $dt                 = new DateTime();\r\n                $newdate            = $dt->format(\'Y-m-d H:i:s\');\r\n                $date1              = date_create($result[\'date_available\']);\r\n                $date2              = date_create($newdate);\r\n                $diff               = date_diff($date1,$date2);\r\n                $days               = $diff->days;\r\n                if($days < 20){\r\n                    $new = \"New\";\r\n                }else{\r\n                    $new = \"\";\r\n                }\r\n                if(!empty($speciallabel)){\r\n                    $salelebal = \"Sale\";\r\n                }else{\r\n                    $salelebal = \"\";\r\n                }\r\n\r\n                $hoverimage   = $this->model_catalog_product->getProductImages($result[\'product_id\']);\r\n                if(!empty(current($hoverimage))){\r\n                    $hoverimage = $this->model_tool_image->resize(current($hoverimage)[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_height\'));\r\n\r\n                }else{\r\n                    $hoverimage = $image;\r\n                }\r\n                $date = $this->model_tnt_tntallquery->getproductspecialdate($result[\'product_id\']);\r\n                        \r\n                if(isset($date[\'date_end\'])){\r\n                    $date_end = $date[\'date_end\'];\r\n                }else{\r\n                    $date_end = null;\r\n                }\r\n                ]]></add>\r\n        </operation>   \r\n         <operation>\r\n            <search><![CDATA[\'rating\'      => $result[\'rating\'],]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                \'hoverimage\'    => $hoverimage,\r\n                \'speciallabel\'  => $salelebal,\r\n                \'newlabel\'      => $new,\r\n                \'date_end\'      => $date_end,\r\n            ]]></add>\r\n        </operation>      \r\n    </file>\r\n    <file path=\"catalog/controller/product/category.php\">\r\n        <operation>\r\n            <search><![CDATA[$this->load->model(\'tool/image\');]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                 $this->load->model(\'tnt/tntallquery\');\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[if ((float)$result[\'special\']) {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                \r\n                $speciallabel    = \"\";\r\n                $date       = $this->model_tnt_tntallquery->getproductspecialdate($result[\'product_id\']);\r\n                $speciallabel    = $date;    \r\n                $dt         = new DateTime();\r\n                $newdate    = $dt->format(\'Y-m-d H:i:s\');\r\n                $date1      = date_create($result[\'date_available\']);\r\n                $date2      = date_create($newdate);\r\n                $diff       = date_diff($date1,$date2);\r\n                $days       = $diff->days;\r\n                if($days < 20){\r\n                    $new = \"New\";\r\n                }else{\r\n                    $new = \"\";\r\n                }\r\n                if(!empty($speciallabel)){\r\n                    $salelebal = \"Sale\";\r\n                }else{\r\n                    $salelebal = \"\";\r\n                }\r\n\r\n                $hoverimage   = $this->model_catalog_product->getProductImages($result[\'product_id\']);\r\n                if(!empty(current($hoverimage))){\r\n                    $hoverimage = $this->model_tool_image->resize(current($hoverimage)[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_height\'));\r\n\r\n                    \r\n                }else{\r\n                    $hoverimage = $image;\r\n                }\r\n\r\n                $date = $this->model_tnt_tntallquery->getproductspecialdate($result[\'product_id\']);\r\n                        \r\n                if(isset($date[\'date_end\'])){\r\n                    $date_end = $date[\'date_end\'];\r\n                }else{\r\n                    $date_end = null;\r\n                }\r\n            ]]></add>\r\n        </operation>   \r\n        <operation>\r\n            <search><![CDATA[\'rating\'      => $result[\'rating\'],]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                \'hoverimage\'    => $hoverimage,\r\n                \'speciallabel\'  => $salelebal,\r\n                \'newlabel\'      => $new,\r\n                \'date_end\'     => $date_end,\r\n            ]]></add>\r\n        </operation>      \r\n    </file>\r\n    <file path=\"catalog/controller/product/product.php\">\r\n        <operation>\r\n            <search><![CDATA[$this->load->model(\'tool/image\');]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                 $this->load->model(\'tnt/tntallquery\');\r\n                $data[\'megathumb\'] = $this->model_tool_image->resize($product_info[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_popup_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_popup_height\'));\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[if ((float)$result[\'special\']) {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n\r\n                $speciallabel       = \"\";\r\n                $date               = $this->model_tnt_tntallquery->getproductspecialdate($result[\'product_id\']);\r\n                $speciallabel       = $date;    \r\n                $dt                 = new DateTime();\r\n                $newdate            = $dt->format(\'Y-m-d H:i:s\');\r\n                $date1              = date_create($result[\'date_available\']);\r\n                $date2              = date_create($newdate);\r\n                $diff               = date_diff($date1,$date2);\r\n                $days               = $diff->days;\r\n                if($days < 20){\r\n                    $new = \"New\";\r\n                }else{\r\n                    $new = \"\";\r\n                }\r\n                if(!empty($speciallabel)){\r\n                    $salelebal = \"Sale\";\r\n                }else{\r\n                    $salelebal = \"\";\r\n                }\r\n\r\n                $hoverimage   = $this->model_catalog_product->getProductImages($result[\'product_id\']);\r\n                if(!empty(current($hoverimage))){\r\n                    $hoverimage = $this->model_tool_image->resize(current($hoverimage)[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_popup_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_popup_height\'));\r\n\r\n                    \r\n                }else{\r\n                    $hoverimage = $image;\r\n                }\r\n\r\n                $date = $this->model_tnt_tntallquery->getproductspecialdate($result[\'product_id\']);\r\n                        \r\n                if(isset($date[\'date_end\'])){\r\n                    $date_end = $date[\'date_end\'];\r\n                }else{\r\n                    $date_end = null;\r\n                }\r\n            ]]></add>\r\n        </operation>   \r\n        <operation>\r\n            <search><![CDATA[\'rating\'      => $rating,]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                \'hoverimage\'    => $hoverimage,\r\n                \'speciallabel\'  => $salelebal,\r\n                \'newlabel\'      => $new,\r\n                \'date_end\'     => $date_end,\r\n            ]]></add>\r\n        </operation>      \r\n    </file>\r\n    <file path=\"catalog/controller/product/search.php\">   \r\n        <operation>\r\n            <search><![CDATA[$this->load->model(\'tool/image\');]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                 $this->load->model(\'tnt/tntallquery\');\r\n            ]]></add>\r\n        </operation> \r\n        <operation>\r\n            <search><![CDATA[if ((float)$result[\'special\']) {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n\r\n                $speciallabel       = \"\";\r\n                $date               = $this->model_tnt_tntallquery->getproductspecialdate($result[\'product_id\']);\r\n                $speciallabel       = $date;    \r\n                $dt                 = new DateTime();\r\n                $newdate            = $dt->format(\'Y-m-d H:i:s\');\r\n                $date1              = date_create($result[\'date_available\']);\r\n                $date2              = date_create($newdate);\r\n                $diff               = date_diff($date1,$date2);\r\n                $days               = $diff->days;\r\n                if($days < 20){\r\n                    $new = \"New\";\r\n                }else{\r\n                    $new = \"\";\r\n                }\r\n                if(!empty($speciallabel)){\r\n                    $salelebal = \"Sale\";\r\n                }else{\r\n                    $salelebal = \"\";\r\n                }\r\n\r\n                $hoverimage   = $this->model_catalog_product->getProductImages($result[\'product_id\']);\r\n                if(!empty(current($hoverimage))){\r\n                     $hoverimage    = $this->model_tool_image->resize(current($hoverimage)[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_height\'));\r\n\r\n\r\n                }else{\r\n                    $hoverimage = $image;\r\n                }\r\n\r\n                $date = $this->model_tnt_tntallquery->getproductspecialdate($result[\'product_id\']);\r\n                        \r\n                if(isset($date[\'date_end\'])){\r\n                    $date_end = $date[\'date_end\'];\r\n                }else{\r\n                    $date_end = null;\r\n                }\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\'rating\'      => $result[\'rating\'],]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                \'hoverimage\'    => $hoverimage,\r\n                \'speciallabel\'  => $salelebal,\r\n                \'newlabel\'      => $new,\r\n                \'date_end\'     => $date_end,\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/controller/common/search.php\">   \r\n        <operation>\r\n            <search><![CDATA[public function index() {]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                 $data[\'loadingimage\'] = HTTPS_SERVER.\"/image/catalog/themefactory/loader/loader.gif\";\r\n            ]]></add>\r\n        </operation> \r\n    </file>\r\n\r\n    <file path=\"catalog/controller/extension/module/bestseller.php\">\r\n        <operation>\r\n            <search><![CDATA[$this->load->model(\'tool/image\');]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                 $this->load->model(\'tnt/tntallquery\');\r\n                 $name                       = \"tnttabproduct\";\r\n                $detail                     = $this->model_tnt_tntallquery->getcommonmoduledetail($name);\r\n                $commonmoduledetail         = json_decode($detail[\'setting\'],1);\r\n                $language_id                = $this->config->get(\'config_language_id\');\r\n                $text =                       $commonmoduledetail[\'productbest\'][\'parenttext\'][$language_id];\r\n                \r\n                $data[\'title\'] = $text[\'title\'];\r\n                $data[\'subtitle\'] = $text[\'subtitle\'];\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[if ($result[\'image\']) {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                $speciallabel    = \"\";\r\n                $date       = $this->model_tnt_tntallquery->getproductspecialdate($result[\'product_id\']);\r\n                $speciallabel    = $date;    \r\n                $dt         = new DateTime();\r\n                $newdate    = $dt->format(\'Y-m-d H:i:s\');\r\n                $date1      = date_create($result[\'date_available\']);\r\n                $date2      = date_create($newdate);\r\n                $diff       = date_diff($date1,$date2);\r\n                $days       = $diff->days;\r\n                if($days < 20){\r\n                    $new = \"New\";\r\n                }else{\r\n                    $new = \"\";\r\n                }\r\n                if(!empty($speciallabel)){\r\n                    $salelebal = \"Sale\";\r\n                }else{\r\n                    $salelebal = \"\";\r\n                }\r\n\r\n                $hoverimage   = $this->model_catalog_product->getProductImages($result[\'product_id\']);\r\n                if(!empty(current($hoverimage))){\r\n                    $hoverimage = $this->model_tool_image->resize(current($hoverimage)[\'image\'],$setting[\'width\'], $setting[\'height\']);\r\n\r\n                }else{\r\n                    $hoverimage = $image;\r\n                }\r\n                $date = $this->model_tnt_tntallquery->getproductspecialdate($result[\'product_id\']);\r\n                        \r\n                if(isset($date[\'date_end\'])){\r\n                    $date_end = $date[\'date_end\'];\r\n                }else{\r\n                    $date_end = null;\r\n                }\r\n            ]]></add>\r\n        </operation>   \r\n        <operation>\r\n            <search><![CDATA[\'thumb\'       => $image,]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                \'hoverimage\'    => $hoverimage,\r\n                \'speciallabel\'  => $salelebal,\r\n                \'newlabel\'      => $new,\r\n                \'date_end\'     => $date_end,\r\n            ]]></add>\r\n        </operation>     \r\n    </file>\r\n    <file path=\"catalog/controller/extension/module/featured.php\">\r\n        <operation>\r\n            <search><![CDATA[$this->load->model(\'tool/image\');]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                $this->load->model(\'tnt/tntallquery\');\r\n                $name                       = \"tnttabproduct\";\r\n                $detail                     = $this->model_tnt_tntallquery->getcommonmoduledetail($name);\r\n                $commonmoduledetail         = json_decode($detail[\'setting\'],1);\r\n                $language_id                = $this->config->get(\'config_language_id\');\r\n                $text =                       $commonmoduledetail[\'productfeature\'][\'parenttext\'][$language_id];\r\n                \r\n                $data[\'title\'] = $text[\'title\'];\r\n                $data[\'subtitle\'] = $text[\'subtitle\'];\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[if ($product_info[\'image\']) {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                $speciallabel    = \"\";\r\n                $date       = $this->model_tnt_tntallquery->getproductspecialdate($product_info[\'product_id\']);\r\n                $speciallabel    = $date;    \r\n                $dt         = new DateTime();\r\n                $newdate    = $dt->format(\'Y-m-d H:i:s\');\r\n                $date1      = date_create($product_info[\'date_available\']);\r\n                $date2      = date_create($newdate);\r\n                $diff       = date_diff($date1,$date2);\r\n                $days       = $diff->days;\r\n                if($days < 20){\r\n                    $new = \"New\";\r\n                }else{\r\n                    $new = \"\";\r\n                }\r\n                if(!empty($speciallabel)){\r\n                    $salelebal = \"Sale\";\r\n                }else{\r\n                    $salelebal = \"\";\r\n                }\r\n\r\n                $hoverimage   = $this->model_catalog_product->getProductImages($product_info[\'product_id\']);\r\n                if(!empty(current($hoverimage))){\r\n                    $hoverimage = $this->model_tool_image->resize(current($hoverimage)[\'image\'], $setting[\'width\'], $setting[\'height\']);\r\n                    \r\n                }else{\r\n                    $hoverimage = $image;\r\n                }\r\n                $date = $this->model_tnt_tntallquery->getproductspecialdate($product_info[\'product_id\']);\r\n                        \r\n                if(isset($date[\'date_end\'])){\r\n                    $date_end = $date[\'date_end\'];\r\n                }else{\r\n                    $date_end = null;\r\n                }\r\n            ]]></add>\r\n        </operation>   \r\n        <operation>\r\n            <search><![CDATA[\'thumb\'       => $image,]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                \'hoverimage\'    => $hoverimage,\r\n                \'speciallabel\'  => $salelebal,\r\n                \'newlabel\'      => $new,\r\n                \'date_end\'     => $date_end,\r\n            ]]></add>\r\n        </operation>     \r\n    </file>\r\n    <file path=\"catalog/controller/extension/module/latest.php\">\r\n        <operation>\r\n            <search><![CDATA[$this->load->model(\'tool/image\');]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                $this->load->model(\'tnt/tntallquery\');\r\n                $width  = $this->config->get(\'tntthemesetting_newproductbanner_width\');\r\n                $height = $this->config->get(\'tntthemesetting_newproductbanner_height\');\r\n                $name                       = \"tnttabproduct\";\r\n                $detail                     = $this->model_tnt_tntallquery->getcommonmoduledetail($name);\r\n                $commonmoduledetail         = json_decode($detail[\'setting\'],1);\r\n                $language_id                = $this->config->get(\'config_language_id\');\r\n                $text =                       $commonmoduledetail[\'productnew\'][\'parenttext\'][$language_id];\r\n                \r\n                $data[\'title\'] = $text[\'title\'];\r\n                $data[\'subtitle\'] = $text[\'subtitle\'];\r\n                $data[\'banner\'] =  $this->model_tool_image->resize($text[\'image\'], $width, $height);\r\n\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[if ($result[\'image\']) {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                $speciallabel    = \"\";\r\n                $date       = $this->model_tnt_tntallquery->getproductspecialdate($result[\'product_id\']);\r\n                $speciallabel    = $date;    \r\n                $dt         = new DateTime();\r\n                $newdate    = $dt->format(\'Y-m-d H:i:s\');\r\n                $date1      = date_create($result[\'date_available\']);\r\n                $date2      = date_create($newdate);\r\n                $diff       = date_diff($date1,$date2);\r\n                $days       = $diff->days;\r\n                if($days < 20){\r\n                    $new = \"New\";\r\n                }else{\r\n                    $new = \"\";\r\n                }\r\n                if(!empty($speciallabel)){\r\n                    $salelebal = \"Sale\";\r\n                }else{\r\n                    $salelebal = \"\";\r\n                }\r\n\r\n                \r\n                $hoverimage   = $this->model_catalog_product->getProductImages($result[\'product_id\']);\r\n                if(!empty(current($hoverimage))){\r\n                    $hoverimage = $this->model_tool_image->resize(current($hoverimage)[\'image\'], $setting[\'width\'], $setting[\'height\']);\r\n\r\n\r\n                    \r\n                }else{\r\n                    $hoverimage = $image;\r\n                }\r\n                $date = $this->model_tnt_tntallquery->getproductspecialdate($result[\'product_id\']);\r\n                        \r\n                if(isset($date[\'date_end\'])){\r\n                    $date_end = $date[\'date_end\'];\r\n                }else{\r\n                    $date_end = null;\r\n                }\r\n            ]]></add>\r\n        </operation>   \r\n        <operation>\r\n            <search><![CDATA[\'thumb\'       => $image,]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                \'hoverimage\'    => $hoverimage,\r\n                \'speciallabel\'  => $salelebal,\r\n                \'newlabel\'      => $new,\r\n                \'date_end\'     => $date_end,\r\n            ]]></add>\r\n        </operation>     \r\n    </file>\r\n    <file path=\"catalog/controller/extension/module/special.php\">\r\n        <operation>\r\n            <search><![CDATA[$this->load->model(\'tool/image\');]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                $this->load->model(\'tnt/tntallquery\');\r\n                $name                       = \"tnttabproduct\";\r\n                $detail                     = $this->model_tnt_tntallquery->getcommonmoduledetail($name);\r\n                $commonmoduledetail         = json_decode($detail[\'setting\'],1);\r\n                $language_id                = $this->config->get(\'config_language_id\');\r\n                $text =                       $commonmoduledetail[\'productspecial\'][\'parenttext\'][$language_id];\r\n                \r\n                $data[\'title\'] = $text[\'title\'];\r\n                $data[\'subtitle\'] = $text[\'subtitle\'];\r\n                \r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[if ($result[\'image\']) {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                $speciallabel    = \"\";\r\n                $date       = $this->model_tnt_tntallquery->getproductspecialdate($result[\'product_id\']);\r\n                $speciallabel    = $date;    \r\n                $dt         = new DateTime();\r\n                $newdate    = $dt->format(\'Y-m-d H:i:s\');\r\n                $date1      = date_create($result[\'date_available\']);\r\n                $date2      = date_create($newdate);\r\n                $diff       = date_diff($date1,$date2);\r\n                $days       = $diff->days;\r\n                if($days < 20){\r\n                    $new = \"New\";\r\n                }else{\r\n                    $new = \"\";\r\n                }\r\n                if(!empty($speciallabel)){\r\n                    $salelebal = \"Sale\";\r\n                }else{\r\n                    $salelebal = \"\";\r\n                }\r\n\r\n                $hoverimage   = $this->model_catalog_product->getProductImages($result[\'product_id\']);\r\n                if(!empty(current($hoverimage))){\r\n                    $hoverimage = $this->model_tool_image->resize(current($hoverimage)[\'image\'], $setting[\'width\'], $setting[\'height\']);\r\n                    \r\n                }else{\r\n                    $hoverimage = $image;\r\n                }\r\n\r\n                $date = $this->model_tnt_tntallquery->getproductspecialdate($result[\'product_id\']);\r\n                        \r\n                if(isset($date[\'date_end\'])){\r\n                    $date_end = $date[\'date_end\'];\r\n                }else{\r\n                    $date_end = null;\r\n                }\r\n            ]]></add>\r\n        </operation>   \r\n        <operation>\r\n            <search><![CDATA[\'thumb\'       => $image,]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                \'hoverimage\'    => $hoverimage,\r\n                \'speciallabel\'  => $salelebal,\r\n                \'newlabel\'      => $new,\r\n                \'date_end\'      => $date_end,\r\n            ]]></add>\r\n        </operation>     \r\n    </file>\r\n    <file path=\"catalog/controller/account/download.php\">\r\n        <operation>\r\n            <search><![CDATA[new Pagination();]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n                new Tntpagination();\r\n            ]]></add>\r\n        </operation>     \r\n    </file>\r\n    <file path=\"catalog/controller/account/order.php\">\r\n        <operation>\r\n            <search><![CDATA[new Pagination();]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n                new Tntpagination();\r\n            ]]></add>\r\n        </operation>     \r\n    </file>\r\n    <file path=\"catalog/controller/account/recurring.php\">\r\n        <operation>\r\n            <search><![CDATA[new Pagination();]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n                new Tntpagination();\r\n            ]]></add>\r\n        </operation>     \r\n    </file>\r\n    <file path=\"catalog/controller/account/return.php\">\r\n        <operation>\r\n            <search><![CDATA[new Pagination();]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n                new Tntpagination();\r\n            ]]></add>\r\n        </operation>     \r\n    </file>\r\n    <file path=\"catalog/controller/account/reward.php\">\r\n        <operation>\r\n            <search><![CDATA[new Pagination();]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n                new Tntpagination();\r\n            ]]></add>\r\n        </operation>     \r\n    </file>\r\n    <file path=\"catalog/controller/account/transaction.php\">\r\n        <operation>\r\n            <search><![CDATA[new Pagination();]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n                new Tntpagination();\r\n            ]]></add>\r\n        </operation>     \r\n    </file>\r\n    <file path=\"catalog/controller/account/sagepay_direct.php\">\r\n        <operation>\r\n            <search><![CDATA[new Pagination();]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n                new Tntpagination();\r\n            ]]></add>\r\n        </operation>     \r\n    </file>\r\n    <file path=\"catalog/controller/account/sagepay_server.php\">\r\n        <operation>\r\n            <search><![CDATA[new Pagination();]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n                new Tntpagination();\r\n            ]]></add>\r\n        </operation>     \r\n    </file>\r\n    <file path=\"catalog/controller/account/category.php\">\r\n        <operation>\r\n            <search><![CDATA[new Pagination();]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n                new Tntpagination();\r\n            ]]></add>\r\n        </operation>     \r\n    </file>\r\n    <file path=\"catalog/controller/account/manufacturer.php\">\r\n        <operation>\r\n            <search><![CDATA[new Pagination();]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n                new Tntpagination();\r\n            ]]></add>\r\n        </operation>     \r\n    </file>\r\n    <file path=\"catalog/controller/account/product.php\">\r\n        <operation>\r\n            <search><![CDATA[new Pagination();]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n                new Tntpagination();\r\n            ]]></add>\r\n        </operation>     \r\n    </file>\r\n   \r\n    <file path=\"catalog/controller/account/search.php\">\r\n        <operation>\r\n            <search><![CDATA[new Pagination();]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n                new Tntpagination();\r\n            ]]></add>\r\n        </operation>     \r\n    </file>\r\n    <file path=\"catalog/controller/account/special.php\">\r\n        <operation>\r\n            <search><![CDATA[new Pagination();]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n                new Tntpagination();\r\n            ]]></add>\r\n        </operation>     \r\n    </file>\r\n   \r\n</modification>',1,'2019-09-06 14:36:04');



DROP TABLE IF EXISTS `oc_module`;

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`),
  KEY `name` (`name`),
  KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

INSERT INTO oc_module VALUES(30,'Category','banner','{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}');
INSERT INTO oc_module VALUES(29,'Home Page','carousel','{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}');
INSERT INTO oc_module VALUES(28,'Featured','featured','{\"name\":\"Featured\",\"product_name\":\"\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"263\",\"height\":\"263\",\"status\":\"1\"}');
INSERT INTO oc_module VALUES(27,'Home Page','slideshow','{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}');
INSERT INTO oc_module VALUES(31,'Banner 1','banner','{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"300\",\"height\":\"423\",\"status\":\"1\"}');
INSERT INTO oc_module VALUES(87,'Brand List','tntbrandlist','{\"name\":\"Brand List\",\"status\":1,\"tntbrandlist_parent\":{\"1\":{\"title\":\"Shop by Brand\",\"subtitle\":\"fresh & silky daily\"},\"7\":{\"title\":\"Shop by Brand\",\"subtitle\":\"fresh & silky daily\"}}}');
INSERT INTO oc_module VALUES(40,'Slider','tntslider','{\"name\":\"Slider\",\"status\":\"1\",\"speed\":\"5000\",\"hover\":\"1\",\"loop\":\"0\",\"animationslider\":\"1\"}');
INSERT INTO oc_module VALUES(76,'Social Icon','tntsocialicon','{\"name\":\"Social Icon\",\"status\":\"0\"}');
INSERT INTO oc_module VALUES(43,'Tab Product','tnttabproduct','{\"name\":\"Tab Product\",\"status\":\"1\",\"productfeature\":{\"status\":\"1\",\"image\":\"catalog\\/themefactory\\/tabproduct\\/1.png\",\"adminselectproduct\":[\"43\",\"42\",\"48\",\"45\",\"35\",\"31\",\"30\",\"40\",\"32\",\"33\",\"41\",\"49\",\"34\"],\"parenttext\":{\"1\":{\"tabheading\":\"Featured Product\",\"title\":\"Organic Vegetable\",\"subtitle\":\"FRESH &amp; SILKY DAILY\"},\"7\":{\"tabheading\":\"Featured Products\",\"title\":\"Featured Products\",\"subtitle\":\"FRESH &amp; SILKY DAILY\"}}},\"product_name\":\"\",\"productnew\":{\"status\":\"1\",\"image\":\"catalog\\/themefactory\\/tabproduct\\/2.png\",\"parenttext\":{\"1\":{\"tabheading\":\"Organic Fruits \",\"title\":\"New Products\",\"subtitle\":\"FRESH &amp; SILKY DAILY\",\"image\":\"catalog\\/themefactory\\/tabproduct\\/latest.jpg\"},\"7\":{\"tabheading\":\"New Products\",\"title\":\"New Products\",\"subtitle\":\"FRESH &amp; SILKY DAILY\",\"image\":\"catalog\\/themefactory\\/tabproduct\\/latest.jpg\"}}},\"productbest\":{\"status\":\"1\",\"image\":\"catalog\\/themefactory\\/tabproduct\\/3.png\",\"parenttext\":{\"1\":{\"tabheading\":\"SeaFood \",\"title\":\"Best Sellers\",\"subtitle\":\"FRESH &amp; SILKY DAILY\"},\"7\":{\"tabheading\":\"Best Sellers\",\"title\":\"Best Sellers\",\"subtitle\":\"FRESH &amp; SILKY DAILY\"}}},\"productspecial\":{\"status\":\"1\",\"image\":\"catalog\\/themefactory\\/tabproduct\\/4.png\",\"parenttext\":{\"1\":{\"tabheading\":\"Wine &amp; Beer \",\"title\":\"Deal Of The Day\",\"subtitle\":\"FRESH &amp; SILKY DAILY\"},\"7\":{\"tabheading\":\"Special Product\",\"title\":\"Deal of The Day\",\"subtitle\":\"FRESH &amp; SILKY DAILY\"}}},\"customtext\":{\"status\":\"1\",\"tab_name_id\":\"tmrfspecialproducttab-product\",\"tab_name_class_slider\":\"mrfspecialproducttab-product\",\"tab_name_class_pagination\":\"mrfspecialproducttab\",\"parenttext\":{\"1\":{\"tabproductheading\":\"New Arrivals\",\"subtitle\":\"FRESH &amp; SILKY DAILY\"},\"7\":{\"tabproductheading\":\"New Arrivals\",\"subtitle\":\"FRESH &amp; SILKY DAILY\"}}}}');
INSERT INTO oc_module VALUES(79,'Footer Logo','tntfooterlogo','{\"name\":\"Footer Logo\",\"status\":\"1\",\"tntfooterlogo_description\":{\"1\":{\"image\":\"catalog\\/themefactory\\/logo\\/Footer-Logo.png\",\"title\":\"title\",\"short_description\":\"Excepteur Sint Occaecat Cupidatat Non Proident, Sunt In Culpa Qui Officia Deserunt Mollit Anim Id Est Laborum.\",\"description\":\"Lorem ipsum Dolor Sit amet, consectetur adip isicing elit, sed do eiusmod tempor incidi-dunt.\"},\"7\":{\"image\":\"catalog\\/themefactory\\/logo\\/Footer-Logo.png\",\"title\":\"title\",\"short_description\":\"Excepteur Sint Occaecat Cupidatat Non Proident, Sunt In Culpa Qui Officia Deserunt Mollit Anim Id Est Laborum.\",\"description\":\"Lorem ipsum Dolor Sit amet, consectetur adip isicing elit, sed do eiusmod tempor incidi-dunt.\"}}}');
INSERT INTO oc_module VALUES(49,'Testimonial','tnttestimonial','{\"name\":\"Testimonial\",\"status\":\"1\",\"tnttestimonial_parentsettingdata\":{\"1\":{\"heading\":\"Client Says\",\"subtitle\":\"What Our Customer Say Fresh &amp; Silky Daily\",\"image\":\"catalog\\/themefactory\\/testimonial\\/main.png\"},\"7\":{\"heading\":\"Client Says\",\"subtitle\":\"\\u0645\\u0627 \\u064a\\u0642\\u0648\\u0644\\u0647 \\u0639\\u0645\\u0644\\u0627\\u0626\\u0646\\u0627 \\u0637\\u0627\\u0632\\u062c \\u0648\\u062d\\u0631\\u064a\\u0631\\u064a \\u064a\\u0648\\u0645\\u064a\\u064b\\u0627\",\"image\":\"catalog\\/themefactory\\/testimonial\\/main.png\"}}}');
INSERT INTO oc_module VALUES(62,'Customer Services','tntcustomerservices','{\"status\":\"1\",\"name\":\"Customer Services\",\"tntcustomerservices\":{\"1\":{\"tntcustomerservices_image_1\":\"catalog\\/themefactory\\/customerservice\\/1.png\",\"language_id\":\"1\",\"tntcustomerservices_title_1\":\"Free Shipping\",\"tntcustomerservices_description_1\":\"On orders over 100$\",\"tntcustomerservices_status_1\":\"1\",\"tntcustomerservices_image_2\":\"catalog\\/themefactory\\/customerservice\\/2.png\",\"tntcustomerservices_title_2\":\"Money Back 100%\",\"tntcustomerservices_description_2\":\"Within 30 Days after delivery\",\"tntcustomerservices_status_2\":\"1\",\"tntcustomerservices_image_3\":\"catalog\\/themefactory\\/customerservice\\/3.png\",\"tntcustomerservices_title_3\":\"online support\",\"tntcustomerservices_description_3\":\"Mon-Sun: 8.00-20.00\",\"tntcustomerservices_status_3\":\"1\",\"tntcustomerservices_image_4\":\"catalog\\/themefactory\\/customerservice\\/4.png\",\"tntcustomerservices_title_4\":\"1 (234) 567 89 01\",\"tntcustomerservices_description_4\":\"Order by phone\",\"tntcustomerservices_status_4\":\"1\"},\"7\":{\"tntcustomerservices_image_1\":\"catalog\\/themefactory\\/customerservice\\/1.png\",\"language_id\":\"7\",\"tntcustomerservices_title_1\":\"Free Shipping\",\"tntcustomerservices_description_1\":\"On orders over 100$\",\"tntcustomerservices_status_1\":\"1\",\"tntcustomerservices_image_2\":\"catalog\\/themefactory\\/customerservice\\/2.png\",\"tntcustomerservices_title_2\":\"ree exchange\",\"tntcustomerservices_description_2\":\"30 dyas return\",\"tntcustomerservices_status_2\":\"1\",\"tntcustomerservices_image_3\":\"catalog\\/themefactory\\/customerservice\\/3.png\",\"tntcustomerservices_title_3\":\"online support\",\"tntcustomerservices_description_3\":\"Online 24 hours\",\"tntcustomerservices_status_3\":\"1\",\"tntcustomerservices_image_4\":\"catalog\\/themefactory\\/customerservice\\/4.png\",\"tntcustomerservices_title_4\":\"black friday\",\"tntcustomerservices_description_4\":\"Discount on friday\",\"tntcustomerservices_status_4\":\"1\"}}}');
INSERT INTO oc_module VALUES(59,'Bestsellers','bestseller','{\"name\":\"Bestsellers\",\"limit\":\"5\",\"width\":\"900\",\"height\":\"900\",\"status\":\"1\"}');
INSERT INTO oc_module VALUES(60,'Latest','latest','{\"name\":\"Latest\",\"limit\":\"6\",\"width\":\"900\",\"height\":\"900\",\"status\":\"1\"}');
INSERT INTO oc_module VALUES(61,'Specials','special','{\"name\":\"Specials\",\"limit\":\"5\",\"width\":\"500\",\"height\":\"500\",\"status\":\"1\"}');
INSERT INTO oc_module VALUES(64,'News Letter Popup','tntnewsletterpopup','{\"name\":\"News Letter Popup\",\"status\":\"1\",\"tntnewsletterpopup\":{\"1\":{\"image\":\"catalog\\/themefactory\\/newslatter\\/1.png\",\"heading\":\"GET 20% OFF\",\"subtitle\":\"ON YOUR NEXT PURCHASE\",\"description\":\"SIGN UP FOR OUR NEWSLETTER &amp; PROMOTIONS !\"},\"7\":{\"image\":\"catalog\\/themefactory\\/newslatter\\/1.png\",\"heading\":\"\\u0627\\u0634\\u062a\\u0631\\u0643 \\u0641\\u064a \\u0646\\u0634\\u0631\\u062a\\u0646\\u0627 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\",\"subtitle\":\"SIGN UP FOR OUR NEWSLETTER &amp; PROMOTIONS !\",\"description\":\"ON YOUR NEXT PURCHASE\"}}}');
INSERT INTO oc_module VALUES(66,'News Letter','tntnewsletter','{\"name\":\"News Letter\",\"status\":\"1\",\"tntnewsletter\":{\"1\":{\"heading\":\"Newsletter\",\"subtitle\":\"Wants to get latest updates!\"},\"7\":{\"heading\":\"\\u0627\\u0644\\u0646\\u0634\\u0631\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0628\\u0627\\u0631\\u064a\\u0629\",\"subtitle\":\"\\u064a\\u0631\\u064a\\u062f \\u0627\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0622\\u062e\\u0631 \\u0627\\u0644\\u062a\\u062d\\u062f\\u064a\\u062b\\u0627\\u062a!\"}}}');
INSERT INTO oc_module VALUES(67,'Left Testimonial','tntlefttestimonial','{\"name\":\"Left Testimonial\",\"status\":1}');
INSERT INTO oc_module VALUES(68,'Left - Right Product','tntleftrightproduct','{\"name\":\"Left - Right Product\",\"status\":\"1\",\"productfeature\":{\"status\":\"0\",\"adminselectproduct\":[\"42\",\"30\",\"28\"],\"parenttext\":{\"1\":{\"tabheading\":\"Featured Product\"},\"7\":{\"tabheading\":\"\\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\"}}},\"product_name\":\"\",\"productnew\":{\"status\":\"1\",\"parenttext\":{\"1\":{\"tabheading\":\"Latest Product\"},\"7\":{\"tabheading\":\"\\u0623\\u062d\\u062f\\u062b \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a\"}}},\"productbest\":{\"status\":\"1\",\"parenttext\":{\"1\":{\"tabheading\":\"Best Seller\"},\"7\":{\"tabheading\":\"\\u0627\\u0644\\u0623\\u0643\\u062b\\u0631 \\u0645\\u0628\\u064a\\u0639\\u0627\"}}},\"productspecial\":{\"status\":\"0\",\"parenttext\":{\"1\":{\"tabheading\":\"Special Product\"},\"7\":{\"tabheading\":\"\\u0645\\u0646\\u062a\\u062c \\u062e\\u0627\\u0635\"}}}}');
INSERT INTO oc_module VALUES(70,'Category Slider','tntcategoryslider','{\"name\":\"Category Slider\",\"status\":\"1\",\"tntcategoryslider_parent\":{\"1\":{\"title\":\"Shop by Categories\",\"lang_id\":\"1\",\"subtitle\":\"Fresh &amp; Silky Daily\"},\"7\":{\"title\":\"Shop by Categories\",\"lang_id\":\"7\",\"subtitle\":\"Fresh &amp; Silky Daily\"}}}');
INSERT INTO oc_module VALUES(72,'Banners','tntbanners','{\"status\":\"1\",\"name\":\"Banners\",\"tntbanners\":{\"1\":{\"tntbanners_image_1\":\"catalog\\/themefactory\\/banners\\/1.jpg\",\"language_id\":\"1\",\"tntbanners_link_1\":\"#\",\"tntbanners_width_1\":\"640\",\"tntbanners_height_1\":\"400\",\"tntbanners_status_1\":\"1\",\"tntbanners_image_2\":\"catalog\\/themefactory\\/banners\\/2.jpg\",\"tntbanners_link_2\":\"#\",\"tntbanners_width_2\":\"640\",\"tntbanners_height_2\":\"400\",\"tntbanners_status_2\":\"1\",\"tntbanners_image_3\":\"catalog\\/themefactory\\/banners\\/3.jpg\",\"tntbanners_link_3\":\"#\",\"tntbanners_width_3\":\"640\",\"tntbanners_height_3\":\"400\",\"tntbanners_status_3\":\"1\"},\"7\":{\"tntbanners_image_1\":\"catalog\\/themefactory\\/banners\\/1.jpg\",\"language_id\":\"7\",\"tntbanners_link_1\":\"#\",\"tntbanners_width_1\":\"640\",\"tntbanners_height_1\":\"400\",\"tntbanners_status_1\":\"1\",\"tntbanners_image_2\":\"catalog\\/themefactory\\/banners\\/2.jpg\",\"tntbanners_link_2\":\"#\",\"tntbanners_width_2\":\"640\",\"tntbanners_height_2\":\"400\",\"tntbanners_status_2\":\"1\",\"tntbanners_image_3\":\"catalog\\/themefactory\\/banners\\/3.jpg\",\"tntbanners_link_3\":\"#\",\"tntbanners_width_3\":\"640\",\"tntbanners_height_3\":\"400\",\"tntbanners_status_3\":\"1\"}}}');
INSERT INTO oc_module VALUES(81,'offer banner','tntofferbanner','{\"name\":\"offer banner\",\"status\":\"1\",\"tntofferbanner_description\":{\"1\":{\"image\":\"catalog\\/themefactory\\/offerbanner\\/1.jpg\",\"title\":\"Our Stories\",\"short_description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis risus leo , elementum in malesuada an darius ut augue. Cras sit amet lectus et justo feugiat euismod sed non erat. Nulla non felis id metus bibendum iaculis quis sit amet eros. Nam suscipit mollis tellus vel malesuada. Duis dan molestie, sem in sollicitudin sodales mi justo sagittis est id consequat ipsum ligula a ante\",\"description\":\"We\'ve recently updated our entire product  portfolio to give customers and partners the best products with the newest technology.\"},\"7\":{\"image\":\"catalog\\/themefactory\\/offerbanner\\/1.jpg\",\"title\":\"Our Stories\",\"short_description\":\"Save To 40% Off On First Order in Store\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis risus leo , elementum in malesuada an darius ut augue. Cras sit amet lectus et justo feugiat euismod sed non erat. Nulla non felis id metus bibendum iaculis quis sit amet eros. Nam suscipit mollis tellus vel malesuada. Duis dan molestie, sem in sollicitudin sodales mi justo sagittis est id consequat ipsum ligula a ante\"}}}');
INSERT INTO oc_module VALUES(82,'Blog Category','tntblogcategory','{\"name\":\"Blog Category\",\"status\":1}');
INSERT INTO oc_module VALUES(83,'Blog Post','tntblog','{\"name\":\"Blog Post\",\"status\":\"1\",\"tntblog_parent\":{\"1\":{\"title\":\"News &amp; Blogs\",\"subtitle\":\"\",\"des\":\"\"},\"7\":{\"title\":\"News &amp; Blogs\",\"subtitle\":\"\",\"des\":\"\"}}}');
INSERT INTO oc_module VALUES(85,'Payment Icon','tntpaymenticon','{\"name\":\"Payment Icon\",\"status\":1}');



DROP TABLE IF EXISTS `oc_option`;

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO oc_option VALUES(1,'radio',1);
INSERT INTO oc_option VALUES(2,'checkbox',2);
INSERT INTO oc_option VALUES(4,'text',3);
INSERT INTO oc_option VALUES(5,'select',4);
INSERT INTO oc_option VALUES(6,'textarea',5);
INSERT INTO oc_option VALUES(7,'file',6);
INSERT INTO oc_option VALUES(8,'date',7);
INSERT INTO oc_option VALUES(9,'time',8);
INSERT INTO oc_option VALUES(10,'datetime',9);
INSERT INTO oc_option VALUES(11,'select',10);
INSERT INTO oc_option VALUES(12,'date',11);



DROP TABLE IF EXISTS `oc_option_description`;

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_option_description VALUES(1,1,'Radio');
INSERT INTO oc_option_description VALUES(2,1,'Checkbox');
INSERT INTO oc_option_description VALUES(4,1,'Text');
INSERT INTO oc_option_description VALUES(6,1,'Textarea');
INSERT INTO oc_option_description VALUES(8,1,'Date');
INSERT INTO oc_option_description VALUES(7,1,'File');
INSERT INTO oc_option_description VALUES(5,1,'Select');
INSERT INTO oc_option_description VALUES(9,1,'Time');
INSERT INTO oc_option_description VALUES(10,1,'Date &amp; Time');
INSERT INTO oc_option_description VALUES(12,1,'Delivery Date');
INSERT INTO oc_option_description VALUES(11,1,'Size');
INSERT INTO oc_option_description VALUES(1,4,'Radio');
INSERT INTO oc_option_description VALUES(2,4,'Checkbox');
INSERT INTO oc_option_description VALUES(4,4,'Text');
INSERT INTO oc_option_description VALUES(6,4,'Textarea');
INSERT INTO oc_option_description VALUES(8,4,'Date');
INSERT INTO oc_option_description VALUES(7,4,'File');
INSERT INTO oc_option_description VALUES(5,4,'Select');
INSERT INTO oc_option_description VALUES(9,4,'Time');
INSERT INTO oc_option_description VALUES(10,4,'Date &amp; Time');
INSERT INTO oc_option_description VALUES(12,4,'Delivery Date');
INSERT INTO oc_option_description VALUES(11,4,'Size');
INSERT INTO oc_option_description VALUES(1,7,'Radio');
INSERT INTO oc_option_description VALUES(2,7,'Checkbox');
INSERT INTO oc_option_description VALUES(4,7,'Text');
INSERT INTO oc_option_description VALUES(6,7,'Textarea');
INSERT INTO oc_option_description VALUES(8,7,'Date');
INSERT INTO oc_option_description VALUES(7,7,'File');
INSERT INTO oc_option_description VALUES(5,7,'Select');
INSERT INTO oc_option_description VALUES(9,7,'Time');
INSERT INTO oc_option_description VALUES(10,7,'Date &amp; Time');
INSERT INTO oc_option_description VALUES(12,7,'Delivery Date');
INSERT INTO oc_option_description VALUES(11,7,'Size');



DROP TABLE IF EXISTS `oc_option_value`;

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`),
  KEY `option_id` (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

INSERT INTO oc_option_value VALUES(43,1,'',3);
INSERT INTO oc_option_value VALUES(32,1,'',1);
INSERT INTO oc_option_value VALUES(45,2,'',4);
INSERT INTO oc_option_value VALUES(44,2,'',3);
INSERT INTO oc_option_value VALUES(42,5,'',4);
INSERT INTO oc_option_value VALUES(41,5,'',3);
INSERT INTO oc_option_value VALUES(39,5,'',1);
INSERT INTO oc_option_value VALUES(40,5,'',2);
INSERT INTO oc_option_value VALUES(31,1,'',2);
INSERT INTO oc_option_value VALUES(23,2,'',1);
INSERT INTO oc_option_value VALUES(24,2,'',2);
INSERT INTO oc_option_value VALUES(46,11,'',1);
INSERT INTO oc_option_value VALUES(47,11,'',2);
INSERT INTO oc_option_value VALUES(48,11,'',3);



DROP TABLE IF EXISTS `oc_option_value_description`;

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`),
  KEY `option_id` (`option_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_option_value_description VALUES(43,1,1,'Large');
INSERT INTO oc_option_value_description VALUES(32,1,1,'Small');
INSERT INTO oc_option_value_description VALUES(45,1,2,'Checkbox 4');
INSERT INTO oc_option_value_description VALUES(44,1,2,'Checkbox 3');
INSERT INTO oc_option_value_description VALUES(31,1,1,'Medium');
INSERT INTO oc_option_value_description VALUES(42,1,5,'Yellow');
INSERT INTO oc_option_value_description VALUES(41,1,5,'Green');
INSERT INTO oc_option_value_description VALUES(39,1,5,'Red');
INSERT INTO oc_option_value_description VALUES(40,1,5,'Blue');
INSERT INTO oc_option_value_description VALUES(23,1,2,'Checkbox 1');
INSERT INTO oc_option_value_description VALUES(24,1,2,'Checkbox 2');
INSERT INTO oc_option_value_description VALUES(48,1,11,'Large');
INSERT INTO oc_option_value_description VALUES(47,1,11,'Medium');
INSERT INTO oc_option_value_description VALUES(46,1,11,'Small');
INSERT INTO oc_option_value_description VALUES(43,4,1,'Large');
INSERT INTO oc_option_value_description VALUES(32,4,1,'Small');
INSERT INTO oc_option_value_description VALUES(45,4,2,'Checkbox 4');
INSERT INTO oc_option_value_description VALUES(44,4,2,'Checkbox 3');
INSERT INTO oc_option_value_description VALUES(31,4,1,'Medium');
INSERT INTO oc_option_value_description VALUES(42,4,5,'Yellow');
INSERT INTO oc_option_value_description VALUES(41,4,5,'Green');
INSERT INTO oc_option_value_description VALUES(39,4,5,'Red');
INSERT INTO oc_option_value_description VALUES(40,4,5,'Blue');
INSERT INTO oc_option_value_description VALUES(23,4,2,'Checkbox 1');
INSERT INTO oc_option_value_description VALUES(24,4,2,'Checkbox 2');
INSERT INTO oc_option_value_description VALUES(48,4,11,'Large');
INSERT INTO oc_option_value_description VALUES(47,4,11,'Medium');
INSERT INTO oc_option_value_description VALUES(46,4,11,'Small');
INSERT INTO oc_option_value_description VALUES(43,7,1,'Large');
INSERT INTO oc_option_value_description VALUES(32,7,1,'Small');
INSERT INTO oc_option_value_description VALUES(45,7,2,'Checkbox 4');
INSERT INTO oc_option_value_description VALUES(44,7,2,'Checkbox 3');
INSERT INTO oc_option_value_description VALUES(31,7,1,'Medium');
INSERT INTO oc_option_value_description VALUES(42,7,5,'Yellow');
INSERT INTO oc_option_value_description VALUES(41,7,5,'Green');
INSERT INTO oc_option_value_description VALUES(39,7,5,'Red');
INSERT INTO oc_option_value_description VALUES(40,7,5,'Blue');
INSERT INTO oc_option_value_description VALUES(23,7,2,'Checkbox 1');
INSERT INTO oc_option_value_description VALUES(24,7,2,'Checkbox 2');
INSERT INTO oc_option_value_description VALUES(48,7,11,'Large');
INSERT INTO oc_option_value_description VALUES(47,7,11,'Medium');
INSERT INTO oc_option_value_description VALUES(46,7,11,'Small');



DROP TABLE IF EXISTS `oc_order`;

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `store_id` (`store_id`),
  KEY `invoice_no` (`invoice_no`),
  KEY `customer_id` (`customer_id`),
  KEY `email` (`email`),
  KEY `payment_method` (`payment_method`),
  KEY `order_status_id` (`order_status_id`),
  KEY `affiliate_id` (`affiliate_id`),
  KEY `language_id` (`language_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO oc_order VALUES(1,0,'INV-2019-00',0,'Your Store','http://192.168.0.108/opc/flower_floralle_101/',3,1,'demo','demo','demo@demo.com',8866902013,'','','ashish','vekariya','','147,shiv','','surat',395010,'United Kingdom',222,'Carmarthenshire',3527,'','[]','Cash On Delivery','cod','ashish','vekariya','','147,shiv','','surat',395010,'United Kingdom',222,'Carmarthenshire',3527,'','[]','Flat Shipping Rate','flat.flat','',106.0000,1,0,0.0000,0,'',1,2,'USD',1.00000000,'192.168.0.108','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36','en-US,en;q=0.9,hi;q=0.8','2019-05-17 00:20:41','2019-05-17 00:20:43');
INSERT INTO oc_order VALUES(2,0,'INV-2019-00',0,'Your Store','http://192.168.0.108/opc/flower_floralle_101/',3,1,'demo','demo','demo@demo.com',8866902013,'','','ashish','vekariya','','147,shiv','','surat',395010,'United Kingdom',222,'Carmarthenshire',3527,'','[]','Cash On Delivery','cod','ashish','vekariya','','147,shiv','','surat',395010,'United Kingdom',222,'Carmarthenshire',3527,'','[]','Flat Shipping Rate','flat.flat','',831.2000,0,0,0.0000,0,'',1,2,'USD',1.00000000,'192.168.0.108','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36','en-US,en;q=0.9,hi;q=0.8','2019-05-17 00:39:58','2019-05-17 00:39:58');
INSERT INTO oc_order VALUES(3,0,'INV-2019-00',0,'Your Store','http://192.168.0.108/opc/flower_floralle_101/',3,1,'demo','demo','demo@demo.com',8866902013,'','','ashish','vekariya','','147,shiv','','surat',395010,'United Kingdom',222,'Carmarthenshire',3527,'','[]','Cash On Delivery','cod','ashish','vekariya','','147,shiv','','surat',395010,'United Kingdom',222,'Carmarthenshire',3527,'','[]','Flat Shipping Rate','flat.flat','',831.2000,0,0,0.0000,0,'',1,2,'USD',1.00000000,'192.168.0.108','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36','en-US,en;q=0.9,hi;q=0.8','2019-05-17 00:46:50','2019-05-17 00:46:50');
INSERT INTO oc_order VALUES(4,0,'INV-2019-00',0,'Your Store','http://192.168.0.108/opc/flower_floralle_101/',3,1,'demo','demo','demo@demo.com',8866902013,'','','Hari','society','deluxeinfotech','old kosad road,','old kosad road,','surat',394107,'Thailand',209,'Buriram',3193,'','[]','Cash On Delivery','cod','Hari','society','deluxeinfotech','old kosad road,','old kosad road,','surat',394107,'Thailand',209,'Buriram',3193,'','[]','Flat Shipping Rate','flat.flat','ertfcgjjtrttf',1287.0000,1,0,0.0000,0,'',1,2,'USD',1.00000000,'192.168.0.100','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36','en-GB,en-US;q=0.9,en;q=0.8','2019-05-17 01:23:04','2019-05-17 01:23:09');
INSERT INTO oc_order VALUES(5,0,'INV-2019-00',0,'Your Store','http://192.168.0.108/opc/flower_floralle_101/',3,1,'demo','demo','demo@demo.com',8866902013,'','','ashish','vekariya','','147,shiv','','surat',395010,'United Kingdom',222,'Carmarthenshire',3527,'','[]','Cash On Delivery','cod','ashish','vekariya','','147,shiv','','surat',395010,'United Kingdom',222,'Carmarthenshire',3527,'','[]','Flat Shipping Rate','flat.flat','',131.2000,0,0,0.0000,0,'',1,2,'USD',1.00000000,'192.168.0.108','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36','en-US,en;q=0.9,hi;q=0.8','2019-05-18 00:37:02','2019-05-18 00:37:02');
INSERT INTO oc_order VALUES(6,0,'INV-2019-00',0,'Your Store','http://192.168.0.108/opc/flower_floralle_101/',3,1,'demo','demo','demo@demo.com',8866902013,'','','ashish','vekariya','','147,shiv','','surat',395010,'United Kingdom',222,'Carmarthenshire',3527,'','[]','Cash On Delivery','cod','ashish','vekariya','','147,shiv','','surat',395010,'United Kingdom',222,'Carmarthenshire',3527,'','[]','Flat Shipping Rate','flat.flat','',2854.4000,0,0,0.0000,0,'',1,2,'USD',1.00000000,'192.168.0.107','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36','en-GB,en-US;q=0.9,en;q=0.8,gu;q=0.7','2019-06-06 22:03:59','2019-06-06 22:03:59');
INSERT INTO oc_order VALUES(7,0,'INV-2019-00',0,'Your Store','http://192.168.0.108/opc/flower_floralle_101/',3,1,'demo','demo','demo@demo.com',8866902013,'','','ashish','vekariya','','147,shiv','','surat',395010,'United Kingdom',222,'Carmarthenshire',3527,'','[]','Cash On Delivery','cod','ashish','vekariya','','147,shiv','','surat',395010,'United Kingdom',222,'Carmarthenshire',3527,'','[]','Flat Shipping Rate','flat.flat','',2854.4000,1,0,0.0000,0,'',1,2,'USD',1.00000000,'192.168.0.107','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36','en-GB,en-US;q=0.9,en;q=0.8,gu;q=0.7','2019-06-06 22:07:17','2019-06-06 22:07:20');
INSERT INTO oc_order VALUES(8,0,'INV-2019-00',0,'Your Store','http://192.168.0.108/opc/flower_floralle_101/',0,1,'ashish','vekariya','tomwilliam274@gmail.com',8866902013,'','[]','ashish','vekariya','','147,shiv','','surat',395010,'Taiwan',206,'Hsin-chu',3137,'','[]','Cash On Delivery','cod','ashish','vekariya','','147,shiv','','surat',395010,'Taiwan',206,'Hsin-chu',3137,'','[]','Flat Shipping Rate','flat.flat','',207.0000,0,0,0.0000,0,'',1,2,'USD',1.00000000,'192.168.0.108','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36','en-US,en;q=0.9,hi;q=0.8','2019-06-09 04:01:30','2019-06-09 04:01:30');
INSERT INTO oc_order VALUES(9,0,'INV-2019-00',0,'Your Store','http://192.168.0.108/opc/flower_floralle_101/',0,1,'dmpe','society','mayur@gmail.com',9387464789,'','[]','dmpe','society','deluxeinfotech','old kosad road,','old kosad road,','surat',394107,'St. Helena',197,'Saint Helena',3032,'','[]','Cash On Delivery','cod','dmpe','society','deluxeinfotech','old kosad road,','old kosad road,','surat',394107,'St. Helena',197,'Saint Helena',3032,'','[]','Flat Shipping Rate','flat.flat','',1204.9900,0,0,0.0000,0,'',1,2,'USD',1.00000000,'192.168.0.107','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36','en-GB,en-US;q=0.9,en;q=0.8,gu;q=0.7','2019-06-09 04:02:02','2019-06-09 04:02:02');
INSERT INTO oc_order VALUES(10,0,'INV-2019-00',0,'Your Store','http://192.168.0.108/opc/flower_floralle_101/',0,1,'ashish','vekariya','ashishvekariya1906@gmail.com',8866902013,'','[]','ashish','vekariya','','147,shiv','','surat',395010,'United Kingdom',222,'Carmarthenshire',3527,'','[]','Cash On Delivery','cod','ashish','vekariya','','147,shiv','','surat',395010,'United Kingdom',222,'Carmarthenshire',3527,'','[]','Flat Shipping Rate','flat.flat','',1308.0000,0,0,0.0000,0,'',1,2,'USD',1.00000000,'192.168.0.108','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36','en-US,en;q=0.9,hi;q=0.8','2019-06-09 13:59:30','2019-06-09 13:59:30');
INSERT INTO oc_order VALUES(11,0,'INV-2019-00',0,'Your Store','http://192.168.0.108/opc/flower_floralle_101/',5,1,'ashish','vekariya','ashishvekariya1906@gmail.com',8866902013,'','','ashish','vekariya','','147,shiv','','surat',395010,'Uganda',219,'Kalangala',3424,'','[]','Cash On Delivery','cod','ashish','vekariya','','147,shiv','','surat',395010,'Uganda',219,'Kalangala',3424,'','[]','Flat Shipping Rate','flat.flat','',2085.0000,0,0,0.0000,0,'',1,2,'USD',1.00000000,'192.168.0.108','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36','en-US,en;q=0.9,hi;q=0.8','2019-06-09 14:00:35','2019-06-09 14:00:35');
INSERT INTO oc_order VALUES(12,0,'INV-2019-00',0,'Your Store','http://192.168.0.108/opc/flower_floralle_101/',5,1,'ashish','vekariya','ashishvekariya1906@gmail.com',8866902013,'','','ashish','vekariya','','147,shiv','','surat',395010,'Uganda',219,'Kalangala',3424,'','[]','????? ??? ????????','cod','ashish','vekariya','','147,shiv','','surat',395010,'Uganda',219,'Kalangala',3424,'','[]','????? ????? ?????','flat.flat','',2085.0000,0,0,0.0000,0,'',7,2,'USD',1.00000000,'192.168.0.108','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36','en-US,en;q=0.9,hi;q=0.8','2019-06-09 16:09:06','2019-06-09 16:09:06');
INSERT INTO oc_order VALUES(13,0,'INV-2019-00',0,'Your Store','https://deluxeinfotech.com/themes/opencart/fashion_grayson_101/',6,1,'ashish','vekariya','demo@gmail.com',8596321562,'','','ashish','vekariya','','147,shiv','','surat',395010,'United Kingdom',222,'Carmarthenshire',3527,'','[]','Cash On Delivery','cod','ashish','vekariya','','147,shiv','','surat',395010,'United Kingdom',222,'Carmarthenshire',3527,'','[]','Flat Shipping Rate','flat.flat','',1428.3760,5,0,0.0000,0,'',1,2,'USD',1.00000000,'123.201.225.199','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36','en-US,en;q=0.9,hi;q=0.8','2019-06-30 17:40:37','2019-06-30 17:41:09');
INSERT INTO oc_order VALUES(14,0,'INV-2019-00',0,'Your Store','https://deluxeinfotech.com/themes/opencart/fashion_grayson_101/',6,1,'ashish','vekariya','demo@gmail.com',8596321562,'','','ashish','vekariya','','147,shiv','','surat',395010,'United Kingdom',222,'Carmarthenshire',3527,'','[]','Cash On Delivery','cod','ashish','vekariya','','147,shiv','','surat',395010,'United Kingdom',222,'Carmarthenshire',3527,'','[]','Flat Shipping Rate','flat.flat','',1620.3880,5,0,0.0000,0,'',1,2,'USD',1.00000000,'123.201.225.199','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36','en-US,en;q=0.9,hi;q=0.8','2019-06-30 17:43:45','2019-06-30 17:44:17');



DROP TABLE IF EXISTS `oc_order_history`;

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`),
  KEY `order_id` (`order_id`),
  KEY `order_status_id` (`order_status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO oc_order_history VALUES(1,1,1,0,'','2019-05-17 00:20:43');
INSERT INTO oc_order_history VALUES(2,4,1,0,'','2019-05-17 01:23:09');
INSERT INTO oc_order_history VALUES(3,7,1,0,'','2019-06-06 22:07:20');
INSERT INTO oc_order_history VALUES(4,13,1,0,'','2019-06-30 17:40:40');
INSERT INTO oc_order_history VALUES(5,13,5,0,'','2019-06-30 17:41:09');
INSERT INTO oc_order_history VALUES(6,14,1,0,'','2019-06-30 17:43:47');
INSERT INTO oc_order_history VALUES(7,14,5,0,'','2019-06-30 17:44:17');



DROP TABLE IF EXISTS `oc_order_option`;

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`),
  KEY `order_id` (`order_id`),
  KEY `order_product_id` (`order_product_id`),
  KEY `product_option_id` (`product_option_id`),
  KEY `product_option_value_id` (`product_option_value_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO oc_order_option VALUES(1,1,1,226,15,'Select','Red','select');
INSERT INTO oc_order_option VALUES(2,2,2,226,15,'Select','Red','select');
INSERT INTO oc_order_option VALUES(3,3,5,226,15,'Select','Red','select');
INSERT INTO oc_order_option VALUES(4,4,8,226,15,'Select','Red','select');



DROP TABLE IF EXISTS `oc_order_product`;

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `name` (`name`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

INSERT INTO oc_order_product VALUES(1,1,30,'Canon EOS 5D','Product 3',1,80.0000,80.0000,18.0000,200);
INSERT INTO oc_order_product VALUES(2,2,30,'Canon EOS 5D','Product 3',1,80.0000,80.0000,18.0000,200);
INSERT INTO oc_order_product VALUES(3,2,43,'MacBook','Product 16',1,500.0000,500.0000,102.0000,600);
INSERT INTO oc_order_product VALUES(4,2,40,'iPhone','product 11',1,101.0000,101.0000,22.2000,0);
INSERT INTO oc_order_product VALUES(5,3,30,'Canon EOS 5D','Product 3',1,80.0000,80.0000,18.0000,200);
INSERT INTO oc_order_product VALUES(6,3,43,'MacBook','Product 16',1,500.0000,500.0000,102.0000,600);
INSERT INTO oc_order_product VALUES(7,3,40,'iPhone','product 11',1,101.0000,101.0000,22.2000,0);
INSERT INTO oc_order_product VALUES(8,4,30,'Canon EOS 5D','Product 3',1,80.0000,80.0000,0.0000,200);
INSERT INTO oc_order_product VALUES(9,4,43,'MacBook','Product 16',2,500.0000,1000.0000,0.0000,1200);
INSERT INTO oc_order_product VALUES(10,4,40,'iPhone','product 11',2,101.0000,202.0000,0.0000,0);
INSERT INTO oc_order_product VALUES(11,5,40,'iPhone','product 11',1,101.0000,101.0000,22.2000,0);
INSERT INTO oc_order_product VALUES(12,6,40,'Aubrieta','product 11',2,101.0000,202.0000,22.2000,0);
INSERT INTO oc_order_product VALUES(13,6,31,'Hydrangea','Product 4',2,80.0000,160.0000,18.0000,0);
INSERT INTO oc_order_product VALUES(14,6,44,'Freesia','Product 17',2,1000.0000,2000.0000,202.0000,1400);
INSERT INTO oc_order_product VALUES(15,7,40,'Aubrieta','product 11',2,101.0000,202.0000,22.2000,0);
INSERT INTO oc_order_product VALUES(16,7,31,'Hydrangea','Product 4',2,80.0000,160.0000,18.0000,0);
INSERT INTO oc_order_product VALUES(17,7,44,'Freesia','Product 17',2,1000.0000,2000.0000,202.0000,1400);
INSERT INTO oc_order_product VALUES(18,8,40,'Aubrieta','product 11',2,101.0000,202.0000,0.0000,0);
INSERT INTO oc_order_product VALUES(19,9,44,'Freesia','Product 17',1,1000.0000,1000.0000,0.0000,700);
INSERT INTO oc_order_product VALUES(20,9,49,'Cyclamen','SAM1',1,199.9900,199.9900,0.0000,1000);
INSERT INTO oc_order_product VALUES(21,10,31,'Hydrangea','Product 4',1,80.0000,80.0000,18.0000,0);
INSERT INTO oc_order_product VALUES(22,10,44,'Freesia','Product 17',1,1000.0000,1000.0000,202.0000,700);
INSERT INTO oc_order_product VALUES(23,11,31,'Hydrangea','Product 4',1,80.0000,80.0000,0.0000,0);
INSERT INTO oc_order_product VALUES(24,11,44,'Freesia','Product 17',2,1000.0000,2000.0000,0.0000,1400);
INSERT INTO oc_order_product VALUES(25,12,31,'Hydrangea','Product 4',1,80.0000,80.0000,0.0000,0);
INSERT INTO oc_order_product VALUES(26,12,44,'Freesia','Product 17',2,1000.0000,2000.0000,0.0000,1400);
INSERT INTO oc_order_product VALUES(27,13,28,'Tees','Product 1',1,90.0000,90.0000,20.0000,400);
INSERT INTO oc_order_product VALUES(28,13,29,'Slim t-shirt','Product 2',2,279.9900,559.9800,57.9980,0);
INSERT INTO oc_order_product VALUES(29,13,36,'Top','Product 9',1,50.0000,50.0000,12.0000,0);
INSERT INTO oc_order_product VALUES(30,13,36,'Top','Product 9',1,50.0000,50.0000,12.0000,0);
INSERT INTO oc_order_product VALUES(31,13,40,'Pink T-shirt','product 11',1,101.0000,101.0000,22.2000,0);
INSERT INTO oc_order_product VALUES(32,13,40,'Pink T-shirt','product 11',1,101.0000,101.0000,22.2000,0);
INSERT INTO oc_order_product VALUES(33,13,44,'White T-shirt','Product 17',2,50.0000,100.0000,12.0000,1400);
INSERT INTO oc_order_product VALUES(34,13,46,'Blue &amp; White','Product 19',2,50.0000,100.0000,12.0000,0);
INSERT INTO oc_order_product VALUES(35,13,48,'Dress','product 20',2,5.0000,10.0000,3.0000,0);
INSERT INTO oc_order_product VALUES(36,14,28,'Tees','Product 1',1,90.0000,90.0000,20.0000,400);
INSERT INTO oc_order_product VALUES(37,14,29,'Slim t-shirt','Product 2',1,279.9900,279.9900,57.9980,0);
INSERT INTO oc_order_product VALUES(38,14,32,'Print Top','Product 5',2,100.0000,200.0000,22.0000,0);
INSERT INTO oc_order_product VALUES(39,14,33,'Printed','Product 6',1,200.0000,200.0000,42.0000,0);
INSERT INTO oc_order_product VALUES(40,14,34,'Short','Product 7',1,100.0000,100.0000,22.0000,0);
INSERT INTO oc_order_product VALUES(41,14,36,'Top','Product 9',2,50.0000,100.0000,12.0000,0);
INSERT INTO oc_order_product VALUES(42,14,40,'Pink T-shirt','product 11',2,101.0000,202.0000,22.2000,0);
INSERT INTO oc_order_product VALUES(43,14,41,'Rebook','Product 14',1,50.0000,50.0000,12.0000,0);
INSERT INTO oc_order_product VALUES(44,14,44,'White T-shirt','Product 17',1,50.0000,50.0000,12.0000,700);
INSERT INTO oc_order_product VALUES(45,14,46,'Blue &amp; White','Product 19',1,50.0000,50.0000,12.0000,0);



DROP TABLE IF EXISTS `oc_order_recurring`;

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_order_recurring_transaction`;

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`),
  KEY `order_recurring_id` (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_order_shipment`;

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_shipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_order_status`;

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

INSERT INTO oc_order_status VALUES(2,1,'Processing');
INSERT INTO oc_order_status VALUES(3,1,'Shipped');
INSERT INTO oc_order_status VALUES(7,1,'Canceled');
INSERT INTO oc_order_status VALUES(5,1,'Complete');
INSERT INTO oc_order_status VALUES(8,1,'Denied');
INSERT INTO oc_order_status VALUES(9,1,'Canceled Reversal');
INSERT INTO oc_order_status VALUES(10,1,'Failed');
INSERT INTO oc_order_status VALUES(11,1,'Refunded');
INSERT INTO oc_order_status VALUES(12,1,'Reversed');
INSERT INTO oc_order_status VALUES(13,1,'Chargeback');
INSERT INTO oc_order_status VALUES(1,1,'Pending');
INSERT INTO oc_order_status VALUES(16,1,'Voided');
INSERT INTO oc_order_status VALUES(15,1,'Processed');
INSERT INTO oc_order_status VALUES(14,1,'Expired');
INSERT INTO oc_order_status VALUES(2,4,'Processing');
INSERT INTO oc_order_status VALUES(3,4,'Shipped');
INSERT INTO oc_order_status VALUES(7,4,'Canceled');
INSERT INTO oc_order_status VALUES(5,4,'Complete');
INSERT INTO oc_order_status VALUES(8,4,'Denied');
INSERT INTO oc_order_status VALUES(9,4,'Canceled Reversal');
INSERT INTO oc_order_status VALUES(10,4,'Failed');
INSERT INTO oc_order_status VALUES(11,4,'Refunded');
INSERT INTO oc_order_status VALUES(12,4,'Reversed');
INSERT INTO oc_order_status VALUES(13,4,'Chargeback');
INSERT INTO oc_order_status VALUES(1,4,'Pending');
INSERT INTO oc_order_status VALUES(16,4,'Voided');
INSERT INTO oc_order_status VALUES(15,4,'Processed');
INSERT INTO oc_order_status VALUES(14,4,'Expired');
INSERT INTO oc_order_status VALUES(2,7,'Processing');
INSERT INTO oc_order_status VALUES(3,7,'Shipped');
INSERT INTO oc_order_status VALUES(7,7,'Canceled');
INSERT INTO oc_order_status VALUES(5,7,'Complete');
INSERT INTO oc_order_status VALUES(8,7,'Denied');
INSERT INTO oc_order_status VALUES(9,7,'Canceled Reversal');
INSERT INTO oc_order_status VALUES(10,7,'Failed');
INSERT INTO oc_order_status VALUES(11,7,'Refunded');
INSERT INTO oc_order_status VALUES(12,7,'Reversed');
INSERT INTO oc_order_status VALUES(13,7,'Chargeback');
INSERT INTO oc_order_status VALUES(1,7,'Pending');
INSERT INTO oc_order_status VALUES(16,7,'Voided');
INSERT INTO oc_order_status VALUES(15,7,'Processed');
INSERT INTO oc_order_status VALUES(14,7,'Expired');



DROP TABLE IF EXISTS `oc_order_total`;

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`),
  KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

INSERT INTO oc_order_total VALUES(1,1,'sub_total','Sub-Total',80.0000,1);
INSERT INTO oc_order_total VALUES(2,1,'shipping','Flat Shipping Rate',5.0000,3);
INSERT INTO oc_order_total VALUES(3,1,'tax','Eco Tax (-2.00)',4.0000,5);
INSERT INTO oc_order_total VALUES(4,1,'tax','VAT (20%)',17.0000,5);
INSERT INTO oc_order_total VALUES(5,1,'total','Total',106.0000,9);
INSERT INTO oc_order_total VALUES(6,2,'sub_total','Sub-Total',681.0000,1);
INSERT INTO oc_order_total VALUES(7,2,'shipping','Flat Shipping Rate',5.0000,3);
INSERT INTO oc_order_total VALUES(8,2,'tax','Eco Tax (-2.00)',8.0000,5);
INSERT INTO oc_order_total VALUES(9,2,'tax','VAT (20%)',137.2000,5);
INSERT INTO oc_order_total VALUES(10,2,'total','Total',831.2000,9);
INSERT INTO oc_order_total VALUES(11,3,'sub_total','Sub-Total',681.0000,1);
INSERT INTO oc_order_total VALUES(12,3,'shipping','Flat Shipping Rate',5.0000,3);
INSERT INTO oc_order_total VALUES(13,3,'tax','Eco Tax (-2.00)',8.0000,5);
INSERT INTO oc_order_total VALUES(14,3,'tax','VAT (20%)',137.2000,5);
INSERT INTO oc_order_total VALUES(15,3,'total','Total',831.2000,9);
INSERT INTO oc_order_total VALUES(16,4,'sub_total','Sub-Total',1282.0000,1);
INSERT INTO oc_order_total VALUES(17,4,'shipping','Flat Shipping Rate',5.0000,3);
INSERT INTO oc_order_total VALUES(18,4,'total','Total',1287.0000,9);
INSERT INTO oc_order_total VALUES(19,5,'sub_total','Sub-Total',101.0000,1);
INSERT INTO oc_order_total VALUES(20,5,'shipping','Flat Shipping Rate',5.0000,3);
INSERT INTO oc_order_total VALUES(21,5,'tax','Eco Tax (-2.00)',4.0000,5);
INSERT INTO oc_order_total VALUES(22,5,'tax','VAT (20%)',21.2000,5);
INSERT INTO oc_order_total VALUES(23,5,'total','Total',131.2000,9);
INSERT INTO oc_order_total VALUES(24,6,'sub_total','Sub-Total',2362.0000,1);
INSERT INTO oc_order_total VALUES(25,6,'shipping','Flat Shipping Rate',5.0000,3);
INSERT INTO oc_order_total VALUES(26,6,'tax','Eco Tax (-2.00)',14.0000,5);
INSERT INTO oc_order_total VALUES(27,6,'tax','VAT (20%)',473.4000,5);
INSERT INTO oc_order_total VALUES(28,6,'total','Total',2854.4000,9);
INSERT INTO oc_order_total VALUES(29,7,'sub_total','Sub-Total',2362.0000,1);
INSERT INTO oc_order_total VALUES(30,7,'shipping','Flat Shipping Rate',5.0000,3);
INSERT INTO oc_order_total VALUES(31,7,'tax','Eco Tax (-2.00)',14.0000,5);
INSERT INTO oc_order_total VALUES(32,7,'tax','VAT (20%)',473.4000,5);
INSERT INTO oc_order_total VALUES(33,7,'total','Total',2854.4000,9);
INSERT INTO oc_order_total VALUES(34,8,'sub_total','Sub-Total',202.0000,1);
INSERT INTO oc_order_total VALUES(35,8,'shipping','Flat Shipping Rate',5.0000,3);
INSERT INTO oc_order_total VALUES(36,8,'total','Total',207.0000,9);
INSERT INTO oc_order_total VALUES(37,9,'sub_total','Sub-Total',1199.9900,1);
INSERT INTO oc_order_total VALUES(38,9,'shipping','Flat Shipping Rate',5.0000,3);
INSERT INTO oc_order_total VALUES(39,9,'total','Total',1204.9900,9);
INSERT INTO oc_order_total VALUES(40,10,'sub_total','Sub-Total',1080.0000,1);
INSERT INTO oc_order_total VALUES(41,10,'shipping','Flat Shipping Rate',5.0000,3);
INSERT INTO oc_order_total VALUES(42,10,'tax','Eco Tax (-2.00)',6.0000,5);
INSERT INTO oc_order_total VALUES(43,10,'tax','VAT (20%)',217.0000,5);
INSERT INTO oc_order_total VALUES(44,10,'total','Total',1308.0000,9);
INSERT INTO oc_order_total VALUES(45,11,'sub_total','Sub-Total',2080.0000,1);
INSERT INTO oc_order_total VALUES(46,11,'shipping','Flat Shipping Rate',5.0000,3);
INSERT INTO oc_order_total VALUES(47,11,'total','Total',2085.0000,9);
INSERT INTO oc_order_total VALUES(48,12,'sub_total','????????',2080.0000,1);
INSERT INTO oc_order_total VALUES(49,12,'shipping','????? ????? ?????',5.0000,3);
INSERT INTO oc_order_total VALUES(50,12,'total','???????? ???????',2085.0000,9);
INSERT INTO oc_order_total VALUES(51,13,'sub_total','Sub-Total',1161.9800,1);
INSERT INTO oc_order_total VALUES(52,13,'shipping','Flat Shipping Rate',5.0000,3);
INSERT INTO oc_order_total VALUES(53,13,'tax','Eco Tax (-2.00)',28.0000,5);
INSERT INTO oc_order_total VALUES(54,13,'tax','VAT (20%)',233.3960,5);
INSERT INTO oc_order_total VALUES(55,13,'total','Total',1428.3760,9);
INSERT INTO oc_order_total VALUES(56,14,'sub_total','Sub-Total',1321.9900,1);
INSERT INTO oc_order_total VALUES(57,14,'shipping','Flat Shipping Rate',5.0000,3);
INSERT INTO oc_order_total VALUES(58,14,'tax','Eco Tax (-2.00)',28.0000,5);
INSERT INTO oc_order_total VALUES(59,14,'tax','VAT (20%)',265.3980,5);
INSERT INTO oc_order_total VALUES(60,14,'total','Total',1620.3880,9);



DROP TABLE IF EXISTS `oc_order_voucher`;

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`),
  KEY `order_id` (`order_id`),
  KEY `voucher_id` (`voucher_id`),
  KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_product`;

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

INSERT INTO oc_product VALUES(28,'Product 1','','','','','','','',937,7,'catalog/themefactory/product/1.jpg',5,1,100.0000,200,9,'2018-06-01',146.40000000,2,0.00000000,0.00000000,0.00000000,1,1,1,0,1,3,'2019-06-01 16:06:50','2019-08-30 21:52:21');
INSERT INTO oc_product VALUES(29,'Product 2','','','','','','','',996,6,'catalog/themefactory/product/2.jpg',6,1,279.9900,0,9,'2019-06-01',133.00000000,2,0.00000000,0.00000000,0.00000000,3,1,1,0,1,1,'2019-06-01 16:06:50','2019-08-30 21:52:13');
INSERT INTO oc_product VALUES(30,'Product 3','','','','','','','',500,6,'catalog/themefactory/product/3.jpg',9,1,100.0000,0,9,'2018-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,3,'2019-06-01 16:06:50','2019-08-30 21:51:08');
INSERT INTO oc_product VALUES(31,'Product 4','','','','','','','',998,6,'catalog/themefactory/product/4.jpg',7,1,80.0000,0,9,'2019-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,3,1,1,0,1,1,'2019-06-01 16:06:50','2019-08-30 21:51:01');
INSERT INTO oc_product VALUES(32,'Product 5','','','','','','','',997,6,'catalog/themefactory/product/5.jpg',8,1,100.0000,0,9,'2018-06-01',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2019-06-01 16:06:50','2019-08-30 21:51:24');
INSERT INTO oc_product VALUES(33,'Product 6','','','','','','','',999,6,'catalog/themefactory/product/6.jpg',8,1,200.0000,0,9,'2019-06-01',5.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2019-06-01 16:06:50','2019-08-30 21:51:36');
INSERT INTO oc_product VALUES(34,'Product 7','','','','','','','',999,6,'catalog/themefactory/product/7.jpg',6,1,100.0000,0,9,'2018-06-01',5.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2019-06-01 16:06:50','2019-08-30 21:51:53');
INSERT INTO oc_product VALUES(35,'Product 8','','','','','','','',1000,5,'catalog/themefactory/product/8.jpg',7,0,100.0000,0,9,'2019-06-01',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,1,'2019-06-01 16:06:50','2019-08-30 21:50:53');
INSERT INTO oc_product VALUES(36,'Product 9','','','','','','','',990,6,'catalog/themefactory/product/9.jpg',8,0,100.0000,100,9,'2018-06-01',5.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2019-06-01 16:06:50','2019-08-30 21:52:29');
INSERT INTO oc_product VALUES(40,'product 11','','','','','','','',962,5,'catalog/themefactory/product/10.jpg',8,1,101.0000,0,9,'2019-06-01',10.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2019-06-01 16:06:50','2019-08-30 21:51:16');
INSERT INTO oc_product VALUES(41,'Product 14','','','','','','','',976,5,'catalog/themefactory/product/11.jpg',8,1,100.0000,0,9,'2018-06-01',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2019-06-01 16:06:50','2019-08-30 21:49:50');
INSERT INTO oc_product VALUES(42,'Product 15','','','','','','','',990,5,'catalog/themefactory/product/12.jpg',7,1,100.0000,400,9,'2019-06-01',12.50000000,1,1.00000000,2.00000000,3.00000000,1,1,2,0,1,1,'2019-06-01 16:06:50','2019-08-30 21:50:28');
INSERT INTO oc_product VALUES(43,'Product 16','','','','','','','',927,5,'catalog/themefactory/product/13.jpg',9,0,500.0000,0,9,'2018-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2019-06-01 16:06:50','2019-08-30 21:50:21');
INSERT INTO oc_product VALUES(44,'Product 17','','','','','','','',995,5,'catalog/themefactory/product/14.jpg',8,1,1000.0000,0,9,'2019-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2019-06-01 16:06:50','2019-08-30 21:52:50');
INSERT INTO oc_product VALUES(45,'Product 18','','','','','','','',998,5,'catalog/themefactory/product/15.jpg',8,1,2000.0000,0,0,'2018-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2019-06-01 16:06:50','2019-08-30 21:50:45');
INSERT INTO oc_product VALUES(46,'Product 19','','','','','','','',997,5,'catalog/themefactory/product/16.jpg',5,1,1000.0000,0,9,'2019-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2019-06-01 16:06:50','2019-08-30 21:52:03');
INSERT INTO oc_product VALUES(47,'Product 21','','','','','','','',1000,5,'catalog/themefactory/product/17.jpg',6,1,100.0000,400,9,'2018-06-01',1.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,2,'2019-06-01 16:06:50','2019-08-30 21:52:38');
INSERT INTO oc_product VALUES(48,'product 20','test 1','','','','','','test 2',993,5,'catalog/themefactory/product/18.jpg',10,1,100.0000,0,9,'2019-06-01',1.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,2,'2019-06-01 16:06:50','2019-08-30 21:50:35');
INSERT INTO oc_product VALUES(49,'SAM1','','','','','','','',1000,8,'catalog/themefactory/product/18.jpg',10,1,199.9900,0,9,'2018-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2019-06-01 16:06:50','2019-08-30 21:51:45');



DROP TABLE IF EXISTS `oc_product_attribute`;

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_product_attribute VALUES(43,2,1,1);
INSERT INTO oc_product_attribute VALUES(42,3,1,'100mhz');
INSERT INTO oc_product_attribute VALUES(47,2,1,4);
INSERT INTO oc_product_attribute VALUES(42,3,7,'100mhz');
INSERT INTO oc_product_attribute VALUES(47,2,7,4);
INSERT INTO oc_product_attribute VALUES(43,2,7,1);
INSERT INTO oc_product_attribute VALUES(47,4,1,'16GB');
INSERT INTO oc_product_attribute VALUES(43,4,1,'8gb');
INSERT INTO oc_product_attribute VALUES(47,4,7,'16GB');
INSERT INTO oc_product_attribute VALUES(43,4,7,'8gb');



DROP TABLE IF EXISTS `oc_product_description`;

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_product_description VALUES(44,1,'Braeburn Apples Loose','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','Yellow,Red,White,Pink','White T-shirt','','');
INSERT INTO oc_product_description VALUES(44,7,'????? ????? ????? ????','&lt;div&gt;\r\n\r\nMacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n\r\n','????? ????? ????? ????','????? ????? ????? ????','','');
INSERT INTO oc_product_description VALUES(45,1,'Braeburn Apples Loose','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','Yellow,Red,White,Pink','Gray T-shirt','','');
INSERT INTO oc_product_description VALUES(45,7,'?? ???? ?????','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','????? ????? ????? ????','?? ???? ?????','','');
INSERT INTO oc_product_description VALUES(29,1,'Braeburn Apples Loose','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','Yellow,Red,White,Pink','Slim t-shirt','','');
INSERT INTO oc_product_description VALUES(29,7,'???? ????','&lt;p&gt;\r\n\r\nRedefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n\r\n&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n&lt;li&gt;\r\n\r\nWindows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nQualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\n320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nHSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nTri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nQuad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\n802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nBuilt-in GPS&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nBluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\n256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\n2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nRemovable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nUp to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nMicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nMicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\n3.5mm stereo headset jack&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\n60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n','????? ????? ????? ????','???? ????','','');
INSERT INTO oc_product_description VALUES(36,1,'Braeburn Apples Loose','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','Yellow,Red,White,Pink','Top','','');
INSERT INTO oc_product_description VALUES(36,7,'????','&lt;div&gt;\r\n\r\n&lt;p&gt;\r\n\r\n&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n\r\nIts the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n\r\n&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n\r\nBrowse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n\r\n&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n\r\nExperience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n\r\n&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n\r\nWith an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n\r\n&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n\r\nAvailable as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n\r\n&lt;/div&gt;\r\n\r\n','????? ????? ????? ????','????','','');
INSERT INTO oc_product_description VALUES(46,1,'Braeburn Apples Loose','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','Yellow,Red,White,Pink','Blue &amp; White','','');
INSERT INTO oc_product_description VALUES(46,7,'Sivaless T-shirt','&lt;div&gt;\r\n\r\nUnprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n\r\n','????? ????? ????? ????','???? ????','','');
INSERT INTO oc_product_description VALUES(41,1,'Braeburn Apples Loose','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','Yellow,Red,White,Pink','Rebook','','');
INSERT INTO oc_product_description VALUES(41,7,'Rebook','&lt;div&gt;\r\n\r\nJust when you thought iMac had everything, now there?s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ?08, and it?s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n\r\n','????? ????? ????? ????','Rebook','','');
INSERT INTO oc_product_description VALUES(34,1,'Braeburn Apples Loose','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','Yellow,Red,White,Pink','Short','','');
INSERT INTO oc_product_description VALUES(34,7,'?????','&lt;div&gt;\r\n\r\n&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n\r\n&lt;p&gt;\r\n\r\nClip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n\r\n&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n\r\nWith iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n\r\n&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n\r\n&lt;p&gt;\r\n\r\nCharge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n\r\n&lt;/div&gt;\r\n\r\n','????? ????? ????? ????','?????','','');
INSERT INTO oc_product_description VALUES(43,1,'Braeburn Apples Loose','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','Yellow,Red,White,Pink','Nasturtium','','');
INSERT INTO oc_product_description VALUES(43,7,'???? ????','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','????? ????? ????? ????','???? ????','','');
INSERT INTO oc_product_description VALUES(31,1,'Braeburn Apples Loose','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','Yellow,Red,White,Pink','Black &amp; Yellow','','');
INSERT INTO oc_product_description VALUES(31,7,'Linning Tshirt','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n\r\n&lt;div&gt;\r\n\r\nEngineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n\r\n&lt;br /&gt;\r\n\r\nSimilar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n\r\n&lt;br /&gt;\r\n\r\nThe D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n\r\n&lt;br /&gt;\r\n\r\nThe D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n\r\n&lt;/div&gt;\r\n\r\n&lt;!-- cpt_container_end --&gt;','????? ????? ????? ????','???? ????','','');
INSERT INTO oc_product_description VALUES(48,1,'Braeburn Apples Loose','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','Yellow,Red,White,Pink','Dress','','');
INSERT INTO oc_product_description VALUES(48,7,'?????','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','????? ????? ????? ????','?????','','');
INSERT INTO oc_product_description VALUES(28,1,'Braeburn Apples Loose','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','Yellow,Red,White,Pink','Tees','','');
INSERT INTO oc_product_description VALUES(28,7,'????????','&lt;p&gt;\r\n\r\nHTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n\r\n&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n&lt;li&gt;\r\n\r\nProcessor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nWindows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nMemory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nDimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\n3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nHSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nQuad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nDevice Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nGPS and A-GPS ready&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nBluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nWi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nHTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\n5 megapixel color camera with auto focus&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nVGA CMOS color camera&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nBuilt-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nRing tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\n40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nRechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nExpansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nAC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n\r\n&lt;li&gt;\r\n\r\nSpecial Features: FM Radio, G-Sensor&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n','????? ????? ????? ????','Violet','','');
INSERT INTO oc_product_description VALUES(49,1,'Braeburn Apples Loose','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','Yellow,Red,White,Pink','Black T-shirt','','');
INSERT INTO oc_product_description VALUES(49,7,'Sandal','&lt;p&gt;???? ?? ???? ??????? ???????? ? ????? ????? ?????? ?? ????????? ???? ?? ???? ??????? ??? ???? ???? ? ????? ???? ??????? ??? ??????? ??????? ??????????? (??????) ? ?? ?? ???? ?? ??????? ??????. ???? ?? ????? ??????? ????? ?? ????? ???????? ?? ??????? ?????? ??????? ?????? ???? ????? ???? ?????. ???? ??? ??? ?? ??? ??????? ???? ????? ????? ? ??? ????? ?????? ??? ???? ???? ?? ??? ???????.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p&gt;??? ???? ???? ? ????? ???? ????? ??????? ? ?? ??? ????? ??????? ??? ??? ???? ????? ???????? ?? ???????? ?? ?????? ?? ?????? ? ????? ?? ?????? ?????? ?? ??????? ? ??? ???? ?????? ????. ?? ??? ????? ? ???? ??????? ?? ???? ???????? ????????? ???? ???? ????? ??????? ?????? ??????? ????? ? ????? ?? &quot;??????? ???????&quot; ??? ?????? ????? ??????? ?????????? ????????.&lt;/p&gt;','????? ????? ????? ????','???? ????','','');
INSERT INTO oc_product_description VALUES(42,1,'Braeburn Apples Loose','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','Yellow,Red,White,Pink','Casual','','');
INSERT INTO oc_product_description VALUES(42,7,'????','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','????? ????? ????? ????','????','','');
INSERT INTO oc_product_description VALUES(33,1,'Braeburn Apples Loose','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','Yellow,Red,White,Pink','Printed','','');
INSERT INTO oc_product_description VALUES(33,7,'?????','&lt;p class=&quot;intro&quot;&gt;\r\n\r\n??????? ????? ?? ?????? ?? ??????? ????????? ?? ??????? ????????? ??????? ? ?? ?????? ???????? ????? ????? ?? ??? ??????? ????????? ?? ?????????? ? ????? ???? ???? ?????? ???????? ????????? ???????? ???????. ????? ????????? ?????? ???????? (???????? ??????????) ??? ??????? ????? ??????? ?? ????? ??????? ????? ? ???? ??? ????? ???? ???? ????? ??? ???????? ??? ???????. ?? ?????? ?????????? ? ?????? ?? ???? ??????? ?????? ??????? ????? ?? ????? ?? ??????? ?????. [&lt;/p&gt;\r\n\r\n','????? ????? ????? ????','?????','','');
INSERT INTO oc_product_description VALUES(35,1,'Braeburn Apples Loose','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','Yellow,Red,White,Pink','Lining t-shirt','','');
INSERT INTO oc_product_description VALUES(35,7,'????? ?? ????','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','????? ????? ????? ????','????? ?? ????','','');
INSERT INTO oc_product_description VALUES(30,1,'Braeburn Apples Loose','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','Yellow,Red,White,Pink','One-Pieces','','');
INSERT INTO oc_product_description VALUES(30,7,'???? ????','&lt;p&gt;\r\n\r\nCanon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) ??&lt;/p&gt;\r\n\r\n','????? ????? ????? ????','???? ????','','');
INSERT INTO oc_product_description VALUES(40,1,'Braeburn Apples Loose','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','Yellow,Red,White,Pink','Pink T-shirt','','');
INSERT INTO oc_product_description VALUES(40,7,'???? ????','&lt;p class=&quot;intro&quot;&gt;\r\n\r\n??????? ????? ?? ?????? ?? ??????? ????????? ?? ??????? ????????? ??????? ? ?? ?????? ???????? ????? ????? ?? ??? ??????? ????????? ?? ?????????? ? ????? ???? ???? ?????? ???????? ????????? ???????? ???????. ????? ????????? ?????? ???????? (???????? ??????????) ??? ??????? ????? ??????? ?? ????? ??????? ????? ? ???? ??? ????? ???? ???? ????? ??? ???????? ??? ???????. ?? ?????? ?????????? ? ?????? ?? ???? ??????? ?????? ??????? ????? ?? ????? ?? ??????? ?????. [&lt;/p&gt;\r\n\r\n','','???? ????','','');
INSERT INTO oc_product_description VALUES(32,1,'Braeburn Apples Loose','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','Yellow,Red,White,Pink','Print Top','','');
INSERT INTO oc_product_description VALUES(32,7,'????? ????','&lt;p&gt;\r\n\r\n&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n\r\niPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n\r\n&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n\r\nWatch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n\r\n&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n\r\nShop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n\r\n&lt;p&gt;\r\n\r\n&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n\r\nBrowse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n\r\n&amp;nbsp;&lt;/p&gt;\r\n\r\n','????? ????? ????? ????','????? ????','','');
INSERT INTO oc_product_description VALUES(47,1,'Braeburn Apples Loose','When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...When you see those huge, tumbling, beautifully-flowering hanging baskets in open gardens, outside pubs or...','Yellow,Red,White,Pink','Blue jersey','','');
INSERT INTO oc_product_description VALUES(47,7,'Wall Shoes','&lt;p&gt;\r\n\r\nStop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n\r\n','????? ????? ????? ????','?????? ??????','','');



DROP TABLE IF EXISTS `oc_product_discount`;

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=498 DEFAULT CHARSET=utf8;

INSERT INTO oc_product_discount VALUES(497,42,1,30,1,66.0000,'0000-00-00','0000-00-00');
INSERT INTO oc_product_discount VALUES(496,42,1,20,1,77.0000,'0000-00-00','0000-00-00');
INSERT INTO oc_product_discount VALUES(495,42,1,10,1,88.0000,'0000-00-00','0000-00-00');



DROP TABLE IF EXISTS `oc_product_filter`;

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_product_filter VALUES(28,2);
INSERT INTO oc_product_filter VALUES(28,4);
INSERT INTO oc_product_filter VALUES(28,5);
INSERT INTO oc_product_filter VALUES(28,6);
INSERT INTO oc_product_filter VALUES(29,4);
INSERT INTO oc_product_filter VALUES(29,5);
INSERT INTO oc_product_filter VALUES(29,6);
INSERT INTO oc_product_filter VALUES(29,7);
INSERT INTO oc_product_filter VALUES(30,4);
INSERT INTO oc_product_filter VALUES(30,5);
INSERT INTO oc_product_filter VALUES(30,8);
INSERT INTO oc_product_filter VALUES(30,9);
INSERT INTO oc_product_filter VALUES(31,1);
INSERT INTO oc_product_filter VALUES(31,4);
INSERT INTO oc_product_filter VALUES(31,5);
INSERT INTO oc_product_filter VALUES(31,9);
INSERT INTO oc_product_filter VALUES(32,4);
INSERT INTO oc_product_filter VALUES(32,6);
INSERT INTO oc_product_filter VALUES(32,8);
INSERT INTO oc_product_filter VALUES(32,9);
INSERT INTO oc_product_filter VALUES(33,4);
INSERT INTO oc_product_filter VALUES(33,5);
INSERT INTO oc_product_filter VALUES(33,6);
INSERT INTO oc_product_filter VALUES(33,7);
INSERT INTO oc_product_filter VALUES(34,4);
INSERT INTO oc_product_filter VALUES(34,5);
INSERT INTO oc_product_filter VALUES(34,6);
INSERT INTO oc_product_filter VALUES(34,9);
INSERT INTO oc_product_filter VALUES(35,1);
INSERT INTO oc_product_filter VALUES(35,5);
INSERT INTO oc_product_filter VALUES(35,6);
INSERT INTO oc_product_filter VALUES(35,9);
INSERT INTO oc_product_filter VALUES(36,2);
INSERT INTO oc_product_filter VALUES(36,4);
INSERT INTO oc_product_filter VALUES(36,9);
INSERT INTO oc_product_filter VALUES(40,2);
INSERT INTO oc_product_filter VALUES(40,4);
INSERT INTO oc_product_filter VALUES(40,5);
INSERT INTO oc_product_filter VALUES(40,6);
INSERT INTO oc_product_filter VALUES(40,10);
INSERT INTO oc_product_filter VALUES(40,11);
INSERT INTO oc_product_filter VALUES(41,6);
INSERT INTO oc_product_filter VALUES(41,7);
INSERT INTO oc_product_filter VALUES(41,10);
INSERT INTO oc_product_filter VALUES(41,11);
INSERT INTO oc_product_filter VALUES(42,4);
INSERT INTO oc_product_filter VALUES(42,5);
INSERT INTO oc_product_filter VALUES(42,6);
INSERT INTO oc_product_filter VALUES(42,8);
INSERT INTO oc_product_filter VALUES(43,3);
INSERT INTO oc_product_filter VALUES(43,5);
INSERT INTO oc_product_filter VALUES(43,6);
INSERT INTO oc_product_filter VALUES(43,10);
INSERT INTO oc_product_filter VALUES(43,11);
INSERT INTO oc_product_filter VALUES(44,2);
INSERT INTO oc_product_filter VALUES(44,4);
INSERT INTO oc_product_filter VALUES(44,5);
INSERT INTO oc_product_filter VALUES(45,5);
INSERT INTO oc_product_filter VALUES(45,6);
INSERT INTO oc_product_filter VALUES(45,8);
INSERT INTO oc_product_filter VALUES(45,10);
INSERT INTO oc_product_filter VALUES(46,2);
INSERT INTO oc_product_filter VALUES(46,4);
INSERT INTO oc_product_filter VALUES(46,5);
INSERT INTO oc_product_filter VALUES(46,6);
INSERT INTO oc_product_filter VALUES(46,10);
INSERT INTO oc_product_filter VALUES(46,11);
INSERT INTO oc_product_filter VALUES(47,3);
INSERT INTO oc_product_filter VALUES(47,4);
INSERT INTO oc_product_filter VALUES(47,10);
INSERT INTO oc_product_filter VALUES(47,11);
INSERT INTO oc_product_filter VALUES(48,4);
INSERT INTO oc_product_filter VALUES(48,5);
INSERT INTO oc_product_filter VALUES(48,6);
INSERT INTO oc_product_filter VALUES(48,8);
INSERT INTO oc_product_filter VALUES(48,9);
INSERT INTO oc_product_filter VALUES(49,1);
INSERT INTO oc_product_filter VALUES(49,4);
INSERT INTO oc_product_filter VALUES(49,5);
INSERT INTO oc_product_filter VALUES(49,9);



DROP TABLE IF EXISTS `oc_product_image`;

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3339 DEFAULT CHARSET=utf8;

INSERT INTO oc_product_image VALUES(3272,30,'catalog/themefactory/product/14.jpg',0);
INSERT INTO oc_product_image VALUES(3288,33,'catalog/themefactory/product/14.jpg',0);
INSERT INTO oc_product_image VALUES(3302,34,'catalog/themefactory/product/6.jpg',0);
INSERT INTO oc_product_image VALUES(3236,43,'catalog/themefactory/product/14.jpg',0);
INSERT INTO oc_product_image VALUES(3235,43,'catalog/themefactory/product/15.jpg',0);
INSERT INTO oc_product_image VALUES(3252,45,'catalog/themefactory/product/10.jpg',0);
INSERT INTO oc_product_image VALUES(3314,29,'catalog/themefactory/product/16.jpg',0);
INSERT INTO oc_product_image VALUES(3230,41,'catalog/themefactory/product/9.jpg',0);
INSERT INTO oc_product_image VALUES(3248,48,'catalog/themefactory/product/4.jpg',0);
INSERT INTO oc_product_image VALUES(3247,48,'catalog/themefactory/product/5.jpg',0);
INSERT INTO oc_product_image VALUES(3332,47,'catalog/themefactory/product/7.jpg',0);
INSERT INTO oc_product_image VALUES(3324,36,'catalog/themefactory/product/11.jpg',0);
INSERT INTO oc_product_image VALUES(3325,36,'catalog/themefactory/product/16.jpg',0);
INSERT INTO oc_product_image VALUES(3271,30,'catalog/themefactory/product/13.jpg',0);
INSERT INTO oc_product_image VALUES(3234,43,'catalog/themefactory/product/17.jpg',0);
INSERT INTO oc_product_image VALUES(3266,31,'catalog/themefactory/product/12.jpg',0);
INSERT INTO oc_product_image VALUES(3308,46,'catalog/themefactory/product/9.jpg',0);
INSERT INTO oc_product_image VALUES(3307,46,'catalog/themefactory/product/4.jpg',0);
INSERT INTO oc_product_image VALUES(3260,35,'catalog/themefactory/product/15.jpg',0);
INSERT INTO oc_product_image VALUES(3296,49,'catalog/themefactory/product/3.jpg',0);
INSERT INTO oc_product_image VALUES(3295,49,'catalog/themefactory/product/2.jpg',0);
INSERT INTO oc_product_image VALUES(3294,49,'catalog/themefactory/product/1.jpg',0);
INSERT INTO oc_product_image VALUES(3240,42,'catalog/themefactory/product/8.jpg',0);
INSERT INTO oc_product_image VALUES(3241,42,'catalog/themefactory/product/16.jpg',0);
INSERT INTO oc_product_image VALUES(3331,47,'catalog/themefactory/product/3.jpg',0);
INSERT INTO oc_product_image VALUES(3229,41,'catalog/themefactory/product/18.jpg',0);
INSERT INTO oc_product_image VALUES(3338,44,'catalog/themefactory/product/12.jpg',0);
INSERT INTO oc_product_image VALUES(3265,31,'catalog/themefactory/product/11.jpg',0);
INSERT INTO oc_product_image VALUES(3330,47,'catalog/themefactory/product/6.jpg',0);
INSERT INTO oc_product_image VALUES(3228,41,'catalog/themefactory/product/1.jpg',0);
INSERT INTO oc_product_image VALUES(3277,40,'catalog/themefactory/product/2.jpg',0);
INSERT INTO oc_product_image VALUES(3264,31,'catalog/themefactory/product/16.jpg',0);
INSERT INTO oc_product_image VALUES(3313,29,'catalog/themefactory/product/15.jpg',0);
INSERT INTO oc_product_image VALUES(3270,30,'catalog/themefactory/product/17.jpg',0);
INSERT INTO oc_product_image VALUES(3320,28,'catalog/themefactory/product/10.jpg',0);
INSERT INTO oc_product_image VALUES(3246,48,'catalog/themefactory/product/2.jpg',0);
INSERT INTO oc_product_image VALUES(3290,33,'catalog/themefactory/product/7.jpg',0);
INSERT INTO oc_product_image VALUES(3289,33,'catalog/themefactory/product/8.jpg',0);
INSERT INTO oc_product_image VALUES(3259,35,'catalog/themefactory/product/4.jpg',0);
INSERT INTO oc_product_image VALUES(3242,42,'catalog/themefactory/product/18.jpg',0);
INSERT INTO oc_product_image VALUES(3258,35,'catalog/themefactory/product/12.jpg',0);
INSERT INTO oc_product_image VALUES(3301,34,'catalog/themefactory/product/13.jpg',0);
INSERT INTO oc_product_image VALUES(3337,44,'catalog/themefactory/product/6.jpg',0);
INSERT INTO oc_product_image VALUES(3300,34,'catalog/themefactory/product/5.jpg',0);
INSERT INTO oc_product_image VALUES(3319,28,'catalog/themefactory/product/17.jpg',0);
INSERT INTO oc_product_image VALUES(3306,46,'catalog/themefactory/product/8.jpg',0);
INSERT INTO oc_product_image VALUES(3318,28,'catalog/themefactory/product/18.jpg',0);
INSERT INTO oc_product_image VALUES(3336,44,'catalog/themefactory/product/13.jpg',0);
INSERT INTO oc_product_image VALUES(3282,32,'catalog/themefactory/product/15.jpg',0);
INSERT INTO oc_product_image VALUES(3312,29,'catalog/themefactory/product/18.jpg',0);
INSERT INTO oc_product_image VALUES(3284,32,'catalog/themefactory/product/9.jpg',0);
INSERT INTO oc_product_image VALUES(3254,45,'catalog/themefactory/product/5.jpg',0);
INSERT INTO oc_product_image VALUES(3253,45,'catalog/themefactory/product/11.jpg',0);
INSERT INTO oc_product_image VALUES(3278,40,'catalog/themefactory/product/17.jpg',0);
INSERT INTO oc_product_image VALUES(3283,32,'catalog/themefactory/product/10.jpg',0);
INSERT INTO oc_product_image VALUES(3276,40,'catalog/themefactory/product/10.jpg',0);
INSERT INTO oc_product_image VALUES(3326,36,'catalog/themefactory/product/3.jpg',0);



DROP TABLE IF EXISTS `oc_product_option`;

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`),
  KEY `product_id` (`product_id`),
  KEY `option_id` (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;

INSERT INTO oc_product_option VALUES(224,35,11,'',1);
INSERT INTO oc_product_option VALUES(225,47,12,'2011-04-22',1);
INSERT INTO oc_product_option VALUES(222,42,7,'',1);
INSERT INTO oc_product_option VALUES(226,30,5,'',1);
INSERT INTO oc_product_option VALUES(219,42,8,'2011-02-20',1);
INSERT INTO oc_product_option VALUES(217,42,5,'',1);
INSERT INTO oc_product_option VALUES(218,42,1,'',1);
INSERT INTO oc_product_option VALUES(223,42,2,'',1);
INSERT INTO oc_product_option VALUES(209,42,6,'',1);
INSERT INTO oc_product_option VALUES(220,42,10,'2011-02-20 22:25',1);
INSERT INTO oc_product_option VALUES(221,42,9,'22:25',1);
INSERT INTO oc_product_option VALUES(208,42,4,'test',1);



DROP TABLE IF EXISTS `oc_product_option_value`;

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`),
  KEY `product_option_id` (`product_option_id`),
  KEY `product_id` (`product_id`),
  KEY `option_id` (`option_id`),
  KEY `option_value_id` (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

INSERT INTO oc_product_option_value VALUES(2,217,42,5,41,200,0,2.0000,'+',0,'+',2.00000000,'+');
INSERT INTO oc_product_option_value VALUES(7,218,42,1,43,300,1,30.0000,'+',3,'+',30.00000000,'+');
INSERT INTO oc_product_option_value VALUES(1,217,42,5,40,100,0,1.0000,'+',0,'+',1.00000000,'+');
INSERT INTO oc_product_option_value VALUES(16,226,30,5,40,5,1,0.0000,'+',0,'+',0.00000000,'+');
INSERT INTO oc_product_option_value VALUES(15,226,30,5,39,0,1,0.0000,'+',0,'+',0.00000000,'+');
INSERT INTO oc_product_option_value VALUES(4,217,42,5,39,92,1,4.0000,'+',0,'+',4.00000000,'+');
INSERT INTO oc_product_option_value VALUES(14,224,35,11,48,15,1,15.0000,'+',0,'+',0.00000000,'+');
INSERT INTO oc_product_option_value VALUES(6,218,42,1,31,146,1,20.0000,'+',2,'-',20.00000000,'+');
INSERT INTO oc_product_option_value VALUES(13,224,35,11,47,10,1,10.0000,'+',0,'+',0.00000000,'+');
INSERT INTO oc_product_option_value VALUES(3,217,42,5,39,300,1,3.0000,'+',0,'+',3.00000000,'+');
INSERT INTO oc_product_option_value VALUES(5,218,42,1,32,96,1,10.0000,'+',1,'+',10.00000000,'+');
INSERT INTO oc_product_option_value VALUES(11,223,42,2,45,3998,1,40.0000,'+',0,'+',40.00000000,'+');
INSERT INTO oc_product_option_value VALUES(12,224,35,11,46,0,1,5.0000,'+',0,'+',0.00000000,'+');
INSERT INTO oc_product_option_value VALUES(10,223,42,2,44,2696,1,30.0000,'+',0,'+',30.00000000,'+');
INSERT INTO oc_product_option_value VALUES(9,223,42,2,24,194,1,20.0000,'+',0,'+',20.00000000,'+');
INSERT INTO oc_product_option_value VALUES(8,223,42,2,23,48,1,10.0000,'+',0,'+',10.00000000,'+');



DROP TABLE IF EXISTS `oc_product_recurring`;

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_product_related`;

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_product_related VALUES(28,28);
INSERT INTO oc_product_related VALUES(28,29);
INSERT INTO oc_product_related VALUES(28,43);
INSERT INTO oc_product_related VALUES(28,49);
INSERT INTO oc_product_related VALUES(29,28);
INSERT INTO oc_product_related VALUES(29,30);
INSERT INTO oc_product_related VALUES(29,35);
INSERT INTO oc_product_related VALUES(29,36);
INSERT INTO oc_product_related VALUES(29,42);
INSERT INTO oc_product_related VALUES(29,45);
INSERT INTO oc_product_related VALUES(29,48);
INSERT INTO oc_product_related VALUES(29,49);
INSERT INTO oc_product_related VALUES(30,29);
INSERT INTO oc_product_related VALUES(30,30);
INSERT INTO oc_product_related VALUES(30,33);
INSERT INTO oc_product_related VALUES(30,34);
INSERT INTO oc_product_related VALUES(30,35);
INSERT INTO oc_product_related VALUES(30,41);
INSERT INTO oc_product_related VALUES(30,42);
INSERT INTO oc_product_related VALUES(30,45);
INSERT INTO oc_product_related VALUES(30,48);
INSERT INTO oc_product_related VALUES(31,31);
INSERT INTO oc_product_related VALUES(31,34);
INSERT INTO oc_product_related VALUES(31,35);
INSERT INTO oc_product_related VALUES(31,42);
INSERT INTO oc_product_related VALUES(31,43);
INSERT INTO oc_product_related VALUES(31,46);
INSERT INTO oc_product_related VALUES(31,47);
INSERT INTO oc_product_related VALUES(31,49);
INSERT INTO oc_product_related VALUES(32,43);
INSERT INTO oc_product_related VALUES(32,45);
INSERT INTO oc_product_related VALUES(32,46);
INSERT INTO oc_product_related VALUES(32,47);
INSERT INTO oc_product_related VALUES(33,30);
INSERT INTO oc_product_related VALUES(33,35);
INSERT INTO oc_product_related VALUES(33,40);
INSERT INTO oc_product_related VALUES(33,42);
INSERT INTO oc_product_related VALUES(33,43);
INSERT INTO oc_product_related VALUES(33,44);
INSERT INTO oc_product_related VALUES(33,46);
INSERT INTO oc_product_related VALUES(34,30);
INSERT INTO oc_product_related VALUES(34,31);
INSERT INTO oc_product_related VALUES(34,42);
INSERT INTO oc_product_related VALUES(34,44);
INSERT INTO oc_product_related VALUES(34,45);
INSERT INTO oc_product_related VALUES(34,46);
INSERT INTO oc_product_related VALUES(34,48);
INSERT INTO oc_product_related VALUES(35,29);
INSERT INTO oc_product_related VALUES(35,30);
INSERT INTO oc_product_related VALUES(35,31);
INSERT INTO oc_product_related VALUES(35,33);
INSERT INTO oc_product_related VALUES(35,44);
INSERT INTO oc_product_related VALUES(35,46);
INSERT INTO oc_product_related VALUES(35,47);
INSERT INTO oc_product_related VALUES(35,48);
INSERT INTO oc_product_related VALUES(35,49);
INSERT INTO oc_product_related VALUES(36,29);
INSERT INTO oc_product_related VALUES(36,36);
INSERT INTO oc_product_related VALUES(36,40);
INSERT INTO oc_product_related VALUES(36,43);
INSERT INTO oc_product_related VALUES(36,49);
INSERT INTO oc_product_related VALUES(40,33);
INSERT INTO oc_product_related VALUES(40,36);
INSERT INTO oc_product_related VALUES(40,40);
INSERT INTO oc_product_related VALUES(40,42);
INSERT INTO oc_product_related VALUES(40,43);
INSERT INTO oc_product_related VALUES(40,46);
INSERT INTO oc_product_related VALUES(40,47);
INSERT INTO oc_product_related VALUES(41,30);
INSERT INTO oc_product_related VALUES(41,42);
INSERT INTO oc_product_related VALUES(41,44);
INSERT INTO oc_product_related VALUES(41,45);
INSERT INTO oc_product_related VALUES(41,46);
INSERT INTO oc_product_related VALUES(42,29);
INSERT INTO oc_product_related VALUES(42,30);
INSERT INTO oc_product_related VALUES(42,31);
INSERT INTO oc_product_related VALUES(42,33);
INSERT INTO oc_product_related VALUES(42,34);
INSERT INTO oc_product_related VALUES(42,40);
INSERT INTO oc_product_related VALUES(42,41);
INSERT INTO oc_product_related VALUES(42,45);
INSERT INTO oc_product_related VALUES(42,47);
INSERT INTO oc_product_related VALUES(42,48);
INSERT INTO oc_product_related VALUES(42,49);
INSERT INTO oc_product_related VALUES(43,28);
INSERT INTO oc_product_related VALUES(43,31);
INSERT INTO oc_product_related VALUES(43,32);
INSERT INTO oc_product_related VALUES(43,33);
INSERT INTO oc_product_related VALUES(43,36);
INSERT INTO oc_product_related VALUES(43,40);
INSERT INTO oc_product_related VALUES(43,45);
INSERT INTO oc_product_related VALUES(44,33);
INSERT INTO oc_product_related VALUES(44,34);
INSERT INTO oc_product_related VALUES(44,35);
INSERT INTO oc_product_related VALUES(44,41);
INSERT INTO oc_product_related VALUES(44,46);
INSERT INTO oc_product_related VALUES(44,49);
INSERT INTO oc_product_related VALUES(45,29);
INSERT INTO oc_product_related VALUES(45,30);
INSERT INTO oc_product_related VALUES(45,32);
INSERT INTO oc_product_related VALUES(45,34);
INSERT INTO oc_product_related VALUES(45,41);
INSERT INTO oc_product_related VALUES(45,42);
INSERT INTO oc_product_related VALUES(45,43);
INSERT INTO oc_product_related VALUES(45,46);
INSERT INTO oc_product_related VALUES(45,47);
INSERT INTO oc_product_related VALUES(45,48);
INSERT INTO oc_product_related VALUES(46,31);
INSERT INTO oc_product_related VALUES(46,32);
INSERT INTO oc_product_related VALUES(46,33);
INSERT INTO oc_product_related VALUES(46,34);
INSERT INTO oc_product_related VALUES(46,35);
INSERT INTO oc_product_related VALUES(46,40);
INSERT INTO oc_product_related VALUES(46,41);
INSERT INTO oc_product_related VALUES(46,44);
INSERT INTO oc_product_related VALUES(46,45);
INSERT INTO oc_product_related VALUES(46,47);
INSERT INTO oc_product_related VALUES(47,31);
INSERT INTO oc_product_related VALUES(47,32);
INSERT INTO oc_product_related VALUES(47,35);
INSERT INTO oc_product_related VALUES(47,40);
INSERT INTO oc_product_related VALUES(47,42);
INSERT INTO oc_product_related VALUES(47,45);
INSERT INTO oc_product_related VALUES(47,46);
INSERT INTO oc_product_related VALUES(47,47);
INSERT INTO oc_product_related VALUES(47,48);
INSERT INTO oc_product_related VALUES(47,49);
INSERT INTO oc_product_related VALUES(48,29);
INSERT INTO oc_product_related VALUES(48,30);
INSERT INTO oc_product_related VALUES(48,34);
INSERT INTO oc_product_related VALUES(48,35);
INSERT INTO oc_product_related VALUES(48,42);
INSERT INTO oc_product_related VALUES(48,45);
INSERT INTO oc_product_related VALUES(48,47);
INSERT INTO oc_product_related VALUES(48,48);
INSERT INTO oc_product_related VALUES(49,28);
INSERT INTO oc_product_related VALUES(49,29);
INSERT INTO oc_product_related VALUES(49,31);
INSERT INTO oc_product_related VALUES(49,35);
INSERT INTO oc_product_related VALUES(49,36);
INSERT INTO oc_product_related VALUES(49,42);
INSERT INTO oc_product_related VALUES(49,44);
INSERT INTO oc_product_related VALUES(49,47);



DROP TABLE IF EXISTS `oc_product_reward`;

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_group_id` (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=682 DEFAULT CHARSET=utf8;

INSERT INTO oc_product_reward VALUES(669,42,1,100);
INSERT INTO oc_product_reward VALUES(679,47,1,300);
INSERT INTO oc_product_reward VALUES(677,28,1,400);
INSERT INTO oc_product_reward VALUES(667,43,1,600);
INSERT INTO oc_product_reward VALUES(673,30,1,200);
INSERT INTO oc_product_reward VALUES(681,44,1,700);
INSERT INTO oc_product_reward VALUES(671,45,1,800);
INSERT INTO oc_product_reward VALUES(675,49,1,1000);



DROP TABLE IF EXISTS `oc_product_special`;

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_group_id` (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=582 DEFAULT CHARSET=utf8;

INSERT INTO oc_product_special VALUES(579,47,1,0,50.0000,'2019-05-25','2025-05-26');
INSERT INTO oc_product_special VALUES(567,30,1,0,80.0000,'2019-05-25','2025-05-26');
INSERT INTO oc_product_special VALUES(575,28,1,0,90.0000,'2019-05-25','2025-05-26');
INSERT INTO oc_product_special VALUES(563,41,1,1,50.0000,'2019-05-24','2022-04-28');
INSERT INTO oc_product_special VALUES(571,46,1,1,50.0000,'2019-05-25','2025-05-26');
INSERT INTO oc_product_special VALUES(577,36,1,1,50.0000,'2019-05-25','2025-05-26');
INSERT INTO oc_product_special VALUES(581,44,1,1,50.0000,'2019-06-12','2025-05-26');
INSERT INTO oc_product_special VALUES(565,45,1,1,90.0000,'2019-06-29','2020-06-30');
INSERT INTO oc_product_special VALUES(573,29,1,1,150.0000,'2019-08-13','2026-08-19');
INSERT INTO oc_product_special VALUES(569,32,1,1,90.0000,'2019-08-18','2027-08-19');



DROP TABLE IF EXISTS `oc_product_to_category`;

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_product_to_category VALUES(28,20);
INSERT INTO oc_product_to_category VALUES(28,33);
INSERT INTO oc_product_to_category VALUES(28,59);
INSERT INTO oc_product_to_category VALUES(28,60);
INSERT INTO oc_product_to_category VALUES(28,61);
INSERT INTO oc_product_to_category VALUES(28,62);
INSERT INTO oc_product_to_category VALUES(28,90);
INSERT INTO oc_product_to_category VALUES(28,91);
INSERT INTO oc_product_to_category VALUES(29,20);
INSERT INTO oc_product_to_category VALUES(29,33);
INSERT INTO oc_product_to_category VALUES(29,59);
INSERT INTO oc_product_to_category VALUES(29,60);
INSERT INTO oc_product_to_category VALUES(29,61);
INSERT INTO oc_product_to_category VALUES(29,62);
INSERT INTO oc_product_to_category VALUES(29,90);
INSERT INTO oc_product_to_category VALUES(29,91);
INSERT INTO oc_product_to_category VALUES(30,20);
INSERT INTO oc_product_to_category VALUES(30,33);
INSERT INTO oc_product_to_category VALUES(30,59);
INSERT INTO oc_product_to_category VALUES(30,60);
INSERT INTO oc_product_to_category VALUES(30,61);
INSERT INTO oc_product_to_category VALUES(30,62);
INSERT INTO oc_product_to_category VALUES(30,90);
INSERT INTO oc_product_to_category VALUES(30,91);
INSERT INTO oc_product_to_category VALUES(31,33);
INSERT INTO oc_product_to_category VALUES(31,59);
INSERT INTO oc_product_to_category VALUES(31,60);
INSERT INTO oc_product_to_category VALUES(31,61);
INSERT INTO oc_product_to_category VALUES(31,62);
INSERT INTO oc_product_to_category VALUES(31,87);
INSERT INTO oc_product_to_category VALUES(31,88);
INSERT INTO oc_product_to_category VALUES(31,92);
INSERT INTO oc_product_to_category VALUES(32,20);
INSERT INTO oc_product_to_category VALUES(32,33);
INSERT INTO oc_product_to_category VALUES(32,59);
INSERT INTO oc_product_to_category VALUES(32,60);
INSERT INTO oc_product_to_category VALUES(32,61);
INSERT INTO oc_product_to_category VALUES(32,62);
INSERT INTO oc_product_to_category VALUES(32,90);
INSERT INTO oc_product_to_category VALUES(32,91);
INSERT INTO oc_product_to_category VALUES(33,20);
INSERT INTO oc_product_to_category VALUES(33,33);
INSERT INTO oc_product_to_category VALUES(33,59);
INSERT INTO oc_product_to_category VALUES(33,60);
INSERT INTO oc_product_to_category VALUES(33,61);
INSERT INTO oc_product_to_category VALUES(33,62);
INSERT INTO oc_product_to_category VALUES(33,90);
INSERT INTO oc_product_to_category VALUES(33,91);
INSERT INTO oc_product_to_category VALUES(34,20);
INSERT INTO oc_product_to_category VALUES(34,33);
INSERT INTO oc_product_to_category VALUES(34,59);
INSERT INTO oc_product_to_category VALUES(34,60);
INSERT INTO oc_product_to_category VALUES(34,61);
INSERT INTO oc_product_to_category VALUES(34,62);
INSERT INTO oc_product_to_category VALUES(34,90);
INSERT INTO oc_product_to_category VALUES(34,91);
INSERT INTO oc_product_to_category VALUES(35,20);
INSERT INTO oc_product_to_category VALUES(35,33);
INSERT INTO oc_product_to_category VALUES(35,59);
INSERT INTO oc_product_to_category VALUES(35,60);
INSERT INTO oc_product_to_category VALUES(35,61);
INSERT INTO oc_product_to_category VALUES(35,62);
INSERT INTO oc_product_to_category VALUES(35,90);
INSERT INTO oc_product_to_category VALUES(35,91);
INSERT INTO oc_product_to_category VALUES(36,20);
INSERT INTO oc_product_to_category VALUES(36,33);
INSERT INTO oc_product_to_category VALUES(36,59);
INSERT INTO oc_product_to_category VALUES(36,60);
INSERT INTO oc_product_to_category VALUES(36,61);
INSERT INTO oc_product_to_category VALUES(36,62);
INSERT INTO oc_product_to_category VALUES(36,90);
INSERT INTO oc_product_to_category VALUES(36,91);
INSERT INTO oc_product_to_category VALUES(40,20);
INSERT INTO oc_product_to_category VALUES(40,33);
INSERT INTO oc_product_to_category VALUES(40,59);
INSERT INTO oc_product_to_category VALUES(40,60);
INSERT INTO oc_product_to_category VALUES(40,61);
INSERT INTO oc_product_to_category VALUES(40,62);
INSERT INTO oc_product_to_category VALUES(40,90);
INSERT INTO oc_product_to_category VALUES(40,91);
INSERT INTO oc_product_to_category VALUES(40,92);
INSERT INTO oc_product_to_category VALUES(41,20);
INSERT INTO oc_product_to_category VALUES(41,33);
INSERT INTO oc_product_to_category VALUES(41,59);
INSERT INTO oc_product_to_category VALUES(41,60);
INSERT INTO oc_product_to_category VALUES(41,61);
INSERT INTO oc_product_to_category VALUES(41,62);
INSERT INTO oc_product_to_category VALUES(41,90);
INSERT INTO oc_product_to_category VALUES(41,91);
INSERT INTO oc_product_to_category VALUES(42,33);
INSERT INTO oc_product_to_category VALUES(42,59);
INSERT INTO oc_product_to_category VALUES(42,60);
INSERT INTO oc_product_to_category VALUES(42,61);
INSERT INTO oc_product_to_category VALUES(42,62);
INSERT INTO oc_product_to_category VALUES(42,87);
INSERT INTO oc_product_to_category VALUES(42,88);
INSERT INTO oc_product_to_category VALUES(42,89);
INSERT INTO oc_product_to_category VALUES(42,92);
INSERT INTO oc_product_to_category VALUES(43,33);
INSERT INTO oc_product_to_category VALUES(43,59);
INSERT INTO oc_product_to_category VALUES(43,60);
INSERT INTO oc_product_to_category VALUES(43,61);
INSERT INTO oc_product_to_category VALUES(43,62);
INSERT INTO oc_product_to_category VALUES(43,87);
INSERT INTO oc_product_to_category VALUES(43,88);
INSERT INTO oc_product_to_category VALUES(43,89);
INSERT INTO oc_product_to_category VALUES(43,92);
INSERT INTO oc_product_to_category VALUES(44,20);
INSERT INTO oc_product_to_category VALUES(44,33);
INSERT INTO oc_product_to_category VALUES(44,59);
INSERT INTO oc_product_to_category VALUES(44,60);
INSERT INTO oc_product_to_category VALUES(44,61);
INSERT INTO oc_product_to_category VALUES(44,62);
INSERT INTO oc_product_to_category VALUES(44,90);
INSERT INTO oc_product_to_category VALUES(44,91);
INSERT INTO oc_product_to_category VALUES(45,33);
INSERT INTO oc_product_to_category VALUES(45,59);
INSERT INTO oc_product_to_category VALUES(45,60);
INSERT INTO oc_product_to_category VALUES(45,61);
INSERT INTO oc_product_to_category VALUES(45,62);
INSERT INTO oc_product_to_category VALUES(45,87);
INSERT INTO oc_product_to_category VALUES(45,88);
INSERT INTO oc_product_to_category VALUES(45,89);
INSERT INTO oc_product_to_category VALUES(45,92);
INSERT INTO oc_product_to_category VALUES(46,33);
INSERT INTO oc_product_to_category VALUES(46,59);
INSERT INTO oc_product_to_category VALUES(46,60);
INSERT INTO oc_product_to_category VALUES(46,61);
INSERT INTO oc_product_to_category VALUES(46,62);
INSERT INTO oc_product_to_category VALUES(46,87);
INSERT INTO oc_product_to_category VALUES(46,88);
INSERT INTO oc_product_to_category VALUES(46,89);
INSERT INTO oc_product_to_category VALUES(46,92);
INSERT INTO oc_product_to_category VALUES(47,33);
INSERT INTO oc_product_to_category VALUES(47,59);
INSERT INTO oc_product_to_category VALUES(47,60);
INSERT INTO oc_product_to_category VALUES(47,61);
INSERT INTO oc_product_to_category VALUES(47,62);
INSERT INTO oc_product_to_category VALUES(47,87);
INSERT INTO oc_product_to_category VALUES(47,88);
INSERT INTO oc_product_to_category VALUES(47,89);
INSERT INTO oc_product_to_category VALUES(47,92);
INSERT INTO oc_product_to_category VALUES(48,33);
INSERT INTO oc_product_to_category VALUES(48,59);
INSERT INTO oc_product_to_category VALUES(48,60);
INSERT INTO oc_product_to_category VALUES(48,61);
INSERT INTO oc_product_to_category VALUES(48,62);
INSERT INTO oc_product_to_category VALUES(48,87);
INSERT INTO oc_product_to_category VALUES(48,88);
INSERT INTO oc_product_to_category VALUES(48,89);
INSERT INTO oc_product_to_category VALUES(48,92);
INSERT INTO oc_product_to_category VALUES(49,33);
INSERT INTO oc_product_to_category VALUES(49,59);
INSERT INTO oc_product_to_category VALUES(49,60);
INSERT INTO oc_product_to_category VALUES(49,61);
INSERT INTO oc_product_to_category VALUES(49,62);
INSERT INTO oc_product_to_category VALUES(49,87);
INSERT INTO oc_product_to_category VALUES(49,88);
INSERT INTO oc_product_to_category VALUES(49,89);
INSERT INTO oc_product_to_category VALUES(49,92);



DROP TABLE IF EXISTS `oc_product_to_download`;

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_product_to_layout`;

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`),
  KEY `layout_id` (`layout_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_product_to_layout VALUES(42,0,0);
INSERT INTO oc_product_to_layout VALUES(30,0,0);
INSERT INTO oc_product_to_layout VALUES(47,0,0);
INSERT INTO oc_product_to_layout VALUES(28,0,0);
INSERT INTO oc_product_to_layout VALUES(41,0,0);
INSERT INTO oc_product_to_layout VALUES(48,0,0);
INSERT INTO oc_product_to_layout VALUES(36,0,0);
INSERT INTO oc_product_to_layout VALUES(34,0,0);
INSERT INTO oc_product_to_layout VALUES(32,0,0);
INSERT INTO oc_product_to_layout VALUES(43,0,0);
INSERT INTO oc_product_to_layout VALUES(44,0,0);
INSERT INTO oc_product_to_layout VALUES(45,0,0);
INSERT INTO oc_product_to_layout VALUES(49,0,0);
INSERT INTO oc_product_to_layout VALUES(33,0,0);
INSERT INTO oc_product_to_layout VALUES(40,0,0);
INSERT INTO oc_product_to_layout VALUES(46,0,0);
INSERT INTO oc_product_to_layout VALUES(31,0,0);
INSERT INTO oc_product_to_layout VALUES(29,0,0);
INSERT INTO oc_product_to_layout VALUES(35,0,0);



DROP TABLE IF EXISTS `oc_product_to_store`;

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_product_to_store VALUES(28,0);
INSERT INTO oc_product_to_store VALUES(29,0);
INSERT INTO oc_product_to_store VALUES(30,0);
INSERT INTO oc_product_to_store VALUES(31,0);
INSERT INTO oc_product_to_store VALUES(32,0);
INSERT INTO oc_product_to_store VALUES(33,0);
INSERT INTO oc_product_to_store VALUES(34,0);
INSERT INTO oc_product_to_store VALUES(35,0);
INSERT INTO oc_product_to_store VALUES(36,0);
INSERT INTO oc_product_to_store VALUES(40,0);
INSERT INTO oc_product_to_store VALUES(41,0);
INSERT INTO oc_product_to_store VALUES(42,0);
INSERT INTO oc_product_to_store VALUES(43,0);
INSERT INTO oc_product_to_store VALUES(44,0);
INSERT INTO oc_product_to_store VALUES(45,0);
INSERT INTO oc_product_to_store VALUES(46,0);
INSERT INTO oc_product_to_store VALUES(47,0);
INSERT INTO oc_product_to_store VALUES(48,0);
INSERT INTO oc_product_to_store VALUES(49,0);



DROP TABLE IF EXISTS `oc_recurring`;

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_recurring_description`;

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_return`;

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `email` (`email`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO oc_return VALUES(1,4,0,3,'demo','demo','demo@demo.com',8866902013,'Yellow Loosestrife','Product 3',1,0,1,0,2,'','2019-05-17','2019-06-05 22:31:45','2019-06-05 22:31:45');



DROP TABLE IF EXISTS `oc_return_action`;

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO oc_return_action VALUES(1,1,'Refunded');
INSERT INTO oc_return_action VALUES(2,1,'Credit Issued');
INSERT INTO oc_return_action VALUES(3,1,'Replacement Sent');
INSERT INTO oc_return_action VALUES(1,4,'Refunded');
INSERT INTO oc_return_action VALUES(2,4,'Credit Issued');
INSERT INTO oc_return_action VALUES(3,4,'Replacement Sent');
INSERT INTO oc_return_action VALUES(1,7,'Refunded');
INSERT INTO oc_return_action VALUES(2,7,'Credit Issued');
INSERT INTO oc_return_action VALUES(3,7,'Replacement Sent');



DROP TABLE IF EXISTS `oc_return_history`;

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`),
  KEY `return_id` (`return_id`),
  KEY `return_status_id` (`return_status_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_return_reason`;

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO oc_return_reason VALUES(1,1,'Dead On Arrival');
INSERT INTO oc_return_reason VALUES(2,1,'Received Wrong Item');
INSERT INTO oc_return_reason VALUES(3,1,'Order Error');
INSERT INTO oc_return_reason VALUES(4,1,'Faulty, please supply details');
INSERT INTO oc_return_reason VALUES(5,1,'Other, please supply details');
INSERT INTO oc_return_reason VALUES(1,4,'Dead On Arrival');
INSERT INTO oc_return_reason VALUES(2,4,'Received Wrong Item');
INSERT INTO oc_return_reason VALUES(3,4,'Order Error');
INSERT INTO oc_return_reason VALUES(4,4,'Faulty, please supply details');
INSERT INTO oc_return_reason VALUES(5,4,'Other, please supply details');
INSERT INTO oc_return_reason VALUES(1,7,'Dead On Arrival');
INSERT INTO oc_return_reason VALUES(2,7,'Received Wrong Item');
INSERT INTO oc_return_reason VALUES(3,7,'Order Error');
INSERT INTO oc_return_reason VALUES(4,7,'Faulty, please supply details');
INSERT INTO oc_return_reason VALUES(5,7,'Other, please supply details');



DROP TABLE IF EXISTS `oc_return_status`;

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO oc_return_status VALUES(1,1,'Pending');
INSERT INTO oc_return_status VALUES(3,1,'Complete');
INSERT INTO oc_return_status VALUES(2,1,'Awaiting Products');
INSERT INTO oc_return_status VALUES(1,4,'Pending');
INSERT INTO oc_return_status VALUES(3,4,'Complete');
INSERT INTO oc_return_status VALUES(2,4,'Awaiting Products');
INSERT INTO oc_return_status VALUES(1,7,'Pending');
INSERT INTO oc_return_status VALUES(3,7,'Complete');
INSERT INTO oc_return_status VALUES(2,7,'Awaiting Products');



DROP TABLE IF EXISTS `oc_review`;

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

INSERT INTO oc_review VALUES(1,43,0,'Nagino','Pistol were able to assist us with organising branded t-shirts for our company. \r\nThe website was super simple to use and we were able to get them produced very quickly, which is exactly what we',5,1,'2019-06-02 02:14:22','2019-07-06 00:50:32');
INSERT INTO oc_review VALUES(2,42,0,'Navro','I Keep coming back.. I',5,1,'2019-06-20 23:43:19','2019-07-06 00:50:07');
INSERT INTO oc_review VALUES(3,31,0,'Naktino','Not tryna flex but this girl is a gold member of Yesstyle kekekek. Bruv, honestly I love love love 90% of the products ordered from here. It\'s not easy to find an online shopping ground where you can',5,1,'2019-07-05 00:51:02','0000-00-00 00:00:00');
INSERT INTO oc_review VALUES(4,31,0,'Magan','My daughters bought me a navy Ooodie, I loved it so much I bought a Corgi Ooodie for my 84 year old mother and two more for my daughters, the Unicorn and the Sloth. I was a little dissapointed in the',5,1,'2019-06-25 00:51:25','0000-00-00 00:00:00');
INSERT INTO oc_review VALUES(5,49,0,'Chhagan','I\'m so happy with the range and availability of the products at this store. I\'m also happy with the service, product and postage. I will be buying from them',5,1,'2019-02-13 00:52:11','0000-00-00 00:00:00');
INSERT INTO oc_review VALUES(6,42,0,'Match','amazing costumer service &amp; fast shipping! not to mention the clothes I received were amazing! true to size &amp; don',5,1,'2019-06-24 00:52:49','0000-00-00 00:00:00');
INSERT INTO oc_review VALUES(7,28,0,'Bapu','Every item of clothing I have purchased at Merrylands has been great.  Product range is good.  Good quality, reasonable price.  It\'s my first \'go to\' shop.  I Love Forcast',5,1,'2019-05-29 00:53:23','0000-00-00 00:00:00');
INSERT INTO oc_review VALUES(8,28,0,'Jalebi','I have now been using Birdsnest for two years.  Fast service, great website they send to a lovely note with each purchase quick &amp; easy returning. Do not hesitate to use this site.  They are terrific.',5,1,'2019-02-13 00:54:04','0000-00-00 00:00:00');
INSERT INTO oc_review VALUES(9,36,0,'Gando','I had used ezibuy multiple times and I can honestly say I have had a problem every time. The sizing is ridiculously out of whack so you have to return items which then incur return post fees. I do',5,1,'2019-06-24 00:54:36','0000-00-00 00:00:00');
INSERT INTO oc_review VALUES(10,36,0,'Lalo','I love these silk shirts. They feel so good on my skin. They are soft and breathable. I wear them almost everyday. They come in beautiful colours and simple design,  and it\'s so easy to match them up',5,1,'2019-06-26 00:55:17','0000-00-00 00:00:00');
INSERT INTO oc_review VALUES(11,43,0,'Jago','Disgusting customer service she is a liar and i cant believe she runs her business this way! I bought a dress with a discount code and when it arrived i needed to exchange it for a size smaller, so i',5,1,'2019-06-25 00:55:58','0000-00-00 00:00:00');
INSERT INTO oc_review VALUES(12,49,0,'Magno','One of my favourite clothing boutiques for sure! I love the materials of all the clothes I',5,1,'2019-06-12 00:56:36','0000-00-00 00:00:00');
INSERT INTO oc_review VALUES(13,44,0,'Nano','One of my favourite clothing boutiques for sure! I love the materials of all the clothes I',5,1,'2019-05-29 00:53:23','0000-00-00 00:00:00');
INSERT INTO oc_review VALUES(14,44,0,'Ramlo','Purchasing shoes online comes with certain risk as sizing, cut, comfort is hard to gauge with photos. I decided to take a plunge and ordered my first pair. Love at first sight; they are comfortable',5,1,'2019-06-13 00:58:02','0000-00-00 00:00:00');
INSERT INTO oc_review VALUES(15,45,0,'Sodyo','Absolutely in love with the dress I purchased from chiffon Boutique for a wedding. Such good quality and fast postage. Had so many complements on the dress!! Will definitely be purchasing from them',5,1,'2019-06-24 00:52:49','0000-00-00 00:00:00');
INSERT INTO oc_review VALUES(16,45,0,'Tiya','This dress was perfect for my prom! It was exactly what I was looking for. The material is high quality and the fit is beyond perfect! The shop has a variety of beautiful and unique dresses. I will',5,1,'2019-02-13 00:54:04','0000-00-00 00:00:00');
INSERT INTO oc_review VALUES(17,32,0,'nauy','This dress was perfect for my prom! It was exactly what I was looking for. The material is high quality and the fit is beyond perfect! The shop has a variety of beautiful and unique dresses. I will',5,1,'2019-06-25 00:51:25','0000-00-00 00:00:00');
INSERT INTO oc_review VALUES(18,32,0,'Riya','This dress was perfect for my prom! It was exactly what I was looking for. The material is high quality and the fit is beyond perfect! The shop has a variety of beautiful and unique dresses. I will',5,1,'2019-06-24 00:52:49','0000-00-00 00:00:00');



DROP TABLE IF EXISTS `oc_seo_url`;

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`seo_url_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=1227 DEFAULT CHARSET=utf8;

INSERT INTO oc_seo_url VALUES(1192,0,1,'product_id=48','ipod-classic');
INSERT INTO oc_seo_url VALUES(1226,0,1,'category_id=20','desktops');
INSERT INTO oc_seo_url VALUES(1053,0,1,'manufacturer_id=8','apple');
INSERT INTO oc_seo_url VALUES(1146,0,1,'information_id=4','about_us');
INSERT INTO oc_seo_url VALUES(1190,0,1,'product_id=42','test');
INSERT INTO oc_seo_url VALUES(1224,0,1,'category_id=33','camera');
INSERT INTO oc_seo_url VALUES(1200,0,1,'product_id=30','canon-eos-5d');
INSERT INTO oc_seo_url VALUES(1220,0,1,'product_id=47','hp-lp3065');
INSERT INTO oc_seo_url VALUES(1216,0,1,'product_id=28','htc-touch-hd');
INSERT INTO oc_seo_url VALUES(1188,0,1,'product_id=43','macbook');
INSERT INTO oc_seo_url VALUES(1222,0,1,'product_id=44','macbook-air');
INSERT INTO oc_seo_url VALUES(1194,0,1,'product_id=45','macbook-pro');
INSERT INTO oc_seo_url VALUES(1198,0,1,'product_id=31','nikon-d300');
INSERT INTO oc_seo_url VALUES(1214,0,1,'product_id=29','palm-treo-pro');
INSERT INTO oc_seo_url VALUES(1196,0,1,'product_id=35','product-8');
INSERT INTO oc_seo_url VALUES(1208,0,1,'product_id=49','samsung-galaxy-tab-10-1');
INSERT INTO oc_seo_url VALUES(1206,0,1,'product_id=33','samsung-syncmaster-941bw');
INSERT INTO oc_seo_url VALUES(1212,0,1,'product_id=46','sony-vaio');
INSERT INTO oc_seo_url VALUES(1186,0,1,'product_id=41','imac');
INSERT INTO oc_seo_url VALUES(1202,0,1,'product_id=40','iphone');
INSERT INTO oc_seo_url VALUES(1218,0,1,'product_id=36','ipod-nano');
INSERT INTO oc_seo_url VALUES(1210,0,1,'product_id=34','ipod-shuffle');
INSERT INTO oc_seo_url VALUES(1204,0,1,'product_id=32','ipod-touch');
INSERT INTO oc_seo_url VALUES(1054,0,1,'manufacturer_id=9','canon');
INSERT INTO oc_seo_url VALUES(1057,0,1,'manufacturer_id=5','htc');
INSERT INTO oc_seo_url VALUES(1056,0,1,'manufacturer_id=7','hewlett-packard');
INSERT INTO oc_seo_url VALUES(1060,0,1,'manufacturer_id=6','palm');
INSERT INTO oc_seo_url VALUES(1059,0,1,'manufacturer_id=10','sony');
INSERT INTO oc_seo_url VALUES(841,0,1,'information_id=6','delivery');
INSERT INTO oc_seo_url VALUES(842,0,1,'information_id=3','privacy');
INSERT INTO oc_seo_url VALUES(843,0,1,'information_id=5','terms');



DROP TABLE IF EXISTS `oc_session`;

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO oc_session VALUES('002ad09811f27d1c826077ab9e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 14:25:51');
INSERT INTO oc_session VALUES('00852a85f1466a7afa139290f8','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:41:08');
INSERT INTO oc_session VALUES('01138d9bf13818e52353ca327a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 18:11:09');
INSERT INTO oc_session VALUES('01c460b1ba49e94c50fcc8fa97','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-05 17:41:21');
INSERT INTO oc_session VALUES('0310f13a44a44fe7b30b7ba7e6','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:15:05');
INSERT INTO oc_session VALUES('0346b114ccddeb2cd1d0960d49','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 12:49:12');
INSERT INTO oc_session VALUES('03535ecfe6e51d2927b55e3e61','{\"user_id\":\"1\",\"user_token\":\"RkKmsJx0bq4pugradBf2tVNOKwq0WJsC\",\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 18:47:44');
INSERT INTO oc_session VALUES('03e13e474099226011a99db90c','false','2019-06-02 00:14:15');
INSERT INTO oc_session VALUES('04c95d096578d37d881e5e85c9','{\"user_id\":\"1\",\"user_token\":\"PHb7u34pFqTx2f593SdKV4NV2aMgfwM7\",\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-05-23 19:16:50');
INSERT INTO oc_session VALUES('04ca5c2e7b26dd48268e2e623f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 17:45:53');
INSERT INTO oc_session VALUES('04d03f4cc8c0d714fe1e43b458','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-09-01 10:00:26');
INSERT INTO oc_session VALUES('04f4949d9c802fa29c3fb19ab2','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-17 15:43:22');
INSERT INTO oc_session VALUES('0507d0d30ff13598ded9c90a62','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-07 19:06:49');
INSERT INTO oc_session VALUES('0520fddeec64488d07aac8e1bb','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"IuYr1K0VYiJyAMHPTk8cIP3g0iUfLmTm\",\"wishlist\":[\"44\"],\"compare\":[\"44\"]}','2019-05-31 19:27:43');
INSERT INTO oc_session VALUES('0574c9ef3ac69d25b390bdef33','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 15:47:22');
INSERT INTO oc_session VALUES('062d3a0cbd504d960e7a3a363d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 17:10:53');
INSERT INTO oc_session VALUES('067b39d6af5825699234114f3c','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"c3AQKaMl9NZcE0RkHGTSIubp7hVRpaLk\",\"wishlist\":[\"45\"],\"compare\":[\"45\",\"40\",\"32\"]}','2019-07-16 12:17:44');
INSERT INTO oc_session VALUES('06b5db91bfc3a75e667af7ca83','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 17:46:31');
INSERT INTO oc_session VALUES('06be3be132e0a386abb6c2c9a5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:08:16');
INSERT INTO oc_session VALUES('06ce71797c9b96bdc09475a5ec','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 18:56:20');
INSERT INTO oc_session VALUES('06f5e4988d3d33128a09bfb584','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-18 08:44:16');
INSERT INTO oc_session VALUES('0768774e6f10244f14f3184daf','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 16:56:30');
INSERT INTO oc_session VALUES('0769b0ab39624e6da0d4ff6d50','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:27:27');
INSERT INTO oc_session VALUES('07ba6f0a1c14e095a4544daf82','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:00:36');
INSERT INTO oc_session VALUES('07c346c7a445f67c22a5a7cd53','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 18:48:55');
INSERT INTO oc_session VALUES('07dca445737115c4a6240599b7','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-09 17:15:19');
INSERT INTO oc_session VALUES('085f55154888631ebb933d1d4d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:51:09');
INSERT INTO oc_session VALUES('091792b1220142a9fd639223c4','{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"36\",\"42\",\"49\"],\"user_id\":\"1\",\"user_token\":\"95YaAV2jIq3Lf5vJBq5qFDBPAmHxu4NE\",\"compare\":[\"42\",\"49\"]}','2019-06-02 00:13:13');
INSERT INTO oc_session VALUES('091d28b63e93f2e32d83f6ff39','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 18:55:51');
INSERT INTO oc_session VALUES('0966b56e45c4e9c124328591a3','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 16:48:05');
INSERT INTO oc_session VALUES('0985b0ef162553b8f4ff0a5a8d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-27 17:00:36');
INSERT INTO oc_session VALUES('09f56346786c316200427e9d8e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-13 07:04:36');
INSERT INTO oc_session VALUES('0a11b7217f12c8aa768d0f9d4f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:14:25');
INSERT INTO oc_session VALUES('0a8ca82faf1d5f0cc6c8b6b8f1','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 16:59:51');
INSERT INTO oc_session VALUES('0b68d1d3fec4735574fe1bb64c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:52:52');
INSERT INTO oc_session VALUES('0b8be86207b25dca0fcf5c2d46','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:50:55');
INSERT INTO oc_session VALUES('0bb39a70135881db35327fad77','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"6RHWdMbNMfguxHVxtSEqov1GGUaP3fEc\",\"account\":\"guest\",\"guest\":{\"customer_group_id\":\"1\",\"firstname\":\"ashish\",\"lastname\":\"vekariya\",\"email\":\"ashishvekariya1906@gmail.com\",\"telephone\":\"8866902013\",\"custom_field\":[],\"shipping_address\":\"1\"},\"payment_address\":{\"firstname\":\"ashish\",\"lastname\":\"vekariya\",\"company\":\"\",\"address_1\":\"147,shiv\",\"address_2\":\"\",\"postcode\":\"395010\",\"city\":\"surat\",\"country_id\":\"218\",\"zone_id\":\"3419\",\"country\":\"Tuvalu\",\"iso_code_2\":\"TV\",\"iso_code_3\":\"TUV\",\"address_format\":\"\",\"custom_field\":[],\"zone\":\"Nanumea\",\"zone_code\":\"NME\"},\"shipping_address\":{\"firstname\":\"ashish\",\"lastname\":\"vekariya\",\"company\":\"\",\"address_1\":\"147,shiv\",\"address_2\":\"\",\"postcode\":\"395010\",\"city\":\"surat\",\"country_id\":\"218\",\"zone_id\":\"3419\",\"country\":\"Tuvalu\",\"iso_code_2\":\"TV\",\"iso_code_3\":\"TUV\",\"address_format\":\"\",\"zone\":\"Nanumea\",\"zone_code\":\"NME\",\"custom_field\":[]},\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"},\"comment\":\"\",\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"}}}','2019-05-17 19:43:55');
INSERT INTO oc_session VALUES('0c499c702fc2c6da3d4d32adaf','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-14 17:21:32');
INSERT INTO oc_session VALUES('0c757e4785a0bcd1f40efcbe4a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 17:22:22');
INSERT INTO oc_session VALUES('0d1287bc2eaae6db2670f1eaa7','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:00:39');
INSERT INTO oc_session VALUES('0d99d37b6151aefcead1b03ec9','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-08 22:39:10');
INSERT INTO oc_session VALUES('0db12e0acdf697a937f7d48eec','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 18:28:34');
INSERT INTO oc_session VALUES('0f5e32ba5389825f40a9624bb8','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 17:21:04');
INSERT INTO oc_session VALUES('0f85a096b886e225b2c1592524','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 09:35:54');
INSERT INTO oc_session VALUES('0f88b416f5fe240c0112d428aa','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 19:12:20');
INSERT INTO oc_session VALUES('1015500b13e615169004ebfd46','{\"user_id\":\"1\",\"user_token\":\"OJvwoz95t6JKa3K8JF131eLeZaqWi6jl\",\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-15 18:53:25');
INSERT INTO oc_session VALUES('102d9b5ce3d6e33f88ad6ea87d','{\"user_id\":\"1\",\"user_token\":\"bCZoU1yYnKVVkNKUnAhBHrKNjWIReNpT\",\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-02 18:57:12');
INSERT INTO oc_session VALUES('107498f7389ba9adc7d3f4ed2b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-13 08:37:39');
INSERT INTO oc_session VALUES('1091a161111d0f8318166ae629','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 08:44:41');
INSERT INTO oc_session VALUES('109cad0c56654a677a1084d85b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 18:58:54');
INSERT INTO oc_session VALUES('114e018b15b19e76e686902631','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-07 16:22:37');
INSERT INTO oc_session VALUES('11881dbedab1a9f64ccb28c62b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 17:10:51');
INSERT INTO oc_session VALUES('11c6f3a6bccdf29439d793cc11','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:41:17');
INSERT INTO oc_session VALUES('11e5c29ceb97bf6d9220f69d42','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-14 17:18:42');
INSERT INTO oc_session VALUES('12141623a4888738b8e429b10d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 15:47:12');
INSERT INTO oc_session VALUES('12bc7b2f30ac3577891a99599e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-13 08:18:30');
INSERT INTO oc_session VALUES('12f38c625d364566a2d7a50da0','{\"language\":\"en-gb\",\"currency\":\"EUR\"}','2019-06-02 09:11:19');
INSERT INTO oc_session VALUES('1313c76b97fab9ef52210fa48a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:43:49');
INSERT INTO oc_session VALUES('13b0af7f7fd1fee0f0d0275608','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-18 16:08:51');
INSERT INTO oc_session VALUES('143809987f0058846ba4f34356','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 11:20:03');
INSERT INTO oc_session VALUES('143ef4d01aeb0eb3c90ba64b0f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-15 15:56:59');
INSERT INTO oc_session VALUES('144bde4309d3280d56602c7c20','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-12 18:41:16');
INSERT INTO oc_session VALUES('1472f7a132c8e7e53165cc4938','false','2019-06-02 00:14:17');
INSERT INTO oc_session VALUES('148d7db58a2fb3bd4cadb93a70','{\"user_id\":\"1\",\"user_token\":\"6cCtk671u2PYrUDlvWFYDc4guICTID6i\",\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-27 17:38:53');
INSERT INTO oc_session VALUES('14d9fee4c560009fa23cfbdd73','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-10 15:41:09');
INSERT INTO oc_session VALUES('1528c3de5b60d4b0cde7658613','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-19 15:59:46');
INSERT INTO oc_session VALUES('1528f35362f7c3a57c64604f18','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 17:25:05');
INSERT INTO oc_session VALUES('1555bc10d53b32cdad49412309','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-13 03:53:57');
INSERT INTO oc_session VALUES('168aa7a494bda0b8dd393bd38f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 16:37:22');
INSERT INTO oc_session VALUES('16e4e329f16896127605004072','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"dop67p7gIogamOiv9YP1j5El4ihtgFVx\",\"wishlist\":[\"48\"],\"compare\":[\"48\"]}','2019-07-13 11:19:32');
INSERT INTO oc_session VALUES('1719c1115f2efc19af70e5efcf','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"edeBaJ6dqzWIQS4vDSTQrePF7NXXvAxk\"}','2019-05-25 18:25:10');
INSERT INTO oc_session VALUES('1766986cad3e559f24a3bc7a8f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-07 11:26:54');
INSERT INTO oc_session VALUES('177880f59b4bba9145acd9be71','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-18 11:43:59');
INSERT INTO oc_session VALUES('1782cf0cf30fd3d3389f9e6df0','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:06:32');
INSERT INTO oc_session VALUES('1784f26d4877dabd2e9f8f2bdb','{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"https:\\/\\/deluxeinfotech.com\\/themes\\/opencart\\/fashion_grayson_101\\/index.php?route=account\\/affiliate\"}','2019-06-24 19:38:33');
INSERT INTO oc_session VALUES('17a93dca01d70d7d09a73f1c7e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:09:03');
INSERT INTO oc_session VALUES('181b23ab23313f92fe39f376ab','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-27 19:32:10');
INSERT INTO oc_session VALUES('188147c7fa95706940099e81c5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:39:25');
INSERT INTO oc_session VALUES('1891c4d41dde10ef67148c637b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-05-28 17:38:02');
INSERT INTO oc_session VALUES('18df4b913a1ef43cbed3e42ff4','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:34:47');
INSERT INTO oc_session VALUES('19875c187fb855fd3edff9014b','{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"https:\\/\\/deluxeinfotech.com\\/themes\\/opencart\\/fashion_grayson_101\\/index.php?route=account\\/wishlist\"}','2019-06-24 19:39:25');
INSERT INTO oc_session VALUES('1a1c636db2a5c90d45ecd16f26','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-21 11:59:41');
INSERT INTO oc_session VALUES('1a288bea66bb0c5c46faca142f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 16:14:11');
INSERT INTO oc_session VALUES('1a32ca7c13aab045ab5893af88','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 17:13:19');
INSERT INTO oc_session VALUES('1a59f5e02090ffd0578b278f0d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:33:35');
INSERT INTO oc_session VALUES('1a683ec8e4d6adab4dac3ec3d6','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-09 18:35:47');
INSERT INTO oc_session VALUES('1b0f7ad2e1430ebe32694f46d9','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 17:38:36');
INSERT INTO oc_session VALUES('1b49221746ef2a92c37f91105a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:43:51');
INSERT INTO oc_session VALUES('1b5da34077ce2ef0d6bddf43e5','{\"user_id\":\"1\",\"user_token\":\"N5irgxT72Jc42Z71yAlS0gui8HXMS2MH\",\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 13:18:19');
INSERT INTO oc_session VALUES('1b5f671fd37eee8cced62bf7c3','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:36:18');
INSERT INTO oc_session VALUES('1c062bcef701b6efd8b19f6cb0','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-05 15:44:33');
INSERT INTO oc_session VALUES('1c67440d82f9c6d19d1e6b9f95','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"PkwIudrwBVNapA2CJNIugHL5tRwFgjDk\"}','2019-06-26 19:08:30');
INSERT INTO oc_session VALUES('1c6e6fe66d497e717ce1b25247','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:31:16');
INSERT INTO oc_session VALUES('1d41c35d251048725baaad85a5','{\"language\":\"en-gb\",\"currency\":\"USD\",\"account\":\"register\",\"payment_address\":{\"address_id\":\"9\",\"firstname\":\"ashish\",\"lastname\":\"vekariya\",\"company\":\"\",\"address_1\":\"147,shiv\",\"address_2\":\"\",\"postcode\":\"395010\",\"city\":\"surat\",\"zone_id\":\"3424\",\"zone\":\"Kalangala\",\"zone_code\":\"KAL\",\"country_id\":\"219\",\"country\":\"Uganda\",\"iso_code_2\":\"UG\",\"iso_code_3\":\"UGA\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"9\",\"firstname\":\"ashish\",\"lastname\":\"vekariya\",\"company\":\"\",\"address_1\":\"147,shiv\",\"address_2\":\"\",\"postcode\":\"395010\",\"city\":\"surat\",\"zone_id\":\"3424\",\"zone\":\"Kalangala\",\"zone_code\":\"KAL\",\"country_id\":\"219\",\"country\":\"Uganda\",\"iso_code_2\":\"UG\",\"iso_code_3\":\"UGA\",\"address_format\":\"\",\"custom_field\":null},\"comment\":\"\",\"order_id\":12,\"customer_id\":\"5\",\"user_id\":\"1\",\"user_token\":\"cwH9MFbf8U8AZAlLEp6KEW2AWVe7fmS7\",\"compare\":[\"44\"]}','2019-06-09 12:24:03');
INSERT INTO oc_session VALUES('1d53d788b2ca894342a7fe0cbf','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-21 17:43:09');
INSERT INTO oc_session VALUES('1dfceab57c9fc689158cfaee9e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-05 15:49:32');
INSERT INTO oc_session VALUES('1e73211d4999a958f1ab8f5d96','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"WXKIANeZ6zjuUHnfXmmphqd9SanhNRf9\",\"install\":\"DCn9CMgJJT\"}','2019-08-01 18:58:05');
INSERT INTO oc_session VALUES('1e85755040c5055843137c5052','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 16:57:57');
INSERT INTO oc_session VALUES('1f579e5dca2dc6c7aeccb8e87c','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"yjnELlSxkQuippXqRH5uUbSLpLWgxpdz\",\"success\":\"Success: You have modified layouts!\"}','2019-06-03 20:03:15');
INSERT INTO oc_session VALUES('1f593eee10df72a22e677a88d0','{\"user_id\":\"1\",\"user_token\":\"6teeT9kOGXaibxZbz32y5jzROnVLSKMY\",\"language\":\"en-gb\",\"currency\":\"USD\",\"account\":\"register\",\"customer_id\":\"3\",\"shipping_address\":{\"address_id\":\"3\",\"firstname\":\"ashish\",\"lastname\":\"vekariya\",\"company\":\"\",\"address_1\":\"147,shiv\",\"address_2\":\"\",\"postcode\":\"395010\",\"city\":\"surat\",\"zone_id\":\"3527\",\"zone\":\"Carmarthenshire\",\"zone_code\":\"CARM\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}','2019-06-30 14:06:46');
INSERT INTO oc_session VALUES('1f8ec331dec7a537022ecf6dc1','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-31 11:54:18');
INSERT INTO oc_session VALUES('2000d0916c555dcba19849f68d','{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"3\",\"shipping_address\":{\"address_id\":\"3\",\"firstname\":\"ashish\",\"lastname\":\"vekariya\",\"company\":\"\",\"address_1\":\"147,shiv\",\"address_2\":\"\",\"postcode\":\"395010\",\"city\":\"surat\",\"zone_id\":\"3527\",\"zone\":\"Carmarthenshire\",\"zone_code\":\"CARM\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}','2019-07-15 12:25:28');
INSERT INTO oc_session VALUES('2061b927bea8efc5b05d5a580b','{\"user_id\":\"1\",\"user_token\":\"eauDbEOTnKOzn5EB8jPTvNfNfUjLh215\",\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}','2019-05-15 20:23:29');
INSERT INTO oc_session VALUES('208ba0a3b18579eb0c0414afd6','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-14 19:01:02');
INSERT INTO oc_session VALUES('20cc2cff10f0f0364d902d17de','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 17:00:02');
INSERT INTO oc_session VALUES('20d9094159fd890d79eebe72a6','{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"https:\\/\\/deluxeinfotech.com\\/themes\\/opencart\\/fashion_grayson_101\\/index.php?route=account\\/address\"}','2019-06-24 19:37:59');
INSERT INTO oc_session VALUES('20e9cf0c3a3d971a84d0150692','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 20:11:42');
INSERT INTO oc_session VALUES('20fbd2ffb42f74f4dc89eb902d','{\"api_id\":\"2\",\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-30 12:38:17');
INSERT INTO oc_session VALUES('212048036ee28e7b29497baba8','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:52:49');
INSERT INTO oc_session VALUES('213a0e1d602c1572df796777da','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"teKzQMeFxTs0wIUFD3lfJow5YWzz8EvJ\"}','2019-08-08 18:53:49');
INSERT INTO oc_session VALUES('2163989745032a0f56635daea8','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:43:47');
INSERT INTO oc_session VALUES('2188c2ff429ef3f554f2dfca7a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 16:28:50');
INSERT INTO oc_session VALUES('21bccde8cd57f918da29652efc','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:29:23');
INSERT INTO oc_session VALUES('223eab3616edc12e3f27286755','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 18:59:49');
INSERT INTO oc_session VALUES('229440861195ca8cd72997180a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-30 10:01:10');
INSERT INTO oc_session VALUES('22c98953cc1696004327347d6f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 14:22:15');
INSERT INTO oc_session VALUES('22dfdff539506b0752520c7c79','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-15 07:11:08');
INSERT INTO oc_session VALUES('23701e432cb0cce2b4d18c86ed','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-19 18:01:49');
INSERT INTO oc_session VALUES('23dc94ee6c9e91fbf6b8102726','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-09 18:35:26');
INSERT INTO oc_session VALUES('243f3b4c18cc8ea9b55e28cb2f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 17:53:23');
INSERT INTO oc_session VALUES('2455345589fd9ee7d6dad46626','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:40:38');
INSERT INTO oc_session VALUES('25aecc327c13c9e9bfbb1760c9','{\"language\":\"en-gb\",\"currency\":\"EUR\"}','2019-05-29 15:58:19');
INSERT INTO oc_session VALUES('269a565a5124251a52f374f384','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 18:58:35');
INSERT INTO oc_session VALUES('2749ca43ba7b49006bf341b9b9','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 19:03:48');
INSERT INTO oc_session VALUES('28332471920c6359b0d6ad6d66','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 08:20:51');
INSERT INTO oc_session VALUES('289a2f1fc0b149c652af14ce38','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-18 11:41:13');
INSERT INTO oc_session VALUES('28d8dd999de6dbacc52fd70ba5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-13 14:26:20');
INSERT INTO oc_session VALUES('28dfcd5e92d875a822a3be7103','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 18:20:19');
INSERT INTO oc_session VALUES('292c555dd6082982815fa8e030','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 18:11:12');
INSERT INTO oc_session VALUES('2954fcf44273bf6c091ce162c9','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:21:53');
INSERT INTO oc_session VALUES('29f92ba8e69eb7ac8d00c62af9','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 18:40:32');
INSERT INTO oc_session VALUES('2a8b28cba0942db33dcad0554e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-28 13:40:40');
INSERT INTO oc_session VALUES('2aeeda99ad71a424ae3b46e8b4','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-17 14:55:57');
INSERT INTO oc_session VALUES('2bc1401f68abbb983f2edb8448','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 19:46:03');
INSERT INTO oc_session VALUES('2c321165842b22e6aae48563ca','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 18:26:41');
INSERT INTO oc_session VALUES('2c6cab3811f1250c41d4bd7eae','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 16:52:33');
INSERT INTO oc_session VALUES('2cdcce2a7f613f27b9aa6af2a9','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"L51XMxcvGEysfjuvHvrLrbmldKjxYCZB\"}','2019-08-29 18:42:37');
INSERT INTO oc_session VALUES('2ced67387562d64f4ed635e733','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 17:22:19');
INSERT INTO oc_session VALUES('2d0a2bf550c7a9aec215a5a956','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-20 08:14:51');
INSERT INTO oc_session VALUES('2e209aed11788dbc416b62d3ab','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:07:01');
INSERT INTO oc_session VALUES('2e26b2d54957c2beb40bd69a96','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-09 19:45:27');
INSERT INTO oc_session VALUES('2e801175f9c002ba7b4d86fc3b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:30:43');
INSERT INTO oc_session VALUES('2e821f38b5594eb1b17e7bcd3d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-15 12:57:53');
INSERT INTO oc_session VALUES('2ea7381d30770ee5e10b69eb0c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:21:16');
INSERT INTO oc_session VALUES('2ec3a487086071945aa3b921ce','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 19:12:22');
INSERT INTO oc_session VALUES('2f640a0b77d03d73a31b963965','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:04:31');
INSERT INTO oc_session VALUES('2f6eb079c5298dfaa89fe7dda2','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 16:13:23');
INSERT INTO oc_session VALUES('2f70b31852fde1949e40c24839','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:09:54');
INSERT INTO oc_session VALUES('2fb4d83c9a389c7e25a816d70d','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"PvcZcyZOgqcsCnxH9bj0vTZYMk5AdBvv\"}','2019-08-28 17:29:47');
INSERT INTO oc_session VALUES('2fd146a2a540d34a578193c380','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:42:13');
INSERT INTO oc_session VALUES('307bbdf2ec4dd87d3bacce3da1','{\"language\":\"en-gb\",\"currency\":\"EUR\"}','2019-05-29 19:25:36');
INSERT INTO oc_session VALUES('30b66a02e5f94fa4f2196885e8','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-17 14:55:55');
INSERT INTO oc_session VALUES('315053d3785178b77a938539f8','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-09-06 05:44:09');
INSERT INTO oc_session VALUES('31e08193ec1ffd50cb434e0aea','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:17:10');
INSERT INTO oc_session VALUES('328f705cca850a2c6572856991','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-17 16:53:11');
INSERT INTO oc_session VALUES('328fc33dc057243b15f12428ba','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 18:38:17');
INSERT INTO oc_session VALUES('333cb1dc1297dd0a913d297968','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 17:14:26');
INSERT INTO oc_session VALUES('33846427a2209bd90f1531243b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 16:47:19');
INSERT INTO oc_session VALUES('3389580520df1bec232764f183','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 19:04:10');
INSERT INTO oc_session VALUES('3405a291c2c84f0fee99c1f4ad','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 17:47:09');
INSERT INTO oc_session VALUES('345f0a1bd4d16e4ea2bf69ccd1','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:03:28');
INSERT INTO oc_session VALUES('349a2eeeb99c9653f26e6fbaff','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:24:15');
INSERT INTO oc_session VALUES('34c9ec171032ec6fcd3665b367','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 19:44:45');
INSERT INTO oc_session VALUES('34cf629bf3c14c5b47b212cbcc','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-09 18:35:49');
INSERT INTO oc_session VALUES('35279a62581960a27f8d1e244e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 18:34:08');
INSERT INTO oc_session VALUES('358208cf9ef091d9e750e35334','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:06:53');
INSERT INTO oc_session VALUES('35a23759b9bbb577576b577d14','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 16:33:02');
INSERT INTO oc_session VALUES('35f0326fc0859eba7bec6f947e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:23:13');
INSERT INTO oc_session VALUES('362f7248bb7b0967185471e38d','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"EP3aCx5Lb2Pi0vZfiTSzBi0oDzfTXIDh\",\"success\":\"Success: You have modified theme settings module!\"}','2019-08-12 18:48:13');
INSERT INTO oc_session VALUES('36c57613e7d6b060d32dc87739','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 17:54:10');
INSERT INTO oc_session VALUES('3702d3d900ca81e881aa050117','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 19:44:47');
INSERT INTO oc_session VALUES('37034efcd900b7178cd345a87f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:21:35');
INSERT INTO oc_session VALUES('3848976b5b59f2250a7a6069a8','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 16:12:40');
INSERT INTO oc_session VALUES('38a6b93e3d8690ce9733a24763','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"UnSx56ihTEwQ7nnU0KqLSQKzJgwDHkQ9\"}','2019-06-22 23:23:42');
INSERT INTO oc_session VALUES('390d404f12215e71ff1bbfb573','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 08:42:47');
INSERT INTO oc_session VALUES('393e1d025709f1ce6152f9c72e','false','2019-06-02 00:14:12');
INSERT INTO oc_session VALUES('393ea982db5a794010ac81eba7','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-15 13:51:20');
INSERT INTO oc_session VALUES('398a2cdae35ffb0e4898c7aa18','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-15 04:11:55');
INSERT INTO oc_session VALUES('39c791f5b2bed00407f588dae1','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:38:08');
INSERT INTO oc_session VALUES('3a41fabcbfacb3c7f1b7aec117','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 18:56:08');
INSERT INTO oc_session VALUES('3b0b1ffab5233d258e208e2cd8','false','2019-08-07 17:06:22');
INSERT INTO oc_session VALUES('3b5749de639e25bd3e817063ac','{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"https:\\/\\/deluxeinfotech.com\\/themes\\/opencart\\/fashion_grayson_101\\/index.php?route=account\\/account\"}','2019-06-24 19:37:46');
INSERT INTO oc_session VALUES('3be3bcbce952e00927c4af675d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:39:37');
INSERT INTO oc_session VALUES('3c569573780f67e9d5c7c079b4','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:02:19');
INSERT INTO oc_session VALUES('3c6d9bf270ee35a26271094ac0','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-05-21 17:29:14');
INSERT INTO oc_session VALUES('3d2520a55f4365dfd768570fc4','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 18:57:30');
INSERT INTO oc_session VALUES('3eebd3b5f5a32097a7e4f005e6','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 16:23:55');
INSERT INTO oc_session VALUES('3ef1c0464cc2ccf79b40a540a7','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"4NyVsv7sXDSSnxMxEsqrdOTzpYuGMZlj\"}','2019-07-08 19:27:46');
INSERT INTO oc_session VALUES('3f3aa670a9871eaa6c6b121083','{\"user_id\":\"1\",\"user_token\":\"dGJyTsBrs59S3BPtG8ooZDb2ZaAmvOQj\",\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-17 18:57:40');
INSERT INTO oc_session VALUES('3f607e369a75cd4ff6ea32dd62','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-05 15:46:47');
INSERT INTO oc_session VALUES('3f6fbc10824172cd7179de5d4c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 19:05:23');
INSERT INTO oc_session VALUES('400931946f66ad37f246763056','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-29 17:16:19');
INSERT INTO oc_session VALUES('4021d7371c6929b74ac0413e8d','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"wddiO4pvW1ojDcwKV9z9Uf0jchXo0ycZ\"}','2019-08-09 18:45:34');
INSERT INTO oc_session VALUES('407af9a5715e2a3bac6c49619c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:04:03');
INSERT INTO oc_session VALUES('40a289f21ef37b9777b8515473','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-17 15:43:19');
INSERT INTO oc_session VALUES('4164483eb17bdada447f049085','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-21 16:11:38');
INSERT INTO oc_session VALUES('41fb4849f7c697974ea3713016','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-09 09:00:03');
INSERT INTO oc_session VALUES('422a098f3bfe32a22ba7277faa','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-15 15:56:59');
INSERT INTO oc_session VALUES('4232246dd2c9d7e973b955ec2c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-13 06:18:08');
INSERT INTO oc_session VALUES('42893f061e3fb666b67eb17003','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 12:49:10');
INSERT INTO oc_session VALUES('42ddab070f04390f0e087c8926','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-02 16:29:34');
INSERT INTO oc_session VALUES('42f8d8053e069f56a90ea6bd16','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:42:19');
INSERT INTO oc_session VALUES('42f8dcd7b79ab203514644e011','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 10:37:26');
INSERT INTO oc_session VALUES('447935f44058f1ef0ef8524134','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 16:12:14');
INSERT INTO oc_session VALUES('44d094bcc11005a69896556894','{\"user_id\":\"1\",\"user_token\":\"1mLj25TKG8zMTPfcUYINarsYm3Fw5lJ8\",\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-14 17:37:53');
INSERT INTO oc_session VALUES('455f1a830fc5107e6d9b205699','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 16:58:41');
INSERT INTO oc_session VALUES('4562029063ea2c60f8f758b921','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"AOLDb52QyCs6TiidK9hWnV53xyLlwIsp\"}','2019-07-02 19:07:07');
INSERT INTO oc_session VALUES('463546381437113d9a4701fd7a','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"8mW5UaRZvYg2W0MrOWRpKYUNWDIB68HY\",\"install\":\"fi7pItJrAw\"}','2019-09-06 10:01:23');
INSERT INTO oc_session VALUES('4660372680df567111b8c4b0d8','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 17:17:05');
INSERT INTO oc_session VALUES('484fcfcdd2c9fd68cf43e79379','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 19:08:43');
INSERT INTO oc_session VALUES('48607bd68703bb9ed14375e228','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-21 18:28:08');
INSERT INTO oc_session VALUES('48c725163b583a51dc8046f5f5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:21:07');
INSERT INTO oc_session VALUES('48c99568c344555c334fe03e34','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-29 16:01:55');
INSERT INTO oc_session VALUES('48dcf91586ddf7505c8569e449','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 17:07:23');
INSERT INTO oc_session VALUES('490002ea32d15d306ab6b145c1','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-18 09:58:29');
INSERT INTO oc_session VALUES('491a635191ceb5becf24e343e0','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 17:55:18');
INSERT INTO oc_session VALUES('4a1a56b03354f0fac5d068a025','{\"user_id\":\"1\",\"user_token\":\"0qWNGKe5a45PRkWHkNC4y1gOW41i3Ud0\",\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 17:10:45');
INSERT INTO oc_session VALUES('4a3d84e6af55e22ed7627a927e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 16:55:44');
INSERT INTO oc_session VALUES('4a87ae0e90bc05666e540b92cb','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-05 19:40:50');
INSERT INTO oc_session VALUES('4ad7cf6b2f701311d0fa47cd47','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:43:56');
INSERT INTO oc_session VALUES('4ae375ce3a2c213fa33a665235','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-09 19:56:25');
INSERT INTO oc_session VALUES('4b186bfd1435f3981db58e4a0a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:59:25');
INSERT INTO oc_session VALUES('4b207a89b49eeed17156992e8b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:56:08');
INSERT INTO oc_session VALUES('4b8e4a4fbff4e28ec59e6d4b04','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Rf32j2is9Ew6a2dWzVXakGJQwTgxjsLh\"}','2019-07-16 12:48:47');
INSERT INTO oc_session VALUES('4bb0800f58a0c18941611acf9b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:45:50');
INSERT INTO oc_session VALUES('4c17380b2de623446c8f3ad66c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 19:11:12');
INSERT INTO oc_session VALUES('4de652554370462ab76291accf','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-26 15:39:22');
INSERT INTO oc_session VALUES('4e75269cfce866c1f429753969','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 10:37:29');
INSERT INTO oc_session VALUES('4ec028cc17d0e130d2daf654ac','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:00:23');
INSERT INTO oc_session VALUES('4ec1fc7a5d67494caec6a2cdd0','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:54:10');
INSERT INTO oc_session VALUES('4ec3a0263c46f475cdec7a23ab','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 18:49:15');
INSERT INTO oc_session VALUES('4f8ca6137a7eae36cfa463dd4f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:45:52');
INSERT INTO oc_session VALUES('4fec0567a714a6fa045fc9c358','false','2019-07-11 15:54:31');
INSERT INTO oc_session VALUES('505db18c8688f85bf0b59b10ca','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 18:57:35');
INSERT INTO oc_session VALUES('507daa238a91a758eaaff87745','{\"language\":\"en-gb\",\"currency\":\"EUR\"}','2019-08-18 11:39:53');
INSERT INTO oc_session VALUES('50998af8fb2e3a5a95623a5412','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 15:52:38');
INSERT INTO oc_session VALUES('510739773be7f51c26ec82d0a0','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-17 16:53:50');
INSERT INTO oc_session VALUES('51549c75b79ed6872bf9cac45b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 16:09:10');
INSERT INTO oc_session VALUES('5186c7ee9f684bffaee49c0789','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 10:38:08');
INSERT INTO oc_session VALUES('51ec123cb7a8e67bddefbb749e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 16:23:57');
INSERT INTO oc_session VALUES('51fd769b42e923af4a7d1ffc7c','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"NHuG9aIfiWUWqh0aG4nB9OaVGW6yIOcf\"}','2019-06-12 18:36:51');
INSERT INTO oc_session VALUES('5218cc2b9a11516e69a0e6edef','{\"user_id\":\"1\",\"user_token\":\"WIHzO0wVZfqREcGxlVRnCArnSlLmJYs3\",\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-25 16:26:54');
INSERT INTO oc_session VALUES('531fe95634febc188da8c27b9a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:29:44');
INSERT INTO oc_session VALUES('53d7052cf2debca3b5820e2da7','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:53:34');
INSERT INTO oc_session VALUES('5406a5aacb325ae120c5aceefb','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 16:47:16');
INSERT INTO oc_session VALUES('542284d2f776659f023c1ace12','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 17:52:46');
INSERT INTO oc_session VALUES('5456a8d791b8580997d55814c5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:45:15');
INSERT INTO oc_session VALUES('5573447e749c14983cc2a24270','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 16:59:18');
INSERT INTO oc_session VALUES('561e63a502aa4cd31ad2e08ac2','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 17:46:49');
INSERT INTO oc_session VALUES('5638df4b38820a07bad650fb0d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:53:40');
INSERT INTO oc_session VALUES('5654a06cee14b20d50de49ea44','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-27 16:12:52');
INSERT INTO oc_session VALUES('565d23700017e9f1741418d27b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 10:35:56');
INSERT INTO oc_session VALUES('57e07c985f59faca96cb662a87','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-28 03:25:22');
INSERT INTO oc_session VALUES('57f38d690d801589f09094345a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-09 09:00:02');
INSERT INTO oc_session VALUES('589aa427f169a1dac1dda613cf','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 05:40:27');
INSERT INTO oc_session VALUES('589e15addfff89e5ace590458c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 15:50:17');
INSERT INTO oc_session VALUES('58a178becb539d9673b7f11867','{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"40\",\"49\"]}','2019-06-05 20:00:30');
INSERT INTO oc_session VALUES('595364e744c8c4a07306e11d46','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"byjwBeWH8UI0e470IQ9BxMzdJFrZNp68\"}','2019-08-19 19:03:20');
INSERT INTO oc_session VALUES('597545d0993e8ddc819dbf0d8a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:24:19');
INSERT INTO oc_session VALUES('598d1c3583bd0d87e2b91256cf','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Rv5zXMGceWUl20xj8uoQ9R0z1A1gzxvo\"}','2019-05-21 19:08:17');
INSERT INTO oc_session VALUES('5a5ca3b0b0e780d3cd9ff4fc54','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-18 10:00:01');
INSERT INTO oc_session VALUES('5b0101d683feafa7f629a8475a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 19:49:54');
INSERT INTO oc_session VALUES('5b4d50d6358d631cdeb5e2be1e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 10:36:43');
INSERT INTO oc_session VALUES('5b5b6f93f6a535656dbdcdc4dc','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 19:07:15');
INSERT INTO oc_session VALUES('5bd3107ffd76c01f63c88a38cd','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:59:23');
INSERT INTO oc_session VALUES('5ccde64b1c0d05b945d7c64939','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"KG8vwO9WxA5ZZObawbQgSak2Pl2atRwo\"}','2019-05-24 19:26:10');
INSERT INTO oc_session VALUES('5ce5e932d31666937c7f10f567','{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"https:\\/\\/deluxeinfotech.com\\/themes\\/opencart\\/fashion_grayson_101\\/index.php?route=account\\/order\"}','2019-06-24 19:40:00');
INSERT INTO oc_session VALUES('5cef67334eeefaf356f2fabe90','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 18:28:26');
INSERT INTO oc_session VALUES('5d24a3af9acb6c3991a462d58c','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ymTAgpBeC5tGdypr8RBA1CLlLcLFE7SW\"}','2019-07-08 16:41:08');
INSERT INTO oc_session VALUES('5d3bb19571521690d4d1bc5a95','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-14 17:21:31');
INSERT INTO oc_session VALUES('5e41764101380ac7410530fb79','{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"https:\\/\\/deluxeinfotech.com\\/themes\\/opencart\\/fashion_grayson_101\\/index.php?route=account\\/edit\"}','2019-06-24 19:39:37');
INSERT INTO oc_session VALUES('5f53e7e62c37e68694a2d45e35','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-27 16:48:13');
INSERT INTO oc_session VALUES('5f7bd9f870b069a59a0637db0c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 18:28:36');
INSERT INTO oc_session VALUES('60385120382b174e1aa8458789','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 18:58:33');
INSERT INTO oc_session VALUES('603ee92045b8c2859f026de7b2','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"FemO6YqnrMPGoDhsT2QnCDL3qRWV2mDN\",\"account\":\"guest\",\"guest\":{\"customer_group_id\":\"1\",\"firstname\":\"ashish\",\"lastname\":\"vekariya\",\"email\":\"tomwilliam274@gmail.com\",\"telephone\":\"8866902013\",\"custom_field\":[],\"shipping_address\":\"1\"},\"payment_address\":{\"firstname\":\"ashish\",\"lastname\":\"vekariya\",\"company\":\"\",\"address_1\":\"147,shiv\",\"address_2\":\"\",\"postcode\":\"395010\",\"city\":\"surat\",\"country_id\":\"206\",\"zone_id\":\"3137\",\"country\":\"Taiwan\",\"iso_code_2\":\"TW\",\"iso_code_3\":\"TWN\",\"address_format\":\"\",\"custom_field\":[],\"zone\":\"Hsin-chu\",\"zone_code\":\"HS\"},\"shipping_address\":{\"firstname\":\"ashish\",\"lastname\":\"vekariya\",\"company\":\"\",\"address_1\":\"147,shiv\",\"address_2\":\"\",\"postcode\":\"395010\",\"city\":\"surat\",\"country_id\":\"206\",\"zone_id\":\"3137\",\"country\":\"Taiwan\",\"iso_code_2\":\"TW\",\"iso_code_3\":\"TWN\",\"address_format\":\"\",\"zone\":\"Hsin-chu\",\"zone_code\":\"HS\",\"custom_field\":[]},\"comment\":\"\",\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"},\"order_id\":8}','2019-06-08 23:00:36');
INSERT INTO oc_session VALUES('60dffb0644af9b28c8c7e87e00','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 19:17:47');
INSERT INTO oc_session VALUES('60f255d72fd09bc683c7ba42b0','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:06:30');
INSERT INTO oc_session VALUES('6141747cdce6e3443ed730e6b7','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:37:43');
INSERT INTO oc_session VALUES('6183f1912da4a0c303c9e7ea19','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:37:59');
INSERT INTO oc_session VALUES('61958d513d60f3b413cb370ea5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 15:47:28');
INSERT INTO oc_session VALUES('61e5bcfdef0489b490242445b7','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"LDCfBXnJSIcUhxqZcoXbLPne5UE0lJ97\"}','2019-06-27 19:31:25');
INSERT INTO oc_session VALUES('6287aff4c667b3fdddc38b5f0a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-30 09:24:44');
INSERT INTO oc_session VALUES('6383e318c07d7377556703d857','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:06:22');
INSERT INTO oc_session VALUES('63a1e45d1d53daa75eb2770b5b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-14 10:02:09');
INSERT INTO oc_session VALUES('63ddde3658f0ebb3f406b1e586','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:33:54');
INSERT INTO oc_session VALUES('63e1be15b505b5097b42ce52bf','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 19:49:52');
INSERT INTO oc_session VALUES('63efa16ca337fc28ba4db6712b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 16:37:24');
INSERT INTO oc_session VALUES('63f635b0034c833a44458d5b58','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:55:16');
INSERT INTO oc_session VALUES('644a73f592918bbbef5a69728f','false','2019-06-02 00:14:16');
INSERT INTO oc_session VALUES('646556ebfea1e735392e58d29b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 19:11:14');
INSERT INTO oc_session VALUES('6479b149c3ca08268a20b5473c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-30 09:24:41');
INSERT INTO oc_session VALUES('64bb41701930da309a15c6249c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:24:15');
INSERT INTO oc_session VALUES('64ca237ddf8574419d53c7d3d6','{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"https:\\/\\/deluxeinfotech.com\\/themes\\/opencart\\/fashion_grayson_101\\/index.php?route=account\\/address\"}','2019-06-24 19:38:08');
INSERT INTO oc_session VALUES('64cff9504f5af6a9a4234036ff','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-07 09:40:15');
INSERT INTO oc_session VALUES('65504fe3c715a2e46582b4ba0f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 17:11:30');
INSERT INTO oc_session VALUES('65505815f45bb894b8008820b8','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-05-27 16:13:48');
INSERT INTO oc_session VALUES('655a7500c9f571850d32b219d3','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-05 18:38:54');
INSERT INTO oc_session VALUES('655c26288455ccd367a358c179','{\"user_id\":\"1\",\"user_token\":\"MZNsqqwhkbH6GbsAA09rmSVRjKjts5ux\",\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"40\",\"32\"]}','2019-06-24 19:41:27');
INSERT INTO oc_session VALUES('65f278f636d3014ff36baeba4b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-09 18:44:01');
INSERT INTO oc_session VALUES('660de267afc77a93882c77369a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:07:39');
INSERT INTO oc_session VALUES('6663d3f8e13224ba21de3c96d0','{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"44\"]}','2019-08-31 20:16:52');
INSERT INTO oc_session VALUES('66654537b181b8eeb7065d8b7c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 10:36:39');
INSERT INTO oc_session VALUES('66c167e6ff796804ad9cfa821a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 17:20:10');
INSERT INTO oc_session VALUES('66ceec243d04f0e4b39044c73a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-13 06:17:27');
INSERT INTO oc_session VALUES('66e6aaea69df96b59e367b0785','{\"api_id\":\"2\",\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-30 12:35:09');
INSERT INTO oc_session VALUES('6724489ef9c7cae503c6be1450','{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"3\",\"shipping_address\":{\"address_id\":\"3\",\"firstname\":\"ashish\",\"lastname\":\"vekariya\",\"company\":\"\",\"address_1\":\"147,shiv\",\"address_2\":\"\",\"postcode\":\"395010\",\"city\":\"surat\",\"zone_id\":\"3527\",\"zone\":\"Carmarthenshire\",\"zone_code\":\"CARM\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}','2019-06-30 13:50:15');
INSERT INTO oc_session VALUES('6754538df32e80806b325b4f73','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 17:25:08');
INSERT INTO oc_session VALUES('67653a0cc27317b2b2087fb79e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-27 16:46:58');
INSERT INTO oc_session VALUES('6776f536f751fcfe9351059dce','false','2019-07-12 10:30:08');
INSERT INTO oc_session VALUES('6788aa3f1d686f525af7443cc5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:51:48');
INSERT INTO oc_session VALUES('67e589e1150ca2ab23c7b2a2de','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 18:34:06');
INSERT INTO oc_session VALUES('68a0ffe641cc4f1a2cbafdb125','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 18:20:54');
INSERT INTO oc_session VALUES('68a7dd15ca3c6b1f3dd6a8c4ac','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-21 18:00:19');
INSERT INTO oc_session VALUES('68d8902b747549f7145c746700','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:12:37');
INSERT INTO oc_session VALUES('6967eb5258f37a8ff18dcdb12c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 19:03:46');
INSERT INTO oc_session VALUES('699842ca8072670e9c9bc0e92f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-05 19:41:13');
INSERT INTO oc_session VALUES('6af2357d677b8341917e8a2fa8','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 17:14:02');
INSERT INTO oc_session VALUES('6b005d5a6005c6b4ea9993f24b','{\"language\":\"en-gb\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"kGjc0466aGIZpzQpsj29b9tGyCuBOHNS\"}','2019-05-28 19:50:25');
INSERT INTO oc_session VALUES('6b04edd77a32ff5dc378fd843e','{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"https:\\/\\/deluxeinfotech.com\\/themes\\/opencart\\/fashion_grayson_101\\/index.php?route=account\\/reward\"}','2019-06-24 19:40:51');
INSERT INTO oc_session VALUES('6b42553a1faa6cb21f685203aa','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-08 16:31:20');
INSERT INTO oc_session VALUES('6b5fff9eca2ee9725d37941148','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-17 17:06:52');
INSERT INTO oc_session VALUES('6bd6163a66972fc6df26ae443a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-17 15:43:46');
INSERT INTO oc_session VALUES('6bf46e59c0fe796710a1e77ace','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 16:56:32');
INSERT INTO oc_session VALUES('6c0031f3ebb14ce42c58964e1d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 10:36:17');
INSERT INTO oc_session VALUES('6c22e343a4ebe1227e60f95e28','false','2019-07-12 10:32:00');
INSERT INTO oc_session VALUES('6ccfc9f5b47859dd68b47a1f94','{\"language\":\"en-gb\",\"currency\":\"EUR\"}','2019-05-26 11:59:25');
INSERT INTO oc_session VALUES('6d1a74fe63ad6986c684d52fb7','false','2019-06-02 00:14:18');
INSERT INTO oc_session VALUES('6d2a67dc0a37ff319b0caf1233','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-05-25 16:20:25');
INSERT INTO oc_session VALUES('6d8ce30e9c16006f019c4fb977','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:18:22');
INSERT INTO oc_session VALUES('6e1d84f2c2153c77fa48c02789','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 09:56:16');
INSERT INTO oc_session VALUES('6e5fcc0272eb2444efcc8520d9','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:30:35');
INSERT INTO oc_session VALUES('6e905b301eb830e4581ccf7fc6','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-21 17:48:05');
INSERT INTO oc_session VALUES('6e9b8ad64fe338397cb5b37fa9','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 16:20:52');
INSERT INTO oc_session VALUES('6ed20ebf18d256bb667ef70c96','{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"43\"],\"user_id\":\"1\",\"user_token\":\"Qe3Bi2yZxZpw3K4vYinNMB5PY765cR69\"}','2019-08-07 19:09:17');
INSERT INTO oc_session VALUES('6f2670c88d3ffbe9bbbbe126d6','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-18 11:48:23');
INSERT INTO oc_session VALUES('6f4b4a768b18dda9fe4c75aa41','{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"https:\\/\\/deluxeinfotech.com\\/themes\\/opencart\\/fashion_grayson_101\\/index.php?route=account\\/download\"}','2019-06-24 19:40:20');
INSERT INTO oc_session VALUES('6f6b82e7419337810d19a03e49','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:38:26');
INSERT INTO oc_session VALUES('6f7eab6523f87575c58bb02762','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 17:07:20');
INSERT INTO oc_session VALUES('6fb179fa2ea23f3e478b5e92ef','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 16:58:38');
INSERT INTO oc_session VALUES('6fd77481f66197b5d5ecaf42c2','{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}','2019-05-15 20:31:44');
INSERT INTO oc_session VALUES('702beb8e60d2f2fce95e5d9612','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-11 16:09:33');
INSERT INTO oc_session VALUES('70dc2c62356c8d568be7e43d5c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:51:13');
INSERT INTO oc_session VALUES('71120124622dc9e06e93ce0c90','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-09 19:46:55');
INSERT INTO oc_session VALUES('714b9b6768e57d814862fb014f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-09-01 09:56:39');
INSERT INTO oc_session VALUES('71cea66cfdca7c16b5bbd991e0','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 10:35:42');
INSERT INTO oc_session VALUES('723c23543f1585141c7862aed3','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-16 15:50:54');
INSERT INTO oc_session VALUES('7241da000bc852c064cf403941','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:21:18');
INSERT INTO oc_session VALUES('72a7312fc57e21b5134dca4642','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:59:27');
INSERT INTO oc_session VALUES('73029028595b7042a02ddc9c4c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-17 18:36:38');
INSERT INTO oc_session VALUES('738e020d452a708e80e0ea630d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 18:49:13');
INSERT INTO oc_session VALUES('73f7068db4390f40be2302b455','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-10 18:52:28');
INSERT INTO oc_session VALUES('74635a6416bb4eb3f52ae5fc14','false','2019-06-24 15:37:03');
INSERT INTO oc_session VALUES('748094916caf7e3e63f41bb1a1','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:07:41');
INSERT INTO oc_session VALUES('764cd6a7a88dc1990031d3a8ef','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-17 15:43:50');
INSERT INTO oc_session VALUES('76b1b134bea76d1d22a8677975','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:35:35');
INSERT INTO oc_session VALUES('77048724469c7e668b5c740725','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 17:40:21');
INSERT INTO oc_session VALUES('7704a1221fec5accfc3e60e246','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-15 07:49:19');
INSERT INTO oc_session VALUES('7773aa4163232d2dbb9021d8dd','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-09 20:25:18');
INSERT INTO oc_session VALUES('77b2db8c2328268d53593634c7','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 16:30:24');
INSERT INTO oc_session VALUES('781bf459235522da03172da355','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:14:51');
INSERT INTO oc_session VALUES('78382c1d3a306ff2cafc13c3ed','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 17:45:55');
INSERT INTO oc_session VALUES('7851deeba448f72ed2e37c8578','{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"41\"],\"wishlist\":[\"41\"],\"user_id\":\"1\",\"user_token\":\"kymEsDG87dfZvaLi5vZ9g9nY29Chb0EI\"}','2019-09-04 18:44:39');
INSERT INTO oc_session VALUES('79bf039ec8b9ea579d77166bc6','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-13 08:18:29');
INSERT INTO oc_session VALUES('79da5eb17be102a729ea72c2f5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-14 17:17:55');
INSERT INTO oc_session VALUES('7a3dd47609ab2672fd3f6016d8','{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"KpEyygtyVk5vXDhRaXzTlabCzUus57sk\"}','2019-07-07 13:35:15');
INSERT INTO oc_session VALUES('7a529ffb1261223ac6a72cbad5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:51:12');
INSERT INTO oc_session VALUES('7a58c411a19204d36e5b291d61','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:25:43');
INSERT INTO oc_session VALUES('7a734bcc49d7f8acff860e7481','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:50:10');
INSERT INTO oc_session VALUES('7a78d22953e98b6a37ec8c483e','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"1GAkrYCEcSoPz5vuY4PUY0vIL5UWuk2f\"}','2019-08-16 19:04:17');
INSERT INTO oc_session VALUES('7b2dd4b5b416538247430e0f1e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:37:40');
INSERT INTO oc_session VALUES('7baf8a2b6ee0516dcc5d3f0bbd','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 18:25:54');
INSERT INTO oc_session VALUES('7bd61a329693d81be749e4ca01','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"YkNcRJxkty8yrYCrBYs5ESmtniADj3Bk\"}','2019-06-29 18:02:26');
INSERT INTO oc_session VALUES('7c10d34b9b490a2e4043cc2b9d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-09-01 10:39:57');
INSERT INTO oc_session VALUES('7c5a07178e5a73da6335b28df0','{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[],\"compare\":{\"0\":\"40\",\"2\":\"45\"},\"customer_id\":\"3\",\"shipping_address\":{\"address_id\":\"3\",\"firstname\":\"ashish\",\"lastname\":\"vekariya\",\"company\":\"\",\"address_1\":\"147,shiv\",\"address_2\":\"\",\"postcode\":\"395010\",\"city\":\"surat\",\"zone_id\":\"3527\",\"zone\":\"Carmarthenshire\",\"zone_code\":\"CARM\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}','2019-06-09 12:18:34');
INSERT INTO oc_session VALUES('7cfc10f64ddb5e5f0bcdc2e535','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-13 07:02:22');
INSERT INTO oc_session VALUES('7d9ca963e490a14329572fe487','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 18:58:52');
INSERT INTO oc_session VALUES('7db2649238edb592dcb6c8bf1b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 15:35:20');
INSERT INTO oc_session VALUES('7dbba86219bf650e0cec1b5914','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:36:20');
INSERT INTO oc_session VALUES('7e0789d890cbf6d222adbfabe5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:56:55');
INSERT INTO oc_session VALUES('7e58b91fdbee78f79ba8ad7944','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:14:58');
INSERT INTO oc_session VALUES('7e7d0b983d6dfec22145d95c32','{\"language\":\"en-gb\",\"currency\":\"EUR\",\"compare\":[]}','2019-05-31 19:22:34');
INSERT INTO oc_session VALUES('7ea251e87227acc2999adb66b3','{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"28\"],\"compare\":[\"28\"]}','2019-07-17 03:01:52');
INSERT INTO oc_session VALUES('7ead36fc8b305dc6ed6dc11568','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:40:39');
INSERT INTO oc_session VALUES('7f1a01e73331cb5833568f93a8','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:39:55');
INSERT INTO oc_session VALUES('8046d4b49e0824b0ce0d0f5678','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-17 14:49:04');
INSERT INTO oc_session VALUES('80b273fd002e68b613e4bb58bf','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"aAHMaUbNA9lrfQhCprxGs2dEhX6DCOca\"}','2019-07-03 19:01:38');
INSERT INTO oc_session VALUES('81199b3892cec0930c0e1dae4a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-07 08:55:49');
INSERT INTO oc_session VALUES('815eb4ee3cb72530ac9e7e8072','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-05 19:40:48');
INSERT INTO oc_session VALUES('81918a379863a13c0f9a4d9338','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"iMVy6R4bVXfCw9joEnZRenvSW1CDg9I1\"}','2019-08-28 18:34:02');
INSERT INTO oc_session VALUES('81a4df622ea158c5a1033fcf20','{\"language\":\"en-gb\",\"currency\":\"EUR\"}','2019-05-31 15:28:00');
INSERT INTO oc_session VALUES('820373042ea1f5b235dbe59098','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 18:57:25');
INSERT INTO oc_session VALUES('824a55e12b69ae1e0d6e161cde','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-26 19:19:42');
INSERT INTO oc_session VALUES('827830367c4ab80076bf3ebdc1','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 15:57:27');
INSERT INTO oc_session VALUES('82b76eb4d00e70997d0dabeb4b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 17:49:09');
INSERT INTO oc_session VALUES('8325c9ebd06dec177c2470802a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-18 08:28:53');
INSERT INTO oc_session VALUES('8343e6abf8475c9720c6b7ac12','{\"language\":\"en-gb\",\"currency\":\"EUR\"}','2019-08-19 17:58:43');
INSERT INTO oc_session VALUES('84224be390a33544c31fdd67c9','{\"user_id\":\"1\",\"user_token\":\"0tviwP16ChzxYFs0YMw2jLCMqK8LCJ0m\",\"language\":\"en-gb\",\"currency\":\"USD\",\"install\":\"ig0NLfK6MM\"}','2019-07-17 17:06:33');
INSERT INTO oc_session VALUES('845bc8e07c149071fc45c263bd','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:57:38');
INSERT INTO oc_session VALUES('845d050d5b8d7f1a0d50e47f1b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 18:25:57');
INSERT INTO oc_session VALUES('847cccb36c04da01fdffb47878','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-11 21:04:08');
INSERT INTO oc_session VALUES('850838a4411a4ab22d3d0e769b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:53:09');
INSERT INTO oc_session VALUES('85a1508a10c5db36a93b10145c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 17:47:07');
INSERT INTO oc_session VALUES('867283963a1c37546fab62d5a2','{\"user_id\":\"1\",\"user_token\":\"ZeOWNo2qkg6yjsilp4BOFntfebhna5yu\",\"language\":\"en-gb\",\"currency\":\"USD\",\"install\":\"IwHTPAaPG8\"}','2019-08-21 17:49:55');
INSERT INTO oc_session VALUES('869320566177dd940d07087a72','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-15 22:21:05');
INSERT INTO oc_session VALUES('869cda30925bc6216450dbaf20','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Zh39GY3KSJXThhbD9PbQBULEx8Ji1eRI\"}','2019-08-20 19:17:01');
INSERT INTO oc_session VALUES('8784d94f6f1e907123fa522ed7','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 18:52:19');
INSERT INTO oc_session VALUES('87c119c27f8bb892513c26ee3b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:44:17');
INSERT INTO oc_session VALUES('881f05c3b6bb84bf8a030fbf5e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-17 16:07:58');
INSERT INTO oc_session VALUES('882be3b0e7c2d6a151b969d061','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 09:35:26');
INSERT INTO oc_session VALUES('882ef530d254b2a911bc29c457','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 16:39:49');
INSERT INTO oc_session VALUES('88b18136f0586081a4529afc51','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:34:49');
INSERT INTO oc_session VALUES('897354bc57d8976453d63188e0','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 17:50:14');
INSERT INTO oc_session VALUES('8a88c5feea5f698df720c34fe1','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 17:13:59');
INSERT INTO oc_session VALUES('8aac86fa72cb9ffc69497efbc4','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 20:18:19');
INSERT INTO oc_session VALUES('8ad5af75dd539984528155b0c9','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:42:53');
INSERT INTO oc_session VALUES('8b26e932b563dbbe69996c5ec0','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:40:51');
INSERT INTO oc_session VALUES('8b3f2f66887782804d4087693e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 18:27:14');
INSERT INTO oc_session VALUES('8b440be27a7200bfe036a3f91c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 10:38:06');
INSERT INTO oc_session VALUES('8c359bb1109b30545c648021e5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 18:27:31');
INSERT INTO oc_session VALUES('8c4ed6ae893143493b806f7515','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 19:07:13');
INSERT INTO oc_session VALUES('8ce98005786933235fca26d05d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:40:51');
INSERT INTO oc_session VALUES('8d036007fbb3952d64d914001c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-19 16:42:46');
INSERT INTO oc_session VALUES('8d53ada25e8ad83bb803e284e2','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 12:41:41');
INSERT INTO oc_session VALUES('8da312ec14896f15d642b6deec','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:45:13');
INSERT INTO oc_session VALUES('8dfa074fd011f5ed09f87a52c5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 19:01:44');
INSERT INTO oc_session VALUES('8e34e9f401d211dc024d6be14b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-21 16:01:32');
INSERT INTO oc_session VALUES('8e380ab506b33d8467a52afbc0','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-05-17 17:38:21');
INSERT INTO oc_session VALUES('8e392b0efda501f6a9826a6083','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-09 18:35:24');
INSERT INTO oc_session VALUES('8eb1d97287b426cc9ac0e83120','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 16:59:21');
INSERT INTO oc_session VALUES('8f0e7337905e6a51cfffdf9011','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:52:50');
INSERT INTO oc_session VALUES('8f3c0f1514ffc6d0b25e032e83','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:22:20');
INSERT INTO oc_session VALUES('8f9034d98f2acaa30b7996d0e0','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-13 05:55:30');
INSERT INTO oc_session VALUES('8fc49c24eeed902ccff6809b55','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:18:02');
INSERT INTO oc_session VALUES('8fe4ce57a5ea5d33c222368fa1','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-30 14:22:14');
INSERT INTO oc_session VALUES('90318e90ab462bbc808db11497','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 18:48:57');
INSERT INTO oc_session VALUES('903d6c1fa060e7c709a7bf4a29','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:58:51');
INSERT INTO oc_session VALUES('905578166671bcc2c08e46c8c9','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:08:56');
INSERT INTO oc_session VALUES('91172d75be75d78448e8cd37b8','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 16:28:40');
INSERT INTO oc_session VALUES('921481f3e203228988f844d9f3','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 18:43:42');
INSERT INTO oc_session VALUES('92473706b8dd6f6eae9019292c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:39:48');
INSERT INTO oc_session VALUES('924c25f5fcde25902a795ca9e5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-15 13:42:41');
INSERT INTO oc_session VALUES('92691824d854df23bdcc3d98f2','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:41:05');
INSERT INTO oc_session VALUES('92fb0b7437255b55c2de09b9a3','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:01:59');
INSERT INTO oc_session VALUES('933a6ac229de640265b98e23db','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-30 10:00:57');
INSERT INTO oc_session VALUES('937b49c2aff2616801052334a6','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 19:08:44');
INSERT INTO oc_session VALUES('93a6e83b7613b94391294bba49','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:38:24');
INSERT INTO oc_session VALUES('94a036fd20fa4539e69a9d1cd1','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"rmn2Rd5NdM3LbWhFVMyhgN8VS9FqftEr\",\"wishlist\":[\"31\"],\"compare\":[\"31\"]}','2019-07-05 20:02:47');
INSERT INTO oc_session VALUES('94ad8143194463f41664475aeb','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 18:28:29');
INSERT INTO oc_session VALUES('952c166cc80de2b03e1ac376da','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"UaKFp1YkvDUFFCQUw7GsftMUsgUGOOdn\",\"compare\":[\"48\"],\"wishlist\":[\"45\",\"35\",\"42\"]}','2019-09-04 18:27:43');
INSERT INTO oc_session VALUES('95d2c2b46cf00452bf70d10da3','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"PUGYOoqOXX4ISnh8LrrgJTEs1S1f2y6F\"}','2019-08-19 18:36:23');
INSERT INTO oc_session VALUES('960c71a85903eb104c097a0479','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-05 19:41:15');
INSERT INTO oc_session VALUES('964ede457c82f7e2a4aeae6566','{\"user_id\":\"1\",\"user_token\":\"EdmeavdvHx1sDcBxktUTPWu70FA6gKkv\",\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-05-26 12:07:00');
INSERT INTO oc_session VALUES('973a4e26e983a7f1ae2b2213a3','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-09-01 12:33:31');
INSERT INTO oc_session VALUES('973f2dee7f7327a790e9251a47','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"RDMUD1Q1NDdfvwYcriU8j9r7HfnSO351\"}','2019-08-18 12:56:09');
INSERT INTO oc_session VALUES('9820eac4d012d5544947ae0ba7','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:00:57');
INSERT INTO oc_session VALUES('9840dad42961d38eccedd41e00','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-20 19:36:37');
INSERT INTO oc_session VALUES('98cc924bf124f28c7fe679605b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 17:11:34');
INSERT INTO oc_session VALUES('994729baa549219403861cf281','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-17 17:06:50');
INSERT INTO oc_session VALUES('99c5f45585748adf56f01c1c91','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-29 03:52:57');
INSERT INTO oc_session VALUES('9a26582583fc6e8a086569e3c3','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"B5JPklenlVAFxXeGcGDJNdYjAHeP340k\"}','2019-08-31 20:20:05');
INSERT INTO oc_session VALUES('9a47161bde5561eba5a7271d72','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-05 15:28:29');
INSERT INTO oc_session VALUES('9a594cea7c248453e48cbbb686','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:08:50');
INSERT INTO oc_session VALUES('9a6110bc955a7a1ddad70661e2','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 08:42:49');
INSERT INTO oc_session VALUES('9a65b972f1e27ff0e43453b9f7','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"mBoKNCnvonc3dAJQJcQMn8C8SSqAkS5r\"}','2019-08-04 13:55:00');
INSERT INTO oc_session VALUES('9ae7187cbe9e8b7878fde4c73a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:25:12');
INSERT INTO oc_session VALUES('9b51dae8b89e265136a8a737f2','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 21:46:11');
INSERT INTO oc_session VALUES('9bf49cd8f6501ba74508e24d5e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 17:45:56');
INSERT INTO oc_session VALUES('9bf973dd8171fdfde37f360b5d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 16:22:11');
INSERT INTO oc_session VALUES('9c1a6b396fb7941efcd95dd401','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-02 13:16:30');
INSERT INTO oc_session VALUES('9c3bee34568eaf0b455af3ffad','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 16:52:31');
INSERT INTO oc_session VALUES('9c9036e2c370ed3e86bad0f055','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:54:09');
INSERT INTO oc_session VALUES('9d10c283f8539f7962ae0f9bed','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:17:52');
INSERT INTO oc_session VALUES('9d4319db101c683c4a914c0a13','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"juntTTkM77qdMI88jJb6aVRdPH2LF5Qe\"}','2019-05-22 20:08:58');
INSERT INTO oc_session VALUES('9e5afc2f759fbb95fa6f0ff473','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:03:56');
INSERT INTO oc_session VALUES('9e8c46dbc04add6aa3864784f3','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:09:04');
INSERT INTO oc_session VALUES('9ec3d29514cf1dad5b252cbd34','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:38:33');
INSERT INTO oc_session VALUES('9efbddcbcb49463fa7f7ca8baa','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 16:28:48');
INSERT INTO oc_session VALUES('9f2e94a1b21938ab4fbdebd280','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 16:59:48');
INSERT INTO oc_session VALUES('9f61af7933c07d9b4062cab9f2','false','2019-06-02 00:14:14');
INSERT INTO oc_session VALUES('9f62570dd5703162df543ebe42','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-09 19:43:12');
INSERT INTO oc_session VALUES('9f8522ba715b33cec758f7449d','{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"https:\\/\\/deluxeinfotech.com\\/themes\\/opencart\\/fashion_grayson_101\\/index.php?route=account\\/reward\"}','2019-06-24 19:40:51');
INSERT INTO oc_session VALUES('a14032bec5caa6ecb701bd1c15','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-09 09:00:03');
INSERT INTO oc_session VALUES('a145266789aa3acd69a16430fe','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 16:52:53');
INSERT INTO oc_session VALUES('a15e3982c49d3fcff79dfc5215','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 19:17:49');
INSERT INTO oc_session VALUES('a18502124ae84e9de4359178cc','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:56:34');
INSERT INTO oc_session VALUES('a19367f0b29c7f36888fa105b0','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 17:41:57');
INSERT INTO oc_session VALUES('a1c8d7e4f37530527151eaefb8','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-01 19:57:02');
INSERT INTO oc_session VALUES('a1fc5c0f000abc1905016cfb47','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-09 12:27:59');
INSERT INTO oc_session VALUES('a25f49c5d8ff79358ca5a00808','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:37:46');
INSERT INTO oc_session VALUES('a28524d667ae850dabed26277d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-09 09:00:03');
INSERT INTO oc_session VALUES('a30f786620df55ba32187ab458','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 08:13:10');
INSERT INTO oc_session VALUES('a345366418a432239e44e12557','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:37:38');
INSERT INTO oc_session VALUES('a39aa3e3c16d00fc801bffb162','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 18:27:33');
INSERT INTO oc_session VALUES('a3d334e96c7d8dedbccb405679','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:25:40');
INSERT INTO oc_session VALUES('a41e8df63c40b4736ed7eeed04','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 15:58:28');
INSERT INTO oc_session VALUES('a493873739def48cbbd2f0fc89','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 16:30:22');
INSERT INTO oc_session VALUES('a4f800f5b3b60bc2d4babf17bd','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:07:13');
INSERT INTO oc_session VALUES('a5104d17907fb0d01b1b2e1ea5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 18:56:43');
INSERT INTO oc_session VALUES('a5a35e1ea24cab07b3ce5f7972','{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"https:\\/\\/deluxeinfotech.com\\/themes\\/opencart\\/fashion_grayson_101\\/index.php?route=account\\/password\"}','2019-06-24 19:39:48');
INSERT INTO oc_session VALUES('a5a977d6dbf3cf4f9b4f4d08a2','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 18:27:17');
INSERT INTO oc_session VALUES('a5c15bdd0b078000079aab4220','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:03:11');
INSERT INTO oc_session VALUES('a677934cae78a0de4e2afeee2d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:06:55');
INSERT INTO oc_session VALUES('a68fe382fc982b010722300033','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 17:20:07');
INSERT INTO oc_session VALUES('a69311da4a4bec783dd211e6dc','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-21 18:21:18');
INSERT INTO oc_session VALUES('a6950044b4dd4f386c5b2a5b9f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-18 08:58:49');
INSERT INTO oc_session VALUES('a6c13e8b78d03b1337f1160327','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:30:02');
INSERT INTO oc_session VALUES('a6d2130dabd6455fa728c6fba4','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-20 18:23:09');
INSERT INTO oc_session VALUES('a70c7dd87ab19ed897abb1735f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 18:56:41');
INSERT INTO oc_session VALUES('a71b0d0f14f9553b2e3c091ae5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:41:20');
INSERT INTO oc_session VALUES('a736f051606001e52ced3bb598','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:13:07');
INSERT INTO oc_session VALUES('a7e668fbbeda3f470cb1035caf','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:37:36');
INSERT INTO oc_session VALUES('a8bfe14a640f29a9e7bcd80209','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-13 18:50:41');
INSERT INTO oc_session VALUES('a8d0a52a9eb4fd20532bb4f6f4','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 17:41:05');
INSERT INTO oc_session VALUES('a9436ec8ea76a99fb4f9cb709b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-29 12:53:48');
INSERT INTO oc_session VALUES('a96522d8c60cdb7f557a45eb02','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 16:53:49');
INSERT INTO oc_session VALUES('a9cf800beea6099baa75ffaba0','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-18 11:42:54');
INSERT INTO oc_session VALUES('aba5a2bfcad2d925f5e53c8340','{\"user_id\":\"1\",\"user_token\":\"lUYvKhRl4cVG0TXkUUDVlLLpdFTlxkSR\",\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-02 00:25:23');
INSERT INTO oc_session VALUES('ac16c0f498a4b4092f9fd963f3','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:14:56');
INSERT INTO oc_session VALUES('ac32044fd4167cbfe1c823daec','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-14 09:57:43');
INSERT INTO oc_session VALUES('ac7c05ec9fb94715fd6075f1da','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:37:21');
INSERT INTO oc_session VALUES('ad0776d3e4bbb254a6d82228c7','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-29 05:59:14');
INSERT INTO oc_session VALUES('ad5318378e5b96748e1a8520fe','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-05 15:49:36');
INSERT INTO oc_session VALUES('ad7948102078416766e8334dbf','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"AE0Q3vns0Q5LCYBfHFDh9ct6qfqFowhd\"}','2019-08-30 18:59:21');
INSERT INTO oc_session VALUES('adc39151a71d49695e859cd1bb','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-11 15:44:40');
INSERT INTO oc_session VALUES('add5e9c77cc0ea5003826ffaa4','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-12 19:09:16');
INSERT INTO oc_session VALUES('ae07d91c89beba42b2958c4ac0','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:00:59');
INSERT INTO oc_session VALUES('ae823cabf53d5c5daee7b0fe1d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 18:20:52');
INSERT INTO oc_session VALUES('ae949fb937f141ae7fadeed9e9','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 17:14:24');
INSERT INTO oc_session VALUES('aed7af5f8eb657541cc48f64a6','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-21 19:34:03');
INSERT INTO oc_session VALUES('aee83ec26811e8b625768b9085','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:39:20');
INSERT INTO oc_session VALUES('af1b4c976d4d4a427e7a7e0de6','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ybBKsvh2XsCbkjvjnMez7ttZHQhgJEdq\"}','2019-06-10 20:42:15');
INSERT INTO oc_session VALUES('af3ffe063258c6e1117971806d','{\"language\":\"en-gb\",\"currency\":\"USD\",\"account\":\"guest\",\"guest\":{\"customer_group_id\":\"1\",\"firstname\":\"dmpe\",\"lastname\":\"society\",\"email\":\"mayur@gmail.com\",\"telephone\":\"9387464789\",\"custom_field\":[],\"shipping_address\":\"1\"},\"payment_address\":{\"firstname\":\"dmpe\",\"lastname\":\"society\",\"company\":\"deluxeinfotech\",\"address_1\":\"old kosad road,\",\"address_2\":\"old kosad road,\",\"postcode\":\"394107\",\"city\":\"surat\",\"country_id\":\"197\",\"zone_id\":\"3032\",\"country\":\"St. Helena\",\"iso_code_2\":\"SH\",\"iso_code_3\":\"SHN\",\"address_format\":\"\",\"custom_field\":[],\"zone\":\"Saint Helena\",\"zone_code\":\"S\"},\"shipping_address\":{\"firstname\":\"dmpe\",\"lastname\":\"society\",\"company\":\"deluxeinfotech\",\"address_1\":\"old kosad road,\",\"address_2\":\"old kosad road,\",\"postcode\":\"394107\",\"city\":\"surat\",\"country_id\":\"197\",\"zone_id\":\"3032\",\"country\":\"St. Helena\",\"iso_code_2\":\"SH\",\"iso_code_3\":\"SHN\",\"address_format\":\"\",\"zone\":\"Saint Helena\",\"zone_code\":\"S\",\"custom_field\":[]},\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"},\"comment\":\"\",\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"},\"order_id\":9}','2019-06-08 23:00:02');
INSERT INTO oc_session VALUES('af9707d9692048aa3c0a957ccd','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:42:22');
INSERT INTO oc_session VALUES('b03afa46506cafd85fe4107bf1','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 16:13:21');
INSERT INTO oc_session VALUES('b0718534d6c347b24ba6e437d7','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 15:47:02');
INSERT INTO oc_session VALUES('b0f3d34c36ce9068da6f2439a7','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 17:13:21');
INSERT INTO oc_session VALUES('b0fbdee70dad38fd17eb0a1f2e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 18:21:44');
INSERT INTO oc_session VALUES('b100cd8ebe4e5e40289a5dc96f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 16:52:51');
INSERT INTO oc_session VALUES('b10eb95ad5e4d1a44d18321910','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-13 06:06:14');
INSERT INTO oc_session VALUES('b118ed5f9a4d07612914dc1716','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:49:51');
INSERT INTO oc_session VALUES('b12f0e86ab663a407ce7b79ce5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-21 18:48:01');
INSERT INTO oc_session VALUES('b152480b8d254d92034d9f8a06','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:37:46');
INSERT INTO oc_session VALUES('b1557608ebe06e1da78bea2888','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:51:42');
INSERT INTO oc_session VALUES('b1850fa65ca960c500b7545f9c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-13 18:49:07');
INSERT INTO oc_session VALUES('b1a0d902fc7c2d1f9311006ac4','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-18 08:41:53');
INSERT INTO oc_session VALUES('b1a29e662866b0c5cacd390410','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:31:22');
INSERT INTO oc_session VALUES('b1c6e833182f629bd1d685eba6','{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"https:\\/\\/deluxeinfotech.com\\/themes\\/opencart\\/fashion_grayson_101\\/index.php?route=account\\/affiliate\"}','2019-06-24 19:39:19');
INSERT INTO oc_session VALUES('b1c9a7b51a31d700778b03df11','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-05-18 15:58:41');
INSERT INTO oc_session VALUES('b24224003a242d889e23a0d014','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-08 18:35:13');
INSERT INTO oc_session VALUES('b35cf0e0fea0997110bb23398f','{\"user_id\":\"1\",\"user_token\":\"TKKRjVVsBlFPt44Y9tBlitWF8oA2Y0i2\",\"language\":\"en-gb\",\"currency\":\"USD\",\"install\":\"bXcf3XKITJ\"}','2019-07-13 14:49:10');
INSERT INTO oc_session VALUES('b3735d3d714ddbc83151684643','{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"https:\\/\\/deluxeinfotech.com\\/themes\\/opencart\\/fashion_grayson_101\\/index.php?route=account\\/newsletter\"}','2019-07-02 15:47:12');
INSERT INTO oc_session VALUES('b3770aa71d8da5a269163b5374','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 17:00:04');
INSERT INTO oc_session VALUES('b3fc2370cbe01f3243cfb805e3','false','2019-07-12 10:29:39');
INSERT INTO oc_session VALUES('b41bdc78ee4586495e2c45fa81','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-07 19:04:01');
INSERT INTO oc_session VALUES('b423841bbb37ebfd716f558881','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 17:21:06');
INSERT INTO oc_session VALUES('b4255226f2aea778a8b900ca3a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:38:33');
INSERT INTO oc_session VALUES('b436505ee1fdc9eabc46cf59dc','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 16:04:05');
INSERT INTO oc_session VALUES('b4ad70cb0d82aa627d47023d21','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:47:03');
INSERT INTO oc_session VALUES('b4e41a44e5299549c888b0927e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-09-02 15:53:46');
INSERT INTO oc_session VALUES('b4fab9b0248388d8a463ee58a1','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 08:19:43');
INSERT INTO oc_session VALUES('b5ea9d62f14b5bcf10746bfd00','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-09-02 18:51:39');
INSERT INTO oc_session VALUES('b63e5538dc58f6bcf597bb1400','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:11:34');
INSERT INTO oc_session VALUES('b640aa9444e5684ba7e51d6edd','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:43:22');
INSERT INTO oc_session VALUES('b72d7fda24514294de21ec3e88','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 09:35:56');
INSERT INTO oc_session VALUES('b7abafe0b28268496be9fb8e7d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-05 15:29:11');
INSERT INTO oc_session VALUES('b80e5ef44aaee3db2bdbd1f8f6','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-01 16:56:55');
INSERT INTO oc_session VALUES('b84a6672b4c0b1058732885aac','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"No6qUeNUgWPcibmMINMMriN8GSjn7YkP\",\"install\":\"RFrDbmbMgc\",\"wishlist\":[],\"customer_id\":\"3\",\"shipping_address\":{\"address_id\":\"3\",\"firstname\":\"ashish\",\"lastname\":\"vekariya\",\"company\":\"\",\"address_1\":\"147,shiv\",\"address_2\":\"\",\"postcode\":\"395010\",\"city\":\"surat\",\"zone_id\":\"3527\",\"zone\":\"Carmarthenshire\",\"zone_code\":\"CARM\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"4\",\"firstname\":\"Hari\",\"lastname\":\"society\",\"company\":\"Carmarthenshire\",\"address_1\":\"old kosad road,\",\"address_2\":\"old kosad road,\",\"postcode\":\"394107\",\"city\":\"surat\",\"zone_id\":\"3203\",\"zone\":\"Kamphaeng Phet\",\"zone_code\":\"Kamphaeng Phet\",\"country_id\":\"209\",\"country\":\"Thailand\",\"iso_code_2\":\"TH\",\"iso_code_3\":\"THA\",\"address_format\":\"\",\"custom_field\":null},\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$8.00\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$8.00\"},\"comment\":\"\",\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"}}}','2019-07-15 13:05:34');
INSERT INTO oc_session VALUES('b86da806d25536a02f04632f90','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 15:52:40');
INSERT INTO oc_session VALUES('b8e73e1024bd2ac319a1d98593','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"dYNgWD6rwHr8MIVIhXE6GXXuZn7Zd0zI\",\"customer_id\":\"3\",\"shipping_address\":{\"address_id\":\"3\",\"firstname\":\"ashish\",\"lastname\":\"vekariya\",\"company\":\"\",\"address_1\":\"147,shiv\",\"address_2\":\"\",\"postcode\":\"395010\",\"city\":\"surat\",\"zone_id\":\"3527\",\"zone\":\"Carmarthenshire\",\"zone_code\":\"CARM\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"3\",\"firstname\":\"ashish\",\"lastname\":\"vekariya\",\"company\":\"\",\"address_1\":\"147,shiv\",\"address_2\":\"\",\"postcode\":\"395010\",\"city\":\"surat\",\"zone_id\":\"3527\",\"zone\":\"Carmarthenshire\",\"zone_code\":\"CARM\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$8.00\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$8.00\"},\"comment\":\"\",\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\"},\"order_id\":3,\"compare\":[\"43\",\"40\"]}','2019-05-16 20:14:16');
INSERT INTO oc_session VALUES('b90757bb245737c4ee6d5f0944','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:44:14');
INSERT INTO oc_session VALUES('b9284c39b19dff89ce0654b561','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-25 15:49:44');
INSERT INTO oc_session VALUES('b95764d2f1fcea10f7a011adb6','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:42:55');
INSERT INTO oc_session VALUES('b97d5f8cbd45033a7fe2febc79','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-18 08:16:37');
INSERT INTO oc_session VALUES('ba4090ed1d6a72313d3ab20745','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-05 15:46:50');
INSERT INTO oc_session VALUES('ba8208065dbbf01fd1ac294b15','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-13 06:21:27');
INSERT INTO oc_session VALUES('ba998d43f4688c455d33f5165e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-17 16:47:01');
INSERT INTO oc_session VALUES('bb01a371868af9fdc5c83462bd','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 18:59:47');
INSERT INTO oc_session VALUES('bb52f6f3ee5b4dd3105577eac3','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-13 08:37:40');
INSERT INTO oc_session VALUES('bb622954b356d25144b8ccb7da','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 15:50:20');
INSERT INTO oc_session VALUES('bbcb3b47baf7423acb22aecf5e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 12:49:52');
INSERT INTO oc_session VALUES('bc35239c6f4262d8e8f5c1f1a9','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 12:15:04');
INSERT INTO oc_session VALUES('bc54934cce05846fd254ccf1ea','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 19:05:26');
INSERT INTO oc_session VALUES('bc760765627c2e2c12b9e87d57','false','2019-07-11 15:58:10');
INSERT INTO oc_session VALUES('bcd1871eccf924b8351a78edaf','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"SOKJe5HGYZ8gp3nnnfNbzehZ96NdIcPU\"}','2019-05-20 21:00:39');
INSERT INTO oc_session VALUES('bcd9570a394b90548b02d84691','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-07 10:20:16');
INSERT INTO oc_session VALUES('bdb15a4a207173c971a74cf82e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 17:11:32');
INSERT INTO oc_session VALUES('bdd064f58fea7cd3ca6306076e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-13 13:56:57');
INSERT INTO oc_session VALUES('bde1ce65b25529944ba4db4cdf','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:23:16');
INSERT INTO oc_session VALUES('be62df2a66957ebb80cbbc0510','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 18:38:14');
INSERT INTO oc_session VALUES('be693f05ee56e2f5046fcc2be4','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 16:59:04');
INSERT INTO oc_session VALUES('bed908addd475be01c5a9d9a6b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:29:59');
INSERT INTO oc_session VALUES('bf40243dc18d37a77f07f55303','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 20:11:40');
INSERT INTO oc_session VALUES('c03d6df1e91cd940686e7b5a79','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:21:55');
INSERT INTO oc_session VALUES('c0bc9cf3b745b20694a7094f24','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:33:33');
INSERT INTO oc_session VALUES('c16891d689ba1aa3e54cf33aa4','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-09-01 10:33:05');
INSERT INTO oc_session VALUES('c1d7b0a2865c8e820853e02265','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"QdIfK0lxpLkZCClAaYSJbPJlxcUMpUYZ\",\"wishlist\":[\"48\"],\"compare\":[\"48\"]}','2019-07-06 23:08:13');
INSERT INTO oc_session VALUES('c1e223a7f1d0f6a7fc88e16512','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 15:47:22');
INSERT INTO oc_session VALUES('c1f518f89be6ac77966f2a69a9','{\"user_id\":\"1\",\"user_token\":\"CrQCzAuXSMrdD3Du0sV4BgumVEHhN2Cs\",\"language\":\"en-gb\",\"currency\":\"EUR\"}','2019-05-30 19:43:34');
INSERT INTO oc_session VALUES('c25eec5885ec84ae04ae969a94','{\"language\":\"en-gb\",\"currency\":\"EUR\",\"wishlist\":[\"49\",\"44\"],\"compare\":[\"49\",\"44\"]}','2019-06-01 23:49:03');
INSERT INTO oc_session VALUES('c269c9291e57f63ce2e5ed9823','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-03 19:32:14');
INSERT INTO oc_session VALUES('c316ec45c09b256fe44ede8742','{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[]}','2019-06-24 19:32:50');
INSERT INTO oc_session VALUES('c32740c945055db9c16858c804','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 18:52:21');
INSERT INTO oc_session VALUES('c36230f584beedfc3493146a93','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 18:43:44');
INSERT INTO oc_session VALUES('c37192de60dba70670634be17f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:03:54');
INSERT INTO oc_session VALUES('c3b5933d7505636e1c98cf5ea3','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:40:20');
INSERT INTO oc_session VALUES('c3f37cf6a1af0310ae7c77c0d7','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-05 15:28:32');
INSERT INTO oc_session VALUES('c3fec39dbf750f648e0139aef7','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-28 15:44:27');
INSERT INTO oc_session VALUES('c41c36e1e805a28967a083e1ee','{\"language\":\"en-gb\",\"currency\":\"EUR\",\"compare\":[\"49\",\"44\"],\"wishlist\":[\"49\",\"44\"],\"user_id\":\"1\",\"user_token\":\"SrgOVF3V6mBMyvWGfYc8FFfyWLpSbuX7\"}','2019-05-29 17:40:55');
INSERT INTO oc_session VALUES('c4bf847d90a1195e72f6f63fa5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 17:10:59');
INSERT INTO oc_session VALUES('c4e48ceb29386133a8d69e61a0','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 17:46:28');
INSERT INTO oc_session VALUES('c608ed7b7ed8292f02ee20dc71','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:40:00');
INSERT INTO oc_session VALUES('c638cdbe864a4fa135525a8d61','{\"user_id\":\"1\",\"user_token\":\"AP9lpffyPN7j9QbUzwGXMN8nV4j8xdze\",\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-05-19 13:56:09');
INSERT INTO oc_session VALUES('c642e11af4f10f9382824df79a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-08 17:04:20');
INSERT INTO oc_session VALUES('c7396a3141618e6a516e4ea2ad','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 16:12:43');
INSERT INTO oc_session VALUES('c7428f1933f38db404adeca7fe','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:03:01');
INSERT INTO oc_session VALUES('c8237b76d0c16892ec46157d9d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:37:19');
INSERT INTO oc_session VALUES('c836c0e9afe9a75d1a4ccf72f0','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:58:54');
INSERT INTO oc_session VALUES('c89c456ecd637a090b4b8e719f','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"8AJPHg4RhgjRkmOJwXnSdMgGQrLY0gFl\"}','2019-08-17 19:41:11');
INSERT INTO oc_session VALUES('c8a78f928a96bd826edbd85ad3','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-18 05:17:06');
INSERT INTO oc_session VALUES('c8f53c94301674d99e9ccbc3d0','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:40:35');
INSERT INTO oc_session VALUES('c96e9c647882a0fb60f75c7c1b','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"qBIkNGZXE5aqKQj3w73iVwQ5wzqsWJTf\",\"wishlist\":[\"31\"],\"compare\":[\"40\"]}','2019-08-14 19:39:15');
INSERT INTO oc_session VALUES('c97d9b6879341920b276a21709','false','2019-06-02 00:14:16');
INSERT INTO oc_session VALUES('c9af34320c5c63daba40c8030d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 17:49:08');
INSERT INTO oc_session VALUES('ca63c5fd3117ee62d1fcfe912c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 09:35:05');
INSERT INTO oc_session VALUES('cb5a96c5bee2f2b55dd4bea4b5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 18:08:18');
INSERT INTO oc_session VALUES('cb8c3fab1403afda07406d947a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-13 06:15:14');
INSERT INTO oc_session VALUES('cbd40b76216527b52f50b072f7','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 21:49:21');
INSERT INTO oc_session VALUES('cc2ee96cdc6f32f2c0d342a8d3','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"pleY1qTyCTNEWUoJnXZdarI8M1z6Aqfi\"}','2019-06-11 20:53:32');
INSERT INTO oc_session VALUES('cc30bd133c5d463ccbaf24e5da','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:36:55');
INSERT INTO oc_session VALUES('cca314beeea75a134768a6e9d1','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 14:25:49');
INSERT INTO oc_session VALUES('ccb7f47a603c958c66bbcfd02d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 08:21:24');
INSERT INTO oc_session VALUES('ccd3b02b9aec85964a1ac1bfea','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 17:10:57');
INSERT INTO oc_session VALUES('cd1fe40201e50bef4d5f503ef0','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 18:20:58');
INSERT INTO oc_session VALUES('cd42db7b590776cb3da90d78d5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 19:03:52');
INSERT INTO oc_session VALUES('cde2604f5081b4bb4f2abe7042','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 17:41:10');
INSERT INTO oc_session VALUES('ce6e604c3952d6fcfd53ac60f3','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 17:52:10');
INSERT INTO oc_session VALUES('cec82de4c75973957b12e2dac8','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:00:37');
INSERT INTO oc_session VALUES('cf3d07b0a9bcc44983533acfdf','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-14 17:21:13');
INSERT INTO oc_session VALUES('cf49d5757c2d2c74776c420280','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 15:57:30');
INSERT INTO oc_session VALUES('cfeac4f50e86c0cec89ea0d274','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 19:46:01');
INSERT INTO oc_session VALUES('d0aa4ee8143cd8361a9450ad29','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-12 20:49:24');
INSERT INTO oc_session VALUES('d178aa71e78c8dcdd170007eee','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 07:40:25');
INSERT INTO oc_session VALUES('d1a9aa854f24383740456c46f0','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"xJhChl8Xsi5GuH0vV6jDHYBgNCVfiEQO\",\"compare\":[\"49\",\"44\"]}','2019-06-05 20:02:11');
INSERT INTO oc_session VALUES('d267500728e82fc8d12a544a3c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 16:43:04');
INSERT INTO oc_session VALUES('d2b37da534bf8ab0f43c2be777','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-09-03 06:38:16');
INSERT INTO oc_session VALUES('d37044f5a64ec3053bf206ee83','{\"user_id\":\"1\",\"user_token\":\"NtlW4yVEDMIJgVWN5mV6TUyOgnaJBSCU\",\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-08 16:53:29');
INSERT INTO oc_session VALUES('d4073d1e46e080fc2cedcd73e4','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"5ZK5lsQi9ImPmgKjmDD7VC8ckSGnD1nI\"}','2019-05-27 19:48:59');
INSERT INTO oc_session VALUES('d414413e017e79a3237f8b7191','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 17:40:19');
INSERT INTO oc_session VALUES('d419e8312599bc8552b98fb122','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:10:29');
INSERT INTO oc_session VALUES('d45a792d8101f2c1e8d39eb6d4','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-30 13:36:07');
INSERT INTO oc_session VALUES('d48a2e52e6a003ce4aa141b4ab','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:29:34');
INSERT INTO oc_session VALUES('d562fa0e4962a7623cca3f1787','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:20:58');
INSERT INTO oc_session VALUES('d5d5a3599d84f90fc4ccf591f1','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 17:46:46');
INSERT INTO oc_session VALUES('d617eca8c2426c8548d6cadbaa','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:27:24');
INSERT INTO oc_session VALUES('d647edc8b5fc7e10d64bf21c73','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 17:53:52');
INSERT INTO oc_session VALUES('d6a39f4ba2e7c52a0866684865','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:01:56');
INSERT INTO oc_session VALUES('d6ba7217d432094c8acc998cf2','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 21:46:12');
INSERT INTO oc_session VALUES('d75a9ee951aee5b9d77d4c9110','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 11:21:18');
INSERT INTO oc_session VALUES('d940db7110da593b43bce7496c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-31 19:55:29');
INSERT INTO oc_session VALUES('d96b6403b9edc1af800796f10d','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Eb3Ek5xjWj5C3fhMBen7oxclQ8ELNyF2\",\"wishlist\":[],\"customer_id\":\"3\",\"shipping_address\":{\"address_id\":\"3\",\"firstname\":\"ashish\",\"lastname\":\"vekariya\",\"company\":\"\",\"address_1\":\"147,shiv\",\"address_2\":\"\",\"postcode\":\"395010\",\"city\":\"surat\",\"zone_id\":\"3527\",\"zone\":\"Carmarthenshire\",\"zone_code\":\"CARM\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}','2019-05-19 00:18:38');
INSERT INTO oc_session VALUES('da6131cab9e5f88288b310417b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-09-03 17:31:30');
INSERT INTO oc_session VALUES('dae438e28cc8a0710c2661964f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-13 04:31:46');
INSERT INTO oc_session VALUES('db4fa00701e1092f6b8662618e','{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"3\",\"shipping_address\":{\"address_id\":\"7\",\"firstname\":\"Hari\",\"lastname\":\"society\",\"company\":\"deluxeinfotech\",\"address_1\":\"old kosad road,\",\"address_2\":\"old kosad road,\",\"postcode\":\"394107\",\"city\":\"surat\",\"zone_id\":\"3193\",\"zone\":\"Buriram\",\"zone_code\":\"Buriram\",\"country_id\":\"209\",\"country\":\"Thailand\",\"iso_code_2\":\"TH\",\"iso_code_3\":\"THA\",\"address_format\":\"\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"6\",\"firstname\":\"Hari\",\"lastname\":\"society\",\"company\":\"deluxeinfotech\",\"address_1\":\"old kosad road,\",\"address_2\":\"old kosad road,\",\"postcode\":\"394107\",\"city\":\"surat\",\"zone_id\":\"3193\",\"zone\":\"Buriram\",\"zone_code\":\"Buriram\",\"country_id\":\"209\",\"country\":\"Thailand\",\"iso_code_2\":\"TH\",\"iso_code_3\":\"THA\",\"address_format\":\"\",\"custom_field\":null}}','2019-05-16 20:17:09');
INSERT INTO oc_session VALUES('dbb0786c1d8e4aded70ed69d0e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 16:33:06');
INSERT INTO oc_session VALUES('dc307715992e3c5610a1d3276c','{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"https:\\/\\/deluxeinfotech.com\\/themes\\/opencart\\/fashion_grayson_101\\/index.php?route=account\\/newsletter\"}','2019-06-24 19:40:39');
INSERT INTO oc_session VALUES('dc46fb5faacd99e9809f9095f5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 19:01:46');
INSERT INTO oc_session VALUES('dc5119c14417ed807c7da16b4a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-20 15:44:42');
INSERT INTO oc_session VALUES('dcaaf0021295519d6728e170b7','false','2019-07-11 15:58:39');
INSERT INTO oc_session VALUES('dd0bdcb7e3499263ee40b030bb','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 18:40:30');
INSERT INTO oc_session VALUES('dd4d8f39d47d49ec7087ce12be','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 18:20:16');
INSERT INTO oc_session VALUES('de5a75d820b58fe46e398c734a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:27:25');
INSERT INTO oc_session VALUES('de5b64550cd7d7a363d41a8b16','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"rvu6GkSaNelYH0oLf3r7vYthcYu1H2m6\",\"compare\":[\"33\"],\"wishlist\":[\"33\"]}','2019-06-02 13:17:22');
INSERT INTO oc_session VALUES('df1ea99718503616e19468fe42','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 16:48:07');
INSERT INTO oc_session VALUES('df66a6babfcdd4b5146af52ca5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 18:13:19');
INSERT INTO oc_session VALUES('df876bd2dc0086fc1a593a5ef9','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 19:04:07');
INSERT INTO oc_session VALUES('e0f1889134ce6b335fe36afe7f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 17:17:03');
INSERT INTO oc_session VALUES('e0f23e9cac03d46d401077e70d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 18:55:22');
INSERT INTO oc_session VALUES('e102eb1da4cfd14fd5275bbd64','{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"3\",\"shipping_address\":{\"address_id\":\"3\",\"firstname\":\"ashish\",\"lastname\":\"vekariya\",\"company\":\"\",\"address_1\":\"147,shiv\",\"address_2\":\"\",\"postcode\":\"395010\",\"city\":\"surat\",\"zone_id\":\"3527\",\"zone\":\"Carmarthenshire\",\"zone_code\":\"CARM\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"3\",\"firstname\":\"ashish\",\"lastname\":\"vekariya\",\"company\":\"\",\"address_1\":\"147,shiv\",\"address_2\":\"\",\"postcode\":\"395010\",\"city\":\"surat\",\"zone_id\":\"3527\",\"zone\":\"Carmarthenshire\",\"zone_code\":\"CARM\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}','2019-06-06 19:15:29');
INSERT INTO oc_session VALUES('e11588682aea27d104acda1add','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-09-03 17:26:48');
INSERT INTO oc_session VALUES('e1a4b69c3d13110836da5618c5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 18:56:15');
INSERT INTO oc_session VALUES('e1a85f79bed558c1a548948b76','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"PfEg79ctvD12yxbQgtoyPFjQKuUpuALl\"}','2019-07-01 19:45:46');
INSERT INTO oc_session VALUES('e1add85af433b9a18efe18f32a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:44:02');
INSERT INTO oc_session VALUES('e1db1f157a51b011552ea82794','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:25:41');
INSERT INTO oc_session VALUES('e2303c42d415079a1729abd4f8','{\"language\":\"en-gb\",\"currency\":\"EUR\"}','2019-05-27 17:16:49');
INSERT INTO oc_session VALUES('e239a6f7eda96da7675cbd3fe2','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:00:34');
INSERT INTO oc_session VALUES('e2591bc59f5678f9b380655afe','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-14 17:21:16');
INSERT INTO oc_session VALUES('e2c7b27ba127d5456d345507fa','{\"language\":\"en-gb\",\"currency\":\"EUR\"}','2019-05-29 19:30:31');
INSERT INTO oc_session VALUES('e2e172c24d24fbd1f1934f8f19','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 21:26:13');
INSERT INTO oc_session VALUES('e409bd115c3c360231e5f5d0f5','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"5RdsD0Weje7kz3OcPrdFOV3dhNtoc35f\"}','2019-06-12 20:48:51');
INSERT INTO oc_session VALUES('e454dbf6d1d540e51b295c94f2','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 17:41:33');
INSERT INTO oc_session VALUES('e465b44bd880131642bfa57d54','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:51:46');
INSERT INTO oc_session VALUES('e505f10d6106d5da0d99450187','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-05 15:44:37');
INSERT INTO oc_session VALUES('e532d4ae8318d5c2d3b6e20ebd','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 17:44:04');
INSERT INTO oc_session VALUES('e5ee969c7624b762a566435c85','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 16:53:19');
INSERT INTO oc_session VALUES('e60d4b6e92ab0eb77b11905b6d','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 17:41:59');
INSERT INTO oc_session VALUES('e664a48b6d0d9a5a124b124414','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"XlXy3jLWGAYQ8pzEK943XD6KYLDOCz7G\"}','2019-06-21 18:18:22');
INSERT INTO oc_session VALUES('e6fbddea39a09ddbadc5ac2a40','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-13 08:10:54');
INSERT INTO oc_session VALUES('e70f879c4e66a13ca38bb9488f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 16:57:56');
INSERT INTO oc_session VALUES('e747243fae0f42b34e88529b1c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-01 15:55:48');
INSERT INTO oc_session VALUES('e789ba3634c244734a58380252','false','2019-07-12 10:32:12');
INSERT INTO oc_session VALUES('e798f1df9e51a6d34051c81074','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-15 15:57:01');
INSERT INTO oc_session VALUES('e80b60553a9928f09c0b3fc3a6','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"5gbjkHQ5lh6i7q6NuwExmkEj8Dncyo92\"}','2019-07-08 19:37:46');
INSERT INTO oc_session VALUES('e86725c77c3256f8f4f7868152','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 16:29:23');
INSERT INTO oc_session VALUES('e8732d544e2859f47c836696da','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 10:37:39');
INSERT INTO oc_session VALUES('e879aa874fe42fbb71695326cf','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:26:08');
INSERT INTO oc_session VALUES('e93fe6f0ff632186631f79c49f','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 18:26:44');
INSERT INTO oc_session VALUES('e9594ffc13b6334edad12bc168','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:00:12');
INSERT INTO oc_session VALUES('e979ef694ae9e2488c5b5795ae','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 15:47:22');
INSERT INTO oc_session VALUES('e9cc9d50fde5e63ec5dd2b36c6','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-30 14:32:03');
INSERT INTO oc_session VALUES('ea2751443df3ad8995ee1a9da0','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-05 15:45:19');
INSERT INTO oc_session VALUES('ea478edf70f106b03e905fe61c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-27 17:00:33');
INSERT INTO oc_session VALUES('ea8457b9d3b90650f9828294b1','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-07 12:40:06');
INSERT INTO oc_session VALUES('ebb74a5d4ad42c949694525277','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-05-28 15:43:43');
INSERT INTO oc_session VALUES('ebe1d234436d23af739539fcc9','{\"user_id\":\"1\",\"user_token\":\"TeH0hYNWuE7DJEILRDnAxSsSNdspF82U\"}','2019-05-25 19:59:23');
INSERT INTO oc_session VALUES('ec6f60fd90bc58aced030945f1','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:18:06');
INSERT INTO oc_session VALUES('ec8568b44f22adce919f598be1','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-09 19:45:26');
INSERT INTO oc_session VALUES('ecbe678869e228a3f8ec2393dd','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 16:55:42');
INSERT INTO oc_session VALUES('edbca79e1f2fc7744d6f36268b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-30 15:42:56');
INSERT INTO oc_session VALUES('edfff7df4d7eba3ad48dcbc3d9','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-06 16:14:14');
INSERT INTO oc_session VALUES('ee05f70a898a4b1cca3b02b39a','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-30 16:17:18');
INSERT INTO oc_session VALUES('ee56b81d476b837cc86ed5b673','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-14 18:22:37');
INSERT INTO oc_session VALUES('f022bb128321bb50621cbe7599','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 08:44:38');
INSERT INTO oc_session VALUES('f0d523b387f4522a1db731d2f6','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 15:47:17');
INSERT INTO oc_session VALUES('f1b65f2358429e2bacddd2ab49','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:20:05');
INSERT INTO oc_session VALUES('f1e0eeb24018e60fbb93144b75','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:09:54');
INSERT INTO oc_session VALUES('f245769463e78ced946ce81aa5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-10 18:57:16');
INSERT INTO oc_session VALUES('f26df49dab1aaf94b5e4286160','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 18:56:11');
INSERT INTO oc_session VALUES('f28e250a3b7fbc43ab2bb2abce','false','2019-07-12 10:33:19');
INSERT INTO oc_session VALUES('f2964670d8ee222fa581d719fe','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:14:02');
INSERT INTO oc_session VALUES('f29ce7db48802c422737b2ba8f','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"cWFP3TKB8pOs3WjdVywt7Im0Am4KDK4q\",\"compare\":[\"45\"]}','2019-06-21 17:41:59');
INSERT INTO oc_session VALUES('f2e292dca39214972e74ed7e03','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 16:43:02');
INSERT INTO oc_session VALUES('f2e3a4e8066a6e259e2589f099','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-09-06 06:54:32');
INSERT INTO oc_session VALUES('f301ef8389f5a0438b8b6301b1','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 18:21:00');
INSERT INTO oc_session VALUES('f324eab35cd2676fb87837f48e','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 18:13:21');
INSERT INTO oc_session VALUES('f3694b58ec59270521df183613','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:00:14');
INSERT INTO oc_session VALUES('f369ab04ea0571be63309d4fe2','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-07 11:26:56');
INSERT INTO oc_session VALUES('f3e829677e857d455a0a01e09c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-30 18:32:38');
INSERT INTO oc_session VALUES('f418bbb3e030d0637ccd9ac968','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 11:20:55');
INSERT INTO oc_session VALUES('f431ce139e98c764d869239fa9','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 17:38:32');
INSERT INTO oc_session VALUES('f4b8b9cd4b91836075af8cc411','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"xtwJjZ1UVQ1lXGXLBJCxiUgbVSVffxVy\",\"success\":\"Success: You have modified layouts!\"}','2019-06-10 16:53:50');
INSERT INTO oc_session VALUES('f503a520734a52a29933323513','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:26:42');
INSERT INTO oc_session VALUES('f517acee5a67aea7e30d3c5f69','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 16:34:53');
INSERT INTO oc_session VALUES('f558d8506338124f28d17486df','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 16:34:55');
INSERT INTO oc_session VALUES('f593e4310cc309ce17bea649ac','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 18:21:42');
INSERT INTO oc_session VALUES('f5e2b09082ec859abaef05cd84','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 12:49:50');
INSERT INTO oc_session VALUES('f62af740d11699d4d7cc0c2bcb','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-17 12:27:17');
INSERT INTO oc_session VALUES('f717abe3794bae7f7eeb2b06ae','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-19 13:28:51');
INSERT INTO oc_session VALUES('f7b2349ba3eeba8618c6103de1','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-16 04:01:32');
INSERT INTO oc_session VALUES('f7cfc975dcf9e3cb6e6c4fa458','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-31 11:43:47');
INSERT INTO oc_session VALUES('f8633bb1aca4585de5d6c121e8','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:07:55');
INSERT INTO oc_session VALUES('f8d6f2978f8f0ad0497225f106','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 17:11:29');
INSERT INTO oc_session VALUES('fa0d8bbecd88667bc94c41a687','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-05 15:29:13');
INSERT INTO oc_session VALUES('fa1490388a440cefc07dc76b21','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 18:03:41');
INSERT INTO oc_session VALUES('fa5adf84cdfa0836378c35f4d5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 19:35:54');
INSERT INTO oc_session VALUES('fa8917389e011a3e0bff6d034c','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-01 15:58:30');
INSERT INTO oc_session VALUES('fa9b9b869ad03473f9441c8966','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-27 16:48:10');
INSERT INTO oc_session VALUES('fa9eb74f62b623fefbe5d6bff7','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-04 16:53:22');
INSERT INTO oc_session VALUES('fb24a171c3c1303d33cb533d6b','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-18 11:46:02');
INSERT INTO oc_session VALUES('fb2a5cae194bb93c7cf4ba6def','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 20:53:00');
INSERT INTO oc_session VALUES('fb86a618abb64443bd4a86b671','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 16:04:08');
INSERT INTO oc_session VALUES('fb997d86589384945c45a891ac','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-24 18:54:21');
INSERT INTO oc_session VALUES('fbb0fb55e34bc7710f9b797f44','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-05 15:45:23');
INSERT INTO oc_session VALUES('fbf9d860e5be300257d5796a7c','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"AKoRtrdiqsyTKj9Inim0p0c8EOh45rIw\"}','2019-09-06 05:15:39');
INSERT INTO oc_session VALUES('fc02f280014b9763866787d427','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-03 16:39:51');
INSERT INTO oc_session VALUES('fc1be2a16eb369169abf819567','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-08 21:00:32');
INSERT INTO oc_session VALUES('fc7419f34a4c9be2a55ea10b22','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 17:03:04');
INSERT INTO oc_session VALUES('fcaa983f5b1ab8668c33640bb9','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-07 19:07:36');
INSERT INTO oc_session VALUES('fcb4677b4287bf2a57f97cbf3c','{\"language\":\"en-gb\",\"currency\":\"EUR\"}','2019-09-03 18:42:18');
INSERT INTO oc_session VALUES('fd5d8027377e53187d599eddcc','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-02 18:50:05');
INSERT INTO oc_session VALUES('fdae645bb1e21a5f900234eb21','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-07-12 10:36:20');
INSERT INTO oc_session VALUES('fde75e1c9898af10230c0446ce','{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"dyTysaGQHLNc1XEpwFc0XsQASk2Kxj7s\",\"account\":\"register\",\"compare\":[],\"vouchers\":[]}','2019-06-06 19:15:37');
INSERT INTO oc_session VALUES('fe8096b92439de927e4c68c285','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-30 13:36:04');
INSERT INTO oc_session VALUES('fe9bedfde8d5c933e86c0981a5','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-08-28 18:42:26');
INSERT INTO oc_session VALUES('fff0c0956d5fc21573b171dd14','{\"language\":\"en-gb\",\"currency\":\"USD\"}','2019-06-16 10:59:14');



DROP TABLE IF EXISTS `oc_setting`;

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`),
  KEY `store_id` (`store_id`),
  KEY `code` (`code`),
  KEY `key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=5992 DEFAULT CHARSET=utf8;

INSERT INTO oc_setting VALUES(4,0,'voucher','total_voucher_sort_order',8,0);
INSERT INTO oc_setting VALUES(5,0,'voucher','total_voucher_status',1,0);
INSERT INTO oc_setting VALUES(732,0,'module_filter','module_filter_status',1,0);
INSERT INTO oc_setting VALUES(95,0,'payment_free_checkout','payment_free_checkout_status',1,0);
INSERT INTO oc_setting VALUES(96,0,'payment_free_checkout','free_checkout_order_status_id',1,0);
INSERT INTO oc_setting VALUES(97,0,'payment_free_checkout','payment_free_checkout_sort_order',1,0);
INSERT INTO oc_setting VALUES(98,0,'payment_cod','payment_cod_sort_order',5,0);
INSERT INTO oc_setting VALUES(99,0,'payment_cod','payment_cod_total',0.01,0);
INSERT INTO oc_setting VALUES(100,0,'payment_cod','payment_cod_order_status_id',1,0);
INSERT INTO oc_setting VALUES(101,0,'payment_cod','payment_cod_geo_zone_id',0,0);
INSERT INTO oc_setting VALUES(102,0,'payment_cod','payment_cod_status',1,0);
INSERT INTO oc_setting VALUES(103,0,'shipping_flat','shipping_flat_sort_order',1,0);
INSERT INTO oc_setting VALUES(104,0,'shipping_flat','shipping_flat_status',1,0);
INSERT INTO oc_setting VALUES(105,0,'shipping_flat','shipping_flat_geo_zone_id',0,0);
INSERT INTO oc_setting VALUES(106,0,'shipping_flat','shipping_flat_tax_class_id',9,0);
INSERT INTO oc_setting VALUES(107,0,'shipping_flat','shipping_flat_cost',5.00,0);
INSERT INTO oc_setting VALUES(108,0,'total_shipping','total_shipping_sort_order',3,0);
INSERT INTO oc_setting VALUES(109,0,'total_sub_total','sub_total_sort_order',1,0);
INSERT INTO oc_setting VALUES(110,0,'total_sub_total','total_sub_total_status',1,0);
INSERT INTO oc_setting VALUES(111,0,'total_tax','total_tax_status',1,0);
INSERT INTO oc_setting VALUES(112,0,'total_total','total_total_sort_order',9,0);
INSERT INTO oc_setting VALUES(113,0,'total_total','total_total_status',1,0);
INSERT INTO oc_setting VALUES(114,0,'total_tax','total_tax_sort_order',5,0);
INSERT INTO oc_setting VALUES(115,0,'total_credit','total_credit_sort_order',7,0);
INSERT INTO oc_setting VALUES(116,0,'total_credit','total_credit_status',1,0);
INSERT INTO oc_setting VALUES(117,0,'total_reward','total_reward_sort_order',2,0);
INSERT INTO oc_setting VALUES(118,0,'total_reward','total_reward_status',1,0);
INSERT INTO oc_setting VALUES(119,0,'total_shipping','total_shipping_status',1,0);
INSERT INTO oc_setting VALUES(120,0,'total_shipping','total_shipping_estimator',1,0);
INSERT INTO oc_setting VALUES(121,0,'total_coupon','total_coupon_sort_order',4,0);
INSERT INTO oc_setting VALUES(122,0,'total_coupon','total_coupon_status',1,0);
INSERT INTO oc_setting VALUES(123,0,'module_category','module_category_status',1,0);
INSERT INTO oc_setting VALUES(124,0,'module_account','module_account_status',1,0);
INSERT INTO oc_setting VALUES(877,0,'module_information','module_information_status',1,0);
INSERT INTO oc_setting VALUES(149,0,'dashboard_activity','dashboard_activity_status',1,0);
INSERT INTO oc_setting VALUES(150,0,'dashboard_activity','dashboard_activity_sort_order',7,0);
INSERT INTO oc_setting VALUES(151,0,'dashboard_sale','dashboard_sale_status',1,0);
INSERT INTO oc_setting VALUES(152,0,'dashboard_sale','dashboard_sale_width',3,0);
INSERT INTO oc_setting VALUES(153,0,'dashboard_chart','dashboard_chart_status',1,0);
INSERT INTO oc_setting VALUES(154,0,'dashboard_chart','dashboard_chart_width',6,0);
INSERT INTO oc_setting VALUES(155,0,'dashboard_customer','dashboard_customer_status',1,0);
INSERT INTO oc_setting VALUES(156,0,'dashboard_customer','dashboard_customer_width',3,0);
INSERT INTO oc_setting VALUES(157,0,'dashboard_map','dashboard_map_status',1,0);
INSERT INTO oc_setting VALUES(158,0,'dashboard_map','dashboard_map_width',6,0);
INSERT INTO oc_setting VALUES(159,0,'dashboard_online','dashboard_online_status',1,0);
INSERT INTO oc_setting VALUES(160,0,'dashboard_online','dashboard_online_width',3,0);
INSERT INTO oc_setting VALUES(161,0,'dashboard_order','dashboard_order_sort_order',1,0);
INSERT INTO oc_setting VALUES(162,0,'dashboard_order','dashboard_order_status',1,0);
INSERT INTO oc_setting VALUES(163,0,'dashboard_order','dashboard_order_width',3,0);
INSERT INTO oc_setting VALUES(164,0,'dashboard_sale','dashboard_sale_sort_order',2,0);
INSERT INTO oc_setting VALUES(165,0,'dashboard_customer','dashboard_customer_sort_order',3,0);
INSERT INTO oc_setting VALUES(166,0,'dashboard_online','dashboard_online_sort_order',4,0);
INSERT INTO oc_setting VALUES(167,0,'dashboard_map','dashboard_map_sort_order',5,0);
INSERT INTO oc_setting VALUES(168,0,'dashboard_chart','dashboard_chart_sort_order',6,0);
INSERT INTO oc_setting VALUES(169,0,'dashboard_recent','dashboard_recent_status',1,0);
INSERT INTO oc_setting VALUES(170,0,'dashboard_recent','dashboard_recent_sort_order',8,0);
INSERT INTO oc_setting VALUES(171,0,'dashboard_activity','dashboard_activity_width',4,0);
INSERT INTO oc_setting VALUES(172,0,'dashboard_recent','dashboard_recent_width',8,0);
INSERT INTO oc_setting VALUES(173,0,'report_customer_activity','report_customer_activity_status',1,0);
INSERT INTO oc_setting VALUES(174,0,'report_customer_activity','report_customer_activity_sort_order',1,0);
INSERT INTO oc_setting VALUES(175,0,'report_customer_order','report_customer_order_status',1,0);
INSERT INTO oc_setting VALUES(176,0,'report_customer_order','report_customer_order_sort_order',2,0);
INSERT INTO oc_setting VALUES(177,0,'report_customer_reward','report_customer_reward_status',1,0);
INSERT INTO oc_setting VALUES(178,0,'report_customer_reward','report_customer_reward_sort_order',3,0);
INSERT INTO oc_setting VALUES(179,0,'report_customer_search','report_customer_search_sort_order',3,0);
INSERT INTO oc_setting VALUES(180,0,'report_customer_search','report_customer_search_status',1,0);
INSERT INTO oc_setting VALUES(181,0,'report_customer_transaction','report_customer_transaction_status',1,0);
INSERT INTO oc_setting VALUES(182,0,'report_customer_transaction','report_customer_transaction_status_sort_order',4,0);
INSERT INTO oc_setting VALUES(183,0,'report_sale_tax','report_sale_tax_status',1,0);
INSERT INTO oc_setting VALUES(184,0,'report_sale_tax','report_sale_tax_sort_order',5,0);
INSERT INTO oc_setting VALUES(185,0,'report_sale_shipping','report_sale_shipping_status',1,0);
INSERT INTO oc_setting VALUES(186,0,'report_sale_shipping','report_sale_shipping_sort_order',6,0);
INSERT INTO oc_setting VALUES(187,0,'report_sale_return','report_sale_return_status',1,0);
INSERT INTO oc_setting VALUES(188,0,'report_sale_return','report_sale_return_sort_order',7,0);
INSERT INTO oc_setting VALUES(189,0,'report_sale_order','report_sale_order_status',1,0);
INSERT INTO oc_setting VALUES(190,0,'report_sale_order','report_sale_order_sort_order',8,0);
INSERT INTO oc_setting VALUES(191,0,'report_sale_coupon','report_sale_coupon_status',1,0);
INSERT INTO oc_setting VALUES(192,0,'report_sale_coupon','report_sale_coupon_sort_order',9,0);
INSERT INTO oc_setting VALUES(193,0,'report_product_viewed','report_product_viewed_status',1,0);
INSERT INTO oc_setting VALUES(194,0,'report_product_viewed','report_product_viewed_sort_order',10,0);
INSERT INTO oc_setting VALUES(195,0,'report_product_purchased','report_product_purchased_status',1,0);
INSERT INTO oc_setting VALUES(196,0,'report_product_purchased','report_product_purchased_sort_order',11,0);
INSERT INTO oc_setting VALUES(197,0,'report_marketing','report_marketing_status',1,0);
INSERT INTO oc_setting VALUES(198,0,'report_marketing','report_marketing_sort_order',12,0);
INSERT INTO oc_setting VALUES(2248,0,'developer','developer_sass',0,0);
INSERT INTO oc_setting VALUES(2247,0,'developer','developer_theme',0,0);
INSERT INTO oc_setting VALUES(5989,0,'theme_default','theme_default_image_cart_height',900,0);
INSERT INTO oc_setting VALUES(5990,0,'theme_default','theme_default_image_location_width',268,0);
INSERT INTO oc_setting VALUES(5991,0,'theme_default','theme_default_image_location_height',50,0);
INSERT INTO oc_setting VALUES(1377,0,'tntspeedup','tntspeedup_minify_css',1,0);
INSERT INTO oc_setting VALUES(1376,0,'tntspeedup','tntspeedup_image_lazyload',1,0);
INSERT INTO oc_setting VALUES(1378,0,'tntspeedup','tntspeedup_minify_js',1,0);
INSERT INTO oc_setting VALUES(1379,0,'tntspeedup','tntspeedup_minify_html',1,0);
INSERT INTO oc_setting VALUES(1380,0,'tntspeedup','tntspeedup_defer',1,0);
INSERT INTO oc_setting VALUES(5988,0,'theme_default','theme_default_image_cart_width',900,0);
INSERT INTO oc_setting VALUES(5986,0,'theme_default','theme_default_image_wishlist_width',78,0);
INSERT INTO oc_setting VALUES(5987,0,'theme_default','theme_default_image_wishlist_height',98,0);
INSERT INTO oc_setting VALUES(5985,0,'theme_default','theme_default_image_compare_height',90,0);
INSERT INTO oc_setting VALUES(5984,0,'theme_default','theme_default_image_compare_width',90,0);
INSERT INTO oc_setting VALUES(5983,0,'theme_default','theme_default_image_related_height',900,0);
INSERT INTO oc_setting VALUES(5982,0,'theme_default','theme_default_image_related_width',900,0);
INSERT INTO oc_setting VALUES(5968,0,'theme_default','theme_default_directory','organic_organix_101_theme',0);
INSERT INTO oc_setting VALUES(5969,0,'theme_default','theme_default_status',1,0);
INSERT INTO oc_setting VALUES(5970,0,'theme_default','theme_default_product_limit',15,0);
INSERT INTO oc_setting VALUES(5971,0,'theme_default','theme_default_product_description_length',216,0);
INSERT INTO oc_setting VALUES(5972,0,'theme_default','theme_default_image_category_width',838,0);
INSERT INTO oc_setting VALUES(5973,0,'theme_default','theme_default_image_category_height',206,0);
INSERT INTO oc_setting VALUES(5974,0,'theme_default','theme_default_image_thumb_width',900,0);
INSERT INTO oc_setting VALUES(5975,0,'theme_default','theme_default_image_thumb_height',900,0);
INSERT INTO oc_setting VALUES(5976,0,'theme_default','theme_default_image_popup_width',900,0);
INSERT INTO oc_setting VALUES(5977,0,'theme_default','theme_default_image_popup_height',900,0);
INSERT INTO oc_setting VALUES(5978,0,'theme_default','theme_default_image_product_width',900,0);
INSERT INTO oc_setting VALUES(5979,0,'theme_default','theme_default_image_product_height',900,0);
INSERT INTO oc_setting VALUES(5980,0,'theme_default','theme_default_image_additional_width',900,0);
INSERT INTO oc_setting VALUES(5981,0,'theme_default','theme_default_image_additional_height',900,0);
INSERT INTO oc_setting VALUES(5966,0,'config','config_error_log',1,0);
INSERT INTO oc_setting VALUES(5967,0,'config','config_error_filename','error.log',0);
INSERT INTO oc_setting VALUES(5535,0,'tntthemesetting','tntthemesetting_minifycss',1,0);
INSERT INTO oc_setting VALUES(5536,0,'tntthemesetting','tntthemesetting_minifyhtml',1,0);
INSERT INTO oc_setting VALUES(5537,0,'tntthemesetting','tntthemesetting_minifyjs',1,0);
INSERT INTO oc_setting VALUES(5533,0,'tntthemesetting','tntthemesetting_newproductbanner_width',360,0);
INSERT INTO oc_setting VALUES(5534,0,'tntthemesetting','tntthemesetting_newproductbanner_height',426,0);
INSERT INTO oc_setting VALUES(5532,0,'tntthemesetting','tntthemesetting_quickview_height',900,0);
INSERT INTO oc_setting VALUES(5531,0,'tntthemesetting','tntthemesetting_quickview_width',900,0);
INSERT INTO oc_setting VALUES(5530,0,'tntthemesetting','tntthemesetting_livesearch_height',900,0);
INSERT INTO oc_setting VALUES(5529,0,'tntthemesetting','tntthemesetting_livesearch_width',900,0);
INSERT INTO oc_setting VALUES(5525,0,'tntthemesetting','tntthemesetting_tabproduct_width',900,0);
INSERT INTO oc_setting VALUES(5526,0,'tntthemesetting','tntthemesetting_tabproduct_height',900,0);
INSERT INTO oc_setting VALUES(5527,0,'tntthemesetting','tntthemesetting_popupcart_width',253,0);
INSERT INTO oc_setting VALUES(5528,0,'tntthemesetting','tntthemesetting_popupcart_height',253,0);
INSERT INTO oc_setting VALUES(5524,0,'tntthemesetting','tntthemesetting_newsletterpopup_height',400,0);
INSERT INTO oc_setting VALUES(5521,0,'tntthemesetting','tntthemesetting_leftrighttestimoinal_width',100,0);
INSERT INTO oc_setting VALUES(5522,0,'tntthemesetting','tntthemesetting_leftrighttestimoinal_height',100,0);
INSERT INTO oc_setting VALUES(5523,0,'tntthemesetting','tntthemesetting_newsletterpopup_width',800,0);
INSERT INTO oc_setting VALUES(5520,0,'tntthemesetting','tntthemesetting_leftrightproduct_height',300,0);
INSERT INTO oc_setting VALUES(5519,0,'tntthemesetting','tntthemesetting_leftrightproduct_width',300,0);
INSERT INTO oc_setting VALUES(5518,0,'tntthemesetting','tntthemesetting_imagegallery_height',310,0);
INSERT INTO oc_setting VALUES(5517,0,'tntthemesetting','tntthemesetting_imagegallery_width',483,0);
INSERT INTO oc_setting VALUES(5516,0,'tntthemesetting','tntthemesetting_payemtnicon_height',31,0);
INSERT INTO oc_setting VALUES(5515,0,'tntthemesetting','tntthemesetting_payemtnicon_width',286,0);
INSERT INTO oc_setting VALUES(5514,0,'tntthemesetting','tntthemesetting_testimonialbgimage_height',686,0);
INSERT INTO oc_setting VALUES(5513,0,'tntthemesetting','tntthemesetting_testimonialbgimage_width',1895,0);
INSERT INTO oc_setting VALUES(5512,0,'tntthemesetting','tntthemesetting_offerbanner_height',502,0);
INSERT INTO oc_setting VALUES(5511,0,'tntthemesetting','tntthemesetting_offerbanner_width',1170,0);
INSERT INTO oc_setting VALUES(5510,0,'tntthemesetting','tntthemesetting_testimonial_height',100,0);
INSERT INTO oc_setting VALUES(5509,0,'tntthemesetting','tntthemesetting_testimonial_width',100,0);
INSERT INTO oc_setting VALUES(5508,0,'tntthemesetting','tntthemesetting_categoryimage_height',370,0);
INSERT INTO oc_setting VALUES(5507,0,'tntthemesetting','tntthemesetting_categoryimage_width',370,0);
INSERT INTO oc_setting VALUES(5506,0,'tntthemesetting','tntthemesetting_brandimage_height',96,0);
INSERT INTO oc_setting VALUES(5965,0,'config','config_error_display',1,0);
INSERT INTO oc_setting VALUES(5504,0,'tntthemesetting','tntthemesetting_sliderimage_height',685,0);
INSERT INTO oc_setting VALUES(5505,0,'tntthemesetting','tntthemesetting_brandimage_width',230,0);
INSERT INTO oc_setting VALUES(5503,0,'tntthemesetting','tntthemesetting_sliderimage_width',1920,0);
INSERT INTO oc_setting VALUES(5500,0,'tntthemesetting','tntthemesetting_genral','{\"pageloading\":\"1\",\"animation\":\"1\",\"producthover\":\"1\",\"menusticky\":\"1\"}',1);
INSERT INTO oc_setting VALUES(5964,0,'config','config_file_mime_allowed','text/plain\r\n\r\nimage/png\r\n\r\nimage/jpeg\r\n\r\nimage/gif\r\n\r\nimage/bmp\r\n\r\nimage/tiff\r\n\r\nimage/svg+xml\r\n\r\napplication/zip\r\n\r\n&quot;application/zip&quot;\r\n\r\napplication/x-zip\r\n\r\n&quot;application/x-zip&quot;\r\n\r\napplication/x-zip-compressed\r\n\r\n&quot;application/x-zip-compressed&quot;\r\n\r\napplication/rar\r\n\r\n&quot;application/rar&quot;\r\n\r\napplication/x-rar\r\n\r\n&quot;application/x-rar&quot;\r\n\r\napplication/x-rar-compressed\r\n\r\n&quot;application/x-rar-compressed&quot;\r\n\r\napplication/octet-stream\r\n\r\n&quot;application/octet-stream&quot;\r\n\r\naudio/mpeg\r\n\r\nvideo/quicktime\r\n\r\napplication/pdf',0);
INSERT INTO oc_setting VALUES(5963,0,'config','config_file_ext_allowed','zip\r\n\r\ntxt\r\n\r\npng\r\n\r\njpe\r\n\r\njpeg\r\n\r\njpg\r\n\r\ngif\r\n\r\nbmp\r\n\r\nico\r\n\r\ntiff\r\n\r\ntif\r\n\r\nsvg\r\n\r\nsvgz\r\n\r\nzip\r\n\r\nrar\r\n\r\nmsi\r\n\r\ncab\r\n\r\nmp3\r\n\r\nqt\r\n\r\nmov\r\n\r\npdf\r\n\r\npsd\r\n\r\nai\r\n\r\neps\r\n\r\nps\r\n\r\ndoc',0);
INSERT INTO oc_setting VALUES(5957,0,'config','config_compression',0,0);
INSERT INTO oc_setting VALUES(5958,0,'config','config_secure',0,0);
INSERT INTO oc_setting VALUES(5959,0,'config','config_password',1,0);
INSERT INTO oc_setting VALUES(5960,0,'config','config_shared',0,0);
INSERT INTO oc_setting VALUES(5961,0,'config','config_encryption','QPo6sZhPTW0QAaMUMaEXgWHdORFBiCk6aioAydPGIm5wqxAk289pA84rRIgTkv4eA5doLOdDTyx6r55laXM6ncujvfqpe4m8R42iPWl7QXF7t6fAeDxTThR00v1EFQ4zHWCGugamGsyDBNKlTYEqRjztDhpownzUbhA7Ck3mpF3Q4KtK8IgVbSkEiyA7q7ChM3eJLOOI7sxkoHGUNDDA5G5Gs8MfbwDTGQHcHomA8LSPTgWuaBWy9HhO0apJ7G57nlGkUSIl6ApiSZwHM1UpXPVMtKKEusLk7nI5dBzE1V52AegJSNV42pesMaGLlnoNJDaTwAMNzzyRz8WJeSQl05qAp5aNlP8CFItcYiBYNkzrKnYzZdBNnSpcYzCktpAGHpcAWxAmMDQ9FzooxbTzUa7D54Ppcee2bSeOexsWUpKFaTNmXJyeqjxcZkce21uw21b0AdSuXcYjvJo70gPuQHvN6YAC7utMmzsACMqY5pr4InmABS12XF9K0mXabIXnEaLzjsaAObst5JpM9NFlz0wOjsZAIt1qy1bt1TyztGCsASWNHREZg3MOCySgrJX1TYwebCEu4MwnVvcTPJrXYsfEaGxRPhlgZNPwLgiWDJa3Mo3n5DtSXroc04T2o2HkUC8otDXToXx1FQqZeqsfRAIjllFRz173fUdzZQuOB0ZwQ1jG78KDG3zeZVwrT5gFLLUMVoJg0GRqHhnJ2vq9tgwvTvsimLMRhwg9yqkqlRFUu9a8LY7Q4bQVpzqsSqjp8FLpr8XrtyLu7XdfWzAMtiR7NDbqn6CPgQ9nXnUNpddfbUJGdF6njBZwPa2m9EZjUlwX99B30oqbHAhG6CRhFR3b75B8VfkedzZ2FzM1hgyYbhs2zXVmw2p2GRHrRKfsiVkE6Z8QzVArGbHH9H98s0NeQymAGe8FIscNnFPHVYtlCNwcDr4CLG8W2n9lDPCM4n66T8WGAG8SCqIdxblBeLzm1HxgwZ7RowgLOvWcoM4eU4iMVFVW6f9ALAEVBAt6',0);
INSERT INTO oc_setting VALUES(5962,0,'config','config_file_max_size',300000,0);
INSERT INTO oc_setting VALUES(5953,0,'config','config_mail_alert_email','',0);
INSERT INTO oc_setting VALUES(5954,0,'config','config_maintenance',0,0);
INSERT INTO oc_setting VALUES(5955,0,'config','config_seo_url',0,0);
INSERT INTO oc_setting VALUES(5956,0,'config','config_robots','abot\r\n\r\ndbot\r\n\r\nebot\r\n\r\nhbot\r\n\r\nkbot\r\n\r\nlbot\r\n\r\nmbot\r\n\r\nnbot\r\n\r\nobot\r\n\r\npbot\r\n\r\nrbot\r\n\r\nsbot\r\n\r\ntbot\r\n\r\nvbot\r\n\r\nybot\r\n\r\nzbot\r\n\r\nbot.\r\n\r\nbot/\r\n\r\n_bot\r\n\r\n.bot\r\n\r\n/bot\r\n\r\n-bot\r\n\r\n:bot\r\n\r\n(bot\r\n\r\ncrawl\r\n\r\nslurp\r\n\r\nspider\r\n\r\nseek\r\n\r\naccoona\r\n\r\nacoon\r\n\r\nadressendeutschland\r\n\r\nah-ha.com\r\n\r\nahoy\r\n\r\naltavista\r\n\r\nananzi\r\n\r\nanthill\r\n\r\nappie\r\n\r\narachnophilia\r\n\r\narale\r\n\r\naraneo\r\n\r\naranha\r\n\r\narchitext\r\n\r\naretha\r\n\r\narks\r\n\r\nasterias\r\n\r\natlocal\r\n\r\natn\r\n\r\natomz\r\n\r\naugurfind\r\n\r\nbackrub\r\n\r\nbannana_bot\r\n\r\nbaypup\r\n\r\nbdfetch\r\n\r\nbig brother\r\n\r\nbiglotron\r\n\r\nbjaaland\r\n\r\nblackwidow\r\n\r\nblaiz\r\n\r\nblog\r\n\r\nblo.\r\n\r\nbloodhound\r\n\r\nboitho\r\n\r\nbooch\r\n\r\nbradley\r\n\r\nbutterfly\r\n\r\ncalif\r\n\r\ncassandra\r\n\r\nccubee\r\n\r\ncfetch\r\n\r\ncharlotte\r\n\r\nchurl\r\n\r\ncienciaficcion\r\n\r\ncmc\r\n\r\ncollective\r\n\r\ncomagent\r\n\r\ncombine\r\n\r\ncomputingsite\r\n\r\ncsci\r\n\r\ncurl\r\n\r\ncusco\r\n\r\ndaumoa\r\n\r\ndeepindex\r\n\r\ndelorie\r\n\r\ndepspid\r\n\r\ndeweb\r\n\r\ndie blinde kuh\r\n\r\ndigger\r\n\r\nditto\r\n\r\ndmoz\r\n\r\ndocomo\r\n\r\ndownload express\r\n\r\ndtaagent\r\n\r\ndwcp\r\n\r\nebiness\r\n\r\nebingbong\r\n\r\ne-collector\r\n\r\nejupiter\r\n\r\nemacs-w3 search engine\r\n\r\nesther\r\n\r\nevliya celebi\r\n\r\nezresult\r\n\r\nfalcon\r\n\r\nfelix ide\r\n\r\nferret\r\n\r\nfetchrover\r\n\r\nfido\r\n\r\nfindlinks\r\n\r\nfireball\r\n\r\nfish search\r\n\r\nfouineur\r\n\r\nfunnelweb\r\n\r\ngazz\r\n\r\ngcreep\r\n\r\ngenieknows\r\n\r\ngetterroboplus\r\n\r\ngeturl\r\n\r\nglx\r\n\r\ngoforit\r\n\r\ngolem\r\n\r\ngrabber\r\n\r\ngrapnel\r\n\r\ngralon\r\n\r\ngriffon\r\n\r\ngromit\r\n\r\ngrub\r\n\r\ngulliver\r\n\r\nhamahakki\r\n\r\nharvest\r\n\r\nhavindex\r\n\r\nhelix\r\n\r\nheritrix\r\n\r\nhku www octopus\r\n\r\nhomerweb\r\n\r\nhtdig\r\n\r\nhtml index\r\n\r\nhtml_analyzer\r\n\r\nhtmlgobble\r\n\r\nhubater\r\n\r\nhyper-decontextualizer\r\n\r\nia_archiver\r\n\r\nibm_planetwide\r\n\r\nichiro\r\n\r\niconsurf\r\n\r\niltrovatore\r\n\r\nimage.kapsi.net\r\n\r\nimagelock\r\n\r\nincywincy\r\n\r\nindexer\r\n\r\ninfobee\r\n\r\ninformant\r\n\r\ningrid\r\n\r\ninktomisearch.com\r\n\r\ninspector web\r\n\r\nintelliagent\r\n\r\ninternet shinchakubin\r\n\r\nip3000\r\n\r\niron33\r\n\r\nisraeli-search\r\n\r\nivia\r\n\r\njack\r\n\r\njakarta\r\n\r\njavabee\r\n\r\njetbot\r\n\r\njumpstation\r\n\r\nkatipo\r\n\r\nkdd-explorer\r\n\r\nkilroy\r\n\r\nknowledge\r\n\r\nkototoi\r\n\r\nkretrieve\r\n\r\nlabelgrabber\r\n\r\nlachesis\r\n\r\nlarbin\r\n\r\nlegs\r\n\r\nlibwww\r\n\r\nlinkalarm\r\n\r\nlink validator\r\n\r\nlinkscan\r\n\r\nlockon\r\n\r\nlwp\r\n\r\nlycos\r\n\r\nmagpie\r\n\r\nmantraagent\r\n\r\nmapoftheinternet\r\n\r\nmarvin/\r\n\r\nmattie\r\n\r\nmediafox\r\n\r\nmediapartners\r\n\r\nmercator\r\n\r\nmerzscope\r\n\r\nmicrosoft url control\r\n\r\nminirank\r\n\r\nmiva\r\n\r\nmj12\r\n\r\nmnogosearch\r\n\r\nmoget\r\n\r\nmonster\r\n\r\nmoose\r\n\r\nmotor\r\n\r\nmultitext\r\n\r\nmuncher\r\n\r\nmuscatferret\r\n\r\nmwd.search\r\n\r\nmyweb\r\n\r\nnajdi\r\n\r\nnameprotect\r\n\r\nnationaldirectory\r\n\r\nnazilla\r\n\r\nncsa beta\r\n\r\nnec-meshexplorer\r\n\r\nnederland.zoek\r\n\r\nnetcarta webmap engine\r\n\r\nnetmechanic\r\n\r\nnetresearchserver\r\n\r\nnetscoop\r\n\r\nnewscan-online\r\n\r\nnhse\r\n\r\nnokia6682/\r\n\r\nnomad\r\n\r\nnoyona\r\n\r\nnutch\r\n\r\nnzexplorer\r\n\r\nobjectssearch\r\n\r\noccam\r\n\r\nomni\r\n\r\nopen text\r\n\r\nopenfind\r\n\r\nopenintelligencedata\r\n\r\norb search\r\n\r\nosis-project\r\n\r\npack rat\r\n\r\npageboy\r\n\r\npagebull\r\n\r\npage_verifier\r\n\r\npanscient\r\n\r\nparasite\r\n\r\npartnersite\r\n\r\npatric\r\n\r\npear.\r\n\r\npegasus\r\n\r\nperegrinator\r\n\r\npgp key agent\r\n\r\nphantom\r\n\r\nphpdig\r\n\r\npicosearch\r\n\r\npiltdownman\r\n\r\npimptrain\r\n\r\npinpoint\r\n\r\npioneer\r\n\r\npiranha\r\n\r\nplumtreewebaccessor\r\n\r\npogodak\r\n\r\npoirot\r\n\r\npompos\r\n\r\npoppelsdorf\r\n\r\npoppi\r\n\r\npopular iconoclast\r\n\r\npsycheclone\r\n\r\npublisher\r\n\r\npython\r\n\r\nrambler\r\n\r\nraven search\r\n\r\nroach\r\n\r\nroad runner\r\n\r\nroadhouse\r\n\r\nrobbie\r\n\r\nrobofox\r\n\r\nrobozilla\r\n\r\nrules\r\n\r\nsalty\r\n\r\nsbider\r\n\r\nscooter\r\n\r\nscoutjet\r\n\r\nscrubby\r\n\r\nsearch.\r\n\r\nsearchprocess\r\n\r\nsemanticdiscovery\r\n\r\nsenrigan\r\n\r\nsg-scout\r\n\r\nshai\'hulud\r\n\r\nshark\r\n\r\nshopwiki\r\n\r\nsidewinder\r\n\r\nsift\r\n\r\nsilk\r\n\r\nsimmany\r\n\r\nsite searcher\r\n\r\nsite valet\r\n\r\nsitetech-rover\r\n\r\nskymob.com\r\n\r\nsleek\r\n\r\nsmartwit\r\n\r\nsna-\r\n\r\nsnappy\r\n\r\nsnooper\r\n\r\nsohu\r\n\r\nspeedfind\r\n\r\nsphere\r\n\r\nsphider\r\n\r\nspinner\r\n\r\nspyder\r\n\r\nsteeler/\r\n\r\nsuke\r\n\r\nsuntek\r\n\r\nsupersnooper\r\n\r\nsurfnomore\r\n\r\nsven\r\n\r\nsygol\r\n\r\nszukacz\r\n\r\ntach black widow\r\n\r\ntarantula\r\n\r\ntempleton\r\n\r\n/teoma\r\n\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\n\r\ntheophrastus\r\n\r\ntitan\r\n\r\ntitin\r\n\r\ntkwww\r\n\r\ntoutatis\r\n\r\nt-rex\r\n\r\ntutorgig\r\n\r\ntwiceler\r\n\r\ntwisted\r\n\r\nucsd\r\n\r\nudmsearch\r\n\r\nurl check\r\n\r\nupdated\r\n\r\nvagabondo\r\n\r\nvalkyrie\r\n\r\nverticrawl\r\n\r\nvictoria\r\n\r\nvision-search\r\n\r\nvolcano\r\n\r\nvoyager/\r\n\r\nvoyager-hc\r\n\r\nw3c_validator\r\n\r\nw3m2\r\n\r\nw3mir\r\n\r\nwalker\r\n\r\nwallpaper\r\n\r\nwanderer\r\n\r\nwauuu\r\n\r\nwavefire\r\n\r\nweb core\r\n\r\nweb hopper\r\n\r\nweb wombat\r\n\r\nwebbandit\r\n\r\nwebcatcher\r\n\r\nwebcopy\r\n\r\nwebfoot\r\n\r\nweblayers\r\n\r\nweblinker\r\n\r\nweblog monitor\r\n\r\nwebmirror\r\n\r\nwebmonkey\r\n\r\nwebquest\r\n\r\nwebreaper\r\n\r\nwebsitepulse\r\n\r\nwebsnarf\r\n\r\nwebstolperer\r\n\r\nwebvac\r\n\r\nwebwalk\r\n\r\nwebwatch\r\n\r\nwebwombat\r\n\r\nwebzinger\r\n\r\nwhizbang\r\n\r\nwhowhere\r\n\r\nwild ferret\r\n\r\nworldlight\r\n\r\nwwwc\r\n\r\nwwwster\r\n\r\nxenu\r\n\r\nxget\r\n\r\nxift\r\n\r\nxirq\r\n\r\nyandex\r\n\r\nyanga\r\n\r\nyeti\r\n\r\nyodao\r\n\r\nzao\r\n\r\nzippp\r\n\r\nzyborg',0);
INSERT INTO oc_setting VALUES(5952,0,'config','config_mail_alert','[\"order\"]',1);
INSERT INTO oc_setting VALUES(5951,0,'config','config_mail_smtp_timeout',5,0);
INSERT INTO oc_setting VALUES(5950,0,'config','config_mail_smtp_port',25,0);
INSERT INTO oc_setting VALUES(5949,0,'config','config_mail_smtp_password','',0);
INSERT INTO oc_setting VALUES(5948,0,'config','config_mail_smtp_username','',0);
INSERT INTO oc_setting VALUES(5947,0,'config','config_mail_smtp_hostname','',0);
INSERT INTO oc_setting VALUES(5946,0,'config','config_mail_parameter','',0);
INSERT INTO oc_setting VALUES(5945,0,'config','config_mail_engine','mail',0);
INSERT INTO oc_setting VALUES(5944,0,'config','config_icon','catalog/themefactory/logo/favicon.png',0);
INSERT INTO oc_setting VALUES(5943,0,'config','config_logo','catalog/themefactory/logo/logo.jpg',0);
INSERT INTO oc_setting VALUES(5942,0,'config','config_captcha_page','[\"review\",\"return\",\"contact\"]',1);
INSERT INTO oc_setting VALUES(5941,0,'config','config_captcha','',0);
INSERT INTO oc_setting VALUES(5940,0,'config','config_return_status_id',2,0);
INSERT INTO oc_setting VALUES(5939,0,'config','config_return_id',0,0);
INSERT INTO oc_setting VALUES(5938,0,'config','config_affiliate_id',4,0);
INSERT INTO oc_setting VALUES(5937,0,'config','config_affiliate_commission',5,0);
INSERT INTO oc_setting VALUES(5936,0,'config','config_affiliate_auto',0,0);
INSERT INTO oc_setting VALUES(5935,0,'config','config_affiliate_approval',0,0);
INSERT INTO oc_setting VALUES(5934,0,'config','config_affiliate_group_id',1,0);
INSERT INTO oc_setting VALUES(5933,0,'config','config_stock_checkout',0,0);
INSERT INTO oc_setting VALUES(5932,0,'config','config_stock_warning',0,0);
INSERT INTO oc_setting VALUES(5931,0,'config','config_stock_display',0,0);
INSERT INTO oc_setting VALUES(5930,0,'config','config_api_id',4,0);
INSERT INTO oc_setting VALUES(5929,0,'config','config_fraud_status_id',7,0);
INSERT INTO oc_setting VALUES(5928,0,'config','config_complete_status','[\"5\",\"3\"]',1);
INSERT INTO oc_setting VALUES(5927,0,'config','config_processing_status','[\"5\",\"1\",\"2\",\"12\",\"3\"]',1);
INSERT INTO oc_setting VALUES(5926,0,'config','config_order_status_id',1,0);
INSERT INTO oc_setting VALUES(5925,0,'config','config_checkout_id',5,0);
INSERT INTO oc_setting VALUES(5924,0,'config','config_checkout_guest',1,0);
INSERT INTO oc_setting VALUES(5923,0,'config','config_cart_weight',1,0);
INSERT INTO oc_setting VALUES(5922,0,'config','config_invoice_prefix','INV-2019-00',0);
INSERT INTO oc_setting VALUES(5921,0,'config','config_account_id',3,0);
INSERT INTO oc_setting VALUES(5918,0,'config','config_customer_group_display','[\"1\"]',1);
INSERT INTO oc_setting VALUES(5920,0,'config','config_login_attempts',5,0);
INSERT INTO oc_setting VALUES(5919,0,'config','config_customer_price',0,0);
INSERT INTO oc_setting VALUES(5917,0,'config','config_customer_group_id',1,0);
INSERT INTO oc_setting VALUES(5916,0,'config','config_customer_search',0,0);
INSERT INTO oc_setting VALUES(5915,0,'config','config_customer_activity',0,0);
INSERT INTO oc_setting VALUES(5914,0,'config','config_customer_online',0,0);
INSERT INTO oc_setting VALUES(5913,0,'config','config_tax_customer','shipping',0);
INSERT INTO oc_setting VALUES(5912,0,'config','config_tax_default','shipping',0);
INSERT INTO oc_setting VALUES(5911,0,'config','config_tax',1,0);
INSERT INTO oc_setting VALUES(5910,0,'config','config_voucher_max',1000,0);
INSERT INTO oc_setting VALUES(5909,0,'config','config_voucher_min',1,0);
INSERT INTO oc_setting VALUES(5908,0,'config','config_review_guest',1,0);
INSERT INTO oc_setting VALUES(5907,0,'config','config_review_status',1,0);
INSERT INTO oc_setting VALUES(5906,0,'config','config_limit_admin',20,0);
INSERT INTO oc_setting VALUES(5905,0,'config','config_product_count',1,0);
INSERT INTO oc_setting VALUES(5904,0,'config','config_weight_class_id',1,0);
INSERT INTO oc_setting VALUES(5903,0,'config','config_length_class_id',1,0);
INSERT INTO oc_setting VALUES(5902,0,'config','config_currency_auto',1,0);
INSERT INTO oc_setting VALUES(5901,0,'config','config_currency','USD',0);
INSERT INTO oc_setting VALUES(5900,0,'config','config_admin_language','en-gb',0);
INSERT INTO oc_setting VALUES(5899,0,'config','config_language','en-gb',0);
INSERT INTO oc_setting VALUES(5898,0,'config','config_zone_id',3563,0);
INSERT INTO oc_setting VALUES(5897,0,'config','config_country_id',222,0);
INSERT INTO oc_setting VALUES(5896,0,'config','config_comment','',0);
INSERT INTO oc_setting VALUES(5895,0,'config','config_open','',0);
INSERT INTO oc_setting VALUES(5894,0,'config','config_image','',0);
INSERT INTO oc_setting VALUES(5892,0,'config','config_telephone','+ (123) 8800-555-6690',0);
INSERT INTO oc_setting VALUES(5893,0,'config','config_fax','',0);
INSERT INTO oc_setting VALUES(5891,0,'config','config_email','demo@demo.com',0);
INSERT INTO oc_setting VALUES(5890,0,'config','config_geocode','',0);
INSERT INTO oc_setting VALUES(5889,0,'config','config_address','Firs Avenue, Muswell',0);
INSERT INTO oc_setting VALUES(5888,0,'config','config_owner','demo',0);
INSERT INTO oc_setting VALUES(5887,0,'config','config_name','Your Store',0);
INSERT INTO oc_setting VALUES(5886,0,'config','config_layout_id',4,0);
INSERT INTO oc_setting VALUES(5885,0,'config','config_theme','default',0);
INSERT INTO oc_setting VALUES(5884,0,'config','config_meta_keyword','',0);
INSERT INTO oc_setting VALUES(5883,0,'config','config_meta_description','Fashion Store',0);
INSERT INTO oc_setting VALUES(5882,0,'config','config_meta_title','Fashion Store',0);
INSERT INTO oc_setting VALUES(5501,0,'tntthemesetting','tntthemesetting_customparent','{\"copyrighttextdisplay\":\"1\"}',1);
INSERT INTO oc_setting VALUES(5502,0,'tntthemesetting','tntthemesetting_footer','{\"language\":{\"1\":{\"copyrighttext\":\"\\u00a9 2019 Greenzone. All Rights Reserved\",\"copyrightlink\":\"#\"},\"7\":{\"copyrighttext\":\"\\u00a9 2019 Greenzone. All Rights Reserved\",\"copyrightlink\":\"#\"}}}',1);
INSERT INTO oc_setting VALUES(5499,0,'tntthemesetting','tntthemesetting_status',1,0);



DROP TABLE IF EXISTS `oc_shipping_courier`;

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`shipping_courier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_shipping_courier VALUES(1,'dhl','DHL');
INSERT INTO oc_shipping_courier VALUES(2,'fedex','Fedex');
INSERT INTO oc_shipping_courier VALUES(3,'ups','UPS');
INSERT INTO oc_shipping_courier VALUES(4,'royal-mail','Royal Mail');
INSERT INTO oc_shipping_courier VALUES(5,'usps','United States Postal Service');
INSERT INTO oc_shipping_courier VALUES(6,'auspost','Australia Post');
INSERT INTO oc_shipping_courier VALUES(7,'citylink','Citylink');



DROP TABLE IF EXISTS `oc_statistics`;

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  PRIMARY KEY (`statistics_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO oc_statistics VALUES(1,'order_sale',10344.9280);
INSERT INTO oc_statistics VALUES(2,'order_processing',0.0000);
INSERT INTO oc_statistics VALUES(3,'order_complete',0.0000);
INSERT INTO oc_statistics VALUES(4,'order_other',0.0000);
INSERT INTO oc_statistics VALUES(5,'returns',0.0000);
INSERT INTO oc_statistics VALUES(6,'product',0.0000);
INSERT INTO oc_statistics VALUES(7,'review',2.0000);



DROP TABLE IF EXISTS `oc_stock_status`;

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO oc_stock_status VALUES(7,1,'In Stock');
INSERT INTO oc_stock_status VALUES(8,1,'Pre-Order');
INSERT INTO oc_stock_status VALUES(5,1,'Out Of Stock');
INSERT INTO oc_stock_status VALUES(6,1,'2-3 Days');
INSERT INTO oc_stock_status VALUES(7,4,'In Stock');
INSERT INTO oc_stock_status VALUES(8,4,'Pre-Order');
INSERT INTO oc_stock_status VALUES(5,4,'Out Of Stock');
INSERT INTO oc_stock_status VALUES(6,4,'2-3 Days');
INSERT INTO oc_stock_status VALUES(7,7,'In Stock');
INSERT INTO oc_stock_status VALUES(8,7,'Pre-Order');
INSERT INTO oc_stock_status VALUES(5,7,'Out Of Stock');
INSERT INTO oc_stock_status VALUES(6,7,'2-3 Days');



DROP TABLE IF EXISTS `oc_store`;

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_tax_class`;

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`),
  KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO oc_tax_class VALUES(9,'Taxable Goods','Taxed goods','2009-01-06 23:21:53','2011-09-23 14:07:50');
INSERT INTO oc_tax_class VALUES(10,'Downloadable Products','Downloadable','2011-09-21 22:19:39','2011-09-22 10:27:36');



DROP TABLE IF EXISTS `oc_tax_rate`;

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

INSERT INTO oc_tax_rate VALUES(86,3,'VAT (20%)',20.0000,'P','2011-03-09 21:17:10','2011-09-22 22:24:29');
INSERT INTO oc_tax_rate VALUES(87,3,'Eco Tax (-2.00)',2.0000,'F','2011-09-21 21:49:23','2011-09-23 00:40:19');



DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_tax_rate_to_customer_group VALUES(86,1);
INSERT INTO oc_tax_rate_to_customer_group VALUES(87,1);



DROP TABLE IF EXISTS `oc_tax_rule`;

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`),
  KEY `tax_class_id` (`tax_class_id`),
  KEY `tax_rate_id` (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

INSERT INTO oc_tax_rule VALUES(121,10,86,'payment',1);
INSERT INTO oc_tax_rule VALUES(120,10,87,'store',0);
INSERT INTO oc_tax_rule VALUES(128,9,86,'shipping',1);
INSERT INTO oc_tax_rule VALUES(127,9,87,'shipping',2);



DROP TABLE IF EXISTS `oc_theme`;

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_tntblog_child`;

CREATE TABLE `oc_tntblog_child` (
  `tntblog_child_id` int(11) NOT NULL AUTO_INCREMENT,
  `tntblog_child_languages_id` int(11) NOT NULL,
  `tntblog_parent_id` int(11) NOT NULL,
  `tntblog_child_title` varchar(255) DEFAULT NULL,
  `tntblog_child_excerpt` varchar(255) DEFAULT NULL,
  `tntblog_child_content` varchar(255) DEFAULT NULL,
  `tntblog_child_metatitle` text,
  `tntblog_child_metatag` text,
  `tntblog_child_meta_description` text,
  `tntblog_child_metakeyword` text,
  PRIMARY KEY (`tntblog_child_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

INSERT INTO oc_tntblog_child VALUES(39,1,1,'This is Secound Post For XipBlog','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the ...','Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam,','you avoid making basic mistakes','','Lorem Ipsum is simply dummy text of the printing and typesetting industry.','new,last,old');
INSERT INTO oc_tntblog_child VALUES(40,7,1,'THIS IS SECOUND POST FOR XIPBLOG','Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehe','Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam,','you avoid making basic mistakes','','Lorem Ipsum is simply dummy text of the printing and typesetting industry.','new,last,old');
INSERT INTO oc_tntblog_child VALUES(41,1,2,'This is Secound Post For XipBlog','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the ...','Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam,','you avoid making basic mistakes','','Lorem Ipsum is simply dummy text of the printing and typesetting industry.','new,last,old');
INSERT INTO oc_tntblog_child VALUES(42,7,2,'THIS IS THIRD POST FOR XIPBLOG','Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehe','Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam,','you avoid making basic mistakes','','Lorem Ipsum is simply dummy text of the printing and typesetting industry.','new,last,old');
INSERT INTO oc_tntblog_child VALUES(43,1,3,'This is Secound Post For XipBlog','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the ...','Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam,','you avoid making basic mistakes','','Lorem Ipsum is simply dummy text of the printing and typesetting industry.','new,last,old');
INSERT INTO oc_tntblog_child VALUES(44,7,3,'THIS IS FOURTH POST FOR XIPBLOG','Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehe','Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam,','you avoid making basic mistakes','','Lorem Ipsum is simply dummy text of the printing and typesetting industry.','new,last,old');



DROP TABLE IF EXISTS `oc_tntblog_comment`;

CREATE TABLE `oc_tntblog_comment` (
  `tntblog_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `tntblog_id` int(11) NOT NULL,
  `tntblog_comment_name` varchar(255) DEFAULT NULL,
  `tntblog_comment_email` varchar(255) DEFAULT NULL,
  `tntblog_coment_url` varchar(255) DEFAULT NULL,
  `tntblog_comment_subject` varchar(255) DEFAULT NULL,
  `tntblog_comment_comment` text,
  `tntblog_comment_createdate` datetime DEFAULT NULL,
  `tntblog_comment_position` int(11) DEFAULT NULL,
  `tntblog_comment_status` int(11) NOT NULL,
  PRIMARY KEY (`tntblog_comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO oc_tntblog_comment VALUES(1,1,'demo','demo@demo.com','','sdsd','sdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsd','2019-08-18 17:50:44',1,1);
INSERT INTO oc_tntblog_comment VALUES(2,1,'demo','demo@demo.com','','sdsd','asaasaasaasaasaasaasaasaasaasaasaasaasaasaasaasa','2019-08-18 17:54:58',2,1);
INSERT INTO oc_tntblog_comment VALUES(3,1,'demo','demo@demo.com','','sdsd','asaasaasaasaasaasaasaasaasaasaasaasaasaasaasaasa','2019-08-18 17:56:25',3,1);



DROP TABLE IF EXISTS `oc_tntblog_gallery`;

CREATE TABLE `oc_tntblog_gallery` (
  `tntblog_gallery_id` int(11) NOT NULL AUTO_INCREMENT,
  `tntblog_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tntblog_gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS `oc_tntblog_parent`;

CREATE TABLE `oc_tntblog_parent` (
  `tntblog_parent_id` int(11) NOT NULL AUTO_INCREMENT,
  `tntblog_parent_status` int(11) NOT NULL,
  `tntblog_parent_position` int(11) DEFAULT NULL,
  `tntblog_parent_positionttype` varchar(255) DEFAULT NULL,
  `tntblog_parent_featureimage` varchar(255) DEFAULT NULL,
  `tntblog_parent_deafultcategory` int(11) DEFAULT NULL,
  `tntblog_parent_url` varchar(255) DEFAULT NULL,
  `tntblog_parent_video` varchar(255) DEFAULT NULL,
  `tntblog_parent_commentstatus` int(11) DEFAULT NULL,
  `tntblog_parent_createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`tntblog_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO oc_tntblog_parent VALUES(1,1,1,'standrad','catalog/themefactory/blog/1.jpg',1,'#','',1,'2019-08-17 00:04:25');
INSERT INTO oc_tntblog_parent VALUES(2,1,2,'standrad','catalog/themefactory/blog/2.jpg',1,'#','',1,'2019-08-17 00:04:25');
INSERT INTO oc_tntblog_parent VALUES(3,1,3,'standrad','catalog/themefactory/blog/3.jpg',1,'#','',1,'2019-08-17 00:04:25');



DROP TABLE IF EXISTS `oc_tntblogcategory_parent`;

CREATE TABLE `oc_tntblogcategory_parent` (
  `tntblogcategory_id` int(11) NOT NULL AUTO_INCREMENT,
  `tntblogcategory_status` int(11) NOT NULL,
  `tntblogcategory_position` int(11) DEFAULT NULL,
  `tntblogcategory_urlrewrite` varchar(255) DEFAULT NULL,
  `tntblogcategory_featureimage` varchar(255) DEFAULT NULL,
  `tntblogcategory_deafultcategory` int(11) DEFAULT NULL,
  PRIMARY KEY (`tntblogcategory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO oc_tntblogcategory_parent VALUES(1,1,1,'#','catalog/themefactory/blog/blogimage/demo_img_1.png',1);
INSERT INTO oc_tntblogcategory_parent VALUES(2,1,2,'#','catalog/themefactory/blog/blogimage/demo_img_2.png',1);
INSERT INTO oc_tntblogcategory_parent VALUES(3,1,3,'#','catalog/themefactory/blog/blogimage/demo_img_3.png',1);
INSERT INTO oc_tntblogcategory_parent VALUES(4,1,4,'#','catalog/themefactory/blog/blogimage/demo_img_4.png',1);



DROP TABLE IF EXISTS `oc_tntblogcategory_sub`;

CREATE TABLE `oc_tntblogcategory_sub` (
  `tntblogcategory_sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `tntblogcategory_sublang_id` int(11) NOT NULL,
  `tntblogcategory_id` int(11) NOT NULL,
  `tntblogcategory_sub_title` varchar(255) DEFAULT NULL,
  `tntblogcategory_sub_categorydes` varchar(255) DEFAULT NULL,
  `tntblogcategory_sub_metatitle` text,
  `tntblogcategory_sub_metades` text,
  `tntblogcategory_sub_metakeyword` text,
  PRIMARY KEY (`tntblogcategory_sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO oc_tntblogcategory_sub VALUES(1,1,1,'Fashion','','','','');
INSERT INTO oc_tntblogcategory_sub VALUES(2,7,1,'Fashion','','','','');
INSERT INTO oc_tntblogcategory_sub VALUES(3,1,2,'Fashion','','','','');
INSERT INTO oc_tntblogcategory_sub VALUES(4,7,2,'Fashion','','','','');
INSERT INTO oc_tntblogcategory_sub VALUES(5,1,3,'Fashion','','','','');
INSERT INTO oc_tntblogcategory_sub VALUES(6,7,3,'Fashion','','','','');
INSERT INTO oc_tntblogcategory_sub VALUES(7,1,4,'Fashion','','','','');
INSERT INTO oc_tntblogcategory_sub VALUES(8,7,4,'Fashion','','','','');



DROP TABLE IF EXISTS `oc_tntbrandlist`;

CREATE TABLE `oc_tntbrandlist` (
  `tntbrandlist_id` int(11) NOT NULL AUTO_INCREMENT,
  `tntbrandlist_link` varchar(255) NOT NULL,
  `tntbrandlist_status` int(11) NOT NULL,
  `tntbrandlist_position` int(11) NOT NULL,
  `tntbrandlist_image` varchar(255) NOT NULL,
  `tntbrandlist_text` text CHARACTER SET utf8,
  PRIMARY KEY (`tntbrandlist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO oc_tntbrandlist VALUES(1,'#',1,1,'catalog/themefactory/brandlist/1.jpg','{\"1\":{\"title\":\"Zara\"},\"7\":{\"title\":\"Zara\"}}');
INSERT INTO oc_tntbrandlist VALUES(2,'#',1,2,'catalog/themefactory/brandlist/2.jpg','{\"1\":{\"title\":\"Zara\"},\"7\":{\"title\":\"Zara\"}}');
INSERT INTO oc_tntbrandlist VALUES(3,'#',1,3,'catalog/themefactory/brandlist/3.jpg','{\"1\":{\"title\":\"Zara\"},\"7\":{\"title\":\"Zara\"}}');
INSERT INTO oc_tntbrandlist VALUES(4,'#',1,4,'catalog/themefactory/brandlist/4.jpg','{\"1\":{\"title\":\"Zara\"},\"7\":{\"title\":\"Zara\"}}');
INSERT INTO oc_tntbrandlist VALUES(5,'#',1,5,'catalog/themefactory/brandlist/5.jpg','{\"1\":{\"title\":\"Zara\"},\"7\":{\"title\":\"Zara\"}}');
INSERT INTO oc_tntbrandlist VALUES(6,'#',1,6,'catalog/themefactory/brandlist/6.jpg','{\"1\":{\"title\":\"Zara\"},\"7\":{\"title\":\"Zara\"}}');
INSERT INTO oc_tntbrandlist VALUES(7,'#',1,7,'catalog/themefactory/brandlist/7.jpg','{\"1\":{\"title\":\"Zara\"},\"7\":{\"title\":\"Zara\"}}');
INSERT INTO oc_tntbrandlist VALUES(8,'#',1,8,'catalog/themefactory/brandlist/8.jpg','{\"1\":{\"title\":\"Zara\"},\"7\":{\"title\":\"Zara\"}}');



DROP TABLE IF EXISTS `oc_tntcategorysliderchild`;

CREATE TABLE `oc_tntcategorysliderchild` (
  `tntcategorysliderchild_id` int(11) NOT NULL AUTO_INCREMENT,
  `tntcategorysliderparent_id` int(11) NOT NULL,
  `tntcategorysliderchildlanguage_id` int(11) NOT NULL,
  `tntcategorysliderchild_name` text CHARACTER SET utf8,
  `tntcategorysliderchild_description` text CHARACTER SET utf8,
  PRIMARY KEY (`tntcategorysliderchild_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

INSERT INTO oc_tntcategorysliderchild VALUES(41,1,1,'Women T-Shirt','Women T-Shirt');
INSERT INTO oc_tntcategorysliderchild VALUES(42,1,7,'Women T-Shirt','Women T-Shirt');
INSERT INTO oc_tntcategorysliderchild VALUES(45,3,1,'Shoes Collection','Shoes Collection');
INSERT INTO oc_tntcategorysliderchild VALUES(46,3,7,'Shoes Collection','Shoes Collection');
INSERT INTO oc_tntcategorysliderchild VALUES(47,4,1,'Men\'s Belts','Men\'s Belts');
INSERT INTO oc_tntcategorysliderchild VALUES(48,4,7,'Men\'s Belts','Men\'s Belts');
INSERT INTO oc_tntcategorysliderchild VALUES(49,5,1,'Pattern Scarf','Pattern Scarf');
INSERT INTO oc_tntcategorysliderchild VALUES(50,5,7,'Pattern Scarf','Pattern Scarf');
INSERT INTO oc_tntcategorysliderchild VALUES(51,6,1,'Women Purse','Women Purse');
INSERT INTO oc_tntcategorysliderchild VALUES(52,6,7,'Women Purse','Women Purse');
INSERT INTO oc_tntcategorysliderchild VALUES(53,2,1,'Women Shorts','Women Shorts');
INSERT INTO oc_tntcategorysliderchild VALUES(54,2,7,'Women Shorts','Women Shorts');



DROP TABLE IF EXISTS `oc_tntcategorysliderparent`;

CREATE TABLE `oc_tntcategorysliderparent` (
  `tntcategorysliderparent_id` int(11) NOT NULL AUTO_INCREMENT,
  `tntcategorysliderparent_category_id` int(11) DEFAULT NULL,
  `tntcategorysliderparent_position` int(11) DEFAULT NULL,
  `tntcategorysliderparent_image` varchar(100) DEFAULT NULL,
  `tntcategorysliderparent_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`tntcategorysliderparent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO oc_tntcategorysliderparent VALUES(1,20,1,'catalog/themefactory/categoryslider/1.jpg',1);
INSERT INTO oc_tntcategorysliderparent VALUES(2,91,2,'catalog/themefactory/categoryslider/2.jpg',1);
INSERT INTO oc_tntcategorysliderparent VALUES(3,87,3,'catalog/themefactory/categoryslider/3.jpg',1);
INSERT INTO oc_tntcategorysliderparent VALUES(4,92,4,'catalog/themefactory/categoryslider/4.jpg',1);
INSERT INTO oc_tntcategorysliderparent VALUES(5,33,5,'catalog/themefactory/categoryslider/5.jpg',1);
INSERT INTO oc_tntcategorysliderparent VALUES(6,59,6,'catalog/themefactory/categoryslider/6.jpg',1);



DROP TABLE IF EXISTS `oc_tntnewsletter`;

CREATE TABLE `oc_tntnewsletter` (
  `tntnewsletter_id` int(11) NOT NULL AUTO_INCREMENT,
  `tntnewsletter_email` varchar(255) DEFAULT NULL,
  `tntnewsletter_adddate` datetime DEFAULT NULL,
  PRIMARY KEY (`tntnewsletter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO oc_tntnewsletter VALUES(1,'tomwilliam274@gmail.com','2019-06-02 00:26:54');
INSERT INTO oc_tntnewsletter VALUES(2,'ashishvekariya1906@gmail.com','2019-06-02 03:12:59');
INSERT INTO oc_tntnewsletter VALUES(3,'demo@demo.com','2019-06-11 22:03:10');
INSERT INTO oc_tntnewsletter VALUES(4,'hiteshchosaliya@gmail.com','2019-07-10 00:55:03');
INSERT INTO oc_tntnewsletter VALUES(5,'qwqw@gmail.com','2019-07-15 16:26:47');
INSERT INTO oc_tntnewsletter VALUES(6,'tomwilliam2ss74@gmail.com','2019-07-15 16:40:41');
INSERT INTO oc_tntnewsletter VALUES(7,'butterflyinsky007@gmail.com','2019-08-18 11:30:06');
INSERT INTO oc_tntnewsletter VALUES(8,'sdsds@sds.com','2019-08-18 11:45:25');



DROP TABLE IF EXISTS `oc_tntpaymenticonchild`;

CREATE TABLE `oc_tntpaymenticonchild` (
  `tntpaymenticonchild_id` int(11) NOT NULL AUTO_INCREMENT,
  `tntpaymenticonchild_title` varchar(255) DEFAULT NULL,
  `tntpaymenticonchildlanguage_id` int(11) NOT NULL,
  `tntpaymenticonparent_id` int(11) NOT NULL,
  PRIMARY KEY (`tntpaymenticonchild_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO oc_tntpaymenticonchild VALUES(1,'title1',1,1);
INSERT INTO oc_tntpaymenticonchild VALUES(2,'title1',7,1);



DROP TABLE IF EXISTS `oc_tntpaymenticonparent`;

CREATE TABLE `oc_tntpaymenticonparent` (
  `tntpaymenticonparent_id` int(11) NOT NULL AUTO_INCREMENT,
  `tntpaymenticonparent_status` int(11) DEFAULT NULL,
  `tntpaymenticonparent_position` int(11) DEFAULT NULL,
  `tntpaymenticonparent_link` varchar(255) DEFAULT NULL,
  `tntpaymenticonparent_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tntpaymenticonparent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO oc_tntpaymenticonparent VALUES(1,1,1,'#','catalog/themefactory/payment/1.png');



DROP TABLE IF EXISTS `oc_tntsliderchild`;

CREATE TABLE `oc_tntsliderchild` (
  `tntsliderchild_id` int(11) NOT NULL AUTO_INCREMENT,
  `tntsliderparent_id` int(11) NOT NULL,
  `tntsliderchild_link` varchar(255) DEFAULT NULL,
  `tntsliderchild_image` varchar(255) DEFAULT NULL,
  `tntsliderchild_title` text CHARACTER SET utf8,
  `tntsliderchild_subtitle` varchar(255) NOT NULL,
  `tntsliderchild_textaligment` varchar(255) DEFAULT NULL,
  `tntsliderchild_buttontext` text CHARACTER SET utf8,
  `tntsliderchild_description` text CHARACTER SET utf8,
  `tntsliderchild_enable` int(11) NOT NULL,
  `tntsliderchildlang_id` int(11) NOT NULL,
  PRIMARY KEY (`tntsliderchild_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

INSERT INTO oc_tntsliderchild VALUES(44,2,'#','catalog/themefactory/slider/2.jpg','Vegetable 100% Organic','Organic Foods','center','Read More','Lobortis dictum mi liquam euon first',1,1);
INSERT INTO oc_tntsliderchild VALUES(45,2,'#','catalog/themefactory/slider/2.jpg','Stay Stylish','BIG OFFER','hide','Read More','Latest fashion',1,7);
INSERT INTO oc_tntsliderchild VALUES(54,1,'#','catalog/themefactory/slider/1.jpg','The Most Healthy','Organic Foods','left','SHOP NOW','Aenean quam neque, ullamcorper eget dui ut,',1,1);
INSERT INTO oc_tntsliderchild VALUES(55,1,'#','catalog/themefactory/slider/1.jpg','The Most Healthy Organic Foods','BIG OFFER','left','SHOP NOW','Aenean quam neque, ullamcorper eget dui ut,  lobortis dictum mi liquam euon first',1,7);



DROP TABLE IF EXISTS `oc_tntsliderparent`;

CREATE TABLE `oc_tntsliderparent` (
  `tntsliderparent_id` int(11) NOT NULL AUTO_INCREMENT,
  `tntsliderparent_position` int(11) DEFAULT NULL,
  PRIMARY KEY (`tntsliderparent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO oc_tntsliderparent VALUES(1,1);
INSERT INTO oc_tntsliderparent VALUES(2,2);



DROP TABLE IF EXISTS `oc_tntsocialiconchild`;

CREATE TABLE `oc_tntsocialiconchild` (
  `tntsocialiconchild_id` int(11) NOT NULL AUTO_INCREMENT,
  `tntsocialiconparent_id` int(11) NOT NULL,
  `tntsocialiconchildlanguage_id` int(11) NOT NULL,
  `tntsocialiconchild_title` text CHARACTER SET utf8,
  PRIMARY KEY (`tntsocialiconchild_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

INSERT INTO oc_tntsocialiconchild VALUES(15,1,1,'facebook');
INSERT INTO oc_tntsocialiconchild VALUES(16,1,7,'facebook');
INSERT INTO oc_tntsocialiconchild VALUES(17,2,1,'twitter');
INSERT INTO oc_tntsocialiconchild VALUES(18,2,7,'twitter');
INSERT INTO oc_tntsocialiconchild VALUES(19,3,1,'youtube');
INSERT INTO oc_tntsocialiconchild VALUES(20,3,7,'youtube');
INSERT INTO oc_tntsocialiconchild VALUES(21,4,1,'instagram');
INSERT INTO oc_tntsocialiconchild VALUES(22,4,7,'instagram');
INSERT INTO oc_tntsocialiconchild VALUES(25,5,1,'linkedin');
INSERT INTO oc_tntsocialiconchild VALUES(26,5,7,'linkedin');



DROP TABLE IF EXISTS `oc_tntsocialiconparent`;

CREATE TABLE `oc_tntsocialiconparent` (
  `tntsocialiconparent_id` int(11) NOT NULL AUTO_INCREMENT,
  `tntsocialiconparent_position` int(11) DEFAULT NULL,
  `tntsocialiconparent_class_name` varchar(255) DEFAULT NULL,
  `tntsocialiconparent_link` varchar(255) DEFAULT NULL,
  `tntsocialicon_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`tntsocialiconparent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO oc_tntsocialiconparent VALUES(1,1,'fa fa-facebook','#',1);
INSERT INTO oc_tntsocialiconparent VALUES(2,2,'fa fa-twitter','#',1);
INSERT INTO oc_tntsocialiconparent VALUES(3,3,'fa fa-youtube','#',1);
INSERT INTO oc_tntsocialiconparent VALUES(4,4,'fa fa-google-plus','#',1);
INSERT INTO oc_tntsocialiconparent VALUES(5,5,'fa fa-instagram','#',1);



DROP TABLE IF EXISTS `oc_tnttestimonialchild`;

CREATE TABLE `oc_tnttestimonialchild` (
  `tnttestimonialchild_id` int(11) NOT NULL AUTO_INCREMENT,
  `tnttestimonialparent_id` int(11) NOT NULL,
  `tnttestimonialchildlanguage_id` int(11) NOT NULL,
  `tnttestimonialchild_name` text CHARACTER SET utf8,
  `tnttestimonialchild_designation` text CHARACTER SET utf8,
  `tnttestimonialchild_description` text CHARACTER SET utf8,
  PRIMARY KEY (`tnttestimonialchild_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

INSERT INTO oc_tnttestimonialchild VALUES(64,1,1,'By Jonson','CEO &amp; Founder DooTr','Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit.');
INSERT INTO oc_tnttestimonialchild VALUES(65,1,7,'?????? ??????','CEO &amp; Founder DooTr','Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit.');
INSERT INTO oc_tnttestimonialchild VALUES(66,2,1,'By Samantha','Theme','Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit.');
INSERT INTO oc_tnttestimonialchild VALUES(67,2,7,'?????? ???????','?????','Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit.');
INSERT INTO oc_tnttestimonialchild VALUES(68,3,1,'By Namuno','Theme','Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit.');
INSERT INTO oc_tnttestimonialchild VALUES(69,3,7,'?????? Namuno','?????','Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit.');



DROP TABLE IF EXISTS `oc_tnttestimonialparent`;

CREATE TABLE `oc_tnttestimonialparent` (
  `tnttestimonialparent_id` int(11) NOT NULL AUTO_INCREMENT,
  `tnttestimonialparent_position` int(11) DEFAULT NULL,
  `tnttestimonialparent_image` varchar(255) DEFAULT NULL,
  `tnttestimonialparent_link` varchar(255) DEFAULT NULL,
  `tnttestimonialparent_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`tnttestimonialparent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO oc_tnttestimonialparent VALUES(1,1,'catalog/themefactory/testimonial/1.jpg','#',1);
INSERT INTO oc_tnttestimonialparent VALUES(2,2,'catalog/themefactory/testimonial/2.jpg','#',1);
INSERT INTO oc_tnttestimonialparent VALUES(3,3,'catalog/themefactory/testimonial/3.jpg','#',1);



DROP TABLE IF EXISTS `oc_translation`;

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_upload`;

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`),
  KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_user`;

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_group_id` (`user_group_id`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `code` (`code`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO oc_user VALUES(1,1,'demo@demo.com','0cbbb13d6a972ba8c53fd656fc5de0bc9422d1b8','bTwI7qTv4','John','Doe','demo@gmail.com','','','192.168.0.109',1,'2019-08-27 22:06:05');



DROP TABLE IF EXISTS `oc_user_group`;

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO oc_user_group VALUES(1,'Administrator','{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/ocmegamenu\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/module\\/tntbanners\",\"extension\\/module\\/tntbrandlist\",\"extension\\/module\\/tntcategoryslider\",\"extension\\/module\\/tntcustomerservices\",\"extension\\/module\\/tntfooterlogo_\",\"extension\\/module\\/tntimagegallery\",\"extension\\/module\\/tntleftrightproduct\",\"extension\\/module\\/tntlefttestimonial\",\"extension\\/module\\/tntnewsletter\",\"extension\\/module\\/tntnewsletterlist\",\"extension\\/module\\/tntnewsletterpopup\",\"extension\\/module\\/tntpaymenticon\",\"extension\\/module\\/tntsingleblock\",\"extension\\/module\\/tntslider\",\"extension\\/module\\/tntsocialicon\",\"extension\\/module\\/tnttabproduct\",\"extension\\/module\\/tnttestimonial\",\"extension\\/module\\/tntthemesetting\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/tntsocialicon\",\"extension\\/module\\/tntsocialicon\",\"extension\\/module\\/tntsocialicon\",\"extension\\/module\\/tntsocialicon\",\"extension\\/module\\/tntspeedup\",\"common\\/filemanager\",\"common\\/filemanager\",\"extension\\/module\\/tntnewsletterlist\",\"extension\\/module\\/tntimagegallery\",\"extension\\/module\\/tntimagegallery\",\"extension\\/module\\/tntfooterlogo\",\"extension\\/module\\/tntofferbanner\",\"extension\\/module\\/tntofferbanner\",\"extension\\/module\\/tntblogcategory\",\"extension\\/module\\/tntblog\",\"extension\\/module\\/tntpaymenticon\",\"extension\\/module\\/tntpaymenticon\",\"extension\\/module\\/tntbrandlist\",\"extension\\/module\\/tntbrandlist\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/ocmegamenu\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/module\\/tntbanners\",\"extension\\/module\\/tntbrandlist\",\"extension\\/module\\/tntcategoryslider\",\"extension\\/module\\/tntcustomerservices\",\"extension\\/module\\/tntfooterlogo_\",\"extension\\/module\\/tntimagegallery\",\"extension\\/module\\/tntleftrightproduct\",\"extension\\/module\\/tntlefttestimonial\",\"extension\\/module\\/tntnewsletter\",\"extension\\/module\\/tntnewsletterlist\",\"extension\\/module\\/tntnewsletterpopup\",\"extension\\/module\\/tntpaymenticon\",\"extension\\/module\\/tntsingleblock\",\"extension\\/module\\/tntslider\",\"extension\\/module\\/tntsocialicon\",\"extension\\/module\\/tnttabproduct\",\"extension\\/module\\/tnttestimonial\",\"extension\\/module\\/tntthemesetting\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/tntsocialicon\",\"extension\\/module\\/tntsocialicon\",\"extension\\/module\\/tntsocialicon\",\"extension\\/module\\/tntsocialicon\",\"extension\\/module\\/tntspeedup\",\"extension\\/module\\/tntnewsletterlist\",\"extension\\/module\\/tntimagegallery\",\"extension\\/module\\/tntimagegallery\",\"extension\\/module\\/tntfooterlogo\",\"extension\\/module\\/tntofferbanner\",\"extension\\/module\\/tntofferbanner\",\"extension\\/module\\/tntblogcategory\",\"extension\\/module\\/tntblog\",\"extension\\/module\\/tntpaymenticon\",\"extension\\/module\\/tntpaymenticon\",\"extension\\/module\\/tntbrandlist\",\"extension\\/module\\/tntbrandlist\"]}');
INSERT INTO oc_user_group VALUES(10,'Demonstration','');



DROP TABLE IF EXISTS `oc_voucher`;

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`),
  KEY `order_id` (`order_id`),
  KEY `code` (`code`),
  KEY `to_email` (`to_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_voucher_history`;

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`),
  KEY `voucher_id` (`voucher_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `oc_voucher_theme`;

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO oc_voucher_theme VALUES(8,'catalog/demo/canon_eos_5d_2.jpg');
INSERT INTO oc_voucher_theme VALUES(7,'catalog/demo/gift-voucher-birthday.jpg');
INSERT INTO oc_voucher_theme VALUES(6,'catalog/demo/apple_logo.jpg');



DROP TABLE IF EXISTS `oc_voucher_theme_description`;

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_voucher_theme_description VALUES(6,1,'Christmas');
INSERT INTO oc_voucher_theme_description VALUES(7,1,'Birthday');
INSERT INTO oc_voucher_theme_description VALUES(8,1,'General');
INSERT INTO oc_voucher_theme_description VALUES(6,4,'Christmas');
INSERT INTO oc_voucher_theme_description VALUES(7,4,'Birthday');
INSERT INTO oc_voucher_theme_description VALUES(8,4,'General');
INSERT INTO oc_voucher_theme_description VALUES(6,7,'Christmas');
INSERT INTO oc_voucher_theme_description VALUES(7,7,'Birthday');
INSERT INTO oc_voucher_theme_description VALUES(8,7,'General');



DROP TABLE IF EXISTS `oc_weight_class`;

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO oc_weight_class VALUES(1,1.00000000);
INSERT INTO oc_weight_class VALUES(2,1000.00000000);
INSERT INTO oc_weight_class VALUES(5,2.20460000);
INSERT INTO oc_weight_class VALUES(6,35.27400000);



DROP TABLE IF EXISTS `oc_weight_class_description`;

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO oc_weight_class_description VALUES(1,1,'Kilogram','kg');
INSERT INTO oc_weight_class_description VALUES(2,1,'Gram','g');
INSERT INTO oc_weight_class_description VALUES(5,1,'Pound','lb');
INSERT INTO oc_weight_class_description VALUES(6,1,'Ounce','oz');
INSERT INTO oc_weight_class_description VALUES(1,4,'Kilogram','kg');
INSERT INTO oc_weight_class_description VALUES(2,4,'Gram','g');
INSERT INTO oc_weight_class_description VALUES(5,4,'Pound','lb');
INSERT INTO oc_weight_class_description VALUES(6,4,'Ounce','oz');
INSERT INTO oc_weight_class_description VALUES(1,7,'Kilogram','kg');
INSERT INTO oc_weight_class_description VALUES(2,7,'Gram','g');
INSERT INTO oc_weight_class_description VALUES(5,7,'Pound','lb');
INSERT INTO oc_weight_class_description VALUES(6,7,'Ounce','oz');



DROP TABLE IF EXISTS `oc_zone`;

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`),
  KEY `country_id` (`country_id`),
  KEY `name` (`name`),
  KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=4239 DEFAULT CHARSET=utf8;

INSERT INTO oc_zone VALUES(1,1,'Badakhshan','BDS',1);
INSERT INTO oc_zone VALUES(2,1,'Badghis','BDG',1);
INSERT INTO oc_zone VALUES(3,1,'Baghlan','BGL',1);
INSERT INTO oc_zone VALUES(4,1,'Balkh','BAL',1);
INSERT INTO oc_zone VALUES(5,1,'Bamian','BAM',1);
INSERT INTO oc_zone VALUES(6,1,'Farah','FRA',1);
INSERT INTO oc_zone VALUES(7,1,'Faryab','FYB',1);
INSERT INTO oc_zone VALUES(8,1,'Ghazni','GHA',1);
INSERT INTO oc_zone VALUES(9,1,'Ghowr','GHO',1);
INSERT INTO oc_zone VALUES(10,1,'Helmand','HEL',1);
INSERT INTO oc_zone VALUES(11,1,'Herat','HER',1);
INSERT INTO oc_zone VALUES(12,1,'Jowzjan','JOW',1);
INSERT INTO oc_zone VALUES(13,1,'Kabul','KAB',1);
INSERT INTO oc_zone VALUES(14,1,'Kandahar','KAN',1);
INSERT INTO oc_zone VALUES(15,1,'Kapisa','KAP',1);
INSERT INTO oc_zone VALUES(16,1,'Khost','KHO',1);
INSERT INTO oc_zone VALUES(17,1,'Konar','KNR',1);
INSERT INTO oc_zone VALUES(18,1,'Kondoz','KDZ',1);
INSERT INTO oc_zone VALUES(19,1,'Laghman','LAG',1);
INSERT INTO oc_zone VALUES(20,1,'Lowgar','LOW',1);
INSERT INTO oc_zone VALUES(21,1,'Nangrahar','NAN',1);
INSERT INTO oc_zone VALUES(22,1,'Nimruz','NIM',1);
INSERT INTO oc_zone VALUES(23,1,'Nurestan','NUR',1);
INSERT INTO oc_zone VALUES(24,1,'Oruzgan','ORU',1);
INSERT INTO oc_zone VALUES(25,1,'Paktia','PIA',1);
INSERT INTO oc_zone VALUES(26,1,'Paktika','PKA',1);
INSERT INTO oc_zone VALUES(27,1,'Parwan','PAR',1);
INSERT INTO oc_zone VALUES(28,1,'Samangan','SAM',1);
INSERT INTO oc_zone VALUES(29,1,'Sar-e Pol','SAR',1);
INSERT INTO oc_zone VALUES(30,1,'Takhar','TAK',1);
INSERT INTO oc_zone VALUES(31,1,'Wardak','WAR',1);
INSERT INTO oc_zone VALUES(32,1,'Zabol','ZAB',1);
INSERT INTO oc_zone VALUES(33,2,'Berat','BR',1);
INSERT INTO oc_zone VALUES(34,2,'Bulqize','BU',1);
INSERT INTO oc_zone VALUES(35,2,'Delvine','DL',1);
INSERT INTO oc_zone VALUES(36,2,'Devoll','DV',1);
INSERT INTO oc_zone VALUES(37,2,'Diber','DI',1);
INSERT INTO oc_zone VALUES(38,2,'Durres','DR',1);
INSERT INTO oc_zone VALUES(39,2,'Elbasan','EL',1);
INSERT INTO oc_zone VALUES(40,2,'Kolonje','ER',1);
INSERT INTO oc_zone VALUES(41,2,'Fier','FR',1);
INSERT INTO oc_zone VALUES(42,2,'Gjirokaster','GJ',1);
INSERT INTO oc_zone VALUES(43,2,'Gramsh','GR',1);
INSERT INTO oc_zone VALUES(44,2,'Has','HA',1);
INSERT INTO oc_zone VALUES(45,2,'Kavaje','KA',1);
INSERT INTO oc_zone VALUES(46,2,'Kurbin','KB',1);
INSERT INTO oc_zone VALUES(47,2,'Kucove','KC',1);
INSERT INTO oc_zone VALUES(48,2,'Korce','KO',1);
INSERT INTO oc_zone VALUES(49,2,'Kruje','KR',1);
INSERT INTO oc_zone VALUES(50,2,'Kukes','KU',1);
INSERT INTO oc_zone VALUES(51,2,'Librazhd','LB',1);
INSERT INTO oc_zone VALUES(52,2,'Lezhe','LE',1);
INSERT INTO oc_zone VALUES(53,2,'Lushnje','LU',1);
INSERT INTO oc_zone VALUES(54,2,'Malesi e Madhe','MM',1);
INSERT INTO oc_zone VALUES(55,2,'Mallakaster','MK',1);
INSERT INTO oc_zone VALUES(56,2,'Mat','MT',1);
INSERT INTO oc_zone VALUES(57,2,'Mirdite','MR',1);
INSERT INTO oc_zone VALUES(58,2,'Peqin','PQ',1);
INSERT INTO oc_zone VALUES(59,2,'Permet','PR',1);
INSERT INTO oc_zone VALUES(60,2,'Pogradec','PG',1);
INSERT INTO oc_zone VALUES(61,2,'Puke','PU',1);
INSERT INTO oc_zone VALUES(62,2,'Shkoder','SH',1);
INSERT INTO oc_zone VALUES(63,2,'Skrapar','SK',1);
INSERT INTO oc_zone VALUES(64,2,'Sarande','SR',1);
INSERT INTO oc_zone VALUES(65,2,'Tepelene','TE',1);
INSERT INTO oc_zone VALUES(66,2,'Tropoje','TP',1);
INSERT INTO oc_zone VALUES(67,2,'Tirane','TR',1);
INSERT INTO oc_zone VALUES(68,2,'Vlore','VL',1);
INSERT INTO oc_zone VALUES(69,3,'Adrar','ADR',1);
INSERT INTO oc_zone VALUES(70,3,'Ain Defla','ADE',1);
INSERT INTO oc_zone VALUES(71,3,'Ain Temouchent','ATE',1);
INSERT INTO oc_zone VALUES(72,3,'Alger','ALG',1);
INSERT INTO oc_zone VALUES(73,3,'Annaba','ANN',1);
INSERT INTO oc_zone VALUES(74,3,'Batna','BAT',1);
INSERT INTO oc_zone VALUES(75,3,'Bechar','BEC',1);
INSERT INTO oc_zone VALUES(76,3,'Bejaia','BEJ',1);
INSERT INTO oc_zone VALUES(77,3,'Biskra','BIS',1);
INSERT INTO oc_zone VALUES(78,3,'Blida','BLI',1);
INSERT INTO oc_zone VALUES(79,3,'Bordj Bou Arreridj','BBA',1);
INSERT INTO oc_zone VALUES(80,3,'Bouira','BOA',1);
INSERT INTO oc_zone VALUES(81,3,'Boumerdes','BMD',1);
INSERT INTO oc_zone VALUES(82,3,'Chlef','CHL',1);
INSERT INTO oc_zone VALUES(83,3,'Constantine','CON',1);
INSERT INTO oc_zone VALUES(84,3,'Djelfa','DJE',1);
INSERT INTO oc_zone VALUES(85,3,'El Bayadh','EBA',1);
INSERT INTO oc_zone VALUES(86,3,'El Oued','EOU',1);
INSERT INTO oc_zone VALUES(87,3,'El Tarf','ETA',1);
INSERT INTO oc_zone VALUES(88,3,'Ghardaia','GHA',1);
INSERT INTO oc_zone VALUES(89,3,'Guelma','GUE',1);
INSERT INTO oc_zone VALUES(90,3,'Illizi','ILL',1);
INSERT INTO oc_zone VALUES(91,3,'Jijel','JIJ',1);
INSERT INTO oc_zone VALUES(92,3,'Khenchela','KHE',1);
INSERT INTO oc_zone VALUES(93,3,'Laghouat','LAG',1);
INSERT INTO oc_zone VALUES(94,3,'Muaskar','MUA',1);
INSERT INTO oc_zone VALUES(95,3,'Medea','MED',1);
INSERT INTO oc_zone VALUES(96,3,'Mila','MIL',1);
INSERT INTO oc_zone VALUES(97,3,'Mostaganem','MOS',1);
INSERT INTO oc_zone VALUES(98,3,'M\'Sila','MSI',1);
INSERT INTO oc_zone VALUES(99,3,'Naama','NAA',1);
INSERT INTO oc_zone VALUES(100,3,'Oran','ORA',1);
INSERT INTO oc_zone VALUES(101,3,'Ouargla','OUA',1);
INSERT INTO oc_zone VALUES(102,3,'Oum el-Bouaghi','OEB',1);
INSERT INTO oc_zone VALUES(103,3,'Relizane','REL',1);
INSERT INTO oc_zone VALUES(104,3,'Saida','SAI',1);
INSERT INTO oc_zone VALUES(105,3,'Setif','SET',1);
INSERT INTO oc_zone VALUES(106,3,'Sidi Bel Abbes','SBA',1);
INSERT INTO oc_zone VALUES(107,3,'Skikda','SKI',1);
INSERT INTO oc_zone VALUES(108,3,'Souk Ahras','SAH',1);
INSERT INTO oc_zone VALUES(109,3,'Tamanghasset','TAM',1);
INSERT INTO oc_zone VALUES(110,3,'Tebessa','TEB',1);
INSERT INTO oc_zone VALUES(111,3,'Tiaret','TIA',1);
INSERT INTO oc_zone VALUES(112,3,'Tindouf','TIN',1);
INSERT INTO oc_zone VALUES(113,3,'Tipaza','TIP',1);
INSERT INTO oc_zone VALUES(114,3,'Tissemsilt','TIS',1);
INSERT INTO oc_zone VALUES(115,3,'Tizi Ouzou','TOU',1);
INSERT INTO oc_zone VALUES(116,3,'Tlemcen','TLE',1);
INSERT INTO oc_zone VALUES(117,4,'Eastern','E',1);
INSERT INTO oc_zone VALUES(118,4,'Manu\'a','M',1);
INSERT INTO oc_zone VALUES(119,4,'Rose Island','R',1);
INSERT INTO oc_zone VALUES(120,4,'Swains Island','S',1);
INSERT INTO oc_zone VALUES(121,4,'Western','W',1);
INSERT INTO oc_zone VALUES(122,5,'Andorra la Vella','ALV',1);
INSERT INTO oc_zone VALUES(123,5,'Canillo','CAN',1);
INSERT INTO oc_zone VALUES(124,5,'Encamp','ENC',1);
INSERT INTO oc_zone VALUES(125,5,'Escaldes-Engordany','ESE',1);
INSERT INTO oc_zone VALUES(126,5,'La Massana','LMA',1);
INSERT INTO oc_zone VALUES(127,5,'Ordino','ORD',1);
INSERT INTO oc_zone VALUES(128,5,'Sant Julia de Loria','SJL',1);
INSERT INTO oc_zone VALUES(129,6,'Bengo','BGO',1);
INSERT INTO oc_zone VALUES(130,6,'Benguela','BGU',1);
INSERT INTO oc_zone VALUES(131,6,'Bie','BIE',1);
INSERT INTO oc_zone VALUES(132,6,'Cabinda','CAB',1);
INSERT INTO oc_zone VALUES(133,6,'Cuando-Cubango','CCU',1);
INSERT INTO oc_zone VALUES(134,6,'Cuanza Norte','CNO',1);
INSERT INTO oc_zone VALUES(135,6,'Cuanza Sul','CUS',1);
INSERT INTO oc_zone VALUES(136,6,'Cunene','CNN',1);
INSERT INTO oc_zone VALUES(137,6,'Huambo','HUA',1);
INSERT INTO oc_zone VALUES(138,6,'Huila','HUI',1);
INSERT INTO oc_zone VALUES(139,6,'Luanda','LUA',1);
INSERT INTO oc_zone VALUES(140,6,'Lunda Norte','LNO',1);
INSERT INTO oc_zone VALUES(141,6,'Lunda Sul','LSU',1);
INSERT INTO oc_zone VALUES(142,6,'Malange','MAL',1);
INSERT INTO oc_zone VALUES(143,6,'Moxico','MOX',1);
INSERT INTO oc_zone VALUES(144,6,'Namibe','NAM',1);
INSERT INTO oc_zone VALUES(145,6,'Uige','UIG',1);
INSERT INTO oc_zone VALUES(146,6,'Zaire','ZAI',1);
INSERT INTO oc_zone VALUES(147,9,'Saint George','ASG',1);
INSERT INTO oc_zone VALUES(148,9,'Saint John','ASJ',1);
INSERT INTO oc_zone VALUES(149,9,'Saint Mary','ASM',1);
INSERT INTO oc_zone VALUES(150,9,'Saint Paul','ASL',1);
INSERT INTO oc_zone VALUES(151,9,'Saint Peter','ASR',1);
INSERT INTO oc_zone VALUES(152,9,'Saint Philip','ASH',1);
INSERT INTO oc_zone VALUES(153,9,'Barbuda','BAR',1);
INSERT INTO oc_zone VALUES(154,9,'Redonda','RED',1);
INSERT INTO oc_zone VALUES(155,10,'Antartida e Islas del Atlantico','AN',1);
INSERT INTO oc_zone VALUES(156,10,'Buenos Aires','BA',1);
INSERT INTO oc_zone VALUES(157,10,'Catamarca','CA',1);
INSERT INTO oc_zone VALUES(158,10,'Chaco','CH',1);
INSERT INTO oc_zone VALUES(159,10,'Chubut','CU',1);
INSERT INTO oc_zone VALUES(160,10,'Cordoba','CO',1);
INSERT INTO oc_zone VALUES(161,10,'Corrientes','CR',1);
INSERT INTO oc_zone VALUES(162,10,'Distrito Federal','DF',1);
INSERT INTO oc_zone VALUES(163,10,'Entre Rios','ER',1);
INSERT INTO oc_zone VALUES(164,10,'Formosa','FO',1);
INSERT INTO oc_zone VALUES(165,10,'Jujuy','JU',1);
INSERT INTO oc_zone VALUES(166,10,'La Pampa','LP',1);
INSERT INTO oc_zone VALUES(167,10,'La Rioja','LR',1);
INSERT INTO oc_zone VALUES(168,10,'Mendoza','ME',1);
INSERT INTO oc_zone VALUES(169,10,'Misiones','MI',1);
INSERT INTO oc_zone VALUES(170,10,'Neuquen','NE',1);
INSERT INTO oc_zone VALUES(171,10,'Rio Negro','RN',1);
INSERT INTO oc_zone VALUES(172,10,'Salta','SA',1);
INSERT INTO oc_zone VALUES(173,10,'San Juan','SJ',1);
INSERT INTO oc_zone VALUES(174,10,'San Luis','SL',1);
INSERT INTO oc_zone VALUES(175,10,'Santa Cruz','SC',1);
INSERT INTO oc_zone VALUES(176,10,'Santa Fe','SF',1);
INSERT INTO oc_zone VALUES(177,10,'Santiago del Estero','SD',1);
INSERT INTO oc_zone VALUES(178,10,'Tierra del Fuego','TF',1);
INSERT INTO oc_zone VALUES(179,10,'Tucuman','TU',1);
INSERT INTO oc_zone VALUES(180,11,'Aragatsotn','AGT',1);
INSERT INTO oc_zone VALUES(181,11,'Ararat','ARR',1);
INSERT INTO oc_zone VALUES(182,11,'Armavir','ARM',1);
INSERT INTO oc_zone VALUES(183,11,'Geghark\'unik\'','GEG',1);
INSERT INTO oc_zone VALUES(184,11,'Kotayk\'','KOT',1);
INSERT INTO oc_zone VALUES(185,11,'Lorri','LOR',1);
INSERT INTO oc_zone VALUES(186,11,'Shirak','SHI',1);
INSERT INTO oc_zone VALUES(187,11,'Syunik\'','SYU',1);
INSERT INTO oc_zone VALUES(188,11,'Tavush','TAV',1);
INSERT INTO oc_zone VALUES(189,11,'Vayots\' Dzor','VAY',1);
INSERT INTO oc_zone VALUES(190,11,'Yerevan','YER',1);
INSERT INTO oc_zone VALUES(191,13,'Australian Capital Territory','ACT',1);
INSERT INTO oc_zone VALUES(192,13,'New South Wales','NSW',1);
INSERT INTO oc_zone VALUES(193,13,'Northern Territory','NT',1);
INSERT INTO oc_zone VALUES(194,13,'Queensland','QLD',1);
INSERT INTO oc_zone VALUES(195,13,'South Australia','SA',1);
INSERT INTO oc_zone VALUES(196,13,'Tasmania','TAS',1);
INSERT INTO oc_zone VALUES(197,13,'Victoria','VIC',1);
INSERT INTO oc_zone VALUES(198,13,'Western Australia','WA',1);
INSERT INTO oc_zone VALUES(199,14,'Burgenland','BUR',1);
INSERT INTO oc_zone VALUES(200,14,'K?rnten','KAR',1);
INSERT INTO oc_zone VALUES(201,14,'Nieder?sterreich','NOS',1);
INSERT INTO oc_zone VALUES(202,14,'Ober?sterreich','OOS',1);
INSERT INTO oc_zone VALUES(203,14,'Salzburg','SAL',1);
INSERT INTO oc_zone VALUES(204,14,'Steiermark','STE',1);
INSERT INTO oc_zone VALUES(205,14,'Tirol','TIR',1);
INSERT INTO oc_zone VALUES(206,14,'Vorarlberg','VOR',1);
INSERT INTO oc_zone VALUES(207,14,'Wien','WIE',1);
INSERT INTO oc_zone VALUES(208,15,'Ali Bayramli','AB',1);
INSERT INTO oc_zone VALUES(209,15,'Abseron','ABS',1);
INSERT INTO oc_zone VALUES(210,15,'AgcabAdi','AGC',1);
INSERT INTO oc_zone VALUES(211,15,'Agdam','AGM',1);
INSERT INTO oc_zone VALUES(212,15,'Agdas','AGS',1);
INSERT INTO oc_zone VALUES(213,15,'Agstafa','AGA',1);
INSERT INTO oc_zone VALUES(214,15,'Agsu','AGU',1);
INSERT INTO oc_zone VALUES(215,15,'Astara','AST',1);
INSERT INTO oc_zone VALUES(216,15,'Baki','BA',1);
INSERT INTO oc_zone VALUES(217,15,'BabAk','BAB',1);
INSERT INTO oc_zone VALUES(218,15,'BalakAn','BAL',1);
INSERT INTO oc_zone VALUES(219,15,'BArdA','BAR',1);
INSERT INTO oc_zone VALUES(220,15,'Beylaqan','BEY',1);
INSERT INTO oc_zone VALUES(221,15,'Bilasuvar','BIL',1);
INSERT INTO oc_zone VALUES(222,15,'Cabrayil','CAB',1);
INSERT INTO oc_zone VALUES(223,15,'Calilabab','CAL',1);
INSERT INTO oc_zone VALUES(224,15,'Culfa','CUL',1);
INSERT INTO oc_zone VALUES(225,15,'Daskasan','DAS',1);
INSERT INTO oc_zone VALUES(226,15,'Davaci','DAV',1);
INSERT INTO oc_zone VALUES(227,15,'Fuzuli','FUZ',1);
INSERT INTO oc_zone VALUES(228,15,'Ganca','GA',1);
INSERT INTO oc_zone VALUES(229,15,'Gadabay','GAD',1);
INSERT INTO oc_zone VALUES(230,15,'Goranboy','GOR',1);
INSERT INTO oc_zone VALUES(231,15,'Goycay','GOY',1);
INSERT INTO oc_zone VALUES(232,15,'Haciqabul','HAC',1);
INSERT INTO oc_zone VALUES(233,15,'Imisli','IMI',1);
INSERT INTO oc_zone VALUES(234,15,'Ismayilli','ISM',1);
INSERT INTO oc_zone VALUES(235,15,'Kalbacar','KAL',1);
INSERT INTO oc_zone VALUES(236,15,'Kurdamir','KUR',1);
INSERT INTO oc_zone VALUES(237,15,'Lankaran','LA',1);
INSERT INTO oc_zone VALUES(238,15,'Lacin','LAC',1);
INSERT INTO oc_zone VALUES(239,15,'Lankaran','LAN',1);
INSERT INTO oc_zone VALUES(240,15,'Lerik','LER',1);
INSERT INTO oc_zone VALUES(241,15,'Masalli','MAS',1);
INSERT INTO oc_zone VALUES(242,15,'Mingacevir','MI',1);
INSERT INTO oc_zone VALUES(243,15,'Naftalan','NA',1);
INSERT INTO oc_zone VALUES(244,15,'Neftcala','NEF',1);
INSERT INTO oc_zone VALUES(245,15,'Oguz','OGU',1);
INSERT INTO oc_zone VALUES(246,15,'Ordubad','ORD',1);
INSERT INTO oc_zone VALUES(247,15,'Qabala','QAB',1);
INSERT INTO oc_zone VALUES(248,15,'Qax','QAX',1);
INSERT INTO oc_zone VALUES(249,15,'Qazax','QAZ',1);
INSERT INTO oc_zone VALUES(250,15,'Qobustan','QOB',1);
INSERT INTO oc_zone VALUES(251,15,'Quba','QBA',1);
INSERT INTO oc_zone VALUES(252,15,'Qubadli','QBI',1);
INSERT INTO oc_zone VALUES(253,15,'Qusar','QUS',1);
INSERT INTO oc_zone VALUES(254,15,'Saki','SA',1);
INSERT INTO oc_zone VALUES(255,15,'Saatli','SAT',1);
INSERT INTO oc_zone VALUES(256,15,'Sabirabad','SAB',1);
INSERT INTO oc_zone VALUES(257,15,'Sadarak','SAD',1);
INSERT INTO oc_zone VALUES(258,15,'Sahbuz','SAH',1);
INSERT INTO oc_zone VALUES(259,15,'Saki','SAK',1);
INSERT INTO oc_zone VALUES(260,15,'Salyan','SAL',1);
INSERT INTO oc_zone VALUES(261,15,'Sumqayit','SM',1);
INSERT INTO oc_zone VALUES(262,15,'Samaxi','SMI',1);
INSERT INTO oc_zone VALUES(263,15,'Samkir','SKR',1);
INSERT INTO oc_zone VALUES(264,15,'Samux','SMX',1);
INSERT INTO oc_zone VALUES(265,15,'Sarur','SAR',1);
INSERT INTO oc_zone VALUES(266,15,'Siyazan','SIY',1);
INSERT INTO oc_zone VALUES(267,15,'Susa','SS',1);
INSERT INTO oc_zone VALUES(268,15,'Susa','SUS',1);
INSERT INTO oc_zone VALUES(269,15,'Tartar','TAR',1);
INSERT INTO oc_zone VALUES(270,15,'Tovuz','TOV',1);
INSERT INTO oc_zone VALUES(271,15,'Ucar','UCA',1);
INSERT INTO oc_zone VALUES(272,15,'Xankandi','XA',1);
INSERT INTO oc_zone VALUES(273,15,'Xacmaz','XAC',1);
INSERT INTO oc_zone VALUES(274,15,'Xanlar','XAN',1);
INSERT INTO oc_zone VALUES(275,15,'Xizi','XIZ',1);
INSERT INTO oc_zone VALUES(276,15,'Xocali','XCI',1);
INSERT INTO oc_zone VALUES(277,15,'Xocavand','XVD',1);
INSERT INTO oc_zone VALUES(278,15,'Yardimli','YAR',1);
INSERT INTO oc_zone VALUES(279,15,'Yevlax','YEV',1);
INSERT INTO oc_zone VALUES(280,15,'Zangilan','ZAN',1);
INSERT INTO oc_zone VALUES(281,15,'Zaqatala','ZAQ',1);
INSERT INTO oc_zone VALUES(282,15,'Zardab','ZAR',1);
INSERT INTO oc_zone VALUES(283,15,'Naxcivan','NX',1);
INSERT INTO oc_zone VALUES(284,16,'Acklins','ACK',1);
INSERT INTO oc_zone VALUES(285,16,'Berry Islands','BER',1);
INSERT INTO oc_zone VALUES(286,16,'Bimini','BIM',1);
INSERT INTO oc_zone VALUES(287,16,'Black Point','BLK',1);
INSERT INTO oc_zone VALUES(288,16,'Cat Island','CAT',1);
INSERT INTO oc_zone VALUES(289,16,'Central Abaco','CAB',1);
INSERT INTO oc_zone VALUES(290,16,'Central Andros','CAN',1);
INSERT INTO oc_zone VALUES(291,16,'Central Eleuthera','CEL',1);
INSERT INTO oc_zone VALUES(292,16,'City of Freeport','FRE',1);
INSERT INTO oc_zone VALUES(293,16,'Crooked Island','CRO',1);
INSERT INTO oc_zone VALUES(294,16,'East Grand Bahama','EGB',1);
INSERT INTO oc_zone VALUES(295,16,'Exuma','EXU',1);
INSERT INTO oc_zone VALUES(296,16,'Grand Cay','GRD',1);
INSERT INTO oc_zone VALUES(297,16,'Harbour Island','HAR',1);
INSERT INTO oc_zone VALUES(298,16,'Hope Town','HOP',1);
INSERT INTO oc_zone VALUES(299,16,'Inagua','INA',1);
INSERT INTO oc_zone VALUES(300,16,'Long Island','LNG',1);
INSERT INTO oc_zone VALUES(301,16,'Mangrove Cay','MAN',1);
INSERT INTO oc_zone VALUES(302,16,'Mayaguana','MAY',1);
INSERT INTO oc_zone VALUES(303,16,'Moore\'s Island','MOO',1);
INSERT INTO oc_zone VALUES(304,16,'North Abaco','NAB',1);
INSERT INTO oc_zone VALUES(305,16,'North Andros','NAN',1);
INSERT INTO oc_zone VALUES(306,16,'North Eleuthera','NEL',1);
INSERT INTO oc_zone VALUES(307,16,'Ragged Island','RAG',1);
INSERT INTO oc_zone VALUES(308,16,'Rum Cay','RUM',1);
INSERT INTO oc_zone VALUES(309,16,'San Salvador','SAL',1);
INSERT INTO oc_zone VALUES(310,16,'South Abaco','SAB',1);
INSERT INTO oc_zone VALUES(311,16,'South Andros','SAN',1);
INSERT INTO oc_zone VALUES(312,16,'South Eleuthera','SEL',1);
INSERT INTO oc_zone VALUES(313,16,'Spanish Wells','SWE',1);
INSERT INTO oc_zone VALUES(314,16,'West Grand Bahama','WGB',1);
INSERT INTO oc_zone VALUES(315,17,'Capital','CAP',1);
INSERT INTO oc_zone VALUES(316,17,'Central','CEN',1);
INSERT INTO oc_zone VALUES(317,17,'Muharraq','MUH',1);
INSERT INTO oc_zone VALUES(318,17,'Northern','NOR',1);
INSERT INTO oc_zone VALUES(319,17,'Southern','SOU',1);
INSERT INTO oc_zone VALUES(320,18,'Barisal','BAR',1);
INSERT INTO oc_zone VALUES(321,18,'Chittagong','CHI',1);
INSERT INTO oc_zone VALUES(322,18,'Dhaka','DHA',1);
INSERT INTO oc_zone VALUES(323,18,'Khulna','KHU',1);
INSERT INTO oc_zone VALUES(324,18,'Rajshahi','RAJ',1);
INSERT INTO oc_zone VALUES(325,18,'Sylhet','SYL',1);
INSERT INTO oc_zone VALUES(326,19,'Christ Church','CC',1);
INSERT INTO oc_zone VALUES(327,19,'Saint Andrew','AND',1);
INSERT INTO oc_zone VALUES(328,19,'Saint George','GEO',1);
INSERT INTO oc_zone VALUES(329,19,'Saint James','JAM',1);
INSERT INTO oc_zone VALUES(330,19,'Saint John','JOH',1);
INSERT INTO oc_zone VALUES(331,19,'Saint Joseph','JOS',1);
INSERT INTO oc_zone VALUES(332,19,'Saint Lucy','LUC',1);
INSERT INTO oc_zone VALUES(333,19,'Saint Michael','MIC',1);
INSERT INTO oc_zone VALUES(334,19,'Saint Peter','PET',1);
INSERT INTO oc_zone VALUES(335,19,'Saint Philip','PHI',1);
INSERT INTO oc_zone VALUES(336,19,'Saint Thomas','THO',1);
INSERT INTO oc_zone VALUES(337,20,'Brestskaya (Brest)','BR',1);
INSERT INTO oc_zone VALUES(338,20,'Homyel\'skaya (Homyel\')','HO',1);
INSERT INTO oc_zone VALUES(339,20,'Horad Minsk','HM',1);
INSERT INTO oc_zone VALUES(340,20,'Hrodzyenskaya (Hrodna)','HR',1);
INSERT INTO oc_zone VALUES(341,20,'Mahilyowskaya (Mahilyow)','MA',1);
INSERT INTO oc_zone VALUES(342,20,'Minskaya','MI',1);
INSERT INTO oc_zone VALUES(343,20,'Vitsyebskaya (Vitsyebsk)','VI',1);
INSERT INTO oc_zone VALUES(344,21,'Antwerpen','VAN',1);
INSERT INTO oc_zone VALUES(345,21,'Brabant Wallon','WBR',1);
INSERT INTO oc_zone VALUES(346,21,'Hainaut','WHT',1);
INSERT INTO oc_zone VALUES(347,21,'Li?ge','WLG',1);
INSERT INTO oc_zone VALUES(348,21,'Limburg','VLI',1);
INSERT INTO oc_zone VALUES(349,21,'Luxembourg','WLX',1);
INSERT INTO oc_zone VALUES(350,21,'Namur','WNA',1);
INSERT INTO oc_zone VALUES(351,21,'Oost-Vlaanderen','VOV',1);
INSERT INTO oc_zone VALUES(352,21,'Vlaams Brabant','VBR',1);
INSERT INTO oc_zone VALUES(353,21,'West-Vlaanderen','VWV',1);
INSERT INTO oc_zone VALUES(354,22,'Belize','BZ',1);
INSERT INTO oc_zone VALUES(355,22,'Cayo','CY',1);
INSERT INTO oc_zone VALUES(356,22,'Corozal','CR',1);
INSERT INTO oc_zone VALUES(357,22,'Orange Walk','OW',1);
INSERT INTO oc_zone VALUES(358,22,'Stann Creek','SC',1);
INSERT INTO oc_zone VALUES(359,22,'Toledo','TO',1);
INSERT INTO oc_zone VALUES(360,23,'Alibori','AL',1);
INSERT INTO oc_zone VALUES(361,23,'Atakora','AK',1);
INSERT INTO oc_zone VALUES(362,23,'Atlantique','AQ',1);
INSERT INTO oc_zone VALUES(363,23,'Borgou','BO',1);
INSERT INTO oc_zone VALUES(364,23,'Collines','CO',1);
INSERT INTO oc_zone VALUES(365,23,'Donga','DO',1);
INSERT INTO oc_zone VALUES(366,23,'Kouffo','KO',1);
INSERT INTO oc_zone VALUES(367,23,'Littoral','LI',1);
INSERT INTO oc_zone VALUES(368,23,'Mono','MO',1);
INSERT INTO oc_zone VALUES(369,23,'Oueme','OU',1);
INSERT INTO oc_zone VALUES(370,23,'Plateau','PL',1);
INSERT INTO oc_zone VALUES(371,23,'Zou','ZO',1);
INSERT INTO oc_zone VALUES(372,24,'Devonshire','DS',1);
INSERT INTO oc_zone VALUES(373,24,'Hamilton City','HC',1);
INSERT INTO oc_zone VALUES(374,24,'Hamilton','HA',1);
INSERT INTO oc_zone VALUES(375,24,'Paget','PG',1);
INSERT INTO oc_zone VALUES(376,24,'Pembroke','PB',1);
INSERT INTO oc_zone VALUES(377,24,'Saint George City','GC',1);
INSERT INTO oc_zone VALUES(378,24,'Saint George\'s','SG',1);
INSERT INTO oc_zone VALUES(379,24,'Sandys','SA',1);
INSERT INTO oc_zone VALUES(380,24,'Smith\'s','SM',1);
INSERT INTO oc_zone VALUES(381,24,'Southampton','SH',1);
INSERT INTO oc_zone VALUES(382,24,'Warwick','WA',1);
INSERT INTO oc_zone VALUES(383,25,'Bumthang','BUM',1);
INSERT INTO oc_zone VALUES(384,25,'Chukha','CHU',1);
INSERT INTO oc_zone VALUES(385,25,'Dagana','DAG',1);
INSERT INTO oc_zone VALUES(386,25,'Gasa','GAS',1);
INSERT INTO oc_zone VALUES(387,25,'Haa','HAA',1);
INSERT INTO oc_zone VALUES(388,25,'Lhuntse','LHU',1);
INSERT INTO oc_zone VALUES(389,25,'Mongar','MON',1);
INSERT INTO oc_zone VALUES(390,25,'Paro','PAR',1);
INSERT INTO oc_zone VALUES(391,25,'Pemagatshel','PEM',1);
INSERT INTO oc_zone VALUES(392,25,'Punakha','PUN',1);
INSERT INTO oc_zone VALUES(393,25,'Samdrup Jongkhar','SJO',1);
INSERT INTO oc_zone VALUES(394,25,'Samtse','SAT',1);
INSERT INTO oc_zone VALUES(395,25,'Sarpang','SAR',1);
INSERT INTO oc_zone VALUES(396,25,'Thimphu','THI',1);
INSERT INTO oc_zone VALUES(397,25,'Trashigang','TRG',1);
INSERT INTO oc_zone VALUES(398,25,'Trashiyangste','TRY',1);
INSERT INTO oc_zone VALUES(399,25,'Trongsa','TRO',1);
INSERT INTO oc_zone VALUES(400,25,'Tsirang','TSI',1);
INSERT INTO oc_zone VALUES(401,25,'Wangdue Phodrang','WPH',1);
INSERT INTO oc_zone VALUES(402,25,'Zhemgang','ZHE',1);
INSERT INTO oc_zone VALUES(403,26,'Beni','BEN',1);
INSERT INTO oc_zone VALUES(404,26,'Chuquisaca','CHU',1);
INSERT INTO oc_zone VALUES(405,26,'Cochabamba','COC',1);
INSERT INTO oc_zone VALUES(406,26,'La Paz','LPZ',1);
INSERT INTO oc_zone VALUES(407,26,'Oruro','ORU',1);
INSERT INTO oc_zone VALUES(408,26,'Pando','PAN',1);
INSERT INTO oc_zone VALUES(409,26,'Potosi','POT',1);
INSERT INTO oc_zone VALUES(410,26,'Santa Cruz','SCZ',1);
INSERT INTO oc_zone VALUES(411,26,'Tarija','TAR',1);
INSERT INTO oc_zone VALUES(412,27,'Brcko district','BRO',1);
INSERT INTO oc_zone VALUES(413,27,'Unsko-Sanski Kanton','FUS',1);
INSERT INTO oc_zone VALUES(414,27,'Posavski Kanton','FPO',1);
INSERT INTO oc_zone VALUES(415,27,'Tuzlanski Kanton','FTU',1);
INSERT INTO oc_zone VALUES(416,27,'Zenicko-Dobojski Kanton','FZE',1);
INSERT INTO oc_zone VALUES(417,27,'Bosanskopodrinjski Kanton','FBP',1);
INSERT INTO oc_zone VALUES(418,27,'Srednjebosanski Kanton','FSB',1);
INSERT INTO oc_zone VALUES(419,27,'Hercegovacko-neretvanski Kanton','FHN',1);
INSERT INTO oc_zone VALUES(420,27,'Zapadnohercegovacka Zupanija','FZH',1);
INSERT INTO oc_zone VALUES(421,27,'Kanton Sarajevo','FSA',1);
INSERT INTO oc_zone VALUES(422,27,'Zapadnobosanska','FZA',1);
INSERT INTO oc_zone VALUES(423,27,'Banja Luka','SBL',1);
INSERT INTO oc_zone VALUES(424,27,'Doboj','SDO',1);
INSERT INTO oc_zone VALUES(425,27,'Bijeljina','SBI',1);
INSERT INTO oc_zone VALUES(426,27,'Vlasenica','SVL',1);
INSERT INTO oc_zone VALUES(427,27,'Sarajevo-Romanija or Sokolac','SSR',1);
INSERT INTO oc_zone VALUES(428,27,'Foca','SFO',1);
INSERT INTO oc_zone VALUES(429,27,'Trebinje','STR',1);
INSERT INTO oc_zone VALUES(430,28,'Central','CE',1);
INSERT INTO oc_zone VALUES(431,28,'Ghanzi','GH',1);
INSERT INTO oc_zone VALUES(432,28,'Kgalagadi','KD',1);
INSERT INTO oc_zone VALUES(433,28,'Kgatleng','KT',1);
INSERT INTO oc_zone VALUES(434,28,'Kweneng','KW',1);
INSERT INTO oc_zone VALUES(435,28,'Ngamiland','NG',1);
INSERT INTO oc_zone VALUES(436,28,'North East','NE',1);
INSERT INTO oc_zone VALUES(437,28,'North West','NW',1);
INSERT INTO oc_zone VALUES(438,28,'South East','SE',1);
INSERT INTO oc_zone VALUES(439,28,'Southern','SO',1);
INSERT INTO oc_zone VALUES(440,30,'Acre','AC',1);
INSERT INTO oc_zone VALUES(441,30,'Alagoas','AL',1);
INSERT INTO oc_zone VALUES(442,30,'Amap?','AP',1);
INSERT INTO oc_zone VALUES(443,30,'Amazonas','AM',1);
INSERT INTO oc_zone VALUES(444,30,'Bahia','BA',1);
INSERT INTO oc_zone VALUES(445,30,'Cear?','CE',1);
INSERT INTO oc_zone VALUES(446,30,'Distrito Federal','DF',1);
INSERT INTO oc_zone VALUES(447,30,'Esp?rito Santo','ES',1);
INSERT INTO oc_zone VALUES(448,30,'Goi?s','GO',1);
INSERT INTO oc_zone VALUES(449,30,'Maranh?o','MA',1);
INSERT INTO oc_zone VALUES(450,30,'Mato Grosso','MT',1);
INSERT INTO oc_zone VALUES(451,30,'Mato Grosso do Sul','MS',1);
INSERT INTO oc_zone VALUES(452,30,'Minas Gerais','MG',1);
INSERT INTO oc_zone VALUES(453,30,'Par?','PA',1);
INSERT INTO oc_zone VALUES(454,30,'Para?ba','PB',1);
INSERT INTO oc_zone VALUES(455,30,'Paran?','PR',1);
INSERT INTO oc_zone VALUES(456,30,'Pernambuco','PE',1);
INSERT INTO oc_zone VALUES(457,30,'Piau?','PI',1);
INSERT INTO oc_zone VALUES(458,30,'Rio de Janeiro','RJ',1);
INSERT INTO oc_zone VALUES(459,30,'Rio Grande do Norte','RN',1);
INSERT INTO oc_zone VALUES(460,30,'Rio Grande do Sul','RS',1);
INSERT INTO oc_zone VALUES(461,30,'Rond?nia','RO',1);
INSERT INTO oc_zone VALUES(462,30,'Roraima','RR',1);
INSERT INTO oc_zone VALUES(463,30,'Santa Catarina','SC',1);
INSERT INTO oc_zone VALUES(464,30,'S?o Paulo','SP',1);
INSERT INTO oc_zone VALUES(465,30,'Sergipe','SE',1);
INSERT INTO oc_zone VALUES(466,30,'Tocantins','TO',1);
INSERT INTO oc_zone VALUES(467,31,'Peros Banhos','PB',1);
INSERT INTO oc_zone VALUES(468,31,'Salomon Islands','SI',1);
INSERT INTO oc_zone VALUES(469,31,'Nelsons Island','NI',1);
INSERT INTO oc_zone VALUES(470,31,'Three Brothers','TB',1);
INSERT INTO oc_zone VALUES(471,31,'Eagle Islands','EA',1);
INSERT INTO oc_zone VALUES(472,31,'Danger Island','DI',1);
INSERT INTO oc_zone VALUES(473,31,'Egmont Islands','EG',1);
INSERT INTO oc_zone VALUES(474,31,'Diego Garcia','DG',1);
INSERT INTO oc_zone VALUES(475,32,'Belait','BEL',1);
INSERT INTO oc_zone VALUES(476,32,'Brunei and Muara','BRM',1);
INSERT INTO oc_zone VALUES(477,32,'Temburong','TEM',1);
INSERT INTO oc_zone VALUES(478,32,'Tutong','TUT',1);
INSERT INTO oc_zone VALUES(479,33,'Blagoevgrad','',1);
INSERT INTO oc_zone VALUES(480,33,'Burgas','',1);
INSERT INTO oc_zone VALUES(481,33,'Dobrich','',1);
INSERT INTO oc_zone VALUES(482,33,'Gabrovo','',1);
INSERT INTO oc_zone VALUES(483,33,'Haskovo','',1);
INSERT INTO oc_zone VALUES(484,33,'Kardjali','',1);
INSERT INTO oc_zone VALUES(485,33,'Kyustendil','',1);
INSERT INTO oc_zone VALUES(486,33,'Lovech','',1);
INSERT INTO oc_zone VALUES(487,33,'Montana','',1);
INSERT INTO oc_zone VALUES(488,33,'Pazardjik','',1);
INSERT INTO oc_zone VALUES(489,33,'Pernik','',1);
INSERT INTO oc_zone VALUES(490,33,'Pleven','',1);
INSERT INTO oc_zone VALUES(491,33,'Plovdiv','',1);
INSERT INTO oc_zone VALUES(492,33,'Razgrad','',1);
INSERT INTO oc_zone VALUES(493,33,'Shumen','',1);
INSERT INTO oc_zone VALUES(494,33,'Silistra','',1);
INSERT INTO oc_zone VALUES(495,33,'Sliven','',1);
INSERT INTO oc_zone VALUES(496,33,'Smolyan','',1);
INSERT INTO oc_zone VALUES(497,33,'Sofia','',1);
INSERT INTO oc_zone VALUES(498,33,'Sofia - town','',1);
INSERT INTO oc_zone VALUES(499,33,'Stara Zagora','',1);
INSERT INTO oc_zone VALUES(500,33,'Targovishte','',1);
INSERT INTO oc_zone VALUES(501,33,'Varna','',1);
INSERT INTO oc_zone VALUES(502,33,'Veliko Tarnovo','',1);
INSERT INTO oc_zone VALUES(503,33,'Vidin','',1);
INSERT INTO oc_zone VALUES(504,33,'Vratza','',1);
INSERT INTO oc_zone VALUES(505,33,'Yambol','',1);
INSERT INTO oc_zone VALUES(506,34,'Bale','BAL',1);
INSERT INTO oc_zone VALUES(507,34,'Bam','BAM',1);
INSERT INTO oc_zone VALUES(508,34,'Banwa','BAN',1);
INSERT INTO oc_zone VALUES(509,34,'Bazega','BAZ',1);
INSERT INTO oc_zone VALUES(510,34,'Bougouriba','BOR',1);
INSERT INTO oc_zone VALUES(511,34,'Boulgou','BLG',1);
INSERT INTO oc_zone VALUES(512,34,'Boulkiemde','BOK',1);
INSERT INTO oc_zone VALUES(513,34,'Comoe','COM',1);
INSERT INTO oc_zone VALUES(514,34,'Ganzourgou','GAN',1);
INSERT INTO oc_zone VALUES(515,34,'Gnagna','GNA',1);
INSERT INTO oc_zone VALUES(516,34,'Gourma','GOU',1);
INSERT INTO oc_zone VALUES(517,34,'Houet','HOU',1);
INSERT INTO oc_zone VALUES(518,34,'Ioba','IOA',1);
INSERT INTO oc_zone VALUES(519,34,'Kadiogo','KAD',1);
INSERT INTO oc_zone VALUES(520,34,'Kenedougou','KEN',1);
INSERT INTO oc_zone VALUES(521,34,'Komondjari','KOD',1);
INSERT INTO oc_zone VALUES(522,34,'Kompienga','KOP',1);
INSERT INTO oc_zone VALUES(523,34,'Kossi','KOS',1);
INSERT INTO oc_zone VALUES(524,34,'Koulpelogo','KOL',1);
INSERT INTO oc_zone VALUES(525,34,'Kouritenga','KOT',1);
INSERT INTO oc_zone VALUES(526,34,'Kourweogo','KOW',1);
INSERT INTO oc_zone VALUES(527,34,'Leraba','LER',1);
INSERT INTO oc_zone VALUES(528,34,'Loroum','LOR',1);
INSERT INTO oc_zone VALUES(529,34,'Mouhoun','MOU',1);
INSERT INTO oc_zone VALUES(530,34,'Nahouri','NAH',1);
INSERT INTO oc_zone VALUES(531,34,'Namentenga','NAM',1);
INSERT INTO oc_zone VALUES(532,34,'Nayala','NAY',1);
INSERT INTO oc_zone VALUES(533,34,'Noumbiel','NOU',1);
INSERT INTO oc_zone VALUES(534,34,'Oubritenga','OUB',1);
INSERT INTO oc_zone VALUES(535,34,'Oudalan','OUD',1);
INSERT INTO oc_zone VALUES(536,34,'Passore','PAS',1);
INSERT INTO oc_zone VALUES(537,34,'Poni','PON',1);
INSERT INTO oc_zone VALUES(538,34,'Sanguie','SAG',1);
INSERT INTO oc_zone VALUES(539,34,'Sanmatenga','SAM',1);
INSERT INTO oc_zone VALUES(540,34,'Seno','SEN',1);
INSERT INTO oc_zone VALUES(541,34,'Sissili','SIS',1);
INSERT INTO oc_zone VALUES(542,34,'Soum','SOM',1);
INSERT INTO oc_zone VALUES(543,34,'Sourou','SOR',1);
INSERT INTO oc_zone VALUES(544,34,'Tapoa','TAP',1);
INSERT INTO oc_zone VALUES(545,34,'Tuy','TUY',1);
INSERT INTO oc_zone VALUES(546,34,'Yagha','YAG',1);
INSERT INTO oc_zone VALUES(547,34,'Yatenga','YAT',1);
INSERT INTO oc_zone VALUES(548,34,'Ziro','ZIR',1);
INSERT INTO oc_zone VALUES(549,34,'Zondoma','ZOD',1);
INSERT INTO oc_zone VALUES(550,34,'Zoundweogo','ZOW',1);
INSERT INTO oc_zone VALUES(551,35,'Bubanza','BB',1);
INSERT INTO oc_zone VALUES(552,35,'Bujumbura','BJ',1);
INSERT INTO oc_zone VALUES(553,35,'Bururi','BR',1);
INSERT INTO oc_zone VALUES(554,35,'Cankuzo','CA',1);
INSERT INTO oc_zone VALUES(555,35,'Cibitoke','CI',1);
INSERT INTO oc_zone VALUES(556,35,'Gitega','GI',1);
INSERT INTO oc_zone VALUES(557,35,'Karuzi','KR',1);
INSERT INTO oc_zone VALUES(558,35,'Kayanza','KY',1);
INSERT INTO oc_zone VALUES(559,35,'Kirundo','KI',1);
INSERT INTO oc_zone VALUES(560,35,'Makamba','MA',1);
INSERT INTO oc_zone VALUES(561,35,'Muramvya','MU',1);
INSERT INTO oc_zone VALUES(562,35,'Muyinga','MY',1);
INSERT INTO oc_zone VALUES(563,35,'Mwaro','MW',1);
INSERT INTO oc_zone VALUES(564,35,'Ngozi','NG',1);
INSERT INTO oc_zone VALUES(565,35,'Rutana','RT',1);
INSERT INTO oc_zone VALUES(566,35,'Ruyigi','RY',1);
INSERT INTO oc_zone VALUES(567,36,'Phnom Penh','PP',1);
INSERT INTO oc_zone VALUES(568,36,'Preah Seihanu (Kompong Som or Sihanoukville)','PS',1);
INSERT INTO oc_zone VALUES(569,36,'Pailin','PA',1);
INSERT INTO oc_zone VALUES(570,36,'Keb','KB',1);
INSERT INTO oc_zone VALUES(571,36,'Banteay Meanchey','BM',1);
INSERT INTO oc_zone VALUES(572,36,'Battambang','BA',1);
INSERT INTO oc_zone VALUES(573,36,'Kampong Cham','KM',1);
INSERT INTO oc_zone VALUES(574,36,'Kampong Chhnang','KN',1);
INSERT INTO oc_zone VALUES(575,36,'Kampong Speu','KU',1);
INSERT INTO oc_zone VALUES(576,36,'Kampong Som','KO',1);
INSERT INTO oc_zone VALUES(577,36,'Kampong Thom','KT',1);
INSERT INTO oc_zone VALUES(578,36,'Kampot','KP',1);
INSERT INTO oc_zone VALUES(579,36,'Kandal','KL',1);
INSERT INTO oc_zone VALUES(580,36,'Kaoh Kong','KK',1);
INSERT INTO oc_zone VALUES(581,36,'Kratie','KR',1);
INSERT INTO oc_zone VALUES(582,36,'Mondul Kiri','MK',1);
INSERT INTO oc_zone VALUES(583,36,'Oddar Meancheay','OM',1);
INSERT INTO oc_zone VALUES(584,36,'Pursat','PU',1);
INSERT INTO oc_zone VALUES(585,36,'Preah Vihear','PR',1);
INSERT INTO oc_zone VALUES(586,36,'Prey Veng','PG',1);
INSERT INTO oc_zone VALUES(587,36,'Ratanak Kiri','RK',1);
INSERT INTO oc_zone VALUES(588,36,'Siemreap','SI',1);
INSERT INTO oc_zone VALUES(589,36,'Stung Treng','ST',1);
INSERT INTO oc_zone VALUES(590,36,'Svay Rieng','SR',1);
INSERT INTO oc_zone VALUES(591,36,'Takeo','TK',1);
INSERT INTO oc_zone VALUES(592,37,'Adamawa (Adamaoua)','ADA',1);
INSERT INTO oc_zone VALUES(593,37,'Centre','CEN',1);
INSERT INTO oc_zone VALUES(594,37,'East (Est)','EST',1);
INSERT INTO oc_zone VALUES(595,37,'Extreme North (Extreme-Nord)','EXN',1);
INSERT INTO oc_zone VALUES(596,37,'Littoral','LIT',1);
INSERT INTO oc_zone VALUES(597,37,'North (Nord)','NOR',1);
INSERT INTO oc_zone VALUES(598,37,'Northwest (Nord-Ouest)','NOT',1);
INSERT INTO oc_zone VALUES(599,37,'West (Ouest)','OUE',1);
INSERT INTO oc_zone VALUES(600,37,'South (Sud)','SUD',1);
INSERT INTO oc_zone VALUES(601,37,'Southwest (Sud-Ouest).','SOU',1);
INSERT INTO oc_zone VALUES(602,38,'Alberta','AB',1);
INSERT INTO oc_zone VALUES(603,38,'British Columbia','BC',1);
INSERT INTO oc_zone VALUES(604,38,'Manitoba','MB',1);
INSERT INTO oc_zone VALUES(605,38,'New Brunswick','NB',1);
INSERT INTO oc_zone VALUES(606,38,'Newfoundland and Labrador','NL',1);
INSERT INTO oc_zone VALUES(607,38,'Northwest Territories','NT',1);
INSERT INTO oc_zone VALUES(608,38,'Nova Scotia','NS',1);
INSERT INTO oc_zone VALUES(609,38,'Nunavut','NU',1);
INSERT INTO oc_zone VALUES(610,38,'Ontario','ON',1);
INSERT INTO oc_zone VALUES(611,38,'Prince Edward Island','PE',1);
INSERT INTO oc_zone VALUES(612,38,'Qu&eacute;bec','QC',1);
INSERT INTO oc_zone VALUES(613,38,'Saskatchewan','SK',1);
INSERT INTO oc_zone VALUES(614,38,'Yukon Territory','YT',1);
INSERT INTO oc_zone VALUES(615,39,'Boa Vista','BV',1);
INSERT INTO oc_zone VALUES(616,39,'Brava','BR',1);
INSERT INTO oc_zone VALUES(617,39,'Calheta de Sao Miguel','CS',1);
INSERT INTO oc_zone VALUES(618,39,'Maio','MA',1);
INSERT INTO oc_zone VALUES(619,39,'Mosteiros','MO',1);
INSERT INTO oc_zone VALUES(620,39,'Paul','PA',1);
INSERT INTO oc_zone VALUES(621,39,'Porto Novo','PN',1);
INSERT INTO oc_zone VALUES(622,39,'Praia','PR',1);
INSERT INTO oc_zone VALUES(623,39,'Ribeira Grande','RG',1);
INSERT INTO oc_zone VALUES(624,39,'Sal','SL',1);
INSERT INTO oc_zone VALUES(625,39,'Santa Catarina','CA',1);
INSERT INTO oc_zone VALUES(626,39,'Santa Cruz','CR',1);
INSERT INTO oc_zone VALUES(627,39,'Sao Domingos','SD',1);
INSERT INTO oc_zone VALUES(628,39,'Sao Filipe','SF',1);
INSERT INTO oc_zone VALUES(629,39,'Sao Nicolau','SN',1);
INSERT INTO oc_zone VALUES(630,39,'Sao Vicente','SV',1);
INSERT INTO oc_zone VALUES(631,39,'Tarrafal','TA',1);
INSERT INTO oc_zone VALUES(632,40,'Creek','CR',1);
INSERT INTO oc_zone VALUES(633,40,'Eastern','EA',1);
INSERT INTO oc_zone VALUES(634,40,'Midland','ML',1);
INSERT INTO oc_zone VALUES(635,40,'South Town','ST',1);
INSERT INTO oc_zone VALUES(636,40,'Spot Bay','SP',1);
INSERT INTO oc_zone VALUES(637,40,'Stake Bay','SK',1);
INSERT INTO oc_zone VALUES(638,40,'West End','WD',1);
INSERT INTO oc_zone VALUES(639,40,'Western','WN',1);
INSERT INTO oc_zone VALUES(640,41,'Bamingui-Bangoran','BBA',1);
INSERT INTO oc_zone VALUES(641,41,'Basse-Kotto','BKO',1);
INSERT INTO oc_zone VALUES(642,41,'Haute-Kotto','HKO',1);
INSERT INTO oc_zone VALUES(643,41,'Haut-Mbomou','HMB',1);
INSERT INTO oc_zone VALUES(644,41,'Kemo','KEM',1);
INSERT INTO oc_zone VALUES(645,41,'Lobaye','LOB',1);
INSERT INTO oc_zone VALUES(646,41,'Mambere-Kade?','MKD',1);
INSERT INTO oc_zone VALUES(647,41,'Mbomou','MBO',1);
INSERT INTO oc_zone VALUES(648,41,'Nana-Mambere','NMM',1);
INSERT INTO oc_zone VALUES(649,41,'Ombella-M\'Poko','OMP',1);
INSERT INTO oc_zone VALUES(650,41,'Ouaka','OUK',1);
INSERT INTO oc_zone VALUES(651,41,'Ouham','OUH',1);
INSERT INTO oc_zone VALUES(652,41,'Ouham-Pende','OPE',1);
INSERT INTO oc_zone VALUES(653,41,'Vakaga','VAK',1);
INSERT INTO oc_zone VALUES(654,41,'Nana-Grebizi','NGR',1);
INSERT INTO oc_zone VALUES(655,41,'Sangha-Mbaere','SMB',1);
INSERT INTO oc_zone VALUES(656,41,'Bangui','BAN',1);
INSERT INTO oc_zone VALUES(657,42,'Batha','BA',1);
INSERT INTO oc_zone VALUES(658,42,'Biltine','BI',1);
INSERT INTO oc_zone VALUES(659,42,'Borkou-Ennedi-Tibesti','BE',1);
INSERT INTO oc_zone VALUES(660,42,'Chari-Baguirmi','CB',1);
INSERT INTO oc_zone VALUES(661,42,'Guera','GU',1);
INSERT INTO oc_zone VALUES(662,42,'Kanem','KA',1);
INSERT INTO oc_zone VALUES(663,42,'Lac','LA',1);
INSERT INTO oc_zone VALUES(664,42,'Logone Occidental','LC',1);
INSERT INTO oc_zone VALUES(665,42,'Logone Oriental','LR',1);
INSERT INTO oc_zone VALUES(666,42,'Mayo-Kebbi','MK',1);
INSERT INTO oc_zone VALUES(667,42,'Moyen-Chari','MC',1);
INSERT INTO oc_zone VALUES(668,42,'Ouaddai','OU',1);
INSERT INTO oc_zone VALUES(669,42,'Salamat','SA',1);
INSERT INTO oc_zone VALUES(670,42,'Tandjile','TA',1);
INSERT INTO oc_zone VALUES(671,43,'Aisen del General Carlos Ibanez','AI',1);
INSERT INTO oc_zone VALUES(672,43,'Antofagasta','AN',1);
INSERT INTO oc_zone VALUES(673,43,'Araucania','AR',1);
INSERT INTO oc_zone VALUES(674,43,'Atacama','AT',1);
INSERT INTO oc_zone VALUES(675,43,'Bio-Bio','BI',1);
INSERT INTO oc_zone VALUES(676,43,'Coquimbo','CO',1);
INSERT INTO oc_zone VALUES(677,43,'Libertador General Bernardo O\'Higgins','LI',1);
INSERT INTO oc_zone VALUES(678,43,'Los Lagos','LL',1);
INSERT INTO oc_zone VALUES(679,43,'Magallanes y de la Antartica Chilena','MA',1);
INSERT INTO oc_zone VALUES(680,43,'Maule','ML',1);
INSERT INTO oc_zone VALUES(681,43,'Region Metropolitana','RM',1);
INSERT INTO oc_zone VALUES(682,43,'Tarapaca','TA',1);
INSERT INTO oc_zone VALUES(683,43,'Valparaiso','VS',1);
INSERT INTO oc_zone VALUES(684,44,'Anhui','AN',1);
INSERT INTO oc_zone VALUES(685,44,'Beijing','BE',1);
INSERT INTO oc_zone VALUES(686,44,'Chongqing','CH',1);
INSERT INTO oc_zone VALUES(687,44,'Fujian','FU',1);
INSERT INTO oc_zone VALUES(688,44,'Gansu','GA',1);
INSERT INTO oc_zone VALUES(689,44,'Guangdong','GU',1);
INSERT INTO oc_zone VALUES(690,44,'Guangxi','GX',1);
INSERT INTO oc_zone VALUES(691,44,'Guizhou','GZ',1);
INSERT INTO oc_zone VALUES(692,44,'Hainan','HA',1);
INSERT INTO oc_zone VALUES(693,44,'Hebei','HB',1);
INSERT INTO oc_zone VALUES(694,44,'Heilongjiang','HL',1);
INSERT INTO oc_zone VALUES(695,44,'Henan','HE',1);
INSERT INTO oc_zone VALUES(696,44,'Hong Kong','HK',1);
INSERT INTO oc_zone VALUES(697,44,'Hubei','HU',1);
INSERT INTO oc_zone VALUES(698,44,'Hunan','HN',1);
INSERT INTO oc_zone VALUES(699,44,'Inner Mongolia','IM',1);
INSERT INTO oc_zone VALUES(700,44,'Jiangsu','JI',1);
INSERT INTO oc_zone VALUES(701,44,'Jiangxi','JX',1);
INSERT INTO oc_zone VALUES(702,44,'Jilin','JL',1);
INSERT INTO oc_zone VALUES(703,44,'Liaoning','LI',1);
INSERT INTO oc_zone VALUES(704,44,'Macau','MA',1);
INSERT INTO oc_zone VALUES(705,44,'Ningxia','NI',1);
INSERT INTO oc_zone VALUES(706,44,'Shaanxi','SH',1);
INSERT INTO oc_zone VALUES(707,44,'Shandong','SA',1);
INSERT INTO oc_zone VALUES(708,44,'Shanghai','SG',1);
INSERT INTO oc_zone VALUES(709,44,'Shanxi','SX',1);
INSERT INTO oc_zone VALUES(710,44,'Sichuan','SI',1);
INSERT INTO oc_zone VALUES(711,44,'Tianjin','TI',1);
INSERT INTO oc_zone VALUES(712,44,'Xinjiang','XI',1);
INSERT INTO oc_zone VALUES(713,44,'Yunnan','YU',1);
INSERT INTO oc_zone VALUES(714,44,'Zhejiang','ZH',1);
INSERT INTO oc_zone VALUES(715,46,'Direction Island','D',1);
INSERT INTO oc_zone VALUES(716,46,'Home Island','H',1);
INSERT INTO oc_zone VALUES(717,46,'Horsburgh Island','O',1);
INSERT INTO oc_zone VALUES(718,46,'South Island','S',1);
INSERT INTO oc_zone VALUES(719,46,'West Island','W',1);
INSERT INTO oc_zone VALUES(720,47,'Amazonas','AMZ',1);
INSERT INTO oc_zone VALUES(721,47,'Antioquia','ANT',1);
INSERT INTO oc_zone VALUES(722,47,'Arauca','ARA',1);
INSERT INTO oc_zone VALUES(723,47,'Atlantico','ATL',1);
INSERT INTO oc_zone VALUES(724,47,'Bogota D.C.','BDC',1);
INSERT INTO oc_zone VALUES(725,47,'Bolivar','BOL',1);
INSERT INTO oc_zone VALUES(726,47,'Boyaca','BOY',1);
INSERT INTO oc_zone VALUES(727,47,'Caldas','CAL',1);
INSERT INTO oc_zone VALUES(728,47,'Caqueta','CAQ',1);
INSERT INTO oc_zone VALUES(729,47,'Casanare','CAS',1);
INSERT INTO oc_zone VALUES(730,47,'Cauca','CAU',1);
INSERT INTO oc_zone VALUES(731,47,'Cesar','CES',1);
INSERT INTO oc_zone VALUES(732,47,'Choco','CHO',1);
INSERT INTO oc_zone VALUES(733,47,'Cordoba','COR',1);
INSERT INTO oc_zone VALUES(734,47,'Cundinamarca','CAM',1);
INSERT INTO oc_zone VALUES(735,47,'Guainia','GNA',1);
INSERT INTO oc_zone VALUES(736,47,'Guajira','GJR',1);
INSERT INTO oc_zone VALUES(737,47,'Guaviare','GVR',1);
INSERT INTO oc_zone VALUES(738,47,'Huila','HUI',1);
INSERT INTO oc_zone VALUES(739,47,'Magdalena','MAG',1);
INSERT INTO oc_zone VALUES(740,47,'Meta','MET',1);
INSERT INTO oc_zone VALUES(741,47,'Narino','NAR',1);
INSERT INTO oc_zone VALUES(742,47,'Norte de Santander','NDS',1);
INSERT INTO oc_zone VALUES(743,47,'Putumayo','PUT',1);
INSERT INTO oc_zone VALUES(744,47,'Quindio','QUI',1);
INSERT INTO oc_zone VALUES(745,47,'Risaralda','RIS',1);
INSERT INTO oc_zone VALUES(746,47,'San Andres y Providencia','SAP',1);
INSERT INTO oc_zone VALUES(747,47,'Santander','SAN',1);
INSERT INTO oc_zone VALUES(748,47,'Sucre','SUC',1);
INSERT INTO oc_zone VALUES(749,47,'Tolima','TOL',1);
INSERT INTO oc_zone VALUES(750,47,'Valle del Cauca','VDC',1);
INSERT INTO oc_zone VALUES(751,47,'Vaupes','VAU',1);
INSERT INTO oc_zone VALUES(752,47,'Vichada','VIC',1);
INSERT INTO oc_zone VALUES(753,48,'Grande Comore','G',1);
INSERT INTO oc_zone VALUES(754,48,'Anjouan','A',1);
INSERT INTO oc_zone VALUES(755,48,'Moheli','M',1);
INSERT INTO oc_zone VALUES(756,49,'Bouenza','BO',1);
INSERT INTO oc_zone VALUES(757,49,'Brazzaville','BR',1);
INSERT INTO oc_zone VALUES(758,49,'Cuvette','CU',1);
INSERT INTO oc_zone VALUES(759,49,'Cuvette-Ouest','CO',1);
INSERT INTO oc_zone VALUES(760,49,'Kouilou','KO',1);
INSERT INTO oc_zone VALUES(761,49,'Lekoumou','LE',1);
INSERT INTO oc_zone VALUES(762,49,'Likouala','LI',1);
INSERT INTO oc_zone VALUES(763,49,'Niari','NI',1);
INSERT INTO oc_zone VALUES(764,49,'Plateaux','PL',1);
INSERT INTO oc_zone VALUES(765,49,'Pool','PO',1);
INSERT INTO oc_zone VALUES(766,49,'Sangha','SA',1);
INSERT INTO oc_zone VALUES(767,50,'Pukapuka','PU',1);
INSERT INTO oc_zone VALUES(768,50,'Rakahanga','RK',1);
INSERT INTO oc_zone VALUES(769,50,'Manihiki','MK',1);
INSERT INTO oc_zone VALUES(770,50,'Penrhyn','PE',1);
INSERT INTO oc_zone VALUES(771,50,'Nassau Island','NI',1);
INSERT INTO oc_zone VALUES(772,50,'Surwarrow','SU',1);
INSERT INTO oc_zone VALUES(773,50,'Palmerston','PA',1);
INSERT INTO oc_zone VALUES(774,50,'Aitutaki','AI',1);
INSERT INTO oc_zone VALUES(775,50,'Manuae','MA',1);
INSERT INTO oc_zone VALUES(776,50,'Takutea','TA',1);
INSERT INTO oc_zone VALUES(777,50,'Mitiaro','MT',1);
INSERT INTO oc_zone VALUES(778,50,'Atiu','AT',1);
INSERT INTO oc_zone VALUES(779,50,'Mauke','MU',1);
INSERT INTO oc_zone VALUES(780,50,'Rarotonga','RR',1);
INSERT INTO oc_zone VALUES(781,50,'Mangaia','MG',1);
INSERT INTO oc_zone VALUES(782,51,'Alajuela','AL',1);
INSERT INTO oc_zone VALUES(783,51,'Cartago','CA',1);
INSERT INTO oc_zone VALUES(784,51,'Guanacaste','GU',1);
INSERT INTO oc_zone VALUES(785,51,'Heredia','HE',1);
INSERT INTO oc_zone VALUES(786,51,'Limon','LI',1);
INSERT INTO oc_zone VALUES(787,51,'Puntarenas','PU',1);
INSERT INTO oc_zone VALUES(788,51,'San Jose','SJ',1);
INSERT INTO oc_zone VALUES(789,52,'Abengourou','ABE',1);
INSERT INTO oc_zone VALUES(790,52,'Abidjan','ABI',1);
INSERT INTO oc_zone VALUES(791,52,'Aboisso','ABO',1);
INSERT INTO oc_zone VALUES(792,52,'Adiake','ADI',1);
INSERT INTO oc_zone VALUES(793,52,'Adzope','ADZ',1);
INSERT INTO oc_zone VALUES(794,52,'Agboville','AGB',1);
INSERT INTO oc_zone VALUES(795,52,'Agnibilekrou','AGN',1);
INSERT INTO oc_zone VALUES(796,52,'Alepe','ALE',1);
INSERT INTO oc_zone VALUES(797,52,'Bocanda','BOC',1);
INSERT INTO oc_zone VALUES(798,52,'Bangolo','BAN',1);
INSERT INTO oc_zone VALUES(799,52,'Beoumi','BEO',1);
INSERT INTO oc_zone VALUES(800,52,'Biankouma','BIA',1);
INSERT INTO oc_zone VALUES(801,52,'Bondoukou','BDK',1);
INSERT INTO oc_zone VALUES(802,52,'Bongouanou','BGN',1);
INSERT INTO oc_zone VALUES(803,52,'Bouafle','BFL',1);
INSERT INTO oc_zone VALUES(804,52,'Bouake','BKE',1);
INSERT INTO oc_zone VALUES(805,52,'Bouna','BNA',1);
INSERT INTO oc_zone VALUES(806,52,'Boundiali','BDL',1);
INSERT INTO oc_zone VALUES(807,52,'Dabakala','DKL',1);
INSERT INTO oc_zone VALUES(808,52,'Dabou','DBU',1);
INSERT INTO oc_zone VALUES(809,52,'Daloa','DAL',1);
INSERT INTO oc_zone VALUES(810,52,'Danane','DAN',1);
INSERT INTO oc_zone VALUES(811,52,'Daoukro','DAO',1);
INSERT INTO oc_zone VALUES(812,52,'Dimbokro','DIM',1);
INSERT INTO oc_zone VALUES(813,52,'Divo','DIV',1);
INSERT INTO oc_zone VALUES(814,52,'Duekoue','DUE',1);
INSERT INTO oc_zone VALUES(815,52,'Ferkessedougou','FER',1);
INSERT INTO oc_zone VALUES(816,52,'Gagnoa','GAG',1);
INSERT INTO oc_zone VALUES(817,52,'Grand-Bassam','GBA',1);
INSERT INTO oc_zone VALUES(818,52,'Grand-Lahou','GLA',1);
INSERT INTO oc_zone VALUES(819,52,'Guiglo','GUI',1);
INSERT INTO oc_zone VALUES(820,52,'Issia','ISS',1);
INSERT INTO oc_zone VALUES(821,52,'Jacqueville','JAC',1);
INSERT INTO oc_zone VALUES(822,52,'Katiola','KAT',1);
INSERT INTO oc_zone VALUES(823,52,'Korhogo','KOR',1);
INSERT INTO oc_zone VALUES(824,52,'Lakota','LAK',1);
INSERT INTO oc_zone VALUES(825,52,'Man','MAN',1);
INSERT INTO oc_zone VALUES(826,52,'Mankono','MKN',1);
INSERT INTO oc_zone VALUES(827,52,'Mbahiakro','MBA',1);
INSERT INTO oc_zone VALUES(828,52,'Odienne','ODI',1);
INSERT INTO oc_zone VALUES(829,52,'Oume','OUM',1);
INSERT INTO oc_zone VALUES(830,52,'Sakassou','SAK',1);
INSERT INTO oc_zone VALUES(831,52,'San-Pedro','SPE',1);
INSERT INTO oc_zone VALUES(832,52,'Sassandra','SAS',1);
INSERT INTO oc_zone VALUES(833,52,'Seguela','SEG',1);
INSERT INTO oc_zone VALUES(834,52,'Sinfra','SIN',1);
INSERT INTO oc_zone VALUES(835,52,'Soubre','SOU',1);
INSERT INTO oc_zone VALUES(836,52,'Tabou','TAB',1);
INSERT INTO oc_zone VALUES(837,52,'Tanda','TAN',1);
INSERT INTO oc_zone VALUES(838,52,'Tiebissou','TIE',1);
INSERT INTO oc_zone VALUES(839,52,'Tingrela','TIN',1);
INSERT INTO oc_zone VALUES(840,52,'Tiassale','TIA',1);
INSERT INTO oc_zone VALUES(841,52,'Touba','TBA',1);
INSERT INTO oc_zone VALUES(842,52,'Toulepleu','TLP',1);
INSERT INTO oc_zone VALUES(843,52,'Toumodi','TMD',1);
INSERT INTO oc_zone VALUES(844,52,'Vavoua','VAV',1);
INSERT INTO oc_zone VALUES(845,52,'Yamoussoukro','YAM',1);
INSERT INTO oc_zone VALUES(846,52,'Zuenoula','ZUE',1);
INSERT INTO oc_zone VALUES(847,53,'Bjelovarsko-bilogorska','BB',1);
INSERT INTO oc_zone VALUES(848,53,'Grad Zagreb','GZ',1);
INSERT INTO oc_zone VALUES(849,53,'Dubrova?ko-neretvanska','DN',1);
INSERT INTO oc_zone VALUES(850,53,'Istarska','IS',1);
INSERT INTO oc_zone VALUES(851,53,'Karlova?ka','KA',1);
INSERT INTO oc_zone VALUES(852,53,'Koprivni?ko-kri?eva?ka','KK',1);
INSERT INTO oc_zone VALUES(853,53,'Krapinsko-zagorska','KZ',1);
INSERT INTO oc_zone VALUES(854,53,'Li?ko-senjska','LS',1);
INSERT INTO oc_zone VALUES(855,53,'Me?imurska','ME',1);
INSERT INTO oc_zone VALUES(856,53,'Osje?ko-baranjska','OB',1);
INSERT INTO oc_zone VALUES(857,53,'Po?e?ko-slavonska','PS',1);
INSERT INTO oc_zone VALUES(858,53,'Primorsko-goranska','PG',1);
INSERT INTO oc_zone VALUES(859,53,'?ibensko-kninska','SK',1);
INSERT INTO oc_zone VALUES(860,53,'Sisa?ko-moslava?ka','SM',1);
INSERT INTO oc_zone VALUES(861,53,'Brodsko-posavska','BP',1);
INSERT INTO oc_zone VALUES(862,53,'Splitsko-dalmatinska','SD',1);
INSERT INTO oc_zone VALUES(863,53,'Vara?dinska','VA',1);
INSERT INTO oc_zone VALUES(864,53,'Viroviti?ko-podravska','VP',1);
INSERT INTO oc_zone VALUES(865,53,'Vukovarsko-srijemska','VS',1);
INSERT INTO oc_zone VALUES(866,53,'Zadarska','ZA',1);
INSERT INTO oc_zone VALUES(867,53,'Zagreba?ka','ZG',1);
INSERT INTO oc_zone VALUES(868,54,'Camaguey','CA',1);
INSERT INTO oc_zone VALUES(869,54,'Ciego de Avila','CD',1);
INSERT INTO oc_zone VALUES(870,54,'Cienfuegos','CI',1);
INSERT INTO oc_zone VALUES(871,54,'Ciudad de La Habana','CH',1);
INSERT INTO oc_zone VALUES(872,54,'Granma','GR',1);
INSERT INTO oc_zone VALUES(873,54,'Guantanamo','GU',1);
INSERT INTO oc_zone VALUES(874,54,'Holguin','HO',1);
INSERT INTO oc_zone VALUES(875,54,'Isla de la Juventud','IJ',1);
INSERT INTO oc_zone VALUES(876,54,'La Habana','LH',1);
INSERT INTO oc_zone VALUES(877,54,'Las Tunas','LT',1);
INSERT INTO oc_zone VALUES(878,54,'Matanzas','MA',1);
INSERT INTO oc_zone VALUES(879,54,'Pinar del Rio','PR',1);
INSERT INTO oc_zone VALUES(880,54,'Sancti Spiritus','SS',1);
INSERT INTO oc_zone VALUES(881,54,'Santiago de Cuba','SC',1);
INSERT INTO oc_zone VALUES(882,54,'Villa Clara','VC',1);
INSERT INTO oc_zone VALUES(883,55,'Famagusta','F',1);
INSERT INTO oc_zone VALUES(884,55,'Kyrenia','K',1);
INSERT INTO oc_zone VALUES(885,55,'Larnaca','A',1);
INSERT INTO oc_zone VALUES(886,55,'Limassol','I',1);
INSERT INTO oc_zone VALUES(887,55,'Nicosia','N',1);
INSERT INTO oc_zone VALUES(888,55,'Paphos','P',1);
INSERT INTO oc_zone VALUES(889,56,'?steck?','U',1);
INSERT INTO oc_zone VALUES(890,56,'Jiho?esk?','C',1);
INSERT INTO oc_zone VALUES(891,56,'Jihomoravsk?','B',1);
INSERT INTO oc_zone VALUES(892,56,'Karlovarsk?','K',1);
INSERT INTO oc_zone VALUES(893,56,'Kr?lovehradeck?','H',1);
INSERT INTO oc_zone VALUES(894,56,'Libereck?','L',1);
INSERT INTO oc_zone VALUES(895,56,'Moravskoslezsk?','T',1);
INSERT INTO oc_zone VALUES(896,56,'Olomouck?','M',1);
INSERT INTO oc_zone VALUES(897,56,'Pardubick?','E',1);
INSERT INTO oc_zone VALUES(898,56,'Plze?sk?','P',1);
INSERT INTO oc_zone VALUES(899,56,'Praha','A',1);
INSERT INTO oc_zone VALUES(900,56,'St?edo?esk?','S',1);
INSERT INTO oc_zone VALUES(901,56,'Vyso?ina','J',1);
INSERT INTO oc_zone VALUES(902,56,'Zl?nsk?','Z',1);
INSERT INTO oc_zone VALUES(903,57,'Arhus','AR',1);
INSERT INTO oc_zone VALUES(904,57,'Bornholm','BH',1);
INSERT INTO oc_zone VALUES(905,57,'Copenhagen','CO',1);
INSERT INTO oc_zone VALUES(906,57,'Faroe Islands','FO',1);
INSERT INTO oc_zone VALUES(907,57,'Frederiksborg','FR',1);
INSERT INTO oc_zone VALUES(908,57,'Fyn','FY',1);
INSERT INTO oc_zone VALUES(909,57,'Kobenhavn','KO',1);
INSERT INTO oc_zone VALUES(910,57,'Nordjylland','NO',1);
INSERT INTO oc_zone VALUES(911,57,'Ribe','RI',1);
INSERT INTO oc_zone VALUES(912,57,'Ringkobing','RK',1);
INSERT INTO oc_zone VALUES(913,57,'Roskilde','RO',1);
INSERT INTO oc_zone VALUES(914,57,'Sonderjylland','SO',1);
INSERT INTO oc_zone VALUES(915,57,'Storstrom','ST',1);
INSERT INTO oc_zone VALUES(916,57,'Vejle','VK',1);
INSERT INTO oc_zone VALUES(917,57,'Vestj&aelig;lland','VJ',1);
INSERT INTO oc_zone VALUES(918,57,'Viborg','VB',1);
INSERT INTO oc_zone VALUES(919,58,'\'Ali Sabih','S',1);
INSERT INTO oc_zone VALUES(920,58,'Dikhil','K',1);
INSERT INTO oc_zone VALUES(921,58,'Djibouti','J',1);
INSERT INTO oc_zone VALUES(922,58,'Obock','O',1);
INSERT INTO oc_zone VALUES(923,58,'Tadjoura','T',1);
INSERT INTO oc_zone VALUES(924,59,'Saint Andrew Parish','AND',1);
INSERT INTO oc_zone VALUES(925,59,'Saint David Parish','DAV',1);
INSERT INTO oc_zone VALUES(926,59,'Saint George Parish','GEO',1);
INSERT INTO oc_zone VALUES(927,59,'Saint John Parish','JOH',1);
INSERT INTO oc_zone VALUES(928,59,'Saint Joseph Parish','JOS',1);
INSERT INTO oc_zone VALUES(929,59,'Saint Luke Parish','LUK',1);
INSERT INTO oc_zone VALUES(930,59,'Saint Mark Parish','MAR',1);
INSERT INTO oc_zone VALUES(931,59,'Saint Patrick Parish','PAT',1);
INSERT INTO oc_zone VALUES(932,59,'Saint Paul Parish','PAU',1);
INSERT INTO oc_zone VALUES(933,59,'Saint Peter Parish','PET',1);
INSERT INTO oc_zone VALUES(934,60,'Distrito Nacional','DN',1);
INSERT INTO oc_zone VALUES(935,60,'Azua','AZ',1);
INSERT INTO oc_zone VALUES(936,60,'Baoruco','BC',1);
INSERT INTO oc_zone VALUES(937,60,'Barahona','BH',1);
INSERT INTO oc_zone VALUES(938,60,'Dajabon','DJ',1);
INSERT INTO oc_zone VALUES(939,60,'Duarte','DU',1);
INSERT INTO oc_zone VALUES(940,60,'Elias Pina','EL',1);
INSERT INTO oc_zone VALUES(941,60,'El Seybo','SY',1);
INSERT INTO oc_zone VALUES(942,60,'Espaillat','ET',1);
INSERT INTO oc_zone VALUES(943,60,'Hato Mayor','HM',1);
INSERT INTO oc_zone VALUES(944,60,'Independencia','IN',1);
INSERT INTO oc_zone VALUES(945,60,'La Altagracia','AL',1);
INSERT INTO oc_zone VALUES(946,60,'La Romana','RO',1);
INSERT INTO oc_zone VALUES(947,60,'La Vega','VE',1);
INSERT INTO oc_zone VALUES(948,60,'Maria Trinidad Sanchez','MT',1);
INSERT INTO oc_zone VALUES(949,60,'Monsenor Nouel','MN',1);
INSERT INTO oc_zone VALUES(950,60,'Monte Cristi','MC',1);
INSERT INTO oc_zone VALUES(951,60,'Monte Plata','MP',1);
INSERT INTO oc_zone VALUES(952,60,'Pedernales','PD',1);
INSERT INTO oc_zone VALUES(953,60,'Peravia (Bani)','PR',1);
INSERT INTO oc_zone VALUES(954,60,'Puerto Plata','PP',1);
INSERT INTO oc_zone VALUES(955,60,'Salcedo','SL',1);
INSERT INTO oc_zone VALUES(956,60,'Samana','SM',1);
INSERT INTO oc_zone VALUES(957,60,'Sanchez Ramirez','SH',1);
INSERT INTO oc_zone VALUES(958,60,'San Cristobal','SC',1);
INSERT INTO oc_zone VALUES(959,60,'San Jose de Ocoa','JO',1);
INSERT INTO oc_zone VALUES(960,60,'San Juan','SJ',1);
INSERT INTO oc_zone VALUES(961,60,'San Pedro de Macoris','PM',1);
INSERT INTO oc_zone VALUES(962,60,'Santiago','SA',1);
INSERT INTO oc_zone VALUES(963,60,'Santiago Rodriguez','ST',1);
INSERT INTO oc_zone VALUES(964,60,'Santo Domingo','SD',1);
INSERT INTO oc_zone VALUES(965,60,'Valverde','VA',1);
INSERT INTO oc_zone VALUES(966,61,'Aileu','AL',1);
INSERT INTO oc_zone VALUES(967,61,'Ainaro','AN',1);
INSERT INTO oc_zone VALUES(968,61,'Baucau','BA',1);
INSERT INTO oc_zone VALUES(969,61,'Bobonaro','BO',1);
INSERT INTO oc_zone VALUES(970,61,'Cova Lima','CO',1);
INSERT INTO oc_zone VALUES(971,61,'Dili','DI',1);
INSERT INTO oc_zone VALUES(972,61,'Ermera','ER',1);
INSERT INTO oc_zone VALUES(973,61,'Lautem','LA',1);
INSERT INTO oc_zone VALUES(974,61,'Liquica','LI',1);
INSERT INTO oc_zone VALUES(975,61,'Manatuto','MT',1);
INSERT INTO oc_zone VALUES(976,61,'Manufahi','MF',1);
INSERT INTO oc_zone VALUES(977,61,'Oecussi','OE',1);
INSERT INTO oc_zone VALUES(978,61,'Viqueque','VI',1);
INSERT INTO oc_zone VALUES(979,62,'Azuay','AZU',1);
INSERT INTO oc_zone VALUES(980,62,'Bolivar','BOL',1);
INSERT INTO oc_zone VALUES(981,62,'Ca&ntilde;ar','CAN',1);
INSERT INTO oc_zone VALUES(982,62,'Carchi','CAR',1);
INSERT INTO oc_zone VALUES(983,62,'Chimborazo','CHI',1);
INSERT INTO oc_zone VALUES(984,62,'Cotopaxi','COT',1);
INSERT INTO oc_zone VALUES(985,62,'El Oro','EOR',1);
INSERT INTO oc_zone VALUES(986,62,'Esmeraldas','ESM',1);
INSERT INTO oc_zone VALUES(987,62,'Gal&aacute;pagos','GPS',1);
INSERT INTO oc_zone VALUES(988,62,'Guayas','GUA',1);
INSERT INTO oc_zone VALUES(989,62,'Imbabura','IMB',1);
INSERT INTO oc_zone VALUES(990,62,'Loja','LOJ',1);
INSERT INTO oc_zone VALUES(991,62,'Los Rios','LRO',1);
INSERT INTO oc_zone VALUES(992,62,'Manab&iacute;','MAN',1);
INSERT INTO oc_zone VALUES(993,62,'Morona Santiago','MSA',1);
INSERT INTO oc_zone VALUES(994,62,'Napo','NAP',1);
INSERT INTO oc_zone VALUES(995,62,'Orellana','ORE',1);
INSERT INTO oc_zone VALUES(996,62,'Pastaza','PAS',1);
INSERT INTO oc_zone VALUES(997,62,'Pichincha','PIC',1);
INSERT INTO oc_zone VALUES(998,62,'Sucumb&iacute;os','SUC',1);
INSERT INTO oc_zone VALUES(999,62,'Tungurahua','TUN',1);
INSERT INTO oc_zone VALUES(1000,62,'Zamora Chinchipe','ZCH',1);
INSERT INTO oc_zone VALUES(1001,63,'Ad Daqahliyah','DHY',1);
INSERT INTO oc_zone VALUES(1002,63,'Al Bahr al Ahmar','BAM',1);
INSERT INTO oc_zone VALUES(1003,63,'Al Buhayrah','BHY',1);
INSERT INTO oc_zone VALUES(1004,63,'Al Fayyum','FYM',1);
INSERT INTO oc_zone VALUES(1005,63,'Al Gharbiyah','GBY',1);
INSERT INTO oc_zone VALUES(1006,63,'Al Iskandariyah','IDR',1);
INSERT INTO oc_zone VALUES(1007,63,'Al Isma\'iliyah','IML',1);
INSERT INTO oc_zone VALUES(1008,63,'Al Jizah','JZH',1);
INSERT INTO oc_zone VALUES(1009,63,'Al Minufiyah','MFY',1);
INSERT INTO oc_zone VALUES(1010,63,'Al Minya','MNY',1);
INSERT INTO oc_zone VALUES(1011,63,'Al Qahirah','QHR',1);
INSERT INTO oc_zone VALUES(1012,63,'Al Qalyubiyah','QLY',1);
INSERT INTO oc_zone VALUES(1013,63,'Al Wadi al Jadid','WJD',1);
INSERT INTO oc_zone VALUES(1014,63,'Ash Sharqiyah','SHQ',1);
INSERT INTO oc_zone VALUES(1015,63,'As Suways','SWY',1);
INSERT INTO oc_zone VALUES(1016,63,'Aswan','ASW',1);
INSERT INTO oc_zone VALUES(1017,63,'Asyut','ASY',1);
INSERT INTO oc_zone VALUES(1018,63,'Bani Suwayf','BSW',1);
INSERT INTO oc_zone VALUES(1019,63,'Bur Sa\'id','BSD',1);
INSERT INTO oc_zone VALUES(1020,63,'Dumyat','DMY',1);
INSERT INTO oc_zone VALUES(1021,63,'Janub Sina\'','JNS',1);
INSERT INTO oc_zone VALUES(1022,63,'Kafr ash Shaykh','KSH',1);
INSERT INTO oc_zone VALUES(1023,63,'Matruh','MAT',1);
INSERT INTO oc_zone VALUES(1024,63,'Qina','QIN',1);
INSERT INTO oc_zone VALUES(1025,63,'Shamal Sina\'','SHS',1);
INSERT INTO oc_zone VALUES(1026,63,'Suhaj','SUH',1);
INSERT INTO oc_zone VALUES(1027,64,'Ahuachapan','AH',1);
INSERT INTO oc_zone VALUES(1028,64,'Cabanas','CA',1);
INSERT INTO oc_zone VALUES(1029,64,'Chalatenango','CH',1);
INSERT INTO oc_zone VALUES(1030,64,'Cuscatlan','CU',1);
INSERT INTO oc_zone VALUES(1031,64,'La Libertad','LB',1);
INSERT INTO oc_zone VALUES(1032,64,'La Paz','PZ',1);
INSERT INTO oc_zone VALUES(1033,64,'La Union','UN',1);
INSERT INTO oc_zone VALUES(1034,64,'Morazan','MO',1);
INSERT INTO oc_zone VALUES(1035,64,'San Miguel','SM',1);
INSERT INTO oc_zone VALUES(1036,64,'San Salvador','SS',1);
INSERT INTO oc_zone VALUES(1037,64,'San Vicente','SV',1);
INSERT INTO oc_zone VALUES(1038,64,'Santa Ana','SA',1);
INSERT INTO oc_zone VALUES(1039,64,'Sonsonate','SO',1);
INSERT INTO oc_zone VALUES(1040,64,'Usulutan','US',1);
INSERT INTO oc_zone VALUES(1041,65,'Provincia Annobon','AN',1);
INSERT INTO oc_zone VALUES(1042,65,'Provincia Bioko Norte','BN',1);
INSERT INTO oc_zone VALUES(1043,65,'Provincia Bioko Sur','BS',1);
INSERT INTO oc_zone VALUES(1044,65,'Provincia Centro Sur','CS',1);
INSERT INTO oc_zone VALUES(1045,65,'Provincia Kie-Ntem','KN',1);
INSERT INTO oc_zone VALUES(1046,65,'Provincia Litoral','LI',1);
INSERT INTO oc_zone VALUES(1047,65,'Provincia Wele-Nzas','WN',1);
INSERT INTO oc_zone VALUES(1048,66,'Central (Maekel)','MA',1);
INSERT INTO oc_zone VALUES(1049,66,'Anseba (Keren)','KE',1);
INSERT INTO oc_zone VALUES(1050,66,'Southern Red Sea (Debub-Keih-Bahri)','DK',1);
INSERT INTO oc_zone VALUES(1051,66,'Northern Red Sea (Semien-Keih-Bahri)','SK',1);
INSERT INTO oc_zone VALUES(1052,66,'Southern (Debub)','DE',1);
INSERT INTO oc_zone VALUES(1053,66,'Gash-Barka (Barentu)','BR',1);
INSERT INTO oc_zone VALUES(1054,67,'Harjumaa (Tallinn)','HA',1);
INSERT INTO oc_zone VALUES(1055,67,'Hiiumaa (Kardla)','HI',1);
INSERT INTO oc_zone VALUES(1056,67,'Ida-Virumaa (Johvi)','IV',1);
INSERT INTO oc_zone VALUES(1057,67,'Jarvamaa (Paide)','JA',1);
INSERT INTO oc_zone VALUES(1058,67,'Jogevamaa (Jogeva)','JO',1);
INSERT INTO oc_zone VALUES(1059,67,'Laane-Virumaa (Rakvere)','LV',1);
INSERT INTO oc_zone VALUES(1060,67,'Laanemaa (Haapsalu)','LA',1);
INSERT INTO oc_zone VALUES(1061,67,'Parnumaa (Parnu)','PA',1);
INSERT INTO oc_zone VALUES(1062,67,'Polvamaa (Polva)','PO',1);
INSERT INTO oc_zone VALUES(1063,67,'Raplamaa (Rapla)','RA',1);
INSERT INTO oc_zone VALUES(1064,67,'Saaremaa (Kuessaare)','SA',1);
INSERT INTO oc_zone VALUES(1065,67,'Tartumaa (Tartu)','TA',1);
INSERT INTO oc_zone VALUES(1066,67,'Valgamaa (Valga)','VA',1);
INSERT INTO oc_zone VALUES(1067,67,'Viljandimaa (Viljandi)','VI',1);
INSERT INTO oc_zone VALUES(1068,67,'Vorumaa (Voru)','VO',1);
INSERT INTO oc_zone VALUES(1069,68,'Afar','AF',1);
INSERT INTO oc_zone VALUES(1070,68,'Amhara','AH',1);
INSERT INTO oc_zone VALUES(1071,68,'Benishangul-Gumaz','BG',1);
INSERT INTO oc_zone VALUES(1072,68,'Gambela','GB',1);
INSERT INTO oc_zone VALUES(1073,68,'Hariai','HR',1);
INSERT INTO oc_zone VALUES(1074,68,'Oromia','OR',1);
INSERT INTO oc_zone VALUES(1075,68,'Somali','SM',1);
INSERT INTO oc_zone VALUES(1076,68,'Southern Nations - Nationalities and Peoples Region','SN',1);
INSERT INTO oc_zone VALUES(1077,68,'Tigray','TG',1);
INSERT INTO oc_zone VALUES(1078,68,'Addis Ababa','AA',1);
INSERT INTO oc_zone VALUES(1079,68,'Dire Dawa','DD',1);
INSERT INTO oc_zone VALUES(1080,71,'Central Division','C',1);
INSERT INTO oc_zone VALUES(1081,71,'Northern Division','N',1);
INSERT INTO oc_zone VALUES(1082,71,'Eastern Division','E',1);
INSERT INTO oc_zone VALUES(1083,71,'Western Division','W',1);
INSERT INTO oc_zone VALUES(1084,71,'Rotuma','R',1);
INSERT INTO oc_zone VALUES(1085,72,'Ahvenanmaan l??ni','AL',1);
INSERT INTO oc_zone VALUES(1086,72,'Etel?-Suomen l??ni','ES',1);
INSERT INTO oc_zone VALUES(1087,72,'It?-Suomen l??ni','IS',1);
INSERT INTO oc_zone VALUES(1088,72,'L?nsi-Suomen l??ni','LS',1);
INSERT INTO oc_zone VALUES(1089,72,'Lapin l??ni','LA',1);
INSERT INTO oc_zone VALUES(1090,72,'Oulun l??ni','OU',1);
INSERT INTO oc_zone VALUES(1114,74,'Ain',1,1);
INSERT INTO oc_zone VALUES(1115,74,'Aisne',2,1);
INSERT INTO oc_zone VALUES(1116,74,'Allier',3,1);
INSERT INTO oc_zone VALUES(1117,74,'Alpes de Haute Provence',4,1);
INSERT INTO oc_zone VALUES(1118,74,'Hautes-Alpes',5,1);
INSERT INTO oc_zone VALUES(1119,74,'Alpes Maritimes',6,1);
INSERT INTO oc_zone VALUES(1120,74,'Ard&egrave;che',7,1);
INSERT INTO oc_zone VALUES(1121,74,'Ardennes',8,1);
INSERT INTO oc_zone VALUES(1122,74,'Ari&egrave;ge',9,1);
INSERT INTO oc_zone VALUES(1123,74,'Aube',10,1);
INSERT INTO oc_zone VALUES(1124,74,'Aude',11,1);
INSERT INTO oc_zone VALUES(1125,74,'Aveyron',12,1);
INSERT INTO oc_zone VALUES(1126,74,'Bouches du Rh&ocirc;ne',13,1);
INSERT INTO oc_zone VALUES(1127,74,'Calvados',14,1);
INSERT INTO oc_zone VALUES(1128,74,'Cantal',15,1);
INSERT INTO oc_zone VALUES(1129,74,'Charente',16,1);
INSERT INTO oc_zone VALUES(1130,74,'Charente Maritime',17,1);
INSERT INTO oc_zone VALUES(1131,74,'Cher',18,1);
INSERT INTO oc_zone VALUES(1132,74,'Corr&egrave;ze',19,1);
INSERT INTO oc_zone VALUES(1133,74,'Corse du Sud','2A',1);
INSERT INTO oc_zone VALUES(1134,74,'Haute Corse','2B',1);
INSERT INTO oc_zone VALUES(1135,74,'C&ocirc;te d&#039;or',21,1);
INSERT INTO oc_zone VALUES(1136,74,'C&ocirc;tes d&#039;Armor',22,1);
INSERT INTO oc_zone VALUES(1137,74,'Creuse',23,1);
INSERT INTO oc_zone VALUES(1138,74,'Dordogne',24,1);
INSERT INTO oc_zone VALUES(1139,74,'Doubs',25,1);
INSERT INTO oc_zone VALUES(1140,74,'Dr&ocirc;me',26,1);
INSERT INTO oc_zone VALUES(1141,74,'Eure',27,1);
INSERT INTO oc_zone VALUES(1142,74,'Eure et Loir',28,1);
INSERT INTO oc_zone VALUES(1143,74,'Finist&egrave;re',29,1);
INSERT INTO oc_zone VALUES(1144,74,'Gard',30,1);
INSERT INTO oc_zone VALUES(1145,74,'Haute Garonne',31,1);
INSERT INTO oc_zone VALUES(1146,74,'Gers',32,1);
INSERT INTO oc_zone VALUES(1147,74,'Gironde',33,1);
INSERT INTO oc_zone VALUES(1148,74,'H&eacute;rault',34,1);
INSERT INTO oc_zone VALUES(1149,74,'Ille et Vilaine',35,1);
INSERT INTO oc_zone VALUES(1150,74,'Indre',36,1);
INSERT INTO oc_zone VALUES(1151,74,'Indre et Loire',37,1);
INSERT INTO oc_zone VALUES(1152,74,'Is&eacute;re',38,1);
INSERT INTO oc_zone VALUES(1153,74,'Jura',39,1);
INSERT INTO oc_zone VALUES(1154,74,'Landes',40,1);
INSERT INTO oc_zone VALUES(1155,74,'Loir et Cher',41,1);
INSERT INTO oc_zone VALUES(1156,74,'Loire',42,1);
INSERT INTO oc_zone VALUES(1157,74,'Haute Loire',43,1);
INSERT INTO oc_zone VALUES(1158,74,'Loire Atlantique',44,1);
INSERT INTO oc_zone VALUES(1159,74,'Loiret',45,1);
INSERT INTO oc_zone VALUES(1160,74,'Lot',46,1);
INSERT INTO oc_zone VALUES(1161,74,'Lot et Garonne',47,1);
INSERT INTO oc_zone VALUES(1162,74,'Loz&egrave;re',48,1);
INSERT INTO oc_zone VALUES(1163,74,'Maine et Loire',49,1);
INSERT INTO oc_zone VALUES(1164,74,'Manche',50,1);
INSERT INTO oc_zone VALUES(1165,74,'Marne',51,1);
INSERT INTO oc_zone VALUES(1166,74,'Haute Marne',52,1);
INSERT INTO oc_zone VALUES(1167,74,'Mayenne',53,1);
INSERT INTO oc_zone VALUES(1168,74,'Meurthe et Moselle',54,1);
INSERT INTO oc_zone VALUES(1169,74,'Meuse',55,1);
INSERT INTO oc_zone VALUES(1170,74,'Morbihan',56,1);
INSERT INTO oc_zone VALUES(1171,74,'Moselle',57,1);
INSERT INTO oc_zone VALUES(1172,74,'Ni&egrave;vre',58,1);
INSERT INTO oc_zone VALUES(1173,74,'Nord',59,1);
INSERT INTO oc_zone VALUES(1174,74,'Oise',60,1);
INSERT INTO oc_zone VALUES(1175,74,'Orne',61,1);
INSERT INTO oc_zone VALUES(1176,74,'Pas de Calais',62,1);
INSERT INTO oc_zone VALUES(1177,74,'Puy de D&ocirc;me',63,1);
INSERT INTO oc_zone VALUES(1178,74,'Pyr&eacute;n&eacute;es Atlantiques',64,1);
INSERT INTO oc_zone VALUES(1179,74,'Hautes Pyr&eacute;n&eacute;es',65,1);
INSERT INTO oc_zone VALUES(1180,74,'Pyr&eacute;n&eacute;es Orientales',66,1);
INSERT INTO oc_zone VALUES(1181,74,'Bas Rhin',67,1);
INSERT INTO oc_zone VALUES(1182,74,'Haut Rhin',68,1);
INSERT INTO oc_zone VALUES(1183,74,'Rh&ocirc;ne',69,1);
INSERT INTO oc_zone VALUES(1184,74,'Haute Sa&ocirc;ne',70,1);
INSERT INTO oc_zone VALUES(1185,74,'Sa&ocirc;ne et Loire',71,1);
INSERT INTO oc_zone VALUES(1186,74,'Sarthe',72,1);
INSERT INTO oc_zone VALUES(1187,74,'Savoie',73,1);
INSERT INTO oc_zone VALUES(1188,74,'Haute Savoie',74,1);
INSERT INTO oc_zone VALUES(1189,74,'Paris',75,1);
INSERT INTO oc_zone VALUES(1190,74,'Seine Maritime',76,1);
INSERT INTO oc_zone VALUES(1191,74,'Seine et Marne',77,1);
INSERT INTO oc_zone VALUES(1192,74,'Yvelines',78,1);
INSERT INTO oc_zone VALUES(1193,74,'Deux S&egrave;vres',79,1);
INSERT INTO oc_zone VALUES(1194,74,'Somme',80,1);
INSERT INTO oc_zone VALUES(1195,74,'Tarn',81,1);
INSERT INTO oc_zone VALUES(1196,74,'Tarn et Garonne',82,1);
INSERT INTO oc_zone VALUES(1197,74,'Var',83,1);
INSERT INTO oc_zone VALUES(1198,74,'Vaucluse',84,1);
INSERT INTO oc_zone VALUES(1199,74,'Vend&eacute;e',85,1);
INSERT INTO oc_zone VALUES(1200,74,'Vienne',86,1);
INSERT INTO oc_zone VALUES(1201,74,'Haute Vienne',87,1);
INSERT INTO oc_zone VALUES(1202,74,'Vosges',88,1);
INSERT INTO oc_zone VALUES(1203,74,'Yonne',89,1);
INSERT INTO oc_zone VALUES(1204,74,'Territoire de Belfort',90,1);
INSERT INTO oc_zone VALUES(1205,74,'Essonne',91,1);
INSERT INTO oc_zone VALUES(1206,74,'Hauts de Seine',92,1);
INSERT INTO oc_zone VALUES(1207,74,'Seine St-Denis',93,1);
INSERT INTO oc_zone VALUES(1208,74,'Val de Marne',94,1);
INSERT INTO oc_zone VALUES(1209,74,'Val d\'Oise',95,1);
INSERT INTO oc_zone VALUES(1210,76,'Archipel des Marquises','M',1);
INSERT INTO oc_zone VALUES(1211,76,'Archipel des Tuamotu','T',1);
INSERT INTO oc_zone VALUES(1212,76,'Archipel des Tubuai','I',1);
INSERT INTO oc_zone VALUES(1213,76,'Iles du Vent','V',1);
INSERT INTO oc_zone VALUES(1214,76,'Iles Sous-le-Vent','S',1);
INSERT INTO oc_zone VALUES(1215,77,'Iles Crozet','C',1);
INSERT INTO oc_zone VALUES(1216,77,'Iles Kerguelen','K',1);
INSERT INTO oc_zone VALUES(1217,77,'Ile Amsterdam','A',1);
INSERT INTO oc_zone VALUES(1218,77,'Ile Saint-Paul','P',1);
INSERT INTO oc_zone VALUES(1219,77,'Adelie Land','D',1);
INSERT INTO oc_zone VALUES(1220,78,'Estuaire','ES',1);
INSERT INTO oc_zone VALUES(1221,78,'Haut-Ogooue','HO',1);
INSERT INTO oc_zone VALUES(1222,78,'Moyen-Ogooue','MO',1);
INSERT INTO oc_zone VALUES(1223,78,'Ngounie','NG',1);
INSERT INTO oc_zone VALUES(1224,78,'Nyanga','NY',1);
INSERT INTO oc_zone VALUES(1225,78,'Ogooue-Ivindo','OI',1);
INSERT INTO oc_zone VALUES(1226,78,'Ogooue-Lolo','OL',1);
INSERT INTO oc_zone VALUES(1227,78,'Ogooue-Maritime','OM',1);
INSERT INTO oc_zone VALUES(1228,78,'Woleu-Ntem','WN',1);
INSERT INTO oc_zone VALUES(1229,79,'Banjul','BJ',1);
INSERT INTO oc_zone VALUES(1230,79,'Basse','BS',1);
INSERT INTO oc_zone VALUES(1231,79,'Brikama','BR',1);
INSERT INTO oc_zone VALUES(1232,79,'Janjangbure','JA',1);
INSERT INTO oc_zone VALUES(1233,79,'Kanifeng','KA',1);
INSERT INTO oc_zone VALUES(1234,79,'Kerewan','KE',1);
INSERT INTO oc_zone VALUES(1235,79,'Kuntaur','KU',1);
INSERT INTO oc_zone VALUES(1236,79,'Mansakonko','MA',1);
INSERT INTO oc_zone VALUES(1237,79,'Lower River','LR',1);
INSERT INTO oc_zone VALUES(1238,79,'Central River','CR',1);
INSERT INTO oc_zone VALUES(1239,79,'North Bank','NB',1);
INSERT INTO oc_zone VALUES(1240,79,'Upper River','UR',1);
INSERT INTO oc_zone VALUES(1241,79,'Western','WE',1);
INSERT INTO oc_zone VALUES(1242,80,'Abkhazia','AB',1);
INSERT INTO oc_zone VALUES(1243,80,'Ajaria','AJ',1);
INSERT INTO oc_zone VALUES(1244,80,'Tbilisi','TB',1);
INSERT INTO oc_zone VALUES(1245,80,'Guria','GU',1);
INSERT INTO oc_zone VALUES(1246,80,'Imereti','IM',1);
INSERT INTO oc_zone VALUES(1247,80,'Kakheti','KA',1);
INSERT INTO oc_zone VALUES(1248,80,'Kvemo Kartli','KK',1);
INSERT INTO oc_zone VALUES(1249,80,'Mtskheta-Mtianeti','MM',1);
INSERT INTO oc_zone VALUES(1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1);
INSERT INTO oc_zone VALUES(1251,80,'Samegrelo-Zemo Svaneti','SZ',1);
INSERT INTO oc_zone VALUES(1252,80,'Samtskhe-Javakheti','SJ',1);
INSERT INTO oc_zone VALUES(1253,80,'Shida Kartli','SK',1);
INSERT INTO oc_zone VALUES(1254,81,'Baden-W?rttemberg','BAW',1);
INSERT INTO oc_zone VALUES(1255,81,'Bayern','BAY',1);
INSERT INTO oc_zone VALUES(1256,81,'Berlin','BER',1);
INSERT INTO oc_zone VALUES(1257,81,'Brandenburg','BRG',1);
INSERT INTO oc_zone VALUES(1258,81,'Bremen','BRE',1);
INSERT INTO oc_zone VALUES(1259,81,'Hamburg','HAM',1);
INSERT INTO oc_zone VALUES(1260,81,'Hessen','HES',1);
INSERT INTO oc_zone VALUES(1261,81,'Mecklenburg-Vorpommern','MEC',1);
INSERT INTO oc_zone VALUES(1262,81,'Niedersachsen','NDS',1);
INSERT INTO oc_zone VALUES(1263,81,'Nordrhein-Westfalen','NRW',1);
INSERT INTO oc_zone VALUES(1264,81,'Rheinland-Pfalz','RHE',1);
INSERT INTO oc_zone VALUES(1265,81,'Saarland','SAR',1);
INSERT INTO oc_zone VALUES(1266,81,'Sachsen','SAS',1);
INSERT INTO oc_zone VALUES(1267,81,'Sachsen-Anhalt','SAC',1);
INSERT INTO oc_zone VALUES(1268,81,'Schleswig-Holstein','SCN',1);
INSERT INTO oc_zone VALUES(1269,81,'Th?ringen','THE',1);
INSERT INTO oc_zone VALUES(1270,82,'Ashanti Region','AS',1);
INSERT INTO oc_zone VALUES(1271,82,'Brong-Ahafo Region','BA',1);
INSERT INTO oc_zone VALUES(1272,82,'Central Region','CE',1);
INSERT INTO oc_zone VALUES(1273,82,'Eastern Region','EA',1);
INSERT INTO oc_zone VALUES(1274,82,'Greater Accra Region','GA',1);
INSERT INTO oc_zone VALUES(1275,82,'Northern Region','NO',1);
INSERT INTO oc_zone VALUES(1276,82,'Upper East Region','UE',1);
INSERT INTO oc_zone VALUES(1277,82,'Upper West Region','UW',1);
INSERT INTO oc_zone VALUES(1278,82,'Volta Region','VO',1);
INSERT INTO oc_zone VALUES(1279,82,'Western Region','WE',1);
INSERT INTO oc_zone VALUES(1280,84,'Attica','AT',1);
INSERT INTO oc_zone VALUES(1281,84,'Central Greece','CN',1);
INSERT INTO oc_zone VALUES(1282,84,'Central Macedonia','CM',1);
INSERT INTO oc_zone VALUES(1283,84,'Crete','CR',1);
INSERT INTO oc_zone VALUES(1284,84,'East Macedonia and Thrace','EM',1);
INSERT INTO oc_zone VALUES(1285,84,'Epirus','EP',1);
INSERT INTO oc_zone VALUES(1286,84,'Ionian Islands','II',1);
INSERT INTO oc_zone VALUES(1287,84,'North Aegean','NA',1);
INSERT INTO oc_zone VALUES(1288,84,'Peloponnesos','PP',1);
INSERT INTO oc_zone VALUES(1289,84,'South Aegean','SA',1);
INSERT INTO oc_zone VALUES(1290,84,'Thessaly','TH',1);
INSERT INTO oc_zone VALUES(1291,84,'West Greece','WG',1);
INSERT INTO oc_zone VALUES(1292,84,'West Macedonia','WM',1);
INSERT INTO oc_zone VALUES(1293,85,'Avannaa','A',1);
INSERT INTO oc_zone VALUES(1294,85,'Tunu','T',1);
INSERT INTO oc_zone VALUES(1295,85,'Kitaa','K',1);
INSERT INTO oc_zone VALUES(1296,86,'Saint Andrew','A',1);
INSERT INTO oc_zone VALUES(1297,86,'Saint David','D',1);
INSERT INTO oc_zone VALUES(1298,86,'Saint George','G',1);
INSERT INTO oc_zone VALUES(1299,86,'Saint John','J',1);
INSERT INTO oc_zone VALUES(1300,86,'Saint Mark','M',1);
INSERT INTO oc_zone VALUES(1301,86,'Saint Patrick','P',1);
INSERT INTO oc_zone VALUES(1302,86,'Carriacou','C',1);
INSERT INTO oc_zone VALUES(1303,86,'Petit Martinique','Q',1);
INSERT INTO oc_zone VALUES(1304,89,'Alta Verapaz','AV',1);
INSERT INTO oc_zone VALUES(1305,89,'Baja Verapaz','BV',1);
INSERT INTO oc_zone VALUES(1306,89,'Chimaltenango','CM',1);
INSERT INTO oc_zone VALUES(1307,89,'Chiquimula','CQ',1);
INSERT INTO oc_zone VALUES(1308,89,'El Peten','PE',1);
INSERT INTO oc_zone VALUES(1309,89,'El Progreso','PR',1);
INSERT INTO oc_zone VALUES(1310,89,'El Quiche','QC',1);
INSERT INTO oc_zone VALUES(1311,89,'Escuintla','ES',1);
INSERT INTO oc_zone VALUES(1312,89,'Guatemala','GU',1);
INSERT INTO oc_zone VALUES(1313,89,'Huehuetenango','HU',1);
INSERT INTO oc_zone VALUES(1314,89,'Izabal','IZ',1);
INSERT INTO oc_zone VALUES(1315,89,'Jalapa','JA',1);
INSERT INTO oc_zone VALUES(1316,89,'Jutiapa','JU',1);
INSERT INTO oc_zone VALUES(1317,89,'Quetzaltenango','QZ',1);
INSERT INTO oc_zone VALUES(1318,89,'Retalhuleu','RE',1);
INSERT INTO oc_zone VALUES(1319,89,'Sacatepequez','ST',1);
INSERT INTO oc_zone VALUES(1320,89,'San Marcos','SM',1);
INSERT INTO oc_zone VALUES(1321,89,'Santa Rosa','SR',1);
INSERT INTO oc_zone VALUES(1322,89,'Solola','SO',1);
INSERT INTO oc_zone VALUES(1323,89,'Suchitepequez','SU',1);
INSERT INTO oc_zone VALUES(1324,89,'Totonicapan','TO',1);
INSERT INTO oc_zone VALUES(1325,89,'Zacapa','ZA',1);
INSERT INTO oc_zone VALUES(1326,90,'Conakry','CNK',1);
INSERT INTO oc_zone VALUES(1327,90,'Beyla','BYL',1);
INSERT INTO oc_zone VALUES(1328,90,'Boffa','BFA',1);
INSERT INTO oc_zone VALUES(1329,90,'Boke','BOK',1);
INSERT INTO oc_zone VALUES(1330,90,'Coyah','COY',1);
INSERT INTO oc_zone VALUES(1331,90,'Dabola','DBL',1);
INSERT INTO oc_zone VALUES(1332,90,'Dalaba','DLB',1);
INSERT INTO oc_zone VALUES(1333,90,'Dinguiraye','DGR',1);
INSERT INTO oc_zone VALUES(1334,90,'Dubreka','DBR',1);
INSERT INTO oc_zone VALUES(1335,90,'Faranah','FRN',1);
INSERT INTO oc_zone VALUES(1336,90,'Forecariah','FRC',1);
INSERT INTO oc_zone VALUES(1337,90,'Fria','FRI',1);
INSERT INTO oc_zone VALUES(1338,90,'Gaoual','GAO',1);
INSERT INTO oc_zone VALUES(1339,90,'Gueckedou','GCD',1);
INSERT INTO oc_zone VALUES(1340,90,'Kankan','KNK',1);
INSERT INTO oc_zone VALUES(1341,90,'Kerouane','KRN',1);
INSERT INTO oc_zone VALUES(1342,90,'Kindia','KND',1);
INSERT INTO oc_zone VALUES(1343,90,'Kissidougou','KSD',1);
INSERT INTO oc_zone VALUES(1344,90,'Koubia','KBA',1);
INSERT INTO oc_zone VALUES(1345,90,'Koundara','KDA',1);
INSERT INTO oc_zone VALUES(1346,90,'Kouroussa','KRA',1);
INSERT INTO oc_zone VALUES(1347,90,'Labe','LAB',1);
INSERT INTO oc_zone VALUES(1348,90,'Lelouma','LLM',1);
INSERT INTO oc_zone VALUES(1349,90,'Lola','LOL',1);
INSERT INTO oc_zone VALUES(1350,90,'Macenta','MCT',1);
INSERT INTO oc_zone VALUES(1351,90,'Mali','MAL',1);
INSERT INTO oc_zone VALUES(1352,90,'Mamou','MAM',1);
INSERT INTO oc_zone VALUES(1353,90,'Mandiana','MAN',1);
INSERT INTO oc_zone VALUES(1354,90,'Nzerekore','NZR',1);
INSERT INTO oc_zone VALUES(1355,90,'Pita','PIT',1);
INSERT INTO oc_zone VALUES(1356,90,'Siguiri','SIG',1);
INSERT INTO oc_zone VALUES(1357,90,'Telimele','TLM',1);
INSERT INTO oc_zone VALUES(1358,90,'Tougue','TOG',1);
INSERT INTO oc_zone VALUES(1359,90,'Yomou','YOM',1);
INSERT INTO oc_zone VALUES(1360,91,'Bafata Region','BF',1);
INSERT INTO oc_zone VALUES(1361,91,'Biombo Region','BB',1);
INSERT INTO oc_zone VALUES(1362,91,'Bissau Region','BS',1);
INSERT INTO oc_zone VALUES(1363,91,'Bolama Region','BL',1);
INSERT INTO oc_zone VALUES(1364,91,'Cacheu Region','CA',1);
INSERT INTO oc_zone VALUES(1365,91,'Gabu Region','GA',1);
INSERT INTO oc_zone VALUES(1366,91,'Oio Region','OI',1);
INSERT INTO oc_zone VALUES(1367,91,'Quinara Region','QU',1);
INSERT INTO oc_zone VALUES(1368,91,'Tombali Region','TO',1);
INSERT INTO oc_zone VALUES(1369,92,'Barima-Waini','BW',1);
INSERT INTO oc_zone VALUES(1370,92,'Cuyuni-Mazaruni','CM',1);
INSERT INTO oc_zone VALUES(1371,92,'Demerara-Mahaica','DM',1);
INSERT INTO oc_zone VALUES(1372,92,'East Berbice-Corentyne','EC',1);
INSERT INTO oc_zone VALUES(1373,92,'Essequibo Islands-West Demerara','EW',1);
INSERT INTO oc_zone VALUES(1374,92,'Mahaica-Berbice','MB',1);
INSERT INTO oc_zone VALUES(1375,92,'Pomeroon-Supenaam','PM',1);
INSERT INTO oc_zone VALUES(1376,92,'Potaro-Siparuni','PI',1);
INSERT INTO oc_zone VALUES(1377,92,'Upper Demerara-Berbice','UD',1);
INSERT INTO oc_zone VALUES(1378,92,'Upper Takutu-Upper Essequibo','UT',1);
INSERT INTO oc_zone VALUES(1379,93,'Artibonite','AR',1);
INSERT INTO oc_zone VALUES(1380,93,'Centre','CE',1);
INSERT INTO oc_zone VALUES(1381,93,'Grand\'Anse','GA',1);
INSERT INTO oc_zone VALUES(1382,93,'Nord','ND',1);
INSERT INTO oc_zone VALUES(1383,93,'Nord-Est','NE',1);
INSERT INTO oc_zone VALUES(1384,93,'Nord-Ouest','NO',1);
INSERT INTO oc_zone VALUES(1385,93,'Ouest','OU',1);
INSERT INTO oc_zone VALUES(1386,93,'Sud','SD',1);
INSERT INTO oc_zone VALUES(1387,93,'Sud-Est','SE',1);
INSERT INTO oc_zone VALUES(1388,94,'Flat Island','F',1);
INSERT INTO oc_zone VALUES(1389,94,'McDonald Island','M',1);
INSERT INTO oc_zone VALUES(1390,94,'Shag Island','S',1);
INSERT INTO oc_zone VALUES(1391,94,'Heard Island','H',1);
INSERT INTO oc_zone VALUES(1392,95,'Atlantida','AT',1);
INSERT INTO oc_zone VALUES(1393,95,'Choluteca','CH',1);
INSERT INTO oc_zone VALUES(1394,95,'Colon','CL',1);
INSERT INTO oc_zone VALUES(1395,95,'Comayagua','CM',1);
INSERT INTO oc_zone VALUES(1396,95,'Copan','CP',1);
INSERT INTO oc_zone VALUES(1397,95,'Cortes','CR',1);
INSERT INTO oc_zone VALUES(1398,95,'El Paraiso','PA',1);
INSERT INTO oc_zone VALUES(1399,95,'Francisco Morazan','FM',1);
INSERT INTO oc_zone VALUES(1400,95,'Gracias a Dios','GD',1);
INSERT INTO oc_zone VALUES(1401,95,'Intibuca','IN',1);
INSERT INTO oc_zone VALUES(1402,95,'Islas de la Bahia (Bay Islands)','IB',1);
INSERT INTO oc_zone VALUES(1403,95,'La Paz','PZ',1);
INSERT INTO oc_zone VALUES(1404,95,'Lempira','LE',1);
INSERT INTO oc_zone VALUES(1405,95,'Ocotepeque','OC',1);
INSERT INTO oc_zone VALUES(1406,95,'Olancho','OL',1);
INSERT INTO oc_zone VALUES(1407,95,'Santa Barbara','SB',1);
INSERT INTO oc_zone VALUES(1408,95,'Valle','VA',1);
INSERT INTO oc_zone VALUES(1409,95,'Yoro','YO',1);
INSERT INTO oc_zone VALUES(1410,96,'Central and Western Hong Kong Island','HCW',1);
INSERT INTO oc_zone VALUES(1411,96,'Eastern Hong Kong Island','HEA',1);
INSERT INTO oc_zone VALUES(1412,96,'Southern Hong Kong Island','HSO',1);
INSERT INTO oc_zone VALUES(1413,96,'Wan Chai Hong Kong Island','HWC',1);
INSERT INTO oc_zone VALUES(1414,96,'Kowloon City Kowloon','KKC',1);
INSERT INTO oc_zone VALUES(1415,96,'Kwun Tong Kowloon','KKT',1);
INSERT INTO oc_zone VALUES(1416,96,'Sham Shui Po Kowloon','KSS',1);
INSERT INTO oc_zone VALUES(1417,96,'Wong Tai Sin Kowloon','KWT',1);
INSERT INTO oc_zone VALUES(1418,96,'Yau Tsim Mong Kowloon','KYT',1);
INSERT INTO oc_zone VALUES(1419,96,'Islands New Territories','NIS',1);
INSERT INTO oc_zone VALUES(1420,96,'Kwai Tsing New Territories','NKT',1);
INSERT INTO oc_zone VALUES(1421,96,'North New Territories','NNO',1);
INSERT INTO oc_zone VALUES(1422,96,'Sai Kung New Territories','NSK',1);
INSERT INTO oc_zone VALUES(1423,96,'Sha Tin New Territories','NST',1);
INSERT INTO oc_zone VALUES(1424,96,'Tai Po New Territories','NTP',1);
INSERT INTO oc_zone VALUES(1425,96,'Tsuen Wan New Territories','NTW',1);
INSERT INTO oc_zone VALUES(1426,96,'Tuen Mun New Territories','NTM',1);
INSERT INTO oc_zone VALUES(1427,96,'Yuen Long New Territories','NYL',1);
INSERT INTO oc_zone VALUES(1467,98,'Austurland','AL',1);
INSERT INTO oc_zone VALUES(1468,98,'Hofuoborgarsvaeoi','HF',1);
INSERT INTO oc_zone VALUES(1469,98,'Norourland eystra','NE',1);
INSERT INTO oc_zone VALUES(1470,98,'Norourland vestra','NV',1);
INSERT INTO oc_zone VALUES(1471,98,'Suourland','SL',1);
INSERT INTO oc_zone VALUES(1472,98,'Suournes','SN',1);
INSERT INTO oc_zone VALUES(1473,98,'Vestfiroir','VF',1);
INSERT INTO oc_zone VALUES(1474,98,'Vesturland','VL',1);
INSERT INTO oc_zone VALUES(1475,99,'Andaman and Nicobar Islands','AN',1);
INSERT INTO oc_zone VALUES(1476,99,'Andhra Pradesh','AP',1);
INSERT INTO oc_zone VALUES(1477,99,'Arunachal Pradesh','AR',1);
INSERT INTO oc_zone VALUES(1478,99,'Assam','AS',1);
INSERT INTO oc_zone VALUES(1479,99,'Bihar','BI',1);
INSERT INTO oc_zone VALUES(1480,99,'Chandigarh','CH',1);
INSERT INTO oc_zone VALUES(1481,99,'Dadra and Nagar Haveli','DA',1);
INSERT INTO oc_zone VALUES(1482,99,'Daman and Diu','DM',1);
INSERT INTO oc_zone VALUES(1483,99,'Delhi','DE',1);
INSERT INTO oc_zone VALUES(1484,99,'Goa','GO',1);
INSERT INTO oc_zone VALUES(1485,99,'Gujarat','GU',1);
INSERT INTO oc_zone VALUES(1486,99,'Haryana','HA',1);
INSERT INTO oc_zone VALUES(1487,99,'Himachal Pradesh','HP',1);
INSERT INTO oc_zone VALUES(1488,99,'Jammu and Kashmir','JA',1);
INSERT INTO oc_zone VALUES(1489,99,'Karnataka','KA',1);
INSERT INTO oc_zone VALUES(1490,99,'Kerala','KE',1);
INSERT INTO oc_zone VALUES(1491,99,'Lakshadweep Islands','LI',1);
INSERT INTO oc_zone VALUES(1492,99,'Madhya Pradesh','MP',1);
INSERT INTO oc_zone VALUES(1493,99,'Maharashtra','MA',1);
INSERT INTO oc_zone VALUES(1494,99,'Manipur','MN',1);
INSERT INTO oc_zone VALUES(1495,99,'Meghalaya','ME',1);
INSERT INTO oc_zone VALUES(1496,99,'Mizoram','MI',1);
INSERT INTO oc_zone VALUES(1497,99,'Nagaland','NA',1);
INSERT INTO oc_zone VALUES(1498,99,'Orissa','OR',1);
INSERT INTO oc_zone VALUES(1499,99,'Puducherry','PO',1);
INSERT INTO oc_zone VALUES(1500,99,'Punjab','PU',1);
INSERT INTO oc_zone VALUES(1501,99,'Rajasthan','RA',1);
INSERT INTO oc_zone VALUES(1502,99,'Sikkim','SI',1);
INSERT INTO oc_zone VALUES(1503,99,'Tamil Nadu','TN',1);
INSERT INTO oc_zone VALUES(1504,99,'Tripura','TR',1);
INSERT INTO oc_zone VALUES(1505,99,'Uttar Pradesh','UP',1);
INSERT INTO oc_zone VALUES(1506,99,'West Bengal','WB',1);
INSERT INTO oc_zone VALUES(1507,100,'Aceh','AC',1);
INSERT INTO oc_zone VALUES(1508,100,'Bali','BA',1);
INSERT INTO oc_zone VALUES(1509,100,'Banten','BT',1);
INSERT INTO oc_zone VALUES(1510,100,'Bengkulu','BE',1);
INSERT INTO oc_zone VALUES(1511,100,'Kalimantan Utara','BD',1);
INSERT INTO oc_zone VALUES(1512,100,'Gorontalo','GO',1);
INSERT INTO oc_zone VALUES(1513,100,'Jakarta','JK',1);
INSERT INTO oc_zone VALUES(1514,100,'Jambi','JA',1);
INSERT INTO oc_zone VALUES(1515,100,'Jawa Barat','JB',1);
INSERT INTO oc_zone VALUES(1516,100,'Jawa Tengah','JT',1);
INSERT INTO oc_zone VALUES(1517,100,'Jawa Timur','JI',1);
INSERT INTO oc_zone VALUES(1518,100,'Kalimantan Barat','KB',1);
INSERT INTO oc_zone VALUES(1519,100,'Kalimantan Selatan','KS',1);
INSERT INTO oc_zone VALUES(1520,100,'Kalimantan Tengah','KT',1);
INSERT INTO oc_zone VALUES(1521,100,'Kalimantan Timur','KI',1);
INSERT INTO oc_zone VALUES(1522,100,'Kepulauan Bangka Belitung','BB',1);
INSERT INTO oc_zone VALUES(1523,100,'Lampung','LA',1);
INSERT INTO oc_zone VALUES(1524,100,'Maluku','MA',1);
INSERT INTO oc_zone VALUES(1525,100,'Maluku Utara','MU',1);
INSERT INTO oc_zone VALUES(1526,100,'Nusa Tenggara Barat','NB',1);
INSERT INTO oc_zone VALUES(1527,100,'Nusa Tenggara Timur','NT',1);
INSERT INTO oc_zone VALUES(1528,100,'Papua','PA',1);
INSERT INTO oc_zone VALUES(1529,100,'Riau','RI',1);
INSERT INTO oc_zone VALUES(1530,100,'Sulawesi Selatan','SN',1);
INSERT INTO oc_zone VALUES(1531,100,'Sulawesi Tengah','ST',1);
INSERT INTO oc_zone VALUES(1532,100,'Sulawesi Tenggara','SG',1);
INSERT INTO oc_zone VALUES(1533,100,'Sulawesi Utara','SA',1);
INSERT INTO oc_zone VALUES(1534,100,'Sumatera Barat','SB',1);
INSERT INTO oc_zone VALUES(1535,100,'Sumatera Selatan','SS',1);
INSERT INTO oc_zone VALUES(1536,100,'Sumatera Utara','SU',1);
INSERT INTO oc_zone VALUES(1537,100,'Yogyakarta','YO',1);
INSERT INTO oc_zone VALUES(1538,101,'Tehran','TEH',1);
INSERT INTO oc_zone VALUES(1539,101,'Qom','QOM',1);
INSERT INTO oc_zone VALUES(1540,101,'Markazi','MKZ',1);
INSERT INTO oc_zone VALUES(1541,101,'Qazvin','QAZ',1);
INSERT INTO oc_zone VALUES(1542,101,'Gilan','GIL',1);
INSERT INTO oc_zone VALUES(1543,101,'Ardabil','ARD',1);
INSERT INTO oc_zone VALUES(1544,101,'Zanjan','ZAN',1);
INSERT INTO oc_zone VALUES(1545,101,'East Azarbaijan','EAZ',1);
INSERT INTO oc_zone VALUES(1546,101,'West Azarbaijan','WEZ',1);
INSERT INTO oc_zone VALUES(1547,101,'Kurdistan','KRD',1);
INSERT INTO oc_zone VALUES(1548,101,'Hamadan','HMD',1);
INSERT INTO oc_zone VALUES(1549,101,'Kermanshah','KRM',1);
INSERT INTO oc_zone VALUES(1550,101,'Ilam','ILM',1);
INSERT INTO oc_zone VALUES(1551,101,'Lorestan','LRS',1);
INSERT INTO oc_zone VALUES(1552,101,'Khuzestan','KZT',1);
INSERT INTO oc_zone VALUES(1553,101,'Chahar Mahaal and Bakhtiari','CMB',1);
INSERT INTO oc_zone VALUES(1554,101,'Kohkiluyeh and Buyer Ahmad','KBA',1);
INSERT INTO oc_zone VALUES(1555,101,'Bushehr','BSH',1);
INSERT INTO oc_zone VALUES(1556,101,'Fars','FAR',1);
INSERT INTO oc_zone VALUES(1557,101,'Hormozgan','HRM',1);
INSERT INTO oc_zone VALUES(1558,101,'Sistan and Baluchistan','SBL',1);
INSERT INTO oc_zone VALUES(1559,101,'Kerman','KRB',1);
INSERT INTO oc_zone VALUES(1560,101,'Yazd','YZD',1);
INSERT INTO oc_zone VALUES(1561,101,'Esfahan','EFH',1);
INSERT INTO oc_zone VALUES(1562,101,'Semnan','SMN',1);
INSERT INTO oc_zone VALUES(1563,101,'Mazandaran','MZD',1);
INSERT INTO oc_zone VALUES(1564,101,'Golestan','GLS',1);
INSERT INTO oc_zone VALUES(1565,101,'North Khorasan','NKH',1);
INSERT INTO oc_zone VALUES(1566,101,'Razavi Khorasan','RKH',1);
INSERT INTO oc_zone VALUES(1567,101,'South Khorasan','SKH',1);
INSERT INTO oc_zone VALUES(1568,102,'Baghdad','BD',1);
INSERT INTO oc_zone VALUES(1569,102,'Salah ad Din','SD',1);
INSERT INTO oc_zone VALUES(1570,102,'Diyala','DY',1);
INSERT INTO oc_zone VALUES(1571,102,'Wasit','WS',1);
INSERT INTO oc_zone VALUES(1572,102,'Maysan','MY',1);
INSERT INTO oc_zone VALUES(1573,102,'Al Basrah','BA',1);
INSERT INTO oc_zone VALUES(1574,102,'Dhi Qar','DQ',1);
INSERT INTO oc_zone VALUES(1575,102,'Al Muthanna','MU',1);
INSERT INTO oc_zone VALUES(1576,102,'Al Qadisyah','QA',1);
INSERT INTO oc_zone VALUES(1577,102,'Babil','BB',1);
INSERT INTO oc_zone VALUES(1578,102,'Al Karbala','KB',1);
INSERT INTO oc_zone VALUES(1579,102,'An Najaf','NJ',1);
INSERT INTO oc_zone VALUES(1580,102,'Al Anbar','AB',1);
INSERT INTO oc_zone VALUES(1581,102,'Ninawa','NN',1);
INSERT INTO oc_zone VALUES(1582,102,'Dahuk','DH',1);
INSERT INTO oc_zone VALUES(1583,102,'Arbil','AL',1);
INSERT INTO oc_zone VALUES(1584,102,'At Ta\'mim','TM',1);
INSERT INTO oc_zone VALUES(1585,102,'As Sulaymaniyah','SL',1);
INSERT INTO oc_zone VALUES(1586,103,'Carlow','CA',1);
INSERT INTO oc_zone VALUES(1587,103,'Cavan','CV',1);
INSERT INTO oc_zone VALUES(1588,103,'Clare','CL',1);
INSERT INTO oc_zone VALUES(1589,103,'Cork','CO',1);
INSERT INTO oc_zone VALUES(1590,103,'Donegal','DO',1);
INSERT INTO oc_zone VALUES(1591,103,'Dublin','DU',1);
INSERT INTO oc_zone VALUES(1592,103,'Galway','GA',1);
INSERT INTO oc_zone VALUES(1593,103,'Kerry','KE',1);
INSERT INTO oc_zone VALUES(1594,103,'Kildare','KI',1);
INSERT INTO oc_zone VALUES(1595,103,'Kilkenny','KL',1);
INSERT INTO oc_zone VALUES(1596,103,'Laois','LA',1);
INSERT INTO oc_zone VALUES(1597,103,'Leitrim','LE',1);
INSERT INTO oc_zone VALUES(1598,103,'Limerick','LI',1);
INSERT INTO oc_zone VALUES(1599,103,'Longford','LO',1);
INSERT INTO oc_zone VALUES(1600,103,'Louth','LU',1);
INSERT INTO oc_zone VALUES(1601,103,'Mayo','MA',1);
INSERT INTO oc_zone VALUES(1602,103,'Meath','ME',1);
INSERT INTO oc_zone VALUES(1603,103,'Monaghan','MO',1);
INSERT INTO oc_zone VALUES(1604,103,'Offaly','OF',1);
INSERT INTO oc_zone VALUES(1605,103,'Roscommon','RO',1);
INSERT INTO oc_zone VALUES(1606,103,'Sligo','SL',1);
INSERT INTO oc_zone VALUES(1607,103,'Tipperary','TI',1);
INSERT INTO oc_zone VALUES(1608,103,'Waterford','WA',1);
INSERT INTO oc_zone VALUES(1609,103,'Westmeath','WE',1);
INSERT INTO oc_zone VALUES(1610,103,'Wexford','WX',1);
INSERT INTO oc_zone VALUES(1611,103,'Wicklow','WI',1);
INSERT INTO oc_zone VALUES(1612,104,'Be\'er Sheva','BS',1);
INSERT INTO oc_zone VALUES(1613,104,'Bika\'at Hayarden','BH',1);
INSERT INTO oc_zone VALUES(1614,104,'Eilat and Arava','EA',1);
INSERT INTO oc_zone VALUES(1615,104,'Galil','GA',1);
INSERT INTO oc_zone VALUES(1616,104,'Haifa','HA',1);
INSERT INTO oc_zone VALUES(1617,104,'Jehuda Mountains','JM',1);
INSERT INTO oc_zone VALUES(1618,104,'Jerusalem','JE',1);
INSERT INTO oc_zone VALUES(1619,104,'Negev','NE',1);
INSERT INTO oc_zone VALUES(1620,104,'Semaria','SE',1);
INSERT INTO oc_zone VALUES(1621,104,'Sharon','SH',1);
INSERT INTO oc_zone VALUES(1622,104,'Tel Aviv (Gosh Dan)','TA',1);
INSERT INTO oc_zone VALUES(3860,105,'Caltanissetta','CL',1);
INSERT INTO oc_zone VALUES(3842,105,'Agrigento','AG',1);
INSERT INTO oc_zone VALUES(3843,105,'Alessandria','AL',1);
INSERT INTO oc_zone VALUES(3844,105,'Ancona','AN',1);
INSERT INTO oc_zone VALUES(3845,105,'Aosta','AO',1);
INSERT INTO oc_zone VALUES(3846,105,'Arezzo','AR',1);
INSERT INTO oc_zone VALUES(3847,105,'Ascoli Piceno','AP',1);
INSERT INTO oc_zone VALUES(3848,105,'Asti','AT',1);
INSERT INTO oc_zone VALUES(3849,105,'Avellino','AV',1);
INSERT INTO oc_zone VALUES(3850,105,'Bari','BA',1);
INSERT INTO oc_zone VALUES(3851,105,'Belluno','BL',1);
INSERT INTO oc_zone VALUES(3852,105,'Benevento','BN',1);
INSERT INTO oc_zone VALUES(3853,105,'Bergamo','BG',1);
INSERT INTO oc_zone VALUES(3854,105,'Biella','BI',1);
INSERT INTO oc_zone VALUES(3855,105,'Bologna','BO',1);
INSERT INTO oc_zone VALUES(3856,105,'Bolzano','BZ',1);
INSERT INTO oc_zone VALUES(3857,105,'Brescia','BS',1);
INSERT INTO oc_zone VALUES(3858,105,'Brindisi','BR',1);
INSERT INTO oc_zone VALUES(3859,105,'Cagliari','CA',1);
INSERT INTO oc_zone VALUES(1643,106,'Clarendon Parish','CLA',1);
INSERT INTO oc_zone VALUES(1644,106,'Hanover Parish','HAN',1);
INSERT INTO oc_zone VALUES(1645,106,'Kingston Parish','KIN',1);
INSERT INTO oc_zone VALUES(1646,106,'Manchester Parish','MAN',1);
INSERT INTO oc_zone VALUES(1647,106,'Portland Parish','POR',1);
INSERT INTO oc_zone VALUES(1648,106,'Saint Andrew Parish','AND',1);
INSERT INTO oc_zone VALUES(1649,106,'Saint Ann Parish','ANN',1);
INSERT INTO oc_zone VALUES(1650,106,'Saint Catherine Parish','CAT',1);
INSERT INTO oc_zone VALUES(1651,106,'Saint Elizabeth Parish','ELI',1);
INSERT INTO oc_zone VALUES(1652,106,'Saint James Parish','JAM',1);
INSERT INTO oc_zone VALUES(1653,106,'Saint Mary Parish','MAR',1);
INSERT INTO oc_zone VALUES(1654,106,'Saint Thomas Parish','THO',1);
INSERT INTO oc_zone VALUES(1655,106,'Trelawny Parish','TRL',1);
INSERT INTO oc_zone VALUES(1656,106,'Westmoreland Parish','WML',1);
INSERT INTO oc_zone VALUES(1657,107,'Aichi','AI',1);
INSERT INTO oc_zone VALUES(1658,107,'Akita','AK',1);
INSERT INTO oc_zone VALUES(1659,107,'Aomori','AO',1);
INSERT INTO oc_zone VALUES(1660,107,'Chiba','CH',1);
INSERT INTO oc_zone VALUES(1661,107,'Ehime','EH',1);
INSERT INTO oc_zone VALUES(1662,107,'Fukui','FK',1);
INSERT INTO oc_zone VALUES(1663,107,'Fukuoka','FU',1);
INSERT INTO oc_zone VALUES(1664,107,'Fukushima','FS',1);
INSERT INTO oc_zone VALUES(1665,107,'Gifu','GI',1);
INSERT INTO oc_zone VALUES(1666,107,'Gumma','GU',1);
INSERT INTO oc_zone VALUES(1667,107,'Hiroshima','HI',1);
INSERT INTO oc_zone VALUES(1668,107,'Hokkaido','HO',1);
INSERT INTO oc_zone VALUES(1669,107,'Hyogo','HY',1);
INSERT INTO oc_zone VALUES(1670,107,'Ibaraki','IB',1);
INSERT INTO oc_zone VALUES(1671,107,'Ishikawa','IS',1);
INSERT INTO oc_zone VALUES(1672,107,'Iwate','IW',1);
INSERT INTO oc_zone VALUES(1673,107,'Kagawa','KA',1);
INSERT INTO oc_zone VALUES(1674,107,'Kagoshima','KG',1);
INSERT INTO oc_zone VALUES(1675,107,'Kanagawa','KN',1);
INSERT INTO oc_zone VALUES(1676,107,'Kochi','KO',1);
INSERT INTO oc_zone VALUES(1677,107,'Kumamoto','KU',1);
INSERT INTO oc_zone VALUES(1678,107,'Kyoto','KY',1);
INSERT INTO oc_zone VALUES(1679,107,'Mie','MI',1);
INSERT INTO oc_zone VALUES(1680,107,'Miyagi','MY',1);
INSERT INTO oc_zone VALUES(1681,107,'Miyazaki','MZ',1);
INSERT INTO oc_zone VALUES(1682,107,'Nagano','NA',1);
INSERT INTO oc_zone VALUES(1683,107,'Nagasaki','NG',1);
INSERT INTO oc_zone VALUES(1684,107,'Nara','NR',1);
INSERT INTO oc_zone VALUES(1685,107,'Niigata','NI',1);
INSERT INTO oc_zone VALUES(1686,107,'Oita','OI',1);
INSERT INTO oc_zone VALUES(1687,107,'Okayama','OK',1);
INSERT INTO oc_zone VALUES(1688,107,'Okinawa','ON',1);
INSERT INTO oc_zone VALUES(1689,107,'Osaka','OS',1);
INSERT INTO oc_zone VALUES(1690,107,'Saga','SA',1);
INSERT INTO oc_zone VALUES(1691,107,'Saitama','SI',1);
INSERT INTO oc_zone VALUES(1692,107,'Shiga','SH',1);
INSERT INTO oc_zone VALUES(1693,107,'Shimane','SM',1);
INSERT INTO oc_zone VALUES(1694,107,'Shizuoka','SZ',1);
INSERT INTO oc_zone VALUES(1695,107,'Tochigi','TO',1);
INSERT INTO oc_zone VALUES(1696,107,'Tokushima','TS',1);
INSERT INTO oc_zone VALUES(1697,107,'Tokyo','TK',1);
INSERT INTO oc_zone VALUES(1698,107,'Tottori','TT',1);
INSERT INTO oc_zone VALUES(1699,107,'Toyama','TY',1);
INSERT INTO oc_zone VALUES(1700,107,'Wakayama','WA',1);
INSERT INTO oc_zone VALUES(1701,107,'Yamagata','YA',1);
INSERT INTO oc_zone VALUES(1702,107,'Yamaguchi','YM',1);
INSERT INTO oc_zone VALUES(1703,107,'Yamanashi','YN',1);
INSERT INTO oc_zone VALUES(1704,108,'\'Amman','AM',1);
INSERT INTO oc_zone VALUES(1705,108,'Ajlun','AJ',1);
INSERT INTO oc_zone VALUES(1706,108,'Al \'Aqabah','AA',1);
INSERT INTO oc_zone VALUES(1707,108,'Al Balqa\'','AB',1);
INSERT INTO oc_zone VALUES(1708,108,'Al Karak','AK',1);
INSERT INTO oc_zone VALUES(1709,108,'Al Mafraq','AL',1);
INSERT INTO oc_zone VALUES(1710,108,'At Tafilah','AT',1);
INSERT INTO oc_zone VALUES(1711,108,'Az Zarqa\'','AZ',1);
INSERT INTO oc_zone VALUES(1712,108,'Irbid','IR',1);
INSERT INTO oc_zone VALUES(1713,108,'Jarash','JA',1);
INSERT INTO oc_zone VALUES(1714,108,'Ma\'an','MA',1);
INSERT INTO oc_zone VALUES(1715,108,'Madaba','MD',1);
INSERT INTO oc_zone VALUES(1716,109,'Almaty','AL',1);
INSERT INTO oc_zone VALUES(1717,109,'Almaty City','AC',1);
INSERT INTO oc_zone VALUES(1718,109,'Aqmola','AM',1);
INSERT INTO oc_zone VALUES(1719,109,'Aqtobe','AQ',1);
INSERT INTO oc_zone VALUES(1720,109,'Astana City','AS',1);
INSERT INTO oc_zone VALUES(1721,109,'Atyrau','AT',1);
INSERT INTO oc_zone VALUES(1722,109,'Batys Qazaqstan','BA',1);
INSERT INTO oc_zone VALUES(1723,109,'Bayqongyr City','BY',1);
INSERT INTO oc_zone VALUES(1724,109,'Mangghystau','MA',1);
INSERT INTO oc_zone VALUES(1725,109,'Ongtustik Qazaqstan','ON',1);
INSERT INTO oc_zone VALUES(1726,109,'Pavlodar','PA',1);
INSERT INTO oc_zone VALUES(1727,109,'Qaraghandy','QA',1);
INSERT INTO oc_zone VALUES(1728,109,'Qostanay','QO',1);
INSERT INTO oc_zone VALUES(1729,109,'Qyzylorda','QY',1);
INSERT INTO oc_zone VALUES(1730,109,'Shyghys Qazaqstan','SH',1);
INSERT INTO oc_zone VALUES(1731,109,'Soltustik Qazaqstan','SO',1);
INSERT INTO oc_zone VALUES(1732,109,'Zhambyl','ZH',1);
INSERT INTO oc_zone VALUES(1733,110,'Central','CE',1);
INSERT INTO oc_zone VALUES(1734,110,'Coast','CO',1);
INSERT INTO oc_zone VALUES(1735,110,'Eastern','EA',1);
INSERT INTO oc_zone VALUES(1736,110,'Nairobi Area','NA',1);
INSERT INTO oc_zone VALUES(1737,110,'North Eastern','NE',1);
INSERT INTO oc_zone VALUES(1738,110,'Nyanza','NY',1);
INSERT INTO oc_zone VALUES(1739,110,'Rift Valley','RV',1);
INSERT INTO oc_zone VALUES(1740,110,'Western','WE',1);
INSERT INTO oc_zone VALUES(1741,111,'Abaiang','AG',1);
INSERT INTO oc_zone VALUES(1742,111,'Abemama','AM',1);
INSERT INTO oc_zone VALUES(1743,111,'Aranuka','AK',1);
INSERT INTO oc_zone VALUES(1744,111,'Arorae','AO',1);
INSERT INTO oc_zone VALUES(1745,111,'Banaba','BA',1);
INSERT INTO oc_zone VALUES(1746,111,'Beru','BE',1);
INSERT INTO oc_zone VALUES(1747,111,'Butaritari','bT',1);
INSERT INTO oc_zone VALUES(1748,111,'Kanton','KA',1);
INSERT INTO oc_zone VALUES(1749,111,'Kiritimati','KR',1);
INSERT INTO oc_zone VALUES(1750,111,'Kuria','KU',1);
INSERT INTO oc_zone VALUES(1751,111,'Maiana','MI',1);
INSERT INTO oc_zone VALUES(1752,111,'Makin','MN',1);
INSERT INTO oc_zone VALUES(1753,111,'Marakei','ME',1);
INSERT INTO oc_zone VALUES(1754,111,'Nikunau','NI',1);
INSERT INTO oc_zone VALUES(1755,111,'Nonouti','NO',1);
INSERT INTO oc_zone VALUES(1756,111,'Onotoa','ON',1);
INSERT INTO oc_zone VALUES(1757,111,'Tabiteuea','TT',1);
INSERT INTO oc_zone VALUES(1758,111,'Tabuaeran','TR',1);
INSERT INTO oc_zone VALUES(1759,111,'Tamana','TM',1);
INSERT INTO oc_zone VALUES(1760,111,'Tarawa','TW',1);
INSERT INTO oc_zone VALUES(1761,111,'Teraina','TE',1);
INSERT INTO oc_zone VALUES(1762,112,'Chagang-do','CHA',1);
INSERT INTO oc_zone VALUES(1763,112,'Hamgyong-bukto','HAB',1);
INSERT INTO oc_zone VALUES(1764,112,'Hamgyong-namdo','HAN',1);
INSERT INTO oc_zone VALUES(1765,112,'Hwanghae-bukto','HWB',1);
INSERT INTO oc_zone VALUES(1766,112,'Hwanghae-namdo','HWN',1);
INSERT INTO oc_zone VALUES(1767,112,'Kangwon-do','KAN',1);
INSERT INTO oc_zone VALUES(1768,112,'P\'yongan-bukto','PYB',1);
INSERT INTO oc_zone VALUES(1769,112,'P\'yongan-namdo','PYN',1);
INSERT INTO oc_zone VALUES(1770,112,'Ryanggang-do (Yanggang-do)','YAN',1);
INSERT INTO oc_zone VALUES(1771,112,'Rason Directly Governed City','NAJ',1);
INSERT INTO oc_zone VALUES(1772,112,'P\'yongyang Special City','PYO',1);
INSERT INTO oc_zone VALUES(1773,113,'Ch\'ungch\'ong-bukto','CO',1);
INSERT INTO oc_zone VALUES(1774,113,'Ch\'ungch\'ong-namdo','CH',1);
INSERT INTO oc_zone VALUES(1775,113,'Cheju-do','CD',1);
INSERT INTO oc_zone VALUES(1776,113,'Cholla-bukto','CB',1);
INSERT INTO oc_zone VALUES(1777,113,'Cholla-namdo','CN',1);
INSERT INTO oc_zone VALUES(1778,113,'Inch\'on-gwangyoksi','IG',1);
INSERT INTO oc_zone VALUES(1779,113,'Kangwon-do','KA',1);
INSERT INTO oc_zone VALUES(1780,113,'Kwangju-gwangyoksi','KG',1);
INSERT INTO oc_zone VALUES(1781,113,'Kyonggi-do','KD',1);
INSERT INTO oc_zone VALUES(1782,113,'Kyongsang-bukto','KB',1);
INSERT INTO oc_zone VALUES(1783,113,'Kyongsang-namdo','KN',1);
INSERT INTO oc_zone VALUES(1784,113,'Pusan-gwangyoksi','PG',1);
INSERT INTO oc_zone VALUES(1785,113,'Soul-t\'ukpyolsi','SO',1);
INSERT INTO oc_zone VALUES(1786,113,'Taegu-gwangyoksi','TA',1);
INSERT INTO oc_zone VALUES(1787,113,'Taejon-gwangyoksi','TG',1);
INSERT INTO oc_zone VALUES(1788,114,'Al \'Asimah','AL',1);
INSERT INTO oc_zone VALUES(1789,114,'Al Ahmadi','AA',1);
INSERT INTO oc_zone VALUES(1790,114,'Al Farwaniyah','AF',1);
INSERT INTO oc_zone VALUES(1791,114,'Al Jahra\'','AJ',1);
INSERT INTO oc_zone VALUES(1792,114,'Hawalli','HA',1);
INSERT INTO oc_zone VALUES(1793,115,'Bishkek','GB',1);
INSERT INTO oc_zone VALUES(1794,115,'Batken','B',1);
INSERT INTO oc_zone VALUES(1795,115,'Chu','C',1);
INSERT INTO oc_zone VALUES(1796,115,'Jalal-Abad','J',1);
INSERT INTO oc_zone VALUES(1797,115,'Naryn','N',1);
INSERT INTO oc_zone VALUES(1798,115,'Osh','O',1);
INSERT INTO oc_zone VALUES(1799,115,'Talas','T',1);
INSERT INTO oc_zone VALUES(1800,115,'Ysyk-Kol','Y',1);
INSERT INTO oc_zone VALUES(1801,116,'Vientiane','VT',1);
INSERT INTO oc_zone VALUES(1802,116,'Attapu','AT',1);
INSERT INTO oc_zone VALUES(1803,116,'Bokeo','BK',1);
INSERT INTO oc_zone VALUES(1804,116,'Bolikhamxai','BL',1);
INSERT INTO oc_zone VALUES(1805,116,'Champasak','CH',1);
INSERT INTO oc_zone VALUES(1806,116,'Houaphan','HO',1);
INSERT INTO oc_zone VALUES(1807,116,'Khammouan','KH',1);
INSERT INTO oc_zone VALUES(1808,116,'Louang Namtha','LM',1);
INSERT INTO oc_zone VALUES(1809,116,'Louangphabang','LP',1);
INSERT INTO oc_zone VALUES(1810,116,'Oudomxai','OU',1);
INSERT INTO oc_zone VALUES(1811,116,'Phongsali','PH',1);
INSERT INTO oc_zone VALUES(1812,116,'Salavan','SL',1);
INSERT INTO oc_zone VALUES(1813,116,'Savannakhet','SV',1);
INSERT INTO oc_zone VALUES(1814,116,'Vientiane','VI',1);
INSERT INTO oc_zone VALUES(1815,116,'Xaignabouli','XA',1);
INSERT INTO oc_zone VALUES(1816,116,'Xekong','XE',1);
INSERT INTO oc_zone VALUES(1817,116,'Xiangkhoang','XI',1);
INSERT INTO oc_zone VALUES(1818,116,'Xaisomboun','XN',1);
INSERT INTO oc_zone VALUES(1852,119,'Berea','BE',1);
INSERT INTO oc_zone VALUES(1853,119,'Butha-Buthe','BB',1);
INSERT INTO oc_zone VALUES(1854,119,'Leribe','LE',1);
INSERT INTO oc_zone VALUES(1855,119,'Mafeteng','MF',1);
INSERT INTO oc_zone VALUES(1856,119,'Maseru','MS',1);
INSERT INTO oc_zone VALUES(1857,119,'Mohale\'s Hoek','MH',1);
INSERT INTO oc_zone VALUES(1858,119,'Mokhotlong','MK',1);
INSERT INTO oc_zone VALUES(1859,119,'Qacha\'s Nek','QN',1);
INSERT INTO oc_zone VALUES(1860,119,'Quthing','QT',1);
INSERT INTO oc_zone VALUES(1861,119,'Thaba-Tseka','TT',1);
INSERT INTO oc_zone VALUES(1862,120,'Bomi','BI',1);
INSERT INTO oc_zone VALUES(1863,120,'Bong','BG',1);
INSERT INTO oc_zone VALUES(1864,120,'Grand Bassa','GB',1);
INSERT INTO oc_zone VALUES(1865,120,'Grand Cape Mount','CM',1);
INSERT INTO oc_zone VALUES(1866,120,'Grand Gedeh','GG',1);
INSERT INTO oc_zone VALUES(1867,120,'Grand Kru','GK',1);
INSERT INTO oc_zone VALUES(1868,120,'Lofa','LO',1);
INSERT INTO oc_zone VALUES(1869,120,'Margibi','MG',1);
INSERT INTO oc_zone VALUES(1870,120,'Maryland','ML',1);
INSERT INTO oc_zone VALUES(1871,120,'Montserrado','MS',1);
INSERT INTO oc_zone VALUES(1872,120,'Nimba','NB',1);
INSERT INTO oc_zone VALUES(1873,120,'River Cess','RC',1);
INSERT INTO oc_zone VALUES(1874,120,'Sinoe','SN',1);
INSERT INTO oc_zone VALUES(1875,121,'Ajdabiya','AJ',1);
INSERT INTO oc_zone VALUES(1876,121,'Al \'Aziziyah','AZ',1);
INSERT INTO oc_zone VALUES(1877,121,'Al Fatih','FA',1);
INSERT INTO oc_zone VALUES(1878,121,'Al Jabal al Akhdar','JA',1);
INSERT INTO oc_zone VALUES(1879,121,'Al Jufrah','JU',1);
INSERT INTO oc_zone VALUES(1880,121,'Al Khums','KH',1);
INSERT INTO oc_zone VALUES(1881,121,'Al Kufrah','KU',1);
INSERT INTO oc_zone VALUES(1882,121,'An Nuqat al Khams','NK',1);
INSERT INTO oc_zone VALUES(1883,121,'Ash Shati\'','AS',1);
INSERT INTO oc_zone VALUES(1884,121,'Awbari','AW',1);
INSERT INTO oc_zone VALUES(1885,121,'Az Zawiyah','ZA',1);
INSERT INTO oc_zone VALUES(1886,121,'Banghazi','BA',1);
INSERT INTO oc_zone VALUES(1887,121,'Darnah','DA',1);
INSERT INTO oc_zone VALUES(1888,121,'Ghadamis','GD',1);
INSERT INTO oc_zone VALUES(1889,121,'Gharyan','GY',1);
INSERT INTO oc_zone VALUES(1890,121,'Misratah','MI',1);
INSERT INTO oc_zone VALUES(1891,121,'Murzuq','MZ',1);
INSERT INTO oc_zone VALUES(1892,121,'Sabha','SB',1);
INSERT INTO oc_zone VALUES(1893,121,'Sawfajjin','SW',1);
INSERT INTO oc_zone VALUES(1894,121,'Surt','SU',1);
INSERT INTO oc_zone VALUES(1895,121,'Tarabulus (Tripoli)','TL',1);
INSERT INTO oc_zone VALUES(1896,121,'Tarhunah','TH',1);
INSERT INTO oc_zone VALUES(1897,121,'Tubruq','TU',1);
INSERT INTO oc_zone VALUES(1898,121,'Yafran','YA',1);
INSERT INTO oc_zone VALUES(1899,121,'Zlitan','ZL',1);
INSERT INTO oc_zone VALUES(1900,122,'Vaduz','V',1);
INSERT INTO oc_zone VALUES(1901,122,'Schaan','A',1);
INSERT INTO oc_zone VALUES(1902,122,'Balzers','B',1);
INSERT INTO oc_zone VALUES(1903,122,'Triesen','N',1);
INSERT INTO oc_zone VALUES(1904,122,'Eschen','E',1);
INSERT INTO oc_zone VALUES(1905,122,'Mauren','M',1);
INSERT INTO oc_zone VALUES(1906,122,'Triesenberg','T',1);
INSERT INTO oc_zone VALUES(1907,122,'Ruggell','R',1);
INSERT INTO oc_zone VALUES(1908,122,'Gamprin','G',1);
INSERT INTO oc_zone VALUES(1909,122,'Schellenberg','L',1);
INSERT INTO oc_zone VALUES(1910,122,'Planken','P',1);
INSERT INTO oc_zone VALUES(1911,123,'Alytus','AL',1);
INSERT INTO oc_zone VALUES(1912,123,'Kaunas','KA',1);
INSERT INTO oc_zone VALUES(1913,123,'Klaipeda','KL',1);
INSERT INTO oc_zone VALUES(1914,123,'Marijampole','MA',1);
INSERT INTO oc_zone VALUES(1915,123,'Panevezys','PA',1);
INSERT INTO oc_zone VALUES(1916,123,'Siauliai','SI',1);
INSERT INTO oc_zone VALUES(1917,123,'Taurage','TA',1);
INSERT INTO oc_zone VALUES(1918,123,'Telsiai','TE',1);
INSERT INTO oc_zone VALUES(1919,123,'Utena','UT',1);
INSERT INTO oc_zone VALUES(1920,123,'Vilnius','VI',1);
INSERT INTO oc_zone VALUES(1921,124,'Diekirch','DD',1);
INSERT INTO oc_zone VALUES(1922,124,'Clervaux','DC',1);
INSERT INTO oc_zone VALUES(1923,124,'Redange','DR',1);
INSERT INTO oc_zone VALUES(1924,124,'Vianden','DV',1);
INSERT INTO oc_zone VALUES(1925,124,'Wiltz','DW',1);
INSERT INTO oc_zone VALUES(1926,124,'Grevenmacher','GG',1);
INSERT INTO oc_zone VALUES(1927,124,'Echternach','GE',1);
INSERT INTO oc_zone VALUES(1928,124,'Remich','GR',1);
INSERT INTO oc_zone VALUES(1929,124,'Luxembourg','LL',1);
INSERT INTO oc_zone VALUES(1930,124,'Capellen','LC',1);
INSERT INTO oc_zone VALUES(1931,124,'Esch-sur-Alzette','LE',1);
INSERT INTO oc_zone VALUES(1932,124,'Mersch','LM',1);
INSERT INTO oc_zone VALUES(1933,125,'Our Lady Fatima Parish','OLF',1);
INSERT INTO oc_zone VALUES(1934,125,'St. Anthony Parish','ANT',1);
INSERT INTO oc_zone VALUES(1935,125,'St. Lazarus Parish','LAZ',1);
INSERT INTO oc_zone VALUES(1936,125,'Cathedral Parish','CAT',1);
INSERT INTO oc_zone VALUES(1937,125,'St. Lawrence Parish','LAW',1);
INSERT INTO oc_zone VALUES(1938,127,'Antananarivo','AN',1);
INSERT INTO oc_zone VALUES(1939,127,'Antsiranana','AS',1);
INSERT INTO oc_zone VALUES(1940,127,'Fianarantsoa','FN',1);
INSERT INTO oc_zone VALUES(1941,127,'Mahajanga','MJ',1);
INSERT INTO oc_zone VALUES(1942,127,'Toamasina','TM',1);
INSERT INTO oc_zone VALUES(1943,127,'Toliara','TL',1);
INSERT INTO oc_zone VALUES(1944,128,'Balaka','BLK',1);
INSERT INTO oc_zone VALUES(1945,128,'Blantyre','BLT',1);
INSERT INTO oc_zone VALUES(1946,128,'Chikwawa','CKW',1);
INSERT INTO oc_zone VALUES(1947,128,'Chiradzulu','CRD',1);
INSERT INTO oc_zone VALUES(1948,128,'Chitipa','CTP',1);
INSERT INTO oc_zone VALUES(1949,128,'Dedza','DDZ',1);
INSERT INTO oc_zone VALUES(1950,128,'Dowa','DWA',1);
INSERT INTO oc_zone VALUES(1951,128,'Karonga','KRG',1);
INSERT INTO oc_zone VALUES(1952,128,'Kasungu','KSG',1);
INSERT INTO oc_zone VALUES(1953,128,'Likoma','LKM',1);
INSERT INTO oc_zone VALUES(1954,128,'Lilongwe','LLG',1);
INSERT INTO oc_zone VALUES(1955,128,'Machinga','MCG',1);
INSERT INTO oc_zone VALUES(1956,128,'Mangochi','MGC',1);
INSERT INTO oc_zone VALUES(1957,128,'Mchinji','MCH',1);
INSERT INTO oc_zone VALUES(1958,128,'Mulanje','MLJ',1);
INSERT INTO oc_zone VALUES(1959,128,'Mwanza','MWZ',1);
INSERT INTO oc_zone VALUES(1960,128,'Mzimba','MZM',1);
INSERT INTO oc_zone VALUES(1961,128,'Ntcheu','NTU',1);
INSERT INTO oc_zone VALUES(1962,128,'Nkhata Bay','NKB',1);
INSERT INTO oc_zone VALUES(1963,128,'Nkhotakota','NKH',1);
INSERT INTO oc_zone VALUES(1964,128,'Nsanje','NSJ',1);
INSERT INTO oc_zone VALUES(1965,128,'Ntchisi','NTI',1);
INSERT INTO oc_zone VALUES(1966,128,'Phalombe','PHL',1);
INSERT INTO oc_zone VALUES(1967,128,'Rumphi','RMP',1);
INSERT INTO oc_zone VALUES(1968,128,'Salima','SLM',1);
INSERT INTO oc_zone VALUES(1969,128,'Thyolo','THY',1);
INSERT INTO oc_zone VALUES(1970,128,'Zomba','ZBA',1);
INSERT INTO oc_zone VALUES(1971,129,'Johor','MY-01',1);
INSERT INTO oc_zone VALUES(1972,129,'Kedah','MY-02',1);
INSERT INTO oc_zone VALUES(1973,129,'Kelantan','MY-03',1);
INSERT INTO oc_zone VALUES(1974,129,'Labuan','MY-15',1);
INSERT INTO oc_zone VALUES(1975,129,'Melaka','MY-04',1);
INSERT INTO oc_zone VALUES(1976,129,'Negeri Sembilan','MY-05',1);
INSERT INTO oc_zone VALUES(1977,129,'Pahang','MY-06',1);
INSERT INTO oc_zone VALUES(1978,129,'Perak','MY-08',1);
INSERT INTO oc_zone VALUES(1979,129,'Perlis','MY-09',1);
INSERT INTO oc_zone VALUES(1980,129,'Pulau Pinang','MY-07',1);
INSERT INTO oc_zone VALUES(1981,129,'Sabah','MY-12',1);
INSERT INTO oc_zone VALUES(1982,129,'Sarawak','MY-13',1);
INSERT INTO oc_zone VALUES(1983,129,'Selangor','MY-10',1);
INSERT INTO oc_zone VALUES(1984,129,'Terengganu','MY-11',1);
INSERT INTO oc_zone VALUES(1985,129,'Kuala Lumpur','MY-14',1);
INSERT INTO oc_zone VALUES(4035,129,'Putrajaya','MY-16',1);
INSERT INTO oc_zone VALUES(1986,130,'Thiladhunmathi Uthuru','THU',1);
INSERT INTO oc_zone VALUES(1987,130,'Thiladhunmathi Dhekunu','THD',1);
INSERT INTO oc_zone VALUES(1988,130,'Miladhunmadulu Uthuru','MLU',1);
INSERT INTO oc_zone VALUES(1989,130,'Miladhunmadulu Dhekunu','MLD',1);
INSERT INTO oc_zone VALUES(1990,130,'Maalhosmadulu Uthuru','MAU',1);
INSERT INTO oc_zone VALUES(1991,130,'Maalhosmadulu Dhekunu','MAD',1);
INSERT INTO oc_zone VALUES(1992,130,'Faadhippolhu','FAA',1);
INSERT INTO oc_zone VALUES(1993,130,'Male Atoll','MAA',1);
INSERT INTO oc_zone VALUES(1994,130,'Ari Atoll Uthuru','AAU',1);
INSERT INTO oc_zone VALUES(1995,130,'Ari Atoll Dheknu','AAD',1);
INSERT INTO oc_zone VALUES(1996,130,'Felidhe Atoll','FEA',1);
INSERT INTO oc_zone VALUES(1997,130,'Mulaku Atoll','MUA',1);
INSERT INTO oc_zone VALUES(1998,130,'Nilandhe Atoll Uthuru','NAU',1);
INSERT INTO oc_zone VALUES(1999,130,'Nilandhe Atoll Dhekunu','NAD',1);
INSERT INTO oc_zone VALUES(2000,130,'Kolhumadulu','KLH',1);
INSERT INTO oc_zone VALUES(2001,130,'Hadhdhunmathi','HDH',1);
INSERT INTO oc_zone VALUES(2002,130,'Huvadhu Atoll Uthuru','HAU',1);
INSERT INTO oc_zone VALUES(2003,130,'Huvadhu Atoll Dhekunu','HAD',1);
INSERT INTO oc_zone VALUES(2004,130,'Fua Mulaku','FMU',1);
INSERT INTO oc_zone VALUES(2005,130,'Addu','ADD',1);
INSERT INTO oc_zone VALUES(2006,131,'Gao','GA',1);
INSERT INTO oc_zone VALUES(2007,131,'Kayes','KY',1);
INSERT INTO oc_zone VALUES(2008,131,'Kidal','KD',1);
INSERT INTO oc_zone VALUES(2009,131,'Koulikoro','KL',1);
INSERT INTO oc_zone VALUES(2010,131,'Mopti','MP',1);
INSERT INTO oc_zone VALUES(2011,131,'Segou','SG',1);
INSERT INTO oc_zone VALUES(2012,131,'Sikasso','SK',1);
INSERT INTO oc_zone VALUES(2013,131,'Tombouctou','TB',1);
INSERT INTO oc_zone VALUES(2014,131,'Bamako Capital District','CD',1);
INSERT INTO oc_zone VALUES(2015,132,'Attard','ATT',1);
INSERT INTO oc_zone VALUES(2016,132,'Balzan','BAL',1);
INSERT INTO oc_zone VALUES(2017,132,'Birgu','BGU',1);
INSERT INTO oc_zone VALUES(2018,132,'Birkirkara','BKK',1);
INSERT INTO oc_zone VALUES(2019,132,'Birzebbuga','BRZ',1);
INSERT INTO oc_zone VALUES(2020,132,'Bormla','BOR',1);
INSERT INTO oc_zone VALUES(2021,132,'Dingli','DIN',1);
INSERT INTO oc_zone VALUES(2022,132,'Fgura','FGU',1);
INSERT INTO oc_zone VALUES(2023,132,'Floriana','FLO',1);
INSERT INTO oc_zone VALUES(2024,132,'Gudja','GDJ',1);
INSERT INTO oc_zone VALUES(2025,132,'Gzira','GZR',1);
INSERT INTO oc_zone VALUES(2026,132,'Gargur','GRG',1);
INSERT INTO oc_zone VALUES(2027,132,'Gaxaq','GXQ',1);
INSERT INTO oc_zone VALUES(2028,132,'Hamrun','HMR',1);
INSERT INTO oc_zone VALUES(2029,132,'Iklin','IKL',1);
INSERT INTO oc_zone VALUES(2030,132,'Isla','ISL',1);
INSERT INTO oc_zone VALUES(2031,132,'Kalkara','KLK',1);
INSERT INTO oc_zone VALUES(2032,132,'Kirkop','KRK',1);
INSERT INTO oc_zone VALUES(2033,132,'Lija','LIJ',1);
INSERT INTO oc_zone VALUES(2034,132,'Luqa','LUQ',1);
INSERT INTO oc_zone VALUES(2035,132,'Marsa','MRS',1);
INSERT INTO oc_zone VALUES(2036,132,'Marsaskala','MKL',1);
INSERT INTO oc_zone VALUES(2037,132,'Marsaxlokk','MXL',1);
INSERT INTO oc_zone VALUES(2038,132,'Mdina','MDN',1);
INSERT INTO oc_zone VALUES(2039,132,'Melliea','MEL',1);
INSERT INTO oc_zone VALUES(2040,132,'Mgarr','MGR',1);
INSERT INTO oc_zone VALUES(2041,132,'Mosta','MST',1);
INSERT INTO oc_zone VALUES(2042,132,'Mqabba','MQA',1);
INSERT INTO oc_zone VALUES(2043,132,'Msida','MSI',1);
INSERT INTO oc_zone VALUES(2044,132,'Mtarfa','MTF',1);
INSERT INTO oc_zone VALUES(2045,132,'Naxxar','NAX',1);
INSERT INTO oc_zone VALUES(2046,132,'Paola','PAO',1);
INSERT INTO oc_zone VALUES(2047,132,'Pembroke','PEM',1);
INSERT INTO oc_zone VALUES(2048,132,'Pieta','PIE',1);
INSERT INTO oc_zone VALUES(2049,132,'Qormi','QOR',1);
INSERT INTO oc_zone VALUES(2050,132,'Qrendi','QRE',1);
INSERT INTO oc_zone VALUES(2051,132,'Rabat','RAB',1);
INSERT INTO oc_zone VALUES(2052,132,'Safi','SAF',1);
INSERT INTO oc_zone VALUES(2053,132,'San Giljan','SGI',1);
INSERT INTO oc_zone VALUES(2054,132,'Santa Lucija','SLU',1);
INSERT INTO oc_zone VALUES(2055,132,'San Pawl il-Bahar','SPB',1);
INSERT INTO oc_zone VALUES(2056,132,'San Gwann','SGW',1);
INSERT INTO oc_zone VALUES(2057,132,'Santa Venera','SVE',1);
INSERT INTO oc_zone VALUES(2058,132,'Siggiewi','SIG',1);
INSERT INTO oc_zone VALUES(2059,132,'Sliema','SLM',1);
INSERT INTO oc_zone VALUES(2060,132,'Swieqi','SWQ',1);
INSERT INTO oc_zone VALUES(2061,132,'Ta Xbiex','TXB',1);
INSERT INTO oc_zone VALUES(2062,132,'Tarxien','TRX',1);
INSERT INTO oc_zone VALUES(2063,132,'Valletta','VLT',1);
INSERT INTO oc_zone VALUES(2064,132,'Xgajra','XGJ',1);
INSERT INTO oc_zone VALUES(2065,132,'Zabbar','ZBR',1);
INSERT INTO oc_zone VALUES(2066,132,'Zebbug','ZBG',1);
INSERT INTO oc_zone VALUES(2067,132,'Zejtun','ZJT',1);
INSERT INTO oc_zone VALUES(2068,132,'Zurrieq','ZRQ',1);
INSERT INTO oc_zone VALUES(2069,132,'Fontana','FNT',1);
INSERT INTO oc_zone VALUES(2070,132,'Ghajnsielem','GHJ',1);
INSERT INTO oc_zone VALUES(2071,132,'Gharb','GHR',1);
INSERT INTO oc_zone VALUES(2072,132,'Ghasri','GHS',1);
INSERT INTO oc_zone VALUES(2073,132,'Kercem','KRC',1);
INSERT INTO oc_zone VALUES(2074,132,'Munxar','MUN',1);
INSERT INTO oc_zone VALUES(2075,132,'Nadur','NAD',1);
INSERT INTO oc_zone VALUES(2076,132,'Qala','QAL',1);
INSERT INTO oc_zone VALUES(2077,132,'Victoria','VIC',1);
INSERT INTO oc_zone VALUES(2078,132,'San Lawrenz','SLA',1);
INSERT INTO oc_zone VALUES(2079,132,'Sannat','SNT',1);
INSERT INTO oc_zone VALUES(2080,132,'Xagra','ZAG',1);
INSERT INTO oc_zone VALUES(2081,132,'Xewkija','XEW',1);
INSERT INTO oc_zone VALUES(2082,132,'Zebbug','ZEB',1);
INSERT INTO oc_zone VALUES(2083,133,'Ailinginae','ALG',1);
INSERT INTO oc_zone VALUES(2084,133,'Ailinglaplap','ALL',1);
INSERT INTO oc_zone VALUES(2085,133,'Ailuk','ALK',1);
INSERT INTO oc_zone VALUES(2086,133,'Arno','ARN',1);
INSERT INTO oc_zone VALUES(2087,133,'Aur','AUR',1);
INSERT INTO oc_zone VALUES(2088,133,'Bikar','BKR',1);
INSERT INTO oc_zone VALUES(2089,133,'Bikini','BKN',1);
INSERT INTO oc_zone VALUES(2090,133,'Bokak','BKK',1);
INSERT INTO oc_zone VALUES(2091,133,'Ebon','EBN',1);
INSERT INTO oc_zone VALUES(2092,133,'Enewetak','ENT',1);
INSERT INTO oc_zone VALUES(2093,133,'Erikub','EKB',1);
INSERT INTO oc_zone VALUES(2094,133,'Jabat','JBT',1);
INSERT INTO oc_zone VALUES(2095,133,'Jaluit','JLT',1);
INSERT INTO oc_zone VALUES(2096,133,'Jemo','JEM',1);
INSERT INTO oc_zone VALUES(2097,133,'Kili','KIL',1);
INSERT INTO oc_zone VALUES(2098,133,'Kwajalein','KWJ',1);
INSERT INTO oc_zone VALUES(2099,133,'Lae','LAE',1);
INSERT INTO oc_zone VALUES(2100,133,'Lib','LIB',1);
INSERT INTO oc_zone VALUES(2101,133,'Likiep','LKP',1);
INSERT INTO oc_zone VALUES(2102,133,'Majuro','MJR',1);
INSERT INTO oc_zone VALUES(2103,133,'Maloelap','MLP',1);
INSERT INTO oc_zone VALUES(2104,133,'Mejit','MJT',1);
INSERT INTO oc_zone VALUES(2105,133,'Mili','MIL',1);
INSERT INTO oc_zone VALUES(2106,133,'Namorik','NMK',1);
INSERT INTO oc_zone VALUES(2107,133,'Namu','NAM',1);
INSERT INTO oc_zone VALUES(2108,133,'Rongelap','RGL',1);
INSERT INTO oc_zone VALUES(2109,133,'Rongrik','RGK',1);
INSERT INTO oc_zone VALUES(2110,133,'Toke','TOK',1);
INSERT INTO oc_zone VALUES(2111,133,'Ujae','UJA',1);
INSERT INTO oc_zone VALUES(2112,133,'Ujelang','UJL',1);
INSERT INTO oc_zone VALUES(2113,133,'Utirik','UTK',1);
INSERT INTO oc_zone VALUES(2114,133,'Wotho','WTH',1);
INSERT INTO oc_zone VALUES(2115,133,'Wotje','WTJ',1);
INSERT INTO oc_zone VALUES(2116,135,'Adrar','AD',1);
INSERT INTO oc_zone VALUES(2117,135,'Assaba','AS',1);
INSERT INTO oc_zone VALUES(2118,135,'Brakna','BR',1);
INSERT INTO oc_zone VALUES(2119,135,'Dakhlet Nouadhibou','DN',1);
INSERT INTO oc_zone VALUES(2120,135,'Gorgol','GO',1);
INSERT INTO oc_zone VALUES(2121,135,'Guidimaka','GM',1);
INSERT INTO oc_zone VALUES(2122,135,'Hodh Ech Chargui','HC',1);
INSERT INTO oc_zone VALUES(2123,135,'Hodh El Gharbi','HG',1);
INSERT INTO oc_zone VALUES(2124,135,'Inchiri','IN',1);
INSERT INTO oc_zone VALUES(2125,135,'Tagant','TA',1);
INSERT INTO oc_zone VALUES(2126,135,'Tiris Zemmour','TZ',1);
INSERT INTO oc_zone VALUES(2127,135,'Trarza','TR',1);
INSERT INTO oc_zone VALUES(2128,135,'Nouakchott','NO',1);
INSERT INTO oc_zone VALUES(2129,136,'Beau Bassin-Rose Hill','BR',1);
INSERT INTO oc_zone VALUES(2130,136,'Curepipe','CU',1);
INSERT INTO oc_zone VALUES(2131,136,'Port Louis','PU',1);
INSERT INTO oc_zone VALUES(2132,136,'Quatre Bornes','QB',1);
INSERT INTO oc_zone VALUES(2133,136,'Vacoas-Phoenix','VP',1);
INSERT INTO oc_zone VALUES(2134,136,'Agalega Islands','AG',1);
INSERT INTO oc_zone VALUES(2135,136,'Cargados Carajos Shoals (Saint Brandon Islands)','CC',1);
INSERT INTO oc_zone VALUES(2136,136,'Rodrigues','RO',1);
INSERT INTO oc_zone VALUES(2137,136,'Black River','BL',1);
INSERT INTO oc_zone VALUES(2138,136,'Flacq','FL',1);
INSERT INTO oc_zone VALUES(2139,136,'Grand Port','GP',1);
INSERT INTO oc_zone VALUES(2140,136,'Moka','MO',1);
INSERT INTO oc_zone VALUES(2141,136,'Pamplemousses','PA',1);
INSERT INTO oc_zone VALUES(2142,136,'Plaines Wilhems','PW',1);
INSERT INTO oc_zone VALUES(2143,136,'Port Louis','PL',1);
INSERT INTO oc_zone VALUES(2144,136,'Riviere du Rempart','RR',1);
INSERT INTO oc_zone VALUES(2145,136,'Savanne','SA',1);
INSERT INTO oc_zone VALUES(2146,138,'Baja California Norte','BN',1);
INSERT INTO oc_zone VALUES(2147,138,'Baja California Sur','BS',1);
INSERT INTO oc_zone VALUES(2148,138,'Campeche','CA',1);
INSERT INTO oc_zone VALUES(2149,138,'Chiapas','CI',1);
INSERT INTO oc_zone VALUES(2150,138,'Chihuahua','CH',1);
INSERT INTO oc_zone VALUES(2151,138,'Coahuila de Zaragoza','CZ',1);
INSERT INTO oc_zone VALUES(2152,138,'Colima','CL',1);
INSERT INTO oc_zone VALUES(2153,138,'Distrito Federal','DF',1);
INSERT INTO oc_zone VALUES(2154,138,'Durango','DU',1);
INSERT INTO oc_zone VALUES(2155,138,'Guanajuato','GA',1);
INSERT INTO oc_zone VALUES(2156,138,'Guerrero','GE',1);
INSERT INTO oc_zone VALUES(2157,138,'Hidalgo','HI',1);
INSERT INTO oc_zone VALUES(2158,138,'Jalisco','JA',1);
INSERT INTO oc_zone VALUES(2159,138,'Mexico','ME',1);
INSERT INTO oc_zone VALUES(2160,138,'Michoacan de Ocampo','MI',1);
INSERT INTO oc_zone VALUES(2161,138,'Morelos','MO',1);
INSERT INTO oc_zone VALUES(2162,138,'Nayarit','NA',1);
INSERT INTO oc_zone VALUES(2163,138,'Nuevo Leon','NL',1);
INSERT INTO oc_zone VALUES(2164,138,'Oaxaca','OA',1);
INSERT INTO oc_zone VALUES(2165,138,'Puebla','PU',1);
INSERT INTO oc_zone VALUES(2166,138,'Queretaro de Arteaga','QA',1);
INSERT INTO oc_zone VALUES(2167,138,'Quintana Roo','QR',1);
INSERT INTO oc_zone VALUES(2168,138,'San Luis Potosi','SA',1);
INSERT INTO oc_zone VALUES(2169,138,'Sinaloa','SI',1);
INSERT INTO oc_zone VALUES(2170,138,'Sonora','SO',1);
INSERT INTO oc_zone VALUES(2171,138,'Tabasco','TB',1);
INSERT INTO oc_zone VALUES(2172,138,'Tamaulipas','TM',1);
INSERT INTO oc_zone VALUES(2173,138,'Tlaxcala','TL',1);
INSERT INTO oc_zone VALUES(2174,138,'Veracruz-Llave','VE',1);
INSERT INTO oc_zone VALUES(2175,138,'Yucatan','YU',1);
INSERT INTO oc_zone VALUES(2176,138,'Zacatecas','ZA',1);
INSERT INTO oc_zone VALUES(2177,139,'Chuuk','C',1);
INSERT INTO oc_zone VALUES(2178,139,'Kosrae','K',1);
INSERT INTO oc_zone VALUES(2179,139,'Pohnpei','P',1);
INSERT INTO oc_zone VALUES(2180,139,'Yap','Y',1);
INSERT INTO oc_zone VALUES(2181,140,'Gagauzia','GA',1);
INSERT INTO oc_zone VALUES(2182,140,'Chisinau','CU',1);
INSERT INTO oc_zone VALUES(2183,140,'Balti','BA',1);
INSERT INTO oc_zone VALUES(2184,140,'Cahul','CA',1);
INSERT INTO oc_zone VALUES(2185,140,'Edinet','ED',1);
INSERT INTO oc_zone VALUES(2186,140,'Lapusna','LA',1);
INSERT INTO oc_zone VALUES(2187,140,'Orhei','OR',1);
INSERT INTO oc_zone VALUES(2188,140,'Soroca','SO',1);
INSERT INTO oc_zone VALUES(2189,140,'Tighina','TI',1);
INSERT INTO oc_zone VALUES(2190,140,'Ungheni','UN',1);
INSERT INTO oc_zone VALUES(2191,140,'St?nga Nistrului','SN',1);
INSERT INTO oc_zone VALUES(2192,141,'Fontvieille','FV',1);
INSERT INTO oc_zone VALUES(2193,141,'La Condamine','LC',1);
INSERT INTO oc_zone VALUES(2194,141,'Monaco-Ville','MV',1);
INSERT INTO oc_zone VALUES(2195,141,'Monte-Carlo','MC',1);
INSERT INTO oc_zone VALUES(2196,142,'Ulanbaatar',1,1);
INSERT INTO oc_zone VALUES(2197,142,'Orhon',35,1);
INSERT INTO oc_zone VALUES(2198,142,'Darhan uul',37,1);
INSERT INTO oc_zone VALUES(2199,142,'Hentiy',39,1);
INSERT INTO oc_zone VALUES(2200,142,'Hovsgol',41,1);
INSERT INTO oc_zone VALUES(2201,142,'Hovd',43,1);
INSERT INTO oc_zone VALUES(2202,142,'Uvs',46,1);
INSERT INTO oc_zone VALUES(2203,142,'Tov',47,1);
INSERT INTO oc_zone VALUES(2204,142,'Selenge',49,1);
INSERT INTO oc_zone VALUES(2205,142,'Suhbaatar',51,1);
INSERT INTO oc_zone VALUES(2206,142,'Omnogovi',53,1);
INSERT INTO oc_zone VALUES(2207,142,'Ovorhangay',55,1);
INSERT INTO oc_zone VALUES(2208,142,'Dzavhan',57,1);
INSERT INTO oc_zone VALUES(2209,142,'DundgovL',59,1);
INSERT INTO oc_zone VALUES(2210,142,'Dornod',61,1);
INSERT INTO oc_zone VALUES(2211,142,'Dornogov',63,1);
INSERT INTO oc_zone VALUES(2212,142,'Govi-Sumber',64,1);
INSERT INTO oc_zone VALUES(2213,142,'Govi-Altay',65,1);
INSERT INTO oc_zone VALUES(2214,142,'Bulgan',67,1);
INSERT INTO oc_zone VALUES(2215,142,'Bayanhongor',69,1);
INSERT INTO oc_zone VALUES(2216,142,'Bayan-Olgiy',71,1);
INSERT INTO oc_zone VALUES(2217,142,'Arhangay',73,1);
INSERT INTO oc_zone VALUES(2218,143,'Saint Anthony','A',1);
INSERT INTO oc_zone VALUES(2219,143,'Saint Georges','G',1);
INSERT INTO oc_zone VALUES(2220,143,'Saint Peter','P',1);
INSERT INTO oc_zone VALUES(2221,144,'Agadir','AGD',1);
INSERT INTO oc_zone VALUES(2222,144,'Al Hoceima','HOC',1);
INSERT INTO oc_zone VALUES(2223,144,'Azilal','AZI',1);
INSERT INTO oc_zone VALUES(2224,144,'Beni Mellal','BME',1);
INSERT INTO oc_zone VALUES(2225,144,'Ben Slimane','BSL',1);
INSERT INTO oc_zone VALUES(2226,144,'Boulemane','BLM',1);
INSERT INTO oc_zone VALUES(2227,144,'Casablanca','CBL',1);
INSERT INTO oc_zone VALUES(2228,144,'Chaouen','CHA',1);
INSERT INTO oc_zone VALUES(2229,144,'El Jadida','EJA',1);
INSERT INTO oc_zone VALUES(2230,144,'El Kelaa des Sraghna','EKS',1);
INSERT INTO oc_zone VALUES(2231,144,'Er Rachidia','ERA',1);
INSERT INTO oc_zone VALUES(2232,144,'Essaouira','ESS',1);
INSERT INTO oc_zone VALUES(2233,144,'Fes','FES',1);
INSERT INTO oc_zone VALUES(2234,144,'Figuig','FIG',1);
INSERT INTO oc_zone VALUES(2235,144,'Guelmim','GLM',1);
INSERT INTO oc_zone VALUES(2236,144,'Ifrane','IFR',1);
INSERT INTO oc_zone VALUES(2237,144,'Kenitra','KEN',1);
INSERT INTO oc_zone VALUES(2238,144,'Khemisset','KHM',1);
INSERT INTO oc_zone VALUES(2239,144,'Khenifra','KHN',1);
INSERT INTO oc_zone VALUES(2240,144,'Khouribga','KHO',1);
INSERT INTO oc_zone VALUES(2241,144,'Laayoune','LYN',1);
INSERT INTO oc_zone VALUES(2242,144,'Larache','LAR',1);
INSERT INTO oc_zone VALUES(2243,144,'Marrakech','MRK',1);
INSERT INTO oc_zone VALUES(2244,144,'Meknes','MKN',1);
INSERT INTO oc_zone VALUES(2245,144,'Nador','NAD',1);
INSERT INTO oc_zone VALUES(2246,144,'Ouarzazate','ORZ',1);
INSERT INTO oc_zone VALUES(2247,144,'Oujda','OUJ',1);
INSERT INTO oc_zone VALUES(2248,144,'Rabat-Sale','RSA',1);
INSERT INTO oc_zone VALUES(2249,144,'Safi','SAF',1);
INSERT INTO oc_zone VALUES(2250,144,'Settat','SET',1);
INSERT INTO oc_zone VALUES(2251,144,'Sidi Kacem','SKA',1);
INSERT INTO oc_zone VALUES(2252,144,'Tangier','TGR',1);
INSERT INTO oc_zone VALUES(2253,144,'Tan-Tan','TAN',1);
INSERT INTO oc_zone VALUES(2254,144,'Taounate','TAO',1);
INSERT INTO oc_zone VALUES(2255,144,'Taroudannt','TRD',1);
INSERT INTO oc_zone VALUES(2256,144,'Tata','TAT',1);
INSERT INTO oc_zone VALUES(2257,144,'Taza','TAZ',1);
INSERT INTO oc_zone VALUES(2258,144,'Tetouan','TET',1);
INSERT INTO oc_zone VALUES(2259,144,'Tiznit','TIZ',1);
INSERT INTO oc_zone VALUES(2260,144,'Ad Dakhla','ADK',1);
INSERT INTO oc_zone VALUES(2261,144,'Boujdour','BJD',1);
INSERT INTO oc_zone VALUES(2262,144,'Es Smara','ESM',1);
INSERT INTO oc_zone VALUES(2263,145,'Cabo Delgado','CD',1);
INSERT INTO oc_zone VALUES(2264,145,'Gaza','GZ',1);
INSERT INTO oc_zone VALUES(2265,145,'Inhambane','IN',1);
INSERT INTO oc_zone VALUES(2266,145,'Manica','MN',1);
INSERT INTO oc_zone VALUES(2267,145,'Maputo (city)','MC',1);
INSERT INTO oc_zone VALUES(2268,145,'Maputo','MP',1);
INSERT INTO oc_zone VALUES(2269,145,'Nampula','NA',1);
INSERT INTO oc_zone VALUES(2270,145,'Niassa','NI',1);
INSERT INTO oc_zone VALUES(2271,145,'Sofala','SO',1);
INSERT INTO oc_zone VALUES(2272,145,'Tete','TE',1);
INSERT INTO oc_zone VALUES(2273,145,'Zambezia','ZA',1);
INSERT INTO oc_zone VALUES(2274,146,'Ayeyarwady','AY',1);
INSERT INTO oc_zone VALUES(2275,146,'Bago','BG',1);
INSERT INTO oc_zone VALUES(2276,146,'Magway','MG',1);
INSERT INTO oc_zone VALUES(2277,146,'Mandalay','MD',1);
INSERT INTO oc_zone VALUES(2278,146,'Sagaing','SG',1);
INSERT INTO oc_zone VALUES(2279,146,'Tanintharyi','TN',1);
INSERT INTO oc_zone VALUES(2280,146,'Yangon','YG',1);
INSERT INTO oc_zone VALUES(2281,146,'Chin State','CH',1);
INSERT INTO oc_zone VALUES(2282,146,'Kachin State','KC',1);
INSERT INTO oc_zone VALUES(2283,146,'Kayah State','KH',1);
INSERT INTO oc_zone VALUES(2284,146,'Kayin State','KN',1);
INSERT INTO oc_zone VALUES(2285,146,'Mon State','MN',1);
INSERT INTO oc_zone VALUES(2286,146,'Rakhine State','RK',1);
INSERT INTO oc_zone VALUES(2287,146,'Shan State','SH',1);
INSERT INTO oc_zone VALUES(2288,147,'Caprivi','CA',1);
INSERT INTO oc_zone VALUES(2289,147,'Erongo','ER',1);
INSERT INTO oc_zone VALUES(2290,147,'Hardap','HA',1);
INSERT INTO oc_zone VALUES(2291,147,'Karas','KR',1);
INSERT INTO oc_zone VALUES(2292,147,'Kavango','KV',1);
INSERT INTO oc_zone VALUES(2293,147,'Khomas','KH',1);
INSERT INTO oc_zone VALUES(2294,147,'Kunene','KU',1);
INSERT INTO oc_zone VALUES(2295,147,'Ohangwena','OW',1);
INSERT INTO oc_zone VALUES(2296,147,'Omaheke','OK',1);
INSERT INTO oc_zone VALUES(2297,147,'Omusati','OT',1);
INSERT INTO oc_zone VALUES(2298,147,'Oshana','ON',1);
INSERT INTO oc_zone VALUES(2299,147,'Oshikoto','OO',1);
INSERT INTO oc_zone VALUES(2300,147,'Otjozondjupa','OJ',1);
INSERT INTO oc_zone VALUES(2301,148,'Aiwo','AO',1);
INSERT INTO oc_zone VALUES(2302,148,'Anabar','AA',1);
INSERT INTO oc_zone VALUES(2303,148,'Anetan','AT',1);
INSERT INTO oc_zone VALUES(2304,148,'Anibare','AI',1);
INSERT INTO oc_zone VALUES(2305,148,'Baiti','BA',1);
INSERT INTO oc_zone VALUES(2306,148,'Boe','BO',1);
INSERT INTO oc_zone VALUES(2307,148,'Buada','BU',1);
INSERT INTO oc_zone VALUES(2308,148,'Denigomodu','DE',1);
INSERT INTO oc_zone VALUES(2309,148,'Ewa','EW',1);
INSERT INTO oc_zone VALUES(2310,148,'Ijuw','IJ',1);
INSERT INTO oc_zone VALUES(2311,148,'Meneng','ME',1);
INSERT INTO oc_zone VALUES(2312,148,'Nibok','NI',1);
INSERT INTO oc_zone VALUES(2313,148,'Uaboe','UA',1);
INSERT INTO oc_zone VALUES(2314,148,'Yaren','YA',1);
INSERT INTO oc_zone VALUES(2315,149,'Bagmati','BA',1);
INSERT INTO oc_zone VALUES(2316,149,'Bheri','BH',1);
INSERT INTO oc_zone VALUES(2317,149,'Dhawalagiri','DH',1);
INSERT INTO oc_zone VALUES(2318,149,'Gandaki','GA',1);
INSERT INTO oc_zone VALUES(2319,149,'Janakpur','JA',1);
INSERT INTO oc_zone VALUES(2320,149,'Karnali','KA',1);
INSERT INTO oc_zone VALUES(2321,149,'Kosi','KO',1);
INSERT INTO oc_zone VALUES(2322,149,'Lumbini','LU',1);
INSERT INTO oc_zone VALUES(2323,149,'Mahakali','MA',1);
INSERT INTO oc_zone VALUES(2324,149,'Mechi','ME',1);
INSERT INTO oc_zone VALUES(2325,149,'Narayani','NA',1);
INSERT INTO oc_zone VALUES(2326,149,'Rapti','RA',1);
INSERT INTO oc_zone VALUES(2327,149,'Sagarmatha','SA',1);
INSERT INTO oc_zone VALUES(2328,149,'Seti','SE',1);
INSERT INTO oc_zone VALUES(2329,150,'Drenthe','DR',1);
INSERT INTO oc_zone VALUES(2330,150,'Flevoland','FL',1);
INSERT INTO oc_zone VALUES(2331,150,'Friesland','FR',1);
INSERT INTO oc_zone VALUES(2332,150,'Gelderland','GE',1);
INSERT INTO oc_zone VALUES(2333,150,'Groningen','GR',1);
INSERT INTO oc_zone VALUES(2334,150,'Limburg','LI',1);
INSERT INTO oc_zone VALUES(2335,150,'Noord-Brabant','NB',1);
INSERT INTO oc_zone VALUES(2336,150,'Noord-Holland','NH',1);
INSERT INTO oc_zone VALUES(2337,150,'Overijssel','OV',1);
INSERT INTO oc_zone VALUES(2338,150,'Utrecht','UT',1);
INSERT INTO oc_zone VALUES(2339,150,'Zeeland','ZE',1);
INSERT INTO oc_zone VALUES(2340,150,'Zuid-Holland','ZH',1);
INSERT INTO oc_zone VALUES(2341,152,'Iles Loyaute','L',1);
INSERT INTO oc_zone VALUES(2342,152,'Nord','N',1);
INSERT INTO oc_zone VALUES(2343,152,'Sud','S',1);
INSERT INTO oc_zone VALUES(2344,153,'Auckland','AUK',1);
INSERT INTO oc_zone VALUES(2345,153,'Bay of Plenty','BOP',1);
INSERT INTO oc_zone VALUES(2346,153,'Canterbury','CAN',1);
INSERT INTO oc_zone VALUES(2347,153,'Coromandel','COR',1);
INSERT INTO oc_zone VALUES(2348,153,'Gisborne','GIS',1);
INSERT INTO oc_zone VALUES(2349,153,'Fiordland','FIO',1);
INSERT INTO oc_zone VALUES(2350,153,'Hawke\'s Bay','HKB',1);
INSERT INTO oc_zone VALUES(2351,153,'Marlborough','MBH',1);
INSERT INTO oc_zone VALUES(2352,153,'Manawatu-Wanganui','MWT',1);
INSERT INTO oc_zone VALUES(2353,153,'Mt Cook-Mackenzie','MCM',1);
INSERT INTO oc_zone VALUES(2354,153,'Nelson','NSN',1);
INSERT INTO oc_zone VALUES(2355,153,'Northland','NTL',1);
INSERT INTO oc_zone VALUES(2356,153,'Otago','OTA',1);
INSERT INTO oc_zone VALUES(2357,153,'Southland','STL',1);
INSERT INTO oc_zone VALUES(2358,153,'Taranaki','TKI',1);
INSERT INTO oc_zone VALUES(2359,153,'Wellington','WGN',1);
INSERT INTO oc_zone VALUES(2360,153,'Waikato','WKO',1);
INSERT INTO oc_zone VALUES(2361,153,'Wairarapa','WAI',1);
INSERT INTO oc_zone VALUES(2362,153,'West Coast','WTC',1);
INSERT INTO oc_zone VALUES(2363,154,'Atlantico Norte','AN',1);
INSERT INTO oc_zone VALUES(2364,154,'Atlantico Sur','AS',1);
INSERT INTO oc_zone VALUES(2365,154,'Boaco','BO',1);
INSERT INTO oc_zone VALUES(2366,154,'Carazo','CA',1);
INSERT INTO oc_zone VALUES(2367,154,'Chinandega','CI',1);
INSERT INTO oc_zone VALUES(2368,154,'Chontales','CO',1);
INSERT INTO oc_zone VALUES(2369,154,'Esteli','ES',1);
INSERT INTO oc_zone VALUES(2370,154,'Granada','GR',1);
INSERT INTO oc_zone VALUES(2371,154,'Jinotega','JI',1);
INSERT INTO oc_zone VALUES(2372,154,'Leon','LE',1);
INSERT INTO oc_zone VALUES(2373,154,'Madriz','MD',1);
INSERT INTO oc_zone VALUES(2374,154,'Managua','MN',1);
INSERT INTO oc_zone VALUES(2375,154,'Masaya','MS',1);
INSERT INTO oc_zone VALUES(2376,154,'Matagalpa','MT',1);
INSERT INTO oc_zone VALUES(2377,154,'Nuevo Segovia','NS',1);
INSERT INTO oc_zone VALUES(2378,154,'Rio San Juan','RS',1);
INSERT INTO oc_zone VALUES(2379,154,'Rivas','RI',1);
INSERT INTO oc_zone VALUES(2380,155,'Agadez','AG',1);
INSERT INTO oc_zone VALUES(2381,155,'Diffa','DF',1);
INSERT INTO oc_zone VALUES(2382,155,'Dosso','DS',1);
INSERT INTO oc_zone VALUES(2383,155,'Maradi','MA',1);
INSERT INTO oc_zone VALUES(2384,155,'Niamey','NM',1);
INSERT INTO oc_zone VALUES(2385,155,'Tahoua','TH',1);
INSERT INTO oc_zone VALUES(2386,155,'Tillaberi','TL',1);
INSERT INTO oc_zone VALUES(2387,155,'Zinder','ZD',1);
INSERT INTO oc_zone VALUES(2388,156,'Abia','AB',1);
INSERT INTO oc_zone VALUES(2389,156,'Abuja Federal Capital Territory','CT',1);
INSERT INTO oc_zone VALUES(2390,156,'Adamawa','AD',1);
INSERT INTO oc_zone VALUES(2391,156,'Akwa Ibom','AK',1);
INSERT INTO oc_zone VALUES(2392,156,'Anambra','AN',1);
INSERT INTO oc_zone VALUES(2393,156,'Bauchi','BC',1);
INSERT INTO oc_zone VALUES(2394,156,'Bayelsa','BY',1);
INSERT INTO oc_zone VALUES(2395,156,'Benue','BN',1);
INSERT INTO oc_zone VALUES(2396,156,'Borno','BO',1);
INSERT INTO oc_zone VALUES(2397,156,'Cross River','CR',1);
INSERT INTO oc_zone VALUES(2398,156,'Delta','DE',1);
INSERT INTO oc_zone VALUES(2399,156,'Ebonyi','EB',1);
INSERT INTO oc_zone VALUES(2400,156,'Edo','ED',1);
INSERT INTO oc_zone VALUES(2401,156,'Ekiti','EK',1);
INSERT INTO oc_zone VALUES(2402,156,'Enugu','EN',1);
INSERT INTO oc_zone VALUES(2403,156,'Gombe','GO',1);
INSERT INTO oc_zone VALUES(2404,156,'Imo','IM',1);
INSERT INTO oc_zone VALUES(2405,156,'Jigawa','JI',1);
INSERT INTO oc_zone VALUES(2406,156,'Kaduna','KD',1);
INSERT INTO oc_zone VALUES(2407,156,'Kano','KN',1);
INSERT INTO oc_zone VALUES(2408,156,'Katsina','KT',1);
INSERT INTO oc_zone VALUES(2409,156,'Kebbi','KE',1);
INSERT INTO oc_zone VALUES(2410,156,'Kogi','KO',1);
INSERT INTO oc_zone VALUES(2411,156,'Kwara','KW',1);
INSERT INTO oc_zone VALUES(2412,156,'Lagos','LA',1);
INSERT INTO oc_zone VALUES(2413,156,'Nassarawa','NA',1);
INSERT INTO oc_zone VALUES(2414,156,'Niger','NI',1);
INSERT INTO oc_zone VALUES(2415,156,'Ogun','OG',1);
INSERT INTO oc_zone VALUES(2416,156,'Ondo','ONG',1);
INSERT INTO oc_zone VALUES(2417,156,'Osun','OS',1);
INSERT INTO oc_zone VALUES(2418,156,'Oyo','OY',1);
INSERT INTO oc_zone VALUES(2419,156,'Plateau','PL',1);
INSERT INTO oc_zone VALUES(2420,156,'Rivers','RI',1);
INSERT INTO oc_zone VALUES(2421,156,'Sokoto','SO',1);
INSERT INTO oc_zone VALUES(2422,156,'Taraba','TA',1);
INSERT INTO oc_zone VALUES(2423,156,'Yobe','YO',1);
INSERT INTO oc_zone VALUES(2424,156,'Zamfara','ZA',1);
INSERT INTO oc_zone VALUES(2425,159,'Northern Islands','N',1);
INSERT INTO oc_zone VALUES(2426,159,'Rota','R',1);
INSERT INTO oc_zone VALUES(2427,159,'Saipan','S',1);
INSERT INTO oc_zone VALUES(2428,159,'Tinian','T',1);
INSERT INTO oc_zone VALUES(2429,160,'Akershus','AK',1);
INSERT INTO oc_zone VALUES(2430,160,'Aust-Agder','AA',1);
INSERT INTO oc_zone VALUES(2431,160,'Buskerud','BU',1);
INSERT INTO oc_zone VALUES(2432,160,'Finnmark','FM',1);
INSERT INTO oc_zone VALUES(2433,160,'Hedmark','HM',1);
INSERT INTO oc_zone VALUES(2434,160,'Hordaland','HL',1);
INSERT INTO oc_zone VALUES(2435,160,'More og Romdal','MR',1);
INSERT INTO oc_zone VALUES(2436,160,'Nord-Trondelag','NT',1);
INSERT INTO oc_zone VALUES(2437,160,'Nordland','NL',1);
INSERT INTO oc_zone VALUES(2438,160,'Ostfold','OF',1);
INSERT INTO oc_zone VALUES(2439,160,'Oppland','OP',1);
INSERT INTO oc_zone VALUES(2440,160,'Oslo','OL',1);
INSERT INTO oc_zone VALUES(2441,160,'Rogaland','RL',1);
INSERT INTO oc_zone VALUES(2442,160,'Sor-Trondelag','ST',1);
INSERT INTO oc_zone VALUES(2443,160,'Sogn og Fjordane','SJ',1);
INSERT INTO oc_zone VALUES(2444,160,'Svalbard','SV',1);
INSERT INTO oc_zone VALUES(2445,160,'Telemark','TM',1);
INSERT INTO oc_zone VALUES(2446,160,'Troms','TR',1);
INSERT INTO oc_zone VALUES(2447,160,'Vest-Agder','VA',1);
INSERT INTO oc_zone VALUES(2448,160,'Vestfold','VF',1);
INSERT INTO oc_zone VALUES(2449,161,'Ad Dakhiliyah','DA',1);
INSERT INTO oc_zone VALUES(2450,161,'Al Batinah','BA',1);
INSERT INTO oc_zone VALUES(2451,161,'Al Wusta','WU',1);
INSERT INTO oc_zone VALUES(2452,161,'Ash Sharqiyah','SH',1);
INSERT INTO oc_zone VALUES(2453,161,'Az Zahirah','ZA',1);
INSERT INTO oc_zone VALUES(2454,161,'Masqat','MA',1);
INSERT INTO oc_zone VALUES(2455,161,'Musandam','MU',1);
INSERT INTO oc_zone VALUES(2456,161,'Zufar','ZU',1);
INSERT INTO oc_zone VALUES(2457,162,'Balochistan','B',1);
INSERT INTO oc_zone VALUES(2458,162,'Federally Administered Tribal Areas','T',1);
INSERT INTO oc_zone VALUES(2459,162,'Islamabad Capital Territory','I',1);
INSERT INTO oc_zone VALUES(2460,162,'North-West Frontier','N',1);
INSERT INTO oc_zone VALUES(2461,162,'Punjab','P',1);
INSERT INTO oc_zone VALUES(2462,162,'Sindh','S',1);
INSERT INTO oc_zone VALUES(2463,163,'Aimeliik','AM',1);
INSERT INTO oc_zone VALUES(2464,163,'Airai','AR',1);
INSERT INTO oc_zone VALUES(2465,163,'Angaur','AN',1);
INSERT INTO oc_zone VALUES(2466,163,'Hatohobei','HA',1);
INSERT INTO oc_zone VALUES(2467,163,'Kayangel','KA',1);
INSERT INTO oc_zone VALUES(2468,163,'Koror','KO',1);
INSERT INTO oc_zone VALUES(2469,163,'Melekeok','ME',1);
INSERT INTO oc_zone VALUES(2470,163,'Ngaraard','NA',1);
INSERT INTO oc_zone VALUES(2471,163,'Ngarchelong','NG',1);
INSERT INTO oc_zone VALUES(2472,163,'Ngardmau','ND',1);
INSERT INTO oc_zone VALUES(2473,163,'Ngatpang','NT',1);
INSERT INTO oc_zone VALUES(2474,163,'Ngchesar','NC',1);
INSERT INTO oc_zone VALUES(2475,163,'Ngeremlengui','NR',1);
INSERT INTO oc_zone VALUES(2476,163,'Ngiwal','NW',1);
INSERT INTO oc_zone VALUES(2477,163,'Peleliu','PE',1);
INSERT INTO oc_zone VALUES(2478,163,'Sonsorol','SO',1);
INSERT INTO oc_zone VALUES(2479,164,'Bocas del Toro','BT',1);
INSERT INTO oc_zone VALUES(2480,164,'Chiriqui','CH',1);
INSERT INTO oc_zone VALUES(2481,164,'Cocle','CC',1);
INSERT INTO oc_zone VALUES(2482,164,'Colon','CL',1);
INSERT INTO oc_zone VALUES(2483,164,'Darien','DA',1);
INSERT INTO oc_zone VALUES(2484,164,'Herrera','HE',1);
INSERT INTO oc_zone VALUES(2485,164,'Los Santos','LS',1);
INSERT INTO oc_zone VALUES(2486,164,'Panama','PA',1);
INSERT INTO oc_zone VALUES(2487,164,'San Blas','SB',1);
INSERT INTO oc_zone VALUES(2488,164,'Veraguas','VG',1);
INSERT INTO oc_zone VALUES(2489,165,'Bougainville','BV',1);
INSERT INTO oc_zone VALUES(2490,165,'Central','CE',1);
INSERT INTO oc_zone VALUES(2491,165,'Chimbu','CH',1);
INSERT INTO oc_zone VALUES(2492,165,'Eastern Highlands','EH',1);
INSERT INTO oc_zone VALUES(2493,165,'East New Britain','EB',1);
INSERT INTO oc_zone VALUES(2494,165,'East Sepik','ES',1);
INSERT INTO oc_zone VALUES(2495,165,'Enga','EN',1);
INSERT INTO oc_zone VALUES(2496,165,'Gulf','GU',1);
INSERT INTO oc_zone VALUES(2497,165,'Madang','MD',1);
INSERT INTO oc_zone VALUES(2498,165,'Manus','MN',1);
INSERT INTO oc_zone VALUES(2499,165,'Milne Bay','MB',1);
INSERT INTO oc_zone VALUES(2500,165,'Morobe','MR',1);
INSERT INTO oc_zone VALUES(2501,165,'National Capital','NC',1);
INSERT INTO oc_zone VALUES(2502,165,'New Ireland','NI',1);
INSERT INTO oc_zone VALUES(2503,165,'Northern','NO',1);
INSERT INTO oc_zone VALUES(2504,165,'Sandaun','SA',1);
INSERT INTO oc_zone VALUES(2505,165,'Southern Highlands','SH',1);
INSERT INTO oc_zone VALUES(2506,165,'Western','WE',1);
INSERT INTO oc_zone VALUES(2507,165,'Western Highlands','WH',1);
INSERT INTO oc_zone VALUES(2508,165,'West New Britain','WB',1);
INSERT INTO oc_zone VALUES(2509,166,'Alto Paraguay','AG',1);
INSERT INTO oc_zone VALUES(2510,166,'Alto Parana','AN',1);
INSERT INTO oc_zone VALUES(2511,166,'Amambay','AM',1);
INSERT INTO oc_zone VALUES(2512,166,'Asuncion','AS',1);
INSERT INTO oc_zone VALUES(2513,166,'Boqueron','BO',1);
INSERT INTO oc_zone VALUES(2514,166,'Caaguazu','CG',1);
INSERT INTO oc_zone VALUES(2515,166,'Caazapa','CZ',1);
INSERT INTO oc_zone VALUES(2516,166,'Canindeyu','CN',1);
INSERT INTO oc_zone VALUES(2517,166,'Central','CE',1);
INSERT INTO oc_zone VALUES(2518,166,'Concepcion','CC',1);
INSERT INTO oc_zone VALUES(2519,166,'Cordillera','CD',1);
INSERT INTO oc_zone VALUES(2520,166,'Guaira','GU',1);
INSERT INTO oc_zone VALUES(2521,166,'Itapua','IT',1);
INSERT INTO oc_zone VALUES(2522,166,'Misiones','MI',1);
INSERT INTO oc_zone VALUES(2523,166,'Neembucu','NE',1);
INSERT INTO oc_zone VALUES(2524,166,'Paraguari','PA',1);
INSERT INTO oc_zone VALUES(2525,166,'Presidente Hayes','PH',1);
INSERT INTO oc_zone VALUES(2526,166,'San Pedro','SP',1);
INSERT INTO oc_zone VALUES(2527,167,'Amazonas','AM',1);
INSERT INTO oc_zone VALUES(2528,167,'Ancash','AN',1);
INSERT INTO oc_zone VALUES(2529,167,'Apurimac','AP',1);
INSERT INTO oc_zone VALUES(2530,167,'Arequipa','AR',1);
INSERT INTO oc_zone VALUES(2531,167,'Ayacucho','AY',1);
INSERT INTO oc_zone VALUES(2532,167,'Cajamarca','CJ',1);
INSERT INTO oc_zone VALUES(2533,167,'Callao','CL',1);
INSERT INTO oc_zone VALUES(2534,167,'Cusco','CU',1);
INSERT INTO oc_zone VALUES(2535,167,'Huancavelica','HV',1);
INSERT INTO oc_zone VALUES(2536,167,'Huanuco','HO',1);
INSERT INTO oc_zone VALUES(2537,167,'Ica','IC',1);
INSERT INTO oc_zone VALUES(2538,167,'Junin','JU',1);
INSERT INTO oc_zone VALUES(2539,167,'La Libertad','LD',1);
INSERT INTO oc_zone VALUES(2540,167,'Lambayeque','LY',1);
INSERT INTO oc_zone VALUES(2541,167,'Lima','LI',1);
INSERT INTO oc_zone VALUES(2542,167,'Loreto','LO',1);
INSERT INTO oc_zone VALUES(2543,167,'Madre de Dios','MD',1);
INSERT INTO oc_zone VALUES(2544,167,'Moquegua','MO',1);
INSERT INTO oc_zone VALUES(2545,167,'Pasco','PA',1);
INSERT INTO oc_zone VALUES(2546,167,'Piura','PI',1);
INSERT INTO oc_zone VALUES(2547,167,'Puno','PU',1);
INSERT INTO oc_zone VALUES(2548,167,'San Martin','SM',1);
INSERT INTO oc_zone VALUES(2549,167,'Tacna','TA',1);
INSERT INTO oc_zone VALUES(2550,167,'Tumbes','TU',1);
INSERT INTO oc_zone VALUES(2551,167,'Ucayali','UC',1);
INSERT INTO oc_zone VALUES(2552,168,'Abra','ABR',1);
INSERT INTO oc_zone VALUES(2553,168,'Agusan del Norte','ANO',1);
INSERT INTO oc_zone VALUES(2554,168,'Agusan del Sur','ASU',1);
INSERT INTO oc_zone VALUES(2555,168,'Aklan','AKL',1);
INSERT INTO oc_zone VALUES(2556,168,'Albay','ALB',1);
INSERT INTO oc_zone VALUES(2557,168,'Antique','ANT',1);
INSERT INTO oc_zone VALUES(2558,168,'Apayao','APY',1);
INSERT INTO oc_zone VALUES(2559,168,'Aurora','AUR',1);
INSERT INTO oc_zone VALUES(2560,168,'Basilan','BAS',1);
INSERT INTO oc_zone VALUES(2561,168,'Bataan','BTA',1);
INSERT INTO oc_zone VALUES(2562,168,'Batanes','BTE',1);
INSERT INTO oc_zone VALUES(2563,168,'Batangas','BTG',1);
INSERT INTO oc_zone VALUES(2564,168,'Biliran','BLR',1);
INSERT INTO oc_zone VALUES(2565,168,'Benguet','BEN',1);
INSERT INTO oc_zone VALUES(2566,168,'Bohol','BOL',1);
INSERT INTO oc_zone VALUES(2567,168,'Bukidnon','BUK',1);
INSERT INTO oc_zone VALUES(2568,168,'Bulacan','BUL',1);
INSERT INTO oc_zone VALUES(2569,168,'Cagayan','CAG',1);
INSERT INTO oc_zone VALUES(2570,168,'Camarines Norte','CNO',1);
INSERT INTO oc_zone VALUES(2571,168,'Camarines Sur','CSU',1);
INSERT INTO oc_zone VALUES(2572,168,'Camiguin','CAM',1);
INSERT INTO oc_zone VALUES(2573,168,'Capiz','CAP',1);
INSERT INTO oc_zone VALUES(2574,168,'Catanduanes','CAT',1);
INSERT INTO oc_zone VALUES(2575,168,'Cavite','CAV',1);
INSERT INTO oc_zone VALUES(2576,168,'Cebu','CEB',1);
INSERT INTO oc_zone VALUES(2577,168,'Compostela','CMP',1);
INSERT INTO oc_zone VALUES(2578,168,'Davao del Norte','DNO',1);
INSERT INTO oc_zone VALUES(2579,168,'Davao del Sur','DSU',1);
INSERT INTO oc_zone VALUES(2580,168,'Davao Oriental','DOR',1);
INSERT INTO oc_zone VALUES(2581,168,'Eastern Samar','ESA',1);
INSERT INTO oc_zone VALUES(2582,168,'Guimaras','GUI',1);
INSERT INTO oc_zone VALUES(2583,168,'Ifugao','IFU',1);
INSERT INTO oc_zone VALUES(2584,168,'Ilocos Norte','INO',1);
INSERT INTO oc_zone VALUES(2585,168,'Ilocos Sur','ISU',1);
INSERT INTO oc_zone VALUES(2586,168,'Iloilo','ILO',1);
INSERT INTO oc_zone VALUES(2587,168,'Isabela','ISA',1);
INSERT INTO oc_zone VALUES(2588,168,'Kalinga','KAL',1);
INSERT INTO oc_zone VALUES(2589,168,'Laguna','LAG',1);
INSERT INTO oc_zone VALUES(2590,168,'Lanao del Norte','LNO',1);
INSERT INTO oc_zone VALUES(2591,168,'Lanao del Sur','LSU',1);
INSERT INTO oc_zone VALUES(2592,168,'La Union','UNI',1);
INSERT INTO oc_zone VALUES(2593,168,'Leyte','LEY',1);
INSERT INTO oc_zone VALUES(2594,168,'Maguindanao','MAG',1);
INSERT INTO oc_zone VALUES(2595,168,'Marinduque','MRN',1);
INSERT INTO oc_zone VALUES(2596,168,'Masbate','MSB',1);
INSERT INTO oc_zone VALUES(2597,168,'Mindoro Occidental','MIC',1);
INSERT INTO oc_zone VALUES(2598,168,'Mindoro Oriental','MIR',1);
INSERT INTO oc_zone VALUES(2599,168,'Misamis Occidental','MSC',1);
INSERT INTO oc_zone VALUES(2600,168,'Misamis Oriental','MOR',1);
INSERT INTO oc_zone VALUES(2601,168,'Mountain','MOP',1);
INSERT INTO oc_zone VALUES(2602,168,'Negros Occidental','NOC',1);
INSERT INTO oc_zone VALUES(2603,168,'Negros Oriental','NOR',1);
INSERT INTO oc_zone VALUES(2604,168,'North Cotabato','NCT',1);
INSERT INTO oc_zone VALUES(2605,168,'Northern Samar','NSM',1);
INSERT INTO oc_zone VALUES(2606,168,'Nueva Ecija','NEC',1);
INSERT INTO oc_zone VALUES(2607,168,'Nueva Vizcaya','NVZ',1);
INSERT INTO oc_zone VALUES(2608,168,'Palawan','PLW',1);
INSERT INTO oc_zone VALUES(2609,168,'Pampanga','PMP',1);
INSERT INTO oc_zone VALUES(2610,168,'Pangasinan','PNG',1);
INSERT INTO oc_zone VALUES(2611,168,'Quezon','QZN',1);
INSERT INTO oc_zone VALUES(2612,168,'Quirino','QRN',1);
INSERT INTO oc_zone VALUES(2613,168,'Rizal','RIZ',1);
INSERT INTO oc_zone VALUES(2614,168,'Romblon','ROM',1);
INSERT INTO oc_zone VALUES(2615,168,'Samar','SMR',1);
INSERT INTO oc_zone VALUES(2616,168,'Sarangani','SRG',1);
INSERT INTO oc_zone VALUES(2617,168,'Siquijor','SQJ',1);
INSERT INTO oc_zone VALUES(2618,168,'Sorsogon','SRS',1);
INSERT INTO oc_zone VALUES(2619,168,'South Cotabato','SCO',1);
INSERT INTO oc_zone VALUES(2620,168,'Southern Leyte','SLE',1);
INSERT INTO oc_zone VALUES(2621,168,'Sultan Kudarat','SKU',1);
INSERT INTO oc_zone VALUES(2622,168,'Sulu','SLU',1);
INSERT INTO oc_zone VALUES(2623,168,'Surigao del Norte','SNO',1);
INSERT INTO oc_zone VALUES(2624,168,'Surigao del Sur','SSU',1);
INSERT INTO oc_zone VALUES(2625,168,'Tarlac','TAR',1);
INSERT INTO oc_zone VALUES(2626,168,'Tawi-Tawi','TAW',1);
INSERT INTO oc_zone VALUES(2627,168,'Zambales','ZBL',1);
INSERT INTO oc_zone VALUES(2628,168,'Zamboanga del Norte','ZNO',1);
INSERT INTO oc_zone VALUES(2629,168,'Zamboanga del Sur','ZSU',1);
INSERT INTO oc_zone VALUES(2630,168,'Zamboanga Sibugay','ZSI',1);
INSERT INTO oc_zone VALUES(2631,170,'Dolnoslaskie','DO',1);
INSERT INTO oc_zone VALUES(2632,170,'Kujawsko-Pomorskie','KP',1);
INSERT INTO oc_zone VALUES(2633,170,'Lodzkie','LO',1);
INSERT INTO oc_zone VALUES(2634,170,'Lubelskie','LL',1);
INSERT INTO oc_zone VALUES(2635,170,'Lubuskie','LU',1);
INSERT INTO oc_zone VALUES(2636,170,'Malopolskie','ML',1);
INSERT INTO oc_zone VALUES(2637,170,'Mazowieckie','MZ',1);
INSERT INTO oc_zone VALUES(2638,170,'Opolskie','OP',1);
INSERT INTO oc_zone VALUES(2639,170,'Podkarpackie','PP',1);
INSERT INTO oc_zone VALUES(2640,170,'Podlaskie','PL',1);
INSERT INTO oc_zone VALUES(2641,170,'Pomorskie','PM',1);
INSERT INTO oc_zone VALUES(2642,170,'Slaskie','SL',1);
INSERT INTO oc_zone VALUES(2643,170,'Swietokrzyskie','SW',1);
INSERT INTO oc_zone VALUES(2644,170,'Warminsko-Mazurskie','WM',1);
INSERT INTO oc_zone VALUES(2645,170,'Wielkopolskie','WP',1);
INSERT INTO oc_zone VALUES(2646,170,'Zachodniopomorskie','ZA',1);
INSERT INTO oc_zone VALUES(2647,198,'Saint Pierre','P',1);
INSERT INTO oc_zone VALUES(2648,198,'Miquelon','M',1);
INSERT INTO oc_zone VALUES(2649,171,'A&ccedil;ores','AC',1);
INSERT INTO oc_zone VALUES(2650,171,'Aveiro','AV',1);
INSERT INTO oc_zone VALUES(2651,171,'Beja','BE',1);
INSERT INTO oc_zone VALUES(2652,171,'Braga','BR',1);
INSERT INTO oc_zone VALUES(2653,171,'Bragan&ccedil;a','BA',1);
INSERT INTO oc_zone VALUES(2654,171,'Castelo Branco','CB',1);
INSERT INTO oc_zone VALUES(2655,171,'Coimbra','CO',1);
INSERT INTO oc_zone VALUES(2656,171,'&Eacute;vora','EV',1);
INSERT INTO oc_zone VALUES(2657,171,'Faro','FA',1);
INSERT INTO oc_zone VALUES(2658,171,'Guarda','GU',1);
INSERT INTO oc_zone VALUES(2659,171,'Leiria','LE',1);
INSERT INTO oc_zone VALUES(2660,171,'Lisboa','LI',1);
INSERT INTO oc_zone VALUES(2661,171,'Madeira','ME',1);
INSERT INTO oc_zone VALUES(2662,171,'Portalegre','PO',1);
INSERT INTO oc_zone VALUES(2663,171,'Porto','PR',1);
INSERT INTO oc_zone VALUES(2664,171,'Santar&eacute;m','SA',1);
INSERT INTO oc_zone VALUES(2665,171,'Set&uacute;bal','SE',1);
INSERT INTO oc_zone VALUES(2666,171,'Viana do Castelo','VC',1);
INSERT INTO oc_zone VALUES(2667,171,'Vila Real','VR',1);
INSERT INTO oc_zone VALUES(2668,171,'Viseu','VI',1);
INSERT INTO oc_zone VALUES(2669,173,'Ad Dawhah','DW',1);
INSERT INTO oc_zone VALUES(2670,173,'Al Ghuwayriyah','GW',1);
INSERT INTO oc_zone VALUES(2671,173,'Al Jumayliyah','JM',1);
INSERT INTO oc_zone VALUES(2672,173,'Al Khawr','KR',1);
INSERT INTO oc_zone VALUES(2673,173,'Al Wakrah','WK',1);
INSERT INTO oc_zone VALUES(2674,173,'Ar Rayyan','RN',1);
INSERT INTO oc_zone VALUES(2675,173,'Jarayan al Batinah','JB',1);
INSERT INTO oc_zone VALUES(2676,173,'Madinat ash Shamal','MS',1);
INSERT INTO oc_zone VALUES(2677,173,'Umm Sa\'id','UD',1);
INSERT INTO oc_zone VALUES(2678,173,'Umm Salal','UL',1);
INSERT INTO oc_zone VALUES(2679,175,'Alba','AB',1);
INSERT INTO oc_zone VALUES(2680,175,'Arad','AR',1);
INSERT INTO oc_zone VALUES(2681,175,'Arges','AG',1);
INSERT INTO oc_zone VALUES(2682,175,'Bacau','BC',1);
INSERT INTO oc_zone VALUES(2683,175,'Bihor','BH',1);
INSERT INTO oc_zone VALUES(2684,175,'Bistrita-Nasaud','BN',1);
INSERT INTO oc_zone VALUES(2685,175,'Botosani','BT',1);
INSERT INTO oc_zone VALUES(2686,175,'Brasov','BV',1);
INSERT INTO oc_zone VALUES(2687,175,'Braila','BR',1);
INSERT INTO oc_zone VALUES(2688,175,'Bucuresti','B',1);
INSERT INTO oc_zone VALUES(2689,175,'Buzau','BZ',1);
INSERT INTO oc_zone VALUES(2690,175,'Caras-Severin','CS',1);
INSERT INTO oc_zone VALUES(2691,175,'Calarasi','CL',1);
INSERT INTO oc_zone VALUES(2692,175,'Cluj','CJ',1);
INSERT INTO oc_zone VALUES(2693,175,'Constanta','CT',1);
INSERT INTO oc_zone VALUES(2694,175,'Covasna','CV',1);
INSERT INTO oc_zone VALUES(2695,175,'Dimbovita','DB',1);
INSERT INTO oc_zone VALUES(2696,175,'Dolj','DJ',1);
INSERT INTO oc_zone VALUES(2697,175,'Galati','GL',1);
INSERT INTO oc_zone VALUES(2698,175,'Giurgiu','GR',1);
INSERT INTO oc_zone VALUES(2699,175,'Gorj','GJ',1);
INSERT INTO oc_zone VALUES(2700,175,'Harghita','HR',1);
INSERT INTO oc_zone VALUES(2701,175,'Hunedoara','HD',1);
INSERT INTO oc_zone VALUES(2702,175,'Ialomita','IL',1);
INSERT INTO oc_zone VALUES(2703,175,'Iasi','IS',1);
INSERT INTO oc_zone VALUES(2704,175,'Ilfov','IF',1);
INSERT INTO oc_zone VALUES(2705,175,'Maramures','MM',1);
INSERT INTO oc_zone VALUES(2706,175,'Mehedinti','MH',1);
INSERT INTO oc_zone VALUES(2707,175,'Mures','MS',1);
INSERT INTO oc_zone VALUES(2708,175,'Neamt','NT',1);
INSERT INTO oc_zone VALUES(2709,175,'Olt','OT',1);
INSERT INTO oc_zone VALUES(2710,175,'Prahova','PH',1);
INSERT INTO oc_zone VALUES(2711,175,'Satu-Mare','SM',1);
INSERT INTO oc_zone VALUES(2712,175,'Salaj','SJ',1);
INSERT INTO oc_zone VALUES(2713,175,'Sibiu','SB',1);
INSERT INTO oc_zone VALUES(2714,175,'Suceava','SV',1);
INSERT INTO oc_zone VALUES(2715,175,'Teleorman','TR',1);
INSERT INTO oc_zone VALUES(2716,175,'Timis','TM',1);
INSERT INTO oc_zone VALUES(2717,175,'Tulcea','TL',1);
INSERT INTO oc_zone VALUES(2718,175,'Vaslui','VS',1);
INSERT INTO oc_zone VALUES(2719,175,'Valcea','VL',1);
INSERT INTO oc_zone VALUES(2720,175,'Vrancea','VN',1);
INSERT INTO oc_zone VALUES(2721,176,'Abakan','AB',1);
INSERT INTO oc_zone VALUES(2722,176,'Aginskoye','AG',1);
INSERT INTO oc_zone VALUES(2723,176,'Anadyr','AN',1);
INSERT INTO oc_zone VALUES(2724,176,'Arkahangelsk','AR',1);
INSERT INTO oc_zone VALUES(2725,176,'Astrakhan','AS',1);
INSERT INTO oc_zone VALUES(2726,176,'Barnaul','BA',1);
INSERT INTO oc_zone VALUES(2727,176,'Belgorod','BE',1);
INSERT INTO oc_zone VALUES(2728,176,'Birobidzhan','BI',1);
INSERT INTO oc_zone VALUES(2729,176,'Blagoveshchensk','BL',1);
INSERT INTO oc_zone VALUES(2730,176,'Bryansk','BR',1);
INSERT INTO oc_zone VALUES(2731,176,'Cheboksary','CH',1);
INSERT INTO oc_zone VALUES(2732,176,'Chelyabinsk','CL',1);
INSERT INTO oc_zone VALUES(2733,176,'Cherkessk','CR',1);
INSERT INTO oc_zone VALUES(2734,176,'Chita','CI',1);
INSERT INTO oc_zone VALUES(2735,176,'Dudinka','DU',1);
INSERT INTO oc_zone VALUES(2736,176,'Elista','EL',1);
INSERT INTO oc_zone VALUES(2738,176,'Gorno-Altaysk','GA',1);
INSERT INTO oc_zone VALUES(2739,176,'Groznyy','GR',1);
INSERT INTO oc_zone VALUES(2740,176,'Irkutsk','IR',1);
INSERT INTO oc_zone VALUES(2741,176,'Ivanovo','IV',1);
INSERT INTO oc_zone VALUES(2742,176,'Izhevsk','IZ',1);
INSERT INTO oc_zone VALUES(2743,176,'Kalinigrad','KA',1);
INSERT INTO oc_zone VALUES(2744,176,'Kaluga','KL',1);
INSERT INTO oc_zone VALUES(2745,176,'Kasnodar','KS',1);
INSERT INTO oc_zone VALUES(2746,176,'Kazan','KZ',1);
INSERT INTO oc_zone VALUES(2747,176,'Kemerovo','KE',1);
INSERT INTO oc_zone VALUES(2748,176,'Khabarovsk','KH',1);
INSERT INTO oc_zone VALUES(2749,176,'Khanty-Mansiysk','KM',1);
INSERT INTO oc_zone VALUES(2750,176,'Kostroma','KO',1);
INSERT INTO oc_zone VALUES(2751,176,'Krasnodar','KR',1);
INSERT INTO oc_zone VALUES(2752,176,'Krasnoyarsk','KN',1);
INSERT INTO oc_zone VALUES(2753,176,'Kudymkar','KU',1);
INSERT INTO oc_zone VALUES(2754,176,'Kurgan','KG',1);
INSERT INTO oc_zone VALUES(2755,176,'Kursk','KK',1);
INSERT INTO oc_zone VALUES(2756,176,'Kyzyl','KY',1);
INSERT INTO oc_zone VALUES(2757,176,'Lipetsk','LI',1);
INSERT INTO oc_zone VALUES(2758,176,'Magadan','MA',1);
INSERT INTO oc_zone VALUES(2759,176,'Makhachkala','MK',1);
INSERT INTO oc_zone VALUES(2760,176,'Maykop','MY',1);
INSERT INTO oc_zone VALUES(2761,176,'Moscow','MO',1);
INSERT INTO oc_zone VALUES(2762,176,'Murmansk','MU',1);
INSERT INTO oc_zone VALUES(2763,176,'Nalchik','NA',1);
INSERT INTO oc_zone VALUES(2764,176,'Naryan Mar','NR',1);
INSERT INTO oc_zone VALUES(2765,176,'Nazran','NZ',1);
INSERT INTO oc_zone VALUES(2766,176,'Nizhniy Novgorod','NI',1);
INSERT INTO oc_zone VALUES(2767,176,'Novgorod','NO',1);
INSERT INTO oc_zone VALUES(2768,176,'Novosibirsk','NV',1);
INSERT INTO oc_zone VALUES(2769,176,'Omsk','OM',1);
INSERT INTO oc_zone VALUES(2770,176,'Orel','OR',1);
INSERT INTO oc_zone VALUES(2771,176,'Orenburg','OE',1);
INSERT INTO oc_zone VALUES(2772,176,'Palana','PA',1);
INSERT INTO oc_zone VALUES(2773,176,'Penza','PE',1);
INSERT INTO oc_zone VALUES(2774,176,'Perm','PR',1);
INSERT INTO oc_zone VALUES(2775,176,'Petropavlovsk-Kamchatskiy','PK',1);
INSERT INTO oc_zone VALUES(2776,176,'Petrozavodsk','PT',1);
INSERT INTO oc_zone VALUES(2777,176,'Pskov','PS',1);
INSERT INTO oc_zone VALUES(2778,176,'Rostov-na-Donu','RO',1);
INSERT INTO oc_zone VALUES(2779,176,'Ryazan','RY',1);
INSERT INTO oc_zone VALUES(2780,176,'Salekhard','SL',1);
INSERT INTO oc_zone VALUES(2781,176,'Samara','SA',1);
INSERT INTO oc_zone VALUES(2782,176,'Saransk','SR',1);
INSERT INTO oc_zone VALUES(2783,176,'Saratov','SV',1);
INSERT INTO oc_zone VALUES(2784,176,'Smolensk','SM',1);
INSERT INTO oc_zone VALUES(2785,176,'St. Petersburg','SP',1);
INSERT INTO oc_zone VALUES(2786,176,'Stavropol','ST',1);
INSERT INTO oc_zone VALUES(2787,176,'Syktyvkar','SY',1);
INSERT INTO oc_zone VALUES(2788,176,'Tambov','TA',1);
INSERT INTO oc_zone VALUES(2789,176,'Tomsk','TO',1);
INSERT INTO oc_zone VALUES(2790,176,'Tula','TU',1);
INSERT INTO oc_zone VALUES(2791,176,'Tura','TR',1);
INSERT INTO oc_zone VALUES(2792,176,'Tver','TV',1);
INSERT INTO oc_zone VALUES(2793,176,'Tyumen','TY',1);
INSERT INTO oc_zone VALUES(2794,176,'Ufa','UF',1);
INSERT INTO oc_zone VALUES(2795,176,'Ul\'yanovsk','UL',1);
INSERT INTO oc_zone VALUES(2796,176,'Ulan-Ude','UU',1);
INSERT INTO oc_zone VALUES(2797,176,'Ust\'-Ordynskiy','US',1);
INSERT INTO oc_zone VALUES(2798,176,'Vladikavkaz','VL',1);
INSERT INTO oc_zone VALUES(2799,176,'Vladimir','VA',1);
INSERT INTO oc_zone VALUES(2800,176,'Vladivostok','VV',1);
INSERT INTO oc_zone VALUES(2801,176,'Volgograd','VG',1);
INSERT INTO oc_zone VALUES(2802,176,'Vologda','VD',1);
INSERT INTO oc_zone VALUES(2803,176,'Voronezh','VO',1);
INSERT INTO oc_zone VALUES(2804,176,'Vyatka','VY',1);
INSERT INTO oc_zone VALUES(2805,176,'Yakutsk','YA',1);
INSERT INTO oc_zone VALUES(2806,176,'Yaroslavl','YR',1);
INSERT INTO oc_zone VALUES(2807,176,'Yekaterinburg','YE',1);
INSERT INTO oc_zone VALUES(2808,176,'Yoshkar-Ola','YO',1);
INSERT INTO oc_zone VALUES(2809,177,'Butare','BU',1);
INSERT INTO oc_zone VALUES(2810,177,'Byumba','BY',1);
INSERT INTO oc_zone VALUES(2811,177,'Cyangugu','CY',1);
INSERT INTO oc_zone VALUES(2812,177,'Gikongoro','GK',1);
INSERT INTO oc_zone VALUES(2813,177,'Gisenyi','GS',1);
INSERT INTO oc_zone VALUES(2814,177,'Gitarama','GT',1);
INSERT INTO oc_zone VALUES(2815,177,'Kibungo','KG',1);
INSERT INTO oc_zone VALUES(2816,177,'Kibuye','KY',1);
INSERT INTO oc_zone VALUES(2817,177,'Kigali Rurale','KR',1);
INSERT INTO oc_zone VALUES(2818,177,'Kigali-ville','KV',1);
INSERT INTO oc_zone VALUES(2819,177,'Ruhengeri','RU',1);
INSERT INTO oc_zone VALUES(2820,177,'Umutara','UM',1);
INSERT INTO oc_zone VALUES(2821,178,'Christ Church Nichola Town','CCN',1);
INSERT INTO oc_zone VALUES(2822,178,'Saint Anne Sandy Point','SAS',1);
INSERT INTO oc_zone VALUES(2823,178,'Saint George Basseterre','SGB',1);
INSERT INTO oc_zone VALUES(2824,178,'Saint George Gingerland','SGG',1);
INSERT INTO oc_zone VALUES(2825,178,'Saint James Windward','SJW',1);
INSERT INTO oc_zone VALUES(2826,178,'Saint John Capesterre','SJC',1);
INSERT INTO oc_zone VALUES(2827,178,'Saint John Figtree','SJF',1);
INSERT INTO oc_zone VALUES(2828,178,'Saint Mary Cayon','SMC',1);
INSERT INTO oc_zone VALUES(2829,178,'Saint Paul Capesterre','CAP',1);
INSERT INTO oc_zone VALUES(2830,178,'Saint Paul Charlestown','CHA',1);
INSERT INTO oc_zone VALUES(2831,178,'Saint Peter Basseterre','SPB',1);
INSERT INTO oc_zone VALUES(2832,178,'Saint Thomas Lowland','STL',1);
INSERT INTO oc_zone VALUES(2833,178,'Saint Thomas Middle Island','STM',1);
INSERT INTO oc_zone VALUES(2834,178,'Trinity Palmetto Point','TPP',1);
INSERT INTO oc_zone VALUES(2835,179,'Anse-la-Raye','AR',1);
INSERT INTO oc_zone VALUES(2836,179,'Castries','CA',1);
INSERT INTO oc_zone VALUES(2837,179,'Choiseul','CH',1);
INSERT INTO oc_zone VALUES(2838,179,'Dauphin','DA',1);
INSERT INTO oc_zone VALUES(2839,179,'Dennery','DE',1);
INSERT INTO oc_zone VALUES(2840,179,'Gros-Islet','GI',1);
INSERT INTO oc_zone VALUES(2841,179,'Laborie','LA',1);
INSERT INTO oc_zone VALUES(2842,179,'Micoud','MI',1);
INSERT INTO oc_zone VALUES(2843,179,'Praslin','PR',1);
INSERT INTO oc_zone VALUES(2844,179,'Soufriere','SO',1);
INSERT INTO oc_zone VALUES(2845,179,'Vieux-Fort','VF',1);
INSERT INTO oc_zone VALUES(2846,180,'Charlotte','C',1);
INSERT INTO oc_zone VALUES(2847,180,'Grenadines','R',1);
INSERT INTO oc_zone VALUES(2848,180,'Saint Andrew','A',1);
INSERT INTO oc_zone VALUES(2849,180,'Saint David','D',1);
INSERT INTO oc_zone VALUES(2850,180,'Saint George','G',1);
INSERT INTO oc_zone VALUES(2851,180,'Saint Patrick','P',1);
INSERT INTO oc_zone VALUES(2852,181,'A\'ana','AN',1);
INSERT INTO oc_zone VALUES(2853,181,'Aiga-i-le-Tai','AI',1);
INSERT INTO oc_zone VALUES(2854,181,'Atua','AT',1);
INSERT INTO oc_zone VALUES(2855,181,'Fa\'asaleleaga','FA',1);
INSERT INTO oc_zone VALUES(2856,181,'Gaga\'emauga','GE',1);
INSERT INTO oc_zone VALUES(2857,181,'Gagaifomauga','GF',1);
INSERT INTO oc_zone VALUES(2858,181,'Palauli','PA',1);
INSERT INTO oc_zone VALUES(2859,181,'Satupa\'itea','SA',1);
INSERT INTO oc_zone VALUES(2860,181,'Tuamasaga','TU',1);
INSERT INTO oc_zone VALUES(2861,181,'Va\'a-o-Fonoti','VF',1);
INSERT INTO oc_zone VALUES(2862,181,'Vaisigano','VS',1);
INSERT INTO oc_zone VALUES(2863,182,'Acquaviva','AC',1);
INSERT INTO oc_zone VALUES(2864,182,'Borgo Maggiore','BM',1);
INSERT INTO oc_zone VALUES(2865,182,'Chiesanuova','CH',1);
INSERT INTO oc_zone VALUES(2866,182,'Domagnano','DO',1);
INSERT INTO oc_zone VALUES(2867,182,'Faetano','FA',1);
INSERT INTO oc_zone VALUES(2868,182,'Fiorentino','FI',1);
INSERT INTO oc_zone VALUES(2869,182,'Montegiardino','MO',1);
INSERT INTO oc_zone VALUES(2870,182,'Citta di San Marino','SM',1);
INSERT INTO oc_zone VALUES(2871,182,'Serravalle','SE',1);
INSERT INTO oc_zone VALUES(2872,183,'Sao Tome','S',1);
INSERT INTO oc_zone VALUES(2873,183,'Principe','P',1);
INSERT INTO oc_zone VALUES(2874,184,'Al Bahah','BH',1);
INSERT INTO oc_zone VALUES(2875,184,'Al Hudud ash Shamaliyah','HS',1);
INSERT INTO oc_zone VALUES(2876,184,'Al Jawf','JF',1);
INSERT INTO oc_zone VALUES(2877,184,'Al Madinah','MD',1);
INSERT INTO oc_zone VALUES(2878,184,'Al Qasim','QS',1);
INSERT INTO oc_zone VALUES(2879,184,'Ar Riyad','RD',1);
INSERT INTO oc_zone VALUES(2880,184,'Ash Sharqiyah (Eastern)','AQ',1);
INSERT INTO oc_zone VALUES(2881,184,'\'Asir','AS',1);
INSERT INTO oc_zone VALUES(2882,184,'Ha\'il','HL',1);
INSERT INTO oc_zone VALUES(2883,184,'Jizan','JZ',1);
INSERT INTO oc_zone VALUES(2884,184,'Makkah','ML',1);
INSERT INTO oc_zone VALUES(2885,184,'Najran','NR',1);
INSERT INTO oc_zone VALUES(2886,184,'Tabuk','TB',1);
INSERT INTO oc_zone VALUES(2887,185,'Dakar','DA',1);
INSERT INTO oc_zone VALUES(2888,185,'Diourbel','DI',1);
INSERT INTO oc_zone VALUES(2889,185,'Fatick','FA',1);
INSERT INTO oc_zone VALUES(2890,185,'Kaolack','KA',1);
INSERT INTO oc_zone VALUES(2891,185,'Kolda','KO',1);
INSERT INTO oc_zone VALUES(2892,185,'Louga','LO',1);
INSERT INTO oc_zone VALUES(2893,185,'Matam','MA',1);
INSERT INTO oc_zone VALUES(2894,185,'Saint-Louis','SL',1);
INSERT INTO oc_zone VALUES(2895,185,'Tambacounda','TA',1);
INSERT INTO oc_zone VALUES(2896,185,'Thies','TH',1);
INSERT INTO oc_zone VALUES(2897,185,'Ziguinchor','ZI',1);
INSERT INTO oc_zone VALUES(2898,186,'Anse aux Pins','AP',1);
INSERT INTO oc_zone VALUES(2899,186,'Anse Boileau','AB',1);
INSERT INTO oc_zone VALUES(2900,186,'Anse Etoile','AE',1);
INSERT INTO oc_zone VALUES(2901,186,'Anse Louis','AL',1);
INSERT INTO oc_zone VALUES(2902,186,'Anse Royale','AR',1);
INSERT INTO oc_zone VALUES(2903,186,'Baie Lazare','BL',1);
INSERT INTO oc_zone VALUES(2904,186,'Baie Sainte Anne','BS',1);
INSERT INTO oc_zone VALUES(2905,186,'Beau Vallon','BV',1);
INSERT INTO oc_zone VALUES(2906,186,'Bel Air','BA',1);
INSERT INTO oc_zone VALUES(2907,186,'Bel Ombre','BO',1);
INSERT INTO oc_zone VALUES(2908,186,'Cascade','CA',1);
INSERT INTO oc_zone VALUES(2909,186,'Glacis','GL',1);
INSERT INTO oc_zone VALUES(2910,186,'Grand\' Anse (on Mahe)','GM',1);
INSERT INTO oc_zone VALUES(2911,186,'Grand\' Anse (on Praslin)','GP',1);
INSERT INTO oc_zone VALUES(2912,186,'La Digue','DG',1);
INSERT INTO oc_zone VALUES(2913,186,'La Riviere Anglaise','RA',1);
INSERT INTO oc_zone VALUES(2914,186,'Mont Buxton','MB',1);
INSERT INTO oc_zone VALUES(2915,186,'Mont Fleuri','MF',1);
INSERT INTO oc_zone VALUES(2916,186,'Plaisance','PL',1);
INSERT INTO oc_zone VALUES(2917,186,'Pointe La Rue','PR',1);
INSERT INTO oc_zone VALUES(2918,186,'Port Glaud','PG',1);
INSERT INTO oc_zone VALUES(2919,186,'Saint Louis','SL',1);
INSERT INTO oc_zone VALUES(2920,186,'Takamaka','TA',1);
INSERT INTO oc_zone VALUES(2921,187,'Eastern','E',1);
INSERT INTO oc_zone VALUES(2922,187,'Northern','N',1);
INSERT INTO oc_zone VALUES(2923,187,'Southern','S',1);
INSERT INTO oc_zone VALUES(2924,187,'Western','W',1);
INSERT INTO oc_zone VALUES(2925,189,'Banskobystrick?','BA',1);
INSERT INTO oc_zone VALUES(2926,189,'Bratislavsk?','BR',1);
INSERT INTO oc_zone VALUES(2927,189,'Ko?ick?','KO',1);
INSERT INTO oc_zone VALUES(2928,189,'Nitriansky','NI',1);
INSERT INTO oc_zone VALUES(2929,189,'Pre?ovsk?','PR',1);
INSERT INTO oc_zone VALUES(2930,189,'Tren?iansky','TC',1);
INSERT INTO oc_zone VALUES(2931,189,'Trnavsk?','TV',1);
INSERT INTO oc_zone VALUES(2932,189,'?ilinsk?','ZI',1);
INSERT INTO oc_zone VALUES(2933,191,'Central','CE',1);
INSERT INTO oc_zone VALUES(2934,191,'Choiseul','CH',1);
INSERT INTO oc_zone VALUES(2935,191,'Guadalcanal','GC',1);
INSERT INTO oc_zone VALUES(2936,191,'Honiara','HO',1);
INSERT INTO oc_zone VALUES(2937,191,'Isabel','IS',1);
INSERT INTO oc_zone VALUES(2938,191,'Makira','MK',1);
INSERT INTO oc_zone VALUES(2939,191,'Malaita','ML',1);
INSERT INTO oc_zone VALUES(2940,191,'Rennell and Bellona','RB',1);
INSERT INTO oc_zone VALUES(2941,191,'Temotu','TM',1);
INSERT INTO oc_zone VALUES(2942,191,'Western','WE',1);
INSERT INTO oc_zone VALUES(2943,192,'Awdal','AW',1);
INSERT INTO oc_zone VALUES(2944,192,'Bakool','BK',1);
INSERT INTO oc_zone VALUES(2945,192,'Banaadir','BN',1);
INSERT INTO oc_zone VALUES(2946,192,'Bari','BR',1);
INSERT INTO oc_zone VALUES(2947,192,'Bay','BY',1);
INSERT INTO oc_zone VALUES(2948,192,'Galguduud','GA',1);
INSERT INTO oc_zone VALUES(2949,192,'Gedo','GE',1);
INSERT INTO oc_zone VALUES(2950,192,'Hiiraan','HI',1);
INSERT INTO oc_zone VALUES(2951,192,'Jubbada Dhexe','JD',1);
INSERT INTO oc_zone VALUES(2952,192,'Jubbada Hoose','JH',1);
INSERT INTO oc_zone VALUES(2953,192,'Mudug','MU',1);
INSERT INTO oc_zone VALUES(2954,192,'Nugaal','NU',1);
INSERT INTO oc_zone VALUES(2955,192,'Sanaag','SA',1);
INSERT INTO oc_zone VALUES(2956,192,'Shabeellaha Dhexe','SD',1);
INSERT INTO oc_zone VALUES(2957,192,'Shabeellaha Hoose','SH',1);
INSERT INTO oc_zone VALUES(2958,192,'Sool','SL',1);
INSERT INTO oc_zone VALUES(2959,192,'Togdheer','TO',1);
INSERT INTO oc_zone VALUES(2960,192,'Woqooyi Galbeed','WG',1);
INSERT INTO oc_zone VALUES(2961,193,'Eastern Cape','EC',1);
INSERT INTO oc_zone VALUES(2962,193,'Free State','FS',1);
INSERT INTO oc_zone VALUES(2963,193,'Gauteng','GT',1);
INSERT INTO oc_zone VALUES(2964,193,'KwaZulu-Natal','KN',1);
INSERT INTO oc_zone VALUES(2965,193,'Limpopo','LP',1);
INSERT INTO oc_zone VALUES(2966,193,'Mpumalanga','MP',1);
INSERT INTO oc_zone VALUES(2967,193,'North West','NW',1);
INSERT INTO oc_zone VALUES(2968,193,'Northern Cape','NC',1);
INSERT INTO oc_zone VALUES(2969,193,'Western Cape','WC',1);
INSERT INTO oc_zone VALUES(2970,195,'La Coru&ntilde;a','CA',1);
INSERT INTO oc_zone VALUES(2971,195,'&Aacute;lava','AL',1);
INSERT INTO oc_zone VALUES(2972,195,'Albacete','AB',1);
INSERT INTO oc_zone VALUES(2973,195,'Alicante','AC',1);
INSERT INTO oc_zone VALUES(2974,195,'Almeria','AM',1);
INSERT INTO oc_zone VALUES(2975,195,'Asturias','AS',1);
INSERT INTO oc_zone VALUES(2976,195,'&Aacute;vila','AV',1);
INSERT INTO oc_zone VALUES(2977,195,'Badajoz','BJ',1);
INSERT INTO oc_zone VALUES(2978,195,'Baleares','IB',1);
INSERT INTO oc_zone VALUES(2979,195,'Barcelona','BA',1);
INSERT INTO oc_zone VALUES(2980,195,'Burgos','BU',1);
INSERT INTO oc_zone VALUES(2981,195,'C&aacute;ceres','CC',1);
INSERT INTO oc_zone VALUES(2982,195,'C&aacute;diz','CZ',1);
INSERT INTO oc_zone VALUES(2983,195,'Cantabria','CT',1);
INSERT INTO oc_zone VALUES(2984,195,'Castell&oacute;n','CL',1);
INSERT INTO oc_zone VALUES(2985,195,'Ceuta','CE',1);
INSERT INTO oc_zone VALUES(2986,195,'Ciudad Real','CR',1);
INSERT INTO oc_zone VALUES(2987,195,'C&oacute;rdoba','CD',1);
INSERT INTO oc_zone VALUES(2988,195,'Cuenca','CU',1);
INSERT INTO oc_zone VALUES(2989,195,'Girona','GI',1);
INSERT INTO oc_zone VALUES(2990,195,'Granada','GD',1);
INSERT INTO oc_zone VALUES(2991,195,'Guadalajara','GJ',1);
INSERT INTO oc_zone VALUES(2992,195,'Guip&uacute;zcoa','GP',1);
INSERT INTO oc_zone VALUES(2993,195,'Huelva','HL',1);
INSERT INTO oc_zone VALUES(2994,195,'Huesca','HS',1);
INSERT INTO oc_zone VALUES(2995,195,'Ja&eacute;n','JN',1);
INSERT INTO oc_zone VALUES(2996,195,'La Rioja','RJ',1);
INSERT INTO oc_zone VALUES(2997,195,'Las Palmas','PM',1);
INSERT INTO oc_zone VALUES(2998,195,'Leon','LE',1);
INSERT INTO oc_zone VALUES(2999,195,'Lleida','LL',1);
INSERT INTO oc_zone VALUES(3000,195,'Lugo','LG',1);
INSERT INTO oc_zone VALUES(3001,195,'Madrid','MD',1);
INSERT INTO oc_zone VALUES(3002,195,'Malaga','MA',1);
INSERT INTO oc_zone VALUES(3003,195,'Melilla','ML',1);
INSERT INTO oc_zone VALUES(3004,195,'Murcia','MU',1);
INSERT INTO oc_zone VALUES(3005,195,'Navarra','NV',1);
INSERT INTO oc_zone VALUES(3006,195,'Ourense','OU',1);
INSERT INTO oc_zone VALUES(3007,195,'Palencia','PL',1);
INSERT INTO oc_zone VALUES(3008,195,'Pontevedra','PO',1);
INSERT INTO oc_zone VALUES(3009,195,'Salamanca','SL',1);
INSERT INTO oc_zone VALUES(3010,195,'Santa Cruz de Tenerife','SC',1);
INSERT INTO oc_zone VALUES(3011,195,'Segovia','SG',1);
INSERT INTO oc_zone VALUES(3012,195,'Sevilla','SV',1);
INSERT INTO oc_zone VALUES(3013,195,'Soria','SO',1);
INSERT INTO oc_zone VALUES(3014,195,'Tarragona','TA',1);
INSERT INTO oc_zone VALUES(3015,195,'Teruel','TE',1);
INSERT INTO oc_zone VALUES(3016,195,'Toledo','TO',1);
INSERT INTO oc_zone VALUES(3017,195,'Valencia','VC',1);
INSERT INTO oc_zone VALUES(3018,195,'Valladolid','VD',1);
INSERT INTO oc_zone VALUES(3019,195,'Vizcaya','VZ',1);
INSERT INTO oc_zone VALUES(3020,195,'Zamora','ZM',1);
INSERT INTO oc_zone VALUES(3021,195,'Zaragoza','ZR',1);
INSERT INTO oc_zone VALUES(3022,196,'Central','CE',1);
INSERT INTO oc_zone VALUES(3023,196,'Eastern','EA',1);
INSERT INTO oc_zone VALUES(3024,196,'North Central','NC',1);
INSERT INTO oc_zone VALUES(3025,196,'Northern','NO',1);
INSERT INTO oc_zone VALUES(3026,196,'North Western','NW',1);
INSERT INTO oc_zone VALUES(3027,196,'Sabaragamuwa','SA',1);
INSERT INTO oc_zone VALUES(3028,196,'Southern','SO',1);
INSERT INTO oc_zone VALUES(3029,196,'Uva','UV',1);
INSERT INTO oc_zone VALUES(3030,196,'Western','WE',1);
INSERT INTO oc_zone VALUES(3032,197,'Saint Helena','S',1);
INSERT INTO oc_zone VALUES(3034,199,'A\'ali an Nil','ANL',1);
INSERT INTO oc_zone VALUES(3035,199,'Al Bahr al Ahmar','BAM',1);
INSERT INTO oc_zone VALUES(3036,199,'Al Buhayrat','BRT',1);
INSERT INTO oc_zone VALUES(3037,199,'Al Jazirah','JZR',1);
INSERT INTO oc_zone VALUES(3038,199,'Al Khartum','KRT',1);
INSERT INTO oc_zone VALUES(3039,199,'Al Qadarif','QDR',1);
INSERT INTO oc_zone VALUES(3040,199,'Al Wahdah','WDH',1);
INSERT INTO oc_zone VALUES(3041,199,'An Nil al Abyad','ANB',1);
INSERT INTO oc_zone VALUES(3042,199,'An Nil al Azraq','ANZ',1);
INSERT INTO oc_zone VALUES(3043,199,'Ash Shamaliyah','ASH',1);
INSERT INTO oc_zone VALUES(3044,199,'Bahr al Jabal','BJA',1);
INSERT INTO oc_zone VALUES(3045,199,'Gharb al Istiwa\'iyah','GIS',1);
INSERT INTO oc_zone VALUES(3046,199,'Gharb Bahr al Ghazal','GBG',1);
INSERT INTO oc_zone VALUES(3047,199,'Gharb Darfur','GDA',1);
INSERT INTO oc_zone VALUES(3048,199,'Gharb Kurdufan','GKU',1);
INSERT INTO oc_zone VALUES(3049,199,'Janub Darfur','JDA',1);
INSERT INTO oc_zone VALUES(3050,199,'Janub Kurdufan','JKU',1);
INSERT INTO oc_zone VALUES(3051,199,'Junqali','JQL',1);
INSERT INTO oc_zone VALUES(3052,199,'Kassala','KSL',1);
INSERT INTO oc_zone VALUES(3053,199,'Nahr an Nil','NNL',1);
INSERT INTO oc_zone VALUES(3054,199,'Shamal Bahr al Ghazal','SBG',1);
INSERT INTO oc_zone VALUES(3055,199,'Shamal Darfur','SDA',1);
INSERT INTO oc_zone VALUES(3056,199,'Shamal Kurdufan','SKU',1);
INSERT INTO oc_zone VALUES(3057,199,'Sharq al Istiwa\'iyah','SIS',1);
INSERT INTO oc_zone VALUES(3058,199,'Sinnar','SNR',1);
INSERT INTO oc_zone VALUES(3059,199,'Warab','WRB',1);
INSERT INTO oc_zone VALUES(3060,200,'Brokopondo','BR',1);
INSERT INTO oc_zone VALUES(3061,200,'Commewijne','CM',1);
INSERT INTO oc_zone VALUES(3062,200,'Coronie','CR',1);
INSERT INTO oc_zone VALUES(3063,200,'Marowijne','MA',1);
INSERT INTO oc_zone VALUES(3064,200,'Nickerie','NI',1);
INSERT INTO oc_zone VALUES(3065,200,'Para','PA',1);
INSERT INTO oc_zone VALUES(3066,200,'Paramaribo','PM',1);
INSERT INTO oc_zone VALUES(3067,200,'Saramacca','SA',1);
INSERT INTO oc_zone VALUES(3068,200,'Sipaliwini','SI',1);
INSERT INTO oc_zone VALUES(3069,200,'Wanica','WA',1);
INSERT INTO oc_zone VALUES(3070,202,'Hhohho','H',1);
INSERT INTO oc_zone VALUES(3071,202,'Lubombo','L',1);
INSERT INTO oc_zone VALUES(3072,202,'Manzini','M',1);
INSERT INTO oc_zone VALUES(3073,202,'Shishelweni','S',1);
INSERT INTO oc_zone VALUES(3074,203,'Blekinge','K',1);
INSERT INTO oc_zone VALUES(3075,203,'Dalarna','W',1);
INSERT INTO oc_zone VALUES(3076,203,'G?vleborg','X',1);
INSERT INTO oc_zone VALUES(3077,203,'Gotland','I',1);
INSERT INTO oc_zone VALUES(3078,203,'Halland','N',1);
INSERT INTO oc_zone VALUES(3079,203,'J?mtland','Z',1);
INSERT INTO oc_zone VALUES(3080,203,'J?nk?ping','F',1);
INSERT INTO oc_zone VALUES(3081,203,'Kalmar','H',1);
INSERT INTO oc_zone VALUES(3082,203,'Kronoberg','G',1);
INSERT INTO oc_zone VALUES(3083,203,'Norrbotten','BD',1);
INSERT INTO oc_zone VALUES(3084,203,'?rebro','T',1);
INSERT INTO oc_zone VALUES(3085,203,'?sterg?tland','E',1);
INSERT INTO oc_zone VALUES(3086,203,'Sk&aring;ne','M',1);
INSERT INTO oc_zone VALUES(3087,203,'S?dermanland','D',1);
INSERT INTO oc_zone VALUES(3088,203,'Stockholm','AB',1);
INSERT INTO oc_zone VALUES(3089,203,'Uppsala','C',1);
INSERT INTO oc_zone VALUES(3090,203,'V?rmland','S',1);
INSERT INTO oc_zone VALUES(3091,203,'V?sterbotten','AC',1);
INSERT INTO oc_zone VALUES(3092,203,'V?sternorrland','Y',1);
INSERT INTO oc_zone VALUES(3093,203,'V?stmanland','U',1);
INSERT INTO oc_zone VALUES(3094,203,'V?stra G?taland','O',1);
INSERT INTO oc_zone VALUES(3095,204,'Aargau','AG',1);
INSERT INTO oc_zone VALUES(3096,204,'Appenzell Ausserrhoden','AR',1);
INSERT INTO oc_zone VALUES(3097,204,'Appenzell Innerrhoden','AI',1);
INSERT INTO oc_zone VALUES(3098,204,'Basel-Stadt','BS',1);
INSERT INTO oc_zone VALUES(3099,204,'Basel-Landschaft','BL',1);
INSERT INTO oc_zone VALUES(3100,204,'Bern','BE',1);
INSERT INTO oc_zone VALUES(3101,204,'Fribourg','FR',1);
INSERT INTO oc_zone VALUES(3102,204,'Gen&egrave;ve','GE',1);
INSERT INTO oc_zone VALUES(3103,204,'Glarus','GL',1);
INSERT INTO oc_zone VALUES(3104,204,'Graub?nden','GR',1);
INSERT INTO oc_zone VALUES(3105,204,'Jura','JU',1);
INSERT INTO oc_zone VALUES(3106,204,'Luzern','LU',1);
INSERT INTO oc_zone VALUES(3107,204,'Neuch&acirc;tel','NE',1);
INSERT INTO oc_zone VALUES(3108,204,'Nidwald','NW',1);
INSERT INTO oc_zone VALUES(3109,204,'Obwald','OW',1);
INSERT INTO oc_zone VALUES(3110,204,'St. Gallen','SG',1);
INSERT INTO oc_zone VALUES(3111,204,'Schaffhausen','SH',1);
INSERT INTO oc_zone VALUES(3112,204,'Schwyz','SZ',1);
INSERT INTO oc_zone VALUES(3113,204,'Solothurn','SO',1);
INSERT INTO oc_zone VALUES(3114,204,'Thurgau','TG',1);
INSERT INTO oc_zone VALUES(3115,204,'Ticino','TI',1);
INSERT INTO oc_zone VALUES(3116,204,'Uri','UR',1);
INSERT INTO oc_zone VALUES(3117,204,'Valais','VS',1);
INSERT INTO oc_zone VALUES(3118,204,'Vaud','VD',1);
INSERT INTO oc_zone VALUES(3119,204,'Zug','ZG',1);
INSERT INTO oc_zone VALUES(3120,204,'Z?rich','ZH',1);
INSERT INTO oc_zone VALUES(3121,205,'Al Hasakah','HA',1);
INSERT INTO oc_zone VALUES(3122,205,'Al Ladhiqiyah','LA',1);
INSERT INTO oc_zone VALUES(3123,205,'Al Qunaytirah','QU',1);
INSERT INTO oc_zone VALUES(3124,205,'Ar Raqqah','RQ',1);
INSERT INTO oc_zone VALUES(3125,205,'As Suwayda','SU',1);
INSERT INTO oc_zone VALUES(3126,205,'Dara','DA',1);
INSERT INTO oc_zone VALUES(3127,205,'Dayr az Zawr','DZ',1);
INSERT INTO oc_zone VALUES(3128,205,'Dimashq','DI',1);
INSERT INTO oc_zone VALUES(3129,205,'Halab','HL',1);
INSERT INTO oc_zone VALUES(3130,205,'Hamah','HM',1);
INSERT INTO oc_zone VALUES(3131,205,'Hims','HI',1);
INSERT INTO oc_zone VALUES(3132,205,'Idlib','ID',1);
INSERT INTO oc_zone VALUES(3133,205,'Rif Dimashq','RD',1);
INSERT INTO oc_zone VALUES(3134,205,'Tartus','TA',1);
INSERT INTO oc_zone VALUES(3135,206,'Chang-hua','CH',1);
INSERT INTO oc_zone VALUES(3136,206,'Chia-i','CI',1);
INSERT INTO oc_zone VALUES(3137,206,'Hsin-chu','HS',1);
INSERT INTO oc_zone VALUES(3138,206,'Hua-lien','HL',1);
INSERT INTO oc_zone VALUES(3139,206,'I-lan','IL',1);
INSERT INTO oc_zone VALUES(3140,206,'Kao-hsiung county','KH',1);
INSERT INTO oc_zone VALUES(3141,206,'Kin-men','KM',1);
INSERT INTO oc_zone VALUES(3142,206,'Lien-chiang','LC',1);
INSERT INTO oc_zone VALUES(3143,206,'Miao-li','ML',1);
INSERT INTO oc_zone VALUES(3144,206,'Nan-t\'ou','NT',1);
INSERT INTO oc_zone VALUES(3145,206,'P\'eng-hu','PH',1);
INSERT INTO oc_zone VALUES(3146,206,'P\'ing-tung','PT',1);
INSERT INTO oc_zone VALUES(3147,206,'T\'ai-chung','TG',1);
INSERT INTO oc_zone VALUES(3148,206,'T\'ai-nan','TA',1);
INSERT INTO oc_zone VALUES(3149,206,'T\'ai-pei county','TP',1);
INSERT INTO oc_zone VALUES(3150,206,'T\'ai-tung','TT',1);
INSERT INTO oc_zone VALUES(3151,206,'T\'ao-yuan','TY',1);
INSERT INTO oc_zone VALUES(3152,206,'Yun-lin','YL',1);
INSERT INTO oc_zone VALUES(3153,206,'Chia-i city','CC',1);
INSERT INTO oc_zone VALUES(3154,206,'Chi-lung','CL',1);
INSERT INTO oc_zone VALUES(3155,206,'Hsin-chu','HC',1);
INSERT INTO oc_zone VALUES(3156,206,'T\'ai-chung','TH',1);
INSERT INTO oc_zone VALUES(3157,206,'T\'ai-nan','TN',1);
INSERT INTO oc_zone VALUES(3158,206,'Kao-hsiung city','KC',1);
INSERT INTO oc_zone VALUES(3159,206,'T\'ai-pei city','TC',1);
INSERT INTO oc_zone VALUES(3160,207,'Gorno-Badakhstan','GB',1);
INSERT INTO oc_zone VALUES(3161,207,'Khatlon','KT',1);
INSERT INTO oc_zone VALUES(3162,207,'Sughd','SU',1);
INSERT INTO oc_zone VALUES(3163,208,'Arusha','AR',1);
INSERT INTO oc_zone VALUES(3164,208,'Dar es Salaam','DS',1);
INSERT INTO oc_zone VALUES(3165,208,'Dodoma','DO',1);
INSERT INTO oc_zone VALUES(3166,208,'Iringa','IR',1);
INSERT INTO oc_zone VALUES(3167,208,'Kagera','KA',1);
INSERT INTO oc_zone VALUES(3168,208,'Kigoma','KI',1);
INSERT INTO oc_zone VALUES(3169,208,'Kilimanjaro','KJ',1);
INSERT INTO oc_zone VALUES(3170,208,'Lindi','LN',1);
INSERT INTO oc_zone VALUES(3171,208,'Manyara','MY',1);
INSERT INTO oc_zone VALUES(3172,208,'Mara','MR',1);
INSERT INTO oc_zone VALUES(3173,208,'Mbeya','MB',1);
INSERT INTO oc_zone VALUES(3174,208,'Morogoro','MO',1);
INSERT INTO oc_zone VALUES(3175,208,'Mtwara','MT',1);
INSERT INTO oc_zone VALUES(3176,208,'Mwanza','MW',1);
INSERT INTO oc_zone VALUES(3177,208,'Pemba North','PN',1);
INSERT INTO oc_zone VALUES(3178,208,'Pemba South','PS',1);
INSERT INTO oc_zone VALUES(3179,208,'Pwani','PW',1);
INSERT INTO oc_zone VALUES(3180,208,'Rukwa','RK',1);
INSERT INTO oc_zone VALUES(3181,208,'Ruvuma','RV',1);
INSERT INTO oc_zone VALUES(3182,208,'Shinyanga','SH',1);
INSERT INTO oc_zone VALUES(3183,208,'Singida','SI',1);
INSERT INTO oc_zone VALUES(3184,208,'Tabora','TB',1);
INSERT INTO oc_zone VALUES(3185,208,'Tanga','TN',1);
INSERT INTO oc_zone VALUES(3186,208,'Zanzibar Central/South','ZC',1);
INSERT INTO oc_zone VALUES(3187,208,'Zanzibar North','ZN',1);
INSERT INTO oc_zone VALUES(3188,208,'Zanzibar Urban/West','ZU',1);
INSERT INTO oc_zone VALUES(3189,209,'Amnat Charoen','Amnat Charoen',1);
INSERT INTO oc_zone VALUES(3190,209,'Ang Thong','Ang Thong',1);
INSERT INTO oc_zone VALUES(3191,209,'Ayutthaya','Ayutthaya',1);
INSERT INTO oc_zone VALUES(3192,209,'Bangkok','Bangkok',1);
INSERT INTO oc_zone VALUES(3193,209,'Buriram','Buriram',1);
INSERT INTO oc_zone VALUES(3194,209,'Chachoengsao','Chachoengsao',1);
INSERT INTO oc_zone VALUES(3195,209,'Chai Nat','Chai Nat',1);
INSERT INTO oc_zone VALUES(3196,209,'Chaiyaphum','Chaiyaphum',1);
INSERT INTO oc_zone VALUES(3197,209,'Chanthaburi','Chanthaburi',1);
INSERT INTO oc_zone VALUES(3198,209,'Chiang Mai','Chiang Mai',1);
INSERT INTO oc_zone VALUES(3199,209,'Chiang Rai','Chiang Rai',1);
INSERT INTO oc_zone VALUES(3200,209,'Chon Buri','Chon Buri',1);
INSERT INTO oc_zone VALUES(3201,209,'Chumphon','Chumphon',1);
INSERT INTO oc_zone VALUES(3202,209,'Kalasin','Kalasin',1);
INSERT INTO oc_zone VALUES(3203,209,'Kamphaeng Phet','Kamphaeng Phet',1);
INSERT INTO oc_zone VALUES(3204,209,'Kanchanaburi','Kanchanaburi',1);
INSERT INTO oc_zone VALUES(3205,209,'Khon Kaen','Khon Kaen',1);
INSERT INTO oc_zone VALUES(3206,209,'Krabi','Krabi',1);
INSERT INTO oc_zone VALUES(3207,209,'Lampang','Lampang',1);
INSERT INTO oc_zone VALUES(3208,209,'Lamphun','Lamphun',1);
INSERT INTO oc_zone VALUES(3209,209,'Loei','Loei',1);
INSERT INTO oc_zone VALUES(3210,209,'Lop Buri','Lop Buri',1);
INSERT INTO oc_zone VALUES(3211,209,'Mae Hong Son','Mae Hong Son',1);
INSERT INTO oc_zone VALUES(3212,209,'Maha Sarakham','Maha Sarakham',1);
INSERT INTO oc_zone VALUES(3213,209,'Mukdahan','Mukdahan',1);
INSERT INTO oc_zone VALUES(3214,209,'Nakhon Nayok','Nakhon Nayok',1);
INSERT INTO oc_zone VALUES(3215,209,'Nakhon Pathom','Nakhon Pathom',1);
INSERT INTO oc_zone VALUES(3216,209,'Nakhon Phanom','Nakhon Phanom',1);
INSERT INTO oc_zone VALUES(3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1);
INSERT INTO oc_zone VALUES(3218,209,'Nakhon Sawan','Nakhon Sawan',1);
INSERT INTO oc_zone VALUES(3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1);
INSERT INTO oc_zone VALUES(3220,209,'Nan','Nan',1);
INSERT INTO oc_zone VALUES(3221,209,'Narathiwat','Narathiwat',1);
INSERT INTO oc_zone VALUES(3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1);
INSERT INTO oc_zone VALUES(3223,209,'Nong Khai','Nong Khai',1);
INSERT INTO oc_zone VALUES(3224,209,'Nonthaburi','Nonthaburi',1);
INSERT INTO oc_zone VALUES(3225,209,'Pathum Thani','Pathum Thani',1);
INSERT INTO oc_zone VALUES(3226,209,'Pattani','Pattani',1);
INSERT INTO oc_zone VALUES(3227,209,'Phangnga','Phangnga',1);
INSERT INTO oc_zone VALUES(3228,209,'Phatthalung','Phatthalung',1);
INSERT INTO oc_zone VALUES(3229,209,'Phayao','Phayao',1);
INSERT INTO oc_zone VALUES(3230,209,'Phetchabun','Phetchabun',1);
INSERT INTO oc_zone VALUES(3231,209,'Phetchaburi','Phetchaburi',1);
INSERT INTO oc_zone VALUES(3232,209,'Phichit','Phichit',1);
INSERT INTO oc_zone VALUES(3233,209,'Phitsanulok','Phitsanulok',1);
INSERT INTO oc_zone VALUES(3234,209,'Phrae','Phrae',1);
INSERT INTO oc_zone VALUES(3235,209,'Phuket','Phuket',1);
INSERT INTO oc_zone VALUES(3236,209,'Prachin Buri','Prachin Buri',1);
INSERT INTO oc_zone VALUES(3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1);
INSERT INTO oc_zone VALUES(3238,209,'Ranong','Ranong',1);
INSERT INTO oc_zone VALUES(3239,209,'Ratchaburi','Ratchaburi',1);
INSERT INTO oc_zone VALUES(3240,209,'Rayong','Rayong',1);
INSERT INTO oc_zone VALUES(3241,209,'Roi Et','Roi Et',1);
INSERT INTO oc_zone VALUES(3242,209,'Sa Kaeo','Sa Kaeo',1);
INSERT INTO oc_zone VALUES(3243,209,'Sakon Nakhon','Sakon Nakhon',1);
INSERT INTO oc_zone VALUES(3244,209,'Samut Prakan','Samut Prakan',1);
INSERT INTO oc_zone VALUES(3245,209,'Samut Sakhon','Samut Sakhon',1);
INSERT INTO oc_zone VALUES(3246,209,'Samut Songkhram','Samut Songkhram',1);
INSERT INTO oc_zone VALUES(3247,209,'Sara Buri','Sara Buri',1);
INSERT INTO oc_zone VALUES(3248,209,'Satun','Satun',1);
INSERT INTO oc_zone VALUES(3249,209,'Sing Buri','Sing Buri',1);
INSERT INTO oc_zone VALUES(3250,209,'Sisaket','Sisaket',1);
INSERT INTO oc_zone VALUES(3251,209,'Songkhla','Songkhla',1);
INSERT INTO oc_zone VALUES(3252,209,'Sukhothai','Sukhothai',1);
INSERT INTO oc_zone VALUES(3253,209,'Suphan Buri','Suphan Buri',1);
INSERT INTO oc_zone VALUES(3254,209,'Surat Thani','Surat Thani',1);
INSERT INTO oc_zone VALUES(3255,209,'Surin','Surin',1);
INSERT INTO oc_zone VALUES(3256,209,'Tak','Tak',1);
INSERT INTO oc_zone VALUES(3257,209,'Trang','Trang',1);
INSERT INTO oc_zone VALUES(3258,209,'Trat','Trat',1);
INSERT INTO oc_zone VALUES(3259,209,'Ubon Ratchathani','Ubon Ratchathani',1);
INSERT INTO oc_zone VALUES(3260,209,'Udon Thani','Udon Thani',1);
INSERT INTO oc_zone VALUES(3261,209,'Uthai Thani','Uthai Thani',1);
INSERT INTO oc_zone VALUES(3262,209,'Uttaradit','Uttaradit',1);
INSERT INTO oc_zone VALUES(3263,209,'Yala','Yala',1);
INSERT INTO oc_zone VALUES(3264,209,'Yasothon','Yasothon',1);
INSERT INTO oc_zone VALUES(3265,210,'Kara','K',1);
INSERT INTO oc_zone VALUES(3266,210,'Plateaux','P',1);
INSERT INTO oc_zone VALUES(3267,210,'Savanes','S',1);
INSERT INTO oc_zone VALUES(3268,210,'Centrale','C',1);
INSERT INTO oc_zone VALUES(3269,210,'Maritime','M',1);
INSERT INTO oc_zone VALUES(3270,211,'Atafu','A',1);
INSERT INTO oc_zone VALUES(3271,211,'Fakaofo','F',1);
INSERT INTO oc_zone VALUES(3272,211,'Nukunonu','N',1);
INSERT INTO oc_zone VALUES(3273,212,'Ha\'apai','H',1);
INSERT INTO oc_zone VALUES(3274,212,'Tongatapu','T',1);
INSERT INTO oc_zone VALUES(3275,212,'Vava\'u','V',1);
INSERT INTO oc_zone VALUES(3276,213,'Couva/Tabaquite/Talparo','CT',1);
INSERT INTO oc_zone VALUES(3277,213,'Diego Martin','DM',1);
INSERT INTO oc_zone VALUES(3278,213,'Mayaro/Rio Claro','MR',1);
INSERT INTO oc_zone VALUES(3279,213,'Penal/Debe','PD',1);
INSERT INTO oc_zone VALUES(3280,213,'Princes Town','PT',1);
INSERT INTO oc_zone VALUES(3281,213,'Sangre Grande','SG',1);
INSERT INTO oc_zone VALUES(3282,213,'San Juan/Laventille','SL',1);
INSERT INTO oc_zone VALUES(3283,213,'Siparia','SI',1);
INSERT INTO oc_zone VALUES(3284,213,'Tunapuna/Piarco','TP',1);
INSERT INTO oc_zone VALUES(3285,213,'Port of Spain','PS',1);
INSERT INTO oc_zone VALUES(3286,213,'San Fernando','SF',1);
INSERT INTO oc_zone VALUES(3287,213,'Arima','AR',1);
INSERT INTO oc_zone VALUES(3288,213,'Point Fortin','PF',1);
INSERT INTO oc_zone VALUES(3289,213,'Chaguanas','CH',1);
INSERT INTO oc_zone VALUES(3290,213,'Tobago','TO',1);
INSERT INTO oc_zone VALUES(3291,214,'Ariana','AR',1);
INSERT INTO oc_zone VALUES(3292,214,'Beja','BJ',1);
INSERT INTO oc_zone VALUES(3293,214,'Ben Arous','BA',1);
INSERT INTO oc_zone VALUES(3294,214,'Bizerte','BI',1);
INSERT INTO oc_zone VALUES(3295,214,'Gabes','GB',1);
INSERT INTO oc_zone VALUES(3296,214,'Gafsa','GF',1);
INSERT INTO oc_zone VALUES(3297,214,'Jendouba','JE',1);
INSERT INTO oc_zone VALUES(3298,214,'Kairouan','KR',1);
INSERT INTO oc_zone VALUES(3299,214,'Kasserine','KS',1);
INSERT INTO oc_zone VALUES(3300,214,'Kebili','KB',1);
INSERT INTO oc_zone VALUES(3301,214,'Kef','KF',1);
INSERT INTO oc_zone VALUES(3302,214,'Mahdia','MH',1);
INSERT INTO oc_zone VALUES(3303,214,'Manouba','MN',1);
INSERT INTO oc_zone VALUES(3304,214,'Medenine','ME',1);
INSERT INTO oc_zone VALUES(3305,214,'Monastir','MO',1);
INSERT INTO oc_zone VALUES(3306,214,'Nabeul','NA',1);
INSERT INTO oc_zone VALUES(3307,214,'Sfax','SF',1);
INSERT INTO oc_zone VALUES(3308,214,'Sidi','SD',1);
INSERT INTO oc_zone VALUES(3309,214,'Siliana','SL',1);
INSERT INTO oc_zone VALUES(3310,214,'Sousse','SO',1);
INSERT INTO oc_zone VALUES(3311,214,'Tataouine','TA',1);
INSERT INTO oc_zone VALUES(3312,214,'Tozeur','TO',1);
INSERT INTO oc_zone VALUES(3313,214,'Tunis','TU',1);
INSERT INTO oc_zone VALUES(3314,214,'Zaghouan','ZA',1);
INSERT INTO oc_zone VALUES(3315,215,'Adana','ADA',1);
INSERT INTO oc_zone VALUES(3316,215,'Ad?yaman','ADI',1);
INSERT INTO oc_zone VALUES(3317,215,'Afyonkarahisar','AFY',1);
INSERT INTO oc_zone VALUES(3318,215,'A?r?','AGR',1);
INSERT INTO oc_zone VALUES(3319,215,'Aksaray','AKS',1);
INSERT INTO oc_zone VALUES(3320,215,'Amasya','AMA',1);
INSERT INTO oc_zone VALUES(3321,215,'Ankara','ANK',1);
INSERT INTO oc_zone VALUES(3322,215,'Antalya','ANT',1);
INSERT INTO oc_zone VALUES(3323,215,'Ardahan','ARD',1);
INSERT INTO oc_zone VALUES(3324,215,'Artvin','ART',1);
INSERT INTO oc_zone VALUES(3325,215,'Ayd?n','AYI',1);
INSERT INTO oc_zone VALUES(3326,215,'Bal?kesir','BAL',1);
INSERT INTO oc_zone VALUES(3327,215,'Bart?n','BAR',1);
INSERT INTO oc_zone VALUES(3328,215,'Batman','BAT',1);
INSERT INTO oc_zone VALUES(3329,215,'Bayburt','BAY',1);
INSERT INTO oc_zone VALUES(3330,215,'Bilecik','BIL',1);
INSERT INTO oc_zone VALUES(3331,215,'Bing?l','BIN',1);
INSERT INTO oc_zone VALUES(3332,215,'Bitlis','BIT',1);
INSERT INTO oc_zone VALUES(3333,215,'Bolu','BOL',1);
INSERT INTO oc_zone VALUES(3334,215,'Burdur','BRD',1);
INSERT INTO oc_zone VALUES(3335,215,'Bursa','BRS',1);
INSERT INTO oc_zone VALUES(3336,215,'?anakkale','CKL',1);
INSERT INTO oc_zone VALUES(3337,215,'?ank?r?','CKR',1);
INSERT INTO oc_zone VALUES(3338,215,'?orum','COR',1);
INSERT INTO oc_zone VALUES(3339,215,'Denizli','DEN',1);
INSERT INTO oc_zone VALUES(3340,215,'Diyarbak?r','DIY',1);
INSERT INTO oc_zone VALUES(3341,215,'D?zce','DUZ',1);
INSERT INTO oc_zone VALUES(3342,215,'Edirne','EDI',1);
INSERT INTO oc_zone VALUES(3343,215,'Elaz??','ELA',1);
INSERT INTO oc_zone VALUES(3344,215,'Erzincan','EZC',1);
INSERT INTO oc_zone VALUES(3345,215,'Erzurum','EZR',1);
INSERT INTO oc_zone VALUES(3346,215,'Eski?ehir','ESK',1);
INSERT INTO oc_zone VALUES(3347,215,'Gaziantep','GAZ',1);
INSERT INTO oc_zone VALUES(3348,215,'Giresun','GIR',1);
INSERT INTO oc_zone VALUES(3349,215,'G?m??hane','GMS',1);
INSERT INTO oc_zone VALUES(3350,215,'Hakkari','HKR',1);
INSERT INTO oc_zone VALUES(3351,215,'Hatay','HTY',1);
INSERT INTO oc_zone VALUES(3352,215,'I?d?r','IGD',1);
INSERT INTO oc_zone VALUES(3353,215,'Isparta','ISP',1);
INSERT INTO oc_zone VALUES(3354,215,'?stanbul','IST',1);
INSERT INTO oc_zone VALUES(3355,215,'?zmir','IZM',1);
INSERT INTO oc_zone VALUES(3356,215,'Kahramanmara?','KAH',1);
INSERT INTO oc_zone VALUES(3357,215,'Karab?k','KRB',1);
INSERT INTO oc_zone VALUES(3358,215,'Karaman','KRM',1);
INSERT INTO oc_zone VALUES(3359,215,'Kars','KRS',1);
INSERT INTO oc_zone VALUES(3360,215,'Kastamonu','KAS',1);
INSERT INTO oc_zone VALUES(3361,215,'Kayseri','KAY',1);
INSERT INTO oc_zone VALUES(3362,215,'Kilis','KLS',1);
INSERT INTO oc_zone VALUES(3363,215,'K?r?kkale','KRK',1);
INSERT INTO oc_zone VALUES(3364,215,'K?rklareli','KLR',1);
INSERT INTO oc_zone VALUES(3365,215,'K?r?ehir','KRH',1);
INSERT INTO oc_zone VALUES(3366,215,'Kocaeli','KOC',1);
INSERT INTO oc_zone VALUES(3367,215,'Konya','KON',1);
INSERT INTO oc_zone VALUES(3368,215,'K?tahya','KUT',1);
INSERT INTO oc_zone VALUES(3369,215,'Malatya','MAL',1);
INSERT INTO oc_zone VALUES(3370,215,'Manisa','MAN',1);
INSERT INTO oc_zone VALUES(3371,215,'Mardin','MAR',1);
INSERT INTO oc_zone VALUES(3372,215,'Mersin','MER',1);
INSERT INTO oc_zone VALUES(3373,215,'Mu?la','MUG',1);
INSERT INTO oc_zone VALUES(3374,215,'Mu?','MUS',1);
INSERT INTO oc_zone VALUES(3375,215,'Nev?ehir','NEV',1);
INSERT INTO oc_zone VALUES(3376,215,'Ni?de','NIG',1);
INSERT INTO oc_zone VALUES(3377,215,'Ordu','ORD',1);
INSERT INTO oc_zone VALUES(3378,215,'Osmaniye','OSM',1);
INSERT INTO oc_zone VALUES(3379,215,'Rize','RIZ',1);
INSERT INTO oc_zone VALUES(3380,215,'Sakarya','SAK',1);
INSERT INTO oc_zone VALUES(3381,215,'Samsun','SAM',1);
INSERT INTO oc_zone VALUES(3382,215,'?anl?urfa','SAN',1);
INSERT INTO oc_zone VALUES(3383,215,'Siirt','SII',1);
INSERT INTO oc_zone VALUES(3384,215,'Sinop','SIN',1);
INSERT INTO oc_zone VALUES(3385,215,'??rnak','SIR',1);
INSERT INTO oc_zone VALUES(3386,215,'Sivas','SIV',1);
INSERT INTO oc_zone VALUES(3387,215,'Tekirda?','TEL',1);
INSERT INTO oc_zone VALUES(3388,215,'Tokat','TOK',1);
INSERT INTO oc_zone VALUES(3389,215,'Trabzon','TRA',1);
INSERT INTO oc_zone VALUES(3390,215,'Tunceli','TUN',1);
INSERT INTO oc_zone VALUES(3391,215,'U?ak','USK',1);
INSERT INTO oc_zone VALUES(3392,215,'Van','VAN',1);
INSERT INTO oc_zone VALUES(3393,215,'Yalova','YAL',1);
INSERT INTO oc_zone VALUES(3394,215,'Yozgat','YOZ',1);
INSERT INTO oc_zone VALUES(3395,215,'Zonguldak','ZON',1);
INSERT INTO oc_zone VALUES(3396,216,'Ahal Welayaty','A',1);
INSERT INTO oc_zone VALUES(3397,216,'Balkan Welayaty','B',1);
INSERT INTO oc_zone VALUES(3398,216,'Dashhowuz Welayaty','D',1);
INSERT INTO oc_zone VALUES(3399,216,'Lebap Welayaty','L',1);
INSERT INTO oc_zone VALUES(3400,216,'Mary Welayaty','M',1);
INSERT INTO oc_zone VALUES(3401,217,'Ambergris Cays','AC',1);
INSERT INTO oc_zone VALUES(3402,217,'Dellis Cay','DC',1);
INSERT INTO oc_zone VALUES(3403,217,'French Cay','FC',1);
INSERT INTO oc_zone VALUES(3404,217,'Little Water Cay','LW',1);
INSERT INTO oc_zone VALUES(3405,217,'Parrot Cay','RC',1);
INSERT INTO oc_zone VALUES(3406,217,'Pine Cay','PN',1);
INSERT INTO oc_zone VALUES(3407,217,'Salt Cay','SL',1);
INSERT INTO oc_zone VALUES(3408,217,'Grand Turk','GT',1);
INSERT INTO oc_zone VALUES(3409,217,'South Caicos','SC',1);
INSERT INTO oc_zone VALUES(3410,217,'East Caicos','EC',1);
INSERT INTO oc_zone VALUES(3411,217,'Middle Caicos','MC',1);
INSERT INTO oc_zone VALUES(3412,217,'North Caicos','NC',1);
INSERT INTO oc_zone VALUES(3413,217,'Providenciales','PR',1);
INSERT INTO oc_zone VALUES(3414,217,'West Caicos','WC',1);
INSERT INTO oc_zone VALUES(3415,218,'Nanumanga','NMG',1);
INSERT INTO oc_zone VALUES(3416,218,'Niulakita','NLK',1);
INSERT INTO oc_zone VALUES(3417,218,'Niutao','NTO',1);
INSERT INTO oc_zone VALUES(3418,218,'Funafuti','FUN',1);
INSERT INTO oc_zone VALUES(3419,218,'Nanumea','NME',1);
INSERT INTO oc_zone VALUES(3420,218,'Nui','NUI',1);
INSERT INTO oc_zone VALUES(3421,218,'Nukufetau','NFT',1);
INSERT INTO oc_zone VALUES(3422,218,'Nukulaelae','NLL',1);
INSERT INTO oc_zone VALUES(3423,218,'Vaitupu','VAI',1);
INSERT INTO oc_zone VALUES(3424,219,'Kalangala','KAL',1);
INSERT INTO oc_zone VALUES(3425,219,'Kampala','KMP',1);
INSERT INTO oc_zone VALUES(3426,219,'Kayunga','KAY',1);
INSERT INTO oc_zone VALUES(3427,219,'Kiboga','KIB',1);
INSERT INTO oc_zone VALUES(3428,219,'Luwero','LUW',1);
INSERT INTO oc_zone VALUES(3429,219,'Masaka','MAS',1);
INSERT INTO oc_zone VALUES(3430,219,'Mpigi','MPI',1);
INSERT INTO oc_zone VALUES(3431,219,'Mubende','MUB',1);
INSERT INTO oc_zone VALUES(3432,219,'Mukono','MUK',1);
INSERT INTO oc_zone VALUES(3433,219,'Nakasongola','NKS',1);
INSERT INTO oc_zone VALUES(3434,219,'Rakai','RAK',1);
INSERT INTO oc_zone VALUES(3435,219,'Sembabule','SEM',1);
INSERT INTO oc_zone VALUES(3436,219,'Wakiso','WAK',1);
INSERT INTO oc_zone VALUES(3437,219,'Bugiri','BUG',1);
INSERT INTO oc_zone VALUES(3438,219,'Busia','BUS',1);
INSERT INTO oc_zone VALUES(3439,219,'Iganga','IGA',1);
INSERT INTO oc_zone VALUES(3440,219,'Jinja','JIN',1);
INSERT INTO oc_zone VALUES(3441,219,'Kaberamaido','KAB',1);
INSERT INTO oc_zone VALUES(3442,219,'Kamuli','KML',1);
INSERT INTO oc_zone VALUES(3443,219,'Kapchorwa','KPC',1);
INSERT INTO oc_zone VALUES(3444,219,'Katakwi','KTK',1);
INSERT INTO oc_zone VALUES(3445,219,'Kumi','KUM',1);
INSERT INTO oc_zone VALUES(3446,219,'Mayuge','MAY',1);
INSERT INTO oc_zone VALUES(3447,219,'Mbale','MBA',1);
INSERT INTO oc_zone VALUES(3448,219,'Pallisa','PAL',1);
INSERT INTO oc_zone VALUES(3449,219,'Sironko','SIR',1);
INSERT INTO oc_zone VALUES(3450,219,'Soroti','SOR',1);
INSERT INTO oc_zone VALUES(3451,219,'Tororo','TOR',1);
INSERT INTO oc_zone VALUES(3452,219,'Adjumani','ADJ',1);
INSERT INTO oc_zone VALUES(3453,219,'Apac','APC',1);
INSERT INTO oc_zone VALUES(3454,219,'Arua','ARU',1);
INSERT INTO oc_zone VALUES(3455,219,'Gulu','GUL',1);
INSERT INTO oc_zone VALUES(3456,219,'Kitgum','KIT',1);
INSERT INTO oc_zone VALUES(3457,219,'Kotido','KOT',1);
INSERT INTO oc_zone VALUES(3458,219,'Lira','LIR',1);
INSERT INTO oc_zone VALUES(3459,219,'Moroto','MRT',1);
INSERT INTO oc_zone VALUES(3460,219,'Moyo','MOY',1);
INSERT INTO oc_zone VALUES(3461,219,'Nakapiripirit','NAK',1);
INSERT INTO oc_zone VALUES(3462,219,'Nebbi','NEB',1);
INSERT INTO oc_zone VALUES(3463,219,'Pader','PAD',1);
INSERT INTO oc_zone VALUES(3464,219,'Yumbe','YUM',1);
INSERT INTO oc_zone VALUES(3465,219,'Bundibugyo','BUN',1);
INSERT INTO oc_zone VALUES(3466,219,'Bushenyi','BSH',1);
INSERT INTO oc_zone VALUES(3467,219,'Hoima','HOI',1);
INSERT INTO oc_zone VALUES(3468,219,'Kabale','KBL',1);
INSERT INTO oc_zone VALUES(3469,219,'Kabarole','KAR',1);
INSERT INTO oc_zone VALUES(3470,219,'Kamwenge','KAM',1);
INSERT INTO oc_zone VALUES(3471,219,'Kanungu','KAN',1);
INSERT INTO oc_zone VALUES(3472,219,'Kasese','KAS',1);
INSERT INTO oc_zone VALUES(3473,219,'Kibaale','KBA',1);
INSERT INTO oc_zone VALUES(3474,219,'Kisoro','KIS',1);
INSERT INTO oc_zone VALUES(3475,219,'Kyenjojo','KYE',1);
INSERT INTO oc_zone VALUES(3476,219,'Masindi','MSN',1);
INSERT INTO oc_zone VALUES(3477,219,'Mbarara','MBR',1);
INSERT INTO oc_zone VALUES(3478,219,'Ntungamo','NTU',1);
INSERT INTO oc_zone VALUES(3479,219,'Rukungiri','RUK',1);
INSERT INTO oc_zone VALUES(3480,220,'Cherkas\'ka Oblast\'',71,1);
INSERT INTO oc_zone VALUES(3481,220,'Chernihivs\'ka Oblast\'',74,1);
INSERT INTO oc_zone VALUES(3482,220,'Chernivets\'ka Oblast\'',77,1);
INSERT INTO oc_zone VALUES(3483,220,'Crimea',43,1);
INSERT INTO oc_zone VALUES(3484,220,'Dnipropetrovs\'ka Oblast\'',12,1);
INSERT INTO oc_zone VALUES(3485,220,'Donets\'ka Oblast\'',14,1);
INSERT INTO oc_zone VALUES(3486,220,'Ivano-Frankivs\'ka Oblast\'',26,1);
INSERT INTO oc_zone VALUES(3487,220,'Khersons\'ka Oblast\'',65,1);
INSERT INTO oc_zone VALUES(3488,220,'Khmel\'nyts\'ka Oblast\'',68,1);
INSERT INTO oc_zone VALUES(3489,220,'Kirovohrads\'ka Oblast\'',35,1);
INSERT INTO oc_zone VALUES(3490,220,'Kyiv',30,1);
INSERT INTO oc_zone VALUES(3491,220,'Kyivs\'ka Oblast\'',32,1);
INSERT INTO oc_zone VALUES(3492,220,'Luhans\'ka Oblast\'',9,1);
INSERT INTO oc_zone VALUES(3493,220,'L\'vivs\'ka Oblast\'',46,1);
INSERT INTO oc_zone VALUES(3494,220,'Mykolayivs\'ka Oblast\'',48,1);
INSERT INTO oc_zone VALUES(3495,220,'Odes\'ka Oblast\'',51,1);
INSERT INTO oc_zone VALUES(3496,220,'Poltavs\'ka Oblast\'',53,1);
INSERT INTO oc_zone VALUES(3497,220,'Rivnens\'ka Oblast\'',56,1);
INSERT INTO oc_zone VALUES(3498,220,'Sevastopol\'',40,1);
INSERT INTO oc_zone VALUES(3499,220,'Sums\'ka Oblast\'',59,1);
INSERT INTO oc_zone VALUES(3500,220,'Ternopil\'s\'ka Oblast\'',61,1);
INSERT INTO oc_zone VALUES(3501,220,'Vinnyts\'ka Oblast\'',5,1);
INSERT INTO oc_zone VALUES(3502,220,'Volyns\'ka Oblast\'',7,1);
INSERT INTO oc_zone VALUES(3503,220,'Zakarpats\'ka Oblast\'',21,1);
INSERT INTO oc_zone VALUES(3504,220,'Zaporiz\'ka Oblast\'',23,1);
INSERT INTO oc_zone VALUES(3505,220,'Zhytomyrs\'ka oblast\'',18,1);
INSERT INTO oc_zone VALUES(3506,221,'Abu Dhabi','ADH',1);
INSERT INTO oc_zone VALUES(3507,221,'\'Ajman','AJ',1);
INSERT INTO oc_zone VALUES(3508,221,'Al Fujayrah','FU',1);
INSERT INTO oc_zone VALUES(3509,221,'Ash Shariqah','SH',1);
INSERT INTO oc_zone VALUES(3510,221,'Dubai','DU',1);
INSERT INTO oc_zone VALUES(3511,221,'R\'as al Khaymah','RK',1);
INSERT INTO oc_zone VALUES(3512,221,'Umm al Qaywayn','UQ',1);
INSERT INTO oc_zone VALUES(3513,222,'Aberdeen','ABN',1);
INSERT INTO oc_zone VALUES(3514,222,'Aberdeenshire','ABNS',1);
INSERT INTO oc_zone VALUES(3515,222,'Anglesey','ANG',1);
INSERT INTO oc_zone VALUES(3516,222,'Angus','AGS',1);
INSERT INTO oc_zone VALUES(3517,222,'Argyll and Bute','ARY',1);
INSERT INTO oc_zone VALUES(3518,222,'Bedfordshire','BEDS',1);
INSERT INTO oc_zone VALUES(3519,222,'Berkshire','BERKS',1);
INSERT INTO oc_zone VALUES(3520,222,'Blaenau Gwent','BLA',1);
INSERT INTO oc_zone VALUES(3521,222,'Bridgend','BRI',1);
INSERT INTO oc_zone VALUES(3522,222,'Bristol','BSTL',1);
INSERT INTO oc_zone VALUES(3523,222,'Buckinghamshire','BUCKS',1);
INSERT INTO oc_zone VALUES(3524,222,'Caerphilly','CAE',1);
INSERT INTO oc_zone VALUES(3525,222,'Cambridgeshire','CAMBS',1);
INSERT INTO oc_zone VALUES(3526,222,'Cardiff','CDF',1);
INSERT INTO oc_zone VALUES(3527,222,'Carmarthenshire','CARM',1);
INSERT INTO oc_zone VALUES(3528,222,'Ceredigion','CDGN',1);
INSERT INTO oc_zone VALUES(3529,222,'Cheshire','CHES',1);
INSERT INTO oc_zone VALUES(3530,222,'Clackmannanshire','CLACK',1);
INSERT INTO oc_zone VALUES(3531,222,'Conwy','CON',1);
INSERT INTO oc_zone VALUES(3532,222,'Cornwall','CORN',1);
INSERT INTO oc_zone VALUES(3533,222,'Denbighshire','DNBG',1);
INSERT INTO oc_zone VALUES(3534,222,'Derbyshire','DERBY',1);
INSERT INTO oc_zone VALUES(3535,222,'Devon','DVN',1);
INSERT INTO oc_zone VALUES(3536,222,'Dorset','DOR',1);
INSERT INTO oc_zone VALUES(3537,222,'Dumfries and Galloway','DGL',1);
INSERT INTO oc_zone VALUES(3538,222,'Dundee','DUND',1);
INSERT INTO oc_zone VALUES(3539,222,'Durham','DHM',1);
INSERT INTO oc_zone VALUES(3540,222,'East Ayrshire','ARYE',1);
INSERT INTO oc_zone VALUES(3541,222,'East Dunbartonshire','DUNBE',1);
INSERT INTO oc_zone VALUES(3542,222,'East Lothian','LOTE',1);
INSERT INTO oc_zone VALUES(3543,222,'East Renfrewshire','RENE',1);
INSERT INTO oc_zone VALUES(3544,222,'East Riding of Yorkshire','ERYS',1);
INSERT INTO oc_zone VALUES(3545,222,'East Sussex','SXE',1);
INSERT INTO oc_zone VALUES(3546,222,'Edinburgh','EDIN',1);
INSERT INTO oc_zone VALUES(3547,222,'Essex','ESX',1);
INSERT INTO oc_zone VALUES(3548,222,'Falkirk','FALK',1);
INSERT INTO oc_zone VALUES(3549,222,'Fife','FFE',1);
INSERT INTO oc_zone VALUES(3550,222,'Flintshire','FLINT',1);
INSERT INTO oc_zone VALUES(3551,222,'Glasgow','GLAS',1);
INSERT INTO oc_zone VALUES(3552,222,'Gloucestershire','GLOS',1);
INSERT INTO oc_zone VALUES(3553,222,'Greater London','LDN',1);
INSERT INTO oc_zone VALUES(3554,222,'Greater Manchester','MCH',1);
INSERT INTO oc_zone VALUES(3555,222,'Gwynedd','GDD',1);
INSERT INTO oc_zone VALUES(3556,222,'Hampshire','HANTS',1);
INSERT INTO oc_zone VALUES(3557,222,'Herefordshire','HWR',1);
INSERT INTO oc_zone VALUES(3558,222,'Hertfordshire','HERTS',1);
INSERT INTO oc_zone VALUES(3559,222,'Highlands','HLD',1);
INSERT INTO oc_zone VALUES(3560,222,'Inverclyde','IVER',1);
INSERT INTO oc_zone VALUES(3561,222,'Isle of Wight','IOW',1);
INSERT INTO oc_zone VALUES(3562,222,'Kent','KNT',1);
INSERT INTO oc_zone VALUES(3563,222,'Lancashire','LANCS',1);
INSERT INTO oc_zone VALUES(3564,222,'Leicestershire','LEICS',1);
INSERT INTO oc_zone VALUES(3565,222,'Lincolnshire','LINCS',1);
INSERT INTO oc_zone VALUES(3566,222,'Merseyside','MSY',1);
INSERT INTO oc_zone VALUES(3567,222,'Merthyr Tydfil','MERT',1);
INSERT INTO oc_zone VALUES(3568,222,'Midlothian','MLOT',1);
INSERT INTO oc_zone VALUES(3569,222,'Monmouthshire','MMOUTH',1);
INSERT INTO oc_zone VALUES(3570,222,'Moray','MORAY',1);
INSERT INTO oc_zone VALUES(3571,222,'Neath Port Talbot','NPRTAL',1);
INSERT INTO oc_zone VALUES(3572,222,'Newport','NEWPT',1);
INSERT INTO oc_zone VALUES(3573,222,'Norfolk','NOR',1);
INSERT INTO oc_zone VALUES(3574,222,'North Ayrshire','ARYN',1);
INSERT INTO oc_zone VALUES(3575,222,'North Lanarkshire','LANN',1);
INSERT INTO oc_zone VALUES(3576,222,'North Yorkshire','YSN',1);
INSERT INTO oc_zone VALUES(3577,222,'Northamptonshire','NHM',1);
INSERT INTO oc_zone VALUES(3578,222,'Northumberland','NLD',1);
INSERT INTO oc_zone VALUES(3579,222,'Nottinghamshire','NOT',1);
INSERT INTO oc_zone VALUES(3580,222,'Orkney Islands','ORK',1);
INSERT INTO oc_zone VALUES(3581,222,'Oxfordshire','OFE',1);
INSERT INTO oc_zone VALUES(3582,222,'Pembrokeshire','PEM',1);
INSERT INTO oc_zone VALUES(3583,222,'Perth and Kinross','PERTH',1);
INSERT INTO oc_zone VALUES(3584,222,'Powys','PWS',1);
INSERT INTO oc_zone VALUES(3585,222,'Renfrewshire','REN',1);
INSERT INTO oc_zone VALUES(3586,222,'Rhondda Cynon Taff','RHON',1);
INSERT INTO oc_zone VALUES(3587,222,'Rutland','RUT',1);
INSERT INTO oc_zone VALUES(3588,222,'Scottish Borders','BOR',1);
INSERT INTO oc_zone VALUES(3589,222,'Shetland Islands','SHET',1);
INSERT INTO oc_zone VALUES(3590,222,'Shropshire','SPE',1);
INSERT INTO oc_zone VALUES(3591,222,'Somerset','SOM',1);
INSERT INTO oc_zone VALUES(3592,222,'South Ayrshire','ARYS',1);
INSERT INTO oc_zone VALUES(3593,222,'South Lanarkshire','LANS',1);
INSERT INTO oc_zone VALUES(3594,222,'South Yorkshire','YSS',1);
INSERT INTO oc_zone VALUES(3595,222,'Staffordshire','SFD',1);
INSERT INTO oc_zone VALUES(3596,222,'Stirling','STIR',1);
INSERT INTO oc_zone VALUES(3597,222,'Suffolk','SFK',1);
INSERT INTO oc_zone VALUES(3598,222,'Surrey','SRY',1);
INSERT INTO oc_zone VALUES(3599,222,'Swansea','SWAN',1);
INSERT INTO oc_zone VALUES(3600,222,'Torfaen','TORF',1);
INSERT INTO oc_zone VALUES(3601,222,'Tyne and Wear','TWR',1);
INSERT INTO oc_zone VALUES(3602,222,'Vale of Glamorgan','VGLAM',1);
INSERT INTO oc_zone VALUES(3603,222,'Warwickshire','WARKS',1);
INSERT INTO oc_zone VALUES(3604,222,'West Dunbartonshire','WDUN',1);
INSERT INTO oc_zone VALUES(3605,222,'West Lothian','WLOT',1);
INSERT INTO oc_zone VALUES(3606,222,'West Midlands','WMD',1);
INSERT INTO oc_zone VALUES(3607,222,'West Sussex','SXW',1);
INSERT INTO oc_zone VALUES(3608,222,'West Yorkshire','YSW',1);
INSERT INTO oc_zone VALUES(3609,222,'Western Isles','WIL',1);
INSERT INTO oc_zone VALUES(3610,222,'Wiltshire','WLT',1);
INSERT INTO oc_zone VALUES(3611,222,'Worcestershire','WORCS',1);
INSERT INTO oc_zone VALUES(3612,222,'Wrexham','WRX',1);
INSERT INTO oc_zone VALUES(3613,223,'Alabama','AL',1);
INSERT INTO oc_zone VALUES(3614,223,'Alaska','AK',1);
INSERT INTO oc_zone VALUES(3615,223,'American Samoa','AS',1);
INSERT INTO oc_zone VALUES(3616,223,'Arizona','AZ',1);
INSERT INTO oc_zone VALUES(3617,223,'Arkansas','AR',1);
INSERT INTO oc_zone VALUES(3618,223,'Armed Forces Africa','AF',1);
INSERT INTO oc_zone VALUES(3619,223,'Armed Forces Americas','AA',1);
INSERT INTO oc_zone VALUES(3620,223,'Armed Forces Canada','AC',1);
INSERT INTO oc_zone VALUES(3621,223,'Armed Forces Europe','AE',1);
INSERT INTO oc_zone VALUES(3622,223,'Armed Forces Middle East','AM',1);
INSERT INTO oc_zone VALUES(3623,223,'Armed Forces Pacific','AP',1);
INSERT INTO oc_zone VALUES(3624,223,'California','CA',1);
INSERT INTO oc_zone VALUES(3625,223,'Colorado','CO',1);
INSERT INTO oc_zone VALUES(3626,223,'Connecticut','CT',1);
INSERT INTO oc_zone VALUES(3627,223,'Delaware','DE',1);
INSERT INTO oc_zone VALUES(3628,223,'District of Columbia','DC',1);
INSERT INTO oc_zone VALUES(3629,223,'Federated States Of Micronesia','FM',1);
INSERT INTO oc_zone VALUES(3630,223,'Florida','FL',1);
INSERT INTO oc_zone VALUES(3631,223,'Georgia','GA',1);
INSERT INTO oc_zone VALUES(3632,223,'Guam','GU',1);
INSERT INTO oc_zone VALUES(3633,223,'Hawaii','HI',1);
INSERT INTO oc_zone VALUES(3634,223,'Idaho','ID',1);
INSERT INTO oc_zone VALUES(3635,223,'Illinois','IL',1);
INSERT INTO oc_zone VALUES(3636,223,'Indiana','IN',1);
INSERT INTO oc_zone VALUES(3637,223,'Iowa','IA',1);
INSERT INTO oc_zone VALUES(3638,223,'Kansas','KS',1);
INSERT INTO oc_zone VALUES(3639,223,'Kentucky','KY',1);
INSERT INTO oc_zone VALUES(3640,223,'Louisiana','LA',1);
INSERT INTO oc_zone VALUES(3641,223,'Maine','ME',1);
INSERT INTO oc_zone VALUES(3642,223,'Marshall Islands','MH',1);
INSERT INTO oc_zone VALUES(3643,223,'Maryland','MD',1);
INSERT INTO oc_zone VALUES(3644,223,'Massachusetts','MA',1);
INSERT INTO oc_zone VALUES(3645,223,'Michigan','MI',1);
INSERT INTO oc_zone VALUES(3646,223,'Minnesota','MN',1);
INSERT INTO oc_zone VALUES(3647,223,'Mississippi','MS',1);
INSERT INTO oc_zone VALUES(3648,223,'Missouri','MO',1);
INSERT INTO oc_zone VALUES(3649,223,'Montana','MT',1);
INSERT INTO oc_zone VALUES(3650,223,'Nebraska','NE',1);
INSERT INTO oc_zone VALUES(3651,223,'Nevada','NV',1);
INSERT INTO oc_zone VALUES(3652,223,'New Hampshire','NH',1);
INSERT INTO oc_zone VALUES(3653,223,'New Jersey','NJ',1);
INSERT INTO oc_zone VALUES(3654,223,'New Mexico','NM',1);
INSERT INTO oc_zone VALUES(3655,223,'New York','NY',1);
INSERT INTO oc_zone VALUES(3656,223,'North Carolina','NC',1);
INSERT INTO oc_zone VALUES(3657,223,'North Dakota','ND',1);
INSERT INTO oc_zone VALUES(3658,223,'Northern Mariana Islands','MP',1);
INSERT INTO oc_zone VALUES(3659,223,'Ohio','OH',1);
INSERT INTO oc_zone VALUES(3660,223,'Oklahoma','OK',1);
INSERT INTO oc_zone VALUES(3661,223,'Oregon','OR',1);
INSERT INTO oc_zone VALUES(3662,223,'Palau','PW',1);
INSERT INTO oc_zone VALUES(3663,223,'Pennsylvania','PA',1);
INSERT INTO oc_zone VALUES(3664,223,'Puerto Rico','PR',1);
INSERT INTO oc_zone VALUES(3665,223,'Rhode Island','RI',1);
INSERT INTO oc_zone VALUES(3666,223,'South Carolina','SC',1);
INSERT INTO oc_zone VALUES(3667,223,'South Dakota','SD',1);
INSERT INTO oc_zone VALUES(3668,223,'Tennessee','TN',1);
INSERT INTO oc_zone VALUES(3669,223,'Texas','TX',1);
INSERT INTO oc_zone VALUES(3670,223,'Utah','UT',1);
INSERT INTO oc_zone VALUES(3671,223,'Vermont','VT',1);
INSERT INTO oc_zone VALUES(3672,223,'Virgin Islands','VI',1);
INSERT INTO oc_zone VALUES(3673,223,'Virginia','VA',1);
INSERT INTO oc_zone VALUES(3674,223,'Washington','WA',1);
INSERT INTO oc_zone VALUES(3675,223,'West Virginia','WV',1);
INSERT INTO oc_zone VALUES(3676,223,'Wisconsin','WI',1);
INSERT INTO oc_zone VALUES(3677,223,'Wyoming','WY',1);
INSERT INTO oc_zone VALUES(3678,224,'Baker Island','BI',1);
INSERT INTO oc_zone VALUES(3679,224,'Howland Island','HI',1);
INSERT INTO oc_zone VALUES(3680,224,'Jarvis Island','JI',1);
INSERT INTO oc_zone VALUES(3681,224,'Johnston Atoll','JA',1);
INSERT INTO oc_zone VALUES(3682,224,'Kingman Reef','KR',1);
INSERT INTO oc_zone VALUES(3683,224,'Midway Atoll','MA',1);
INSERT INTO oc_zone VALUES(3684,224,'Navassa Island','NI',1);
INSERT INTO oc_zone VALUES(3685,224,'Palmyra Atoll','PA',1);
INSERT INTO oc_zone VALUES(3686,224,'Wake Island','WI',1);
INSERT INTO oc_zone VALUES(3687,225,'Artigas','AR',1);
INSERT INTO oc_zone VALUES(3688,225,'Canelones','CA',1);
INSERT INTO oc_zone VALUES(3689,225,'Cerro Largo','CL',1);
INSERT INTO oc_zone VALUES(3690,225,'Colonia','CO',1);
INSERT INTO oc_zone VALUES(3691,225,'Durazno','DU',1);
INSERT INTO oc_zone VALUES(3692,225,'Flores','FS',1);
INSERT INTO oc_zone VALUES(3693,225,'Florida','FA',1);
INSERT INTO oc_zone VALUES(3694,225,'Lavalleja','LA',1);
INSERT INTO oc_zone VALUES(3695,225,'Maldonado','MA',1);
INSERT INTO oc_zone VALUES(3696,225,'Montevideo','MO',1);
INSERT INTO oc_zone VALUES(3697,225,'Paysandu','PA',1);
INSERT INTO oc_zone VALUES(3698,225,'Rio Negro','RN',1);
INSERT INTO oc_zone VALUES(3699,225,'Rivera','RV',1);
INSERT INTO oc_zone VALUES(3700,225,'Rocha','RO',1);
INSERT INTO oc_zone VALUES(3701,225,'Salto','SL',1);
INSERT INTO oc_zone VALUES(3702,225,'San Jose','SJ',1);
INSERT INTO oc_zone VALUES(3703,225,'Soriano','SO',1);
INSERT INTO oc_zone VALUES(3704,225,'Tacuarembo','TA',1);
INSERT INTO oc_zone VALUES(3705,225,'Treinta y Tres','TT',1);
INSERT INTO oc_zone VALUES(3706,226,'Andijon','AN',1);
INSERT INTO oc_zone VALUES(3707,226,'Buxoro','BU',1);
INSERT INTO oc_zone VALUES(3708,226,'Farg\'ona','FA',1);
INSERT INTO oc_zone VALUES(3709,226,'Jizzax','JI',1);
INSERT INTO oc_zone VALUES(3710,226,'Namangan','NG',1);
INSERT INTO oc_zone VALUES(3711,226,'Navoiy','NW',1);
INSERT INTO oc_zone VALUES(3712,226,'Qashqadaryo','QA',1);
INSERT INTO oc_zone VALUES(3713,226,'Qoraqalpog\'iston Republikasi','QR',1);
INSERT INTO oc_zone VALUES(3714,226,'Samarqand','SA',1);
INSERT INTO oc_zone VALUES(3715,226,'Sirdaryo','SI',1);
INSERT INTO oc_zone VALUES(3716,226,'Surxondaryo','SU',1);
INSERT INTO oc_zone VALUES(3717,226,'Toshkent City','TK',1);
INSERT INTO oc_zone VALUES(3718,226,'Toshkent Region','TO',1);
INSERT INTO oc_zone VALUES(3719,226,'Xorazm','XO',1);
INSERT INTO oc_zone VALUES(3720,227,'Malampa','MA',1);
INSERT INTO oc_zone VALUES(3721,227,'Penama','PE',1);
INSERT INTO oc_zone VALUES(3722,227,'Sanma','SA',1);
INSERT INTO oc_zone VALUES(3723,227,'Shefa','SH',1);
INSERT INTO oc_zone VALUES(3724,227,'Tafea','TA',1);
INSERT INTO oc_zone VALUES(3725,227,'Torba','TO',1);
INSERT INTO oc_zone VALUES(3726,229,'Amazonas','AM',1);
INSERT INTO oc_zone VALUES(3727,229,'Anzoategui','AN',1);
INSERT INTO oc_zone VALUES(3728,229,'Apure','AP',1);
INSERT INTO oc_zone VALUES(3729,229,'Aragua','AR',1);
INSERT INTO oc_zone VALUES(3730,229,'Barinas','BA',1);
INSERT INTO oc_zone VALUES(3731,229,'Bolivar','BO',1);
INSERT INTO oc_zone VALUES(3732,229,'Carabobo','CA',1);
INSERT INTO oc_zone VALUES(3733,229,'Cojedes','CO',1);
INSERT INTO oc_zone VALUES(3734,229,'Delta Amacuro','DA',1);
INSERT INTO oc_zone VALUES(3735,229,'Dependencias Federales','DF',1);
INSERT INTO oc_zone VALUES(3736,229,'Distrito Federal','DI',1);
INSERT INTO oc_zone VALUES(3737,229,'Falcon','FA',1);
INSERT INTO oc_zone VALUES(3738,229,'Guarico','GU',1);
INSERT INTO oc_zone VALUES(3739,229,'Lara','LA',1);
INSERT INTO oc_zone VALUES(3740,229,'Merida','ME',1);
INSERT INTO oc_zone VALUES(3741,229,'Miranda','MI',1);
INSERT INTO oc_zone VALUES(3742,229,'Monagas','MO',1);
INSERT INTO oc_zone VALUES(3743,229,'Nueva Esparta','NE',1);
INSERT INTO oc_zone VALUES(3744,229,'Portuguesa','PO',1);
INSERT INTO oc_zone VALUES(3745,229,'Sucre','SU',1);
INSERT INTO oc_zone VALUES(3746,229,'Tachira','TA',1);
INSERT INTO oc_zone VALUES(3747,229,'Trujillo','TR',1);
INSERT INTO oc_zone VALUES(3748,229,'Vargas','VA',1);
INSERT INTO oc_zone VALUES(3749,229,'Yaracuy','YA',1);
INSERT INTO oc_zone VALUES(3750,229,'Zulia','ZU',1);
INSERT INTO oc_zone VALUES(3751,230,'An Giang','AG',1);
INSERT INTO oc_zone VALUES(3752,230,'Bac Giang','BG',1);
INSERT INTO oc_zone VALUES(3753,230,'Bac Kan','BK',1);
INSERT INTO oc_zone VALUES(3754,230,'Bac Lieu','BL',1);
INSERT INTO oc_zone VALUES(3755,230,'Bac Ninh','BC',1);
INSERT INTO oc_zone VALUES(3756,230,'Ba Ria-Vung Tau','BR',1);
INSERT INTO oc_zone VALUES(3757,230,'Ben Tre','BN',1);
INSERT INTO oc_zone VALUES(3758,230,'Binh Dinh','BH',1);
INSERT INTO oc_zone VALUES(3759,230,'Binh Duong','BU',1);
INSERT INTO oc_zone VALUES(3760,230,'Binh Phuoc','BP',1);
INSERT INTO oc_zone VALUES(3761,230,'Binh Thuan','BT',1);
INSERT INTO oc_zone VALUES(3762,230,'Ca Mau','CM',1);
INSERT INTO oc_zone VALUES(3763,230,'Can Tho','CT',1);
INSERT INTO oc_zone VALUES(3764,230,'Cao Bang','CB',1);
INSERT INTO oc_zone VALUES(3765,230,'Dak Lak','DL',1);
INSERT INTO oc_zone VALUES(3766,230,'Dak Nong','DG',1);
INSERT INTO oc_zone VALUES(3767,230,'Da Nang','DN',1);
INSERT INTO oc_zone VALUES(3768,230,'Dien Bien','DB',1);
INSERT INTO oc_zone VALUES(3769,230,'Dong Nai','DI',1);
INSERT INTO oc_zone VALUES(3770,230,'Dong Thap','DT',1);
INSERT INTO oc_zone VALUES(3771,230,'Gia Lai','GL',1);
INSERT INTO oc_zone VALUES(3772,230,'Ha Giang','HG',1);
INSERT INTO oc_zone VALUES(3773,230,'Hai Duong','HD',1);
INSERT INTO oc_zone VALUES(3774,230,'Hai Phong','HP',1);
INSERT INTO oc_zone VALUES(3775,230,'Ha Nam','HM',1);
INSERT INTO oc_zone VALUES(3776,230,'Ha Noi','HI',1);
INSERT INTO oc_zone VALUES(3777,230,'Ha Tay','HT',1);
INSERT INTO oc_zone VALUES(3778,230,'Ha Tinh','HH',1);
INSERT INTO oc_zone VALUES(3779,230,'Hoa Binh','HB',1);
INSERT INTO oc_zone VALUES(3780,230,'Ho Chi Minh City','HC',1);
INSERT INTO oc_zone VALUES(3781,230,'Hau Giang','HU',1);
INSERT INTO oc_zone VALUES(3782,230,'Hung Yen','HY',1);
INSERT INTO oc_zone VALUES(3783,232,'Saint Croix','C',1);
INSERT INTO oc_zone VALUES(3784,232,'Saint John','J',1);
INSERT INTO oc_zone VALUES(3785,232,'Saint Thomas','T',1);
INSERT INTO oc_zone VALUES(3786,233,'Alo','A',1);
INSERT INTO oc_zone VALUES(3787,233,'Sigave','S',1);
INSERT INTO oc_zone VALUES(3788,233,'Wallis','W',1);
INSERT INTO oc_zone VALUES(3789,235,'Abyan','AB',1);
INSERT INTO oc_zone VALUES(3790,235,'Adan','AD',1);
INSERT INTO oc_zone VALUES(3791,235,'Amran','AM',1);
INSERT INTO oc_zone VALUES(3792,235,'Al Bayda','BA',1);
INSERT INTO oc_zone VALUES(3793,235,'Ad Dali','DA',1);
INSERT INTO oc_zone VALUES(3794,235,'Dhamar','DH',1);
INSERT INTO oc_zone VALUES(3795,235,'Hadramawt','HD',1);
INSERT INTO oc_zone VALUES(3796,235,'Hajjah','HJ',1);
INSERT INTO oc_zone VALUES(3797,235,'Al Hudaydah','HU',1);
INSERT INTO oc_zone VALUES(3798,235,'Ibb','IB',1);
INSERT INTO oc_zone VALUES(3799,235,'Al Jawf','JA',1);
INSERT INTO oc_zone VALUES(3800,235,'Lahij','LA',1);
INSERT INTO oc_zone VALUES(3801,235,'Ma\'rib','MA',1);
INSERT INTO oc_zone VALUES(3802,235,'Al Mahrah','MR',1);
INSERT INTO oc_zone VALUES(3803,235,'Al Mahwit','MW',1);
INSERT INTO oc_zone VALUES(3804,235,'Sa\'dah','SD',1);
INSERT INTO oc_zone VALUES(3805,235,'San\'a','SN',1);
INSERT INTO oc_zone VALUES(3806,235,'Shabwah','SH',1);
INSERT INTO oc_zone VALUES(3807,235,'Ta\'izz','TA',1);
INSERT INTO oc_zone VALUES(3812,237,'Bas-Congo','BC',1);
INSERT INTO oc_zone VALUES(3813,237,'Bandundu','BN',1);
INSERT INTO oc_zone VALUES(3814,237,'Equateur','EQ',1);
INSERT INTO oc_zone VALUES(3815,237,'Katanga','KA',1);
INSERT INTO oc_zone VALUES(3816,237,'Kasai-Oriental','KE',1);
INSERT INTO oc_zone VALUES(3817,237,'Kinshasa','KN',1);
INSERT INTO oc_zone VALUES(3818,237,'Kasai-Occidental','KW',1);
INSERT INTO oc_zone VALUES(3819,237,'Maniema','MA',1);
INSERT INTO oc_zone VALUES(3820,237,'Nord-Kivu','NK',1);
INSERT INTO oc_zone VALUES(3821,237,'Orientale','OR',1);
INSERT INTO oc_zone VALUES(3822,237,'Sud-Kivu','SK',1);
INSERT INTO oc_zone VALUES(3823,238,'Central','CE',1);
INSERT INTO oc_zone VALUES(3824,238,'Copperbelt','CB',1);
INSERT INTO oc_zone VALUES(3825,238,'Eastern','EA',1);
INSERT INTO oc_zone VALUES(3826,238,'Luapula','LP',1);
INSERT INTO oc_zone VALUES(3827,238,'Lusaka','LK',1);
INSERT INTO oc_zone VALUES(3828,238,'Northern','NO',1);
INSERT INTO oc_zone VALUES(3829,238,'North-Western','NW',1);
INSERT INTO oc_zone VALUES(3830,238,'Southern','SO',1);
INSERT INTO oc_zone VALUES(3831,238,'Western','WE',1);
INSERT INTO oc_zone VALUES(3832,239,'Bulawayo','BU',1);
INSERT INTO oc_zone VALUES(3833,239,'Harare','HA',1);
INSERT INTO oc_zone VALUES(3834,239,'Manicaland','ML',1);
INSERT INTO oc_zone VALUES(3835,239,'Mashonaland Central','MC',1);
INSERT INTO oc_zone VALUES(3836,239,'Mashonaland East','ME',1);
INSERT INTO oc_zone VALUES(3837,239,'Mashonaland West','MW',1);
INSERT INTO oc_zone VALUES(3838,239,'Masvingo','MV',1);
INSERT INTO oc_zone VALUES(3839,239,'Matabeleland North','MN',1);
INSERT INTO oc_zone VALUES(3840,239,'Matabeleland South','MS',1);
INSERT INTO oc_zone VALUES(3841,239,'Midlands','MD',1);
INSERT INTO oc_zone VALUES(3861,105,'Campobasso','CB',1);
INSERT INTO oc_zone VALUES(3863,105,'Caserta','CE',1);
INSERT INTO oc_zone VALUES(3864,105,'Catania','CT',1);
INSERT INTO oc_zone VALUES(3865,105,'Catanzaro','CZ',1);
INSERT INTO oc_zone VALUES(3866,105,'Chieti','CH',1);
INSERT INTO oc_zone VALUES(3867,105,'Como','CO',1);
INSERT INTO oc_zone VALUES(3868,105,'Cosenza','CS',1);
INSERT INTO oc_zone VALUES(3869,105,'Cremona','CR',1);
INSERT INTO oc_zone VALUES(3870,105,'Crotone','KR',1);
INSERT INTO oc_zone VALUES(3871,105,'Cuneo','CN',1);
INSERT INTO oc_zone VALUES(3872,105,'Enna','EN',1);
INSERT INTO oc_zone VALUES(3873,105,'Ferrara','FE',1);
INSERT INTO oc_zone VALUES(3874,105,'Firenze','FI',1);
INSERT INTO oc_zone VALUES(3875,105,'Foggia','FG',1);
INSERT INTO oc_zone VALUES(3876,105,'Forli-Cesena','FC',1);
INSERT INTO oc_zone VALUES(3877,105,'Frosinone','FR',1);
INSERT INTO oc_zone VALUES(3878,105,'Genova','GE',1);
INSERT INTO oc_zone VALUES(3879,105,'Gorizia','GO',1);
INSERT INTO oc_zone VALUES(3880,105,'Grosseto','GR',1);
INSERT INTO oc_zone VALUES(3881,105,'Imperia','IM',1);
INSERT INTO oc_zone VALUES(3882,105,'Isernia','IS',1);
INSERT INTO oc_zone VALUES(3883,105,'L&#39;Aquila','AQ',1);
INSERT INTO oc_zone VALUES(3884,105,'La Spezia','SP',1);
INSERT INTO oc_zone VALUES(3885,105,'Latina','LT',1);
INSERT INTO oc_zone VALUES(3886,105,'Lecce','LE',1);
INSERT INTO oc_zone VALUES(3887,105,'Lecco','LC',1);
INSERT INTO oc_zone VALUES(3888,105,'Livorno','LI',1);
INSERT INTO oc_zone VALUES(3889,105,'Lodi','LO',1);
INSERT INTO oc_zone VALUES(3890,105,'Lucca','LU',1);
INSERT INTO oc_zone VALUES(3891,105,'Macerata','MC',1);
INSERT INTO oc_zone VALUES(3892,105,'Mantova','MN',1);
INSERT INTO oc_zone VALUES(3893,105,'Massa-Carrara','MS',1);
INSERT INTO oc_zone VALUES(3894,105,'Matera','MT',1);
INSERT INTO oc_zone VALUES(3896,105,'Messina','ME',1);
INSERT INTO oc_zone VALUES(3897,105,'Milano','MI',1);
INSERT INTO oc_zone VALUES(3898,105,'Modena','MO',1);
INSERT INTO oc_zone VALUES(3899,105,'Napoli','NA',1);
INSERT INTO oc_zone VALUES(3900,105,'Novara','NO',1);
INSERT INTO oc_zone VALUES(3901,105,'Nuoro','NU',1);
INSERT INTO oc_zone VALUES(3904,105,'Oristano','OR',1);
INSERT INTO oc_zone VALUES(3905,105,'Padova','PD',1);
INSERT INTO oc_zone VALUES(3906,105,'Palermo','PA',1);
INSERT INTO oc_zone VALUES(3907,105,'Parma','PR',1);
INSERT INTO oc_zone VALUES(3908,105,'Pavia','PV',1);
INSERT INTO oc_zone VALUES(3909,105,'Perugia','PG',1);
INSERT INTO oc_zone VALUES(3910,105,'Pesaro e Urbino','PU',1);
INSERT INTO oc_zone VALUES(3911,105,'Pescara','PE',1);
INSERT INTO oc_zone VALUES(3912,105,'Piacenza','PC',1);
INSERT INTO oc_zone VALUES(3913,105,'Pisa','PI',1);
INSERT INTO oc_zone VALUES(3914,105,'Pistoia','PT',1);
INSERT INTO oc_zone VALUES(3915,105,'Pordenone','PN',1);
INSERT INTO oc_zone VALUES(3916,105,'Potenza','PZ',1);
INSERT INTO oc_zone VALUES(3917,105,'Prato','PO',1);
INSERT INTO oc_zone VALUES(3918,105,'Ragusa','RG',1);
INSERT INTO oc_zone VALUES(3919,105,'Ravenna','RA',1);
INSERT INTO oc_zone VALUES(3920,105,'Reggio Calabria','RC',1);
INSERT INTO oc_zone VALUES(3921,105,'Reggio Emilia','RE',1);
INSERT INTO oc_zone VALUES(3922,105,'Rieti','RI',1);
INSERT INTO oc_zone VALUES(3923,105,'Rimini','RN',1);
INSERT INTO oc_zone VALUES(3924,105,'Roma','RM',1);
INSERT INTO oc_zone VALUES(3925,105,'Rovigo','RO',1);
INSERT INTO oc_zone VALUES(3926,105,'Salerno','SA',1);
INSERT INTO oc_zone VALUES(3927,105,'Sassari','SS',1);
INSERT INTO oc_zone VALUES(3928,105,'Savona','SV',1);
INSERT INTO oc_zone VALUES(3929,105,'Siena','SI',1);
INSERT INTO oc_zone VALUES(3930,105,'Siracusa','SR',1);
INSERT INTO oc_zone VALUES(3931,105,'Sondrio','SO',1);
INSERT INTO oc_zone VALUES(3932,105,'Taranto','TA',1);
INSERT INTO oc_zone VALUES(3933,105,'Teramo','TE',1);
INSERT INTO oc_zone VALUES(3934,105,'Terni','TR',1);
INSERT INTO oc_zone VALUES(3935,105,'Torino','TO',1);
INSERT INTO oc_zone VALUES(3936,105,'Trapani','TP',1);
INSERT INTO oc_zone VALUES(3937,105,'Trento','TN',1);
INSERT INTO oc_zone VALUES(3938,105,'Treviso','TV',1);
INSERT INTO oc_zone VALUES(3939,105,'Trieste','TS',1);
INSERT INTO oc_zone VALUES(3940,105,'Udine','UD',1);
INSERT INTO oc_zone VALUES(3941,105,'Varese','VA',1);
INSERT INTO oc_zone VALUES(3942,105,'Venezia','VE',1);
INSERT INTO oc_zone VALUES(3943,105,'Verbano-Cusio-Ossola','VB',1);
INSERT INTO oc_zone VALUES(3944,105,'Vercelli','VC',1);
INSERT INTO oc_zone VALUES(3945,105,'Verona','VR',1);
INSERT INTO oc_zone VALUES(3946,105,'Vibo Valentia','VV',1);
INSERT INTO oc_zone VALUES(3947,105,'Vicenza','VI',1);
INSERT INTO oc_zone VALUES(3948,105,'Viterbo','VT',1);
INSERT INTO oc_zone VALUES(3949,222,'County Antrim','ANT',1);
INSERT INTO oc_zone VALUES(3950,222,'County Armagh','ARM',1);
INSERT INTO oc_zone VALUES(3951,222,'County Down','DOW',1);
INSERT INTO oc_zone VALUES(3952,222,'County Fermanagh','FER',1);
INSERT INTO oc_zone VALUES(3953,222,'County Londonderry','LDY',1);
INSERT INTO oc_zone VALUES(3954,222,'County Tyrone','TYR',1);
INSERT INTO oc_zone VALUES(3955,222,'Cumbria','CMA',1);
INSERT INTO oc_zone VALUES(3956,190,'Pomurska',1,1);
INSERT INTO oc_zone VALUES(3957,190,'Podravska',2,1);
INSERT INTO oc_zone VALUES(3958,190,'Koro?ka',3,1);
INSERT INTO oc_zone VALUES(3959,190,'Savinjska',4,1);
INSERT INTO oc_zone VALUES(3960,190,'Zasavska',5,1);
INSERT INTO oc_zone VALUES(3961,190,'Spodnjeposavska',6,1);
INSERT INTO oc_zone VALUES(3962,190,'Jugovzhodna Slovenija',7,1);
INSERT INTO oc_zone VALUES(3963,190,'Osrednjeslovenska',8,1);
INSERT INTO oc_zone VALUES(3964,190,'Gorenjska',9,1);
INSERT INTO oc_zone VALUES(3965,190,'Notranjsko-kra?ka',10,1);
INSERT INTO oc_zone VALUES(3966,190,'Gori?ka',11,1);
INSERT INTO oc_zone VALUES(3967,190,'Obalno-kra?ka',12,1);
INSERT INTO oc_zone VALUES(3968,33,'Ruse','',1);
INSERT INTO oc_zone VALUES(3969,101,'Alborz','ALB',1);
INSERT INTO oc_zone VALUES(3970,21,'Brussels-Capital Region','BRU',1);
INSERT INTO oc_zone VALUES(3971,138,'Aguascalientes','AG',1);
INSERT INTO oc_zone VALUES(3973,242,'Andrijevica',1,1);
INSERT INTO oc_zone VALUES(3974,242,'Bar',2,1);
INSERT INTO oc_zone VALUES(3975,242,'Berane',3,1);
INSERT INTO oc_zone VALUES(3976,242,'Bijelo Polje',4,1);
INSERT INTO oc_zone VALUES(3977,242,'Budva',5,1);
INSERT INTO oc_zone VALUES(3978,242,'Cetinje',6,1);
INSERT INTO oc_zone VALUES(3979,242,'Danilovgrad',7,1);
INSERT INTO oc_zone VALUES(3980,242,'Herceg-Novi',8,1);
INSERT INTO oc_zone VALUES(3981,242,'Kola?in',9,1);
INSERT INTO oc_zone VALUES(3982,242,'Kotor',10,1);
INSERT INTO oc_zone VALUES(3983,242,'Mojkovac',11,1);
INSERT INTO oc_zone VALUES(3984,242,'Nik?i?',12,1);
INSERT INTO oc_zone VALUES(3985,242,'Plav',13,1);
INSERT INTO oc_zone VALUES(3986,242,'Pljevlja',14,1);
INSERT INTO oc_zone VALUES(3987,242,'Plu?ine',15,1);
INSERT INTO oc_zone VALUES(3988,242,'Podgorica',16,1);
INSERT INTO oc_zone VALUES(3989,242,'Ro?aje',17,1);
INSERT INTO oc_zone VALUES(3990,242,'?avnik',18,1);
INSERT INTO oc_zone VALUES(3991,242,'Tivat',19,1);
INSERT INTO oc_zone VALUES(3992,242,'Ulcinj',20,1);
INSERT INTO oc_zone VALUES(3993,242,'?abljak',21,1);
INSERT INTO oc_zone VALUES(3994,243,'Belgrade',0,1);
INSERT INTO oc_zone VALUES(3995,243,'North Ba?ka',1,1);
INSERT INTO oc_zone VALUES(3996,243,'Central Banat',2,1);
INSERT INTO oc_zone VALUES(3997,243,'North Banat',3,1);
INSERT INTO oc_zone VALUES(3998,243,'South Banat',4,1);
INSERT INTO oc_zone VALUES(3999,243,'West Ba?ka',5,1);
INSERT INTO oc_zone VALUES(4000,243,'South Ba?ka',6,1);
INSERT INTO oc_zone VALUES(4001,243,'Srem',7,1);
INSERT INTO oc_zone VALUES(4002,243,'Ma?va',8,1);
INSERT INTO oc_zone VALUES(4003,243,'Kolubara',9,1);
INSERT INTO oc_zone VALUES(4004,243,'Podunavlje',10,1);
INSERT INTO oc_zone VALUES(4005,243,'Brani?evo',11,1);
INSERT INTO oc_zone VALUES(4006,243,'?umadija',12,1);
INSERT INTO oc_zone VALUES(4007,243,'Pomoravlje',13,1);
INSERT INTO oc_zone VALUES(4008,243,'Bor',14,1);
INSERT INTO oc_zone VALUES(4009,243,'Zaje?ar',15,1);
INSERT INTO oc_zone VALUES(4010,243,'Zlatibor',16,1);
INSERT INTO oc_zone VALUES(4011,243,'Moravica',17,1);
INSERT INTO oc_zone VALUES(4012,243,'Ra?ka',18,1);
INSERT INTO oc_zone VALUES(4013,243,'Rasina',19,1);
INSERT INTO oc_zone VALUES(4014,243,'Ni?ava',20,1);
INSERT INTO oc_zone VALUES(4015,243,'Toplica',21,1);
INSERT INTO oc_zone VALUES(4016,243,'Pirot',22,1);
INSERT INTO oc_zone VALUES(4017,243,'Jablanica',23,1);
INSERT INTO oc_zone VALUES(4018,243,'P?inja',24,1);
INSERT INTO oc_zone VALUES(4020,245,'Bonaire','BO',1);
INSERT INTO oc_zone VALUES(4021,245,'Saba','SA',1);
INSERT INTO oc_zone VALUES(4022,245,'Sint Eustatius','SE',1);
INSERT INTO oc_zone VALUES(4023,248,'Central Equatoria','EC',1);
INSERT INTO oc_zone VALUES(4024,248,'Eastern Equatoria','EE',1);
INSERT INTO oc_zone VALUES(4025,248,'Jonglei','JG',1);
INSERT INTO oc_zone VALUES(4026,248,'Lakes','LK',1);
INSERT INTO oc_zone VALUES(4027,248,'Northern Bahr el-Ghazal','BN',1);
INSERT INTO oc_zone VALUES(4028,248,'Unity','UY',1);
INSERT INTO oc_zone VALUES(4029,248,'Upper Nile','NU',1);
INSERT INTO oc_zone VALUES(4030,248,'Warrap','WR',1);
INSERT INTO oc_zone VALUES(4031,248,'Western Bahr el-Ghazal','BW',1);
INSERT INTO oc_zone VALUES(4032,248,'Western Equatoria','EW',1);
INSERT INTO oc_zone VALUES(4036,117,'Aina?i, Salacgr?vas novads',661405,1);
INSERT INTO oc_zone VALUES(4037,117,'Aizkraukle, Aizkraukles novads',320201,1);
INSERT INTO oc_zone VALUES(4038,117,'Aizkraukles novads',320200,1);
INSERT INTO oc_zone VALUES(4039,117,'Aizpute, Aizputes novads',640605,1);
INSERT INTO oc_zone VALUES(4040,117,'Aizputes novads',640600,1);
INSERT INTO oc_zone VALUES(4041,117,'Akn?ste, Akn?stes novads',560805,1);
INSERT INTO oc_zone VALUES(4042,117,'Akn?stes novads',560800,1);
INSERT INTO oc_zone VALUES(4043,117,'Aloja, Alojas novads',661007,1);
INSERT INTO oc_zone VALUES(4044,117,'Alojas novads',661000,1);
INSERT INTO oc_zone VALUES(4045,117,'Alsungas novads',624200,1);
INSERT INTO oc_zone VALUES(4046,117,'Al?ksne, Al?ksnes novads',360201,1);
INSERT INTO oc_zone VALUES(4047,117,'Al?ksnes novads',360200,1);
INSERT INTO oc_zone VALUES(4048,117,'Amatas novads',424701,1);
INSERT INTO oc_zone VALUES(4049,117,'Ape, Apes novads',360805,1);
INSERT INTO oc_zone VALUES(4050,117,'Apes novads',360800,1);
INSERT INTO oc_zone VALUES(4051,117,'Auce, Auces novads',460805,1);
INSERT INTO oc_zone VALUES(4052,117,'Auces novads',460800,1);
INSERT INTO oc_zone VALUES(4053,117,'?da?u novads',804400,1);
INSERT INTO oc_zone VALUES(4054,117,'Bab?tes novads',804900,1);
INSERT INTO oc_zone VALUES(4055,117,'Baldone, Baldones novads',800605,1);
INSERT INTO oc_zone VALUES(4056,117,'Baldones novads',800600,1);
INSERT INTO oc_zone VALUES(4057,117,'Balo?i, ?ekavas novads',800807,1);
INSERT INTO oc_zone VALUES(4058,117,'Baltinavas novads',384400,1);
INSERT INTO oc_zone VALUES(4059,117,'Balvi, Balvu novads',380201,1);
INSERT INTO oc_zone VALUES(4060,117,'Balvu novads',380200,1);
INSERT INTO oc_zone VALUES(4061,117,'Bauska, Bauskas novads',400201,1);
INSERT INTO oc_zone VALUES(4062,117,'Bauskas novads',400200,1);
INSERT INTO oc_zone VALUES(4063,117,'Bever?nas novads',964700,1);
INSERT INTO oc_zone VALUES(4064,117,'Broc?ni, Broc?nu novads',840605,1);
INSERT INTO oc_zone VALUES(4065,117,'Broc?nu novads',840601,1);
INSERT INTO oc_zone VALUES(4066,117,'Burtnieku novads',967101,1);
INSERT INTO oc_zone VALUES(4067,117,'Carnikavas novads',805200,1);
INSERT INTO oc_zone VALUES(4068,117,'Cesvaine, Cesvaines novads',700807,1);
INSERT INTO oc_zone VALUES(4069,117,'Cesvaines novads',700800,1);
INSERT INTO oc_zone VALUES(4070,117,'C?sis, C?su novads',420201,1);
INSERT INTO oc_zone VALUES(4071,117,'C?su novads',420200,1);
INSERT INTO oc_zone VALUES(4072,117,'Ciblas novads',684901,1);
INSERT INTO oc_zone VALUES(4073,117,'Dagda, Dagdas novads',601009,1);
INSERT INTO oc_zone VALUES(4074,117,'Dagdas novads',601000,1);
INSERT INTO oc_zone VALUES(4075,117,'Daugavpils',50000,1);
INSERT INTO oc_zone VALUES(4076,117,'Daugavpils novads',440200,1);
INSERT INTO oc_zone VALUES(4077,117,'Dobele, Dobeles novads',460201,1);
INSERT INTO oc_zone VALUES(4078,117,'Dobeles novads',460200,1);
INSERT INTO oc_zone VALUES(4079,117,'Dundagas novads',885100,1);
INSERT INTO oc_zone VALUES(4080,117,'Durbe, Durbes novads',640807,1);
INSERT INTO oc_zone VALUES(4081,117,'Durbes novads',640801,1);
INSERT INTO oc_zone VALUES(4082,117,'Engures novads',905100,1);
INSERT INTO oc_zone VALUES(4083,117,'?rg?u novads',705500,1);
INSERT INTO oc_zone VALUES(4084,117,'Garkalnes novads',806000,1);
INSERT INTO oc_zone VALUES(4085,117,'Grobi?a, Grobi?as novads',641009,1);
INSERT INTO oc_zone VALUES(4086,117,'Grobi?as novads',641000,1);
INSERT INTO oc_zone VALUES(4087,117,'Gulbene, Gulbenes novads',500201,1);
INSERT INTO oc_zone VALUES(4088,117,'Gulbenes novads',500200,1);
INSERT INTO oc_zone VALUES(4089,117,'Iecavas novads',406400,1);
INSERT INTO oc_zone VALUES(4090,117,'Ik??ile, Ik??iles novads',740605,1);
INSERT INTO oc_zone VALUES(4091,117,'Ik??iles novads',740600,1);
INSERT INTO oc_zone VALUES(4092,117,'Il?kste, Il?kstes novads',440807,1);
INSERT INTO oc_zone VALUES(4093,117,'Il?kstes novads',440801,1);
INSERT INTO oc_zone VALUES(4094,117,'In?ukalna novads',801800,1);
INSERT INTO oc_zone VALUES(4095,117,'Jaunjelgava, Jaunjelgavas novads',321007,1);
INSERT INTO oc_zone VALUES(4096,117,'Jaunjelgavas novads',321000,1);
INSERT INTO oc_zone VALUES(4097,117,'Jaunpiebalgas novads',425700,1);
INSERT INTO oc_zone VALUES(4098,117,'Jaunpils novads',905700,1);
INSERT INTO oc_zone VALUES(4099,117,'Jelgava',90000,1);
INSERT INTO oc_zone VALUES(4100,117,'Jelgavas novads',540200,1);
INSERT INTO oc_zone VALUES(4101,117,'J?kabpils',110000,1);
INSERT INTO oc_zone VALUES(4102,117,'J?kabpils novads',560200,1);
INSERT INTO oc_zone VALUES(4103,117,'J?rmala',130000,1);
INSERT INTO oc_zone VALUES(4104,117,'Kalnciems, Jelgavas novads',540211,1);
INSERT INTO oc_zone VALUES(4105,117,'Kandava, Kandavas novads',901211,1);
INSERT INTO oc_zone VALUES(4106,117,'Kandavas novads',901201,1);
INSERT INTO oc_zone VALUES(4107,117,'K?rsava, K?rsavas novads',681009,1);
INSERT INTO oc_zone VALUES(4108,117,'K?rsavas novads',681000,1);
INSERT INTO oc_zone VALUES(4109,117,'Koc?nu novads ,bij. Valmieras)',960200,1);
INSERT INTO oc_zone VALUES(4110,117,'Kokneses novads',326100,1);
INSERT INTO oc_zone VALUES(4111,117,'Kr?slava, Kr?slavas novads',600201,1);
INSERT INTO oc_zone VALUES(4112,117,'Kr?slavas novads',600202,1);
INSERT INTO oc_zone VALUES(4113,117,'Krimuldas novads',806900,1);
INSERT INTO oc_zone VALUES(4114,117,'Krustpils novads',566900,1);
INSERT INTO oc_zone VALUES(4115,117,'Kuld?ga, Kuld?gas novads',620201,1);
INSERT INTO oc_zone VALUES(4116,117,'Kuld?gas novads',620200,1);
INSERT INTO oc_zone VALUES(4117,117,'?eguma novads',741001,1);
INSERT INTO oc_zone VALUES(4118,117,'?egums, ?eguma novads',741009,1);
INSERT INTO oc_zone VALUES(4119,117,'?ekavas novads',800800,1);
INSERT INTO oc_zone VALUES(4120,117,'Lielv?rde, Lielv?rdes novads',741413,1);
INSERT INTO oc_zone VALUES(4121,117,'Lielv?rdes novads',741401,1);
INSERT INTO oc_zone VALUES(4122,117,'Liep?ja',170000,1);
INSERT INTO oc_zone VALUES(4123,117,'Limba?i, Limba?u novads',660201,1);
INSERT INTO oc_zone VALUES(4124,117,'Limba?u novads',660200,1);
INSERT INTO oc_zone VALUES(4125,117,'L?gatne, L?gatnes novads',421211,1);
INSERT INTO oc_zone VALUES(4126,117,'L?gatnes novads',421200,1);
INSERT INTO oc_zone VALUES(4127,117,'L?v?ni, L?v?nu novads',761211,1);
INSERT INTO oc_zone VALUES(4128,117,'L?v?nu novads',761201,1);
INSERT INTO oc_zone VALUES(4129,117,'Lub?na, Lub?nas novads',701413,1);
INSERT INTO oc_zone VALUES(4130,117,'Lub?nas novads',701400,1);
INSERT INTO oc_zone VALUES(4131,117,'Ludza, Ludzas novads',680201,1);
INSERT INTO oc_zone VALUES(4132,117,'Ludzas novads',680200,1);
INSERT INTO oc_zone VALUES(4133,117,'Madona, Madonas novads',700201,1);
INSERT INTO oc_zone VALUES(4134,117,'Madonas novads',700200,1);
INSERT INTO oc_zone VALUES(4135,117,'Mazsalaca, Mazsalacas novads',961011,1);
INSERT INTO oc_zone VALUES(4136,117,'Mazsalacas novads',961000,1);
INSERT INTO oc_zone VALUES(4137,117,'M?lpils novads',807400,1);
INSERT INTO oc_zone VALUES(4138,117,'M?rupes novads',807600,1);
INSERT INTO oc_zone VALUES(4139,117,'M?rsraga novads',887600,1);
INSERT INTO oc_zone VALUES(4140,117,'Nauk??nu novads',967300,1);
INSERT INTO oc_zone VALUES(4141,117,'Neretas novads',327100,1);
INSERT INTO oc_zone VALUES(4142,117,'N?cas novads',647900,1);
INSERT INTO oc_zone VALUES(4143,117,'Ogre, Ogres novads',740201,1);
INSERT INTO oc_zone VALUES(4144,117,'Ogres novads',740202,1);
INSERT INTO oc_zone VALUES(4145,117,'Olaine, Olaines novads',801009,1);
INSERT INTO oc_zone VALUES(4146,117,'Olaines novads',801000,1);
INSERT INTO oc_zone VALUES(4147,117,'Ozolnieku novads',546701,1);
INSERT INTO oc_zone VALUES(4148,117,'P?rgaujas novads',427500,1);
INSERT INTO oc_zone VALUES(4149,117,'P?vilosta, P?vilostas novads',641413,1);
INSERT INTO oc_zone VALUES(4150,117,'P?vilostas novads',641401,1);
INSERT INTO oc_zone VALUES(4151,117,'Piltene, Ventspils novads',980213,1);
INSERT INTO oc_zone VALUES(4152,117,'P?avi?as, P?avi?u novads',321413,1);
INSERT INTO oc_zone VALUES(4153,117,'P?avi?u novads',321400,1);
INSERT INTO oc_zone VALUES(4154,117,'Prei?i, Prei?u novads',760201,1);
INSERT INTO oc_zone VALUES(4155,117,'Prei?u novads',760202,1);
INSERT INTO oc_zone VALUES(4156,117,'Priekule, Priekules novads',641615,1);
INSERT INTO oc_zone VALUES(4157,117,'Priekules novads',641600,1);
INSERT INTO oc_zone VALUES(4158,117,'Prieku?u novads',427300,1);
INSERT INTO oc_zone VALUES(4159,117,'Raunas novads',427700,1);
INSERT INTO oc_zone VALUES(4160,117,'R?zekne',210000,1);
INSERT INTO oc_zone VALUES(4161,117,'R?zeknes novads',780200,1);
INSERT INTO oc_zone VALUES(4162,117,'Riebi?u novads',766300,1);
INSERT INTO oc_zone VALUES(4163,117,'R?ga',10000,1);
INSERT INTO oc_zone VALUES(4164,117,'Rojas novads',888300,1);
INSERT INTO oc_zone VALUES(4165,117,'Ropa?u novads',808400,1);
INSERT INTO oc_zone VALUES(4166,117,'Rucavas novads',648500,1);
INSERT INTO oc_zone VALUES(4167,117,'Rug?ju novads',387500,1);
INSERT INTO oc_zone VALUES(4168,117,'Rund?les novads',407700,1);
INSERT INTO oc_zone VALUES(4169,117,'R?jiena, R?jienas novads',961615,1);
INSERT INTO oc_zone VALUES(4170,117,'R?jienas novads',961600,1);
INSERT INTO oc_zone VALUES(4171,117,'Sabile, Talsu novads',880213,1);
INSERT INTO oc_zone VALUES(4172,117,'Salacgr?va, Salacgr?vas novads',661415,1);
INSERT INTO oc_zone VALUES(4173,117,'Salacgr?vas novads',661400,1);
INSERT INTO oc_zone VALUES(4174,117,'Salas novads',568700,1);
INSERT INTO oc_zone VALUES(4175,117,'Salaspils novads',801200,1);
INSERT INTO oc_zone VALUES(4176,117,'Salaspils, Salaspils novads',801211,1);
INSERT INTO oc_zone VALUES(4177,117,'Saldus novads',840200,1);
INSERT INTO oc_zone VALUES(4178,117,'Saldus, Saldus novads',840201,1);
INSERT INTO oc_zone VALUES(4179,117,'Saulkrasti, Saulkrastu novads',801413,1);
INSERT INTO oc_zone VALUES(4180,117,'Saulkrastu novads',801400,1);
INSERT INTO oc_zone VALUES(4181,117,'Seda, Stren?u novads',941813,1);
INSERT INTO oc_zone VALUES(4182,117,'S?jas novads',809200,1);
INSERT INTO oc_zone VALUES(4183,117,'Sigulda, Siguldas novads',801615,1);
INSERT INTO oc_zone VALUES(4184,117,'Siguldas novads',801601,1);
INSERT INTO oc_zone VALUES(4185,117,'Skr?veru novads',328200,1);
INSERT INTO oc_zone VALUES(4186,117,'Skrunda, Skrundas novads',621209,1);
INSERT INTO oc_zone VALUES(4187,117,'Skrundas novads',621200,1);
INSERT INTO oc_zone VALUES(4188,117,'Smiltene, Smiltenes novads',941615,1);
INSERT INTO oc_zone VALUES(4189,117,'Smiltenes novads',941600,1);
INSERT INTO oc_zone VALUES(4190,117,'Staicele, Alojas novads',661017,1);
INSERT INTO oc_zone VALUES(4191,117,'Stende, Talsu novads',880215,1);
INSERT INTO oc_zone VALUES(4192,117,'Stopi?u novads',809600,1);
INSERT INTO oc_zone VALUES(4193,117,'Stren?i, Stren?u novads',941817,1);
INSERT INTO oc_zone VALUES(4194,117,'Stren?u novads',941800,1);
INSERT INTO oc_zone VALUES(4195,117,'Subate, Il?kstes novads',440815,1);
INSERT INTO oc_zone VALUES(4196,117,'Talsi, Talsu novads',880201,1);
INSERT INTO oc_zone VALUES(4197,117,'Talsu novads',880200,1);
INSERT INTO oc_zone VALUES(4198,117,'T?rvetes novads',468900,1);
INSERT INTO oc_zone VALUES(4199,117,'Tukuma novads',900200,1);
INSERT INTO oc_zone VALUES(4200,117,'Tukums, Tukuma novads',900201,1);
INSERT INTO oc_zone VALUES(4201,117,'Vai?odes novads',649300,1);
INSERT INTO oc_zone VALUES(4202,117,'Valdem?rpils, Talsu novads',880217,1);
INSERT INTO oc_zone VALUES(4203,117,'Valka, Valkas novads',940201,1);
INSERT INTO oc_zone VALUES(4204,117,'Valkas novads',940200,1);
INSERT INTO oc_zone VALUES(4205,117,'Valmiera',250000,1);
INSERT INTO oc_zone VALUES(4206,117,'Vanga?i, In?ukalna novads',801817,1);
INSERT INTO oc_zone VALUES(4207,117,'Varak??ni, Varak??nu novads',701817,1);
INSERT INTO oc_zone VALUES(4208,117,'Varak??nu novads',701800,1);
INSERT INTO oc_zone VALUES(4209,117,'V?rkavas novads',769101,1);
INSERT INTO oc_zone VALUES(4210,117,'Vecpiebalgas novads',429300,1);
INSERT INTO oc_zone VALUES(4211,117,'Vecumnieku novads',409500,1);
INSERT INTO oc_zone VALUES(4212,117,'Ventspils',270000,1);
INSERT INTO oc_zone VALUES(4213,117,'Ventspils novads',980200,1);
INSERT INTO oc_zone VALUES(4214,117,'Vies?te, Vies?tes novads',561815,1);
INSERT INTO oc_zone VALUES(4215,117,'Vies?tes novads',561800,1);
INSERT INTO oc_zone VALUES(4216,117,'Vi?aka, Vi?akas novads',381615,1);
INSERT INTO oc_zone VALUES(4217,117,'Vi?akas novads',381600,1);
INSERT INTO oc_zone VALUES(4218,117,'Vi??ni, Vi??nu novads',781817,1);
INSERT INTO oc_zone VALUES(4219,117,'Vi??nu novads',781800,1);
INSERT INTO oc_zone VALUES(4220,117,'Zilupe, Zilupes novads',681817,1);
INSERT INTO oc_zone VALUES(4221,117,'Zilupes novads',681801,1);
INSERT INTO oc_zone VALUES(4222,43,'Arica y Parinacota','AP',1);
INSERT INTO oc_zone VALUES(4223,43,'Los Rios','LR',1);
INSERT INTO oc_zone VALUES(4224,220,'Kharkivs\'ka Oblast\'',63,1);
INSERT INTO oc_zone VALUES(4225,118,'Beirut','LB-BR',1);
INSERT INTO oc_zone VALUES(4226,118,'Bekaa','LB-BE',1);
INSERT INTO oc_zone VALUES(4227,118,'Mount Lebanon','LB-ML',1);
INSERT INTO oc_zone VALUES(4228,118,'Nabatieh','LB-NB',1);
INSERT INTO oc_zone VALUES(4229,118,'North','LB-NR',1);
INSERT INTO oc_zone VALUES(4230,118,'South','LB-ST',1);
INSERT INTO oc_zone VALUES(4231,99,'Telangana','TS',1);
INSERT INTO oc_zone VALUES(4232,44,'Qinghai','QH',1);
INSERT INTO oc_zone VALUES(4233,100,'Papua Barat','PB',1);
INSERT INTO oc_zone VALUES(4234,100,'Sulawesi Barat','SR',1);
INSERT INTO oc_zone VALUES(4235,100,'Kepulauan Riau','KR',1);
INSERT INTO oc_zone VALUES(4236,105,'Barletta-Andria-Trani','BT',1);
INSERT INTO oc_zone VALUES(4237,105,'Fermo','FM',1);
INSERT INTO oc_zone VALUES(4238,105,'Monza Brianza','MB',1);



DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`),
  KEY `country_id` (`country_id`),
  KEY `zone_id` (`zone_id`),
  KEY `geo_zone_id` (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

INSERT INTO oc_zone_to_geo_zone VALUES(1,222,0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(2,222,3513,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(3,222,3514,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(4,222,3515,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(5,222,3516,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(6,222,3517,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(7,222,3518,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(8,222,3519,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(9,222,3520,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(10,222,3521,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(11,222,3522,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(12,222,3523,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(13,222,3524,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(14,222,3525,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(15,222,3526,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(16,222,3527,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(17,222,3528,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(18,222,3529,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(19,222,3530,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(20,222,3531,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(21,222,3532,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(22,222,3533,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(23,222,3534,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(24,222,3535,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(25,222,3536,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(26,222,3537,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(27,222,3538,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(28,222,3539,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(29,222,3540,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(30,222,3541,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(31,222,3542,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(32,222,3543,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(33,222,3544,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(34,222,3545,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(35,222,3546,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(36,222,3547,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(37,222,3548,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(38,222,3549,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(39,222,3550,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(40,222,3551,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(41,222,3552,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(42,222,3553,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(43,222,3554,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(44,222,3555,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(45,222,3556,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(46,222,3557,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(47,222,3558,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(48,222,3559,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(49,222,3560,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(50,222,3561,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(51,222,3562,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(52,222,3563,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(53,222,3564,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(54,222,3565,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(55,222,3566,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(56,222,3567,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(57,222,3568,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(58,222,3569,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(59,222,3570,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(60,222,3571,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(61,222,3572,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(62,222,3573,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(63,222,3574,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(64,222,3575,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(65,222,3576,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(66,222,3577,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(67,222,3578,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(68,222,3579,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(69,222,3580,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(70,222,3581,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(71,222,3582,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(72,222,3583,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(73,222,3584,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(74,222,3585,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(75,222,3586,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(76,222,3587,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(77,222,3588,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(78,222,3589,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(79,222,3590,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(80,222,3591,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(81,222,3592,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(82,222,3593,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(83,222,3594,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(84,222,3595,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(85,222,3596,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(86,222,3597,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(87,222,3598,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(88,222,3599,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(89,222,3600,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(90,222,3601,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(91,222,3602,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(92,222,3603,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(93,222,3604,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(94,222,3605,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(95,222,3606,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(96,222,3607,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(97,222,3608,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(98,222,3609,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(99,222,3610,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(100,222,3611,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(101,222,3612,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(102,222,3949,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(103,222,3950,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(104,222,3951,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(105,222,3952,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(106,222,3953,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(107,222,3954,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(108,222,3955,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO oc_zone_to_geo_zone VALUES(109,222,3972,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');



