-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Дек 19 2024 г., 09:40
-- Версия сервера: 8.0.39
-- Версия PHP: 8.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dinamic-site`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(121) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(9, 'Общая картина Мира', ''),
(10, 'Цивилизации Древнего мира', ''),
(11, 'Христианская Европа в средние века', ''),
(12, 'Славяне. Восточные славяне и их соседи', ''),
(13, 'Формирование Древнерусского гос-ва в 9-11 веках', '');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL,
  `id_category` int DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `id_user`, `title`, `img`, `content`, `status`, `id_category`, `created_date`) VALUES
(18, 50, 'Мировоззрение - система взглядов и представлений о мире', '1734597058__mmydDVce5c.jpg', '<p style=\"text-align: justify; margin-top: 0px; margin-bottom: 0px; line-height: 1.5;\"><span lang=\"ru-RU\" style=\"font-size: 18.67px; font-family: arial, helvetica, sans-serif;\">1) <strong>Мировоззрение</strong> &ndash; это целостная система взглядов и представлений о мире; это система обобщенных взглядов на объективный реальный мир и место человека в нем, на отношение людей к окружающей их среде, а также их убеждения, идеалы, принципы познания и деятельности (М &ndash; мировоззрение).</span></p>\r\n<p style=\"text-align: justify; margin-top: 0px; margin-bottom: 0px; line-height: 1.5;\"><span lang=\"ru-RU\" style=\"font-size: 18.67px; font-family: arial, helvetica, sans-serif;\">Мировоззрение образуется на основе знаний: естественнонаучных, социально-исторических, технических и философии; носителем мировоззрения является личность, социальная группа.</span></p>\r\n<p style=\"text-align: justify; margin-top: 0px; margin-bottom: 0px; line-height: 1.5;\"><span lang=\"ru-RU\" style=\"font-size: 18.67px; font-family: arial, helvetica, sans-serif;\">Мировоззрение имеет огромный практический смысл, влияет на норму поведения, жизненные стремления, интересы (хобби), труд и быт людей (бесплатный, за деньги).</span></p>\r\n<p style=\"text-align: justify; margin-top: 0px; margin-bottom: 0px; line-height: 1.5;\"><span lang=\"ru-RU\" style=\"font-size: 18.67px; font-family: arial, helvetica, sans-serif;\">&laquo;По своему содержанию и наполнению Мировоззрение может быть научным и ненаучным&raquo;. Оно отражает реальное положение и условия жизни людей.</span></p>\r\n<p style=\"text-align: justify; margin-top: 0px; margin-bottom: 0px; line-height: 1.5;\"><span lang=\"ru-RU\" style=\"font-size: 18.67px; font-family: arial, helvetica, sans-serif;\"><u style=\"text-decoration-skip-ink: none;\">Ненаучное М</u> (религиозное, идеалистическое) &ndash; оно считает, что Бог сотворил мир &ndash; он обладал сознанием и к нему пришла идея.</span></p>\r\n<p style=\"text-align: justify; margin-top: 0px; margin-bottom: 0px; line-height: 1.5;\"><span lang=\"ru-RU\" style=\"font-size: 18.67px; font-family: arial, helvetica, sans-serif;\"><u style=\"text-decoration-skip-ink: none;\">Научное М </u>&ndash; считает, что природа сама себя сотворила (без участия Бога), произошла эволюция.</span></p>\r\n<p style=\"text-align: justify; margin-top: 0px; margin-bottom: 0px; line-height: 1.5;\"><span lang=\"ru-RU\" style=\"font-size: 18.67px; font-family: arial, helvetica, sans-serif;\">Разница между ними в том, что религиозное М считает, что сначала было сознание, а потом материя. А научное М считает, что сначала была материя, а потом сознание (у человека).</span></p>\r\n<p style=\"text-align: justify; margin-top: 0px; margin-bottom: 0px; line-height: 1.5;\"><span lang=\"ru-RU\" style=\"font-size: 18.67px; font-family: arial, helvetica, sans-serif;\"><em>Френсис Бекон: &laquo;Знание &ndash; сила, знание &ndash; власть&raquo;</em></span></p>\r\n<p style=\"text-align: justify; margin-top: 0px; margin-bottom: 0px; line-height: 1.5;\"><span lang=\"ru-RU\" style=\"font-size: 18.67px; font-family: arial, helvetica, sans-serif;\">2) <u style=\"text-decoration-skip-ink: none;\">Материальность окружающего мира</u></span></p>\r\n<p style=\"text-align: justify; margin-top: 0px; margin-bottom: 0px; line-height: 1.5;\"><span lang=\"ru-RU\" style=\"font-size: 18.67px; font-family: arial, helvetica, sans-serif;\">Оба мировоззрения согласны, что мир материальный. Материальность предметов и явлений окружающей среды обнаруживается в том, что они воздействуют на наши органы чувств, отражаются в ощущениях.</span></p>\r\n<p style=\"text-align: justify; margin-top: 0px; margin-bottom: 0px; line-height: 1.5;\"><span lang=\"ru-RU\" style=\"font-size: 18.67px; font-family: arial, helvetica, sans-serif;\">Способом существования материи является <strong>движение</strong>. Все в мире находится в движении, постоянно изменяется. Не существуют таких предметов, которые были бы абсолютно неподвижны и неизменны. Даже состояние покоя всегда относительно.</span></p>\r\n<p style=\"text-align: justify; margin-top: 0px; margin-bottom: 0px; line-height: 1.5;\"><span lang=\"ru-RU\" style=\"font-size: 18.67px; font-family: arial, helvetica, sans-serif;\"><em>Гераклит: &laquo;В мире всё течет, всё изменяется&raquo;; &laquo;Нельзя войти в одну и ту же реку дважды&raquo;</em></span></p>\r\n<p style=\"text-align: justify; margin-top: 0px; margin-bottom: 0px; line-height: 1.5;\"><span lang=\"ru-RU\" style=\"font-size: 18.67px; font-family: arial, helvetica, sans-serif;\">Движение, понимаемое как изменение вообще, как вечный процесс обновления &ndash; это коренное свойство материи, способ её существования. Материя переходит из одного вида в другое.</span></p>\r\n<p style=\"text-align: center; margin-top: 0px; margin-bottom: 0px; line-height: 1.5;\"><span lang=\"ru-RU\" style=\"font-size: 18.67px; font-family: arial, helvetica, sans-serif;\"><strong>Нет вечных предметов, процессов и явлений</strong></span></p>\r\n<p style=\"text-align: justify; margin-top: 0px; margin-bottom: 0px; line-height: 1.5;\"><span lang=\"ru-RU\" style=\"font-size: 18.67px; font-family: arial, helvetica, sans-serif;\">Наука, открыв законы сохранения, подтверждает, что материя претерпевает самые невероятные изменения, но никогда не превращается в &laquo;<u style=\"text-decoration-skip-ink: none;\">ничто</u>&raquo; и не возникает из ничего.</span></p>\r\n<p style=\"text-align: justify; margin-top: 0px; margin-bottom: 0px; line-height: 1.5;\"><span lang=\"ru-RU\" style=\"font-size: 18.67px; font-family: arial, helvetica, sans-serif;\">Материя вечна, не сотворима, не уничтожима &ndash; она существовала всегда и везде, всегда и везде будет существовать, безгранична в пространстве и во времени.</span></p>\r\n<p style=\"text-align: justify; margin-top: 0px; margin-bottom: 0px; line-height: 1.5;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><span lang=\"ru-RU\" style=\"font-size: 18.67px;\">Наука считает, что первичной материей была космическая пыль.</span><span style=\"font-size: 18.67px;\">&nbsp;</span></span></p>', 1, 9, '2024-12-19 18:13:18'),
(19, 50, 'Версии происхождения Вселенной и Земли', '1734598060_4278-5.jpg', '<p><span style=\"font-family: arial, helvetica, sans-serif;\">Как появилась Вселенная, которую мы знаем? И как мы объясним ее происхождение? Несомненно, все остальные свидетельства и данные, собранные за эти годы космологами, указывают на то, что все это могло начаться с \"большого взрыва\". Но что, если есть еще? В 1927 году бельгийский астроном Жорж Леметр стал первым, кто предложил теорию расширяющейся Вселенной (позже подтвержденную Эдвином Хабблом). Он предположил, что расширяющаяся Вселенная может быть прослежена до особой точки, которую он назвал \"первичным атомом\", назад во времени. Это заложило основу современной теории Большого Взрыва. Что такое теория большого взрыва? Теория Большого взрыва - это объяснение, основанное в основном на математических моделях, того, как и когда возникла Вселенная. Космологическая модель Вселенной, описанная в теории Большого взрыва, объясняет, как она первоначально расширилась из состояния бесконечной плотности и температуры, известного как изначальная (или гравитационная) сингулярность. За этим расширением последовала космическая инфляция и резкое падение температуры. Во время этой фазы Вселенная раздувалась с гораздо большей скоростью, чем скорость света (в 1026раз). Впоследствии Вселенная была разогрета до такой степени, что элементарные частицы (кварки, лептоны и так далее) до постепенного понижения температуры (и плотности) привели к образованию первых протонов и нейтронов. Через несколько минут после расширения протоны и нейтроны объединяются, образуя первичные ядра водорода и гелия-4. Предполагаемый радиус наблюдаемой Вселенной в течение этой фазы составлял 300 световых лет. Первые звезды и галактики появились примерно через 400 миллионов лет после этого события. Важнейшим элементом модели Большого Взрыва является космическое сверхвысокочастотное фоновое излучение (Реликтовое излучение), представляющий собой электромагнитное излучение, оставшееся со времен зарождения Вселенной. Реликтовое излучение остается самым убедительным доказательством большого взрыва.</span><br style=\"list-style-type: none;\"><br style=\"list-style-type: none;\"><br></p>', 1, 9, '2024-12-19 18:47:40'),
(20, 50, 'Цивилизации Древнего Востока', '1734598592_orient.jpg', '<p><span style=\"font-family: arial, helvetica, sans-serif;\">Древний Восток - это мир государств, народов, племен, протянувшихся от северного побережья Африки до Тихого океана.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Большинство ученых считают началом древневосточного этапа истории человечества рубеж 4&mdash;3-го тысячелетий до н. э., т. е. время появления первых государств в долине Нила и на юге Месопотамии, концом&nbsp;&mdash; первые века новой эры.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Земледельческие цивилизации Древнего Востока окружали многочисленные полукочевые и кочевые племена амореев, арабов, киммерийцев, скифов, сарматов, суингов.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Между древними цивилизациями были как различия, так и сходства, причём, если различия носили преимущественно внешний характер, то сходства наблюдались в основном во всех цивилизациях: во всех странах Древнего Востока происходили сходные исторические процессы.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Важнейший из них &ndash; становление государственности и появление городской цивилизации. В различных уголках мира сравнительно небольшие поселки за довольно короткое время превращались в многолюдные укреплённые города.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">На раннем этапе власть находилась в руках старейшин. Она покоилась на их личном авторитете и на той поддержке, которую им обязаны были оказывать в случае необходимости родственники.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Через 100&mdash;150 лет картина изменилась. Власть сосредоточилась в руках правителя города&nbsp;&mdash; предводителя воинов или главного жреца. Он опирался уже на дружину, которую сам содержал и на аппарат управления, состоявший из разного рода управляющих, хранителей, надзирателей и т. п. Они руководили общественными работами, собирали с населения налоги на общественные и государственные нужды, в том числе и на содержание дворцов, храмов. Используя свою власть, правители и верхушка общества стремились присваивать всё большую долю ценностей, содержавшихся трудом их сограждан. В некогда однородном обществе произошло резкое имущественное расслоение. Родовые отношения вытеснялись социальными, общественными: стала важна не принадлежность человека к тому или иному роду, а место, которое он занимает на &laquo;общественной лестнице&raquo;. Обедневшие и попавшие в зависимость от более удачливых соседей земледельцы переставали быть полноправными гражданами. Появились рабы, которые считались полной собственностью своего хозяина.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Рабство &ndash; состояние полной зависимости, подчиненности от кого-либо или чего-либо; общественный строй, основанный на владении рабами; полное или частичное лишение человека права выбора.&nbsp;&nbsp;Рабство в больших или маленьких масштабах известно во всех странах Древнего Востока.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Интересы различных групп населения постоянно сталкивались, и при этом возникали самые непредсказуемые союзы.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Город с прилегавшей к нему территорией представлял собой древнейший тип государства, центром такого города-государства были дворец правителей и храм местного божества.&nbsp;</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Древневосточный храм был не только местом поклонения божеству, но и главным шагом политической, хозяйственной, военной, культурной жизни.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">В Египте, Двуречье, в долине Инда, Китае города-государства возникали самостоятельно.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Повсюду ранние города-государства враждовали с соседями, стремились завоевать их или полностью подчинить союз городов правителю одного из них. Так при благоприятных условиях образовывались большие царства и даже &laquo;мировые&raquo; империи (Вавилон, Ассирия и т.д.). Но единство таких империй держалось лишь силой военного преимущества. Все древневосточные империи были недолговечными и в максимальных своих границах держались всего несколько десятилетий, хотя были и сплочения.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">На Древнем Востоке человечество вышло впервые из состояния первобытности и создало первые цивилизации. Здесь были заложены основы, надолго определившие дальнейший ход всемирной истории. Именно на Востоке были сделаны величайшие открытия в области материальной и духовной культуры: одомашнены многие виды животных: коза, овца, бык; выведены культурные злаки и растения: пшеница, рис, ячмень, просо, лён, хлопок, чай, виноград; выработаны ценные земледельческие навыки. Люди научились обрабатывать и добывать металлы: серебро, медь, железо, золото; изготавливать стекло, фаянс, фарфор, бумагу.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Начали возводится гигантские архитектурные сооружения (зиккураты в Месопотамии; храмы, пирамиды в Египте, Великая Китайская стена).</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">На Древнем Востоке появилась письменность &ndash; самое важное из древневосточных изобретений. Она сохранила для нас древние эпические сказания и песни, легенды, исторические придания, труды по различным областям знаний: математике, астрономии, географии, медицине. Так библиотека Ассирийского царя Ашшурбанапа́ла (669 &ndash; 626 г. до н. э.), дошедшая до нас, насчитывает около 30 тыс. глиняных табличек: медицинские рецепты, двуязычные (шумеро &ndash; аккадские) словари, гадательные тексты, работы астрономов и предсказателей, математические задачи.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Выдающихся успехов в астрономии достигли вавилоняне: они могли предсказывать солнечные и лунные затмения, определять продолжительность солнечного года: с точностью до 4 мин. Труды вавилонских астрономов Набуриану (Набу-Риманну) и Кидинну (4 в. до н. э.) были переведены на греческий язык. Вавилонская система мер весов легла в основу многих последующих и была окончательно вытеснена из употребления только в XIX в.&nbsp; с введением метрической системы.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Мы делим круг на 360 градусов, час на 60 минут, а минуту на 60 секунд, используя месопотамскую 60-ричную систему счисления.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Из Месопотамии дошло несколько сборников законов (первый в мире свод законов царя Вавилонского Хаммурапи 1800 г. до н. э.). Самые древние записанные эпические поэмы происходят из Месопотамии (&laquo;Э́пос о Гильгаме́ше&raquo;, или поэма &laquo;О всё видавшем&raquo;). Огромные эпические произведения &laquo;&laquo;Махабхарата&raquo; и &laquo;Рамаяна&raquo;&raquo; были сложены в древней Индии.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">На основе древневосточной культуры и литературы создавалась Библия.</span></p>', 1, 10, '2024-12-19 18:56:32'),
(21, 50, 'Древний Египет', '1734600476_scale_1200.jpg', '<p><span style=\"font-family: arial, helvetica, sans-serif;\">Египет &ndash; одна из древнейших цивилизаций на Земле, располагавшиеся на самом севере Африки, омываемая Средиземноморским морем. Слово &laquo;Египет&raquo; происходит от греческого Aegyptos и&nbsp;и было самым первым названием древнего египетского города Мемфис.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Мемфис был первой столицей Египта и крупнейшим религиозным и торговым центром. О его высоком статусе можно поблагодарить греков, которые в свое время назвали в его честь всю страну, но сами египтяне называли ее Кемет, что на коптском языке означало Черная Земля, так называли темную плодородную землю вдоль реки Нил, где образовались первые поселения. Позже страна обрела новое название Misr, что означало &laquo;страна&raquo;; оно все еще употребляется среди населения Египта и по сей день. Египет процветал многие тысячи лет (8000 до н.э. до 30г. до н.э.) и был независимым государством, чья культура, коренным образом повлияла на развитие человечества в различных областях, начиная от науки, и заканчивая техническим развитием и религией. Величественные памятники культуры, которыми до сих славятся Древний Египет отражает всю глубину и богатство египетской культуры, способные оказать колоссальное влияние на многие цивилизации, в том числе Грецию и Рим.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Главной причиной такой большой популярностью Египетской культуры стало величие и размах архитектурного опыта человека. Огромные памятники, гробницы, храмы, произведения искусства прославляли жизнь и были живым напоминанием того, на что способен человек и что может достичь в лучших его проявлениях. Однако, в массовой культуре Древний Египет нередко ассоциируется с загробным миром и погребальными ритуалами, там самым напоминая, что значит быть человеком, и о силе и цели воспоминаний.</span></p>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif;\">Летопись Египетской истории начинается между 3400 и 3200гг н.э., когда негадской народностью было изобретено иероглифическое письмо..</span></div>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Для египтян, мирская жизнь была всего лишь одним аспектом этого бесконечного путешествия. Душа была бессмертна и является временным вместилищем для человеческого тела. После смерти, человек отправлялся на суд в Зал Правды, и в случае, если он был оправдан, смог уйти в бесконечный рай &ndash; Тростниковое Поле или Поле Иару(Иалу), которое было живым отражением человеческой жизни на Земле. Попав в рай, человек смог жить в мире и согласии с теми людьми, с кем жил на Земле, и даже с домашними питомцами, в той же деревне, у того же ручья, около тех же деревьях, возле которых он отправился в мир иной. Но для достижения такой высокой цели, в вечный рай попадали лишь те, кто вел праведный образ жизни, чтил и исполнял волю богов в самом идеальном месте - земле Египта.</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif;\">Египет насчитывает многовековую историю, которая исходит задолго до того, когда была изобретена письменность, когда люди почитали богов и сооружали во их имя памятники и храмы. Основным промыслом для египтян был развод скота в том регионе Африке, которая известная как пустыня Сахара примерно в 8000г. до н.э. Доказательство этому служит древние артефакты, найденные в ходе археологических раскопок, указывая на сельскохозяйственную активность в то время. Эта земля была наиболее плодородна; охотники, кочевники и собиратели зачастую страдали от жажды, и единственным местом, где они могли найти источник живительной влаги, была Долина реки Нил. Первые поселения были образованы еще до 6000л. до н.э.</span></p>', 1, 10, '2024-12-19 19:27:56'),
(22, 50, 'Христианская Европа в средние века: общая характеристика периода', '1734600846_unnamed.jpg', '<div><span style=\"font-family: arial, helvetica, sans-serif;\">Под эпохой средних веков принято понимать исторический периодов рамки ко&shy;торого входит зарождение и становление европейской сред&shy;невековой цивилизации. Современные исследователи склонны выделять время с середины XVI по начало XVII вв. как самостоятельную эпоху раннего Нового времени и ограни&shy;чивать его кануном историю собственно средних веков. Имен&shy;но в этот период формируется европейский мир в современ&shy;ных его пределах и этнических границах, начинается поло&shy;са географических и научных открытий, появляются пер&shy;вые зачатки современной цивилизации.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif;\">Отечественная медиевистика, отказавшись сегодня от трактовки Средневековья лишь как периода &laquo;темных веков&raquo; и &laquo;мракобесия&raquo;, стремится объективно осветить события и явления, превратившие Европу в качественно новую циви&shy;лизацию. В новейших исследованиях Средневековье пред&shy;стает перед нами как эпоха со своими особыми социальны&shy;ми отношениями и особой культурой. Социально-классовая структура средневекового европейского общества определя&shy;лась феодальным способом производства, его основными классами были собственники земли (феодалы) и крестьяне. Важный социальный слой периода зрелого феодализма об&shy;разовывали также горожане. Характерной чертой феодаль&shy;ного общества Средневековья являлась его сословно-корпоративная структура. Как для крестьян, так и для феодалов было важно не столько преумножить материальное богат&shy;ство, сколько сохранить социальный статус. Стремление к непрестанному увеличению доходов в этот период не прояв&shy;ляли ни монастыри, ни крупные землевладельцы, ни сами крестьяне. Права отдельных групп-сословий закреплялись юридически. Корпоративность феодального европейского общества проявлялась и в том, что большую роль в нем иг&shy;рали разного рода союзы: сельские и городские общины, братство, ремесленные цехи и купеческие гильдии в горо&shy;дах, рыцарские и монашеские ордена.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif;\">Религия и церковь заполняли всю жизнь человека сред&shy;невековой эпохи от рождения до смерти. Церковь претендо&shy;вала на то, чтобы управлять обществом, выполняла множе&shy;ство функций, которые позднее стали принадлежать госу&shy;дарству. Монополизировав в обществе культуру, науку, гра&shy;мотность, церковь обладала огромными ресурсами, предоставлявшими ей человека феодальной эпохи. По мнению совре&shy;менного историка Бишока, церковь &laquo;была больше чем осно&shy;ва средневековой культуры, она была самой средневековой культурой&raquo;. Христианство стало важнейшим фактором ев&shy;ропейской культурной общности, именно в средние века оно превратилось в одну из мировых религий. Христианская цивилизация утверждалась не просто на руинах цивилиза&shy;ции античной, но и на ее основе, не только отрицала пре&shy;жние ценности, но и переосмысливала их. Христианская церковь, ее централизация, иерархия и богатство, ее миро&shy;понимание, право, этика и мораль &mdash; создали единую фео&shy;дальную идеологию. Христианство в значительной мере и определило отличие европейской средневековой цивилизации от цивилизаций других континентов той же эпохи.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif;\">В заключительный период Средневековья, под воздействи&shy;ем развития обмена, товарного производства и денежных отношений, эволюция общества заметно ускорилась. Все возрастающую роль играет средневековый город. Именно е развитием городов связано зарождение политико-правовой системы Нового Времени.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif;\">Многие явления в жизни современных народов и госу&shy;дарств уходят своими корнями в средневековое прошлое: складывание социальной структуры общества, формирова&shy;ние наций и национальных культур и т. д. Во многих стра&shy;нах, и по сей&nbsp;день живы средневековые традиции, в средние века образовалось большинство ныне существующих госу&shy;дарств. В эту эпоху возродились к жизни многие античные города и возникли новые. Культура стала более доступной широким массам благодаря изобретению печатного станка, открытию университетов и множества школ&raquo; Со времен сред&shy;невековья люди стали пользоваться фарфоровой посудой, зеркалами, вилками, мылом, очками, пуговицами, механическими часами и многими другими вещами, без которых обыденная жизнь сегодня немыслима. Для развития воен&shy;ного дела решающее значение имел переход к огнестрельному оружию. Значительные изменения произошли в пред&shy;ставлении людей о мироздании. Замечательные произведе&shy;ния искусства средних веков до сих пор остаются непрев&shy;зойденными шедеврами и побуждают человеческий дух к новым творческим исканиям.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif;\">Средние века начались с Великого переселения народов; С конца IV в. германцы целыми племенами снимались е насиженных мест и вторгались в пределы Западной Рим&shy;ской империи. На захваченных землях германские племена создали свои государства: вандалы &mdash; в Северной Африке вестготы (западные готы) - в Испании, остготы (восточные готы) &mdash; в Италии, англы и саксы &mdash; на острове Британия, франки - в Галлии. Стоявшие во главе их короли были, прежде всего, племенными вождями (конунгами), предво&shy;дителями боевых дружин. В королевствах не существовало единых законов, местное население продолжало жить по римским законам, а германцев судили на основании их соб&shy;ственных древних обычаев. Единственной организацией, уцелевшей после завоевания, была христианская церковь, епископы которой пользовались большим влиянием на на&shy;селение. Германцы постепенно приняли христианскую ре&shy;лигию. Для нужд церковного богослужения, написания ле&shy;тописей, королевских указов и других документов исполь&shy;зовалась латинская письменность, при церквах и монасты&shy;рях открывались школы, в которых готовили священников.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif;\">Города на территории Западной Римской империи в пос&shy;ледние века ее существования пришли в упадок, многие из них были разорены варварами. Они сохранились лишь в Италии, Испании, на Средиземноморском побережье Фран&shy;ции; в остальных областях и странах до X в. города были немногочисленны и невелики по размеру.</span></div>\r\n<p>&nbsp;</p>', 1, 11, '2024-12-19 19:34:06');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `admin` tinyint NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created`) VALUES
(50, 1, 'VladimirMukhin00', 'vladimir.zed30@gmail.com', '$2y$10$sCoW/YPKhozZogWMO7wBpuVotVbh23k7HL81VisvGUhO8.ic2wVf2', '2024-12-14 08:43:32'),
(53, 0, 'vladimir00', 'vladimir.zed3022@gmail.com', '$2y$10$0sXw2C7kinTe6/ByjswRvOFwBT1soqW9kbUwglpqEvZhpxMHz0qke', '2024-12-18 10:29:18');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
