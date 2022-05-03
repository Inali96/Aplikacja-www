
-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wiadomosci`
--

CREATE TABLE `wiadomosci` (
  `id` int(11) NOT NULL,
  `imie` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `telefon` int(9) NOT NULL,
  `tresc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wiadomosci`
--

INSERT INTO `wiadomosci` (`id`, `imie`, `email`, `telefon`, `tresc`) VALUES
(13, 'Maryśa', 'marwik@gmail.com', 123456789, 'Witam mam ciekaw pytanie.Do widzenia'),
(14, 'Krystian', 'harnas123@gmail.com', 123345678, 'Siema mam pytanie');
