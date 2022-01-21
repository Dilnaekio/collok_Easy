-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 22 jan. 2022 à 00:47
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `collok_easy`
--

-- --------------------------------------------------------

--
-- Structure de la table `accommodations`
--

CREATE TABLE `accommodations` (
  `id_accommodation` int(11) NOT NULL,
  `name_accommodation` varchar(50) NOT NULL,
  `number_collokers_accommodation` int(11) DEFAULT NULL,
  `rent_amount_accommodation` decimal(10,0) DEFAULT NULL,
  `housing_area_accommodation` varchar(20) DEFAULT NULL,
  `id_postal_address` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `accommodations_rooms`
--

CREATE TABLE `accommodations_rooms` (
  `id_accommodation` int(11) NOT NULL,
  `id_room` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `accounts`
--

CREATE TABLE `accounts` (
  `id_account` int(11) NOT NULL,
  `mail_password` varchar(100) NOT NULL,
  `password_account` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `calendars`
--

CREATE TABLE `calendars` (
  `id_calendar` int(11) NOT NULL,
  `day_calendar` datetime NOT NULL,
  `week_calendar` datetime NOT NULL,
  `month_calendar` datetime NOT NULL,
  `year_calendar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `name_category` varchar(30) DEFAULT NULL,
  `description_category` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cities`
--

CREATE TABLE `cities` (
  `id_city` int(11) NOT NULL,
  `name_city` varchar(120) NOT NULL,
  `cp_city` varchar(25) NOT NULL,
  `id_country` int(11) DEFAULT NULL,
  `department_city` varchar(3) DEFAULT NULL,
  `slug_city` varchar(255) DEFAULT NULL,
  `simple_name_city` varchar(45) DEFAULT NULL,
  `real_name_city` varchar(45) DEFAULT NULL,
  `soundex_name_city` varchar(20) DEFAULT NULL,
  `metaphone_name_city` varchar(22) DEFAULT NULL,
  `township_city` varchar(3) DEFAULT NULL,
  `township_code_city` varchar(5) NOT NULL,
  `borough_city` smallint(3) UNSIGNED DEFAULT NULL,
  `canton_city` varchar(4) DEFAULT NULL,
  `amdi_city` smallint(5) UNSIGNED DEFAULT NULL,
  `population_2010_city` mediumint(11) UNSIGNED DEFAULT NULL,
  `population_1999_city` mediumint(11) UNSIGNED DEFAULT NULL,
  `population_2012_city` mediumint(10) UNSIGNED DEFAULT NULL COMMENT 'approximatif',
  `density_2010_city` int(11) DEFAULT NULL,
  `surface_city` float DEFAULT NULL,
  `longitude_deg_city` float DEFAULT NULL,
  `latitude_deg_city` float DEFAULT NULL,
  `longitude_grd_city` varchar(9) DEFAULT NULL,
  `latitude_grd_city` varchar(8) DEFAULT NULL,
  `longitude_dms_city` varchar(9) DEFAULT NULL,
  `latitude_dms_city` varchar(8) DEFAULT NULL,
  `zmin_city` mediumint(4) DEFAULT NULL,
  `zmax_city` mediumint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `connections`
--

CREATE TABLE `connections` (
  `id_connection` int(11) NOT NULL,
  `status_connection` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `countries`
--

CREATE TABLE `countries` (
  `id_country` int(11) NOT NULL,
  `name_country` varchar(80) NOT NULL,
  `iso_country` char(2) NOT NULL,
  `iso3_country` char(3) NOT NULL,
  `num_code_country` smallint(6) DEFAULT NULL,
  `phone_code_country` int(5) NOT NULL,
  `nice_name_country` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `countries`
--

INSERT INTO `countries` (`id_country`, `name_country`, `iso_country`, `iso3_country`, `num_code_country`, `phone_code_country`, `nice_name_country`) VALUES
(1, 'AFGHANISTAN', 'AF', 'AFG', 4, 93, 'Afghanistan'),
(2, 'ALBANIA', 'AL', 'ALB', 8, 355, 'Albania'),
(3, 'ALGERIA', 'DZ', 'DZA', 12, 213, 'Algeria'),
(4, 'AMERICAN SAMOA', 'AS', 'ASM', 16, 1684, 'American Samoa'),
(5, 'ANDORRA', 'AD', 'AND', 20, 376, 'Andorra'),
(6, 'ANGOLA', 'AO', 'AGO', 24, 244, 'Angola'),
(7, 'ANGUILLA', 'AI', 'AIA', 660, 1264, 'Anguilla'),
(8, 'ANTARCTICA', 'AQ', '', NULL, 0, 'Antarctica'),
(9, 'ANTIGUA AND BARBUDA', 'AG', 'ATG', 28, 1268, 'Antigua and Barbuda'),
(10, 'ARGENTINA', 'AR', 'ARG', 32, 54, 'Argentina'),
(11, 'ARMENIA', 'AM', 'ARM', 51, 374, 'Armenia'),
(12, 'ARUBA', 'AW', 'ABW', 533, 297, 'Aruba'),
(13, 'AUSTRALIA', 'AU', 'AUS', 36, 61, 'Australia'),
(14, 'AUSTRIA', 'AT', 'AUT', 40, 43, 'Austria'),
(15, 'AZERBAIJAN', 'AZ', 'AZE', 31, 994, 'Azerbaijan'),
(16, 'BAHAMAS', 'BS', 'BHS', 44, 1242, 'Bahamas'),
(17, 'BAHRAIN', 'BH', 'BHR', 48, 973, 'Bahrain'),
(18, 'BANGLADESH', 'BD', 'BGD', 50, 880, 'Bangladesh'),
(19, 'BARBADOS', 'BB', 'BRB', 52, 1246, 'Barbados'),
(20, 'BELARUS', 'BY', 'BLR', 112, 375, 'Belarus'),
(21, 'BELGIUM', 'BE', 'BEL', 56, 32, 'Belgium'),
(22, 'BELIZE', 'BZ', 'BLZ', 84, 501, 'Belize'),
(23, 'BENIN', 'BJ', 'BEN', 204, 229, 'Benin'),
(24, 'BERMUDA', 'BM', 'BMU', 60, 1441, 'Bermuda'),
(25, 'BHUTAN', 'BT', 'BTN', 64, 975, 'Bhutan'),
(26, 'BOLIVIA', 'BO', 'BOL', 68, 591, 'Bolivia'),
(27, 'BOSNIA AND HERZEGOVINA', 'BA', 'BIH', 70, 387, 'Bosnia and Herzegovina'),
(28, 'BOTSWANA', 'BW', 'BWA', 72, 267, 'Botswana'),
(29, 'BOUVET ISLAND', 'BV', '', NULL, 0, 'Bouvet Island'),
(30, 'BRAZIL', 'BR', 'BRA', 76, 55, 'Brazil'),
(31, 'BRITISH INDIAN OCEAN TERRITORY', 'IO', '', NULL, 246, 'British Indian Ocean Territory'),
(32, 'BRUNEI DARUSSALAM', 'BN', 'BRN', 96, 673, 'Brunei Darussalam'),
(33, 'BULGARIA', 'BG', 'BGR', 100, 359, 'Bulgaria'),
(34, 'BURKINA FASO', 'BF', 'BFA', 854, 226, 'Burkina Faso'),
(35, 'BURUNDI', 'BI', 'BDI', 108, 257, 'Burundi'),
(36, 'CAMBODIA', 'KH', 'KHM', 116, 855, 'Cambodia'),
(37, 'CAMEROON', 'CM', 'CMR', 120, 237, 'Cameroon'),
(38, 'CANADA', 'CA', 'CAN', 124, 1, 'Canada'),
(39, 'CAPE VERDE', 'CV', 'CPV', 132, 238, 'Cape Verde'),
(40, 'CAYMAN ISLANDS', 'KY', 'CYM', 136, 1345, 'Cayman Islands'),
(41, 'CENTRAL AFRICAN REPUBLIC', 'CF', 'CAF', 140, 236, 'Central African Republic'),
(42, 'CHAD', 'TD', 'TCD', 148, 235, 'Chad'),
(43, 'CHILE', 'CL', 'CHL', 152, 56, 'Chile'),
(44, 'CHINA', 'CN', 'CHN', 156, 86, 'China'),
(45, 'CHRISTMAS ISLAND', 'CX', '', NULL, 61, 'Christmas Island'),
(46, 'COCOS (KEELING) ISLANDS', 'CC', '', NULL, 672, 'Cocos (Keeling) Islands'),
(47, 'COLOMBIA', 'CO', 'COL', 170, 57, 'Colombia'),
(48, 'COMOROS', 'KM', 'COM', 174, 269, 'Comoros'),
(49, 'CONGO', 'CG', 'COG', 178, 242, 'Congo'),
(50, 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'CD', 'COD', 180, 242, 'Congo, the Democratic Republic of the'),
(51, 'COOK ISLANDS', 'CK', 'COK', 184, 682, 'Cook Islands'),
(52, 'COSTA RICA', 'CR', 'CRI', 188, 506, 'Costa Rica'),
(53, 'COTE D\'IVOIRE', 'CI', 'CIV', 384, 225, 'Cote D\'Ivoire'),
(54, 'CROATIA', 'HR', 'HRV', 191, 385, 'Croatia'),
(55, 'CUBA', 'CU', 'CUB', 192, 53, 'Cuba'),
(56, 'CYPRUS', 'CY', 'CYP', 196, 357, 'Cyprus'),
(57, 'CZECH REPUBLIC', 'CZ', 'CZE', 203, 420, 'Czech Republic'),
(58, 'DENMARK', 'DK', 'DNK', 208, 45, 'Denmark'),
(59, 'DJIBOUTI', 'DJ', 'DJI', 262, 253, 'Djibouti'),
(60, 'DOMINICA', 'DM', 'DMA', 212, 1767, 'Dominica'),
(61, 'DOMINICAN REPUBLIC', 'DO', 'DOM', 214, 1809, 'Dominican Republic'),
(62, 'ECUADOR', 'EC', 'ECU', 218, 593, 'Ecuador'),
(63, 'EGYPT', 'EG', 'EGY', 818, 20, 'Egypt'),
(64, 'EL SALVADOR', 'SV', 'SLV', 222, 503, 'El Salvador'),
(65, 'EQUATORIAL GUINEA', 'GQ', 'GNQ', 226, 240, 'Equatorial Guinea'),
(66, 'ERITREA', 'ER', 'ERI', 232, 291, 'Eritrea'),
(67, 'ESTONIA', 'EE', 'EST', 233, 372, 'Estonia'),
(68, 'ETHIOPIA', 'ET', 'ETH', 231, 251, 'Ethiopia'),
(69, 'FALKLAND ISLANDS (MALVINAS)', 'FK', 'FLK', 238, 500, 'Falkland Islands (Malvinas)'),
(70, 'FAROE ISLANDS', 'FO', 'FRO', 234, 298, 'Faroe Islands'),
(71, 'FIJI', 'FJ', 'FJI', 242, 679, 'Fiji'),
(72, 'FINLAND', 'FI', 'FIN', 246, 358, 'Finland'),
(73, 'FRANCE', 'FR', 'FRA', 250, 33, 'France'),
(74, 'FRENCH GUIANA', 'GF', 'GUF', 254, 594, 'French Guiana'),
(75, 'FRENCH POLYNESIA', 'PF', 'PYF', 258, 689, 'French Polynesia'),
(76, 'FRENCH SOUTHERN TERRITORIES', 'TF', '', NULL, 0, 'French Southern Territories'),
(77, 'GABON', 'GA', 'GAB', 266, 241, 'Gabon'),
(78, 'GAMBIA', 'GM', 'GMB', 270, 220, 'Gambia'),
(79, 'GEORGIA', 'GE', 'GEO', 268, 995, 'Georgia'),
(80, 'GERMANY', 'DE', 'DEU', 276, 49, 'Germany'),
(81, 'GHANA', 'GH', 'GHA', 288, 233, 'Ghana'),
(82, 'GIBRALTAR', 'GI', 'GIB', 292, 350, 'Gibraltar'),
(83, 'GREECE', 'GR', 'GRC', 300, 30, 'Greece'),
(84, 'GREENLAND', 'GL', 'GRL', 304, 299, 'Greenland'),
(85, 'GRENADA', 'GD', 'GRD', 308, 1473, 'Grenada'),
(86, 'GUADELOUPE', 'GP', 'GLP', 312, 590, 'Guadeloupe'),
(87, 'GUAM', 'GU', 'GUM', 316, 1671, 'Guam'),
(88, 'GUATEMALA', 'GT', 'GTM', 320, 502, 'Guatemala'),
(89, 'GUINEA', 'GN', 'GIN', 324, 224, 'Guinea'),
(90, 'GUINEA-BISSAU', 'GW', 'GNB', 624, 245, 'Guinea-Bissau'),
(91, 'GUYANA', 'GY', 'GUY', 328, 592, 'Guyana'),
(92, 'HAITI', 'HT', 'HTI', 332, 509, 'Haiti'),
(93, 'HEARD ISLAND AND MCDONALD ISLANDS', 'HM', '', NULL, 0, 'Heard Island and Mcdonald Islands'),
(94, 'HOLY SEE (VATICAN CITY STATE)', 'VA', 'VAT', 336, 39, 'Holy See (Vatican City State)'),
(95, 'HONDURAS', 'HN', 'HND', 340, 504, 'Honduras'),
(96, 'HONG KONG', 'HK', 'HKG', 344, 852, 'Hong Kong'),
(97, 'HUNGARY', 'HU', 'HUN', 348, 36, 'Hungary'),
(98, 'ICELAND', 'IS', 'ISL', 352, 354, 'Iceland'),
(99, 'INDIA', 'IN', 'IND', 356, 91, 'India'),
(100, 'INDONESIA', 'ID', 'IDN', 360, 62, 'Indonesia'),
(101, 'IRAN, ISLAMIC REPUBLIC OF', 'IR', 'IRN', 364, 98, 'Iran, Islamic Republic of'),
(102, 'IRAQ', 'IQ', 'IRQ', 368, 964, 'Iraq'),
(103, 'IRELAND', 'IE', 'IRL', 372, 353, 'Ireland'),
(104, 'ISRAEL', 'IL', 'ISR', 376, 972, 'Israel'),
(105, 'ITALY', 'IT', 'ITA', 380, 39, 'Italy'),
(106, 'JAMAICA', 'JM', 'JAM', 388, 1876, 'Jamaica'),
(107, 'JAPAN', 'JP', 'JPN', 392, 81, 'Japan'),
(108, 'JORDAN', 'JO', 'JOR', 400, 962, 'Jordan'),
(109, 'KAZAKHSTAN', 'KZ', 'KAZ', 398, 7, 'Kazakhstan'),
(110, 'KENYA', 'KE', 'KEN', 404, 254, 'Kenya'),
(111, 'KIRIBATI', 'KI', 'KIR', 296, 686, 'Kiribati'),
(112, 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'KP', 'PRK', 408, 850, 'Korea, Democratic People\'s Republic of'),
(113, 'KOREA, REPUBLIC OF', 'KR', 'KOR', 410, 82, 'Korea, Republic of'),
(114, 'KUWAIT', 'KW', 'KWT', 414, 965, 'Kuwait'),
(115, 'KYRGYZSTAN', 'KG', 'KGZ', 417, 996, 'Kyrgyzstan'),
(116, 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'LA', 'LAO', 418, 856, 'Lao People\'s Democratic Republic'),
(117, 'LATVIA', 'LV', 'LVA', 428, 371, 'Latvia'),
(118, 'LEBANON', 'LB', 'LBN', 422, 961, 'Lebanon'),
(119, 'LESOTHO', 'LS', 'LSO', 426, 266, 'Lesotho'),
(120, 'LIBERIA', 'LR', 'LBR', 430, 231, 'Liberia'),
(121, 'LIBYAN ARAB JAMAHIRIYA', 'LY', 'LBY', 434, 218, 'Libyan Arab Jamahiriya'),
(122, 'LIECHTENSTEIN', 'LI', 'LIE', 438, 423, 'Liechtenstein'),
(123, 'LITHUANIA', 'LT', 'LTU', 440, 370, 'Lithuania'),
(124, 'LUXEMBOURG', 'LU', 'LUX', 442, 352, 'Luxembourg'),
(125, 'MACAO', 'MO', 'MAC', 446, 853, 'Macao'),
(126, 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'MK', 'MKD', 807, 389, 'Macedonia, the Former Yugoslav Republic of'),
(127, 'MADAGASCAR', 'MG', 'MDG', 450, 261, 'Madagascar'),
(128, 'MALAWI', 'MW', 'MWI', 454, 265, 'Malawi'),
(129, 'MALAYSIA', 'MY', 'MYS', 458, 60, 'Malaysia'),
(130, 'MALDIVES', 'MV', 'MDV', 462, 960, 'Maldives'),
(131, 'MALI', 'ML', 'MLI', 466, 223, 'Mali'),
(132, 'MALTA', 'MT', 'MLT', 470, 356, 'Malta'),
(133, 'MARSHALL ISLANDS', 'MH', 'MHL', 584, 692, 'Marshall Islands'),
(134, 'MARTINIQUE', 'MQ', 'MTQ', 474, 596, 'Martinique'),
(135, 'MAURITANIA', 'MR', 'MRT', 478, 222, 'Mauritania'),
(136, 'MAURITIUS', 'MU', 'MUS', 480, 230, 'Mauritius'),
(137, 'MAYOTTE', 'YT', '', NULL, 269, 'Mayotte'),
(138, 'MEXICO', 'MX', 'MEX', 484, 52, 'Mexico'),
(139, 'MICRONESIA, FEDERATED STATES OF', 'FM', 'FSM', 583, 691, 'Micronesia, Federated States of'),
(140, 'MOLDOVA, REPUBLIC OF', 'MD', 'MDA', 498, 373, 'Moldova, Republic of'),
(141, 'MONACO', 'MC', 'MCO', 492, 377, 'Monaco'),
(142, 'MONGOLIA', 'MN', 'MNG', 496, 976, 'Mongolia'),
(143, 'MONTSERRAT', 'MS', 'MSR', 500, 1664, 'Montserrat'),
(144, 'MOROCCO', 'MA', 'MAR', 504, 212, 'Morocco'),
(145, 'MOZAMBIQUE', 'MZ', 'MOZ', 508, 258, 'Mozambique'),
(146, 'MYANMAR', 'MM', 'MMR', 104, 95, 'Myanmar'),
(147, 'NAMIBIA', 'NA', 'NAM', 516, 264, 'Namibia'),
(148, 'NAURU', 'NR', 'NRU', 520, 674, 'Nauru'),
(149, 'NEPAL', 'NP', 'NPL', 524, 977, 'Nepal'),
(150, 'NETHERLANDS', 'NL', 'NLD', 528, 31, 'Netherlands'),
(151, 'NETHERLANDS ANTILLES', 'AN', 'ANT', 530, 599, 'Netherlands Antilles'),
(152, 'NEW CALEDONIA', 'NC', 'NCL', 540, 687, 'New Caledonia'),
(153, 'NEW ZEALAND', 'NZ', 'NZL', 554, 64, 'New Zealand'),
(154, 'NICARAGUA', 'NI', 'NIC', 558, 505, 'Nicaragua'),
(155, 'NIGER', 'NE', 'NER', 562, 227, 'Niger'),
(156, 'NIGERIA', 'NG', 'NGA', 566, 234, 'Nigeria'),
(157, 'NIUE', 'NU', 'NIU', 570, 683, 'Niue'),
(158, 'NORFOLK ISLAND', 'NF', 'NFK', 574, 672, 'Norfolk Island'),
(159, 'NORTHERN MARIANA ISLANDS', 'MP', 'MNP', 580, 1670, 'Northern Mariana Islands'),
(160, 'NORWAY', 'NO', 'NOR', 578, 47, 'Norway'),
(161, 'OMAN', 'OM', 'OMN', 512, 968, 'Oman'),
(162, 'PAKISTAN', 'PK', 'PAK', 586, 92, 'Pakistan'),
(163, 'PALAU', 'PW', 'PLW', 585, 680, 'Palau'),
(164, 'PALESTINIAN TERRITORY, OCCUPIED', 'PS', '', NULL, 970, 'Palestinian Territory, Occupied'),
(165, 'PANAMA', 'PA', 'PAN', 591, 507, 'Panama'),
(166, 'PAPUA NEW GUINEA', 'PG', 'PNG', 598, 675, 'Papua New Guinea'),
(167, 'PARAGUAY', 'PY', 'PRY', 600, 595, 'Paraguay'),
(168, 'PERU', 'PE', 'PER', 604, 51, 'Peru'),
(169, 'PHILIPPINES', 'PH', 'PHL', 608, 63, 'Philippines'),
(170, 'PITCAIRN', 'PN', 'PCN', 612, 0, 'Pitcairn'),
(171, 'POLAND', 'PL', 'POL', 616, 48, 'Poland'),
(172, 'PORTUGAL', 'PT', 'PRT', 620, 351, 'Portugal'),
(173, 'PUERTO RICO', 'PR', 'PRI', 630, 1787, 'Puerto Rico'),
(174, 'QATAR', 'QA', 'QAT', 634, 974, 'Qatar'),
(175, 'REUNION', 'RE', 'REU', 638, 262, 'Reunion'),
(176, 'ROMANIA', 'RO', 'ROM', 642, 40, 'Romania'),
(177, 'RUSSIAN FEDERATION', 'RU', 'RUS', 643, 70, 'Russian Federation'),
(178, 'RWANDA', 'RW', 'RWA', 646, 250, 'Rwanda'),
(179, 'SAINT HELENA', 'SH', 'SHN', 654, 290, 'Saint Helena'),
(180, 'SAINT KITTS AND NEVIS', 'KN', 'KNA', 659, 1869, 'Saint Kitts and Nevis'),
(181, 'SAINT LUCIA', 'LC', 'LCA', 662, 1758, 'Saint Lucia'),
(182, 'SAINT PIERRE AND MIQUELON', 'PM', 'SPM', 666, 508, 'Saint Pierre and Miquelon'),
(183, 'SAINT VINCENT AND THE GRENADINES', 'VC', 'VCT', 670, 1784, 'Saint Vincent and the Grenadines'),
(184, 'SAMOA', 'WS', 'WSM', 882, 684, 'Samoa'),
(185, 'SAN MARINO', 'SM', 'SMR', 674, 378, 'San Marino'),
(186, 'SAO TOME AND PRINCIPE', 'ST', 'STP', 678, 239, 'Sao Tome and Principe'),
(187, 'SAUDI ARABIA', 'SA', 'SAU', 682, 966, 'Saudi Arabia'),
(188, 'SENEGAL', 'SN', 'SEN', 686, 221, 'Senegal'),
(189, 'SERBIA AND MONTENEGRO', 'CS', '', NULL, 381, 'Serbia and Montenegro'),
(190, 'SEYCHELLES', 'SC', 'SYC', 690, 248, 'Seychelles'),
(191, 'SIERRA LEONE', 'SL', 'SLE', 694, 232, 'Sierra Leone'),
(192, 'SINGAPORE', 'SG', 'SGP', 702, 65, 'Singapore'),
(193, 'SLOVAKIA', 'SK', 'SVK', 703, 421, 'Slovakia'),
(194, 'SLOVENIA', 'SI', 'SVN', 705, 386, 'Slovenia'),
(195, 'SOLOMON ISLANDS', 'SB', 'SLB', 90, 677, 'Solomon Islands'),
(196, 'SOMALIA', 'SO', 'SOM', 706, 252, 'Somalia'),
(197, 'SOUTH AFRICA', 'ZA', 'ZAF', 710, 27, 'South Africa'),
(198, 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'GS', '', NULL, 0, 'South Georgia and the South Sandwich Islands'),
(199, 'SPAIN', 'ES', 'ESP', 724, 34, 'Spain'),
(200, 'SRI LANKA', 'LK', 'LKA', 144, 94, 'Sri Lanka'),
(201, 'SUDAN', 'SD', 'SDN', 736, 249, 'Sudan'),
(202, 'SURINAME', 'SR', 'SUR', 740, 597, 'Suriname'),
(203, 'SVALBARD AND JAN MAYEN', 'SJ', 'SJM', 744, 47, 'Svalbard and Jan Mayen'),
(204, 'SWAZILAND', 'SZ', 'SWZ', 748, 268, 'Swaziland'),
(205, 'SWEDEN', 'SE', 'SWE', 752, 46, 'Sweden'),
(206, 'SWITZERLAND', 'CH', 'CHE', 756, 41, 'Switzerland'),
(207, 'SYRIAN ARAB REPUBLIC', 'SY', 'SYR', 760, 963, 'Syrian Arab Republic'),
(208, 'TAIWAN, PROVINCE OF CHINA', 'TW', 'TWN', 158, 886, 'Taiwan, Province of China'),
(209, 'TAJIKISTAN', 'TJ', 'TJK', 762, 992, 'Tajikistan'),
(210, 'TANZANIA, UNITED REPUBLIC OF', 'TZ', 'TZA', 834, 255, 'Tanzania, United Republic of'),
(211, 'THAILAND', 'TH', 'THA', 764, 66, 'Thailand'),
(212, 'TIMOR-LESTE', 'TL', '', NULL, 670, 'Timor-Leste'),
(213, 'TOGO', 'TG', 'TGO', 768, 228, 'Togo'),
(214, 'TOKELAU', 'TK', 'TKL', 772, 690, 'Tokelau'),
(215, 'TONGA', 'TO', 'TON', 776, 676, 'Tonga'),
(216, 'TRINIDAD AND TOBAGO', 'TT', 'TTO', 780, 1868, 'Trinidad and Tobago'),
(217, 'TUNISIA', 'TN', 'TUN', 788, 216, 'Tunisia'),
(218, 'TURKEY', 'TR', 'TUR', 792, 90, 'Turkey'),
(219, 'TURKMENISTAN', 'TM', 'TKM', 795, 7370, 'Turkmenistan'),
(220, 'TURKS AND CAICOS ISLANDS', 'TC', 'TCA', 796, 1649, 'Turks and Caicos Islands'),
(221, 'TUVALU', 'TV', 'TUV', 798, 688, 'Tuvalu'),
(222, 'UGANDA', 'UG', 'UGA', 800, 256, 'Uganda'),
(223, 'UKRAINE', 'UA', 'UKR', 804, 380, 'Ukraine'),
(224, 'UNITED ARAB EMIRATES', 'AE', 'ARE', 784, 971, 'United Arab Emirates'),
(225, 'UNITED KINGDOM', 'GB', 'GBR', 826, 44, 'United Kingdom'),
(226, 'UNITED STATES', 'US', 'USA', 840, 1, 'United States'),
(227, 'UNITED STATES MINOR OUTLYING ISLANDS', 'UM', '', NULL, 1, 'United States Minor Outlying Islands'),
(228, 'URUGUAY', 'UY', 'URY', 858, 598, 'Uruguay'),
(229, 'UZBEKISTAN', 'UZ', 'UZB', 860, 998, 'Uzbekistan'),
(230, 'VANUATU', 'VU', 'VUT', 548, 678, 'Vanuatu'),
(231, 'VENEZUELA', 'VE', 'VEN', 862, 58, 'Venezuela'),
(232, 'VIET NAM', 'VN', 'VNM', 704, 84, 'Viet Nam'),
(233, 'VIRGIN ISLANDS, BRITISH', 'VG', 'VGB', 92, 1284, 'Virgin Islands, British'),
(234, 'VIRGIN ISLANDS, U.S.', 'VI', 'VIR', 850, 1340, 'Virgin Islands, U.s.'),
(235, 'WALLIS AND FUTUNA', 'WF', 'WLF', 876, 681, 'Wallis and Futuna'),
(236, 'WESTERN SAHARA', 'EH', 'ESH', 732, 212, 'Western Sahara'),
(237, 'YEMEN', 'YE', 'YEM', 887, 967, 'Yemen'),
(238, 'ZAMBIA', 'ZM', 'ZMB', 894, 260, 'Zambia'),
(239, 'ZIMBABWE', 'ZW', 'ZWE', 716, 263, 'Zimbabwe'),
(240, 'SERBIA', 'RS', 'SRB', 688, 381, 'Serbia'),
(241, 'ASIA PACIFIC REGION', 'AP', '0', 0, 0, 'Asia / Pacific Region'),
(242, 'MONTENEGRO', 'ME', 'MNE', 499, 382, 'Montenegro'),
(243, 'ALAND ISLANDS', 'AX', 'ALA', 248, 358, 'Aland Islands'),
(244, 'BONAIRE, SINT EUSTATIUS AND SABA', 'BQ', 'BES', 535, 599, 'Bonaire, Sint Eustatius and Saba'),
(245, 'CURACAO', 'CW', 'CUW', 531, 599, 'Curacao'),
(246, 'GUERNSEY', 'GG', 'GGY', 831, 44, 'Guernsey'),
(247, 'ISLE OF MAN', 'IM', 'IMN', 833, 44, 'Isle of Man'),
(248, 'JERSEY', 'JE', 'JEY', 832, 44, 'Jersey'),
(249, 'KOSOVO', 'XK', '---', 0, 381, 'Kosovo'),
(250, 'SAINT BARTHELEMY', 'BL', 'BLM', 652, 590, 'Saint Barthelemy'),
(251, 'SAINT MARTIN', 'MF', 'MAF', 663, 590, 'Saint Martin'),
(252, 'SINT MAARTEN', 'SX', 'SXM', 534, 1, 'Sint Maarten'),
(253, 'SOUTH SUDAN', 'SS', 'SSD', 728, 211, 'South Sudan');

-- --------------------------------------------------------

--
-- Structure de la table `countries_languages`
--

CREATE TABLE `countries_languages` (
  `id_country` int(11) NOT NULL,
  `id_language` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `difficulties`
--

CREATE TABLE `difficulties` (
  `id_difficulty` int(11) NOT NULL,
  `name_difficulty` varchar(50) NOT NULL,
  `description_difficulty` varchar(300) NOT NULL,
  `coefficient_difficulty` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

CREATE TABLE `documents` (
  `id_document` int(11) NOT NULL,
  `name_document` varchar(50) NOT NULL,
  `content_document` varchar(300) NOT NULL,
  `date_upload_document` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

CREATE TABLE `languages` (
  `id_language` int(11) NOT NULL,
  `name_language` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `markets`
--

CREATE TABLE `markets` (
  `id_market` int(11) NOT NULL,
  `mail_market` varchar(50) DEFAULT NULL,
  `phone_market` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id_message` int(11) NOT NULL,
  `content_message` varchar(240) DEFAULT NULL,
  `date_upload_message` datetime NOT NULL,
  `id_type_message` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `objectives`
--

CREATE TABLE `objectives` (
  `id_objective` int(11) NOT NULL,
  `name_objective` varchar(60) NOT NULL,
  `description_objective` varchar(300) DEFAULT NULL,
  `date_of_creation_objective` datetime NOT NULL,
  `deadline_objective` datetime DEFAULT NULL,
  `requested_users_assignements_objective` int(11) DEFAULT NULL,
  `users_who_accepted_objective` int(11) DEFAULT NULL,
  `users_who_declined_objective` int(11) DEFAULT NULL,
  `delay_reminder_objective` date DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `id_priority` int(11) DEFAULT NULL,
  `id_point` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `objectives_calendars`
--

CREATE TABLE `objectives_calendars` (
  `id_objective` int(11) NOT NULL,
  `id_calendar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `objectives_outgoings`
--

CREATE TABLE `objectives_outgoings` (
  `id_objective` int(11) NOT NULL,
  `id_outgoing` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `objectives_status`
--

CREATE TABLE `objectives_status` (
  `id_objective_status` int(11) NOT NULL,
  `name_objective_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `objectives_tasks`
--

CREATE TABLE `objectives_tasks` (
  `id_objective` int(11) NOT NULL,
  `id_task` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `outgoings`
--

CREATE TABLE `outgoings` (
  `id_outgoing` int(11) NOT NULL,
  `bugdet_outgoing` decimal(10,0) DEFAULT NULL,
  `final_expanse_outgoing` decimal(10,0) DEFAULT NULL,
  `difference_outgoing` decimal(10,0) DEFAULT NULL,
  `id_market` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `points`
--

CREATE TABLE `points` (
  `id_point` int(11) NOT NULL,
  `amount_point` int(11) NOT NULL,
  `id_difficulty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `postal_addresses`
--

CREATE TABLE `postal_addresses` (
  `id_postal_address` int(11) NOT NULL,
  `street_name_address` varchar(100) NOT NULL,
  `street_number_address` varchar(15) DEFAULT NULL,
  `place_address` varchar(20) NOT NULL,
  `foor_number_address` varchar(10) DEFAULT NULL,
  `accommodation_number_address` varchar(10) DEFAULT NULL,
  `id_city` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `postal_addresses_markets`
--

CREATE TABLE `postal_addresses_markets` (
  `id_postal_address` int(11) NOT NULL,
  `id_market` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `priorities`
--

CREATE TABLE `priorities` (
  `id_priority` int(11) NOT NULL,
  `name_rank_priority` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `id_review` int(11) NOT NULL,
  `rating_review` int(11) NOT NULL,
  `content_review` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `rewards`
--

CREATE TABLE `rewards` (
  `id_reward` int(11) NOT NULL,
  `name_reward` varchar(30) NOT NULL,
  `price_reward` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL,
  `name_role` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `rooms`
--

CREATE TABLE `rooms` (
  `id_room` int(11) NOT NULL,
  `name_room` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `sex`
--

CREATE TABLE `sex` (
  `id_sex` int(11) NOT NULL,
  `name_sex` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `tasks`
--

CREATE TABLE `tasks` (
  `id_task` int(11) NOT NULL,
  `estimated_duration_task` datetime DEFAULT NULL,
  `number_user_required_task` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `tracking`
--

CREATE TABLE `tracking` (
  `id_tracking` int(11) NOT NULL,
  `points_date_tracking` datetime NOT NULL,
  `points_movement_tracking` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `tracking_wallets`
--

CREATE TABLE `tracking_wallets` (
  `id_tracking` int(11) NOT NULL,
  `id_wallet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `types_of_messages`
--

CREATE TABLE `types_of_messages` (
  `id_type_message` int(11) NOT NULL,
  `name_type_message` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `last_name_user` varchar(50) NOT NULL,
  `first_name_user` varchar(50) NOT NULL,
  `birthday_user` date NOT NULL,
  `phone_user` varchar(25) DEFAULT NULL,
  `mobile_phone_user` varchar(25) NOT NULL,
  `alias_user` varchar(30) DEFAULT NULL,
  `id_connection` int(11) DEFAULT NULL,
  `id_calendar` int(11) DEFAULT NULL,
  `id_account` int(11) DEFAULT NULL,
  `id_sex` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users_accommodations`
--

CREATE TABLE `users_accommodations` (
  `id_user` int(11) NOT NULL,
  `id_accommodation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users_documents`
--

CREATE TABLE `users_documents` (
  `name_status_action` varchar(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_document` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users_languages`
--

CREATE TABLE `users_languages` (
  `id_user` int(11) NOT NULL,
  `id_language` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users_messages_received`
--

CREATE TABLE `users_messages_received` (
  `if_read` tinyint(4) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_message` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users_messages_send`
--

CREATE TABLE `users_messages_send` (
  `if_send` tinyint(4) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_message` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users_objectives`
--

CREATE TABLE `users_objectives` (
  `id_user` int(11) NOT NULL,
  `id_language` int(11) NOT NULL,
  `id_objective` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users_reviews`
--

CREATE TABLE `users_reviews` (
  `id_user` int(11) NOT NULL,
  `id_review` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users_rewards`
--

CREATE TABLE `users_rewards` (
  `date_of_creation` date NOT NULL,
  `author_creation` int(11) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `id_reward` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users_roles`
--

CREATE TABLE `users_roles` (
  `id_user` int(11) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `wallets`
--

CREATE TABLE `wallets` (
  `id_wallet` int(11) NOT NULL,
  `points_available` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `wallets_rewards`
--

CREATE TABLE `wallets_rewards` (
  `id_wallet` int(11) NOT NULL,
  `id_reward` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accommodations`
--
ALTER TABLE `accommodations`
  ADD PRIMARY KEY (`id_accommodation`),
  ADD KEY `id_postal_address` (`id_postal_address`);

--
-- Index pour la table `accommodations_rooms`
--
ALTER TABLE `accommodations_rooms`
  ADD PRIMARY KEY (`id_accommodation`,`id_room`),
  ADD KEY `id_room` (`id_room`);

--
-- Index pour la table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id_account`),
  ADD UNIQUE KEY `mail_password` (`mail_password`);

--
-- Index pour la table `calendars`
--
ALTER TABLE `calendars`
  ADD PRIMARY KEY (`id_calendar`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Index pour la table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id_city`),
  ADD UNIQUE KEY `name_city` (`name_city`),
  ADD UNIQUE KEY `township_code_city_2` (`township_code_city`),
  ADD UNIQUE KEY `slug_city` (`slug_city`),
  ADD KEY `id_country` (`id_country`),
  ADD KEY `department_city` (`department_city`),
  ADD KEY `real_name_city` (`real_name_city`),
  ADD KEY `township_code_city` (`township_code_city`),
  ADD KEY `cp_city` (`cp_city`),
  ADD KEY `longitude_latitude_deg_city` (`longitude_deg_city`,`latitude_deg_city`),
  ADD KEY `soundex_name_city` (`soundex_name_city`),
  ADD KEY `metaphone_name_city` (`metaphone_name_city`),
  ADD KEY `population_2010_city` (`population_2010_city`),
  ADD KEY `simple_name_city` (`simple_name_city`);

--
-- Index pour la table `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`id_connection`);

--
-- Index pour la table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id_country`),
  ADD UNIQUE KEY `name_country` (`name_country`);

--
-- Index pour la table `countries_languages`
--
ALTER TABLE `countries_languages`
  ADD PRIMARY KEY (`id_country`,`id_language`),
  ADD KEY `id_language` (`id_language`);

--
-- Index pour la table `difficulties`
--
ALTER TABLE `difficulties`
  ADD PRIMARY KEY (`id_difficulty`),
  ADD UNIQUE KEY `name_difficulty` (`name_difficulty`),
  ADD UNIQUE KEY `description_difficulty` (`description_difficulty`);

--
-- Index pour la table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id_document`);

--
-- Index pour la table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id_language`),
  ADD UNIQUE KEY `name_language` (`name_language`);

--
-- Index pour la table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id_market`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id_message`),
  ADD KEY `id_type_message` (`id_type_message`);

--
-- Index pour la table `objectives`
--
ALTER TABLE `objectives`
  ADD PRIMARY KEY (`id_objective`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_priority` (`id_priority`),
  ADD KEY `id_point` (`id_point`);

--
-- Index pour la table `objectives_calendars`
--
ALTER TABLE `objectives_calendars`
  ADD PRIMARY KEY (`id_objective`,`id_calendar`),
  ADD KEY `id_calendar` (`id_calendar`);

--
-- Index pour la table `objectives_outgoings`
--
ALTER TABLE `objectives_outgoings`
  ADD PRIMARY KEY (`id_objective`,`id_outgoing`),
  ADD KEY `id_outgoing` (`id_outgoing`);

--
-- Index pour la table `objectives_status`
--
ALTER TABLE `objectives_status`
  ADD PRIMARY KEY (`id_objective_status`);

--
-- Index pour la table `objectives_tasks`
--
ALTER TABLE `objectives_tasks`
  ADD PRIMARY KEY (`id_objective`,`id_task`),
  ADD KEY `id_task` (`id_task`);

--
-- Index pour la table `outgoings`
--
ALTER TABLE `outgoings`
  ADD PRIMARY KEY (`id_outgoing`),
  ADD KEY `id_market` (`id_market`);

--
-- Index pour la table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id_point`),
  ADD KEY `id_difficulty` (`id_difficulty`);

--
-- Index pour la table `postal_addresses`
--
ALTER TABLE `postal_addresses`
  ADD PRIMARY KEY (`id_postal_address`),
  ADD KEY `id_city` (`id_city`);

--
-- Index pour la table `postal_addresses_markets`
--
ALTER TABLE `postal_addresses_markets`
  ADD PRIMARY KEY (`id_postal_address`,`id_market`),
  ADD KEY `id_market` (`id_market`);

--
-- Index pour la table `priorities`
--
ALTER TABLE `priorities`
  ADD PRIMARY KEY (`id_priority`),
  ADD UNIQUE KEY `name_rank_priority` (`name_rank_priority`);

--
-- Index pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id_review`);

--
-- Index pour la table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id_reward`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_role`);

--
-- Index pour la table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id_room`);

--
-- Index pour la table `sex`
--
ALTER TABLE `sex`
  ADD PRIMARY KEY (`id_sex`);

--
-- Index pour la table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id_task`);

--
-- Index pour la table `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`id_tracking`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `tracking_wallets`
--
ALTER TABLE `tracking_wallets`
  ADD PRIMARY KEY (`id_tracking`,`id_wallet`),
  ADD KEY `id_wallet` (`id_wallet`);

--
-- Index pour la table `types_of_messages`
--
ALTER TABLE `types_of_messages`
  ADD PRIMARY KEY (`id_type_message`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `mobile_phone_user` (`mobile_phone_user`),
  ADD UNIQUE KEY `alias_user` (`alias_user`),
  ADD KEY `id_connection` (`id_connection`),
  ADD KEY `id_calendar` (`id_calendar`),
  ADD KEY `id_account` (`id_account`),
  ADD KEY `id_sex` (`id_sex`);

--
-- Index pour la table `users_accommodations`
--
ALTER TABLE `users_accommodations`
  ADD PRIMARY KEY (`id_user`,`id_accommodation`),
  ADD KEY `id_accommodation` (`id_accommodation`);

--
-- Index pour la table `users_documents`
--
ALTER TABLE `users_documents`
  ADD PRIMARY KEY (`id_user`,`id_document`),
  ADD KEY `id_document` (`id_document`);

--
-- Index pour la table `users_languages`
--
ALTER TABLE `users_languages`
  ADD PRIMARY KEY (`id_user`,`id_language`),
  ADD KEY `id_language` (`id_language`);

--
-- Index pour la table `users_messages_received`
--
ALTER TABLE `users_messages_received`
  ADD PRIMARY KEY (`id_user`,`id_message`),
  ADD KEY `id_message` (`id_message`);

--
-- Index pour la table `users_messages_send`
--
ALTER TABLE `users_messages_send`
  ADD PRIMARY KEY (`id_user`,`id_message`),
  ADD KEY `id_message` (`id_message`);

--
-- Index pour la table `users_objectives`
--
ALTER TABLE `users_objectives`
  ADD PRIMARY KEY (`id_user`,`id_language`,`id_objective`),
  ADD KEY `id_language` (`id_language`),
  ADD KEY `id_objective` (`id_objective`);

--
-- Index pour la table `users_reviews`
--
ALTER TABLE `users_reviews`
  ADD PRIMARY KEY (`id_user`,`id_review`),
  ADD KEY `id_review` (`id_review`);

--
-- Index pour la table `users_rewards`
--
ALTER TABLE `users_rewards`
  ADD PRIMARY KEY (`id_user`,`id_reward`),
  ADD KEY `id_reward` (`id_reward`);

--
-- Index pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`id_user`,`id_role`),
  ADD KEY `id_role` (`id_role`);

--
-- Index pour la table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id_wallet`);

--
-- Index pour la table `wallets_rewards`
--
ALTER TABLE `wallets_rewards`
  ADD PRIMARY KEY (`id_wallet`,`id_reward`),
  ADD KEY `id_reward` (`id_reward`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accommodations`
--
ALTER TABLE `accommodations`
  MODIFY `id_accommodation` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id_account` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `calendars`
--
ALTER TABLE `calendars`
  MODIFY `id_calendar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cities`
--
ALTER TABLE `cities`
  MODIFY `id_city` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11771;

--
-- AUTO_INCREMENT pour la table `connections`
--
ALTER TABLE `connections`
  MODIFY `id_connection` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `countries`
--
ALTER TABLE `countries`
  MODIFY `id_country` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT pour la table `difficulties`
--
ALTER TABLE `difficulties`
  MODIFY `id_difficulty` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `documents`
--
ALTER TABLE `documents`
  MODIFY `id_document` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `languages`
--
ALTER TABLE `languages`
  MODIFY `id_language` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `markets`
--
ALTER TABLE `markets`
  MODIFY `id_market` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `objectives`
--
ALTER TABLE `objectives`
  MODIFY `id_objective` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `objectives_status`
--
ALTER TABLE `objectives_status`
  MODIFY `id_objective_status` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `outgoings`
--
ALTER TABLE `outgoings`
  MODIFY `id_outgoing` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `points`
--
ALTER TABLE `points`
  MODIFY `id_point` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `postal_addresses`
--
ALTER TABLE `postal_addresses`
  MODIFY `id_postal_address` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `priorities`
--
ALTER TABLE `priorities`
  MODIFY `id_priority` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id_reward` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id_room` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sex`
--
ALTER TABLE `sex`
  MODIFY `id_sex` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id_task` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tracking`
--
ALTER TABLE `tracking`
  MODIFY `id_tracking` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `types_of_messages`
--
ALTER TABLE `types_of_messages`
  MODIFY `id_type_message` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id_wallet` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `accommodations`
--
ALTER TABLE `accommodations`
  ADD CONSTRAINT `accommodations_ibfk_1` FOREIGN KEY (`id_postal_address`) REFERENCES `postal_addresses` (`id_postal_address`);

--
-- Contraintes pour la table `accommodations_rooms`
--
ALTER TABLE `accommodations_rooms`
  ADD CONSTRAINT `accommodations_rooms_ibfk_1` FOREIGN KEY (`id_accommodation`) REFERENCES `accommodations` (`id_accommodation`),
  ADD CONSTRAINT `accommodations_rooms_ibfk_2` FOREIGN KEY (`id_room`) REFERENCES `rooms` (`id_room`);

--
-- Contraintes pour la table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id_country`);

--
-- Contraintes pour la table `countries_languages`
--
ALTER TABLE `countries_languages`
  ADD CONSTRAINT `countries_languages_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id_country`),
  ADD CONSTRAINT `countries_languages_ibfk_2` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`);

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`id_type_message`) REFERENCES `types_of_messages` (`id_type_message`);

--
-- Contraintes pour la table `objectives`
--
ALTER TABLE `objectives`
  ADD CONSTRAINT `objectives_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id_category`),
  ADD CONSTRAINT `objectives_ibfk_2` FOREIGN KEY (`id_priority`) REFERENCES `priorities` (`id_priority`),
  ADD CONSTRAINT `objectives_ibfk_3` FOREIGN KEY (`id_point`) REFERENCES `points` (`id_point`);

--
-- Contraintes pour la table `objectives_calendars`
--
ALTER TABLE `objectives_calendars`
  ADD CONSTRAINT `objectives_calendars_ibfk_1` FOREIGN KEY (`id_objective`) REFERENCES `objectives` (`id_objective`),
  ADD CONSTRAINT `objectives_calendars_ibfk_2` FOREIGN KEY (`id_calendar`) REFERENCES `calendars` (`id_calendar`);

--
-- Contraintes pour la table `objectives_outgoings`
--
ALTER TABLE `objectives_outgoings`
  ADD CONSTRAINT `objectives_outgoings_ibfk_1` FOREIGN KEY (`id_objective`) REFERENCES `objectives` (`id_objective`),
  ADD CONSTRAINT `objectives_outgoings_ibfk_2` FOREIGN KEY (`id_outgoing`) REFERENCES `outgoings` (`id_outgoing`);

--
-- Contraintes pour la table `objectives_tasks`
--
ALTER TABLE `objectives_tasks`
  ADD CONSTRAINT `objectives_tasks_ibfk_1` FOREIGN KEY (`id_objective`) REFERENCES `objectives` (`id_objective`),
  ADD CONSTRAINT `objectives_tasks_ibfk_2` FOREIGN KEY (`id_task`) REFERENCES `tasks` (`id_task`);

--
-- Contraintes pour la table `outgoings`
--
ALTER TABLE `outgoings`
  ADD CONSTRAINT `outgoings_ibfk_1` FOREIGN KEY (`id_market`) REFERENCES `markets` (`id_market`);

--
-- Contraintes pour la table `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `points_ibfk_1` FOREIGN KEY (`id_difficulty`) REFERENCES `difficulties` (`id_difficulty`);

--
-- Contraintes pour la table `postal_addresses`
--
ALTER TABLE `postal_addresses`
  ADD CONSTRAINT `postal_addresses_ibfk_1` FOREIGN KEY (`id_city`) REFERENCES `cities` (`id_city`);

--
-- Contraintes pour la table `postal_addresses_markets`
--
ALTER TABLE `postal_addresses_markets`
  ADD CONSTRAINT `postal_addresses_markets_ibfk_1` FOREIGN KEY (`id_postal_address`) REFERENCES `postal_addresses` (`id_postal_address`),
  ADD CONSTRAINT `postal_addresses_markets_ibfk_2` FOREIGN KEY (`id_market`) REFERENCES `markets` (`id_market`);

--
-- Contraintes pour la table `tracking`
--
ALTER TABLE `tracking`
  ADD CONSTRAINT `tracking_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Contraintes pour la table `tracking_wallets`
--
ALTER TABLE `tracking_wallets`
  ADD CONSTRAINT `tracking_wallets_ibfk_1` FOREIGN KEY (`id_tracking`) REFERENCES `tracking` (`id_tracking`),
  ADD CONSTRAINT `tracking_wallets_ibfk_2` FOREIGN KEY (`id_wallet`) REFERENCES `wallets` (`id_wallet`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_connection`) REFERENCES `connections` (`id_connection`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_calendar`) REFERENCES `calendars` (`id_calendar`),
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`id_account`),
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`id_sex`) REFERENCES `sex` (`id_sex`);

--
-- Contraintes pour la table `users_accommodations`
--
ALTER TABLE `users_accommodations`
  ADD CONSTRAINT `users_accommodations_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `users_accommodations_ibfk_2` FOREIGN KEY (`id_accommodation`) REFERENCES `accommodations` (`id_accommodation`);

--
-- Contraintes pour la table `users_documents`
--
ALTER TABLE `users_documents`
  ADD CONSTRAINT `users_documents_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `users_documents_ibfk_2` FOREIGN KEY (`id_document`) REFERENCES `documents` (`id_document`);

--
-- Contraintes pour la table `users_languages`
--
ALTER TABLE `users_languages`
  ADD CONSTRAINT `users_languages_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `users_languages_ibfk_2` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`);

--
-- Contraintes pour la table `users_messages_received`
--
ALTER TABLE `users_messages_received`
  ADD CONSTRAINT `users_messages_received_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `users_messages_received_ibfk_2` FOREIGN KEY (`id_message`) REFERENCES `messages` (`id_message`);

--
-- Contraintes pour la table `users_messages_send`
--
ALTER TABLE `users_messages_send`
  ADD CONSTRAINT `users_messages_send_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `users_messages_send_ibfk_2` FOREIGN KEY (`id_message`) REFERENCES `messages` (`id_message`);

--
-- Contraintes pour la table `users_objectives`
--
ALTER TABLE `users_objectives`
  ADD CONSTRAINT `users_objectives_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `users_objectives_ibfk_2` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`),
  ADD CONSTRAINT `users_objectives_ibfk_3` FOREIGN KEY (`id_objective`) REFERENCES `objectives` (`id_objective`);

--
-- Contraintes pour la table `users_reviews`
--
ALTER TABLE `users_reviews`
  ADD CONSTRAINT `users_reviews_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `users_reviews_ibfk_2` FOREIGN KEY (`id_review`) REFERENCES `reviews` (`id_review`);

--
-- Contraintes pour la table `users_rewards`
--
ALTER TABLE `users_rewards`
  ADD CONSTRAINT `users_rewards_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `users_rewards_ibfk_2` FOREIGN KEY (`id_reward`) REFERENCES `rewards` (`id_reward`);

--
-- Contraintes pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `users_roles_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `users_roles_ibfk_2` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id_role`);

--
-- Contraintes pour la table `wallets_rewards`
--
ALTER TABLE `wallets_rewards`
  ADD CONSTRAINT `wallets_rewards_ibfk_1` FOREIGN KEY (`id_wallet`) REFERENCES `wallets` (`id_wallet`),
  ADD CONSTRAINT `wallets_rewards_ibfk_2` FOREIGN KEY (`id_reward`) REFERENCES `rewards` (`id_reward`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
