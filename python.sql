-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 17 2020 г., 23:02
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `python`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Автор', 7, 'add_author'),
(26, 'Can change Автор', 7, 'change_author'),
(27, 'Can delete Автор', 7, 'delete_author'),
(28, 'Can view Автор', 7, 'view_author'),
(29, 'Can add Серия книги', 8, 'add_series'),
(30, 'Can change Серия книги', 8, 'change_series'),
(31, 'Can delete Серия книги', 8, 'delete_series'),
(32, 'Can view Серия книги', 8, 'view_series'),
(33, 'Can add Жанр книги', 9, 'add_genre'),
(34, 'Can change Жанр книги', 9, 'change_genre'),
(35, 'Can delete Жанр книги', 9, 'delete_genre'),
(36, 'Can view Жанр книги', 9, 'view_genre'),
(37, 'Can add Издательство книги', 10, 'add_publisher'),
(38, 'Can change Издательство книги', 10, 'change_publisher'),
(39, 'Can delete Издательство книги', 10, 'delete_publisher'),
(40, 'Can view Издательство книги', 10, 'view_publisher'),
(41, 'Can add Книга', 11, 'add_book'),
(42, 'Can change Книга', 11, 'change_book'),
(43, 'Can delete Книга', 11, 'delete_book'),
(44, 'Can view Книга', 11, 'view_book');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$fa3beB032Zd6$ybxMCvqCR8MQlgk+gzQ4/zwNIYE7DME739YqTRnh2Kc=', '2020-09-17 19:38:52.387940', 1, 'admin', '', '', '', 1, 1, '2020-09-17 19:38:27.832339');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL,
  `dimensions` varchar(15) NOT NULL,
  `Series_id` int(11) DEFAULT NULL,
  `Publisher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`id`, `title`, `price`, `img`, `isbn`, `weight`, `dimensions`, `Series_id`, `Publisher_id`) VALUES
(2, 'Алла Горбунова: Конец света, моя любовь. Рассказы', 977, 'book/img/name-img-book0.png', '978-5-4448-1228-0', 352, '207x130x25', 13, 47),
(3, 'Анна Зенькова: Григорий без отчества Бабочкин', 841, 'book/img/name-img-book1.png', ' 978-5-00083-732-0', 502, ' 217x145x29', 11, 50),
(4, 'Екатерина Мурашова: Гвардия тревоги', 480, 'book/img/name-img-book2.png', ' 978-5-907180-30-7', 416, ' 200x145x30', 2, 46),
(5, 'Генри Хаггард: Копи царя Соломона', 6400, 'book/img/name-img-book3.png', ' 978-5-906928-04-7', 1454, ' 296x210x32', 6, 49),
(6, 'Марина Степнова: Сад', 620, 'book/img/name-img-book4.png', ' 978-5-17-118995-2', 424, ' 207x135x28', 17, 45),
(7, 'Артур Дойл: Песни действия', 578, 'book/img/name-img-book5.png', ' 978-5-7516-1444-7', 212, ' 173x132x13', 18, 53),
(8, 'Сэй-Сёнагон: Записки у изголовья', 480, 'book/img/name-img-book6.png', ' 978-5-906986-91-7', 262, ' 217x147x15', 9, 52),
(9, 'Ирина Млодик: Мужские разговоры. Книга для пап и сыновей', 432, 'book/img/name-img-book7.png', ' 978-5-907241-26-8', 236, ' 211x145x10', 10, 44),
(10, 'Евгений Пинелис: Всё ничего', 606, 'book/img/name-img-book8.png', ' 978-5-17-132900-6', 321, ' 210x135x19', 14, 45),
(11, 'Джо Спейн: Кто убил Оливию Коллинз?', 704, 'book/img/name-img-book9.png', ' 978-5-907143-61-6', 492, ' 207x133x25', 15, 52),
(12, 'Джойс Оутс: Исповедь моего сердца', 1136, 'book/img/name-img-book10.png', ' 978-5-7516-1600-7', 708, ' 207x135x35', 7, 53),
(13, 'Аркадий Аверченко: Русалка', 480, 'book/img/name-img-book11.png', ' 978-5-907143-79-1', 274, ' 218x147x15', 9, 52),
(14, 'Беляева, Новичкова: Ледовое побоище', 3440, 'book/img/name-img-book12.png', ' 978-5-9287-2041-4', 992, ' 306x260x30', 4, 57),
(15, 'Страницы истории. Христофор Колумб', 256, 'book/img/name-img-book13.png', ' 978-5-9287-2847-2', 128, ' 275x215x2', 4, 57),
(16, 'Александр Волков: Открой книгу! Волшебник Изумрудного города', 816, 'book/img/name-img-book14.png', ' 8187228723705xa0 ', 838, ' 263x206x18', 4, 57),
(17, 'Марк Твен: Приключения Гекльберри Финна', 1280, 'book/img/name-img-book15.png', ' 978-5-9287-3160-1', 1442, ' 280x224x24', 4, 57),
(18, 'Редьярд Киплинг: Нетландия. Всегда ваш, пес Бутс', 832, 'book/img/name-img-book16.png', ' 978-5-9287-3174-8', 574, ' 264x205x13', 4, 57),
(19, 'Энн Хогарт: Мафин и его веселые друзья', 496, 'book/img/name-img-book17.png', ' 978-5-9287-2791-8', 380, ' 263x203x11', 4, 57),
(20, 'Наталья Теремкова: Практический тренажер по развитию. Выпуск 1. ФГОС ДО', 304, 'book/img/name-img-book18.png', ' 978-5-906889003xa0 ', 122, ' 284x210x3', 12, 51),
(21, 'Надежда Мамаева: Ты же ведьма!', 392, 'book/img/name-img-book19.png', ' 978-5-9922-3089-5', 256, ' 208x135x20', 8, 56),
(22, 'Лена Сокол: Сердце умирает медленно', 450, 'book/img/name-img-book20.png', ' 978-5-04-111976-8', 329, ' 207x130x21', 16, 54),
(23, 'Белянин, Менделеева: Ученица царя обезьян', 454, 'book/img/name-img-book21.png', ' 978-5-9922-3124-3', 252, ' 207x135x22', 1, 56),
(24, 'Гилберт Честертон: Мудрость отца Брауна', 721, 'book/img/name-img-book22.png', ' 978-5-00108-234-7', 442, ' 210x147x20', 5, 55),
(25, 'Андрей Белянин: Кицунэ', 454, 'book/img/name-img-book23.png', ' 978-5-9922-3121-2', 338, ' 207x132x22', 1, 56),
(26, 'Владимир Корн: Теоретик. Один и без оружия', 416, 'book/img/name-img-book24.png', ' 978-5-9922-3130-4', 255, ' 205x130x25', 1, 56),
(27, 'Мгновения до бури. Выбор Леди', 392, 'book/img/name-img-book25.png', ' 978-5-9922-3128-1', 271, ' 205x130x25', 8, 56),
(28, 'Ночи с Шахразадой', 480, 'book/img/name-img-book26.png', ' 978-5-907338-01-2', 256, ' 217x147x14', 9, 52),
(29, 'Ганс Андерсен: Снежная королева', 624, 'book/img/name-img-book27.png', '978-5-907224-91-1', 420, '265x205x13', 3, 48),
(33, 'Маргарита Фадеева: Приключения Петрушки', 832, 'book/img/name-img-book28.png', '978-5-907224-31-5', 660, '265x205x18', 3, 48);

-- --------------------------------------------------------

--
-- Структура таблицы `book-author`
--

CREATE TABLE `book-author` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `book-author`
--

INSERT INTO `book-author` (`id`, `name`) VALUES
(126, 'Аверченко Аркадий Тимофеевич'),
(123, 'Александров Александр'),
(144, 'Андерсен Ханс Кристиан'),
(135, 'Бекетова Е.'),
(146, 'Беляева Елена'),
(130, 'Белянин Андрей Олегович'),
(114, 'Волков Александр Мелентьевич'),
(117, 'Волкова Татьяна Сергеевна'),
(121, 'Горбунова Алла Глебовна'),
(112, 'Дарузес Нина Леонидовна'),
(116, 'Джумакулиев Николай'),
(122, 'Дойл Артур Конан'),
(136, 'Доронина Ирина'),
(131, 'Зенькова Анна'),
(108, 'Киплинг Редьярд Джозеф'),
(138, 'Корн Владимир'),
(127, 'Корф Ольга'),
(120, 'Ларионов Д.'),
(119, 'Малышкина Вера'),
(140, 'Мамаева Надежда Николаевна'),
(129, 'Маркова Вера Николаевна'),
(113, 'Менделеева Дарья'),
(141, 'Млодик Ирина Юрьевна'),
(139, 'Мурашова Екатерина Вадимовна'),
(137, 'Новичкова Елена'),
(124, 'Облонская Раиса Ефимовна'),
(132, 'Образцова Ольга'),
(125, 'Оутс Джойс Кэрол'),
(143, 'Пинелис Евгений Всеволодович'),
(142, 'Сокол Лена'),
(104, 'Спейн Джо'),
(105, 'Стельмах Т. А.'),
(106, 'Степнова Марина Львовна'),
(145, 'Ступненкова Елена'),
(110, 'Сэй-Сёнагон'),
(111, 'Твен Марк'),
(133, 'Теремкова Наталья Эрнестовна'),
(134, 'Токмакова Ирина Петровна'),
(118, 'Фадеева Маргарита Андреевна'),
(115, 'Фельдман Евгений Давыдович'),
(109, 'Хаггард Генри Райдер'),
(107, 'Хогарт Энн '),
(128, 'Честертон Гилберт Кит');

-- --------------------------------------------------------

--
-- Структура таблицы `book-genre`
--

CREATE TABLE `book-genre` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `book-genre`
--

INSERT INTO `book-genre` (`id`, `name`) VALUES
(50, 'Классическая зарубежная поэзия'),
(49, 'Классическая зарубежная проза'),
(51, 'Классический зарубежный детектив'),
(44, 'Книги для родителей'),
(47, 'Молодежная литература и др.'),
(48, 'Повести и рассказы о детях'),
(45, 'Современная зарубежная проза'),
(46, 'Современная отечественная проза');

-- --------------------------------------------------------

--
-- Структура таблицы `book-publisher`
--

CREATE TABLE `book-publisher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `book-publisher`
--

INSERT INTO `book-publisher` (`id`, `name`) VALUES
(54, 'Like Book'),
(56, 'Альфа-книга'),
(52, 'Аркадия'),
(49, 'Верже'),
(46, 'Волчок'),
(55, 'Издательский дом Мещерякова'),
(48, 'Качели'),
(50, 'КомпасГид'),
(57, 'Лабиринт'),
(47, 'Новое литературное обозрение'),
(44, 'Портал'),
(45, 'Редакция Елены Шубиной'),
(51, 'Стрекоза'),
(53, 'Текст');

-- --------------------------------------------------------

--
-- Структура таблицы `book-series`
--

CREATE TABLE `book-series` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `book-series`
--

INSERT INTO `book-series` (`id`, `name`) VALUES
(9, 'Black and White'),
(16, 'Young Adult. Инстахит. Романтика Лены Сокол'),
(18, 'Билингва'),
(15, 'Вертиго'),
(4, 'Детская художественная литература'),
(14, 'Классное чтение'),
(5, 'Книги Гилберта Честертона'),
(3, 'Книжная полка'),
(6, 'Книжный шкаф'),
(10, 'Мама без драмы'),
(17, 'Марина Степнова: странные женщины'),
(2, 'Не прислоняться'),
(11, 'Подросток N'),
(12, 'Практический тренажер по развитию'),
(8, 'Романтическая фантастика'),
(7, 'Семейный роман'),
(1, 'Фантастический боевик'),
(13, 'Художественная серия');

-- --------------------------------------------------------

--
-- Структура таблицы `book_author`
--

CREATE TABLE `book_author` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `book_editor`
--

CREATE TABLE `book_editor` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `book_genre`
--

CREATE TABLE `book_genre` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-09-17 19:52:13.079978', '29', 'Ганс Андерсен: Снежная королева', 2, '[{\"changed\": {\"fields\": [\"Isbn\", \"\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440\\u044b\", \"Genre\"]}}]', 11, 1),
(2, '2020-09-17 19:53:06.759649', '2', 'Алла Горбунова: Конец света, моя любовь. Рассказы', 2, '[{\"changed\": {\"fields\": [\"Isbn\", \"\\u0420\\u0430\\u0437\\u043c\\u0435\\u0440\\u044b\", \"Genre\"]}}]', 11, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'book', 'author'),
(11, 'book', 'book'),
(9, 'book', 'genre'),
(10, 'book', 'publisher'),
(8, 'book', 'series'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура таблицы `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-09-17 19:29:39.878760'),
(2, 'auth', '0001_initial', '2020-09-17 19:29:39.946628'),
(3, 'admin', '0001_initial', '2020-09-17 19:29:40.039219'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-09-17 19:29:40.063874'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-17 19:29:40.070894'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-09-17 19:29:40.097934'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-09-17 19:29:40.116078'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-09-17 19:29:40.134733'),
(9, 'auth', '0004_alter_user_username_opts', '2020-09-17 19:29:40.140758'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-09-17 19:29:40.155543'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-09-17 19:29:40.158536'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-09-17 19:29:40.164560'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-09-17 19:29:40.182046'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-09-17 19:29:40.198079'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-09-17 19:29:40.215124'),
(16, 'auth', '0011_update_proxy_permissions', '2020-09-17 19:29:40.222143'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-09-17 19:29:40.240601'),
(18, 'book', '0001_initial', '2020-09-17 19:29:40.248623'),
(19, 'book', '0002_series', '2020-09-17 19:29:40.257326'),
(20, 'book', '0003_genre_publisher', '2020-09-17 19:29:40.272368'),
(21, 'book', '0004_auto_20200913_2313', '2020-09-17 19:29:40.293424'),
(22, 'book', '0005_book', '2020-09-17 19:29:40.305456'),
(23, 'book', '0006_auto_20200914_1827', '2020-09-17 19:29:40.319486'),
(24, 'book', '0007_auto_20200914_1829', '2020-09-17 19:29:40.325679'),
(25, 'book', '0008_book_idseries', '2020-09-17 19:29:40.342724'),
(26, 'book', '0009_auto_20200915_2245', '2020-09-17 19:29:40.372352'),
(27, 'book', '0010_auto_20200915_2248', '2020-09-17 19:29:40.430495'),
(28, 'book', '0011_auto_20200916_2257', '2020-09-17 19:29:40.467423'),
(29, 'sessions', '0001_initial', '2020-09-17 19:29:40.476447'),
(30, 'book', '0012_auto_20200917_2249', '2020-09-17 19:49:17.776153'),
(31, 'book', '0013_book_genre', '2020-09-17 19:50:11.837135'),
(32, 'book', '0014_auto_20200917_2250', '2020-09-17 19:50:46.455279'),
(33, 'book', '0015_auto_20200917_2251', '2020-09-17 19:51:20.634117'),
(34, 'book', '0016_book_author', '2020-09-17 19:55:49.318230'),
(35, 'book', '0017_auto_20200917_2301', '2020-09-17 20:01:05.011617');

-- --------------------------------------------------------

--
-- Структура таблицы `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0j1k6ghx9n2a08ghvey6n98bxucyi0lt', '.eJxVjDsOwjAQBe_iGlnxZ_2hpM8ZrPXaxgHkSHFSIe5OIqWA9s3Me7OA21rD1vMSpsSuTLDL7xaRnrkdID2w3WdOc1uXKfJD4SftfJxTft1O9--gYq97rWUkAc4AotVCeG-MB8CIRRodB2sxDx5QeQXGoiTSKlNxCvfI6uLY5wvBKDce:1kIzk4:LGqcoZw-XREhlEVQOwGanOZvbwkqXPxYdkjmECne79s', '2020-10-01 19:38:52.388972');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индексы таблицы `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Индексы таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD KEY `book_Publisher_id_afb15c76_fk_book_publisher_id` (`Publisher_id`),
  ADD KEY `book_Series_id_db6171d3_fk_book_series_id` (`Series_id`);

--
-- Индексы таблицы `book-author`
--
ALTER TABLE `book-author`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `author_book_name_58f61901_uniq` (`name`);

--
-- Индексы таблицы `book-genre`
--
ALTER TABLE `book-genre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genre_book_name_e7fe76d2_uniq` (`name`);

--
-- Индексы таблицы `book-publisher`
--
ALTER TABLE `book-publisher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `publisher_book_name_e7efbb7f_uniq` (`name`);

--
-- Индексы таблицы `book-series`
--
ALTER TABLE `book-series`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series_book_name_695de159_uniq` (`name`);

--
-- Индексы таблицы `book_author`
--
ALTER TABLE `book_author`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_Author_book_id_author_id_9b1e4aef_uniq` (`book_id`,`author_id`),
  ADD KEY `book_Author_author_id_ea31fc84_fk_book-author_id` (`author_id`);

--
-- Индексы таблицы `book_editor`
--
ALTER TABLE `book_editor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_editor_book_id_author_id_37b1ba6d_uniq` (`book_id`,`author_id`),
  ADD KEY `book_editor_author_id_0bce2d1d_fk_book-author_id` (`author_id`);

--
-- Индексы таблицы `book_genre`
--
ALTER TABLE `book_genre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_Genre_book_id_genre_id_1ca227ad_uniq` (`book_id`,`genre_id`),
  ADD KEY `book_Genre_genre_id_5a1426c5_fk_genreBook_id` (`genre_id`);

--
-- Индексы таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Индексы таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индексы таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `book-author`
--
ALTER TABLE `book-author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT для таблицы `book-genre`
--
ALTER TABLE `book-genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `book-publisher`
--
ALTER TABLE `book-publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `book-series`
--
ALTER TABLE `book-series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `book_author`
--
ALTER TABLE `book_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `book_editor`
--
ALTER TABLE `book_editor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `book_genre`
--
ALTER TABLE `book_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_Publisher_id_afb15c76_fk_book_publisher_id` FOREIGN KEY (`Publisher_id`) REFERENCES `book-publisher` (`id`),
  ADD CONSTRAINT `book_Series_id_db6171d3_fk_book_series_id` FOREIGN KEY (`Series_id`) REFERENCES `book-series` (`id`);

--
-- Ограничения внешнего ключа таблицы `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `book_Author_author_id_ea31fc84_fk_book-author_id` FOREIGN KEY (`author_id`) REFERENCES `book-author` (`id`),
  ADD CONSTRAINT `book_Author_book_id_380fc95e_fk_book_id` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`);

--
-- Ограничения внешнего ключа таблицы `book_editor`
--
ALTER TABLE `book_editor`
  ADD CONSTRAINT `book_editor_author_id_0bce2d1d_fk_book-author_id` FOREIGN KEY (`author_id`) REFERENCES `book-author` (`id`),
  ADD CONSTRAINT `book_editor_book_id_49c4050a_fk_book_id` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`);

--
-- Ограничения внешнего ключа таблицы `book_genre`
--
ALTER TABLE `book_genre`
  ADD CONSTRAINT `book_Genre_book_id_ec6bff5f_fk_book_id` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `book_Genre_genre_id_5a1426c5_fk_genreBook_id` FOREIGN KEY (`genre_id`) REFERENCES `book-genre` (`id`);

--
-- Ограничения внешнего ключа таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
