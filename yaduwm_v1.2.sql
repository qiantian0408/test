-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Host: 10.236.158.96:8265
-- Generation Time: 2017-04-01 14:42:45
-- 服务器版本： 5.6.28-cdb20160902-log
-- PHP Version: 5.6.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yaduwm`
--

-- --------------------------------------------------------

--
-- 表的结构 `appointment_time`
--

CREATE TABLE `appointment_time` (
  `appoint_time _id` int(11) NOT NULL COMMENT '配置预约时间编号',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '这笔记录的创建时间',
  `eqptype_id` int(11) DEFAULT NULL COMMENT '设备类型编号',
  `time` int(11) DEFAULT NULL COMMENT '预约时间 （设备在被预约后多长时间内为处于被预约状态）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预约时间配置表';

--
-- 转存表中的数据 `appointment_time`
--

INSERT INTO `appointment_time` (`appoint_time _id`, `deleted`, `create_time`, `eqptype_id`, `time`) VALUES
(1, 0, '2017-04-01 12:45:53', 1, 10),
(2, 0, '2017-04-01 12:46:21', 2, 10);

-- --------------------------------------------------------

--
-- 表的结构 `carousel_figure`
--

CREATE TABLE `carousel_figure` (
  `figure_id` int(11) NOT NULL COMMENT '轮播图编号',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '这笔记录的创建时间',
  `figure_link` varchar(200) DEFAULT NULL COMMENT '图片保存的地址',
  `web_link` varchar(200) DEFAULT NULL COMMENT '图片链接网页地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='轮播图信息表';

--
-- 转存表中的数据 `carousel_figure`
--

INSERT INTO `carousel_figure` (`figure_id`, `deleted`, `create_time`, `figure_link`, `web_link`) VALUES
(1, 0, '2017-04-01 13:50:08', 'http://images-1252394620.cossh.myqcloud.com/%E8%BD%AE%E6%92%AD%E5%9B%BE/4.jpg', 'http://shop.m.jd.com/?shopId=1000003323'),
(2, 0, '2017-04-01 13:50:30', 'http://images-1252394620.cossh.myqcloud.com/%E8%BD%AE%E6%92%AD%E5%9B%BE/2.jpg', 'http://shop.m.jd.com/?shopId=1000003323'),
(3, 0, '2017-04-01 13:51:28', 'http://images-1252394620.cossh.myqcloud.com/%E8%BD%AE%E6%92%AD%E5%9B%BE/3.jpg', 'http://shop.m.jd.com/?shopId=1000003323');

-- --------------------------------------------------------

--
-- 表的结构 `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL COMMENT '城市编号',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '这笔记录创建的时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `province_name` varchar(100) DEFAULT NULL COMMENT '对应省份',
  `city_name` varchar(100) DEFAULT NULL COMMENT '城市名称',
  `city_lng` decimal(14,10) DEFAULT NULL COMMENT '城市经度',
  `city_lat` decimal(13,10) DEFAULT NULL COMMENT '城市纬度',
  `city_spend` int(11) DEFAULT NULL COMMENT '城市设备投入（元）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='城市信息表';

--
-- 转存表中的数据 `city`
--

INSERT INTO `city` (`city_id`, `create_time`, `deleted`, `province_name`, `city_name`, `city_lng`, `city_lat`, `city_spend`) VALUES
(1, '2017-04-01 13:55:42', 0, '北京市', '北京市', '116.4144400000', '39.9118450000', NULL),
(2, '2017-04-01 14:03:10', 0, '天津市', '天津市', '117.2059010000', '39.0938560000', NULL),
(3, '2017-04-01 14:04:04', 0, '重庆市', '重庆市', '106.5571360000', '29.5743230000', NULL),
(4, '2017-04-01 14:04:53', 0, '上海市', '上海市', '121.4802180000', '31.2395550000', NULL),
(5, '2017-04-01 14:09:02', 0, '江苏省', '苏州市', '120.5889060000', '31.3055590000', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `clean_record`
--

CREATE TABLE `clean_record` (
  `clean_record_id` int(11) NOT NULL COMMENT '清洁记录编号',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '这笔记录的创建时间',
  `eqp_id` int(11) DEFAULT NULL COMMENT '设备编号',
  `staff_id` int(11) DEFAULT NULL COMMENT '工作人员编号',
  `clean_time` timestamp NULL DEFAULT NULL COMMENT '清洁时间',
  `clean_image` varchar(200) DEFAULT NULL COMMENT '消毒后照片上传URL',
  `clean_cost` float DEFAULT NULL COMMENT '消毒费用（元）',
  `clean_check` tinyint(1) DEFAULT NULL COMMENT '是否已审核 true:已审核 false:未审核'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='清洁记录信息表';

-- --------------------------------------------------------

--
-- 表的结构 `collection_location`
--

CREATE TABLE `collection_location` (
  `collection_id` int(11) NOT NULL COMMENT '洗衣点收藏编号',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `user_id` int(11) DEFAULT NULL COMMENT '用户编号',
  `location_id` int(11) DEFAULT NULL COMMENT '洗衣点编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户洗衣点收藏信息表';

-- --------------------------------------------------------

--
-- 表的结构 `complain`
--

CREATE TABLE `complain` (
  `complain_id` int(11) NOT NULL COMMENT '反馈信息编号',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '反馈时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `user_id` int(11) DEFAULT NULL COMMENT '用户编号',
  `complain_content` varchar(500) DEFAULT NULL COMMENT '反馈内容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户反馈信息表';

-- --------------------------------------------------------

--
-- 表的结构 `consume _details`
--

CREATE TABLE `consume _details` (
  `consume_id` bigint(20) NOT NULL COMMENT '消费编号',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `consume_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '消费时间',
  `user_id` int(11) DEFAULT NULL COMMENT '用户编号',
  `eqp_id` int(11) DEFAULT NULL COMMENT '设备编号',
  `eqpuse_type_id` int(11) DEFAULT NULL COMMENT '设备使用方式',
  `appointment` tinyint(1) DEFAULT NULL COMMENT 'true:通过预约方式 false:未通过预约',
  `cancel_appointment` tinyint(1) DEFAULT NULL COMMENT 'true:取消预约 false:未取消预约',
  `usage_begintime` timestamp NULL DEFAULT NULL COMMENT '设备开始使用时间',
  `usage_endtime` timestamp NULL DEFAULT NULL COMMENT '设备结束使用时间',
  `consume_money` float DEFAULT NULL COMMENT '该笔消费应付金额',
  `consume_pay_type` int(11) DEFAULT NULL COMMENT '消费支付类型 1：微信 2：钱包',
  `pay_money` float DEFAULT NULL COMMENT '该笔消费实付金额',
  `consume_pay_id` varchar(50) DEFAULT NULL COMMENT '微信订单号',
  `consume_result` int(11) DEFAULT NULL COMMENT '该笔交易的结果 1：待支付 2：已支付 3：超时未支付4：已取消'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `distributor`
--

CREATE TABLE `distributor` (
  `distributor_id` int(11) NOT NULL COMMENT '经销商编号',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '经销商添加时间',
  `distributor_name` varchar(100) DEFAULT NULL COMMENT '经销商名字',
  `city_id` int(11) DEFAULT NULL COMMENT '城市编号',
  `distributor_location` varchar(200) DEFAULT NULL COMMENT '经销商街道地址',
  `distributor_contacts` varchar(50) DEFAULT NULL COMMENT '经销商联系人',
  `dis_contacts_tel` varchar(30) DEFAULT NULL COMMENT '联系人电话',
  `dis_contacts_email` varchar(100) DEFAULT NULL COMMENT '联系人邮箱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='经销商信息表';

--
-- 转存表中的数据 `distributor`
--

INSERT INTO `distributor` (`distributor_id`, `deleted`, `create_time`, `distributor_name`, `city_id`, `distributor_location`, `distributor_contacts`, `dis_contacts_tel`, `dis_contacts_email`) VALUES
(1, 0, '2017-04-01 14:17:12', '测试经销商', 5, '创意产业园2栋1楼', '代新超', '0512-0000000', 'helloworld@163.com');

-- --------------------------------------------------------

--
-- 表的结构 `dry _price`
--

CREATE TABLE `dry _price` (
  `dry_price_id` int(11) NOT NULL COMMENT '干衣价格编号',
  `eqp _id` int(11) NOT NULL COMMENT '设备编号',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '这笔记录的创建时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `dry_price` float DEFAULT NULL COMMENT '干衣价格（元/15分钟）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='干衣机干衣价格信息表';

--
-- 转存表中的数据 `dry _price`
--

INSERT INTO `dry _price` (`dry_price_id`, `eqp _id`, `create_time`, `deleted`, `dry_price`) VALUES
(1, 1, '2017-04-01 14:24:30', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `eqpuse_type`
--

CREATE TABLE `eqpuse_type` (
  `eqpuse_type_id` int(11) NOT NULL COMMENT '设备使用方式编号',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '这笔记录的创建时间',
  `eqpuse_type_name` varchar(20) DEFAULT NULL COMMENT '设备使用类型的名称',
  `use_time` int(11) DEFAULT NULL COMMENT '清洗方式用时（分钟） （如：标准洗41分钟， 快洗10分钟）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备使用类型信息表';

--
-- 转存表中的数据 `eqpuse_type`
--

INSERT INTO `eqpuse_type` (`eqpuse_type_id`, `deleted`, `create_time`, `eqpuse_type_name`, `use_time`) VALUES
(1, 0, NULL, '标准洗', 32),
(2, 0, NULL, '快洗', 20),
(3, 0, NULL, '大物', 42),
(4, 0, NULL, '单脱', 4),
(5, 0, NULL, '干衣', 15);

-- --------------------------------------------------------

--
-- 表的结构 `eqp_basicinfo`
--

CREATE TABLE `eqp_basicinfo` (
  `eqp_id` int(11) NOT NULL COMMENT '设备编号',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '这笔记录的创建时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `eqp_comid` varchar(50) DEFAULT NULL COMMENT '设备通信码',
  `location_id` int(11) DEFAULT NULL COMMENT '设备所在洗衣点',
  `eqp_location` varchar(200) DEFAULT NULL COMMENT '设备所在具体位置',
  `brand_id` int(11) DEFAULT NULL COMMENT '设备品牌编号',
  `eqptype_id` int(11) DEFAULT NULL COMMENT '设备类型',
  `card_reader` tinyint(1) DEFAULT '0' COMMENT '是否有刷卡器',
  `install_time` timestamp NULL DEFAULT NULL COMMENT 'ICCID',
  `iccid` varchar(40) DEFAULT NULL COMMENT '设备安装时间',
  `status_id` tinyint(4) DEFAULT NULL COMMENT '设备状态编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备基本信息表';

--
-- 转存表中的数据 `eqp_basicinfo`
--

INSERT INTO `eqp_basicinfo` (`eqp_id`, `create_time`, `deleted`, `eqp_comid`, `location_id`, `eqp_location`, `brand_id`, `eqptype_id`, `card_reader`, `install_time`, `iccid`, `status_id`) VALUES
(1, '2017-04-01 14:21:49', 0, '27004E00185136323736383600', 1, '二楼', 1, 1, 1, '2017-01-01 12:23:43', '89860616020042689450', 1);

-- --------------------------------------------------------

--
-- 表的结构 `eqp_brand`
--

CREATE TABLE `eqp_brand` (
  `brand_id` int(11) NOT NULL COMMENT '品牌编号',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '这笔记录的创建时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `brand_name` varchar(200) DEFAULT NULL COMMENT '品牌名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备品牌信息表';

--
-- 转存表中的数据 `eqp_brand`
--

INSERT INTO `eqp_brand` (`brand_id`, `create_time`, `deleted`, `brand_name`) VALUES
(1, '2017-04-01 14:25:02', 0, '海尔');

-- --------------------------------------------------------

--
-- 表的结构 `eqp_status`
--

CREATE TABLE `eqp_status` (
  `status _id` tinyint(4) NOT NULL COMMENT '设备状态编号',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '这笔记录的创建时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `status_name` varchar(50) DEFAULT NULL COMMENT '设备状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备状态信息表';

--
-- 转存表中的数据 `eqp_status`
--

INSERT INTO `eqp_status` (`status _id`, `create_time`, `deleted`, `status_name`) VALUES
(1, '2017-03-31 21:18:27', 0, '空闲'),
(2, '2017-03-31 21:18:27', 0, '使用中'),
(3, '2017-03-31 21:18:27', 0, '预约中'),
(4, '2017-03-31 21:18:27', 0, '消毒中'),
(5, '2017-03-31 21:18:27', 0, '离线');

-- --------------------------------------------------------

--
-- 表的结构 `eqp_status_history`
--

CREATE TABLE `eqp_status_history` (
  `history _id` int(11) NOT NULL COMMENT '历史状态编号',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '这笔记录的创建时间',
  `eqp_id` int(11) DEFAULT NULL COMMENT '设备编号',
  `status _id` int(11) DEFAULT NULL COMMENT '设备状态编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备状态变更历史记录表';

-- --------------------------------------------------------

--
-- 表的结构 `eqp_type`
--

CREATE TABLE `eqp_type` (
  `eqptype_id` int(11) NOT NULL COMMENT '设备类型编号',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '这笔记录的创建时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `eqptype_name` varchar(50) DEFAULT NULL COMMENT '机型名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备类型信息表';

--
-- 转存表中的数据 `eqp_type`
--

INSERT INTO `eqp_type` (`eqptype_id`, `create_time`, `deleted`, `eqptype_name`) VALUES
(1, '2017-04-01 12:47:12', 0, '洗衣机'),
(2, '2017-04-01 12:47:23', 0, '干衣机');

-- --------------------------------------------------------

--
-- 表的结构 `eqp_user`
--

CREATE TABLE `eqp_user` (
  `user_id` int(11) NOT NULL COMMENT '用户信息编号',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `user_password` varchar(50) DEFAULT NULL COMMENT '用户密码',
  `sex` bit(1) DEFAULT b'0' COMMENT '性别 0:男 1：女',
  `birthday` date DEFAULT NULL COMMENT '用户生日',
  `user_mobile` char(11) DEFAULT NULL COMMENT '用户手机号',
  `wallet_money` float DEFAULT NULL COMMENT '钱包金额（元）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';

--
-- 转存表中的数据 `eqp_user`
--

INSERT INTO `eqp_user` (`user_id`, `create_time`, `deleted`, `user_name`, `user_password`, `sex`, `birthday`, `user_mobile`, `wallet_money`) VALUES
(1, '2017-04-01 14:38:18', 0, 'test', '123456', b'0', '1991-05-01', '13900000000', 0);

-- --------------------------------------------------------

--
-- 表的结构 `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL COMMENT '洗衣点编号',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '这笔记录的创建时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `school_id` int(11) DEFAULT NULL COMMENT '洗衣点对应学校',
  `location_name` varchar(50) DEFAULT NULL COMMENT '洗衣点位置',
  `location_lng` decimal(14,10) DEFAULT NULL COMMENT '洗衣点经度',
  `location_lat` decimal(13,10) DEFAULT NULL COMMENT '洗衣点纬度'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='洗衣点信息表';

--
-- 转存表中的数据 `location`
--

INSERT INTO `location` (`location_id`, `create_time`, `deleted`, `school_id`, `location_name`, `location_lng`, `location_lat`) VALUES
(1, '2017-04-01 14:31:03', 0, 1, '2号宿舍楼', '120.5871650011', '31.2023490021');

-- --------------------------------------------------------

--
-- 表的结构 `recharge_money`
--

CREATE TABLE `recharge_money` (
  `recharge_money_id` int(11) NOT NULL COMMENT '充值金额编号',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '这笔记录的创建时间',
  `recharge_money` float DEFAULT NULL COMMENT '充值金额（元）',
  `present_money` float DEFAULT NULL COMMENT '充值额外赠送金额（元）',
  `present_deadline` timestamp NULL DEFAULT NULL COMMENT '赠送活动截止时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `recharge_record`
--

CREATE TABLE `recharge_record` (
  `recharge_id` int(11) NOT NULL COMMENT '充值编号',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `user_id` int(11) DEFAULT NULL COMMENT '用户编号',
  `recharge_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '充值时间',
  `recharge_money_id` int(11) DEFAULT NULL COMMENT '充值金额',
  `pay_money` float DEFAULT NULL COMMENT '付款金额',
  `pay_time` timestamp NULL DEFAULT NULL COMMENT '付款时间',
  `recharge_pay_type` int(11) DEFAULT '1' COMMENT '支付方式(1:微信支付)',
  `recharge_pay_id` varchar(50) DEFAULT NULL COMMENT '微信订单号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='钱包充值明细表';

-- --------------------------------------------------------

--
-- 表的结构 `school`
--

CREATE TABLE `school` (
  `school_id` int(11) NOT NULL COMMENT '学校编号',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '这笔记录的创建时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `city_id` int(11) DEFAULT NULL COMMENT '学校对应城市编号',
  `school_name` varchar(200) DEFAULT NULL COMMENT '学校名字',
  `school_address` varchar(200) DEFAULT NULL COMMENT '学校地址',
  `school_lng` decimal(14,10) DEFAULT NULL COMMENT '学校经度',
  `school_lat` decimal(13,10) DEFAULT NULL COMMENT '学校纬度',
  `school_stucount` int(11) DEFAULT NULL COMMENT '该校学生人数',
  `school_ratio` float DEFAULT NULL COMMENT '校方分成比例',
  `school_spend` int(11) DEFAULT NULL COMMENT '学校设备投入（元）',
  `sch_contacts` varchar(50) DEFAULT NULL COMMENT '联系人姓名',
  `sch_contacts_tel` varchar(50) DEFAULT NULL COMMENT '联系人电话',
  `sch_contacts_email` varchar(50) DEFAULT NULL COMMENT '联系人邮箱',
  `distributor_id` int(11) DEFAULT NULL COMMENT '经销商编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学校信息表';

--
-- 转存表中的数据 `school`
--

INSERT INTO `school` (`school_id`, `create_time`, `deleted`, `city_id`, `school_name`, `school_address`, `school_lng`, `school_lat`, `school_stucount`, `school_ratio`, `school_spend`, `sch_contacts`, `sch_contacts_tel`, `sch_contacts_email`, `distributor_id`) VALUES
(1, '2017-04-01 14:10:58', 0, 5, '苏州吴中开放大学', '江苏省苏州市吴中区龙翔路333附近', '120.5871650000', '31.2023840000', 3200, 0.03, NULL, '代新超', '0512-0000000', '0000000@qq.com', 1);

-- --------------------------------------------------------

--
-- 表的结构 `simcard_bill`
--

CREATE TABLE `simcard_bill` (
  `sys_bill _id` int(11) NOT NULL COMMENT '数据库账单编号',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '该记录的创建时间',
  `bill_id` varchar(30) DEFAULT NULL COMMENT '账单编号',
  `billingcycle` varchar(50) DEFAULT NULL COMMENT '结算周期',
  `company` varchar(100) DEFAULT NULL COMMENT '账户',
  `operator` varchar(100) DEFAULT NULL COMMENT '运营商账户',
  `equipment` varchar(100) DEFAULT NULL COMMENT '设备',
  `bill_cost` float DEFAULT NULL COMMENT '总费用',
  `datatraffic` float DEFAULT NULL COMMENT '流量（MB）',
  `sms_number` int(11) DEFAULT NULL COMMENT '短信数量（条）',
  `charging` int(11) DEFAULT NULL COMMENT '计费 true:是 false:否',
  `bill_date` date DEFAULT NULL COMMENT '账单日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SIM卡账单信息表';

-- --------------------------------------------------------

--
-- 表的结构 `simcard_management`
--

CREATE TABLE `simcard_management` (
  `management_id` int(11) NOT NULL COMMENT '标识符',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '这条记录的创建时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这条记录是否已删除',
  `ccid` varchar(50) DEFAULT NULL COMMENT 'CCID',
  `add_time` timestamp NULL DEFAULT NULL COMMENT 'SIM卡添加日期',
  `sim_status` int(11) DEFAULT NULL COMMENT 'SIM卡状态 1：可测试   2：库存  3：可激活 4：已激活  5：已停用  6：已失效  7：已清除  8：已更换  9：全球转移中  10：已全球转移  11：试用',
  `sim_online` tinyint(1) DEFAULT NULL COMMENT '是否在线 false:否 true:是',
  `equipment_id` varchar(50) DEFAULT NULL COMMENT '设备编号',
  `month_used_datatraffic` float DEFAULT NULL COMMENT '本月使用流量（MB）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SIM卡管理信息表';

-- --------------------------------------------------------

--
-- 表的结构 `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL COMMENT '工作人员编号',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '该工作人员添加时间',
  `school _id` int(11) DEFAULT NULL COMMENT '工作人员所属学校',
  `staff_name` varchar(100) DEFAULT NULL COMMENT '工作人员名字',
  `staff_password` varchar(50) DEFAULT NULL COMMENT '工作人员密码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作人员信息表';

-- --------------------------------------------------------

--
-- 表的结构 `system_permission`
--

CREATE TABLE `system_permission` (
  `permission _id` int(11) NOT NULL COMMENT '管理系统用户权限编号',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '该记录的创建时间',
  `permission_name` varchar(50) DEFAULT NULL COMMENT '权限名称',
  `permission_info` varchar(300) DEFAULT NULL COMMENT '权限具体说明'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理系统用户权限信息表';

-- --------------------------------------------------------

--
-- 表的结构 `system_user`
--

CREATE TABLE `system_user` (
  `sys_user _id` int(11) NOT NULL COMMENT '管理系统用户编号',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '该用户的创建时间',
  `sys_user_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `sys_user_password` varchar(30) DEFAULT NULL COMMENT '用户密码',
  `sys_user_tel` varchar(30) DEFAULT NULL COMMENT '该用户联系方式',
  `sys_user_email` varchar(50) DEFAULT NULL COMMENT '该用户邮箱',
  `permission_id` int(11) DEFAULT NULL COMMENT '该用户权限',
  `sys_user_type` int(11) DEFAULT NULL COMMENT '管理平台用户类型 1：亚都工作人员 2：学校工作人员',
  `school_id` int(11) DEFAULT NULL COMMENT '如果是亚都工作人员，则为空'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理系统用户信息表';

-- --------------------------------------------------------

--
-- 表的结构 `washing _price`
--

CREATE TABLE `washing _price` (
  `washing_price_id` int(11) NOT NULL COMMENT '洗衣价格编号',
  `eqp _id` int(11) NOT NULL COMMENT '设备编号',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '这笔记录的创建时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '这笔记录是否已删除',
  `standwash_price` float DEFAULT NULL COMMENT '标准洗价格',
  `quickwash_price` float DEFAULT NULL COMMENT '快洗价格',
  `dehydration_price` float DEFAULT NULL COMMENT '单脱价格',
  `largeobject_price` float DEFAULT NULL COMMENT '大物价格'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='洗衣机清洗价格信息表';

--
-- 转存表中的数据 `washing _price`
--

INSERT INTO `washing _price` (`washing_price_id`, `eqp _id`, `create_time`, `deleted`, `standwash_price`, `quickwash_price`, `dehydration_price`, `largeobject_price`) VALUES
(1, 1, '2017-04-01 14:39:12', 0, 3, 2, 4, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment_time`
--
ALTER TABLE `appointment_time`
  ADD PRIMARY KEY (`appoint_time _id`);

--
-- Indexes for table `carousel_figure`
--
ALTER TABLE `carousel_figure`
  ADD PRIMARY KEY (`figure_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `clean_record`
--
ALTER TABLE `clean_record`
  ADD PRIMARY KEY (`clean_record_id`);

--
-- Indexes for table `collection_location`
--
ALTER TABLE `collection_location`
  ADD PRIMARY KEY (`collection_id`);

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`complain_id`);

--
-- Indexes for table `consume _details`
--
ALTER TABLE `consume _details`
  ADD PRIMARY KEY (`consume_id`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`distributor_id`);

--
-- Indexes for table `dry _price`
--
ALTER TABLE `dry _price`
  ADD PRIMARY KEY (`dry_price_id`);

--
-- Indexes for table `eqpuse_type`
--
ALTER TABLE `eqpuse_type`
  ADD PRIMARY KEY (`eqpuse_type_id`);

--
-- Indexes for table `eqp_basicinfo`
--
ALTER TABLE `eqp_basicinfo`
  ADD PRIMARY KEY (`eqp_id`);

--
-- Indexes for table `eqp_brand`
--
ALTER TABLE `eqp_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `eqp_status`
--
ALTER TABLE `eqp_status`
  ADD PRIMARY KEY (`status _id`);

--
-- Indexes for table `eqp_status_history`
--
ALTER TABLE `eqp_status_history`
  ADD PRIMARY KEY (`history _id`);

--
-- Indexes for table `eqp_type`
--
ALTER TABLE `eqp_type`
  ADD PRIMARY KEY (`eqptype_id`);

--
-- Indexes for table `eqp_user`
--
ALTER TABLE `eqp_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `recharge_money`
--
ALTER TABLE `recharge_money`
  ADD PRIMARY KEY (`recharge_money_id`);

--
-- Indexes for table `recharge_record`
--
ALTER TABLE `recharge_record`
  ADD PRIMARY KEY (`recharge_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`school_id`);

--
-- Indexes for table `simcard_bill`
--
ALTER TABLE `simcard_bill`
  ADD PRIMARY KEY (`sys_bill _id`);

--
-- Indexes for table `simcard_management`
--
ALTER TABLE `simcard_management`
  ADD PRIMARY KEY (`management_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `system_permission`
--
ALTER TABLE `system_permission`
  ADD PRIMARY KEY (`permission _id`);

--
-- Indexes for table `system_user`
--
ALTER TABLE `system_user`
  ADD PRIMARY KEY (`sys_user _id`);

--
-- Indexes for table `washing _price`
--
ALTER TABLE `washing _price`
  ADD PRIMARY KEY (`washing_price_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `appointment_time`
--
ALTER TABLE `appointment_time`
  MODIFY `appoint_time _id` int(11) NOT NULL AUTO_INCREMENT COMMENT '配置预约时间编号', AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `carousel_figure`
--
ALTER TABLE `carousel_figure`
  MODIFY `figure_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '轮播图编号', AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '城市编号', AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `clean_record`
--
ALTER TABLE `clean_record`
  MODIFY `clean_record_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '清洁记录编号';
--
-- 使用表AUTO_INCREMENT `collection_location`
--
ALTER TABLE `collection_location`
  MODIFY `collection_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '洗衣点收藏编号';
--
-- 使用表AUTO_INCREMENT `complain`
--
ALTER TABLE `complain`
  MODIFY `complain_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '反馈信息编号';
--
-- 使用表AUTO_INCREMENT `distributor`
--
ALTER TABLE `distributor`
  MODIFY `distributor_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '经销商编号', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `dry _price`
--
ALTER TABLE `dry _price`
  MODIFY `dry_price_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '干衣价格编号', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `eqpuse_type`
--
ALTER TABLE `eqpuse_type`
  MODIFY `eqpuse_type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '设备使用方式编号', AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `eqp_basicinfo`
--
ALTER TABLE `eqp_basicinfo`
  MODIFY `eqp_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '设备编号', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `eqp_brand`
--
ALTER TABLE `eqp_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '品牌编号', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `eqp_status`
--
ALTER TABLE `eqp_status`
  MODIFY `status _id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '设备状态编号', AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `eqp_status_history`
--
ALTER TABLE `eqp_status_history`
  MODIFY `history _id` int(11) NOT NULL AUTO_INCREMENT COMMENT '历史状态编号';
--
-- 使用表AUTO_INCREMENT `eqp_type`
--
ALTER TABLE `eqp_type`
  MODIFY `eqptype_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '设备类型编号', AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `eqp_user`
--
ALTER TABLE `eqp_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户信息编号', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '洗衣点编号', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `recharge_money`
--
ALTER TABLE `recharge_money`
  MODIFY `recharge_money_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '充值金额编号';
--
-- 使用表AUTO_INCREMENT `recharge_record`
--
ALTER TABLE `recharge_record`
  MODIFY `recharge_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '充值编号';
--
-- 使用表AUTO_INCREMENT `school`
--
ALTER TABLE `school`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学校编号', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `simcard_bill`
--
ALTER TABLE `simcard_bill`
  MODIFY `sys_bill _id` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据库账单编号';
--
-- 使用表AUTO_INCREMENT `simcard_management`
--
ALTER TABLE `simcard_management`
  MODIFY `management_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识符';
--
-- 使用表AUTO_INCREMENT `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '工作人员编号';
--
-- 使用表AUTO_INCREMENT `system_permission`
--
ALTER TABLE `system_permission`
  MODIFY `permission _id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理系统用户权限编号';
--
-- 使用表AUTO_INCREMENT `system_user`
--
ALTER TABLE `system_user`
  MODIFY `sys_user _id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理系统用户编号';
--
-- 使用表AUTO_INCREMENT `washing _price`
--
ALTER TABLE `washing _price`
  MODIFY `washing_price_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '洗衣价格编号', AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
