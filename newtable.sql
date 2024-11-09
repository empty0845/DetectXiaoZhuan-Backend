-- 创建表结构
CREATE TABLE archi_element (
    id CHAR(36) PRIMARY KEY NOT NULL,
    logo_path VARCHAR(150) NOT NULL,
    name VARCHAR(50) NOT NULL,
    descri VARCHAR(255) NOT NULL,
    image_path VARCHAR(255) NOT NULL,
    logo_count INT NOT NULL DEFAULT 0,
    video_path VARCHAR(600) NOT NULL
);

-- 插入数据
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("0", "/static/new_logo/new_logo.png", "八", "• 拼音：bā • 解释：数名，七加一（在钞票和单据上常用大写“捌”代）。", "/static/new_image/0.png", "https://baikevideo.cdn.bcebos.com/media/mda-OxAqLU7ehu4iIlST/4cc01cc67b82007104889abde0544b3d.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("1", "/static/new_logo/new_logo.png", "巴", "• 拼音：bā • 解释：粘结着的东西；粘贴，依附在别的东西上；靠近；盼，期望；张开；古国名，在今四川东部、重庆、湖北西部一带；姓。", "/static/new_image/1.png", "https://baikevideo.cdn.bcebos.com/media/mda-Og3U9VGwqTr85ead/580027b162bce66f90176b77490cbed6.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("2", "/static/new_logo/new_logo.png", "癹", "• 拼音：bā • 解释：同“玈”，古同“魃”，旱魃，传说中能引起旱灾的鬼。", "/static/new_image/2.png", "https://upos-sz-mirrorcos.bilivideo.com/upgcxcode/33/29/1051942933/1051942933-1-16.mp4?e=ig8euxZM2rNcNbRVhwdVhwdlhWdVhwdVhoNvNC8BqJIzNbfq9rVEuxTEnE8L5F6VnEsSTx0vkX8fqJeYTj_lta53NCM=&uipk=5&nbs=1&deadline=1730897231&gen=playurlv2&os=cosbv&oi=1782024106&trid=eb253218f5ae480c923a72a6c7aaf43bh&mid=0&platform=html5&og=cos&upsig=5b4df03eac0a37799f4d826fcd5566d5&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform,og&bvc=vod&nettype=0&f=h_0_0&bw=16900&logo=80000000");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("3", "/static/new_logo/new_logo.png", "白", "• 拼音：bái • 解释：像霜或雪的颜色（跟“黑”相对）；光亮；清楚；明白；指白银；姓。", "/static/new_image/3.png", "https://baikevideo.cdn.bcebos.com/media/mda-Ogv6mzKHv5Z824nu/19f84161367e24d3d9134736c49ddd92_1280x720_1365000.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("4", "/static/new_logo/new_logo.png", "百", "• 拼音：bǎi • 解释：数名，十个十（在钞票和单据上常用大写“佰”代）；喻很多。", "/static/new_image/4.png", "https://baikevideo.cdn.bcebos.com/media/mda-Og3L8GwqTr85eadR/8c46e2862dcef703a9921d609c755bb4.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("5", "/static/new_logo/new_logo.png", "般", "• 拼音：bān • 解释：种，样；一样，同样；同“搬”；船。", "/static/new_image/5.png", "https://baikevideo.cdn.bcebos.com/media/mda-OcOWcU7ehu4iIlST/439922da40c1322cb4de4f28f60a21ce_1280x720_1216000.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("6", "/static/new_logo/new_logo.png", "邦", "• 拼音：bāng • 解释：古代诸侯封国之称；泛指国家。", "/static/new_image/6.png", "https://baikevideo.cdn.bcebos.com/media/mda-OgMWpXY16SVdPBHF/b7b19935b3c527a1d1f274f2533eef49.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("7", "/static/new_logo/new_logo.png", "雹", "• 拼音：báo • 解释：空中水蒸气遇冷结成的冰粒或冰块，常在夏季随暴雨下降。", "/static/new_image/7.png", "https://vd3.bdstatic.com/mda-kmr0wg1vvj27zkgu/v1-cae/hd/mda-kmr0wg1vvj27zkgu.mp4");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("8", "/static/new_logo/new_logo.png", "豹", "• 拼音：bào • 解释：哺乳动物，能上树，常捕食其他兽类，毛皮可制衣、褥等。", "/static/new_image/8.png", "https://baikevideo.cdn.bcebos.com/media/mda-OfsvD0kPaBN7yOxV/e99fcc222906f6bc7a5774a0554450bd_1280x720_861000.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("9", "/static/new_logo/new_logo.png", "卑", "• 拼音：bēi • 解释：地位低下，跟“尊”相对；（品质、气色等）低下；谦辞，旧时用于自称。", "/static/new_image/9.png", "https://vd3.bdstatic.com/mda-kkmtva3djn0ufefk/hd/cae_h264_nowatermark/1606049594/mda-kkmtva3djn0ufefk.mp4");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("10", "/static/new_logo/new_logo.png", "北", "• 拼音：běi • 解释：方向，早晨面对太阳，左手的一边，跟“南”相对（跟“南”相对时，黄河以北的地区叫“北方”，指中国北部）；打了败仗往回逃。", "/static/new_image/10.png", "https://baikevideo.cdn.bcebos.com/media/mda-OgVhOmeZEwxyMv5u/514fe0b8e00f8b77ee716930f6b61d78.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("11", "/static/new_logo/new_logo.png", "祊", "• 拼音：bēng • 解释：古代祭名；水名，在中国山东省。", "/static/new_image/11.png", "https://upos-sz-mirrorcos.bilivideo.com/upgcxcode/34/78/1277067834/1277067834-1-192.mp4?e=ig8euxZM2rNcNbRVhwdVhwdlhWdVhwdVhoNvNC8BqJIzNbfq9rVEuxTEnE8L5F6VnEsSTx0vkX8fqJeYTj_lta53NCM=&uipk=5&nbs=1&deadline=1730898111&gen=playurlv2&os=cosbv&oi=1866713016&trid=e135d1f0b8084660a877594150e07a42O&mid=0&platform=html5&og=cos&upsig=e40ee1b9289d05cc474a2fe269da055c&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform,og&bvc=vod&nettype=1&orderid=0,3&buvid=&build=7330300&f=O_0_0&bw=65267&logo=80000000");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("12", "/static/new_logo/new_logo.png", "鼻", "• 拼音：bí • 解释：人和高等动物的嗅觉器官，也是呼吸器官的一部分，位于头部，有两个孔；突出在头部前面的部分；物体突出或隆起的部分；初生的、幼小的。", "/static/new_image/12.png", "https://baikevideo.cdn.bcebos.com/media/mda-Ofgb1XY16SVdPBHF/998cd5f4d10b6fba2070af83e30d1d59_1280x720_1362000.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("13", "/static/new_logo/new_logo.png", "匕", "• 拼音：bǐ • 解释：古人取食的器具，后泛指短刀等；像匕首的。", "/static/new_image/13.png", "https://baikevideo.cdn.bcebos.com/media/mda-OgNoGOML8EqV0Umy/cff52ccce50caf36bac2311ed2bed6af.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("14", "/static/new_logo/new_logo.png", "比", "• 拼音：bǐ • 解释：较量高低、长短、远近、好坏等；能够相匹；表示比赛双方胜负的对比；表示两个数字之间的倍数、分数等关系；姓；紧靠着；挨着；和同类事物相比较；比方；比方说。", "/static/new_image/14.png", "https://baikevideo.cdn.bcebos.com/media/mda-Og3Ws0kPaBN7yOxV/e644890f0eb29888068f7cdaf4d05303.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("15", "/static/new_logo/new_logo.png", "必", "• 拼音：bì • 解释：一定；决定，肯定；固执；果然，假使。", "/static/new_image/15.png", "https://baikevideo.cdn.bcebos.com/media/mda-OgNwZxXa3YeFjM7m/8cb94e1301acef5b2a1dcd32be009c2a.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("16", "/static/new_logo/new_logo.png", "闭", "• 拼音：bì • 解释：关，合；堵塞，不通；结束，停止；姓。", "/static/new_image/16.png", "/static/new_video/16.png");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("17", "/static/new_logo/new_logo.png", "畀", "• 拼音：bì • 解释：给与。", "/static/new_image/17.png", "https://baikevideo.cdn.bcebos.com/media/mda-Off3hOML8EqV0Umy/ce9149c64f2a1d8b0a1834a3deced1de.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("18", "/static/new_logo/new_logo.png", "敝", "• 拼音：bì • 解释：破旧，破烂；谦辞，旧时用于跟自己有关的事物。", "/static/new_image/18.png", "https://baikevideo.cdn.bcebos.com/media/mda-OguSezKHv5Z824nu/49f4249b41a94b8bff48a72496b76f32.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("19", "/static/new_logo/new_logo.png", "辟", "• 拼音：bì/pì • 解释：[bì]君主；排除；透彻；复，尽；开辟；通“避”；法律，法度。[pì]开辟，开垦；驳斥，排除（邪说或坏的事物）；透彻；指君主。", "/static/new_image/19.png", "https://baikevideo.cdn.bcebos.com/media/mda-Ofg0MGwqTr85eadR/89a3e2c2a3f1196c97dccf41fe5c740c.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("20", "/static/new_logo/new_logo.png", "濞", "• 拼音：bì/pì • 解释：[bì]水名，在中国江苏省。[pì]形容水、风等流动的声音。", "/static/new_image/20.png", "https://baikevideo.cdn.bcebos.com/media/mda-OfftCVGwqTr85ead/d0c53ec5680b9a58d430c9f5ca65db4d.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("21", "/static/new_logo/new_logo.png", "兵", "• 拼音：bīng • 解释：武器；战士，军队；军事或战争；关于军事或战争的。", "/static/new_image/21.png", "https://baikevideo.cdn.bcebos.com/media/mda-OgHdozKHv5Z824nu/4fe2eb0f6cc2b10510ab719f55e61721.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("22", "/static/new_logo/new_logo.png", "丙", "• 拼音：bǐng • 解释：天干的第三位，用作顺序第三的代称；火的代称（五行中“丙”、“丁”属火）。", "/static/new_image/22.png", "https://baikevideo.cdn.bcebos.com/media/mda-OcVhomeZEwxyMv5u/a72bde50ac8ce1d2e2565b4d7a551086.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("23", "/static/new_logo/new_logo.png", "秉", "• 拼音：bǐng • 解释：拿着，握着；掌握，主持；古代容量单位，一秉合十六斛。", "/static/new_image/23.png", "https://baikevideo.cdn.bcebos.com/media/mda-Og3izPA8lgXMtZ6Q/918fadd055af9bd8fa6cfd2618d9636d_1280x720_778000.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("24", "/static/new_logo/new_logo.png", "并", "• 拼音：bìng/bīng • 解释：[bìng]合在一起；两种或两种以上的事物平排着；表示进一步，而且；用在否定词前，加强否定的语气，略带委婉的口气，跟“连”相近，但“并”偏重于说明“不是”；“并”和“而”连用时，“并”字用在后面，表示更进一层，相当于“而且”；“一并”合在一起（说）；连词，不论（表示条件不同而结果不变）；副词，用在否定词前面加强否定的语气，略带委婉的口气。[bīng]太原的别称。", "/static/new_image/24.png", "https://baikevideo.cdn.bcebos.com/media/mda-OgLTvgc0fVwWQ4bv/9317c5af106ca10a024b1b1cf0bcc513.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("25", "/static/new_logo/new_logo.png", "帛", "• 拼音：bó • 解释：丝织品的总称。", "/static/new_image/25.png", "https://baikevideo.cdn.bcebos.com/media/mda-Og3iCgc0fVwWQ4bv/9d47e8926dfa90736b2a8e673b3191d5.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("26", "/static/new_logo/new_logo.png", "卜", "• 拼音：bǔ/bo/pú • 解释：[bǔ]古人迷信，用火灼龟甲，以为看了那灼开的裂纹就可以推测出行事的吉凶；预料，估计，猜测；选择（处所）；姓。[bo]萝卜。[pú]我国古代少数民族名。即濮。", "/static/new_image/26.png", "https://baikevideo.cdn.bcebos.com/media/mda-O0fEm0kPaBN7yOxV/aea93a47b80a56bc5575d32bade72cba_1280x720_259000.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("27", "/static/new_logo/new_logo.png", "不", "• 拼音：bù/fǒu • 解释：[bù]副词，用在动词、形容词和个别副词前，表示否定；用在某些名词或数量词前，表示全都不；单用，做否定性的回答（答话的意思跟问题相反）；用在动词和补语之间，表示不可能达到某种结果或表示加强否定；跟“就”搭用，表示选择；用在动词前，跟“得、不得”或“要不要”相呼应，表示疑问或反问。[fǒu]古同“否”，不如此，不然。", "/static/new_image/27.png", "https://baikevideo.cdn.bcebos.com/media/mda-OgaRXzKHv5Z824nu/574cf041428dc28fb2a85cabc172d3d7.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("28", "/static/new_logo/new_logo.png", "步", "• 拼音：bù • 解释：行走时两脚之间的距离；脚步；阶段；地步，境地；姓；用脚走；踩，踏；用脚步等测量；跟随，追随。", "/static/new_image/28.png", "https://baikevideo.cdn.bcebos.com/media/mda-O0mvUdPNjvL51hpe/9d742a879032dee35177ce26e62e5b62_1280x720_264000.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("29", "/static/new_logo/new_logo.png", "殷", "• 拼音：yīn/yān/yǐn • 解释：[yīn]丰盛；盛大；深厚；恳切；颜色浓黑；姓。[yān]古代国名，在今河南安阳一带。[yǐn]震动。", "/static/new_image/29.png", "https://baikevideo.cdn.bcebos.com/media/mda-Og3YymeZEwxyMv5u/0e27da1470860ab84d4c66c8e749b0f1.m3u8");
INSERT INTO `archi_element` (id, logo_path, name, descri, image_path, video_path) VALUES 
("30", "/static/new_logo/new_logo.png", "商", "• 拼音：shāng • 解释：两个以上的人在一起计划、讨论；买卖，生意；商业所经营之货物；商量；中国历史上朝代名；中国古代五音之一，相当于简谱“2”。", "/static/new_image/30.png", "https://baikevideo.cdn.bcebos.com/media/mda-OgN7mczOmPXU0VoI/f751f223ecdd81ccbf69fbe6915667ad_1280x720_1203000.m3u8");
