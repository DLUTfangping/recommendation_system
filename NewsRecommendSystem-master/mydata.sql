/*
Navicat MySQL Data Transfer

Source Server         : link
Source Server Version : 50560
Source Host           : localhost:3306
Source Database       : newsrec_test

Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001

Date: 2019-03-13 14:58:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text,
  `news_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `title` text NOT NULL,
  `module_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('26', null, '2019-03-13 09:04:41', '习近平作出重要指示:纠正\"四风\"不能止步', '1', 'http://news.163.com/17/1211/12/D5CGPQLR000189FH.html');
INSERT INTO `news` VALUES ('27', null, '2019-03-13 09:04:41', '习近平同阿尔及利亚总统致贺电庆祝卫星发射成功', '1', 'http://news.163.com/17/1211/08/D5C2FSTS000189FH.html');
INSERT INTO `news` VALUES ('28', null, '2019-03-13 09:04:41', '新华社评论员：用好大数据　布局新时代', '1', 'http://news.163.com/17/1210/23/D5B44NBU000189FH.html');
INSERT INTO `news` VALUES ('29', null, '2019-03-13 09:04:41', '\"党建+\"为老百姓加出了什么', '1', 'http://news.163.com/17/1210/17/D5AI6OS5000189FH.html');
INSERT INTO `news` VALUES ('30', null, '2019-03-13 09:04:41', '国际政要赞环境治理中国贡献', '1', 'http://news.163.com/17/1208/21/D55OUO9J000189FH.html');
INSERT INTO `news` VALUES ('31', null, '2019-03-13 09:04:41', '网络素养标评体系发布', '1', 'http://news.163.com/17/1209/18/D5824N29000189FH.html');
INSERT INTO `news` VALUES ('32', null, '2019-03-13 09:04:41', '最高检对重庆市委原书记孙政才立案侦查', '1', 'http://news.163.com/17/1211/11/D5CDHQ960001899O.html');
INSERT INTO `news` VALUES ('33', null, '2019-03-13 09:04:41', '两办发公务用车新规:新能源轿车价格不得超18万', '1', 'http://news.163.com/17/1211/18/D5D5E91M0001899O.html');
INSERT INTO `news` VALUES ('34', null, '2019-03-13 09:04:41', '澳总理宣称澳洲\"站起来了\" 中方:有损自身形象', '1', 'http://news.163.com/17/1211/16/D5CVPPIE0001899N.html');
INSERT INTO `news` VALUES ('35', null, '2019-03-13 09:04:41', '北京日报:北京市居民煤改清洁能源成效显著', '1', 'http://news.163.com/17/1211/08/D5C41S6Q000189FH.html');
INSERT INTO `news` VALUES ('36', null, '2019-03-13 09:04:41', '普京突访俄在叙空军基地 下令从叙利亚撤军', '1', 'http://news.163.com/17/1211/18/D5D5LMEL0001875O.html');
INSERT INTO `news` VALUES ('37', null, '2019-03-13 09:04:41', '这位市委书记给省委书记送5吨礼 获刑6年', '1', 'http://news.163.com/17/1211/18/D5D61GS90001875P.html');
INSERT INTO `news` VALUES ('38', null, '2019-03-13 09:04:41', '深圳地铁隧道为何1个半月内被击穿2次?地铁方回应', '1', 'http://news.163.com/17/1211/15/D5CSDDFT0001899N.html');
INSERT INTO `news` VALUES ('39', null, '2019-03-13 09:04:41', '外交部：中美需要相互适应 美国无法左右中国', '1', 'http://news.163.com/17/1211/16/D5CVCKBN000187V9.html');
INSERT INTO `news` VALUES ('40', null, '2019-03-13 09:04:41', '台民众向蔡英文丢鞋被罚钱 向马英九丢鞋却判无罪', '1', 'http://news.163.com/17/1211/16/D5CVL2BA00018AOR.html');
INSERT INTO `news` VALUES ('41', null, '2019-03-13 09:04:41', '13岁弑母少年:曾获优秀班干 会帮干活常遭父母打', '1', 'http://news.163.com/17/1211/07/D5C29O860001899N.html');
INSERT INTO `news` VALUES ('42', null, '2019-03-13 09:04:41', '\"教科书式耍赖\"事件肇事者被解除拘留后不知去向', '1', 'http://news.163.com/17/1211/12/D5CIAVF00001875P.html');
INSERT INTO `news` VALUES ('43', null, '2019-03-13 09:04:41', '习近平作出重要指示:纠正\"四风\"不能止步', '1', 'http://news.163.com/17/1211/12/D5CGPQLR000189FH.html');
INSERT INTO `news` VALUES ('44', null, '2019-03-13 09:04:41', '习近平同阿尔及利亚总统致贺电庆祝卫星发射成功', '1', 'http://news.163.com/17/1211/08/D5C2FSTS000189FH.html');
INSERT INTO `news` VALUES ('45', null, '2019-03-13 09:04:41', '新华社评论员：用好大数据　布局新时代', '1', 'http://news.163.com/17/1210/23/D5B44NBU000189FH.html');
INSERT INTO `news` VALUES ('46', null, '2019-03-13 09:04:41', '\"党建+\"为老百姓加出了什么', '1', 'http://news.163.com/17/1210/17/D5AI6OS5000189FH.html');
INSERT INTO `news` VALUES ('47', null, '2019-03-13 09:04:41', '国际政要赞环境治理中国贡献', '1', 'http://news.163.com/17/1208/21/D55OUO9J000189FH.html');
INSERT INTO `news` VALUES ('48', null, '2019-03-13 09:04:41', '网络素养标评体系发布', '1', 'http://news.163.com/17/1209/18/D5824N29000189FH.html');
INSERT INTO `news` VALUES ('49', null, '2019-03-13 09:04:41', '最高检对重庆市委原书记孙政才立案侦查', '1', 'http://news.163.com/17/1211/11/D5CDHQ960001899O.html');
INSERT INTO `news` VALUES ('50', null, '2019-03-13 09:04:41', '两办发公务用车新规:新能源轿车价格不得超18万', '1', 'http://news.163.com/17/1211/18/D5D5E91M0001899O.html');
INSERT INTO `news` VALUES ('51', null, '2019-03-13 09:04:41', '澳总理宣称澳洲\"站起来了\" 中方:有损自身形象', '1', 'http://news.163.com/17/1211/16/D5CVPPIE0001899N.html');
INSERT INTO `news` VALUES ('52', null, '2019-03-13 09:04:41', '北京日报:北京市居民煤改清洁能源成效显著', '1', 'http://news.163.com/17/1211/08/D5C41S6Q000189FH.html');
INSERT INTO `news` VALUES ('53', null, '2019-03-13 09:04:41', '普京突访俄在叙空军基地 下令从叙利亚撤军', '1', 'http://news.163.com/17/1211/18/D5D5LMEL0001875O.html');
INSERT INTO `news` VALUES ('54', null, '2019-03-13 09:04:41', '这位市委书记给省委书记送5吨礼 获刑6年', '1', 'http://news.163.com/17/1211/18/D5D61GS90001875P.html');
INSERT INTO `news` VALUES ('55', null, '2019-03-13 09:04:41', '深圳地铁隧道为何1个半月内被击穿2次?地铁方回应', '1', 'http://news.163.com/17/1211/15/D5CSDDFT0001899N.html');
INSERT INTO `news` VALUES ('56', null, '2019-03-13 09:04:41', '外交部：中美需要相互适应 美国无法左右中国', '1', 'http://news.163.com/17/1211/16/D5CVCKBN000187V9.html');
INSERT INTO `news` VALUES ('57', null, '2019-03-13 09:04:41', '台民众向蔡英文丢鞋被罚钱 向马英九丢鞋却判无罪', '1', 'http://news.163.com/17/1211/16/D5CVL2BA00018AOR.html');
INSERT INTO `news` VALUES ('58', null, '2019-03-13 09:04:41', '13岁弑母少年:曾获优秀班干 会帮干活常遭父母打', '1', 'http://news.163.com/17/1211/07/D5C29O860001899N.html');
INSERT INTO `news` VALUES ('59', null, '2019-03-13 09:04:41', '\"教科书式耍赖\"事件肇事者被解除拘留后不知去向', '1', 'http://news.163.com/17/1211/12/D5CIAVF00001875P.html');
INSERT INTO `news` VALUES ('60', null, '2019-03-13 09:04:41', '看完复联3预告片,为什么都在骂漫威？', '1', 'http://news.163.com/17/1205/00/D4ROJPDF0001885B.html');
INSERT INTO `news` VALUES ('61', null, '2019-03-13 09:04:41', '看完复联3预告片,为什么都在骂漫威？', '1', 'http://news.163.com/17/1205/00/D4ROJPDF0001885B.html');
INSERT INTO `news` VALUES ('62', null, '2019-03-13 09:04:41', 'AI人才需求集中于一线城市 七成从业者月薪过万', '2', 'http://tech.163.com/17/1211/07/D5BVCLI600097U7R.html');
INSERT INTO `news` VALUES ('63', null, '2019-03-13 09:04:41', '范冰冰力挺王源否认整容说法:从小到大都这么可爱', '3', 'http://ent.163.com/17/1211/01/D5BBPJPQ00038FO9.html');
INSERT INTO `news` VALUES ('64', null, '2019-03-13 09:04:41', '冻哭人比美大赛 范冰冰比杨幂Baby还生猛', '4', 'http://fashion.163.com/17/1211/08/D5C2E3JH002680FG.html');
INSERT INTO `news` VALUES ('65', null, '2019-03-13 09:04:41', '中俄今天再搞“反导演习” 应对突发挑衅攻击', '5', 'http://war.163.com/17/1211/12/D5CI9CBL000181KT.html');
INSERT INTO `news` VALUES ('66', null, '2019-03-13 09:04:41', '美对台政策将触碰一中底线？中国公使敲山震虎', '5', 'http://war.163.com/17/1211/10/D5CBN5O9000181KT.html');
INSERT INTO `news` VALUES ('67', null, '2019-03-13 09:04:41', '双座型枭龙02架成功首飞 巴方飞行员首次参与', '5', 'http://war.163.com/17/1211/10/D5CBHIDH000181KT.html');
INSERT INTO `news` VALUES ('68', null, '2019-03-13 09:04:41', '美媒:俄托卡列夫手枪结构简单性能可靠 曾销多国', '5', 'http://war.163.com/17/1211/10/D5CBEE8J000181KT.html');
INSERT INTO `news` VALUES ('69', null, '2019-03-13 09:04:41', '外媒研究报告称:中俄军事实力上升令美国丧失优势', '5', 'http://war.163.com/17/1211/10/D5CB538J000181KT.html');
INSERT INTO `news` VALUES ('70', null, '2019-03-13 09:04:41', '印度国产航母或于2020年入役 最后期限仍将拖延', '5', 'http://war.163.com/17/1211/10/D5CAMS42000181KT.html');
INSERT INTO `news` VALUES ('71', null, '2019-03-13 09:04:41', '卡塔尔签80亿美元合约 向英国购24架台风战机', '5', 'http://war.163.com/17/1211/10/D5CA83KD000181KT.html');
INSERT INTO `news` VALUES ('72', null, '2019-03-13 09:04:41', '俄国防部职责美军F22战机干扰俄军机空袭IS根据地', '5', 'http://war.163.com/17/1211/10/D5CA7KVA000181KT.html');
INSERT INTO `news` VALUES ('73', null, '2019-03-13 09:04:41', '美国第二艘DDG1000驱逐舰首次海试出现故障', '5', 'http://war.163.com/17/1211/10/D5CA4M0D000181KT.html');
INSERT INTO `news` VALUES ('74', null, '2019-03-13 09:04:41', '突破遏制线!港媒称中国空军南海巡航显强大战力', '5', 'http://war.163.com/17/1211/10/D5CA3C0L000181KT.html');
INSERT INTO `news` VALUES ('75', null, '2019-03-13 09:04:41', '日本乘客飞机上耍酒疯袭空姐 日网友:脸都丢尽了', '1', 'http://news.163.com/air/17/1211/09/D5C8T123000181O6.html');
INSERT INTO `news` VALUES ('76', null, '2019-03-13 09:04:41', '英媒:中国游客至关重要 直航或增至每周150班次', '1', 'http://news.163.com/air/17/1211/15/D5CTNFMM000181O6.html');
INSERT INTO `news` VALUES ('77', null, '2019-03-13 09:04:41', '可识别人声发现幸存者 日本研发新型救援无人机', '1', 'http://news.163.com/air/17/1211/13/D5CLDJII000181O6.html');
INSERT INTO `news` VALUES ('78', null, '2019-03-13 09:04:41', '国际航协:航空货运第四季度开局强劲', '1', 'http://news.163.com/air/17/1211/12/D5CG5AD2000181O6.html');
INSERT INTO `news` VALUES ('79', null, '2019-03-13 09:04:41', '美国调查人员说将公布佛州坠机事故调查报告', '1', 'http://news.163.com/air/17/1211/18/D5D4RCFQ000181O6.html');
INSERT INTO `news` VALUES ('80', null, '2019-03-13 09:04:41', '欧冠1/8决赛对阵:皇马将战巴黎 巴萨再遇切尔西', '6', 'http://sports.163.com/17/1211/19/D5D990SA00058781.html');
INSERT INTO `news` VALUES ('81', null, '2019-03-13 09:04:41', '欧冠赔率-曼城拜仁大热 巴黎降温巴萨皇马优势不再', '6', 'http://sports.163.com/17/1211/19/D5DAUQDO00058781.html');
INSERT INTO `news` VALUES ('82', null, '2019-03-13 09:04:41', '东亚杯-中国女足连失良机 0-1不敌日本吞两连败', '6', 'http://sports.163.com/17/1211/19/D5DAMPFP00058780.html');
INSERT INTO `news` VALUES ('83', null, '2019-03-13 09:04:41', '女足梅西以一敌四单挑日本防线 离进球只差5公分', '6', 'http://sports.163.com/17/1211/18/D5D81FJD00058780.html');
INSERT INTO `news` VALUES ('84', null, '2019-03-13 09:04:41', '日本女足1脚直塞破中国整条防线 美女国门也无奈', '6', 'http://sports.163.com/17/1211/18/D5D68RS800058780.html');
INSERT INTO `news` VALUES ('85', null, '2019-03-13 09:04:41', '曝小牛高层愿本赛季签丁彦雨航 或先送短合同', '6', 'http://sports.163.com/17/1211/14/D5CP72CV0005877U.html');
INSERT INTO `news` VALUES ('86', null, '2019-03-13 09:04:41', '提速-降速-再提速!梅西犯罪式破门 留下车祸现场', '6', 'http://sports.163.com/17/1211/08/D5C4HB3K00058781.html');
INSERT INTO `news` VALUES ('87', null, '2019-03-13 09:04:41', '贵州恒丰宣布国安后卫赵和靖加盟 合同为期三年', '6', 'http://sports.163.com/17/1211/15/D5CQFFSA00058780.html');
INSERT INTO `news` VALUES ('88', null, '2019-03-13 09:04:41', '尴尬!比斯利10分钟犯满仅1分 主队球迷鼓掌致谢', '6', 'http://sports.163.com/17/1211/11/D5CEOV6V0005877U.html');
INSERT INTO `news` VALUES ('89', null, '2019-03-13 09:04:41', '不擅应付媒体的哈登又被不会聊天的媒体问懵了…', '6', 'http://sports.163.com/17/1211/13/D5CJH0A20005877U.html');
INSERT INTO `news` VALUES ('90', null, '2019-03-13 09:04:41', '这…梅西全家福被PS后放上国产剧 网友1秒看穿!', '6', 'http://sports.163.com/17/1211/13/D5CLF9ER00058781.html');
INSERT INTO `news` VALUES ('91', null, '2019-03-13 09:04:41', '皇马全主力冲击世俱杯 拉莫斯:5-0之后更有动力了', '6', 'http://sports.163.com/17/1211/18/D5D55GEM00058781.html');
INSERT INTO `news` VALUES ('92', null, '2019-03-13 09:04:41', '费德勒要领奖却遭孩子反问:纳达尔不才是世界第1?', '6', 'http://sports.163.com/17/1211/14/D5CN8A9900058782.html');
INSERT INTO `news` VALUES ('93', null, '2019-03-13 09:04:41', 'GIF-\"泰森咬耳战\"血腥重演!英拳手耳朵险被对手打掉', '6', 'http://sports.163.com/17/1211/14/D5COGJ0U00058782.html');
INSERT INTO `news` VALUES ('94', null, '2019-03-13 09:04:41', '女足3打2机会被挥霍 这球带啥啊!早传出来就有了', '6', 'http://sports.163.com/17/1211/18/D5D7QH4T00058780.html');
INSERT INTO `news` VALUES ('95', null, '2019-03-13 09:04:41', '女足东亚杯-金润美甩头破门 朝鲜1-0韩国夺2连胜', '6', 'http://sports.163.com/17/1211/17/D5D1B9O900058780.html');
INSERT INTO `news` VALUES ('96', null, '2019-03-13 09:04:41', '别庆祝了!穆帅怒闯曼城更衣室 被门神泼一脸牛奶', '6', 'http://sports.163.com/17/1211/07/D5C1AB4I00058781.html');
INSERT INTO `news` VALUES ('97', null, '2019-03-13 09:04:41', '赵和靖不投死敌不回老家 与曼萨诺助力黑马保级', '6', 'http://sports.163.com/17/1211/16/D5CUPUM800058780.html');
INSERT INTO `news` VALUES ('98', null, '2019-03-13 09:04:41', '力帆宣布前葡萄牙主帅执掌球队 率队征战2018赛季', '6', 'http://sports.163.com/17/1211/14/D5CP1PCO00058780.html');
INSERT INTO `news` VALUES ('99', null, '2019-03-13 09:04:41', '久违了!朗多狂送18助攻 一条龙单手劈扣梦回当年', '6', 'http://sports.163.com/17/1211/10/D5CBI3TR0005877U.html');
INSERT INTO `news` VALUES ('100', null, '2019-03-13 09:04:41', '曝小牛高层愿等待丁彦雨航加盟 或可先签短合同', '6', 'http://sports.163.com/17/1211/14/D5CP72CV0005877U.html');
INSERT INTO `news` VALUES ('101', null, '2019-03-13 09:04:41', '不擅应付媒体的哈登又被不会聊天的媒体问懵了…', '6', 'http://sports.163.com/17/1211/13/D5CJH0A20005877U.html');
INSERT INTO `news` VALUES ('102', null, '2019-03-13 09:04:41', '考辛斯23+9又陷犯规麻烦 被迫坐板凳气得想爆炸', '6', 'http://sports.163.com/17/1211/10/D5CBSLQ00005877U.html');
INSERT INTO `news` VALUES ('103', null, '2019-03-13 09:04:41', '生涯高光!奥拉迪波轰47+7+6 今夜他似雷吉-米勒', '6', 'http://sports.163.com/17/1211/08/D5C5NU2M0005877U.html');
INSERT INTO `news` VALUES ('104', null, '2019-03-13 09:04:41', '曝小牛高层愿等待丁彦雨航加盟 或可先签短合同', '6', 'http://sports.163.com/17/1211/14/D5CP72CV0005877U.html');
INSERT INTO `news` VALUES ('105', null, '2019-03-13 09:04:41', 'CBA第5周球队实力榜:山东超辽宁领跑 广厦压粤疆', '6', 'http://sports.163.com/17/1211/10/D5CAGIR10005877V.html');
INSERT INTO `news` VALUES ('106', null, '2019-03-13 09:04:41', 'CBA第5周最佳:丁神再领跑国内 辫子哥力压众外援', '6', 'http://sports.163.com/17/1211/10/D5CA9VGH0005877V.html');
INSERT INTO `news` VALUES ('107', null, '2019-03-13 09:04:41', 'GIF-26分优势快被追没了 丁神被换怒了!疯砸水瓶', '6', 'http://sports.163.com/17/1210/21/D5ATA4O70005877V.html');
INSERT INTO `news` VALUES ('108', null, '2019-03-13 09:04:41', '李根回应挥拳怒吼裁判被驱逐出场 看看他怎样说', '6', 'http://sports.163.com/17/1211/16/D5D05JRU0005877V.html');
INSERT INTO `news` VALUES ('109', null, '2019-03-13 09:04:41', '韩德君末节登场就得分,命中率100%,可惜上晚了', '6', 'http://sports.163.com/17/1211/11/D5CFOQU30005877V.html');
INSERT INTO `news` VALUES ('110', null, '2019-03-13 09:04:41', '欧冠1/8决赛对阵:皇马将战巴黎 巴萨再遇切尔西', '6', 'http://sports.163.com/17/1211/19/D5D990SA00058781.html');
INSERT INTO `news` VALUES ('111', null, '2019-03-13 09:04:41', '欧冠赔率-曼城拜仁大热 巴黎降温巴萨皇马优势不再', '6', 'http://sports.163.com/17/1211/19/D5DAUQDO00058781.html');
INSERT INTO `news` VALUES ('112', null, '2019-03-13 09:04:41', '阿根廷世纪初最强前锋 伊斯坦布尔留终生遗憾 自曝曾参加性爱派对', '6', 'http://sports.163.com/17/1211/07/D5BV884C00058781.html');
INSERT INTO `news` VALUES ('113', null, '2019-03-13 09:04:41', '英超-拉师傅扳平铁闸反杀 曼城2-1曼联11分领跑', '6', 'http://sports.163.com/17/1211/02/D5BFAP4L00058781.html');
INSERT INTO `news` VALUES ('114', null, '2019-03-13 09:04:41', '巴萨高管:梅西每周都很伟大 小马哥去留最近出结果', '6', 'http://sports.163.com/17/1211/16/D5CVFT5L00058781.html');
INSERT INTO `news` VALUES ('115', null, '2019-03-13 09:04:41', '全世界赢穆里尼奥最多的男人 他已是狂人一生梦魇', '6', 'http://sports.163.com/17/1211/09/D5C700RS00058781.html');
INSERT INTO `news` VALUES ('116', null, '2019-03-13 09:04:41', '女足梅西以一敌四单挑日本防线 离进球只差5公分', '6', 'http://sports.163.com/17/1211/18/D5D81FJD00058780.html');
INSERT INTO `news` VALUES ('117', null, '2019-03-13 09:04:41', '女足3打2机会被挥霍 这球带啥啊!早传出来就有了', '6', 'http://sports.163.com/17/1211/18/D5D7QH4T00058780.html');
INSERT INTO `news` VALUES ('118', null, '2019-03-13 09:04:41', '日本女足1脚直塞破中国整条防线 美女国门也无奈', '6', 'http://sports.163.com/17/1211/18/D5D68RS800058780.html');
INSERT INTO `news` VALUES ('119', null, '2019-03-13 09:04:41', '95小将确定告别国安将赴恒大 卡纳瓦罗成重要因素', '6', 'http://sports.163.com/17/1211/11/D5CCOLC700058780.html');
INSERT INTO `news` VALUES ('120', null, '2019-03-13 09:04:41', '女足东亚杯-金润美甩头破门 朝鲜1-0韩国夺2连胜', '6', 'http://sports.163.com/17/1211/17/D5D1B9O900058780.html');
INSERT INTO `news` VALUES ('121', null, '2019-03-13 09:04:41', '韦世豪:捂耳朵是不想听谩骂声 对日本争取再破门', '6', 'http://sports.163.com/17/1211/13/D5CL1BQC00058780.html');
INSERT INTO `news` VALUES ('122', null, '2019-03-13 09:04:41', '吃高蛋白食物竟然变胖？ 或犯了4个错误', '6', 'http://sports.163.com/17/1211/11/D5CCP5TV00058783.html');
INSERT INTO `news` VALUES ('123', null, '2019-03-13 09:04:41', '新技能！ 跑步变柔和受伤风险降6成', '6', 'http://sports.163.com/17/1211/11/D5CCMO2T00058783.html');
INSERT INTO `news` VALUES ('124', null, '2019-03-13 09:04:41', '广州马拉松收官 奔跑中国之路永不止步', '6', 'http://sports.163.com/17/1211/10/D5C9VFDB00058783.html');
INSERT INTO `news` VALUES ('125', null, '2019-03-13 09:04:41', '儋州马拉松发布会召开 12月24日起跑', '6', 'http://sports.163.com/17/1208/13/D54TSGHJ00058783.html');
INSERT INTO `news` VALUES ('126', null, '2019-03-13 09:04:41', '节食减肥成功率仅5% 结合运动才是正道', '6', 'http://sports.163.com/17/1206/21/D50JCKD000058783.html');
INSERT INTO `news` VALUES ('127', null, '2019-03-13 09:04:41', '晒证据！袁立转发文章 指责节目组胡乱剪辑镜头', '3', 'http://ent.163.com/17/1211/16/D5D0QVAA00038FO9.html');
INSERT INTO `news` VALUES ('128', null, '2019-03-13 09:04:41', '袁立自曝微博视频被删 怒斥浙江卫视：胆大包天', '3', 'http://ent.163.com/17/1211/17/D5D33D8A00038FO9.html');
INSERT INTO `news` VALUES ('129', null, '2019-03-13 09:04:41', '浙江台辞退员工 袁立:让\"临时工\"顶包低级又拙劣', '3', 'http://ent.163.com/17/1211/14/D5CPUVRA00038FO9.html');
INSERT INTO `news` VALUES ('130', null, '2019-03-13 09:04:41', '何洁被曝新恋情 与知名乐手\"共宿\"还一起带娃', '3', 'http://ent.163.com/17/1211/08/D5C58JO900038FO9.html');
INSERT INTO `news` VALUES ('131', null, '2019-03-13 09:04:41', '和何洁传恋情的知名乐手被扒：已婚有一子', '3', 'http://ent.163.com/17/1211/12/D5CGEJE600038FO9.html');
INSERT INTO `news` VALUES ('132', null, '2019-03-13 09:04:41', '昆凌躺在花堆中露铅笔腿 粉丝却感觉不吉利', '3', 'http://ent.163.com/17/1211/16/D5CVULR900038FO9.html');
INSERT INTO `news` VALUES ('133', null, '2019-03-13 09:04:41', '揭秘塞班“岛主”吴佩慈男友产业 赌场里开电影节全是大胸妹', '3', 'http://ent.163.com/17/1211/18/D5D4OV2100039867.html');
INSERT INTO `news` VALUES ('134', null, '2019-03-13 09:04:41', '大V评论\"袁立怼节目组\":做慈善不是万能道德牌坊', '3', 'http://ent.163.com/17/1211/13/D5CM4I0S00038FO9.html');
INSERT INTO `news` VALUES ('135', null, '2019-03-13 09:04:41', '袁立再斥节目组：恶意剪辑 消费我和张国立绯闻', '3', 'http://ent.163.com/17/1211/09/D5C6IGII00038FO9.html');
INSERT INTO `news` VALUES ('136', null, '2019-03-13 09:04:41', 'Angelababy谈演员社会价值：要贡献精神食粮', '3', 'http://ent.163.com/17/1211/19/D5DAL6NG00038FO9.html');
INSERT INTO `news` VALUES ('137', null, '2019-03-13 09:04:41', '陈法拉前夫薛世恒上节目追马苏?夹娃娃讨女方欢心', '3', 'http://ent.163.com/17/1211/15/D5CQTP4M00038FO9.html');
INSERT INTO `news` VALUES ('138', null, '2019-03-13 09:04:41', '林允：陈柏霖比\"假如王子睡着了\"中的角色更man', '3', 'http://ent.163.com/17/1211/14/D5COE0AF000380D0.html');
INSERT INTO `news` VALUES ('139', null, '2019-03-13 09:04:41', '吴佩慈时隔一年发微博 罕见晒与准婆婆合影', '3', 'http://ent.163.com/17/1211/11/D5CEGEHR00038FO9.html');
INSERT INTO `news` VALUES ('140', null, '2019-03-13 09:04:41', '刘若英冻伤鼻头红一大片 粉丝打趣:照片不修吗？', '3', 'http://ent.163.com/17/1211/19/D5DAGI2R00038FO9.html');
INSERT INTO `news` VALUES ('141', null, '2019-03-13 09:04:41', '刘在石当选韩国最佳搞笑艺人 连续六年蝉联冠军', '3', 'http://ent.163.com/17/1211/16/D5D0BAMQ00038FO9.html');
INSERT INTO `news` VALUES ('142', null, '2019-03-13 09:04:41', '大器晚成？刘敏涛：谢谢认可 希望可以一直演下去', '3', 'http://ent.163.com/17/1211/15/D5CRBJBT00038FO9.html');
INSERT INTO `news` VALUES ('143', null, '2019-03-13 09:04:41', '周杰伦在某社交媒体晒照：我是一个多么年轻的人', '3', 'http://ent.163.com/17/1211/14/D5CPCFG300038FO9.html');
INSERT INTO `news` VALUES ('144', null, '2019-03-13 09:04:41', '《摔跤吧，爸爸》童星飞机上遇变态！呼救没人理', '3', 'http://ent.163.com/17/1211/19/D5DAJ4DE00038FO9.html');
INSERT INTO `news` VALUES ('145', null, '2019-03-13 09:04:41', '性骚扰DJ称已赔偿1美元给霉霉 还称硬币有深意', '3', 'http://ent.163.com/17/1211/16/D5CTU1VP00038FO9.html');
INSERT INTO `news` VALUES ('146', null, '2019-03-13 09:04:41', '白百何装扮随意逛地摊 竟是购烟丝卷烟纸', '3', 'http://ent.163.com/17/1211/11/D5CF3UPP00038FO9.html');
INSERT INTO `news` VALUES ('147', null, '2019-03-13 09:04:41', '众多美女齐聚 郭涛一屁股坐过来互加微信', '3', 'http://ent.163.com/17/1211/09/D5C7FTVO00038FO9.html');
INSERT INTO `news` VALUES ('148', null, '2019-03-13 09:04:41', '《红蔷薇》定档12.16 演绎菜鸟女特工成长史', '3', 'http://ent.163.com/17/1211/13/D5CLESEA000380F1.html');
INSERT INTO `news` VALUES ('149', null, '2019-03-13 09:04:41', '揭秘《不可思议的妈妈》如何成为实用育儿节目？', '3', 'http://ent.163.com/17/1211/16/D5CUH3H7000380EN.html');
INSERT INTO `news` VALUES ('150', null, '2019-03-13 09:04:41', '《猎场》研讨会专家点赞：主流价值观的正确示范', '3', 'http://ent.163.com/17/1211/15/D5CQMINO000380EN.html');
INSERT INTO `news` VALUES ('151', null, '2019-03-13 09:04:41', '职场偶像剧《特化师》热播 陈真逐梦成长', '3', 'http://ent.163.com/17/1211/15/D5CQEDKR000380EN.html');
INSERT INTO `news` VALUES ('152', null, '2019-03-13 09:04:41', '《爱情找对门》准婆婆逆袭大数据 妈宝男被手撕', '3', 'http://ent.163.com/17/1211/14/D5CPJ1IE00037VVV.html');
INSERT INTO `news` VALUES ('153', null, '2019-03-13 09:04:41', '《青春旅社》AB栋集体外出学习焕发新面貌', '3', 'http://ent.163.com/17/1211/14/D5CPCLLI00037VVV.html');
INSERT INTO `news` VALUES ('154', null, '2019-03-13 09:04:41', '蓄须近两百日！张晓晨《凰权·弈天下》压轴杀青', '3', 'http://ent.163.com/17/1211/14/D5CPA07H000380EN.html');
INSERT INTO `news` VALUES ('155', null, '2019-03-13 09:04:41', '《梦想的声音2》京剧大师王珮瑜唱流行歌比耶卖萌', '3', 'http://ent.163.com/17/1211/14/D5CP7C1800037VVV.html');
INSERT INTO `news` VALUES ('156', null, '2019-03-13 09:04:41', '何洁被曝新恋情 与知名歌手\"共宿\"还一起带娃', '3', 'http://ent.163.com/17/1211/08/D5C58JO900038FO9.html');
INSERT INTO `news` VALUES ('157', null, '2019-03-13 09:04:41', '韩男歌手经纪人自杀后又遇社长轻生 泪崩哀悼', '3', 'http://ent.163.com/17/1211/02/D5BFM2LC00038FO9.html');
INSERT INTO `news` VALUES ('158', null, '2019-03-13 09:04:41', '脏辫儿到底怎么洗？TT崩溃：别再问我了', '3', 'http://ent.163.com/17/1211/02/D5BE7H0300038FO9.html');
INSERT INTO `news` VALUES ('159', null, '2019-03-13 09:04:41', '群星演唱会在海南上演 陈小春田馥甄领衔开唱', '3', 'http://ent.163.com/17/1211/00/D5B9JAIA00038FO9.html');
INSERT INTO `news` VALUES ('160', null, '2019-03-13 09:04:41', '央行:11月新增人民币贷款1.1万亿 M2同比增长9.1%', '7', 'http://money.163.com/17/1211/17/D5D1AAUC002581PP.html');
INSERT INTO `news` VALUES ('161', null, '2019-03-13 09:04:41', '周小川：做好防范金融风险工作的主动性和针对性', '7', 'http://money.163.com/17/1211/17/D5D3QTES002580S6.html');
INSERT INTO `news` VALUES ('162', null, '2019-03-13 09:04:41', '监管下发网络小贷业务风险专项整治方案', '7', 'http://money.163.com/17/1211/19/D5DA9DG70025816E.html');
INSERT INTO `news` VALUES ('163', null, '2019-03-13 09:04:41', '清流|莎普爱思成长路：合作《养生堂》营收暴增', '7', 'http://money.163.com/17/1211/11/D5CDLF9U002590RK.html');
INSERT INTO `news` VALUES ('164', null, '2019-03-13 09:04:41', '李兆会被限制出境背后:荒废祖业玩资本 炒股赚40亿', '7', 'http://money.163.com/17/1211/01/D5BD3HIR002580S6.html');
INSERT INTO `news` VALUES ('165', null, '2019-03-13 09:04:41', '李稻葵:中国未来的发展怕的不是慢 而是这个字', '7', 'http://money.163.com/17/1211/17/D5D3B7C700258J1R.html');
INSERT INTO `news` VALUES ('166', null, '2019-03-13 09:04:41', '曹德旺：及早卖掉多余房子 以后卖不掉也租不出去', '7', 'http://money.163.com/17/1211/16/D5D0IQ39002580SJ.html');
INSERT INTO `news` VALUES ('167', null, '2019-03-13 09:04:41', '养老保险基金方案将出台:4.4万亿中的30%用于投资', '7', 'http://money.163.com/17/1211/15/D5CRGK99002581PP.html');
INSERT INTO `news` VALUES ('168', null, '2019-03-13 09:04:41', '重上3300点 今年A股人均赚了两万三 慢牛来了？', '7', 'http://money.163.com/17/1211/14/D5COIEJE00258169.html');
INSERT INTO `news` VALUES ('169', null, '2019-03-13 09:04:41', '基金称趁调整换思路布局 年末四行业频抛橄榄枝', '7', 'http://money.163.com/17/1211/07/D5C05KP3002580S6.html');
INSERT INTO `news` VALUES ('170', null, '2019-03-13 09:04:41', '5G发展迈上新台阶 机构密集探访21家公司', '7', 'http://money.163.com/17/1211/00/D5B7V5B9002580S6.html');
INSERT INTO `news` VALUES ('171', null, '2019-03-13 09:04:41', '新干线也没放过!日本制造业丑闻集中大爆发', '7', 'http://money.163.com/17/1211/15/D5CRIJBB002581PQ.html');
INSERT INTO `news` VALUES ('172', null, '2019-03-13 09:04:41', '曹德旺：叫马云来做玻璃都不行 我不喜欢赚快钱', '7', 'http://money.163.com/17/1211/16/D5D15GHR002580T4.html');
INSERT INTO `news` VALUES ('173', null, '2019-03-13 09:04:41', '资管新规延长过渡期？接近监管人士：一切未定', '7', 'http://money.163.com/17/1211/19/D5DAJMFE002581PP.html');
INSERT INTO `news` VALUES ('174', null, '2019-03-13 09:04:41', '暴涨超1900% 今年比特币经历了哪些大事件', '7', 'http://money.163.com/17/1211/18/D5D6VH8V0025816P.html');
INSERT INTO `news` VALUES ('175', null, '2019-03-13 09:04:41', '两办严管办公用房：建房资金不得接受赞助或捐款', '7', 'http://money.163.com/17/1211/18/D5D6NRIV002580SJ.html');
INSERT INTO `news` VALUES ('176', null, '2019-03-13 09:04:41', '中办、国办印发党政机关公务用车、用房管理办法', '7', 'http://money.163.com/17/1211/18/D5D621EG002580SK.html');
INSERT INTO `news` VALUES ('177', null, '2019-03-13 09:04:41', '11月末社会融资规模存量173.67万亿 同比增12.5%', '7', 'http://money.163.com/17/1211/17/D5D2BU1S002581PP.html');
INSERT INTO `news` VALUES ('178', null, '2019-03-13 09:04:41', '暴风集团董事崔天龙抛减持计划 公司连续两日涨停', '7', 'http://money.163.com/17/1211/17/D5D1S1LR0025814U.html');
INSERT INTO `news` VALUES ('179', null, '2019-03-13 09:04:41', '11月社会融资规模增量1.6万亿 比上年同期少2346亿', '7', 'http://money.163.com/17/1211/17/D5D1E79H002581PP.html');
INSERT INTO `news` VALUES ('180', null, '2019-03-13 09:04:41', '“双12”将至新零售概念股活跃 两逻辑布局5股', '7', 'http://money.163.com/17/1211/00/D5B7J35P002580S6.html');
INSERT INTO `news` VALUES ('181', null, '2019-03-13 09:04:41', '三维度筛出15只成长股 3只潜力股值得关注', '7', 'http://money.163.com/17/1211/00/D5B7J35T002580S6.html');
INSERT INTO `news` VALUES ('182', null, '2019-03-13 09:04:41', '重上3300点 今年A股人均赚了两万三 慢牛来了？', '7', 'http://money.163.com/17/1211/14/D5COIEJE00258169.html');
INSERT INTO `news` VALUES ('183', null, '2019-03-13 09:04:41', '收评：沪指涨0.98%重回3300点 创业板指涨1.38%', '7', 'http://money.163.com/17/1211/15/D5CQFIAE002580PL.html');
INSERT INTO `news` VALUES ('184', null, '2019-03-13 09:04:41', '李迅雷：明年股市有结构性机会 价值投资将延续', '7', 'http://money.163.com/17/1211/06/D5BTD0LE002580S6.html');
INSERT INTO `news` VALUES ('185', null, '2019-03-13 09:04:41', '首次零过会背后：新股发行撞上“迟疑则否”枪口', '7', 'http://money.163.com/17/1211/07/D5C05KJ8002580S6.html');
INSERT INTO `news` VALUES ('186', null, '2019-03-13 09:04:41', 'A股市场已到“冬播”时 寻找受益政策的成长股', '7', 'http://money.163.com/17/1211/06/D5BTS4A3002580S6.html');
INSERT INTO `news` VALUES ('187', null, '2019-03-13 09:04:41', '月内产业资本净增持逾16亿 机构扎堆调研8只个股', '7', 'http://money.163.com/17/1211/00/D5B7J35M002580S6.html');
INSERT INTO `news` VALUES ('188', null, '2019-03-13 09:04:41', '机构投资者占比有望持续提升 看好四大投资机会', '7', 'http://money.163.com/17/1211/06/D5BTSDR9002580S6.html');
INSERT INTO `news` VALUES ('189', null, '2019-03-13 09:04:41', '厦门银行9年八度增资 短期内闯关IPO非易事', '7', 'http://money.163.com/17/1211/07/D5C05R07002580S6.html');
INSERT INTO `news` VALUES ('190', null, '2019-03-13 09:04:41', '机构：名酒密集挺价景气确定 积极布局白酒龙头', '7', 'http://money.163.com/17/1211/06/D5BTS10V002580S6.html');
INSERT INTO `news` VALUES ('191', null, '2019-03-13 09:04:41', '曾因高利贷陷诉讼 巴士在线总经理失联致并购夭折', '7', 'http://money.163.com/17/1211/00/D5B9O2E0002580S6.html');
INSERT INTO `news` VALUES ('192', null, '2019-03-13 09:04:41', '浪莎借壳10年赚4亿却未分红 公司叫屈:是历史问题', '7', 'http://money.163.com/17/1211/00/D5B9O5NG002580S6.html');
INSERT INTO `news` VALUES ('193', null, '2019-03-13 09:04:41', '途牛首次实现单季度盈利 公司称没空评论重组传闻', '7', 'http://money.163.com/17/1211/08/D5C2VB1M00258169.html');
INSERT INTO `news` VALUES ('194', null, '2019-03-13 09:04:41', '上市八年产业绘雄图 佳兆业多元扩张的千亿之路', '7', 'http://money.163.com/17/1211/00/D5B6RUCM002580S6.html');
INSERT INTO `news` VALUES ('195', null, '2019-03-13 09:04:41', '孟凯重出江湖再造\"湘鄂情\" 不再关注上市公司事情', '7', 'http://money.163.com/17/1211/08/D5C32FGH00258169.html');
INSERT INTO `news` VALUES ('196', null, '2019-03-13 09:04:41', '互联网上奇葩险种频现 商家卖“鹿晗恋爱险”', '7', 'http://money.163.com/17/1211/07/D5C1IHEC002580S6.html');
INSERT INTO `news` VALUES ('197', null, '2019-03-13 09:04:41', '揭秘手机维修乱象：送修后个人信息秒变\"透明\"', '7', 'http://money.163.com/17/1211/07/D5C0EK74002580S6.html');
INSERT INTO `news` VALUES ('198', null, '2019-03-13 09:04:41', '自如等中介收房后快速装修出租 房间测出甲醛超标', '7', 'http://money.163.com/17/1211/01/D5BD3F1V002580S6.html');
INSERT INTO `news` VALUES ('199', null, '2019-03-13 09:04:41', '对标茅台只为杀出一条血路 水井坊围猎高端白酒', '7', 'http://money.163.com/17/1211/07/D5C05KJO002580S6.html');
INSERT INTO `news` VALUES ('200', null, '2019-03-13 09:04:41', '辉山乳业境内重整启动内情:债权人形成稳经营共识', '7', 'http://money.163.com/17/1211/00/D5B6RSD8002580S6.html');
INSERT INTO `news` VALUES ('201', null, '2019-03-13 09:04:41', '海信陷入与夏普诉讼战 狂买难解上游真实短板', '7', 'http://money.163.com/17/1211/07/D5C05O0V002580S6.html');
INSERT INTO `news` VALUES ('202', null, '2019-03-13 09:04:41', '7家网贷平台出手\"去刚兑\" \"买者自负\"如何赚钱', '7', 'http://money.163.com/17/1211/07/D5C05QV4002580S6.html');
INSERT INTO `news` VALUES ('203', null, '2019-03-13 09:04:41', 'ST生化纷争：信达债权或成烫手山芋', '7', 'http://money.163.com/17/1207/07/D51M72NK002590RK.html');
INSERT INTO `news` VALUES ('204', null, '2019-03-13 09:04:41', '茅台操盘手:券商和经销商\"疯狂炒作\"', '7', 'http://money.163.com/17/1130/07/D4FN74DJ002590RK.html');
INSERT INTO `news` VALUES ('205', null, '2019-03-13 09:04:41', '从经济学角度看 为什么会有性骚扰', '7', 'http://money.163.com/17/1123/15/D3UHHSDS00258J1R.html');
INSERT INTO `news` VALUES ('206', null, '2019-03-13 09:04:41', '启辰T70买哪款最值?1.4T MT睿享运动版最合算', '8', 'http://auto.163.com/17/1211/07/D5C0Q6SB0008856S.html');
INSERT INTO `news` VALUES ('207', null, '2019-03-13 09:04:41', '2司机撞车后掏枪互射 现场子弹飞窜犹如枪战片', '8', 'http://auto.163.com/17/1211/07/D5C193KM000884MM.html');
INSERT INTO `news` VALUES ('208', null, '2019-03-13 09:04:41', '智能/安全功能升级 2018款帝豪GL配置曝光', '8', 'http://auto.163.com/17/1211/11/D5CENOU00008856R.html');
INSERT INTO `news` VALUES ('209', null, '2019-03-13 09:04:41', '延续概念车造型 荣威Vision-E量产版太拉风了', '8', 'http://auto.163.com/17/1211/01/D5BAA9RC0008856R.html');
INSERT INTO `news` VALUES ('210', null, '2019-03-13 09:04:41', '醉驾撞人做公益能免刑?嫌疑人做社区服务未被起诉', '8', 'http://auto.163.com/17/1211/07/D5C29TL3000884MM.html');
INSERT INTO `news` VALUES ('211', null, '2019-03-13 09:04:41', '车顶坐着\"蜘蛛侠\"?这种\"新时尚\"存安全隐患', '8', 'http://auto.163.com/17/1211/07/D5C1EP4G000884MM.html');
INSERT INTO `news` VALUES ('212', null, '2019-03-13 09:04:41', '代驾市场不规范有安全隐患', '8', 'http://auto.163.com/17/1211/08/D5C3GLMF000884MM.html');
INSERT INTO `news` VALUES ('213', null, '2019-03-13 09:04:41', '仅次于P1 迈凯伦发布800马力全新车型', '8', 'http://auto.163.com/17/1211/11/D5CEVM7R0008856R.html');
INSERT INTO `news` VALUES ('214', null, '2019-03-13 09:04:41', '花小钱办大事 年底买个啥车衣锦还乡', '8', 'http://auto.163.com/17/1209/07/D56QCA810008856S.html');
INSERT INTO `news` VALUES ('215', null, '2019-03-13 09:04:41', '北汽董事长:到2025年将全面停产传统燃油车', '8', 'http://auto.163.com/17/1210/09/D59MJA7K000884MM.html');
INSERT INTO `news` VALUES ('216', null, '2019-03-13 09:04:41', '11月乘用车销量前十:一汽大众跌出前3吉利进前5', '8', 'http://auto.163.com/17/1210/10/D59N9JBP000884MM.html');
INSERT INTO `news` VALUES ('217', null, '2019-03-13 09:04:41', '小伙睡梦中飙车将2人撞进ICU 因前晚认识俩姑娘', '8', 'http://auto.163.com/17/1210/09/D59LC0K8000884MM.html');
INSERT INTO `news` VALUES ('218', null, '2019-03-13 09:04:41', '北京超12万人申请新能源车指标 明年指标已透支', '8', 'http://auto.163.com/17/1210/10/D59NIIMG000884MM.html');
INSERT INTO `news` VALUES ('219', null, '2019-03-13 09:04:41', '西安洒水结冰致38车连撞 车辆损失该怎么赔偿？', '8', 'http://auto.163.com/17/1210/09/D59M3J4Q000884MM.html');
INSERT INTO `news` VALUES ('220', null, '2019-03-13 09:04:41', '因排放门 大众美国高管被判7年监禁被罚40万美元', '8', 'http://auto.163.com/17/1209/09/D5734L82000884MM.html');
INSERT INTO `news` VALUES ('221', null, '2019-03-13 09:04:41', '女子车震被拍喝农药自杀 涉事辅警获刑8个月', '8', 'http://auto.163.com/17/1210/09/D59L2I8B000884MM.html');
INSERT INTO `news` VALUES ('222', null, '2019-03-13 09:04:41', '和丰田共享平台 全新宝马Z4开始国内路测', '8', 'http://auto.163.com/17/1211/10/D5CC27LR0008856R.html');
INSERT INTO `news` VALUES ('223', null, '2019-03-13 09:04:41', '明年1月发布 全新丰田Avalon将2019年国产', '8', 'http://auto.163.com/17/1211/11/D5CDCAR80008856R.html');
INSERT INTO `news` VALUES ('224', null, '2019-03-13 09:04:41', '到底长啥样?威马汽车首款量产车今晚首发', '8', 'http://auto.163.com/17/1211/00/D5B7FQ6G0008856R.html');
INSERT INTO `news` VALUES ('225', null, '2019-03-13 09:04:41', 'NEVS将于2018年在瑞典生产电动汽车', '8', 'http://auto.163.com/17/1210/10/D59N1N43000884MM.html');
INSERT INTO `news` VALUES ('226', null, '2019-03-13 09:04:41', '2018年投产 威马首款量产车12月11日亮相', '8', 'http://auto.163.com/17/1208/03/D53RB2BD0008856R.html');
INSERT INTO `news` VALUES ('227', null, '2019-03-13 09:04:41', '与XT5隔空对比 凯迪拉克XT4谍照曝光', '8', 'http://auto.163.com/17/1208/00/D53GC88A0008856R.html');
INSERT INTO `news` VALUES ('228', null, '2019-03-13 09:04:41', '油耗动力都不怂 通用小排量发动机再接触', '8', 'http://auto.163.com/17/1211/07/D5C0N3QV0008856S.html');
INSERT INTO `news` VALUES ('229', null, '2019-03-13 09:04:41', '冬季做好5件事 才能养成纤纤玉手', '9', 'http://jiankang.163.com/17/1210/22/D5B18DEJ00388045.html');
INSERT INTO `news` VALUES ('230', null, '2019-03-13 09:04:41', '为何你的颈椎病总是反复发作？', '9', 'http://jiankang.163.com/17/1210/22/D5B21LMO00388045.html');
INSERT INTO `news` VALUES ('231', null, '2019-03-13 09:04:41', '清新口气：4种食物助你摆脱口臭尴尬', '9', 'http://jiankang.163.com/17/1210/22/D5B1E2TO00388045.html');
INSERT INTO `news` VALUES ('232', null, '2019-03-13 09:04:41', '一起吃饭就可能会被传染乙肝吗？', '9', 'http://jiankang.163.com/17/1210/22/D5B1PALV00388045.html');
INSERT INTO `news` VALUES ('233', null, '2019-03-13 09:04:41', '3个月报告19起疫情 北京进入流感高发期', '9', 'http://jiankang.163.com/17/1207/16/D52MQRDJ0038804U.html');
INSERT INTO `news` VALUES ('234', null, '2019-03-13 09:04:41', '谷歌一华裔女工程师赤裸浮尸旧金山湾 死因不明', '2', 'http://tech.163.com/17/1211/18/D5D60QQ900097U7R.html');
INSERT INTO `news` VALUES ('235', null, '2019-03-13 09:04:41', 'BBC记者挑战中国天网 \"潜逃\"7分钟后被抓获', '2', 'http://tech.163.com/17/1211/16/D5D0AV2V00097U80.html');
INSERT INTO `news` VALUES ('236', null, '2019-03-13 09:04:41', '日媒：“二战”后70年日本的创新路遇到拐点', '2', 'http://tech.163.com/17/1211/16/D5CVFNJA00097U7T.html');
INSERT INTO `news` VALUES ('237', null, '2019-03-13 09:04:41', '三星去年研发投入143亿美元：全球排名第4', '2', 'http://tech.163.com/17/1211/16/D5D0H1S600097U7T.html');
INSERT INTO `news` VALUES ('238', null, '2019-03-13 09:04:41', '合肥网贷平台5个月吸储上亿元：专门吸引\"羊毛党\"', '2', 'http://tech.163.com/17/1211/18/D5D59U4M00097U7R.html');
INSERT INTO `news` VALUES ('239', null, '2019-03-13 09:04:41', '苹果公司披露自动驾驶进展 不再保密是为招揽人才', '2', 'http://tech.163.com/17/1211/16/D5CUM6P000097U80.html');
INSERT INTO `news` VALUES ('240', null, '2019-03-13 09:04:41', '联想杨元庆称中国半导体技不如人，责任在谁？', '2', 'http://tech.163.com/17/1211/14/D5CNE8LT00097U7T.html');
INSERT INTO `news` VALUES ('241', null, '2019-03-13 09:04:41', '邬贺铨：中国快递员平均工资只有美国同行的30%', '2', 'http://tech.163.com/17/1211/11/D5CDA6DO00097U7R.html');
INSERT INTO `news` VALUES ('242', null, '2019-03-13 09:04:41', '孙宏斌感谢平安银行：借我25亿，赚了150亿', '2', 'http://tech.163.com/17/1211/13/D5CKU7CB00097U7R.html');
INSERT INTO `news` VALUES ('243', null, '2019-03-13 09:04:41', 'SpaceX本周目标：让回收火箭和飞船同时重返太空', '2', 'http://tech.163.com/17/1211/10/D5CCBE1B00097U81.html');
INSERT INTO `news` VALUES ('244', null, '2019-03-13 09:04:41', '摩拜ofo被曝挪用押金，银行：企业都在玩文字游戏', '2', 'http://tech.163.com/17/1211/08/D5C593V000097U7R.html');
INSERT INTO `news` VALUES ('245', null, '2019-03-13 09:04:41', '柯洁重返世界第一 与第二相差仅1分', '2', 'http://tech.163.com/17/1211/14/D5CNP2EE00097U7R.html');
INSERT INTO `news` VALUES ('246', null, '2019-03-13 09:04:41', '一加5T面部识别比iPhone X更快 但技术难度不同', '2', 'http://tech.163.com/17/1211/13/D5CM7COL00097U7S.html');
INSERT INTO `news` VALUES ('247', null, '2019-03-13 09:04:41', '微信、微博等APP在印度被\"拉黑\" 究竟怎么回事？', '2', 'http://tech.163.com/17/1211/10/D5CBJJOM00097U7H.html');
INSERT INTO `news` VALUES ('248', null, '2019-03-13 09:04:41', '旧款iPhone为何越用越卡？可能是因为电池老化', '2', 'http://tech.163.com/17/1211/10/D5C9Q4VV00097U7S.html');
INSERT INTO `news` VALUES ('249', null, '2019-03-13 09:04:41', '比特币期货上线交易：暴涨3000美元 两度触发熔断', '2', 'http://tech.163.com/17/1211/08/D5C2M1DH00097U7R.html');
INSERT INTO `news` VALUES ('250', null, '2019-03-13 09:04:41', '马云计划10年投3亿：让最优秀毕业生做乡村老师', '2', 'http://tech.163.com/17/1211/12/D5CH2QGN00097U7R.html');
INSERT INTO `news` VALUES ('251', null, '2019-03-13 09:04:41', '女子自封\"小程序教母\" 腾讯公关总监都\"跪了\"', '2', 'http://tech.163.com/17/1211/12/D5CGEVQ100097U82.html');
INSERT INTO `news` VALUES ('252', null, '2019-03-13 09:04:41', '董明珠考察LYC轴承与中航光电 格力布局河南制造业', '2', 'http://tech.163.com/17/1211/11/D5CCOVBD00097U7T.html');
INSERT INTO `news` VALUES ('253', null, '2019-03-13 09:04:41', '苹果高管不屑：安卓手机的人脸识别技术很糟糕', '2', 'http://tech.163.com/17/1211/08/D5C2ECKV00098IEO.html');
INSERT INTO `news` VALUES ('254', null, '2019-03-13 09:04:41', '女孩修电脑被植入偷拍软件 全寝女生换衣服被直播', '2', 'http://tech.163.com/17/1211/08/D5C3KULC00097U7R.html');
INSERT INTO `news` VALUES ('255', null, '2019-03-13 09:04:41', '苹果更新网站管理层页面：变动不小，新职位换人', '10', 'http://mobile.163.com/17/1211/07/D5C13S4200118017.html');
INSERT INTO `news` VALUES ('256', null, '2019-03-13 09:04:41', '新款iPhone X又一升级曝光：电池容量提升', '10', 'http://mobile.163.com/17/1211/07/D5C0KPTP00118017.html');
INSERT INTO `news` VALUES ('257', null, '2019-03-13 09:04:41', 'LG G7将配备虹膜识别：三星S9有对手了', '10', 'http://mobile.163.com/17/1211/07/D5C0J4DH00118017.html');
INSERT INTO `news` VALUES ('258', null, '2019-03-13 09:04:41', '小米MIX 3后壳曝光：指纹仍后置/设计大变', '10', 'http://mobile.163.com/17/1211/07/D5C0GPRL00118017.html');
INSERT INTO `news` VALUES ('259', null, '2019-03-13 09:04:41', '苹果屏下指纹专利获批：触屏即解锁', '10', 'http://mobile.163.com/17/1211/10/D5CBKH4T0011819H.html');
INSERT INTO `news` VALUES ('260', null, '2019-03-13 09:04:41', '旧款iPhone性能不佳？更换电池解决问题', '10', 'http://mobile.163.com/17/1211/10/D5CBDQL70011819H.html');
INSERT INTO `news` VALUES ('261', null, '2019-03-13 09:04:41', '网站404谁都见过，你知道为什么是404么？', '11', 'http://digi.163.com/17/1211/09/D5C6KVIJ001680P9.html');
INSERT INTO `news` VALUES ('262', null, '2019-03-13 09:04:41', '5G基站建设面临资金难：运营商期望政策倾斜', '10', 'http://mobile.163.com/17/1211/07/D5C1H3Q700118017.html');
INSERT INTO `news` VALUES ('263', null, '2019-03-13 09:04:41', '三星Note8获系统更新：新增支付宝指纹支付', '10', 'http://mobile.163.com/17/1211/07/D5C1CM9F00118017.html');
INSERT INTO `news` VALUES ('264', null, '2019-03-13 09:04:41', '魅族15 Plus再曝新渲染图：这设计很惊艳', '10', 'http://mobile.163.com/17/1211/07/D5C0BN4S00118017.html');
INSERT INTO `news` VALUES ('265', null, '2019-03-13 09:04:41', '苹果供应商大买厂房:2018全系iPhone支持Face ID', '10', 'http://mobile.163.com/17/1211/10/D5CC3R2T0011819H.html');
INSERT INTO `news` VALUES ('266', null, '2019-03-13 09:04:41', '北京二手房中介门店门可罗雀 市场成交量低迷', '12', 'http://bj.house.163.com/17/1211/08/D5C4Q2AK000788HN.html');
INSERT INTO `news` VALUES ('267', null, '2019-03-13 09:04:41', '2018年楼市毫无悬念：调控仍将持续', '12', 'http://bj.house.163.com/17/1211/09/D5C5S99D000788HN.html');
INSERT INTO `news` VALUES ('268', null, '2019-03-13 09:04:41', '2018年楼市：趋势如何看，热点在哪里', '12', 'http://bj.house.163.com/17/1211/09/D5C5QI5F000788HN.html');
INSERT INTO `news` VALUES ('269', null, '2019-03-13 09:04:41', '超过50个城市出台住房租赁政策措施', '12', 'http://bj.house.163.com/17/1211/08/D5C4MU0T000788HN.html');
INSERT INTO `news` VALUES ('270', null, '2019-03-13 09:04:41', '11月全国首套房贷款利率5.36% 同比升逾20%', '12', 'http://bj.house.163.com/17/1211/09/D5C61RJ2000788HN.html');
INSERT INTO `news` VALUES ('271', null, '2019-03-13 09:04:41', '祭出四大\"杀头目标\" 朱荣斌带阳光城冲击1200亿', '12', 'http://bj.house.163.com/17/1211/08/D5C5IMNR000788HN.html');
INSERT INTO `news` VALUES ('272', null, '2019-03-13 09:04:41', '码农在中关村软件园就近生活难 新房10万/平', '12', 'http://bj.house.163.com/17/1211/06/D5BTSGSM0007823B.html');
INSERT INTO `news` VALUES ('273', null, '2019-03-13 09:04:41', '专家：北京向东向南发展是唯一选择', '12', 'http://bj.house.163.com/17/1211/09/D5C668GG000788HN.html');
INSERT INTO `news` VALUES ('274', null, '2019-03-13 09:04:41', '起底租房黑中介：强索跳单费，克扣押金……', '12', 'http://bj.house.163.com/17/1211/08/D5C5M79M000788HN.html');
INSERT INTO `news` VALUES ('275', null, '2019-03-13 09:04:41', '美女老师刚住进新家就抓狂 花48小时完成极速改造', '13', 'http://home.163.com/17/1211/07/D5BV16C5001081EI.html');
INSERT INTO `news` VALUES ('276', null, '2019-03-13 09:04:41', '在北方常见的天然气地暖 值得南方人羡慕吗？', '13', 'http://home.163.com/17/1211/07/D5BV15NA001086FG.html');
INSERT INTO `news` VALUES ('277', null, '2019-03-13 09:04:41', '厨房用单水槽还是双水槽？选不好家人天天发牢骚', '13', 'http://home.163.com/17/1211/07/D5BVJHTS001086FG.html');
INSERT INTO `news` VALUES ('278', null, '2019-03-13 09:04:41', '为什么别人家厨房总是干净整洁 你家的却乱糟糟', '13', 'http://home.163.com/17/1211/07/D5BVJFT0001086FG.html');
INSERT INTO `news` VALUES ('279', null, '2019-03-13 09:04:41', '家庭弹簧床垫选购必看攻略 帮你找回睡眠幸福感', '13', 'http://home.163.com/17/1211/07/D5BVJGK0001086FG.html');
INSERT INTO `news` VALUES ('280', null, '2019-03-13 09:04:41', '家里门铃总是坏？看完这份攻略就不用再担心了', '13', 'http://home.163.com/17/1211/07/D5BV18UG001086FG.html');
INSERT INTO `news` VALUES ('281', null, '2019-03-13 09:04:41', '扶手高度万万不能忽略 全家的安全和美观都靠它', '13', 'http://home.163.com/17/1211/07/D5BV15B4001086FG.html');
INSERT INTO `news` VALUES ('282', null, '2019-03-13 09:04:41', '包租婆装修3套房的经验：哪些最该花钱哪些最得省钱', '13', 'http://home.163.com/17/1208/16/D557REFU001086HJ.html');
INSERT INTO `news` VALUES ('283', null, '2019-03-13 09:04:41', '卫生间选灯暖or风暖？我家装错冬天洗澡冷得直发抖', '13', 'http://home.163.com/17/1208/11/D54MAMQO001086I2.html');
INSERT INTO `news` VALUES ('284', null, '2019-03-13 09:04:41', '搞大了 女神舒淇最想和它分手却掉入深渊无法脱离', '4', 'http://lady.163.com/17/1211/15/D5CTFTGD00267VQQ.html');
INSERT INTO `news` VALUES ('285', null, '2019-03-13 09:04:41', '都是猪精女孩 凭什么她桃花运就这么好', '4', 'http://lady.163.com/17/1211/10/D5CBRRAK00267VA9.html');
INSERT INTO `news` VALUES ('286', null, '2019-03-13 09:04:41', '看完日本可爱女高中生选美比赛，我笑了出来..', '4', 'http://lady.163.com/17/1211/10/D5CBLPI800267VA9.html');
INSERT INTO `news` VALUES ('287', null, '2019-03-13 09:04:41', '世界上最温柔的事 就是爸爸和女儿在一起', '4', 'http://lady.163.com/17/1211/11/D5CD52E100267VA9.html');
INSERT INTO `news` VALUES ('288', null, '2019-03-13 09:04:41', '如果章子怡和关晓彤一起上《演员的诞生》…', '4', 'http://lady.163.com/17/1211/11/D5CDLJB500267VA9.html');
INSERT INTO `news` VALUES ('289', null, '2019-03-13 09:04:41', '父母老了 以后夜里不能手机静音…', '4', 'http://lady.163.com/17/1211/11/D5CCV5ND00267VA9.html');
INSERT INTO `news` VALUES ('290', null, '2019-03-13 09:04:41', '想嫁个有钱人当富太太？想得美！', '4', 'http://lady.163.com/17/1210/08/D59ISD3200267VA9.html');
INSERT INTO `news` VALUES ('291', null, '2019-03-13 09:04:41', '女子3次领证未果怼民政局:领证比找老公都难', '4', 'http://lady.163.com/17/1210/09/D59JO7GP00267VA9.html');
INSERT INTO `news` VALUES ('292', null, '2019-03-13 09:04:41', '被动攻击型恋人到底有多可怕？', '4', 'http://lady.163.com/17/1210/08/D59I1N3200267VA9.html');
INSERT INTO `news` VALUES ('293', null, '2019-03-13 09:04:41', '见面四次就闪婚 五年生三娃', '4', 'http://lady.163.com/17/1210/08/D59HU93600267VA9.html');
INSERT INTO `news` VALUES ('294', null, '2019-03-13 09:04:41', '喜得一子！马龙晒一家三口牵手照：你好兄弟', '14', 'http://baby.163.com/17/1211/10/D5C96JBH00367V0V.html');
INSERT INTO `news` VALUES ('295', null, '2019-03-13 09:04:41', '[赠书]如果你被感动了 请将这个故事讲给别人听', '14', 'http://baby.163.com/17/1211/14/D5CO0KA800367V0V.html');
INSERT INTO `news` VALUES ('296', null, '2019-03-13 09:04:41', '孙莉称多多长太快经常腿疼 何炅：我从没痛过', '14', 'http://baby.163.com/17/1211/10/D5CAJPBC00367V0V.html');
INSERT INTO `news` VALUES ('297', null, '2019-03-13 09:04:41', '林永健和儿子被窝合影 网友:没人敢说不是您儿子', '14', 'http://baby.163.com/17/1211/14/D5CP36MA00367V0V.html');
INSERT INTO `news` VALUES ('298', null, '2019-03-13 09:04:41', '症状类似感冒易被误诊 医生提醒警惕小儿川崎病', '14', 'http://baby.163.com/17/1211/12/D5CG2A7700367V0V.html');
INSERT INTO `news` VALUES ('299', null, '2019-03-13 09:04:41', '这11句话最鼓舞孩子', '14', 'http://baby.163.com/17/1211/11/D5CFV68A00367V0V.html');
INSERT INTO `news` VALUES ('300', null, '2019-03-13 09:04:41', '孩子超过10点睡 小心长不高', '14', 'http://baby.163.com/17/1211/11/D5CFPJHE00367V0V.html');
INSERT INTO `news` VALUES ('301', null, '2019-03-13 09:04:41', '英媒：不堪重负 中国“虎妈”反抗家长作业', '14', 'http://baby.163.com/17/1211/11/D5CFIO5D00367V0V.html');
INSERT INTO `news` VALUES ('302', null, '2019-03-13 09:04:41', '家长们 请珍惜孩子身上的淘气本性', '14', 'http://baby.163.com/17/1211/10/D5CBCA6S00367V0V.html');
INSERT INTO `news` VALUES ('303', null, '2019-03-13 09:04:41', '阿杜儿子陪爸爸工作 机场晒背影开心回家', '14', 'http://baby.163.com/17/1211/14/D5CNGBTR00367V0V.html');
INSERT INTO `news` VALUES ('304', null, '2019-03-13 09:04:41', '产后抑郁症 服药会不会影响哺乳？', '14', 'http://baby.163.com/17/1211/12/D5CGDS5300367V0V.html');
INSERT INTO `news` VALUES ('305', null, '2019-03-13 09:04:41', '“信息之美”来看今年的数据可视化作品', '15', 'http://art.163.com/17/1210/13/D5A2R5Q700997VCT.html');
INSERT INTO `news` VALUES ('306', null, '2019-03-13 09:04:41', '溥儒《白云溪声图》赏析', '15', 'http://art.163.com/17/1210/13/D5A3HN4D00997VCT.html');
INSERT INTO `news` VALUES ('307', null, '2019-03-13 09:04:41', '肥腴细润的白和娇气匀净的黄', '15', 'http://art.163.com/17/1209/17/D57SJEL900997VCT.html');
INSERT INTO `news` VALUES ('308', null, '2019-03-13 09:04:41', '爱德华·蒙克：孤独是时间留给他的自画像', '15', 'http://art.163.com/17/1209/14/D57L3FH400997VCT.html');
INSERT INTO `news` VALUES ('309', null, '2019-03-13 09:04:41', '看京沪杭三地的李可染白蕉潘天寿纪念大展', '15', 'http://art.163.com/17/1209/09/D573TFVJ00997VCT.html');
INSERT INTO `news` VALUES ('310', null, '2019-03-13 09:04:41', '夜间娱乐少 日本为中国游客打造\"夜生活\"', '16', 'http://travel.163.com/17/1211/00/D5B8DGO900067VF3.html');
INSERT INTO `news` VALUES ('311', null, '2019-03-13 09:04:41', '奇葩的日本地名,\"女体入口\"是什么鬼?', '16', 'http://travel.163.com/17/1211/10/D5CCDQA300067VF3.html');
INSERT INTO `news` VALUES ('312', null, '2019-03-13 09:04:41', '人工智能进入国考试卷 申论试题最需想象力', '17', 'http://edu.163.com/17/1211/09/D5C8FG1T00297VGM.html');
INSERT INTO `news` VALUES ('313', null, '2019-03-13 09:04:41', '大学教材\"主编位\"公开买卖 最贵2万最便宜5500元', '17', 'http://edu.163.com/17/1211/09/D5C8BD3P00297VGM.html');
INSERT INTO `news` VALUES ('314', null, '2019-03-13 09:04:41', '近六成大学生希望成为职场精英', '17', 'http://edu.163.com/17/1211/10/D5C9771L00297VGM.html');
INSERT INTO `news` VALUES ('315', null, '2019-03-13 09:04:41', '[赠书]写给新的一年 王小波图书送给明年更好的你', '17', 'http://edu.163.com/17/1211/09/D5C5T40600297VGM.html');
INSERT INTO `news` VALUES ('316', null, '2019-03-13 09:04:41', '大学生修电脑被植入偷窥软件 同寝女生换衣服被拍', '17', 'http://edu.163.com/17/1211/09/D5C8JDT900297VGM.html');
INSERT INTO `news` VALUES ('317', null, '2019-03-13 09:04:41', '差点砸到小朋友 驻日美军战机零件掉落幼儿园', '17', 'http://edu.163.com/17/1211/06/D5BRJAV900297VGM.html');
INSERT INTO `news` VALUES ('318', null, '2019-03-13 09:04:41', '长沙理工学生吐槽男性进女寝突查 你觉得合理吗', '17', 'http://edu.163.com/17/1211/10/D5CA3MP900297VGM.html');
INSERT INTO `news` VALUES ('319', null, '2019-03-13 09:04:41', '女教师卧底揭秘不良校园贷：3000元3个月变3万元', '17', 'http://edu.163.com/17/1211/11/D5CCM4Q500297VGM.html');
INSERT INTO `news` VALUES ('320', null, '2019-03-13 09:04:41', '双语阅读：都是礼物 gift和present有什么区别？', '17', 'http://edu.163.com/17/1211/10/D5CCCQ6V00297VGM.html');
INSERT INTO `news` VALUES ('321', null, '2019-03-13 09:04:41', '教师辱骂学生 视频误发家长群 校方:怀二胎压力大', '17', 'http://edu.163.com/17/1211/10/D5CAHVEQ00297VGM.html');
INSERT INTO `news` VALUES ('322', null, '2019-03-13 09:04:41', '谷歌一华裔女工程师赤裸浮尸旧金山湾 死因不明', '1', 'http://news.163.com/17/1211/17/D5D39OU800018AOR.html');
INSERT INTO `news` VALUES ('323', null, '2019-03-13 09:04:41', '武汉预拌混凝土企业停工:呼吁政府干预水泥价格', '1', 'http://news.163.com/17/1211/15/D5CRNRON000187VE.html');
INSERT INTO `news` VALUES ('324', null, '2019-03-13 09:04:41', '吴咏宁好友:他签约多个直播平台 未透露有彩礼压力', '1', 'http://news.163.com/17/1211/16/D5CVT6RK0001875P.html');
INSERT INTO `news` VALUES ('325', null, '2019-03-13 09:04:41', '老师在班群留言引家长发文怒斥 网友反为老师点赞', '1', 'http://news.163.com/17/1211/17/D5D1P0TM0001899N.html');
INSERT INTO `news` VALUES ('326', null, '2019-03-13 09:04:41', '女生把外卖放宿舍楼下被人拿走 贴告示要求还饭钱', '1', 'http://news.163.com/17/1211/17/D5D46N4O0001899N.html');
INSERT INTO `news` VALUES ('327', null, '2019-03-13 09:04:41', '老人进养老院22天后满身伤痕身亡 官方:因病猝死', '1', 'http://news.163.com/17/1211/17/D5D22DNG000187VE.html');
INSERT INTO `news` VALUES ('328', null, '2019-03-13 09:04:41', '男子带12岁女孩开房被判强奸罪 当时女孩正来例假', '1', 'http://news.163.com/17/1211/17/D5D3MBFB000187VE.html');
INSERT INTO `news` VALUES ('329', null, '2019-03-13 09:04:41', '辽宁渔船与货船相撞后9人失联 搜寻9日仍下落不明', '1', 'http://news.163.com/17/1211/17/D5D2PND70001875P.html');
INSERT INTO `news` VALUES ('330', null, '2019-03-13 09:04:41', '河北警察抓捕罪犯时被刺牺牲 嫌犯已被批捕', '1', 'http://news.163.com/17/1211/17/D5D30DM60001899N.html');
INSERT INTO `news` VALUES ('331', null, '2019-03-13 09:04:41', '6名男孩被困电梯说不出位置 警方排查65栋楼救人', '1', 'http://news.163.com/17/1211/17/D5D17HAS0001899N.html');

-- ----------------------------
-- Table structure for newslogs
-- ----------------------------
DROP TABLE IF EXISTS `newslogs`;
CREATE TABLE `newslogs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `news_id` bigint(20) NOT NULL,
  `view_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `prefer_degree` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `news_id` (`news_id`),
  CONSTRAINT `newslogs_news_id` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`),
  CONSTRAINT `newslogs_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newslogs
-- ----------------------------
INSERT INTO `newslogs` VALUES ('1', '1', '100', '2019-03-12 21:30:42', '1');
INSERT INTO `newslogs` VALUES ('2', '1', '101', '2019-03-12 21:30:42', '1');
INSERT INTO `newslogs` VALUES ('3', '1', '102', '2019-03-12 21:30:42', '1');
INSERT INTO `newslogs` VALUES ('4', '2', '101', '2019-03-12 21:30:42', '1');
INSERT INTO `newslogs` VALUES ('5', '2', '102', '2019-03-12 21:30:42', '1');
INSERT INTO `newslogs` VALUES ('6', '2', '103', '2019-03-12 21:30:42', '1');
INSERT INTO `newslogs` VALUES ('7', '3', '102', '2019-03-12 21:30:42', '0');
INSERT INTO `newslogs` VALUES ('8', '3', '103', '2019-03-12 21:30:42', '0');
INSERT INTO `newslogs` VALUES ('9', '3', '104', '2019-03-12 21:30:42', '0');
INSERT INTO `newslogs` VALUES ('10', 'a', '100', '2019-03-12 21:46:23', '0');
INSERT INTO `newslogs` VALUES ('11', 'a', '101', '2019-03-12 21:46:38', '0');
INSERT INTO `newslogs` VALUES ('12', 'a', '102', '2019-03-12 21:46:57', '0');

-- ----------------------------
-- Table structure for newsmodules
-- ----------------------------
DROP TABLE IF EXISTS `newsmodules`;
CREATE TABLE `newsmodules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newsmodules
-- ----------------------------
INSERT INTO `newsmodules` VALUES ('1', '新闻中心');
INSERT INTO `newsmodules` VALUES ('2', '网易科技');
INSERT INTO `newsmodules` VALUES ('3', '网易娱乐');
INSERT INTO `newsmodules` VALUES ('4', '女人频道');
INSERT INTO `newsmodules` VALUES ('5', '军事');
INSERT INTO `newsmodules` VALUES ('6', '体育频道');
INSERT INTO `newsmodules` VALUES ('7', '财经频道');
INSERT INTO `newsmodules` VALUES ('8', '汽车频道');
INSERT INTO `newsmodules` VALUES ('9', '健康频道');
INSERT INTO `newsmodules` VALUES ('10', '网易手机');
INSERT INTO `newsmodules` VALUES ('11', '数码频道');
INSERT INTO `newsmodules` VALUES ('12', '网易北京房产');
INSERT INTO `newsmodules` VALUES ('13', '网易家居');
INSERT INTO `newsmodules` VALUES ('14', '亲子频道');
INSERT INTO `newsmodules` VALUES ('15', '艺术频道');
INSERT INTO `newsmodules` VALUES ('16', '旅游频道');
INSERT INTO `newsmodules` VALUES ('17', '教育频道');

-- ----------------------------
-- Table structure for recommendations
-- ----------------------------
DROP TABLE IF EXISTS `recommendations`;
CREATE TABLE `recommendations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `news_id` bigint(20) NOT NULL,
  `derive_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `feedback` bit(1) DEFAULT NULL,
  `derive_algorithm` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `news_id` (`news_id`),
  CONSTRAINT `recommendations_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `recommendations_news_id` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recommendations
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `pref_list` text NOT NULL,
  `latest_log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '{\"1\":{},\"2\":{},\"3\":{},\"4\":{},\"5\":{},\"6\":{\"曝小牛\":288.4741644025304,\"考辛斯\":276.31170648638863,\"媒体\":110.52413506982784,\"合同\":92.1034458915232,\"应付\":18.420691576926856,\"聊天\":18.420691576926856,\"被迫\":92.10361329526664,\"丁彦雨\":276.31170648638863,\"等待\":18.420691576926856,\"加盟\":18.420691576926856,\"麻烦\":92.10692546658463,\"板凳\":92.1034458915232,\"高层\":92.1034458915232,\"哈登\":276.31170648638863,\"犯规\":18.420691576926856,\"爆炸\":18.420691576926856},\"7\":{},\"8\":{},\"9\":{},\"10\":{},\"11\":{},\"12\":{},\"13\":{},\"14\":{},\"15\":{},\"16\":{},\"17\":{}}', '2019-04-07 21:30:42', '小红');
INSERT INTO `users` VALUES ('2', '{\"1\":{},\"2\":{},\"3\":{},\"4\":{},\"5\":{},\"6\":{\"雷吉\":234.86495051343033,\"高光\":234.86495051343033,\"考辛斯\":234.86495051343033,\"拉迪波\":234.86495051343033,\"媒体\":93.94551480935365,\"应付\":9.210345788463428,\"米勒\":234.86495051343033,\"聊天\":9.210345788463428,\"被迫\":78.28807130097664,\"麻烦\":78.29088664659693,\"板凳\":78.28792900779472,\"哈登\":234.86495051343033,\"今夜\":78.28830483391289,\"犯规\":9.210345788463428,\"爆炸\":9.210345788463428,\"生涯\":78.28792900779472},\"7\":{},\"8\":{},\"9\":{},\"10\":{},\"11\":{},\"12\":{},\"13\":{},\"14\":{},\"15\":{},\"16\":{},\"17\":{}}', '2019-04-08 21:30:42', '小橙');
INSERT INTO `users` VALUES ('3', '{\"1\":{},\"2\":{},\"3\":{},\"4\":{},\"5\":{},\"6\":{\"雷吉\":276.31170648638863,\"高光\":276.31170648638863,\"曝小牛\":288.4741644025304,\"考辛斯\":276.31170648638863,\"拉迪波\":276.31170648638863,\"合同\":92.1034458915232,\"米勒\":276.31170648638863,\"被迫\":92.10361329526664,\"丁彦雨\":276.31170648638863,\"等待\":18.420691576926856,\"加盟\":18.420691576926856,\"麻烦\":92.10692546658463,\"板凳\":92.1034458915232,\"高层\":92.1034458915232,\"犯规\":18.420691576926856,\"今夜\":92.10388803989753,\"爆炸\":18.420691576926856,\"生涯\":92.1034458915232},\"7\":{},\"8\":{},\"9\":{},\"10\":{},\"11\":{},\"12\":{},\"13\":{},\"14\":{},\"15\":{},\"16\":{},\"17\":{}}', '2019-04-09 21:30:42', '小黄');
INSERT INTO `users` VALUES ('4', '{\"1\":{},\"2\":{},\"3\":{},\"4\":{},\"5\":{},\"6\":{},\"7\":{},\"8\":{},\"9\":{},\"10\":{},\"11\":{},\"12\":{},\"13\":{},\"14\":{},\"15\":{},\"16\":{},\"17\":{}}', '2019-04-10 21:30:42', '小绿');
INSERT INTO `users` VALUES ('5', '{\"1\":{},\"2\":{},\"3\":{},\"4\":{},\"5\":{},\"6\":{},\"7\":{},\"8\":{},\"9\":{},\"10\":{},\"11\":{},\"12\":{},\"13\":{},\"14\":{},\"15\":{},\"16\":{},\"17\":{}}', '2019-04-11 21:30:42', '小青');
INSERT INTO `users` VALUES ('6', '{\"1\":{},\"2\":{},\"3\":{},\"4\":{},\"5\":{},\"6\":{},\"7\":{},\"8\":{},\"9\":{},\"10\":{},\"11\":{},\"12\":{},\"13\":{},\"14\":{},\"15\":{},\"16\":{},\"17\":{}}', '2019-04-12 21:30:42', '小蓝');
INSERT INTO `users` VALUES ('7', '{\"1\":{},\"2\":{},\"3\":{},\"4\":{},\"5\":{},\"6\":{},\"7\":{},\"8\":{},\"9\":{},\"10\":{},\"11\":{},\"12\":{},\"13\":{},\"14\":{},\"15\":{},\"16\":{},\"17\":{}}', '2019-04-13 21:30:42', '小紫');
INSERT INTO `users` VALUES ('a', '{\"1\":{},\"2\":{},\"3\":{},\"4\":{},\"5\":{},\"6\":{},\"7\":{},\"8\":{},\"9\":{},\"10\":{},\"11\":{},\"12\":{},\"13\":{},\"14\":{},\"15\":{},\"16\":{},\"17\":{}}', '2019-03-12 21:45:18', '小方');
