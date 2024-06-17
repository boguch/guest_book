-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Июн 17 2024 г., 16:46
-- Версия сервера: 10.6.16-MariaDB-0ubuntu0.22.04.1
-- Версия PHP: 8.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bo6uch_gmail_com8318_`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `captcha` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `date` varchar(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `browser` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `captcha`, `text`, `date`, `ip`, `browser`) VALUES
(1, 'Alex', 'alex@gmail/com', '77777', 'hello', '2024-06-07', '127.0.0.1', 'chrome'),
(2, 'Andrey', 'bo6uch@gmail.com', 'qwe123', 'full text', 'Sun Jun 16 2024 00:46:35 GMT+0500 (Екатеринбург, стандартное время)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),
(3, 'Stepan', 'bo6uch@gmail.com', 'asd123', 'full text', 'Sun Jun 16 2024 01:42:59 GMT+0500 (Екатеринбург, стандартное время)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),
(4, 'Ivan', 'bo6uch@gmail.com', 'qwe123', 'hello', 'Sun Jun 16 2024 13:13:28 GMT+0500 (Екатеринбург, стандартное время)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),
(5, 'Andrey', 'bo6uch@gmail.com', 'qwe123', 'hello', 'Sun Jun 16 2024 13:13:50 GMT+0500 (Екатеринбург, стандартное время)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),
(6, 'Andrey', 'bo6uch@gmail.com', 'qwe133', 'hello', 'Sun Jun 16 2024 13:14:17 GMT+0500 (Екатеринбург, стандартное время)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),
(7, 'Andrey', 'bo6uch@gmail.com', 'qwe123', 'hello', 'Sun Jun 16 2024 13:15:05 GMT+0500 (Екатеринбург, стандартное время)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),
(8, 'Artem', 'bo6uch@gmail.com', 'dLPGB', 'fullfullfullfullfullfullfullfullfullfullfullfullfull', 'Sun Jun 16 2024 23:03:13 GMT+0500 (Екатеринбург, стандартное время)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),
(9, 'Andrey', 'bo6uch@gmail.com', 'kp4uW', 'dfhdfhdfhdfhdfhdfhd', 'Sun Jun 16 2024 23:17:06 GMT+0500 (Екатеринбург, стандартное время)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),
(10, 'Andrey', 'bo6uch@gmail.com', 'vgnLM', 'asdasdasdasdasdassd', 'Mon Jun 17 2024 09:33:12 GMT+0500 (Екатеринбург, стандартное время)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),
(11, 'Igor', 'bo6uch@gmail.com', 'QTnWg', 'dfgdhgjlkkqwertrryukjj', 'Mon Jun 17 2024 12:14:35 GMT+0500 (Екатеринбург, стандартное время)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),
(12, 'Bogdan', 'bo6uch@gmail.com', '62D7p', 'jhkfghfgzdrgsdfgsdgr', 'Mon Jun 17 2024 14:20:13 GMT+0500 (Екатеринбург, стандартное время)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),
(13, 'Bogdan', 'bo6uch@gmail.com', '62D7p', 'jhkfghfgzdrgsdfgsdgr', 'Mon Jun 17 2024 14:20:13 GMT+0500 (Екатеринбург, стандартное время)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),
(14, 'Ярослав', 'bo6uch@gmail.com', 'qAkxc', 'дпораролаплрвовапрыа', 'Mon Jun 17 2024 14:27:17 GMT+0500 (Екатеринбург, стандартное время)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),
(15, 'platon', 'alex@gami.com', '4q7IT', 'ysdfsfdfdgdsfsdfsf', 'Mon Jun 17 2024 14:47:18 GMT+0500 (Екатеринбург, стандартное время)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),
(16, 'Максим', 'maks@yandex.ru', 'zw7qH', 'srjjfgxjfghxfhgsdtshrs', 'Mon Jun 17 2024 14:58:06 GMT+0500 (Екатеринбург, стандартное время)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),
(17, 'Федор', 'fedor@email.ru', 'PMIo4', 'ghkfgliukytharggfzgfh', 'Mon Jun 17 2024 15:10:31 GMT+0500 (Екатеринбург, стандартное время)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),
(18, 'Степан', 'zozikgoog@gmail.com', 'jRA7Q', 'здравствуйте всего хорошего', 'Mon Jun 17 2024 18:08:23 GMT+0500 (Екатеринбург, стандартное время)', '37.76.152.232', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),
(19, 'qrew', 'qwer@asdasd.ru', 'yAKiU', 'esdfsdfadfasfdasdf', 'Mon Jun 17 2024 18:26:49 GMT+0500 (Екатеринбург, стандартное время)', '37.76.152.232', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0'),
(20, 'asdsda', 'dfsfsaf@mail.ru', 'TX8nK', 'saddasnmmnmhm', 'Mon Jun 17 2024 18:29:59 GMT+0500 (Екатеринбург, стандартное время)', '185.201.88.246', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36'),
(21, 'Матвей', 'thetimegoesby@mail.ru', 'KFW3i', 'Не ешьте красный доширак...', 'Mon Jun 17 2024 18:36:09 GMT+0500 (Екатеринбург, стандартное время)', '185.201.88.246', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
