
-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
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
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `imie`, `nazwisko`, `email`, `login`, `haslo`, `awatar`, `rola`) VALUES
(5, '-----', '----------', '--------', 'Admin', 'a', NULL, 'A'),
(56, 'Grzegorz', 'Malinowski', 'lonio103@gmail.com', 'lonio103', '12345678', 'awatary/Bez nazwy.png', 'U'),
(57, 'Wojtek', 'Marcinko', 'harnas123@gmail.com', 'Harnas', '12345678', 'awatary/Przechwytywanie.PNG', 'U');
