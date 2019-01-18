CREATE TABLE `merchant` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `merchant` int(11) unsigned NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `sku` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `product_variations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product` int(11) unsigned NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer` int(11) NOT NULL,
  `placed_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `total_cost` float DEFAULT NULL,
  `total_tax` float DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `order_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order` int(11) unsigned NOT NULL,
  `product_variation` int(11) unsigned NOT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `customer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `customer` (`id`, `name`, `email`)
VALUES
	(31, 'Zhenya Piran', 'ummagehe-4086@yopmail.com'),
	(23, 'Viktorija Fabijan', 'uddumahasse-4158@yopmail.com'),
	(17, 'Tahira Kristina', 'ocaxeppe-1204@yopmail.com'),
	(27, 'Spartak Suerius', 'gabdelhadi@wtdmugimlyfgto13b.tk'),
	(11, 'Sonia Eluned', '5gouut.d.jackt@z3pbtvrxv76flacp4f.cf'),
	(8, 'Ridley Davie', 'vhenri@ssfehtjoiv7wj.gq'),
	(16, 'Ratko Dobroslav', '6sara@ebtukukxnn.ga'),
	(18, 'Rahmi Worknesh', 'asamer.kuzami@7u7rdldlbvcnklclnpx.gq'),
	(14, 'Rade Isebella', '6mad.b@sctbmkxmh0xwt3.ml'),
	(20, 'Osbeorn Eirenaios', 'tamangd08z@mystufffb.fun'),
	(29, 'Nikola Micaiah', 'edidini@fusixgasvv1gbjrbc.tk'),
	(4, 'Merja Konstanty', 'zyesco@bnckms.ga'),
	(15, 'Lawrence Kazimieras', 'jyou@dzewa6nnvt9fte.tk'),
	(24, 'Kukka Merrilyn', 'mdashbreezy10f@djdwzaty3tok.ml'),
	(5, 'Juvenal Darshan', 'branahaseeb01@vl2ivlyuzopeawoepx.cf'),
	(30, 'Julien Krishna', 'dtos@firematchvn.ml'),
	(6, 'Johnnie Deo', 'urj.aarush007p@coxnet.gq'),
	(7, 'Janek Cyrielle', 'hbee.inkco@2019y.ga'),
	(13, 'Hiwot Mildþryð', 'yailao@g-o-o-g-l-e.gq'),
	(19, 'Gloriana Dîyar', '8bca8220t@iaptkapkl53.tk'),
	(12, 'Epiphanius Luca', '6selll10@orpxp547tsuy6g.cf'),
	(28, 'Emese Matic', 'fdamas.yazanw@e1y4anp6d5kikv.gq'),
	(26, 'Edvige Nontle', 'lmustapha.hdaouiz@mb7y5hkrof.cf'),
	(1, 'Domnall Jagannath', 'oelmagic.ah@oidzc1zgxrktxdwdkxm.cf'),
	(9, 'Dilip Eliyyahu', '8stare@aiiots.net'),
	(3, 'Cupid Imke', 'crabeh_hiphopb@alormbf88nd.cf'),
	(25, 'Cuauhtémoc Bhavana', '5khaled.devastatn@kulitlumpia7.ga'),
	(22, 'Comfort Leonarda', 'xmisteraymen00@ftoflqad9urqp0zth3.ml'),
	(21, 'Clément Leyla', 'wchakib.madrid@nf5pxgobv3zfsmo.ml'),
	(10, 'Anupam Akash', 'anatka9@dzfphcn47xg.gq'),
	(2, 'Adedayo Fúlvio', '5elianaycastro6@trashmail.pw');

INSERT INTO `merchant` (`id`, `name`, `description`)
VALUES
	(1, 'Signal Arts', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget leo ante. Suspendisse sed ante eget quam sollicitudin feugiat tempor imperdiet nulla. '),
	(2, 'Monarch Arts', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget leo ante. Suspendisse sed ante eget quam sollicitudin feugiat tempor imperdiet nulla. '),
	(3, 'Marsecuriy', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget leo ante. Suspendisse sed ante eget quam sollicitudin feugiat tempor imperdiet nulla. '),
	(4, 'Smilelife', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget leo ante. Suspendisse sed ante eget quam sollicitudin feugiat tempor imperdiet nulla. '),
	(5, 'Bridgestar', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget leo ante. Suspendisse sed ante eget quam sollicitudin feugiat tempor imperdiet nulla. '),
	(6, 'Icecaproductions', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget leo ante. Suspendisse sed ante eget quam sollicitudin feugiat tempor imperdiet nulla. '),
	(7, 'Bearings', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget leo ante. Suspendisse sed ante eget quam sollicitudin feugiat tempor imperdiet nulla. '),
	(8, 'Accentshow', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget leo ante. Suspendisse sed ante eget quam sollicitudin feugiat tempor imperdiet nulla. '),
	(9, 'Beenite', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget leo ante. Suspendisse sed ante eget quam sollicitudin feugiat tempor imperdiet nulla. '),
	(10, 'Radiant Limited', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget leo ante. Suspendisse sed ante eget quam sollicitudin feugiat tempor imperdiet nulla. '),
	(11, 'Voidfruit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget leo ante. Suspendisse sed ante eget quam sollicitudin feugiat tempor imperdiet nulla. '),
	(12, 'Smartwalk', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget leo ante. Suspendisse sed ante eget quam sollicitudin feugiat tempor imperdiet nulla. '),
	(13, 'Ant Productions', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget leo ante. Suspendisse sed ante eget quam sollicitudin feugiat tempor imperdiet nulla. '),
	(14, 'Ridgetales', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget leo ante. Suspendisse sed ante eget quam sollicitudin feugiat tempor imperdiet nulla. '),
	(15, 'Grasshopper Navigations', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget leo ante. Suspendisse sed ante eget quam sollicitudin feugiat tempor imperdiet nulla. ');
    

INSERT INTO `products` (`id`, `merchant`, `name`, `description`, `price`, `sku`)
VALUES
	(1, 2, 'Large table', 'A great table', 102.12, '8437152631'),
	(2, 11, 'Cotton t-shirt', '100% cotton t-shirt', 11.99, '1437367336'),
	(3, 3, 'Wool coat', 'Sturdy 100% wool', 400.5, '3977592277'),
	(4, 4, 'See-through corded telephone', NULL, 26.78, '8241503020'),
	(5, 3, 'V-neck t-shirt', '100% cotton', 10, '4556771762'),
	(6, 1, 'Metal bowl', NULL, 10, '4830438712'),
	(7, 8, 'Ceramic coffee mug', NULL, 7.99, '3843040389'),
	(8, 4, 'Plastic shower curtain', NULL, 14.99, '3940380103'),
	(9, 9, 'Down comforter', NULL, 114.56, '5039188995'),
	(10, 7, 'Checkered curtains', NULL, 80, '8785997553'),
	(11, 7, 'Stainless steel flower pot', NULL, 5, '8213484755'),
	(12, 3, 'Instant camera', 'Connect to your laptop for great photos!', 20.99, '9043625760'),
	(13, 1, 'Paper gift bag', 'Great for gifts', 0.99, '7231194661'),
	(14, 8, 'Custom hockey stick', NULL, 100, '2506608071'),
	(15, 2, 'Organic honey', 'Made by Ontario bees', 15.99, '7983594474'),
	(16, 2, 'Colourful pillow', 'Cotton and wool blend', 20, '7664442667'),
	(17, 10, 'Cotton comforter cover', NULL, 34.99, '9685094066'),
	(18, 12, 'Plastic cutlery set', NULL, 2.5, '8719210456'),
	(19, 15, 'Paper mache light fixture', NULL, 45, '3381585417'),
	(20, 15, 'Copper string of decorative lights', NULL, 25, '1210456116'),
	(21, 11, 'Salt & pepper shakers', NULL, 14.3, '3971021509'),
	(22, 1, 'Glass artwork', 'Hand-crafted', 105.34, '8665262260'),
	(23, 8, 'Knitted sweater', NULL, 55, '7361392956'),
	(24, 10, 'Pine shelf', NULL, 15, '1829506701'),
	(25, 7, 'Wooden snowshoes', NULL, 85, '5229028739'),
	(26, 5, 'Metal picture frame', NULL, 8.99, '2325644916'),
	(27, 3, 'Silk throw', 'Locally hand-made', 52.5, '6611864690'),
	(28, 14, 'Wooden pepper mill', NULL, 30, '6045730261'),
	(29, 13, 'Stainless steel grater', NULL, 9.99, '7956074873'),
	(30, 3, 'Waterproof boots', NULL, 120.45, '4592419511'),
	(31, 11, 'Wooden stirring spoon', NULL, 8.77, '3664907674'),
	(32, 15, 'Small hand-woven rug', NULL, 130.55, '1956902288'),
	(33, 10, 'Premium saucepan', NULL, 90, '9713712587'),
	(34, 8, 'Antique-look sidetable', NULL, 120.34, '2196185321'),
	(35, 6, 'Gold pendant', NULL, 75.6, '5965873730'),
	(36, 6, 'Sterling silver braclet', NULL, 35, '7520888604'),
	(37, 4, 'Wooden bowl', NULL, 10, '6157903980'),
	(38, 12, 'Wooden chopping board', NULL, 12.54, '7236195117');

INSERT INTO `product_variations` (`id`, `product`, `name`)
VALUES
	(43, 25, NULL),
	(67, 38, NULL),
	(11, 1, NULL),
	(1, 2, 'Red'),
	(10, 2, 'Copper'),
	(14, 3, 'Green'),
	(15, 4, 'Silver'),
	(16, 4, 'Gold'),
	(17, 5, 'Cotton'),
	(18, 5, 'Wool'),
	(19, 6, ''),
	(20, 7, 'Small'),
	(21, 7, 'Large'),
	(22, 8, NULL),
	(6, 9, ''),
	(3, 10, 'Green'),
	(5, 10, 'Blue'),
	(9, 10, 'Oak'),
	(23, 10, 'Red'),
	(2, 11, 'Small'),
	(24, 11, 'Medium'),
	(25, 12, 'Extra large'),
	(26, 12, 'Small'),
	(27, 13, 'Tapered'),
	(28, 13, 'Straight'),
	(29, 14, NULL),
	(30, 15, 'Paper'),
	(31, 15, 'Plastic'),
	(32, 15, 'Metal'),
	(33, 16, 'Blue'),
	(34, 16, 'Purple'),
	(12, 17, 'Yellow'),
	(35, 18, 'Solid'),
	(36, 18, 'Patterned'),
	(7, 19, 'Purple'),
	(37, 19, 'Blue'),
	(38, 20, NULL),
	(8, 21, 'Large'),
	(39, 22, NULL),
	(4, 23, 'Checkered'),
	(40, 24, 'Large'),
	(41, 24, 'Small'),
	(42, 25, NULL),
	(44, 26, 'Frosted'),
	(45, 26, 'Clear'),
	(46, 27, 'Small'),
	(47, 27, 'Large'),
	(48, 28, 'Plastic'),
	(49, 28, 'Wood'),
	(50, 29, 'Red'),
	(51, 29, 'Burgundy'),
	(52, 30, 'Tall'),
	(53, 30, 'Short'),
	(54, 31, NULL),
	(13, 32, 'Red'),
	(55, 32, 'Green'),
	(56, 32, 'Yellow'),
	(57, 33, 'Small'),
	(58, 33, 'Large'),
	(59, 34, NULL),
	(60, 35, 'Orange'),
	(61, 35, 'Pastel'),
	(62, 35, 'Black'),
	(63, 36, 'Size 3'),
	(64, 36, 'Size 4'),
	(65, 36, 'Size 6'),
	(66, 37, 'Sandalwood'),
	(68, 37, 'Pine'),
	(69, 38, NULL);

INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1, 1, 66, 9.61, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (2, 1, 1, 11.53, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (3, 1, 30, 15.35, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (4, 1, 60, 72.47, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (5, 1, 13, 125.26, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (6, 1, 42, 81.97, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (1, 4, '2017-03-05 16:55:52', 884.3399999999999, 101.74, 782.5999999999999);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (7, 2, 43, 79.26, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (8, 2, 29, 93.29, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (9, 2, 46, 49.2, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (10, 2, 28, 0.93, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (11, 2, 32, 14.88, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (12, 2, 47, 48.61, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (13, 2, 3, 74.04, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (14, 2, 57, 83.62, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (15, 2, 23, 74.11, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (16, 2, 36, 2.32, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (2, 22, '2015-09-05 10:20:52', 972.4000000000001, 111.87, 860.5300000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (17, 3, 58, 84.3, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (18, 3, 50, 9.43, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (3, 19, '2016-01-24 11:38:27', 105.91, 12.18, 93.72999999999999);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (19, 4, 39, 99.69, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (20, 4, 38, 23.62, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (21, 4, 7, 42.43, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (22, 4, 10, 11.34, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (23, 4, 26, 19.75, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (24, 4, 20, 7.5, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (25, 4, 8, 13.57, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (26, 4, 67, 11.85, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (27, 4, 21, 7.54, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (28, 4, 18, 9.4, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (4, 10, '2016-04-25 10:43:25', 647.2, 74.46, 572.74);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (29, 5, 18, 9.75, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (30, 5, 40, 14.68, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (31, 5, 13, 127.46, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (5, 4, '2017-12-02 06:27:31', 343.27, 39.49, 303.78);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (32, 6, 50, 9.52, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (33, 6, 1, 11.38, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (34, 6, 12, 33.4, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (35, 6, 29, 94.9, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (36, 6, 18, 9.57, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (6, 6, '2016-10-04 06:48:12', 503.86, 57.97, 445.89);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (37, 7, 31, 15.4, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (38, 7, 10, 11.57, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (39, 7, 5, 77.05, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (40, 7, 47, 50.43, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (41, 7, 46, 50.55, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (42, 7, 55, 126.12, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (43, 7, 50, 9.6, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (44, 7, 43, 81.61, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (45, 7, 45, 8.66, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (46, 7, 21, 7.71, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (7, 11, '2017-03-25 10:52:14', 1061.92, 122.17, 939.7500000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (47, 8, 56, 126.75, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (48, 8, 53, 116.76, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (49, 8, 17, 9.7, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (8, 31, '2017-07-24 20:37:22', 439.99, 50.62, 389.37);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (50, 9, 16, 24.48, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (51, 9, 44, 8.29, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (52, 9, 1, 10.98, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (53, 9, 11, 93.69, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (54, 9, 60, 68.98, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (55, 9, 8, 13.18, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (56, 9, 52, 109.69, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (57, 9, 31, 14.77, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (58, 9, 21, 7.39, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (59, 9, 33, 18.26, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (9, 17, '2015-01-15 17:52:33', 948.1600000000001, 109.08, 839.08);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (60, 10, 22, 13.78, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (61, 10, 48, 27.32, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (62, 10, 22, 13.71, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (63, 10, 56, 120.31, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (64, 10, 20, 7.32, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (10, 30, '2014-12-26 18:31:46', 532.77, 61.29, 471.48);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (65, 11, 48, 26.87, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (66, 11, 50, 9.08, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (67, 11, 43, 76.56, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (68, 11, 51, 8.98, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (69, 11, 38, 22.72, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (70, 11, 61, 68.6, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (11, 25, '2014-05-11 14:16:06', 383.09999999999997, 44.07, 339.03);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (71, 12, 45, 8.73, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (72, 12, 25, 20.35, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (73, 12, 8, 13.82, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (12, 14, '2017-06-24 22:48:02', 91.2, 10.49, 80.71000000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (74, 13, 27, 0.97, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (13, 3, '2018-01-07 08:08:18', 3.29, 0.38, 2.91);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (75, 14, 7, 41.01, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (76, 14, 57, 82.38, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (77, 14, 22, 13.67, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (14, 30, '2015-01-17 09:20:01', 402.8399999999999, 46.34, 356.49999999999994);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (78, 15, 55, 127.87, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (79, 15, 11, 100, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (80, 15, 13, 127.44, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (81, 15, 40, 14.69, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (82, 15, 65, 34.27, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (83, 15, 19, 9.78, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (84, 15, 55, 127.43, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (85, 15, 12, 34.19, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (15, 10, '2017-12-02 17:07:12', 1417.27, 163.05, 1254.22);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (86, 16, 5, 73.11, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (87, 16, 61, 69.01, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (88, 16, 36, 2.27, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (89, 16, 25, 19.12, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (16, 10, '2014-08-05 23:03:47', 395.7700000000001, 45.53, 350.24000000000007);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (90, 17, 38, 23.34, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (91, 17, 21, 7.43, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (92, 17, 32, 14.8, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (93, 17, 34, 18.49, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (94, 17, 5, 74.07, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (95, 17, 44, 8.34, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (96, 17, 17, 9.3, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (97, 17, 37, 41.66, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (17, 22, '2015-08-10 23:54:46', 480.44, 55.27, 425.17);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (98, 18, 23, 79.17, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (99, 18, 14, 396.6, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (18, 11, '2018-07-08 02:35:28', 537.62, 61.85, 475.77000000000004);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (100, 19, 51, 9.08, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (101, 19, 26, 19.28, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (102, 19, 6, 103.37, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (103, 19, 64, 31.87, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (104, 19, 9, 72.23, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (19, 5, '2014-09-12 01:08:06', 646.64, 74.39, 572.25);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (105, 20, 35, 2.41, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (106, 20, 34, 19.22, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (107, 20, 61, 72.81, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (108, 20, 22, 14.46, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (109, 20, 22, 14.43, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (110, 20, 36, 2.41, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (111, 20, 29, 96.12, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (112, 20, 43, 81.63, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (113, 20, 62, 72.66, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (114, 20, 23, 77.08, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (20, 30, '2017-03-13 22:08:08', 936.61, 107.75, 828.86);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (115, 21, 1, 11.36, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (116, 21, 46, 49.75, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (117, 21, 28, 0.94, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (118, 21, 15, 25.36, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (21, 23, '2016-08-11 06:25:35', 182.79, 21.03, 161.76);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (119, 22, 12, 31.74, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (120, 22, 66, 9.08, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (121, 22, 64, 31.93, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (122, 22, 22, 13.73, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (22, 18, '2014-08-21 21:26:03', 200.70000000000002, 23.09, 177.61);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (123, 23, 49, 29.46, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (124, 23, 31, 15.66, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (125, 23, 64, 34.3, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (126, 23, 32, 15.65, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (23, 12, '2018-01-27 09:36:01', 220.32000000000002, 25.35, 194.97000000000003);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (127, 24, 48, 28.12, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (128, 24, 23, 74.04, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (129, 24, 51, 9.31, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (130, 24, 3, 74.6, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (131, 24, 18, 9.29, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (24, 8, '2015-09-24 03:31:21', 641.23, 73.77, 567.46);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (132, 25, 3, 78.12, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (133, 25, 16, 26.11, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (134, 25, 57, 87.52, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (135, 25, 43, 82.83, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (25, 20, '2017-10-14 10:04:09', 655.35, 75.39, 579.96);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (136, 26, 55, 120.56, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (137, 26, 56, 120.89, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (138, 26, 36, 2.31, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (139, 26, 69, 11.53, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (140, 26, 12, 32.14, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (141, 26, 66, 9.29, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (142, 26, 34, 18.62, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (26, 22, '2015-05-22 03:54:27', 676.0999999999999, 77.78, 598.3199999999999);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (143, 27, 57, 83.73, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (144, 27, 7, 41.69, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (145, 27, 59, 111.02, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (146, 27, 50, 9.32, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (147, 27, 13, 121.06, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (148, 27, 1, 11.06, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (27, 28, '2015-07-19 22:17:30', 835.91, 96.17, 739.74);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (149, 28, 69, 11.75, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (150, 28, 29, 93.41, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (151, 28, 6, 108.03, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (152, 28, 39, 98.42, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (153, 28, 17, 9.34, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (154, 28, 46, 49.22, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (155, 28, 26, 19.63, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (156, 28, 35, 2.35, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (28, 20, '2016-02-01 20:14:48', 689.32, 79.3, 610.0200000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (157, 29, 66, 9.74, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (158, 29, 49, 29.18, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (29, 20, '2017-10-06 09:21:19', 120.93, 13.91, 107.02000000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (159, 30, 69, 12.08, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (160, 30, 66, 9.63, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (161, 30, 10, 11.54, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (162, 30, 7, 43.24, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (163, 30, 45, 8.63, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (164, 30, 40, 14.45, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (165, 30, 50, 9.62, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (30, 3, '2017-01-26 18:49:36', 221.29, 25.46, 195.82999999999998);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (166, 31, 32, 14.89, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (167, 31, 66, 9.31, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (168, 31, 42, 78.51, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (169, 31, 15, 24.7, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (170, 31, 66, 9.19, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (171, 31, 68, 9.22, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (172, 31, 37, 41.75, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (173, 31, 32, 14.72, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (31, 5, '2015-06-07 21:43:14', 439.56, 50.57, 388.99);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (174, 32, 60, 71.63, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (175, 32, 43, 80.6, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (176, 32, 64, 33.06, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (177, 32, 40, 14.21, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (178, 32, 11, 96.01, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (179, 32, 27, 0.93, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (180, 32, 13, 122.95, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (181, 32, 51, 9.45, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (182, 32, 50, 9.39, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (183, 32, 22, 14.14, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (32, 15, '2016-04-20 04:02:45', 935.9699999999998, 107.68, 828.2899999999998);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (184, 33, 69, 11.92, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (185, 33, 25, 20.01, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (186, 33, 65, 33.2, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (187, 33, 15, 25.46, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (188, 33, 9, 76.13, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (189, 33, 33, 19.08, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (190, 33, 68, 9.5, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (33, 26, '2016-08-21 23:45:53', 543.7399999999999, 62.55, 481.18999999999994);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (191, 34, 34, 19.18, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (192, 34, 24, 4.79, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (193, 34, 8, 13.64, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (194, 34, 32, 15.32, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (34, 3, '2016-11-13 11:56:42', 77.12, 8.87, 68.25);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (195, 35, 27, 0.9, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (196, 35, 41, 13.77, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (197, 35, 47, 48.11, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (198, 35, 19, 9.04, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (199, 35, 9, 73.38, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (200, 35, 21, 7.22, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (35, 18, '2014-08-24 22:17:17', 410.81, 47.26, 363.55);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (201, 36, 42, 77.29, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (202, 36, 66, 9.14, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (203, 36, 37, 40.9, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (204, 36, 52, 110.7, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (205, 36, 49, 27.5, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (206, 36, 16, 24.5, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (207, 36, 15, 24.6, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (36, 29, '2014-11-04 08:38:27', 619.6899999999999, 71.29, 548.4);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (208, 37, 11, 95.56, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (209, 37, 12, 32.77, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (210, 37, 60, 71.16, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (211, 37, 19, 9.44, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (212, 37, 66, 9.4, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (213, 37, 54, 8.26, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (214, 37, 31, 15.02, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (215, 37, 10, 11.32, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (216, 37, 18, 9.38, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (37, 21, '2016-01-24 17:31:50', 352.53000000000003, 40.56, 311.97);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (217, 38, 60, 70.91, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (218, 38, 25, 19.81, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (219, 38, 48, 28.39, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (220, 38, 43, 80.03, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (221, 38, 60, 70.73, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (222, 38, 7, 42.5, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (38, 18, '2016-03-03 04:26:05', 811.5200000000001, 93.36, 718.1600000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (223, 39, 65, 33.84, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (224, 39, 1, 11.6, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (225, 39, 50, 9.64, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (226, 39, 2, 4.82, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (227, 39, 59, 116.28, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (228, 39, 39, 101.47, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (229, 39, 22, 14.41, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (230, 39, 1, 11.55, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (39, 23, '2017-04-06 07:56:26', 404.02000000000004, 46.48, 357.54);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (231, 40, 41, 14.74, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (40, 9, '2018-02-10 23:12:14', 33.31, 3.83, 29.48);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (232, 41, 42, 79.95, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (233, 41, 9, 74.73, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (234, 41, 60, 70.82, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (235, 41, 6, 107.42, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (236, 41, 21, 7.47, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (237, 41, 65, 33.03, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (41, 28, '2016-01-17 23:54:58', 631.8199999999999, 72.69, 559.13);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (238, 42, 10, 11.35, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (239, 42, 7, 42.27, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (240, 42, 52, 114.04, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (241, 42, 10, 11.28, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (242, 42, 15, 25.28, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (243, 42, 11, 96.06, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (244, 42, 47, 49.44, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (245, 42, 25, 19.64, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (246, 42, 2, 4.69, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (247, 42, 57, 85.14, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (42, 4, '2016-03-04 13:45:04', 1191.55, 137.08, 1054.47);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (248, 43, 22, 13.96, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (249, 43, 68, 9.34, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (250, 43, 34, 18.49, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (251, 43, 46, 48.97, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (252, 43, 7, 42.04, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (253, 43, 66, 9.34, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (254, 43, 33, 18.45, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (255, 43, 30, 14.77, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (43, 5, '2015-08-08 19:16:39', 396.30999999999995, 45.59, 350.71999999999997);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (256, 44, 58, 81.01, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (257, 44, 1, 11, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (258, 44, 69, 11.5, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (259, 44, 58, 82.36, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (260, 44, 57, 82.53, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (261, 44, 43, 77.43, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (262, 44, 66, 9.13, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (263, 44, 67, 11.37, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (264, 44, 9, 72.14, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (265, 44, 36, 2.28, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (44, 23, '2014-08-15 16:54:29', 1062.69, 122.26, 940.43);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (266, 45, 31, 15.91, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (267, 45, 31, 15.92, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (45, 4, '2018-10-07 17:02:05', 89.91, 10.34, 79.57);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (268, 46, 61, 68.01, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (269, 46, 45, 8.05, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (46, 6, '2014-01-25 07:27:13', 95.04000000000002, 10.93, 84.11000000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (270, 47, 42, 75.63, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (271, 47, 7, 40.09, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (272, 47, 42, 76.94, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (47, 27, '2014-03-03 22:51:10', 391.59, 45.05, 346.53999999999996);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (273, 48, 29, 89.71, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (274, 48, 59, 107.54, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (275, 48, 57, 80.5, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (276, 48, 56, 118.66, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (277, 48, 43, 76.02, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (278, 48, 66, 9, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (279, 48, 35, 2.26, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (48, 22, '2014-04-16 14:31:36', 1001.8199999999999, 115.25, 886.5699999999999);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (280, 49, 59, 112.56, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (281, 49, 34, 18.72, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (282, 49, 40, 14.05, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (283, 49, 68, 9.35, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (284, 49, 51, 9.34, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (285, 49, 53, 112.41, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (286, 49, 6, 107.14, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (287, 49, 55, 121.28, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (288, 49, 2, 4.66, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (289, 49, 41, 14.1, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (49, 8, '2015-11-12 07:36:29', 1204.56, 138.58, 1065.98);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (290, 50, 58, 82.98, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (291, 50, 27, 0.91, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (292, 50, 18, 9.09, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (50, 8, '2015-01-01 09:17:13', 219.38000000000002, 25.24, 194.14000000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (293, 51, 17, 9.97, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (294, 51, 56, 130.07, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (295, 51, 23, 79.72, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (296, 51, 66, 9.97, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (297, 51, 36, 2.49, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (298, 51, 1, 11.95, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (299, 51, 17, 9.96, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (300, 51, 22, 14.94, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (301, 51, 60, 75.33, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (302, 51, 28, 0.99, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (51, 23, '2018-11-02 05:48:49', 855.5700000000002, 98.43, 757.1400000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (303, 52, 47, 47.06, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (304, 52, 19, 8.94, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (305, 52, 48, 26.8, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (52, 22, '2014-03-15 03:28:42', 164.23000000000002, 18.89, 145.34);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (306, 53, 39, 105.23, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (307, 53, 14, 400.02, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (53, 9, '2018-12-12 12:13:32', 1593.8899999999999, 183.37, 1410.52);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (308, 54, 55, 123.25, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (309, 54, 22, 14.04, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (310, 54, 7, 42.2, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (54, 24, '2016-03-16 10:44:15', 373.83, 43.01, 330.82);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (311, 55, 6, 113.07, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (312, 55, 29, 98.65, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (55, 13, '2018-05-13 17:08:40', 717.73, 82.57, 635.16);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (313, 56, 51, 8.95, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (314, 56, 6, 103.29, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (315, 56, 12, 31.65, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (316, 56, 24, 4.5, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (56, 9, '2014-02-02 13:09:03', 421.34000000000003, 48.47, 372.87);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (317, 57, 36, 2.44, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (318, 57, 48, 29.27, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (319, 57, 1, 11.72, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (320, 57, 57, 88.04, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (321, 57, 9, 78.02, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (57, 23, '2017-11-08 05:38:13', 483.93, 55.67, 428.26);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (322, 58, 48, 26.75, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (323, 58, 23, 71.52, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (324, 58, 39, 94.32, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (325, 58, 7, 40.46, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (326, 58, 20, 7.12, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (58, 15, '2014-01-22 08:23:25', 458.38000000000005, 52.73, 405.65000000000003);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (327, 59, 62, 69.65, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (328, 59, 16, 24.72, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (59, 10, '2014-12-08 15:57:44', 162.51, 18.7, 143.81);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (329, 60, 50, 9.52, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (330, 60, 43, 81.23, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (331, 60, 23, 76.32, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (332, 60, 5, 76.1, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (333, 60, 57, 85.86, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (60, 7, '2016-09-22 14:32:34', 1007.63, 115.92, 891.71);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (334, 61, 22, 14.45, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (335, 61, 4, 52.98, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (61, 27, '2017-03-22 23:17:49', 228.59, 26.3, 202.29);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (336, 62, 47, 51.07, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (337, 62, 64, 34.06, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (338, 62, 42, 82.94, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (339, 62, 50, 9.74, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (340, 62, 30, 15.56, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (341, 62, 20, 7.78, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (342, 62, 27, 0.97, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (343, 62, 68, 9.75, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (344, 62, 34, 19.52, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (62, 27, '2017-10-18 23:37:36', 595.6199999999999, 68.52, 527.0999999999999);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (345, 63, 62, 72.74, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (346, 63, 5, 77.04, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (347, 63, 56, 125.67, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (63, 31, '2017-01-26 09:09:47', 622.52, 71.62, 550.9);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (348, 64, 64, 34.34, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (349, 64, 61, 74.2, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (350, 64, 65, 34.39, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (351, 64, 14, 392.42, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (352, 64, 4, 53.87, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (353, 64, 4, 54.01, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (64, 3, '2018-02-06 01:14:53', 887.62, 102.12, 785.5);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (354, 65, 63, 32.85, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (355, 65, 41, 13.9, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (356, 65, 30, 15.01, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (357, 65, 51, 9.35, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (358, 65, 4, 51.2, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (359, 65, 59, 112.53, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (65, 27, '2015-10-16 12:26:47', 647.05, 74.44, 572.61);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (360, 66, 23, 74.55, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (361, 66, 30, 14.95, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (362, 66, 57, 84.68, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (363, 66, 10, 11.2, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (364, 66, 63, 32.6, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (365, 66, 5, 74.65, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (366, 66, 44, 8.42, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (66, 29, '2015-12-10 09:47:48', 522.5, 60.11, 462.39);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (367, 67, 35, 2.49, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (368, 67, 23, 79.49, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (369, 67, 42, 84.51, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (370, 67, 22, 14.9, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (371, 67, 3, 79.54, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (372, 67, 29, 99.34, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (373, 67, 11, 101.46, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (374, 67, 30, 15.89, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (375, 67, 26, 20.87, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (376, 67, 65, 34.77, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (67, 17, '2018-09-13 06:18:24', 1344.0100000000002, 154.62, 1189.39);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (377, 68, 45, 8.85, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (378, 68, 56, 128.8, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (379, 68, 21, 7.88, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (380, 68, 5, 78.83, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (381, 68, 42, 83.7, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (382, 68, 37, 44.36, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (383, 68, 6, 112.87, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (384, 68, 55, 128.72, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (68, 14, '2018-04-23 23:43:09', 1310.4900000000002, 150.76, 1159.7300000000002);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (385, 69, 19, 9.81, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (386, 69, 62, 74.11, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (387, 69, 49, 29.46, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (388, 69, 64, 34.38, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (69, 11, '2018-02-07 02:44:19', 317.29, 36.5, 280.79);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (389, 70, 64, 33.36, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (390, 70, 55, 124.68, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (391, 70, 29, 95.71, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (392, 70, 28, 0.95, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (393, 70, 28, 0.95, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (70, 4, '2016-09-20 12:01:55', 646.0800000000002, 74.33, 571.7500000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (394, 71, 44, 8.62, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (395, 71, 16, 25.74, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (396, 71, 5, 76.77, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (397, 71, 21, 7.67, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (71, 8, '2016-12-08 05:51:11', 307.74, 35.4, 272.34000000000003);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (398, 72, 45, 8.58, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (399, 72, 9, 76.49, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (72, 1, '2016-11-11 08:19:47', 192.26, 22.12, 170.14);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (400, 73, 21, 7.62, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (401, 73, 30, 15.27, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (73, 10, '2016-09-20 01:32:38', 43.089999999999996, 4.96, 38.129999999999995);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (402, 74, 49, 29.12, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (403, 74, 22, 14.52, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (74, 4, '2017-07-17 03:20:39', 82.22, 9.46, 72.76);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (404, 75, 31, 14.6, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (405, 75, 14, 366.97, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (406, 75, 8, 13.06, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (407, 75, 54, 8.02, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (408, 75, 44, 8.2, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (409, 75, 56, 120.04, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (410, 75, 32, 14.72, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (411, 75, 31, 14.78, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (412, 75, 12, 32.08, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (75, 18, '2015-02-03 05:28:14', 877.1200000000001, 100.91, 776.2100000000002);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (413, 76, 55, 124.39, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (414, 76, 56, 125.02, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (415, 76, 19, 9.56, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (416, 76, 40, 14.31, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (417, 76, 65, 33.41, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (418, 76, 40, 14.32, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (419, 76, 27, 0.94, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (76, 5, '2016-11-21 06:01:58', 510.51, 58.73, 451.78);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (420, 77, 29, 90.62, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (421, 77, 67, 11.16, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (422, 77, 65, 31.48, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (423, 77, 63, 31.38, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (424, 77, 52, 107.28, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (425, 77, 31, 14.28, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (77, 1, '2014-02-19 10:13:51', 586.7, 67.5, 519.2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (426, 78, 52, 107.67, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (427, 78, 34, 18.15, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (428, 78, 27, 0.9, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (429, 78, 37, 40.4, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (430, 78, 62, 68.54, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (431, 78, 54, 7.98, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (78, 21, '2014-04-19 15:27:33', 396.9800000000001, 45.67, 351.31000000000006);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (432, 79, 46, 48.66, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (433, 79, 15, 24.75, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (434, 79, 34, 18.5, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (435, 79, 54, 8.03, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (436, 79, 3, 73.87, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (437, 79, 13, 120.97, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (438, 79, 32, 14.59, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (439, 79, 29, 91.83, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (440, 79, 29, 91.49, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (441, 79, 62, 70.05, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (79, 12, '2015-02-24 10:21:20', 1588.45, 182.74, 1405.71);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (442, 80, 37, 40.77, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (443, 80, 22, 13.77, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (80, 16, '2014-09-28 21:14:13', 107.7, 12.39, 95.31);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (444, 81, 15, 24.56, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (445, 81, 6, 103.94, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (446, 81, 41, 13.66, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (447, 81, 12, 32.25, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (448, 81, 56, 118.94, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (449, 81, 28, 0.9, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (450, 81, 2, 4.54, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (451, 81, 68, 9.18, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (81, 1, '2014-11-07 01:50:28', 750.29, 86.32, 663.97);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (452, 82, 58, 85.04, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (453, 82, 44, 8.57, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (454, 82, 67, 11.88, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (455, 82, 13, 124.38, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (456, 82, 31, 15.25, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (457, 82, 13, 123.98, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (458, 82, 31, 15.19, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (82, 10, '2016-07-25 18:47:07', 888.95, 102.27, 786.6800000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (459, 83, 47, 51.53, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (460, 83, 36, 2.46, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (461, 83, 60, 74.34, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (462, 83, 55, 128.33, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (463, 83, 56, 128.28, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (83, 3, '2018-03-09 12:23:26', 841.3499999999999, 96.79, 744.56);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (464, 84, 46, 50.92, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (465, 84, 43, 82.39, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (466, 84, 64, 33.78, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (467, 84, 69, 12.13, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (468, 84, 28, 0.96, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (469, 84, 9, 77.27, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (84, 6, '2017-06-09 13:58:33', 350.63, 40.34, 310.29);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (470, 85, 58, 86.64, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (471, 85, 37, 43.55, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (472, 85, 3, 77.3, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (473, 85, 2, 4.84, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (474, 85, 69, 12.09, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (475, 85, 65, 33.87, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (85, 10, '2017-05-11 03:56:27', 700.6500000000001, 80.61, 620.0400000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (476, 86, 1, 11.08, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (477, 86, 39, 97.04, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (478, 86, 30, 14.68, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (479, 86, 3, 73.19, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (480, 86, 36, 2.29, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (481, 86, 33, 18.31, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (482, 86, 6, 104.7, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (483, 86, 26, 19.31, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (484, 86, 9, 73.95, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (86, 5, '2015-02-19 06:27:02', 854.1600000000001, 98.27, 755.8900000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (485, 87, 35, 2.24, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (486, 87, 10, 10.74, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (487, 87, 44, 8.13, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (488, 87, 42, 77.2, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (489, 87, 53, 108.54, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (490, 87, 27, 0.89, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (87, 27, '2014-04-20 19:06:31', 666.24, 76.65, 589.59);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (491, 88, 68, 9.45, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (492, 88, 55, 123.11, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (493, 88, 37, 42.36, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (494, 88, 5, 75.34, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (495, 88, 43, 80.6, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (496, 88, 69, 11.79, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (497, 88, 54, 8.25, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (498, 88, 3, 75.26, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (88, 13, '2016-04-25 07:57:51', 884.9300000000001, 101.81, 783.12);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (499, 89, 57, 86.36, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (500, 89, 16, 25.78, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (89, 20, '2017-03-21 18:07:20', 380.15, 43.73, 336.41999999999996);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (501, 90, 43, 77, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (502, 90, 2, 4.54, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (503, 90, 69, 11.53, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (504, 90, 14, 363.77, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (505, 90, 22, 13.76, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (506, 90, 30, 14.58, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (90, 31, '2014-10-17 11:59:35', 1430.98, 164.63, 1266.35);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (507, 91, 11, 98.24, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (508, 91, 46, 50.16, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (509, 91, 8, 13.71, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (510, 91, 52, 115.22, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (91, 17, '2017-01-17 03:37:57', 592.09, 68.12, 523.97);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (511, 92, 35, 2.36, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (512, 92, 43, 79.69, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (513, 92, 29, 94.29, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (92, 24, '2016-03-16 21:26:44', 412.36, 47.44, 364.92);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (514, 93, 39, 103.99, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (515, 93, 53, 118.92, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (516, 93, 56, 128.63, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (517, 93, 29, 98.76, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (93, 28, '2018-05-04 19:04:32', 1235.81, 142.17, 1093.6399999999999);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (518, 94, 4, 50.4, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (519, 94, 49, 27.47, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (520, 94, 63, 32.17, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (521, 94, 68, 9.18, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (522, 94, 33, 18.19, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (523, 94, 39, 96.98, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (524, 94, 65, 31.74, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (525, 94, 3, 73.16, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (94, 21, '2014-11-10 17:42:55', 876.8000000000001, 100.87, 775.9300000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (526, 95, 13, 123.54, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (527, 95, 43, 80.57, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (95, 27, '2016-05-03 16:46:21', 600.89, 69.13, 531.76);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (528, 96, 67, 12.13, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (529, 96, 45, 8.7, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (530, 96, 22, 14.52, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (531, 96, 18, 9.72, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (532, 96, 41, 14.55, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (533, 96, 31, 15.53, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (534, 96, 47, 50.92, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (535, 96, 32, 15.54, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (96, 25, '2017-07-03 11:26:47', 333.75999999999993, 38.4, 295.35999999999996);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (536, 97, 23, 73.73, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (537, 97, 52, 112.2, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (538, 97, 37, 41.36, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (539, 97, 10, 11.03, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (540, 97, 23, 73.88, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (541, 97, 69, 11.58, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (542, 97, 22, 13.88, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (543, 97, 25, 19.3, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (97, 2, '2015-05-18 15:17:31', 457.68, 52.65, 405.03000000000003);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (544, 98, 19, 9.08, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (545, 98, 41, 13.73, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (546, 98, 61, 68.52, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (547, 98, 60, 68.6, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (548, 98, 57, 81.72, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (98, 31, '2014-11-17 12:09:01', 273.06, 31.41, 241.65);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (549, 99, 43, 80.21, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (550, 99, 31, 15.07, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (551, 99, 26, 19.78, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (552, 99, 1, 11.19, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (553, 99, 69, 11.82, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (554, 99, 48, 28.04, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (555, 99, 34, 18.81, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (556, 99, 45, 8.43, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (557, 99, 63, 32.79, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (99, 16, '2016-01-16 16:01:48', 617.29, 71.02, 546.27);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (558, 100, 35, 2.49, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (100, 22, '2018-11-20 08:10:53', 5.630000000000001, 0.65, 4.98);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (559, 101, 47, 51.74, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (560, 101, 58, 88.58, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (561, 101, 52, 118.55, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (562, 101, 69, 12.35, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (101, 3, '2018-04-05 05:30:01', 757.5600000000001, 87.15, 670.4100000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (563, 102, 11, 96.68, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (564, 102, 56, 123.24, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (102, 11, '2016-07-03 05:38:52', 387.77, 44.61, 343.15999999999997);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (565, 103, 38, 23.73, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (103, 24, '2016-10-02 14:37:50', 80.44, 9.25, 71.19);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (566, 104, 48, 26.87, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (567, 104, 15, 23.95, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (568, 104, 57, 80.21, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (569, 104, 58, 81.52, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (570, 104, 5, 71.35, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (571, 104, 31, 14.37, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (572, 104, 35, 2.25, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (104, 2, '2014-02-21 14:58:25', 655.8000000000001, 75.45, 580.35);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (573, 105, 35, 2.28, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (574, 105, 52, 109.65, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (575, 105, 55, 118.97, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (576, 105, 64, 31.75, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (577, 105, 39, 94.89, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (578, 105, 47, 47.74, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (579, 105, 42, 76.86, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (580, 105, 43, 76.75, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (105, 23, '2014-06-26 19:34:57', 1297.96, 149.32, 1148.64);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (581, 106, 62, 74.19, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (582, 106, 1, 11.77, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (106, 15, '2018-02-08 20:29:16', 264.8, 30.46, 234.34);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (583, 107, 41, 13.34, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (584, 107, 56, 117.93, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (585, 107, 15, 23.88, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (586, 107, 32, 14.46, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (587, 107, 58, 79.81, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (588, 107, 41, 13.43, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (589, 107, 51, 8.87, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (590, 107, 1, 10.87, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (107, 2, '2014-01-14 07:27:17', 761.37, 87.59, 673.78);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (591, 108, 39, 100.95, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (592, 108, 35, 2.39, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (593, 108, 19, 9.59, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (108, 28, '2016-11-05 13:24:42', 141.15, 16.24, 124.91);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (594, 109, 56, 118.11, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (595, 109, 1, 10.95, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (596, 109, 68, 9.03, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (109, 27, '2014-09-23 07:56:51', 180.79000000000002, 20.8, 159.99);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (597, 110, 38, 23.23, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (598, 110, 43, 78.79, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (599, 110, 15, 24.53, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (600, 110, 59, 110.73, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (601, 110, 10, 11.03, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (602, 110, 26, 19.52, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (110, 24, '2015-04-28 17:52:02', 655.17, 75.37, 579.8);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (603, 111, 63, 33.27, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (604, 111, 66, 9.51, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (605, 111, 50, 9.48, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (606, 111, 64, 33.06, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (607, 111, 54, 8.32, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (608, 111, 7, 42.68, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (609, 111, 38, 23.68, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (610, 111, 26, 19.99, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (111, 21, '2016-07-17 07:57:35', 394.96000000000004, 45.44, 349.52000000000004);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (611, 112, 69, 11.98, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (612, 112, 62, 72.03, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (613, 112, 15, 25.43, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (614, 112, 46, 50.05, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (615, 112, 55, 124.37, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (616, 112, 65, 33.27, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (617, 112, 13, 124.17, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (618, 112, 9, 75.86, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (619, 112, 33, 19.09, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (620, 112, 27, 0.94, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (112, 13, '2016-09-10 16:27:21', 933.59, 107.4, 826.19);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (621, 113, 27, 0.88, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (113, 28, '2014-01-07 01:28:36', 0.99, 0.11, 0.88);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (622, 114, 41, 13.79, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (623, 114, 61, 69.36, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (624, 114, 3, 73.34, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (625, 114, 46, 48.66, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (626, 114, 49, 27.88, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (627, 114, 8, 13.3, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (114, 3, '2015-05-07 05:46:38', 565.07, 65.01, 500.06);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (628, 115, 14, 374.86, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (629, 115, 15, 25.04, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (630, 115, 49, 28.12, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (115, 31, '2015-12-28 05:27:39', 970.81, 111.69, 859.12);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (631, 116, 52, 115.75, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (632, 116, 16, 25.78, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (633, 116, 36, 2.41, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (634, 116, 63, 33.66, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (635, 116, 45, 8.68, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (636, 116, 65, 33.65, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (637, 116, 13, 125.56, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (638, 116, 61, 72.71, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (116, 18, '2017-03-28 04:44:53', 1006.54, 115.8, 890.74);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (639, 117, 14, 368.09, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (640, 117, 52, 111.11, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (641, 117, 42, 77.91, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (642, 117, 51, 9.17, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (643, 117, 43, 77.74, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (644, 117, 46, 48.66, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (645, 117, 17, 9.23, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (117, 24, '2015-03-08 16:43:13', 1722.49, 198.16, 1524.33);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (646, 118, 9, 78.39, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (647, 118, 56, 127.69, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (648, 118, 22, 14.68, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (649, 118, 31, 15.66, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (650, 118, 3, 78.09, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (651, 118, 6, 112.15, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (118, 27, '2017-12-06 21:58:06', 1051.8600000000001, 121.01, 930.8500000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (652, 119, 34, 18.82, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (653, 119, 17, 9.38, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (654, 119, 17, 9.36, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (655, 119, 7, 42.1, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (119, 29, '2015-12-28 19:08:05', 190.7, 21.94, 168.76);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (656, 120, 9, 71.94, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (657, 120, 19, 8.94, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (658, 120, 29, 90.27, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (120, 23, '2014-03-26 09:38:43', 397.40999999999997, 45.72, 351.69);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (659, 121, 5, 72.12, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (121, 1, '2014-03-12 16:48:01', 81.5, 9.38, 72.12);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (660, 122, 41, 14.52, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (661, 122, 22, 14.54, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (122, 5, '2017-07-03 20:39:18', 65.67999999999999, 7.56, 58.12);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (662, 123, 12, 34.47, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (663, 123, 48, 29.6, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (664, 123, 12, 34.53, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (665, 123, 17, 9.84, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (666, 123, 21, 7.87, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (667, 123, 3, 78.75, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (123, 3, '2018-04-23 02:30:28', 276.1, 31.76, 244.34);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (668, 124, 31, 14.86, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (669, 124, 58, 83.7, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (670, 124, 8, 13.33, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (671, 124, 38, 23.27, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (672, 124, 46, 48.78, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (673, 124, 18, 9.34, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (674, 124, 43, 79.15, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (675, 124, 20, 7.51, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (676, 124, 14, 376.07, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (124, 4, '2015-10-22 07:38:43', 1241.9299999999998, 142.88, 1099.05);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (677, 125, 5, 76.84, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (125, 30, '2016-12-03 13:24:37', 260.49, 29.97, 230.52);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (678, 126, 45, 8.09, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (679, 126, 5, 71.95, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (680, 126, 12, 31.56, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (681, 126, 36, 2.26, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (682, 126, 62, 68.44, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (683, 126, 30, 14.51, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (684, 126, 17, 8.99, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (685, 126, 37, 40.71, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (686, 126, 51, 8.99, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (687, 126, 41, 13.52, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (126, 7, '2014-07-04 15:55:24', 762.1500000000001, 87.68, 674.47);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (688, 127, 43, 81.1, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (689, 127, 30, 15.23, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (690, 127, 61, 72.08, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (691, 127, 45, 8.56, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (692, 127, 16, 25.65, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (127, 23, '2016-11-25 11:54:52', 320.08, 36.82, 283.26);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (693, 128, 14, 381.01, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (694, 128, 5, 76.44, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (695, 128, 21, 7.6, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (696, 128, 69, 11.99, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (697, 128, 66, 9.49, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (128, 19, '2016-09-26 09:13:35', 1621.4399999999998, 186.54, 1434.8999999999999);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (698, 129, 47, 51.96, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (699, 129, 62, 74.82, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (700, 129, 8, 14.16, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (701, 129, 63, 34.59, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (702, 129, 64, 34.66, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (129, 28, '2018-06-26 17:22:18', 572.8299999999999, 65.9, 506.92999999999995);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (703, 130, 52, 110.97, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (704, 130, 23, 74.05, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (705, 130, 64, 32.31, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (706, 130, 11, 93.09, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (707, 130, 39, 96.46, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (708, 130, 26, 19.3, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (130, 9, '2015-01-20 23:39:51', 1110.1100000000001, 127.71, 982.4000000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (709, 131, 66, 9.78, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (710, 131, 20, 7.81, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (131, 14, '2018-01-03 12:03:11', 37.53, 4.32, 33.21);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (711, 132, 50, 9.54, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (712, 132, 18, 9.53, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (713, 132, 1, 11.39, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (132, 26, '2016-09-12 15:44:46', 66.74000000000001, 7.68, 59.06);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (714, 133, 48, 27.28, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (715, 133, 60, 69.54, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (716, 133, 28, 0.9, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (717, 133, 14, 364.83, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (133, 24, '2014-10-12 02:46:32', 965.77, 111.11, 854.66);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (718, 134, 57, 81.09, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (719, 134, 42, 76.81, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (720, 134, 13, 117.87, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (721, 134, 22, 13.64, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (722, 134, 24, 4.53, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (723, 134, 19, 9.06, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (724, 134, 17, 9.1, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (725, 134, 5, 73.03, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (134, 17, '2014-08-03 20:22:20', 1100.34, 126.59, 973.75);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (726, 135, 23, 73.08, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (727, 135, 58, 81.64, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (728, 135, 5, 73.77, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (729, 135, 66, 9.07, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (135, 27, '2014-11-15 21:20:41', 721.97, 83.06, 638.91);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (730, 136, 27, 0.99, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (731, 136, 48, 29.93, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (732, 136, 54, 8.75, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (733, 136, 31, 15.95, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (734, 136, 46, 52.37, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (735, 136, 37, 44.9, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (736, 136, 26, 20.94, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (737, 136, 15, 26.72, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (738, 136, 31, 15.95, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (136, 11, '2018-11-20 14:02:41', 387.52, 44.58, 342.94);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (739, 137, 29, 93.49, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (740, 137, 23, 75.08, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (741, 137, 62, 70.67, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (742, 137, 31, 14.94, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (743, 137, 47, 49.15, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (744, 137, 61, 71.11, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (137, 3, '2015-11-22 18:55:10', 850.1600000000001, 97.81, 752.35);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (745, 138, 9, 74.36, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (746, 138, 11, 95.62, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (747, 138, 65, 32.46, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (748, 138, 51, 9.38, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (749, 138, 32, 14.98, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (138, 3, '2015-10-06 13:52:45', 303.56000000000006, 34.92, 268.64000000000004);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (750, 139, 19, 9.2, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (751, 139, 38, 22.97, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (752, 139, 24, 4.57, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (139, 9, '2014-10-17 01:14:34', 62.239999999999995, 7.16, 55.08);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (753, 140, 30, 15.21, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (754, 140, 4, 52.11, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (755, 140, 22, 14.24, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (756, 140, 7, 42.81, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (140, 29, '2016-06-16 18:24:01', 345.53999999999996, 39.75, 305.78999999999996);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (757, 141, 46, 52.39, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (758, 141, 36, 2.49, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (759, 141, 61, 75.43, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (760, 141, 13, 130.26, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (141, 8, '2018-11-24 13:57:23', 676.88, 77.87, 599.01);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (761, 142, 23, 75.86, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (142, 18, '2016-08-20 15:31:07', 171.44, 19.72, 151.72);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (762, 143, 1, 10.93, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (763, 143, 8, 13.07, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (764, 143, 66, 9.03, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (765, 143, 45, 8.17, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (766, 143, 48, 27.17, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (143, 31, '2014-06-14 15:30:40', 149.95, 17.25, 132.7);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (767, 144, 32, 14.44, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (768, 144, 38, 22.48, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (769, 144, 47, 47.4, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (770, 144, 60, 68.92, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (771, 144, 42, 77.2, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (772, 144, 7, 40.99, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (773, 144, 30, 14.35, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (774, 144, 51, 9.01, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (144, 28, '2014-06-16 21:17:54', 668.4599999999999, 76.9, 591.56);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (775, 145, 4, 53.88, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (776, 145, 20, 7.83, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (777, 145, 14, 390.96, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (778, 145, 22, 14.65, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (779, 145, 63, 34.27, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (145, 31, '2017-12-10 17:30:06', 1211.03, 139.32, 1071.71);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (780, 146, 58, 81.66, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (781, 146, 32, 14.51, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (782, 146, 41, 13.54, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (783, 146, 5, 71.95, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (784, 146, 53, 109.35, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (785, 146, 34, 17.89, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (786, 146, 14, 362.06, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (787, 146, 40, 13.49, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (146, 11, '2014-05-11 17:59:36', 1574.2799999999997, 181.11, 1393.1699999999998);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (788, 147, 20, 7.16, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (789, 147, 56, 117.3, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (790, 147, 11, 91.66, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (791, 147, 37, 40.85, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (792, 147, 43, 76.19, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (793, 147, 16, 24.22, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (794, 147, 66, 8.93, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (795, 147, 12, 31.44, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (796, 147, 36, 2.24, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (147, 27, '2014-02-16 16:09:51', 1054.78, 121.35, 933.4300000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (797, 148, 26, 20.2, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (798, 148, 14, 384.59, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (799, 148, 43, 81.69, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (800, 148, 34, 19.1, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (801, 148, 19, 9.57, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (802, 148, 15, 25.58, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (803, 148, 39, 101.36, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (804, 148, 48, 28.67, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (805, 148, 14, 384.63, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (806, 148, 1, 11.54, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (148, 1, '2017-01-08 10:57:05', 2202, 253.33, 1948.67);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (807, 149, 40, 14.4, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (808, 149, 58, 86.36, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (149, 2, '2017-03-01 22:44:02', 227.72, 26.2, 201.52);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (809, 150, 54, 7.96, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (810, 150, 17, 8.95, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (811, 150, 20, 7.14, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (812, 150, 16, 23.94, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (813, 150, 43, 75.79, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (814, 150, 22, 13.41, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (815, 150, 61, 68.46, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (816, 150, 43, 77.18, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (817, 150, 50, 9.07, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (818, 150, 68, 8.99, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (150, 11, '2014-02-17 01:25:58', 795.5699999999999, 91.53, 704.04);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (819, 151, 57, 81.95, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (820, 151, 32, 14.42, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (821, 151, 34, 18.01, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (822, 151, 45, 8.06, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (823, 151, 52, 109.22, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (824, 151, 65, 31.77, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (825, 151, 29, 90.03, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (151, 20, '2014-06-06 05:21:56', 962.31, 110.71, 851.5999999999999);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (826, 152, 31, 14.5, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (827, 152, 2, 4.58, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (828, 152, 52, 108.84, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (829, 152, 16, 24.35, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (830, 152, 66, 9.05, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (831, 152, 18, 9.12, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (832, 152, 62, 68.68, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (833, 152, 43, 76.96, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (152, 9, '2014-10-05 17:36:32', 886.36, 101.97, 784.39);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (834, 153, 62, 70.44, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (835, 153, 9, 74.49, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (836, 153, 31, 14.86, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (153, 22, '2015-07-28 01:50:48', 428.51000000000005, 49.3, 379.21000000000004);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (837, 154, 42, 84.4, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (154, 30, '2018-08-28 14:01:15', 286.12, 32.92, 253.2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (838, 155, 69, 12.37, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (839, 155, 47, 51.72, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (840, 155, 69, 12.36, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (841, 155, 14, 394.55, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (842, 155, 12, 34.43, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (155, 29, '2018-04-06 11:46:30', 1568.5900000000001, 180.46, 1388.13);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (843, 156, 36, 2.3, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (844, 156, 52, 111.35, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (845, 156, 57, 82.7, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (846, 156, 35, 2.32, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (847, 156, 8, 13.16, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (848, 156, 60, 69.69, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (156, 17, '2015-04-14 21:57:28', 739.3399999999999, 85.06, 654.28);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (849, 157, 2, 4.53, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (850, 157, 13, 117.06, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (851, 157, 6, 102.72, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (852, 157, 36, 2.25, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (853, 157, 23, 72.79, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (854, 157, 45, 8.1, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (855, 157, 58, 80.91, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (157, 29, '2014-04-18 14:44:12', 870.6700000000001, 100.17, 770.5000000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (856, 158, 50, 9.61, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (857, 158, 9, 77.15, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (158, 1, '2017-05-04 11:10:08', 119.76, 13.78, 105.98);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (858, 159, 45, 8.41, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (859, 159, 63, 32.61, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (860, 159, 63, 32.64, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (861, 159, 32, 14.84, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (862, 159, 33, 18.69, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (863, 159, 33, 18.71, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (159, 18, '2015-10-25 21:56:48', 310.87, 35.76, 275.11);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (864, 160, 20, 7.56, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (865, 160, 6, 108.34, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (866, 160, 10, 11.3, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (867, 160, 53, 112.92, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (868, 160, 7, 42.37, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (869, 160, 18, 9.45, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (870, 160, 25, 19.64, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (871, 160, 69, 11.84, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (872, 160, 40, 14.1, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (873, 160, 9, 75.38, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (160, 24, '2016-03-09 09:43:58', 1252.1499999999999, 144.05, 1108.1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (874, 161, 11, 94.41, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (875, 161, 14, 365.7, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (876, 161, 12, 32.38, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (877, 161, 4, 50.8, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (878, 161, 28, 0.91, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (161, 19, '2015-02-15 11:18:16', 1441.43, 165.83, 1275.6000000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (879, 162, 22, 14.62, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (880, 162, 30, 15.55, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (881, 162, 16, 26, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (162, 23, '2017-09-18 14:10:54', 143.46, 16.5, 126.96000000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (882, 163, 14, 366.08, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (163, 5, '2015-03-26 01:35:18', 827.3399999999999, 95.18, 732.16);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (883, 164, 44, 8.48, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (884, 164, 18, 9.34, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (885, 164, 36, 2.35, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (886, 164, 29, 93.54, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (887, 164, 41, 14, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (164, 17, '2016-01-25 13:31:43', 172.37, 19.83, 152.54000000000002);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (888, 165, 37, 42.79, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (889, 165, 69, 11.93, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (890, 165, 54, 8.3, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (891, 165, 56, 123.51, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (892, 165, 35, 2.39, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (893, 165, 26, 20.02, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (894, 165, 36, 2.37, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (895, 165, 62, 71.86, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (896, 165, 58, 85.4, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (897, 165, 37, 42.76, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (165, 23, '2016-08-14 17:03:22', 857.2200000000001, 98.62, 758.6000000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (898, 166, 49, 28.09, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (899, 166, 15, 25.02, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (900, 166, 52, 111.95, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (901, 166, 44, 8.36, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (902, 166, 4, 51.11, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (903, 166, 48, 28.18, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (904, 166, 52, 112.64, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (166, 1, '2015-10-13 15:54:28', 883.4100000000001, 101.63, 781.7800000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (905, 167, 6, 111.86, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (906, 167, 25, 20.44, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (167, 8, '2017-10-03 14:54:47', 195.69, 22.51, 173.18);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (907, 168, 49, 27.73, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (908, 168, 33, 18.29, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (909, 168, 69, 11.54, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (168, 2, '2015-03-05 09:31:59', 163.79, 18.84, 144.95);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (910, 169, 68, 9.23, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (911, 169, 5, 73.65, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (912, 169, 69, 11.56, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (913, 169, 63, 32.19, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (169, 9, '2014-12-16 05:12:01', 249.81000000000003, 28.74, 221.07000000000002);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (914, 170, 50, 9.8, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (170, 16, '2018-02-20 22:59:13', 11.07, 1.27, 9.8);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (915, 171, 52, 109.01, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (916, 171, 14, 359.42, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (917, 171, 3, 72.5, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (918, 171, 13, 118.23, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (171, 22, '2014-06-03 10:58:53', 1217.16, 140.03, 1077.13);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (919, 172, 4, 49.99, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (920, 172, 41, 13.48, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (921, 172, 13, 118.74, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (922, 172, 45, 8.07, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (923, 172, 34, 18.01, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (924, 172, 15, 24.03, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (925, 172, 58, 81.77, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (172, 9, '2014-03-16 16:21:50', 468.03, 53.84, 414.18999999999994);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (926, 173, 50, 9.32, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (927, 173, 61, 70.69, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (173, 26, '2015-08-14 06:02:14', 90.41, 10.4, 80.00999999999999);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (928, 174, 7, 44.95, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (929, 174, 8, 14.29, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (930, 174, 7, 44.95, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (931, 174, 7, 44.95, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (932, 174, 64, 34.96, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (933, 174, 33, 19.98, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (934, 174, 51, 9.98, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (174, 10, '2018-12-11 16:59:57', 714.3900000000001, 82.19, 632.2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (935, 175, 30, 15.3, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (936, 175, 54, 8.41, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (937, 175, 37, 43.16, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (938, 175, 1, 11.42, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (939, 175, 43, 81.41, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (940, 175, 18, 9.55, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (175, 7, '2016-11-12 03:47:22', 416.22, 47.88, 368.34000000000003);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (941, 176, 58, 89.6, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (942, 176, 59, 119.82, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (943, 176, 65, 34.85, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (944, 176, 68, 9.96, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (176, 7, '2018-10-21 03:39:50', 675.81, 77.75, 598.06);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (945, 177, 2, 4.82, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (946, 177, 1, 11.54, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (947, 177, 33, 19.23, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (948, 177, 16, 25.65, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (949, 177, 48, 28.87, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (950, 177, 36, 2.39, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (177, 12, '2017-02-08 02:32:09', 166.13, 19.11, 147.01999999999998);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (951, 178, 21, 7.87, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (952, 178, 29, 98.64, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (953, 178, 14, 395.11, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (954, 178, 46, 51.77, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (955, 178, 48, 29.57, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (956, 178, 61, 74.53, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (957, 178, 40, 14.79, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (958, 178, 54, 8.66, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (959, 178, 2, 4.93, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (178, 6, '2018-04-24 11:47:34', 1863.69, 214.41, 1649.28);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (960, 179, 45, 8.77, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (961, 179, 50, 9.76, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (962, 179, 58, 87.76, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (963, 179, 33, 19.56, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (964, 179, 33, 19.54, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (179, 10, '2017-11-26 17:21:12', 207.30999999999997, 23.85, 183.45999999999998);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (965, 180, 54, 8.46, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (180, 31, '2017-03-24 22:28:54', 19.12, 2.2, 16.92);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (966, 181, 46, 47.44, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (967, 181, 41, 13.45, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (968, 181, 14, 362.23, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (969, 181, 43, 76.65, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (970, 181, 48, 26.78, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (971, 181, 2, 4.44, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (972, 181, 59, 106.8, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (181, 6, '2014-01-14 20:03:43', 1937.3400000000001, 222.88, 1714.46);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (973, 182, 8, 13.65, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (974, 182, 33, 19.09, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (182, 7, '2016-10-08 17:58:26', 80.14, 9.22, 70.92);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (975, 183, 46, 47.99, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (976, 183, 17, 9.22, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (977, 183, 61, 69.06, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (978, 183, 37, 41.47, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (979, 183, 66, 9.21, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (980, 183, 58, 82.27, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (981, 183, 45, 8.29, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (982, 183, 3, 73.16, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (983, 183, 10, 11.05, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (984, 183, 44, 8.34, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (183, 17, '2015-03-05 18:04:37', 553.72, 63.7, 490.02000000000004);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (985, 184, 47, 48.34, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (986, 184, 45, 8.32, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (987, 184, 2, 4.58, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (988, 184, 44, 8.35, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (184, 28, '2015-05-09 01:37:59', 117.25999999999999, 13.49, 103.77);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (989, 185, 11, 91.44, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (990, 185, 16, 23.8, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (991, 185, 4, 49.58, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (185, 2, '2014-01-10 09:23:48', 455.40999999999997, 52.39, 403.02);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (992, 186, 31, 14.99, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (993, 186, 60, 71.38, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (186, 28, '2016-02-04 10:44:07', 292.79, 33.68, 259.11);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (994, 187, 18, 9.37, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (995, 187, 31, 14.93, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (996, 187, 56, 122.31, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (997, 187, 28, 0.93, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (187, 27, '2016-01-25 12:20:26', 185.69, 21.36, 164.32999999999998);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (998, 188, 9, 72.29, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (999, 188, 62, 69.38, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1000, 188, 23, 72.73, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1001, 188, 60, 69.52, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (188, 27, '2014-10-02 10:48:32', 559.9699999999999, 64.42, 495.54999999999995);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1002, 189, 40, 14.25, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1003, 189, 63, 33.31, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1004, 189, 5, 75.87, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1005, 189, 29, 94.66, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1006, 189, 55, 123.36, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1007, 189, 48, 28.54, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1008, 189, 7, 42.71, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1009, 189, 57, 85.27, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (189, 18, '2016-06-22 22:26:49', 1356.02, 156, 1200.02);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1010, 190, 65, 32.46, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1011, 190, 62, 69.48, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1012, 190, 16, 24.87, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1013, 190, 34, 18.39, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1014, 190, 10, 11.02, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1015, 190, 39, 97.05, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1016, 190, 49, 27.64, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1017, 190, 14, 370.4, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (190, 22, '2015-06-02 11:18:23', 1585.15, 182.36, 1402.79);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1018, 191, 27, 0.96, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1019, 191, 22, 14.5, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1020, 191, 67, 12.14, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1021, 191, 34, 19.36, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (191, 6, '2017-07-15 09:52:40', 85.83000000000001, 9.87, 75.96000000000001);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1022, 192, 45, 8.68, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1023, 192, 32, 15.47, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1024, 192, 36, 2.42, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1025, 192, 55, 126.5, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (192, 2, '2017-05-18 21:03:42', 172.97, 19.9, 153.07);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1026, 193, 44, 8.97, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (193, 12, '2018-11-11 01:08:21', 30.41, 3.5, 26.91);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1027, 194, 31, 15.27, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1028, 194, 22, 14.3, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1029, 194, 53, 115.77, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1030, 194, 49, 28.65, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1031, 194, 26, 20.12, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1032, 194, 7, 43.15, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1033, 194, 65, 33.4, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1034, 194, 15, 25.59, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1035, 194, 50, 9.57, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (194, 25, '2016-12-23 04:36:12', 565.8100000000001, 65.09, 500.72);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1036, 195, 66, 9.02, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1037, 195, 29, 91.87, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1038, 195, 63, 32, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1039, 195, 63, 31.91, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1040, 195, 10, 11, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1041, 195, 19, 9.11, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1042, 195, 25, 18.95, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1043, 195, 58, 81.54, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1044, 195, 28, 0.9, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (195, 27, '2014-09-14 03:49:45', 416.22, 47.88, 368.34000000000003);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1045, 196, 3, 76.42, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1046, 196, 3, 76.27, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1047, 196, 9, 76.37, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1048, 196, 23, 76.27, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1049, 196, 4, 52.57, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1050, 196, 8, 13.63, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1051, 196, 43, 81.21, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1052, 196, 1, 11.4, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (196, 2, '2016-10-27 23:36:31', 886.24, 101.96, 784.28);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1053, 197, 52, 114.63, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1054, 197, 47, 49.84, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1055, 197, 44, 8.49, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1056, 197, 34, 18.97, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1057, 197, 55, 124.03, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1058, 197, 11, 96.4, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1059, 197, 16, 25.36, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1060, 197, 11, 96.47, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (197, 8, '2016-07-15 14:26:40', 1185.8300000000002, 136.42, 1049.41);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1061, 198, 26, 20.76, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1062, 198, 38, 24.75, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1063, 198, 53, 119.13, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1064, 198, 20, 7.91, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1065, 198, 17, 9.9, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1066, 198, 23, 79.21, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1067, 198, 41, 14.85, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1068, 198, 33, 19.79, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1069, 198, 55, 129.32, 2);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (198, 14, '2018-07-05 13:12:51', 742.2099999999999, 85.39, 656.8199999999999);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1070, 199, 19, 9.04, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1071, 199, 56, 118.58, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1072, 199, 10, 10.97, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1073, 199, 16, 24.24, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1074, 199, 55, 119.63, 1);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1075, 199, 62, 68.77, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1076, 199, 19, 9.19, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1077, 199, 56, 118.85, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1078, 199, 29, 91.73, 1);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (199, 24, '2014-10-02 17:20:52', 1167.11, 134.27, 1032.84);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1079, 200, 49, 29.76, 2);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1080, 200, 29, 99.23, 3);
INSERT INTO `order_items` (`id`, `order`, `product_variation`, `price`, `quantity`) VALUES (1081, 200, 24, 4.96, 3);
INSERT INTO `orders` (`id`, `customer`, `placed_on`, `total_cost`, `total_tax`, `subtotal`) VALUES (200, 12, '2018-08-07 22:35:01', 420.46, 48.37, 372.09);
