-- 创建表结构
CREATE TABLE archi_element (
    id CHAR(36) PRIMARY KEY NOT NULL,
    logo_path VARCHAR(150) NOT NULL,
    name VARCHAR(50) NOT NULL,
    descri VARCHAR(255) NOT NULL,
    image_path VARCHAR(150) NOT NULL,
    logo_count INT NOT NULL DEFAULT 0
);

-- 插入数据
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("0", "/static/new_logo/new_logo.png", "八", "• 拼音：bā • 解释：数名，七加一（在钞票和单据上常用大写“捌”代）。", "/static/new_image/0.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("1", "/static/new_logo/new_logo.png", "巴", "• 拼音：bā • 解释：粘结着的东西；粘贴，依附在别的东西上；靠近；盼，期望；张开；古国名，在今四川东部、重庆、湖北西部一带；姓。", "/static/new_image/1.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("2", "/static/new_logo/new_logo.png", "癹", "• 拼音：bā • 解释：同“玈”，古同“魃”，旱魃，传说中能引起旱灾的鬼。", "/static/new_image/2.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("3", "/static/new_logo/new_logo.png", "白", "• 拼音：bái • 解释：像霜或雪的颜色（跟“黑”相对）；光亮；清楚；明白；指白银；姓。", "/static/new_image/3.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("4", "/static/new_logo/new_logo.png", "百", "• 拼音：bǎi • 解释：数名，十个十（在钞票和单据上常用大写“佰”代）；喻很多。", "/static/new_image/4.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("5", "/static/new_logo/new_logo.png", "般", "• 拼音：bān • 解释：种，样；一样，同样；同“搬”；船。", "/static/new_image/5.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("6", "/static/new_logo/new_logo.png", "邦", "• 拼音：bāng • 解释：古代诸侯封国之称；泛指国家。", "/static/new_image/6.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("7", "/static/new_logo/new_logo.png", "雹", "• 拼音：báo • 解释：空中水蒸气遇冷结成的冰粒或冰块，常在夏季随暴雨下降。", "/static/new_image/7.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("8", "/static/new_logo/new_logo.png", "豹", "• 拼音：bào • 解释：哺乳动物，能上树，常捕食其他兽类，毛皮可制衣、褥等。", "/static/new_image/8.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("9", "/static/new_logo/new_logo.png", "卑", "• 拼音：bēi • 解释：地位低下，跟“尊”相对；（品质、气色等）低下；谦辞，旧时用于自称。", "/static/new_image/9.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("10", "/static/new_logo/new_logo.png", "北", "• 拼音：běi • 解释：方向，早晨面对太阳，左手的一边，跟“南”相对（跟“南”相对时，黄河以北的地区叫“北方”，指中国北部）；打了败仗往回逃。", "/static/new_image/10.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("11", "/static/new_logo/new_logo.png", "祊", "• 拼音：bēng • 解释：古代祭名；水名，在中国山东省。", "/static/new_image/11.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("12", "/static/new_logo/new_logo.png", "鼻", "• 拼音：bí • 解释：人和高等动物的嗅觉器官，也是呼吸器官的一部分，位于头部，有两个孔；突出在头部前面的部分；物体突出或隆起的部分；初生的、幼小的。", "/static/new_image/12.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("13", "/static/new_logo/new_logo.png", "匕", "• 拼音：bǐ • 解释：古人取食的器具，后泛指短刀等；像匕首的。", "/static/new_image/13.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("14", "/static/new_logo/new_logo.png", "比", "• 拼音：bǐ • 解释：较量高低、长短、远近、好坏等；能够相匹；表示比赛双方胜负的对比；表示两个数字之间的倍数、分数等关系；姓；紧靠着；挨着；和同类事物相比较；比方；比方说。", "/static/new_image/14.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("15", "/static/new_logo/new_logo.png", "必", "• 拼音：bì • 解释：一定；决定，肯定；固执；果然，假使。", "/static/new_image/15.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("16", "/static/new_logo/new_logo.png", "闭", "• 拼音：bì • 解释：关，合；堵塞，不通；结束，停止；姓。", "/static/new_image/16.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("17", "/static/new_logo/new_logo.png", "畀", "• 拼音：bì • 解释：给与。", "/static/new_image/17.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("18", "/static/new_logo/new_logo.png", "敝", "• 拼音：bì • 解释：破旧，破烂；谦辞，旧时用于跟自己有关的事物。", "/static/new_image/18.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("19", "/static/new_logo/new_logo.png", "辟", "• 拼音：bì/pì • 解释：[bì]君主；排除；透彻；复，尽；开辟；通“避”；法律，法度。[pì]开辟，开垦；驳斥，排除（邪说或坏的事物）；透彻；指君主。", "/static/new_image/19.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("20", "/static/new_logo/new_logo.png", "濞", "• 拼音：bì/pì • 解释：[bì]水名，在中国江苏省。[pì]形容水、风等流动的声音。", "/static/new_image/20.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("21", "/static/new_logo/new_logo.png", "兵", "• 拼音：bīng • 解释：武器；战士，军队；军事或战争；关于军事或战争的。", "/static/new_image/21.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("22", "/static/new_logo/new_logo.png", "丙", "• 拼音：bǐng • 解释：天干的第三位，用作顺序第三的代称；火的代称（五行中“丙”、“丁”属火）。", "/static/new_image/22.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("23", "/static/new_logo/new_logo.png", "秉", "• 拼音：bǐng • 解释：拿着，握着；掌握，主持；古代容量单位，一秉合十六斛。", "/static/new_image/23.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("24", "/static/new_logo/new_logo.png", "并", "• 拼音：bìng/bīng • 解释：[bìng]合在一起；两种或两种以上的事物平排着；表示进一步，而且；用在否定词前，加强否定的语气，略带委婉的口气，跟“连”相近，但“并”偏重于说明“不是”；“并”和“而”连用时，“并”字用在后面，表示更进一层，相当于“而且”；“一并”合在一起（说）；连词，不论（表示条件不同而结果不变）；副词，用在否定词前面加强否定的语气，略带委婉的口气。[bīng]太原的别称。", "/static/new_image/24.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("25", "/static/new_logo/new_logo.png", "帛", "• 拼音：bó • 解释：丝织品的总称。", "/static/new_image/25.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("26", "/static/new_logo/new_logo.png", "卜", "• 拼音：bǔ/bo/pú • 解释：[bǔ]古人迷信，用火灼龟甲，以为看了那灼开的裂纹就可以推测出行事的吉凶；预料，估计，猜测；选择（处所）；姓。[bo]萝卜。[pú]我国古代少数民族名。即濮。", "/static/new_image/26.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("27", "/static/new_logo/new_logo.png", "不", "• 拼音：bù/fǒu • 解释：[bù]副词，用在动词、形容词和个别副词前，表示否定；用在某些名词或数量词前，表示全都不；单用，做否定性的回答（答话的意思跟问题相反）；用在动词和补语之间，表示不可能达到某种结果或表示加强否定；跟“就”搭用，表示选择；用在动词前，跟“得、不得”或“要不要”相呼应，表示疑问或反问。[fǒu]古同“否”，不如此，不然。", "/static/new_image/27.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("28", "/static/new_logo/new_logo.png", "步", "• 拼音：bù • 解释：行走时两脚之间的距离；脚步；阶段；地步，境地；姓；用脚走；踩，踏；用脚步等测量；跟随，追随。", "/static/new_image/28.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("29", "/static/new_logo/new_logo.png", "殷", "• 拼音：yīn/yān/yǐn • 解释：[yīn]丰盛；盛大；深厚；恳切；颜色浓黑；姓。[yān]古代国名，在今河南安阳一带。[yǐn]震动。", "/static/new_image/29.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path) VALUES 
("30", "/static/new_logo/new_logo.png", "商", "• 拼音：shāng • 解释：两个以上的人在一起计划、讨论；买卖，生意；商业所经营之货物；商量；中国历史上朝代名；中国古代五音之一，相当于简谱“2”。", "/static/new_image/30.png");
