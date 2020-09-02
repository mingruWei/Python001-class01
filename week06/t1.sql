-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: movies
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `movies`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `movies` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `movies`;

--
-- Table structure for table `t1`
--

DROP TABLE IF EXISTS `t1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t1` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `n_star` int NOT NULL DEFAULT '0',
  `short` varchar(400) NOT NULL DEFAULT '',
  `sentiment` float(12,10) NOT NULL DEFAULT '0.0000000000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=571 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t1`
--

LOCK TABLES `t1` WRITE;
/*!40000 ALTER TABLE `t1` DISABLE KEYS */;
INSERT INTO `t1` VALUES (1,2,'我们阿东开始炒冷饭了吗？把《禁忌魔术》中的短篇《猛射》拉长了写。。。',0.9994974732),(2,3,'其实就是《猛射》，原封不动地。看了才发现又重看了一次。',0.9449562430),(3,5,'东野圭吾说这本书里的汤川是整个伽利略系列里最优秀的，我倒觉得是整个系列里情商最上线、最聪明的一次',0.9998704791),(4,3,'作为扩写还是蛮成功的，本来点子就很赞，只写个短篇浪费了，长篇把相关人员的行为逻辑描写的更充分，以此作为伽利略系列的一个小节点也是很好的',0.9998511076),(5,1,'这本就是上海译文之前出过的《禁忌的魔术》里的一个稍长一些的中长篇《猛射》，完全没有扩写只是单独提取了出来，才拿到手的《沉默的游行》才是“真”新长篇，骗钱要有个限度！#南海粉转黑# ',0.9999997616),(6,3,'科技没有善恶，但利用科技的人有。',0.9590719342),(7,3,'红色封面是短篇，蓝色封面是是短篇中的一篇短篇写成的长篇。',0.9979841709),(8,3,'这个故事写得太无趣敷衍了',0.1991956532),(9,3,'还行吧，感觉情节没有其他书那么精彩，更多的是在知道既定真相的前提下追查求证。很喜欢汤川的人设。',0.9994364381),(10,3,'科学往往会让人自以为能变得强大，但实际上，真正谦卑地使用这种力量，才是科学最可贵的价值。',0.9999976754),(11,2,'是东野搞鬼还是出版社无耻圈钱？短篇当长篇吹着卖',0.0354484580),(12,5,'这本书的主题是传承。一个让东野念念不忘的故事，日本人更能理解的坚持与决绝，与诡计无关。',0.9983773232),(13,3,'案件真是乏善可陈，酒店意外死亡的梗说实话森村诚一在《人类的天敌》里面早就写过了。感觉东野真的没有办法在案件本身上下功夫，而只能靠卖汤川的人设来推进故事了。',0.9999982715),(14,3,'非常非常非常平庸的作品',0.8508424163),(15,3,'好久不见的神探伽利略系列！汤川学的案子。熟悉的多线汇聚的故事，层层递进，非常精彩，三个小时的小书，可以一看~',0.9953601956),(16,3,'撇开短篇扩成长篇不说，这部感觉很一般，汤川就是我认识的汤川，他的行为就是东野一直描摹的那种个性，没有任何意外，也没有增添任何新的认识',0.9999556541),(17,3,'汤川教授最感性的一次吧。为了不违背枪支管理法而想出这么理工科的高威力杀人装置也是厉害。',0.9944223166),(18,3,'汤川老师体现魅力的一本。',0.9891620874),(19,2,'崩溃……东野圭吾你这是怎么了？？？',0.7391980886),(20,3,'如果不是东野，不会超过2颗星...',0.0251622535),(21,3,'伦理比悬疑更重要',0.9641876221),(22,3,'熟悉的东野，熟悉的文字表达，有种亲切感。',0.9996023774),(23,3,'中规中矩吧',0.9960995913),(24,3,'某科学的超电磁炮2333 物理社团的人都是什么神仙2333 武器没有错 只是要看是出于什么目的来使用~这个梗感觉好土好无聊（笑）除了汤川老师对自己的后辈格外关照和草薙给副教授买了高级酒这两件事让人印象深刻以外通篇都很平淡……最后议员出轨丑闻见死不救的事情也不了了之了？你们大家还好意思一起去赏花？？',0.1520050317),(25,3,'看着看着想起来咋回事了。我天',0.3258388042),(26,3,'并不是一本读起来无法松手的东野圭吾',0.9984680414),(27,3,'这本一般吧，不过汤川的确很有个人魅力。',0.9448691010),(28,4,'天才和疯子仅一线之隔',0.7028853297),(29,3,'应该是汤川系列的最后一部了吧，总算是扫完了。头半部平平淡淡，毫无吸引人之处，可后半部，汤川以老师的身份，在千钧一发之际，宁愿自己下地狱，也要尝试唤醒学生的良知，最终悬崖勒马，冲着这个角度，汤川的人格魅力瞬间高大了！',0.9999999404),(30,4,'太单薄了，没有读过作为源头的中篇也觉得完全没有阅读快感。',0.6727401018),(31,3,'男神很动人',0.8825733066),(32,2,'#2019年第26本#',0.1448428780),(33,3,'开篇的章节很好，看似每一篇都独立的短文最后牵出了一个完整的故事，故事情节发展也都可以，文中所述的这段话也点了主题：科学技术并不是只被用于善事，重要的是运用科学技术的人的本心。如果它落入了恶人之手，那便成了禁断的魔术。但是我真的很不满大贺议员最后的结局，做了坏事一点惩罚都没有，虽然这种有大势力的人能够掩盖自己的污点在现实生活很常见，但这毕竟是小说啊，看得我真的很痛心。',1.0000000000),(34,3,'好像是电视剧《神探伽利略》中的一集，但是内容扩充了。',0.7230125666),(35,3,'就普普通通吧，离优秀还有点距离，',0.8836074471),(36,3,'扩写可还行……',0.9560308456),(37,3,'《禁断的魔术》里的汤川学是神探伽利略系列中最棒的。',0.9999342561),(38,2,'不咋好看，最后是一目一页看完的',0.1824795604),(39,3,'我读过？？？是没有，但不如不读，实在不像东野圭吾的水平…汤川和自己爱徒的对决，也实在应该更精彩有水平一点吧…',0.2275478691),(40,3,'太一般了，东野圭吾的平庸之作。',0.8465422392),(41,3,'短篇改长篇，但故事感觉没有支撑起来',0.9638351798),(42,4,'故事很简单没错，但在zf工作的人读起来确实有不一样的收获。掌握了科学的人就能征服世界？宗教、科学，可能真的没办法共同进步吧',0.9999388456),(43,3,'看过短篇的就没必要看这个改编了',0.5815617442),(44,2,'又是畅销君骗钱的一本',0.0691909119),(45,3,'确实没什么意思',0.5112702847),(46,4,'议员问题其实没解决吧，难道就这样放弃了？有点虎头蛇尾的味道',0.0519755669),(47,3,'2018.12.22 一天三本东野圭吾(￣O￣;)',0.9417808056),(48,3,'伽利略系列的新书 这本书写的并不好 可汤川学的确是个非常吸引人的人  结尾部分恶人什么事都没有 不免让人觉得泄气啊 ',0.9984781742),(49,3,'汤川真是一个怪物',0.8920226693),(50,1,'同样是对孩子的救赎，我更喜欢《盛夏的方程式》。虽然伸吾避免了犯罪，但大贺仁策没有得到任何惩罚还是让我耿耿于怀。不知道是不是因为由短篇扩充而成，整体感觉总有点空。',0.9942514300),(51,4,'东野圭吾也就那两三部拿得出手了，不明白为什么这么多人喜欢他。',0.9879681468),(52,4,'如果有人差点因为他而成为杀人犯，他会多痛苦，又会怎么承担责任呢',0.4111343920),(53,3,'2019/17 故事依旧讲述的很流畅，一气呵成的阅读快感。汤川的故事涉及到现代科学，也是现代社会要探讨的一大命题，科学是否会对人类带来不好的影响？提出问题，没有圣母般高傲的解答，结局太温情了，有温度的小说。',1.0000000000),(54,3,'？？让古芝把炮射出去不好吗？？？',0.3506151736),(55,5,'其实就是《禁忌魔术》小说集里的最后一篇《猛射》，多线汇聚层层递进的老套路，总体乏善可陈…',0.9999348521),(56,3,'新经典文库 1323  东野圭吾作品56',0.9993278384),(57,3,'打发时间的阅读@微信读书',0.9699518085),(58,3,'马马虎虎，充满了电视剧的质感。',0.9227817059),(59,3,'73 到底是东野在捣鬼还是出版社？？？',0.4098346233),(60,5,'不想给他打低分，我比较喜欢汤川学…感觉自己的知识面有点窄，搞清楚了谁是凶手，却没搞清楚手法…磁轨炮…要去了解下',0.0036033052),(61,2,'真的很一般啊 ',0.7445898056),(62,4,'没有惊喜，也没有失望',0.4209699929),(63,4,'温暖的故事',0.9749593735),(64,4,'在书城翻着 还觉得可以看看， 看到一半真的很一般，不想给星了',0.6899974942),(65,4,'其实故事本来真的只值三星，当初的中篇就足够了，但是啊，看到最后我又一次被东野叔的反战思想打动了，所以就加多一星吧',0.9995923638),(66,3,'这本里的汤川我喜欢！感觉汤川的赎罪与石神的献身也形成了一种呼应，只不过汤川有主角光环，读时就知道最后肯定是圆满结局，震撼也就小了些。',0.9999994636),(67,3,'推理作家珍惜诡计人之常情，短篇用过的trick觉得不错拣回来用到长篇里也所在多有，只是像这本这样把自己的短篇原封不动扩写成长篇再出版算怎么回事呢？故事本身索然无味，人物刻画也流于平面，如果说这样的汤川才是最好的汤川，那他回到《嫌疑人》《圣女》里去可能根本不会再指认凶手了。伽利略是畅销君畅销的开始，但最近这系列的沉寂，真像是畅销君江郎才尽的影射。',1.0000000000),(68,3,'短篇改长篇 无甚新意',0.6251380444),(69,3,'东野君擅长的多线叙事，汤川+物理学原理。阅读体验流畅，有画面感。线索似乎都在汤川这里啊。天台对话的汤川打动了我。',1.0000000000),(70,4,'短篇改写，让故事多了不同的角度，读起来比较轻松。',0.9934963584),(71,4,'好吧，我忘记该说什么了，这系列以前我看了几本，都说了什么，我真的忘了。。。',0.8522095084),(72,3,'听说是最新出版的，立马买来看了。看多了发现他破案的套路就这么几个，但忠实读者还是给四星。情节没有新鲜感，但有句话印象很深：只要放弃一次，就会养成放弃的习惯，原本可以解决的问题也会变得无法解决。另祝旁边发烧的盆友赶快好起来（这位盆友昨晚刚看完白夜行，宣布要入坑，结果呢，当头一棒：）',0.9696080089),(73,3,'18年12月19日阅读，我一直认为汤川过于理智和冷酷，这本书让我认识了不一样的汤川，人就本应该有温度，有温情。',0.5211165547),(74,3,'微信读书上看的，最后反地雷提升了高度。风格依旧，但还是太简单了。',0.9589993954),(75,3,'19028 过半之后直接跳的结局倒看。汤川系列的特点就是多数的凶手基本在故事最初就已经或明示或暗示众人，所以比起中短篇，长篇容易觉得冗长。对汤川钢铁直男的印象太深，觉得与其说他“有血有肉”，不如说他只是有自己道德标准而已。',0.9999984503),(76,4,'略微小反转',0.4349703491),(77,3,'我现在看推理小说已经2倍速了么...',0.7982740998),(78,3,'看了几章觉得很熟悉，再看下评论发现自己以前居然看过，以前是禁忌魔术里的小短篇。',0.9870699048),(79,3,'希望古芝能有更好的结局。',0.9983772039),(80,3,'珠玉在前，闲来无事看看吧',0.2258117944),(81,3,'汤川学感情大流露的一本，却没什么惊喜。',0.9876397252),(82,3,'好像白开水一样的剧情……读东野圭吾越来越像喝白开水了',0.9558438063),(83,3,'很无聊的故事，一个磁轨炮的技术，放在短篇里就完全足够了。男主的姐姐竟然不为金钱也不为新闻报道的事业而喜欢上一个油腻老政治家，也不知道东野圭吾是怎么想的…汤川那一股深明大义的样子我觉得真的是太矫情了。',0.9965010881),(84,4,'由名字相似的伽利略系列短篇集《禁忌魔术》中的某一篇扩写而成，体现了汤川学的挣扎，以及对于科技善恶的讨论。',0.9999980330),(85,2,'中规中矩的一本书，前半本多条线同时叙述，有些乱。',0.9952958822),(86,3,'短篇扩写为长篇。江郎才尽？',0.9794230461),(87,4,'这里的汤川 不太熟',0.1247747988),(88,3,'剧情比较单薄',0.4616211951),(89,3,'汤川魅力爆表',0.4520025849),(90,1,'为什么我读的时候一直觉得似曾相识，这个是19年的新作品还是新引进的书？',0.9973381758),(91,3,'短篇《猛射》润色而成的长篇，希望不要把《禁断魔术》列入伽利略系列。赤果果骗钱！',0.9968956709),(92,3,'三星半。故事很流畅，比白金数据吸引我。关于科学技术发展和利用的思考也很有意义，高科技成果自然是好的，但倘若被坏人利用，就成了禁断的魔术。所以啊，这世上最可怕的永远是人心。',1.0000000000),(93,4,'无感',0.5878999829),(94,4,'不错的悬疑小说，不过汤川的推理部分太少了',0.9987552166),(95,3,'就是个超短篇硬是扩展成长篇的剧情，所以读了五六十页都还在原地踏步的感觉，不论人物还是情绪化都不饱满，只是240多页的故事可以让福山雅治的形象在脑子里再演绎一圈，有满足感，然后，我觉得还是内海薰和汤川更有cp感啊，汤川微笑说“是约会吗”，虽然是开玩笑，其实有好感吧',0.9328372478),(96,3,'呃…又是虚拟高科技犯罪。没意思。',0.6706380248),(97,3,'2018阅读的最后一本书。看完似曾相识，翻记录原来14年上海译文已经出过禁忌的魔术，这是短篇《猛射》填充细节改长成长篇。改长之后阅读性依旧流畅，可以一口气读完只是不少情节感觉是为了填充而填充，铺垫太长以至于削弱到结局的高潮的震撼性。汤川作为伸吾的指导学长有很认真地为伸吾的人生考虑与负责，最后我也相信以汤川的性格如果伸吾要求发射他会真的发射。这个故事使得汤川的人情味又上一层楼，人物性格更立体。吐槽一下东野把议员写的也是无可奈何，锅都是他的秘书，所以是间接推崇政客？',1.0000000000),(98,2,'已经和推理没什么关系了，讲述一个悲惨的罪案故事，抛出一些读者喜欢的社会阴暗的问题，收获美誉和名利，完美的流程',0.9999944568),(99,3,'emm，短篇扩写，怪不得觉得怎么这么水',0.4883038700),(100,3,'大家都在说炒冷饭，可我真的很爱这本书里的汤川啊，有血有肉，会感情用事，会无条件信任他的学生，汤川快回来啊',0.9797819853),(101,4,'被这样的汤川也圈了粉，冷静理智又有人情味、轴、深信自己学生的人品，尊重他人的选择……有这样的老师、朋友都是一件幸运的事情。掌握了科学的人就会征服世界~',0.9999966025),(102,3,'很短的一个小故事 中规中矩 比较适合拍剧 一集短小精湛也不需要补足太多的背景知识 汤川老师和学生的物理机械知识算是得到了很好的发挥 ',0.9999998212),(103,4,'书是不错，可惜是短加长，却没加什么',0.9655046463),(104,4,'听书到23%。',0.4737672210),(105,2,'kindle 嗯，故事是好故事，只是……算了，有的看就好了。',0.9821286798),(106,3,'短篇《梦射》非要凑成长篇，强弩之末，不够好看。',0.8196942210),(107,3,'……不好看，东野圭吾的水准真是时好时坏',0.9114056230),(108,2,'我就是觉得遗憾罢了。不知道那位幸存者会不会忏悔呢？',0.5728624463),(109,3,'注水的东野写了一本没尾的小说。',0.9712572694),(110,3,'好像以前看过一遍呢，故事很熟悉。好吧，难道我又看了一遍？不过，的确是好看，比凑佳苗高出不是一点，无论是人物刻画，还是情节、节奏，都很流畅好看。',0.9999991655),(111,4,'（27/220）推理是没有的，最后立意拔高了一下，火车读物again',0.9820632339),(112,4,'对于科技到底应该如何让被人类使用，东野大叔借着汤川森瑟已经说得够清楚了，实在是很合适的题材。帝都大学的教授也越来越接地气了，跟草薙也很有戏，哈哈哈。。好期待福山大叔的下一步伽利略影像化作品。',1.0000000000),(113,3,'书中这些话还挺对的“掌握了科学的人就能征服世界。”“利用科技危害人类、威胁人们的生命安全都是不可原谅的。”和当今的形式还真是对称。',1.0000000000),(114,2,'小说没有什么诡计，嫌疑人想出来的杀人方式也太玄乎。风格偏向于社会派，倒有几分松本清张作品的味道。总体来说一般般。',0.9974636436),(115,3,'看了几页发现是禁忌魔术中的短篇扩写，圈钱意图太明显，感觉是被迫二刷了…',0.8510220647),(116,3,'中段特无聊，要是短篇扩写的就解释通了。开始有点致命魔术的氛围，但是汤川教授一定是会把故事推到科学上去的。结尾古芝爸爸的那段很棒。议员大贺仁策没有受到惩罚，令人不满。',0.9999980330),(117,3,'6.9分，改写后确实比原版强上一些，但总而言之确实还是一部骗钱之作。超忌魔术只卖30多块，这本接近50，不值。',0.0284462217),(118,4,'抛开之前的短篇不谈，但就这篇长篇来说其实可读性很强。汤川在东野老师的笔下逐渐走下神坛，有了喜怒哀乐，有了痛苦悲伤，原来他也和我们一样是食人间烟火的人。远走纽约的汤川老师，希望还会再见！',1.0000000000),(119,3,'出场人物挺杂 故事也平平',0.8740661740),(120,3,'一如既往没有善恶报应，推理波折基本平平淡淡，人物塑造还是相对立体的',0.9998745322),(121,3,'在任何情况下，利用科技危害人类、威胁人们的生命安全都是不可原谅的',0.9963948131),(122,4,'感受到了物理知识的重要性！！！！',0.5013061166),(123,3,'伽利略系列套路已经固化了，因此也少了许多趣味',0.6455960274),(124,3,'很普通的故事，似曾相识',0.9839330316),(125,3,'很平常的一本书。对新型科技的态度挺正。',0.9964849949),(126,4,'因为不太喜欢福山雅治，电视剧没看过，这也是我看的第一本伽利略系列的书。案子很简单，看来东野是花了更多的力气在汤川这个人身上，不仅充满了智慧和善意，表面冰冷内心温暖。改编成电影应该是一部不错的作品吧！',0.9999993443),(127,2,'以短改长，无耻至极',0.0597048476),(128,2,'越来越难看，简单的情节故弄玄虚。',0.2886515558),(129,3,'一个清浅的小故事，很容易读',0.9327657223),(130,4,'三星的故事被东野流畅且高超的多线叙事手法写成了三星半，再加半星给伽利略老师，期待你某天的回归。',0.9999586344),(131,3,'没啥特别的 就是打发下时间的读物吧',0.5407842994),(132,4,'前面稍微有点乱，后面还是很精彩的',0.5862823725),(133,3,'这本有点水',0.2624108791),(134,2,'汤川教授系列，不好看。大贺议员最终也没拿他怎样。',0.9790011644),(135,3,'三星半。伽利略系列基本的水平都在，但可能因为是短篇改编的原因，格局有点小家子气，且汤川的形象最后稍微有点突破过头了，算是微瑕吧。',0.3191650212),(136,5,'挺好看的 这次的汤川不同于以往 多了份人情味',0.9762908220),(137,3,'这个故事真的乏善可陈，没有读推理小说解谜的快感，但是东野故事的立意与对科技作用的反思让人称赞。',0.9999994636),(138,4,'人物的对话，抓对方的需求特别准',0.8739922047),(139,3,'〔1959〕一口气四个小时读完。汤川这次险些因为自己传授磁轨炮的技术给学生申吾而引发复仇杀人案件。最后还是力挽狂澜成功阻止了一起谋杀计划。申吾的姐姐是某科学城开发项目的头头大贺的情妇，因为宫外孕生命垂危，大贺不愿暴露个人隐私而毁了政治生涯选择不管不顾，造成姐姐不治身亡。申吾决心秘密制造磁轨炮复仇。反对科学城项目的自由撰稿人长冈了解到了申吾的计划，想拿此作为威胁逼迫大贺的部下胜田交出更多大贺的劣迹以撰文曝光大众，没想被胜田用领带勒死。在本作中作者想表达的意思或许是“另一个角度说，科学技术确实如此，它并不是只被用于善事，重要的是运用科学技术的人的本心。如果它落入了恶人之手，那便成了禁断的魔术。科学家永远不能遗忘这一点。”',1.0000000000),(140,3,'短篇改编的啊…',0.5745133162),(141,3,'关于汤川人格的表扬设置是很有意思没错，一贯讲些虚无大道理也是东野的风格。但是，其他的一切东西，什么电磁炮什么丑闻…完全都弄不懂。',0.9940620065),(142,3,'没有本格派的精妙也没有社会派的人文，夹在两者之间反而呈现出一种很感性的叙事。但既然如此，对人物挖掘尚不够深，作为一个中篇的加长版，似乎依旧不完全……P.S. 千万别跟汤川学扯上关系，他的熟人总是会犯事，之前校友老师这次又是学生……这算是啥体质……',1.0000000000),(143,3,'只要有汤川教授就喜欢，永远这么给人正能量和温暖。科技本身并无错，错的是人心。',0.9999806881),(144,3,'掌握科学就掌握世界了么？最后还不是输给了人心……',0.9965663552),(145,4,'这是汤川教授系列，汤川指导了一个高中生古知研制了一个电磁发射器。\n\n\n古知考取大学后，发现相依为命的姐姐作为议员的情妇意外去世时，因为议员没有及时相救而去世，所以古知放弃学业专心研制电磁炮，打算杀死议员。\n\n\n因为实验电磁炮，期间发生一些奇怪的事情，总是有不明爆炸事件，有个记者得知了古知杀人计划和议员的丑闻，打算报道时，记者被杀死了。\n\n\n汤川和警察多方了解，终于明白了古知的计划，汤川及时赶到现场，劝服了古知放弃。\n\n',1.0000000000),(146,5,'科技没错，错的是人性',0.9359098077),(147,3,'汤老师最像正常人的一部',0.9575141072),(148,4,'终于又再次看到男神汤川学了',0.4338087142),(149,4,'有种兜了一大圈又回去的感觉。',0.5997929573),(150,3,'好久不见，汤川老师。',0.6753987074),(151,3,'我好喜欢汤川这个物理老师呀啊啊啊啊\n感觉在东野圭吾心目中这种科学家的地位好高大呀',0.9999994040),(152,4,'汤川老师是主角了',0.9574259520),(153,3,'非常平鋪直敘的一個小故事了⋯⋯倒是適合改編成劇場版',0.1353372782),(154,3,'东野圭吾真的是最佳飞机读物',0.9946531653),(155,3,'三星-。短篇改长篇，科学谜题无进步，增加人性化戏份。未见突破，只好说平平。汤川原本理性为主不近人性的特点似乎消失了。',0.9742347598),(156,3,'东野的书最喜欢的系列是加贺探案系列，最讨厌的就是汤川学系列，可能是我偏重于物理学的噱头反而在破案方面弱化了太多。东野近几年对先进技术破坏环境或者大自然这一方面好像浓墨重彩较多，还是比较想看推理侦探类的文呀！',1.0000000000),(157,4,'“所谓放弃，应该是那些上了年纪的人做的事，世界上没有你们这些年轻人无法理解的事。只要放弃一次，就会滋生放弃的习性，原本可以解决的问题也会变得无法解决。”这句话好喜欢。有科学才有未来的理念也好喜欢',0.9999992847),(158,3,'结尾很棒！前面嘛……一般般啊……',0.9934862256),(159,3,'东野的作品基本都看完了，不能说每一本都喜欢，但绝大多数是符合自己的审美的。这部《禁断的魔术》看的时候觉得还行，有东野一贯的风格，但是这次的故事有点过于简单了！',0.9999917150),(160,3,'影视化的话，可找北村匠海演古芝伸吾',0.7206542492),(161,4,'汤川老师真的是一个温柔的人啊',0.9795453548),(162,3,'注水系列。',0.7367396951),(163,4,'神探伽利略系列，基本上就是各种物理学原理了，但能写出这么多花样来也是功力。',0.9999864101),(164,3,'神探伽利略，汤川系列。这篇总觉得之前看过很类似的短篇，也是东野圭吾的。所以就没有那么惊艳。\n#2020SZnTong读书计划# \n',0.9947274923),(165,2,'哎…',0.4666666687),(166,4,'短篇《高射》扩成中长篇《禁断的魔术》，不管在哪里看到汤川两个字，脑海里立刻浮现的就是福山雅治的脸～虽然也想看到伸吾报仇雪恨，但当汤川出现时，还是松了一口气，毕竟伸吾还有大好岁月，不必为人渣毁了自己的一生，汤川爱护伸吾，用尽方法阻止他，伸吾为了所爱的姐姐也义无反顾，不能报仇的话会很愧疚吧，坚持到底的执念，如果对了，是一种美好，如果错了，是一种悲哀，孰对孰错，谁能分得清楚？不怕科学家发明东西，就怕发明出来的东西被魔鬼利用，就是这本书的主题了，东叔更想表达的应该就是离开的人一路走好，留下的人继续好好生活。',1.0000000000),(167,2,'不好看',0.5650262833),(168,4,'凡有汤川必有科学，都说看到了一个有血有肉的汤川，我倒看出了别的，见死不救的政客，以及不追求真相的媒体。与其说看到了不一样的汤川，不如说读到了现实版的《白金数据》',0.9972645044),(169,3,'据说是早年《禁忌魔术》中一个短篇的扩写，但我对当时读过的这个短篇毫无印象，可见本身并没有什么扩写的价值。东野的高产我是佩服的，但这篇冷饭炒得有点莫名其妙。',0.9998531342),(170,3,'2012年出版。《虚像小丑》中的短篇扩成的长篇，探讨科技如果被用于作恶。东野认为这是伽利略系列中最棒的，成为了有血有肉的人，但我反倒是觉得《盛夏方程式》里的汤川比这部要更有感情。',1.0000000000),(171,5,'love and peace。故事有点在高潮戛然而止的样子。东野叔的一贯套路，多线叙事渐渐汇合，最终达到高潮。不过整体不错，感觉比之前看的《悲剧人偶》要好一点。\n20190226看过，微信读书。',1.0000000000),(172,2,'即使没读过之前的短篇我也觉得很一般',0.7109141946),(173,4,'去看东野圭吾原著改编的音乐剧《信》之前，在言几又消磨时间，随手抓的一本没读过的，匆忙翻完了。难得汤川教授在案发前就已经“介入”的一宗“案子”哎，看书时会自动代入福山雅治柴崎幸北村一辉了。男主帝都大学浸一浸三观再矫一矫可以当伽利略二代了。',0.9999999404),(174,3,'算是系列里比较差的',0.4410262406),(175,3,'汤川系列。掌握科学的人就能征服世界，错。“科学技术并不是只被用于善事，重要的是运用科学技术的人的本心，如果它落入了恶人之手，那便成了禁断的魔术。”本书的核心吧。习惯了东大叔的风格，每一章跳来跳去，最后把前因后果串起来，有时候看的人很抓狂啊。这个应该是汤川系列最新作吧，感觉没《嫌疑人》和《盛夏方程式》好看呢。',0.9999998808),(176,2,'第一次出现推理小说读不下去的情况，前几章一下子抛出了二十来个人物，有病啊。听说这是短篇小说扩写？那我只想看那个短篇啊。【只要放弃一次，就会滋生放弃的习性，原本可以解决的问题也会变得无法解决。】',0.9999005795),(177,4,'那句“汤川系列最好的一部”真的是本人说的吗，如果是这样的话，东野桑为了畅销还真的什么都干得出来啊',0.8543210030),(178,3,'只能说是一般',0.1226302832),(179,5,'1、没读过《禁忌魔术》，所以没读过《猛射》(本书由这个短篇改编)，不过之后会补下这本短篇集《禁忌魔术》。2、故事最后东野三观暴正，真想at下刚退出中导条约的川普这段关于科技和武器的论述，不过他应该看不懂，即使语言通他也看不懂，我是这么认为的。(世界第一是不是都四处挑事儿？希望有生之年能看到个不挑事儿的世界第一。)3、胡诌开始:福山雅治的汤川学深入我心，看着书就脑补他画面，稍微有点面瘫，不过看上去就很聪明的样子，相信他18岁时没现在吸引人，有人会这样，青春时没有初老时惊艳。昨天看到别人分享一视频，姓忘了名草太的法学系教授，静止惊艳，动态一般，肯定不比福山雅治，但是实打实还秀色可餐的教授啊。',1.0000000000),(180,4,'短篇小说集的扩充。有点偷懒，但是汤川教授的形象更加高大',0.9197369814),(181,3,'汤川在这本里好像沾染了人情味，什么样的缘分能让大神豁出去自己的前途去保护呢。',0.9629854560),(182,2,'乏味的一本，直接送去多抓鱼',0.2314203233),(183,4,'昨天晚上',0.5153418183),(184,3,'案情和剧情一般般，太简单了。伸吾和秋穗的人设是唯一的小亮点。',0.9908802509),(185,3,'在汤川系列中算是比较差的吧',0.8281968832),(186,2,'中规中矩的小故事，起伏不大，没有意外转折，没有大奸大恶，没有情感纠葛，不像以前看过的汤川学了，不是印象中的那个“侦探伽利略”了，和以前的那些经典故事没法相提并论。开篇第一章提到的“大巴、外国游客、行李箱”肯定指的是中国游客吧，毕竟最近这些年赴日旅游一直是中国大陆游客出境游的首选目的地，出去的人多了，素质参差不齐，未必都能让日本人民欢迎，会有抱怨也是正常的，要想普遍提升中国人的整体素质特别是道德素质，没有一两代人的努力是不可能实现的。',1.0000000000),(187,4,'哈哈哈哈哈哈，不好看。',0.9786614776),(188,2,'禁断的魔术\n\n古芝 伸吾\n\n由里奈 女儿\n达夫 父亲\n\n长冈 修 38\n渡边 清美\n胜田 干生 蘑菇料理\n米村 书店老板，都市杂志发行\n大贺 仁策 议员\n鹈饲 和朗\n\n警察\n岸谷\n草薙\n宫间\n内海 薰\n\n悟\n美嘉',0.9999999404),(189,2,'？？？？？',0.1666666716),(190,3,'你妹！还说是神探伽利略最有魅力的一本！你出来我不打死你！',0.9238176346),(191,4,'汤川令人敬佩',0.7652836442),(192,3,'2019.04.08-04.10 No.13',0.4737672210),(193,3,'简单一本书看了好久 看的人困马乏',0.8145002127),(194,4,'汤川老师真的是一个好老师。掌握科学就能征服世界，这种思想是有危险性的。',0.9999421835),(195,4,'这本书应该是伽利略系列的完结之作吧，故事还是挺有意思的，离不开东野圭吾擅长的人性探讨，希望伽利略系列可以继续下去吧。',0.9999818206),(196,3,'以为出了本汤川的新故事，可越看越觉得怎么似曾相识。这不是炒冷饭嘛，扩写要能出一本书的话，未来几年那些短篇集都等着翻新，东野也就更不缺滑雪钱了。',0.9994642138),(197,4,'汤川这本好好看，他的性格更加丰满了',0.8214440346),(198,3,'大概只能算伽利略系列的一个小篇章，独立出书的话完全不够格，出版社是想钱想疯了吗？！',0.8192661405),(199,3,'说是扩写，我第一个想到的是另一个故事。可惜猜错！',0.9655645490),(200,3,'三星有余，四星不足吧，汤川教授以其责任感和担当再圈一波粉。以严苛一点的角度来说，整个故事透着一种校园YY的幼稚，无论是男孩和千金的暧昧，姐姐和政治家的婚外情，还是反动派的瓦解，记者被干掉的真相，只能说明大叔真的笔力不逮啊。故事相当的浅显，笔法更谈不上老辣。全书最惊艳的大概是大秘吧。',0.9999999404),(201,4,'一口气看完的感觉真不错，虽然比较平淡缺乏让人耳目一新的感觉，但对于人情感的内容增加也弥补了一些缺陷。一样的行文套路，整体架构略散。',0.9999604821),(202,4,'科学如果用来杀人 就违背了初心',0.7747823000),(203,3,'看到最后竟然觉得大贺仁策这人挺好笑的，他秘书是真冷血啊。',0.6536290646),(204,3,'熟悉的叙述方式，汤川学宛若圣人。',0.3858195543),(205,3,'东野老师也太会写简介了：“我敢断言，在《禁断的魔术》里登场的汤川学是神探伽利略系列中最棒的。《嫌疑人X的献身》后，他不再只是小说中的棋子，而成为有血有肉的‘人’。” 哇靠不买还是人吗',1.0000000000),(206,3,'汤川学真是太帅了',0.4737672210),(207,4,'立意很好，提醒人们反思科学真正的意义——但是光我们这些屁民反思应该没什么卵用。缺点就是，没什么推理，而且说教意味很重啊…这就让人觉得有些生硬了，简直像是语文考试的阅读理解一样（白金数据也是）\n2019/319 最近看了横沟正史的几本书，再回头看这本，突然觉得不管是人物形象还是故事剧情都很单薄，比如男主的姐姐到底是个什么样的人？在弟弟眼中十分贤惠的她为什么愿意和年纪那么大的议员发展不正当关系？是出于喜欢？还是相互利用？完全不明白啊…人物形象可不是用几句话就能完全立起来的啊',1.0000000000),(208,3,'高端的武器一旦落入错误的人手中，对于全人类来说都是场灾难。',0.9999371767),(209,3,'伽利略系列除了嫌疑人X的献身之外，好像没有特别出彩的，这部也是。试图把城市改造为科学之城的议员，很好猜的婚外恋关系，以及宫外孕的死因，聪明好学的弟弟为姊报仇，汤川作为男主的校友兼指导老师，间接成为少年制造杀人武器的帮手。',1.0000000000),(210,5,'当一个姓名所代表的不再是一个人，很多东西便无法自主，而大发展的车轮也不会因为一个人而停滞。个人的感情成了不得不割舍的东西。所谓对错，立场不同便会有截然不同的论断。\n从这个故事开始由衷的钦佩汤川老师。以前只崇敬他的聪明才智，这次却看到了他作为一个人的感性，和作为一个好的老师的责任感。如果仅仅只是传授科学知识，却不去教导学生利用科学的正道，是不能算作一名合格的老师的。\n为防剧透，不写了。是值得一看的好故事。\n',1.0000000000),(211,5,'从《嫌疑人X的献身》到《盛夏方程式》再到《禁断的魔术》，一向理智的“神探伽利略”汤川学一步步成长起来，曾经他只执着于真相大白，但冷眼旁观那么多故事皆因情所起，他在破解奇案的同时，渐渐有了人情味，开始慢慢学会去感受这世间的人情冷暖。',1.0000000000),(212,3,'相对于汤川，更喜欢草薙。或许就是喜欢那一点儿人情味儿吧。只是内海薰出场后，草薙被弱化了不少。。。',0.9818928242),(213,2,'没有什么新意的主题，毫无悬念的推理',0.8672608733),(214,4,'东野就是写故事的能手，无论什么题材，只要他写起来就不会不好看，画面感总是很强，让人想继续读下去。本书猜到了凶手！',0.9969658852),(215,3,'东野圭吾小说越看越多 发现相连相通的地方也越来越多  早已没有了最早接触时的感叹惊呼 过大的产量好像限制了品质的发挥',0.9999901056),(216,3,'还可以。只有汤川老师还可以。',0.9062471390),(217,3,'如果说本书的主旨对伽利略系列中的汤川，赋予更多人性化的特点，让人物形象更丰满，确实呈现了相应的效果。但是从情节来说，过于简单，是达不到正常推理小说的程度的，甚至连悬念都没怎么设置。而除汤川外的其他角色，古芝姐弟、长岗、蘑菇餐厅老板，都写的很平面，大贺反而是相对丰满的。短篇还是保持短篇的特色即可，强行拉长，还真是撑不起来呢。',1.0000000000),(218,3,'来自81页的马克，战后，我们的国家变得一无所有。想要得到什么，就必须靠自己的双手去生产。不管是电视机、还是轿车、进口货太贵，我们额买不起，因为我们要制造百姓买得起的东西。现在我们什么都有了，各位可以去问问现在的年轻人想要什么，无非就是新款手机或者偶像签名一类，这样一来便无法再继续创造。\n我们现在的年轻人最缺什么？前两天看2018年年度报告，似乎不要婚姻孩子和房子可以解决一大半的忧虑。我们的年轻人最想要什么？为了将来我们必须要做什么？这真的是值得思考的。',1.0000000000),(219,3,'看到了男神性格更像人的一面',0.7164855599),(220,4,'＂所谓的放弃，应该是那些上了年纪的人所做的事，世界上没有你们这些年轻人无法理解的事。只要放弃一次，就会滋生放弃的习性，原本可以解决的问题也会变得无法解决。＂汤川不厌其烦的为他讲解。',0.9998828769),(221,2,'老实说，很失望。很一般',0.1398247331),(222,5,'鹈饲不是好东西…由里奈太蠢…秋穗跟大贺是自愿的…最后汤川拯救了申吾，大贺连丑闻被揭穿的惩罚都没有。书很无聊。',0.9999958277),(223,4,'科学如果不合理运用，就会成为邪恶的魔术。',0.9915353656),(224,4,'汤川老师不是那个汤川老师了呢',0.9529714584),(225,3,'这结局，让我很纠结，应该一炮打中大贺才对啊？就这么让人衰男活下去了？还继续他的破坏大自然计划。实在是让人抑郁！',0.9809987545),(226,3,'感觉汤川的人设变了。以前的伽利略系列的书中，他一直给我一种怀疑主义者的味道。他最喜欢的是一定要看到证据才能证明推理的观点。然而在本篇中，他用了肯定，绝对的词去说自己的弟子不会犯罪，让我有些奇怪的感觉。东野想要写一个更有人情味，更感性的形象，完全可以用加贺来作为主角，而不是更理性更冰冷的汤川。',0.9999975562),(227,3,'飞机上看完这本书，东野圭吾的特点是小故事来交待一个一个的相关人物，最后都会交代出人物之间的关系，最后的结局并有没有恶人得到惩罚，却让善良的心中的恶得到释怀。',1.0000000000),(228,3,'有点加贺恭一郎的味道',0.8224563003),(229,4,'2019年读的第一本纸质书',0.8648130894),(230,4,'最后汤川作为老师，让人很感动。其他地方，平平无奇',0.9970192909),(231,3,'有些细节和内容多余，其实可以缩减到180页左右',0.1846603304),(232,4,'神探伽利略系列九。根据2012年出版短篇作品《猛射》改编。\n“从另一个角度说，科学技术确实如此，它并不是只被用于善事，重要的是运用科学技术的人的本心。如果它落入了恶人之手，那便成了禁断的魔术。”\n一个记者死了。他死之前来找过汤川教授。\n一个学生失踪了。他曾是汤川教授教过的学生。\n一个科学新城的计划，请来了汤川教授到聚会。\n草薙这次发现，汤川似乎在隐藏着什么……',1.0000000000),(233,4,'有点不符合以往汤川的人设……不过还是可以一读',0.9800131917),(234,4,'觉得道具有点眼熟，原来以前用过啊。emmm撑一本长篇说不上水，有些单薄。另外这只汤川学游离在正义边缘更带感了www',0.9978214502),(235,4,'想法很有趣～现实有点无奈 想知道伸吾和大贺的最终归宿～',0.9873195291),(236,3,'12年《禁断の魔術》的第四篇短篇「猛射つ」的再版',0.9987304211),(237,1,'害 我发现南海出的书都不太行啊',0.1374212056),(238,4,'大概是因为看的第一本伽利略小说，故事虽然简单但并不感到失望。是很暖心的作品。可以取个副标题——老师的品格。这个才是此书重点。',0.9957951903),(239,3,'看过曾经的《猛射》再看这本书，一点吸引力都没有。但没看过的朋友读者应该还可以。',0.9908400774),(240,4,'基本上保留了东老师一贯的水准和风格。高智商犯罪最近反复出现在他的作品中。印证了“就怕流氓有文化”。当然，200多页的篇幅，正好适合一次国内的飞行。',0.9990090728),(241,4,'用了两天读完，字比较少，情节嘛，就那样。长冈之死，姐姐之死，古芝伸吾磁轨炮，三条线。汤川有点打酱油啊。结局意料之中。',0.9974656105),(242,4,'普普通通',0.5000000000),(243,4,'东野圭吾，江河日下呀～\n赤峰 飞呼市@kindle',0.9908482432),(244,3,'比较中规中矩的本格推理吧。政治家渣男牵扯出的一系列案件，虽说他不是凶手，但是却是因为他害死了两个人，还使得一个科学天才少年误入歧途。汤川老师真心不一样了，人性关怀多了一点，但还没有到加贺那种放荡不羁的真我。倒是物理学加上了窥心术有点可怕的感觉。',1.0000000000),(245,2,'无聊程度堪比疾风系列，就算我是煮饭的时候听的，也难忍其索然无味。',0.1503433585),(246,4,'汤川老师太有魅力 东野君这一次一如既往展现了人性中的温情 但议员没受到惩罚真是让人愤愤不平 不过也许这也是现实性的一部分\n\n最后 我认为汤川应该会发射\n\n',0.9999998212),(247,3,'平庸点',0.2301330119),(248,3,'科技的力量，能够征服世界但一旦落入恶人之手，便成为禁断的魔术。',0.9999427795),(249,5,'短篇小说的扩写  因为先看过短篇 所以小说的场景跳跃 多条线描写都还是可以流畅阅读  原本以为扩写是很滥竽充数 本身也并没有很喜爱这一篇 但是读完后觉得这一部内心和情感描写的很强  对于这样的小说总是很难抉择  想让那个孩子爽快点发射去报复  又觉得汤川老师会太过于痛苦  汤川老师的周围 总有他重视的人犯了杀人罪 这一次他护住了  相信和理解并且挽救自己的学生  尽管最后对于那些丑恶嘴脸的议员没有任何报复非常遗憾 ',1.0000000000),(250,3,'情节铺垫还行 最后结尾太过煽情显得牵强 汤川学的人物塑造比较成功',0.9828723669),(251,5,'科技好与坏，取决于使用者吧，最初科技发明的初衷，是为服务于人，科技无罪，有罪的是使用的人。汤川授人以渔，没想到后续竟差点成为学生的杀人的工具，一场复仇与救赎的赛跑。而另一方面，政者的利益，放任一条人命平白消逝，信念不坚定，为人抓住把柄，万劫不复啊。人性，做人的道理，不只有情节。亲情，友情，爱情，理性，冲动，金钱，权利，环境，效益……',1.0000000000),(252,3,'用罪恶回报罪恶，是这个世上最可怕的恶，唯有相信法治与原谅，才能让世界更美一点。\n故事没什么新意，但这也是最正常的犯罪故事吧。科技让生活更好，但也带来无穷的后患。',0.9998288751),(253,2,'没意思',0.0961538479),(254,3,'短篇改编成长篇，没啥好评论的',0.8692597747),(255,3,'最后，汤川也在走向加贺一样，每个人终其一身都是在逃离自身经历',0.9997242093),(256,4,'故事整体不能和《嫌疑人X的献身》比肩，希望改编成影视的效果会好一点；边看书边脑补福山雅治饰演汤川学的画面感。',0.9655489326),(257,3,'说实话对汤川感受不深',0.7045119405),(258,3,'长岗修要想知道古之秋穗死了的这件事不用一定要问别人吧？',0.9146811962),(259,4,'神探伽利略系列情商最高的汤川',0.9657050967),(260,3,'无趣的紧',0.1256693453),(261,3,'惊喜是又是汤川学呀，脑海中浮现额福山雅治的脸~可是不喜欢题材啊，又是酒店又是物理这种……',0.9997014403),(262,5,'嫌疑人没让我转汤川粉，禁断的魔术让我粉他了。',0.9506303072),(263,2,'感觉很烂 乱七八糟 和解忧差不多的形式 可是逻辑很乱 ',0.4815579355),(264,3,'那个政治家是个败笔啊',0.7876054645),(265,3,'三个小时看完了，觉得没有那么惊艳和惊喜吧。',0.9662042260),(266,3,'我不知道东野圭吾是怎么了，因为《嫌疑人》我想一定是更深层次的了解汤川学吧。\n结局就好像有人催促他：“快呀！字数到了，您快交稿吧！”于是就随便糊弄了几下成为了一本书。\n看到中段时，我是希望古芝已经死了，长冈是Boss的双面间谍，看汤川最后的作为，甚至希望他有一些反转。\n我不是作者，也无法成为畅销书的作者，但因为看过他的巅峰，他可以有写的非常烂的书，但如果每挑一本新的都这样让人失望，我宁愿结局时那释然的放松，不如放在青春校园里吧。\n',1.0000000000),(267,3,'很清晰的路线，感觉整个篇幅没有什么特别的地方，最大的亮点是汤川拥有控制权的那段吧',0.9994701743),(268,3,'科技就是禁断的魔术，老生常谈，一把双刃剑，如何使用取决于人。',0.9967297316),(269,3,'流水线产品',0.6081874371),(270,5,'虽然一开头就料到了结尾，案件本身也并没有什么精巧。\n但是却是最近几年来难得的一部看完哭的稀里哗啦的东叔的作品了。\n不管是卖汤川的人设还是怎样，全程汤川都卸下理性（继石神之后又一个让汤川感到痛苦到逃避的人）。\n而结局「法不敌权」，正义又一次败给了邪恶。该受到惩罚的人纹丝不动，如同《仿徨之刃》，就算心中愤恨难平，也许这就是无奈的现实。在绝对的权力面前，普通人只能被动承担命运无情的捉弄。',1.0000000000),(271,3,'李宗霖之前在微博发过这本书的图片，这个故事让我想起了之前看的重力小丑，会更喜欢那个故事一点。这应该是我看的东野圭吾的第一本书，也有点想看他其他的书。',0.9999580979),(272,3,'哦我想掐死某人……',0.3230605721),(273,4,'老套但有效。最触动我的有两点∶\n1.少年少女（通常少年或者少女是天才）共有罪行的绝望的爱，无论是这个还是拉普拉斯的魔女，就莫名的戳。\n2.作为旁观者或者见证者的“侦探”汤川学第一次有了这么深刻的参与感。巧合的是，这学期的剧本写作课老师也提出了这个问题，希望建立“侦探”与案件中当事人的联系。最后一章加深了我对他的爱。\n东野的小说一直在叙事结构和人物关系建立上对我很有启发，议员和情人的秘密恋情这一段好适合被改编到古代宫廷小说（可能是我同时在看万历十五年万历和郑贵妃的缘故）。',1.0000000000),(274,3,'由一个小短篇扩张而来的中长篇，汤川教授又出来了',0.9975824952),(275,3,'故事诉说的很平和，有些地方的推进其实靠的不是严谨的推理，而是新增的证据，整体还是以人性为出发点的案件，这本书写得有点柯南的意思',0.9999923706),(276,3,'结尾的对决，额，感觉稍微有点崩人设了',0.7499725819),(277,4,'这是个相对温暖治愈得推理故事，仇恨像种子，会在心里生根发芽，并枝繁叶茂，可是，人生中并不是只有仇恨这一种情感，那些温馨的，甜蜜的美好画面难道真的可以当作没有发生过一样吗？当然不能。人生短短数十载的光阴，总会有做错事的时候，也总会有忏悔的时候，其实内心的自责比惩罚来的更令人刻骨。\n佛家说放下仇恨是解脱，我更觉得，放下仇恨是一种重新开始生活的勇气。\n最后，汤川真的是太帅了！',1.0000000000),(278,5,'地雷和核武器同为科学家所制造的最低劣，最邪恶的东西……',0.9961044192),(279,5,'那个大贺部长就是逢场做戏，不是爱古芝，作者花了那么多笔墨也不过是掩饰，不值得古芝。其实看的时候内心很想让伸吾完成复仇。',0.9999910593),(280,2,'相比作者的其他几部优秀的，这个挺一般的。而且我觉得那个杀死自由撰稿人的凶手不是很合理，相当一般了。',0.9992941618),(281,5,'私以为是读过的十几本东野圭吾里比较贴近现实的一本，故事手法固然老套，但是人物比较真实，比起圣女的救济，恶意等几篇更贴近现实。不管是物理学家，高中生，议员，死者，凶手，做事的动机至少我觉得是很真实的。',0.9999998808),(282,3,'这本书是禁忌魔术里的最后一篇《猛射》拿出来重新展开写的……内容不说 单就这种行为真是让粉丝伤心啊',0.9999212623),(283,3,'迷上汤川了……',0.8007238507),(284,2,'中规中矩，坏人没得到惩罚，生气。和嫌疑人根本没法比',0.9911288619),(285,3,'对大叔只剩下情怀了。。。',0.9008743167),(286,3,'果然是《猛射》改编的。个人认为，汤川作为科学家，人物形象有些缺乏变化，所以他的系列里故事的发展都比较容易预测。相比之下，加贺系列就要丰富许多。',0.9999999404),(287,3,'这一本故事性不是很强！',0.9468949437),(288,2,'应该给两星半，感觉东野圭吾比较失望的一部作品，没有什么悬疑的气氛，只剩下空洞的世界观，整体感觉很尴尬，结尾也不是很理想，没被惩罚的恶人，没有后续的人物交代，总之有点失望，这次就不推荐了吧！',0.9986577034),(289,4,'三星半，最后结局让人实在是唏嘘，政治家也不过是被人操控的木偶，但是从某一刻开始，他成为了真正的“政治家”。              “科学技术确实如此，它并不是被用于善事，重要的是运用科学技术的人的本心。如果它落入恶人之手，那便成了禁断的魔术。科学家永远不能遗忘这一点。”',1.0000000000),(290,4,'多了一份人性与温暖的汤川，故事中推理并不占主导地位，反而是关于科学的伦理辩解值得思考。庆幸的是结局还算温暖。',1.0000000000),(291,3,'不太行。',0.1495074034),(292,4,'这本竟然是新书？！纳尼',0.1284162551),(293,4,'高科技如果落入坏人的手里，就会变成禁断的魔术………',0.9928073883),(294,1,'好做作，汤川给我的感觉是心机很深，表面大义凛然的样子，可还不是因为这是你了解的学生，利用了他的善良，且最后大臣还是那个大臣，姐姐死的一点意义都没有，加上又并非本格推理，所以作品的意义在哪里？只是为了塑造汤川这个人物吗？本作的目的实在是混乱不堪，同样的时间十分十分不推荐花在这本上。',0.9999827147),(295,3,'科学的中立性，用在好的地方即可为人类造福，用在坏的地方就能为人类带来灾难。\n',0.9998497367),(296,4,'虽然有炒冷饭的嫌疑，但是不失为一个精彩的故事。整个汤川系列看下来，最好的当然是情节，最弱的是主角的塑造。有些故事里的反派其实写的相当出彩，也能让人理解甚至同情他们的境遇和作为。做为主角的汤川反而塑造的有些平面化。',0.9999901652),(297,3,'东野现在写小说大概都考虑要影视化了吧，一部书里，离奇的死亡、政治腐败、婚外情、少男少女的爱恋、高科技、环保主义等等等，什么都有，就是没有了精妙的探案了。',0.9999995828),(298,3,'1. 掌握科学的人就能拥有世界，真的吗，可我的世界就是让我珍惜的人幸福，科学的进步固然重要，但与追求相违背时，我会毫不犹豫的选择幸福。\n\n2. 权势的人注定选择了孤独的道路，最终会放弃所有的弃子，去构建自己的王国，王国内寒冷而孤独。',1.0000000000),(299,3,'平平无奇…为了汤川看的，太失望了',0.2494134903),(300,3,'到时对于汤川对于古芝的师生情影响比较深刻，所有架构前面都交代的差不多了。',0.9980984330),(301,5,'非常不错，天才的犯罪，更让人难以接受。',0.9601157308),(302,2,'作为东叔的小说来说简直糟糕透顶，不知一零年是不是日本政治出了问题，前有白金数据后有禁断魔术，都在揭露高层丑恶的嘴脸\n之所以糟糕或许本书的目的就仅仅是为“沉默的游行”作出铺垫吧，总不能说高明在凶手是一个毫无存在感的人的这点上吧。说本书的汤川是最好的汤川我是反对的，本就没有真正的恶和真正的善，书里面或多或少展现了汤川非理性的面，这也正是我们能在“沉默的游行”里看到完全不一样的汤川的原因。\n结尾汤川出国预测很快就能见面却让草薙和我们足足等了6年，这6年的沉淀汤川已从副教授晋升教授，东叔笔下的伽利略渐渐变得立体！',1.0000000000),(303,3,'汤川越来越bking了\n他对古芝伸吾是真爱了吧',0.9278154969),(304,3,'略失望，汤川的形象更饱满了，但就作品本身而言，落笔有些清浅无力，仿佛在写作中途生硬得换了靶子。',0.2198966146),(305,4,'汤川教授么么哒。',0.6663498878),(306,2,'这本已经不是推理小说了，内容也比较无聊，读后有点失望。',0.4172461927),(307,3,'失望~',0.1539528370),(308,3,'比较平稳的故事。案件不重要，主要表现的是汤川对学弟的爱护，对科学爱好、科学研究的态度。除了研究在行，汤川对人性的解读也是准确的。内海薰仍旧是汤川的好搭档。',1.0000000000),(309,4,'对于无理一窍不通的我，也还是被汤川的人格魅力所折服',0.9965225458),(310,3,'一直在炒冷饭的感觉',0.3577120900),(311,3,'小故事',0.7402064800),(312,3,'一般吧，说不上好坏',0.7423317432),(313,4,'凶手太单薄了，最后汤川和古芝的对话，居然看哭了？？？',0.1514516324),(314,2,'相当一般',0.5262327790),(315,3,'一般了',0.5262327790),(316,4,'质量尚可',0.5857421756),(317,3,'最近的书封面都很好看啊，但是剧情……汤川老师挺帅的',0.9959676266),(318,3,'原来是个反战题材？？？',0.2033917010),(319,3,'呃，这个，东野圭吾是退步了吗？',0.9777981639),(320,3,'没有反转，并无惊艳之处~',0.8259176612),(321,4,'怎么说，感觉都摸透了',0.4106577635),(322,3,'去朋友家附近书店偶然看到的书，两个小时粗略的读过，难得的东野圭吾笔下，早被圈定的报复对象会顺利幸免。但也可能正因为如此，使得这篇小说没有其他那些经典吧。譬如圣女的救赎，譬如虚无的十字架，等等',1.0000000000),(323,3,'又臭又长',0.1349637061),(324,3,'忘了以前在哪看过这本书，竟然又买了一次！还是那个物理学家帮助警察破案。一个物理高材生帮姐姐复仇的故事',0.9776337743),(325,3,'只要放弃一次，就会滋生放弃的习性，原本可以解决的问题也会变的无法解决。',0.8243752718),(326,2,'虽然不太记得短篇的内容，但这本能读出来是在刻意注水，否则无法解释为什么故事如此平淡乏味。',0.5322307944),(327,3,'       科学技术被运用于恶人之手，便成了禁断的魔术。汤川在这这个故事里更像一个有血有肉肉的人物，而不再只是那个天才的科学家。',0.9995111823),(328,5,'真的好看 一直不喜欢伽利略系列 这本有get到汤川的点 在飞机上一口气看完 偷偷掉了点眼泪 喜欢 真喜欢。',0.9997209311),(329,4,'太过心疼姐姐了，难受失眠',0.6786769032),(330,3,'略有彷徨之刃的感觉',0.8514508009),(331,3,'汤川教授就很有代入感啊，所以觉得这本故事书就很好玩。但是故事展开也太粗糙了吧。好多后事也没有交代，看得比较难受',0.9928072095),(332,5,'科技一旦落入心怀不轨的人之手，那便成了禁断的魔术。',0.9676785469),(333,1,'失望',0.1539528370),(334,3,'说实话有点失望的，虽然认可作者笔下的人性，但还是少了很多推理小说的悬疑和精彩',0.9997470975),(335,4,'“所谓放弃，应该是那些上了年纪的人做的事，世界上没有你们这些年轻人无法理解的事。只要放弃一次，就会滋生放弃的习性，原本可以解决的问题也会变得无法解决。”（《禁断的魔术》）很多人说这本书的结尾有点不好：恶人继续，生活回到原轨。但是人生的真相也就是在此，我们做不到从头到尾的坚持，无论是好事或是坏事。恶人总是会继续活着。希望我能够成为汤川学那样看清了生活的真相却依旧热爱生活的人。',1.0000000000),(336,3,'有汤川的都让我觉得无聊，可能我理科太差了8',0.0182782635);
/*!40000 ALTER TABLE `t1` ENABLE KEYS */;
UNLOCK TABLES;



/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-27 23:37:17