/*创建数据库*/
SET NAMES UTF8;
DROP DATABASE IF EXISTS pf;
CREATE DATABASE pf CHARSET=UTF8;
USE pf;

/*创建用户表*/
CREATE TABLE pf_user(
	user_id INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(30),
	upwd VARCHAR(20),
	email VARCHAR(65)
);
/*插入数据*/
INSERT INTO pf_user VALUES("1","dingding","Meng1997","1798521761@qq.com");

/*创建首页促销价格图片表*/
CREATE TABLE pf_productimg(
	productimg_id INT(255),
	productimg VARCHAR(500),
	title VARCHAR(500),
	titlefont VARCHAR(500),
	textt VARCHAR(500)
);
/*插入数据*/
INSERT INTO pf_productimg VALUES("1","/images/sp2.jpg","-30%的折扣","促销新品","加入购物车");
INSERT INTO pf_productimg VALUES("2","/images/sp1.jpg","-20%的折扣","新款潮流","加入购物车");
INSERT INTO pf_productimg VALUES("3","/images/sp6.jpg","-50%的折扣","热销爆款","加入购物车");

/*创建首页商品展示列表*/
CREATE TABLE pf_productimgul(
	productimgul_id INT(255),
	img VARCHAR(500),
	title VARCHAR(500),
	product VARCHAR(500),
	detalis VARCHAR(500),
	nameul VARCHAR(500),
	nametitle VARCHAR(500)
);
/*插入数据*/
INSERT INTO pf_productimgul VALUES("1","/images/sp3.jpg","女装高弹力运动短裤431554...","1999","查看详情","牛仔针织短裤","女装");
INSERT INTO pf_productimgul VALUES("2","/images/sp4.jpg","女装夏季新款泳衣435554...","999","查看详情","2件式泳衣","女装");
INSERT INTO pf_productimgul VALUES("3","/images/sp5.jpg","女装罗纹棉质圆领T恤418225...","799","查看详情","罗纹棉质圆领T恤","女装");
INSERT INTO pf_productimgul VALUES("4","/images/product_10.jpg","女装花式连衣裙429432...","1200","查看详情","花式连衣裙","女装");
INSERT INTO pf_productimgul VALUES("5","/images/product_9.jpg","女装印花连衣裙430184...","1500","查看详情","印花连衣裙","女装");
INSERT INTO pf_productimgul VALUES("6","/images/product_11.jpg","女装华夫格BRA长连衣裙423024...","9999","查看详情","华夫格BRA长连衣裙","女装");
INSERT INTO pf_productimgul VALUES("7","/images/product_8.jpg","女装宽松窄口牛仔九分裤426986...","999","查看详情","宽松窄口牛仔九分裤","女装");
INSERT INTO pf_productimgul VALUES("8","/images/product_5.jpg","女装BRA长连衣裙422523...","1799","查看详情","BRA长连衣裙","女装");
INSERT INTO pf_productimgul VALUES("9","/images/product_12.jpg","女装UltrastretchAIRism连衣裙428253...","1999","查看详情","UltraAIRism连衣裙","女装");
INSERT INTO pf_productimgul VALUES("10","/images/01.jpg","女装全棉休闲T恤424867...","1200","查看详情","全棉休闲T恤","女装");
INSERT INTO pf_productimgul VALUES("11","/images/02.jpg","女装AIRism棉混纺罗纹Bra T恤428040...","1600","查看详情","棉混纺罗纹Bra T恤","女装");
INSERT INTO pf_productimgul VALUES("12","/images/03.jpg","女装AIRism V领长T恤431533...","1899","查看详情","V领长T恤","女装");

/*创建购物shopping商品展示列表*/
CREATE TABLE pf_shopping(
	shopping_id INT(255),
	img VARCHAR(500),
	title VARCHAR(500),
	titleproduct VARCHAR(500)
);
/*插入数据*/
INSERT INTO pf_shopping VALUES("1","/images/shopping/1.jpg","女装T恤圆领","79");
INSERT INTO pf_shopping VALUES("2","/images/shopping/2.jpg","圆领T桖短袖","120");
INSERT INTO pf_shopping VALUES("3","/images/shopping/3.jpg","全棉休闲T桖","130");
INSERT INTO pf_shopping VALUES("4","/images/shopping/4.jpg","DRY-EX圆领运动T桖","99");
INSERT INTO pf_shopping VALUES("5","/images/shopping/5.jpg","防止外线U领T桖","150");
INSERT INTO pf_shopping VALUES("6","/images/shopping/6.jpg","U领T桖短袖","120");
INSERT INTO pf_shopping VALUES("7","/images/shopping/7.jpg","V领长T桖","200");
INSERT INTO pf_shopping VALUES("8","/images/shopping/8.jpg","弹力棉质圆领T桖","190");
INSERT INTO pf_shopping VALUES("9","/images/shopping/9.jpg","圆领T桖优质","199");
INSERT INTO pf_shopping VALUES("10","/images/shopping/10.jpg","夏季潮流T桖","120");
INSERT INTO pf_shopping VALUES("11","/images/shopping/11.jpg","两面穿外套","89");
INSERT INTO pf_shopping VALUES("12","/images/shopping/12.jpg","牛仔夹克","299");
INSERT INTO pf_shopping VALUES("13","/images/shopping/13.jpg","两面穿外套","299");
INSERT INTO pf_shopping VALUES("14","/images/shopping/14.jpg","登山外套","499");
INSERT INTO pf_shopping VALUES("15","/images/shopping/15.jpg","防紫外线拉链外套","199");
INSERT INTO pf_shopping VALUES("16","/images/shopping/16.jpg","BLOCKTECH连帽外套","499");
INSERT INTO pf_shopping VALUES("17","/images/shopping/17.jpg","水洗夹克","249");
INSERT INTO pf_shopping VALUES("18","/images/shopping/18.jpg","磨毛拉链外套","149");
INSERT INTO pf_shopping VALUES("19","/images/shopping/19.jpg","轻型拉链外套","149");
INSERT INTO pf_shopping VALUES("20","/images/shopping/20.jpg","便携式外套","199");
INSERT INTO pf_shopping VALUES("21","/images/shopping/21.jpg","EZY弹力几分裤","249");
INSERT INTO pf_shopping VALUES("22","/images/shopping/22.jpg","高弹力长裤","199");
INSERT INTO pf_shopping VALUES("23","/images/shopping/23.jpg","AIRISM宽腿裤","200");
INSERT INTO pf_shopping VALUES("24","/images/shopping/24.jpg","花式宽腿直腰裤","250");
INSERT INTO pf_shopping VALUES("25","/images/shopping/25.jpg","花式宽腿窄腿裤","199");
INSERT INTO pf_shopping VALUES("26","/images/shopping/26.jpg","运动裤","300");
INSERT INTO pf_shopping VALUES("27","/images/shopping/27.jpg","宽腿牛仔裤","299");
INSERT INTO pf_shopping VALUES("28","/images/shopping/28.jpg","宽装工装束腿裤","270");
INSERT INTO pf_shopping VALUES("29","/images/shopping/29.jpg","牛仔针织裤","210");
INSERT INTO pf_shopping VALUES("30","/images/shopping/30.jpg","高腰修身牛仔裤","900");
INSERT INTO pf_shopping VALUES("31","/images/shopping/31.jpg","T桖式连衣裙","199");
INSERT INTO pf_shopping VALUES("32","/images/shopping/32.jpg","丝光棉连衣裙","149");
INSERT INTO pf_shopping VALUES("33","/images/shopping/32.jpg","印花连衣裙","299");
INSERT INTO pf_shopping VALUES("34","/images/shopping/34.jpg","花式针织连衣裙","149");
INSERT INTO pf_shopping VALUES("35","/images/shopping/35.jpg","印花连体装","299");
INSERT INTO pf_shopping VALUES("36","/images/shopping/36.jpg","圆领T桖式连衣裙","149");
INSERT INTO pf_shopping VALUES("37","/images/shopping/37.jpg","吊带连衣裙","199");
INSERT INTO pf_shopping VALUES("38","/images/shopping/38.jpg","法兰绒衬衫式连衣裙","299");
INSERT INTO pf_shopping VALUES("39","/images/shopping/39.jpg","真丝混纺长连衣裙","79");
INSERT INTO pf_shopping VALUES("40","/images/shopping/40.jpg","半高领连衣裙","79");
INSERT INTO pf_shopping VALUES("41","/images/shopping/41.jpg","WERDY运动连衣裙","79");
INSERT INTO pf_shopping VALUES("42","/images/shopping/42.jpg","运动帽衫连衣裙","79");
INSERT INTO pf_shopping VALUES("43","/images/shopping/43.jpg","印花衬衫式连衣裙","99");
INSERT INTO pf_shopping VALUES("44","/images/shopping/44.jpg","全棉莲花连衣裙","149");
INSERT INTO pf_shopping VALUES("45","/images/shopping/45.jpg","雪纺连衣裙","99");
INSERT INTO pf_shopping VALUES("46","/images/shopping/46.jpg","华夫格V领连衣裙","99");
INSERT INTO pf_shopping VALUES("47","/images/shopping/47.jpg","SUI全棉连衣裙","99");

/*创建购物shopping商品展示女装列表*/
CREATE TABLE pf_shoppingg(
	shoppingg_id INT(255),
	img VARCHAR(500),
	title VARCHAR(500),
	titleproduct VARCHAR(500)

);
/*插入数据*/
INSERT INTO pf_shoppingg VALUES("1","/images/shopping/1.jpg","女装T恤圆领","79");
INSERT INTO pf_shoppingg VALUES("2","/images/shopping/2.jpg","圆领T桖短袖","120");
INSERT INTO pf_shoppingg VALUES("3","/images/shopping/3.jpg","全棉休闲T桖","130");
INSERT INTO pf_shoppingg VALUES("4","/images/shopping/4.jpg","DRY-EX圆领运动T桖","99");
INSERT INTO pf_shoppingg VALUES("5","/images/shopping/5.jpg","防止外线U领T桖","150");
INSERT INTO pf_shoppingg VALUES("6","/images/shopping/6.jpg","U领T桖短袖","120");
INSERT INTO pf_shoppingg VALUES("7","/images/shopping/7.jpg","V领长T桖","200");
INSERT INTO pf_shoppingg VALUES("8","/images/shopping/8.jpg","弹力棉质圆领T桖","190");
INSERT INTO pf_shoppingg VALUES("9","/images/shopping/9.jpg","圆领T桖优质","199");
INSERT INTO pf_shoppingg VALUES("10","/images/shopping/10.jpg","夏季潮流T桖","120");

/*创建购物shopping商品展示男装列表*/
CREATE TABLE pf_shoppingb(
	shoppingb_id INT(255),
	img VARCHAR(500),
	title VARCHAR(500),
	titleproduct VARCHAR(500)

);
/*插入数据*/
INSERT INTO pf_shoppingb VALUES("1","/images/shopping/11.jpg","两面穿外套","89");
INSERT INTO pf_shoppingb VALUES("2","/images/shopping/12.jpg","牛仔夹克","299");
INSERT INTO pf_shoppingb VALUES("3","/images/shopping/13.jpg","两面穿外套","299");
INSERT INTO pf_shoppingb VALUES("4","/images/shopping/14.jpg","登山外套","499");
INSERT INTO pf_shoppingb VALUES("5","/images/shopping/15.jpg","防紫外线拉链外套","199");
INSERT INTO pf_shoppingb VALUES("6","/images/shopping/16.jpg","BLOCKTECH连帽外套","499");
INSERT INTO pf_shoppingb VALUES("7","/images/shopping/17.jpg","水洗夹克","249");
INSERT INTO pf_shoppingb VALUES("8","/images/shopping/18.jpg","磨毛拉链外套","149");
INSERT INTO pf_shoppingb VALUES("9","/images/shopping/19.jpg","轻型拉链外套","149");
INSERT INTO pf_shoppingb VALUES("10","/images/shopping/20.jpg","便携式外套","199");

/*创建购物shopping商品展示长裤列表*/
CREATE TABLE pf_shoppingk(
	shoppingk_id INT(255),
	img VARCHAR(500),
	title VARCHAR(500),
	titleproduct VARCHAR(500)

);
/*插入数据*/
INSERT INTO pf_shoppingk VALUES("1","/images/shopping/21.jpg","EZY弹力几分裤","249");
INSERT INTO pf_shoppingk VALUES("2","/images/shopping/22.jpg","高弹力长裤","199");
INSERT INTO pf_shoppingk VALUES("3","/images/shopping/23.jpg","AIRISM宽腿裤","200");
INSERT INTO pf_shoppingk VALUES("4","/images/shopping/24.jpg","花式宽腿直腰裤","250");
INSERT INTO pf_shoppingk VALUES("5","/images/shopping/25.jpg","花式宽腿窄腿裤","199");
INSERT INTO pf_shoppingk VALUES("6","/images/shopping/26.jpg","运动裤","300");
INSERT INTO pf_shoppingk VALUES("7","/images/shopping/27.jpg","宽腿牛仔裤","299");
INSERT INTO pf_shoppingk VALUES("8","/images/shopping/28.jpg","宽装工装束腿裤","270");
INSERT INTO pf_shoppingk VALUES("9","/images/shopping/29.jpg","牛仔针织裤","210");
INSERT INTO pf_shoppingk VALUES("10","/images/shopping/30.jpg","高腰修身牛仔裤","900");

/*创建购物shopping商品展示裙子列表*/
CREATE TABLE pf_shoppingq(
	shoppingq_id INT(255),
	img VARCHAR(500),
	title VARCHAR(500),
	titleproduct VARCHAR(500)

);
/*插入数据*/
INSERT INTO pf_shoppingq VALUES("1","/images/shopping/31.jpg","T桖式连衣裙","199");
INSERT INTO pf_shoppingq VALUES("2","/images/shopping/32.jpg","丝光棉连衣裙","149");
INSERT INTO pf_shoppingq VALUES("3","/images/shopping/33.jpg","印花连衣裙","299");
INSERT INTO pf_shoppingq VALUES("4","/images/shopping/34.jpg","花式针织连衣裙","149");
INSERT INTO pf_shoppingq VALUES("5","/images/shopping/35.jpg","印花连体装","299");
INSERT INTO pf_shoppingq VALUES("6","/images/shopping/36.jpg","圆领T桖式连衣裙","149");
INSERT INTO pf_shoppingq VALUES("7","/images/shopping/37.jpg","吊带连衣裙","199");
INSERT INTO pf_shoppingq VALUES("8","/images/shopping/38.jpg","法兰绒衬衫式连衣裙","299");
INSERT INTO pf_shoppingq VALUES("9","/images/shopping/39.jpg","真丝混纺长连衣裙","79");
INSERT INTO pf_shoppingq VALUES("10","/images/shopping/40.jpg","半高领连衣裙","79");
INSERT INTO pf_shoppingq VALUES("11","/images/shopping/41.jpg","WERDY运动连衣裙","79");
INSERT INTO pf_shoppingq VALUES("12","/images/shopping/42.jpg","运动帽衫连衣裙","79");
INSERT INTO pf_shoppingq VALUES("13","/images/shopping/43.jpg","印花衬衫式连衣裙","99");
INSERT INTO pf_shoppingq VALUES("14","/images/shopping/44.jpg","全棉莲花连衣裙","149");
INSERT INTO pf_shoppingq VALUES("15","/images/shopping/45.jpg","雪纺连衣裙","99");
INSERT INTO pf_shoppingq VALUES("16","/images/shopping/46.jpg","华夫格V领连衣裙","99");
INSERT INTO pf_shoppingq VALUES("17","/images/shopping/47.jpg","SUI全棉连衣裙","99");


/*创建新闻资讯表*/
CREATE TABLE pf_xinwen(
	xinwen_id INT(255),
	titleContext VARCHAR(6000),
);
/*插入数据*/
INSERT INTO pf_xinwen VALUES("1",' <div class="text-center">
                        <p class="m-0"><span class="text-title">hotwind热风加盟条件有哪些?</span></p>
                        <p class="py-2 m-0"><span class="text-sz">2018-04-08</span></p>
                        <div class="title-bottom"></div>
                        </div>
                        <div>
                        <p class="font-size-14 m-0">hotwind热风1996年在上海创立，一直非常关注时尚焦点，针对年轻人的敏锐活力，不断推陈出新，倡导流行，兼顾时尚性和实用性，充分满足个性化的审美观，通过不断成长，成为都市时尚中，被消费者广为流传和信赖的品牌。许多投资者纷纷看好其发展前景。很多人都想知道hotwind热风加盟条件有哪些？另外，热风加盟费多少？小编接下来就来给大家详细讲解。
                        </p>
                        <div class="w-50 m-auto text-img">
                            <img src="/images/xinwen1.jpg" class="w-100">
                            <div class="text-img-img text-center text-font">想不到吧 我在这等你！！！</div>
                        </div>
                        <p class="font-size-14 mb-0 mt-4"><span>hotwind热风加盟条件金和费用</span></p>
                        <p class="font-size-14 m-0">1、个人条件：对热风的品牌有一定的了解，并且认同热风的企业品牌文化以及经营管理模式。有良好的个人信誉和职业道德，能自觉维护品牌形象，有合法的经营资格，愿意接受公司的审核调查。有大专以上的学历，有3年以上的经营管理经验。</p>
                        <p class="font-size-14 m-0">2、资金条件：具有长期合作的经济投资能力，一般需要投资50-160万元，有独立承担投资风险的能力。想了解加盟详细费用，就请联系全球加盟网的客服人员，您可以通过网上留言或者拨打咨询热线400-111-2221的方式来询问。</p>
                        <p class="font-size-14 m-0">3、店铺条件：面积不小于120平米，位于较为繁华的商圈地段，周边客流量较大。</p>
                        <p class="font-size-14 m-0">热风目前已经拥有了品牌共享商铺多达300家，在北京，上海等50多个全国大中型城市都覆盖了销售网络，并且与来福士，万达等国内外知名商圈都形成了品牌战略联盟。同时，热风还与天猫，京东等国内知名电商进行合作，推广自己的品牌。</p>
                        <p class="font-size-14 m-0">目前热风旗下拥有4个非常具有影响力的品牌，分别是同名品牌hotwind、ned-nedy、Londo Rode、OFFCOS。</p>
                        <div class="w-50 m-auto text-img">
                            <img src="/images/title-img.jpg" class="w-100">
                            <div class="text-img-img text-center text-font">想不到吧 我在这等你！！！</div>
                        </div>
                        <p class="font-size-14 mb-0 mt-4">热风最大的特色就是女鞋，是一个真正体现流行元素的品牌，让女性释放自我。货架上近千种不同款式的产品，具有年轻的色彩以及活跃的风格，不断吸引着年轻消费者的眼球。</p>
                        <p class="font-size-14 m-0">通过上文的介绍，我们已经了解了hotwind热风加盟条件有哪些以及热风加盟费多少，从中我们可以看出，热风在国内有着巨大的影响力，其推广力度使得品牌知名度不断上升，也实实在在让加盟商获得了巨大的利益。而且其主打一线城市的繁华商圈，吸引着大量高消费的人群，不仅保证了利润，还让自己的品牌价值不断提升，是投资者非常不错的选择。</p>
                        <div>
                        </div>
                        <div>
                            <router-link to="/indextext/2" target="_blank" class="font-size-14 m-0 text-hover">下一篇：米兰男装周这五场发布会你不容错过</router-link>
                        </div>
                        </div>');
INSERT INTO pf_xinwen VALUES("2",'<div class="text-center">
                        <p class="m-0"><span class="text-title">米兰男装周这五场发布会你不容错过</span></p>
                        <p class="py-2 m-0"><span class="text-sz">2020-05-08</span></p>
                        <div class="title-bottom"></div>
                        </div>
                        <div>
                        <p class="font-size-14 m-0">周五，米兰男装周又将拉开帷幕，而男装周这个概念本身无疑正面临着巨大挑战。由于去年开始整合男女装发布，往季两个&ldquo;压轴的&rdquo;重要品牌Gucci和Bottega Veneta缺席；去年11月，Moncler停止发布Thom Browne执掌设计的Gamme Bleu系列；曾引发争议但发展向好的Philipp Plein也离开了男装周。尽管如此，米兰男装周的参展阵容依旧吸引人，这要归功于意大利一些最知名的传统品牌依旧坚持参加这项行业活动。从本土重磅品牌到国际新秀，如今的米兰已经发展出兼具服饰传统和概念实验的丰富体系。《Vogue》带你提前预览米兰男装周不容错过的五大品牌，其中既有后起之秀，也有你耳熟能详的品牌。
                        </p>
                        <p class="font-size-14 m-0">Silvia Venturini Fendi是Fendi品牌创始人AdeleFendi的孙女，进入千禧年后开始执掌设计这个始创于1925年的品牌男装系列。她充满个人风格的作品，在过去的20年中定义了意大利男装的奢华，以经典常青款为基础，通常装饰大量丰富细节，缀以色彩鲜艳的皮草。Silvia在2018春夏系列中延续以往的传统廓形与俏皮触感，在上世纪八九十年代的运动服饰中汲取灵感。本季，我们可以期待令人振奋的新面貌，比如人字纹外套叠搭的蜡笔粉彩，搭配色彩鲜亮的裤装和科技感球鞋。
                        </p>
                        <div class="w-100 m-auto text-img">
                            <img src="/images/xinwen1.1.png" class="w-100">
                            <div class="text-img-img text-center text-font">新闻资讯图片</div>
                        </div>
                        <p class="font-size-14 mb-0 mt-4"><span>hotwind热风加盟条件金和费用</span></p>
                        <p class="font-size-14 m-0">1、个人条件：对热风的品牌有一定的了解，并且认同热风的企业品牌文化以及经营管理模式。有良好的个人信誉和职业道德，能自觉维护品牌形象，有合法的经营资格，愿意接受公司的审核调查。有大专以上的学历，有3年以上的经营管理经验。</p>
                        <p class="font-size-14 m-0">2、资金条件：具有长期合作的经济投资能力，一般需要投资50-160万元，有独立承担投资风险的能力。想了解加盟详细费用，就请联系全球加盟网的客服人员，您可以通过网上留言或者拨打咨询热线400-111-2221的方式来询问。</p>
                        <p class="font-size-14 m-0">3、店铺条件：面积不小于120平米，位于较为繁华的商圈地段，周边客流量较大。</p>
                        <p class="font-size-14 m-0">热风目前已经拥有了品牌共享商铺多达300家，在北京，上海等50多个全国大中型城市都覆盖了销售网络，并且与来福士，万达等国内外知名商圈都形成了品牌战略联盟。同时，热风还与天猫，京东等国内知名电商进行合作，推广自己的品牌。</p>
                        <p class="font-size-14 m-0">目前热风旗下拥有4个非常具有影响力的品牌，分别是同名品牌hotwind、ned-nedy、Londo Rode、OFFCOS。</p>
                        <p class="font-size-14 mb-0 mt-4">热风最大的特色就是女鞋，是一个真正体现流行元素的品牌，让女性释放自我。货架上近千种不同款式的产品，具有年轻的色彩以及活跃的风格，不断吸引着年轻消费者的眼球。</p>
                        <p class="font-size-14 m-0">通过上文的介绍，我们已经了解了hotwind热风加盟条件有哪些以及热风加盟费多少，从中我们可以看出，热风在国内有着巨大的影响力，其推广力度使得品牌知名度不断上升，也实实在在让加盟商获得了巨大的利益。而且其主打一线城市的繁华商圈，吸引着大量高消费的人群，不仅保证了利润，还让自己的品牌价值不断提升，是投资者非常不错的选择。</p>
                        <div>
                            <router-link to="/indextext/1" target="_blank" class="font-size-14 m-0 text-hover">上一篇：hotwind热风加盟条件有哪些？热风加盟费多少？</router-link>
                        </div>
                        <div>
                            <router-link to="/indextext/3" target="_blank" class="font-size-14 m-0 text-hover">下一篇：工作室的对话</router-link>
                        </div>
                        </div>');
INSERT INTO pf_xinwen VALUES("3",'<div class="text-center">
                        <p class="m-0"><span class="text-title">与工作室的对话</span></p>
                        <p class="py-2 m-0"><span class="text-sz">2020-02-10</span></p>
                        <div class="title-bottom"></div>
                        </div>
                        <div>
                        <p class="font-size-14 m-0">我们在上海住了六个月，以创建我们的头发高速公路项目。这是一个我们热爱的城市，它的花园和历史魅力的感觉。我们特别喜欢的是传统的水上花园豫园和苏州附近的其他河镇。这是我们想从作品中画出来的东西，夜晚水上花园的倒影世界。我们喜欢在夜晚散步，当城市的喧嚣已经过去，环境呈现出一种更加感官的体验，在这里你可以欣赏到城市的环境，河面上的灯光，微风的感觉，这是我们想用新春创造的空间类型。
                        </p>
                        <div class="w-100 m-auto text-img">
                            <img src="/images/xinwen1.1.png" class="w-100">
                            <div class="text-img-img text-center text-font">新闻资讯图片</div>
                        </div>
                        <p class="font-size-14 mb-0 mt-4"><span>与工作室的对话</span></p>
                        <p class="font-size-14 m-0">1、新春已经走遍了国际三大城市：米兰、迈阿密和现在的上海。每个地方都有自己独特的性格和审美观。上海对工作有什么影响？你觉得上海怎么样?</p>
                        <p class="font-size-14 m-0">2、这也是新春第一次在亚洲展出。这是否以任何方式创造性地激发了这项工作的迭代？这里有没有中国的影响或当地的影响？</p>
                        <p class="font-size-14 m-0">3、店铺条件：面积不小于120平米，位于较为繁华的商圈地段，周边客流量较大。</p>
                        <p class="font-size-14 m-0">水上花园传统上描绘了一棵柳树悬在水面上，与装置产生共鸣。我们想引入一个水池来创造一个反光池，并创造出一种置身于室外的感觉。我们还发现气泡在水面上反弹，这是一个令人愉快的惊喜，并再次创造了这种超凡脱俗的体验。</p>
                        <p class="font-size-14 m-0">在上海新春呈现出城市的特色，它成为中国园林中的柳树，外滩装饰艺术的魅力。泡泡让人联想到木兰花、珍珠或小降满月。</p>
                        <p class="font-size-14 mb-0 mt-4">莱佛士市长宁钟楼的新设置对这件作品有什么特别的影响？与米兰的Salone del Mobile and Design Miami相比，您如何看待这一空间的作品？
                        </p>
                        <p class="font-size-14 m-0">之前我们是在春天展示的，画出了与樱花开花的联系。秋天是果实的成熟期。四季可以激发喜悦和忧郁，欣赏和对自然和时间的意识。
正如诗人济慈所描述的那样，秋天是“雾气弥漫、硕果累累的季节”。
                        </p>
                        <div>
                            <router-link to="/indextext/2" target="_blank" class="font-size-14 m-0 text-hover">上一篇：米兰男装周这五场发布会你不容错过</router-link>
                        </div>
                        <div>
                            <router-link to="/indextext/4" target="_blank" class="font-size-14 m-0 text-hover">下一篇：由高级时装启发的最佳时尚电影</router-link>
                        </div>
                        </div>');
INSERT INTO pf_xinwen VALUES("4",'<div class="text-center">
                        <p class="m-0"><span class="text-title">由高级时装启发的最佳时尚电影</span></p>
                        <p class="py-2 m-0"><span class="text-sz">2020-05-12</span></p>
                        <div class="title-bottom"></div>
                        </div>
                        <div>
                        <p class="font-size-14 m-0">快捷编辑器能够让同一个页面拥有空间层次感——当前页面背景图片、图文内容、分栏背景色等，通过多层的处理、视差效果、动效的组合，在鼠标滚动时逐次出现</p>
                        <p class="font-size-14 m-0">缺少高级订制衬衫的高定套西如同阿斯顿马丁与柴油的组合 - 无法容忍。 衬衫的高级定制过程与西装、外套大致相同，虽然也包括一些特别之处。 在首次会面中，需要精准测量新顾客的完整尺寸。 他偏好的版型、领型、袖口样式、门襟及面料将被一一确定。 如有需要，他也可以携带希望与之搭配的服装以确保两者的完美协调。 随后，衬衫工艺师出品的白色府绸衬衫将替代纸样与尺码表记录每件衬衫的委托申请。 如果在第二次试穿中这件衬衫可以令人满意，它将被作为此后的生产模板。 高级定制的衬衫如同第二层肌肤，完美适体、材质与设计由您定义。
                        </p>
                        <div class="w-100 m-auto text-img">
                            <img src="/images/xinwen1.2.png" class="w-100">
                            <div class="text-img-img text-center text-font">新闻资讯图片</div>
                        </div>
                        <p class="font-size-14 mb-0 mt-4"><span>与工作室的对话</span></p>
                        <p class="font-size-14 m-0">1、新春已经走遍了国际三大城市：米兰、迈阿密和现在的上海。每个地方都有自己独特的性格和审美观。上海对工作有什么影响？你觉得上海怎么样?</p>
                        <p class="font-size-14 m-0">2、这也是新春第一次在亚洲展出。这是否以任何方式创造性地激发了这项工作的迭代？这里有没有中国的影响或当地的影响？</p>
                        <p class="font-size-14 m-0">3、店铺条件：面积不小于120平米，位于较为繁华的商圈地段，周边客流量较大。</p>
                        <p class="font-size-14 m-0">水上花园传统上描绘了一棵柳树悬在水面上，与装置产生共鸣。我们想引入一个水池来创造一个反光池，并创造出一种置身于室外的感觉。我们还发现气泡在水面上反弹，这是一个令人愉快的惊喜，并再次创造了这种超凡脱俗的体验。</p>
                        <p class="font-size-14 m-0">在上海新春呈现出城市的特色，它成为中国园林中的柳树，外滩装饰艺术的魅力。泡泡让人联想到木兰花、珍珠或小降满月。</p>
                        <p class="font-size-14 mb-0 mt-4">莱佛士市长宁钟楼的新设置对这件作品有什么特别的影响？与米兰的Salone del Mobile and Design Miami相比，您如何看待这一空间的作品？
                        </p>
                        <p class="font-size-14 m-0">之前我们是在春天展示的，画出了与樱花开花的联系。秋天是果实的成熟期。四季可以激发喜悦和忧郁，欣赏和对自然和时间的意识。
正如诗人济慈所描述的那样，秋天是“雾气弥漫、硕果累累的季节”。
                        </p>
                        <div>
                            <router-link to="/indextext/3" target="_blank" class="font-size-14 m-0 text-hover">上一篇：与工作室的对话</router-link>
                        </div>
                        <div>
                            <router-link to="/indextext/5" target="_blank" class="font-size-14 m-0 text-hover">下一篇：服装店如何做好贴心的售后服务？</router-link>
                        </div>
                        </div>');
INSERT INTO pf_xinwen VALUES("5",'<div class="text-center">
                        <p class="m-0"><span class="text-title">服装店如何做好贴心的售后服务？</span></p>
                        <p class="py-2 m-0"><span class="text-sz">2020-07-12</span></p>
                        <div class="title-bottom"></div>
                        </div>
                        <div>
                        <p class="font-size-14 m-0">快捷编辑器能够让同一个页面拥有空间层次感——当前页面背景图片、图文内容、分栏背景色等，通过多层的处理、视差效果、动效的组合，在鼠标滚动时逐次出现</p>
                        <p class="font-size-14 m-0">缺少高级订制衬衫的高定套西如同阿斯顿马丁与柴油的组合 - 无法容忍。 衬衫的高级定制过程与西装、外套大致相同，虽然也包括一些特别之处。 在首次会面中，需要精准测量新顾客的完整尺寸。 他偏好的版型、领型、袖口样式、门襟及面料将被一一确定。 如有需要，他也可以携带希望与之搭配的服装以确保两者的完美协调。 随后，衬衫工艺师出品的白色府绸衬衫将替代纸样与尺码表记录每件衬衫的委托申请。 如果在第二次试穿中这件衬衫可以令人满意，它将被作为此后的生产模板。 高级定制的衬衫如同第二层肌肤，完美适体、材质与设计由您定义。
                        </p>
                        <div class="w-100 m-auto text-img">
                            <img src="/images/xinwen1.3.png" class="w-100">
                            <div class="text-img-img text-center text-font">新闻资讯图片</div>
                        </div>
                        <p class="font-size-14 mb-0 mt-4"><span>与工作室的对话</span></p>
                        <p class="font-size-14 m-0">1、新春已经走遍了国际三大城市：米兰、迈阿密和现在的上海。每个地方都有自己独特的性格和审美观。上海对工作有什么影响？你觉得上海怎么样?</p>
                        <p class="font-size-14 m-0">2、这也是新春第一次在亚洲展出。这是否以任何方式创造性地激发了这项工作的迭代？这里有没有中国的影响或当地的影响？</p>
                        <p class="font-size-14 m-0">3、店铺条件：面积不小于120平米，位于较为繁华的商圈地段，周边客流量较大。</p>
                        <p class="font-size-14 m-0">水上花园传统上描绘了一棵柳树悬在水面上，与装置产生共鸣。我们想引入一个水池来创造一个反光池，并创造出一种置身于室外的感觉。我们还发现气泡在水面上反弹，这是一个令人愉快的惊喜，并再次创造了这种超凡脱俗的体验。</p>
                        <p class="font-size-14 m-0">在上海新春呈现出城市的特色，它成为中国园林中的柳树，外滩装饰艺术的魅力。泡泡让人联想到木兰花、珍珠或小降满月。</p>
                        <p class="font-size-14 mb-0 mt-4">莱佛士市长宁钟楼的新设置对这件作品有什么特别的影响？与米兰的Salone del Mobile and Design Miami相比，您如何看待这一空间的作品？
                        </p>
                        <p class="font-size-14 m-0">之前我们是在春天展示的，画出了与樱花开花的联系。秋天是果实的成熟期。四季可以激发喜悦和忧郁，欣赏和对自然和时间的意识。
正如诗人济慈所描述的那样，秋天是“雾气弥漫、硕果累累的季节”。
                        </p>
                        <div>
                            <router-link to="/indextext/4" target="_blank" class="font-size-14 m-0 text-hover">上一篇：由高级时装启发的最佳时尚电影</router-link>
                        </div>
                        <div>
                            <router-link to="/indextext/6" target="_blank" class="font-size-14 m-0 text-hover">下一篇：服装市场营销的微观环境分析？</router-link>
                        </div>
                        </div>');
INSERT INTO pf_xinwen VALUES("6",' <div class="text-center">
                        <p class="m-0"><span class="text-title">服装市场营销的微观环境分析？</span></p>
                        <p class="py-2 m-0"><span class="text-sz">2020-07-12</span></p>
                        <div class="title-bottom"></div>
                        </div>
                        <div>
                        <p class="font-size-14 m-0">快捷编辑器能够让同一个页面拥有空间层次感——当前页面背景图片、图文内容、分栏背景色等，通过多层的处理、视差效果、动效的组合，在鼠标滚动时逐次出现</p>
                        <p class="font-size-14 m-0">缺少高级订制衬衫的高定套西如同阿斯顿马丁与柴油的组合 - 无法容忍。 衬衫的高级定制过程与西装、外套大致相同，虽然也包括一些特别之处。 在首次会面中，需要精准测量新顾客的完整尺寸。 他偏好的版型、领型、袖口样式、门襟及面料将被一一确定。 如有需要，他也可以携带希望与之搭配的服装以确保两者的完美协调。 随后，衬衫工艺师出品的白色府绸衬衫将替代纸样与尺码表记录每件衬衫的委托申请。 如果在第二次试穿中这件衬衫可以令人满意，它将被作为此后的生产模板。 高级定制的衬衫如同第二层肌肤，完美适体、材质与设计由您定义。
                        </p>
                        <div class="w-100 m-auto text-img">
                            <img src="/images/title-img.jpg" class="w-100">
                            <div class="text-img-img text-center text-font">新闻资讯图片</div>
                        </div>
                        <p class="font-size-14 mb-0 mt-4"><span>与工作室的对话</span></p>
                        <p class="font-size-14 m-0">1、新春已经走遍了国际三大城市：米兰、迈阿密和现在的上海。每个地方都有自己独特的性格和审美观。上海对工作有什么影响？你觉得上海怎么样?</p>
                        <p class="font-size-14 m-0">2、这也是新春第一次在亚洲展出。这是否以任何方式创造性地激发了这项工作的迭代？这里有没有中国的影响或当地的影响？</p>
                        <p class="font-size-14 m-0">3、店铺条件：面积不小于120平米，位于较为繁华的商圈地段，周边客流量较大。</p>
                        <p class="font-size-14 m-0">水上花园传统上描绘了一棵柳树悬在水面上，与装置产生共鸣。我们想引入一个水池来创造一个反光池，并创造出一种置身于室外的感觉。我们还发现气泡在水面上反弹，这是一个令人愉快的惊喜，并再次创造了这种超凡脱俗的体验。</p>
                        <p class="font-size-14 m-0">在上海新春呈现出城市的特色，它成为中国园林中的柳树，外滩装饰艺术的魅力。泡泡让人联想到木兰花、珍珠或小降满月。</p>
                        <p class="font-size-14 mb-0 mt-4">莱佛士市长宁钟楼的新设置对这件作品有什么特别的影响？与米兰的Salone del Mobile and Design Miami相比，您如何看待这一空间的作品？
                        </p>
                        <p class="font-size-14 m-0">之前我们是在春天展示的，画出了与樱花开花的联系。秋天是果实的成熟期。四季可以激发喜悦和忧郁，欣赏和对自然和时间的意识。
正如诗人济慈所描述的那样，秋天是“雾气弥漫、硕果累累的季节”。
                        </p>
                        <div>
                        </div>
                        <div>
                            <router-link to="/indextext/5" target="_blank" class="font-size-14 m-0 text-hover">上一篇：服装店如何做好贴心的售后服务？</router-link>
                        </div>
                        </div>');