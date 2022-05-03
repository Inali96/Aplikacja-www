
-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `komentarze`
--

CREATE TABLE `komentarze` (
  `id` int(11) NOT NULL,
  `idprzepisu` int(11) NOT NULL,
  `login` varchar(20) NOT NULL,
  `tresc` varchar(200) NOT NULL,
  `awatar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `komentarze`
--

INSERT INTO `komentarze` (`id`, `idprzepisu`, `login`, `tresc`, `awatar`) VALUES
(60, 29, 'lonio103', 'Bardzo smaczne', 'awatary/Bez nazwy.png'),
(61, 29, '1', 'Haha świetne', 'awatary/Bez tytułu.png'),
(76, 25, 'lonio103', 'Ohydne gó###!!!', 'awatary/Bez nazwy.png'),
(80, 41, 'Harnas', 'Świetne danie polecam!!!', 'awatary/pobrane.jpg'),
(81, 25, 'Harnas', 'Lol ale zajebiste', 'awatary/Przechwytywanie.PNG'),
(82, 14, 'Harnas', 'Wow fajny przpis', 'awatary/Przechwytywanie.PNG');
