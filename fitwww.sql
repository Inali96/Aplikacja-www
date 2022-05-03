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
(14, ' Letnia owsianka z malinami i prażonymi pestkami dyni', 'letniaowsianka.webp', '\r\n<p>mleko 1,5%</p>\r\n\r\n<p>płatki żytnie</p>\r\n\r\n<p>maliny świeże</p>\r\n\r\n<p>pestki dyni</p>\r\n', '<p>4 szklanki</p>\r\n\r\n<p>10 łyżek\r\n\r\n</p>\r\n<p>1 szklanka\r\n\r\n</p>\r\n<p>6 łyżek\r\n\r\n</p>', 'Krok 1\r\nZagotuj mleko i dodaj do niego płatki, następnie gotuj przez ok. 5 minut.', 'Krok 2\r\nPestki dyni upraż na suchej patelni, uważa', 'Krok 3\r\nMaliny opłucz pod bieżącą wodą, osącz z na', 'Krok 4\r\nOwsiankę przelej do miseczki.', 'Krok 5\r\nGotową owsiankę udekoruj malinami i pestka', '', '', '', '', '', '1200sniadanie'),
(20, ' Grillowany schab z pieczonymi młodymi ziemniaczkami', 'grillowanyschab.webp', '<p>grillowany schab wieprzowy</p><p>Przyprawa do grilla Knorr</p>\r\n<p>młode ziemniaki\r\n\r\n</p>\r\n<p>kapusta pekińska\r\n\r\n</p>\r\n<p>papryka czerwona\r\n\r\n</p>\r\n<p>sok marchwiowy\r\n\r\n</p>', '<p>4 plastry\r\n\r\n</p>\r\n<p>2 łyżeczki\r\n\r\n</p>\r\n<p>560 gramów\r\n\r\n</p>\r\n<p>100 gramów\r\n\r\n</p>\r\n<p>1 sztuka\r\n\r\n</p>\r\n<p>3 szklanki\r\n\r\n</p>', 'Krok 1\r\nUmyj mięso i osusz. Natrzyj dokładnie przyprawą Knorr do grilla i odstaw na 15 minut do lodówki, aby mięso się zamarynowało. Mięso usmaż na patelni grillowej, bez dodatku tłuszczu.', 'Krok 2\r\nZiemniaki dokładnie umyj, osusz, zawiń poj', 'Krok 3\r\nPrzygotuj surówkę: kapustę i paprykę opłuc', 'Krok 4\r\nWyłóż wszytki elementy potrawy na talerz.', 'Krok 5\r\nDo obiadu wypij sok marchwiowy.', '', '', '', '', '', '1200obiad'),
(21, ' Indyk pieczony z ryżem brązowym', 'indykpieczony.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1\r\nUmyj pierś z indyka i osusz. Dodaj do przyprawy Knorr Naturalnie Smaczne „Tagliatelle z kurczakiem” odrobinę wody i 1 łyżeczkę oliwy. Wymieszaj.\r\n\r\n', '', '', '', '', '', '', '', '', '', '2000obiad'),
(24, ' Schab pieczony z sosem gulaszowym', 'schabpieczony.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1\r\nPrzygotuj zalewę - połącz Knorr Naturalnie Smaczne „Gulasz\" z 1 łyżeczką oleju. Wysmaruj uprzednio umyty schab i piecz w temperaturze 190 °C około 50 minut.\r\n\r\n', 'Krok 2\r\nZiemniaki ugotuj i posyp zielonym koprem.', 'Krok 3\r\nUmyj bakłażana, przekrój wzdłuż na połowę ', 'Krok 4\r\nMiąższ połącz z posiekanym koprem, pokrojo', 'Krok 5\r\nMarchew i seler umyj, a następnie zetrzyj ', '', '', '', '', '', '2000obiad'),
(25, ' Zdrowy koktajl pietruszkowy', 'koktajlpietruszkowy.webp', '<p>natka pietruszki\r\n\r\n</p>\r\n<p>banan\r\n\r\n</p>\r\n<p>gruszka</p>\r\n<p>kiwi</p>\r\n<p>Herbata Lipton o smaku owoców cytrusowych\r\n\r\n</p>', '<p>1 pęczek\r\n\r\n</p>\r\n<p>2 sztuki\r\n\r\n</p>\r\n<p>2 sztuki\r\n\r\n</p>\r\n<p>3 sztuki\r\n\r\n</p>\r\n<p>1.5 szklanki\r\n\r\n</p>', 'Krok 1\r\nZaparz herbatę Lipton owoce cytrusowe i pozostaw do wystygnięcia.', 'Krok 2\r\nW międzyczasie przygotuj i rozdrobnij owoc', 'Krok 3\r\nDodaj wystudzoną herbatę i blenduj do uzys', '', '', '', '', '', '', '', '1500sniadanie'),
(29, 'Jogurtowy pudding z nasionami chia\r\n', 'jogurtpudding.webp', '<p>mały jogurt</p>\r\n<p>nasiona chia\r\n\r\n</p>\r\n<p>mango\r\n\r\n</p>', '<p>4 sztuki\r\n\r\n</p>\r\n<p>8 łyżek\r\n\r\n</p>\r\n<p>280 gramów\r\n\r\n</p>', 'Krok 1\r\nDo jogurtu wsyp nasiona chia i dokładnie wymieszaj przez dłuższą chwilę. Wstaw do lodówki przynajmniej na 2h. Jednak najlepsze efekty uzyskujemy zostawiając pudding na całą noc. Po wyjęciu z lodówki podawaj pudding z kawałkami lub ze zmiksowanym owocem mango.\r\n\r\n', '', '', '', '', '', '', '', '', '', '1500sniadanie'),
(30, ' Twarożek homogenizowany naturalny z owocami goji i płatkami zbożowymi', 'twaro.webp', '<p>Twarożek naturalny homogenizowany</p>\r\n<p>płatki owsiane błyskawiczne\r\n\r\n</p>\r\n<p>owoce goji\r\n\r\n</p>', '<p>600 gramów\r\n\r\n</p>\r\n<p>12 łyżek\r\n\r\n</p>\r\n<p>4 łyżki\r\n\r\n</p>', 'Krok 1\r\nDo twarożku dodaj płatki owsiane błyskawiczne.\r\n\r\n', 'Krok 2\r\nOwoce goi sparz wrzącą wodą, chwilę odczek', '', '', '', '', '', '', '', '', '2000sniadanie'),
(34, ' Kanapki z pastą jajeczną ze szczypiorkiem', 'kanapkizpastajajeczna.webp', '<p>jajka</p>\r\n\r\n<p>chleb razowy kromki</p>\r\n\r\n\r\n<p>Majonez Hellmann\'s Babuni</p>\r\n\r\n\r\n<p>Pieprz czarny z Wietnamu mielony Knorr</p>\r\n\r\n\r\n<p>sól</p>\r\n\r\n\r\n<p>szczypiorek</p>\r\n\r\n\r\n<p>papryka</p>\r\n\r\n\r\n<p>sałata masłowa</p>\r\n\r\n<p>pomidory koktajlowe</p>\r\n', '<p>4 sztuki\r\n\r\n</p>\r\n<p>4 sztuki\r\n\r\n</p>\r\n<p>3 łyżki\r\n\r\n</p>\r\n<p>1 szczypta\r\n\r\n</p>\r\n<p>1 szczypta\r\n\r\n</p>\r\n<p>1 pęczek\r\n\r\n</p>\r\n<p>1 sztuka\r\n\r\n</p>\r\n<p>4 listków\r\n\r\n</p>\r\n<p>4 sztuki\r\n\r\n</p>', 'Krok 1 Jajka ugotuj na twardo w lekko osolonej wodzie następnie obierz. Warzywa umyj. Paprykę, jajka oraz szczypiorek posiekaj i przełóż do miski.', ' Krok 2 Dodaj majonez, dopraw solą i pieprzem – wymieszaj. No kromce pieczywa ułóż sałatę następnie pastę jajeczną i udekoruj przekrojonymi na pół pomidorkami koktajlowymi.\r\n\r\n', '', '', '', '', '', '', '', '', '2000sniadanie'),
(35, ' Makaron z kurczakiem w sosie', 'makaronzkurczakiem.webp', '<p>makaron gryczany</p>\r\n\r\n<p>pierś z kurczaka\r\n\r\n</p>\r\n<p>cukinia\r\n\r\n</p>\r\n<p>papryka czerwona\r\n\r\n</p>', '<p>280 gramów\r\n\r\n</p>\r\n<p>200 gramów\r\n\r\n</p>\r\n<p>400 gramów\r\n\r\n</p>\r\n<p>300 gramów\r\n\r\n</p>', 'Krok 1\r\nUgotuj makaron zgodnie z instrukcją na opakowaniu.', 'Krok 2 \r\nKawałki piersi z kurczaka podsmaż na Rama smaż jak szef kuchni wariant z oliwą z oliwek, dodając po chwili pokrojoną cukinię i paprykę. Duś do czasu aż warzywa będą miękkie, dodając pod koniec sos Zapiekanka makaronowa z szynką (wymieszany z odrobiną wody).\r\n\r\n', '', '', '', '', '', '', '', '', '1200obiad'),
(36, ' Kurczak pieczony z warzywami i surówka z pora', 'pieczonykurak.webp', '<p>pierś z kurczaka\r\n\r\n</p>\r\n<p>Przyprawa do kurczaka Knorr\r\n\r\n</p>\r\n<p>pomidorki koktajlowe\r\n\r\n</p>\r\n<p>pomidory suszone na słońcu\r\n\r\n</p>\r\n<p>mała cebula\r\n\r\n</p>\r\n<p>czerwona papryka\r\n\r\n</p>', '<p>3 sztuki\r\n\r\n</p>\r\n<p>1 łyżka\r\n\r\n</p>\r\n<p>250 gramów\r\n\r\n</p>\r\n<p>105 gramów\r\n\r\n</p>\r\n<p>3 sztuki\r\n\r\n</p>\r\n<p>1 sztuka\r\n\r\n</p>', 'Krok 1\r\nPiekarnik rozgrzej do temperatury 180 – 200C. Warzywa dokładnie umyj. Ziemniaki pokrój w ćwiartki (obgotuj na półtwardo), pomidorki na połówki, paprykę w niezbyt drobne kawałki, cebulę w ćwiartki, a czosnek drobno posiekaj. Suszone pomidory pokrój w paseczki, a oliwki na połówki.', 'Krok 2\r\nKurczaka natrzyj przyprawą Knorr i ułóż w żaroodpornym naczyniu.\r\n\r\n', 'Krok 3\r\nObłóż ją pomidorkami, ziemniakami i papryk', 'Krok 4\r\nPolej oliwą z oliwek i dwoma łyżkami wody ', 'Krok 5\r\nKurczaka podawaj z surówką z pora, marchew', '', '', '', '', '', '1500obiad'),
(37, ' Zapiekanka makaronowa z szynką i warzywami', 'zapiekankamakaronowa.webp', '<p>brokuł\r\n\r\n</p>\r\n\r\n<p>cukinia</p>\r\n\r\n<p>ząbek czosnku\r\n\r\n</p>\r\n\r\n<p>makaronowe rurki\r\n\r\n</p>\r\n\r\n<p>szynka</p>', '<p>1 sztuka\r\n\r\n</p><p>2 sztuki\r\n\r\n</p><p>3 sztuki\r\n\r\n</p><p>200 gramów\r\n\r\n</p><p>180 gramów\r\n\r\n</p>', 'Krok 1 \r\nRozgrzej piekarnik do temperatury 180C. Zagotuj wodę w garnku. Warzywa umyj, cukinie pokrój w plasterki, brokuły podziel na małe różyczki. Różyczki brokułów włóż do wrzątku i gotuj 2 minuty. Odcedź.\r\n\r\n', 'Krok 2\r\nObrany czosnek drobno posiekaj. Na patelni rozgrzej Ramę, dodaj czosnek i po 1 minucie przygotowane warzywa. Smaż przez 4 minuty.\r\n\r\n\r\n', 'Krok 3\r\nW miedzyczasie przygotuj według przepisu s', 'Krok 4\r\nNa wierzch makaronu wyłóż przesmażone warz', 'Krok 5\r\nWszystko polej pozostałą częścią sosu i na', '', '', '', '', '', '1500obiad'),
(38, ' Sałatka z jajkiem i szparagami', 'salatkazjajkiem.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1\r\nUmytą i osuszoną sałatę porwij na kawałki i umieść w dużej misce. Umyte szparagi gotuj przez kilka minut, a po ostudzeniu pokrój na kawałki i dodaj do sałaty.', 'Krok 2\r\nDo miski dodaj także cząstki pomidora, jajko na twardo, posypując wszystko pestkami słonecznika (możesz podprażyć pestki na suchej patelni) i grzankami.\r\n\r\n', 'Krok 3\r\nPolej całość przygotowanym sosem Knorr.\r\n\r\n', '', '', '', '', '', '', '', '1200kolacja'),
(39, ' Sałatka z grillowanymi polędwiczkami kurczaka, sosem jogurtowo-czosnkowym i mini grzaneczkami', 'salatkazgrillowanymi.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1\r\nPolędwiczki z piersi kurczaka umyj, osusz i natrzyj przyprawą Knorr do złotego kurczaka, odstaw do lodówki na 15 minut, aby mięso się zamarynowało. Mięso upiecz (bez dodatku tłuszczu) na patelni grillowej lub na grillu elektrycznym. Mięso po ostudzeniu pokrój w paseczki.\r\n\r\n', 'Krok 2\r\nWszystkie warzywa dokładnie umyj, odsącz z nadmiaru wody. Sałatę porwij na mniejsze kawałki, paprykę pokrój w cienkie paski, pomidorki podziel na ćwiartki, ogórka obierz ze skórki i pokrój w kostkę, oliwki w cienkie plasterki.', 'Krok 3\r\nPrzygotuj sos jogurtowy: czosnek przeciśnij przez praskę do czosnku, dodaj jogurt i dokładnie wymieszaj.\r\n\r\n', 'Krok 4\r\nPieczywo posmaruj Florą Original, pokrój w drobną kostkę i podpiecz na rozgrzanej patelni.', '', '', '', '', '', '', '1200kolacja'),
(41, ' Sałatka z komosy ryżowej i ziół', 'salatkazkomosy.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1\r\nKomosę przygotuj zgodnie z instrukcją na opakowaniu, używając zamiast wody bulionu na włoszczyźnie Knorr.', 'Krok 2\r\nCebulę pokrój w półkrążki i usmaż na Ramie na złoty kolor. Dodaj uprzednio sparzoną wrzątkiem cukinię i podduś z cebulką przez chwilę.\r\n\r\n', 'Krok 3\r\nLiście mięty, koperku i kolendry drobno posiekaj', 'Krok 4\r\nDo przygotowanej komosy dodaj cebulę z cukinią, zioła i odsączoną z zalewy ciecierzycę oraz sok z cytryny i wymieszaj. Podawaj sałatkę z rukolą, posypaną rozdrobnioną fetą. W razie potrzeby dopraw do smaku.\r\n\r\n', '', '', '', '', '', '', '1500kolacja'),
(42, ' Lekka sałatka ze szpinakiem i pomarańczą', 'salatkazszpinakiem.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1\r\nSzpinak umyj i osusz. Pomidorki koktajlowe przekrój na połówki. Pomarańczę obierz, podziel na cząstki i usuń błonki. Suszone pomidorki pokrój w paski, mozzarellę w kostkę.\r\n\r\n', 'Krok 2\r\nOrzechy podpraż na patelni.\r\n\r\n', 'Krok 3\r\nSos wykonaj zgodnie z instrukcją na opakowaniu.', 'Krok 4\r\nWszystkie przygotowane składniki przełóż do miski, polej sosem i posyp orzeszkami.\r\n\r\n', '', '', '', '', '', '', '1500kolacja'),
(43, ' Pierogi z serem', 'pierogizserem.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1\r\nMąkę przesiej do miski, dodaj olej i zalej wrzątkiem. Wymieszaj i szczelnie zakryj folią. Odstaw na 15 min. Po tym czasie rozwałkuj i wytnij średniej wielkości krążki za pomocą np. szklanki', 'Krok 2\r\nSer przekręć przez maszynkę albo dobrze rozgnieć widelcem, dodaj cukier oraz żółtko. Dobrze wymieszać.\r\n\r\n', 'Krok 3\r\nNastępnie nałóż na kawałki ciasta i lep pierogi.\r\n\r\n', 'Krok 4\r\nZagotuj w garnku wodę, lekko osól i wrzuć pierogi na wrzątek, a gdy wypłyną na wierzch delikatnie je wyjmij łyżką cedzakową i przełóż na talerz.\r\n\r\n', '', '', '', '', '', '', '2000kolacja'),
(44, ' Sałatka z brokułem i jajkiem', 'salatkazbrokula.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1\r\nZgotuj wodę. Umyj brokuł i wrzuć na wrzącą lekko osoloną wodę z 1 ząbkiem czosnku. Gotuj do momentu aż będzie półtwardy, a następnie go odcedź i ostudź.\r\n\r\n', 'Krok 2\r\nJajko i kiszony ogórek pokrój w kostkę, zielony koper posiekaj (część koperku zostaw do dekoracji).\r\n\r\n', 'Krok 3 \r\nPołącz wszystkie składniki lekko mieszając z dodatkiem majonezu.\r\n\r\n', 'Krok 4\r\nGotową pastę nałóż na pieczywo chrupkie wcześniej posmarowane margaryną Flora i udekoruj pozostałym zielonym koperkiem.\r\n\r\n', '', '', '', '', '', '', '2000kolacja'),
(45, ' Gofry orkiszowe z kremem kokosowym i owocami', 'gofry.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1 \r\nDo miski wsyp mąkę, cukier waniliowy, cynamon, budyń oraz proszek do pieczenia. Wszystkie suche składniki dokładnie wymieszaj. Następnie dodaj olej, mleko owsiane oraz jajko i zmiksuj całość na gładką masę. Rozgrzej gofrownicę. Pamiętaj o każdo-razowym naoliwianiu powierzchni gofrownicy.\r\n\r\n', 'Krok 2\r\nW między czasie ubij mleczko kokosowe z mascarpone. Pamiętaj, aby użyć wyłącznie stałą część mleczka kokosowego (najlepiej chłodzonego przez 2 dni). Dodaj słodzik w formie pudru i wymieszaj.\r\n\r\n', 'Krok 3\r\nUmyj i pokrój owoce.\r\n\r\n', 'Krok 4 \r\nUpieczone gofry posmaruj kremem i podawaj z owocami. Możesz całość polać syropem daktylowym/ czekoladowym.\r\n\r\n\r\n', '', '', '', '', '', '', 'sniadaniebezlaktozy'),
(47, ' Tropikalny kwaśny pudding ryżowy', 'tropikalny.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1 \r\nRyż ugotuj w wodzie do miękkości. Następnie poczekaj aż przestygnie. Dodaj do ryżu banana, mleczko kokosowe oraz cynamon. Dokładnie zblenduj na jednolitą masę.\r\n\r\n', 'Krok 2 \r\nW osobnym naczyniu przygotuj mus: zblenduj kiwi, maliny oraz cukier kokosowy.\r\n\r\n', 'Krok 3 \r\nDo naczyń przełóż ryżowy pudding, następnie wylej warstwę kwaśnego musu. Całość udekoruj egzotycznym owocem kiwano.\r\n\r\n\r\n', '', '', '', '', '', '', '', 'sniadaniebezlaktozy'),
(48, ' Pulpety z soczewicy', 'pilp.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1\r\nSoczewicę przepłucz pod bieżącą wodą. Umieść w garnku, zalej wodą centymetr nad powierzchnię. Dodaj kostkę rosołową i gotuj na wolnym ogniu pod przykryciem, około 20-30 minut, aż soczewica zrobi się zupełnie miękka.\r\n\r\n', 'Krok 2 \r\nMarchew zetrzyj na tarce. Cebulę, czosnek i natkę pietruszki drobno posiekaj.\r\n\r\n', 'Krok 3 \r\nW garnku na rozgrzanym tłuszczu zeszklij cebulę i czosnek , dodaj marchew, smaż wszystko razem przez 2-3 minuty. Dodaj ugotowaną soczewicę, gotuj wszystko razem kolejne dwie minuty. Soczewicę przełóż do malaksera, zmiksuj wszystko na gęsta pastę. Powstały farsz przestudź, dodaj bułkę, jajko i posiekaną natkę pietruszki. Z gęstej masy uformuj średniej wielkości kulki, obtocz je w pozostałej bułce.\r\n\r\n', 'Krok 4 \r\nKulki ułóż na blasze do pieczenia wyłożonej pergaminem, delikatnie skrop oliwą i wstaw do nagrzanego do 200*C piekarnika, na około 25- 30 minut. Piecz, aż kulki uzyskają złocisty kolor.\r\n\r\n', 'Krok 5 \r\nW międzyczasie połącz sos pomidorowy z fiksem Knorr do spaghetti bolognese, zagotuj – jeśli sos jest za gęsty dodaj kilka łyżek wody, aby uzyskać odpowiednią konsystencję.\r\n\r\n', '', '', '', '', '', 'obiadbezlaktozy'),
(49, ' Pierogi z dynią piżmową', 'pierogizdynia.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1 \r\nPołącz mąkę z ciepłą wodą, oliwą i szczyptą soli. Ciasto dokładnie wyrób aż stanie się elastyczne (w razie potrzeby dodaj więcej wody lub gdy będzie za rzadkie dodaj więcej mąki). Ciasto podziel na kilka części, uformuj z nich mniejsze kule i zawiń w folię spożywczą, odstaw na godzinę na bok.\r\n\r\n', 'Krok 2 \r\nNa oprószonej mąką stolnicy rozwałkuj pierwszą kulę na 2 mm grubości placek. Za pomocą szklanki lub metalowego wycinaka wytnij krążki. Krążki ułóż na pergamin i przykryj lnianą ściereczką.\r\n\r\n', 'Krok 3 \r\nDynię upiecz. W garnku na rozgrzanej oliwie podsmaż czosnek z szalotką, dodaj pestki dyni, chwilę je podsmaż, po czym dołóż upieczony miąższ dyni. Masę smaż chwilę, wlej szklankę wody, dodaj 2 kostki Bulionu na włoszczyźnie Knorr, gotuj chwilę aż zgęstnieje. Farsz wystudź, a następnie przepuść wszystko razem przez maszynkę do mięsa. Jeśli masa okaże się zbyt wodnista wsyp do środka łyżkę lub dwie bułki tartej. Całość dopraw do smaku gałka muszkatołową, cynamonem i ostra papryką. Brzegi ', 'Krok 4 \r\nGotowe pierogi gotuj partiami w lekko osolonej wodzie. Podawaj polane olejem z pestek dyni.\r\n\r\n', '', '', '', '', '', '', 'obiadbezlaktozy'),
(50, ' Bezglutenowe brownie', 'bezglutenowebrownie.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1\r\nW rondlu rozpuść masło. Następnie zdejmij z ognia i dodaj 2/3 posiekanej czekolady. Mieszaj, aż się rozpuści. Odstaw na bok.', 'Krok 2\r\nW misce wymieszaj obie mąki i sól. Jajka lekko ubij z cukrem pudrem.', 'Krok 3\r\nDo masy jajecznej dodaj przygotowaną masę czekoladową i wymieszaj mikserem.', 'Krok 4\r\nNastępnie ciągle mieszając, dodaj mieszaninę mąk, pozostałą 1/3 część czekolady i suszoną żurawinę.', 'Krok 5\r\nDo formy wyłożonej papierem do pieczenie przełóż ciasto i piecz w piekarniku 35 minut w temperaturze 180 st. C.', 'Krok 6\r\nPo wyjęciu z piekarnika posyp żurawiną ora', '', '', '', '', 'ciastobezlaktozy'),
(51, ' Bezglutenowe ciasto ze śliwkami', 'dsc39937017341592471584000.webp', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', '<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n\r\n<p></p>', 'Krok 1 \r\nMasło ucieramy z cukrem na puszystą masę.\r\n\r\n', 'Krok 2\r\nOddzielamy białka od żółtek. Dodajemy do masy po jednym żółtku cały czas ucierając', 'Krok 3\r\nOrzechy włoskie mielimy na mąkę. Dodajemy do masy jajecznej. Mąkę ryżowa mieszamy z cynamonem oraz proszkiem do pieczenia i również dodajemy do ciasta.', 'Krok 4\r\nBiałka ubijamy na sztywną piane. Dodajemy do ciasta nie mieszając zbyt długo.\r\n\r\n', 'Krok 5\r\nPrzelewamy ciasto do formy wyłożonej papierem do pieczenia.\r\n\r\n', 'Krok 6\r\nZ wierzchu dekorujemy połówkami śliwek. Pi', '', '', '', '', 'ciastobezlaktozy'),
(58, ' Płatki owsiane na mleku z jabłkiem', 'platkiowsiane.webp', '<p>płatki owsiane zwykłe</p>\r\n<p>mleko 1,5% tłuszczu</p>\r\n<p>małe jabłko</p>\r\n<p>cynamon</p>', '<p>40 gramów</p>\r\n<p>125 mililitrów</p>\r\n<p>1 sztuka</p>\r\n<p>1 łyżeczka</p>', 'Krok 1\r\n<p> Płatki zalać wrzącą wodą do poziomu powierzchni płatków i odczekać kilka minut, aż zmiękną.</p>', 'Krok 2\r\n<p>Dodać mleko, pokrojone w kostkę kawałki jabłka, wymieszać i posypać cynamonem.</p>\r\n\r\n', '', '', '', '', '', '', '', '', '1200sniadanie');

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
(14, 'Krystian', 'harnas123@gmail.com', 123345678, 'Dzień dobry');

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
