-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2022 at 03:20 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitwww`
--

-- --------------------------------------------------------

--
-- Table structure for table `komentarze`
--

CREATE TABLE `komentarze` (
  `id` int(11) NOT NULL,
  `idprzepisu` int(11) NOT NULL,
  `login` varchar(20) NOT NULL,
  `tresc` varchar(200) NOT NULL,
  `awatar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentarze`
--

INSERT INTO `komentarze` (`id`, `idprzepisu`, `login`, `tresc`, `awatar`) VALUES
(60, 29, 'wojtek', 'Bardzo smaczne', 'awatary/Bez nazwy.png');

-- --------------------------------------------------------

--
-- Table structure for table `oceny`
--

CREATE TABLE `oceny` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `idprzepisu` int(11) NOT NULL,
  `ocena` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oceny`
--

INSERT INTO `oceny` (`id`, `login`, `idprzepisu`, `ocena`) VALUES
(36, 'l', 36, 1),
(37, 'lonio103', 36, 5),
(38, 'lonio103', 29, 3),
(39, 'lonio103', 37, 3),
(40, 'lonio103', 14, 2),
(41, 'lonio103', 25, 5),
(42, 'Harnas', 14, 4);

-- --------------------------------------------------------

--
-- Table structure for table `przepisy`
--

CREATE TABLE `przepisy` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `obrazek` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `skladnik1` varchar(500) COLLATE utf8_polish_ci NOT NULL,
  `ilosc1` varchar(500) COLLATE utf8_polish_ci NOT NULL,
  `krok1` varchar(500) COLLATE utf8_polish_ci NOT NULL,
  `krok2` varchar(500) COLLATE utf8_polish_ci DEFAULT NULL,
  `krok3` varchar(500) COLLATE utf8_polish_ci DEFAULT NULL,
  `krok4` varchar(500) COLLATE utf8_polish_ci DEFAULT NULL,
  `krok5` varchar(500) COLLATE utf8_polish_ci DEFAULT NULL,
  `krok6` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `krok7` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `krok8` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `krok9` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `krok10` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `kategoria` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `przepisy`
--

INSERT INTO `przepisy` (`id`, `nazwa`, `obrazek`, `skladnik1`, `ilosc1`, `krok1`, `krok2`, `krok3`, `krok4`, `krok5`, `krok6`, `krok7`, `krok8`, `krok9`, `krok10`, `kategoria`) VALUES
(14, ' Letnia owsianka z malinami i pra??onymi pestkami dyni', 'letniaowsianka.webp', '\r\n<p>mleko 1,5%</p>\r\n\r\n<p>p??atki ??ytnie</p>\r\n\r\n<p>maliny ??wie??e</p>\r\n\r\n<p>pestki dyni</p>\r\n', '<p>4 szklanki</p>\r\n\r\n<p>10 ??y??ek\r\n\r\n</p>\r\n<p>1 szklanka\r\n\r\n</p>\r\n<p>6 ??y??ek\r\n\r\n</p>', 'Krok 1\r\nZagotuj mleko i dodaj do niego p??atki, nast??pnie gotuj przez ok. 5 minut.', 'Krok 2\r\nPestki dyni upra?? na suchej patelni, uwa??a', 'Krok 3\r\nMaliny op??ucz pod bie????c?? wod??, os??cz z na', 'Krok 4\r\nOwsiank?? przelej do miseczki.', 'Krok 5\r\nGotow?? owsiank?? udekoruj malinami i pestka', '', '', '', '', '', '1200sniadanie'),
(20, ' Grillowany schab z pieczonymi m??odymi ziemniaczkami', 'grillowanyschab.webp', '<p>grillowany schab wieprzowy</p><p>Przyprawa do grilla Knorr</p>\r\n<p>m??ode ziemniaki\r\n\r\n</p>\r\n<p>kapusta peki??ska\r\n\r\n</p>\r\n<p>papryka czerwona\r\n\r\n</p>\r\n<p>sok marchwiowy\r\n\r\n</p>', '<p>4 plastry\r\n\r\n</p>\r\n<p>2 ??y??eczki\r\n\r\n</p>\r\n<p>560 gram??w\r\n\r\n</p>\r\n<p>100 gram??w\r\n\r\n</p>\r\n<p>1 sztuka\r\n\r\n</p>\r\n<p>3 szklanki\r\n\r\n</p>', 'Krok 1\r\nUmyj mi??so i osusz. Natrzyj dok??adnie przypraw?? Knorr do grilla i odstaw na 15 minut do lod??wki, aby mi??so si?? zamarynowa??o. Mi??so usma?? na patelni grillowej, bez dodatku t??uszczu.', 'Krok 2\r\nZiemniaki dok??adnie umyj, osusz, zawi?? poj', 'Krok 3\r\nPrzygotuj sur??wk??: kapust?? i papryk?? op??uc', 'Krok 4\r\nWy?????? wszytki elementy potrawy na talerz.', 'Krok 5\r\nDo obiadu wypij sok marchwiowy.', '', '', '', '', '', '1200obiad'),
(21, ' Indyk pieczony z ry??em br??zowym', 'indykpieczony.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1\r\nUmyj pier?? z indyka i osusz. Dodaj do przyprawy Knorr Naturalnie Smaczne ???Tagliatelle z kurczakiem??? odrobin?? wody i 1 ??y??eczk?? oliwy. Wymieszaj.\r\n\r\n', '', '', '', '', '', '', '', '', '', '2000obiad'),
(24, ' Schab pieczony z sosem gulaszowym', 'schabpieczony.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1\r\nPrzygotuj zalew?? - po????cz Knorr Naturalnie Smaczne ???Gulasz\" z 1 ??y??eczk?? oleju. Wysmaruj uprzednio umyty schab i piecz w temperaturze 190 ??C oko??o 50 minut.\r\n\r\n', 'Krok 2\r\nZiemniaki ugotuj i posyp zielonym koprem.', 'Krok 3\r\nUmyj bak??a??ana, przekr??j wzd??u?? na po??ow?? ', 'Krok 4\r\nMi????sz po????cz z posiekanym koprem, pokrojo', 'Krok 5\r\nMarchew i seler umyj, a nast??pnie zetrzyj ', '', '', '', '', '', '2000obiad'),
(25, ' Zdrowy koktajl pietruszkowy', 'koktajlpietruszkowy.webp', '<p>natka pietruszki\r\n\r\n</p>\r\n<p>banan\r\n\r\n</p>\r\n<p>gruszka</p>\r\n<p>kiwi</p>\r\n<p>Herbata Lipton o smaku owoc??w cytrusowych\r\n\r\n</p>', '<p>1 p??czek\r\n\r\n</p>\r\n<p>2 sztuki\r\n\r\n</p>\r\n<p>2 sztuki\r\n\r\n</p>\r\n<p>3 sztuki\r\n\r\n</p>\r\n<p>1.5 szklanki\r\n\r\n</p>', 'Krok 1\r\nZaparz herbat?? Lipton owoce cytrusowe i pozostaw do wystygni??cia.', 'Krok 2\r\nW mi??dzyczasie przygotuj i rozdrobnij owoc', 'Krok 3\r\nDodaj wystudzon?? herbat?? i blenduj do uzys', '', '', '', '', '', '', '', '1500sniadanie'),
(29, 'Jogurtowy pudding z nasionami chia\r\n', 'jogurtpudding.webp', '<p>ma??y jogurt</p>\r\n<p>nasiona chia\r\n\r\n</p>\r\n<p>mango\r\n\r\n</p>', '<p>4 sztuki\r\n\r\n</p>\r\n<p>8 ??y??ek\r\n\r\n</p>\r\n<p>280 gram??w\r\n\r\n</p>', 'Krok 1\r\nDo jogurtu wsyp nasiona chia i dok??adnie wymieszaj przez d??u??sz?? chwil??. Wstaw do lod??wki przynajmniej na 2h. Jednak najlepsze efekty uzyskujemy zostawiaj??c pudding na ca???? noc. Po wyj??ciu z lod??wki podawaj pudding z kawa??kami lub ze zmiksowanym owocem mango.\r\n\r\n', '', '', '', '', '', '', '', '', '', '1500sniadanie'),
(30, ' Twaro??ek homogenizowany naturalny z owocami goji i p??atkami zbo??owymi', 'twaro.webp', '<p>Twaro??ek naturalny homogenizowany</p>\r\n<p>p??atki owsiane b??yskawiczne\r\n\r\n</p>\r\n<p>owoce goji\r\n\r\n</p>', '<p>600 gram??w\r\n\r\n</p>\r\n<p>12 ??y??ek\r\n\r\n</p>\r\n<p>4 ??y??ki\r\n\r\n</p>', 'Krok 1\r\nDo twaro??ku dodaj p??atki owsiane b??yskawiczne.\r\n\r\n', 'Krok 2\r\nOwoce goi sparz wrz??c?? wod??, chwil?? odczek', '', '', '', '', '', '', '', '', '2000sniadanie'),
(34, ' Kanapki z past?? jajeczn?? ze szczypiorkiem', 'kanapkizpastajajeczna.webp', '<p>jajka</p>\r\n\r\n<p>chleb razowy kromki</p>\r\n\r\n\r\n<p>Majonez Hellmann\'s Babuni</p>\r\n\r\n\r\n<p>Pieprz czarny z Wietnamu mielony Knorr</p>\r\n\r\n\r\n<p>s??l</p>\r\n\r\n\r\n<p>szczypiorek</p>\r\n\r\n\r\n<p>papryka</p>\r\n\r\n\r\n<p>sa??ata mas??owa</p>\r\n\r\n<p>pomidory koktajlowe</p>\r\n', '<p>4 sztuki\r\n\r\n</p>\r\n<p>4 sztuki\r\n\r\n</p>\r\n<p>3 ??y??ki\r\n\r\n</p>\r\n<p>1 szczypta\r\n\r\n</p>\r\n<p>1 szczypta\r\n\r\n</p>\r\n<p>1 p??czek\r\n\r\n</p>\r\n<p>1 sztuka\r\n\r\n</p>\r\n<p>4 listk??w\r\n\r\n</p>\r\n<p>4 sztuki\r\n\r\n</p>', 'Krok 1 Jajka ugotuj na twardo w lekko osolonej wodzie nast??pnie obierz. Warzywa umyj. Papryk??, jajka oraz szczypiorek posiekaj i prze?????? do miski.', ' Krok 2 Dodaj majonez, dopraw sol?? i pieprzem ??? wymieszaj. No kromce pieczywa u?????? sa??at?? nast??pnie past?? jajeczn?? i udekoruj przekrojonymi na p???? pomidorkami koktajlowymi.\r\n\r\n', '', '', '', '', '', '', '', '', '2000sniadanie'),
(35, ' Makaron z kurczakiem w sosie', 'makaronzkurczakiem.webp', '<p>makaron gryczany</p>\r\n\r\n<p>pier?? z kurczaka\r\n\r\n</p>\r\n<p>cukinia\r\n\r\n</p>\r\n<p>papryka czerwona\r\n\r\n</p>', '<p>280 gram??w\r\n\r\n</p>\r\n<p>200 gram??w\r\n\r\n</p>\r\n<p>400 gram??w\r\n\r\n</p>\r\n<p>300 gram??w\r\n\r\n</p>', 'Krok 1\r\nUgotuj makaron zgodnie z instrukcj?? na opakowaniu.', 'Krok 2 \r\nKawa??ki piersi z kurczaka podsma?? na Rama sma?? jak szef kuchni wariant z oliw?? z oliwek, dodaj??c po chwili pokrojon?? cukini?? i papryk??. Du?? do czasu a?? warzywa b??d?? mi??kkie, dodaj??c pod koniec sos Zapiekanka makaronowa z szynk?? (wymieszany z odrobin?? wody).\r\n\r\n', '', '', '', '', '', '', '', '', '1200obiad'),
(36, ' Kurczak pieczony z warzywami i sur??wka z pora', 'pieczonykurak.webp', '<p>pier?? z kurczaka\r\n\r\n</p>\r\n<p>Przyprawa do kurczaka Knorr\r\n\r\n</p>\r\n<p>pomidorki koktajlowe\r\n\r\n</p>\r\n<p>pomidory suszone na s??o??cu\r\n\r\n</p>\r\n<p>ma??a cebula\r\n\r\n</p>\r\n<p>czerwona papryka\r\n\r\n</p>', '<p>3 sztuki\r\n\r\n</p>\r\n<p>1 ??y??ka\r\n\r\n</p>\r\n<p>250 gram??w\r\n\r\n</p>\r\n<p>105 gram??w\r\n\r\n</p>\r\n<p>3 sztuki\r\n\r\n</p>\r\n<p>1 sztuka\r\n\r\n</p>', 'Krok 1\r\nPiekarnik rozgrzej do temperatury 180 ??? 200C. Warzywa dok??adnie umyj. Ziemniaki pokr??j w ??wiartki (obgotuj na p????twardo), pomidorki na po????wki, papryk?? w niezbyt drobne kawa??ki, cebul?? w ??wiartki, a czosnek drobno posiekaj. Suszone pomidory pokr??j w paseczki, a oliwki na po????wki.', 'Krok 2\r\nKurczaka natrzyj przypraw?? Knorr i u?????? w ??aroodpornym naczyniu.\r\n\r\n', 'Krok 3\r\nOb?????? j?? pomidorkami, ziemniakami i papryk', 'Krok 4\r\nPolej oliw?? z oliwek i dwoma ??y??kami wody ', 'Krok 5\r\nKurczaka podawaj z sur??wk?? z pora, marchew', '', '', '', '', '', '1500obiad'),
(37, ' Zapiekanka makaronowa z szynk?? i warzywami', 'zapiekankamakaronowa.webp', '<p>broku??\r\n\r\n</p>\r\n\r\n<p>cukinia</p>\r\n\r\n<p>z??bek czosnku\r\n\r\n</p>\r\n\r\n<p>makaronowe rurki\r\n\r\n</p>\r\n\r\n<p>szynka</p>', '<p>1 sztuka\r\n\r\n</p><p>2 sztuki\r\n\r\n</p><p>3 sztuki\r\n\r\n</p><p>200 gram??w\r\n\r\n</p><p>180 gram??w\r\n\r\n</p>', 'Krok 1 \r\nRozgrzej piekarnik do temperatury 180C. Zagotuj wod?? w garnku. Warzywa umyj, cukinie pokr??j w plasterki, broku??y podziel na ma??e r????yczki. R????yczki broku????w w?????? do wrz??tku i gotuj 2 minuty. Odced??.\r\n\r\n', 'Krok 2\r\nObrany czosnek drobno posiekaj. Na patelni rozgrzej Ram??, dodaj czosnek i po 1 minucie przygotowane warzywa. Sma?? przez 4 minuty.\r\n\r\n\r\n', 'Krok 3\r\nW miedzyczasie przygotuj wed??ug przepisu s', 'Krok 4\r\nNa wierzch makaronu wy?????? przesma??one warz', 'Krok 5\r\nWszystko polej pozosta???? cz????ci?? sosu i na', '', '', '', '', '', '1500obiad'),
(38, ' Sa??atka z jajkiem i szparagami', 'salatkazjajkiem.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1\r\nUmyt?? i osuszon?? sa??at?? porwij na kawa??ki i umie???? w du??ej misce. Umyte szparagi gotuj przez kilka minut, a po ostudzeniu pokr??j na kawa??ki i dodaj do sa??aty.', 'Krok 2\r\nDo miski dodaj tak??e cz??stki pomidora, jajko na twardo, posypuj??c wszystko pestkami s??onecznika (mo??esz podpra??y?? pestki na suchej patelni) i grzankami.\r\n\r\n', 'Krok 3\r\nPolej ca??o???? przygotowanym sosem Knorr.\r\n\r\n', '', '', '', '', '', '', '', '1200kolacja'),
(39, ' Sa??atka z grillowanymi pol??dwiczkami kurczaka, sosem jogurtowo-czosnkowym i mini grzaneczkami', 'salatkazgrillowanymi.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1\r\nPol??dwiczki z piersi kurczaka umyj, osusz i natrzyj przypraw?? Knorr do z??otego kurczaka, odstaw do lod??wki na 15 minut, aby mi??so si?? zamarynowa??o. Mi??so upiecz (bez dodatku t??uszczu) na patelni grillowej lub na grillu elektrycznym. Mi??so po ostudzeniu pokr??j w paseczki.\r\n\r\n', 'Krok 2\r\nWszystkie warzywa dok??adnie umyj, ods??cz z nadmiaru wody. Sa??at?? porwij na mniejsze kawa??ki, papryk?? pokr??j w cienkie paski, pomidorki podziel na ??wiartki, og??rka obierz ze sk??rki i pokr??j w kostk??, oliwki w cienkie plasterki.', 'Krok 3\r\nPrzygotuj sos jogurtowy: czosnek przeci??nij przez prask?? do czosnku, dodaj jogurt i dok??adnie wymieszaj.\r\n\r\n', 'Krok 4\r\nPieczywo posmaruj Flor?? Original, pokr??j w drobn?? kostk?? i podpiecz na rozgrzanej patelni.', '', '', '', '', '', '', '1200kolacja'),
(41, ' Sa??atka z komosy ry??owej i zi????', 'salatkazkomosy.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1\r\nKomos?? przygotuj zgodnie z instrukcj?? na opakowaniu, u??ywaj??c zamiast wody bulionu na w??oszczy??nie Knorr.', 'Krok 2\r\nCebul?? pokr??j w p????kr????ki i usma?? na Ramie na z??oty kolor. Dodaj uprzednio sparzon?? wrz??tkiem cukini?? i poddu?? z cebulk?? przez chwil??.\r\n\r\n', 'Krok 3\r\nLi??cie mi??ty, koperku i kolendry drobno posiekaj', 'Krok 4\r\nDo przygotowanej komosy dodaj cebul?? z cukini??, zio??a i ods??czon?? z zalewy ciecierzyc?? oraz sok z cytryny i wymieszaj. Podawaj sa??atk?? z rukol??, posypan?? rozdrobnion?? fet??. W razie potrzeby dopraw do smaku.\r\n\r\n', '', '', '', '', '', '', '1500kolacja'),
(42, ' Lekka sa??atka ze szpinakiem i pomara??cz??', 'salatkazszpinakiem.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1\r\nSzpinak umyj i osusz. Pomidorki koktajlowe przekr??j na po????wki. Pomara??cz?? obierz, podziel na cz??stki i usu?? b??onki. Suszone pomidorki pokr??j w paski, mozzarell?? w kostk??.\r\n\r\n', 'Krok 2\r\nOrzechy podpra?? na patelni.\r\n\r\n', 'Krok 3\r\nSos wykonaj zgodnie z instrukcj?? na opakowaniu.', 'Krok 4\r\nWszystkie przygotowane sk??adniki prze?????? do miski, polej sosem i posyp orzeszkami.\r\n\r\n', '', '', '', '', '', '', '1500kolacja'),
(43, ' Pierogi z serem', 'pierogizserem.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1\r\nM??k?? przesiej do miski, dodaj olej i zalej wrz??tkiem. Wymieszaj i szczelnie zakryj foli??. Odstaw na 15 min. Po tym czasie rozwa??kuj i wytnij ??redniej wielko??ci kr????ki za pomoc?? np. szklanki', 'Krok 2\r\nSer przekr???? przez maszynk?? albo dobrze rozgnie?? widelcem, dodaj cukier oraz ??????tko. Dobrze wymiesza??.\r\n\r\n', 'Krok 3\r\nNast??pnie na?????? na kawa??ki ciasta i lep pierogi.\r\n\r\n', 'Krok 4\r\nZagotuj w garnku wod??, lekko os??l i wrzu?? pierogi na wrz??tek, a gdy wyp??yn?? na wierzch delikatnie je wyjmij ??y??k?? cedzakow?? i prze?????? na talerz.\r\n\r\n', '', '', '', '', '', '', '2000kolacja'),
(44, ' Sa??atka z broku??em i jajkiem', 'salatkazbrokula.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1\r\nZgotuj wod??. Umyj broku?? i wrzu?? na wrz??c?? lekko osolon?? wod?? z 1 z??bkiem czosnku. Gotuj do momentu a?? b??dzie p????twardy, a nast??pnie go odced?? i ostud??.\r\n\r\n', 'Krok 2\r\nJajko i kiszony og??rek pokr??j w kostk??, zielony koper posiekaj (cz?????? koperku zostaw do dekoracji).\r\n\r\n', 'Krok 3 \r\nPo????cz wszystkie sk??adniki lekko mieszaj??c z dodatkiem majonezu.\r\n\r\n', 'Krok 4\r\nGotow?? past?? na?????? na pieczywo chrupkie wcze??niej posmarowane margaryn?? Flora i udekoruj pozosta??ym zielonym koperkiem.\r\n\r\n', '', '', '', '', '', '', '2000kolacja'),
(45, ' Gofry orkiszowe z kremem kokosowym i owocami', 'gofry.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1 \r\nDo miski wsyp m??k??, cukier waniliowy, cynamon, budy?? oraz proszek do pieczenia. Wszystkie suche sk??adniki dok??adnie wymieszaj. Nast??pnie dodaj olej, mleko owsiane oraz jajko i zmiksuj ca??o???? na g??adk?? mas??. Rozgrzej gofrownic??. Pami??taj o ka??do-razowym naoliwianiu powierzchni gofrownicy.\r\n\r\n', 'Krok 2\r\nW mi??dzy czasie ubij mleczko kokosowe z mascarpone. Pami??taj, aby u??y?? wy????cznie sta???? cz?????? mleczka kokosowego (najlepiej ch??odzonego przez 2 dni). Dodaj s??odzik w formie pudru i wymieszaj.\r\n\r\n', 'Krok 3\r\nUmyj i pokr??j owoce.\r\n\r\n', 'Krok 4 \r\nUpieczone gofry posmaruj kremem i podawaj z owocami. Mo??esz ca??o???? pola?? syropem daktylowym/ czekoladowym.\r\n\r\n\r\n', '', '', '', '', '', '', 'sniadaniebezlaktozy'),
(47, ' Tropikalny kwa??ny pudding ry??owy', 'tropikalny.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1 \r\nRy?? ugotuj w wodzie do mi??kko??ci. Nast??pnie poczekaj a?? przestygnie. Dodaj do ry??u banana, mleczko kokosowe oraz cynamon. Dok??adnie zblenduj na jednolit?? mas??.\r\n\r\n', 'Krok 2 \r\nW osobnym naczyniu przygotuj mus: zblenduj kiwi, maliny oraz cukier kokosowy.\r\n\r\n', 'Krok 3 \r\nDo naczy?? prze?????? ry??owy pudding, nast??pnie wylej warstw?? kwa??nego musu. Ca??o???? udekoruj egzotycznym owocem kiwano.\r\n\r\n\r\n', '', '', '', '', '', '', '', 'sniadaniebezlaktozy'),
(48, ' Pulpety z soczewicy', 'pilp.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1\r\nSoczewic?? przep??ucz pod bie????c?? wod??. Umie???? w garnku, zalej wod?? centymetr nad powierzchni??. Dodaj kostk?? roso??ow?? i gotuj na wolnym ogniu pod przykryciem, oko??o 20-30 minut, a?? soczewica zrobi si?? zupe??nie mi??kka.\r\n\r\n', 'Krok 2 \r\nMarchew zetrzyj na tarce. Cebul??, czosnek i natk?? pietruszki drobno posiekaj.\r\n\r\n', 'Krok 3 \r\nW garnku na rozgrzanym t??uszczu zeszklij cebul?? i czosnek , dodaj marchew, sma?? wszystko razem przez 2-3 minuty. Dodaj ugotowan?? soczewic??, gotuj wszystko razem kolejne dwie minuty. Soczewic?? prze?????? do malaksera, zmiksuj wszystko na g??sta past??. Powsta??y farsz przestud??, dodaj bu??k??, jajko i posiekan?? natk?? pietruszki. Z g??stej masy uformuj ??redniej wielko??ci kulki, obtocz je w pozosta??ej bu??ce.\r\n\r\n', 'Krok 4 \r\nKulki u?????? na blasze do pieczenia wy??o??onej pergaminem, delikatnie skrop oliw?? i wstaw do nagrzanego do 200*C piekarnika, na oko??o 25- 30 minut. Piecz, a?? kulki uzyskaj?? z??ocisty kolor.\r\n\r\n', 'Krok 5 \r\nW mi??dzyczasie po????cz sos pomidorowy z fiksem Knorr do spaghetti bolognese, zagotuj ??? je??li sos jest za g??sty dodaj kilka ??y??ek wody, aby uzyska?? odpowiedni?? konsystencj??.\r\n\r\n', '', '', '', '', '', 'obiadbezlaktozy'),
(49, ' Pierogi z dyni?? pi??mow??', 'pierogizdynia.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1 \r\nPo????cz m??k?? z ciep???? wod??, oliw?? i szczypt?? soli. Ciasto dok??adnie wyr??b a?? stanie si?? elastyczne (w razie potrzeby dodaj wi??cej wody lub gdy b??dzie za rzadkie dodaj wi??cej m??ki). Ciasto podziel na kilka cz????ci, uformuj z nich mniejsze kule i zawi?? w foli?? spo??ywcz??, odstaw na godzin?? na bok.\r\n\r\n', 'Krok 2 \r\nNa opr??szonej m??k?? stolnicy rozwa??kuj pierwsz?? kul?? na 2 mm grubo??ci placek. Za pomoc?? szklanki lub metalowego wycinaka wytnij kr????ki. Kr????ki u?????? na pergamin i przykryj lnian?? ??ciereczk??.\r\n\r\n', 'Krok 3 \r\nDyni?? upiecz. W garnku na rozgrzanej oliwie podsma?? czosnek z szalotk??, dodaj pestki dyni, chwil?? je podsma??, po czym do?????? upieczony mi????sz dyni. Mas?? sma?? chwil??, wlej szklank?? wody, dodaj 2 kostki Bulionu na w??oszczy??nie Knorr, gotuj chwil?? a?? zg??stnieje. Farsz wystud??, a nast??pnie przepu???? wszystko razem przez maszynk?? do mi??sa. Je??li masa oka??e si?? zbyt wodnista wsyp do ??rodka ??y??k?? lub dwie bu??ki tartej. Ca??o???? dopraw do smaku ga??ka muszkato??ow??, cynamonem i ostra papryk??. Brzegi ', 'Krok 4 \r\nGotowe pierogi gotuj partiami w lekko osolonej wodzie. Podawaj polane olejem z pestek dyni.\r\n\r\n', '', '', '', '', '', '', 'obiadbezlaktozy'),
(50, ' Bezglutenowe brownie', 'bezglutenowebrownie.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1\r\nW rondlu rozpu???? mas??o. Nast??pnie zdejmij z ognia i dodaj 2/3 posiekanej czekolady. Mieszaj, a?? si?? rozpu??ci. Odstaw na bok.', 'Krok 2\r\nW misce wymieszaj obie m??ki i s??l. Jajka lekko ubij z cukrem pudrem.', 'Krok 3\r\nDo masy jajecznej dodaj przygotowan?? mas?? czekoladow?? i wymieszaj mikserem.', 'Krok 4\r\nNast??pnie ci??gle mieszaj??c, dodaj mieszanin?? m??k, pozosta???? 1/3 cz?????? czekolady i suszon?? ??urawin??.', 'Krok 5\r\nDo formy wy??o??onej papierem do pieczenie prze?????? ciasto i piecz w piekarniku 35 minut w temperaturze 180 st. C.', 'Krok 6\r\nPo wyj??ciu z piekarnika posyp ??urawin?? ora', '', '', '', '', 'ciastobezlaktozy'),
(51, ' Bezglutenowe ciasto ze ??liwkami', 'dsc39937017341592471584000.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1 \r\nMas??o ucieramy z cukrem na puszyst?? mas??.\r\n\r\n', 'Krok 2\r\nOddzielamy bia??ka od ??????tek. Dodajemy do masy po jednym ??????tku ca??y czas ucieraj??c', 'Krok 3\r\nOrzechy w??oskie mielimy na m??k??. Dodajemy do masy jajecznej. M??k?? ry??owa mieszamy z cynamonem oraz proszkiem do pieczenia i r??wnie?? dodajemy do ciasta.', 'Krok 4\r\nBia??ka ubijamy na sztywn?? piane. Dodajemy do ciasta nie mieszaj??c zbyt d??ugo.\r\n\r\n', 'Krok 5\r\nPrzelewamy ciasto do formy wy??o??onej papierem do pieczenia.\r\n\r\n', 'Krok 6\r\nZ wierzchu dekorujemy po????wkami ??liwek. Pi', '', '', '', '', 'ciastobezlaktozy'),
(58, ' P??atki owsiane na mleku z jab??kiem', 'platkiowsiane.webp', '<p>p??atki owsiane zwyk??e</p>\r\n<p>mleko 1,5% t??uszczu</p>\r\n<p>ma??e jab??ko</p>\r\n<p>cynamon</p>', '<p>40 gram??w</p>\r\n<p>125 mililitr??w</p>\r\n<p>1 sztuka</p>\r\n<p>1 ??y??eczka</p>', 'Krok 1\r\n<p> P??atki zala?? wrz??c?? wod?? do poziomu powierzchni p??atk??w i odczeka?? kilka minut, a?? zmi??kn??.</p>', 'Krok 2\r\n<p>Doda?? mleko, pokrojone w kostk?? kawa??ki jab??ka, wymiesza?? i posypa?? cynamonem.</p>\r\n\r\n', '', '', '', '', '', '', '', '', '1200sniadanie');

-- --------------------------------------------------------

--
-- Table structure for table `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(11) NOT NULL,
  `imie` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `login` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `haslo` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `awatar` varchar(200) COLLATE utf8_polish_ci DEFAULT NULL,
  `rola` varchar(50) COLLATE utf8_polish_ci NOT NULL DEFAULT 'U'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `imie`, `nazwisko`, `email`, `login`, `haslo`, `awatar`, `rola`) VALUES
(56, 'Jan', 'Nowak', 'jan@gmail.com', 'jan', '12345678', 'awatary/Bez nazwy.png', 'U'),
(57, 'Wojtek', 'Nowak', 'wojtek@gmail.com', 'Harnas', '12345678', 'awatary/Przechwytywanie.PNG', 'U');

-- --------------------------------------------------------

--
-- Table structure for table `wiadomosci`
--

CREATE TABLE `wiadomosci` (
  `id` int(11) NOT NULL,
  `imie` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `telefon` int(9) NOT NULL,
  `tresc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wiadomosci`
--

INSERT INTO `wiadomosci` (`id`, `imie`, `email`, `telefon`, `tresc`) VALUES
(14, 'Krystian', 'harnas123@gmail.com', 123345678, 'Dzie?? dobry');

-- --------------------------------------------------------

--
-- Table structure for table `zgloszenia`
--

CREATE TABLE `zgloszenia` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `idprzepisu` int(11) NOT NULL,
  `tresc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zgloszenia`
--

INSERT INTO `zgloszenia` (`id`, `login`, `idprzepisu`, `tresc`) VALUES
(14, 'Wojtek', 29, 'Bardzo smaczny przepis'),
(15, 'Krystian', 25, 'Smaczne');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komentarze`
--
ALTER TABLE `komentarze`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oceny`
--
ALTER TABLE `oceny`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `przepisy`
--
ALTER TABLE `przepisy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wiadomosci`
--
ALTER TABLE `wiadomosci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zgloszenia`
--
ALTER TABLE `zgloszenia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komentarze`
--
ALTER TABLE `komentarze`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `oceny`
--
ALTER TABLE `oceny`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `przepisy`
--
ALTER TABLE `przepisy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `wiadomosci`
--
ALTER TABLE `wiadomosci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `zgloszenia`
--
ALTER TABLE `zgloszenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
