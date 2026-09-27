DROP TABLE IF EXISTS `user_registration`;
CREATE TABLE `user_registration`(
	   `user_registration_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户注册ID',
`gender` varchar(64) comment '性别',
`id` varchar(255) comment '身份证',
`full_name` varchar(64) comment '姓名',
`account_number` varchar(64) comment '账号编号',
`account_balance` int(11) DEFAULT 0 comment '账户余额',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (user_registration_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '用户注册';

DROP TABLE IF EXISTS `passenger_plane_management`;
CREATE TABLE `passenger_plane_management`(
	   `passenger_plane_management_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客机管理ID',
`passenger_plane_number` varchar(64) comment '客机编号',
`aircraft_model` varchar(64) comment '客机型号',
`service_time` varchar(64) comment '服役时间',
`state` varchar(64) comment '状态',
`passenger_plane_picture` varchar(255) comment '客机图片',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (passenger_plane_management_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '客机管理';
insert into `passenger_plane_management` values (1,'客机编号1','客机型号1','服役时间1','状态1','/api/upload/image_1646359778266.jpeg','0','2022-04-24 14:44:53','2022-04-24 14:44:53');
insert into `passenger_plane_management` values (2,'客机编号2','客机型号2','服役时间2','状态2','/api/upload/image_1646359778295.jpeg','0','2022-04-24 14:44:53','2022-04-24 14:44:53');
insert into `passenger_plane_management` values (3,'客机编号3','客机型号3','服役时间3','状态3','/api/upload/image_1646359778274.jpeg','0','2022-04-24 14:44:53','2022-04-24 14:44:53');
insert into `passenger_plane_management` values (4,'客机编号4','客机型号4','服役时间4','状态4','/api/upload/image_1646359778295.jpeg','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `passenger_plane_management` values (5,'客机编号5','客机型号5','服役时间5','状态5','/api/upload/image_1646359778282.jpeg','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `passenger_plane_management` values (6,'客机编号6','客机型号6','服役时间6','状态6','/api/upload/image_1646359778282.jpeg','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `passenger_plane_management` values (7,'客机编号7','客机型号7','服役时间7','状态7','/api/upload/image_1646359778266.jpeg','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `passenger_plane_management` values (8,'客机编号8','客机型号8','服役时间8','状态8','/api/upload/image_1646359778274.jpeg','0','2022-04-24 14:44:54','2022-04-24 14:44:54');

DROP TABLE IF EXISTS `flight_information`;
CREATE TABLE `flight_information`(
	   `flight_information_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '航班信息ID',
`place_of_departure` varchar(64) comment '出发地',
`destination` varchar(64) comment '目的地',
`departure_time` date comment '出发时间',
`arrival_time` date comment '到达时间',
`flight_type` varchar(64) comment '航班类型',
`seat_type` varchar(64) comment '座位类型',
`passenger_plane_number` varchar(64) comment '客机编号',
`aircraft_model` varchar(64) comment '客机型号',
`remaining_votes` int(11) DEFAULT 0 comment '剩余票数',
`ticket_price` varchar(64) comment '票价',
`cover` varchar(255) comment '封面',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`seat` varchar(64) DEFAULT '' NOT NULL comment '座位号',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (flight_information_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '航班信息';
insert into `flight_information` values (1,'出发地1','目的地1','2022-4-24','2022-4-24','航班类型1','座位类型1','客机编号1','客机型号1',5,'票价1','/api/upload/image_1646359778274.jpeg','885','0','16','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `flight_information` values (2,'出发地2','目的地2','2022-4-24','2022-4-24','航班类型2','座位类型2','客机编号2','客机型号2',10,'票价2','/api/upload/image_1646359778282.jpeg','256','0','16','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `flight_information` values (3,'出发地3','目的地3','2022-4-24','2022-4-24','航班类型3','座位类型3','客机编号3','客机型号3',15,'票价3','/api/upload/image_1646359778282.jpeg','779','0','16','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `flight_information` values (4,'出发地4','目的地4','2022-4-24','2022-4-24','航班类型4','座位类型4','客机编号4','客机型号4',20,'票价4','/api/upload/image_1646359778295.jpeg','539','0','16','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `flight_information` values (5,'出发地5','目的地5','2022-4-24','2022-4-24','航班类型5','座位类型5','客机编号5','客机型号5',25,'票价5','/api/upload/image_1646359778295.jpeg','315','0','16','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `flight_information` values (6,'出发地6','目的地6','2022-4-24','2022-4-24','航班类型6','座位类型6','客机编号6','客机型号6',30,'票价6','/api/upload/image_1646359778295.jpeg','64','0','16','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `flight_information` values (7,'出发地7','目的地7','2022-4-24','2022-4-24','航班类型7','座位类型7','客机编号7','客机型号7',35,'票价7','/api/upload/image_1646359778266.jpeg','139','0','16','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `flight_information` values (8,'出发地8','目的地8','2022-4-24','2022-4-24','航班类型8','座位类型8','客机编号8','客机型号8',40,'票价8','/api/upload/image_1646359778282.jpeg','333','0','16','2022-04-24 14:44:54','2022-04-24 14:44:54');

DROP TABLE IF EXISTS `epidemic_policy`;
CREATE TABLE `epidemic_policy`(
	   `epidemic_policy_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '疫情政策ID',
`area_number` varchar(64) comment '地区编号',
`region_name` varchar(64) comment '地区名称',
`date` date comment '日期',
`cover` varchar(255) comment '封面',
`details_of_epidemic_policy` text comment '政策详情',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (epidemic_policy_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '疫情政策';
insert into `epidemic_policy` values (1,'地区编号1','地区名称1','2022-4-24','/api/upload/image_1646359778282.jpeg','政策详情1','992','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `epidemic_policy` values (2,'地区编号2','地区名称2','2022-4-24','/api/upload/image_1646359778274.jpeg','政策详情2','506','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `epidemic_policy` values (3,'地区编号3','地区名称3','2022-4-24','/api/upload/image_1646359778266.jpeg','政策详情3','263','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `epidemic_policy` values (4,'地区编号4','地区名称4','2022-4-24','/api/upload/image_1646359778266.jpeg','政策详情4','637','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `epidemic_policy` values (5,'地区编号5','地区名称5','2022-4-24','/api/upload/image_1646359778282.jpeg','政策详情5','168','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `epidemic_policy` values (6,'地区编号6','地区名称6','2022-4-24','/api/upload/image_1646359778274.jpeg','政策详情6','685','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `epidemic_policy` values (7,'地区编号7','地区名称7','2022-4-24','/api/upload/image_1646359778282.jpeg','政策详情7','204','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `epidemic_policy` values (8,'地区编号8','地区名称8','2022-4-24','/api/upload/image_1646359778282.jpeg','政策详情8','276','0','2022-04-24 14:44:54','2022-04-24 14:44:54');

DROP TABLE IF EXISTS `balance_recharge`;
CREATE TABLE `balance_recharge`(
	   `balance_recharge_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '余额充值ID',
`account_number` varchar(64) comment '账号编号',
`recharge_amount` int(11) DEFAULT 0 comment '充值金额',
`user_account` int(11) DEFAULT 0 comment '用户账号',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (balance_recharge_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '余额充值';
insert into `balance_recharge` values (1,'账号编号1',5,0,'0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `balance_recharge` values (2,'账号编号2',10,0,'0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `balance_recharge` values (3,'账号编号3',15,0,'0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `balance_recharge` values (4,'账号编号4',20,0,'0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `balance_recharge` values (5,'账号编号5',25,0,'0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `balance_recharge` values (6,'账号编号6',30,0,'0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `balance_recharge` values (7,'账号编号7',35,0,'0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `balance_recharge` values (8,'账号编号8',40,0,'0','2022-04-24 14:44:54','2022-04-24 14:44:54');

DROP TABLE IF EXISTS `withdrawal_of_balance`;
CREATE TABLE `withdrawal_of_balance`(
	   `withdrawal_of_balance_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '余额提现ID',
`account_number` varchar(64) comment '账号编号',
`account_balance` varchar(64) comment '账户余额',
`withdrawal_amount` int(11) DEFAULT 0 comment '提现金额',
`withdrawal_time` date comment '提现时间',
`withdrawal_bank_card` varchar(64) comment '提现银行卡',
`user_account` int(11) DEFAULT 0 comment '用户账号',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (withdrawal_of_balance_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '余额提现';
insert into `withdrawal_of_balance` values (1,'账号编号1','账户余额1',5,'2022-4-24','提现银行卡1',0,'0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `withdrawal_of_balance` values (2,'账号编号2','账户余额2',10,'2022-4-24','提现银行卡2',0,'0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `withdrawal_of_balance` values (3,'账号编号3','账户余额3',15,'2022-4-24','提现银行卡3',0,'0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `withdrawal_of_balance` values (4,'账号编号4','账户余额4',20,'2022-4-24','提现银行卡4',0,'0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `withdrawal_of_balance` values (5,'账号编号5','账户余额5',25,'2022-4-24','提现银行卡5',0,'0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `withdrawal_of_balance` values (6,'账号编号6','账户余额6',30,'2022-4-24','提现银行卡6',0,'0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `withdrawal_of_balance` values (7,'账号编号7','账户余额7',35,'2022-4-24','提现银行卡7',0,'0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `withdrawal_of_balance` values (8,'账号编号8','账户余额8',40,'2022-4-24','提现银行卡8',0,'0','2022-04-24 14:44:54','2022-04-24 14:44:54');

DROP TABLE IF EXISTS `order_center`;
CREATE TABLE `order_center`(
	   `order_center_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单中心ID',
`place_of_departure` varchar(64) comment '出发地',
`destination` varchar(64) comment '目的地',
`departure_time` varchar(64) comment '出发时间',
`arrival_time` varchar(64) comment '到达时间',
`flight_type` varchar(64) comment '航班类型',
`seat_type` varchar(64) comment '座位类型',
`passenger_plane_number` varchar(64) comment '客机编号',
`aircraft_model` varchar(64) comment '客机型号',
`ticket_price` varchar(64) comment '票价',
`number_of_purchased_sheets` int(11) DEFAULT 0 comment '购买张数',
`total_amount` varchar(64) comment '总金额',
`user_account` int(11) DEFAULT 0 comment '用户账号',
`order_status` varchar(64) comment '订单状态',
`pay_state` varchar(16) DEFAULT '未支付' NOT NULL comment '支付状态',
`pay_type` varchar(16) DEFAULT '' comment '支付类型: 微信、支付宝、网银',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`seat` varchar(64) DEFAULT '' NOT NULL comment '座位号',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (order_center_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '订单中心';
insert into `order_center` values (1,'出发地1','目的地1','出发时间1','到达时间1','航班类型1','座位类型1','客机编号1','客机型号1','票价1',5,'总金额1',0,'订单状态1','未支付','支付宝','0','16','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `order_center` values (2,'出发地2','目的地2','出发时间2','到达时间2','航班类型2','座位类型2','客机编号2','客机型号2','票价2',10,'总金额2',0,'订单状态2','未支付','支付宝','0','16','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `order_center` values (3,'出发地3','目的地3','出发时间3','到达时间3','航班类型3','座位类型3','客机编号3','客机型号3','票价3',15,'总金额3',0,'订单状态3','未支付','支付宝','0','16','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `order_center` values (4,'出发地4','目的地4','出发时间4','到达时间4','航班类型4','座位类型4','客机编号4','客机型号4','票价4',20,'总金额4',0,'订单状态4','未支付','支付宝','0','16','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `order_center` values (5,'出发地5','目的地5','出发时间5','到达时间5','航班类型5','座位类型5','客机编号5','客机型号5','票价5',25,'总金额5',0,'订单状态5','未支付','支付宝','0','16','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `order_center` values (6,'出发地6','目的地6','出发时间6','到达时间6','航班类型6','座位类型6','客机编号6','客机型号6','票价6',30,'总金额6',0,'订单状态6','未支付','支付宝','0','16','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `order_center` values (7,'出发地7','目的地7','出发时间7','到达时间7','航班类型7','座位类型7','客机编号7','客机型号7','票价7',35,'总金额7',0,'订单状态7','未支付','支付宝','0','16','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `order_center` values (8,'出发地8','目的地8','出发时间8','到达时间8','航班类型8','座位类型8','客机编号8','客机型号8','票价8',40,'总金额8',0,'订单状态8','未支付','支付宝','0','16','2022-04-24 14:44:54','2022-04-24 14:44:54');

DROP TABLE IF EXISTS `order_refund`;
CREATE TABLE `order_refund`(
	   `order_refund_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单退票ID',
`place_of_departure` varchar(64) comment '出发地',
`destination` varchar(64) comment '目的地',
`departure_time` varchar(64) comment '出发时间',
`arrival_time` varchar(64) comment '到达时间',
`flight_type` varchar(64) comment '航班类型',
`seat_type` varchar(64) comment '座位类型',
`passenger_plane_number` varchar(64) comment '客机编号',
`aircraft_model` varchar(64) comment '客机型号',
`ticket_price` varchar(64) comment '票价',
`number_of_purchased_sheets` varchar(64) comment '购买张数',
`total_amount` varchar(64) comment '总金额',
`user_account` int(11) DEFAULT 0 comment '用户账号',
`refund_time` date comment '退票时间',
`reason_for_refund` text comment '退票原因',
`examine_state` varchar(16) DEFAULT '未审核' NOT NULL comment '审核状态',
`examine_reply` varchar(16) DEFAULT '' comment '审核回复',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (order_refund_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '订单退票';
insert into `order_refund` values (1,'出发地1','目的地1','出发时间1','到达时间1','航班类型1','座位类型1','客机编号1','客机型号1','票价1','购买张数1','总金额1',0,'2022-4-24','退票原因1','未审核','','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `order_refund` values (2,'出发地2','目的地2','出发时间2','到达时间2','航班类型2','座位类型2','客机编号2','客机型号2','票价2','购买张数2','总金额2',0,'2022-4-24','退票原因2','未审核','','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `order_refund` values (3,'出发地3','目的地3','出发时间3','到达时间3','航班类型3','座位类型3','客机编号3','客机型号3','票价3','购买张数3','总金额3',0,'2022-4-24','退票原因3','未审核','','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `order_refund` values (4,'出发地4','目的地4','出发时间4','到达时间4','航班类型4','座位类型4','客机编号4','客机型号4','票价4','购买张数4','总金额4',0,'2022-4-24','退票原因4','未审核','','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `order_refund` values (5,'出发地5','目的地5','出发时间5','到达时间5','航班类型5','座位类型5','客机编号5','客机型号5','票价5','购买张数5','总金额5',0,'2022-4-24','退票原因5','未审核','','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `order_refund` values (6,'出发地6','目的地6','出发时间6','到达时间6','航班类型6','座位类型6','客机编号6','客机型号6','票价6','购买张数6','总金额6',0,'2022-4-24','退票原因6','未审核','','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `order_refund` values (7,'出发地7','目的地7','出发时间7','到达时间7','航班类型7','座位类型7','客机编号7','客机型号7','票价7','购买张数7','总金额7',0,'2022-4-24','退票原因7','未审核','','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `order_refund` values (8,'出发地8','目的地8','出发时间8','到达时间8','航班类型8','座位类型8','客机编号8','客机型号8','票价8','购买张数8','总金额8',0,'2022-4-24','退票原因8','未审核','','0','2022-04-24 14:44:54','2022-04-24 14:44:54');

DROP TABLE IF EXISTS `upgrade_information`;
CREATE TABLE `upgrade_information`(
	   `upgrade_information_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '机票升舱ID',
`place_of_departure` varchar(64) comment '出发地',
`destination` varchar(64) comment '目的地',
`departure_time` varchar(64) comment '出发时间',
`arrival_time` varchar(64) comment '到达时间',
`flight_type` varchar(64) comment '航班类型',
`passenger_plane_number` varchar(64) comment '客机编号',
`aircraft_model` varchar(64) comment '客机型号',
`ticket_price` varchar(64) comment '票价',
`number_of_purchased_sheets` varchar(64) comment '购买张数',
`total_amount` varchar(64) comment '总金额',
`user_account` int(11) DEFAULT 0 comment '用户账号',
`application_time` date comment '申请时间',
`ticket_replacement_amount` int(11) DEFAULT 0 comment '补票金额',
`reason_for_application` text comment '申请原因',
`pay_state` varchar(16) DEFAULT '未支付' NOT NULL comment '支付状态',
`pay_type` varchar(16) DEFAULT '' comment '支付类型: 微信、支付宝、网银',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (upgrade_information_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '机票升舱';
insert into `upgrade_information` values (1,'出发地1','目的地1','出发时间1','到达时间1','航班类型1','客机编号1','客机型号1','票价1','购买张数1','总金额1',0,'2022-4-24',5,'申请原因1','未支付','支付宝','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `upgrade_information` values (2,'出发地2','目的地2','出发时间2','到达时间2','航班类型2','客机编号2','客机型号2','票价2','购买张数2','总金额2',0,'2022-4-24',10,'申请原因2','未支付','支付宝','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `upgrade_information` values (3,'出发地3','目的地3','出发时间3','到达时间3','航班类型3','客机编号3','客机型号3','票价3','购买张数3','总金额3',0,'2022-4-24',15,'申请原因3','未支付','支付宝','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `upgrade_information` values (4,'出发地4','目的地4','出发时间4','到达时间4','航班类型4','客机编号4','客机型号4','票价4','购买张数4','总金额4',0,'2022-4-24',20,'申请原因4','未支付','支付宝','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `upgrade_information` values (5,'出发地5','目的地5','出发时间5','到达时间5','航班类型5','客机编号5','客机型号5','票价5','购买张数5','总金额5',0,'2022-4-24',25,'申请原因5','未支付','支付宝','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `upgrade_information` values (6,'出发地6','目的地6','出发时间6','到达时间6','航班类型6','客机编号6','客机型号6','票价6','购买张数6','总金额6',0,'2022-4-24',30,'申请原因6','未支付','支付宝','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `upgrade_information` values (7,'出发地7','目的地7','出发时间7','到达时间7','航班类型7','客机编号7','客机型号7','票价7','购买张数7','总金额7',0,'2022-4-24',35,'申请原因7','未支付','支付宝','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `upgrade_information` values (8,'出发地8','目的地8','出发时间8','到达时间8','航班类型8','客机编号8','客机型号8','票价8','购买张数8','总金额8',0,'2022-4-24',40,'申请原因8','未支付','支付宝','0','2022-04-24 14:44:54','2022-04-24 14:44:54');

DROP TABLE IF EXISTS `visa_change_application`;
CREATE TABLE `visa_change_application`(
	   `visa_change_application_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '改签申请ID',
`place_of_departure` varchar(64) comment '出发地',
`destination` varchar(64) comment '目的地',
`departure_time` varchar(64) comment '出发时间',
`arrival_time` varchar(64) comment '到达时间',
`flight_type` varchar(64) comment '航班类型',
`seat_type` varchar(64) comment '座位类型',
`passenger_plane_number` varchar(64) comment '客机编号',
`aircraft_model` varchar(64) comment '客机型号',
`ticket_price` varchar(64) comment '票价',
`number_of_purchased_sheets` varchar(64) comment '购买张数',
`total_amount` varchar(64) comment '总金额',
`user_account` int(11) DEFAULT 0 comment '用户账号',
`application_time` date comment '申请时间',
`change_destination` varchar(64) comment '改签目的地',
`number_of_changed_signatures` varchar(64) comment '改签张数',
`change_departure_time` varchar(64) comment '改签出发时间',
`reason_for_change` text comment '改签原因',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (visa_change_application_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '改签申请';
insert into `visa_change_application` values (1,'出发地1','目的地1','出发时间1','到达时间1','航班类型1','座位类型1','客机编号1','客机型号1','票价1','购买张数1','总金额1',0,'2022-4-24','改签目的地1','改签张数1','改签出发时间1','改签原因1','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `visa_change_application` values (2,'出发地2','目的地2','出发时间2','到达时间2','航班类型2','座位类型2','客机编号2','客机型号2','票价2','购买张数2','总金额2',0,'2022-4-24','改签目的地2','改签张数2','改签出发时间2','改签原因2','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `visa_change_application` values (3,'出发地3','目的地3','出发时间3','到达时间3','航班类型3','座位类型3','客机编号3','客机型号3','票价3','购买张数3','总金额3',0,'2022-4-24','改签目的地3','改签张数3','改签出发时间3','改签原因3','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `visa_change_application` values (4,'出发地4','目的地4','出发时间4','到达时间4','航班类型4','座位类型4','客机编号4','客机型号4','票价4','购买张数4','总金额4',0,'2022-4-24','改签目的地4','改签张数4','改签出发时间4','改签原因4','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `visa_change_application` values (5,'出发地5','目的地5','出发时间5','到达时间5','航班类型5','座位类型5','客机编号5','客机型号5','票价5','购买张数5','总金额5',0,'2022-4-24','改签目的地5','改签张数5','改签出发时间5','改签原因5','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `visa_change_application` values (6,'出发地6','目的地6','出发时间6','到达时间6','航班类型6','座位类型6','客机编号6','客机型号6','票价6','购买张数6','总金额6',0,'2022-4-24','改签目的地6','改签张数6','改签出发时间6','改签原因6','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `visa_change_application` values (7,'出发地7','目的地7','出发时间7','到达时间7','航班类型7','座位类型7','客机编号7','客机型号7','票价7','购买张数7','总金额7',0,'2022-4-24','改签目的地7','改签张数7','改签出发时间7','改签原因7','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `visa_change_application` values (8,'出发地8','目的地8','出发时间8','到达时间8','航班类型8','座位类型8','客机编号8','客机型号8','票价8','购买张数8','总金额8',0,'2022-4-24','改签目的地8','改签张数8','改签出发时间8','改签原因8','0','2022-04-24 14:44:54','2022-04-24 14:44:54');

DROP TABLE IF EXISTS `rescheduling_payment`;
CREATE TABLE `rescheduling_payment`(
	   `rescheduling_payment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '改签付款ID',
`user_account` int(11) DEFAULT 0 comment '用户账号',
`change_of_departure` varchar(64) comment '改签出发地',
`change_destination` varchar(64) comment '改签目的地',
`departure_time` date comment '起飞时间',
`landing_time` date comment '落地时间',
`change_flight_type` varchar(64) comment '改签航班类型',
`change_seat_type` varchar(64) comment '改签座位类型',
`change_the_passenger_plane_number` varchar(64) comment '改签客机编号',
`change_the_aircraft_model` varchar(64) comment '改签客机型号',
`ticket_price_change` int(11) DEFAULT 0 comment '改签票价',
`number_of_changed_purchase_sheets` int(11) DEFAULT 0 comment '改签购买张数',
`total_re_signing` varchar(64) comment '改签总计',
`pay_state` varchar(16) DEFAULT '未支付' NOT NULL comment '支付状态',
`pay_type` varchar(16) DEFAULT '' comment '支付类型: 微信、支付宝、网银',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (rescheduling_payment_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '改签付款';
insert into `rescheduling_payment` values (1,0,'改签出发地1','改签目的地1','2022-4-24','2022-4-24','改签航班类型1','改签座位类型1','改签客机编号1','改签客机型号1',5,5,'改签总计1','未支付','支付宝','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `rescheduling_payment` values (2,0,'改签出发地2','改签目的地2','2022-4-24','2022-4-24','改签航班类型2','改签座位类型2','改签客机编号2','改签客机型号2',10,10,'改签总计2','未支付','支付宝','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `rescheduling_payment` values (3,0,'改签出发地3','改签目的地3','2022-4-24','2022-4-24','改签航班类型3','改签座位类型3','改签客机编号3','改签客机型号3',15,15,'改签总计3','未支付','支付宝','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `rescheduling_payment` values (4,0,'改签出发地4','改签目的地4','2022-4-24','2022-4-24','改签航班类型4','改签座位类型4','改签客机编号4','改签客机型号4',20,20,'改签总计4','未支付','支付宝','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `rescheduling_payment` values (5,0,'改签出发地5','改签目的地5','2022-4-24','2022-4-24','改签航班类型5','改签座位类型5','改签客机编号5','改签客机型号5',25,25,'改签总计5','未支付','支付宝','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `rescheduling_payment` values (6,0,'改签出发地6','改签目的地6','2022-4-24','2022-4-24','改签航班类型6','改签座位类型6','改签客机编号6','改签客机型号6',30,30,'改签总计6','未支付','支付宝','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `rescheduling_payment` values (7,0,'改签出发地7','改签目的地7','2022-4-24','2022-4-24','改签航班类型7','改签座位类型7','改签客机编号7','改签客机型号7',35,35,'改签总计7','未支付','支付宝','0','2022-04-24 14:44:54','2022-04-24 14:44:54');
insert into `rescheduling_payment` values (8,0,'改签出发地8','改签目的地8','2022-4-24','2022-4-24','改签航班类型8','改签座位类型8','改签客机编号8','改签客机型号8',40,40,'改签总计8','未支付','支付宝','0','2022-04-24 14:44:54','2022-04-24 14:44:54');

DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='临时访问牌';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id：[0,8388607]',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：[0,125]用于文章和html的title标签中',
  `type` varchar(64) NOT NULL DEFAULT '0' COMMENT '文章分类：[0,1000]用来搜索指定类型的文章',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数：[0,1000000000]访问这篇文章的人次',
  `praise_len` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source` varchar(255) DEFAULT NULL COMMENT '来源：[0,255]文章的出处',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址：[0,255]用于跳转到发布该文章的网站',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签：[0,255]用于标注文章所属相关内容，多个标签用空格隔开',
  `content` longtext COMMENT '正文：文章的主体内容',
  `img` varchar(255) DEFAULT NULL COMMENT '封面图',
  `description` text COMMENT '文章描述',
  PRIMARY KEY (`article_id`,`title`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章：用于内容管理系统的文章';
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]决定分类显示的先后顺序',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `icon` text COMMENT '分类图标：',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章频道：用于汇总浏览文章，在不同频道下展示不同文章。';
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `auth_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '授权ID：',
  `user_group` varchar(64) DEFAULT NULL COMMENT '用户组：',
  `mod_name` varchar(64) DEFAULT NULL COMMENT '模块名：',
  `table_name` varchar(64) DEFAULT NULL COMMENT '表名：',
  `page_title` varchar(255) DEFAULT NULL COMMENT '页面标题：',
  `path` varchar(255) DEFAULT NULL COMMENT '路由路径：',
  `position` varchar(32) DEFAULT NULL COMMENT '位置：',
  `mode` varchar(32) NOT NULL DEFAULT '_blank' COMMENT '跳转方式：',
  `add` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可增加：',
  `del` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可删除：',
  `set` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改：',
  `get` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可查看：',
  `field_add` varchar(500) DEFAULT NULL COMMENT '添加字段：',
  `field_set` varchar(500) DEFAULT NULL COMMENT '修改字段：',
  `field_get` varchar(500) DEFAULT NULL COMMENT '查询字段：',
  `table_nav_name` varchar(255) DEFAULT NULL COMMENT '跨表导航名称：',
  `table_nav` varchar(255) DEFAULT NULL COMMENT '跨表导航：',
  `option` text COMMENT '配置：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='定制授权';
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论人ID：',
  `reply_to_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '回复评论ID：空为0',
  `content` longtext COMMENT '内容：',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论：';
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '论坛id',
  `display` smallint(5) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `praise_len` int(10) unsigned DEFAULT '0' COMMENT '点赞数',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问数',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题',
  `keywords` varchar(125) DEFAULT NULL COMMENT '关键词',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签',
  `img` text COMMENT '封面图',
  `content` longtext COMMENT '正文',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '发帖人头像：',
  `type` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0' COMMENT '论坛分类：[0,1000]用来搜索指定类型的论坛帖',
  PRIMARY KEY (`forum_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='论坛：';
insert into `forum` values ('1','100','1','小明','0','149','测试标题','关键字1','描述','#','标签','/static/img/img_temp.jpg','<h1>fafgwagbagbwgwag</h1>',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'http://localhost:5000/upload/jingdian (11)_15.jpg','0');
insert into `forum` values ('2','100','2','小明','0','30','测试标题2','关键字2','dec','#','标签','/static/img/img_temp.jpg','测试文章内容2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",null,'0');
insert into `forum` values ('3','100','2','小红','0','42','测试标题3','关键字3','dec2','#','标签','/static/img/img_temp.jpg','测试文章内容3',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",null,'0');
insert into `forum` values ('4','100','2','小红','0','22','测试标题4','关键字4','dec3','#','标签','/static/img/img_temp.jpg','测试文章内容4',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",null,'0');
DROP TABLE IF EXISTS `forum_type`;
CREATE TABLE `forum_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `icon` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '分类图标：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='论坛频道：用于汇总浏览论坛，在不同频道下展示不同论坛。';
insert into `forum_type` values ('1','休闲','描述','/article/list?type_id=1','0',null,"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `forum_type` values ('2','娱乐','企业信息描述描述描述描述','/article/list?type_id=2','0',null,"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `forum_type` values ('3','开心','操作帮助描述描述描述','/article/list?type_id=3','0',null,"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告id：',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：',
  `content` longtext COMMENT '正文：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公告：';
insert into `notice` values ('1','公告标题1','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('2','公告标题2','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('3','公告标题3','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('4','公告标题4','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `praise_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '点赞状态:1为点赞，0已取消',
  PRIMARY KEY (`praise_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='点赞：';
insert into `praise` values ('2','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('25','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('26','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('27','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('44','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('50','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('54','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('57','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','10','1');
insert into `praise` values ('86','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','6','1');
insert into `praise` values ('101','7',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('108','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','8','1');
insert into `praise` values ('221','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','2','1');
DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `slides_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播图ID：',
  `title` varchar(64) DEFAULT NULL COMMENT '标题：',
  `content` varchar(255) DEFAULT NULL COMMENT '内容：',
  `url` varchar(255) DEFAULT NULL COMMENT '链接：',
  `img` varchar(255) DEFAULT NULL COMMENT '轮播图：',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`slides_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='轮播图：';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员',"2022-04-19 07:32:09.000 ",null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/avatar.jpg',"2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
insert into `auth` values ('1','管理员','用户注册','user_registration','用户注册','/user_registration/table','','_blank','1','1','1','1','gender,id,full_name,account_number,account_balance','gender,id,full_name,account_number,account_balance','gender,id,full_name,account_number,account_balance',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('2','管理员','用户注册','user_registration','用户注册详情','/user_registration/view','','_blank','1','1','1','1','gender,id,full_name,account_number,account_balance','gender,id,full_name,account_number,account_balance','gender,id,full_name,account_number,account_balance',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('3','管理员','客机管理','passenger_plane_management','客机管理','/passenger_plane_management/table','','_blank','1','1','1','1','passenger_plane_number,aircraft_model,service_time,state,passenger_plane_picture','passenger_plane_number,aircraft_model,service_time,state,passenger_plane_picture','passenger_plane_number,aircraft_model,service_time,state,passenger_plane_picture',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('4','管理员','客机管理','passenger_plane_management','客机管理详情','/passenger_plane_management/view','','_blank','1','1','1','1','passenger_plane_number,aircraft_model,service_time,state,passenger_plane_picture','passenger_plane_number,aircraft_model,service_time,state,passenger_plane_picture','passenger_plane_number,aircraft_model,service_time,state,passenger_plane_picture',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('5','管理员','航班信息','flight_information','航班信息','/flight_information/table','','_blank','1','1','1','1','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('6','管理员','航班信息','flight_information','航班信息详情','/flight_information/view','','_blank','1','1','1','1','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('7','管理员','航班信息','flight_information','航班信息','/flight_information/list','top','_blank','1','1','1','1','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('8','管理员','航班信息','flight_information','航班信息详情','/flight_information/details','','_blank','1','1','1','1','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('9','管理员','疫情政策','epidemic_policy','疫情政策','/epidemic_policy/table','','_blank','1','1','1','1','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('10','管理员','疫情政策','epidemic_policy','疫情政策详情','/epidemic_policy/view','','_blank','1','1','1','1','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('11','管理员','疫情政策','epidemic_policy','疫情政策','/epidemic_policy/list','top','_blank','1','1','1','1','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('12','管理员','疫情政策','epidemic_policy','疫情政策详情','/epidemic_policy/details','','_blank','1','1','1','1','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('13','管理员','余额充值','balance_recharge','余额充值','/balance_recharge/table','','_blank','1','1','1','1','account_number,recharge_amount,user_account','account_number,recharge_amount,user_account','account_number,recharge_amount,user_account',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('14','管理员','余额充值','balance_recharge','余额充值详情','/balance_recharge/view','','_blank','1','1','1','1','account_number,recharge_amount,user_account','account_number,recharge_amount,user_account','account_number,recharge_amount,user_account',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('15','管理员','余额充值','balance_recharge','余额充值编辑','/balance_recharge/edit','top','_blank','1','1','1','1','account_number,recharge_amount,user_account','account_number,recharge_amount,user_account','account_number,recharge_amount,user_account',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('16','管理员','余额提现','withdrawal_of_balance','余额提现','/withdrawal_of_balance/table','','_blank','1','1','1','1','account_number,account_balance,withdrawal_amount,withdrawal_time,withdrawal_bank_card,user_account','account_number,account_balance,withdrawal_amount,withdrawal_time,withdrawal_bank_card,user_account','account_number,account_balance,withdrawal_amount,withdrawal_time,withdrawal_bank_card,user_account',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('17','管理员','余额提现','withdrawal_of_balance','余额提现详情','/withdrawal_of_balance/view','','_blank','1','1','1','1','account_number,account_balance,withdrawal_amount,withdrawal_time,withdrawal_bank_card,user_account','account_number,account_balance,withdrawal_amount,withdrawal_time,withdrawal_bank_card,user_account','account_number,account_balance,withdrawal_amount,withdrawal_time,withdrawal_bank_card,user_account',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('18','管理员','订单中心','order_center','订单中心','/order_center/table','','_blank','1','1','1','1','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,order_status','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,order_status','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,order_status',null,'0','{"pay":true}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('19','管理员','订单中心','order_center','订单中心详情','/order_center/view','','_blank','1','1','1','1','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,order_status','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,order_status','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,order_status',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('20','管理员','订单中心','order_center','订单中心编辑','/order_center/edit','','_blank','1','1','1','1','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,order_status','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,order_status','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,order_status',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('21','管理员','订单退票','order_refund','订单退票','/order_refund/table','','_blank','1','1','1','1','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,refund_time,reason_for_refund','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,refund_time,reason_for_refund','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,refund_time,reason_for_refund',null,'0','{"examine":true}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('22','管理员','订单退票','order_refund','订单退票详情','/order_refund/view','','_blank','1','1','1','1','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,refund_time,reason_for_refund','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,refund_time,reason_for_refund','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,refund_time,reason_for_refund',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('23','管理员','机票升舱','upgrade_information','机票升舱','/upgrade_information/table','','_blank','1','1','1','1','place_of_departure,destination,departure_time,arrival_time,flight_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,ticket_replacement_amount,reason_for_application','place_of_departure,destination,departure_time,arrival_time,flight_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,ticket_replacement_amount,reason_for_application','place_of_departure,destination,departure_time,arrival_time,flight_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,ticket_replacement_amount,reason_for_application',null,'0','{"pay":true}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('24','管理员','机票升舱','upgrade_information','机票升舱详情','/upgrade_information/view','','_blank','1','1','1','1','place_of_departure,destination,departure_time,arrival_time,flight_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,ticket_replacement_amount,reason_for_application','place_of_departure,destination,departure_time,arrival_time,flight_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,ticket_replacement_amount,reason_for_application','place_of_departure,destination,departure_time,arrival_time,flight_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,ticket_replacement_amount,reason_for_application',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('25','管理员','改签申请','visa_change_application','改签申请','/visa_change_application/table','','_blank','1','1','1','1','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,change_destination,number_of_changed_signatures,change_departure_time,reason_for_change','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,change_destination,number_of_changed_signatures,change_departure_time,reason_for_change','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,change_destination,number_of_changed_signatures,change_departure_time,reason_for_change',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('26','管理员','改签申请','visa_change_application','改签申请详情','/visa_change_application/view','','_blank','1','1','1','1','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,change_destination,number_of_changed_signatures,change_departure_time,reason_for_change','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,change_destination,number_of_changed_signatures,change_departure_time,reason_for_change','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,change_destination,number_of_changed_signatures,change_departure_time,reason_for_change',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('27','管理员','改签付款','rescheduling_payment','改签付款','/rescheduling_payment/table','','_blank','1','1','1','1','user_account,change_of_departure,change_destination,departure_time,landing_time,change_flight_type,change_seat_type,change_the_passenger_plane_number,change_the_aircraft_model,ticket_price_change,number_of_changed_purchase_sheets,total_re_signing','user_account,change_of_departure,change_destination,departure_time,landing_time,change_flight_type,change_seat_type,change_the_passenger_plane_number,change_the_aircraft_model,ticket_price_change,number_of_changed_purchase_sheets,total_re_signing','user_account,change_of_departure,change_destination,departure_time,landing_time,change_flight_type,change_seat_type,change_the_passenger_plane_number,change_the_aircraft_model,ticket_price_change,number_of_changed_purchase_sheets,total_re_signing',null,'0','{"pay":true}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('28','管理员','改签付款','rescheduling_payment','改签付款详情','/rescheduling_payment/view','','_blank','1','1','1','1','user_account,change_of_departure,change_destination,departure_time,landing_time,change_flight_type,change_seat_type,change_the_passenger_plane_number,change_the_aircraft_model,ticket_price_change,number_of_changed_purchase_sheets,total_re_signing','user_account,change_of_departure,change_destination,departure_time,landing_time,change_flight_type,change_seat_type,change_the_passenger_plane_number,change_the_aircraft_model,ticket_price_change,number_of_changed_purchase_sheets,total_re_signing','user_account,change_of_departure,change_destination,departure_time,landing_time,change_flight_type,change_seat_type,change_the_passenger_plane_number,change_the_aircraft_model,ticket_price_change,number_of_changed_purchase_sheets,total_re_signing',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('29','管理员','评论','comment','评论列表','/comment/table','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('30','管理员','评论','comment','评论详情','/comment/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('31','管理员','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('32','管理员','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('33','管理员','论坛','forum','在线留言','/forum/table','','_blank','1','1','1','1','','','',null,'0','{"print":false,"import_db":false,"export_db":true}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('34','管理员','论坛','forum','在线留言','/forum/view','','_blank','1','1','1','1','','','',null,'0','{"print":false}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('35','管理员','论坛','forum','在线留言','/forum/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('36','管理员','论坛','forum','在线留言','/forum/details','','_blank','1','1','1','1','','','',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('37','管理员','论坛分类','forum_type','在线留言分类','/forum_type/table','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('38','管理员','论坛分类','forum_type','在线留言分类','/forum_type/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('39','管理员','新闻','article','航空资讯','/article/table','','_blank','1','1','1','1','','','',null,'0','{"print":true,"import_db":true,"export_db":true}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('40','管理员','新闻','article','航空资讯','/article/view','','_blank','1','1','1','1','','','',null,'0','{"print":true}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('41','管理员','新闻','article','航空资讯','/article/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('42','管理员','新闻','article','航空资讯','/article/details','','_blank','1','1','1','1','','','',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('43','管理员','新闻分类','article_type','航空资讯分类','/article_type/table','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('44','管理员','新闻分类','article_type','航空资讯分类','/article_type/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('45','游客','用户注册','user_registration','用户注册','/user_registration/table','','_blank','1','0','0','0','full_name,id,gender','gender,id,full_name,account_number,account_balance','gender,id,full_name,account_number,account_balance',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('46','游客','用户注册','user_registration','用户注册详情','/user_registration/view','','_blank','1','0','0','0','full_name,id,gender','gender,id,full_name,account_number,account_balance','gender,id,full_name,account_number,account_balance',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('47','游客','客机管理','passenger_plane_management','客机管理','/passenger_plane_management/table','','_blank','0','0','0','0','passenger_plane_number,aircraft_model,service_time,state,passenger_plane_picture','passenger_plane_number,aircraft_model,service_time,state,passenger_plane_picture','passenger_plane_number,aircraft_model,service_time,state,passenger_plane_picture',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('48','游客','客机管理','passenger_plane_management','客机管理详情','/passenger_plane_management/view','','_blank','0','0','0','0','passenger_plane_number,aircraft_model,service_time,state,passenger_plane_picture','passenger_plane_number,aircraft_model,service_time,state,passenger_plane_picture','passenger_plane_number,aircraft_model,service_time,state,passenger_plane_picture',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('49','游客','航班信息','flight_information','航班信息','/flight_information/table','','_blank','0','0','0','0','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('50','游客','航班信息','flight_information','航班信息详情','/flight_information/view','','_blank','0','0','0','0','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('51','游客','航班信息','flight_information','航班信息','/flight_information/list','top','_blank','0','0','0','1','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('52','游客','航班信息','flight_information','航班信息详情','/flight_information/details','','_blank','0','0','0','1','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('53','游客','疫情政策','epidemic_policy','疫情政策','/epidemic_policy/table','','_blank','0','0','0','0','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('54','游客','疫情政策','epidemic_policy','疫情政策详情','/epidemic_policy/view','','_blank','0','0','0','0','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('55','游客','疫情政策','epidemic_policy','疫情政策','/epidemic_policy/list','top','_blank','0','0','0','1','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('56','游客','疫情政策','epidemic_policy','疫情政策详情','/epidemic_policy/details','','_blank','0','0','0','1','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('57','游客','余额充值','balance_recharge','余额充值','/balance_recharge/table','','_blank','0','0','0','0','account_number,recharge_amount,user_account','account_number,recharge_amount,user_account','account_number,recharge_amount,user_account',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('58','游客','余额充值','balance_recharge','余额充值详情','/balance_recharge/view','','_blank','0','0','0','0','account_number,recharge_amount,user_account','account_number,recharge_amount,user_account','account_number,recharge_amount,user_account',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('59','游客','余额充值','balance_recharge','余额充值编辑','/balance_recharge/edit','top','_blank','0','0','0','0','account_number,recharge_amount,user_account','account_number,recharge_amount,user_account','account_number,recharge_amount,user_account',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('60','游客','余额提现','withdrawal_of_balance','余额提现','/withdrawal_of_balance/table','','_blank','0','0','0','0','account_number,account_balance,withdrawal_amount,withdrawal_time,withdrawal_bank_card,user_account','account_number,account_balance,withdrawal_amount,withdrawal_time,withdrawal_bank_card,user_account','account_number,account_balance,withdrawal_amount,withdrawal_time,withdrawal_bank_card,user_account',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('61','游客','余额提现','withdrawal_of_balance','余额提现详情','/withdrawal_of_balance/view','','_blank','0','0','0','0','account_number,account_balance,withdrawal_amount,withdrawal_time,withdrawal_bank_card,user_account','account_number,account_balance,withdrawal_amount,withdrawal_time,withdrawal_bank_card,user_account','account_number,account_balance,withdrawal_amount,withdrawal_time,withdrawal_bank_card,user_account',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('62','游客','订单中心','order_center','订单中心','/order_center/table','','_blank','0','0','0','0','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,order_status','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,order_status','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,order_status',null,'0','{"pay":false}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('63','游客','订单中心','order_center','订单中心详情','/order_center/view','','_blank','0','0','0','0','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,order_status','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,order_status','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,order_status',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('64','游客','订单中心','order_center','订单中心编辑','/order_center/edit','','_blank','0','0','0','0','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,order_status','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,order_status','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,order_status',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('65','游客','订单退票','order_refund','订单退票','/order_refund/table','','_blank','0','0','0','0','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,refund_time,reason_for_refund','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,refund_time,reason_for_refund','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,refund_time,reason_for_refund',null,'0','{"examine":false}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('66','游客','订单退票','order_refund','订单退票详情','/order_refund/view','','_blank','0','0','0','0','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,refund_time,reason_for_refund','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,refund_time,reason_for_refund','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,refund_time,reason_for_refund',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('67','游客','机票升舱','upgrade_information','机票升舱','/upgrade_information/table','','_blank','0','0','0','0','place_of_departure,destination,departure_time,arrival_time,flight_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,ticket_replacement_amount,reason_for_application','place_of_departure,destination,departure_time,arrival_time,flight_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,ticket_replacement_amount,reason_for_application','place_of_departure,destination,departure_time,arrival_time,flight_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,ticket_replacement_amount,reason_for_application',null,'0','{"pay":false}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('68','游客','机票升舱','upgrade_information','机票升舱详情','/upgrade_information/view','','_blank','0','0','0','0','place_of_departure,destination,departure_time,arrival_time,flight_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,ticket_replacement_amount,reason_for_application','place_of_departure,destination,departure_time,arrival_time,flight_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,ticket_replacement_amount,reason_for_application','place_of_departure,destination,departure_time,arrival_time,flight_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,ticket_replacement_amount,reason_for_application',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('69','游客','改签申请','visa_change_application','改签申请','/visa_change_application/table','','_blank','0','0','0','0','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,change_destination,number_of_changed_signatures,change_departure_time,reason_for_change','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,change_destination,number_of_changed_signatures,change_departure_time,reason_for_change','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,change_destination,number_of_changed_signatures,change_departure_time,reason_for_change',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('70','游客','改签申请','visa_change_application','改签申请详情','/visa_change_application/view','','_blank','0','0','0','0','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,change_destination,number_of_changed_signatures,change_departure_time,reason_for_change','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,change_destination,number_of_changed_signatures,change_departure_time,reason_for_change','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,change_destination,number_of_changed_signatures,change_departure_time,reason_for_change',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('71','游客','改签付款','rescheduling_payment','改签付款','/rescheduling_payment/table','','_blank','0','0','0','0','user_account,change_of_departure,change_destination,departure_time,landing_time,change_flight_type,change_seat_type,change_the_passenger_plane_number,change_the_aircraft_model,ticket_price_change,number_of_changed_purchase_sheets,total_re_signing','user_account,change_of_departure,change_destination,departure_time,landing_time,change_flight_type,change_seat_type,change_the_passenger_plane_number,change_the_aircraft_model,ticket_price_change,number_of_changed_purchase_sheets,total_re_signing','user_account,change_of_departure,change_destination,departure_time,landing_time,change_flight_type,change_seat_type,change_the_passenger_plane_number,change_the_aircraft_model,ticket_price_change,number_of_changed_purchase_sheets,total_re_signing',null,'0','{"pay":false}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('72','游客','改签付款','rescheduling_payment','改签付款详情','/rescheduling_payment/view','','_blank','0','0','0','0','user_account,change_of_departure,change_destination,departure_time,landing_time,change_flight_type,change_seat_type,change_the_passenger_plane_number,change_the_aircraft_model,ticket_price_change,number_of_changed_purchase_sheets,total_re_signing','user_account,change_of_departure,change_destination,departure_time,landing_time,change_flight_type,change_seat_type,change_the_passenger_plane_number,change_the_aircraft_model,ticket_price_change,number_of_changed_purchase_sheets,total_re_signing','user_account,change_of_departure,change_destination,departure_time,landing_time,change_flight_type,change_seat_type,change_the_passenger_plane_number,change_the_aircraft_model,ticket_price_change,number_of_changed_purchase_sheets,total_re_signing',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('73','游客','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('74','游客','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('75','游客','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('76','游客','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('77','游客','论坛','forum','论坛列表','/forum/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('78','游客','论坛','forum','论坛详情','/forum/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('79','游客','论坛','forum','在线留言','/forum/list','','_blank','0','0','0','1','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('80','游客','论坛','forum','在线留言','/forum/details','','_blank','0','0','0','1','','','',null,'0','{"can_show_comment":false,"can_comment":false}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('81','游客','论坛分类','forum_type','论坛分类列表','/forum_type/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('82','游客','论坛分类','forum_type','论坛分类详情','/forum_type/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('83','游客','新闻','article','新闻列表','/article/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('84','游客','新闻','article','新闻详情','/article/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('85','游客','新闻','article','航空资讯','/article/list','','_blank','0','0','0','1','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('86','游客','新闻','article','航空资讯','/article/details','','_blank','0','0','0','1','','','',null,'0','{"can_show_comment":false,"can_comment":false}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('87','游客','新闻分类','article_type','新闻分类列表','/article_type/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('88','游客','新闻分类','article_type','新闻分类详情','/article_type/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('89','用户注册','用户注册','user_registration','用户注册','/user_registration/table','','_blank','0','0','0','0','full_name,id,gender','full_name,id,gender','gender,id,full_name,account_number,account_balance',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('90','用户注册','用户注册','user_registration','用户注册详情','/user_registration/view','','_blank','0','0','0','1','full_name,id,gender','full_name,id,gender','gender,id,full_name,account_number,account_balance',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('91','用户注册','客机管理','passenger_plane_management','客机管理','/passenger_plane_management/table','','_blank','0','0','0','0','passenger_plane_number,aircraft_model,service_time,state,passenger_plane_picture','passenger_plane_number,aircraft_model,service_time,state,passenger_plane_picture','passenger_plane_number,aircraft_model,service_time,state,passenger_plane_picture',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('92','用户注册','客机管理','passenger_plane_management','客机管理详情','/passenger_plane_management/view','','_blank','0','0','0','0','passenger_plane_number,aircraft_model,service_time,state,passenger_plane_picture','passenger_plane_number,aircraft_model,service_time,state,passenger_plane_picture','passenger_plane_number,aircraft_model,service_time,state,passenger_plane_picture',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('93','用户注册','航班信息','flight_information','航班信息','/flight_information/table','','_blank','0','0','0','0','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('94','用户注册','航班信息','flight_information','航班信息详情','/flight_information/view','','_blank','0','0','0','0','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('95','用户注册','航班信息','flight_information','航班信息','/flight_information/list','top','_blank','0','0','0','1','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('96','用户注册','航班信息','flight_information','航班信息详情','/flight_information/details','','_blank','0','0','0','1','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,remaining_votes,ticket_price,cover',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('97','用户注册','疫情政策','epidemic_policy','疫情政策','/epidemic_policy/table','','_blank','0','0','0','0','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('98','用户注册','疫情政策','epidemic_policy','疫情政策详情','/epidemic_policy/view','','_blank','0','0','0','0','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('99','用户注册','疫情政策','epidemic_policy','疫情政策','/epidemic_policy/list','top','_blank','0','0','0','1','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('100','用户注册','疫情政策','epidemic_policy','疫情政策详情','/epidemic_policy/details','','_blank','0','0','0','1','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy','area_number,region_name,date,cover,details_of_epidemic_policy',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('101','用户注册','余额充值','balance_recharge','余额充值','/balance_recharge/table','','_blank','1','1','1','1','account_number,recharge_amount,user_account','account_number,recharge_amount,user_account','account_number,recharge_amount,user_account',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('102','用户注册','余额充值','balance_recharge','余额充值详情','/balance_recharge/view','','_blank','1','1','1','1','account_number,recharge_amount,user_account','account_number,recharge_amount,user_account','account_number,recharge_amount,user_account',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('103','用户注册','余额充值','balance_recharge','余额充值编辑','/balance_recharge/edit','top','_blank','1','1','1','1','account_number,recharge_amount,user_account','account_number,recharge_amount,user_account','account_number,recharge_amount,user_account',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('104','用户注册','余额提现','withdrawal_of_balance','余额提现','/withdrawal_of_balance/table','','_blank','1','1','1','1','account_number,account_balance,withdrawal_amount,withdrawal_time,withdrawal_bank_card,user_account','account_number,account_balance,withdrawal_amount,withdrawal_time,withdrawal_bank_card,user_account','account_number,account_balance,withdrawal_amount,withdrawal_time,withdrawal_bank_card,user_account',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('105','用户注册','余额提现','withdrawal_of_balance','余额提现详情','/withdrawal_of_balance/view','','_blank','1','1','1','1','account_number,account_balance,withdrawal_amount,withdrawal_time,withdrawal_bank_card,user_account','account_number,account_balance,withdrawal_amount,withdrawal_time,withdrawal_bank_card,user_account','account_number,account_balance,withdrawal_amount,withdrawal_time,withdrawal_bank_card,user_account',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('106','用户注册','订单中心','order_center','订单中心','/order_center/table','','_blank','1','1','1','1','user_account,departure_time,total_amount,number_of_purchased_sheets,destination,ticket_price,aircraft_model,passenger_plane_number,seat_type,flight_type,arrival_time,place_of_departure','user_account,departure_time,total_amount,number_of_purchased_sheets,destination,ticket_price,aircraft_model,passenger_plane_number,seat_type,flight_type,arrival_time,place_of_departure','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,order_status',null,'0','{"pay":true}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('107','用户注册','订单中心','order_center','订单中心详情','/order_center/view','','_blank','1','1','1','1','user_account,departure_time,total_amount,number_of_purchased_sheets,destination,ticket_price,aircraft_model,passenger_plane_number,seat_type,flight_type,arrival_time,place_of_departure','user_account,departure_time,total_amount,number_of_purchased_sheets,destination,ticket_price,aircraft_model,passenger_plane_number,seat_type,flight_type,arrival_time,place_of_departure','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,order_status',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('108','用户注册','订单中心','order_center','订单中心编辑','/order_center/edit','','_blank','1','1','1','1','user_account,departure_time,total_amount,number_of_purchased_sheets,destination,ticket_price,aircraft_model,passenger_plane_number,seat_type,flight_type,arrival_time,place_of_departure','user_account,departure_time,total_amount,number_of_purchased_sheets,destination,ticket_price,aircraft_model,passenger_plane_number,seat_type,flight_type,arrival_time,place_of_departure','user_account,departure_time,total_amount,number_of_purchased_sheets,destination,ticket_price,aircraft_model,passenger_plane_number,seat_type,flight_type,arrival_time,place_of_departure',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('109','用户注册','订单退票','order_refund','订单退票','/order_refund/table','','_blank','1','1','1','1','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,refund_time,reason_for_refund','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,refund_time,reason_for_refund','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,refund_time,reason_for_refund',null,'0','{"examine":false}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('110','用户注册','订单退票','order_refund','订单退票详情','/order_refund/view','','_blank','1','1','1','1','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,refund_time,reason_for_refund','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,refund_time,reason_for_refund','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,refund_time,reason_for_refund',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('111','用户注册','机票升舱','upgrade_information','机票升舱','/upgrade_information/table','','_blank','1','1','1','1','application_time,reason_for_application,user_account,total_amount,number_of_purchased_sheets,ticket_price,passenger_plane_number,aircraft_model,flight_type,arrival_time,departure_time,destination,place_of_departure','application_time,reason_for_application,user_account,total_amount,number_of_purchased_sheets,ticket_price,passenger_plane_number,aircraft_model,flight_type,arrival_time,departure_time,destination,place_of_departure','place_of_departure,destination,departure_time,arrival_time,flight_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,ticket_replacement_amount,reason_for_application',null,'0','{"pay":true}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('112','用户注册','机票升舱','upgrade_information','机票升舱详情','/upgrade_information/view','','_blank','1','1','1','1','application_time,reason_for_application,user_account,total_amount,number_of_purchased_sheets,ticket_price,passenger_plane_number,aircraft_model,flight_type,arrival_time,departure_time,destination,place_of_departure','application_time,reason_for_application,user_account,total_amount,number_of_purchased_sheets,ticket_price,passenger_plane_number,aircraft_model,flight_type,arrival_time,departure_time,destination,place_of_departure','place_of_departure,destination,departure_time,arrival_time,flight_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,ticket_replacement_amount,reason_for_application',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('113','用户注册','改签申请','visa_change_application','改签申请','/visa_change_application/table','','_blank','1','1','1','1','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,change_destination,number_of_changed_signatures,change_departure_time,reason_for_change','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,change_destination,number_of_changed_signatures,change_departure_time,reason_for_change','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,change_destination,number_of_changed_signatures,change_departure_time,reason_for_change',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('114','用户注册','改签申请','visa_change_application','改签申请详情','/visa_change_application/view','','_blank','1','1','1','1','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,change_destination,number_of_changed_signatures,change_departure_time,reason_for_change','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,change_destination,number_of_changed_signatures,change_departure_time,reason_for_change','place_of_departure,destination,departure_time,arrival_time,flight_type,seat_type,passenger_plane_number,aircraft_model,ticket_price,number_of_purchased_sheets,total_amount,user_account,application_time,change_destination,number_of_changed_signatures,change_departure_time,reason_for_change',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('115','用户注册','改签付款','rescheduling_payment','改签付款','/rescheduling_payment/table','','_blank','0','0','0','1','user_account,change_of_departure,change_destination,departure_time,landing_time,change_flight_type,change_seat_type,change_the_passenger_plane_number,change_the_aircraft_model,ticket_price_change,number_of_changed_purchase_sheets,total_re_signing','user_account,change_of_departure,change_destination,departure_time,landing_time,change_flight_type,change_seat_type,change_the_passenger_plane_number,change_the_aircraft_model,ticket_price_change,number_of_changed_purchase_sheets,total_re_signing','user_account,change_of_departure,change_destination,departure_time,landing_time,change_flight_type,change_seat_type,change_the_passenger_plane_number,change_the_aircraft_model,ticket_price_change,number_of_changed_purchase_sheets,total_re_signing',null,'0','{"pay":true}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('116','用户注册','改签付款','rescheduling_payment','改签付款详情','/rescheduling_payment/view','','_blank','0','0','0','1','user_account,change_of_departure,change_destination,departure_time,landing_time,change_flight_type,change_seat_type,change_the_passenger_plane_number,change_the_aircraft_model,ticket_price_change,number_of_changed_purchase_sheets,total_re_signing','user_account,change_of_departure,change_destination,departure_time,landing_time,change_flight_type,change_seat_type,change_the_passenger_plane_number,change_the_aircraft_model,ticket_price_change,number_of_changed_purchase_sheets,total_re_signing','user_account,change_of_departure,change_destination,departure_time,landing_time,change_flight_type,change_seat_type,change_the_passenger_plane_number,change_the_aircraft_model,ticket_price_change,number_of_changed_purchase_sheets,total_re_signing',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('117','用户注册','评论','comment','评论列表','/comment/table','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('118','用户注册','评论','comment','评论详情','/comment/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('119','用户注册','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('120','用户注册','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('121','用户注册','论坛','forum','论坛列表','/forum/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('122','用户注册','论坛','forum','论坛详情','/forum/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('123','用户注册','论坛','forum','在线留言','/forum/list','','_blank','0','0','0','1','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('124','用户注册','论坛','forum','在线留言','/forum/details','','_blank','0','0','0','1','','','',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('125','用户注册','论坛分类','forum_type','论坛分类列表','/forum_type/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('126','用户注册','论坛分类','forum_type','论坛分类详情','/forum_type/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('127','用户注册','新闻','article','新闻列表','/article/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('128','用户注册','新闻','article','新闻详情','/article/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('129','用户注册','新闻','article','航空资讯','/article/list','','_blank','0','0','0','1','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('130','用户注册','新闻','article','航空资讯','/article/details','','_blank','0','0','0','1','','','',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('131','用户注册','新闻分类','article_type','新闻分类列表','/article_type/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `auth` values ('132','用户注册','新闻分类','article_type','新闻分类详情','/article_type/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `user_group` values ('1','100','管理员',null,'','','0',null,"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `user_group` values ('2','100','游客',null,'','','0','0',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `user_group` values ('3','100','用户注册',null,'user_registration','user_registration_id','0','3',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `slides` values ('1','轮播图1','内容1','/article/details?article=1','/api/upload/image_1646359076001.jpeg','23',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `slides` values ('2','轮播图2','内容2','/article/details?article=2','/api/upload/image_1646359076010.jpeg','809',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `slides` values ('3','轮播图3','内容3','/article/details?article=3','/api/upload/image_1646359076001.jpeg','167',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
insert into `article` values ('1','畅通中澳空中运输大动脉，3月南航投入货机运力执飞广州-悉尼航线','航空','574','0',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ",null,null,null,'<p class="ql-align-right">字体大小：[&nbsp;<span style="color: rgb(0, 74, 156);">大</span>&nbsp;<span style="color: rgb(0, 74, 156);">中</span>&nbsp;<span style="color: rgb(0, 74, 156);">小</span>&nbsp;]</p><p class="ql-align-right"><a href="http://news.carnoc.com/list/579/579793.html#" rel="noopener noreferrer" target="_blank" style="color: rgb(51, 51, 51);">分享</a></p><p class="ql-align-center"><img src="http://pic.carnoc.com/file/220302/22030210543999.jpg" alt="畅通中澳空中运输大动脉，3月南航投入货机运力执飞广州-悉尼航线"></p><p><br></p><p>民航资源网2022年3月2日消息：3月1日，南航货机航班CZ5233搭载75吨防疫物资从广州起飞前往澳大利亚悉尼，这是今年南航物流在广州-悉尼航线执行的首个货机航班。为畅通中澳空中运输大动脉，助力全球抗疫，南航物流将在3月计划执行广州-悉尼货机航班4班。</p><p>去年年底以来，奥密克戎毒株不断蔓延，海外疫情防控形势依然严峻，中国生产的新冠检测试剂盒、口罩等防疫物资出口需求量一直处于高位。南航物流公司坚持以客户为中心，以市场为导向，将“中国制造”运往全球，提前收集客户的运输需求，规划运力布局，统筹好“客货关系”，实施“客货并重”发展策略，在澳洲方向“客改货”航班正常运行的基础上，增投波音777全货机航班，有力提升航空货运能力，健全现代流通体系，畅通“双循环”新发展格局。</p><p class="ql-align-center"><img src="http://pic.carnoc.com/file/220302/22030210543997.jpg"></p><p>据悉，3月份，南航物流公司在广州、深圳始发至澳洲预计每周执行客改货23班，全月再增加投入4班广州至悉尼全货机航班，全月到澳洲方向的运力可达3000吨以上，极大满足新冠检测试剂盒、口罩、电子产品、电商货、服装等货物的运输需求。</p><p>当前，南航在国内广州、上海、深圳、重庆设立全货机运营站点，货机航线通达欧美、东南亚等地，每周从国内始发的航班量达60班以上。南航物流公司坚持贯彻落实党中央、国务院关于提高我国航空货运能力，增强我国物流行业国际竞争力的指示批示精神，以及民航局《“十四五”航空物流发展专项规划》，紧抓航空物流发展重要窗口期，加快推动向现代综合物流服务商转型，助力建设民航强国。</p>','/api/upload/image_1646360444170.jpg','民航资源网2022年3月2日消息：3月1日，南航货机航班CZ5233搭载75吨防疫物资从广州起飞前往澳大利亚悉尼，这是今年南航物流在广州-悉尼航线执行的首个货机航班。为畅通中澳空中运输大动脉，助力全球抗疫，南航物流将在3月计划执行广州-悉尼货机航班4班。');
insert into `article` values ('2','国际航协：2024年全球航空客运量有望复苏','航空','727','0',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ",null,null,null,'<p>民航资源网2022年3月2日消息：国际航空运输协会（IATA，简称“国际航协”）预计2024年客运总量将达40亿人次（多程联运旅客按照一人次计算），将超过新冠肺炎疫情前水平，达到2019年客运总量的103%。</p><p>部分市场的政府级旅行限制措施发生变化，令近期行业复苏的预期也略有改变。但国际航协长期预测的最新数据显示，行业整体预期与去年11月份，即奥密克戎出现之前的预期相比没有变化。</p><p>国际航协理事长威利·沃尔什先生（Willie Walsh）表示：“新冠肺炎疫情影响下的客运量复苏并未受奥密克戎变异毒株的影响，人们想去旅行。一旦旅行限制取消，人们就会重返蓝天。虽然恢复常态仍征途漫漫，但客运复苏预期向好。”</p><p>2月份最新的长期预测要点如下：</p><p>·2021年，客运总量恢复至2019年水平的47%。预计2022年这一比例将升至83%，2023年升至94%，2024年升至103%，2025年升至111%。</p><p>·2021年，国际客运量恢复至2019年水平的27%。预计2022年这一比例将升至69%，2023年升至82%，2024年升至92%，2025年升至101%。</p><p>与2021年11月份相比，许多市场逐步放松或取消旅行限制，短期国际复苏预期稍显乐观。北大西洋和欧洲区内的主要市场有所改善，拉动复苏。亚太地区预计复苏继续缓慢，该地区最大的市场中国在近期尚未出现放松边境措施的迹象。</p><p>·2021年，国内客运量恢复至2019年水平的61%。预计2022年这一比例将升至93%，2023年升至103%，2024年升至111%，2025年升至118%。</p><p>与11月份的预测相比，国内客运量的复苏前景略显暗淡。虽然美国和俄罗斯国内市场已经复苏，但中国、加拿大、日本和澳大利亚等其他主要国内市场的情况并非如此。</p><p>“客运量最大、最直接的驱动因素是政府对旅行的限制。所幸的是，越来越多的政府认识到，就病毒传播的长期影响而言，旅行限制与之的关联甚微。越来越多的市场也不再接受为了非常有限的惠益而将经济和社会陷入困境的做法。限制的逐步取消提振了旅行复苏的前景。”沃尔什先生说。</p><p>国际航协再次呼吁：</p><p>·为完全接种世卫组织批准疫苗的旅客消除所有旅行障碍（包括隔离和病毒检测）</p><p>·出发前进行抗原检测，为未接种疫苗的旅客提供免检疫旅行</p><p>·取消所有旅行禁令，以及</p><p>·加快放宽旅行限制措施，在国内已出现大规模疫情的市场，旅客的疫情传播风险并不比普通人群的风险更大。</p><p><strong> 区域差异</strong></p><p>并非所有市场或区域都以同样的速度复苏。</p><p>“总的来说，我们正朝着正确的方向迈进，但也有一些担忧。亚太地区复苏缓慢。虽然澳大利亚和新西兰已经宣布了与世界接轨的措施，但中国尚未显示出放松动态清零战略的迹象。在美国等其他主要市场基本恢复正常的情况下，部分国内市场的局部限制措施正在抑制全球客运量复苏。”沃尔什先生说。</p><p><strong>亚太</strong>：在新冠疫情期间，国际旅行限制的取消缓慢，国内限制也有可能重新生效，意味着2022年，往返亚太地区和区域内的客运量将仅恢复至2019年水平的68%，是主要地区中复苏最缓慢的。由于该地区的国际旅行恢复缓慢，预计2025年才有望复苏，达到2019年水平的109%。</p><p><strong>欧洲</strong>：未来几年，随着信心重建，欧洲内部市场预计将受益于旅客对短途旅行的偏好。欧盟内部日益协调且不限制旅行。在2024年全面复苏（达到2019年的105%）之前，预计2022年往返欧洲和欧洲境内的客运总量将达到2019年水平的86%。</p><p><strong>北美</strong>：经过2021年的强韧复苏后，往返北美及北美境内客运将在2022年继续强劲复苏，美国国内市场恢复到危机前的水平，且国际旅行正在不断改善。2022年，客运量将达到2019年水平的94%，预计2023年全面复苏（达到2019年的102%），领先其他地区。</p><p><strong>　非洲</strong>：由于疫苗接种进展缓慢，以及危机对发展中经济体的影响，非洲的客运前景在短期内有所减弱。与其他地区相比，往返非洲和非洲区域内的客运量将逐渐恢复，2022年将达到2019年水平的76%，在2025年（达到2019年的101%）将超过危机前水平。</p><p><strong>中东</strong>：由于短途市场有限，中东地区定位于长途中转的枢纽，因此预计复苏缓慢。2022年，往返中东以及中东区域内的客运量将达到2019年水平的81%，2024年达到98%，2025年达到105%。</p><p><strong>拉美</strong>：疫情期间，往返拉美以及区内的客运量相对强韧，2022年的复苏预计将强劲，该地区内和往返北美的旅行限制不多，客运量增长较快。预计2023年将超过2019年的客运量，中美洲将达到2019年的102%，2024年南美洲将达到2019年的103%，2025年加勒比地区将达到2019年的101%。</p><p class="ql-align-center"><img src="http://pic.carnoc.com/file/220302/2203020908316.jpg"></p><p><strong> 俄乌冲突</strong></p><p>本次预测未计入俄罗斯和乌克兰冲突的影响。总的来说，航空运输具有抵御冲击的韧劲，这种冲突不太可能影响航空运输的长期增长。虽然现在估计俄乌冲突对航空业的短期影响还为时过早，但存在下行风险，尤其是在有冲突风险的市场。</p><p>敏感因素包括制裁以及或空域关闭的地理范围、严重程度和时间段。俄罗斯、乌克兰和周边地区将受到最严重的影响。在新冠肺炎疫情爆发前，俄罗斯是航空运输服务的第11大市场，包括其庞大的国内市场。乌克兰排在第48位。</p><p>能源价格波动，或为避开俄罗斯领空而改道对航空公司成本的影响可能会产生更广泛的影响。即使在东欧以外，消费者信心和经济活动也可能受到影响。</p>','/api/upload/image_1646360623553.jpg','民航资源网2022年3月2日消息：国际航空运输协会（IATA，简称“国际航协”）预计2024年客运总量将达40亿人次（多程联运旅客按照一人次计算），将超过新冠肺炎疫情前水平，达到2019年客运总量的103%。');
insert into `article` values ('3','2022年民航春运大数据出炉！哪个城市春运最繁忙？看看你的家乡上榜了没？','航空','519','0',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ",null,null,null,'<p><strong>1、春运营运概况</strong></p><p>2022年春节前国内多个地区有新一轮的疫情传播，旅客出行仍受到较大影响。与去年大量旅客选择就地过年不同，今年在严禁防疫政策层层加码的工作要求下，各地返乡政策更加灵活，春运人群相比去年有较大增长。2022年春运节前出行高峰比较分散，从腊月廿四开始至腊月廿八为旅客返乡高峰，节中从除夕开始旅客量逐渐增长直到正月初六达到返程高峰，节后出行来看，日均旅客量高于节前，正月十六为出行高峰。</p><p><img src="https://file.veryzhun.com/buckets/carnoc/keys/md5_543aa6e0d27abf14d0714aeb1ad453a0.jpg"></p><p>2022年春运期间境内执飞航班量40万次以上，日均执飞航班量约1万次。节前日均航班量大幅高于2021年日均航班量，节后从正月十六开始低于2021年日均航班量。</p><p><img src="https://file.veryzhun.com/buckets/carnoc/keys/md5_c4f8ef43c54efb85ed01af35b83d56a1.jpg"></p><p>2022年春运期间，机票平均票价约为727元，同比2021年增长19%，同比2019年减少16%,仍未恢复到疫情前水平。元宵节之前，机票平均票价高于去年同期水平，元宵节之后，受出行需求下降影响，机票均价呈下降趋势，逐渐回落到去年同期水平。</p><p><img src="https://file.veryzhun.com/buckets/carnoc/keys/md5_e3d3ac723c60f0b874784520146e7d78.jpg"></p><p>2022年春运期间境内市场估算平均客座率是65%，相比2021年同期下降2%。从客座率趋势来看，今年节前航班客座率高于2021年同期水平，节中航班客座率与2021年航班客座率接近，节后航班客座率低于2021年航班客座率。</p><p><img src="https://file.veryzhun.com/buckets/carnoc/keys/md5_262c3124f78b8b9ea88b6161ee14888f.jpg"></p><p><strong>2、旅客行为变化</strong></p><p>后疫情时期，旅客提前购票时间普遍缩短，受到疫情和返乡政策影响，2022年春运期间提前购票期分布依旧呈现这一现象。数据显示49%的旅客提前0-3天购票，24%的旅客提前4-7天购票，这一分布与2021年相同；10%的旅客提前14天以上购票，这一旅客群体在2019年占比34%。</p><p><img src="https://file.veryzhun.com/buckets/carnoc/keys/md5_1a1f0bf7c540c8360295a84cf588f08b.jpg"></p><p>与2021年春运对比，2022年节前返乡旅客显著增多，同比增长49%。其中腊月十九、腊月廿和腊月廿五、腊月廿六增长最为明显。</p><p><img src="https://file.veryzhun.com/buckets/carnoc/keys/md5_866cf5eddda860c46fd73ad117187979.jpg"></p><p><strong>3、春运期间热门城市与航线</strong></p><p>进出港吞吐量TOP10城市中，有9个城市吞吐量同比有所增长，深圳受疫情防控影响运力同比下降12%，吞吐量同比下降23%，排名也下降两名。海口吞吐量同比增长38%，增幅最大，排名方面也成功跻身前十名。成都得益于天府机场的投运，吞吐量同比增长28%，增幅仅次于海口。上海仍是今年春运期间进出港吞吐量最大的城市。</p><p><img src="https://file.veryzhun.com/buckets/carnoc/keys/md5_a726a603ba7b578b3f183b97b454ca9a.jpg"></p><p>2022年春运期间热门航线均为北京、上海、广州、深圳、成都、重庆、三亚七个城市之间的往返航线。20条航线中有18条航线同比有增长，其中成都-三亚的旅客量同比增长62%，增幅最大，同比疫情前（2019年）水平也有增长，而深圳往返上海的航线旅客量同比均有下降，旅客量排名也大幅下降。</p><p><img src="https://file.veryzhun.com/buckets/carnoc/keys/md5_7a48016622f5cf6ab4238cac508da0ad.jpg"></p>','/api/upload/image_1646360336667.jpg','截止2月25日，2022年春运正式结束。根据交通运输部公布信息，民航共运输旅客3982万人，同比2021年春运增长12.5%，相比2019年下降45.3%。FlightAI估算春运期间平均客座率65%，相比2021年同期下降2%。今年春运期间机票平均票价727元，同比增长19%。“冰雪游”和“海岛游”为春运期间热门旅游类型。');
insert into `article` values ('4','畅通中澳空中运输大动脉，3月南航投入货机运力执飞广州-悉尼航线','航空','405','0',"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ",null,null,null,'<p class="ql-align-right">字体大小：[&nbsp;<span style="color: rgb(0, 74, 156);">大</span>&nbsp;<span style="color: rgb(0, 74, 156);">中</span>&nbsp;<span style="color: rgb(0, 74, 156);">小</span>&nbsp;]</p><p class="ql-align-right"><a href="http://news.carnoc.com/list/579/579793.html#" rel="noopener noreferrer" target="_blank" style="color: rgb(51, 51, 51);">分享</a></p><p class="ql-align-center"><img src="http://pic.carnoc.com/file/220302/22030210543999.jpg" alt="畅通中澳空中运输大动脉，3月南航投入货机运力执飞广州-悉尼航线"></p><p><br></p><p>民航资源网2022年3月2日消息：3月1日，南航货机航班CZ5233搭载75吨防疫物资从广州起飞前往澳大利亚悉尼，这是今年南航物流在广州-悉尼航线执行的首个货机航班。为畅通中澳空中运输大动脉，助力全球抗疫，南航物流将在3月计划执行广州-悉尼货机航班4班。</p><p>去年年底以来，奥密克戎毒株不断蔓延，海外疫情防控形势依然严峻，中国生产的新冠检测试剂盒、口罩等防疫物资出口需求量一直处于高位。南航物流公司坚持以客户为中心，以市场为导向，将“中国制造”运往全球，提前收集客户的运输需求，规划运力布局，统筹好“客货关系”，实施“客货并重”发展策略，在澳洲方向“客改货”航班正常运行的基础上，增投波音777全货机航班，有力提升航空货运能力，健全现代流通体系，畅通“双循环”新发展格局。</p><p class="ql-align-center"><img src="http://pic.carnoc.com/file/220302/22030210543997.jpg"></p><p>据悉，3月份，南航物流公司在广州、深圳始发至澳洲预计每周执行客改货23班，全月再增加投入4班广州至悉尼全货机航班，全月到澳洲方向的运力可达3000吨以上，极大满足新冠检测试剂盒、口罩、电子产品、电商货、服装等货物的运输需求。</p><p>当前，南航在国内广州、上海、深圳、重庆设立全货机运营站点，货机航线通达欧美、东南亚等地，每周从国内始发的航班量达60班以上。南航物流公司坚持贯彻落实党中央、国务院关于提高我国航空货运能力，增强我国物流行业国际竞争力的指示批示精神，以及民航局《“十四五”航空物流发展专项规划》，紧抓航空物流发展重要窗口期，加快推动向现代综合物流服务商转型，助力建设民航强国。</p>','/api/upload/image_1646360444170.jpg','民航资源网2022年3月2日消息：3月1日，南航货机航班CZ5233搭载75吨防疫物资从广州起飞前往澳大利亚悉尼，这是今年南航物流在广州-悉尼航线执行的首个货机航班。为畅通中澳空中运输大动脉，助力全球抗疫，南航物流将在3月计划执行广州-悉尼货机航班4班。');
insert into `article_type` values ('1','100','航空','0',null,null,null,"2022-04-24 06:44:55.000 ","2022-04-24 06:44:55.000 ");
