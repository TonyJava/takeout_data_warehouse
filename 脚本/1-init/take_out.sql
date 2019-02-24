
DROP DATABASE IF EXISTS take_out;
create database take_out;
use take_out;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for biz_trade
-- ----------------------------
DROP TABLE IF EXISTS `biz_trade`;
CREATE TABLE `biz_trade` (
  `trade_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(11) DEFAULT NULL,
  `user_id` bigint(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `trade_type` tinyint(1) DEFAULT NULL COMMENT '1:支付成功 -1 退款',
  `trade_time` datetime DEFAULT NULL,
  PRIMARY KEY (`trade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of biz_trade
-- ----------------------------

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(64) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  `goods_num` int(11) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `cancle_time` datetime DEFAULT NULL,
  `sumbit_time` datetime DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for code_category
-- ----------------------------
DROP TABLE IF EXISTS `code_category`;
CREATE TABLE `code_category` (
  `first_category_id` int(11) DEFAULT NULL,
  `first_category_name` varchar(32) DEFAULT NULL,
  `second_category_id` int(11) DEFAULT NULL,
  `second_catery_name` varchar(32) DEFAULT NULL,
  `third_category_id` int(11) DEFAULT NULL,
  `third_category_name` varchar(32) DEFAULT NULL,
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of code_category
-- ----------------------------
INSERT INTO `code_category` VALUES ('0', '美食', '1', '简餐便当', '11', '米粉', '1');
INSERT INTO `code_category` VALUES ('0', '美食', '2', '小吃炸串', null, null, '2');
INSERT INTO `code_category` VALUES ('0', '美食', '3', '地方菜系', null, null, '3');
INSERT INTO `code_category` VALUES ('0', '美食', '4', '面食粥点', null, null, '4');
INSERT INTO `code_category` VALUES ('0', '美食', '5', '香锅冒菜', null, null, '5');
INSERT INTO `code_category` VALUES ('0', '美食', '6', '日韩料理', null, null, '6');
INSERT INTO `code_category` VALUES ('0', '美食', '7', '汉堡披萨', null, null, '7');
INSERT INTO `code_category` VALUES ('0', '美食', '8', '轻食西餐', null, null, '8');
INSERT INTO `code_category` VALUES ('0', '美食', '1', '简餐便当', '11', '米粉', '9');
INSERT INTO `code_category` VALUES ('0', '美食', '1', '简餐便当', '11', '米粉', '10');
INSERT INTO `code_category` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '11');
INSERT INTO `code_category` VALUES ('0', '美食', '1', '简餐便当', '14', '麻辣烫', '12');

-- ----------------------------
-- Table structure for code_city
-- ----------------------------
DROP TABLE IF EXISTS `code_city`;
CREATE TABLE `code_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(256) DEFAULT NULL,
  `province` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of code_city
-- ----------------------------
INSERT INTO `code_city` VALUES ('1', '石家庄市', '河北省');
INSERT INTO `code_city` VALUES ('2', '唐山市', '河北省');
INSERT INTO `code_city` VALUES ('3', '秦皇岛市', '河北省');
INSERT INTO `code_city` VALUES ('4', '邯郸市', '河北省');
INSERT INTO `code_city` VALUES ('5', '邢台市', '河北省');
INSERT INTO `code_city` VALUES ('6', '保定市', '河北省');
INSERT INTO `code_city` VALUES ('7', '张家口市', '河北省');
INSERT INTO `code_city` VALUES ('8', '承德市', '河北省');
INSERT INTO `code_city` VALUES ('9', '沧州市', '河北省');
INSERT INTO `code_city` VALUES ('10', '廊坊市', '河北省');
INSERT INTO `code_city` VALUES ('11', '衡水市', '河北省');
INSERT INTO `code_city` VALUES ('12', '太原市', '山西省');
INSERT INTO `code_city` VALUES ('13', '大同市', '山西省');
INSERT INTO `code_city` VALUES ('14', '阳泉市', '山西省');
INSERT INTO `code_city` VALUES ('15', '长治市', '山西省');
INSERT INTO `code_city` VALUES ('16', '晋城市', '山西省');
INSERT INTO `code_city` VALUES ('17', '朔州市', '山西省');
INSERT INTO `code_city` VALUES ('18', '晋中市', '山西省');
INSERT INTO `code_city` VALUES ('19', '运城市', '山西省');
INSERT INTO `code_city` VALUES ('20', '忻州市', '山西省');
INSERT INTO `code_city` VALUES ('21', '临汾市', '山西省');
INSERT INTO `code_city` VALUES ('22', '吕梁市', '山西省');
INSERT INTO `code_city` VALUES ('23', '呼和浩特市', '内蒙古自治区');
INSERT INTO `code_city` VALUES ('24', '包头市', '内蒙古自治区');
INSERT INTO `code_city` VALUES ('25', '乌海市', '内蒙古自治区');
INSERT INTO `code_city` VALUES ('26', '赤峰市', '内蒙古自治区');
INSERT INTO `code_city` VALUES ('27', '通辽市', '内蒙古自治区');
INSERT INTO `code_city` VALUES ('28', '鄂尔多斯市', '内蒙古自治区');
INSERT INTO `code_city` VALUES ('29', '呼伦贝尔市', '内蒙古自治区');
INSERT INTO `code_city` VALUES ('30', '巴彦淖尔市', '内蒙古自治区');
INSERT INTO `code_city` VALUES ('31', '乌兰察布市', '内蒙古自治区');
INSERT INTO `code_city` VALUES ('32', '兴安盟', '内蒙古自治区');
INSERT INTO `code_city` VALUES ('33', '锡林郭勒盟', '内蒙古自治区');
INSERT INTO `code_city` VALUES ('34', '阿拉善盟', '内蒙古自治区');
INSERT INTO `code_city` VALUES ('35', '沈阳市', '辽宁省');
INSERT INTO `code_city` VALUES ('36', '大连市', '辽宁省');
INSERT INTO `code_city` VALUES ('37', '鞍山市', '辽宁省');
INSERT INTO `code_city` VALUES ('38', '抚顺市', '辽宁省');
INSERT INTO `code_city` VALUES ('39', '本溪市', '辽宁省');
INSERT INTO `code_city` VALUES ('40', '丹东市', '辽宁省');
INSERT INTO `code_city` VALUES ('41', '锦州市', '辽宁省');
INSERT INTO `code_city` VALUES ('42', '营口市', '辽宁省');
INSERT INTO `code_city` VALUES ('43', '阜新市', '辽宁省');
INSERT INTO `code_city` VALUES ('44', '辽阳市', '辽宁省');
INSERT INTO `code_city` VALUES ('45', '盘锦市', '辽宁省');
INSERT INTO `code_city` VALUES ('46', '铁岭市', '辽宁省');
INSERT INTO `code_city` VALUES ('47', '朝阳市', '辽宁省');
INSERT INTO `code_city` VALUES ('48', '葫芦岛市', '辽宁省');
INSERT INTO `code_city` VALUES ('49', '长春市', '吉林省');
INSERT INTO `code_city` VALUES ('50', '吉林市', '吉林省');
INSERT INTO `code_city` VALUES ('51', '四平市', '吉林省');
INSERT INTO `code_city` VALUES ('52', '辽源市', '吉林省');
INSERT INTO `code_city` VALUES ('53', '通化市', '吉林省');
INSERT INTO `code_city` VALUES ('54', '白山市', '吉林省');
INSERT INTO `code_city` VALUES ('55', '松原市', '吉林省');
INSERT INTO `code_city` VALUES ('56', '白城市', '吉林省');
INSERT INTO `code_city` VALUES ('57', '延边朝鲜族自治州', '吉林省');
INSERT INTO `code_city` VALUES ('58', '哈尔滨市', '黑龙江省');
INSERT INTO `code_city` VALUES ('59', '齐齐哈尔市', '黑龙江省');
INSERT INTO `code_city` VALUES ('60', '鸡西市', '黑龙江省');
INSERT INTO `code_city` VALUES ('61', '鹤岗市', '黑龙江省');
INSERT INTO `code_city` VALUES ('62', '双鸭山市', '黑龙江省');
INSERT INTO `code_city` VALUES ('63', '大庆市', '黑龙江省');
INSERT INTO `code_city` VALUES ('64', '伊春市', '黑龙江省');
INSERT INTO `code_city` VALUES ('65', '佳木斯市', '黑龙江省');
INSERT INTO `code_city` VALUES ('66', '七台河市', '黑龙江省');
INSERT INTO `code_city` VALUES ('67', '牡丹江市', '黑龙江省');
INSERT INTO `code_city` VALUES ('68', '黑河市', '黑龙江省');
INSERT INTO `code_city` VALUES ('69', '绥化市', '黑龙江省');
INSERT INTO `code_city` VALUES ('70', '大兴安岭地区', '黑龙江省');
INSERT INTO `code_city` VALUES ('71', '南京市', '江苏省');
INSERT INTO `code_city` VALUES ('72', '无锡市', '江苏省');
INSERT INTO `code_city` VALUES ('73', '徐州市', '江苏省');
INSERT INTO `code_city` VALUES ('74', '常州市', '江苏省');
INSERT INTO `code_city` VALUES ('75', '苏州市', '江苏省');
INSERT INTO `code_city` VALUES ('76', '南通市', '江苏省');
INSERT INTO `code_city` VALUES ('77', '连云港市', '江苏省');
INSERT INTO `code_city` VALUES ('78', '淮安市', '江苏省');
INSERT INTO `code_city` VALUES ('79', '盐城市', '江苏省');
INSERT INTO `code_city` VALUES ('80', '扬州市', '江苏省');
INSERT INTO `code_city` VALUES ('81', '镇江市', '江苏省');
INSERT INTO `code_city` VALUES ('82', '泰州市', '江苏省');
INSERT INTO `code_city` VALUES ('83', '宿迁市', '江苏省');
INSERT INTO `code_city` VALUES ('84', '杭州市', '浙江省');
INSERT INTO `code_city` VALUES ('85', '宁波市', '浙江省');
INSERT INTO `code_city` VALUES ('86', '温州市', '浙江省');
INSERT INTO `code_city` VALUES ('87', '嘉兴市', '浙江省');
INSERT INTO `code_city` VALUES ('88', '湖州市', '浙江省');
INSERT INTO `code_city` VALUES ('89', '绍兴市', '浙江省');
INSERT INTO `code_city` VALUES ('90', '金华市', '浙江省');
INSERT INTO `code_city` VALUES ('91', '衢州市', '浙江省');
INSERT INTO `code_city` VALUES ('92', '舟山市', '浙江省');
INSERT INTO `code_city` VALUES ('93', '台州市', '浙江省');
INSERT INTO `code_city` VALUES ('94', '丽水市', '浙江省');
INSERT INTO `code_city` VALUES ('95', '合肥市', '安徽省');
INSERT INTO `code_city` VALUES ('96', '芜湖市', '安徽省');
INSERT INTO `code_city` VALUES ('97', '蚌埠市', '安徽省');
INSERT INTO `code_city` VALUES ('98', '淮南市', '安徽省');
INSERT INTO `code_city` VALUES ('99', '马鞍山市', '安徽省');
INSERT INTO `code_city` VALUES ('100', '淮北市', '安徽省');
INSERT INTO `code_city` VALUES ('101', '铜陵市', '安徽省');
INSERT INTO `code_city` VALUES ('102', '安庆市', '安徽省');
INSERT INTO `code_city` VALUES ('103', '黄山市', '安徽省');
INSERT INTO `code_city` VALUES ('104', '滁州市', '安徽省');
INSERT INTO `code_city` VALUES ('105', '阜阳市', '安徽省');
INSERT INTO `code_city` VALUES ('106', '宿州市', '安徽省');
INSERT INTO `code_city` VALUES ('107', '六安市', '安徽省');
INSERT INTO `code_city` VALUES ('108', '亳州市', '安徽省');
INSERT INTO `code_city` VALUES ('109', '池州市', '安徽省');
INSERT INTO `code_city` VALUES ('110', '宣城市', '安徽省');
INSERT INTO `code_city` VALUES ('111', '福州市', '福建省');
INSERT INTO `code_city` VALUES ('112', '厦门市', '福建省');
INSERT INTO `code_city` VALUES ('113', '莆田市', '福建省');
INSERT INTO `code_city` VALUES ('114', '三明市', '福建省');
INSERT INTO `code_city` VALUES ('115', '泉州市', '福建省');
INSERT INTO `code_city` VALUES ('116', '漳州市', '福建省');
INSERT INTO `code_city` VALUES ('117', '南平市', '福建省');
INSERT INTO `code_city` VALUES ('118', '龙岩市', '福建省');
INSERT INTO `code_city` VALUES ('119', '宁德市', '福建省');
INSERT INTO `code_city` VALUES ('120', '南昌市', '江西省');
INSERT INTO `code_city` VALUES ('121', '景德镇市', '江西省');
INSERT INTO `code_city` VALUES ('122', '萍乡市', '江西省');
INSERT INTO `code_city` VALUES ('123', '九江市', '江西省');
INSERT INTO `code_city` VALUES ('124', '新余市', '江西省');
INSERT INTO `code_city` VALUES ('125', '鹰潭市', '江西省');
INSERT INTO `code_city` VALUES ('126', '赣州市', '江西省');
INSERT INTO `code_city` VALUES ('127', '吉安市', '江西省');
INSERT INTO `code_city` VALUES ('128', '宜春市', '江西省');
INSERT INTO `code_city` VALUES ('129', '抚州市', '江西省');
INSERT INTO `code_city` VALUES ('130', '上饶市', '江西省');
INSERT INTO `code_city` VALUES ('131', '济南市', '山东省');
INSERT INTO `code_city` VALUES ('132', '青岛市', '山东省');
INSERT INTO `code_city` VALUES ('133', '淄博市', '山东省');
INSERT INTO `code_city` VALUES ('134', '枣庄市', '山东省');
INSERT INTO `code_city` VALUES ('135', '东营市', '山东省');
INSERT INTO `code_city` VALUES ('136', '烟台市', '山东省');
INSERT INTO `code_city` VALUES ('137', '潍坊市', '山东省');
INSERT INTO `code_city` VALUES ('138', '济宁市', '山东省');
INSERT INTO `code_city` VALUES ('139', '泰安市', '山东省');
INSERT INTO `code_city` VALUES ('140', '威海市', '山东省');
INSERT INTO `code_city` VALUES ('141', '日照市', '山东省');
INSERT INTO `code_city` VALUES ('142', '莱芜市', '山东省');
INSERT INTO `code_city` VALUES ('143', '临沂市', '山东省');
INSERT INTO `code_city` VALUES ('144', '德州市', '山东省');
INSERT INTO `code_city` VALUES ('145', '聊城市', '山东省');
INSERT INTO `code_city` VALUES ('146', '滨州市', '山东省');
INSERT INTO `code_city` VALUES ('147', '菏泽市', '山东省');
INSERT INTO `code_city` VALUES ('148', '郑州市', '河南省');
INSERT INTO `code_city` VALUES ('149', '开封市', '河南省');
INSERT INTO `code_city` VALUES ('150', '洛阳市', '河南省');
INSERT INTO `code_city` VALUES ('151', '平顶山市', '河南省');
INSERT INTO `code_city` VALUES ('152', '安阳市', '河南省');
INSERT INTO `code_city` VALUES ('153', '鹤壁市', '河南省');
INSERT INTO `code_city` VALUES ('154', '新乡市', '河南省');
INSERT INTO `code_city` VALUES ('155', '焦作市', '河南省');
INSERT INTO `code_city` VALUES ('156', '濮阳市', '河南省');
INSERT INTO `code_city` VALUES ('157', '许昌市', '河南省');
INSERT INTO `code_city` VALUES ('158', '漯河市', '河南省');
INSERT INTO `code_city` VALUES ('159', '三门峡市', '河南省');
INSERT INTO `code_city` VALUES ('160', '南阳市', '河南省');
INSERT INTO `code_city` VALUES ('161', '商丘市', '河南省');
INSERT INTO `code_city` VALUES ('162', '信阳市', '河南省');
INSERT INTO `code_city` VALUES ('163', '周口市', '河南省');
INSERT INTO `code_city` VALUES ('164', '驻马店市', '河南省');
INSERT INTO `code_city` VALUES ('165', '武汉市', '湖北省');
INSERT INTO `code_city` VALUES ('166', '黄石市', '湖北省');
INSERT INTO `code_city` VALUES ('167', '十堰市', '湖北省');
INSERT INTO `code_city` VALUES ('168', '宜昌市', '湖北省');
INSERT INTO `code_city` VALUES ('169', '襄阳市', '湖北省');
INSERT INTO `code_city` VALUES ('170', '鄂州市', '湖北省');
INSERT INTO `code_city` VALUES ('171', '荆门市', '湖北省');
INSERT INTO `code_city` VALUES ('172', '孝感市', '湖北省');
INSERT INTO `code_city` VALUES ('173', '荆州市', '湖北省');
INSERT INTO `code_city` VALUES ('174', '黄冈市', '湖北省');
INSERT INTO `code_city` VALUES ('175', '咸宁市', '湖北省');
INSERT INTO `code_city` VALUES ('176', '随州市', '湖北省');
INSERT INTO `code_city` VALUES ('177', '恩施土家族苗族自治州', '湖北省');
INSERT INTO `code_city` VALUES ('178', '长沙市', '湖南省');
INSERT INTO `code_city` VALUES ('179', '株洲市', '湖南省');
INSERT INTO `code_city` VALUES ('180', '湘潭市', '湖南省');
INSERT INTO `code_city` VALUES ('181', '衡阳市', '湖南省');
INSERT INTO `code_city` VALUES ('182', '邵阳市', '湖南省');
INSERT INTO `code_city` VALUES ('183', '岳阳市', '湖南省');
INSERT INTO `code_city` VALUES ('184', '常德市', '湖南省');
INSERT INTO `code_city` VALUES ('185', '张家界市', '湖南省');
INSERT INTO `code_city` VALUES ('186', '益阳市', '湖南省');
INSERT INTO `code_city` VALUES ('187', '郴州市', '湖南省');
INSERT INTO `code_city` VALUES ('188', '永州市', '湖南省');
INSERT INTO `code_city` VALUES ('189', '怀化市', '湖南省');
INSERT INTO `code_city` VALUES ('190', '娄底市', '湖南省');
INSERT INTO `code_city` VALUES ('191', '湘西土家族苗族自治州', '湖南省');
INSERT INTO `code_city` VALUES ('192', '广州市', '广东省');
INSERT INTO `code_city` VALUES ('193', '韶关市', '广东省');
INSERT INTO `code_city` VALUES ('194', '深圳市', '广东省');
INSERT INTO `code_city` VALUES ('195', '珠海市', '广东省');
INSERT INTO `code_city` VALUES ('196', '汕头市', '广东省');
INSERT INTO `code_city` VALUES ('197', '佛山市', '广东省');
INSERT INTO `code_city` VALUES ('198', '江门市', '广东省');
INSERT INTO `code_city` VALUES ('199', '湛江市', '广东省');
INSERT INTO `code_city` VALUES ('200', '茂名市', '广东省');
INSERT INTO `code_city` VALUES ('201', '肇庆市', '广东省');
INSERT INTO `code_city` VALUES ('202', '惠州市', '广东省');
INSERT INTO `code_city` VALUES ('203', '梅州市', '广东省');
INSERT INTO `code_city` VALUES ('204', '汕尾市', '广东省');
INSERT INTO `code_city` VALUES ('205', '河源市', '广东省');
INSERT INTO `code_city` VALUES ('206', '阳江市', '广东省');
INSERT INTO `code_city` VALUES ('207', '清远市', '广东省');
INSERT INTO `code_city` VALUES ('208', '东莞市', '广东省');
INSERT INTO `code_city` VALUES ('209', '中山市', '广东省');
INSERT INTO `code_city` VALUES ('210', '潮州市', '广东省');
INSERT INTO `code_city` VALUES ('211', '揭阳市', '广东省');
INSERT INTO `code_city` VALUES ('212', '云浮市', '广东省');
INSERT INTO `code_city` VALUES ('213', '南宁市', '广西壮族自治区');
INSERT INTO `code_city` VALUES ('214', '柳州市', '广西壮族自治区');
INSERT INTO `code_city` VALUES ('215', '桂林市', '广西壮族自治区');
INSERT INTO `code_city` VALUES ('216', '梧州市', '广西壮族自治区');
INSERT INTO `code_city` VALUES ('217', '北海市', '广西壮族自治区');
INSERT INTO `code_city` VALUES ('218', '防城港市', '广西壮族自治区');
INSERT INTO `code_city` VALUES ('219', '钦州市', '广西壮族自治区');
INSERT INTO `code_city` VALUES ('220', '贵港市', '广西壮族自治区');
INSERT INTO `code_city` VALUES ('221', '玉林市', '广西壮族自治区');
INSERT INTO `code_city` VALUES ('222', '百色市', '广西壮族自治区');
INSERT INTO `code_city` VALUES ('223', '贺州市', '广西壮族自治区');
INSERT INTO `code_city` VALUES ('224', '河池市', '广西壮族自治区');
INSERT INTO `code_city` VALUES ('225', '来宾市', '广西壮族自治区');
INSERT INTO `code_city` VALUES ('226', '崇左市', '广西壮族自治区');
INSERT INTO `code_city` VALUES ('227', '海口市', '海南省');
INSERT INTO `code_city` VALUES ('228', '三亚市', '海南省');
INSERT INTO `code_city` VALUES ('229', '儋州市', '海南省');
INSERT INTO `code_city` VALUES ('230', '成都市', '四川省');
INSERT INTO `code_city` VALUES ('231', '自贡市', '四川省');
INSERT INTO `code_city` VALUES ('232', '攀枝花市', '四川省');
INSERT INTO `code_city` VALUES ('233', '泸州市', '四川省');
INSERT INTO `code_city` VALUES ('234', '德阳市', '四川省');
INSERT INTO `code_city` VALUES ('235', '绵阳市', '四川省');
INSERT INTO `code_city` VALUES ('236', '广元市', '四川省');
INSERT INTO `code_city` VALUES ('237', '遂宁市', '四川省');
INSERT INTO `code_city` VALUES ('238', '内江市', '四川省');
INSERT INTO `code_city` VALUES ('239', '乐山市', '四川省');
INSERT INTO `code_city` VALUES ('240', '南充市', '四川省');
INSERT INTO `code_city` VALUES ('241', '眉山市', '四川省');
INSERT INTO `code_city` VALUES ('242', '宜宾市', '四川省');
INSERT INTO `code_city` VALUES ('243', '广安市', '四川省');
INSERT INTO `code_city` VALUES ('244', '达州市', '四川省');
INSERT INTO `code_city` VALUES ('245', '雅安市', '四川省');
INSERT INTO `code_city` VALUES ('246', '巴中市', '四川省');
INSERT INTO `code_city` VALUES ('247', '资阳市', '四川省');
INSERT INTO `code_city` VALUES ('248', '阿坝藏族羌族自治州', '四川省');
INSERT INTO `code_city` VALUES ('249', '甘孜藏族自治州', '四川省');
INSERT INTO `code_city` VALUES ('250', '凉山彝族自治州', '四川省');
INSERT INTO `code_city` VALUES ('251', '贵阳市', '贵州省');
INSERT INTO `code_city` VALUES ('252', '六盘水市', '贵州省');
INSERT INTO `code_city` VALUES ('253', '遵义市', '贵州省');
INSERT INTO `code_city` VALUES ('254', '安顺市', '贵州省');
INSERT INTO `code_city` VALUES ('255', '毕节市', '贵州省');
INSERT INTO `code_city` VALUES ('256', '铜仁市', '贵州省');
INSERT INTO `code_city` VALUES ('257', '黔西南布依族苗族自治州', '贵州省');
INSERT INTO `code_city` VALUES ('258', '黔东南苗族侗族自治州', '贵州省');
INSERT INTO `code_city` VALUES ('259', '黔南布依族苗族自治州', '贵州省');
INSERT INTO `code_city` VALUES ('260', '昆明市', '云南省');
INSERT INTO `code_city` VALUES ('261', '曲靖市', '云南省');
INSERT INTO `code_city` VALUES ('262', '玉溪市', '云南省');
INSERT INTO `code_city` VALUES ('263', '保山市', '云南省');
INSERT INTO `code_city` VALUES ('264', '昭通市', '云南省');
INSERT INTO `code_city` VALUES ('265', '丽江市', '云南省');
INSERT INTO `code_city` VALUES ('266', '普洱市', '云南省');
INSERT INTO `code_city` VALUES ('267', '临沧市', '云南省');
INSERT INTO `code_city` VALUES ('268', '楚雄彝族自治州', '云南省');
INSERT INTO `code_city` VALUES ('269', '红河哈尼族彝族自治州', '云南省');
INSERT INTO `code_city` VALUES ('270', '文山壮族苗族自治州', '云南省');
INSERT INTO `code_city` VALUES ('271', '西双版纳傣族自治州', '云南省');
INSERT INTO `code_city` VALUES ('272', '大理白族自治州', '云南省');
INSERT INTO `code_city` VALUES ('273', '德宏傣族景颇族自治州', '云南省');
INSERT INTO `code_city` VALUES ('274', '怒江傈僳族自治州', '云南省');
INSERT INTO `code_city` VALUES ('275', '迪庆藏族自治州', '云南省');
INSERT INTO `code_city` VALUES ('276', '拉萨市', '西藏自治区');
INSERT INTO `code_city` VALUES ('277', '日喀则市', '西藏自治区');
INSERT INTO `code_city` VALUES ('278', '昌都市', '西藏自治区');
INSERT INTO `code_city` VALUES ('279', '林芝市', '西藏自治区');
INSERT INTO `code_city` VALUES ('280', '山南市', '西藏自治区');
INSERT INTO `code_city` VALUES ('281', '那曲地区', '西藏自治区');
INSERT INTO `code_city` VALUES ('282', '阿里地区', '西藏自治区');
INSERT INTO `code_city` VALUES ('283', '西安市', '陕西省');
INSERT INTO `code_city` VALUES ('284', '铜川市', '陕西省');
INSERT INTO `code_city` VALUES ('285', '宝鸡市', '陕西省');
INSERT INTO `code_city` VALUES ('286', '咸阳市', '陕西省');
INSERT INTO `code_city` VALUES ('287', '渭南市', '陕西省');
INSERT INTO `code_city` VALUES ('288', '延安市', '陕西省');
INSERT INTO `code_city` VALUES ('289', '汉中市', '陕西省');
INSERT INTO `code_city` VALUES ('290', '榆林市', '陕西省');
INSERT INTO `code_city` VALUES ('291', '安康市', '陕西省');
INSERT INTO `code_city` VALUES ('292', '商洛市', '陕西省');
INSERT INTO `code_city` VALUES ('293', '兰州市', '甘肃省');
INSERT INTO `code_city` VALUES ('294', '嘉峪关市', '甘肃省');
INSERT INTO `code_city` VALUES ('295', '金昌市', '甘肃省');
INSERT INTO `code_city` VALUES ('296', '白银市', '甘肃省');
INSERT INTO `code_city` VALUES ('297', '天水市', '甘肃省');
INSERT INTO `code_city` VALUES ('298', '武威市', '甘肃省');
INSERT INTO `code_city` VALUES ('299', '张掖市', '甘肃省');
INSERT INTO `code_city` VALUES ('300', '平凉市', '甘肃省');
INSERT INTO `code_city` VALUES ('301', '酒泉市', '甘肃省');
INSERT INTO `code_city` VALUES ('302', '庆阳市', '甘肃省');
INSERT INTO `code_city` VALUES ('303', '定西市', '甘肃省');
INSERT INTO `code_city` VALUES ('304', '陇南市', '甘肃省');
INSERT INTO `code_city` VALUES ('305', '临夏回族自治州', '甘肃省');
INSERT INTO `code_city` VALUES ('306', '甘南藏族自治州', '甘肃省');
INSERT INTO `code_city` VALUES ('307', '西宁市', '青海省');
INSERT INTO `code_city` VALUES ('308', '海东市', '青海省');
INSERT INTO `code_city` VALUES ('309', '海北藏族自治州', '青海省');
INSERT INTO `code_city` VALUES ('310', '黄南藏族自治州', '青海省');
INSERT INTO `code_city` VALUES ('311', '海南藏族自治州', '青海省');
INSERT INTO `code_city` VALUES ('312', '果洛藏族自治州', '青海省');
INSERT INTO `code_city` VALUES ('313', '玉树藏族自治州', '青海省');
INSERT INTO `code_city` VALUES ('314', '海西蒙古族藏族自治州', '青海省');
INSERT INTO `code_city` VALUES ('315', '银川市', '宁夏回族自治区');
INSERT INTO `code_city` VALUES ('316', '石嘴山市', '宁夏回族自治区');
INSERT INTO `code_city` VALUES ('317', '吴忠市', '宁夏回族自治区');
INSERT INTO `code_city` VALUES ('318', '固原市', '宁夏回族自治区');
INSERT INTO `code_city` VALUES ('319', '中卫市', '宁夏回族自治区');
INSERT INTO `code_city` VALUES ('320', '乌鲁木齐市', '新疆维吾尔自治区');
INSERT INTO `code_city` VALUES ('321', '克拉玛依市', '新疆维吾尔自治区');
INSERT INTO `code_city` VALUES ('322', '吐鲁番市', '新疆维吾尔自治区');
INSERT INTO `code_city` VALUES ('323', '哈密市', '吐鲁番市');
INSERT INTO `code_city` VALUES ('324', '昌吉回族自治州', '新疆维吾尔自治区');
INSERT INTO `code_city` VALUES ('325', '博尔塔拉蒙古自治州', '新疆维吾尔自治区');
INSERT INTO `code_city` VALUES ('326', '巴音郭楞蒙古自治州', '新疆维吾尔自治区');
INSERT INTO `code_city` VALUES ('327', '阿克苏地区', '新疆维吾尔自治区');
INSERT INTO `code_city` VALUES ('328', '克孜勒苏柯尔克孜自治州', '新疆维吾尔自治区');
INSERT INTO `code_city` VALUES ('329', '喀什地区', '新疆维吾尔自治区');
INSERT INTO `code_city` VALUES ('330', '和田地区', '新疆维吾尔自治区');
INSERT INTO `code_city` VALUES ('331', '伊犁哈萨克自治州', '新疆维吾尔自治区');
INSERT INTO `code_city` VALUES ('332', '塔城地区', '新疆维吾尔自治区');
INSERT INTO `code_city` VALUES ('333', '阿勒泰地区', '新疆维吾尔自治区');
INSERT INTO `code_city` VALUES ('334', '省直辖县级行政区划', '河南省');
INSERT INTO `code_city` VALUES ('335', '省直辖县级行政区划', '湖北省');
INSERT INTO `code_city` VALUES ('336', '省直辖县级行政区划', '海南省');
INSERT INTO `code_city` VALUES ('337', '自治区直辖县级行政区划', '新疆维吾尔自治区');

-- ----------------------------
-- Table structure for code_education
-- ----------------------------
DROP TABLE IF EXISTS `code_education`;
CREATE TABLE `code_education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `edu_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of code_education
-- ----------------------------
INSERT INTO `code_education` VALUES ('1', '小学');
INSERT INTO `code_education` VALUES ('2', '初中');
INSERT INTO `code_education` VALUES ('3', '高中');
INSERT INTO `code_education` VALUES ('4', '大学');
INSERT INTO `code_education` VALUES ('5', '研究生');
INSERT INTO `code_education` VALUES ('6', '博士');
INSERT INTO `code_education` VALUES ('7', '博士后');

-- ----------------------------
-- Table structure for code_email_suffix
-- ----------------------------
DROP TABLE IF EXISTS `code_email_suffix`;
CREATE TABLE `code_email_suffix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suffix` varchar(64) NOT NULL,
  `op_mail` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of code_email_suffix
-- ----------------------------
INSERT INTO `code_email_suffix` VALUES ('1', '@126.com', '网易');
INSERT INTO `code_email_suffix` VALUES ('2', '@163.com', '网易');
INSERT INTO `code_email_suffix` VALUES ('3', '@sina.com', '新浪');
INSERT INTO `code_email_suffix` VALUES ('4', '@21cn.com', '21CN邮箱');
INSERT INTO `code_email_suffix` VALUES ('5', '@sohu.com', '搜狐');
INSERT INTO `code_email_suffix` VALUES ('6', '@yahoo.com.cn', '雅虎');
INSERT INTO `code_email_suffix` VALUES ('7', '@tom.com', 'TOM网');
INSERT INTO `code_email_suffix` VALUES ('8', '@qq.com', '腾讯');
INSERT INTO `code_email_suffix` VALUES ('9', '@etang.com', '亿唐网');
INSERT INTO `code_email_suffix` VALUES ('10', '@eyou.com', 'eyou');
INSERT INTO `code_email_suffix` VALUES ('11', '@56.com', '56');
INSERT INTO `code_email_suffix` VALUES ('12', '@x.cn', 'x');
INSERT INTO `code_email_suffix` VALUES ('13', '@chinaren.com', '搜狐');
INSERT INTO `code_email_suffix` VALUES ('14', '@sogou.com', '搜狗');
INSERT INTO `code_email_suffix` VALUES ('15', '@citiz.com', null);

-- ----------------------------
-- Table structure for code_goods
-- ----------------------------
DROP TABLE IF EXISTS `code_goods`;
CREATE TABLE `code_goods` (
  `first_category_id` int(11) NOT NULL,
  `first_category_name` varchar(32) DEFAULT NULL,
  `second_category_id` int(11) NOT NULL,
  `second_catery_name` varchar(32) DEFAULT NULL,
  `third_category_id` int(11) NOT NULL,
  `third_category_name` varchar(32) DEFAULT NULL,
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(40) NOT NULL,
  `goods_no` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `seller_name` varchar(64) DEFAULT NULL,
  `food_price` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of code_goods
-- ----------------------------
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '16', '孜然炒肉', '16', '2', '四川味道(第6号档口美即食美食城店)', '16.99');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '17', '醋溜白菜', '17', '2', '四川味道(第6号档口美即食美食城店)', '10.99');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '18', '蒜苔炒肉', '18', '2', '四川味道(第6号档口美即食美食城店)', '16.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '19', '醋溜白菜', '19', '2', '四川味道(第6号档口美即食美食城店)', '10.99');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '20', '蒜苔炒肉', '20', '2', '四川味道(第6号档口美即食美食城店)', '16.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '21', '单份米饭', '21', '3', '曼玲粥店(第17号档口美厨在线美食城店)', '2.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '22', '单个狮子头', '22', '3', '曼玲粥店(第17号档口美厨在线美食城店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '23', '卤蛋(个)', '23', '3', '曼玲粥店(第17号档口美厨在线美食城店)', '2.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '24', '梅菜扣肉饭', '24', '3', '曼玲粥店(第17号档口美厨在线美食城店)', '19.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '25', '单份番茄鸡蛋', '25', '3', '曼玲粥店(第17号档口美厨在线美食城店)', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '26', '香辣笋干烧肉饭', '26', '3', '曼玲粥店(第17号档口美厨在线美食城店)', '19.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '27', '卤肉饭', '27', '3', '曼玲粥店(第17号档口美厨在线美食城店)', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '28', '红烧肉+番茄鸡蛋', '28', '3', '曼玲粥店(第17号档口美厨在线美食城店)', '22.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '29', '单份香辣笋干烧肉', '29', '3', '曼玲粥店(第17号档口美厨在线美食城店)', '14.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '30', '番茄蛋花汤', '30', '3', '曼玲粥店(第17号档口美厨在线美食城店)', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '31', '鲜椒鸡蛋＋土豆丝＋香米饭套餐', '31', '4', '嘉和一品粥(西三旗店)', '29.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '32', '小炒肉＋鲜椒鸡蛋＋米饭', '32', '4', '嘉和一品粥(西三旗店)', '31.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '33', '小炒肉＋土豆丝＋米饭套餐', '33', '4', '嘉和一品粥(西三旗店)', '31.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '34', '蒜香鸡米花', '34', '4', '嘉和一品粥(西三旗店)', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '35', '藕合', '35', '4', '嘉和一品粥(西三旗店)', '9.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '36', '小炒肉＋茄子鸡＋米饭', '36', '4', '嘉和一品粥(西三旗店)', '33.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '37', '咸鸭蛋', '37', '4', '嘉和一品粥(西三旗店)', '5.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '38', '小炒肉＋杏鲍菇＋米饭＋可乐', '38', '4', '嘉和一品粥(西三旗店)', '37.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '39', '宫保鸡丁＋鲜椒鸡蛋＋米饭套餐', '39', '4', '嘉和一品粥(西三旗店)', '31.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '40', '茄子鸡＋鲜椒鸡蛋＋米饭', '40', '4', '嘉和一品粥(西三旗店)', '31.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '41', '糖醋里脊（小碗）', '41', '5', '京川婆婆早餐', '12.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '42', '干锅土豆片（小碗）', '42', '5', '京川婆婆早餐', '10.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '43', '炒合菜（小碗）', '43', '5', '京川婆婆早餐', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '44', '麻婆豆腐（小碗）', '44', '5', '京川婆婆早餐', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '45', '红烧茄子（小碗）', '45', '5', '京川婆婆早餐', '10.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '46', '韭菜炒鸡蛋（小碗）', '46', '5', '京川婆婆早餐', '10.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '47', '土豆红烧肉（小碗）', '47', '5', '京川婆婆早餐', '14.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '48', '鱼香肉丝（小碗）', '48', '5', '京川婆婆早餐', '12.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '49', '西红柿炒鸡蛋（小碗）', '49', '5', '京川婆婆早餐', '10.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '50', '湘炒外婆菜', '50', '5', '京川婆婆早餐', '11.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '51', '烤牛肉拌饭（配拌饭酱1份）', '51', '6', '永和大王（回龙观店FBJ04）', '39.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '52', '烤羊肉大串', '52', '6', '永和大王（回龙观店FBJ04）', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '53', '煎蛋', '53', '6', '永和大王（回龙观店FBJ04）', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '54', '椒麻猪肉串', '54', '6', '永和大王（回龙观店FBJ04）', '10.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '55', '泡菜汤+米饭', '55', '6', '永和大王（回龙观店FBJ04）', '32.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '56', '荞麦冷面', '56', '6', '永和大王（回龙观店FBJ04）', '32.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '57', '辣细丝牛肉汤+米饭', '57', '6', '永和大王（回龙观店FBJ04）', '36.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '58', '烤牛肉拌饭+四味小菜+可乐', '58', '6', '永和大王（回龙观店FBJ04）', '51.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '59', '大酱汤+米饭 ', '59', '6', '永和大王（回龙观店FBJ04）', '32.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '60', '权金城拌饭+四味小菜+可乐', '60', '6', '永和大王（回龙观店FBJ04）', '43.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '61', '招牌排骨饭（大份）', '61', '7', '左一煎饼（昌平店）', '42.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '62', '经典土豆排骨饭', '62', '7', '左一煎饼（昌平店）', '34.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '63', '香汁排骨+红烧肉双拼+辣白菜+米饭', '63', '7', '左一煎饼（昌平店）', '42.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '64', '香汁排骨+两只小鸡腿+米饭?', '64', '7', '左一煎饼（昌平店）', '43.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '65', '干闷豆角+排骨+米饭', '65', '7', '左一煎饼（昌平店）', '36.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '66', '烤肠', '66', '7', '左一煎饼（昌平店）', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '67', '米饭160g', '67', '7', '左一煎饼（昌平店）', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '68', '双人情侣套餐A', '68', '7', '左一煎饼（昌平店）', '62.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '69', '辣白菜', '69', '7', '左一煎饼（昌平店）', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '70', '爽口小菜', '70', '7', '左一煎饼（昌平店）', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '71', '小份黄焖鸡米饭（含米饭）。 ', '71', '8', '素虎净素餐厅(西三旗店)', '30.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '72', '豆皮 ', '72', '8', '素虎净素餐厅(西三旗店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '73', '娃娃菜 ', '73', '8', '素虎净素餐厅(西三旗店)', '2.60');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '74', '大份黄焖鸡米饭（含米饭） ', '74', '8', '素虎净素餐厅(西三旗店)', '33.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '75', '大份黄焖排骨（含米饭） ', '75', '8', '素虎净素餐厅(西三旗店)', '37.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '76', '小份黄焖排骨（含米饭） ', '76', '8', '素虎净素餐厅(西三旗店)', '32.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '77', '大份黄焖鸡荤素餐（含米饭） ', '77', '8', '素虎净素餐厅(西三旗店)', '33.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '78', '小份黄焖鸡荤素餐（含米饭） ', '78', '8', '素虎净素餐厅(西三旗店)', '29.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '79', '黄焖鸡+金针菇+鱼豆腐+米饭饮料套餐 ', '79', '8', '素虎净素餐厅(西三旗店)', '22.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '80', '黄焖鸡+宽粉+土豆+米饭饮料套餐 ', '80', '8', '素虎净素餐厅(西三旗店)', '19.40');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '81', '350g精选鸡腿肉+蟹田香米饭', '81', '9', '金牌黄焖鸡(第6号档口餐行者美食广场店)', '40.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '82', '香米饭', '82', '9', '金牌黄焖鸡(第6号档口餐行者美食广场店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '83', '大份不辣+豆皮+土豆+米饭', '83', '9', '金牌黄焖鸡(第6号档口餐行者美食广场店)', '40.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '84', '小份不辣+土豆+豆皮+米饭', '84', '9', '金牌黄焖鸡(第6号档口餐行者美食广场店)', '36.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '85', '大份中辣+豆皮+土豆+米饭', '85', '9', '金牌黄焖鸡(第6号档口餐行者美食广场店)', '40.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '86', '黄焖鸡套餐+米饭+酸奶', '86', '9', '金牌黄焖鸡(第6号档口餐行者美食广场店)', '15.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '87', '鱼豆腐', '87', '9', '金牌黄焖鸡(第6号档口餐行者美食广场店)', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '88', '小份微辣+土豆+豆皮+米饭', '88', '9', '金牌黄焖鸡(第6号档口餐行者美食广场店)', '36.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '89', '黄焖鸡套餐+米饭+可乐', '89', '9', '金牌黄焖鸡(第6号档口餐行者美食广场店)', '17.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '90', '黄焖鸡大份（特辣）+土豆+米饭', '90', '9', '金牌黄焖鸡(第6号档口餐行者美食广场店)', '38.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '91', '麻辣汤底 ', '91', '10', '角角排骨饭(回龙观店)', '0.88');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '92', '另+荷包蛋 ', '92', '10', '角角排骨饭(回龙观店)', '2.99');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '93', '米饭（单点不售） ', '93', '10', '角角排骨饭(回龙观店)', '0.88');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '94', '酸汤肥牛汤饭+叉烧+火腿 ', '94', '10', '角角排骨饭(回龙观店)', '39.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '95', '一品海鲜汤饭+虾+花甲+鱼丸+章鱼+培根 ', '95', '10', '角角排骨饭(回龙观店)', '43.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '96', '什锦菌菇汤饭+培根+烤肠 ', '96', '10', '角角排骨饭(回龙观店)', '31.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '97', '小鲜肉汤饭+鱿鱼+火腿 ', '97', '10', '角角排骨饭(回龙观店)', '32.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '98', '另+小青菜 ', '98', '10', '角角排骨饭(回龙观店)', '1.88');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '99', '手打牛筋丸汤饭+培根+火腿 ', '99', '10', '角角排骨饭(回龙观店)', '35.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '100', '风味牛肉汤饭+花甲+墨鱼丸+鱿鱼+猪肉片 ', '100', '10', '角角排骨饭(回龙观店)', '41.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '101', '金牌黄焖鸡+五常大米【中辣小份】 ', '101', '11', '晨曦炖品·鲍鱼饭(安宁庄后街店)', '35.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '102', '豆皮【单点不配送】 ', '102', '11', '晨曦炖品·鲍鱼饭(安宁庄后街店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '103', '五常大米【单点不配送】 ', '103', '11', '晨曦炖品·鲍鱼饭(安宁庄后街店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '104', '鱼豆腐单点不配送】 ', '104', '11', '晨曦炖品·鲍鱼饭(安宁庄后街店)', '5.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '105', '娃娃菜【单点不配送】 ', '105', '11', '晨曦炖品·鲍鱼饭(安宁庄后街店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '106', '土豆【单点不配送】 ', '106', '11', '晨曦炖品·鲍鱼饭(安宁庄后街店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '107', '金针菇【单点不配送】 ', '107', '11', '晨曦炖品·鲍鱼饭(安宁庄后街店)', '5.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '108', '金牌黄焖鸡+五常大米+果汁【中辣大份】 ', '108', '11', '晨曦炖品·鲍鱼饭(安宁庄后街店)', '38.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '109', '金牌黄焖鸡+五常大米【微辣小份】 ', '109', '11', '晨曦炖品·鲍鱼饭(安宁庄后街店)', '35.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '110', '香菇【单点不配送】 ', '110', '11', '晨曦炖品·鲍鱼饭(安宁庄后街店)', '5.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '111', '鸡蛋炒面', '111', '12', '晋味坊手工刀削面家常菜(霍营店)', '19.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '112', '老山西狮子头', '112', '12', '晋味坊手工刀削面家常菜(霍营店)', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '113', '精品排骨面', '113', '12', '晋味坊手工刀削面家常菜(霍营店)', '21.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '114', '传统小炖肉面', '114', '12', '晋味坊手工刀削面家常菜(霍营店)', '21.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '115', '秘制坛肉', '115', '12', '晋味坊手工刀削面家常菜(霍营店)', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '116', '鸡块烧土豆', '116', '12', '晋味坊手工刀削面家常菜(霍营店)', '24.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '117', '西红柿鸡蛋面', '117', '12', '晋味坊手工刀削面家常菜(霍营店)', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '118', '老汤秘制腔骨', '118', '12', '晋味坊手工刀削面家常菜(霍营店)', '48.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '119', '肉夹馍', '119', '12', '晋味坊手工刀削面家常菜(霍营店)', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '1', '简餐便当', '13', '包子', '120', '凉皮', '120', '12', '晋味坊手工刀削面家常菜(霍营店)', '12.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '121', '香辣鸡腿堡(汉堡)ST', '121', '13', '肯德基宅急送(文华路店）', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '122', '二块新奥尔良烤翅T', '122', '13', '肯德基宅急送(文华路店）', '12.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '123', '老北京鸡肉卷T', '123', '13', '肯德基宅急送(文华路店）', '16.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '124', '二块香辣鸡翅(炸鸡)T', '124', '13', '肯德基宅急送(文华路店）', '11.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '125', '劲脆鸡腿堡ST', '125', '13', '肯德基宅急送(文华路店）', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '126', '红豆派T', '126', '13', '肯德基宅急送(文华路店）', '6.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '127', '鸡肉卷九珍套餐T', '127', '13', '肯德基宅急送(文华路店）', '27.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '128', '六味小吃桶T', '128', '13', '肯德基宅急送(文华路店）', '83.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '129', '双杯中拿铁套餐T', '129', '13', '肯德基宅急送(文华路店）', '32.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '130', '辣翅九珍套餐T', '130', '13', '肯德基宅急送(文华路店）', '22.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '131', '单份米饭', '131', '14', '田老师红烧肉(回龙观东村家园店)', '2.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '132', '单个狮子头', '132', '14', '田老师红烧肉(回龙观东村家园店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '133', '卤蛋(个)', '133', '14', '田老师红烧肉(回龙观东村家园店)', '2.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '134', '梅菜扣肉饭', '134', '14', '田老师红烧肉(回龙观东村家园店)', '19.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '135', '单份番茄鸡蛋', '135', '14', '田老师红烧肉(回龙观东村家园店)', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '136', '香辣笋干烧肉饭', '136', '14', '田老师红烧肉(回龙观东村家园店)', '19.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '137', '卤肉饭', '137', '14', '田老师红烧肉(回龙观东村家园店)', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '138', '红烧肉+番茄鸡蛋', '138', '14', '田老师红烧肉(回龙观东村家园店)', '22.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '139', '单份香辣笋干烧肉', '139', '14', '田老师红烧肉(回龙观东村家园店)', '14.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '140', '番茄蛋花汤', '140', '14', '田老师红烧肉(回龙观东村家园店)', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '141', '小恒三鲜水饺', '141', '15', '小恒水饺(第5号档口时遇食域美食城店)', '23.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '142', '豆角猪肉水饺', '142', '15', '小恒水饺(第5号档口时遇食域美食城店)', '21.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '143', '蒜泥', '143', '15', '小恒水饺(第5号档口时遇食域美食城店)', '0.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '144', '韭菜鸡蛋水饺', '144', '15', '小恒水饺(第5号档口时遇食域美食城店)', '25.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '145', '韭菜猪肉水饺', '145', '15', '小恒水饺(第5号档口时遇食域美食城店)', '21.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '146', '牛肉圆葱水饺', '146', '15', '小恒水饺(第5号档口时遇食域美食城店)', '23.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '147', '芹菜猪肉水饺', '147', '15', '小恒水饺(第5号档口时遇食域美食城店)', '19.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '148', '牛肉圆葱水饺', '148', '15', '小恒水饺(第5号档口时遇食域美食城店)', '23.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '149', '营养皮冻', '149', '15', '小恒水饺(第5号档口时遇食域美食城店)', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '150', '小恒香芹单人套餐', '150', '15', '小恒水饺(第5号档口时遇食域美食城店)', '37.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '151', '买那么大鲜柠可乐送鸡翅1对', '151', '16', '北京麦当劳文华路餐厅', '25.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '152', '海陆空三味大餐', '152', '16', '北京麦当劳文华路餐厅', '128.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '153', '那么大红豆珍珠奶茶两件特惠(暖)', '153', '16', '北京麦当劳文华路餐厅', '40.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '154', '那么大红豆珍珠奶茶两件特惠(冷)', '154', '16', '北京麦当劳文华路餐厅', '40.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '155', '巧克力派两件特惠', '155', '16', '北京麦当劳文华路餐厅', '16.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '156', '无辣不欢组合', '156', '16', '北京麦当劳文华路餐厅', '52.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '157', '油炸王路', '157', '16', '北京麦当劳文华路餐厅', '250.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '158', '麦趣鸡盒（雪碧特惠）', '158', '16', '北京麦当劳文华路餐厅', '92.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '159', '金拱门桶A', '159', '16', '北京麦当劳文华路餐厅', '63.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '160', '麦乐送*饿了么精选套餐', '160', '16', '北京麦当劳文华路餐厅', '159.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '161', '招牌大煎饼', '161', '17', '山东杂粮煎饼', '9.98');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '162', '石磨豆浆', '162', '17', '山东杂粮煎饼', '3.98');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '163', '双蛋双脆五谷杂粮大煎饼', '163', '17', '山东杂粮煎饼', '9.95');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '164', '卫龙辣条', '164', '17', '山东杂粮煎饼', '2.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '165', '双蛋包肠', '165', '17', '山东杂粮煎饼', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '166', '双蛋五谷大煎饼', '166', '17', '山东杂粮煎饼', '11.98');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '167', '台湾烤肠', '167', '17', '山东杂粮煎饼', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '168', '燕麦粥', '168', '17', '山东杂粮煎饼', '4.98');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '169', '鸡柳', '169', '17', '山东杂粮煎饼', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '170', '生菜', '170', '17', '山东杂粮煎饼', '2.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '171', '烤冷面加肠＋手抓饼加肠', '171', '18', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '30.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '172', '酸辣粉+肉夹馍', '172', '18', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '29.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '173', '超级酸辣粉套餐-暖心套餐', '173', '18', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '29.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '174', '烤冷面双蛋＋肠*2', '174', '18', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '19.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '175', '超级酸辣粉套餐-暖心套餐', '175', '18', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '29.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '176', '土豆粉+烧饼', '176', '18', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '26.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '177', '手工肉夹馍', '177', '18', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '11.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '178', '超级酸辣粉', '178', '18', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '19.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '179', '传统（麻酱）凉皮', '179', '18', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '13.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '180', '特色（麻辣）凉皮', '180', '18', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '13.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '181', '驴肉火烧', '181', '19', '河间驴肉火烧(龙旗广场店)', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '182', '精肉火烧', '182', '19', '河间驴肉火烧(龙旗广场店)', '11.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '183', '焖子火烧', '183', '19', '河间驴肉火烧(龙旗广场店)', '6.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '184', '紫菜鸡蛋汤', '184', '19', '河间驴肉火烧(龙旗广场店)', '5.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '185', '驴肉汤', '185', '19', '河间驴肉火烧(龙旗广场店)', '12.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '186', '火烧皮', '186', '19', '河间驴肉火烧(龙旗广场店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '187', '驴杂汤', '187', '19', '河间驴肉火烧(龙旗广场店)', '12.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '188', '茶叶蛋', '188', '19', '河间驴肉火烧(龙旗广场店)', '2.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '189', '双人套餐', '189', '19', '河间驴肉火烧(龙旗广场店)', '54.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '190', '老醋花生', '190', '19', '河间驴肉火烧(龙旗广场店)', '14.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '191', '甜辣炸鸡套餐', '191', '20', '三顺韩式炸鸡店(园区美食城店)', '49.99');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '192', '酱油蒜香味炸鸡半只', '192', '20', '三顺韩式炸鸡店(园区美食城店)', '69.99');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '193', '中式香辣味炸鸡半只', '193', '20', '三顺韩式炸鸡店(园区美食城店)', '69.99');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '194', '蜂蜜芥末炸鸡半只', '194', '20', '三顺韩式炸鸡店(园区美食城店)', '69.99');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '195', '酱油蒜香炸鸡套餐', '195', '20', '三顺韩式炸鸡店(园区美食城店)', '49.99');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '196', '辣味炸鸡半只', '196', '20', '三顺韩式炸鸡店(园区美食城店)', '69.99');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '197', '酱油蒜香炸鸡套餐', '197', '20', '三顺韩式炸鸡店(园区美食城店)', '49.99');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '198', '中式香辣炸鸡套餐', '198', '20', '三顺韩式炸鸡店(园区美食城店)', '49.99');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '199', '蜂蜜芥末炸鸡套餐', '199', '20', '三顺韩式炸鸡店(园区美食城店)', '49.99');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '200', '辣味炸鸡套餐', '200', '20', '三顺韩式炸鸡店(园区美食城店)', '49.99');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '201', '肉夹馍', '201', '21', '大理寺云南过桥米线(第口美厨在线美食城店)', '7.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '202', '麻油包', '202', '21', '大理寺云南过桥米线(第口美厨在线美食城店)', '0.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '203', '肥牛米线+6种素菜软饮', '203', '21', '大理寺云南过桥米线(第口美厨在线美食城店)', '35.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '204', '原味手抓饼（无酱无菜）', '204', '21', '大理寺云南过桥米线(第口美厨在线美食城店)', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '205', '鱼豆腐米线+6种蔬菜', '205', '21', '大理寺云南过桥米线(第口美厨在线美食城店)', '15.21');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '206', '9.9元秒杀全素砂锅米线（双份点餐）', '206', '21', '大理寺云南过桥米线(第口美厨在线美食城店)', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '207', '6素菜+手抓饼套餐', '207', '21', '大理寺云南过桥米线(第口美厨在线美食城店)', '36.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '208', '鱼豆腐米线+6种蔬菜', '208', '21', '大理寺云南过桥米线(第口美厨在线美食城店)', '38.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '209', '鱼豆腐米线+6素菜+手抓饼套餐', '209', '21', '大理寺云南过桥米线(第口美厨在线美食城店)', '38.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '210', '鱼豆腐米线+6素菜+肉夹馍套餐', '210', '21', '大理寺云南过桥米线(第口美厨在线美食城店)', '38.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '211', '肉夹馍', '211', '22', '正宗京东肉饼(三旗百汇店)', '7.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '212', '麻油包', '212', '22', '正宗京东肉饼(三旗百汇店)', '0.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '213', '肥牛米线+6种素菜软饮', '213', '22', '正宗京东肉饼(三旗百汇店)', '35.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '214', '原味手抓饼（无酱无菜）', '214', '22', '正宗京东肉饼(三旗百汇店)', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '215', '鱼豆腐米线+6种蔬菜', '215', '22', '正宗京东肉饼(三旗百汇店)', '15.21');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '216', '9.9元秒杀全素砂锅米线（双份点餐）', '216', '22', '正宗京东肉饼(三旗百汇店)', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '217', '6素菜+手抓饼套餐', '217', '22', '正宗京东肉饼(三旗百汇店)', '36.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '218', '鱼豆腐米线+6种蔬菜', '218', '22', '正宗京东肉饼(三旗百汇店)', '38.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '219', '鱼豆腐米线+6素菜+手抓饼套餐', '219', '22', '正宗京东肉饼(三旗百汇店)', '38.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '220', '鱼豆腐米线+6素菜+肉夹馍套餐', '220', '22', '正宗京东肉饼(三旗百汇店)', '38.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '221', '胡辣汤', '221', '23', '京昌梁记烩面（港龙店）', '10.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '222', '滋补烩面', '222', '23', '京昌梁记烩面（港龙店）', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '223', '糖蒜', '223', '23', '京昌梁记烩面（港龙店）', '1.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '224', '五香牛肉', '224', '23', '京昌梁记烩面（港龙店）', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '225', '胡辣汤小套餐', '225', '23', '京昌梁记烩面（港龙店）', '14.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '226', '鸡汁卤蛋', '226', '23', '京昌梁记烩面（港龙店）', '2.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '227', '卤豆腐串', '227', '23', '京昌梁记烩面（港龙店）', '10.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '228', '葱花饼', '228', '23', '京昌梁记烩面（港龙店）', '9.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '229', '蒸卤面', '229', '23', '京昌梁记烩面（港龙店）', '15.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '230', '胡辣汤大套餐', '230', '23', '京昌梁记烩面（港龙店）', '28.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '231', '【9.9元抢购】麻辣猪手（半只）', '231', '24', '热辣生活(同成街华联店)', '28.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '232', '【9.9抢购】老干妈牛蛙（1只）', '232', '24', '热辣生活(同成街华联店)', '20.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '233', '【啃定】麻辣卤猪蹄', '233', '24', '热辣生活(同成街华联店)', '28.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '234', '【救无聊】麻辣凤爪', '234', '24', '热辣生活(同成街华联店)', '28.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '235', '【推荐】麻辣牛蹄筋', '235', '24', '热辣生活(同成街华联店)', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '236', '【暴脾气】老干妈牛蛙', '236', '24', '热辣生活(同成街华联店)', '89.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '237', '【限时抢】鱼豆腐', '237', '24', '热辣生活(同成街华联店)', '33.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '238', '【29.9元抢购】大闸蟹一公一母', '238', '24', '热辣生活(同成街华联店)', '100.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '239', '【救无聊】麻辣鱿鱼须', '239', '24', '热辣生活(同成街华联店)', '34.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '2', '小吃炸串', '0', null, '240', '麻辣掌中宝', '240', '24', '热辣生活(同成街华联店)', '36.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '241', '香米饭≠≠≠≠', '241', '25', '麻辣香锅(第1号档口西关物美七仙美食城店)', '2.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '242', '金针菇', '242', '25', '麻辣香锅(第1号档口西关物美七仙美食城店)', '3.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '243', '方便面抄在香锅里', '243', '25', '麻辣香锅(第1号档口西关物美七仙美食城店)', '3.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '244', '土豆', '244', '25', '麻辣香锅(第1号档口西关物美七仙美食城店)', '3.30');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '245', '娃娃菜', '245', '25', '麻辣香锅(第1号档口西关物美七仙美食城店)', '3.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '246', '豆皮', '246', '25', '麻辣香锅(第1号档口西关物美七仙美食城店)', '3.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '247', '精品肥牛', '247', '25', '麻辣香锅(第1号档口西关物美七仙美食城店)', '6.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '248', '鱼豆腐', '248', '25', '麻辣香锅(第1号档口西关物美七仙美食城店)', '6.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '249', '大宽粉', '249', '25', '麻辣香锅(第1号档口西关物美七仙美食城店)', '3.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '250', '腐竹', '250', '25', '麻辣香锅(第1号档口西关物美七仙美食城店)', '3.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '251', '老北京特色炸酱面', '251', '26', '尝到家尝(昌平店)', '20.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '252', '养胃疙瘩汤', '252', '26', '尝到家尝(昌平店)', '15.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '253', '鱼香肉丝', '253', '26', '尝到家尝(昌平店)', '28.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '254', '酸辣土豆丝', '254', '26', '尝到家尝(昌平店)', '16.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '255', '京酱肉丝', '255', '26', '尝到家尝(昌平店)', '29.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '256', '焦溜丸子小份', '256', '26', '尝到家尝(昌平店)', '24.70');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '257', '宫保鸡丁', '257', '26', '尝到家尝(昌平店)', '28.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '258', '干锅土豆片', '258', '26', '尝到家尝(昌平店)', '26.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '259', '炒疙瘩', '259', '26', '尝到家尝(昌平店)', '16.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '260', '榄菜肉碎四季豆', '260', '26', '尝到家尝(昌平店)', '32.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '261', '西安传统肉夹馍', '261', '27', '秦门(昌平店)', '10.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '262', '芝麻酱香凉皮', '262', '27', '秦门(昌平店)', '12.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '263', '西安传统羊肉泡馍', '263', '27', '秦门(昌平店)', '27.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '264', '精品肉夹馍', '264', '27', '秦门(昌平店)', '12.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '265', '烧烤精选羊肉串', '265', '27', '秦门(昌平店)', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '266', '红枣甑糕', '266', '27', '秦门(昌平店)', '12.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '267', '孜然炒面皮', '267', '27', '秦门(昌平店)', '18.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '268', '特色米皮', '268', '27', '秦门(昌平店)', '11.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '269', '家乡臊子面', '269', '27', '秦门(昌平店)', '19.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '270', '爆炒刘华凯', '270', '27', '秦门(昌平店)', '12.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '271', '苗乡白米饭', '271', '28', '苗乡楼酸汤鱼贵州菜(昌平店)', '2.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '272', '小炒肉', '272', '28', '苗乡楼酸汤鱼贵州菜(昌平店)', '28.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '273', '农夫山泉有点甜', '273', '28', '苗乡楼酸汤鱼贵州菜(昌平店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '274', '花溪牛肉粉', '274', '28', '苗乡楼酸汤鱼贵州菜(昌平店)', '32.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '275', '遵义碗儿糕', '275', '28', '苗乡楼酸汤鱼贵州菜(昌平店)', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '276', '糟辣椒炒鸡蛋', '276', '28', '苗乡楼酸汤鱼贵州菜(昌平店)', '19.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '277', '小炒黄牛肉', '277', '28', '苗乡楼酸汤鱼贵州菜(昌平店)', '48.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '278', '西红柿鸡蛋', '278', '28', '苗乡楼酸汤鱼贵州菜(昌平店)', '22.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '279', '黔味鸡蓉豆腐', '279', '28', '苗乡楼酸汤鱼贵州菜(昌平店)', '36.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '280', '手撕圆白菜', '280', '28', '苗乡楼酸汤鱼贵州菜(昌平店)', '26.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '281', '干锅土匪鸭', '281', '29', '川湘居家常小炒', '19.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '282', '小炒猪头肉', '282', '29', '川湘居家常小炒', '19.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '283', '小炒鱼豆腐', '283', '29', '川湘居家常小炒', '12.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '284', '水煮鱼一人套餐', '284', '29', '川湘居家常小炒', '48.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '285', '酸菜鱼一人套餐', '285', '29', '川湘居家常小炒', '48.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '286', '烤鱼一人套餐', '286', '29', '川湘居家常小炒', '38.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '287', '麻辣香锅2人套餐经济型', '287', '29', '川湘居家常小炒', '44.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '288', '油炸沈凯', '288', '29', '川湘居家常小炒', '250.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '289', '腊肉菜花小炒加米饭加听雪碧', '289', '29', '川湘居家常小炒', '24.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '290', '辣子鸡丁小炒加米饭加听雪碧', '290', '29', '川湘居家常小炒', '24.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '291', '洋芋焖鸡', '291', '30', '云海肴云南菜（昌平万科店）', '46.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '292', '黑三剁（小份）', '292', '30', '云海肴云南菜（昌平万科店）', '25.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '293', '折耳根咔嚓洋芋', '293', '30', '云海肴云南菜（昌平万科店）', '25.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '294', '小锅米线', '294', '30', '云海肴云南菜（昌平万科店）', '22.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '295', '皱皮椒小炒肉', '295', '30', '云海肴云南菜（昌平万科店）', '38.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '296', '牛肝菌蒸蛋', '296', '30', '云海肴云南菜（昌平万科店）', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '297', '邹皮椒土豆丝(小份)', '297', '30', '云海肴云南菜（昌平万科店）', '38.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '298', '西红柿炒鸡蛋（小份）', '298', '30', '云海肴云南菜（昌平万科店）', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '299', '黑糖豆花', '299', '30', '云海肴云南菜（昌平万科店）', '15.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '300', '现烤鲜花饼', '300', '30', '云海肴云南菜（昌平万科店）', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '301', '螺蛳卤蛋', '301', '31', '再回头螺蛳粉(政府街店)', '2.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '302', '螺蛳豆泡', '302', '31', '再回头螺蛳粉(政府街店)', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '303', '原味粉（大碗）', '303', '31', '再回头螺蛳粉(政府街店)', '19.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '304', '原味粉（小碗）', '304', '31', '再回头螺蛳粉(政府街店)', '17.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '305', '黄金腐竹', '305', '31', '再回头螺蛳粉(政府街店)', '5.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '306', '螺蛳青菜', '306', '31', '再回头螺蛳粉(政府街店)', '12.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '307', '卤蛋螺蛳粉（大碗）', '307', '31', '再回头螺蛳粉(政府街店)', '12.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '308', '鸭脚螺蛳粉（小碗）', '308', '31', '再回头螺蛳粉(政府街店)', '20.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '309', '半粉半菜', '309', '31', '再回头螺蛳粉(政府街店)', '17.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '310', '泡椒醋', '310', '31', '再回头螺蛳粉(政府街店)', '1.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '311', '小炒千叶豆腐（小）', '311', '32', '川湘美食', '7.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '312', '西红柿鸡蛋（小）', '312', '32', '川湘美食', '6.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '313', '小炒有机菜花(小）', '313', '32', '川湘美食', '7.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '314', '外婆菜炒鸡蛋（小）', '314', '32', '川湘美食', '8.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '315', '小炒肉（小）', '315', '32', '川湘美食', '8.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '316', '萝卜干豆豉五花肉(小）', '316', '32', '川湘美食', '7.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '317', '老坛酸菜鱼（小）', '317', '32', '川湘美食', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '318', '原味当归土鸡汤（小）', '318', '32', '川湘美食', '10.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '319', '麻辣宽粉（小）', '319', '32', '川湘美食', '7.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '320', '宫保鸡丁', '320', '32', '川湘美食', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '321', '经典烤鸭', '321', '33', '万荣烤鸭（富康店）', '39.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '322', '小炒菜花(小)', '322', '33', '万荣烤鸭（富康店）', '12.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '323', '家乡土豆丝(小)', '323', '33', '万荣烤鸭（富康店）', '11.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '324', '宫爆鸡丁(小)', '324', '33', '万荣烤鸭（富康店）', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '325', '鱼香肉丝(小)', '325', '33', '万荣烤鸭（富康店）', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '326', '鸭架椒盐', '326', '33', '万荣烤鸭（富康店）', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '327', '炝炒圆白菜(小)', '327', '33', '万荣烤鸭（富康店）', '12.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '328', '荷叶饼', '328', '33', '万荣烤鸭（富康店）', '10.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '329', '炸酱面', '329', '33', '万荣烤鸭（富康店）', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '330', '鹅肝酱干捞粉(小)', '330', '33', '万荣烤鸭（富康店）', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '331', '东北五常米饭', '331', '34', '鱼你在一起（昌平阳光商厦店）', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '332', '(不含米饭）老坛酸菜鱼单人份', '332', '34', '鱼你在一起（昌平阳光商厦店）', '23.88');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '333', '(不含米饭）公举番茄鱼单人份2份', '333', '34', '鱼你在一起（昌平阳光商厦店）', '36.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '334', '(不含米饭）金汤酸菜鱼单人份', '334', '34', '鱼你在一起（昌平阳光商厦店）', '36.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '335', '公举番茄鱼单人米饭套餐+可乐', '335', '34', '鱼你在一起（昌平阳光商厦店）', '44.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '336', '(不含米饭）经典香辣鱼单人份', '336', '34', '鱼你在一起（昌平阳光商厦店）', '19.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '337', '单人经典香辣鱼米饭套餐+可乐', '337', '34', '鱼你在一起（昌平阳光商厦店）', '44.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '338', '单人份青花椒酸菜鱼米饭套餐+可乐', '338', '34', '鱼你在一起（昌平阳光商厦店）', '44.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '339', '(不含米饭）金汤酸菜鱼双人份', '339', '34', '鱼你在一起（昌平阳光商厦店）', '65.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '340', '大葱拌狗屎', '340', '34', '鱼你在一起（昌平阳光商厦店）', '55.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '341', '麻婆豆腐不含米饭', '341', '35', '炒饭添', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '342', '小炒千叶豆腐', '342', '35', '炒饭添', '15.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '343', '水煮肉片', '343', '35', '炒饭添', '26.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '344', '农家小炒肉', '344', '35', '炒饭添', '15.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '345', '青椒土豆丝', '345', '35', '炒饭添', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '346', '辣子鸡丁盖', '346', '35', '炒饭添', '16.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '347', '红烧茄子', '347', '35', '炒饭添', '12.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '348', '土豆烧牛肉', '348', '35', '炒饭添', '19.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '349', '红烧肉', '349', '35', '炒饭添', '16.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '350', '西红柿炒鸡蛋', '350', '35', '炒饭添', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '351', '番茄鸡蛋拌面', '351', '36', '人之初拉面馆(东关二条店)', '15.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '352', '烤肠', '352', '36', '人之初拉面馆(东关二条店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '353', '牛肉拉面', '353', '36', '人之初拉面馆(东关二条店)', '14.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '354', '凉菜小拼盘', '354', '36', '人之初拉面馆(东关二条店)', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '355', '五香卤蛋', '355', '36', '人之初拉面馆(东关二条店)', '2.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '356', '大盘鸡拌面', '356', '36', '人之初拉面馆(东关二条店)', '19.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '357', '卤香鸡腿', '357', '36', '人之初拉面馆(东关二条店)', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '358', '加面', '358', '36', '人之初拉面馆(东关二条店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '359', '臊子面', '359', '36', '人之初拉面馆(东关二条店)', '16.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '3', '地方菜系', '0', null, '360', '香辣牛肉面', '360', '36', '人之初拉面馆(东关二条店)', '16.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '361', '皮蛋瘦肉粥', '361', '37', '嘉和一品粥（育知东路店）', '15.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '362', '一品八宝功夫粥', '362', '37', '嘉和一品粥（育知东路店）', '15.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '363', '扁豆焖面', '363', '37', '嘉和一品粥（育知东路店）', '21.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '364', '多肉馍馍（潼关肉夹馍）', '364', '37', '嘉和一品粥（育知东路店）', '15.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '365', '香脆黄瓜', '365', '37', '嘉和一品粥（育知东路店）', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '366', '葱花饼', '366', '37', '嘉和一品粥（育知东路店）', '14.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '367', '香米粥', '367', '37', '嘉和一品粥（育知东路店）', '5.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '368', '小米粥', '368', '37', '嘉和一品粥（育知东路店）', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '369', '糊塌子', '369', '37', '嘉和一品粥（育知东路店）', '11.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '370', '牛肉馅饼', '370', '37', '嘉和一品粥（育知东路店）', '21.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '371', '辣椒油', '371', '38', '小恒水饺(第5号档口时遇食域美食城店)', '0.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '372', '小恒三鲜水饺', '372', '38', '小恒水饺(第5号档口时遇食域美食城店)', '23.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '373', '豆角猪肉水饺', '373', '38', '小恒水饺(第5号档口时遇食域美食城店)', '32.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '374', '蒜泥', '374', '38', '小恒水饺(第5号档口时遇食域美食城店)', '0.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '375', '韭菜鸡蛋水饺', '375', '38', '小恒水饺(第5号档口时遇食域美食城店)', '25.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '376', '韭菜猪肉水饺', '376', '38', '小恒水饺(第5号档口时遇食域美食城店)', '21.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '377', '韭菜鸡蛋水饺', '377', '38', '小恒水饺(第5号档口时遇食域美食城店)', '19.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '378', '芹菜猪肉水饺', '378', '38', '小恒水饺(第5号档口时遇食域美食城店)', '19.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '379', '牛肉圆葱水饺', '379', '38', '小恒水饺(第5号档口时遇食域美食城店)', '23.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '380', '韭菜鸡蛋水饺', '380', '38', '小恒水饺(第5号档口时遇食域美食城店)', '25.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '381', '曼玲特色蒸饺', '381', '39', '曼玲粥店(第17号档口美厨在线美食城店)', '10.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '382', '皮蛋瘦肉粥', '382', '39', '曼玲粥店(第17号档口美厨在线美食城店)', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '383', '油条2根', '383', '39', '曼玲粥店(第17号档口美厨在线美食城店)', '6.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '384', '牛肉饼', '384', '39', '曼玲粥店(第17号档口美厨在线美食城店)', '5.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '385', '十三香咸鸭蛋（单点咸鸭蛋不送）', '385', '39', '曼玲粥店(第17号档口美厨在线美食城店)', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '386', '清火白粥', '386', '39', '曼玲粥店(第17号档口美厨在线美食城店)', '6.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '387', '十三香咸鸭蛋（单点咸鸭蛋不送）', '387', '39', '曼玲粥店(第17号档口美厨在线美食城店)', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '388', '肉包', '388', '39', '曼玲粥店(第17号档口美厨在线美食城店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '389', '韭菜盒子', '389', '39', '曼玲粥店(第17号档口美厨在线美食城店)', '6.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '390', '南瓜粥', '390', '39', '曼玲粥店(第17号档口美厨在线美食城店)', '13.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '391', '烤冷面加肠＋手抓饼加肠', '391', '40', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '30.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '392', '酸辣粉+肉夹馍', '392', '40', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '29.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '393', '超级酸辣粉套餐-暖心套餐', '393', '40', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '29.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '394', '烤冷面双蛋＋肠*2', '394', '40', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '19.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '395', '土豆粉+烧饼', '395', '40', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '26.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '396', '手工肉夹馍', '396', '40', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '11.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '397', '超级酸辣粉', '397', '40', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '19.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '398', '传统（麻酱）凉皮', '398', '40', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '13.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '399', '传统（酸辣）凉皮', '399', '40', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '13.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '400', '先生家秘制（牛筋面）', '400', '40', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '14.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '401', '招牌葱花饼', '401', '41', '老淮南牛肉汤', '2.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '402', '豆皮', '402', '41', '老淮南牛肉汤', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '403', '鹌鹑蛋', '403', '41', '老淮南牛肉汤', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '404', '香菇', '404', '41', '老淮南牛肉汤', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '405', '招牌牛肉汤+2个葱花饼', '405', '41', '老淮南牛肉汤', '24.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '406', '咸鸭蛋', '406', '41', '老淮南牛肉汤', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '407', '招牌淮南牛肉汤', '407', '41', '老淮南牛肉汤', '19.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '408', '牛肉鸭血粉丝汤', '408', '41', '老淮南牛肉汤', '19.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '409', '牛肉（一两）', '409', '41', '老淮南牛肉汤', '14.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '410', '单加红薯粉丝1份', '410', '41', '老淮南牛肉汤', '5.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '411', '葱花大油条', '411', '42', '頭壹號大油条（回龙观店）', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '412', '手工鲜肉包子', '412', '42', '頭壹號大油条（回龙观店）', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '413', '茶叶蛋一颗', '413', '42', '頭壹號大油条（回龙观店）', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '414', '现磨豆浆', '414', '42', '頭壹號大油条（回龙观店）', '5.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '415', '糖油饼', '415', '42', '頭壹號大油条（回龙观店）', '5.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '416', '疙瘩汤', '416', '42', '頭壹號大油条（回龙观店）', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '417', '电烤羊肉串', '417', '42', '頭壹號大油条（回龙观店）', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '418', '老北京最怀旧吃法之油饼裹鸡蛋', '418', '42', '頭壹號大油条（回龙观店）', '10.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '419', '火山石烤肠/根', '419', '42', '頭壹號大油条（回龙观店）', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '420', '红糖发糕', '420', '42', '頭壹號大油条（回龙观店）', '3.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '421', '天津煎饼果子（夹薄脆）', '421', '43', '早乐品致早餐(上地店)', '11.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '422', '若兰三鲜豆腐脑', '422', '43', '早乐品致早餐(上地店)', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '423', '哥窑茶蛋', '423', '43', '早乐品致早餐(上地店)', '3.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '424', '棒槌油条', '424', '43', '早乐品致早餐(上地店)', '5.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '425', '肉包子（猪肉大葱）', '425', '43', '早乐品致早餐(上地店)', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '426', '红枣豆浆（有糖）', '426', '43', '早乐品致早餐(上地店)', '6.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '427', '红糖糖油饼', '427', '43', '早乐品致早餐(上地店)', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '428', '天津煎饼果子（夹油条）', '428', '43', '早乐品致早餐(上地店)', '11.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '429', '自磨原味豆浆（无糖）', '429', '43', '早乐品致早餐(上地店)', '5.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '430', '糯米红枣粥', '430', '43', '早乐品致早餐(上地店)', '7.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '431', '香辣牛肉炒刀削面', '431', '44', '面天下', '23.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '432', '天下猪肉刀削面', '432', '44', '面天下', '20.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '433', '慢煨牛肉刀削面', '433', '44', '面天下', '22.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '434', '肉丝豆角炒刀削面', '434', '44', '面天下', '20.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '435', '蜂蜜柚子茶', '435', '44', '面天下', '5.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '436', '肉丁茄子刀削面', '436', '44', '面天下', '20.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '437', '西红柿鸡蛋拌面', '437', '44', '面天下', '20.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '438', '肉丁茄子面套餐', '438', '44', '面天下', '60.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '439', '炸酱刀削面', '439', '44', '面天下', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '440', '过油肉炒刀削面', '440', '44', '面天下', '20.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '441', '皮蛋瘦肉粥', '441', '45', '嘉和一品粥(金域国际店)', '15.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '442', '一品八宝功夫粥', '442', '45', '嘉和一品粥(金域国际店)', '15.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '443', '扁豆焖面', '443', '45', '嘉和一品粥(金域国际店)', '21.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '444', '多肉馍馍（潼关肉夹馍）', '444', '45', '嘉和一品粥(金域国际店)', '15.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '445', '香脆黄瓜', '445', '45', '嘉和一品粥(金域国际店)', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '446', '葱花饼', '446', '45', '嘉和一品粥(金域国际店)', '14.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '447', '香米粥', '447', '45', '嘉和一品粥(金域国际店)', '5.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '448', '小米粥', '448', '45', '嘉和一品粥(金域国际店)', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '449', '糊塌子', '449', '45', '嘉和一品粥(金域国际店)', '11.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '450', '牛肉馅饼', '450', '45', '嘉和一品粥(金域国际店)', '21.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '451', '金牌虾仁馄饨', '451', '46', '如意馄饨(回龙观店)', '26.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '452', '全家福馄饨', '452', '46', '如意馄饨(回龙观店)', '24.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '453', '麻酱烧饼', '453', '46', '如意馄饨(回龙观店)', '5.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '454', '萝卜牛肉饼', '454', '46', '如意馄饨(回龙观店)', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '455', '虾仁玉米鲜肉馄饨', '455', '46', '如意馄饨(回龙观店)', '25.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '456', '虾仁三鲜馄饨', '456', '46', '如意馄饨(回龙观店)', '25.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '457', '酱香大排', '457', '46', '如意馄饨(回龙观店)', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '458', '玉米鲜肉馄饨', '458', '46', '如意馄饨(回龙观店)', '23.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '459', '超级全家福+牛肉饼+鲜果橙', '459', '46', '如意馄饨(回龙观店)', '36.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '460', '白菜鲜肉馄饨+卤蛋+鲜果橙', '460', '46', '如意馄饨(回龙观店)', '30.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '461', '腊汁肉夹馍', '461', '47', '陕西手工凉皮肉夹馍(第8号档口食之代美食城店)', '11.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '462', '麻酱凉皮', '462', '47', '陕西手工凉皮肉夹馍(第8号档口食之代美食城店)', '12.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '463', '凉皮掺牛筋面', '463', '47', '陕西手工凉皮肉夹馍(第8号档口食之代美食城店)', '12.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '464', '纯瘦肉夹馍', '464', '47', '陕西手工凉皮肉夹馍(第8号档口食之代美食城店)', '12.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '465', '纯瘦肉夹馍', '465', '47', '陕西手工凉皮肉夹馍(第8号档口食之代美食城店)', '12.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '466', '凉皮掺牛筋面', '466', '47', '陕西手工凉皮肉夹馍(第8号档口食之代美食城店)', '12.58');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '467', '白吉馍', '467', '47', '陕西手工凉皮肉夹馍(第8号档口食之代美食城店)', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '468', '凉皮＋腊脂肉夹馍', '468', '47', '陕西手工凉皮肉夹馍(第8号档口食之代美食城店)', '12.76');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '469', '牛筋面', '469', '47', '陕西手工凉皮肉夹馍(第8号档口食之代美食城店)', '12.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '470', '酸辣粉', '470', '47', '陕西手工凉皮肉夹馍(第8号档口食之代美食城店)', '16.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '471', '鸡蛋炒面', '471', '48', '晋味坊手工刀削面家常菜(霍营店)', '19.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '472', '传统小炖肉面', '472', '48', '晋味坊手工刀削面家常菜(霍营店)', '21.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '473', '精品排骨面', '473', '48', '晋味坊手工刀削面家常菜(霍营店)', '21.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '474', '秘制坛肉', '474', '48', '晋味坊手工刀削面家常菜(霍营店)', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '475', '鸡块烧土豆', '475', '48', '晋味坊手工刀削面家常菜(霍营店)', '24.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '476', '西红柿鸡蛋面', '476', '48', '晋味坊手工刀削面家常菜(霍营店)', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '477', '老汤秘制腔骨', '477', '48', '晋味坊手工刀削面家常菜(霍营店)', '48.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '478', '肉夹馍', '478', '48', '晋味坊手工刀削面家常菜(霍营店)', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '479', '凉皮', '479', '48', '晋味坊手工刀削面家常菜(霍营店)', '12.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '4', '面食粥点', '0', null, '480', '老山西狮子头', '480', '48', '晋味坊手工刀削面家常菜(霍营店)', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '481', '黄金玉米粥 ', '481', '49', 'U鼎冒菜(回龙观华联店)', '2.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '482', '猪肉大葱饼 ', '482', '49', 'U鼎冒菜(回龙观华联店)', '15.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '483', '小咸菜 ', '483', '49', 'U鼎冒菜(回龙观华联店)', '0.70');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '484', '陈醋 ', '484', '49', 'U鼎冒菜(回龙观华联店)', '0.70');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '485', '韭菜鸡蛋 ', '485', '49', 'U鼎冒菜(回龙观华联店)', '14.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '486', '猪肉大葱 ', '486', '49', 'U鼎冒菜(回龙观华联店)', '15.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '487', '陕西辣椒 ', '487', '49', 'U鼎冒菜(回龙观华联店)', '0.70');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '488', '咸鸭蛋 ', '488', '49', 'U鼎冒菜(回龙观华联店)', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '489', '猪大+热干面+玉米粥+咸鸭蛋 ', '489', '49', 'U鼎冒菜(回龙观华联店)', '30.99');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '490', '牛肉香菇饼 ', '490', '49', 'U鼎冒菜(回龙观华联店)', '20.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '491', '肥牛时蔬套餐', '491', '50', '拌它麻辣拌（小营店）', '19.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '492', '牛气冲天冒菜套餐', '492', '50', '拌它麻辣拌（小营店）', '32.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '493', '金豆生香冒菜套餐', '493', '50', '拌它麻辣拌（小营店）', '22.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '494', '三荤三素冒菜套餐', '494', '50', '拌它麻辣拌（小营店）', '29.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '495', '【1人食】鼎级牛肉套餐', '495', '50', '拌它麻辣拌（小营店）', '30.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '496', '【1人食】元气鱻鱼冒菜套餐', '496', '50', '拌它麻辣拌（小营店）', '30.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '497', '什锦冒菜套餐', '497', '50', '拌它麻辣拌（小营店）', '28.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '498', 'U选荟萃冒菜套餐', '498', '50', '拌它麻辣拌（小营店）', '39.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '499', '【汤品套餐】点餐须知：', '499', '50', '拌它麻辣拌（小营店）', '0.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '500', '什锦冒菜套餐', '500', '50', '拌它麻辣拌（小营店）', '28.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '501', '番茄巴沙鱼鲜蔬餐（不含米饭）', '501', '51', '香河肉饼(第2号档口汉江美美食城店)', '41.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '502', '元气巴沙鱼人气餐（不含米饭）', '502', '51', '香河肉饼(第2号档口汉江美美食城店)', '41.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '503', '蔬食主义套餐', '503', '51', '香河肉饼(第2号档口汉江美美食城店)', '40.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '504', '经典麻辣套餐', '504', '51', '香河肉饼(第2号档口汉江美美食城店)', '35.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '505', '经典番茄套餐', '505', '51', '香河肉饼(第2号档口汉江美美食城店)', '35.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '506', '番茄巴沙鱼人气套餐', '506', '51', '香河肉饼(第2号档口汉江美美食城店)', '43.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '507', '欢辣巴沙鱼人气套餐', '507', '51', '香河肉饼(第2号档口汉江美美食城店)', '43.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '508', '酸爽巴沙鱼人气套餐', '508', '51', '香河肉饼(第2号档口汉江美美食城店)', '43.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '509', '元气巴沙鱼人气套餐', '509', '51', '香河肉饼(第2号档口汉江美美食城店)', '43.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '510', '@微麻微辣@', '510', '52', '山西刀削面盖浇饭', '0.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '511', '@招牌酸甜口味@', '511', '52', '山西刀削面盖浇饭', '0.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '512', '@招牌秘制@', '512', '52', '山西刀削面盖浇饭', '0.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '513', '@大麻大辣@', '513', '52', '山西刀削面盖浇饭', '0.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '514', '@方便面@', '514', '52', '山西刀削面盖浇饭', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '515', '网格土豆', '515', '52', '山西刀削面盖浇饭', '3.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '516', '@微麻微辣@', '516', '52', '山西刀削面盖浇饭', '0.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '517', '@招牌酸甜口味@', '517', '52', '山西刀削面盖浇饭', '0.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '518', '@大@米@饭@', '518', '52', '山西刀削面盖浇饭', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '519', '娃娃菜', '519', '52', '山西刀削面盖浇饭', '3.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '520', '娃娃菜', '520', '53', '辣山城麻辣香锅(第4号档口顺鑫美食城店)', '2.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '521', '金针菇', '521', '53', '辣山城麻辣香锅(第4号档口顺鑫美食城店)', '2.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '522', '芝麻酱', '522', '53', '辣山城麻辣香锅(第4号档口顺鑫美食城店)', '2.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '523', '鹌鹑蛋', '523', '53', '辣山城麻辣香锅(第4号档口顺鑫美食城店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '524', '鱼豆腐', '524', '53', '辣山城麻辣香锅(第4号档口顺鑫美食城店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '525', '油豆皮', '525', '53', '辣山城麻辣香锅(第4号档口顺鑫美食城店)', '2.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '526', '圆生菜', '526', '53', '辣山城麻辣香锅(第4号档口顺鑫美食城店)', '2.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '527', '土豆片', '527', '53', '辣山城麻辣香锅(第4号档口顺鑫美食城店)', '2.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '528', '鸭血', '528', '53', '辣山城麻辣香锅(第4号档口顺鑫美食城店)', '2.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '529', '绿叶菠菜', '529', '53', '辣山城麻辣香锅(第4号档口顺鑫美食城店)', '2.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '530', '香香米饭', '530', '54', '三味口岸麻辣拌(第4号档口Magiczoomsc店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '531', '微麻微辣', '531', '54', '三味口岸麻辣拌(第4号档口Magiczoomsc店)', '0.98');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '532', '娃娃菜', '532', '54', '三味口岸麻辣拌(第4号档口Magiczoomsc店)', '3.98');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '533', '中麻中辣', '533', '54', '三味口岸麻辣拌(第4号档口Magiczoomsc店)', '0.98');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '534', '土豆片', '534', '54', '三味口岸麻辣拌(第4号档口Magiczoomsc店)', '3.98');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '535', '鸡胸肉', '535', '54', '三味口岸麻辣拌(第4号档口Magiczoomsc店)', '4.98');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '536', '油豆皮', '536', '54', '三味口岸麻辣拌(第4号档口Magiczoomsc店)', '3.98');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '537', '鸭血', '537', '54', '三味口岸麻辣拌(第4号档口Magiczoomsc店)', '3.98');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '538', '平菇', '538', '54', '三味口岸麻辣拌(第4号档口Magiczoomsc店)', '3.98');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '539', '青笋', '539', '54', '三味口岸麻辣拌(第4号档口Magiczoomsc店)', '3.98');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '540', '老板爱+方便面', '540', '55', '抚顺6街麻辣拌（清河店）', '26.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '541', '单人套餐+馒头', '541', '55', '抚顺6街麻辣拌（清河店）', '26.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '542', '老板爱+方便面', '542', '55', '抚顺6街麻辣拌（清河店）', '26.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '543', '老板爱+米饭', '543', '55', '抚顺6街麻辣拌（清河店）', '27.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '544', '老板爱+花卷', '544', '55', '抚顺6街麻辣拌（清河店）', '26.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '545', '双人套餐+花卷', '545', '55', '抚顺6街麻辣拌（清河店）', '48.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '546', '双人套餐+馒头', '546', '55', '抚顺6街麻辣拌（清河店）', '46.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '547', '双人套餐+米饭', '547', '55', '抚顺6街麻辣拌（清河店）', '48.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '548', '双人套餐+方便面', '548', '55', '抚顺6街麻辣拌（清河店）', '46.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '549', '金针菇', '549', '55', '抚顺6街麻辣拌（清河店）', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '550', '天真無邪（单人套餐）', '550', '56', '無邪冒菜(安宁庄第15档口餐行者美食城店)', '22.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '551', '超值牛肉套餐（什锦）', '551', '56', '無邪冒菜(安宁庄第15档口餐行者美食城店)', '23.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '552', '两小無猜（双人套餐）', '552', '56', '無邪冒菜(安宁庄第15档口餐行者美食城店)', '32.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '553', '超值肥牛套餐（什锦）', '553', '56', '無邪冒菜(安宁庄第15档口餐行者美食城店)', '22.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '554', '特色午餐肉套餐（什锦）', '554', '56', '無邪冒菜(安宁庄第15档口餐行者美食城店)', '19.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '555', '超值小酥肉套餐（什锦）', '555', '56', '無邪冒菜(安宁庄第15档口餐行者美食城店)', '22.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '556', '素什锦', '556', '56', '無邪冒菜(安宁庄第15档口餐行者美食城店)', '16.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '557', '特色牛丸套餐（什锦）', '557', '56', '無邪冒菜(安宁庄第15档口餐行者美食城店)', '34.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '558', '特色虾饺套餐（什锦）', '558', '56', '無邪冒菜(安宁庄第15档口餐行者美食城店)', '36.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '559', '超值牛肉套餐（什锦）', '559', '56', '無邪冒菜(安宁庄第15档口餐行者美食城店)', '23.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '560', '嫩滑牛肉片40g', '560', '57', '一碗小烫捞&全球的麻辣烫(回龙观店)', '6.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '561', '腐皮三鲜卷2个', '561', '57', '一碗小烫捞&全球的麻辣烫(回龙观店)', '5.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '562', '芝士小方1个', '562', '57', '一碗小烫捞&全球的麻辣烫(回龙观店)', '4.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '563', '樱花虾饼1个', '563', '57', '一碗小烫捞&全球的麻辣烫(回龙观店)', '4.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '564', '全竹轮烧2个', '564', '57', '一碗小烫捞&全球的麻辣烫(回龙观店)', '4.30');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '565', '元气鱼籽福袋1个', '565', '57', '一碗小烫捞&全球的麻辣烫(回龙观店)', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '566', '老成都小酥肉40g', '566', '57', '一碗小烫捞&全球的麻辣烫(回龙观店)', '4.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '567', '性感小鸡肉3-4块', '567', '57', '一碗小烫捞&全球的麻辣烫(回龙观店)', '5.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '568', '章鱼小丸子1个', '568', '57', '一碗小烫捞&全球的麻辣烫(回龙观店)', '4.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '569', '台湾麻吉烧2个', '569', '57', '一碗小烫捞&全球的麻辣烫(回龙观店)', '4.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '570', '超级套餐', '570', '58', '重庆麻辣烫(第8号档口餐行者美食广场店)', '42.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '571', '男神套餐', '571', '58', '重庆麻辣烫(第8号档口餐行者美食广场店)', '34.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '572', '男神套餐', '572', '58', '重庆麻辣烫(第8号档口餐行者美食广场店)', '28.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '573', '男神套餐2', '573', '58', '重庆麻辣烫(第8号档口餐行者美食广场店)', '33.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '574', '女神套餐', '574', '58', '重庆麻辣烫(第8号档口餐行者美食广场店)', '34.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '575', '女神套餐2', '575', '58', '重庆麻辣烫(第8号档口餐行者美食广场店)', '33.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '576', '精品套餐', '576', '58', '重庆麻辣烫(第8号档口餐行者美食广场店)', '38.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '577', '特价套餐', '577', '58', '重庆麻辣烫(第8号档口餐行者美食广场店)', '45.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '578', '麻辣香锅丸子套餐', '578', '58', '重庆麻辣烫(第8号档口餐行者美食广场店)', '42.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '579', '特价肥羊', '579', '58', '重庆麻辣烫(第8号档口餐行者美食广场店)', '5.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '580', '东北嘎嘎亮米饭…$', '580', '59', '抚顺6街麻辣拌(回龙观店)', '2.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '581', '老板爱+花卷', '581', '59', '抚顺6街麻辣拌(回龙观店)', '26.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '582', '老板爱+馒头', '582', '59', '抚顺6街麻辣拌(回龙观店)', '26.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '583', '老板爱+米饭', '583', '59', '抚顺6街麻辣拌(回龙观店)', '28.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '584', '老板爱+方便面', '584', '59', '抚顺6街麻辣拌(回龙观店)', '26.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '585', '双人套餐+米饭', '585', '59', '抚顺6街麻辣拌(回龙观店)', '48.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '586', '双人套餐+馒头', '586', '59', '抚顺6街麻辣拌(回龙观店)', '46.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '587', '双人套餐+方便面', '587', '59', '抚顺6街麻辣拌(回龙观店)', '46.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '588', '双人套餐+花卷', '588', '59', '抚顺6街麻辣拌(回龙观店)', '46.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '589', '油豆皮', '589', '59', '抚顺6街麻辣拌(回龙观店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '590', '单人白领套餐', '590', '60', '嗨冒菜(第B5号档口家的港湾美食城店)', '41.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '591', '闺蜜双人套餐', '591', '60', '嗨冒菜(第B5号档口家的港湾美食城店)', '69.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '592', '五花肉套餐', '592', '60', '嗨冒菜(第B5号档口家的港湾美食城店)', '36.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '593', '低卡鸡胸肉套餐', '593', '60', '嗨冒菜(第B5号档口家的港湾美食城店)', '35.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '594', '龙利鱼套餐', '594', '60', '嗨冒菜(第B5号档口家的港湾美食城店)', '39.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '595', '霸道总裁套餐', '595', '60', '嗨冒菜(第B5号档口家的港湾美食城店)', '46.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '596', '白萝卜', '596', '60', '嗨冒菜(第B5号档口家的港湾美食城店)', '3.98');
INSERT INTO `code_goods` VALUES ('0', '美食', '5', '香锅冒菜', '0', null, '597', '冬瓜', '597', '60', '嗨冒菜(第B5号档口家的港湾美食城店)', '3.98');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '598', '煎蛋', '598', '61', '正一味石锅拌饭(昌平悦荟万科店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '599', '泡菜汤（含米饭）', '599', '61', '正一味石锅拌饭(昌平悦荟万科店)', '25.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '600', '辣白菜五花肉石锅拌饭', '600', '61', '正一味石锅拌饭(昌平悦荟万科店)', '32.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '601', '炒年糕(大份)', '601', '61', '正一味石锅拌饭(昌平悦荟万科店)', '22.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '602', '正一味石锅拌饭', '602', '61', '正一味石锅拌饭(昌平悦荟万科店)', '26.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '603', '玲珑鸡块', '603', '61', '正一味石锅拌饭(昌平悦荟万科店)', '12.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '604', '牛肉石锅拌饭', '604', '61', '正一味石锅拌饭(昌平悦荟万科店)', '35.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '605', '海鲜炒乌冬面', '605', '61', '正一味石锅拌饭(昌平悦荟万科店)', '26.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '606', '大酱汤（含米饭）', '606', '61', '正一味石锅拌饭(昌平悦荟万科店)', '25.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '607', '泡菜炒饭', '607', '61', '正一味石锅拌饭(昌平悦荟万科店)', '12.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '608', '南瓜羹外卖', '608', '62', '汉拿山(昌平万科店)', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '609', '石锅拌饭外卖', '609', '62', '汉拿山(昌平万科店)', '35.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '610', '大酱汤外卖', '610', '62', '汉拿山(昌平万科店)', '36.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '611', '辣白菜外卖', '611', '62', '汉拿山(昌平万科店)', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '612', '金牌五花肉拌饭外卖', '612', '62', '汉拿山(昌平万科店)', '36.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '613', '紫菜包饭外卖', '613', '62', '汉拿山(昌平万科店)', '28.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '614', '泡菜五花肉拌饭外卖', '614', '62', '汉拿山(昌平万科店)', '36.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '615', '牛肉拌饭套餐(可乐)', '615', '62', '汉拿山(昌平万科店)', '49.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '616', '白米饭外卖', '616', '62', '汉拿山(昌平万科店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '617', '金牌牛腩饭外卖', '617', '62', '汉拿山(昌平万科店)', '39.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '618', '飘香牛肉串', '618', '63', '权金城.烤串.拌饭(北京昌平万科城店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '619', '烤牛肉拌饭（配拌饭酱1份）', '619', '63', '权金城.烤串.拌饭(北京昌平万科城店)', '39.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '620', '椒麻猪肉串', '620', '63', '权金城.烤串.拌饭(北京昌平万科城店)', '10.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '621', '烤羊肉大串', '621', '63', '权金城.烤串.拌饭(北京昌平万科城店)', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '622', '煎蛋', '622', '63', '权金城.烤串.拌饭(北京昌平万科城店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '623', '嫩香鸡皮串', '623', '63', '权金城.烤串.拌饭(北京昌平万科城店)', '10.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '624', '传统冷面套餐', '624', '63', '权金城.烤串.拌饭(北京昌平万科城店)', '37.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '625', '烤牛五花拌饭（配拌饭酱1份）', '625', '63', '权金城.烤串.拌饭(北京昌平万科城店)', '39.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '626', '泡菜炒饭', '626', '63', '权金城.烤串.拌饭(北京昌平万科城店)', '29.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '627', '传统冷面', '627', '63', '权金城.烤串.拌饭(北京昌平万科城店)', '32.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '628', '吉味双拼饭', '628', '64', '吉野家(昌平新世纪餐厅)', '38.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '629', '招牌牛肉饭(大碗)', '629', '64', '吉野家(昌平新世纪餐厅)', '32.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '630', '照烧鸡排饭(大碗)', '630', '64', '吉野家(昌平新世纪餐厅)', '24.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '631', '招牌牛肉饭(小碗)', '631', '64', '吉野家(昌平新世纪餐厅)', '26.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '632', '金枪鱼土豆泥', '632', '64', '吉野家(昌平新世纪餐厅)', '5.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '633', '摇滚沙拉', '633', '64', '吉野家(昌平新世纪餐厅)', '9.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '634', '吉味双拼饭金枪鱼土豆泥套', '634', '64', '吉野家(昌平新世纪餐厅)', '47.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '635', '合茶碗蒸', '635', '64', '吉野家(昌平新世纪餐厅)', '7.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '636', '经典组合', '636', '64', '吉野家(昌平新世纪餐厅)', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '637', '照烧鸡排饭(小碗)', '637', '64', '吉野家(昌平新世纪餐厅)', '19.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '638', '炸鸡芝士杯子饭', '638', '65', '韩食记', '19.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '639', '五花肉炸鸡套餐', '639', '65', '韩食记', '35.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '640', '五花肉炸鸡杯子饭', '640', '65', '韩食记', '20.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '641', '炸鸡金枪鱼杯子饭', '641', '65', '韩食记', '19.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '642', '金枪鱼芝士套餐', '642', '65', '韩食记', '34.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '643', '金枪鱼芝士杯子饭', '643', '65', '韩食记', '19.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '644', '炸鸡鱼籽杯子饭', '644', '65', '韩食记', '19.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '645', '午餐肉金枪鱼套餐', '645', '65', '韩食记', '34.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '646', '金枪鱼鱼籽杯子饭', '646', '65', '韩食记', '19.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '647', '午餐肉五花肉套餐', '647', '65', '韩食记', '34.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '648', '广岛十味', '648', '66', '37度寿司(第2号档口华润万家美食城店)', '38.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '649', '香鳗寿司（2颗）', '649', '66', '37度寿司(第2号档口华润万家美食城店)', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '650', '挪威三文鱼（2颗）', '650', '66', '37度寿司(第2号档口华润万家美食城店)', '10.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '651', '玉米沙拉（2颗）', '651', '66', '37度寿司(第2号档口华润万家美食城店)', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '652', '芝麻八爪鱼（2颗）', '652', '66', '37度寿司(第2号档口华润万家美食城店)', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '653', '中华沙律（2颗）', '653', '66', '37度寿司(第2号档口华润万家美食城店)', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '654', '肉松寿司（2颗）', '654', '66', '37度寿司(第2号档口华润万家美食城店)', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '655', '香辣鱿鱼（2颗）', '655', '66', '37度寿司(第2号档口华润万家美食城店)', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '656', '蟹肉沙拉（2颗）', '656', '66', '37度寿司(第2号档口华润万家美食城店)', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '657', '辣白菜（2颗）', '657', '66', '37度寿司(第2号档口华润万家美食城店)', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '658', '一品炸酱面', '658', '67', '一品韩匠', '23.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '659', '一品炸鸡块', '659', '67', '一品韩匠', '12.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '660', '一品石锅拌饭+大酱汤', '660', '67', '一品韩匠', '35.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '661', '泡菜五花肉拌饭（送果饮）', '661', '67', '一品韩匠', '29.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '662', '诸葛鸭头', '662', '67', '一品韩匠', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '663', '一品普通冷面', '663', '67', '一品韩匠', '22.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '664', '一品韩式泡菜汤（含米饭）', '664', '67', '一品韩匠', '15.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '665', '一品石锅拌饭（送果饮）', '665', '67', '一品韩匠', '19.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '666', '一品芝士面包鸡蛋卷', '666', '67', '一品韩匠', '26.40');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '667', '油炸屎壳郎', '667', '67', '一品韩匠', '38.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '668', '章鱼烧大粪', '668', '68', '手抓饼章鱼烧（沃尔玛店）', '20.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '669', '章鱼烧中粪', '669', '68', '手抓饼章鱼烧（沃尔玛店）', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '670', '原味手抓饼', '670', '68', '手抓饼章鱼烧（沃尔玛店）', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '671', '关东煮组合', '671', '68', '手抓饼章鱼烧（沃尔玛店）', '30.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '672', '纯肉烤肠', '672', '68', '手抓饼章鱼烧（沃尔玛店）', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '673', '芥末酱', '673', '68', '手抓饼章鱼烧（沃尔玛店）', '0.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '674', '培根火腿煎蛋饼1', '674', '68', '手抓饼章鱼烧（沃尔玛店）', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '675', '照烧鸡腿煎蛋饼', '675', '68', '手抓饼章鱼烧（沃尔玛店）', '17.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '676', '火腿之士煎蛋饼', '676', '68', '手抓饼章鱼烧（沃尔玛店）', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '677', '双培根之士煎蛋饼', '677', '68', '手抓饼章鱼烧（沃尔玛店）', '20.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '678', '玉米沙拉（2粒）', '678', '69', '池田寿司（昌平万科店）', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '679', '烤鳗鱼(2颗）', '679', '69', '池田寿司（昌平万科店）', '10.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '680', '蟹钳肉（2颗）', '680', '69', '池田寿司（昌平万科店）', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '681', '芝麻八爪鱼（2颗）', '681', '69', '池田寿司（昌平万科店）', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '682', '香鳗寿司', '682', '69', '池田寿司（昌平万科店）', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '683', '可可牛肉松（2颗）', '683', '69', '池田寿司（昌平万科店）', '4.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '684', '金枪鱼沙拉卷', '684', '69', '池田寿司（昌平万科店）', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '685', '厚烧玉子（2颗）', '685', '69', '池田寿司（昌平万科店）', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '686', '朝鲜蛤蜊（2颗）', '686', '69', '池田寿司（昌平万科店）', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '687', '秋田十味', '687', '69', '池田寿司（昌平万科店）', '38.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '688', '鳗鱼饭', '688', '70', '河風精致寿司(昌平店)', '98.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '689', '豪华单人', '689', '70', '河風精致寿司(昌平店)', '119.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '690', '全熟豪华单人餐', '690', '70', '河風精致寿司(昌平店)', '119.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '691', '三文鱼刺身', '691', '70', '河風精致寿司(昌平店)', '150.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '692', '河风拌饭', '692', '70', '河風精致寿司(昌平店)', '49.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '693', '焦糖火炙三文鱼套餐', '693', '70', '河風精致寿司(昌平店)', '188.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '694', '鸭胸肉波奇沙拉', '694', '70', '河風精致寿司(昌平店)', '49.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '695', '三文鱼波奇饭', '695', '70', '河風精致寿司(昌平店)', '78.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '696', '豪华单人', '696', '70', '河風精致寿司(昌平店)', '119.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '697', '经典单人', '697', '70', '河風精致寿司(昌平店)', '98.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '698', '烤肥牛', '698', '71', '千骏山(昌平店)', '45.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '699', '朝鲜冷面', '699', '71', '千骏山(昌平店)', '23.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '700', '韩式炸酱面', '700', '71', '千骏山(昌平店)', '22.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '701', '热面', '701', '71', '千骏山(昌平店)', '25.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '702', '西胡芦饼', '702', '71', '千骏山(昌平店)', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '703', '拌五香豆付丝', '703', '71', '千骏山(昌平店)', '10.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '704', '经典石锅拌饭', '704', '71', '千骏山(昌平店)', '22.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '705', '石锅牛肉拌饭', '705', '71', '千骏山(昌平店)', '25.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '706', '蛋炒饭', '706', '71', '千骏山(昌平店)', '12.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '707', '泡菜炒饭', '707', '71', '千骏山(昌平店)', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '708', '特制赤味拉面', '708', '72', '本气家', '43.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '709', '超人气小叉烧饭', '709', '72', '本气家', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '710', '海鲜油梨沙拉', '710', '72', '本气家', '28.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '711', '本气家蔬菜沙拉', '711', '72', '本气家', '28.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '712', '蟹籽沙拉', '712', '72', '本气家', '32.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '713', '金枪鱼沙拉', '713', '72', '本气家', '38.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '714', '味付海藻', '714', '72', '本气家', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '715', '辣白菜', '715', '72', '本气家', '20.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '716', '鸡蛋卷', '716', '72', '本气家', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '6', '日韩料理', '0', null, '717', '芥末海螺片', '717', '72', '本气家', '28.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '718', '香辣鸡腿堡(汉堡)ST', '718', '73', '肯德基宅急送(文华路店）', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '719', '二块新奥尔良烤翅T', '719', '73', '肯德基宅急送(文华路店）', '12.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '720', '老北京鸡肉卷T', '720', '73', '肯德基宅急送(文华路店）', '16.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '721', '二块香辣鸡翅(炸鸡)T', '721', '73', '肯德基宅急送(文华路店）', '11.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '722', '红豆派T', '722', '73', '肯德基宅急送(文华路店）', '6.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '723', '劲脆鸡腿堡ST', '723', '73', '肯德基宅急送(文华路店）', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '724', '鸡肉卷九珍套餐T', '724', '73', '肯德基宅急送(文华路店）', '27.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '725', '双杯中拿铁套餐T', '725', '73', '肯德基宅急送(文华路店）', '32.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '726', '辣翅九珍套餐T', '726', '73', '肯德基宅急送(文华路店）', '22.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '727', '香辣鸡腿堡S豆泥餐T', '727', '73', '肯德基宅急送(文华路店）', '39.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '728', '买那么大鲜柠可乐送鸡翅1对', '728', '74', '北京麦当劳文华路餐厅', '25.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '729', '海陆空三味大餐', '729', '74', '北京麦当劳文华路餐厅', '128.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '730', '那么大红豆珍珠奶茶两件特惠(暖)', '730', '74', '北京麦当劳文华路餐厅', '40.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '731', '那么大红豆珍珠奶茶两件特惠(冷)', '731', '74', '北京麦当劳文华路餐厅', '40.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '732', '巧克力派两件特惠', '732', '74', '北京麦当劳文华路餐厅', '16.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '733', '可盐可甜下午茶', '733', '74', '北京麦当劳文华路餐厅', '40.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '734', '无辣不欢组合', '734', '74', '北京麦当劳文华路餐厅', '52.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '735', '麦趣鸡盒（雪碧特惠）', '735', '74', '北京麦当劳文华路餐厅', '92.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '736', '金拱门桶A', '736', '74', '北京麦当劳文华路餐厅', '63.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '737', '大快朵颐超棒传统比萨（12吋）', '737', '75', '棒约翰比萨(北京西三旗店)', '109.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '738', '魔法海鲜传统比萨（12吋）', '738', '75', '棒约翰比萨(北京西三旗店)', '105.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '739', '超级棒约翰传统比萨（12吋）', '739', '75', '棒约翰比萨(北京西三旗店)', '105.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '740', '浓香芝士传统比萨（12吋）', '740', '75', '棒约翰比萨(北京西三旗店)', '105.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '741', '约翰至爱传统比萨（12吋）', '741', '75', '棒约翰比萨(北京西三旗店)', '105.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '742', '榴莲果肉传统比萨（12吋）', '742', '75', '棒约翰比萨(北京西三旗店)', '99.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '743', '浓香芝士传统比萨（12吋）', '743', '75', '棒约翰比萨(北京西三旗店)', '99.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '744', '美式腊肠传统比萨（9吋', '744', '75', '棒约翰比萨(北京西三旗店)', '69.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '745', '榴莲果肉传统比萨（9吋）', '745', '75', '棒约翰比萨(北京西三旗店)', '69.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '746', '奥尔良烤全翅', '746', '75', '棒约翰比萨(北京西三旗店)', '28.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '747', '超级至尊比萨S[芝心][10英寸]', '747', '76', '必胜客宅急送（回龙观东店）', '94.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '748', '浓情烤翅S[2块装]', '748', '76', '必胜客宅急送（回龙观东店）', '15.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '749', '海鲜至尊比萨S[芝心][10英寸]', '749', '76', '必胜客宅急送（回龙观东店）', '98.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '750', '香酥鸡米花S', '750', '76', '必胜客宅急送（回龙观东店）', '11.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '751', '美式大薯格(120g)', '751', '76', '必胜客宅急送（回龙观东店）', '20.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '752', '肉酱意面套餐', '752', '76', '必胜客宅急送（回龙观东店）', '74.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '753', '跨年三人套餐', '753', '76', '必胜客宅急送（回龙观东店）', '220.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '754', '圣诞两人套餐', '754', '76', '必胜客宅急送（回龙观东店）', '170.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '755', '匈牙利牛肉焗饭套餐', '755', '76', '必胜客宅急送（回龙观东店）', '77.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '756', '超级至尊比萨套餐', '756', '76', '必胜客宅急送（回龙观东店）', '79.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '757', '招牌肉夹馍', '757', '77', '肉夹小魔王(上地五彩城店)', '12.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '758', '招牌馍夹蛋（肉汁卤蛋）', '758', '77', '肉夹小魔王(上地五彩城店)', '10.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '759', '招牌肉夹馍+招牌馍夹蛋+丸子汤', '759', '77', '肉夹小魔王(上地五彩城店)', '35.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '760', '丸子汤', '760', '77', '肉夹小魔王(上地五彩城店)', '10.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '761', '招牌肉夹馍+丸子汤', '761', '77', '肉夹小魔王(上地五彩城店)', '22.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '762', '馍夹菜（凉拌土豆丝）', '762', '77', '肉夹小魔王(上地五彩城店)', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '763', '招牌肉夹馍（精瘦）', '763', '77', '肉夹小魔王(上地五彩城店)', '15.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '764', '馍夹菜（耗油海带丝）', '764', '77', '肉夹小魔王(上地五彩城店)', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '765', '银耳汤', '765', '77', '肉夹小魔王(上地五彩城店)', '12.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '766', '平遥牛肉夹馍', '766', '77', '肉夹小魔王(上地五彩城店)', '17.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '767', '汉堡类', '767', '78', '华莱士炸鸡汉堡（霍营店）', '13.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '768', '鸡翅类', '768', '78', '华莱士炸鸡汉堡（霍营店）', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '769', '薯条', '769', '78', '华莱士炸鸡汉堡（霍营店）', '8.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '770', '主食卷类', '770', '78', '华莱士炸鸡汉堡（霍营店）', '14.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '771', '鸡腿', '771', '78', '华莱士炸鸡汉堡（霍营店）', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '772', '鸡米花', '772', '78', '华莱士炸鸡汉堡（霍营店）', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '773', '小吃类', '773', '78', '华莱士炸鸡汉堡（霍营店）', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '774', '华香脆骨串', '774', '78', '华莱士炸鸡汉堡（霍营店）', '4.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '775', '汉堡+鸡米花', '775', '78', '华莱士炸鸡汉堡（霍营店）', '24.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '776', '门店特色', '776', '78', '华莱士炸鸡汉堡（霍营店）', '44.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '777', '经典金枪鱼三明治', '777', '79', '大卫船长健康厨房（东亚上北店）', '30.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '778', '水手煎蛋', '778', '79', '大卫船长健康厨房（东亚上北店）', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '779', '板烧鸡腿三明治', '779', '79', '大卫船长健康厨房（东亚上北店）', '39.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '780', '煮鸡蛋', '780', '79', '大卫船长健康厨房（东亚上北店）', '2.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '781', '芒果香烤大虾轻食', '781', '79', '大卫船长健康厨房（东亚上北店）', '44.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '782', '甜玉米', '782', '79', '大卫船长健康厨房（东亚上北店）', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '783', '茄汁香肠意面', '783', '79', '大卫船长健康厨房（东亚上北店）', '28.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '784', '经典意大利肉酱面', '784', '79', '大卫船长健康厨房（东亚上北店）', '32.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '785', '鳄梨扒虾三明治', '785', '79', '大卫船长健康厨房（东亚上北店）', '25.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '786', '蒲烧龙利鱼拼香草鸡腿饭', '786', '79', '大卫船长健康厨房（东亚上北店）', '44.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '787', '超大份盐酥鸡', '787', '80', '亚米荟盐酥鸡（龙旗广场店）', '19.88');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '788', '咔嗞脆骨', '788', '80', '亚米荟盐酥鸡（龙旗广场店）', '14.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '789', '原味盐酥鸡', '789', '80', '亚米荟盐酥鸡（龙旗广场店）', '13.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '790', '酥脆鸡胗', '790', '80', '亚米荟盐酥鸡（龙旗广场店）', '13.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '791', '蒜香杏鲍菇', '791', '80', '亚米荟盐酥鸡（龙旗广场店）', '9.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '792', '爱吃吃不爱吃滚', '792', '80', '亚米荟盐酥鸡（龙旗广场店）', '1.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '793', '甘梅地瓜', '793', '80', '亚米荟盐酥鸡（龙旗广场店）', '9.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '794', '爆炸鱿鱼须', '794', '80', '亚米荟盐酥鸡（龙旗广场店）', '13.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '795', '超大份盐酥鸡+少年鸡排', '795', '80', '亚米荟盐酥鸡（龙旗广场店）', '39.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '796', '鸡排汉堡', '796', '80', '亚米荟盐酥鸡（龙旗广场店）', '15.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '797', '汉堡类', '797', '81', '华莱士炸鸡汉堡(北京回龙观店)', '13.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '798', '鸡翅类', '798', '81', '华莱士炸鸡汉堡(北京回龙观店)', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '799', '主食卷类', '799', '81', '华莱士炸鸡汉堡(北京回龙观店)', '14.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '800', '华香脆骨串', '800', '81', '华莱士炸鸡汉堡(北京回龙观店)', '4.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '801', '鸡腿', '801', '81', '华莱士炸鸡汉堡(北京回龙观店)', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '802', '薯条', '802', '81', '华莱士炸鸡汉堡(北京回龙观店)', '8.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '803', '汉堡+鸡米花', '803', '81', '华莱士炸鸡汉堡(北京回龙观店)', '24.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '804', '汉堡（加shi）', '804', '81', '华莱士炸鸡汉堡(北京回龙观店)', '13.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '805', '门店特色', '805', '81', '华莱士炸鸡汉堡(北京回龙观店)', '44.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '806', '圣诞单人套餐', '806', '81', '华莱士炸鸡汉堡(北京回龙观店)', '46.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '807', '香菠鸡肉芝士薄饼', '807', '82', '恰食芝士薄饼（黄平路店）', '36.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '808', '黑麦低卡芝士薄饼', '808', '82', '恰食芝士薄饼（黄平路店）', '36.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '809', '鲜嫩鸡米花', '809', '82', '恰食芝士薄饼（黄平路店）', '9.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '810', '加倍芝士（不可单点）', '810', '82', '恰食芝士薄饼（黄平路店）', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '811', '四国香肠3根装', '811', '82', '恰食芝士薄饼（黄平路店）', '15.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '812', '榴莲比萨/香菠品质双人套餐', '812', '82', '恰食芝士薄饼（黄平路店）', '109.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '813', '甜薯/香菠品质双人套餐', '813', '82', '恰食芝士薄饼（黄平路店）', '112.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '814', '至尊/金枪鱼品质双人套餐', '814', '82', '恰食芝士薄饼（黄平路店）', '114.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '815', '四国香肠3根装', '815', '82', '恰食芝士薄饼（黄平路店）', '15.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '816', '金枪鱼芝士焗饭套餐', '816', '82', '恰食芝士薄饼（黄平路店）', '41.88');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '817', '浓情烤翅S[2块装]', '817', '83', '必胜客宅急送(西三旗店)', '15.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '818', '海鲜至尊比萨S[芝心][10英寸]', '818', '83', '必胜客宅急送(西三旗店)', '98.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '819', '香酥鸡米花S', '819', '83', '必胜客宅急送(西三旗店)', '11.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '820', '美式大薯格(120g)', '820', '83', '必胜客宅急送(西三旗店)', '20.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '821', '肉酱意面套餐', '821', '83', '必胜客宅急送(西三旗店)', '74.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '822', '跨年三人套餐', '822', '83', '必胜客宅急送(西三旗店)', '220.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '823', '圣诞两人套餐', '823', '83', '必胜客宅急送(西三旗店)', '170.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '824', '超级至尊比萨套餐', '824', '83', '必胜客宅急送(西三旗店)', '79.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '825', '照烧鸡肉炒饭套餐', '825', '83', '必胜客宅急送(西三旗店)', '49.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '826', '匈牙利牛肉焗饭套餐', '826', '83', '必胜客宅急送(西三旗店)', '77.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '827', '单人独享套餐', '827', '84', '麦特派炸鸡汉堡(第10号档口餐行者美食广场店)', '38.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '828', '香辣鸡腿堡', '828', '84', '麦特派炸鸡汉堡(第10号档口餐行者美食广场店)', '14.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '829', '薯条', '829', '84', '麦特派炸鸡汉堡(第10号档口餐行者美食广场店)', '99.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '830', '香辣鸡翅', '830', '84', '麦特派炸鸡汉堡(第10号档口餐行者美食广场店)', '11.66');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '831', '蛋挞／2个', '831', '84', '麦特派炸鸡汉堡(第10号档口餐行者美食广场店)', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '832', '上校鸡块', '832', '84', '麦特派炸鸡汉堡(第10号档口餐行者美食广场店)', '10.99');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '833', '双层香辣鸡腿堡', '833', '84', '麦特派炸鸡汉堡(第10号档口餐行者美食广场店)', '21.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '834', '蜂蜜芥末炸鸡（整只）', '834', '84', '麦特派炸鸡汉堡(第10号档口餐行者美食广场店)', null);
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '835', '全鸡套餐:全鸡+薯条+可乐', '835', '84', '麦特派炸鸡汉堡(第10号档口餐行者美食广场店)', null);
INSERT INTO `code_goods` VALUES ('0', '美食', '7', '汉堡披萨', '0', null, '836', '蜂蜜芥末小腿（6个）', '836', '84', '麦特派炸鸡汉堡(第10号档口餐行者美食广场店)', '180.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '837', '牛油果鸡胸低脂套餐', '837', '85', '轻食π(第11号档口餐行者美食广场店)', '25.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '838', '香煎鸡胸增肌盒套餐', '838', '85', '轻食π(第11号档口餐行者美食广场店)', '23.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '839', '水煮鸡蛋', '839', '85', '轻食π(第11号档口餐行者美食广场店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '840', '尼斯金枪鱼套餐', '840', '85', '轻食π(第11号档口餐行者美食广场店)', '25.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '841', '紫薯块', '841', '85', '轻食π(第11号档口餐行者美食广场店)', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '842', '香煎鸡胸', '842', '85', '轻食π(第11号档口餐行者美食广场店)', '12.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '843', '单点酱汁', '843', '85', '轻食π(第11号档口餐行者美食广场店)', '5.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '844', '健体沙朗牛排盒套餐', '844', '85', '轻食π(第11号档口餐行者美食广场店)', '29.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '845', '圣女果', '845', '85', '轻食π(第11号档口餐行者美食广场店)', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '846', '香煎深海龙利鱼鲜盒套餐', '846', '85', '轻食π(第11号档口餐行者美食广场店)', '28.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '847', '甜薯/香菠品质双人套餐', '847', '86', '恰食芝士薄饼（黄平路店）', '112.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '848', '榴莲比萨/香菠品质双人套餐', '848', '86', '恰食芝士薄饼（黄平路店）', '109.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '849', '至尊/金枪鱼品质双人套餐', '849', '86', '恰食芝士薄饼（黄平路店）', '114.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '850', '四国香肠3根装', '850', '86', '恰食芝士薄饼（黄平路店）', '15.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '851', '蜜汁烤翅', '851', '86', '恰食芝士薄饼（黄平路店）', '12.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '852', '金枪鱼芝士焗饭套餐', '852', '86', '恰食芝士薄饼（黄平路店）', '41.88');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '853', '香酥鸡排芝士焗饭套餐', '853', '86', '恰食芝士薄饼（黄平路店）', '36.88');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '854', '咖喱鸡肉芝士焗饭套餐', '854', '86', '恰食芝士薄饼（黄平路店）', '34.88');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '855', '意式火腿芝士焗饭套餐', '855', '86', '恰食芝士薄饼（黄平路店）', '39.88');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '856', '韩式烤肉芝士焗饭套餐', '856', '86', '恰食芝士薄饼（黄平路店）', '35.88');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '857', '经典金枪鱼三明治', '857', '87', '大卫船长健康厨房（东亚上北店）', '30.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '858', '水手煎蛋', '858', '87', '大卫船长健康厨房（东亚上北店）', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '859', '板烧鸡腿三明治', '859', '87', '大卫船长健康厨房（东亚上北店）', '38.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '860', '煮鸡蛋', '860', '87', '大卫船长健康厨房（东亚上北店）', '2.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '861', '芒果香烤大虾轻食', '861', '87', '大卫船长健康厨房（东亚上北店）', '44.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '862', '甜玉米', '862', '87', '大卫船长健康厨房（东亚上北店）', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '863', '经典意大利肉酱面', '863', '87', '大卫船长健康厨房（东亚上北店）', '32.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '864', '茄汁香肠意面', '864', '87', '大卫船长健康厨房（东亚上北店）', '28.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '865', '紫薯', '865', '87', '大卫船长健康厨房（东亚上北店）', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '866', '鳄梨扒虾三明治', '866', '87', '大卫船长健康厨房（东亚上北店）', '35.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '867', '日式鸡肉沙拉', '867', '88', '与尔轻食（回龙观店）', '37.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '868', '香煎鸡肉糙米饭', '868', '88', '与尔轻食（回龙观店）', '37.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '869', '德式金枪鱼土豆沙拉', '869', '88', '与尔轻食（回龙观店）', '36.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '870', '与尔经典考伯沙拉', '870', '88', '与尔轻食（回龙观店）', '37.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '871', '水煮蛋', '871', '88', '与尔轻食（回龙观店）', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '872', '无油香煎鸡肉', '872', '88', '与尔轻食（回龙观店）', '18.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '873', '与尔冷面', '873', '88', '与尔轻食（回龙观店）', '38.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '874', '与尔经典考伯沙拉', '874', '88', '与尔轻食（回龙观店）', '37.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '875', '法式尼斯沙拉', '875', '88', '与尔轻食（回龙观店）', '36.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '876', '西兰花', '876', '88', '与尔轻食（回龙观店）', '8.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '877', '牛魔王沙拉', '877', '89', '莱维贝贝轻食(第3号档口新时代美食城店)', '42.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '878', '鸡胸荞麦面', '878', '89', '莱维贝贝轻食(第3号档口新时代美食城店)', '42.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '879', '瘦身鸡胸【热】', '879', '89', '莱维贝贝轻食(第3号档口新时代美食城店)', '42.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '880', '柠檬鸡胸RoastChicken', '880', '89', '莱维贝贝轻食(第3号档口新时代美食城店)', '12.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '881', '鸡蛋BoiledEgg', '881', '89', '莱维贝贝轻食(第3号档口新时代美食城店)', '2.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '882', '鱼舟杂粮拌饭', '882', '89', '莱维贝贝轻食(第3号档口新时代美食城店)', '40.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '883', '香煎豆腐Pan-friedTofu', '883', '89', '莱维贝贝轻食(第3号档口新时代美食城店)', '7.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '884', '“轻”新低卡素食', '884', '89', '莱维贝贝轻食(第3号档口新时代美食城店)', '18.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '885', '香煎杏鲍菇OysterMushroom', '885', '89', '莱维贝贝轻食(第3号档口新时代美食城店)', '6.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '886', '酱汁自选choose a sauce', '886', '89', '莱维贝贝轻食(第3号档口新时代美食城店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '887', '暖冬套餐 （9英寸） ', '887', '90', '乌巢比萨主义主题餐厅（回龙观店)', '137.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '888', '七折比萨套餐（18英寸）', '888', '90', '乌巢比萨主义主题餐厅（回龙观店)', '252.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '889', '乌巢招牌 9英寸 ', '889', '90', '乌巢比萨主义主题餐厅（回龙观店)', '55.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '890', '夏威夷飓风 9英寸 ', '890', '90', '乌巢比萨主义主题餐厅（回龙观店)', '52.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '891', '肉类原籽弹 9英寸 ', '891', '90', '乌巢比萨主义主题餐厅（回龙观店)', '69.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '892', '土豆培根 9英寸 ', '892', '90', '乌巢比萨主义主题餐厅（回龙观店)', '69.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '893', '乌巢垃圾桶 12英寸 ', '893', '90', '乌巢比萨主义主题餐厅（回龙观店)', '95.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '894', '美式烤虾 12英寸 ', '894', '90', '乌巢比萨主义主题餐厅（回龙观店)', '81.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '895', '夏威夷飓风 12英寸', '895', '90', '乌巢比萨主义主题餐厅（回龙观店)', '85.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '896', '比萨肉片炸单 12英寸 ', '896', '90', '乌巢比萨主义主题餐厅（回龙观店)', '85.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '897', '泰国香米饭', '897', '91', '椰皇泰风情泰国菜(同成街店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '898', '马来咖喱牛腩套餐', '898', '91', '椰皇泰风情泰国菜(同成街店)', '32.67');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '899', '冬荫功杂菌汤', '899', '91', '椰皇泰风情泰国菜(同成街店)', '29.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '900', '菠萝海鲜炒饭', '900', '91', '椰皇泰风情泰国菜(同成街店)', '39.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '901', '招牌冬荫功汤', '901', '91', '椰皇泰风情泰国菜(同成街店)', '29.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '902', '咖喱皇虾套餐', '902', '91', '椰皇泰风情泰国菜(同成街店)', '39.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '903', '冬荫功杂菌汤', '903', '91', '椰皇泰风情泰国菜(同成街店)', '29.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '904', '干炒牛河', '904', '91', '椰皇泰风情泰国菜(同成街店)', '33.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '905', '咖喱皇虾套餐', '905', '91', '椰皇泰风情泰国菜(同成街店)', '39.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '906', '马来咖喱牛腩套餐', '906', '91', '椰皇泰风情泰国菜(同成街店)', '32.67');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '907', '意大利风情肉酱面', '907', '92', '达美乐比萨（龙旗广场店）', '26.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '908', '阳光蔬菜色拉', '908', '92', '达美乐比萨（龙旗广场店）', '12.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '909', '招牌蛋挞（2个）', '909', '92', '达美乐比萨（龙旗广场店）', '9.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '910', '热狗面包卷', '910', '92', '达美乐比萨（龙旗广场店）', '16.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '911', '葱香烤薯饼', '911', '92', '达美乐比萨（龙旗广场店）', '12.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '912', '酥香薯角', '912', '92', '达美乐比萨（龙旗广场店）', '12.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '913', '个人悠享套餐B', '913', '92', '达美乐比萨（龙旗广场店）', '58.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '914', '个人悠享套餐A', '914', '92', '达美乐比萨（龙旗广场店）', '55.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '915', '多人分享套餐', '915', '92', '达美乐比萨（龙旗广场店）', '233.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '916', '新品比萨套餐', '916', '92', '达美乐比萨（龙旗广场店）', '117.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '917', '19.9元特价餐——和风鸡腿肉焗饭', '917', '93', '芝士咖（回龙观店）', '45.80');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '918', '19.9元特价餐——黑椒鸡排焗饭', '918', '93', '芝士咖（回龙观店）', '44.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '919', '唐扬鸡块', '919', '93', '芝士咖（回龙观店）', '8.50');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '920', '19.9元特价餐——霸道海鲜焗饭', '920', '93', '芝士咖（回龙观店）', '45.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '921', '19.9元特价餐——霸道海鲜焗饭', '921', '93', '芝士咖（回龙观店）', '45.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '922', '19.9元特价餐——和风鸡腿肉焗饭', '922', '93', '芝士咖（回龙观店）', '45.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '923', '9.9元特价餐——黑椒牛肉意面', '923', '93', '芝士咖（回龙观店）', '9.90');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '924', '19.9元特价餐——意式传统肉酱面', '924', '93', '芝士咖（回龙观店）', '45.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '925', '19.9元特价餐——奶香培根焗饭', '925', '93', '芝士咖（回龙观店）', '22.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '926', '深海金枪鱼焗饭', '926', '93', '芝士咖（回龙观店）', '23.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '927', '金枪鱼三明治', '927', '94', '明月馆儿(龙旗广场店)', '25.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '928', '加奶酪', '928', '94', '明月馆儿(龙旗广场店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '929', '双份肉', '929', '94', '明月馆儿(龙旗广场店)', '10.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '930', '6寸黑胡椒牛排三明治', '930', '94', '明月馆儿(龙旗广场店)', '28.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '931', '香烤牛肉三明治', '931', '94', '明月馆儿(龙旗广场店)', '25.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '932', '双色巧克力甜饼', '932', '94', '明月馆儿(龙旗广场店)', '5.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '933', '意大利经典三明治', '933', '94', '明月馆儿(龙旗广场店)', '23.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '934', '6寸香烤牛肉+机打饮料', '934', '94', '明月馆儿(龙旗广场店)', '34.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '935', '6寸金枪鱼三明治+机打饮料', '935', '94', '明月馆儿(龙旗广场店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '936', '优惠双人套餐', '936', '94', '明月馆儿(龙旗广场店)', '57.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '937', '金枪鱼三明治', '937', '95', '赛百味(回龙观店)', '25.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '938', '加奶酪', '938', '95', '赛百味(回龙观店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '939', '双份肉', '939', '95', '赛百味(回龙观店)', '10.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '940', '6寸黑胡椒牛排三明治', '940', '95', '赛百味(回龙观店)', '28.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '941', '香烤牛肉三明治', '941', '95', '赛百味(回龙观店)', '25.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '942', '双色巧克力甜饼', '942', '95', '赛百味(回龙观店)', '5.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '943', '意大利经典三明治', '943', '95', '赛百味(回龙观店)', '23.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '944', '6寸香烤牛肉+机打饮料', '944', '95', '赛百味(回龙观店)', '34.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '945', '6寸金枪鱼三明治+机打饮料', '945', '95', '赛百味(回龙观店)', '3.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '946', '优惠双人套餐', '946', '95', '赛百味(回龙观店)', '57.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '947', '胡椒牛肉饭', '947', '96', '胡椒厨房（五彩城店）', '38.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '948', 'BBQ香烤胡椒牛肉饭', '948', '96', '胡椒厨房（五彩城店）', '37.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '949', '珍宝胡椒牛肉饭', '949', '96', '胡椒厨房（五彩城店）', '48.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '950', '芝士咖喱胡椒牛肉饭', '950', '96', '胡椒厨房（五彩城店）', '40.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '951', 'BBQ特选牛肉拼汉堡排', '951', '96', '胡椒厨房（五彩城店）', '47.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '952', '法式蔬菜番茄鸡肉意面', '952', '96', '胡椒厨房（五彩城店）', '49.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '953', '一如既往套餐', '953', '96', '胡椒厨房（五彩城店）', '58.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '954', '一见钟情套餐', '954', '96', '胡椒厨房（五彩城店）', '82.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '955', '比翼双飞套餐', '955', '96', '胡椒厨房（五彩城店）', '95.00');
INSERT INTO `code_goods` VALUES ('0', '美食', '8', '轻食西餐', '0', null, '956', '绝世无双套餐', '956', '96', '胡椒厨房（五彩城店）', '106.00');

-- ----------------------------
-- Table structure for code_profession
-- ----------------------------
DROP TABLE IF EXISTS `code_profession`;
CREATE TABLE `code_profession` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of code_profession
-- ----------------------------
INSERT INTO `code_profession` VALUES ('1', '自由职业者');
INSERT INTO `code_profession` VALUES ('2', '工程师');
INSERT INTO `code_profession` VALUES ('3', '教育者');
INSERT INTO `code_profession` VALUES ('4', '公务员');

-- ----------------------------
-- Table structure for code_shop
-- ----------------------------
DROP TABLE IF EXISTS `code_shop`;
CREATE TABLE `code_shop` (
  `seller_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_name` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of code_shop
-- ----------------------------
INSERT INTO `code_shop` VALUES ('1', '铁板炒饭', '1');
INSERT INTO `code_shop` VALUES ('2', '四川味道(第6号档口美即食美食城店)', '1');
INSERT INTO `code_shop` VALUES ('3', '曼玲粥店(第17号档口美厨在线美食城店)', '1');
INSERT INTO `code_shop` VALUES ('4', '嘉和一品粥(西三旗店)', '1');
INSERT INTO `code_shop` VALUES ('5', '京川婆婆早餐', '1');
INSERT INTO `code_shop` VALUES ('6', '永和大王（回龙观店FBJ04）', '1');
INSERT INTO `code_shop` VALUES ('7', '左一煎饼（昌平店）', '1');
INSERT INTO `code_shop` VALUES ('8', '素虎净素餐厅(西三旗店)', '1');
INSERT INTO `code_shop` VALUES ('9', '金牌黄焖鸡(第6号档口餐行者美食广场店)', '1');
INSERT INTO `code_shop` VALUES ('10', '角角排骨饭(回龙观店)', '1');
INSERT INTO `code_shop` VALUES ('11', '晨曦炖品·鲍鱼饭(安宁庄后街店)', '1');
INSERT INTO `code_shop` VALUES ('12', '晋味坊手工刀削面家常菜(霍营店)', '1');
INSERT INTO `code_shop` VALUES ('13', '肯德基宅急送(文华路店）', '2');
INSERT INTO `code_shop` VALUES ('14', '田老师红烧肉(回龙观东村家园店)', '2');
INSERT INTO `code_shop` VALUES ('15', '小恒水饺(第5号档口时遇食域美食城店)', '2');
INSERT INTO `code_shop` VALUES ('16', '北京麦当劳文华路餐厅', '2');
INSERT INTO `code_shop` VALUES ('17', '山东杂粮煎饼', '2');
INSERT INTO `code_shop` VALUES ('18', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '2');
INSERT INTO `code_shop` VALUES ('19', '河间驴肉火烧(龙旗广场店)', '2');
INSERT INTO `code_shop` VALUES ('20', '三顺韩式炸鸡店(园区美食城店)', '2');
INSERT INTO `code_shop` VALUES ('21', '大理寺云南过桥米线(第口美厨在线美食城店)', '2');
INSERT INTO `code_shop` VALUES ('22', '正宗京东肉饼(三旗百汇店)', '2');
INSERT INTO `code_shop` VALUES ('23', '京昌梁记烩面（港龙店）', '2');
INSERT INTO `code_shop` VALUES ('24', '热辣生活(同成街华联店)', '2');
INSERT INTO `code_shop` VALUES ('25', '麻辣香锅(第1号档口西关物美七仙美食城店)', '3');
INSERT INTO `code_shop` VALUES ('26', '尝到家尝(昌平店)', '3');
INSERT INTO `code_shop` VALUES ('27', '秦门(昌平店)', '3');
INSERT INTO `code_shop` VALUES ('28', '苗乡楼酸汤鱼贵州菜(昌平店)', '3');
INSERT INTO `code_shop` VALUES ('29', '川湘居家常小炒', '3');
INSERT INTO `code_shop` VALUES ('30', '云海肴云南菜（昌平万科店）', '3');
INSERT INTO `code_shop` VALUES ('31', '再回头螺蛳粉(政府街店)', '3');
INSERT INTO `code_shop` VALUES ('32', '川湘美食', '3');
INSERT INTO `code_shop` VALUES ('33', '万荣烤鸭（富康店）', '3');
INSERT INTO `code_shop` VALUES ('34', '鱼你在一起（昌平阳光商厦店）', '3');
INSERT INTO `code_shop` VALUES ('35', '炒饭添', '3');
INSERT INTO `code_shop` VALUES ('36', '人之初拉面馆(东关二条店)', '3');
INSERT INTO `code_shop` VALUES ('37', '嘉和一品粥（育知东路店）', '4');
INSERT INTO `code_shop` VALUES ('38', '小恒水饺(第5号档口时遇食域美食城店)', '4');
INSERT INTO `code_shop` VALUES ('39', '曼玲粥店(第17号档口美厨在线美食城店)', '4');
INSERT INTO `code_shop` VALUES ('40', '凉皮先生粥·粉·面(安宁庄第8号档口园区美食城店)', '4');
INSERT INTO `code_shop` VALUES ('41', '老淮南牛肉汤', '4');
INSERT INTO `code_shop` VALUES ('42', '頭壹號大油条（回龙观店）', '4');
INSERT INTO `code_shop` VALUES ('43', '早乐品致早餐(上地店)', '4');
INSERT INTO `code_shop` VALUES ('44', '面天下', '4');
INSERT INTO `code_shop` VALUES ('45', '嘉和一品粥(金域国际店)', '4');
INSERT INTO `code_shop` VALUES ('46', '如意馄饨(回龙观店)', '4');
INSERT INTO `code_shop` VALUES ('47', '陕西手工凉皮肉夹馍(第8号档口食之代美食城店)', '4');
INSERT INTO `code_shop` VALUES ('48', '晋味坊手工刀削面家常菜(霍营店)', '4');
INSERT INTO `code_shop` VALUES ('49', 'U鼎冒菜(回龙观华联店)', '5');
INSERT INTO `code_shop` VALUES ('50', '拌它麻辣拌（小营店）', '5');
INSERT INTO `code_shop` VALUES ('51', '香河肉饼(第2号档口汉江美美食城店)', '5');
INSERT INTO `code_shop` VALUES ('52', '山西刀削面盖浇饭', '5');
INSERT INTO `code_shop` VALUES ('53', '辣山城麻辣香锅(第4号档口顺鑫美食城店)', '5');
INSERT INTO `code_shop` VALUES ('54', '三味口岸麻辣拌(第4号档口Magiczoomsc店)', '5');
INSERT INTO `code_shop` VALUES ('55', '抚顺6街麻辣拌（清河店）', '5');
INSERT INTO `code_shop` VALUES ('56', '無邪冒菜(安宁庄第15档口餐行者美食城店)', '5');
INSERT INTO `code_shop` VALUES ('57', '一碗小烫捞&全球的麻辣烫(回龙观店)', '5');
INSERT INTO `code_shop` VALUES ('58', '重庆麻辣烫(第8号档口餐行者美食广场店)', '5');
INSERT INTO `code_shop` VALUES ('59', '抚顺6街麻辣拌(回龙观店)', '5');
INSERT INTO `code_shop` VALUES ('60', '嗨冒菜(第B5号档口家的港湾美食城店)', '5');
INSERT INTO `code_shop` VALUES ('61', '正一味石锅拌饭(昌平悦荟万科店)', '6');
INSERT INTO `code_shop` VALUES ('62', '汉拿山(昌平万科店)', '6');
INSERT INTO `code_shop` VALUES ('63', '权金城.烤串.拌饭(北京昌平万科城店)', '6');
INSERT INTO `code_shop` VALUES ('64', '吉野家(昌平新世纪餐厅)', '6');
INSERT INTO `code_shop` VALUES ('65', '韩食记', '6');
INSERT INTO `code_shop` VALUES ('66', '37度寿司(第2号档口华润万家美食城店)', '6');
INSERT INTO `code_shop` VALUES ('67', '一品韩匠', '6');
INSERT INTO `code_shop` VALUES ('68', '手抓饼章鱼烧（沃尔玛店）', '6');
INSERT INTO `code_shop` VALUES ('69', '池田寿司（昌平万科店）', '6');
INSERT INTO `code_shop` VALUES ('70', '河風精致寿司(昌平店)', '6');
INSERT INTO `code_shop` VALUES ('71', '千骏山(昌平店)', '6');
INSERT INTO `code_shop` VALUES ('72', '本气家', '6');
INSERT INTO `code_shop` VALUES ('73', '肯德基宅急送(文华路店）', '7');
INSERT INTO `code_shop` VALUES ('74', '北京麦当劳文华路餐厅', '7');
INSERT INTO `code_shop` VALUES ('75', '棒约翰比萨(北京西三旗店)', '7');
INSERT INTO `code_shop` VALUES ('76', '必胜客宅急送（回龙观东店）', '7');
INSERT INTO `code_shop` VALUES ('77', '肉夹小魔王(上地五彩城店)', '7');
INSERT INTO `code_shop` VALUES ('78', '华莱士炸鸡汉堡（霍营店）', '7');
INSERT INTO `code_shop` VALUES ('79', '大卫船长健康厨房（东亚上北店）', '7');
INSERT INTO `code_shop` VALUES ('80', '亚米荟盐酥鸡（龙旗广场店）', '7');
INSERT INTO `code_shop` VALUES ('81', '华莱士炸鸡汉堡(北京回龙观店)', '7');
INSERT INTO `code_shop` VALUES ('82', '恰食芝士薄饼（黄平路店）', '7');
INSERT INTO `code_shop` VALUES ('83', '必胜客宅急送(西三旗店)', '7');
INSERT INTO `code_shop` VALUES ('84', '麦特派炸鸡汉堡(第10号档口餐行者美食广场店)', '7');
INSERT INTO `code_shop` VALUES ('85', '轻食π(第11号档口餐行者美食广场店)', '8');
INSERT INTO `code_shop` VALUES ('86', '恰食芝士薄饼（黄平路店）', '8');
INSERT INTO `code_shop` VALUES ('87', '大卫船长健康厨房（东亚上北店）', '8');
INSERT INTO `code_shop` VALUES ('88', '与尔轻食（回龙观店）', '8');
INSERT INTO `code_shop` VALUES ('89', '莱维贝贝轻食(第3号档口新时代美食城店)', '8');
INSERT INTO `code_shop` VALUES ('90', '乌巢比萨主义主题餐厅（回龙观店)', '8');
INSERT INTO `code_shop` VALUES ('91', '椰皇泰风情泰国菜(同成街店)', '8');
INSERT INTO `code_shop` VALUES ('92', '达美乐比萨（龙旗广场店）', '8');
INSERT INTO `code_shop` VALUES ('93', '芝士咖（回龙观店）', '8');
INSERT INTO `code_shop` VALUES ('94', '明月馆儿(龙旗广场店)', '8');
INSERT INTO `code_shop` VALUES ('95', '赛百味(回龙观店)', '8');
INSERT INTO `code_shop` VALUES ('96', '胡椒厨房（五彩城店）', '8');

-- ----------------------------
-- Table structure for order_delivery
-- ----------------------------
DROP TABLE IF EXISTS `order_delivery`;
CREATE TABLE `order_delivery` (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(64) DEFAULT NULL,
  `consignee` varchar(64) DEFAULT NULL,
  `area_id` bigint(20) DEFAULT NULL,
  `area_name` varchar(256) DEFAULT NULL,
  `address` varchar(512) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `coupon_money` decimal(18,2) DEFAULT NULL,
  `carriage_money` decimal(18,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `addr_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_delivery
-- ----------------------------

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item` (
  `user_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) NOT NULL,
  `order_no` varchar(256) DEFAULT NULL,
  `goods_id` bigint(20) NOT NULL,
  `goods_no` varchar(64) DEFAULT NULL,
  `goods_name` varchar(256) DEFAULT NULL,
  `goods_amount` int(11) DEFAULT NULL,
  `shop_id` bigint(20) DEFAULT NULL,
  `shop_name` varchar(256) DEFAULT NULL,
  `curr_price` decimal(18,2) DEFAULT NULL,
  `market_price` decimal(18,2) DEFAULT NULL,
  `discount` decimal(18,2) DEFAULT NULL,
  `cost_price` decimal(18,2) DEFAULT NULL,
  `first_cart` bigint(20) DEFAULT NULL,
  `first_cart_name` varchar(256) DEFAULT NULL,
  `second_cart` bigint(20) DEFAULT NULL,
  `second_cart_name` varchar(256) DEFAULT NULL,
  `third_cart` bigint(20) DEFAULT NULL,
  `third_cart_name` varchar(256) DEFAULT NULL,
  `goods_desc` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_item
-- ----------------------------

-- ----------------------------
-- Table structure for us_order
-- ----------------------------
DROP TABLE IF EXISTS `us_order`;
CREATE TABLE `us_order` (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(128) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(64) DEFAULT NULL,
  `order_money` decimal(18,2) DEFAULT NULL,
  `order_type` int(11) DEFAULT NULL,
  `order_status` int(11) DEFAULT NULL,
  `pay_status` int(11) DEFAULT NULL,
  `pay_type` int(11) DEFAULT NULL,
  `order_source` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of us_order
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(64) NOT NULL,
  `user_gender` tinyint(4) NOT NULL,
  `user_birthday` datetime NOT NULL,
  `user_age` int(11) NOT NULL,
  `constellation` varchar(8) NOT NULL,
  `province` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `city_level` tinyint(4) NOT NULL,
  `e_mail` varchar(256) NOT NULL,
  `op_mail` varchar(32) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `num_seg_mobile` int(11) NOT NULL,
  `op_Mobile` varchar(64) NOT NULL,
  `register_time` datetime NOT NULL,
  `login_ip` varchar(64) NOT NULL,
  `login_source` varchar(512) NOT NULL,
  `request_user` varchar(32) NOT NULL,
  `total_score` decimal(18,2) NOT NULL,
  `used_score` decimal(18,2) NOT NULL,
  `is_blacklist` tinyint(4) NOT NULL,
  `is_married` tinyint(4) NOT NULL,
  `education` varchar(128) NOT NULL,
  `monthly_income` decimal(18,2) NOT NULL,
  `profession` varchar(128) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for user_addr
-- ----------------------------
DROP TABLE IF EXISTS `user_addr`;
CREATE TABLE `user_addr` (
  `user_id` bigint(20) NOT NULL,
  `order_addr` varchar(512) NOT NULL,
  `user_order_flag` tinyint(4) NOT NULL COMMENT '1:学校  2:单位  3:家里',
  `addr_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `arear_id` int(11) NOT NULL,
  PRIMARY KEY (`addr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_addr
-- ----------------------------

-- ----------------------------
-- Table structure for user_app_click_log
-- ----------------------------
DROP TABLE IF EXISTS `user_app_click_log`;
CREATE TABLE `user_app_click_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `imei` varchar(256) DEFAULT NULL,
  `log_time` varchar(256) DEFAULT NULL,
  `visit_os` varchar(256) DEFAULT NULL,
  `os_version` varchar(256) DEFAULT NULL,
  `app_name` varchar(256) DEFAULT NULL,
  `app_version` varchar(256) DEFAULT NULL,
  `device_token` varchar(256) DEFAULT NULL,
  `visit_ip` varchar(256) DEFAULT NULL,
  `province` varchar(256) DEFAULT NULL,
  `city` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_app_click_log
-- ----------------------------

-- ----------------------------
-- Table structure for user_extend
-- ----------------------------
DROP TABLE IF EXISTS `user_extend`;
CREATE TABLE `user_extend` (
  `user_id` bigint(20) NOT NULL,
  `user_gender` bigint(20) NOT NULL,
  `is_pregnant_woman` tinyint(4) NOT NULL,
  `is_have_children` tinyint(4) NOT NULL,
  `is_have_car` tinyint(4) NOT NULL,
  `phone_brand` varchar(64) NOT NULL,
  `phone_brand_level` varchar(32) NOT NULL,
  `phone_cnt` int(11) NOT NULL,
  `change_phone_cnt` int(11) NOT NULL,
  `is_maja` tinyint(4) NOT NULL,
  `majia_account_cnt` int(11) NOT NULL,
  `loyal_model` varchar(32) NOT NULL,
  `shopping_type_model` varchar(32) NOT NULL,
  `weight` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_extend
-- ----------------------------

-- ----------------------------
-- Table structure for user_pc_click_log
-- ----------------------------
DROP TABLE IF EXISTS `user_pc_click_log`;
CREATE TABLE `user_pc_click_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `session_id` varchar(256) DEFAULT NULL,
  `cookie_id` varchar(256) DEFAULT NULL,
  `visit_time` varchar(256) DEFAULT NULL,
  `visit_url` varchar(256) DEFAULT NULL,
  `visit_os` varchar(256) DEFAULT NULL,
  `browser_name` varchar(256) DEFAULT NULL,
  `visit_ip` varchar(256) DEFAULT NULL,
  `province` varchar(256) DEFAULT NULL,
  `city` varchar(256) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  `shop_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_pc_click_log
-- ----------------------------

-- ----------------------------
-- Procedure structure for us_create_visit_log
-- ----------------------------
DROP PROCEDURE IF EXISTS `us_create_visit_log`;
DELIMITER ;;
CREATE DEFINER=`hive`@`%` PROCEDURE `us_create_visit_log`(user_id BIGINT)
BEGIN
  -- 1. 生成 pc 的访问记录
  SET @cnt_log = FLOOR(1+RAND()*10);
  SET @rn_log =1;
  -- 1.1 生成位置
  SELECT city,province INTO @city,@province
  FROM code_city
  WHERE id = FLOOR(1+RAND()*337)
  LIMIT 1;
  -- 1.2 生成IP
  set @ip = rand_ip();
  
  WHILE(@rn_log<=@cnt_log) DO
    INSERT INTO user_pc_click_log(user_id,session_id,cookie_id,visit_time,visit_url,visit_os,browser_name,visit_ip,province,city,page_id,goods_id,shop_id)
    SELECT user_id,
    CONCAT('session_',@rn+@cnt_log),
    CONCAT('cookie_',@rn),
    rand_date('2018-12-1'),
    CONCAT('https://www.ele.me/place/wx4g9xkeyeu',FLOOR(1+RAND()*1000)),
    'window 10',
    'chrome',
    @ip,
    @province,
    @city,
    FLOOR(1+RAND()*1000),
    FLOOR(1+RAND()*956),
    FLOOR(1+RAND()*96);
    SET @rn_log=@rn_log+1;
  END WHILE;
  
	-- 生成 app 的访问记录
	SET @cnt_log = FLOOR(1+RAND()*10);
	SET @rn_log =1;
  
  set @ip = rand_ip();
  set @imei = rand_user_name(16);
  set @device_token = rand_user_name(10);
  SELECT city,province INTO @city,@province
  FROM code_city
  WHERE id = FLOOR(1+RAND()*337)
  LIMIT 1;
	WHILE(@rn_log<=@cnt_log) DO
	   INSERT INTO user_app_click_log(user_id,imei,log_time,os_version,device_token,visit_ip,province,city)
	   SELECT user_id,
	        @imei,
		rand_date('2018-12-1'),
		'andriod 4.4.23',
		@device_token,
		@ip,
		@province,
		@city;
	  SET @rn_log=@rn_log+1;
	END WHILE;
	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_create_user
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_create_user`;
DELIMITER ;;
CREATE DEFINER=`hive`@`%` PROCEDURE `usp_create_user`(row_cnt INT)
BEGIN
	SET @rn=1;
	WHILE(@rn<=row_cnt) DO
		SET @user_name = rand_user_name(6);
		SET @user_gender = rand_gender();
		SET @user_birthday = rand_date('1960-1-1');
		SET @user_age = get_age(@user_birthday);
		SET @constellation = get_constellation(@user_birthday);
		SET @city = '';
			WHILE @city ='' OR @city IS NULL DO
			SELECT city,province,id INTO @city,@province,@city_id FROM code_city WHERE id= FLOOR(1+RAND()*337) LIMIT 1;
		END WHILE;
		SET @city_level=FLOOR(1+RAND()*4);
		SET @e_mail='';
		WHILE @e_mail = '' DO
			SELECT CONCAT(@user_name,suffix),op_mail INTO @e_mail,@op_mail FROM code_email_suffix WHERE id=FLOOR(1+RAND()*15) LIMIT 1; 
		END WHILE;
		SET @mobile = rand_mobile();
		SELECT @mobile;
		SET @num_seg_mobile = SUBSTRING(@mobile,1,3);
		SET @op_Mobile='中国';
		SET @register_time= rand_date('2018-1-1');
		SET @login_ip=rand_ip();
		SET @login_source='https://www.ele.me/home/';
		SET @request_user='';
		SET @total_score=100;
		SET @used_score=0;
		SET @is_blacklist=0;
		SET @is_married=(CASE WHEN @age>25 THEN 1 ELSE 0 END);
		SELECT edu_name INTO @education FROM code_education WHERE id= FLOOR(1+RAND()*7) LIMIT 1;
		SET @monthly_income =FLOOR(3000+RAND()*80000);
		set @profession = '';
		while @profession = '' or @profession is null do 
		  SELECT pro_name INTO @profession FROM code_profession WHERE id=FLOOR(1+RAND()*4) LIMIT 1;
    end while;
		INSERT INTO `take_out`.`user` 
			(
			`user_name`, 
			`user_gender`, 
			`user_birthday`, 
			`user_age`, 
			`constellation`, 
			`province`, 
			`city`, 
			`city_level`, 
			`e_mail`, 
			`op_mail`, 
			`mobile`, 
			`num_seg_mobile`, 
			`op_Mobile`, 
			`register_time`, 
			`login_ip`, 
			`login_source`, 
			`request_user`, 
			`total_score`, 
			`used_score`, 
			`is_blacklist`, 
			`is_married`, 
			`education`, 
			`monthly_income`, 
			`profession`, 
			`create_date`
			)
			SELECT
				@user_name, 
				@user_gender, 
				@user_birthday, 
				@user_age, 
				@constellation, 
				@province, 
				@city, 
				@city_level, 
				@e_mail, 
				@op_mail, 
				@mobile, 
				@num_seg_mobile, 
				@op_Mobile, 
				@register_time, 
				@login_ip, 
				@login_source, 
				@request_user, 
				@total_score, 
				@used_score, 
				@is_blacklist, 
				@is_married, 
				@education, 
				@monthly_income, 
				@profession, 
				NOW();
		
		-- 获取插入的用户id
		SET @addr_rn= 1;
		SET @user_id=LAST_INSERT_ID();
		WHILE @addr_rn<=3 DO
			SET @addr=CONCAT(@province,@city,FLOOR((1+RAND()*1000)),'号');
			-- 插入用户的地址，每条插3条
			INSERT INTO user_addr(user_id,order_addr,user_order_flag,arear_id)
			VALUES (@user_id,@addr,@addr_rn,@city_id);
			SET @addr_rn = @addr_rn+1;
		END WHILE;
		-- 插入用户的扩展信息
		INSERT INTO `take_out`.`user_extend` 
			(`user_id`, 
			`user_gender`, 
			`is_pregnant_woman`, 
			`is_have_children`, 
			`is_have_car`, 
			`phone_brand`, 
			`phone_brand_level`, 
			`phone_cnt`, 
			`change_phone_cnt`, 
			`is_maja`, 
			`majia_account_cnt`, 
			`loyal_model`, 
			`shopping_type_model`, 
			`weight`, 
			`height`
			)
		SELECT 
			@user_id,
			@user_gender, 
			0 is_pregnant_woman,
			0 is_have_children,
			0 is_have_car,
			'华为' phone_brand,
			'一级'phone_brand_level,
			1 phone_cnt,
			3 change_phone_cnt,
			0 is_maja,
			0 majia_account_cnt,
			'高度' loyal_model,
			'理智消费用户' shopping_type_model,
			80+RAND()*200 weight,
			120+RAND()*200 height;
		
		SET @rn = @rn+1;
		
	END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_create_user_withorder
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_create_user_withorder`;
DELIMITER ;;
CREATE DEFINER=`hive`@`%` PROCEDURE `usp_create_user_withorder`(row_cnt INT)
BEGIN
	SET @rn=1;
	WHILE(@rn<=row_cnt) DO
		SET @user_name = rand_user_name(6);
		SET @user_gender = rand_gender();
		SET @user_birthday = rand_date('1960-1-1');
		SET @user_age = get_age(@user_birthday);
		SET @constellation = get_constellation(@user_birthday);
		SET @city = '';
			WHILE @city ='' OR @city IS NULL DO
			SELECT city,province,id INTO @city,@province,@city_id FROM code_city WHERE id= FLOOR(1+RAND()*337) LIMIT 1;
		END WHILE;
		SET @city_level=FLOOR(1+RAND()*4);
		SET @e_mail='';
		WHILE @e_mail = '' DO
			SELECT CONCAT(@user_name,suffix),op_mail INTO @e_mail,@op_mail FROM code_email_suffix WHERE id=FLOOR(1+RAND()*15) LIMIT 1; 
		END WHILE;
		SET @mobile = rand_mobile();
		SET @num_seg_mobile = SUBSTRING(@mobile,1,3);
		SET @op_Mobile='中国';
		SET @register_time= rand_date('2018-1-1');
		SET @login_ip=rand_ip();
		SET @login_source='https://www.ele.me/home/';
		SET @request_user='';
		SET @total_score=100;
		SET @used_score=0;
		SET @is_blacklist=0;
		SET @is_married=(CASE WHEN @age>25 THEN 1 ELSE 0 END);
		SELECT edu_name INTO @education FROM code_education WHERE id= FLOOR(1+RAND()*7) LIMIT 1;
		SET @monthly_income =FLOOR(20000+RAND()*80000);
		set @profession = '';
		while @profession = '' or @profession is null do 
		  SELECT pro_name INTO @profession FROM code_profession WHERE id=FLOOR(1+RAND()*4) LIMIT 1;
    end while;
		INSERT INTO `take_out`.`user` 
			(
			`user_name`, 
			`user_gender`, 
			`user_birthday`, 
			`user_age`, 
			`constellation`, 
			`province`, 
			`city`, 
			`city_level`, 
			`e_mail`, 
			`op_mail`, 
			`mobile`, 
			`num_seg_mobile`, 
			`op_Mobile`, 
			`register_time`, 
			`login_ip`, 
			`login_source`, 
			`request_user`, 
			`total_score`, 
			`used_score`, 
			`is_blacklist`, 
			`is_married`, 
			`education`, 
			`monthly_income`, 
			`profession`, 
			`create_date`
			)
			SELECT
				@user_name, 
				@user_gender, 
				@user_birthday, 
				@user_age, 
				@constellation, 
				@province, 
				@city, 
				@city_level, 
				@e_mail, 
				@op_mail, 
				@mobile, 
				@num_seg_mobile, 
				@op_Mobile, 
				@register_time, 
				@login_ip, 
				@login_source, 
				@request_user, 
				@total_score, 
				@used_score, 
				@is_blacklist, 
				@is_married, 
				@education, 
				@monthly_income, 
				@profession, 
				NOW();
		
		-- 获取插入的用户id
		SET @addr_rn= 1;
		SET @user_id=LAST_INSERT_ID();
		WHILE @addr_rn<=3 DO
			SET @addr=CONCAT(@province,@city,FLOOR((1+RAND()*1000)),'号');
			-- 插入用户的地址，每条插3条
			INSERT INTO user_addr(user_id,order_addr,user_order_flag,arear_id)
			VALUES (@user_id,@addr,@addr_rn,@city_id);
			SET @addr_rn = @addr_rn+1;
		END WHILE;
		-- 插入用户的扩展信息
		INSERT INTO `take_out`.`user_extend` 
			(`user_id`, 
			`user_gender`, 
			`is_pregnant_woman`, 
			`is_have_children`, 
			`is_have_car`, 
			`phone_brand`, 
			`phone_brand_level`, 
			`phone_cnt`, 
			`change_phone_cnt`, 
			`is_maja`, 
			`majia_account_cnt`, 
			`loyal_model`, 
			`shopping_type_model`, 
			`weight`, 
			`height`
			)
		SELECT 
			@user_id,
			@user_gender, 
			0 is_pregnant_woman,
			0 is_have_children,
			0 is_have_car,
			'华为' phone_brand,
			'一级'phone_brand_level,
			1 phone_cnt,
			3 change_phone_cnt,
			0 is_maja,
			0 majia_account_cnt,
			'高度' loyal_model,
			'理智消费用户' shopping_type_model,
			80+RAND()*200 weight,
			120+RAND()*200 height;
		CALL usp_user_order_init(@user_id);
		CALL us_create_visit_log(@user_id);
		SET @rn = @rn+1;
		
	END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_order_init
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_order_init`;
DELIMITER ;;
CREATE DEFINER=`hive`@`%` PROCEDURE `usp_order_init`(cnt INT)
BEGIN
  SET @rn = 1;
  WHILE(@rn<=cnt) DO
	  -- 插入订单表
	  SET @order_no = rand_user_name(11); -- 订单编号
	  SET @order_date = DATE_ADD(NOW(),INTERVAL -1*(1+RAND()*216000) SECOND);  -- 订单日期
	  SELECT MAX(user_id),MIN(user_id) INTO @max_user_id,@min_user_id FROM `user` LIMIT 1;
	  SET @user_id = ''; -- 用户id
	  WHILE @user_id = '' OR @user_id IS NULL DO
		  SET @user_id = FLOOR(@min_user_id+RAND()*(@max_user_id-@min_user_id+1));
		  SELECT user_id,user_name,mobile INTO @user_id,@user_name,@mobile FROM `user` WHERE user_id =@user_id LIMIT 1;
	  END WHILE;
	  -- 随机抽取一个商家
	  SET @seller_id = '';
	  WHILE @seller_id ='' OR @seller_id IS NULL DO
		SELECT seller_id INTO @seller_id FROM code_shop WHERE seller_id = FLOOR(RAND()*96) LIMIT 1;
	  END WHILE;
	  
	  -- 抽一条商品
	  SELECT goods_id,goods_name,
		goods_no,FLOOR(1+RAND()*5) goods_amount,seller_id shop_id,seller_name shop_name,
		food_price curr_price,food_price market_price,1 discount,food_price cost_price,
		first_category_id first_cart, first_category_name first_cart_name,second_category_id second_cart,
		second_catery_name second_cart_name,third_category_id third_cart ,third_category_name third_cart_name
		INTO @goods_id,@goods_name,@goods_no,@goods_amount,@shop_id,@shop_name,@curr_price,@market_price,@discount,
		@cost_price,@first_cart,@first_cart_name,@second_cart,@second_cart_name,@third_cart,@third_cart_name
	  FROM code_goods
	  WHERE seller_id=@seller_id
	  LIMIT 1;
	  
	  -- 计算总价
	  SET @order_money = @goods_amount*@cost_price;
	  INSERT INTO `us_order` (order_no,order_date,user_id,user_name,order_money,order_type,order_status,pay_status,pay_type,order_source,update_time)
	  SELECT @order_no,@order_date,@user_id,@user_name,@order_money,1,1,1,1,'',NOW();
	  
	  SET @order_id = LAST_INSERT_ID();
	  
	  
	  INSERT INTO `order_item` (user_id,order_id,order_no,goods_id,goods_no,goods_name,goods_amount,shop_id,shop_name,
			curr_price,market_price,discount,cost_price,first_cart,first_cart_name,second_cart,second_cart_name,
			third_cart,third_cart_name,goods_desc)
	  SELECT @user_id,@order_id,@order_no,@goods_id,@goods_no,@goods_name,@goods_amount,@shop_id,@shop_name,
		@curr_price,@market_price,@discount,@cost_price,@first_cart,@first_cart_name,@second_cart,@second_cart_name,
		@third_cart,@third_cart_name,@goods_desc;
		
	  -- 随机抽取一个用户的地址类型
	  
	  SELECT addr_id,order_addr
	  INTO @addr_id,@order_addr
	  FROM `user_addr` a
	  JOIN code_city c ON a.arear_id = c.id
	  WHERE user_id = @user_id AND user_order_flag = FLOOR(1+RAND()*3)
	  LIMIT 1;
	  
	  -- 插入送货地址表
	  INSERT INTO `order_delivery`(order_id,order_no,consignee,area_id,area_name,address,mobile,phone,coupon_id,coupon_money,carriage_money,create_time,update_time,addr_id)
	  SELECT @order_id,@order_no,@user_name,@addr_id ,@addr_id  , @order_addr ,@mobile ,@mobile ,
		0 , 0 ,FLOOR(10+RAND()*(30-10+1)) , NOW() create_time,NOW() update_time,@addr_id;
	SET @rn = @rn+1;
  END WHILE;
  
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usp_user_order_init
-- ----------------------------
DROP PROCEDURE IF EXISTS `usp_user_order_init`;
DELIMITER ;;
CREATE DEFINER=`hive`@`%` PROCEDURE `usp_user_order_init`(user_id BIGINT)
BEGIN
	
	  -- 插入订单表
	  SET @order_no = rand_user_name(11); -- 订单编号
	  SET @order_date = DATE_ADD(NOW(),INTERVAL -1*(1+RAND()*216000) SECOND);  -- 订单日期
	  
	  SET @user_id = user_id; -- 用户id
	  -- 随机抽取一个商家
	  SET @seller_id = '';
	  WHILE @seller_id ='' OR @seller_id IS NULL DO
		SELECT seller_id INTO @seller_id FROM code_shop WHERE seller_id = FLOOR(RAND()*96) LIMIT 1;
	  END WHILE;
	  
	  -- 抽一条商品
	  SELECT goods_id,goods_name,
		goods_no,FLOOR(1+RAND()*5) goods_amount,seller_id shop_id,seller_name shop_name,
		food_price curr_price,food_price market_price,1 discount,food_price cost_price,
		first_category_id first_cart, first_category_name first_cart_name,second_category_id second_cart,
		second_catery_name second_cart_name,third_category_id third_cart ,third_category_name third_cart_name
		INTO @goods_id,@goods_name,@goods_no,@goods_amount,@shop_id,@shop_name,@curr_price,@market_price,@discount,
		@cost_price,@first_cart,@first_cart_name,@second_cart,@second_cart_name,@third_cart,@third_cart_name
	  FROM code_goods
	  WHERE seller_id=@seller_id
	  LIMIT 1;
	  
	  -- 计算总价
	  SET @order_money = @goods_amount*@cost_price;
	  INSERT INTO `us_order` (order_no,order_date,user_id,user_name,order_money,order_type,order_status,pay_status,pay_type,order_source,update_time)
	  SELECT @order_no,@order_date,@user_id,@user_name,@order_money,1,1,1,1,'',NOW();
	  
	  SET @order_id = LAST_INSERT_ID();
	  
	  
	  INSERT INTO `order_item`(user_id,order_id,order_no,goods_id,goods_no,goods_name,goods_amount,shop_id,shop_name,
			curr_price,market_price,discount,cost_price,first_cart,first_cart_name,second_cart,second_cart_name,
			third_cart,third_cart_name,goods_desc)
	  SELECT @user_id,@order_id,@order_no,@goods_id,@goods_no,@goods_name,@goods_amount,@shop_id,@shop_name,
		@curr_price,@market_price,@discount,@cost_price,@first_cart,@first_cart_name,@second_cart,@second_cart_name,
		@third_cart,@third_cart_name,@goods_desc;
		
	  -- 随机抽取一个用户的地址类型
	  
	  SELECT addr_id,order_addr
	  INTO @addr_id,@order_addr
	  FROM user_addr a
	  JOIN code_city c ON a.arear_id = c.id
	  WHERE user_id = @user_id AND user_order_flag = FLOOR(1+RAND()*3)
	  LIMIT 1;
	  
	  -- 插入送货地址表
	  INSERT INTO `order_delivery`(order_id,order_no,consignee,area_id,area_name,address,mobile,phone,coupon_id,coupon_money,carriage_money,create_time,update_time,addr_id)
	  SELECT @order_id,@order_no,@user_name,@addr_id ,@addr_id  , @order_addr ,@mobile ,@mobile ,
		0 , 0 ,FLOOR(10+RAND()*(30-10+1)) , NOW() create_time,NOW() update_time,@addr_id;
	SET @rn = @rn+1;
	
  
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for get_age
-- ----------------------------
DROP FUNCTION IF EXISTS `get_age`;
DELIMITER ;;
CREATE DEFINER=`hive`@`%` FUNCTION `get_age`(birthday DATETIME) RETURNS int(11)
BEGIN
	SET @age = YEAR(NOW())-YEAR(birthday);
	IF(MONTH(birthday)>MONTH(NOW())) THEN
		SET @age = @age +1;
	END IF;
	RETURN @age;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for get_constellation
-- ----------------------------
DROP FUNCTION IF EXISTS `get_constellation`;
DELIMITER ;;
CREATE DEFINER=`hive`@`%` FUNCTION `get_constellation`(birthday DATETIME) RETURNS varchar(64) CHARSET utf8
BEGIN
  DECLARE result VARCHAR(64);
  SET @dt=SUBSTRING(DATE_FORMAT(birthday,'%Y%m%d'),5,4);
  SELECT 
  (CASE WHEN @dt BETWEEN '0120' AND '0218' THEN '水瓶座'
  		WHEN @dt BETWEEN '0219' AND '0320' THEN '双鱼座'
  		WHEN @dt BETWEEN '0321' AND '0419' THEN '白羊座' 
  		WHEN @dt BETWEEN '0420' AND '0520' THEN '金牛座' 
  		WHEN @dt BETWEEN '0521' AND '0621' THEN '双子座'
  		WHEN @dt BETWEEN '0622' AND '0722' THEN '巨蟹座'
  		WHEN @dt BETWEEN '0723' AND '0822' THEN '狮子座'
  		WHEN @dt BETWEEN '0823' AND '0922' THEN '处女座'
  		WHEN @dt BETWEEN '0923' AND '1023' THEN '天秤座'
  		WHEN @dt BETWEEN '1024' AND '1122' THEN '天蝎座'
  		WHEN @dt BETWEEN '1123' AND '1221' THEN '射手座'
  		ELSE '摩羯座'
  	END
  ) 
  INTO result;
  RETURN result;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for rand_date
-- ----------------------------
DROP FUNCTION IF EXISTS `rand_date`;
DELIMITER ;;
CREATE DEFINER=`hive`@`%` FUNCTION `rand_date`(start_dt DATETIME) RETURNS datetime
BEGIN
   SET @dt = start_dt;
   SET @diff = FLOOR( RAND() * DATEDIFF(NOW(),@dt));
   RETURN DATE_ADD(@dt,INTERVAL @diff DAY);
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for rand_gender
-- ----------------------------
DROP FUNCTION IF EXISTS `rand_gender`;
DELIMITER ;;
CREATE DEFINER=`hive`@`%` FUNCTION `rand_gender`() RETURNS tinyint(4)
BEGIN
   DECLARE result TINYINT;
   SET  result = FLOOR(RAND()*10) % 2;
    RETURN result;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for rand_ip
-- ----------------------------
DROP FUNCTION IF EXISTS `rand_ip`;
DELIMITER ;;
CREATE DEFINER=`hive`@`%` FUNCTION `rand_ip`() RETURNS varchar(32) CHARSET latin1
BEGIN
   DECLARE result VARCHAR(15);
   DECLARE i_1 VARCHAR(3);
   DECLARE i_2 VARCHAR(3);
   DECLARE i_3 VARCHAR(3);
   DECLARE i_4 VARCHAR(3);
   
   SET i_1 = FLOOR(36 + RAND() * (222 - 36 + 1));
   SET i_2 = FLOOR(0 + RAND() * (255 - 0 + 1));
   SET i_3 = FLOOR(0 + RAND() * (255 - 0 + 1));
   SET i_4 = FLOOR(0 + RAND() * (255 - 0 + 1));
   SET result = CONCAT('',i_1,'.',i_2,'.',i_3,'.',i_4);
    RETURN result;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for rand_mobile
-- ----------------------------
DROP FUNCTION IF EXISTS `rand_mobile`;
DELIMITER ;;
CREATE DEFINER=`hive`@`%` FUNCTION `rand_mobile`() RETURNS bigint(20)
BEGIN
   DECLARE result BIGINT;
   SET  result =FLOOR(13000000000 + RAND() * (20000000000 - 13000000000 + 1));
    RETURN result;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for rand_user_name
-- ----------------------------
DROP FUNCTION IF EXISTS `rand_user_name`;
DELIMITER ;;
CREATE DEFINER=`hive`@`%` FUNCTION `rand_user_name`(n INT) RETURNS varchar(255) CHARSET latin1
BEGIN
    DECLARE chars VARCHAR(62) DEFAULT 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    DECLARE result VARCHAR(255) DEFAULT '';
    DECLARE i INT DEFAULT 0;
    WHILE i < n DO
        SET result = CONCAT(result,SUBSTRING(chars , FLOOR(1 + RAND()*62 ),1));
        SET i = i +1;
    END WHILE;
    RETURN result;
END
;;
DELIMITER ;

-- ----------------------------
-- Event structure for even_init
-- ----------------------------
DROP EVENT IF EXISTS `even_init`;
DELIMITER ;;
CREATE DEFINER=`hive`@`%` EVENT `even_init` ON SCHEDULE EVERY 1 SECOND STARTS '2018-12-19 12:00:00' ENDS '2019-01-16 16:30:00' ON COMPLETION PRESERVE enable DO BEGIN
  -- CALL usp_create_user(1000);
  CALL usp_create_user_withorder(100);
  -- CALL usp_create_login(1000);
  -- CALL usp_order_init(10);
END
;;
DELIMITER ;
