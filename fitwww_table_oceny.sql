
-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny`
--

CREATE TABLE `oceny` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `idprzepisu` int(11) NOT NULL,
  `ocena` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `oceny`
--

INSERT INTO `oceny` (`id`, `login`, `idprzepisu`, `ocena`) VALUES
(36, 'l', 36, 1),
(37, 'lonio103', 36, 5),
(38, 'lonio103', 29, 3),
(39, 'lonio103', 37, 3),
(40, 'lonio103', 14, 2),
(41, 'lonio103', 25, 5),
(42, 'Harnas', 14, 4);
