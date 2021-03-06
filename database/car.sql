/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50714
Source Host           : 127.0.0.1:3306
Source Database       : car

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-05-17 09:05:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `allusers`
-- ----------------------------
DROP TABLE IF EXISTS `allusers`;
CREATE TABLE `allusers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `cx` varchar(50) DEFAULT '普通管理员',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of allusers
-- ----------------------------
INSERT INTO `allusers` VALUES ('1', 'admin', 'admin', '管理员', '2017-05-14 15:05:10');
INSERT INTO `allusers` VALUES ('4', 'kuaidiyuan', 'kuaidiyuan', '快递员', '2017-05-14 15:04:01');
INSERT INTO `allusers` VALUES ('5', 'cheguan', 'cheguan', '车管', '2017-05-14 15:03:38');
INSERT INTO `allusers` VALUES ('6', 'yezhu', 'yezhu', '业主', '2017-05-14 15:03:23');

-- ----------------------------
-- Table structure for `baoxiujilu`
-- ----------------------------
DROP TABLE IF EXISTS `baoxiujilu`;
CREATE TABLE `baoxiujilu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `baoxiudanhao` varchar(50) DEFAULT NULL,
  `wujianmingcheng` varchar(255) DEFAULT NULL,
  `guzhangshijian` varchar(50) DEFAULT NULL,
  `yanzhongchengdu` varchar(50) DEFAULT NULL,
  `guzhangmiaoshu` varchar(255) DEFAULT NULL,
  `weixiufeiyong` varchar(50) DEFAULT NULL,
  `weixiujieguo` varchar(255) DEFAULT NULL,
  `weixiushijian` varchar(50) DEFAULT NULL,
  `weixiuren` varchar(50) DEFAULT NULL,
  `shenbaoren` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pingfen` varchar(5) DEFAULT NULL,
  `pingyu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baoxiujilu
-- ----------------------------
INSERT INTO `baoxiujilu` VALUES ('1', '001', 'ewgew', '2016-03-18', '轻微', 'ewgegwe', '22', 'gewg', '2016-05-04', 'hsg', '555', '2016-05-01 01:36:16', '3', '55');
INSERT INTO `baoxiujilu` VALUES ('2', '001', 'grerh', '2016-03-16', '中等', 'grehrehe', '50', 'gewgewgew', '2016-03-19', 'hsg', '555', '2016-05-01 01:36:37', '5', 'fsfew');
INSERT INTO `baoxiujilu` VALUES ('3', '7558', 'hejerjre', '2016-03-18', '严重', 'ewgewgwe', '120', 'gwegewhwe', '2016-03-19', 'hsg', 'xxbxbx', '2016-03-19 12:49:58', null, null);
INSERT INTO `baoxiujilu` VALUES ('4', '5346346', 'hererhe', '2016-03-25', '中等', 'gweewhew', '260', 'gwehew', '2016-03-25', 'hsg', 'jfgjff', '2016-03-25 00:24:34', null, null);
INSERT INTO `baoxiujilu` VALUES ('5', '36343', 'hreher', '2016-05-03', '轻微', 'hrer', '', '', '', '', '555', '2016-05-01 01:23:11', null, null);

-- ----------------------------
-- Table structure for `car_positon_price`
-- ----------------------------
DROP TABLE IF EXISTS `car_positon_price`;
CREATE TABLE `car_positon_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guige` int(11) DEFAULT NULL COMMENT '规格id',
  `weizhi` int(11) DEFAULT NULL COMMENT '位置id',
  `price` double DEFAULT '500' COMMENT '价格（元/月）',
  `guige_desc` varchar(200) DEFAULT NULL COMMENT '规格',
  `weizhi_desc` varchar(200) DEFAULT NULL COMMENT '位置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_positon_price
-- ----------------------------
INSERT INTO `car_positon_price` VALUES ('1', '1', '1', '500', '1.0米~2.0米', '南区地下停车场');
INSERT INTO `car_positon_price` VALUES ('2', '1', '2', '2', '1.0米~2.0米', '南区露天停车场');
INSERT INTO `car_positon_price` VALUES ('3', '1', '3', '5', '1.0米~2.0米', '地下室');
INSERT INTO `car_positon_price` VALUES ('4', '1', '4', '500', '1.0米~2.0米', '后巷');
INSERT INTO `car_positon_price` VALUES ('5', '1', '5', '500', '1.0米~2.0米', '草坪');
INSERT INTO `car_positon_price` VALUES ('6', '1', '6', '1', '1.0米~2.0米', '路边停车位');
INSERT INTO `car_positon_price` VALUES ('7', '2', '1', '500', '1.5米~2.5米', '南区地下停车场');
INSERT INTO `car_positon_price` VALUES ('8', '2', '2', '4', '1.5米~2.5米', '南区露天停车场');
INSERT INTO `car_positon_price` VALUES ('9', '2', '3', '7', '1.5米~2.5米', '地下室');
INSERT INTO `car_positon_price` VALUES ('10', '2', '4', '500', '1.5米~2.5米', '后巷');
INSERT INTO `car_positon_price` VALUES ('11', '2', '5', '500', '1.5米~2.5米', '草坪');
INSERT INTO `car_positon_price` VALUES ('12', '2', '6', '2', '1.5米~2.5米', '路边停车位');
INSERT INTO `car_positon_price` VALUES ('13', '3', '1', '500', '2.0米~3.0米', '南区地下停车场');
INSERT INTO `car_positon_price` VALUES ('14', '3', '2', '5005', '2.0米~3.0米', '南区露天停车场');
INSERT INTO `car_positon_price` VALUES ('15', '3', '3', '8', '2.0米~3.0米', '地下室');
INSERT INTO `car_positon_price` VALUES ('16', '3', '4', '500', '2.0米~3.0米', '后巷');
INSERT INTO `car_positon_price` VALUES ('17', '3', '5', '500', '2.0米~3.0米', '草坪');
INSERT INTO `car_positon_price` VALUES ('18', '3', '6', '3', '2.0米~3.0米', '路边停车位');
INSERT INTO `car_positon_price` VALUES ('19', '4', '1', '500', '3米以上', '南区地下停车场');
INSERT INTO `car_positon_price` VALUES ('20', '4', '2', '6', '3米以上', '南区露天停车场');
INSERT INTO `car_positon_price` VALUES ('21', '4', '3', '5', '3米以上', '地下室');
INSERT INTO `car_positon_price` VALUES ('22', '4', '4', '500', '3米以上', '后巷');
INSERT INTO `car_positon_price` VALUES ('23', '4', '5', '500', '3米以上', '草坪');
INSERT INTO `car_positon_price` VALUES ('24', '4', '6', '5', '3米以上', '路边停车位');

-- ----------------------------
-- Table structure for `car_postion_apply`
-- ----------------------------
DROP TABLE IF EXISTS `car_postion_apply`;
CREATE TABLE `car_postion_apply` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `positionid` int(20) DEFAULT NULL COMMENT '车位id',
  `carusername` varchar(50) DEFAULT NULL COMMENT '车主姓名',
  `carnumber` varchar(50) DEFAULT NULL COMMENT '车票号码',
  `starttime` varchar(40) DEFAULT NULL COMMENT '驶入时间',
  `createtime` varchar(40) DEFAULT NULL COMMENT '创建时间',
  `status` int(4) DEFAULT '0' COMMENT '状态  0 未审核  1审核通过  2审核失败',
  `remark` varchar(400) DEFAULT NULL COMMENT '审核备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_postion_apply
-- ----------------------------
INSERT INTO `car_postion_apply` VALUES ('2', '18', '张三', '里的', '2017-05-17 13:33:36', '2017-05-16 13:33:51', '0', null);

-- ----------------------------
-- Table structure for `car_use_info`
-- ----------------------------
DROP TABLE IF EXISTS `car_use_info`;
CREATE TABLE `car_use_info` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `starttime` varchar(50) DEFAULT NULL COMMENT '驶入时间',
  `endtime` varchar(50) DEFAULT NULL COMMENT '使出时间',
  `carusername` varchar(50) DEFAULT NULL COMMENT '车主',
  `carnumber` varchar(50) DEFAULT NULL COMMENT '车牌号码',
  `positionid` int(20) DEFAULT NULL COMMENT '车位id',
  `times` int(10) DEFAULT NULL COMMENT '时长（单位：小时  不满1小时按1小时算）',
  `price` double DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_use_info
-- ----------------------------

-- ----------------------------
-- Table structure for `car_use_info_his`
-- ----------------------------
DROP TABLE IF EXISTS `car_use_info_his`;
CREATE TABLE `car_use_info_his` (
  `id` int(20) NOT NULL DEFAULT '0' COMMENT 'id',
  `starttime` varchar(50) NOT NULL COMMENT '驶入时间',
  `endtime` varchar(50) NOT NULL COMMENT '使出时间',
  `carusername` varchar(50) DEFAULT NULL COMMENT '车主',
  `carnumber` varchar(50) NOT NULL COMMENT '车牌号码',
  `positionid` int(20) NOT NULL COMMENT '车位id',
  `times` int(10) DEFAULT NULL COMMENT '时长（单位：小时  不满1小时按1小时算）',
  `price` double DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car_use_info_his
-- ----------------------------
INSERT INTO `car_use_info_his` VALUES ('4', '2017-05-15 18:50:47', '2017-05-15 18:55:22', '张三', '发生的', '18', null, null);
INSERT INTO `car_use_info_his` VALUES ('5', '2017-05-15 18:55:03', '2017-05-15 18:55:16', '232', '23', '17', null, null);
INSERT INTO `car_use_info_his` VALUES ('6', '2017-05-15 18:55:31', '2017-05-15 19:06:42', '233232', '222', '18', null, null);
INSERT INTO `car_use_info_his` VALUES ('7', '2017-05-15 19:06:55', '2017-05-15 19:07:00', '332', '覆盖', '18', null, null);
INSERT INTO `car_use_info_his` VALUES ('8', '2017-05-15 19:25:53', '2017-05-15 19:26:00', '33', '233', '18', '1', null);
INSERT INTO `car_use_info_his` VALUES ('9', '2017-05-15 19:41:15', '2017-05-15 20:06:14', '资方', '防守对方', '18', '825', '825');
INSERT INTO `car_use_info_his` VALUES ('10', '2017-05-15 20:08:23', '2017-05-15 20:08:30', '221', '3问32', '17', '3', '1500');
INSERT INTO `car_use_info_his` VALUES ('11', '2017-05-15 20:09:45', '2017-05-15 20:10:31', '防守对方', '发大水', '17', '1', '500');
INSERT INTO `car_use_info_his` VALUES ('12', '2017-05-15 20:13:32', '2017-05-15 20:13:36', '发大水', '发大水', '15', '1', '500');

-- ----------------------------
-- Table structure for `cheweixinxi`
-- ----------------------------
DROP TABLE IF EXISTS `cheweixinxi`;
CREATE TABLE `cheweixinxi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `cheweibianhao` varchar(50) DEFAULT NULL,
  `weizhi` varchar(255) DEFAULT NULL,
  `chezhu` varchar(50) DEFAULT NULL,
  `zhuangtai` varchar(50) DEFAULT NULL,
  `beizhu` varchar(255) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `guige` int(5) DEFAULT NULL COMMENT '规格',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cheweixinxi
-- ----------------------------
INSERT INTO `cheweixinxi` VALUES ('15', '555', '1', null, '空闲', '感豆腐干反对', '2017-05-15 20:13:36', '1');
INSERT INTO `cheweixinxi` VALUES ('17', '123', '4', null, '空闲', '3速度', '2017-05-15 20:10:31', '4');
INSERT INTO `cheweixinxi` VALUES ('18', '45333', '6', null, '空闲', '发送', '2017-05-15 20:06:14', '1');

-- ----------------------------
-- Table structure for `dx`
-- ----------------------------
DROP TABLE IF EXISTS `dx`;
CREATE TABLE `dx` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `leibie` varchar(50) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dx
-- ----------------------------
INSERT INTO `dx` VALUES ('1', '系统公告', '<p>\r\n	欢迎大家登陆我站，我站主要是为广大朋友精心制作的一个系统，希望大家能够在我站获得一个好心情，谢谢！\r\n</p>\r\n<p>\r\n	自强不息，海纳百川，努力学习！\r\n</p>');
INSERT INTO `dx` VALUES ('2', '系统简介', '&nbsp;目的：提高物业管理的工作效率，让物业管理实现由人工管理向计算机管理机制的过渡。<br />\r\n<br />\r\n<br />\r\n意义：通过有效管理、提高小区的工作效率，降低资金占用，让小区物业管理人员更方便的为住户提供优质服务。<br />\r\n<div>\r\n	<br />\r\n</div>');
INSERT INTO `dx` VALUES ('3', '????', '????kkkkk');

-- ----------------------------
-- Table structure for `jiaofeijilu`
-- ----------------------------
DROP TABLE IF EXISTS `jiaofeijilu`;
CREATE TABLE `jiaofeijilu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `yonghuming` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `nianfen` varchar(50) DEFAULT NULL,
  `yuefen` varchar(50) DEFAULT NULL,
  `feiyongleixing` varchar(50) DEFAULT NULL,
  `feiyongjine` varchar(50) DEFAULT NULL,
  `beizhu` varchar(255) DEFAULT NULL,
  `issh` varchar(2) DEFAULT '否',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiaofeijilu
-- ----------------------------
INSERT INTO `jiaofeijilu` VALUES ('1', '555', '何升高', '2016', '1', '水费', '240', 'wegewhw', '否', '2016-03-19 12:41:20');
INSERT INTO `jiaofeijilu` VALUES ('2', '555', '何升高', '2016', '3', '物业费', '300', 'ewewhew', '是', '2016-03-19 12:41:46');
INSERT INTO `jiaofeijilu` VALUES ('3', '555', '何升高', '2016', '2', '燃气费', '230', 'hwhwe', '是', '2016-03-19 12:51:19');
INSERT INTO `jiaofeijilu` VALUES ('4', 'jfgjff', 'jfgjff', '2016', '3', '??', '256', 'gwrehwe??? ', '否', '2017-05-13 20:05:02');

-- ----------------------------
-- Table structure for `kuaidixinjian`
-- ----------------------------
DROP TABLE IF EXISTS `kuaidixinjian`;
CREATE TABLE `kuaidixinjian` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `kuaididanhao` varchar(50) DEFAULT NULL,
  `shoujianren` varchar(50) DEFAULT NULL,
  `menpaihao` varchar(50) DEFAULT NULL,
  `jijianren` varchar(50) DEFAULT NULL,
  `shoujianrendianhua` varchar(50) DEFAULT NULL,
  `songdashijian` varchar(50) DEFAULT NULL,
  `beizhu` varchar(255) DEFAULT NULL,
  `kuaidiyuan` varchar(50) DEFAULT NULL,
  `issh` varchar(2) DEFAULT '否',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kuaidixinjian
-- ----------------------------
INSERT INTO `kuaidixinjian` VALUES ('1', '001', '张三', '105', '李四', '63634734', '2016-03-25', 'fewgwegwe', 'aa', '是', '2016-03-25 00:17:51');
INSERT INTO `kuaidixinjian` VALUES ('2', '154', 'fewgwe', '001', 'grehre', '437634734', '2016-03-25', 'wegewhew', 'aa', '是', '2016-03-25 00:25:33');

-- ----------------------------
-- Table structure for `liuyanban`
-- ----------------------------
DROP TABLE IF EXISTS `liuyanban`;
CREATE TABLE `liuyanban` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `cheng` varchar(50) DEFAULT NULL,
  `xingbie` varchar(2) DEFAULT NULL,
  `QQ` varchar(50) DEFAULT NULL,
  `youxiang` varchar(50) DEFAULT NULL,
  `dianhua` varchar(50) DEFAULT NULL,
  `neirong` varchar(255) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `huifuneirong` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of liuyanban
-- ----------------------------
INSERT INTO `liuyanban` VALUES ('1', 'hwerhre', '2', '8748548', 'jrt@163.com', '3476343', 'hreher', '2016-03-19 11:46:08', 'ewgewgew');
INSERT INTO `liuyanban` VALUES ('2', 'grehrehre', '2', '8748548', 'jrt@163.com', '3476343', 'ewgewgew', '2016-03-19 12:48:43', 'ewgew');
INSERT INTO `liuyanban` VALUES ('3', 'ukuykuy', '3', '8748548', 'jrt@163.com', '3476343', 'grwhre', '2016-03-25 00:23:27', 'ewgewgew');

-- ----------------------------
-- Table structure for `xinwentongzhi`
-- ----------------------------
DROP TABLE IF EXISTS `xinwentongzhi`;
CREATE TABLE `xinwentongzhi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `biaoti` varchar(255) DEFAULT NULL,
  `leibie` varchar(50) DEFAULT NULL,
  `neirong` longtext,
  `tianjiaren` varchar(50) DEFAULT NULL,
  `shouyetupian` varchar(50) DEFAULT NULL,
  `dianjilv` int(11) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xinwentongzhi
-- ----------------------------
INSERT INTO `xinwentongzhi` VALUES ('1', '望里社区开展拆除违章建筑专项行动', '社区新闻', '&nbsp;&nbsp;&nbsp; 为有效遏制乱搭乱建之风，还广大人民群众一个舒适的居住环境。4月22日，望里社区联合镇综合管理大队、城建、规划等单位开展了拆除违法建筑专项整治行动。对辖区内的罗厝村、马鞍村等村十余处违章点进行依法拆除。<BR>&nbsp;&nbsp;&nbsp; 记者在现场看到，这些违章建筑物，都是些竹子和砖块建构的简易棚，这些违章建筑房屋杂乱无章，生活垃圾遍地，这些违章建筑不仅影响了市容市貌，也给旁边的居民居住环境造成极大的影响。这次社区组织工作人员，出动一台大型的挖掘机和100余人对这些违章建筑进行依法拆除。据了解，此次社区拆除违章建筑十余处，面积约2300平方米。<BR>&nbsp;&nbsp;&nbsp; 此次拆除违章扩建房屋，有效制止了违章建筑和破坏村容镇貌的行为，对广大居民起到了宣传教育作用，维护了社区环境，更是给居民带来舒适、整洁、安全的居住环境。(吴连明)<BR>', 'hsg', 'upload/1317085910921.jpg', '69', '2016-03-11 18:56:31');
INSERT INTO `xinwentongzhi` VALUES ('2', '陈德荣：以党建工作转型推动经济社会转型', '社区新闻', '&nbsp;&nbsp;&nbsp;&nbsp; 全市党建工作会议2月14日召开。副省长、市委书记陈德荣在会上强调，要坚持以党的先进性和执政能力建设为主线，牢牢把握立党为公、执政为民的根本要求，全面推进党的建设，以党建工作转型引领和推动经济社会转型，以全心全意为人民服务成果的最大化来赢得老百姓的满意、答应和高兴，为加快转型发展、再创温州辉煌作出新的更大贡献，以优异成绩向建党90周年献礼。 \r\n<P>　　市委副书记朱贤良主持会议。市委常委、宣传部长曹国旗，市委常委、组织部长王昌荣，市委常委、统战部长陈作荣分别就今年宣传、组织和统战工作作具体部署。市委常委、纪委书记徐宇宁，市委常委、鹿城区委书记余梅生，市委常委、秘书长葛益平参加会议。</P>\r\n<P>　　去年以来，全市各级党组织和党务部门围绕中心、服务大局，开拓创新、扎实工作，党建工作取得了明显成效，呈现出不少亮点，为“十一五”发展画上圆满句号、为“十二五”开局奠定了坚实基础。当天的会议是市委新春召开的第一个全市性大会，对宣传、组织、统战年度工作进行统一部署，动员各级党组织和党务部门以改革创新精神全面推进党的建设，为加快转型发展提供坚强保证。</P>\r\n<P>　　陈德荣说，现代经济是市场经济，现代社会是公民社会，现代政府是政党政府。领导我们事业的核心力量是中国共产党。推进温州转型发展、维护人民群众的根本利益，关键在各级党组织。党的建设历来同党的历史任务紧密相联。改革开放以来，温州之所以能够创造举世瞩目的温州模式，党领导政府转型起到了关键作用。现在温州正处于加快转型发展的关键时期，在经济、社会和政府三大转型中，政府转型是基础性的，而推进政府转型，核心是党组织、是党的领导。如果不加强党的建设、不推进党组织自身转型，就不可能推动政府转型，就不可能实现整个转型发展。各级党组织必须牢固树立围绕中心抓党建、抓好党建促发展的理念，以党建工作转型引领和推动经济社会转型，更好地把党建资源转化为发展资源，把政治优势转化为发展优势。</P>\r\n<P>　　陈德荣指出，全心全意为人民服务是党的宗旨，群众观点、群众路线是党的基本观点、基本路线。俗话说，头顶三尺有神明。党员的神明就是广大人民群众。对待老百姓，每个党员干部都要有所敬畏、不能无所畏惧；对待干事创业，每个党员干部都要无所畏惧，敢于攻坚、善于破难。要牢牢秉持全心全意为人民服务的宗旨观念，把人民群众“满意不满意、高兴不高兴、答应不答应”作为一切工作的出发点和落脚点，以执政为民的扎实成果巩固党的执政地位、提升党的执政能力、扩大党的执政基础。</P>\r\n<P>　　陈德荣指出，今年是建党90周年，是“十二五”开局之年，做好党建工作具有特殊而重大的意义。我们必须坚持以党的先进性和执政能力建设为主线，紧紧围绕转型发展做好党建工作，着力提高党的建设科学化水平。要立足解放思想、提神鼓劲，强化理论武装，加强干部培训，提升市民素质，营造发展氛围，繁荣发展先进文化，塑造城市文明新形象，为转型发展提供强大的精神动力。要立足提升能力、增强活力，坚持德才兼备、以德为先、注重实绩、群众公认，全面落实考绩法和绩擢法，推行考绩择才、赛场拔才、挂牌招才，大力选拔善于破难、敢于攻坚的智勇双全的干部，配强班子，建好队伍，强化基层，聚集人才，为转型发展奠定坚实的组织基础。要立足提速提效、干净干事，深化体制改革，建立完善反腐倡廉各项制度，强化机关文化和机关制度建设，提高办事效率，加大监督力度，深化廉政教育，为转型发展营造良好环境。要立足凝聚人心，汇聚力量，合力推动经济统战工作，扩大民主政治参与，促进社会和谐稳定，为转型发展调动方方面面的积极因素。</P>\r\n<P>　　陈德荣强调，加强领导是党建工作保持正确方向、取得扎实成效的根本保证。各级党组织和党务部门要坚持党要管党、从严治党的方针，认真履行党建工作责任，强化领导，开拓创新，完善机制，提升能力，确保党建工作任务落到实处，不断开创党建工作新局面。&nbsp;（记者&nbsp;王丹容） </P>\r\n<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', 'hsg', 'upload/1317086069593.jpg', '57', '2016-03-11 18:56:31');
INSERT INTO `xinwentongzhi` VALUES ('3', '合作社区开展拆违行动', '社区新闻', '&nbsp;&nbsp;&nbsp; 为巩固拆违工作成效，防止各类违法建设行为发生,实现“控新拆违”目标。11月6日，由合作社区牵头，组织钱库综合执法大队、国土、住建等部门140人，对浃底园村及望里至新安社区公路沿线的违章建筑予以强制拆除。<BR><BR>&nbsp;&nbsp;&nbsp; 在浃底园村，记者看到，该处违章建筑是单层钢筋混凝土民房，位于一民房与厂房之间，向着道路的一面，违章建筑被一层篷布遮隐，试图蒙混过关。当执法人员掀开篷布后，记者还惊奇的发现，一根高压线也被业主砌进墙体里面，十分危险。据现场执法人员介绍，这6间新增违章民房是半个月前巡查发现的，起初才立柱钉板还没浇溶，当时执法人员下发了《限期自行拆除通知书》，业主口头答应自行拆除，之后却变本加厉，利用双休日等执法空挡，对一层进行砌砖浇溶。对此，合作社区拆违控违绝不手软，在炮头机的轰鸣声中,这6间违章民房被夷为平地。<BR><BR>&nbsp;&nbsp;&nbsp; 随后，联合执法组又对望里至新安社区公路沿线的违章简易棚和废旧的危房进行强制拆除，推进钱库“四边三化”行动。（缪克梯）<BR><BR>', 'hsg', 'upload/1317086056687.jpg', '75', '2016-03-11 18:56:31');
INSERT INTO `xinwentongzhi` VALUES ('4', '北京市旅游行业协会旅行社分会成立\"法律维权组\"', '社区新闻', '&nbsp;&nbsp; &nbsp;北京市<SPAN style=\"BORDER-BOTTOM: 0px dotted; COLOR: #0084d8; CURSOR: hand; TEXT-DECORATION: underline\" name=\"HL_TAG\">旅游行业</SPAN>协会旅行社分会近日成立“法律维权组”。据悉，这是首都旅行社业首个法律维权组织。\r\n<P>&nbsp;&nbsp;&nbsp;&nbsp;旅行社分会“法律维权组”召开了第一次全体会议，除了中青旅、中国妇女旅行社、环境国旅三家副会长单位外还有国旅总社、中旅总社、众信旅游、华远旅游、北青旅、和平国旅、中信旅游总公司、新日国旅、永安国旅等旅行社的负责人出席了会议。这12家旅行社均为业界知名企业，具有广泛的代表性，既有以批发业务为主的旅行社，又有以零售业务为主的旅行社；既有大型国有企业集团，也有民营企业、外资企业和郊区县旅行社企业，作为首批进入“法律维权组”的旅行社，将竭力为首都旅行社行业服务。</P>\r\n<P>&nbsp;&nbsp;&nbsp;&nbsp;“法律维权组”的成立受到了中国旅游协会的高度重视，并得到了北京市旅游委和北京市旅游行业协会的鼎力支持，北京旅游行业协会徐薇秘书长代表市旅游委领导及市旅游协会发表了贺辞，并就下一步“法律维权组”如何更好地开展工作提出了具体要求。</P>\r\n<P>&nbsp;&nbsp;&nbsp;&nbsp;旅行社分会副会长、“法律维权组”召集人、环境国旅总裁钟晖说：“法律维权组将努力成为行业主管部门的助手和旅行社企业的帮手；将致力于维护旅游消费者的合理权益和旅行社企业的合法权利；将积极引导旅游者理性维权，以促进旅行社企业提升服务质量，推动旅行社企业提高管理水平为己任；将在旅行社行业内搭建学习的平台和互助的平台；将以开放、和谐、坚持、妥协作为处事理念。为此，我们将逐渐健全机构。例如：组建区县旅行社界人大代表、政协委员联络组；务实培训以提高业界法律素养；适时组织见面会与咨询日；以旅游产业链上下游纠纷典型案例为突破口维权；沟通常态化以期信息分享等具体措施”。引起了与会代表的广泛共鸣。(王晗)</P>', 'hsg', 'upload/1317085936937.jpg', '15', '2016-03-11 18:56:31');
INSERT INTO `xinwentongzhi` VALUES ('5', '我市深入推进社会治安重点地区排查整治', '社区新闻', '&nbsp;&nbsp;&nbsp;&nbsp; 10月8日，我市召开社会治安重点地区排查整治工作推进会，进一步深化认识，强化措施，深入推进排查整治工作，全力助推“平安温州”建设。市委副书记、政法委书记朱贤良出席会议并讲话，市委常委、公安局长叶寒冰主持会议。 \r\n<P>　　今年，在全省社会治安重点地区排查整治工作电视电话会议召开后，我市迅速贯彻部署，在去年治安乱点整治的基础上，全面深入排查梳理，将25个镇（街道）作为市级重点整治地区，强力开展严打和集中整治行动。通过8个月的“大排查、大整治”工作，25个重点地区的社会治安形势总体平稳。1至9月，这些重点地区共打击涉恶团伙23个，刑事发案、入室盗窃发案、“两抢”发案均同比下降。</P>\r\n<P>　　10月8日的会议既是推进会，也是分析部署会。朱贤良指出，在充分肯定成绩、学习先进的同时，要进一步深入分析、查找问题，清醒认识社会治安重点地区排查整治工作的严峻性、长期性和艰巨性，不断增强抓好该项工作的责任感和紧迫感。要进一步强化攻坚态势，保持打击力度，突出重点整治，形成常态化严管整治，实实在在地促进重点地区社会治安秩序全面好转。要进一步强化责任落实，夯实基层基础，建立长效机制，全力确保排查整治工作取得实效，为深入推进“平安温州”建设作出应有的贡献。&nbsp;（记者 姜巽林） </P>', 'hsg', 'upload/1317085922265.jpg', '49', '2016-03-11 18:56:31');
INSERT INTO `xinwentongzhi` VALUES ('6', '壹加壹受邀参加全国社会组织能力建设系列培训班', '社区新闻', '<DIV id=showvideo><!-- rm url is empty!--></DIV>\r\n<DIV class=lh24 id=topic></DIV>\r\n<DIV class=content id=ftcg><!--function content() parse begin-->\r\n<DIV align=center>\r\n<DIV align=center>\r\n<DIV align=center><SPAN><SPAN><IMG id=no_img height=408 src=\"http://pic2.66wz.com/0/10/62/98/10629811_975617.jpg\" width=610 border=0></SPAN></SPAN></DIV>\r\n<DIV align=center><SPAN><SPAN>培训现场</SPAN></SPAN></DIV>\r\n<DIV align=center>&nbsp;</DIV></DIV>\r\n<DIV align=center><SPAN><IMG id=no_img height=408 src=\"http://pic2.66wz.com/0/10/62/98/10629810_342445.jpg\" width=610 border=0></SPAN></DIV>\r\n<DIV align=center>北京社区参与行动服务中心主任（民政部社区建设司建设专家组成员）宋庆华给学员张炳钩颁发结业证书。</DIV>\r\n<DIV align=center>&nbsp;</DIV>\r\n<DIV align=center><SPAN><IMG id=no_img height=458 src=\"http://pic2.66wz.com/0/10/62/98/10629812_711811.jpg\" width=610 border=0></SPAN></DIV>\r\n<DIV align=center><SPAN>壹加壹志愿者张炳钩看望身患重病的成都仁爱志愿者负责人敏姐。</SPAN></DIV>\r\n<DIV align=center>&nbsp;</DIV></DIV>\r\n<P><!--epe-->&nbsp;&nbsp;&nbsp; 苍南新闻网8月28日消息：由北京社区参与行动服务中心主办的“中国社会组织领导力能力建设系列培训班”第一期在成都举行，此次系列培训主要培育NGO领导人成为具有影响力的组织领导和推动社区参与式方法传播和运用的培训师。参加此次培训有40多人，其中，壹加壹志愿者张炳钩将和全国其他社会组织等10名学员参加第二期在香港、第三期在北京的系列培训。</P><!--advertisement code begin--><!--advertisement code end-->\r\n<P>&nbsp;&nbsp;&nbsp; 今年以来壹加壹多次参加县外举办的能力建设培训与会议：5月，壹加壹民防志愿者白希直、陈国栋、郑修泉参加由浙江省应急办在绍兴举行为期七天的“浙江省第六期基层应急队伍骨干培训班”；6月，壹加壹红丝带志愿者李发电、蔡美焦、陈洪玲参加由浙江省卫生厅在杭州举行为期两天的中国全球基金艾滋病项目社区参与相关培训；7月，壹加壹孤儿帮教项目志愿者黄剑霞参加由共青团浙江省委在杭州举行为期三天的首期全省关爱行动项目专员培训班；8月，壹加壹空中搜救队队长陈斌受温州市委宣传部的邀请在市图一楼多功能厅做客“温州好人”网上行网络视频互动讲座第四讲，与市民一起分享他多年的公益航拍之路；8月，壹加壹张炳钩受华夏公益服务中心邀请在YY网络会议上主讲“民间应急救援体系建设”，与全国各地公益组织一起讨论如何建设民间应急救援体系。（通讯员 黄春新 /文 林加帅/摄）<SPAN style=\"DISPLAY: none\">）（通讯员 黄春新 /文 林加帅/摄 </SPAN></P></DIV>', 'hsg', null, '32', '2016-03-11 18:56:31');
INSERT INTO `xinwentongzhi` VALUES ('7', '夏口社区举行割稻子比赛', '社区新闻', '<P align=left>&nbsp;&nbsp;&nbsp; 为进一步深化群众性精神文明创建和社区文化建设，丰富社区居民的文化生活， 11月1日，夏口社区举办一场别开生面的割稻子农业技能比赛。<BR>&nbsp;&nbsp;&nbsp; 钱库镇夏口社区是重要的粮食生产区，眼下稻子已逐渐成熟，在这收获的时刻，一片金黄色的海洋随风摇摆。比赛现场，十几名割稻能手一字排开，摩拳擦掌，随着社区方欣副书记一声哨响，选手们挥动镰刀，在指定区域奋力割稻，熟练的手法抓住水稻，弯腰下刀，又将水稻按指定方式摆好，部分选手的家人则在旁边助威，热闹非凡。<BR>&nbsp;&nbsp;&nbsp; 作为镇钱库镇“亲邻加坊、幸福家园”社区文化节活动之一，此次比赛，展示了农民丰收的喜悦，加强社区文化建设，营造浓厚的和谐邻里氛围，进一步凝聚人心、鼓舞斗志。(文明办)</P>', 'hsg', null, '32', '2016-03-11 18:56:31');
INSERT INTO `xinwentongzhi` VALUES ('8', '我市113个民族村经济社会长足发展', '社区新闻', '&nbsp;&nbsp;&nbsp;“我作田妹，作田就要整水背。何缘千里侩寻着，一条大路直直来……”听民族小学生唱畲歌，访特色产业基地谈发展，看民族团结奔小康。在上周举行的“走进温州民族乡村”系列活动中，我市采访组5天内实地走访全市6个县（市）的22个少数民族乡村（单位），在感受本土少数民族风情的同时，更为民族乡村的发展与进步感到欣慰。 \r\n<P>&nbsp;&nbsp; “走进温州民族乡村”的第一站，是位于平阳县西南部山区的青街畲族乡。青街畲乡民俗馆，创办在修建于1733年的池氏大屋内，该馆内藏竹制集粹、畲族服饰、早期畲族民间生活用品等300多件极具“畲乡”特色的民俗文物。在泰顺县司前畲族镇，畲歌对唱、畲家迎客祝酒等民族表演，把畲族风情演绎得惟妙惟肖。除此之外的苍南、文成等我市四个主要畲族聚居地，畲乡文化正以畲乡民俗馆、“三月三”畲族风情节、畲语畲歌等形式走进人们的生活。 </P>\r\n<P>&nbsp;&nbsp;&nbsp; 在各级党委、政府及社会各界人士的帮扶下，近年来，我市113个民族村根据地方特色和产业优势，自力更生，艰苦奋斗，逐渐从由他人“输血”转变为自身“造血”。文成周壤乡的中药材基地、平阳顺溪镇的畜禽养殖场、泰顺碑排乡的猕猴桃基地等一大批具有地方特色的产业基地，正带动当地少数民族村民走上致富之路。在青街乡九岱村，村两委在对传统400亩毛竹林改造提升的同时，还以股份合作的形式，引进150只亚洲黄羊及30只鲁西黄牛，每年能带来20多万元收入。负责放羊的村民雷顺午每年仅工资收入就有两万多元，比4892元的该村人均收入高出好几倍。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 脱贫致富的少数民族乡村，正在向我们展现民族团结奔小康、携手共建新农村的美好场景。“以前村子不通公路，村民大多散居在山腰和山脚下的简陋老房子里。”平阳县南雁镇堂基村村委会主任雷正建介绍，如今的堂基村，新房一间挨着一间，水泥路更是修到了家门口。如此大的转变，缘于2003年起畲汉村民共建的小村婚纱摄影基地。如今，村里古道驿亭、秋千竹排、露天游泳池等设施一应俱全，仅去年一年，小村就吸引7000多对新人光顾。</P></FOUNDER-CONTENT> \r\n<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', 'hsg', null, '17', '2016-03-11 18:56:31');
INSERT INTO `xinwentongzhi` VALUES ('9', '纪委“扩权”：工资社保受制同级党委 监督难独立', '社区新闻', '<P align=center><IMG style=\"WIDTH: 400px; HEIGHT: 245px\" id=24088037 title=\"纪委“扩权”：工资社保受制同级党委 监督难独立\" hspace=0 alt=\"纪委“扩权”：工资社保受制同级党委 监督难独立\" src=\"http://images.china.cn/attachement/jpg/site1000/20131120/001ec949ffca13f6388403.jpg\" width=400 height=245 md5=\"\"></P>\r\n<P style=\"TEXT-ALIGN: left\" class=pictext align=left>&nbsp;&nbsp; ■ 点睛</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">中国新一轮纪检体制改革的方向，在本月15日揭晓。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">纪律检查，掌握着诸多官员的政治命脉，被视为反腐倡廉最为有力的“大手”之一。但是因为体制原因，这只“大手”经常无力：对同级党委，尤其是“一把手”，监督不力;对派驻单位，纪检组无力与党组“掰手腕”。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">十八届三中全会的《决定》，试图通过完善双重领导体制，赋予上级纪委对下级纪委书记的提名权，强化上级纪委对下级纪委的领导，加强对同级党委常委，尤其是“一把手”的监督。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">业内人士认为，此番改革向前走了一大步。但根治“同级监督太软”等难题，仍有提升空间。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\"><STRONG>“上级监督太远，同级监督太软”？</STRONG></P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">河北省原纪委书记刘善祥因为跟程维高“叫板”，被安排“病休”</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">湖北纪检干部张松（化名），曾在一县直单位担任纪检组长多年。他一直思考的问题是：纪检组的权力到底有多大？</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">依据党章，纪委拥有对同级党委进行监督的权力。“但实际上，监督同级党委规定上可行，可现实中太难。”张松说。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">两位同行的遭遇，给他留下深刻印象。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">一位是最早站出来，跟程维高“叫板”的河北省原纪委书记刘善祥。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">程维高2003年被开除党籍、撤销正省级职级待遇。早在1993年，刘善祥就发现了程维高秘书李真的贪腐线索。立案查处时，刘与程维高发生冲突，结果被安排“病休”，不得不离开工作岗位。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">另一位是汉中市公安局汉台分局前纪检委书记刘继全。他举报原汉台分局公安局长汪广赋的问题，多次向上级反映无果，写给上级的举报信，居然“原件”返回到他自己手中。2010年，他在网上公开实名举报，汪广赋才被免职。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">“相隔17年，监督同级党委一直艰难。”张松说。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">1978年恢复重建时，纪检体制为“党委单一领导体制”，纪委只受同级党委领导，1980年，根据“各省、市、自治区党委纪委同志提议”，改为“双重领导体制”，即受同级党委和上级纪委的双重领导，但以同级党委领导为主。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">“十二大”后，虽然仍是“双重领导体制”，但不再 “以同级党委领导为主”。这种体制沿用至今。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">在受访专家和基层纪检干部看来，虽然历经改革，但同级监督特别是对“一把手”的监督，一直是难以跨越的“门槛”。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">2007年6月，中纪委原副书记刘锡荣曾总结说：“上级监督下级太远，同级监督同级太软，下级监督上级太难。”</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">今年3月起，广东省纪委成立课题组，在惠州、揭阳等近十县市调研“纪委监督同级党委常委会成员”问题。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">8月15日，课题组公开发布了调研报告。报告显示，“纪委的立案权、审理权、处分权归同级党委常委会管，当纪委与党委意见不一致时，纪委只能让步”。而且，纪委对同级党委的监督，“有事时不能监督，出事后又不能独立审查，缺乏自主权、决断权和强制性，很难对监督对象形成威慑和制约”。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">曾任中纪委政策研究室主任的李永忠透露，这么多年，这么多起腐败案件，几乎没有同级纪委检举揭发同级党委主要领导和党委班子违纪违法行为的案例。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\"><STRONG>“吃人家饭，受人家管”？</STRONG></P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">纪检干部统计出勤率，年终考评，她多了几张“不称职票”</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">张松经常听到一句针对纪检工作的顺口溜：“吃人家饭、端人家碗”，就要“受人家管、跟人家转，何必挑人家的刺，揭人家的短？”</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">湖北房县的张雪晴也听到过这个说法。4年前，她一直是县直单位的纪检组长。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">张雪晴回忆，“吃人家饭、端人家碗”的时候，别说监督同级党委，就连开展查考勤这样的日常工作，都很艰难。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">上级部署查公务员的到岗率和出勤率。张雪晴找到相关处室，但处室负责人不愿意得罪人，不肯接活儿。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">张雪晴决定自己上阵。在上下班时段，她坐到了办公楼门口，让人签到。出勤率统计出来了，但是当年的年终考评，她多了几张“不称职票”。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">“吃人家饭、受人家管，纪检干部没什么威慑力，不敢监督，也不愿监督。”张雪晴告诉记者。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">张松感同身受。“纪检干部的人事关系、工资待遇、职务升迁，都掌握在同级党委手里。”张松说，“纪检干部怎么敢放心大胆地监督？”</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">湖南省纪委预防腐败室副主任陆群对新京报记者说，人财物受制于同级党委，是纪检监督的主要障碍，“这些问题不解决，没法监督”。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">类似的看法，在纪检系统成为共识。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">广东省纪委的调研报告提到，“监督同级党委常委会成员，不但纪委书记冒着丢选票、挪位置的风险，普通纪检监察干部也得面临各种困境。”</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">这种困境有时只是“不被理解”，有时是“冷嘲热讽”，“监督者要有相当大的勇气，冒很大风险，付出很大代价”。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">监督同级党委，近年来又有了新难点。杭州市纪委研究室今年8月发布文章说，目前对党政正职人事管理上提，有些党委主要领导还兼任上级党委常委或政府副市长，客观上导致纪委很难监督同级党委，特别是主要领导。</P><!--/enpcontent-->', 'hsg', null, '64', '2016-03-11 18:56:31');
INSERT INTO `xinwentongzhi` VALUES ('10', '龙沙社区“草根微舞台”献礼十八大', '社区新闻', '<DIV align=center>\r\n<DIV align=center>&nbsp;</DIV>\r\n<DIV align=center><SPAN><SPAN><IMG id=no_img height=351 src=\"http://pic2.66wz.com/0/10/67/04/10670411_559627.jpg\" width=610 border=0></SPAN></SPAN></DIV>\r\n<DIV align=center>&nbsp;</DIV>\r\n<DIV align=center><SPAN><IMG id=no_img height=293 src=\"http://pic2.66wz.com/0/10/67/04/10670410_999732.jpg\" width=610 border=0></SPAN></DIV>\r\n<DIV align=center>&nbsp;</DIV>\r\n<DIV align=center><SPAN><IMG id=no_img height=365 src=\"http://pic2.66wz.com/0/10/67/04/10670409_520687.jpg\" width=610 border=0></SPAN></DIV>\r\n<DIV align=center>&nbsp;</DIV></DIV>\r\n<P><!--epe-->&nbsp;&nbsp;&nbsp; 苍南新闻网11月14日消息：昨晚，赤溪镇和龙沙社区举办喜迎十八大，欢乐社区行“草根微舞台”演出，喜庆党的十八大胜利召开。</P><!--advertisement code begin--><!--advertisement code end-->\r\n<P>&nbsp;&nbsp;&nbsp; 当晚，微舞台节目精彩纷呈，有舞蹈、独唱、戏曲、武术、唢呐演奏等节目，不断把演出推向高潮。台上洒脱的表演，台下观众掌声不断，体现了社区人民在党的正确领导下，对新时代的赞美。（卢孔祥）</P>', 'hsg', null, '63', '2016-03-11 18:56:31');
INSERT INTO `xinwentongzhi` VALUES ('11', '我市将实施社会保障卡·市民卡工程', '社区新闻', '&nbsp;&nbsp; &nbsp;将社保卡、银行卡、公交卡等功能集纳到一张卡中，市民生活将更加方便。记者近日从市政府获悉，我市将实施社会保障卡·市民卡工程，计划于今年9月份前在鹿城、龙湾和瓯海三区首期发放社会保障卡，而后其他功能将待条件成熟后再开放激活，明年6月前，逐步拓展至商业支付应用。 \r\n<P>　　社会保障卡·市民卡工程是指以智能卡为主载体，耦合政府社会保障、公共服务、公用事业服务、商业及金融服务等相关应用系统，为广大市民提供社会保障、身份认证、小额支付、信息存储和查询等服务功能的“一卡通”综合信息服务平台，实现政府管理、公共服务和商业支付等卡应用领域的“一卡多用、一卡通用”。</P>\r\n<P>　　“市民卡”首先应用于社会保障功能，首期以社保用户为主，并逐步面向非社保用户和流动人口发放，先行启动以异地医疗费结算、医疗费零星报销、个人账户结转、信息查询为主要内容的社会保障卡医保“一卡通”，今后逐步开通各类社会保障缴费、登记、领取各类社保待遇、社会化管理和就业服务等功能。</P>\r\n<P>　　按照规划，“市民卡”还将根据市民实际需求，逐步开通更多的功能，将逐步覆盖公积金、民政、电子病历、图书馆、校内通等公共服务应用，支持水电煤气等公共事业缴费功能，支持公交、出租、停车、加油、超市购物、就医购药、景点门票等社会服务的小额支付，支持金融借贷功能，提供存取款、消费、转账等个人金融服务。</P>\r\n<P>　　据介绍，市民卡工程总投资2.9亿元，主要用于卡、卡具、市民卡平台以及网点建设等方面软硬件设施建设。市民卡种类包括主卡和副卡，其中副卡有记名、不记名之分。主卡主要应用于社会保障和政府其他部门等方面应用，公交、出租、公园、车票等方面的小额支付，以及银行金融交易。副卡可加载在手机上，供市民选择使用。主卡以免费的方式向市民发放，换卡收取适当手续费。（记者 吴勇）</P>\r\n<META name=ContentEnd><!--ZJEG_RSS.content.end--><!--<$[信息内容]>end-->', 'hsg', null, '79', '2016-03-11 18:56:31');
INSERT INTO `xinwentongzhi` VALUES ('12', '钱库构筑社会消防安全“防火墙”工程建设', '社区新闻', '<DIV><FONT face=\"Times New Roman\">&nbsp;&nbsp;&nbsp;&nbsp; 12</FONT>月<FONT face=\"Times New Roman\">2</FONT>日，钱库镇召开构筑社会消防安全“防火墙”工程建设工作会议，镇领导杨雷、缪心疆、吕正旭及相关部门负责人参加了会议。</DIV>\r\n<DIV>&nbsp;&nbsp; 会议首先传达了上级消防会议精神，并结合当前面临的实际各部门负责人详细汇报了近两个月来消防安全隐患和排查情况，由于群众消防意识淡薄，防范措施不到位，发生的多起火灾给全镇人民留下了惨痛教训。现在当务之急迫切需严格按照“四个一标准”加强“防火墙”工程建设。</DIV>\r\n<DIV>会上，专职消防队负责人宣读了《钱库镇构筑社会消防安全“防火墙”工程实施方案》。同时，根据“防火墙”建设工作精神和结合该镇实际，成立以各办事处，综治办、派出所等相关单位为主要成员的“防火墙”工程领导小组。</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 钱库镇镇长杨雷强调说，相关部门单位要认清构筑社会消防安全“防火墙”工程的重大意义，切实增强使命感、责任感和紧迫感；要强力推进构筑社会消防安全“防火墙”工程，全面完成各项工作任务；要落实责任，强化措施，推动构筑社会消防安全“防火墙”工程在服务经济民生上见实效。(<SPAN style=\"FONT-FAMILY: 宋体; FONT-SIZE: 16pt; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\"><FONT size=2>缪克梯)</FONT></SPAN></DIV>', 'hsg', null, '6', '2016-03-11 18:56:31');
INSERT INTO `xinwentongzhi` VALUES ('13', '钱库镇项桥社区妇联举行“平安家庭”示范户授牌仪式', '社区新闻', '&nbsp;&nbsp;&nbsp; 为了全面推进“平安家庭”创建活动的深入开展，引导广大家庭积极参与“平安苍南”建设，日前，钱库镇妇联联合项桥社区妇联社区活动广场举行“平安家庭”示范户授牌仪式，为本社区的50多户家庭现场发放“平安家庭示范户”牌子。<BR>&nbsp;&nbsp;&nbsp; 在现场，除了进行平安家庭的授牌，还充分利用张贴标语、悬挂横幅、分发平安小册子等多种手段，向广大群众宣传“平安家庭”创建的重要意义。随后，现场不少妇女纷纷签上自己的名字，踊跃参加创建平安家庭活动，表明创建“平安家庭”的承诺与信心。<BR>&nbsp;&nbsp;&nbsp; 镇妇联表示，希望这次的授牌仪式能够带动全镇广大家庭以他们为榜样，营造“平安家庭”创建活动的浓厚宣传舆论氛围，促进了社会和谐稳定。（杨海东）<BR>', 'hsg', null, '58', '2016-03-11 18:56:31');
INSERT INTO `xinwentongzhi` VALUES ('14', '望里社区：召开各村保洁员座谈会', '社区新闻', '　　2月18日上午9点，望里社区召开城乡环境综合整治村（居）保洁员座谈会。会议由项延佐委员主持，社区董文聪书记、赵成权主任、社区环境整治工作人员、环卫所长和全体村（居）保洁员一起参加会议。 <BR>　　会上，项延佐委员介绍了望里社区城乡环境综合整治的工作安排，并根据目前存在的问题提出改进措施及工作要求：一是全体保洁人员要在思想上引起重视，提高作业标准,必须保质保量完成保洁任务；二是要社区将完善定期考核奖惩机制，切实做好各自责任范围内的保洁工作，尤其是加强重要路段的保洁和卫生死角的清理，社区将每月进行数次抽查考核，抽查合格的保洁区域，增加200元的作为考核奖金。三是在每村各安排一名保洁员的基础上，再各增加1名保洁员，加大环境综合整治力度。同时，各保洁员与社区工作人员进行热烈地沟通和讨论，提出了各自的意见和建议。 <BR>　　最后，社区董文聪书记强调了环境综合整治的重要性，要求大家共同维护好社区的环境卫生，营造干净整洁的生活环境。&nbsp;', 'hsg', null, '75', '2016-03-11 18:56:31');
INSERT INTO `xinwentongzhi` VALUES ('15', '改善民生是社会发展必然要求', '社区新闻', '&nbsp;&nbsp;&nbsp; 调整的可持续性取决于政治安排与民意的契合，契合度越高，改革和调整的动力越足。而政治倾向于民生，不仅关乎民众的财产福利水平和幸福感的提升，实际上也是对经济和社会发展终极意义的完整阐释。\r\n<P>　　全国政协第十一届委员会第四次会议昨天下午在人民大会堂开幕。在回顾去年工作时，贾庆林表示：民生问题不仅是重要的经济问题、社会问题，也是重大政治问题。这一对于民生性质的三个层面的表述，既点出了民生是经济和社会领域发展的重要考量指标，也表明重视并改善民生，将是今后政治生态的发展方向。实际上，这也是经济和社会发展到一定阶段的必然要求。 </P>\r\n<P>　　今年是“十二五”规划的开局之年，因此，两会所肩负的使命就更加重要，所要描绘的政策蓝图也更加长远。在所有的经济和社会发展议题中，民生和社会管理无疑是今年、也是未来很长时间里分量最重的课题。而继续改进民生，进一步优化社会管理，其实就是极为庞大、复杂的经济和社会总资源的良性分配和调整。 </P>\r\n<P>　　这一调整的重要性和急迫性在于，在过去政策资源和经济资源主要集中投放于增长的情况下，一方面，经济增长的成绩有目共睹，并使得多数人已经受益，但是，随着“蛋糕”的做大，社会已递进至财富积累阶段，民生问题也由过去的能否满足温饱供应这一基本诉求，升级为财富能否持续积累。 </P>\r\n<P>　　另一方面，现实情况是，在公共服务、社会总福利水平仍然处于较低标准，财富的可持续积累和公平分配面临新的挑战，由此部分地造成了贫富、机会的代际传承，以及民生的发展速度跟不上经济增长的速度。在利益格局和价值取向趋向多元的今天，这些问题已非简单的经济问题，同时也可能成为社会问题的源头。 </P>\r\n<P>　　经济和社会发展较为健康和较为持久的前提，是经济增长一定不能是排他性增长而是包容性增长，政治价值取向一定不能是狭隘的政绩取向而是民生取向。优化经济增长方式和社会管理方式的课题之所以提出，实际上要解决的就是这一问题。解答这一重大课题，不仅需要在经济领域和社会领域的自我改进，更需要政治领域提供强大的政策和理论支持。这实际上要求的是政治内涵的深化和政策资源对于民生的全方位倾斜。 </P>\r\n<P>　　今年两会的一个重要特点是，分配议题取代增长议题成为代表委员们的主要关注点，而在微观政策层面，新一轮的改革也已胎动。比如，以提高个税起征点为切入口的财税体制改革，准备加快推进的收入分配改革，对通胀的管理和货币政策的灵活运用，对教育、医疗、水煤气电、交通等公共服务的强化，对社会福利保障水平的提升等等。宏观来看，这些改革既是对民众呼声的响应，也是制度跟进的新开端。 </P>\r\n<P>　　通过改革强化民生早已是社会共识，这实际上意味着利益和财富的再调整。调整的可持续性取决于政治安排与民意的契合。契合度越高，改革和调整的动力越足。而政治倾向于民生，不仅关乎民众的财产福利水平和幸福感的提升，实际上也是对经济和社会发展终极意义的完整阐释。 （徐立凡）</P><!-- end_ct -->', 'hsg', null, '91', '2016-03-11 18:56:31');
INSERT INTO `xinwentongzhi` VALUES ('16', '关于对苍南县社会福利院“拴养”儿童一事整改情况的通报', '通知公告', '<P>苍南县委、县政府就社会福利院“拴养”儿童一事作出四条处置意见后，各相关部门各司其职，通力协作，全面开展整改工作，现将进展情况通报如下：</P>\r\n<P>一、7月1日晚，苍南县民政局连夜召开党组会议，对苍南县社会福利院院长做出停职接受调查的决定。苍南县纪检部门也已介入，对相关工作人员可能存在的违规渎职行为进行进一步调查核实。</P><!--advertisement code begin--><!--advertisement code end-->\r\n<P>二、苍南县民政局临时招聘9名保育员，以增强社会福利院的保育力量，目前已全部到岗到位。</P>\r\n<P>三、组织人员对苍南县社会福利院进行环境卫生大整治，改善福利院的生活和学习条件。同时，对福利院的新院址加快装修，并完善生活设施配备，确保全体孤儿本周内迁入新居。</P>\r\n<P>四、连日来，陆续有社会爱心人士到苍南县社会福利院开展志愿服务活动，并安排医务人员对全院儿童进行健康体检。</P>\r\n<P>五、从7月2日开始，苍南县对全县福利机构进行全面排查，强化监管，防止类似事件再次发生。</P>\r\n<P>　　　　　　　　　　　　　　　　　　　　　　　　　　　　苍南县委对外宣传办公室</P>\r\n<P>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　2012年7月2日<SPAN style=\"DISPLAY: none\">&nbsp;</SPAN></P>', 'hsg', 'upload/1317085910921.jpg', '46', '2016-03-19 11:46:54');
INSERT INTO `xinwentongzhi` VALUES ('17', '停电通知（1月17日——1月22日）', '通知公告', '<P>&nbsp;&nbsp;&nbsp; 因供电设备检修(如遇雨天延期），现安排下两周停电线路，希各相关用户做好安排。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 星期一 1月17日 甲底473线 黄图471线 新梁479线 东跳462线 后垟477线 张南村、张北村、东跳村、环球西路、黄头图村、环山路、球山路、宜山大道、上底村等 7:00-18:00 渔港400线&nbsp;沟头村、北岭村、关岙头村、等 7:00-18:00&nbsp;</P><!--advertisement code begin--><!--advertisement code end-->\r\n<P>&nbsp;&nbsp;&nbsp; 星期二 1月18日 前陈681线 松阳836线 龙翔南路、龙洲路等 8:00-18:00&nbsp;</P>\r\n<P>&nbsp;&nbsp;&nbsp; 星期三 1月19日 芦浦505线 前洋底村、黄楼下村、等村7:00-18:00&nbsp;</P>\r\n<P>&nbsp;&nbsp;&nbsp; 星期五 1月21日 桥墩变电所 蒲门变电所 蒲门变渔寮591线、霞关592线、蒲城593线、水电594线、工业595线、马站596线、澄海597线；桥墩变观美571线、五凤572线、城镇574线、莒溪575线、玉苍573线用户；鹤顶山、霞关风电场 7:00-20:00&nbsp;</P>\r\n<P>&nbsp;&nbsp;&nbsp; 星期六 1月22日 城北变电所 龙江变电所 城北变、龙江变：北海600线、北园602线、咸园604线、西城606线、城银607线、站前608线、城锦609线、城盛611线、沿江613线、柳南614线、新兰615线、北中616线、北昌612线、斗门605线、龙翔521线、下埠522线、江滨523线、人民525线、海城526线、龙江527线、建新528线、龙跃529线下的用户 6:00-17:00</P>\r\n<P align=right>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　苍南电力</P>', 'hsg', 'upload/1317086069593.jpg', '72', '2016-03-19 11:46:55');
INSERT INTO `xinwentongzhi` VALUES ('18', '关于提前招聘2011年普通高校医学类紧缺专业毕业生的通知', '通知公告', '<TABLE id=table_neirong cellSpacing=3 cellPadding=3 width=\"90%\" border=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=text3 id=TD1 style=\"HEIGHT: 63px\" vAlign=top colSpan=2 height=63>\r\n<P class=MsoNormal style=\"MARGIN: 0cm 0cm 0pt; TEXT-INDENT: 32pt; LINE-HEIGHT: 35pt; mso-char-indent-count: 2.0; mso-line-height-rule: exactly\"><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312; mso-hansi-font-family: 华文仿宋\">为适应我县医疗卫生事业单位发展需要，结合医疗卫生事业单位对高校毕业生的需求情况，根据中共苍南县委苍南县人民政府《关于促进高校毕业生创业就业工作的意见》精神，经研究，决定</SPAN><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312; mso-hansi-font-family: 黑体\">提前招聘<FONT face=仿宋_GB2312><SPAN lang=EN><FONT size=5>2011</FONT></SPAN>年医学院校紧缺专业毕业生，现就</FONT></SPAN><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312; mso-hansi-font-family: 华文仿宋\">有关事项通知如下：<SPAN lang=EN><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></SPAN></P>\r\n<P class=MsoNormal style=\"MARGIN: 0cm 0cm 0pt 0.05pt; TEXT-INDENT: 33.1pt; LINE-HEIGHT: 35pt; mso-char-indent-count: 2.07; mso-line-height-rule: exactly\"><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312; mso-hansi-font-family: 华文仿宋\">一、招聘专业及条件：<SPAN lang=EN><o:p></o:p></SPAN></SPAN></P>\r\n<P class=MsoNormal style=\"MARGIN: 0cm 0cm 0pt 0.05pt; TEXT-INDENT: 33.1pt; LINE-HEIGHT: 35pt; mso-char-indent-count: 2.07; mso-line-height-rule: exactly\"><SPAN lang=EN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312; mso-hansi-font-family: 华文仿宋\">1</SPAN><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312; mso-hansi-font-family: 华文仿宋\">、招聘专业及计划：提前招聘专业为临床医学、儿科、妇产科、医学影像、心电图、医学检验、口腔医学、耳鼻喉、病理、麻醉、中医、药学、预防医学（公共卫生）、妇幼保健、护理等<FONT face=仿宋_GB2312><SPAN lang=EN><FONT size=5>15</FONT></SPAN>个专业，提前招聘计划<SPAN lang=EN><FONT size=5>153</FONT></SPAN>名，其中县级医疗机构<SPAN lang=EN><FONT size=5>80</FONT></SPAN>名，中心卫生院<SPAN lang=EN><FONT size=5>73</FONT></SPAN>名。临床医学专业硕士研究生可按实际数招聘。招聘计划分配详见附表。<SPAN lang=EN><o:p></o:p></SPAN></FONT></SPAN></P>\r\n<P class=MsoNormal style=\"MARGIN: 0cm 0cm 0pt 0.05pt; TEXT-INDENT: 33.1pt; LINE-HEIGHT: 35pt; mso-char-indent-count: 2.07; mso-line-height-rule: exactly\"><SPAN lang=EN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312; mso-hansi-font-family: 华文仿宋\">2</SPAN><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312; mso-hansi-font-family: 华文仿宋\">、学历条件：<FONT face=仿宋_GB2312><SPAN lang=EN><FONT size=5>2011</FONT></SPAN>年全日制普通高校医学类专业应届毕业生，具有本科学历、学士学位。<SPAN lang=EN><o:p></o:p></SPAN></FONT></SPAN></P>\r\n<P class=MsoNormal style=\"MARGIN: 0cm 0cm 0pt 0.05pt; TEXT-INDENT: 33.1pt; LINE-HEIGHT: 35pt; mso-char-indent-count: 2.07; mso-line-height-rule: exactly\"><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312; mso-hansi-font-family: 华文仿宋\">其中临床医学专业县级医疗机构招收为普通高校第一批次录取，中心卫生院为普通高校第二批次以上录取的高校毕业生；心电图、医学检验、麻醉、中医、药学等专业招收为普通高校第二批次录取的毕业生；药学预防医学（公共卫生）专业招收为普通高校第一批次录取的高校毕业生。<SPAN lang=EN><o:p></o:p></SPAN></SPAN></P>\r\n<P class=MsoNormal style=\"MARGIN: 0cm 0cm 0pt 0.05pt; TEXT-INDENT: 33.1pt; LINE-HEIGHT: 35pt; mso-char-indent-count: 2.07; mso-line-height-rule: exactly\"><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312; mso-hansi-font-family: 华文仿宋\">二、招聘办法：<SPAN lang=EN><o:p></o:p></SPAN></SPAN></P>\r\n<P class=MsoNormal style=\"MARGIN: 0cm 0cm 0pt 0.05pt; TEXT-INDENT: 33.1pt; LINE-HEIGHT: 35pt; mso-char-indent-count: 2.07; mso-line-height-rule: exactly\"><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312\">现场招聘与直接报名。各地组织的人才交流会，毕业生供需见面会，组织现场报名；符合提前招聘条件并属本县生源的也可到县卫生局政工科直接报名（报名时携带身份证、户口簿、学生证、就业协议书、推荐表等原件和复印件），报名时间截止至 <?xml:namespace prefix = st1 ns = \"urn:schemas-microsoft-com:office:smarttags\" /><st1:chsdate Year=\"2010\" Month=\"12\" Day=\"15\" IsLunarDate=\"False\" IsROCDate=\"False\" w:st=\"on\"><FONT face=仿宋_GB2312><SPAN lang=EN><FONT size=5>2010</FONT></SPAN>年<SPAN lang=EN><FONT size=5>12</FONT></SPAN>月<SPAN lang=EN><FONT size=5>15</FONT></SPAN>日</FONT></st1:chsdate>，报名结束后组织专家组，对符合条件的学生组织面试，结合在校学习成绩，按公开、公平、竞争、择优的原则，经双向选择，可签订就业协议（</SPAN><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312; mso-hansi-font-family: 华文仿宋\">同等条件苍南生源毕业生优先聘用</SPAN><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312\">）。</SPAN><SPAN lang=EN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312; mso-hansi-font-family: 华文仿宋\"><o:p></o:p></SPAN></P>\r\n<P class=MsoNormal style=\"MARGIN: 0cm 0cm 0pt 0.05pt; TEXT-INDENT: 33.1pt; LINE-HEIGHT: 35pt; mso-char-indent-count: 2.07; mso-line-height-rule: exactly\"><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312\">三、其它事项：<SPAN lang=EN><o:p></o:p></SPAN></SPAN></P>\r\n<P class=MsoNormal style=\"MARGIN: 0cm 0cm 0pt 0.05pt; TEXT-INDENT: 33.1pt; LINE-HEIGHT: 35pt; mso-char-indent-count: 2.07; mso-line-height-rule: exactly\"><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312\">凡提前签订就业协议的应届毕业生，需在<FONT face=仿宋_GB2312><SPAN lang=EN><FONT size=5>2011</FONT></SPAN>年<SPAN lang=EN><FONT size=5>7</FONT></SPAN>月底前必须获得相应的学历和学位证书等，经体检、考核合格的予以办理聘用手续。<SPAN lang=EN><o:p></o:p></SPAN></FONT></SPAN></P>\r\n<P class=MsoNormal style=\"MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 35pt; mso-line-height-rule: exactly\"><SPAN lang=EN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312\"><o:p>&nbsp;</o:p></SPAN></P>\r\n<P class=MsoNormal style=\"MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 35pt; mso-line-height-rule: exactly\"><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312\">&nbsp;&nbsp;&nbsp; 附件：<FONT face=仿宋_GB2312><SPAN lang=EN><FONT size=5>2011</FONT></SPAN>年苍南县医疗卫生单位提前招聘医学类紧缺专业毕业生计划表</FONT></SPAN><SPAN lang=EN style=\"FONT-SIZE: 16pt\"><o:p></o:p></SPAN></P>\r\n<P class=MsoNormal style=\"MARGIN: 0cm 0cm 0pt 0.05pt; TEXT-INDENT: 33.1pt; LINE-HEIGHT: 35pt; mso-char-indent-count: 2.07; mso-line-height-rule: exactly\"><SPAN lang=EN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312\"><o:p>&nbsp;</o:p></SPAN></P>\r\n<P class=MsoNormal style=\"MARGIN: 0cm 0cm 0pt 0.05pt; WORD-BREAK: break-all; TEXT-INDENT: 33.1pt; LINE-HEIGHT: 35pt; TEXT-ALIGN: right; mso-char-indent-count: 2.07; mso-line-height-rule: exactly\" align=right><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312\">苍南县人事局 <SPAN lang=EN><FONT size=5><FONT face=仿宋_GB2312><SPAN style=\"mso-spacerun: yes\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><o:p></o:p></FONT></FONT></SPAN></SPAN></P>\r\n<P class=MsoNormal style=\"MARGIN: 0cm 0cm 0pt 0.05pt; WORD-BREAK: break-all; TEXT-INDENT: 33.1pt; LINE-HEIGHT: 35pt; TEXT-ALIGN: right; mso-char-indent-count: 2.07; mso-line-height-rule: exactly\" align=right><st1:chsdate Year=\"2010\" Month=\"11\" Day=\"22\" IsLunarDate=\"False\" IsROCDate=\"False\" w:st=\"on\"><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312\">二</SPAN><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 宋体; mso-bidi-font-family: 宋体\">〇</SPAN><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312; mso-hansi-font-family: 仿宋_GB2312; mso-bidi-font-family: 仿宋_GB2312\">一</SPAN><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 宋体; mso-bidi-font-family: 宋体\">〇</SPAN><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312; mso-hansi-font-family: 仿宋_GB2312; mso-bidi-font-family: 仿宋_GB2312\">年十一月二十二</SPAN><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312\">日</SPAN></st1:chsdate><SPAN style=\"FONT-SIZE: 16pt; FONT-FAMILY: 仿宋_GB2312\"> <SPAN lang=EN><FONT size=5><FONT face=仿宋_GB2312><SPAN style=\"mso-spacerun: yes\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</SPAN><o:p></o:p></FONT></FONT></SPAN></SPAN></P></TD></TR>\r\n<TR>\r\n<TD class=text3 id=idfj style=\"HEIGHT: 19px\" align=right colSpan=2>\r\n<P id=tttttt align=left><FONT face=宋体 color=blue>附件下载：</FONT> </P></TD></TR>\r\n<TR>\r\n<TD class=text3 style=\"WIDTH: 93px; HEIGHT: 21px\" align=left width=93 height=21></TD>\r\n<TD class=text3 id=idFuJian style=\"HEIGHT: 21px\" align=left width=\"88%\" height=21><A href=\"http://www.cnrsj.com/upload/xinxi/2010112216040021_需求计划表.xls\"><IMG alt=点击下载 src=\"http://www.cnrsj.com/image/sattach.bmp\" border=0> 2011年度苍南县医疗卫生单位提前招收医学院校毕业生需求计划表</A><BR><BR></TD></TR></TBODY></TABLE>', 'hsg', 'upload/1317086056687.jpg', '52', '2016-03-19 11:46:55');
INSERT INTO `xinwentongzhi` VALUES ('19', '关于流动人口专职协管员招聘公告', '通知公告', '<DIV align=left>&nbsp;&nbsp;&nbsp; 为加强我镇流动人口的管理，促进流动人口服务管理工作更好的开展，根据苍委发[2011]8号《县委、县政府关于加强流动人口服务管理工作的实施意见》文件精神，经镇党委研究，决定面向社会公开招聘17名流动人口协管员，其中男性13名，女性4名。现将有关事项公告如下：</DIV>\r\n<DIV align=left><B>一、招聘条件</B></DIV>\r\n<DIV align=left>&nbsp;&nbsp;&nbsp; 1、遵纪守法，作风正派，为人公正，责任心强，无社会治安不良记录和违反计划生育政策；</DIV>\r\n<DIV align=left>&nbsp;&nbsp;&nbsp; 2、身体健康，具有正常履行职责的身体条件和工作能力。</DIV>\r\n<DIV align=left>&nbsp;&nbsp;&nbsp; 3、熟悉群众工作，热爱流动人口服务管理工作，具有一定法律法规、政策知识；</DIV>\r\n<DIV align=left>&nbsp;&nbsp;&nbsp; 4、苍南县户籍（派出所登记时间截止至2011年12月12日），年龄30周岁以下（1981年12月12日以后出生），具有大专以上学历。</DIV>\r\n<DIV align=left>&nbsp;&nbsp;&nbsp; 5、在同等条件下，钱库镇户籍的优先录用</DIV>\r\n<DIV align=left><B>二、招聘方式</B></DIV>\r\n<DIV align=left>&nbsp;&nbsp;&nbsp; 坚持德才兼备的用人标准，按照“公开、公平、公正”的原则，经资格审查、笔试、面试、体检、政审等程序后择优录取。</DIV>\r\n<DIV align=left><B>三、报名时间、地点和要求</B></DIV>\r\n<DIV align=left>&nbsp;&nbsp;&nbsp; 1、报名时间：2011年12月13日至12月16日（上午8：30时至11:00时，下午2:00时至5:00时）；</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 2、报名地点：钱库镇党群办（镇政府306办公室）。</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 咨询电话：0577-59875626；</DIV>\r\n<DIV align=left>&nbsp;&nbsp;&nbsp; 3、报名要求：报名人员在规定时间内凭本人身份证、户口本、学历证书原件及复印件等资格证书资料的原件和复印件，近期1寸正面免冠近照3张，办理报名手续；</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 4、资格审查：报考者应如实、准确填写报名表，由招聘单位进行资格审查。如弄虚作假或隐瞒有关情况骗取报名和招聘的，取消报考者的报名或聘用资格，所造成的一切损失由报考者本人承担。<B></B></DIV>\r\n<DIV align=left><B>四、考试事项</B></DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 考试采用笔试和面试相结合的分数评定法。笔试占总成绩的60%，面试占总成绩的40%。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp;&nbsp; 1、笔试：时事政治、计算机应用基础、逻辑推理、《浙江省流动人口居住登记条例》、《浙江省居住房屋出租登记管理办法》、《苍南县流动人口专职协管员管理办法》、《流动人口婚育证明管理规定》、《流动人口计划生育工作条例》等相关知识，时间、地点另行通知。</DIV>\r\n<DIV align=left>&nbsp;&nbsp;&nbsp;&nbsp; 2、面试：根据笔试成绩的高低顺序，按照招聘人数1：1.5的比例确定面试对象（男女分开）。如遇最后一名同分的，则一并列为面试对象。面试主要考察应试者的综合素质和专业能力。</DIV>\r\n<DIV>　&nbsp;&nbsp; <B>五、体检和政审</B></DIV>\r\n<DIV align=left>&nbsp;&nbsp;&nbsp;&nbsp; 对考试合格的考生依综合成绩的高低顺序，按招聘人数等额确定体检和政审人选。体检由招聘单位参照《公务员录用体检标准》统一组织进行，体检合格后，由招聘单位组织人员通过走访、审档等形式进行政审。体检和政审不合格的，可依次递补人选。</DIV>\r\n<DIV align=left><B>六、聘用：</B></DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp;&nbsp; 体检、考核合格人员，经公示一周期满后，没有反映问题的，按有关规定办理录用手续。受聘人员与县新居民服务管理局签订劳动合同，聘用合同采用书面形式，一式三份，当事人双方各执一份，一份存入个人档案。</DIV>\r\n<DIV align=left><B>七、其他事项：</B></DIV>\r\n<DIV align=left>&nbsp;&nbsp;&nbsp;&nbsp; 实际报名人数与岗位拟招聘人数比例原则应达1.5：1以上方可开考，达不到规定比例，相应减少职位数。</DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV align=center>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</DIV>\r\n<DIV align=right>钱库镇人民政府</DIV>\r\n<DIV align=right>2011 年12月13日</DIV>', 'hsg', 'upload/1317085936937.jpg', '35', '2016-03-19 11:46:55');
INSERT INTO `xinwentongzhi` VALUES ('20', '关于办理公交IC卡的通知', '通知公告', '<P style=\"LINE-HEIGHT: 40pt; TEXT-INDENT: 36pt; MARGIN: 0cm 0cm 0pt; mso-char-indent-count: 2.0; mso-line-height-rule: exactly\" class=MsoNormal><SPAN style=\"FONT-FAMILY: 宋体; FONT-SIZE: 18pt; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">根据</SPAN><SPAN style=\"FONT-SIZE: 18pt\" lang=EN-US><FONT face=\"Times New Roman\">2010</FONT></SPAN><SPAN style=\"FONT-FAMILY: 宋体; FONT-SIZE: 18pt; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">年</SPAN><SPAN style=\"FONT-SIZE: 18pt\" lang=EN-US><FONT face=\"Times New Roman\">11</FONT></SPAN><SPAN style=\"FONT-FAMILY: 宋体; FONT-SIZE: 18pt; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">月</SPAN><SPAN style=\"FONT-SIZE: 18pt\" lang=EN-US><FONT face=\"Times New Roman\">5</FONT></SPAN><SPAN style=\"FONT-FAMILY: 宋体; FONT-SIZE: 18pt; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">日温州市老龄办主任会议的精神，有子女落户在温州市区的</SPAN><SPAN style=\"FONT-SIZE: 18pt\" lang=EN-US><FONT face=\"Times New Roman\">70</FONT></SPAN><SPAN style=\"FONT-FAMILY: 宋体; FONT-SIZE: 18pt; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">岁以上老人可免费办理公交</SPAN><SPAN style=\"FONT-SIZE: 18pt\" lang=EN-US><FONT face=\"Times New Roman\">IC</FONT></SPAN><SPAN style=\"FONT-FAMILY: 宋体; FONT-SIZE: 18pt; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">卡，免费在温州市区乘坐公交车辆；</SPAN><SPAN style=\"FONT-SIZE: 18pt\" lang=EN-US><FONT face=\"Times New Roman\">60-69</FONT></SPAN><SPAN style=\"FONT-FAMILY: 宋体; FONT-SIZE: 18pt; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">岁老年人如要办理公交</SPAN><SPAN style=\"FONT-SIZE: 18pt\" lang=EN-US><FONT face=\"Times New Roman\">IC</FONT></SPAN><SPAN style=\"FONT-FAMILY: 宋体; FONT-SIZE: 18pt; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">卡需每年交</SPAN><SPAN style=\"FONT-SIZE: 18pt\" lang=EN-US><FONT face=\"Times New Roman\">25</FONT></SPAN><SPAN style=\"FONT-FAMILY: 宋体; FONT-SIZE: 18pt; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">元保险费。登记办理者每人应交身份证复印件一张，于</SPAN><SPAN style=\"FONT-SIZE: 18pt\" lang=EN-US><FONT face=\"Times New Roman\">11</FONT></SPAN><SPAN style=\"FONT-FAMILY: 宋体; FONT-SIZE: 18pt; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">月</SPAN><SPAN style=\"FONT-SIZE: 18pt\" lang=EN-US><FONT face=\"Times New Roman\">30</FONT></SPAN><SPAN style=\"FONT-FAMILY: 宋体; FONT-SIZE: 18pt; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">日前将上报我办，逾期不报作自动放弃论。</SPAN><SPAN style=\"FONT-SIZE: 18pt\" lang=EN-US><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></P>\r\n<P style=\"TEXT-INDENT: 31.5pt; MARGIN: 0cm 0cm 0pt\" class=MsoNormal><SPAN style=\"FONT-SIZE: 18pt\" lang=EN-US><o:p><FONT face=\"Times New Roman\">&nbsp;</FONT></o:p></SPAN></P>\r\n<P style=\"TEXT-INDENT: 31.5pt; MARGIN: 0cm 0cm 0pt\" class=MsoNormal><SPAN style=\"FONT-SIZE: 18pt\" lang=EN-US><o:p><FONT face=\"Times New Roman\">&nbsp;</FONT></o:p></SPAN></P>\r\n<P style=\"TEXT-INDENT: 31.5pt; MARGIN: 0cm 0cm 0pt\" class=MsoNormal><SPAN style=\"FONT-SIZE: 18pt\" lang=EN-US><o:p><FONT face=\"Times New Roman\">&nbsp;</FONT></o:p></SPAN></P>\r\n<P style=\"TEXT-ALIGN: right; TEXT-INDENT: 31.5pt; MARGIN: 0cm 18pt 0pt 0cm\" class=MsoNormal align=right><SPAN style=\"FONT-FAMILY: 宋体; FONT-SIZE: 18pt; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">钱库镇民政办</SPAN><SPAN style=\"FONT-SIZE: 18pt\" lang=EN-US><o:p></o:p></SPAN></P>\r\n<P style=\"TEXT-ALIGN: right; TEXT-INDENT: 31.5pt; MARGIN: 0cm 0cm 0pt\" class=MsoNormal align=right><?xml:namespace prefix = st1 ns = \"urn:schemas-microsoft-com:office:smarttags\" /><st1:chsdate w:st=\"on\" IsROCDate=\"False\" IsLunarDate=\"False\" Day=\"19\" Month=\"11\" Year=\"2010\"><SPAN style=\"FONT-SIZE: 18pt\" lang=EN-US><FONT face=\"Times New Roman\">2010</FONT></SPAN><SPAN style=\"FONT-FAMILY: 宋体; FONT-SIZE: 18pt; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">年</SPAN><SPAN style=\"FONT-SIZE: 18pt\" lang=EN-US><FONT face=\"Times New Roman\">11</FONT></SPAN><SPAN style=\"FONT-FAMILY: 宋体; FONT-SIZE: 18pt; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">月</SPAN><SPAN style=\"FONT-SIZE: 18pt\" lang=EN-US><FONT face=\"Times New Roman\">19</FONT></SPAN><SPAN style=\"FONT-FAMILY: 宋体; FONT-SIZE: 18pt; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">日</SPAN></st1:chsdate><SPAN style=\"FONT-SIZE: 18pt\" lang=EN-US><o:p></o:p></SPAN></P>', 'hsg', 'upload/1317085922265.jpg', '37', '2016-03-19 11:46:55');
INSERT INTO `xinwentongzhi` VALUES ('21', '国务院关于促进房地产市场持续健康发展的通知', '通知公告', '<P style=\"MARGIN-TOP: 0px; FONT-SIZE: 10.5pt; MARGIN-BOTTOM: 0px; LINE-HEIGHT: 16pt; TEXT-ALIGN: center\" align=center><SPAN style=\"FONT-SIZE: 10.5pt; COLOR: black; FONT-FAMILY: 楷体_GB2312\">（2003年8月12日国发[2003]18号）</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; LINE-HEIGHT: 16pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\"></SPAN>&nbsp;</P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">各省、自治区、直辖市人民政府，国务院各部委、各直属机构：</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 21pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">《国务院关于进一步深化城镇住房制度改革加快住房建设的通知》（国发〔1998〕23号）发布五年来，城镇住房制度改革深入推进，住房建设步伐加快，住房消费有效启动，居民住房条件有了较大改善。以住宅为主的房地产市场不断发展，对拉动经济增长和提高人民生活水平发挥了重要作用。同时应当看到，当前我国房地产市场发展还不平衡，一些地区住房供求的结构性矛盾较为突出，房地产价格和投资增长过快；房地产市场服务体系尚不健全，住房消费还需拓展；房地产开发和交易行为不够规范，对房地产市场的监管和调控有待完善。为促进房地产市场持续健康发展，现就有关问题通知如下：</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 21pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">一、提高认识，明确指导思想</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 15.75pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">（一）充分认识房地产市场持续健康发展的重要意义。房地产业关联度高，带动力强，已经成为国民经济的支柱产业。促进房地产市场持续健康发展，是提高居民住房水平，改善居住质量，满足人民群众物质文化生活需要的基本要求；是促进消费，扩大内需，拉动投资增长，保持国民经济持续快速健康发展的有力措施；是充分发挥人力资源优势，扩大社会就业的有效途径。实现房地产市场持续健康发展，对于全面建设小康社会，加快推进社会主义现代化具有十分重要的意义。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 15.75pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">（二）进一步明确房地产市场发展的指导思想。要坚持住房市场化的基本方向，不断完善房地产市场体系，更大程度地发挥市场在资源配置中的基础性作用；坚持以需求为导向，调整供应结构，满足不同收入家庭的住房需要；坚持深化改革，不断消除影响居民住房消费的体制性和政策性障碍，加快建立和完善适合我国国情的住房保障制度；坚持加强宏观调控，努力实现房地产市场总量基本平衡，结构基本合理，价格基本稳定；坚持在国家统一政策指导下，各地区因地制宜，分别决策，使房地产业的发展与当地经济和社会发展相适应，与相关产业相协调，促进经济社会可持续发展。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 21pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">二、完善供应政策，调整供应结构</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 15.75pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">（三）完善住房供应政策。各地要根据城镇住房制度改革进程、居民住房状况和收入水平的变化，完善住房供应政策，调整住房供应结构，逐步实现多数家庭购买或承租普通商品住房；同时，根据当地情况，合理确定经济适用住房和廉租住房供应对象的具体收入线标准和范围，并做好其住房供应保障工作。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 15.75pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">（四）加强经济适用住房的建设和管理。经济适用住房是具有保障性质的政策性商品住房。要通过土地划拨、减免行政事业性收费、政府承担小区外基础设施建设、控制开发贷款利率、落实税收优惠政策等措施，切实降低经济适用住房建设成本。对经济适用住房，要严格控制在中小套型，严格审定销售价格，依法实行建设项目招投标。经济适用住房实行申请、审批和公示制度，具体办法由市（县）人民政府制定。集资、合作建房是经济适用住房建设的组成部分，其建设标准、参加对象和优惠政策，按照经济适用住房的有关规定执行。任何单位不得以集资、合作建房名义，变相搞实物分房或房地产开发经营。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 15.75pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">（五）增加普通商品住房供应。要根据市场需求，采取有效措施加快普通商品住房发展，提高其在市场供应中的比例。对普通商品住房建设，要调控土地供应，控制土地价格，清理并逐步减少建设和消费的行政事业性收费项目，多渠道降低建设成本，努力使住房价格与大多数居民家庭的住房支付能力相适应。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 15.75pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">（六）建立和完善廉租住房制度。要强化政府住房保障职能，切实保障城镇最低收入家庭基本住房需求。以财政预算资金为主，多渠道筹措资金，形成稳定规范的住房保障资金来源。要结合当地财政承受能力和居民住房的实际情况，合理确定保障水平。最低收入家庭住房保障原则上以发放租赁补贴为主，实物配租和租金核减为辅。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 15.75pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">（七）控制高档商品房建设。各地要根据实际情况，合理确定高档商品住房和普通商品住房的划分标准。对高档、大户型商品住房以及高档写字楼、商业性用房积压较多的地区，要控制此类项目的建设用地供应量，或暂停审批此类项目。也可以适当提高高档商品房等开发项目资本金比例和预售条件。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 21pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">三、改革住房制度，健全市场体系</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 15.75pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">（八）继续推进现有公房出售。对能够保证居住安全的非成套住房，可根据当地实际情况向职工出售。对权属有争议的公有住房，由目前房屋管理单位出具书面具结保证后，向职工出售。对因手续不全等历史遗留问题影响公有住房出售和权属登记发证的，由各地制定政策，明确界限，妥善处理。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 15.75pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">（九）完善住房补贴制度。要严格执行停止住房实物分配的有关规定，认真核定住房补贴标准，并根据补贴资金需求和财力可能，加大住房补贴资金筹集力度，切实推动住房补贴发放工作。对直管公房和财政负担单位公房出售的净收入，要按照收支两条线管理的有关规定，统筹用于发放住房补贴。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 15.75pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">（十）搞活住房二级市场。要认真清理影响已购公有住房上市交易的政策性障碍，鼓励居民换购住房。除法律、法规另有规定和原公房出售合同另有约定外，任何单位不得擅自对已购公有住房上市交易设置限制条件。各地可以适当降低已购公有住房上市出售土地收益缴纳标准；以房改成本价购买的公有住房上市出售时，原产权单位原则上不再参与所得收益分配。要依法加强房屋租赁合同登记备案管理，规范发展房屋租赁市场。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 15.75pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">（十一）规范发展市场服务。要健全房地产中介服务市场规则，严格执行房地产经纪人、房地产估价师执（职）业资格制度，为居民提供准确的信息和便捷的服务。规范发展住房装饰装修市场，保证工程质量。贯彻落实《<A href=\"http://www.soufun.com/2003-6-19/167607.htm\" target=_blank><SPAN style=\"COLOR: black; TEXT-DECORATION: none; text-underline: none\">物业管理条例</SPAN></A>》，切实改善住房消费环境。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 21pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">四、发展住房信贷，强化管理服务</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 15.75pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">（十二）加大住房公积金归集和贷款发放力度。要加强住房公积金归集工作，大力发展住房公积金委托贷款，简化手续，取消不合理收费，改进服务，方便职工贷款。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 15.75pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">（十三）完善个人住房贷款担保机制。要加强对住房置业担保机构的监管，规范担保行为，建立健全风险准备金制度，鼓励其为中低收入家庭住房贷款提供担保。对无担保能力和担保行为不规范的担保机构，要加快清理，限期整改。加快完善住房置业担保管理办法，研究建立全国个人住房贷款担保体系。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 15.75pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">（十四）加强房地产贷款监管。对符合条件的房地产开发企业和房地产项目，要继续加大信贷支持力度。同时要加强房地产开发项目贷款审核管理，严禁违规发放房地产贷款；加强对预售款和信贷资金使用方向的监督管理，防止挪作他用。要加快建立个人征信系统，完善房地产抵押登记制度，严厉打击各种骗贷骗资行为。要妥善处理过去违规发放或取得贷款的项目，控制和化解房地产信贷风险，维护金融稳定。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 21pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">五、改进规划管理，调控土地供应</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 15.75pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">（十五）制定住房建设规划和住宅产业政策。各地要编制并及时修订完善房地产业和住房建设发展中长期规划，加强对房地产业发展的指导。要充分考虑城镇化进程所产生的住房需求，高度重视小城镇住房建设问题。制定和完善住宅产业的经济、技术政策，健全推进机制，鼓励企业研发和推广先进适用的建筑成套技术、产品和材料，促进住宅产业现代化。完善住宅性能认定和住宅部品认证、淘汰的制度。坚持高起点规划、高水平设计，注重住宅小区的生态环境建设和住宅内部功能设计。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 15.75pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">（十六）充分发挥城乡规划的调控作用。在城市总体规划和近期建设规划中，要合理确定各类房地产用地的布局和比例，优先落实经济适用住房、普通商品住房、危旧房改造和城市基础设施建设中的拆迁安置用房建设项目，并合理配置市政配套设施。各类开发区以及撤市（县）改区后的土地，都要纳入城市规划统一管理。严禁下放规划审批权限，对房地产开发中各种违反城市规划法律法规的行为，要依法追究有关责任人的责任。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 15.75pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">（十七）加强对土地市场的宏观调控。各地要健全房地产开发用地计划供应制度，房地产开发用地必须符合土地利用总体规划和年度计划，严格控制占用耕地，不得下放土地规划和审批权限。利用原划拨土地进行房地产开发的，必须纳入政府统一供地渠道，严禁私下交易。土地供应过量、闲置建设用地过多的地区，必须限制新的土地供应。普通商品住房和经济适用住房供不应求、房价涨幅过大的城市，可以按规定适当调剂增加土地供应量。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 21pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">六、加强市场监管，整顿市场秩序</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 15.75pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">（十八）完善市场监管制度。加强对房地产企业的资质管理和房地产开发项目审批管理，严格执行房地产开发项目资本金制度、项目手册制度，积极推行业主工程款支付担保制度。支持具有资信和品牌优势的房地产企业通过兼并、收购和重组，形成一批实力雄厚、竞争力强的大型企业和企业集团。严格规范房地产项目转让行为。已批准的房地产项目，确需变更用地性质和规划指标的，必须按规定程序重新报批。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 15.75pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">（十九）建立健全房地产市场信息系统和预警预报体系。要加强房地产市场统计工作，完善全国房地产市场信息系统，建立健全房地产市场预警预报体系。各地房地产市场信息系统和预警预报体系建设中需要政府承担的费用，由各地财政结合当地信息化系统和电子政务建设一并落实。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 15.75pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">（二十）整顿和规范房地产市场秩序。要加大房地产市场秩序专项整治力度，重点查处房地产开发、交易、中介服务和物业管理中的各种违法违规行为。坚决制止一些单位和部门强制消费者接受中介服务以及指定中介服务机构的行为。加快完善房地产信用体系，强化社会监督。采取积极措施，加快消化积压商品房。对空置量大的房地产开发企业，要限制其参加土地拍卖和新项目申报。进一步整顿土地市场秩序，严禁以科技、教育等产业名义取得享受优惠政策的土地后用于房地产开发，严禁任何单位和个人与乡村签订协议圈占土地，使用农村集体土地进行房地产开发。切实加强源头管理，有效遏制并预防住房制度改革和房地产交易中的各种腐败行为。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 21pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">地方各级人民政府要认真贯彻国家宏观调控政策，从实际出发，完善房地产市场调控办法，建立有效的协调机制，并对本地房地产市场的健康发展负责。省级人民政府要加强对市、县房地产发展工作的指导和监督管理。国务院有关部门要各司其职，分工协作，加强对各地特别是问题突出地区的指导和督查。国家发展改革、财政、国土、银行、税务等部门要调整和完善相关的政策措施。建设部要会同有关部门抓紧制定经济适用住房管理、住房补贴制度监督、健全房地产市场信息系统和预警预报体系、建立全国个人住房贷款担保体系等方面的实施办法，指导各地具体实施并负责对本通知贯彻落实情况的监督检查。</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 21pt; LINE-HEIGHT: 18.5pt\"><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\"></SPAN>&nbsp;</P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 378pt; LINE-HEIGHT: 18.5pt\" align=right><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">国务院</SPAN></P>\r\n<P style=\"MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; TEXT-INDENT: 354.4pt; LINE-HEIGHT: 18.5pt\" align=right><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">2003</SPAN><SPAN style=\"COLOR: black; FONT-FAMILY: 宋体\">年8月12日</SPAN></P>', 'hsg', null, '58', '2016-03-19 11:46:55');
INSERT INTO `xinwentongzhi` VALUES ('22', '关于开展“交运”杯温州市第三届青年摄影大赛的通知', '通知公告', '<DIV>各县（市、区）团委、市级功能区团委，市直各单位团组织：</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 为全面反映温州经济、社会建设、时代变迁和人民美好生活等方面的巨大成就,促进青年摄影爱好者之间的沟通交流，凝聚社会力量，营造良好的文化氛围，助推我市经济社会转型发展。共青团温州市委、温州交通运输集团决定联合举办“交运”杯温州市第三届青年摄影大赛。</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp;&nbsp;一、比赛主题：“美丽温州，青年在行动”青年摄影大赛</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 二、主办单位： 共青团温州市委&nbsp; </DIV>\r\n<DIV>承办单位： 温州市团校、温州都市报、</DIV>\r\n<DIV>温州市摄影家协会、温州交通运输集团团委</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 三、活动时间：2013年5月15日—10月15日，</DIV>\r\n<DIV>作品收录截止时间：2013年10月15日（以当地邮戳为准。）</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 四、参赛内容：本次摄影大赛对象为青年，以“美丽温州，青年在行动”为主题，作品主题要弘扬先进文化主旋律，展示温州风光、人物风采、青年工作及生活场景等积极向上的精神风貌和时代风采，用摄影的艺术手段再现我市青年在参与温州经济建设、反映时代变迁和青年成长成才、建功立业、促进社会和谐等方面的精彩瞬间。</DIV>\r\n<DIV>本次征稿活动要突出“美丽温州，青年在行动”主题，不接收纯风光类和民俗类的作品。所有参赛作品，将在温州市团校网站展出，并举办获奖作品展示活动。</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 五、参赛对象：在我市工作、学习或生活的45周岁以下青年，可由各单位团组织、青年社团推荐参赛，也可以个人直接参赛。 </DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 六、奖项设置： </DIV>\r\n<DIV>本次大赛评选出：一等奖2名；二等奖4名；三等奖6名；优秀奖60名；网络人气奖10名；优秀组织奖若干名。并为获奖者颁发奖杯、证书以及适当的物质奖励。</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 七、参赛规则：　</DIV>\r\n<DIV>1、本次影赛面向全市所有青年摄影爱好者，若被邀担任影赛评委者，不参加比赛。</DIV>\r\n<DIV>2、参赛作品：实物作品与电子版都要报送评审。实物作品送到温州市团校（温州市青少年活动中心青年事务部），邮编：325000，同时必须将作品上传到温州市团校网站<A href=\"http://www.wzstx.net/\">http://www.wzstx.net</A>的“2013年‘交运’杯温州市第三届青年摄影大赛”专页，予以公开展示。获奖作品将在温都论坛上（<A href=\"http://www.wzdsb.net/\">www.wzdsb.net</A>）进行刊登展示。详情请登陆<A href=\"http://www.wzstx.net/\">www.wzstx.net</A> （上传的参赛作品必须加注题目名称、图片说明，这将作为作品评选的一个重要参考内容）</DIV>\r\n<DIV>3、参赛作品PS只限于调色阶、对比度、缩放、裁切和边框，需包含EXIF信息。</DIV>\r\n<DIV>4、参赛作品必须是本人拍摄，不收复制、拷贝、翻拍等手段获取的他人作品。</DIV>\r\n<DIV>5、请勿一稿多投（一稿重复上传或一稿多人上传等），谢绝恶意网络拉票或者多重马甲投票，一经发现并证实，组委会保留取消参赛者资格的权力。</DIV>\r\n<DIV>6、作品不论彩色、黑白、单幅、组照均可参赛。每人最多5张照片，组照以1幅计算，参赛者须自行将组照处理成单幅作品上传。</DIV>\r\n<DIV>7、所有参赛作品所涉及的名誉权、肖像权、著作权等法律责任均由作者本人负责。</DIV>\r\n<DIV>8、主题为展示青年风采的摄影作品，应为近两年新作，已在全国及全省摄影展中获奖的作品，不再参加本次活动。</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 八、作品要求:</DIV>\r\n<DIV>1、作品题材、形式、风格不限，内容积极健康向上，提倡具有新意的新作。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </DIV>\r\n<DIV>2、实物作品：&nbsp;&nbsp;&nbsp; </DIV>\r\n<DIV>① 彩色、黑白、数码照片均可，决赛稿件规格为10英寸，所有照片不需装裱。 </DIV>\r\n<DIV>② 每位作者须完整填写“作品登记卡”，并将“作品登记卡”贴在作品背面左下角，注明作品题目、作者姓名、通讯地址、邮政编码、联系电话（“作品登记卡”卡样附后，参赛编号由承办单位填写）。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </DIV>\r\n<DIV>3、网络作品：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </DIV>\r\n<DIV>① 上传的参赛作品格式为JPEG文件，300k以内，长边900像素为限，黑白、彩色不限。 </DIV>\r\n<DIV>② 上传的参赛作品可用网名，但必须同时提供作品登记卡（获奖作品凭本人身份证领奖）。</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 九、其它事项：</DIV>\r\n<DIV>1、本次青年摄影大赛属公益性活动，不收取任何报名费用；</DIV>\r\n<DIV>2、请作者保存参赛作品的底片或光盘；</DIV>\r\n<DIV>3、本次所有参赛作品主办单位将作档案留存使用。主办单位有权对所有获奖入选作品进行复制、展览、出版画册，并无报酬；</DIV>\r\n<DIV>4、主办单位对本次比赛拥有最终解释权。 </DIV>\r\n<DIV><B></B>&nbsp;</DIV>\r\n<DIV><B></B>&nbsp;</DIV>\r\n<DIV>附件1、2013年“交运”杯温州市第三届青年摄影大赛作品登记卡（一）</DIV>\r\n<DIV>2013年“交运”杯温州市第三届青年摄影大赛（二）</DIV>\r\n<DIV><B></B>&nbsp;</DIV>\r\n<DIV><B></B>&nbsp;</DIV>\r\n<DIV><B></B>&nbsp;</DIV>\r\n<DIV align=right>温州团市委 </DIV>\r\n<DIV align=right>2013年6月24日</DIV>\r\n<DIV><B></B>&nbsp;</DIV>\r\n<DIV><B></B>&nbsp;</DIV>\r\n<DIV><B></B>&nbsp;</DIV>\r\n<DIV align=right>抄送： </DIV>\r\n<P align=right>&nbsp; 共青团温州市委办公室<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2013年6月24日印发</P>', 'hsg', null, '32', '2016-03-19 11:46:55');
INSERT INTO `xinwentongzhi` VALUES ('23', '关于做好陈柱平、钟伟良、毛文国同志先进事迹报告会收看工作的通知', '通知公告', '<DIV>各办事处党委、村党支部<STRONG>：</STRONG></DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 经省委研究，定于9月14日上午9：00在省人民大会堂主会场召开陈柱平、钟伟良、毛文国同志先进事迹报告会。省远程办届时将通过广电、电信前端播出平台“专家在线”栏目对先进事迹报告会进行现场直播。</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 登入路径：浙江省农村党员干部现代远程教育网——浙江——专家在线——陈柱平、钟伟良、毛文国同志先进事迹报告会</DIV>\r\n<DIV>各办事处、村要提前做好集中收看通知，督促终端站点做好各种设备及用户反馈系统的调试工作，确保终端站点设备完好。各站点管理员请准时接收节目，及时组织广大党员群众通过远程教育平台收看。</DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV align=right>中 共 钱 库 镇 委</DIV>\r\n<P align=right>2009年9月11日</P>', 'hsg', null, '44', '2016-03-19 11:46:55');
INSERT INTO `xinwentongzhi` VALUES ('24', '钱库镇人民政府面向社会公开招聘巡防队员的通告', '通知公告', '<DIV align=left>&nbsp;&nbsp;&nbsp; 因工作需要，钱库镇人民政府面向社会公开招聘巡防队员10名，协助钱库派出所巡逻防控、安全保卫、打击违法犯罪等工作。现将有关事项公告如下：</DIV>\r\n<DIV align=left>&nbsp;&nbsp;&nbsp; 一、<B>招聘对象条件</B></DIV>\r\n<DIV align=left>1、热爱祖国，遵纪守法，具有良好的品行；</DIV>\r\n<DIV align=left>2、热爱公安巡防保卫事业，不怕艰苦，工作事业心、责任感强；</DIV>\r\n<DIV align=left>3、年龄在18周岁至30周岁（即1995年1月1日前至1983年1月1日以后出生），男性，高中毕业以上学历，具有苍南县常住户口或钱库镇新居民人员，身高168CM（含168CM）以上，身体健康，无残疾，无口吃，无重听，无色盲，两眼裸眼视力4.8以上。其中退伍军人、警校体校毕业人员，可优先考虑。</DIV>\r\n<DIV align=left><B>&nbsp;&nbsp;&nbsp; 二、招聘程序</B></DIV>\r\n<DIV align=left>1、报名目测：五官、肢体等有缺陷者不予报名。</DIV>\r\n<DIV align=left>2、体能测试：测试内容为100米、1000米、铅球；成绩套用公安机关录用人民警察《体能测试评分标准与方法》计算。</DIV>\r\n<DIV align=left>3、面试：报名人员在规定的时间、地点，携带本人身份证参加面试。</DIV>\r\n<DIV align=left>4、体检：根据报名人数、体能测试、面试成绩，按岗位匹配需要择优确定体检人员名单。参加体检人员须于规定时间内参加统一体检，体检费用自理。</DIV>\r\n<DIV align=left>5、政审：由钱库派出所对参报人员本人及社会主要关系人的现实表现，有无违法犯罪前科、有无参加邪教组织等情况进行审核。</DIV>\r\n<DIV align=left>6、录用：对合格人员，由钱库镇人民政府办理相关录用手续，派遣到钱库派出所工作。</DIV>\r\n<DIV align=left><B>&nbsp;&nbsp;&nbsp; 三、报名办法：</B></DIV>\r\n<DIV align=left>1、报名时间：2013年7月24日——7月31日，上午：8：30——12：00，下午2：30——5：00，逾期不予报名。</DIV>\r\n<DIV align=left>2、报名地点：钱库派出所304办公室，咨询电话：0577-59860108，或15888705630。</DIV>\r\n<DIV align=left>3、报名时须携带本人身份证、毕业证书、户口簿、其他相关证件的原件及复印件，近期免冠正面一寸照片3张，填写《钱库镇人民政府公开招聘临时人员报名表》。</DIV>\r\n<DIV align=left><B>&nbsp;&nbsp;&nbsp; 四、其他事项</B></DIV>\r\n<DIV>1、报名后不按规定参加体能测试、面试、体检者按自动放弃处理。</DIV>\r\n<DIV>2、聘用人员实行试用期制度，经试岗期三个月鉴定合格，予以正式聘用。聘用人员工资、福利待遇按钱库镇人民政府有关规定执行（享有五险一金待遇）。</DIV>\r\n<DIV>3、本招聘公告最终解释权归钱库镇人民政府。<BR><BR><BR></DIV>\r\n<DIV>&nbsp;</DIV>\r\n<DIV align=right>钱库镇人民政府</DIV>\r\n<DIV align=right>二〇一三年七月二十四日</DIV>', 'hsg', null, '84', '2016-03-19 11:46:55');
INSERT INTO `xinwentongzhi` VALUES ('25', '9月6日—9月10日停电通知', '通知公告', '<P>因供电设备检修(如遇雨天延期），现安排下两周停电线路希各相关用户做好安排。</P>\r\n<P>星期一 9月6日 西城606线 西城路、西一街等 7:00-19:00&nbsp;</P><!--advertisement code begin--><!--advertisement code end-->\r\n<P>星期二 9月7日 象河629线 张东626线 余北627线 新河643线 江山办事处、平等办事处 6:00-20:00&nbsp;</P>\r\n<P>星期三 9月8日 前陈681线 曙光684线&nbsp;通港路、龙翔路等 7:00-19:00 金二549线 北站变、狮山后变、营房变、狮山公园变、环中变、环二变、城中变、三中，广电站、农业银行、建信印务公司、金峰厂、蓝达印务、镭达包装有限公司、苍南万博礼品有限公司 7:00-18:00&nbsp;</P>\r\n<P>星期五 9月10日 通港625线 金钗637线 西三街、纺织街等 8:00-18:00金河759线 夏八美村、后半洋村、前半洋村、灵峰村、灵峰黄村、大处基村、汤干洋村、上堡村、冯店村、坊下村、河头村、底店村、彭家堡村、前张村 7:00-18:00</P>\r\n<SCRIPT>\r\n	var str = \"\";\r\n	var fileType = \"\";\r\n	var url = \"\";\r\n	\r\n\r\n	 if ( str ) {\r\n			\r\n			document.write(str);\r\n			\r\n	 }\r\n	 \r\n	 </SCRIPT>', 'hsg', null, '63', '2016-03-19 11:46:55');
INSERT INTO `xinwentongzhi` VALUES ('26', '2011年苍南县选聘高校毕业生到村任职体检通知', '通知公告', '<TABLE id=table_neirong cellSpacing=3 cellPadding=3 width=\"90%\" border=0>\r\n<TBODY>\r\n<TR>\r\n<TD id=TD1 vAlign=top colSpan=2 height=63>\r\n<DIV align=left>&nbsp;&nbsp;&nbsp; 根据2011年温州市选聘高校毕业生到村任职工作安排，经笔试、资格复审、面试后，根据总成绩，按选聘岗位计划数的1︰1.2比例从高分到低分确定体检对象。定于7月12日对进入体检的考生组织统一体检，（进入体检人员名单见附件），现将有关事项通知如下：</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 1、各进入体检的考生携带本人身份证、准考证、单寸免冠照片1张，于7月12日上午6:40在苍南县行政中心前门集中。分组后核对考生身份，按体检编号佩带标志，并分组进行照相作为档案备存；个人携带的手机关机后交带队人员保管。统一参加体检。</DIV>\r\n<DIV>不按时到指定地点集中的作为自动放弃处理。</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 2、体检前一天请注意休息，勿熬夜，不要饮酒，避免剧烈运动。体检当天需进行采血、B超等检查，请在受检前禁食8-12小时。女性受检者已怀孕者，事先告知医护人员，勿做X光检查。体检过程中，考生如对当场得知检查结果的血压、视力、听力等项目有异议的，可当场向带队人员申请复查，经有关负责人同意后即时复查。</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 3、在体检过程中各位考生须服从带队人员管理，体检过程遇事应直接与带队人员联系，不得和体检医生交流，家长亲朋等不得跟随，体检过程中不得擅自离开。</DIV>\r\n<DIV>&nbsp;&nbsp;&nbsp; 4、在体检过程中有舞弊或其它违纪情况的，按有关规定处理。</DIV>\r\n<DIV align=left>&nbsp;&nbsp;&nbsp; 5、体检结束后，请即开通手机，以便有事联系。体检结果公布后，如有异议，可于体检结果公布之日起7日内向组织、人事部门提出书面复检申请，逾期不予受理。复检只进行一次，体检结果以复检结论为准。体检合格人员为考察对象。</DIV>\r\n<DIV align=left>联系电话：68881517</DIV>\r\n<DIV align=left></DIV>\r\n<DIV align=left>&nbsp;</DIV>\r\n<DIV align=right>中共苍南县委组织部</DIV>\r\n<DIV align=right>苍南县人事局</DIV>\r\n<DIV align=right>二○一一年七月六日</DIV></TD></TR>\r\n<TR>\r\n<TD id=idfj align=right colSpan=2>\r\n<DIV id=tttttt align=left><FONT face=宋体 color=blue>附件下载：</FONT> </DIV></TD></TR>\r\n<TR>\r\n<TD align=left width=93 height=21></TD>\r\n<TD id=idFuJian align=left width=\"88%\" height=21><A href=\"http://www.cnrsj.com/upload/xinxi/2011070611212005_体检人员名单.doc\"><IMG alt=点击下载 src=\"http://www.cnrsj.com/image/sattach.bmp\" border=0> 体检人员名单</A><BR><BR></TD></TR></TBODY></TABLE>', 'hsg', null, '12', '2016-03-19 11:46:55');
INSERT INTO `xinwentongzhi` VALUES ('27', '关于举办“现代”杯温州市第二届青年书法大赛的通知', '通知公告', '<DIV align=left>各县（市、区）团委、市级功能区团委，市直单位团组织：</DIV>\r\n<DIV align=left>&nbsp;&nbsp;&nbsp; 为深入贯彻落实十八大精神，进一步丰富温州青年文化生活，促进青年文化交流，倡导青年积极投身于“幸福温州”的建设。共青团温州市委、温州市文联决定联合举办“现代”杯温州市第二届青年书法大赛。</DIV>\r\n<DIV align=left>本次大赛旨在体现当代青年勇于担当历史使命与奉献青春的思想境界，展示青年积极向上、健康成长的精神风貌，激发广大青年爱党爱国的高尚情怀。同时，通过大赛促进青年审美素养的提高，鼓励青年艺术创新，倡导艺术创作源于生活、高于生活的理念。</DIV>\r\n<DIV align=left>&nbsp;&nbsp;&nbsp; 一、组织机构</DIV>\r\n<DIV align=left>1、主办单位：共青团温州市委、温州市文学艺术界联合会</DIV>\r\n<DIV align=left>2、承办单位：温州市团校、温州都市报、</DIV>\r\n<DIV align=left>温州市现代服务业投资集团有限公司</DIV>\r\n<DIV align=left>3、协办单位：温州市书法家协会</DIV>\r\n<DIV align=left>&nbsp;&nbsp;&nbsp; 二、参赛对象</DIV>\r\n<DIV align=left>全市凡18至45周岁的爱好书法的团干部、团员和青年，可由各单位党团组织，青年社团推荐参赛，也可个人直接报名。</DIV>\r\n<DIV align=left>&nbsp;&nbsp;&nbsp; 三、作品要求</DIV>\r\n<DIV align=left>1、作品内容积极，健康向上，能体现时代风貌，以讴歌各界青年投身社会革命与经济建设的内容为主。</DIV>\r\n<DIV align=left>2、书法作品每人限投2件，书体不限，4尺以内一律竖式，草书、篆书请附释文；硬笔书法，规格一律为16开，形式不限（此次大赛不收篆刻及刻字作品）。</DIV>\r\n<DIV align=left>3、书法作品请勿装裱。投稿作品请在信封上注明“书法比赛”字样。</DIV>\r\n<DIV align=left>4、作品请用铅笔在作品背面右下角工整注明作者真实姓名、年龄、性别、所在单位、联系电话、详细通讯地址及邮编。</DIV>\r\n<DIV align=left>5、参赛作品不收参赛费。</DIV>\r\n<DIV align=left>6、限于人力，所有来稿一律不退；主办方有作品出版权。</DIV>\r\n<DIV align=left>7、交稿件时请将作品及报名表（见附件）一起上交。</DIV>\r\n<DIV align=left>&nbsp;&nbsp;&nbsp; 四、奖项设置</DIV>\r\n<DIV align=left>比赛设立一、二、三等奖、优秀奖及优秀组织奖若干名，并颁发奖品和证书。 </DIV>\r\n<DIV align=left>&nbsp;&nbsp;&nbsp; 五、截稿时间</DIV>\r\n<DIV align=left>2013年10月15日，以当地邮戳为准。</DIV>\r\n<DIV align=left>&nbsp;&nbsp; 六、注意事项</DIV>\r\n<DIV align=left>1、来稿必须符合征稿启事的要求，否则不予参评。</DIV>\r\n<DIV align=left>2、各级团组织要认真组织，做好宣传发动工作。各级团干部要带头参加，并鼓励本单位、部门团员和45岁以下青年广泛参与。 </DIV>\r\n<DIV align=left>3、由主办方邀请我市书法名家担任本次大赛评委，负责评审工作。比赛结果将于11月份公布并颁奖。获奖作品如展出，装裱费用自负，具体事宜则另行通知。<BR>&nbsp;&nbsp;&nbsp; 七、联系方式</DIV>\r\n<DIV align=left>收稿地址：温州市团校教务处（温州市府东路868号市青少年活动中心）。邮政编码：325000，联系电话：0577- 88060162，联系人：单纯洁&nbsp; 严瑶瑶</DIV>\r\n<DIV align=left>&nbsp;</DIV>\r\n<DIV align=left>附件：温州市第二届青年书法大赛报名表</DIV>\r\n<DIV align=right>&nbsp;</DIV>\r\n<DIV align=right>&nbsp;</DIV>\r\n<DIV align=right>&nbsp;</DIV>\r\n<DIV align=right>共青团温州市委<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 温州市文学艺术界联合会</DIV>\r\n<DIV align=right>2013年6月24日</DIV>\r\n<DIV align=right>&nbsp;</DIV>\r\n<DIV align=right>抄送：</DIV>\r\n<DIV align=right>共青团温州市委办公室<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2013年6月24日印发</DIV>', 'hsg', null, '85', '2016-03-19 11:46:55');
INSERT INTO `xinwentongzhi` VALUES ('28', '关于接受童芍素、钟小毛等职务的决定', '通知公告', '　&nbsp; 根据《中华人民共和国地方各级人民代表大会和地方各级人民政府组织法》、《浙江省人民代表大会常务委员会任免国家机关工作人员条例》的有关规定，浙江省第十一届人民代表大会常务委员会第十九次会议决定：因到退休年龄，接受童芍素、钟小毛辞去省人大常委会委员职务，接受童芍素辞去省人大教育科技文化卫生委员会主任委员职务，接受钟小毛辞去省人大民族华侨委员会主任委员职务，报省第十一届人民代表大会第四次会议备案。', 'hsg', null, '5', '2016-03-19 11:46:55');
INSERT INTO `xinwentongzhi` VALUES ('29', '停电通知（11月22日——11月27日）', '通知公告', '<P>因供电设备检修(如遇雨天延期），现安排下两周停电线路希各相关用户做好安排。</P>\r\n<P>星期一 11月22日 金钗637线 通港625线&nbsp;西三街、陈良村等7:00-19:00&nbsp;</P><!--advertisement code begin--><!--advertisement code end-->\r\n<P>星期二 11月23日 雅印306线 柒彩309线&nbsp;三洋工业区&nbsp;6:00-19:00&nbsp;名园687线&nbsp;锦绣名园 7:00-19:00蔡家676线 蔡家工业园区、河滨路7:00-19:00&nbsp;</P>\r\n<P>星期三 11月24日 朝西671线 宫后路、海港路7:00-19:00车运673线金钗街、河底高路7:00-19:00风电3552线鹤顶山风电场6:00-23:00海容858线 东庄村、海城街等7:00-19:00&nbsp;</P>\r\n<P>星期四 11月25日 红星741线&nbsp;上对口村、中对口村、山前村、士金兜村、港头村等7:00-19:00 龙翔521线&nbsp;龙翔路、上厂街等 7:30-19:00&nbsp;</P>\r\n<P>星期五 11月26日 金河759线夏八美村、后半洋村、前半洋村、灵峰村、灵峰黄村、大处基村、汤干洋村、上堡村、冯店村、河头村、底店村、坊下村、彭家堡村、前张村7:00-19:00浃前490线&nbsp;珠西村、珠东村等。7:00-19:00&nbsp;</P>\r\n<P>星期六 11月27日 咸园604线&nbsp;沿江路、西五街等&nbsp;7:00-19:00&nbsp;</P>\r\n<P>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　苍南电力</P>', 'hsg', null, '48', '2016-03-19 11:46:55');
INSERT INTO `xinwentongzhi` VALUES ('30', '停电通知（9月4日-9月7日）', '通知公告', '<DIV id=showvideo><!-- rm url is empty!--></DIV>\r\n<DIV class=lh24 id=topic></DIV>\r\n<DIV class=content id=ftcg><!--function content() parse begin-->\r\n<DIV align=center>\r\n<DIV align=center><SPAN><IMG id=no_img height=321 src=\"http://pic2.66wz.com/0/10/62/98/10629808_996826.jpg\" width=568 border=0></SPAN></DIV></DIV></DIV>', 'hsg', null, '46', '2016-03-19 11:46:55');
INSERT INTO `xinwentongzhi` VALUES ('31', 'ewge', '社区新闻', 'whewhewhwe', 'hsg', '', '1', '2016-03-25 00:26:00');
INSERT INTO `xinwentongzhi` VALUES ('32', '11', '????', '11212', 'admin', '', '1', '2017-05-14 15:41:46');

-- ----------------------------
-- Table structure for `yonghuzhuce`
-- ----------------------------
DROP TABLE IF EXISTS `yonghuzhuce`;
CREATE TABLE `yonghuzhuce` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `yonghuming` varchar(50) DEFAULT NULL,
  `mima` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `xingbie` varchar(2) DEFAULT NULL,
  `chushengnianyue` varchar(50) DEFAULT NULL,
  `QQ` varchar(50) DEFAULT NULL,
  `youxiang` varchar(50) DEFAULT NULL,
  `dianhua` varchar(50) DEFAULT NULL,
  `shenfenzheng` varchar(50) DEFAULT NULL,
  `touxiang` varchar(50) DEFAULT NULL,
  `dizhi` varchar(255) DEFAULT NULL,
  `beizhu` varchar(255) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `issh` varchar(2) DEFAULT '否',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yonghuzhuce
-- ----------------------------
INSERT INTO `yonghuzhuce` VALUES ('1', '555', '555', '何升高', '男', '2012-07-08', '429489354', 'gsgs@163.com', '13186835580', '52353253262', 'upload/1333961148718.jpg', '龙港龙翔路1170号', 'mfgmfgmfg', '2016-03-11 18:37:24', '是');
INSERT INTO `yonghuzhuce` VALUES ('2', 'leejie', 'leejie', '李龙', '男', '2012-05-21', '851781333', 'fege@126.com', '63474337', '623632153', 'upload/1333963398718.gif', '温州飞翔路2号', 'htrjrtjr', '2016-03-11 18:37:24', '是');
INSERT INTO `yonghuzhuce` VALUES ('3', 'mygod', 'mygod', '陈德才', '男', '2012-02-02', '870538338', 'gshf@yahoo.com', '9696556', '33253636', 'upload/1333963445546.gif', '杭州四季青广场3号', 'hdhffd', '2016-03-11 18:37:24', '是');
INSERT INTO `yonghuzhuce` VALUES ('4', 'xwxxmx', 'xwxxmx', '吴江', '女', '2012-03-14', '609577616', 'jrjtr@163.com', '34437754', '215323262', 'upload/1333963661093.jpg', '上海浦东区22号', 'gfdhth', '2016-03-11 18:37:24', '是');
INSERT INTO `yonghuzhuce` VALUES ('5', 'xxbxbx', 'xxbxbx', 'xxbxbx', '男', '', '8748548', 'jrt@163.com', '3476343', '34737547', 'upload/1458362964275.jpg', 'gewgweh', 'trjtrjtr', '2016-03-19 12:49:27', '是');
INSERT INTO `yonghuzhuce` VALUES ('6', 'jfgjff', 'jfgjff', 'jfgjff', '男', '', '8748548', 'gewwehr@163.com', '3476343', '34737547', 'upload/1458836642220.jpg', 'wegw', 'htrhtr', '2016-03-25 00:24:05', '是');

-- ----------------------------
-- Table structure for `youqinglianjie`
-- ----------------------------
DROP TABLE IF EXISTS `youqinglianjie`;
CREATE TABLE `youqinglianjie` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `wangzhanmingcheng` varchar(255) DEFAULT NULL,
  `wangzhi` varchar(255) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of youqinglianjie
-- ----------------------------
INSERT INTO `youqinglianjie` VALUES ('1', '百度', 'http://www.baidu.com', 'upload/1457693474985.jpg', '2016-03-11 18:37:24');
INSERT INTO `youqinglianjie` VALUES ('2', '谷歌', 'http://www.google.cn', 'upload/1457693464761.jpg', '2016-03-11 18:37:24');
INSERT INTO `youqinglianjie` VALUES ('3', '新浪', 'http://www.sina.com', 'upload/1457693453338.jpg', '2016-03-11 18:37:24');
INSERT INTO `youqinglianjie` VALUES ('4', '雅虎', 'http://www.yahoo.cn', 'upload/1457693443842.jpg', '2016-03-11 18:37:24');
INSERT INTO `youqinglianjie` VALUES ('5', '腾讯', 'http://www.qq.com', 'upload/1457693432474.jpg', '2016-03-11 18:37:24');
