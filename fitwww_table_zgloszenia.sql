
-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zgloszenia`
--

CREATE TABLE `zgloszenia` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `idprzepisu` int(11) NOT NULL,
  `tresc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zgloszenia`
--

INSERT INTO `zgloszenia` (`id`, `login`, `idprzepisu`, `tresc`) VALUES
(12, 'lonio103', 25, 'Ohydne gó###!!!'),
(14, '1', 29, 'Haha świetne'),
(15, 'Harnas', 25, 'Lol ale zajebiste');
