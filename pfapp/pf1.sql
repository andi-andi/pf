-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2020-08-20 09:41:31
-- 服务器版本： 10.4.10-MariaDB
-- PHP 版本： 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `pf`
--

-- --------------------------------------------------------

--
-- 表的结构 `pf_band`
--

CREATE TABLE `pf_band` (
  `pf_bandid` int(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `title` varchar(200) NOT NULL,
  `text` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pf_band`
--

INSERT INTO `pf_band` (`pf_bandid`, `img`, `title`, `text`) VALUES
(1, 'images/dongtai1.png', '2019秋季米装时装秀', '服装设计师(Apparel Designer)直接设计的是产品，间接设计的是人品和社会。随着科学与文明的进步，人类的艺术设计手段也在不断发展...'),
(2, 'images/dongtai2.png', '2019夏季纽约时装发布会', '服装设计师(Apparel Designer)直接设计的是产品，间接设计的是人品和社会。随着科学与文明的进步，人类的艺术设计手段也在不断发展...'),
(3, 'images/dongtai3.png', '2019夏季时装秀济南站', '服装设计师(Apparel Designer)直接设计的是产品，间接设计的是人品和社会。随着科学与文明的进步，人类的艺术设计手段也在不断发展...');

-- --------------------------------------------------------

--
-- 表的结构 `pf_lianxi`
--

CREATE TABLE `pf_lianxi` (
  `pf_lianxiid` int(255) NOT NULL,
  `title` varchar(200) NOT NULL,
  `phonetitle` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `text` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dizi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pf_lianxi`
--

INSERT INTO `pf_lianxi` (`pf_lianxiid`, `title`, `phonetitle`, `phone`, `text`, `email`, `dizi`) VALUES
(1, '网站建设文化传播有限公司', '总部电话', '+86 10 69887650', '电话：15935181472 经理助理（李婷）', '邮箱: website@webs.com', '公司地址：北京市朝阳区世贸商务楼2688室'),
(2, '深圳网站文化传播有限公司', '总部电话', '+86 10 88667920', '电 话：17565483252 市场总监（张总）', '邮箱: jutian@webs.com', '公司地址：深圳市福田区世贸商务楼A栋-606室'),
(3, '香港建设文化传播有限公司', '总部电话', '+86 10 69667880', '电 话：15922181472 企划总监（李总）', '邮箱: joseph@webs.com', '公司地址：香港九龙区中心商务楼8888室');

-- --------------------------------------------------------

--
-- 表的结构 `pf_productimg`
--

CREATE TABLE `pf_productimg` (
  `productimg_id` int(255) DEFAULT NULL,
  `productimg` varchar(500) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `titlefont` varchar(500) DEFAULT NULL,
  `textt` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pf_productimg`
--

INSERT INTO `pf_productimg` (`productimg_id`, `productimg`, `title`, `titlefont`, `textt`) VALUES
(1, '/images/sp2.jpg', '-30%的折扣', '促销新品', '加入购物车'),
(2, '/images/sp1.jpg', '-20%的折扣', '新款潮流', '加入购物车'),
(3, '/images/sp6.jpg', '-50%的折扣', '热销爆款', '加入购物车');

-- --------------------------------------------------------

--
-- 表的结构 `pf_productimgul`
--

CREATE TABLE `pf_productimgul` (
  `productimgul_id` int(255) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `product` varchar(500) DEFAULT NULL,
  `detalis` varchar(500) DEFAULT NULL,
  `nameul` varchar(500) DEFAULT NULL,
  `nametitle` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pf_productimgul`
--

INSERT INTO `pf_productimgul` (`productimgul_id`, `img`, `title`, `product`, `detalis`, `nameul`, `nametitle`) VALUES
(1, '/images/sp3.jpg', '女装高弹力运动短裤431554...', '1999', '查看详情', '牛仔针织短裤', '女装'),
(2, '/images/sp4.jpg', '女装夏季新款泳衣435554...', '999', '查看详情', '2件式泳衣', '女装'),
(3, '/images/sp5.jpg', '女装罗纹棉质圆领T恤418225...', '799', '查看详情', '罗纹棉质圆领T恤', '女装'),
(4, '/images/product_10.jpg', '女装花式连衣裙429432...', '1200', '查看详情', '花式连衣裙', '女装'),
(5, '/images/product_9.jpg', '女装印花连衣裙430184...', '1500', '查看详情', '印花连衣裙', '女装'),
(6, '/images/product_11.jpg', '女装华夫格BRA长连衣裙423024...', '9999', '查看详情', '华夫格BRA长连衣裙', '女装'),
(7, '/images/product_8.jpg', '女装宽松窄口牛仔九分裤426986...', '999', '查看详情', '宽松窄口牛仔九分裤', '女装'),
(8, '/images/product_5.jpg', '女装BRA长连衣裙422523...', '1799', '查看详情', 'BRA长连衣裙', '女装'),
(9, '/images/product_12.jpg', '女装UltrastretchAIRism连衣裙428253...', '1999', '查看详情', 'UltraAIRism连衣裙', '女装'),
(10, '/images/01.jpg', '女装全棉休闲T恤424867...', '1200', '查看详情', '全棉休闲T恤', '女装'),
(11, '/images/02.jpg', '女装AIRism棉混纺罗纹Bra T恤428040...', '1600', '查看详情', '棉混纺罗纹Bra T恤', '女装'),
(12, '/images/03.jpg', '女装AIRism V领长T恤431533...', '1899', '查看详情', 'V领长T恤', '女装');

-- --------------------------------------------------------

--
-- 表的结构 `pf_shopping`
--

CREATE TABLE `pf_shopping` (
  `shopping_id` int(255) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `titleproduct` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pf_shopping`
--

INSERT INTO `pf_shopping` (`shopping_id`, `img`, `title`, `titleproduct`) VALUES
(1, '/images/shopping/1.jpg', '女装T恤圆领', '79'),
(2, '/images/shopping/2.jpg', '圆领T桖短袖', '120'),
(3, '/images/shopping/3.jpg', '全棉休闲T桖', '130'),
(4, '/images/shopping/4.jpg', 'DRY-EX圆领运动T桖', '99'),
(5, '/images/shopping/5.jpg', '防止外线U领T桖', '150'),
(6, '/images/shopping/6.jpg', 'U领T桖短袖', '120'),
(7, '/images/shopping/7.jpg', 'V领长T桖', '200'),
(8, '/images/shopping/8.jpg', '弹力棉质圆领T桖', '190'),
(9, '/images/shopping/9.jpg', '圆领T桖优质', '199'),
(10, '/images/shopping/10.jpg', '夏季潮流T桖', '120'),
(11, '/images/shopping/11.jpg', '两面穿外套', '89'),
(12, '/images/shopping/12.jpg', '牛仔夹克', '299'),
(13, '/images/shopping/13.jpg', '两面穿外套', '299'),
(14, '/images/shopping/14.jpg', '登山外套', '499'),
(15, '/images/shopping/15.jpg', '防紫外线拉链外套', '199'),
(16, '/images/shopping/16.jpg', 'BLOCKTECH连帽外套', '499'),
(17, '/images/shopping/17.jpg', '水洗夹克', '249'),
(18, '/images/shopping/18.jpg', '磨毛拉链外套', '149'),
(19, '/images/shopping/19.jpg', '轻型拉链外套', '149'),
(20, '/images/shopping/20.jpg', '便携式外套', '199'),
(21, '/images/shopping/21.jpg', 'EZY弹力几分裤', '249'),
(22, '/images/shopping/22.jpg', '高弹力长裤', '199'),
(23, '/images/shopping/23.jpg', 'AIRISM宽腿裤', '200'),
(24, '/images/shopping/24.jpg', '花式宽腿直腰裤', '250'),
(25, '/images/shopping/25.jpg', '花式宽腿窄腿裤', '199'),
(26, '/images/shopping/26.jpg', '运动裤', '300'),
(27, '/images/shopping/27.jpg', '宽腿牛仔裤', '299'),
(28, '/images/shopping/28.jpg', '宽装工装束腿裤', '270'),
(29, '/images/shopping/29.jpg', '牛仔针织裤', '210'),
(30, '/images/shopping/30.jpg', '高腰修身牛仔裤', '900'),
(31, '/images/shopping/31.jpg', 'T桖式连衣裙', '199'),
(32, '/images/shopping/32.jpg', '丝光棉连衣裙', '149'),
(33, '/images/shopping/32.jpg', '印花连衣裙', '299'),
(34, '/images/shopping/34.jpg', '花式针织连衣裙', '149'),
(35, '/images/shopping/35.jpg', '印花连体装', '299'),
(36, '/images/shopping/36.jpg', '圆领T桖式连衣裙', '149'),
(37, '/images/shopping/37.jpg', '吊带连衣裙', '199'),
(38, '/images/shopping/38.jpg', '法兰绒衬衫式连衣裙', '299'),
(39, '/images/shopping/39.jpg', '真丝混纺长连衣裙', '79'),
(40, '/images/shopping/40.jpg', '半高领连衣裙', '79'),
(41, '/images/shopping/41.jpg', 'WERDY运动连衣裙', '79'),
(42, '/images/shopping/42.jpg', '运动帽衫连衣裙', '79'),
(43, '/images/shopping/43.jpg', '印花衬衫式连衣裙', '99'),
(44, '/images/shopping/44.jpg', '全棉莲花连衣裙', '149'),
(45, '/images/shopping/45.jpg', '雪纺连衣裙', '99'),
(46, '/images/shopping/46.jpg', '华夫格V领连衣裙', '99'),
(47, '/images/shopping/47.jpg', 'SUI全棉连衣裙', '99');

-- --------------------------------------------------------

--
-- 表的结构 `pf_shoppingb`
--

CREATE TABLE `pf_shoppingb` (
  `shoppingb_id` int(255) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `titleproduct` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pf_shoppingb`
--

INSERT INTO `pf_shoppingb` (`shoppingb_id`, `img`, `title`, `titleproduct`) VALUES
(1, '/images/shopping/11.jpg', '两面穿外套', '89'),
(2, '/images/shopping/12.jpg', '牛仔夹克', '299'),
(3, '/images/shopping/13.jpg', '两面穿外套', '299'),
(4, '/images/shopping/14.jpg', '登山外套', '499'),
(5, '/images/shopping/15.jpg', '防紫外线拉链外套', '199'),
(6, '/images/shopping/16.jpg', 'BLOCKTECH连帽外套', '499'),
(7, '/images/shopping/17.jpg', '水洗夹克', '249'),
(8, '/images/shopping/18.jpg', '磨毛拉链外套', '149'),
(9, '/images/shopping/19.jpg', '轻型拉链外套', '149'),
(10, '/images/shopping/20.jpg', '便携式外套', '199');

-- --------------------------------------------------------

--
-- 表的结构 `pf_shoppingg`
--

CREATE TABLE `pf_shoppingg` (
  `shoppingg_id` int(255) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `titleproduct` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pf_shoppingg`
--

INSERT INTO `pf_shoppingg` (`shoppingg_id`, `img`, `title`, `titleproduct`) VALUES
(1, '/images/shopping/1.jpg', '女装T恤圆领', '79'),
(2, '/images/shopping/2.jpg', '圆领T桖短袖', '120'),
(3, '/images/shopping/3.jpg', '全棉休闲T桖', '130'),
(4, '/images/shopping/4.jpg', 'DRY-EX圆领运动T桖', '99'),
(5, '/images/shopping/5.jpg', '防止外线U领T桖', '150'),
(6, '/images/shopping/6.jpg', 'U领T桖短袖', '120'),
(7, '/images/shopping/7.jpg', 'V领长T桖', '200'),
(8, '/images/shopping/8.jpg', '弹力棉质圆领T桖', '190'),
(9, '/images/shopping/9.jpg', '圆领T桖优质', '199'),
(10, '/images/shopping/10.jpg', '夏季潮流T桖', '120');

-- --------------------------------------------------------

--
-- 表的结构 `pf_shoppingk`
--

CREATE TABLE `pf_shoppingk` (
  `shoppingk_id` int(255) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `titleproduct` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pf_shoppingk`
--

INSERT INTO `pf_shoppingk` (`shoppingk_id`, `img`, `title`, `titleproduct`) VALUES
(1, '/images/shopping/21.jpg', 'EZY弹力几分裤', '249'),
(2, '/images/shopping/22.jpg', '高弹力长裤', '199'),
(3, '/images/shopping/23.jpg', 'AIRISM宽腿裤', '200'),
(4, '/images/shopping/24.jpg', '花式宽腿直腰裤', '250'),
(5, '/images/shopping/25.jpg', '花式宽腿窄腿裤', '199'),
(6, '/images/shopping/26.jpg', '运动裤', '300'),
(7, '/images/shopping/27.jpg', '宽腿牛仔裤', '299'),
(8, '/images/shopping/28.jpg', '宽装工装束腿裤', '270'),
(9, '/images/shopping/29.jpg', '牛仔针织裤', '210'),
(10, '/images/shopping/30.jpg', '高腰修身牛仔裤', '900');

-- --------------------------------------------------------

--
-- 表的结构 `pf_shoppingq`
--

CREATE TABLE `pf_shoppingq` (
  `shoppingq_id` int(255) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `titleproduct` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pf_shoppingq`
--

INSERT INTO `pf_shoppingq` (`shoppingq_id`, `img`, `title`, `titleproduct`) VALUES
(1, '/images/shopping/31.jpg', 'T桖式连衣裙', '199'),
(2, '/images/shopping/32.jpg', '丝光棉连衣裙', '149'),
(3, '/images/shopping/33.jpg', '印花连衣裙', '299'),
(4, '/images/shopping/34.jpg', '花式针织连衣裙', '149'),
(5, '/images/shopping/35.jpg', '印花连体装', '299'),
(6, '/images/shopping/36.jpg', '圆领T桖式连衣裙', '149'),
(7, '/images/shopping/37.jpg', '吊带连衣裙', '199'),
(8, '/images/shopping/38.jpg', '法兰绒衬衫式连衣裙', '299'),
(9, '/images/shopping/39.jpg', '真丝混纺长连衣裙', '79'),
(10, '/images/shopping/40.jpg', '半高领连衣裙', '79'),
(11, '/images/shopping/41.jpg', 'WERDY运动连衣裙', '79'),
(12, '/images/shopping/42.jpg', '运动帽衫连衣裙', '79'),
(13, '/images/shopping/43.jpg', '印花衬衫式连衣裙', '99'),
(14, '/images/shopping/44.jpg', '全棉莲花连衣裙', '149'),
(15, '/images/shopping/45.jpg', '雪纺连衣裙', '99'),
(16, '/images/shopping/46.jpg', '华夫格V领连衣裙', '99'),
(17, '/images/shopping/47.jpg', 'SUI全棉连衣裙', '99');

-- --------------------------------------------------------

--
-- 表的结构 `pf_uname`
--

CREATE TABLE `pf_uname` (
  `pf_unameid` int(255) NOT NULL,
  `context` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pf_uname`
--

INSERT INTO `pf_uname` (`pf_unameid`, `context`) VALUES
(1, '<div class=\"col-md-12 col-lg-6\">\r\n                    <div><img src=\"/images/uname.png\" class=\"w-100\"></div>\r\n                </div>\r\n                <div class=\"col-md-12 col-lg-6\">\r\n                    <div>\r\n                        <div class=\"uname-border\">\r\n                            <p class=\"m-0 name-title\"><strong>Mel Gar­cia</strong></p>\r\n                            <p class=\" mb-5 name-footer\">麦尔・加西亚</p>\r\n                        </div>\r\n                        <div class=\"mt-5 jieshao\">\r\n                            <p class=\"mb-1\"><strong>生平经历</strong></p>\r\n                            <div style=\"color: #999; font-size: 14px;\">\r\n                                 <p class=\"mb-1\">1941年9月13日出生，出生于日本大阪。</p>\r\n                                 <p class=\"mb-1\">1957年左右，开始练习职业拳击。</p>\r\n                                 <p class=\"mb-1\">1959～1961年，考察日本传统建筑。</p>\r\n                                 <p class=\"mb-1\">1962～1969年，游学于美国、欧洲和非洲。</p>\r\n                                 <p class=\"mb-1\">1969年，创办“安藤忠雄建筑研究所”（Tadao Ando Ar­chi­tec­ture&As­so­ci­ates）。</p>\r\n                                 <p class=\"mb-1\">1969年在大阪成立安藤忠雄建筑研究所，设计了许多个人住宅。</p>\r\n                                 <p class=\"mb-1\">其中位在大阪的“住吉的长屋（住吉の长屋）”获得很高的评价。</p>\r\n                                 <p class=\"mb-1\">1980年代在关西周边（特别是神户?北野町、大阪心斋桥一带）设计了许多商业设施、寺庙、教会等。</p>\r\n                                 <p class=\"mb-1\">1987年 - 担任耶鲁大学的客座教授。</p>\r\n                                 <p class=\"mb-1\">1988年 - 担任哥伦比亚大学的客座教授。</p>\r\n                                 <p class=\"mb-1\">1990年代之后公共建筑、美术馆，及海外的建筑设计案开始增加。</p>\r\n                                 <p class=\"mb-1\">1989年 - 担任哈佛大学的客座教授。</p>\r\n                                 <p class=\"mb-1\">1995年 - 获得普利兹克建筑奖。</p>\r\n                                 <p class=\"mb-1\">1997年 - 执教于日本东京大学建筑系，并担任东京大学工学部教授。</p>\r\n                                 <p class=\"mb-1\">1997年 - 2003年 - 从东京大学退休，转任名誉教授。</p>\r\n                                 <p class=\"mb-1\">2005年 - 获得东京大学的终身特别荣誉教授。</p>\r\n                                 <p class=\"mb-1\">2011年 - 担任东南大学的客座教授。</p>\r\n                                 <p class=\"mb-1\">她将传统与现代美学结合在一起，并通过不断重新定义时尚的边界来引领潮流。</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>'),
(2, '<div class=\"col-md-12 col-lg-6\">\r\n                    <div>\r\n                        <div class=\"uname-border\">\r\n                            <p class=\"m-0 name-title\"><strong>设计鬼才郑永康</strong></p>\r\n                            <p class=\" mb-5 name-footer\">De­sign ge­nius</p>\r\n                        </div>\r\n                        <div class=\"mt-5 jieshao\">\r\n                            <p class=\"mb-1\"><strong>生平经历</strong></p>\r\n                            <div style=\"color: #999; font-size: 14px;\">\r\n                                 <p class=\"mb-1\">1941年9月13日出生，出生于日本大阪。</p>\r\n                                 <p class=\"mb-1\">1957年左右，开始练习职业拳击。</p>\r\n                                 <p class=\"mb-1\">1959～1961年，考察日本传统建筑。</p>\r\n                                 <p class=\"mb-1\">1962～1969年，游学于美国、欧洲和非洲。</p>\r\n                                 <p class=\"mb-1\">1969年，创办“安藤忠雄建筑研究所”（Tadao Ando Ar­chi­tec­ture&As­so­ci­ates）。</p>\r\n                                 <p class=\"mb-1\">1969年在大阪成立安藤忠雄建筑研究所，设计了许多个人住宅。</p>\r\n                                 <p class=\"mb-1\">其中位在大阪的“住吉的长屋（住吉の长屋）”获得很高的评价。</p>\r\n                                 <p class=\"mb-1\">1980年代在关西周边（特别是神户?北野町、大阪心斋桥一带）设计了许多商业设施、寺庙、教会等。</p>\r\n                                 <p class=\"mb-1\">1987年 - 担任耶鲁大学的客座教授。</p>\r\n                                 <p class=\"mb-1\">1988年 - 担任哥伦比亚大学的客座教授。</p>\r\n                                 <p class=\"mb-1\">1990年代之后公共建筑、美术馆，及海外的建筑设计案开始增加。</p>\r\n                                 <p class=\"mb-1\">1989年 - 担任哈佛大学的客座教授。</p>\r\n                                 <p class=\"mb-1\">1995年 - 获得普利兹克建筑奖。</p>\r\n                                 <p class=\"mb-1\">1997年 - 执教于日本东京大学建筑系，并担任东京大学工学部教授。</p>\r\n                                 <p class=\"mb-1\">1997年 - 2003年 - 从东京大学退休，转任名誉教授。</p>\r\n                                 <p class=\"mb-1\">2005年 - 获得东京大学的终身特别荣誉教授。</p>\r\n                                 <p class=\"mb-1\">2011年 - 担任东南大学的客座教授。</p>\r\n                                 <p class=\"mb-1\">她将传统与现代美学结合在一起，并通过不断重新定义时尚的边界来引领潮流。</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <div class=\"col-md-12 col-lg-6\">\r\n                    <div><img src=\"/images/1572595749268.png\" class=\"w-100\"></div>\r\n                </div>');

-- --------------------------------------------------------

--
-- 表的结构 `pf_user`
--

CREATE TABLE `pf_user` (
  `user_id` int(11) NOT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `upwd` varchar(20) DEFAULT NULL,
  `email` varchar(65) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pf_user`
--

INSERT INTO `pf_user` (`user_id`, `uname`, `upwd`, `email`) VALUES
(1, 'dingding', 'Meng1997', '1798521761@qq.com'),
(2, 'dingding', 'Aa1231', '13215313@qq.com');

-- --------------------------------------------------------

--
-- 表的结构 `pf_usershopping`
--

CREATE TABLE `pf_usershopping` (
  `img` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `size` varchar(200) NOT NULL,
  `color` varchar(200) NOT NULL,
  `number` int(200) NOT NULL,
  `product` varchar(200) NOT NULL,
  `pf_usershoppingid` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pf_usershopping`
--

INSERT INTO `pf_usershopping` (`img`, `title`, `size`, `color`, `number`, `product`, `pf_usershoppingid`) VALUES
('/images/product_9.jpg', '女装印花连衣裙430184...', 'L', '粉色', 1, '1500', 8);

-- --------------------------------------------------------

--
-- 表的结构 `pf_video`
--

CREATE TABLE `pf_video` (
  `pf_videoid` int(255) NOT NULL,
  `src` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pf_video`
--

INSERT INTO `pf_video` (`pf_videoid`, `src`, `img`) VALUES
(1, '/video/15156_video1.mp4', '/video/backgroundimg.png'),
(2, '/video/15156_video2.mp4', '/video/untitled.png'),
(3, '/video/15156_video2.mp4', '/video/untitledimg.png');

-- --------------------------------------------------------

--
-- 表的结构 `pf_xinwen`
--

CREATE TABLE `pf_xinwen` (
  `xinwen_id` int(255) NOT NULL,
  `titleContext` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pf_xinwen`
--

INSERT INTO `pf_xinwen` (`xinwen_id`, `titleContext`) VALUES
(1, '<div class=\"text-center\">\r\n                        <p class=\"m-0\"><span class=\"text-title\">hotwind热风加盟条件有哪些?</span></p>\r\n                        <p class=\"py-2 m-0\"><span class=\"text-sz\">2018-04-08</span></p>\r\n                        <div class=\"title-bottom\"></div>\r\n                        </div>\r\n                        <div>\r\n                        <p class=\"font-size-14 m-0\">hotwind热风1996年在上海创立，一直非常关注时尚焦点，针对年轻人的敏锐活力，不断推陈出新，倡导流行，兼顾时尚性和实用性，充分满足个性化的审美观，通过不断成长，成为都市时尚中，被消费者广为流传和信赖的品牌。许多投资者纷纷看好其发展前景。很多人都想知道hotwind热风加盟条件有哪些？另外，热风加盟费多少？小编接下来就来给大家详细讲解。\r\n                        </p>\r\n                        <div class=\"w-50 m-auto text-img\">\r\n                            <img src=\"/images/xinwen1.jpg\" class=\"w-100\">\r\n                            <div class=\"text-img-img text-center text-font\">想不到吧 我在这等你！！！</div>\r\n                        </div>\r\n                        <p class=\"font-size-14 mb-0 mt-4\"><span>hotwind热风加盟条件金和费用</span></p>\r\n                        <p class=\"font-size-14 m-0\">1、个人条件：对热风的品牌有一定的了解，并且认同热风的企业品牌文化以及经营管理模式。有良好的个人信誉和职业道德，能自觉维护品牌形象，有合法的经营资格，愿意接受公司的审核调查。有大专以上的学历，有3年以上的经营管理经验。</p>\r\n                        <p class=\"font-size-14 m-0\">2、资金条件：具有长期合作的经济投资能力，一般需要投资50-160万元，有独立承担投资风险的能力。想了解加盟详细费用，就请联系全球加盟网的客服人员，您可以通过网上留言或者拨打咨询热线400-111-2221的方式来询问。</p>\r\n                        <p class=\"font-size-14 m-0\">3、店铺条件：面积不小于120平米，位于较为繁华的商圈地段，周边客流量较大。</p>\r\n                        <p class=\"font-size-14 m-0\">热风目前已经拥有了品牌共享商铺多达300家，在北京，上海等50多个全国大中型城市都覆盖了销售网络，并且与来福士，万达等国内外知名商圈都形成了品牌战略联盟。同时，热风还与天猫，京东等国内知名电商进行合作，推广自己的品牌。</p>\r\n                        <p class=\"font-size-14 m-0\">目前热风旗下拥有4个非常具有影响力的品牌，分别是同名品牌hotwind、ned-nedy、Londo Rode、OFFCOS。</p>\r\n                        <div class=\"w-50 m-auto text-img\">\r\n                            <img src=\"/images/title-img.jpg\" class=\"w-100\">\r\n                            <div class=\"text-img-img text-center text-font\">想不到吧 我在这等你！！！</div>\r\n                        </div>\r\n                        <p class=\"font-size-14 mb-0 mt-4\">热风最大的特色就是女鞋，是一个真正体现流行元素的品牌，让女性释放自我。货架上近千种不同款式的产品，具有年轻的色彩以及活跃的风格，不断吸引着年轻消费者的眼球。</p>\r\n                        <p class=\"font-size-14 m-0\">通过上文的介绍，我们已经了解了hotwind热风加盟条件有哪些以及热风加盟费多少，从中我们可以看出，热风在国内有着巨大的影响力，其推广力度使得品牌知名度不断上升，也实实在在让加盟商获得了巨大的利益。而且其主打一线城市的繁华商圈，吸引着大量高消费的人群，不仅保证了利润，还让自己的品牌价值不断提升，是投资者非常不错的选择。</p>\r\n                        <div>\r\n                        </div>\r\n                        <div>\r\n                            <a href=\"#/indextext/2\" target=\"_blank\" class=\"font-size-14 m-0 text-hover\">下一篇：米兰男装周这五场发布会你不容错过</a>\r\n                        </div>\r\n                        </div>'),
(2, '<div class=\"text-center\">\r\n                        <p class=\"m-0\"><span class=\"text-title\">米兰男装周这五场发布会你不容错过</span></p>\r\n                        <p class=\"py-2 m-0\"><span class=\"text-sz\">2020-05-08</span></p>\r\n                        <div class=\"title-bottom\"></div>\r\n                        </div>\r\n                        <div>\r\n                        <p class=\"font-size-14 m-0\">周五，米兰男装周又将拉开帷幕，而男装周这个概念本身无疑正面临着巨大挑战。由于去年开始整合男女装发布，往季两个&ldquo;压轴的&rdquo;重要品牌Gucci和Bottega Veneta缺席；去年11月，Moncler停止发布Thom Browne执掌设计的Gamme Bleu系列；曾引发争议但发展向好的Philipp Plein也离开了男装周。尽管如此，米兰男装周的参展阵容依旧吸引人，这要归功于意大利一些最知名的传统品牌依旧坚持参加这项行业活动。从本土重磅品牌到国际新秀，如今的米兰已经发展出兼具服饰传统和概念实验的丰富体系。《Vogue》带你提前预览米兰男装周不容错过的五大品牌，其中既有后起之秀，也有你耳熟能详的品牌。\r\n                        </p>\r\n                        <p class=\"font-size-14 m-0\">Silvia Venturini Fendi是Fendi品牌创始人AdeleFendi的孙女，进入千禧年后开始执掌设计这个始创于1925年的品牌男装系列。她充满个人风格的作品，在过去的20年中定义了意大利男装的奢华，以经典常青款为基础，通常装饰大量丰富细节，缀以色彩鲜艳的皮草。Silvia在2018春夏系列中延续以往的传统廓形与俏皮触感，在上世纪八九十年代的运动服饰中汲取灵感。本季，我们可以期待令人振奋的新面貌，比如人字纹外套叠搭的蜡笔粉彩，搭配色彩鲜亮的裤装和科技感球鞋。\r\n                        </p>\r\n                        <div class=\"w-100 m-auto text-img\">\r\n                            <img src=\"/images/xinwen1.1.png\" class=\"w-100\">\r\n                            <div class=\"text-img-img text-center text-font\">新闻资讯图片</div>\r\n                        </div>\r\n                        <p class=\"font-size-14 mb-0 mt-4\"><span>hotwind热风加盟条件金和费用</span></p>\r\n                        <p class=\"font-size-14 m-0\">1、个人条件：对热风的品牌有一定的了解，并且认同热风的企业品牌文化以及经营管理模式。有良好的个人信誉和职业道德，能自觉维护品牌形象，有合法的经营资格，愿意接受公司的审核调查。有大专以上的学历，有3年以上的经营管理经验。</p>\r\n                        <p class=\"font-size-14 m-0\">2、资金条件：具有长期合作的经济投资能力，一般需要投资50-160万元，有独立承担投资风险的能力。想了解加盟详细费用，就请联系全球加盟网的客服人员，您可以通过网上留言或者拨打咨询热线400-111-2221的方式来询问。</p>\r\n                        <p class=\"font-size-14 m-0\">3、店铺条件：面积不小于120平米，位于较为繁华的商圈地段，周边客流量较大。</p>\r\n                        <p class=\"font-size-14 m-0\">热风目前已经拥有了品牌共享商铺多达300家，在北京，上海等50多个全国大中型城市都覆盖了销售网络，并且与来福士，万达等国内外知名商圈都形成了品牌战略联盟。同时，热风还与天猫，京东等国内知名电商进行合作，推广自己的品牌。</p>\r\n                        <p class=\"font-size-14 m-0\">目前热风旗下拥有4个非常具有影响力的品牌，分别是同名品牌hotwind、ned-nedy、Londo Rode、OFFCOS。</p>\r\n                        <p class=\"font-size-14 mb-0 mt-4\">热风最大的特色就是女鞋，是一个真正体现流行元素的品牌，让女性释放自我。货架上近千种不同款式的产品，具有年轻的色彩以及活跃的风格，不断吸引着年轻消费者的眼球。</p>\r\n                        <p class=\"font-size-14 m-0\">通过上文的介绍，我们已经了解了hotwind热风加盟条件有哪些以及热风加盟费多少，从中我们可以看出，热风在国内有着巨大的影响力，其推广力度使得品牌知名度不断上升，也实实在在让加盟商获得了巨大的利益。而且其主打一线城市的繁华商圈，吸引着大量高消费的人群，不仅保证了利润，还让自己的品牌价值不断提升，是投资者非常不错的选择。</p>\r\n                        <div>\r\n                            <a href=\"#/indextext/1\" target=\"_blank\" class=\"font-size-14 m-0 text-hover\">上一篇：hotwind热风加盟条件有哪些？热风加盟费多少？</a>\r\n                        </div>\r\n                        <div>\r\n                            <a href=\"#/indextext/3\" target=\"_blank\" class=\"font-size-14 m-0 text-hover\">下一篇：工作室的对话</a>\r\n                        </div>\r\n                        </div>'),
(3, '<div class=\"text-center\">\r\n                        <p class=\"m-0\"><span class=\"text-title\">与工作室的对话</span></p>\r\n                        <p class=\"py-2 m-0\"><span class=\"text-sz\">2020-02-10</span></p>\r\n                        <div class=\"title-bottom\"></div>\r\n                        </div>\r\n                        <div>\r\n                        <p class=\"font-size-14 m-0\">我们在上海住了六个月，以创建我们的头发高速公路项目。这是一个我们热爱的城市，它的花园和历史魅力的感觉。我们特别喜欢的是传统的水上花园豫园和苏州附近的其他河镇。这是我们想从作品中画出来的东西，夜晚水上花园的倒影世界。我们喜欢在夜晚散步，当城市的喧嚣已经过去，环境呈现出一种更加感官的体验，在这里你可以欣赏到城市的环境，河面上的灯光，微风的感觉，这是我们想用新春创造的空间类型。\r\n                        </p>\r\n                        <div class=\"w-100 m-auto text-img\">\r\n                            <img src=\"/images/xinwen1.1.png\" class=\"w-100\">\r\n                            <div class=\"text-img-img text-center text-font\">新闻资讯图片</div>\r\n                        </div>\r\n                        <p class=\"font-size-14 mb-0 mt-4\"><span>与工作室的对话</span></p>\r\n                        <p class=\"font-size-14 m-0\">1、新春已经走遍了国际三大城市：米兰、迈阿密和现在的上海。每个地方都有自己独特的性格和审美观。上海对工作有什么影响？你觉得上海怎么样?</p>\r\n                        <p class=\"font-size-14 m-0\">2、这也是新春第一次在亚洲展出。这是否以任何方式创造性地激发了这项工作的迭代？这里有没有中国的影响或当地的影响？</p>\r\n                        <p class=\"font-size-14 m-0\">3、店铺条件：面积不小于120平米，位于较为繁华的商圈地段，周边客流量较大。</p>\r\n                        <p class=\"font-size-14 m-0\">水上花园传统上描绘了一棵柳树悬在水面上，与装置产生共鸣。我们想引入一个水池来创造一个反光池，并创造出一种置身于室外的感觉。我们还发现气泡在水面上反弹，这是一个令人愉快的惊喜，并再次创造了这种超凡脱俗的体验。</p>\r\n                        <p class=\"font-size-14 m-0\">在上海新春呈现出城市的特色，它成为中国园林中的柳树，外滩装饰艺术的魅力。泡泡让人联想到木兰花、珍珠或小降满月。</p>\r\n                        <p class=\"font-size-14 mb-0 mt-4\">莱佛士市长宁钟楼的新设置对这件作品有什么特别的影响？与米兰的Salone del Mobile and Design Miami相比，您如何看待这一空间的作品？\r\n                        </p>\r\n                        <p class=\"font-size-14 m-0\">之前我们是在春天展示的，画出了与樱花开花的联系。秋天是果实的成熟期。四季可以激发喜悦和忧郁，欣赏和对自然和时间的意识。\r\n正如诗人济慈所描述的那样，秋天是“雾气弥漫、硕果累累的季节”。\r\n                        </p>\r\n                        <div>\r\n                            <a href=\"#/indextext/2\" target=\"_blank\" class=\"font-size-14 m-0 text-hover\">上一篇：米兰男装周这五场发布会你不容错过</a>\r\n                        </div>\r\n                        <div>\r\n                            <a href=\"#/indextext/4\" target=\"_blank\" class=\"font-size-14 m-0 text-hover\">下一篇：由高级时装启发的最佳时尚电影</a>\r\n                        </div>\r\n                        </div>'),
(4, '<div class=\"text-center\">\r\n                        <p class=\"m-0\"><span class=\"text-title\">由高级时装启发的最佳时尚电影</span></p>\r\n                        <p class=\"py-2 m-0\"><span class=\"text-sz\">2020-05-12</span></p>\r\n                        <div class=\"title-bottom\"></div>\r\n                        </div>\r\n                        <div>\r\n                        <p class=\"font-size-14 m-0\">快捷编辑器能够让同一个页面拥有空间层次感——当前页面背景图片、图文内容、分栏背景色等，通过多层的处理、视差效果、动效的组合，在鼠标滚动时逐次出现</p>\r\n                        <p class=\"font-size-14 m-0\">缺少高级订制衬衫的高定套西如同阿斯顿马丁与柴油的组合 - 无法容忍。 衬衫的高级定制过程与西装、外套大致相同，虽然也包括一些特别之处。 在首次会面中，需要精准测量新顾客的完整尺寸。 他偏好的版型、领型、袖口样式、门襟及面料将被一一确定。 如有需要，他也可以携带希望与之搭配的服装以确保两者的完美协调。 随后，衬衫工艺师出品的白色府绸衬衫将替代纸样与尺码表记录每件衬衫的委托申请。 如果在第二次试穿中这件衬衫可以令人满意，它将被作为此后的生产模板。 高级定制的衬衫如同第二层肌肤，完美适体、材质与设计由您定义。\r\n                        </p>\r\n                        <div class=\"w-100 m-auto text-img\">\r\n                            <img src=\"/images/xinwen1.2.png\" class=\"w-100\">\r\n                            <div class=\"text-img-img text-center text-font\">新闻资讯图片</div>\r\n                        </div>\r\n                        <p class=\"font-size-14 mb-0 mt-4\"><span>与工作室的对话</span></p>\r\n                        <p class=\"font-size-14 m-0\">1、新春已经走遍了国际三大城市：米兰、迈阿密和现在的上海。每个地方都有自己独特的性格和审美观。上海对工作有什么影响？你觉得上海怎么样?</p>\r\n                        <p class=\"font-size-14 m-0\">2、这也是新春第一次在亚洲展出。这是否以任何方式创造性地激发了这项工作的迭代？这里有没有中国的影响或当地的影响？</p>\r\n                        <p class=\"font-size-14 m-0\">3、店铺条件：面积不小于120平米，位于较为繁华的商圈地段，周边客流量较大。</p>\r\n                        <p class=\"font-size-14 m-0\">水上花园传统上描绘了一棵柳树悬在水面上，与装置产生共鸣。我们想引入一个水池来创造一个反光池，并创造出一种置身于室外的感觉。我们还发现气泡在水面上反弹，这是一个令人愉快的惊喜，并再次创造了这种超凡脱俗的体验。</p>\r\n                        <p class=\"font-size-14 m-0\">在上海新春呈现出城市的特色，它成为中国园林中的柳树，外滩装饰艺术的魅力。泡泡让人联想到木兰花、珍珠或小降满月。</p>\r\n                        <p class=\"font-size-14 mb-0 mt-4\">莱佛士市长宁钟楼的新设置对这件作品有什么特别的影响？与米兰的Salone del Mobile and Design Miami相比，您如何看待这一空间的作品？\r\n                        </p>\r\n                        <p class=\"font-size-14 m-0\">之前我们是在春天展示的，画出了与樱花开花的联系。秋天是果实的成熟期。四季可以激发喜悦和忧郁，欣赏和对自然和时间的意识。\r\n正如诗人济慈所描述的那样，秋天是“雾气弥漫、硕果累累的季节”。\r\n                        </p>\r\n                        <div>\r\n                            <a href=\"#/indextext/3\" target=\"_blank\" class=\"font-size-14 m-0 text-hover\">上一篇：与工作室的对话</a>\r\n                        </div>\r\n                        <div>\r\n                            <a href=\"#/indextext/5\" target=\"_blank\" class=\"font-size-14 m-0 text-hover\">下一篇：服装店如何做好贴心的售后服务？</a>\r\n                        </div>\r\n                        </div>'),
(5, '<div class=\"text-center\">\r\n                        <p class=\"m-0\"><span class=\"text-title\">服装店如何做好贴心的售后服务？</span></p>\r\n                        <p class=\"py-2 m-0\"><span class=\"text-sz\">2020-07-12</span></p>\r\n                        <div class=\"title-bottom\"></div>\r\n                        </div>\r\n                        <div>\r\n                        <p class=\"font-size-14 m-0\">快捷编辑器能够让同一个页面拥有空间层次感——当前页面背景图片、图文内容、分栏背景色等，通过多层的处理、视差效果、动效的组合，在鼠标滚动时逐次出现</p>\r\n                        <p class=\"font-size-14 m-0\">缺少高级订制衬衫的高定套西如同阿斯顿马丁与柴油的组合 - 无法容忍。 衬衫的高级定制过程与西装、外套大致相同，虽然也包括一些特别之处。 在首次会面中，需要精准测量新顾客的完整尺寸。 他偏好的版型、领型、袖口样式、门襟及面料将被一一确定。 如有需要，他也可以携带希望与之搭配的服装以确保两者的完美协调。 随后，衬衫工艺师出品的白色府绸衬衫将替代纸样与尺码表记录每件衬衫的委托申请。 如果在第二次试穿中这件衬衫可以令人满意，它将被作为此后的生产模板。 高级定制的衬衫如同第二层肌肤，完美适体、材质与设计由您定义。\r\n                        </p>\r\n                        <div class=\"w-100 m-auto text-img\">\r\n                            <img src=\"/images/xinwen1.3.png\" class=\"w-100\">\r\n                            <div class=\"text-img-img text-center text-font\">新闻资讯图片</div>\r\n                        </div>\r\n                        <p class=\"font-size-14 mb-0 mt-4\"><span>与工作室的对话</span></p>\r\n                        <p class=\"font-size-14 m-0\">1、新春已经走遍了国际三大城市：米兰、迈阿密和现在的上海。每个地方都有自己独特的性格和审美观。上海对工作有什么影响？你觉得上海怎么样?</p>\r\n                        <p class=\"font-size-14 m-0\">2、这也是新春第一次在亚洲展出。这是否以任何方式创造性地激发了这项工作的迭代？这里有没有中国的影响或当地的影响？</p>\r\n                        <p class=\"font-size-14 m-0\">3、店铺条件：面积不小于120平米，位于较为繁华的商圈地段，周边客流量较大。</p>\r\n                        <p class=\"font-size-14 m-0\">水上花园传统上描绘了一棵柳树悬在水面上，与装置产生共鸣。我们想引入一个水池来创造一个反光池，并创造出一种置身于室外的感觉。我们还发现气泡在水面上反弹，这是一个令人愉快的惊喜，并再次创造了这种超凡脱俗的体验。</p>\r\n                        <p class=\"font-size-14 m-0\">在上海新春呈现出城市的特色，它成为中国园林中的柳树，外滩装饰艺术的魅力。泡泡让人联想到木兰花、珍珠或小降满月。</p>\r\n                        <p class=\"font-size-14 mb-0 mt-4\">莱佛士市长宁钟楼的新设置对这件作品有什么特别的影响？与米兰的Salone del Mobile and Design Miami相比，您如何看待这一空间的作品？\r\n                        </p>\r\n                        <p class=\"font-size-14 m-0\">之前我们是在春天展示的，画出了与樱花开花的联系。秋天是果实的成熟期。四季可以激发喜悦和忧郁，欣赏和对自然和时间的意识。\r\n正如诗人济慈所描述的那样，秋天是“雾气弥漫、硕果累累的季节”。\r\n                        </p>\r\n                        <div>\r\n                            <a href=\"#/indextext/4\" target=\"_blank\" class=\"font-size-14 m-0 text-hover\">上一篇：由高级时装启发的最佳时尚电影</a>\r\n                        </div>\r\n                        <div>\r\n                            <a href=\"#/indextext/6\" target=\"_blank\" class=\"font-size-14 m-0 text-hover\">下一篇：服装市场营销的微观环境分析？</a>\r\n                        </div>\r\n                        </div>'),
(6, '<div class=\"text-center\">\r\n                        <p class=\"m-0\"><span class=\"text-title\">服装市场营销的微观环境分析？</span></p>\r\n                        <p class=\"py-2 m-0\"><span class=\"text-sz\">2020-07-12</span></p>\r\n                        <div class=\"title-bottom\"></div>\r\n                        </div>\r\n                        <div>\r\n                        <p class=\"font-size-14 m-0\">快捷编辑器能够让同一个页面拥有空间层次感——当前页面背景图片、图文内容、分栏背景色等，通过多层的处理、视差效果、动效的组合，在鼠标滚动时逐次出现</p>\r\n                        <p class=\"font-size-14 m-0\">缺少高级订制衬衫的高定套西如同阿斯顿马丁与柴油的组合 - 无法容忍。 衬衫的高级定制过程与西装、外套大致相同，虽然也包括一些特别之处。 在首次会面中，需要精准测量新顾客的完整尺寸。 他偏好的版型、领型、袖口样式、门襟及面料将被一一确定。 如有需要，他也可以携带希望与之搭配的服装以确保两者的完美协调。 随后，衬衫工艺师出品的白色府绸衬衫将替代纸样与尺码表记录每件衬衫的委托申请。 如果在第二次试穿中这件衬衫可以令人满意，它将被作为此后的生产模板。 高级定制的衬衫如同第二层肌肤，完美适体、材质与设计由您定义。\r\n                        </p>\r\n                        <div class=\"w-100 m-auto text-img\">\r\n                            <img src=\"/images/title-img.jpg\" class=\"w-100\">\r\n                            <div class=\"text-img-img text-center text-font\">新闻资讯图片</div>\r\n                        </div>\r\n                        <p class=\"font-size-14 mb-0 mt-4\"><span>与工作室的对话</span></p>\r\n                        <p class=\"font-size-14 m-0\">1、新春已经走遍了国际三大城市：米兰、迈阿密和现在的上海。每个地方都有自己独特的性格和审美观。上海对工作有什么影响？你觉得上海怎么样?</p>\r\n                        <p class=\"font-size-14 m-0\">2、这也是新春第一次在亚洲展出。这是否以任何方式创造性地激发了这项工作的迭代？这里有没有中国的影响或当地的影响？</p>\r\n                        <p class=\"font-size-14 m-0\">3、店铺条件：面积不小于120平米，位于较为繁华的商圈地段，周边客流量较大。</p>\r\n                        <p class=\"font-size-14 m-0\">水上花园传统上描绘了一棵柳树悬在水面上，与装置产生共鸣。我们想引入一个水池来创造一个反光池，并创造出一种置身于室外的感觉。我们还发现气泡在水面上反弹，这是一个令人愉快的惊喜，并再次创造了这种超凡脱俗的体验。</p>\r\n                        <p class=\"font-size-14 m-0\">在上海新春呈现出城市的特色，它成为中国园林中的柳树，外滩装饰艺术的魅力。泡泡让人联想到木兰花、珍珠或小降满月。</p>\r\n                        <p class=\"font-size-14 mb-0 mt-4\">莱佛士市长宁钟楼的新设置对这件作品有什么特别的影响？与米兰的Salone del Mobile and Design Miami相比，您如何看待这一空间的作品？\r\n                        </p>\r\n                        <p class=\"font-size-14 m-0\">之前我们是在春天展示的，画出了与樱花开花的联系。秋天是果实的成熟期。四季可以激发喜悦和忧郁，欣赏和对自然和时间的意识。\r\n正如诗人济慈所描述的那样，秋天是“雾气弥漫、硕果累累的季节”。\r\n                        </p>\r\n                        <div>\r\n                        </div>\r\n                        <div>\r\n                            <a href=\"#/indextext/5\" target=\"_blank\" class=\"font-size-14 m-0 text-hover\">上一篇：服装店如何做好贴心的售后服务？</a>\r\n                        </div>\r\n                        </div>');

-- --------------------------------------------------------

--
-- 表的结构 `pf_xinwentitle`
--

CREATE TABLE `pf_xinwentitle` (
  `pf_xinwentitleid` int(255) NOT NULL,
  `img` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `text` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pf_xinwentitle`
--

INSERT INTO `pf_xinwentitle` (`pf_xinwentitleid`, `img`, `title`, `text`) VALUES
(1, '/images/xinwen1.jpg', 'hotwind热风加盟条件有哪些', 'hotwind热风1996年在上海创立，一直非常关注时尚焦点，针对年轻人的敏锐活力，不断推陈'),
(2, '/images/xinwen2.jpg', '米兰男装周这五场发布会你不容错过', '近日，锤子科技发布会倒计时动作频频，此次发布会的“特殊嘉宾”刘江峰及其创业品牌“优点'),
(3, '/images/xinwen3.jpg', '与工作室的对话', 'Testin发布2017中国好应用IoT工业Best 50强报告，紫光物联智能家居作为全屋无线智能家居'),
(4, '/images/xinwen4.jpg', '由高级时装启发的最佳时尚电影', '投资童装店是很多人都有的想法，季季乐这个童装品牌的管理非常的成熟，定位也很精准，因此'),
(5, '/images/xinwen5.jpg', '服装店如何做好贴心的售后服务？', '任何店面总会遇到顾客的退换货要求，即使不能证明是质量问题，顾客也坚持要求退货。因为有'),
(6, '/images/xinwen6.jpg', '服装市场营销的微观环境分析？', '构成企业微观环境的主要力量，包括企业内部各部门的关系，各类资源的供应者各类市场营销');

--
-- 转储表的索引
--

--
-- 表的索引 `pf_user`
--
ALTER TABLE `pf_user`
  ADD PRIMARY KEY (`user_id`);

--
-- 表的索引 `pf_usershopping`
--
ALTER TABLE `pf_usershopping`
  ADD PRIMARY KEY (`pf_usershoppingid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `pf_user`
--
ALTER TABLE `pf_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `pf_usershopping`
--
ALTER TABLE `pf_usershopping`
  MODIFY `pf_usershoppingid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
