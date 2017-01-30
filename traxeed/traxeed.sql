-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2015 at 09:42 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `minative`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactforms`
--

CREATE TABLE IF NOT EXISTS `contactforms` (
`id` int(11) NOT NULL,
  `formname` varchar(255) COLLATE utf8_bin NOT NULL,
  `formtpl` text COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `contactforms`
--

INSERT INTO `contactforms` (`id`, `formname`, `formtpl`, `status`) VALUES
(1, 'Contact form', 'contact.html', 1),
(2, 'Job application', 'job.html', 0),
(3, 'Quota Request', 'qouta.html', 0);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
`id` int(11) NOT NULL,
  `iso` char(2) CHARACTER SET latin1 NOT NULL,
  `name` varchar(80) CHARACTER SET latin1 NOT NULL,
  `nicename` varchar(80) CHARACTER SET latin1 NOT NULL,
  `iso3` char(3) CHARACTER SET latin1 DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=240 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D''IVOIRE', 'Cote D''Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', 'Korea, Democratic People''s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE''S DEMOCRATIC REPUBLIC', 'Lao People''s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `form_contact`
--

CREATE TABLE IF NOT EXISTS `form_contact` (
`id` int(11) NOT NULL,
  `formid` int(11) NOT NULL,
  `type` varchar(250) COLLATE utf8_bin NOT NULL,
  `title` varchar(250) COLLATE utf8_bin NOT NULL,
  `messagecont` text COLLATE utf8_bin NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_bin NOT NULL,
  `email` varchar(250) COLLATE utf8_bin NOT NULL,
  `hash` varchar(250) COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `seen` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=56 ;

--
-- Dumping data for table `form_contact`
--

INSERT INTO `form_contact` (`id`, `formid`, `type`, `title`, `messagecont`, `userid`, `name`, `email`, `hash`, `status`, `date`, `seen`) VALUES
(24, 1, 'contact', 'Mina Atif is here', 'Hello,<br><br>\r\n\r\ncan you send me your phone number pleas?\r\n<br><br>\r\nThanks.', 49, 'Mina Atif', 'minaatifabduallah@gmail.com', '2429336d278d7a3f54d77b7050816733fe', 0, '2015-01-25 20:52:29', 1),
(26, 1, 'contact', 'rthrth', 'trhrthrthrt', 49, 'Mina Atif', 'minaatifabduallah@gmail.com', '26dc13f589b5bb5bd9748dc31b5b8b60f0', 0, '2015-01-25 20:57:58', 1),
(29, 1, 'contact', 'AHmed is here', '<p>AHmed is here</p>', 53, 'Ahmed', 'ahmed@live.com', '299254394dbe4fce001f7e1d198c155022', 0, '2015-01-28 22:18:44', 1),
(32, 1, 'contact', 'Test 2', '<p><strong>Test 2</strong></p>', 49, 'Mina Atif', 'minaatifabduallah@gmail.com', '3263457446d9c0dbc454c98c74d7ef17e2', 1, '2015-01-30 16:40:20', 1),
(33, 1, 'contact', 'ahmed test 1', '<p>ahmed test 1</p>', 53, 'Ahmed', 'ahmed@live.com', '33964cd598a2e38701d44098ff9b691f1b', 0, '2015-01-30 16:40:53', 1),
(35, 1, 'contact', 'Some one 2', '<p><strong>Some one 2</strong></p>', 0, 'Some one 2', 'som2@yahoo.com', '35afecde413540435d998a87de4372e99a', 0, '2015-01-30 16:42:09', 0),
(54, 1, 'contact', 'Hiiiiiiiiiiiiiiii', 'Hello this is last test to contact forms', 49, 'Mina Atif said', 'minaatifabduallah@gmail.com', '542365fa61bf41d1fecc5d7b79d1af2e6b', 1, '2015-10-31 21:16:00', 1),
(55, 1, 'contact', 'what&#39;s up', 'Hello.\r\n&nbsp;\r\nWhat&#39;s up baby.\r\n&nbsp;\r\nThanks', 49, 'Mina Atif said', 'minaatifabduallah@gmail.com', '55607508bfc74c7c0ae97df3a8dd69c1f9', 0, '2015-11-01 20:39:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `form_replies`
--

CREATE TABLE IF NOT EXISTS `form_replies` (
`id` int(11) NOT NULL,
  `reply` text COLLATE utf8_bin NOT NULL,
  `messageid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_bin NOT NULL,
  `email` varchar(250) COLLATE utf8_bin NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=61 ;

--
-- Dumping data for table `form_replies`
--

INSERT INTO `form_replies` (`id`, `reply`, `messageid`, `userid`, `name`, `email`, `date`) VALUES
(1, 'hello', 24, 49, 'Mina Atif', 'minaatifabduallah@gmail.com', '2015-01-08 09:00:00'),
(12, '<p><img src="http://senseable.mit.edu/obama/images/the-world-1.jpg" alt="" width="350" height="200" /></p>', 24, 49, 'Mina Atif', 'minaatifabduallah@gmail.com', '2015-01-26 11:40:32'),
(14, '<p>regerg</p>\r\n<p>&nbsp;</p>\r\n<p>ergergerg</p>', 24, 49, 'Mina Atif', 'minaatifabduallah@gmail.com', '2015-01-26 12:05:16'),
(15, '<p><iframe style="display: block; margin-left: auto; margin-right: auto;" src="//www.youtube.com/embed/rYEDA3JcQqw" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>', 24, 49, 'Mina Atif', 'minaatifabduallah@gmail.com', '2015-01-26 12:21:20'),
(16, '<p>Last reply in this message.</p>\r\n<p>I did it, hope to continue what i started.</p>\r\n<p><img src="js/tinymce/plugins/emoticons/img/smiley-sealed.gif" alt="sealed" /><img src="js/tinymce/plugins/emoticons/img/smiley-cool.gif" alt="cool" /></p>', 24, 49, 'Mina Atif', 'minaatifabduallah@gmail.com', '2015-01-26 12:25:26'),
(17, '<p>wefwefwefwef</p>', 24, 53, 'Ahmed', 'ahmed@live.com', '2015-01-26 13:38:46'),
(18, '<p>Hello</p>\r\n<p>&nbsp;</p>\r\n<p>this is my second test</p>', 24, 49, 'Mina Atif', 'minaatifabduallah@gmail.com', '2015-01-26 13:46:02'),
(20, '<p>Ahmed is here ..</p>\r\n<p>&nbsp;</p>\r\n<p>Looking forward to your reply.</p>', 24, 53, 'Ahmed', 'ahmed@live.com', '2015-01-26 13:56:31'),
(26, '<p>wefwewwefwef</p>', 24, 49, 'Mina Atif', 'minaatifabduallah@gmail.com', '2015-01-26 14:13:02'),
(27, '<p>wefwef</p>\r\n<p>&nbsp;</p>\r\n<p>wefwef</p>', 24, 49, 'Mina Atif', 'minaatifabduallah@gmail.com', '2015-01-26 14:13:28'),
(28, '<p>wwe</p>\r\n<p>yrtht</p>\r\n<p>&nbsp;</p>\r\n<p>ergre</p>', 24, 53, 'Ahmed', 'ahmed@live.com', '2015-01-26 14:14:46'),
(33, '<p>wqef</p>\r\n<p>&nbsp;</p>\r\n<p>wef</p>', 24, 49, 'Mina Atif', 'minaatifabduallah@gmail.com', '2015-01-26 15:18:24'),
(34, '<p>Thank you</p>\r\n<p>&nbsp;</p>\r\n<p><img src="js/tinymce/plugins/emoticons/img/smiley-cool.gif" alt="cool" /><img src="js/tinymce/plugins/emoticons/img/smiley-cry.gif" alt="cry" /><img src="js/tinymce/plugins/emoticons/img/smiley-embarassed.gif" alt="embarassed" /><img src="js/tinymce/plugins/emoticons/img/smiley-foot-in-mouth.gif" alt="foot-in-mouth" /></p>', 24, 53, 'Ahmed', 'ahmed@live.com', '2015-01-26 15:50:24'),
(35, '<p>Hello</p>\r\n<p>iam here</p>', 24, 53, 'Ahmed', 'ahmed@live.com', '2015-01-28 01:06:00'),
(36, '<p>mina atif</p>', 24, 49, 'Mina Atif', 'minaatifabduallah@gmail.com', '2015-01-28 01:06:41'),
(37, '<p>wefwefqwefwefwef</p>', 29, 53, 'Ahmed', 'ahmed@live.com', '2015-01-29 20:27:10'),
(38, '<p>Guest aebd</p>', 30, 0, 'wfwewefwef', 'mina.daid@yahoo.com', '2015-01-29 20:39:42'),
(39, '<p>65454654</p>', 25, 49, 'Mina Atif', 'minaatifabduallah@gmail.com', '2015-01-29 22:32:10'),
(40, '<p>ougoug;g&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>phpohop</p>', 26, 49, 'Mina Atif', 'minaatifabduallah@gmail.com', '2015-01-29 22:32:41'),
(41, '<p>ewfweqfwefewf</p>', 34, 0, 'Some one ', 'som@yahoo.com', '2015-01-30 16:48:39'),
(42, '<p>Ø´Ø«Ø¨ØµØ«Ø¨ØµØ«Ø¨ØµØ«</p>', 36, 49, 'Mina Atif', 'minaatifabduallah@gmail.com', '2015-02-06 17:10:03'),
(43, 'efweq weqfwefweqfwef', 26, 49, 'Mina Atif said', 'minaatifabduallah@gmail.com', '2015-10-26 11:45:17'),
(44, 'i&#39;m hereeeeeeeeeeee', 26, 49, 'Mina Atif said', 'minaatifabduallah@gmail.com', '2015-10-26 11:45:34'),
(45, 'Hello\r\n&nbsp;\r\nwe will be in touch again\r\n&nbsp;\r\nthanks', 52, 49, 'Mina Atif said', 'minaatifabduallah@gmail.com', '2015-10-26 18:35:15'),
(46, 'wefwef weqfwefw', 52, 49, 'Mina Atif said', 'minaatifabduallah@gmail.com', '2015-10-26 18:37:22'),
(47, 'wefew wefqewfwqef wefweqfewfewf', 52, 49, 'Mina Atif said', 'minaatifabduallah@gmail.com', '2015-10-26 18:38:33'),
(48, 'qwd qwdqwddddddddddddddd', 26, 49, 'Mina Atif said', 'minaatifabduallah@gmail.com', '2015-10-31 20:28:52'),
(49, 'wdwq aaaaaaaaaaaaaaaaaaaa', 26, 49, 'Mina Atif said', 'minaatifabduallah@gmail.com', '2015-10-31 20:29:03'),
(50, 'fwef wefwef', 26, 49, 'Mina Atif said', 'minaatifabduallah@gmail.com', '2015-10-31 20:33:27'),
(51, 'mina', 31, 49, 'Mina Atif said', 'minaatifabduallah@gmail.com', '2015-10-31 20:39:02'),
(52, 'wellcome here', 31, 49, 'Mina Atif said', 'minaatifabduallah@gmail.com', '2015-10-31 20:39:23'),
(53, 'hiiiiiiiiiiiiiiiiiiii', 54, 49, 'Mina Atif said', 'minaatifabduallah@gmail.com', '2015-10-31 21:16:21'),
(54, 'Thanks for your message we will get back to you soon', 54, 49, 'Mina Atif said', 'minaatifabduallah@gmail.com', '2015-10-31 21:16:50'),
(55, 'minaddddddddddddddddd', 54, 49, 'Mina Atif said', 'minaatifabduallah@gmail.com', '2015-10-31 21:55:11'),
(56, '646546546', 54, 49, 'Mina Atif said', 'minaatifabduallah@gmail.com', '2015-10-31 22:44:22'),
(57, '849 oioio', 26, 49, 'Mina Atif said', 'minaatifabduallah@gmail.com', '2015-11-01 20:36:55'),
(58, '', 24, 49, 'Mina Atif said', 'minaatifabduallah@gmail.com', '2015-11-05 21:32:34'),
(59, '', 24, 49, 'Mina Atif said', 'minaatifabduallah@gmail.com', '2015-11-05 21:32:58'),
(60, 'ewfewf', 55, 49, 'Mina Atif said', 'minaatifabduallah@gmail.com', '2015-11-22 05:25:21');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `filename` varchar(255) COLLATE utf8_bin NOT NULL,
  `direction` varchar(255) COLLATE utf8_bin NOT NULL,
  `langcode` varchar(255) COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=25 ;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `filename`, `direction`, `langcode`, `status`) VALUES
(1, 'English', 'english.php', 'ltr', 'en', 1),
(22, 'Arabic', 'arabic.php', 'rtl', 'ar', 1),
(23, 'Frinsh', 'frinsh.php', 'ltr', 'fr', 1),
(24, 'German', 'german.php', 'ltr', 'de', 0);

-- --------------------------------------------------------

--
-- Table structure for table `log_security`
--

CREATE TABLE IF NOT EXISTS `log_security` (
`id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `time` varchar(30) COLLATE utf8_bin NOT NULL,
  `ip` varchar(255) COLLATE utf8_bin NOT NULL,
  `user_agent` text COLLATE utf8_bin NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=14 ;

--
-- Dumping data for table `log_security`
--

INSERT INTO `log_security` (`id`, `userid`, `time`, `ip`, `user_agent`, `date`) VALUES
(1, 53, '1448031961', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-20 16:06:01'),
(2, 53, '1448031969', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-20 16:06:09'),
(3, 53, '1448031974', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-20 16:06:14'),
(4, 49, '1448032027', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-20 16:07:07'),
(5, 53, '1448032107', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-20 16:08:27'),
(6, 53, '1448032113', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-20 16:08:33'),
(7, 53, '1448032119', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-20 16:08:39'),
(10, 53, '1448050065', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-20 21:07:45'),
(11, 53, '1448050072', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '2015-11-20 21:07:52'),
(12, 49, '1449496979', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36', '2015-12-07 15:02:59'),
(13, 49, '1449496982', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36', '2015-12-07 15:03:02');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `parent` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `place` varchar(255) COLLATE utf8_bin NOT NULL,
  `order` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=34 ;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent`, `url`, `type`, `place`, `order`, `status`) VALUES
(1, 'Pages', 0, '#', 'dropdown', 'navbar', 4, 1),
(2, 'Google', 0, 'http://google.com', 'link', 'navbar', 3, 1),
(3, 'mina', 0, '#', 'dropdown', 'navbar', 2, 0),
(4, 'Contact center', 0, '#', 'dropdown', 'navbar', 5, 1),
(5, 'Home', 0, 'index.php', 'link', 'navbar', 1, 1),
(6, 'Pages-footer', 0, '#', 'list', 'footer1', 1, 1),
(19, 'Side menu 1', 0, '#', 'accordian', 'sidemenu', 1, 1),
(21, 'Side menu 3', 0, 'http://Mina Atif,com', 'link', 'sidemenu', 3, 1),
(22, 'Side menu 2', 0, '#', 'accordian', 'sidemenu', 2, 1),
(25, 'News', 0, '#', 'dropdown', 'navbar', 9, 1),
(29, 'Services', 0, '#', 'dropdown', 'navbar', 20, 1),
(30, 'Ahmed', 0, '#', 'dropdown', 'navbar', 5, 0),
(31, 'menu 1', 0, '#', 'link', 'header', 1, 1),
(32, 'menu 2', 0, '#', 'link', 'header', 2, 1),
(33, 'Services', 0, '#', 'list', 'footer1', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menus_child`
--

CREATE TABLE IF NOT EXISTS `menus_child` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `parent` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  `order` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=39 ;

--
-- Dumping data for table `menus_child`
--

INSERT INTO `menus_child` (`id`, `name`, `parent`, `url`, `order`, `status`) VALUES
(1, 'About us', 0, '', 0, 0),
(2, 'TOS', 1, 'page.php?id=11', 2, 1),
(3, '', 0, '', 0, 0),
(4, 'Contact', 4, 'ccenter.php?type=contact', 1, 1),
(5, 'Job application', 4, 'ccenter.php?type=job', 2, 0),
(6, 'Quota request', 4, 'ccenter.php?type=qouta', 3, 0),
(7, 'About Us', 6, 'page.php?id=9', 1, 1),
(8, 'Terms of services', 6, 'page.php?id=11', 2, 1),
(9, 'Home', 19, 'index.php', 1, 1),
(10, 'Home2', 22, 'index.php', 1, 1),
(11, 'mina', 23, 'http://Mina Atif.com', 3, 1),
(14, 'aaaaaa', 23, 'http://aaa.com', 7, 1),
(15, 'MiNative', 1, 'http://minative.com', 4, 1),
(16, 'MiNative net -off', 1, 'http://minative.net', 5, 0),
(18, 'How to?', 1, 'page.php?id=120', 7, 1),
(19, 'wefwefwef', 1, '#', 8, 1),
(22, 'Sports', 25, 'news.php?sec=12', 1, 1),
(23, 'Economic', 25, 'news.php?sec=13', 2, 1),
(24, 'politics', 25, 'news.php?sec=14', 3, 1),
(25, 'Any thing', 1, '#', 10, 1),
(26, 'aya', 1, '#', 18, 0),
(27, 'aaa', 3, 'page.php?id=80', 0, 1),
(32, 'new page', 1, 'page.php?id=120', 20, 1),
(33, 'ahmed link 1', 30, '#', 1, 1),
(34, 'ahmed link 2', 30, '#', 2, 1),
(35, 'Hosting services', 33, '#', 1, 1),
(36, 'MiNative CMS', 33, '#', 2, 1),
(37, 'Domains services', 33, '#', 3, 1),
(38, '', 1, 'page.php?id=84', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `multi_lang`
--

CREATE TABLE IF NOT EXISTS `multi_lang` (
`id` int(11) NOT NULL,
  `lang` varchar(255) COLLATE utf8_bin NOT NULL,
  `parent_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=422 ;

--
-- Dumping data for table `multi_lang`
--

INSERT INTO `multi_lang` (`id`, `lang`, `parent_id`, `type`, `name`, `content`) VALUES
(345, 'ar', 0, 'settings', 'sitename', 'Ø´Ø±ÙƒØ© ØªØ±Ø§ÙƒØ³ÙŠØ¯ Ù„Ù†Ø¸Ø§Ù… Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª'),
(346, 'ar', 0, 'settings', 'closingmessage', 'Ø¹ÙÙˆØ§Ù‹ Ù„Ù„Ø¥Ø²Ø¹Ø§Ø¬ØŒ Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ø­Ø§Ù„ÙŠØ§Ù‹ ÙŠØ®Ø¶Ø¹ Ù„Ù„ØµÙŠØ§Ù†Ø© \r\n\r\nÙØ¶Ù„Ø§Ù‹ Ø§Ù„Ù…Ø¹Ø§ÙˆØ¯Ø© ÙÙŠ ÙˆÙ‚Øª Ù„Ø§Ø­Ù‚'),
(347, 'ar', 0, 'settings', 'metadisc', 'mina atif programing trxeed ltd'),
(348, 'ar', 0, 'settings', 'metakey', 'mina,said,programin,keyword,mina,said'),
(349, 'ar', 0, 'settings', 'siteslogn', 'Ø´Ø±ÙƒØ© Ø¹Ø§Ù„Ù…ÙŠØ© Ø¹Ù„Ù‰ Ø§Ø±Ø¶ Ù…ØµØ±ÙŠØ©'),
(350, 'ar', 0, 'settings', 'copyright', 'Ø¬Ù…ÙŠØ¹ Ø§Ù„Ø­Ù‚ÙˆÙ‚ Ù…Ø­ÙÙˆØ¸Ø©'),
(351, 'ar', 0, 'settings', 'compfullname', 'Ø´Ø±ÙƒØ© ØªØ±Ø§ÙƒØ³ÙŠØ¯ Ù„Ù†Ø¸Ù… Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø´.Ø°.Ù….Ù…'),
(352, 'ar', 0, 'settings', 'compmanname', 'Ø¹Ø§Ø¨Ø¯ Ø§Ù„Ù„Ù‡ Ø³Ø¹ÙŠØ¯'),
(353, 'ar', 0, 'settings', 'compmantit', 'Ø§Ù„Ù…Ø¤Ø³Ø³ ÙˆØ§Ù„Ù…Ø¯ÙŠØ± Ø§Ù„Ø¹Ø§Ù…'),
(354, 'ar', 0, 'settings', 'compactivities', 'Ø§Ù„Ø¨Ø±Ù…Ø¬Ø©Â \r\nØ§Ù„ØªØµÙ…ÙŠÙ…\r\nØ§Ù„Ø¨Ø±Ø§Ù…Ø¬\r\nØ§Ù„Ø§Ø³ØªÙŠØ±Ø§Ø¯ ÙˆØ§Ù„ØªØµØ¯ÙŠØ±'),
(355, 'ar', 0, 'settings', 'mainbrabadd', '13 Ø§Ø­Ù…Ø¯ ØªÙŠØ³ÙŠØ± - Ø§Ù„Ù‚Ø§Ù‡Ø±Ù‡ - Ù…ØµØ±'),
(356, 'ar', 0, 'settings', 'termscontent', 'Ø´Ø±ÙˆØ· Ø§Ù„ØªØ³Ø¬ÙŠÙ„ Ø¨Ø§Ù„Ù…ÙˆÙ‚Ø¹'),
(357, 'ar', 0, 'settings', 'defaultmailheader', '&lt;table class=&quot;body-wrap&quot; bgcolor=&quot;#f6f6f6&quot;&gt;\r\n  &lt;tr&gt;\r\n    &lt;td&gt;&lt;/td&gt;\r\n    &lt;td class=&quot;container&quot; bgcolor=&quot;#FFFFFF&quot;&gt;\r\n\r\n      &lt;!-- content --&gt;\r\n      &lt;div class=&quot;content&quot;&gt;\r\n      &lt;table&gt;\r\n        &lt;tr&gt;\r\n          &lt;td&gt;'),
(358, 'ar', 0, 'settings', 'defaultmailfooter', '          &lt;/td&gt;\r\n        &lt;/tr&gt;\r\n      &lt;/table&gt;\r\n      &lt;/div&gt;\r\n      &lt;!-- /content --&gt;\r\n      \r\n    &lt;/td&gt;\r\n    &lt;td&gt;&lt;/td&gt;\r\n  &lt;/tr&gt;\r\n&lt;/table&gt;\r\n&lt;!-- /body --&gt;\r\n\r\n&lt;!-- footer --&gt;\r\n&lt;table class=&quot;footer-wrap&quot;&gt;\r\n  &lt;tr&gt;\r\n    &lt;td&gt;&lt;/td&gt;\r\n    &lt;td class=&quot;container&quot;&gt;\r\n      \r\n      &lt;!-- content --&gt;\r\n      &lt;div class=&quot;content&quot;&gt;\r\n        &lt;table&gt;\r\n          &lt;tr&gt;\r\n            &lt;td align=&quot;center&quot;&gt;\r\n              &lt;p&gt;MiNative mail.\r\n              &lt;/p&gt;\r\n            &lt;/td&gt;\r\n          &lt;/tr&gt;\r\n        &lt;/table&gt;\r\n      &lt;/div&gt;\r\n      &lt;!-- /content --&gt;\r\n      \r\n    &lt;/td&gt;\r\n    &lt;td&gt;&lt;/td&gt;\r\n  &lt;/tr&gt;\r\n&lt;/table&gt;\r\n&lt;!-- /footer --&gt;'),
(359, 'ar', 0, 'settings', 'defaultmailbody', ' &lt;p&gt;Hi there, {$name}&lt;/p&gt;\r\n           {$message_content}'),
(360, 'ar', 0, 'settings', 'defaultmailcss', '/* -------------------------------------\r\n    GLOBAL\r\n------------------------------------- */\r\n* {\r\n  font-family: &#34;Helvetica Neue&#34;, &#34;Helvetica&#34;, Helvetica, Arial, sans-serif;\r\n  font-size: 100%;\r\n  line-height: 1.6em;\r\n  margin: 0;\r\n  padding: 0;\r\n}\r\n\r\nimg {\r\n  max-width: 600px;\r\n  width: 100%;\r\n}\r\n\r\nbody {\r\n  -webkit-font-smoothing: antialiased;\r\n  height: 100%;\r\n  -webkit-text-size-adjust: none;\r\n  width: 100% !important;\r\n  background: #f6f6f6;\r\n}\r\n\r\n\r\n/* -------------------------------------\r\n    ELEMENTS\r\n------------------------------------- */\r\na {\r\n  color: #348eda;\r\n}\r\n\r\n.btn-primary {\r\n  Margin-bottom: 10px;\r\n  width: auto !important;\r\n}\r\n\r\n.btn-primary td {\r\n  background-color: #348eda; \r\n  border-radius: 25px;\r\n  font-family: &#34;Helvetica Neue&#34;, Helvetica, Arial, &#34;Lucida Grande&#34;, sans-serif; \r\n  font-size: 14px; \r\n  text-align: center;\r\n  vertical-align: top; \r\n}\r\n\r\n.btn-primary td a {\r\n  background-color: #348eda;\r\n  border: solid 1px #348eda;\r\n  border-radius: 25px;\r\n  border-width: 10px 20px;\r\n  display: inline-block;\r\n  color: #ffffff;\r\n  cursor: pointer;\r\n  font-weight: bold;\r\n  line-height: 2;\r\n  text-decoration: none;\r\n}\r\n\r\n.last {\r\n  margin-bottom: 0;\r\n}\r\n\r\n.first {\r\n  margin-top: 0;\r\n}\r\n\r\n.padding {\r\n  padding: 10px 0;\r\n}\r\n\r\n\r\n/* -------------------------------------\r\n    BODY\r\n------------------------------------- */\r\ntable.body-wrap {\r\n  padding: 20px;\r\n  width: 100%;\r\n}\r\n\r\ntable.body-wrap .container {\r\n  border: 1px solid #f0f0f0;\r\n}\r\n\r\n\r\n/* -------------------------------------\r\n    FOOTER\r\n------------------------------------- */\r\ntable.footer-wrap {\r\n  clear: both !important;\r\n  width: 100%;  \r\n}\r\n\r\n.footer-wrap .container p {\r\n  color: #666666;\r\n  font-size: 12px;\r\n  \r\n}\r\n\r\ntable.footer-wrap a {\r\n  color: #999999;\r\n}\r\n\r\n\r\n/* -------------------------------------\r\n    TYPOGRAPHY\r\n------------------------------------- */\r\nh1, \r\nh2, \r\nh3 {\r\n  color: #111111;\r\n  font-family: &#34;Helvetica Neue&#34;, Helvetica, Arial, &#34;Lucida Grande&#34;, sans-serif;\r\n  font-weight: 200;\r\n  line-height: 1.2em;\r\n  margin: 40px 0 10px;\r\n}\r\n\r\nh1 {\r\n  font-size: 36px;\r\n}\r\nh2 {\r\n  font-size: 28px;\r\n}\r\nh3 {\r\n  font-size: 22px;\r\n}\r\n\r\np, \r\nul, \r\nol {\r\n  font-size: 14px;\r\n  font-weight: normal;\r\n  margin-bottom: 10px;\r\n}\r\n\r\nul li, \r\nol li {\r\n  margin-left: 5px;\r\n  list-style-position: inside;\r\n}\r\n\r\n/* ---------------------------------------------------\r\n    RESPONSIVENESS\r\n------------------------------------------------------ */\r\n\r\n/* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */\r\n.container {\r\n  clear: both !important;\r\n  display: block !important;\r\n  Margin: 0 auto !important;\r\n  max-width: 600px !important;\r\n}\r\n\r\n/* Set the padding on the td rather than the div for Outlook compatibility */\r\n.body-wrap .container {\r\n  padding: 20px;\r\n}\r\n\r\n/* This should also be a block element, so that it will fill 100% of the .container */\r\n.content {\r\n  display: block;\r\n  margin: 0 auto;\r\n  max-width: 600px;\r\n}\r\n\r\n/* Let&#39;s make sure tables in the content area are 100% wide */\r\n.content table {\r\n  width: 100%;\r\n}\r\n'),
(361, 'ar', 0, 'settings', 'exwelmess', 'Ù…Ø±Ø­Ø¨Ø§ Ø¨ÙƒÙ… ÙÙŠ Ù†Ø¸Ø§Ù… Ø§Ø¯Ø§Ø±Ø© Ø§Ù„Ø´Ø±ÙƒØ§Øª ØªØ±Ø§ÙƒØ³ÙŠØ¯'),
(362, 'ar', 0, 'settings', 'exweladv', 'ØªØªÙˆÙØ± Ø§Ù„Ø§Ù† Ø§Ø­Ø¯Ø« Ù†Ø³Ø®Ù‡ Ù…Ù† Ø§Ù„Ø¨Ø±Ù†Ø§Ù…Ø¬ ÙˆØ§Ù„ØªÙŠ ØªØªÙŠØ­ Ù„Ùƒ Ø§Ø¯Ø§Ø±Ø© Ø´Ø±ÙƒØªÙƒ Ø¨ÙƒÙ„ Ø³Ù‡ÙˆÙ„Ùƒ'),
(363, 'ar', 0, 'settings', 'ccenterautoreply', 'Ù…Ø±Ø­Ø¨Ø§\r\n\r\nØ´ÙƒØ±Ø§Ù‹ Ù„Ø¥ØªØµØ§Ù„ÙƒÙ… Ø¨Ù†Ø§ØŒ Ø³ÙˆÙ ÙŠØªÙ… Ø§Ù„Ø±Ø¯ Ø¹Ù„ÙŠÙƒÙ… ÙÙŠ Ø§Ù‚Ø±Ø¨ ÙØ±ØµØ©\r\n\r\nØªÙ‚Ø¨Ù„ ØªØ­ÙŠØ§ØªÙ†Ø§'),
(364, 'ar', 0, 'settings', 'ccentercloseautoreply', 'Ù…Ø±Ø­Ø¨Ø§\r\n\r\nØªÙ… ØºÙ„Ù‚ Ø§Ù„Ø±Ø³Ø§Ù„Ø© Ù†Ø¸Ø±Ø§Ù‹ Ù„Ø¹Ø¯Ù… ÙˆØ¬ÙˆØ¯ ØªÙØ§Ø¹Ù„ Ø¨Ù‡Ø§\r\n\r\nØªØ­ÙŠØ§ØªÙŠ'),
(365, 'ar', 43, 'pages', 'Ø¨ÙŠ Ø§ØªØ´ Ø¨ÙŠ Ø¨Ø§Ù„Ø¹Ø±Ø¨ÙŠ', 'a:5:{s:9:"pagebrief";s:478:"Ø¸Ù‡Ø±Øª php Ø£ÙˆÙ„Ø§ ÙÙŠ Ø³Ù†Ø© 1995 Ø¹Ù„Ù‰ ÙŠØ¯ Ø±Ø§Ø³Ù…ÙˆØ³ Ù„ÙŠØ±Ø¯ÙˆØ±Ù (Rasmus Lerdorf) ÙƒØ§Ù†Øª ØªØ³Ù…Ù‰ ÙˆÙ‚ØªÙ‡Ø§ Ø¨Ù€ PHP/FI ÙˆÙÙŠ Ø§Ù„Ø­Ù‚ÙŠÙ‚Ø© Ù„Ù… ØªÙƒÙ† Ù„ØºØ© Ø¨Ø±Ù…Ø¬Ù‡ ÙˆÙ‚ØªÙ‡Ø§ ÙˆØ§Ù†Ù…Ø§ ÙƒØ§Ù†Øª Ù…Ø¬Ù…ÙˆØ¹Ù‡ Ù…Ù† Ø§Ù„ØªØ·Ø¨ÙŠÙ‚Ø§Øª Ø§Ù„ØªÙŠ ÙƒØªØ¨Øª Ø¨Ø§Ø³ØªØ®Ø¯Ø§Ù… Ù„ØºØ© Perl Ø£Ø·Ù„Ù‚ Ø±Ø§Ø³Ù…ÙˆØ³ Ø§Ø³Ù… Personal Home Page Tools Ø¹Ù„Ù‰ Ù‡Ø°Ù‡ Ø§Ù„ØªØ·Ø¨ÙŠÙ‚Ø§ØªØŒ Ù„Ø§Ù†Ù‡ Ø§Ø­ØªØ§Ø¬ ÙÙŠÙ…Ø§ Ø¨Ø¹Ø¯ Ø¥Ù„Ù‰ ØªØ·Ø¨ÙŠÙ‚Ø§Øª Ø£ÙƒØ«Ø± ÙØ§Ø¦Ø¯Ù‡ Ù‚Ø§Ù… ";s:11:"pagecontent";s:11339:"&lt;h3 style=&quot;direction: rtl;&quot;&gt;&lt;span id=&quot;PHP.2FFI&quot; class=&quot;mw-headline&quot;&gt;PHP/FI&lt;/span&gt;&lt;span class=&quot;mw-editsection&quot;&gt;&lt;span class=&quot;mw-editsection-bracket&quot;&gt;[&lt;/span&gt;&lt;a title=&quot;Ø¹Ø¯Ù„ Ø§Ù„Ù‚Ø³Ù…: PHP/FI&quot; href=&quot;https://ar.wikipedia.org/w/index.php?title=%D8%A8%D9%8A_%D8%A5%D8%AA%D8%B4_%D8%A8%D9%8A&amp;amp;action=edit&amp;amp;section=2&quot;&gt;Ø¹Ø¯Ù„&lt;/a&gt;&lt;span class=&quot;mw-editsection-bracket&quot;&gt;]&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;Ø¸Ù‡Ø±Øª php Ø£ÙˆÙ„Ø§ ÙÙŠ Ø³Ù†Ø© &lt;a title=&quot;1995&quot; href=&quot;https://ar.wikipedia.org/wiki/1995&quot;&gt;1995&lt;/a&gt; Ø¹Ù„Ù‰ ÙŠØ¯ &lt;a title=&quot;Ø±Ø§Ø³Ù…ÙˆØ³ Ù„ÙŠØ±Ø¯ÙˆØ±Ù&quot; href=&quot;https://ar.wikipedia.org/wiki/%D8%B1%D8%A7%D8%B3%D9%85%D9%88%D8%B3_%D9%84%D9%8A%D8%B1%D8%AF%D9%88%D8%B1%D9%81&quot;&gt;Ø±Ø§Ø³Ù…ÙˆØ³ Ù„ÙŠØ±Ø¯ÙˆØ±Ù&lt;/a&gt; (Rasmus Lerdorf) ÙƒØ§Ù†Øª ØªØ³Ù…Ù‰ ÙˆÙ‚ØªÙ‡Ø§ Ø¨Ù€ PHP/FI ÙˆÙÙŠ Ø§Ù„Ø­Ù‚ÙŠÙ‚Ø© Ù„Ù… ØªÙƒÙ† Ù„ØºØ© Ø¨Ø±Ù…Ø¬Ù‡ ÙˆÙ‚ØªÙ‡Ø§ ÙˆØ§Ù†Ù…Ø§ ÙƒØ§Ù†Øª Ù…Ø¬Ù…ÙˆØ¹Ù‡ Ù…Ù† Ø§Ù„ØªØ·Ø¨ÙŠÙ‚Ø§Øª Ø§Ù„ØªÙŠ ÙƒØªØ¨Øª Ø¨Ø§Ø³ØªØ®Ø¯Ø§Ù… Ù„ØºØ© &lt;a title=&quot;Ø¨ÙŠØ±Ù„&quot; href=&quot;https://ar.wikipedia.org/wiki/%D8%A8%D9%8A%D8%B1%D9%84&quot;&gt;Perl&lt;/a&gt; Ø£Ø·Ù„Ù‚ Ø±Ø§Ø³Ù…ÙˆØ³ Ø§Ø³Ù… Personal Home Page Tools Ø¹Ù„Ù‰ Ù‡Ø°Ù‡ Ø§Ù„ØªØ·Ø¨ÙŠÙ‚Ø§ØªØŒ Ù„Ø§Ù†Ù‡ Ø§Ø­ØªØ§Ø¬ ÙÙŠÙ…Ø§ Ø¨Ø¹Ø¯ Ø¥Ù„Ù‰ ØªØ·Ø¨ÙŠÙ‚Ø§Øª Ø£ÙƒØ«Ø± ÙØ§Ø¦Ø¯Ù‡ Ù‚Ø§Ù… Ø±Ø§Ø³Ù…ÙˆØ³ Ø¨ÙƒØªØ§Ø¨Ø© ØªØ·Ø¨ÙŠÙ‚ Ø£ÙƒØ¨Ø± Ø¨Ø§Ø³ØªØ®Ø¯Ø§Ù… Ù„ØºØ© &lt;a title=&quot;Ø³ÙŠ (Ù„ØºØ© Ø¨Ø±Ù…Ø¬Ø©)&quot; href=&quot;https://ar.wikipedia.org/wiki/%D8%B3%D9%8A_(%D9%84%D8%BA%D8%A9_%D8%A8%D8%B1%D9%85%D8%AC%D8%A9)&quot;&gt;C&lt;/a&gt; Ø­ÙŠØ« Ø£ØµØ¨Ø­Øª Ù‚Ø§Ø¯Ø±Ø© Ø¹Ù„Ù‰ Ø§Ù„Ø§ØªØµØ§Ù„ &lt;a title=&quot;Ù‚Ø§Ø¹Ø¯Ø© Ø¨ÙŠØ§Ù†Ø§Øª&quot; href=&quot;https://ar.wikipedia.org/wiki/%D9%82%D8%A7%D8%B9%D8%AF%D8%A9_%D8%A8%D9%8A%D8%A7%D9%86%D8%A7%D8%AA&quot;&gt;Ø¨Ù‚ÙˆØ§Ø¹Ø¯ Ø§Ù„Ø¨ÙŠØ§Ù†Ø§Øª&lt;/a&gt; ÙƒÙ…Ø§ Ø£Ù†Ù‡Ø§ ÙƒØ§Ù†Øª ØªØ³Ù…Ø­ Ù„Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ† Ø¨ØªØ·ÙˆÙŠØ± ØªØ·Ø¨ÙŠÙ‚Ø§Øª Ù…ÙˆØ§Ù‚Ø¹ Ø¯ÙŠÙ†Ø§Ù…ÙŠÙƒÙŠÙ‡ Ø¨Ø³ÙŠØ·Ù‡ØŒ Ø§Ø®ØªØ§Ø± Ø±Ø§Ø³Ù…ÙˆØ³ Ø§Ù† ØªÙƒÙˆÙ† Ø§Ù„Ø´ÙŠÙØ±Ø© Ø§Ù„Ù…ØµØ¯Ø±ÙŠØ© Ø§Ù„Ø®Ø§ØµØ© Ø¨Ù€ PHP/FI Ù…ØªÙˆÙØ±Ù‡ Ù„Ù„Ø¬Ù…ÙŠØ¹ Ù„Ø°Ø§ ÙƒØ§Ù† ÙŠÙ…ÙƒÙ† Ù„Ø£ÙŠ Ø´Ø®Øµ Ø§Ù† ÙŠØ³ØªØ®Ø¯Ù…Ù‡Ø§ ÙˆÙŠÙ‚ÙˆÙ… Ø¨ØªØ­Ø³ÙŠÙ†Ù‡Ø§ ÙˆØ§Ù„Ù…Ø´Ø§Ø±ÙƒØ© ÙÙŠ Ø­Ù„ Ø§Ø®Ø·Ø§Ø¡Ù‡Ø§ ÙˆÙ…Ø´Ø§ÙƒÙ„Ù‡Ø§.&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;ÙƒØ§Ù†Øª PHP/FI ÙˆÙ‚ØªÙ‡Ø§ ØªØ­ÙˆÙŠ Ø¹Ù„Ù‰ Ø¨Ø¹Ø¶ Ø§Ù„ÙˆØ¸Ø§Ø¦Ù Ø§Ù„Ù…ØªÙˆÙØ±Ø© Ø¨Ø§Ù„Ø¥ØµØ¯Ø§Ø±Ø§Øª Ø§Ù„Ø­Ø§Ù„ÙŠØ© Ù…Ù† Ø§Ù„Ù„ØºØ©ØŒ ÙƒÙ…Ø§ Ø£Ù† &lt;a class=&quot;mw-redirect&quot; title=&quot;Ø§Ù„Ù…ØªØºÙŠØ±Ø§Øª&quot; href=&quot;https://ar.wikipedia.org/wiki/%D8%A7%D9%84%D9%85%D8%AA%D8%BA%D9%8A%D8%B1%D8%A7%D8%AA&quot;&gt;Ø§Ù„Ù…ØªØºÙŠØ±Ø§Øª&lt;/a&gt; ÙƒØ§Ù†Øª ØªØ´Ø¨Ù‡ Ù…ØªØºÙŠØ±Ø§Øª &lt;a title=&quot;Ø¨ÙŠØ±Ù„&quot; href=&quot;https://ar.wikipedia.org/wiki/%D8%A8%D9%8A%D8%B1%D9%84&quot;&gt;Perl&lt;/a&gt;ØŒ ÙˆÙƒØ§Ù†Øª ØªØ±ÙƒÙŠØ¨Ù‡Ø§ Ø§Ù„Ù†Ø­ÙˆÙŠ ÙŠØ´Ø¨Ù‡ &lt;a title=&quot;Ø¨ÙŠØ±Ù„&quot; href=&quot;https://ar.wikipedia.org/wiki/%D8%A8%D9%8A%D8%B1%D9%84&quot;&gt;Perl&lt;/a&gt; Ø¨Ø§Ù„Ø±ØºÙ… Ù…Ù† Ø¨Ø³Ø§Ø·ØªÙ‡Ø§ ÙˆÙ…Ø­Ø¯ÙˆØ¯ÙŠØ§ØªÙ‡Ø§.&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;ÙÙŠ Ø¹Ø§Ù… &lt;a title=&quot;1997&quot; href=&quot;https://ar.wikipedia.org/wiki/1997&quot;&gt;1997&lt;/a&gt; ØªÙ… Ø¥Ø·Ù„Ø§Ù‚ Ø§Ù„Ø¥ØµØ¯Ø§Ø± 2.0 Ù…Ù† PHP/FIØŒ Ø­ÙŠØ« Ø¨Ù„Øº Ø¹Ø¯Ø¯ Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ‡Ø§ Ø¢Ù†Ø°Ø§Ùƒ 50,000 Ù†Ø·Ø§Ù‚ØŒ ÙˆÙƒØ§Ù† Ù‡Ù†Ø§Ùƒ Ù…Ø¬Ù…ÙˆØ¹Ù‡ Ù…Ù† Ø§Ù„Ø£Ø´Ø®Ø§Øµ Ø§Ù„Ø°ÙŠÙ† ÙŠØ´Ø§Ø±ÙƒÙˆÙ† ÙÙŠ Ø§Ù„ØªØ·ÙˆÙŠØ±ØŒ ÙˆØªÙ… Ø¥Ø·Ù„Ø§Ù‚ Ø§Ù„Ø¥ØµØ¯Ø§Ø± Ø§Ù„Ø±Ø³Ù…ÙŠ Ù…Ù† 2.0 ÙÙŠ Ø´Ù‡Ø± &lt;a title=&quot;Ù†ÙˆÙÙ…Ø¨Ø±&quot; href=&quot;https://ar.wikipedia.org/wiki/%D9%86%D9%88%D9%81%D9%85%D8%A8%D8%B1&quot;&gt;Ù†ÙˆÙÙ…Ø¨Ø±&lt;/a&gt; Ù…Ù† Ù†ÙØ³ Ø§Ù„Ø¹Ø§Ù… Ø¨Ø¹Ø¯ Ø§Ù„Ø¹Ø¯ÙŠØ¯ Ù…Ù† Ø§Ù„Ø¥ØµØ¯Ø§Ø±Ø§Øª Ø§Ù„ØªØ¬Ø±ÙŠØ¨ÙŠØ© &lt;a title=&quot;Ù…Ø±Ø§Ø­Ù„ Ø¥ØµØ¯Ø§Ø± Ø§Ù„Ø¨Ø±Ù…Ø¬ÙŠØ§Øª&quot; href=&quot;https://ar.wikipedia.org/wiki/%D9%85%D8%B1%D8%A7%D8%AD%D9%84_%D8%A5%D8%B5%D8%AF%D8%A7%D8%B1_%D8%A7%D9%84%D8%A8%D8%B1%D9%85%D8%AC%D9%8A%D8%A7%D8%AA#.D8.A7.D9.84.D9.85.D8.B1.D8.AD.D9.84.D8.A9_.D8.A8.D9.8A.D8.AA.D8.A7&quot;&gt;Ø¨ÙŠØªØ§&lt;/a&gt;.&lt;/p&gt;\r\n&lt;h3 style=&quot;direction: rtl;&quot;&gt;&lt;span id=&quot;PHP_3&quot; class=&quot;mw-headline&quot;&gt;PHP 3&lt;/span&gt;&lt;span class=&quot;mw-editsection&quot;&gt;&lt;span class=&quot;mw-editsection-bracket&quot;&gt;[&lt;/span&gt;&lt;a title=&quot;Ø¹Ø¯Ù„ Ø§Ù„Ù‚Ø³Ù…: PHP 3&quot; href=&quot;https://ar.wikipedia.org/w/index.php?title=%D8%A8%D9%8A_%D8%A5%D8%AA%D8%B4_%D8%A8%D9%8A&amp;amp;action=edit&amp;amp;section=3&quot;&gt;Ø¹Ø¯Ù„&lt;/a&gt;&lt;span class=&quot;mw-editsection-bracket&quot;&gt;]&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;ÙÙŠ Ø¹Ø§Ù… &lt;a title=&quot;1997&quot; href=&quot;https://ar.wikipedia.org/wiki/1997&quot;&gt;1997&lt;/a&gt; ØªÙ… Ø¥Ø¹Ø§Ø¯Ø© ÙƒØªØ§Ø¨Ø© PHP/FI Ø¹Ù„Ù‰ ÙŠØ¯ &lt;a title=&quot;Ø²ÙŠÙ Ø³ÙˆØ±Ø§Ø³ÙƒÙŠ&quot; href=&quot;https://ar.wikipedia.org/wiki/%D8%B2%D9%8A%D9%81_%D8%B3%D9%88%D8%B1%D8%A7%D8%B3%D9%83%D9%8A&quot;&gt;Ø²ÙŠÙ Ø³ÙˆØ±Ø§Ø³ÙƒÙŠ&lt;/a&gt; &lt;a title=&quot;Ø£Ù†Ø¯ÙŠ Ø¬ØªÙ…Ø§Ù†Ø²&quot; href=&quot;https://ar.wikipedia.org/wiki/%D8%A3%D9%86%D8%AF%D9%8A_%D8%AC%D8%AA%D9%85%D8%A7%D9%86%D8%B2&quot;&gt;ÙˆØ£Ù†Ø¯ÙŠ Ø¬ØªÙ…Ø§Ù†Ø²&lt;/a&gt; Ø¨Ø¹Ø¯Ù…Ø§ ÙˆØ¬Ø¯ÙˆØ§ Ø§Ù† PHP/FI 2.0 Ù„ÙŠØ³Øª Ù‚ÙˆÙŠÙ‡ Ø¨Ù…Ø§ ÙÙŠÙ‡ Ø§Ù„ÙƒÙØ§ÙŠØ© Ù…Ù† Ø£Ø¬Ù„ ÙƒØªØ§Ø¨Ø© ØªØ·Ø¨ÙŠÙ‚ ØªØ¬Ø§Ø±Ø© Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠØ© ÙˆØ§Ù„Ø°ÙŠ ÙƒØ§Ù†ÙˆØ§ ÙŠØ¹Ù…Ù„ÙˆÙ† Ø¹Ù„ÙŠÙ‡ ÙƒÙ…Ø´Ø±ÙˆØ¹ ØªØ®Ø±Ø¬ Ù„Ø¬Ø§Ù…Ø¹ØªÙ‡Ù…ØŒ ÙƒØ§Ù† Ù‡Ù†Ø§Ùƒ ØªØ¹Ø§ÙˆÙ† Ø¨ÙŠÙ†Ù‡Ù… ÙˆØ¨ÙŠÙ† Ù…Ø¤Ø³Ø³ Ø§Ù„Ù„ØºØ© &lt;a class=&quot;new&quot; title=&quot;Ø±Ø§Ø³Ù…ÙˆØ³ Ù„ÙŠØ±Ø¯Ø±ÙˆÙ (Ø§Ù„ØµÙØ­Ø© ØºÙŠØ± Ù…ÙˆØ¬ÙˆØ¯Ø©)&quot; href=&quot;https://ar.wikipedia.org/w/index.php?title=%D8%B1%D8%A7%D8%B3%D9%85%D9%88%D8%B3_%D9%84%D9%8A%D8%B1%D8%AF%D8%B1%D9%88%D9%81&amp;amp;action=edit&amp;amp;redlink=1&quot;&gt;Ø±Ø§Ø³Ù…ÙˆØ³ Ù„ÙŠØ±Ø¯ÙˆØ±Ù&lt;/a&gt; Ø¹Ù„Ù‰ Ø§Ù† ØªÙƒÙˆÙ† PHP 3.0 Ù‡ÙŠ Ø§Ù„Ù†Ø³Ø®Ø© Ø§Ù„Ø±Ø³Ù…ÙŠØ© Ø¨Ø¹Ø¯ PHP/FI.&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;Ø£Ø­Ø¯ Ø£Ù‡Ù… Ø§Ù„Ù…ÙŠØ²Ø§Øª Ø§Ù„ØªÙŠ ØªÙ…ÙŠØ²Øª Ø¨Ù‡Ø§ PHP 3 Ø¹Ù† Ø³Ø§Ø¨Ù‚ØªÙ‡Ø§ Ø§Ù†Ù‡Ø§ Ø£ØµØ¨Ø­Øª &lt;a title=&quot;Ù‚Ø§Ø¨Ù„ÙŠØ© Ø§Ù„ØªÙˆØ³Ø¹&quot; href=&quot;https://ar.wikipedia.org/wiki/%D9%82%D8%A7%D8%A8%D9%84%D9%8A%D8%A9_%D8%A7%D9%84%D8%AA%D9%88%D8%B3%D8%B9&quot;&gt;Ù‚Ø§Ø¨Ù„Ø© Ù„Ù„ØªÙˆØ³Ø¹&lt;/a&gt; ÙˆØªÙˆÙØ± Ù…Ø¹ Ù‡Ø°Ø§ Ø§Ù„Ø¥ØµØ¯Ø§Ø± Ø§Ù„Ø¹Ø¯ÙŠØ¯ Ù…Ù† Ø§Ù„Ù…ÙƒØªØ¨Ø§Øª ÙˆØ§Ù„Ø¯ÙˆØ§Ù„ØŒ ÙˆØ§Ø¯Øª Ù‚Ø§Ø¨Ù„ÙŠØ© Ø§Ù„ØªÙˆØ³Ø¹ Ø¥Ù„Ù‰ Ø¥Ù‚Ø¨Ø§Ù„ Ø§Ù„Ø¹Ø¯ÙŠØ¯ Ù…Ù† Ø§Ù„Ù…Ø·ÙˆØ±ÙŠÙ† Ø¹Ù„Ù‰ ØªØ·ÙˆÙŠØ± Ø§Ù„Ù…ÙƒØªØ¨Ø§Øª Ø§Ù„Ø¬Ø¯ÙŠØ¯Ø© ÙˆØ§Ø¶Ø§ÙØªÙ‡Ø§ Ù…Ø¹ Ø§Ù„Ù„ØºØ©ØŒ ÙˆÙŠÙ‚Ø§Ù„ Ø§Ù† Ù‡Ø°Ø§ Ù‡Ùˆ Ø§Ù„Ø³Ø¨Ø¨ Ø§Ù„Ø£Ø³Ø§Ø³ÙŠ Ù„Ù„Ù†Ø¬Ø§Ø­ Ø§Ù„Ø°ÙŠ Ø­Ù‚Ù‚Ù‡ Ù‡Ø°Ø§ Ø§Ù„Ø¥ØµØ¯Ø§Ø±ØŒ ÙˆÙ…Ù† Ø§Ù„Ù…ÙŠØ²Ø§Øª Ø§Ù„Ø£Ø®Ø±Ù‰ Ø§Ù„ØªÙŠ ØªÙ…Øª Ø§Ø¶Ø§ÙØªÙ‡Ø§ ÙÙŠ Ù‡Ø°Ø§ Ø§Ù„Ø¥ØµØ¯Ø§Ø± Ù‡ÙŠ &lt;a class=&quot;new&quot; title=&quot;Ø§Ù„Ø¨Ø±Ù…Ø¬Ø© ÙƒØ§Ø¦Ù†ÙŠØ© Ø§Ù„ØªÙˆØ¬Ø© (Ø§Ù„ØµÙØ­Ø© ØºÙŠØ± Ù…ÙˆØ¬ÙˆØ¯Ø©)&quot; href=&quot;https://ar.wikipedia.org/w/index.php?title=%D8%A7%D9%84%D8%A8%D8%B1%D9%85%D8%AC%D8%A9_%D9%83%D8%A7%D8%A6%D9%86%D9%8A%D8%A9_%D8%A7%D9%84%D8%AA%D9%88%D8%AC%D8%A9&amp;amp;action=edit&amp;amp;redlink=1&quot;&gt;Ø§Ù„Ø¨Ø±Ù…Ø¬Ø© ÙƒØ§Ø¦Ù†ÙŠØ© Ø§Ù„ØªÙˆØ¬Ø©&lt;/a&gt;.&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;ÙˆÙÙŠ Ù‡Ø°Ø§ Ø§Ù„Ø¥ØµØ¯Ø§Ø± ØªÙ… ØªØºÙŠÙŠØ± Ø§Ø³Ù… Ø§Ù„Ù„ØºØ© ÙˆÙˆØ¶Ø¹Ù‡Ø§ ØªØ­Øª Ø§Ø³Ù… Ø¬Ø¯ÙŠØ¯ ÙˆÙ‡Ùˆ PHP (Ø¨Ø¯ÙˆÙ† FI) ÙˆØ§Ù„Ø°ÙŠ ÙƒØ§Ù† ÙŠØ­Ù…Ù„ Ø§Ø®ØªØµØ§Ø±Ø§ Ù„Ù…Ø¹Ù†Ù‰ Ø¬Ø¯ÙŠØ¯ Ù…Ø®ØªÙ„Ù Ø¹Ù† Ø§Ù„Ø¥ØµØ¯Ø§Ø± Ø§Ù„Ø³Ø§Ø¨Ù‚ ÙˆØ§Ù„Ù…Ø¹Ù†Ù‰ Ù‡Ùˆ &quot;PHP: Hypertext Preprocessor&quot;.&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;ØªÙ… Ø¥Ø·Ù„Ø§Ù‚ PHP 3.0 ÙÙŠ ÙŠÙˆÙ†ÙŠÙˆ &lt;a title=&quot;1998&quot; href=&quot;https://ar.wikipedia.org/wiki/1998&quot;&gt;1998&lt;/a&gt; Ø¨Ø¹Ø¯ 9 Ø£Ø´Ù‡Ø± Ù…Ù† Ø§Ù„Ø§Ø®ØªØ¨Ø§Ø±Ø§Øª.&lt;/p&gt;\r\n&lt;h3 style=&quot;direction: rtl;&quot;&gt;&lt;span id=&quot;PHP_4&quot; class=&quot;mw-headline&quot;&gt;PHP 4&lt;/span&gt;&lt;span class=&quot;mw-editsection&quot;&gt;&lt;span class=&quot;mw-editsection-bracket&quot;&gt;[&lt;/span&gt;&lt;a title=&quot;Ø¹Ø¯Ù„ Ø§Ù„Ù‚Ø³Ù…: PHP 4&quot; href=&quot;https://ar.wikipedia.org/w/index.php?title=%D8%A8%D9%8A_%D8%A5%D8%AA%D8%B4_%D8%A8%D9%8A&amp;amp;action=edit&amp;amp;section=4&quot;&gt;Ø¹Ø¯Ù„&lt;/a&gt;&lt;span class=&quot;mw-editsection-bracket&quot;&gt;]&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;ÙÙŠ Ø¹Ø§Ù… &lt;a title=&quot;1998&quot; href=&quot;https://ar.wikipedia.org/wiki/1998&quot;&gt;1998&lt;/a&gt;ØŒ ÙˆØ¨Ø¹Ø¯ Ø§Ù„Ø§Ù†Ø·Ù„Ø§Ù‚ Ø§Ù„Ø±Ø³Ù…ÙŠ Ù„Ù€ PHP 3.0 Ø¨Ù‚Ù„ÙŠÙ„ Ø¨Ø¯Ø£ &lt;a title=&quot;Ø²ÙŠÙ Ø³ÙˆØ±Ø§Ø³ÙƒÙŠ&quot; href=&quot;https://ar.wikipedia.org/wiki/%D8%B2%D9%8A%D9%81_%D8%B3%D9%88%D8%B1%D8%A7%D8%B3%D9%83%D9%8A&quot;&gt;Ø²ÙŠÙ Ø³ÙˆØ±Ø§Ø³ÙƒÙŠ&lt;/a&gt; &lt;a title=&quot;Ø£Ù†Ø¯ÙŠ Ø¬ØªÙ…Ø§Ù†Ø²&quot; href=&quot;https://ar.wikipedia.org/wiki/%D8%A3%D9%86%D8%AF%D9%8A_%D8%AC%D8%AA%D9%85%D8%A7%D9%86%D8%B2&quot;&gt;ÙˆØ£Ù†Ø¯ÙŠ Ø¬ØªÙ…Ø§Ù†Ø²&lt;/a&gt; Ø¨Ø¥Ø¹Ø§Ø¯Ø© ÙƒØªØ§Ø¨Ø© Ø£Ø³Ø§Ø³ Ù„ØºØ© PHP ÙˆÙƒØ§Ù† Ø§Ù„Ù‡Ø¯Ù Ù…Ù† Ø°Ù„Ùƒ Ù‡Ùˆ ØªØ­Ø³ÙŠÙ† Ø§Ù„Ø£Ø¯Ø§Ø¡ Ù„Ù„Ø¨Ø±Ø§Ù…Ø¬ Ø§Ù„Ù…Ø¹Ù‚Ø¯Ø© ÙˆØ§Ù„Ø¶Ø®Ù…Ø© ÙˆØªØ­Ø³ÙŠÙ† Ù‚Ø§Ø¨Ù„ÙŠØ© Ø§Ù„Ù„ØºØ© Ù„Ù„ØªÙˆØ³Ø¹.&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;Ø§Ù„Ù…Ø­Ø±Ùƒ Ø§Ù„Ø¬Ø¯ÙŠØ¯ Ø§Ù„Ø°ÙŠ Ø¸Ù‡Ø± Ø¨Ø¹Ø¯ Ø¥Ø¹Ø§Ø¯Ø© Ø§Ù„ÙƒØªØ§Ø¨ ØªÙ… ØªØ³Ù…ÙŠØªÙ‡ Ø¨Ù€ &lt;a title=&quot;Ù…Ø­Ø±Ùƒ Ø²ÙŠÙ†Ø¯&quot; href=&quot;https://ar.wikipedia.org/wiki/%D9%85%D8%AD%D8%B1%D9%83_%D8%B2%D9%8A%D9%86%D8%AF&quot;&gt;Ù…Ø­Ø±Ùƒ Ø²ÙŠÙ†Ø¯&lt;/a&gt; (&lt;a title=&quot;Ù„ØºØ© Ø¥Ù†Ø¬Ù„ÙŠØ²ÙŠØ©&quot; href=&quot;https://ar.wikipedia.org/wiki/%D9%84%D8%BA%D8%A9_%D8%A5%D9%86%D8%AC%D9%84%D9%8A%D8%B2%D9%8A%D8%A9&quot;&gt;Ø¨Ø§Ù„Ø¥Ù†Ø¬Ù„ÙŠØ²ÙŠØ©&lt;/a&gt;: ZEND) ÙˆØ§Ø³Ù… &quot;Ø²ÙŠÙ†Ø¯&quot; Ù…Ø£Ø®ÙˆØ¯ Ù…Ù† Ø£ÙˆØ§Ø¦Ù„ Ø­Ø±ÙˆÙ Ø£Ø³Ù…Ø§Ø¡ Ù…Ø·ÙˆØ±ÙŠÙ‡ØŒ ÙˆÙ†Ø¬Ø­ÙˆØ§ ÙÙŠ ØªØ­Ù‚ÙŠÙ‚ Ø§Ù‡Ø¯Ø§ÙÙ‡Ù… Ø¹Ù† Ø·Ø±ÙŠÙ‚ Ù‡Ø°Ø§ Ø§Ù„Ù…Ø­Ø±ÙƒØŒ ÙˆØªÙ… Ø§Ù„Ø¥Ø¹Ù„Ø§Ù† Ø¹Ù†Ù‡ ÙÙŠ Ø¹Ø§Ù… &lt;a title=&quot;1999&quot; href=&quot;https://ar.wikipedia.org/wiki/1999&quot;&gt;1999&lt;/a&gt;.&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;ØªØ¹ØªÙ…Ø¯ PHP 4.0 Ø¹Ù„Ù‰ Ù‡Ø°Ø§ Ø§Ù„Ù…Ø­Ø±Ùƒ ÙˆØªÙ… Ø§Ù„Ø¥Ø¹Ù„Ø§Ù† Ø¹Ù† Ù‡Ø°Ø§ Ø§Ù„Ø¥ØµØ¯Ø§Ø± Ù…Ù† PHP ÙÙŠ Ù…Ø§ÙŠÙˆ &lt;a title=&quot;2000&quot; href=&quot;https://ar.wikipedia.org/wiki/2000&quot;&gt;2000&lt;/a&gt;ØŒ Ø¨Ø§Ù„Ø¥Ø¶Ø§ÙÙ‡ Ø¥Ù„Ù‰ ØªØ­Ø³ÙŠÙ† Ø§Ù„Ø£Ø¯Ø§Ø¡ ÙÙŠ Ù‡Ø°Ø§ Ø§Ù„Ø¥ØµØ¯Ø§Ø± Ø§Ø­ØªÙˆÙ‰ ÙƒØ°Ù„Ùƒ Ø¹Ù„Ù‰ Ù…Ø¬Ù…ÙˆØ¹Ù‡ Ø¬Ø¯ÙŠØ¯Ù‡ Ù…Ù† Ø§Ù„Ù…ÙŠØ²Ø§Øª Ù…Ø«Ù„ Ø¯Ø¹Ù…Ù‡ Ù„Ø¹Ø¯Ø¯ Ø£ÙƒØ¨Ø± Ù…Ù† &lt;a class=&quot;mw-redirect&quot; title=&quot;Ø®Ø§Ø¯Ù… ÙˆØ¨&quot; href=&quot;https://ar.wikipedia.org/wiki/%D8%AE%D8%A7%D8%AF%D9%85_%D9%88%D8%A8&quot;&gt;Ø®ÙˆØ§Ø¯Ù… Ø§Ù„ÙˆØ¨&lt;/a&gt;ØŒ Ø§Ù„Ø¬Ù„Ø³Ø§ØªØŒ Ø·Ø±Ù‚ Ø¢Ù…Ù†Ù‡ Ø¬Ø¯ÙŠØ¯Ù‡ Ù„Ù…Ø¹Ø§Ù„Ø¬Ø© Ø¯Ø®Ù„ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… ÙˆØºÙŠØ±Ù‡Ø§.&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;ÙˆÙ‚Ø¯ ØªÙ… Ø¥Ø¹Ù„Ø§Ù† Ø¥ÙŠÙ‚Ø§Ù ØªØ·ÙˆÙŠØ± ÙˆØ¯Ø¹Ù… PHP 4 ÙÙŠ &lt;a title=&quot;13 ÙŠÙˆÙ„ÙŠÙˆ&quot; href=&quot;https://ar.wikipedia.org/wiki/13_%D9%8A%D9%88%D9%84%D9%8A%D9%88&quot;&gt;13 ÙŠÙˆÙ„ÙŠÙˆ&lt;/a&gt;ØŒ &lt;a title=&quot;2007&quot; href=&quot;https://ar.wikipedia.org/wiki/2007&quot;&gt;2007&lt;/a&gt;&lt;sup id=&quot;cite_ref-3&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://ar.wikipedia.org/wiki/%D8%A8%D9%8A_%D8%A5%D8%AA%D8%B4_%D8%A8%D9%8A#cite_note-3&quot;&gt;[3]&lt;/a&gt;&lt;/sup&gt;.&lt;/p&gt;";s:12:"pagemetadisc";s:23:"Ù…ÙŠØªØ§ Ø¯Ø³ÙƒØ±Ø¨Ø´Ù†";s:11:"pagemetakey";s:20:"Ù…ÙŠØªØ§ ÙƒÙŠ ÙˆØ±Ø¯";s:8:"pagetags";s:12:"ØªØ§Ø§Ø§Ø¬Ø²";}'),
(371, 'de', 54, 'pages', 'mina is here ger efwefwef', '&lt;p&gt;mina is here ger&lt;/p&gt;'),
(372, 'ar', 54, 'pages', 'mina is  ewfwef', '&lt;p&gt;mina iswefwefwefwefwefwefwef&lt;/p&gt;'),
(380, 'ar', 82, 'pages', 'Ø¹Ù† Ø´Ø±ÙƒØ© ØªØ±Ø§ÙƒØ³ÙŠØ¯', 'a:5:{s:9:"pagebrief";s:612:"ØªØªÙ…ÙŠØ² Ø´Ø±ÙƒØ© ØªØ±Ø§ÙƒØ³ÙŠØ¯ Ø¨Ø­Ø±ØµÙ‡Ø§ Ø¹Ù„Ù‰ ØªÙ‚Ø¯ÙŠÙ… Ù…Ù†ØªØ¬Ø§Øª ÙˆØ®Ø¯Ù…Ø§Øª Ø¬Ø¯ÙŠØ¯Ø© Ø¨Ø£ÙØ¶Ù„ Ø§Ù„ÙˆØ³Ø§Ø¦Ù„ ÙˆØ§Ù„ØªÙ‚Ù†ÙŠØ§ØªØŒ Ø­ÙŠØ« Ø£Ù† Ø§Ø¯Ø§Ø±Ø© Ø§Ù„Ø´Ø±ÙƒØ© ØªØ¹Ù…Ù„ ÙÙŠ Ù…Ø¬Ø§Ù„ ØªÙƒÙ†ÙˆÙ„ÙˆØ¬ÙŠØ§ Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ù…Ù†Ø° Ø¹Ø§Ù… 2006 ÙˆÙ„Ù‡Ø§ Ø¨Ø§Ø¹ Ø·ÙˆÙŠÙ„ ÙÙŠ Ø§Ø¯Ø§Ø±Ø© Ø§Ù„Ø´Ø±ÙƒØ§Øª ÙˆØªØ£Ø³ÙŠØ³Ù‡Ø§ØŒ ÙˆÙ„ÙƒÙ† Ø§Ù„Ø­Ù‚ ÙŠÙ‚Ø§Ù„ Ø§Ù† Ù…Ø³ØªÙ‚Ø¨Ù„ Ø§ÙŠ ÙØ±Ø¯ ÙŠØªÙˆÙ‚Ù Ø¹Ù„Ù‰ Ø§Ù„Ø¹Ù…Ù„ Ø§Ù„Ø­Ø± Ø§Ù„Ø®Ø§Øµ Ø¨Ù‡ØŒ ÙˆØ§Ù† Ù…Ù† Ø§Ù‡Ù… Ø§Ø³Ø¨Ø§Ø¨ Ø§Ù„Ù†Ø¬Ø§Ø­ Ù‡Ùˆ Ø§Ù„ØªØ£ÙƒØ¯ Ù…Ù† ÙˆØ¬ÙˆØ¯ Ø§Ù„Ø¹Ù„Ù… ÙˆØ§Ù„Ø®Ø¨Ø±Ø© Ø§Ù„ÙƒØ§ÙÙŠØ© Ù„Ø¥Ø¯Ø§Ø±Ø© Ù…Ø«Ù„ Ù‡Ø°Ù‡ Ø§Ù„Ø´Ø±ÙƒØ§Øª.";s:11:"pagecontent";s:3991:"&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;Ø´Ø±ÙƒØ© ØªØ±Ø§ÙƒØ³ÙŠØ¯ Ù‡ÙŠ Ø´Ø±ÙƒØ© Ù…ØµØ±ÙŠØ© Ù…Ø³Ø¬Ù„Ø© Ø¨ÙˆØ²Ø§Ø±Ø© Ø§Ù„Ø§Ø³ØªØ«Ù…Ø§Ø± Ù„Ù…Ù…Ø§Ø±Ø³Ø© Ù†Ø´Ø§Ø· Ø§Ù„ØªØ¬Ø§Ø±Ø© ÙˆØªÙƒÙ†ÙˆÙ„ÙˆØ¬ÙŠØ§Øª Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª ÙˆØ§Ù„Ø§Ø³ØªÙŠØ±Ø§Ø¯ ÙˆØ§Ù„ØªØµØ¯ÙŠØ±.&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;ØªØªÙ…ÙŠØ² Ø´Ø±ÙƒØ© ØªØ±Ø§ÙƒØ³ÙŠØ¯ Ø¨Ø­Ø±ØµÙ‡Ø§ Ø¹Ù„Ù‰ ØªÙ‚Ø¯ÙŠÙ… Ù…Ù†ØªØ¬Ø§Øª ÙˆØ®Ø¯Ù…Ø§Øª Ø¬Ø¯ÙŠØ¯Ø© Ø¨Ø£ÙØ¶Ù„ Ø§Ù„ÙˆØ³Ø§Ø¦Ù„ ÙˆØ§Ù„ØªÙ‚Ù†ÙŠØ§ØªØŒ Ø­ÙŠØ« Ø£Ù† Ø§Ø¯Ø§Ø±Ø© Ø§Ù„Ø´Ø±ÙƒØ© ØªØ¹Ù…Ù„ ÙÙŠ Ù…Ø¬Ø§Ù„ ØªÙƒÙ†ÙˆÙ„ÙˆØ¬ÙŠØ§ Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ù…Ù†Ø° Ø¹Ø§Ù… 2006 ÙˆÙ„Ù‡Ø§ Ø¨Ø§Ø¹ Ø·ÙˆÙŠÙ„ ÙÙŠ Ø§Ø¯Ø§Ø±Ø© Ø§Ù„Ø´Ø±ÙƒØ§Øª ÙˆØªØ£Ø³ÙŠØ³Ù‡Ø§ØŒ ÙˆÙ„ÙƒÙ† Ø§Ù„Ø­Ù‚ ÙŠÙ‚Ø§Ù„ Ø§Ù† Ù…Ø³ØªÙ‚Ø¨Ù„ Ø§ÙŠ ÙØ±Ø¯ ÙŠØªÙˆÙ‚Ù Ø¹Ù„Ù‰ Ø§Ù„Ø¹Ù…Ù„ Ø§Ù„Ø­Ø± Ø§Ù„Ø®Ø§Øµ Ø¨Ù‡ØŒ ÙˆØ§Ù† Ù…Ù† Ø§Ù‡Ù… Ø§Ø³Ø¨Ø§Ø¨ Ø§Ù„Ù†Ø¬Ø§Ø­ Ù‡Ùˆ Ø§Ù„ØªØ£ÙƒØ¯ Ù…Ù† ÙˆØ¬ÙˆØ¯ Ø§Ù„Ø¹Ù„Ù… ÙˆØ§Ù„Ø®Ø¨Ø±Ø© Ø§Ù„ÙƒØ§ÙÙŠØ© Ù„Ø¥Ø¯Ø§Ø±Ø© Ù…Ø«Ù„ Ù‡Ø°Ù‡ Ø§Ù„Ø´Ø±ÙƒØ§Øª.&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;Ø¨Ø¯Ø§Øª Ø´Ø±ÙƒØ© ØªØ±Ø§ÙƒØ³ÙŠØ¯ ÙÙŠ Ø¯Ø®ÙˆÙ„ Ù…Ø¬Ø§Ù„ Ø§Ù„ØªØ¬Ø§Ø±Ø© ÙˆØ§Ù„Ø§Ø³ØªÙŠØ±Ø§Ø¯ ÙˆØ§Ù„ØªØµØ¯ÙŠØ± ÙÙŠ Ø£ÙˆØ§Ø¦Ù„ Ø¹Ø§Ù… 2015 ÙˆÙ‡Ø°Ø§ Ø§Ù„ØªÙˆØ¬Ù‡ Ø­Ù‚ÙŠÙ‚Ø© Ù„Ù… ÙŠÙƒÙ† ÙˆÙ„ÙŠØ¯ Ø§Ù„Ù„Ø­Ø¸Ø© Ø¨ÙƒÙ„ Ù†ØªØ¬ Ø¹Ù† ØªØ®Ø·ÙŠØ· Ø¹Ù„Ù‰ Ù…Ø¯Ø§Ø± Ø§ÙƒØ«Ø± Ù…Ù† Ø«Ù„Ø§Ø« Ø³Ù†ÙˆØ§Øª Ù„Ø¯Ø®ÙˆÙ„ Ù‡Ø°Ø§ Ø§Ù„Ù…Ø¬Ø§Ù„.&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;Ù„Ù…Ø§Ø°Ø§ ØªØ±Ø§ÙƒØ³ÙŠØ¯:&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;ØªØ±Ø§ÙƒØ³ÙŠØ¯ Ù„Ø¯ÙŠÙ‡Ø§ Ø§Ù„Ù…Ø¤Ù‡Ù„Ø§Øª Ø§Ù„ÙƒØ§Ù…Ù„Ø© Ø§Ù„ØªÙŠ ØªØ¤Ù‡Ù„Ù‡Ø§ Ù„Ù„Ø¥Ù†ØªØ´Ø§Ø± Ø¨Ø´ÙƒÙ„ ÙƒØ¨ÙŠØ± Ø®Ù„Ø§Ù„ Ø§Ù„Ø«Ù„Ø§Ø« Ø³Ù†ÙˆØ§Øª Ø§Ù„Ù‚Ø§Ø¯Ù…Ø©ØŒ Ø³ÙˆØ§Ø¡ ÙÙŠ Ù…Ø¬Ø§Ù„ ØªÙƒÙ†ÙˆÙ„ÙˆØ¬ÙŠØ§Øª Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª ÙˆØ§Ù„Ø¨Ø±Ù…Ø¬ÙŠØ§Øª Ø§Ùˆ ÙÙŠ Ù…Ø¬Ø§Ù„ Ø§Ù„ØªØ¬Ø§Ø±Ø© ÙˆØ§Ù„Ø§Ø³ØªÙŠØ±Ø§Ø¯ ÙˆØ§Ù„ØªØµØ¯ÙŠØ±ØŒ Ù„ÙŠØ³Øª ÙÙ‚Ø· Ù‡Ø°Ù‡ Ø§Ù„Ù…Ø¬Ø§Ù„Ø§ØªØŒ ÙÙ‡Ù†Ø§Ùƒ Ù…Ø¬Ø§Ù„Ø§Øª Ø§Ø®Ø±Ù‰ Ø¬Ø§Ø±ÙŠ Ø§Ù„ØªØ®Ø·ÙŠØ· Ù„Ù‡Ø§ Ù„ÙƒÙŠ ÙŠØªÙ… Ø§Ù„Ø¨Ø¯Ø£ Ø¨Ù‡Ø§ Ø¨Ø¹Ø¯ Ø§Ù„Ø§Ù†ØªÙ‡Ø§Ø¡ Ù…Ù† Ø¶Ø¨Ø· Ø§ÙˆØ¶Ø§Ø¹ Ø¬Ù…ÙŠØ¹ Ø§Ù„Ø®Ø¯Ù…Ø§Øª Ø§Ù„Ø§Ø®Ø±Ù‰.&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;Ø§Ù„Ø¬Ø¯ÙŠØ± Ø¨Ø§Ù„Ø°ÙƒØ± Ø§Ù† Ø´Ø±ÙƒØ© ØªØ±Ø§ÙƒØ³ÙŠØ¯ Ø¨Ù…Ø³Ù…Ø§Ù‡Ø§ &quot; ØªØ±Ø§ÙƒØ³ÙŠØ¯ Ù„Ù„ØªØ¬Ø§Ø±Ø© ÙˆØªÙƒÙ†ÙˆÙ„ÙˆØ¬ÙŠØ§Øª Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª&quot; Ù‡Ùˆ Ø§Ù„Ø§Ø³Ù… Ø§Ù„Ø¬Ø¯ÙŠØ¯ Ù„Ù„Ø´Ø±ÙƒØ© ÙÙŠ Ø¹Ø§Ù… 2015.&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;Ø·Ø§Ù‚Ù… Ø¹Ù…Ù„ ØªØ±Ø§ÙƒØ³ÙŠØ¯:&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;ÙŠØªÙƒÙˆÙ† Ø·Ø§Ù‚Ù… Ø¹Ù…Ù„ Ø´Ø±ÙƒØ© ØªØ±Ø§ÙƒØ³ÙŠØ¯ Ù…Ù† Ø§ÙØ¶Ù„ Ø§Ù„Ù…Ù‡Ù†Ø¯Ø³ÙŠÙ† ÙˆØ§Ù„Ø®Ø¨Ø±Ø§Ø¡ ÙÙŠ Ù…Ø¬Ø§Ù„ ØªÙƒÙ†ÙˆÙ„ÙˆØ¬ÙŠØ§ Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª ÙˆØ§Ù„ØªØ¬Ø§Ø±Ø© ÙˆØ§Ù„Ø§Ø³ØªÙŠØ±Ø§Ø¯ ÙˆØ§Ù„Ù…Ø³ØªØ´Ø§Ø±ÙŠÙŠÙ† Ø§Ù„Ù‚Ø§Ù†ÙˆÙ†ÙŠÙ† ÙˆÙØ±Ù‚ Ù…Ù† Ø§Ù„Ø¯Ø¹Ù… Ø§Ù„ÙÙ†ÙŠ ÙˆØ§Ù„ØªÙ‚Ù†ÙŠ ÙˆÙØ±ÙŠÙ‚ ÙƒØ§Ù…Ù„ Ù…Ù† Ø®Ø¯Ù…Ø§Øª Ø§Ù„Ø¹Ù…Ù„Ø§Ø¡ Ù„ÙƒÙŠ ØªÙ‚Ø¯Ù… Ù„Ø¹Ù…Ù„Ø§Ø¦Ù‡Ø§ Ø®Ø¯Ù…Ø§Øª Ø¹Ù„Ù‰ Ø§Ø¹Ù„Ù‰ Ù…Ø³ØªÙˆÙ‰ Ù…Ù† Ø§Ù„Ø­Ø±ÙÙŠØ© ÙˆØ§Ù„ØªÙ‚Ø¯Ù….&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø¤Ø³Ø³ ÙˆØ±Ø¦ÙŠØ³ Ù…Ø¬Ù„Ø³ Ø§Ù„Ø§Ø¯Ø§Ø±Ø©:&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;&quot; ØªØ±Ø§ÙƒØ³ÙŠØ¯ Ù‡ÙŠ Ø­Ù„Ù… ÙŠØ±Ø§ÙˆØ¯Ù†ÙŠ Ù…Ù†Ø° Ø§ÙƒØ«Ø± Ù…Ù† 10 Ø³Ù†ÙˆØ§Øª Ø¹Ù…Ù„Øª Ø¨Ù‡Ø§ ÙÙŠ Ù…Ø¬Ø§Ù„ ØªÙ‚Ù†ÙŠØ© Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§ØªØŒ Ù„ÙŠØ³ Ù„Ø¯ÙŠ Ù…Ø§ Ø§Ø®Ø§Ù Ù…Ù†Ù‡ Ù…Ù† Ø§Ù„Ù…Ø³ØªÙ‚Ø¨Ù„ Ù„Ø£Ù†Ù†ÙŠ Ù…Ù‚ØªÙ†Ø¹ Ø¨Ø£Ù† Ø¥Ø±Ø§Ø¯Ø© Ø§Ù„Ù„Ù‡ Ù‡ÙŠ Ø§Ù„ØªÙŠ ØªØ³ÙŠØ±Ù†Ø§ ÙˆÙ„ÙƒÙ† Ø§Ø®ØªÙŠØ§Ø±ØªÙ†Ø§ Ù‡ÙŠ Ø§Ù„ØªÙŠ ØªØ¸Ù‡Ø± Ù„Ù†Ø§ Ù†ØªÙŠØ¬Ù‡ Ø¬Ù…ÙŠØ¹ Ø§Ù„Ø·Ø±Ù‚ Ø§Ù„ØªÙŠ Ù†Ø³ÙŠØ± Ø¨Ù‡Ø§ØŒ Ø´Ø±ÙƒØ© ØªØ±Ø§ÙƒØ³ÙŠØ¯ ØªÙØªØ­ Ø²Ø±Ø§Ø¹ÙŠÙ‡Ø§ Ù„Ø¬Ù…ÙŠØ¹ Ø§Ù„Ù…Ø³ØªØ«Ù…Ø±ÙŠÙ† ÙˆØ§Ù„Ù…ØµØ§Ù†Ø¹ Ø§Ù„Ø¹Ø§Ù„Ù…ÙŠØ© Ù„Ø¯Ø®ÙˆÙ„ Ø§Ù„Ø³ÙˆÙ‚ Ø§Ù„Ù…ØµØ±ÙŠØ© Ø¹Ù† Ø·Ø±ÙŠÙ‚Ù‡Ø§ Ø¨ØªÙˆÙÙŠØ± Ø§ÙØ¶Ù„ ÙˆØ³Ø§Ø¦Ù„ Ø§Ù„Ø¯Ø¹Ù… Ù„Ù‡Ø§ ÙˆÙ„Ù…Ù†ØªØ¬Ø§ØªÙ‡Ø§ .. ØªØ±Ø§ÙƒØ³ÙŠØ¯ &quot; Ù†Ø­Ùˆ ØºØ¯Ø§Ù‹ Ø§ÙØ¶Ù„&quot;&quot;.&lt;/p&gt;\r\n&lt;p style=&quot;direction: rtl;&quot;&gt;&amp;nbsp;&lt;/p&gt;";s:12:"pagemetadisc";s:63:"Ø´Ø±ÙƒØ© ØªØ±Ø§ÙƒØ³ÙŠØ¯ Ù„ØªÙƒÙ†ÙˆÙ„ÙˆØ¬ÙŠØ§ Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª";s:11:"pagemetakey";s:49:"ØªØ±Ø§ÙƒØ³ÙŠØ¯ØŒØ´Ø±ÙƒØ©ØŒØ¨Ø±Ù…Ø¬Ø©ØŒ ØªØµÙ…ÙŠÙ…";s:8:"pagetags";s:49:"ØªØ±Ø§ÙƒØ³ÙŠØ¯ØŒØ´Ø±ÙƒØ©ØŒØ¨Ø±Ù…Ø¬Ø©ØŒ ØªØµÙ…ÙŠÙ…";}');
INSERT INTO `multi_lang` (`id`, `lang`, `parent_id`, `type`, `name`, `content`) VALUES
(381, 'ar', 83, 'pages', 'Ø¨Ø±Ù†Ø§Ù…Ø¬ ØªØ±Ø§ÙƒØ³ÙŠØ¯', 'a:5:{s:9:"pagebrief";s:117:"Ø¨Ø±Ù†Ø§Ù…Ø¬ ØªØ±Ø§ÙƒØ³ÙŠØ¯ : Ù‡Ùˆ Ø§Ù„Ø¨Ø±Ù†Ø§Ù…Ø¬ Ø±Ù‚Ù… 1 Ù„Ø¥Ø¯Ø§Ø±Ø© Ø´Ø±ÙƒØªÙƒ Ø¨Ø£ÙØ¶Ù„ ÙˆØ§Ø³Ù‡Ù„ Ø§Ù„Ø·Ø±Ù‚";s:11:"pagecontent";s:15894:"&lt;p&gt;Ø¨Ø±Ù†Ø§Ù…Ø¬ Ø§Ø¯Ø§Ø±Ø© Ø§Ù„Ø´Ø±ÙƒØ§Øª&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Ø¨Ø±Ù†Ø§Ù…Ø¬ ØªØ±Ø§ÙƒØ³ÙŠØ¯ : Ù‡Ùˆ Ø§Ù„Ø¨Ø±Ù†Ø§Ù…Ø¬ Ø±Ù‚Ù… 1 Ù„Ø¥Ø¯Ø§Ø±Ø© Ø´Ø±ÙƒØªÙƒ Ø¨Ø£ÙØ¶Ù„ ÙˆØ§Ø³Ù‡Ù„ Ø§Ù„Ø·Ø±Ù‚&lt;/p&gt;\r\n&lt;p&gt;Ù…Ø¹ Ø§ÙƒØ«Ø± Ù…Ù† 20 Ø§Ø¶Ø§ÙØ© ÙÙŠ Ù…Ø®ØªÙ„Ù Ø§Ù„ØªØ®ØµØµØ§ØªØŒ ØªØ£ÙƒØ¯ Ø§Ù†Ùƒ Ø³ÙˆÙ ØªÙØ¯ÙŠØ± Ø´Ø±ÙƒØªÙƒ Ø¨Ù†Ø¬Ø§Ø­&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;ØµÙˆØ±Ø© Ø§Ù„Ø¹Ø±Ø¶&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;*&amp;nbsp; Ù…Ø§ Ù‡Ùˆ Ø¨Ø±Ù†Ø§Ù…Ø¬ ØªØ±Ø§ÙƒØ³ÙŠØ¯ Ù„Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø´Ø±ÙƒØ§ØªÙ‡&lt;/p&gt;\r\n&lt;p&gt;Ù‡Ùˆ Ø¨Ø±Ù†Ø§Ù…Ø¬ ÙŠØªÙ… ØªØ±ÙƒÙŠØ¨Ù‡ Ø¹Ù„Ù‰ Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ø§Ù„Ø®Ø§Øµ Ø¨ÙƒØŒ ØªØªÙ…ÙƒÙ† Ù…Ù† Ø®Ù„Ø§Ù„Ù‡ Ø¨Ø¥Ø¯Ø§Ø±Ø© Ø¬Ù…ÙŠØ¹ Ù…Ø­Ø§ÙˆØ± ÙˆØ§Ù‚Ø³Ø§Ù… ÙˆÙ…ÙˆØ¸ÙÙŠ Ø´Ø±ÙƒØªÙƒØŒ Ø­ÙŠØ« ÙŠÙ…ÙƒÙ†Ùƒ Ù…Ù† Ø§Ø¶Ø§ÙØ© Ø§Ù„Ù…Ù†ØªØ¬Ø§Øª Ø§Ù„Ø®Ø§ØµØ© Ø¨Ùƒ ÙˆØ§ØªØ§Ø­Ø© Ø§Ù„ÙØ±ØµÙ‡ Ù„Ù„Ø¹Ù…Ù„Ø§Ø¡ Ù„Ø´Ø±Ø§Ø¡ Ø§Ù„Ù…Ù†ØªØ¬Ø§ØªØŒ ÙˆØ§ÙŠØ¶Ø§Ù‹ Ø¹Ù…Ù„ Ù…Ù„ÙØ§Øª Ø´Ø®ØµÙŠØ© Ù„ÙƒÙ„ Ø¹Ù…ÙŠÙ„ / Ù…ÙˆØ¸Ù / Ø´Ø±ÙƒØ© ØªØªØ¹Ø§Ù…Ù„ Ù…Ø¹Ø§Ù‡Ø§ØŒ ÙˆÙŠÙ…ÙƒÙ† Ù…Ù† ÙˆØ¶Ø¹ Ù†Ø¸Ø§Ù… Ø§Ù„Ù…ÙˆØ§Ø±Ø¯ Ø§Ù„Ø¨Ø´Ø±ÙŠØ© Ø§Ù„Ø®Ø§ØµØ© Ø¨Ø´Ø±ÙƒØªÙƒ Ù…Ø¹ ÙˆØ¬ÙˆØ¯ Ø­Ø³Ø§Ø¨ Ù„ÙƒÙ„ Ù…ÙˆØ¸Ù Ù„ØªØ³Ø¬ÙŠÙ„ Ø§Ø¬Ø§Ø²Ø§ØªÙ‡ ÙˆØ­Ø¶ÙˆØ±Ù‡ ÙˆÙ…Ø§ Ø¥Ù„Ù‰ Ø°Ù„ÙƒØŒ ÙˆØ§ÙŠØ¶Ø§Ù‹ Ø§Ù„ØªØ­ÙƒÙ… Ø¨Ø¬Ù…ÙŠØ¹ ØµÙØ­Ø§Øª Ù…ÙˆÙ‚Ø¹Ùƒ ÙˆØ§Ù„Ù‚ÙŠØ§Ù… Ø¨Ø¥Ù†Ø´Ø§Ø¡ ØµÙØ­Ø§Øª Ø¬Ø¯ÙŠØ¯Ø© Ø¨Ø£Ø³Ù‡Ù„ Ø§Ù„Ø·Ø±Ù‚ ÙˆØ§Ù„Ù…Ù…ÙŠØ²Ø§Øª ÙˆÙ„Ù† ØªØ­ØªØ§Ø¬ Ø¨Ø¹Ø¯ Ø§Ù„ÙŠÙˆÙ… Ø¥Ù„Ù‰ ÙÙ†ÙŠ Ù„Ø¥Ø¯Ø§Ø±Ø© Ù…ÙˆÙ‚Ø¹Ùƒ.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;*&amp;nbsp; Ø§Ù„Ø¨Ø±Ù†Ø§Ù…Ø¬ Ø§Ù„Ø§ÙØ¶Ù„ Ù„Ø¥Ø¯Ø§Ø±Ø© Ø´Ø±ÙƒØªÙƒ&lt;/p&gt;\r\n&lt;p&gt;Ø¨Ø±Ù†Ø§Ù…Ø¬ ØªØ±Ø§ÙƒØ³ÙŠØ¯ Ù‡Ùˆ Ø§Ø³Ù‡Ù„ ÙˆØ§ÙØ¶Ù„ Ø¨Ø±Ù†Ø§Ù…Ø¬ Ù„Ø¥Ø¯Ø§Ø±Ø© Ø´Ø±ÙƒØªÙƒ Ø³ÙˆØ§Ø¡ ÙƒÙ†Øª Ø¨Ø§Ù„Ù…ÙƒØªØ¨ Ø§Ùˆ Ø¹Ù† Ø¨Ø¹Ø¯ØŒ ÙˆÙŠÙˆÙØ± Ù„Ùƒ Ø§Ù„Ø¹Ø¯ÙŠØ¯ Ù…Ù† Ø§Ù„Ù…Ø²Ø§ÙŠØ§ Ø§Ù„Ø­ØµØ±ÙŠØ© Ø§Ù„ØªÙŠ Ø³ÙˆÙ ØªØªÙ…ØªØ¹ Ø¨Ù‡Ø§ Ø¨Ø¹Ø¯ Ø­ØµÙˆÙ„Ùƒ Ø¹Ù„Ù‰ Ù†Ø³Ø®Ù‡ Ù…Ù† Ø§Ù„Ø¨Ø±Ø§Ù…Ø¬ ÙˆØªØ±ÙƒÙŠØ¨Ù‡Ø§ Ø¥Ù„Ù‰ Ù…ÙˆÙ‚Ø¹Ùƒ.&lt;/p&gt;\r\n&lt;p&gt;ÙˆÙ…Ù† Ø§Ù‡Ù… Ù…Ø²Ø§ÙŠØ§ Ø§Ù„Ø¨Ø±Ù†Ø§Ù…Ø¬&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;Ø³Ù‡Ù„ ÙˆØ¨Ø³ÙŠØ· : Ø³Ù‡ÙˆÙ„Ø© Ø§Ù„ØªØ±ÙƒÙŠØ¨ ÙˆØ§Ù„ØªØ­Ø¯ÙŠØ«&lt;/li&gt;\r\n&lt;li&gt;Ù…ØªÙˆØ§ÙÙ‚ ÙˆÙ…ØªÙ…ÙŠØ² : Ù…ØªÙˆØ§ÙÙ‚ Ù…Ø¹ Ø¬Ù…ÙŠØ¹ Ø§Ù„Ù…ØªØµÙØ­Ø§Øª ÙˆØ§Ù„Ø§Ø¬Ù‡Ø²Ø© Ø§Ù„ÙƒÙÙŠØ© ÙˆØ§Ù„Ù„ÙˆØ­ÙŠØ© ÙˆØ¬Ù…ÙŠØ¹ Ø§Ù„Ø´Ø§Ø´Ø§Øª.&lt;/li&gt;\r\n&lt;li&gt;Ø·ÙˆØ± Ù…ÙˆÙ‚Ø¹ Ø´Ø±ÙƒØªÙƒ : Ø³Ù‡ÙˆÙ„Ø© ÙÙŠ ØªØ¹Ø¯ÙŠÙ„ Ø§Ù„Ø³ØªØ§ÙŠÙ„ Ø§Ù„Ø®Ø§Øµ Ø¨Ù…ÙˆÙ‚Ø¹ Ø´Ø±ÙƒØªÙƒ.&lt;/li&gt;\r\n&lt;li&gt;ØªØ§Ø¨Ø¹ Ù…ÙˆØ¸ÙÙŠÙƒ: Ø§Ø¶Ø§ÙØ© Ø¬Ù…ÙŠØ¹ Ù…ÙˆØ¸ÙÙŠÙƒ Ø¥Ù„Ù‰ Ø§Ù„Ù†Ø¸Ø§Ù… ÙˆÙ…ØªØ§Ø¨Ø¹Ø© Ø¬Ù…ÙŠØ¹ Ø§Ø¹Ù…Ø§Ù„Ù‡Ù….&lt;/li&gt;\r\n&lt;li&gt;Ø§Ø­ØµÙ„ Ø¹Ù„Ù‰ ØªÙ‚Ø§Ø±ÙŠØ± : Ø§Ù†Ø´Ø§Ø¡ ØªÙ‚Ø§Ø±ÙŠØ± Ø¯ÙˆØ±ÙŠØ© ÙˆØ­Ø³Ø¨ Ø·Ù„Ø¨Ùƒ Ù„Ø¬Ù…ÙŠØ¹ Ø§Ù‚Ø³Ø§Ù… Ø§Ù„Ø´Ø±ÙƒØ© ÙˆØ­Ø§Ù„Ø§Øª Ø§Ù„Ø¨ÙŠØ¹ ÙˆØ§Ù„Ø´Ø±Ø§Ø¡.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;* Ù…Ø²Ø§ÙŠØ§ Ø§Ù„Ø¨Ø±Ù†Ø§Ù…Ø¬ &quot; Ø§Ù„Ø¨Ù†ÙŠØ© Ø§Ù„ØªØ­ØªÙŠØ© ÙÙ‚Ø· Ø¨Ø¯ÙˆÙ† Ø§Ù„Ù…ÙˆØ¯ÙŠÙˆÙ„Ø§Øª ÙˆØ§Ù„Ø¨Ù„Ø¬Ù†Ø§Øª&quot; :&lt;/p&gt;\r\n&lt;p&gt;Ù„Ù„Ø¨Ø±Ù†Ø§Ù…Ø¬ Ø§Ù„Ø¹Ø¯ÙŠØ¯ ÙˆØ§Ù„Ø¹Ø¯ÙŠØ¯ Ù…Ù† Ø§Ù„Ù…Ø²Ø§ÙŠØ§ Ø§Ù„ØªÙŠ Ø³ÙˆÙ ØªØ¤Ù‡Ù„ Ù…ÙˆÙ‚Ø¹Ùƒ ÙˆØ´Ø±ÙƒØªÙƒ Ù„Ù„Ø¹Ø§Ù„Ù…ÙŠØ©ØŒ ÙˆÙ…Ù† Ø§Ù‡Ù… Ù‡Ø°Ù‡ Ø§Ù„Ù…Ø²Ø§ÙŠØ§:&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¹Ù…Ù„Ø§Ø¡&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;ÙŠØªÙŠØ­ Ù„Ùƒ Ø§Ù„Ø¨Ø±Ù†Ø§Ù…Ø¬ Ø§Ø¹Ø·Ø§Ø¡ Ø§Ù„Ø­Ø±ÙŠØ© ÙƒØ§Ù…Ù„Ø© Ù„Ø¹Ù…Ù„Ø§Ø¦Ùƒ Ù„Ù„ØªØ³Ø¬ÙŠÙ„ Ø¨Ù…ÙˆÙ‚Ø¹Ùƒ Ù„Ù…ØªØ§Ø¨Ø¹Ø© Ø§Ù‡Ù… Ø§Ù„Ø§Ø®Ø¨Ø§Ø± Ø§Ù„Ø®Ø§ØµØ© Ø¨ÙƒØŒ ÙˆØ§ÙŠØ¶Ø§Ù‹ Ø´Ø±Ø§Ø¡ Ø§Ù„Ù…Ù†ØªØ¬Ø§Øª ÙˆÙ…ØªØ§Ø¨Ø¹Ø© Ø­Ø§Ù„Ø§Øª Ø§Ù„ØªØ³Ù„ÙŠÙ… ÙˆØ¹Ù…Ù„ÙŠØ§Øª Ø§Ù„Ø¯ÙØ¹ ÙˆØ§Ø¯Ø§Ø±Ø© Ø§Ù„ÙÙˆØ§ØªÙŠØ± Ø§Ù„Ø®Ø§ØµØ© Ø¨Ù‡Ù…ØŒ ÙˆØ§ÙŠØ¶Ø§Ù‹ Ù„ÙƒÙŠ ÙŠØªÙ…ÙƒÙ†ÙˆØ§ Ù…Ù† Ø§Ù„ØªÙˆØ§ØµÙ„ Ù…Ø¹Ùƒ Ø¨Ù†Ø¸Ø§Ù… Ø§Ù„ØªØ°Ø§ÙƒØ± Ø§Ùˆ Ù†Ø¸Ø§Ù… Ø§Ù„Ù…Ø±Ø§Ø³Ù„Ø© Ø§Ù„Ø¹Ø§Ø¯ÙŠØ©.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;2&quot;&gt;\r\n&lt;li&gt;ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ù…ÙˆØ¸ÙÙŠÙ†&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;ØªØªÙ…ÙƒÙ† Ø§ÙŠØ¶Ø§Ù‹ Ù…Ù† ØªØ³Ø¬ÙŠÙ„ Ø¬Ù…ÙŠØ¹ Ø§Ù„Ù…ÙˆØ¸ÙÙŠÙ† Ø¨Ø´Ø±ÙƒØªÙƒ ÙˆØ§Ø¹Ø·Ø§Ø¡ ÙƒÙ„ Ù…ÙˆØ¸Ù Ø§Ù„ØµÙ„Ø§Ø­ÙŠØ§Øª Ø§Ù„ØªÙŠ ØªØ±ØºØ¨ Ø¨Ù‡Ø§ØŒ ÙÙ…Ø«Ù„Ø§Ù‹ Ø§Ø¹Ø·Ø§Ø¡ ØµÙ„Ø§Ø­ÙŠØ§Øª ØªØ¹Ø¯ÙŠÙ„ Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ù„Ù…ÙˆØ¸Ù Ù…Ø¹ÙŠÙ†ØŒ Ø§Ùˆ Ø§Ø¹Ø·Ø§Ø¡ ØµÙ„Ø§Ø­ÙŠØ© Ø§Ù„Ø±Ø¯ Ø¹Ù„Ù‰ ØªØ°Ø§ÙƒØ± Ø§Ù„Ø¹Ù…Ù„Ø§Ø¡ Ù„Ù…ÙˆØ¸Ù Ø§Ø®Ø±ØŒ ÙˆÙ‡ÙƒØ°Ø§ØŒ ÙˆØ§ÙŠØ¶Ø§Ù‹ ØªØªÙ…ÙƒÙ† Ù…Ù† Ø±Ø¨Ø· Ù†Ø¸Ø§Ù… ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ù…ÙˆØ¸ÙÙŠÙ† Ø¨Ù†Ø¸Ø§Ù… Ø§Ù„Ù…ÙˆØ§Ø±Ø¯ Ø§Ù„Ø¨Ø´Ø±ÙŠØ© Ø¨Ø´Ø±ÙƒØªÙƒØŒ Ù„ÙƒÙŠ ÙŠÙƒÙˆÙ† Ù„Ù…ÙˆØ¸Ù Ù…Ù„ÙÙ‡ Ø§Ù„Ø´Ø®ØµÙŠ Ø¹Ù„Ù‰ Ù…ÙˆÙ‚Ø¹ Ø§Ù„Ø´Ø±ÙƒØ© ÙŠØªÙ…ÙƒÙ† Ù…Ù† Ø®Ù„Ø§Ù„Ù‡ Ù…Ù† Ù…ØªØ§Ø¨Ø¹Ø© Ø§Ù„Ø§Ø¬Ø§Ø²Ø§Øª Ø§Ù„Ø®Ø§ØµØ© Ø¨Ù‡ ÙˆØ§Ù„Ø§Ø°ÙˆÙ†Ø§Øª ÙˆØ§ÙŠØ¶Ø§Ù‹ Ø±Ø§ØªØ¨Ù‡ Ø§Ù„Ø´Ù‡Ø±ÙŠ ÙˆØ§Ù„ÙƒØ«ÙŠØ± Ù…Ù† Ø§Ù„Ù…Ø²Ø§ÙŠØ§.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;3&quot;&gt;\r\n&lt;li&gt;Ù…Ø¬Ù…ÙˆØ¹Ø§Øª Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ†&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;ØªÙ…ÙƒÙ†Ùƒ Ù…Ø¬Ù…ÙˆØ¹Ø§Øª Ø§Ù„Ø£Ø¹Ø¶Ø§Ø¡ Ù…Ù† ØªØµÙ†ÙŠÙ Ù…Ø³ØªØ®Ø¯Ù…ÙŠ Ù…ÙˆÙ‚Ø¹Ùƒ ÙƒØ¹Ù…ÙŠÙ„ Ù…Ø«Ù„Ø§Ù‹ Ø§Ùˆ Ù…ÙˆØ¸Ù Ø§Ùˆ Ø´Ø±ÙƒØ© Ø§Ùˆ Ø¹Ù…ÙŠÙ„ Ù…Ù…ÙŠØ²ØŒ ÙˆÙ„ÙƒÙ„ Ù…Ø¬Ù…ÙˆØ¹Ø© Ø§Ù„ØµÙ„Ø§Ø­ÙŠØ§Øª Ø§Ù„Ø®Ø§ØµØ© Ø¨Ù‡Ø§ Ø¹Ù„Ù‰ Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ø§Ù„Ø®Ø§Øµ Ø¨ÙƒØŒ ÙˆØ§ÙŠØ¶Ø§Ù‹ ØªØªÙ…ÙƒÙ† Ù…Ù† Ø§Ø¶Ø§ÙØ© Ø§Ù„Ø¹Ù…Ù„Ø§Ø¡ Ø§Ù„Ù…Ø²Ø¹Ø¬ÙŠÙ† Ø¥Ù„Ù‰ Ù…Ø¬Ù…ÙˆØ¹Ø© Ø¹Ø¶ÙˆÙŠØ© Ù…Ø¹ÙŠÙ†Ø© Ù„ÙƒÙŠ Ù„Ø§ ÙŠØªÙ… Ø§Ù„Ø³Ù…Ø§Ø­ Ù„Ù‡Ù… Ø¨Ø¹Ù…Ù„ Ø§ÙŠ Ø´ÙŠØ¡ Ø¨Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ù…Ù† Ù…Ø±Ø§Ø³Ù„Ø© Ø§Ùˆ Ø¹Ù…Ù„ÙŠØ§Øª Ø´Ø±Ø§Ø¡ØŒ Ø§Ùˆ Ø­ØªÙ‰ Ø¹Ø¯Ù… ÙØªØ­ Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ù„Ù‡Ù… Ø¨Ø´ÙƒÙ„ Ù†Ù‡Ø§Ø¦ÙŠ.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;4&quot;&gt;\r\n&lt;li&gt;Ù…Ø¯ÙŠØ± Ø§Ù„ØµÙØ­Ø§Øª&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;Ù…Ø¯ÙŠØ± Ø§Ù„ØµÙØ­Ø§Øª Ø¨Ù…ÙˆÙ‚Ø¹Ùƒ Ù‡Ùˆ Ø§Ù„Ø°ÙŠ ÙŠÙ…ÙƒÙ†Ùƒ Ù…Ù† Ø§Ø¯Ø§Ø±Ø© Ø¬Ù…ÙŠØ¹ Ø§Ù„ØµÙØ­Ø§Øª Ø¨Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ø§Ù„Ø®Ø§Øµ Ø¨ÙƒØŒ ÙˆØ§Ø¶Ø§ÙØ© ØµÙØ­Ø§Øª Ø¬Ø¯ÙŠØ¯Ø© Ù„Ù„Ù…ÙˆÙ‚Ø¹ ÙƒØµÙØ­Ø§Øª Ø§Ù„ØªÙˆØ§ØµÙ„ ÙˆØ§ØªÙØ§Ù‚ÙŠØ© Ø§Ù„Ø®Ø¯Ù…Ø§Øª ÙˆØ³ÙŠØ§Ø³Ø© Ø§Ù„Ø®ØµÙˆØµÙŠØ© ÙˆØªØ¹Ø±ÙŠÙ Ø¨Ø´Ø±ÙƒØªÙƒ ÙˆØ·Ø§Ù‚Ù… Ø¹Ù…Ù„Ù‡Ø§ ÙˆØ§ÙŠØ¶Ø§Ù‹ ØªØ¹Ø±ÙŠÙ Ø§Ù„Ø®Ø¯Ù…Ø§Øª Ø§Ù„ØªÙŠ ØªÙ‚Ø¯Ù…Ù‡Ø§ ÙˆØ§Ù„Ù…Ù†ØªØ¬Ø§Øª Ø§Ù„Ø®Ø§ØµØ© Ø¨Ùƒ ÙˆÙŠÙ…ÙƒÙ†Ùƒ Ø¨ÙƒÙ„ ØªØ£ÙƒÙŠØ¯ Ù…Ù† ØªØ¹Ø¯ÙŠÙ„ØŒ Ø§ÙŠÙ‚Ø§Ù Ø§Ùˆ Ø­ØªÙ‰ Ø­Ø°Ù Ø§Ù„ØµÙØ­Ø§Øª Ø­Ø³Ø¨ Ø±ØºØ¨ØªÙƒ.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;5&quot;&gt;\r\n&lt;li&gt;Ù…Ø±ÙƒØ² Ø§Ù„Ø¨Ø±ÙŠØ¯&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;ÙŠØªÙŠØ­ Ù„Ùƒ Ù…Ø±ÙƒØ² Ø§Ù„Ø¨Ø±ÙŠØ¯ ØªÙˆØ§ØµÙ„ Ø§Ù„Ø²Ø§Ø¦Ø±/Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… Ù„Ù…ÙˆÙ‚Ø¹Ùƒ Ù…Ù† Ø®Ù„Ø§Ù„ ØªÙˆÙÙŠØ± Ø«Ù„Ø§Ø« Ø§Ø³ØªÙ…Ø§Ø±Ø§Øª Ù„Ù„Ù…Ø±Ø§Ø³Ù„Ø©ØŒ Ø§Ù„Ø§Ø³ØªÙ…Ø§Ø±Ø© Ø§Ù„Ø§ÙˆÙ„Ù‰ Ø®Ø§ØµØ© Ø¨Ø¹Ù…Ù„ÙŠØ© Ø§Ù„Ù…Ø±Ø§Ø³Ù„Ø© Ø§Ù„Ø¹Ø§Ø¯ÙŠØ©ØŒ ÙˆØ§Ù„Ø§Ø³ØªÙ…Ø§Ø±Ø© Ø§Ù„Ø«Ø§Ù†ÙŠØ© Ø®Ø§ØµØ© Ù„Ù„ØªÙ‚Ø¯Ù… Ù„ÙˆØ¸ÙŠÙØ© Ù„Ø¯Ù‰ Ø§Ù„Ø´Ø±ÙƒØ©ØŒ ÙˆØ§Ù„Ø§Ø³ØªÙ…Ø§Ø±Ø© Ø§Ù„Ø«Ø§Ù„Ø«Ø© Ø®Ø§ØµØ© Ø¨Ø·Ù„Ø¨ Ø¹Ø±Ø¶ Ø§Ø³Ø¹Ø§Ø± Ù„Ù„Ø®Ø¯Ù…Ø§ØªØŒ Ø§ÙŠØ¶Ø§Ù‹ ÙŠÙ…ÙƒÙ† Ù„Ùƒ Ø§Ù† ØªÙ‚ÙˆÙ… Ø¨Ø§Ù„Ø±Ø¯ Ø¹Ù„Ù‰ Ø§Ù„Ø±Ø³Ø§Ù„Ø© Ø§Ù„Ù…Ø±Ø³Ù„Ø© Ø§ÙŠØ§Ù‹ ÙƒØ§Ù† Ù†ÙˆØ¹Ù‡Ø§ Ù…Ø¹ Ø§Ù…ÙƒØ§Ù†ÙŠØ© Ø§Ù„Ø±Ø¯ Ù…Ù† Ø®Ù„Ø§Ù„ Ø§Ù„Ø²Ø§Ø¦Ø±/Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… Ø§Ù„Ø°ÙŠ Ù‚Ø§Ù… Ø¨Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ø±Ø³Ø§Ù„Ø© Ù…Ù† Ø®Ù„Ø§Ù„ Ø§Ù„Ù…ÙˆÙ‚Ø¹.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;6&quot;&gt;\r\n&lt;li&gt;Ù†Ø¸Ø§Ù… Ø§Ù„Ø±Ø³Ø§Ø¦Ù„ Ø§Ù„Ø¯Ø§Ø®Ù„ÙŠ&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;ÙŠØªÙŠØ­ Ù„Ùƒ Ù‡Ø°Ø§ Ø§Ù„Ù†Ø¸Ø§Ù… Ø§Ù† ØªÙƒÙˆÙ† Ù‡Ù†Ø§Ùƒ Ø±Ø³Ø§Ø¦Ù„ Ø¯Ø§Ø®Ù„ÙŠØ© Ù…Ø§ Ø¨ÙŠÙ† Ø§Ù„Ù…ÙˆØ¸ÙÙŠÙ† ÙˆØ¨Ø¹Ø¶Ù‡Ù… Ø§Ùˆ Ø§Ø±Ø³Ø§Ù„ Ø±Ø³Ø§Ù„Ø© Ù„Ù…Ø¬Ù…ÙˆØ¹Ø© Ù…Ù† Ø§Ù„Ø¹Ù…Ù„Ø§Ø¡ Ù…Ù† Ø®Ù„Ø§Ù„ Ù…ÙˆÙ‚Ø¹Ùƒ Ø¨Ø¯ÙˆÙ† Ø§Ù„Ø­Ø§Ø¬Ù‡ Ù„Ø¨Ø±ÙŠØ¯ Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠØŒ Ø§ÙŠØ¶Ø§Ù‹ ÙŠÙ…ÙƒÙ† Ø§Ù„Ø±Ø¯ Ø¹Ù„Ù‰ Ù‡Ø°Ù‡ Ø§Ù„Ø±Ø³Ø§Ø¦Ù„ ÙˆØ§ÙŠÙ‚Ø§Ù Ù‡Ø°Ù‡ Ø§Ù„Ø®Ø¯Ù…Ø© Ù…Ø«Ù„Ø§Ù‹ Ø¹Ù† Ù…Ø¬Ù…ÙˆØ¹Ø© Ø¹Ø¶ÙˆÙŠØ© Ù…Ø¹ÙŠÙ†Ø©ØŒ ÙˆØ§Ø³ØªØ®Ø¯Ø§Ù…Ù‡Ø§ ÙÙŠ Ø§Ù„Ø±Ø³Ø§Ø¦Ù„ Ø§Ù„Ø¯Ø¹Ø§Ø¦ÙŠØ© Ø§Ù„Ø¯Ø§Ø®Ù„ÙŠØ©.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;7&quot;&gt;\r\n&lt;li&gt;Ù†Ø¸Ø§Ù… Ø§Ù„ØªÙ†Ø¨ÙŠÙ‡Ø§Øª&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;Ù‡Ø°Ø§ Ø§Ù„Ù†Ø¸Ø§Ù… Ø´Ø¨ÙŠÙ‡ Ø¨Ù†Ø¸Ø§Ù… ØªÙ†Ø¨ÙŠÙ‡Ø§Øª Ù…ÙˆØ§Ù‚Ø¹ Ø§Ù„ØªÙˆØ§ØµÙ„ Ø§Ù„Ø§Ø¬ØªÙ…Ø§Ø¹ÙŠ Ø§Ù„Ù…Ø®ØªÙ„ÙØ©ØŒ Ø­ÙŠØ« ÙŠØ¹ØªÙ…Ø¯ Ø¹Ù„Ù‰ ØªÙ†Ø¨ÙŠÙ‡ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… Ø§Ùˆ Ø§Ù„Ø¹Ø¶Ùˆ Ø¨Ø§Ù„Ø¬Ø¯ÙŠØ¯ Ø¨Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ù…Ø«Ù„ Ø§Ø¶Ø§ÙØ© Ù…Ù†ØªØ¬Ø§Øª Ø¬Ø¯ÙŠØ¯Ø©ØŒ ØªÙ†Ø¨ÙŠÙ‡Ø§Øª Ù„Ø¹Ù…Ù„ÙŠØ§Øª Ø§Ù„Ø¨ÙŠØ¹ ÙˆØ§Ù„Ø´Ø±Ø§Ø¡ Ù„Ù„Ù…ÙˆØ¸ÙÙŠÙ†ØŒ ØªÙ†Ø¨ÙŠÙ‡Ø§Øª Ø¨Ø§Ù„ØªØ°Ø§ÙƒØ± ÙˆØ§Ù„ØªØ³Ø¬ÙŠÙ„Ø§Øª ÙˆØ§Ù„ØªØ­Ø¯ÙŠØ«Ø§Øª Ø§Ù„Ù…Ø®ØªÙ„ÙØ© ÙˆØºÙŠØ±Ù‡Ø§ Ù…Ù† Ø§Ù„ØªÙ†Ø¨ÙŠÙ‡Ø§Øª Ø§Ù„ØªÙŠ ÙŠØ¹Ø±Ø¶Ù‡Ø§ Ø§Ù„Ù†Ø¸Ø§Ù… Ù„Ù„Ù…Ø³ØªØ®Ø¯Ù….&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;8&quot;&gt;\r\n&lt;li&gt;Ù†Ø¸Ø§Ù… Ø§Ù„Ù…ÙˆØ¯ÙŠÙˆÙ„Ø§Øª ÙˆØ§Ù„Ø¨Ù„Ø¬Ù†Ø§Øª&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;ØªÙ… ØªÙ‡ÙŠØ¦Ø© Ø¨Ø±Ù†Ø§Ù…Ø¬ Ø§Ø¯Ø§Ø±Ø© Ø§Ù„Ø´Ø±ÙƒØ§Øª Ø¨Ø±Ù…Ø¬ÙŠØ§Ù‹ Ù„Ø¥Ø³ØªÙ‚Ø¨Ø§Ù„ Ø§Ù„Ø§Ø¶Ø§ÙØ§Øª Ø§Ù„Ù…Ø®ØªÙ„ÙØ© Ù„Ù„Ù‚ÙŠØ§Ù… Ø¨ÙˆØ¸Ø§Ø¦Ù Ù…Ø®ØªÙ„ÙØ© Ø¨Ø§Ù„Ù…ÙˆÙ‚Ø¹ØŒ Ø­ÙŠØ« ØªÙ… Ø¨Ù†Ø§Ø¡ Ø§Ù„Ø¨Ù†ÙŠØ© Ø§Ù„ØªØ­ØªÙŠÙ‡ Ù„Ù„Ø¨Ø±Ù†Ø§Ù…Ø¬ Ø¹Ù„Ù‰ Ø§Ø³Ø³ ØªÙ…ÙƒÙ† Ø§ÙŠ Ù…Ø¨Ø±Ù…Ø¬ Ù…Ù† Ø§Ù„Ù‚ÙŠØ§Ù… Ø¨Ø¨Ø±Ù…Ø¬Ø© Ø§Ù„Ø§Ø¶Ø§ÙØ© Ø§Ù„Ø®Ø§ØµÙ‡ Ø¨Ù‡ Ø¨Ø§Ù„Ø§Ø¹ØªÙ…Ø§Ø¯ Ø¹Ù„Ù‰ Ø§Ù„Ø®ØµØ§Ø¦Øµ Ø§Ù„Ù…ÙˆØ¬ÙˆØ¯Ù‡ Ø¨Ø§Ù„Ù†ÙˆØ§Ù‡ Ø§Ù„Ø£Ø³Ø§Ø³ÙŠØ© Ù„Ù„Ø¨Ø±Ù†Ø§Ù…Ø¬ØŒ ÙˆØ§ÙŠØ¶Ø§Ù‹ Ø§Ø³ØªØ®Ø¯Ø§Ù… Ø¬Ù…ÙŠØ¹ Ø§Ù„Ø¯ÙˆØ§Ù„ ÙˆØ§Ù„ÙƒØ§Ø¦Ù†Ø§Øª Ø¨Ø§Ù„Ø¨Ø±Ù†Ø§Ù…Ø¬ Ø¨Ù‡Ø°Ù‡ Ø§Ù„Ø§Ø¶Ø§ÙØ§ØªØŒ Ø­ÙŠØ« ÙŠÙ…ÙƒÙ†Ùƒ Ø¨Ø±Ù…Ø¬Ù‡ Ø§Ø¶Ø§ÙØ© Ù…Ø«Ù„Ø§Ù‹ ØªØ¹Ù…Ù„ ÙƒÙ†Ø¸Ø§Ù… ØªØ³ÙˆÙ‚ Ø¨Ø§Ù„Ù…ÙˆÙ‚Ø¹ ÙˆØ§ÙŠØ¶Ø§Ù‹ Ø§Ø¶Ø§ÙØ© Ù„Ø±Ø¨Ø· Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ø¨Ù…ÙˆØ§Ù‚Ø¹ Ø§Ù„ØªÙˆØ§ØµÙ„ Ø§Ù„Ø§Ø¬ØªÙ…Ø§Ø¹ÙŠ Ø§Ù„Ù…Ø®ØªÙ„ÙØ©ØŒ Ù…Ø¹ Ø§Ù„Ø¹Ù„Ù… Ø§Ù† Ø´Ø±ÙƒØ© ØªØ±Ø§ÙƒØ³ÙŠØ¯ ØªÙˆÙØ± Ø§Ù„Ø¹Ø¯ÙŠØ¯ Ù…Ù† Ø§Ù„Ø§Ø¶Ø§ÙØ§Øª Ø§Ù„ØªÙŠ Ù…Ù† Ø´Ø£Ù†Ù‡Ø§ Ø§Ù„Ù‚ÙŠØ§Ù… Ø¨Ø¹Ù…Ù„ÙŠØ§Øª Ù…Ø®ØªÙ„ÙØ© Ø¨Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Ù…Ø²Ø§ÙŠØ§ Ø§Ø®Ø±Ù‰&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Ø³Ù‡Ù„ Ø§Ù„ØªÙ†ØµÙŠØ¨ ÙˆØ§Ù„ØªØ±Ù‚ÙŠØ© Ù„Ù„Ø¥ØµØ¯Ø§Ø±Ø§Øª Ø§Ù„Ø¬Ø¯ÙŠØ¯Ø©.&lt;/li&gt;\r\n&lt;li&gt;Ø³Ù‡ÙˆÙ„Ø© Ø§Ù„ØªØ­ÙƒÙ… ÙÙŠ Ø§Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ø¨Ø´ÙƒÙ„ ÙƒØ§Ù…Ù„.&lt;/li&gt;\r\n&lt;li&gt;Ø³Ù‡ÙˆÙ„Ø© ÙÙŠ Ø§Ø¶Ø§ÙØ© Ø§Ù„ØµÙØ­Ø§Øª Ø§Ù„Ù…Ø®ØªÙ„ÙØ©.&lt;/li&gt;\r\n&lt;li&gt;Ø³Ù‡ÙˆÙ„Ø© ÙÙŠ Ø§Ù„ØªØ¹Ø§Ù…Ù„ Ù…Ø¹ Ø§Ù„Ø³ØªØ§ÙŠÙ„ Ø§Ù„Ø®Ø§Øµ Ø¨Ø§Ù„Ø¨Ø±Ù†Ø§Ù…Ø¬.&lt;/li&gt;\r\n&lt;li&gt;Ø§Ù„ØªØ­ÙƒÙ… ÙÙŠ ØªÙØ¹ÙŠÙ„ ÙˆØªØ¹Ø·ÙŠÙ„ Ø§Ù„Ø§Ø¶Ø§ÙØ§Øª ÙˆØ§Ù„Ù…ÙˆØ¯ÙŠÙˆÙ„Ø§Øª Ø§Ù„Ù…Ø®ØªÙ„ÙØ©&lt;/li&gt;\r\n&lt;li&gt;Ø§Ù„ØªØ­ÙƒÙ… ÙÙŠ Ø§Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„ØªØ³Ø¬ÙŠÙ„ Ø¨Ø§Ù„Ø¨Ø±Ù†Ø§Ù…Ø¬&lt;/li&gt;\r\n&lt;li&gt;Ø§Ù„ØªØ­ÙƒÙ… ÙÙŠ Ø§Ù†Ø´Ø§Ø¡ Ø§Ù„Ø®Ø±Ø§Ø¦Ø· ÙˆØ§Ø±Ø³Ø§Ù„Ù‡Ø§ Ù„Ù…Ø­Ø±ÙƒØ§Øª Ø§Ù„Ø¨Ø­Ø«&lt;/li&gt;\r\n&lt;li&gt;Ø§Ù„ØªØ­ÙƒÙ… ÙÙŠ Ø§Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„ØªÙ†Ø¨ÙŠÙ‡Ø§Øª ÙˆØ§Ù„Ø±Ø³Ø§Ø¦Ù„ Ø§Ù„Ø¯Ø§Ø®Ù„ÙŠØ©&lt;/li&gt;\r\n&lt;li&gt;Ø§Ù„ØªØ­ÙƒÙ… ÙÙŠ Ø¹Ù…Ù„ÙŠØ§Øª Ø§Ù„Ù…Ø±Ø§Ø³Ù„Ø© Ù…Ù† Ø®Ù„Ø§Ù„ Ù†Ø¸Ø§Ù… Ù…Ø±Ø§Ø³Ù„Ø© Ø§Ù„Ù…ÙˆÙ‚Ø¹&lt;/li&gt;\r\n&lt;li&gt;Ø§Ù†Ø´Ø§Ø¡ Ù†Ø³Ø® Ø§Ø­ØªÙŠØ§Ø·ÙŠØ© Ù„Ù‚ÙˆØ§Ø¹Ø¯ Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ù…Ù† Ø§Ù„Ø¨Ø±Ù†Ø§Ù…Ø¬&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Ø§Ù„ØªØµÙ…ÙŠÙ…&lt;/p&gt;\r\n&lt;p&gt;ÙŠØªÙ…ÙŠØ² ØªØµÙ…ÙŠÙ… Ø§Ù„Ø¨Ø±Ù†Ø§Ù…Ø¬ Ø¨Ø¹Ø¯Ø© Ù…Ø²Ø§ÙŠØ§ Ù…Ù† Ø§Ù‡Ù…Ù‡Ø§:&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;Ø§Ù„ØªØµÙ…ÙŠÙ… Ù…Ø¹ØªÙ…Ø¯ Ø¹Ù„Ù‰ Ø¨ÙŠØ¦Ø© Ø¹Ù…Ù„ Bootstrap&lt;/li&gt;\r\n&lt;li&gt;Ø¯Ø¹Ù… Ø¬Ù…ÙŠØ¹ Ø§Ù„Ø§Ø¬Ù‡Ø²Ø© Ø§Ù„Ù„ÙˆØ­ÙŠØ© ÙˆØ§Ù„ÙƒÙÙŠØ© Ø¨Ø¬Ù…ÙŠØ¹ Ø§Ø­Ø¬Ø§Ù… Ø§Ù„Ø´Ø§Ø´Ø§Øª&lt;/li&gt;\r\n&lt;li&gt;Ø³Ù‡ÙˆÙ„ ÙÙŠ Ø§Ù„ØªØ¹Ø¯ÙŠÙ„ Ø¨Ø§Ù„Ù…Ù„ÙØ§Øª Ø§Ù„Ø®Ø§ØµØ© Ø¨Ù‡ Ù…Ù† Ø®Ù„Ø§Ù„ Ù…Ø­Ø±Ø± Ø§Ù„ØªØ¹Ø¯ÙŠÙ„Ø§Øª Ø¨Ù„ÙˆØ­Ù‡ ØªØ­ÙƒÙ… Ø§Ù„Ø¨Ø±Ù†Ø§Ù…Ø¬&lt;/li&gt;\r\n&lt;li&gt;Ø§Ù…ÙƒØ§Ù†ÙŠØ© ØªØºÙŠØ± Ø§Ù„ØªØµÙ…ÙŠÙ… Ø¨ØªØµÙ…ÙŠÙ… Ø§Ø®Ø± Ø¨Ø·Ø±Ù‚ Ø³Ù‡Ù„Ø© ÙˆØ¨Ø³ÙŠØ·Ø©&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Ø§Ù„Ù…ÙˆØ¯ÙŠÙˆÙ„Ø§Øª ÙˆØ§Ù„Ø¨Ù„Ø¬Ù†Ø§Øª&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;Ø§Ù„Ù…Ù†ØªØ¬Ø§Øª ÙˆØ§Ù„Ø®Ø¯Ù…Ø§Øª&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;ÙŠØªÙŠØ­ Ù„Ùƒ Ø§Ø¶Ø§ÙØ© Ø§Ù„Ù…Ù†ØªØ¬Ø§Øª ÙˆØ§Ù„Ø®Ø¯Ù…Ø§Øª Ø§Ù„Ø®Ø§ØµØ© Ø¨Ùƒ ÙˆØªØµÙ†ÙŠÙÙ‡Ù… Ø¨Ø£Ù‚Ø³Ø§Ù… Ù…Ø®ØªÙ„ÙØ© Ø­Ø³Ø¨ Ø±ØºØ¨ØªÙƒØŒ ÙˆÙŠØªÙŠØ­ Ù„Ùƒ Ø§Ù„ØªØ­ÙƒÙ… ÙÙŠ Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø§Ù„ØªÙŠ Ø³ÙˆÙ ÙŠØªÙ… Ø¹Ø±Ø¶Ù‡Ø§ Ù„ÙƒÙ„ Ù…Ù†ØªØ¬ Ø§Ùˆ Ù‚Ø³Ù….&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;2&quot;&gt;\r\n&lt;li&gt;Ø¹Ø±Ø¨Ø© Ø§Ù„ØªØ³ÙˆÙ‚&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;ÙŠØªÙŠØ­ Ù„Ùƒ ØªÙˆÙÙŠØ± Ø§Ù…ÙƒØ§Ù†ÙŠØ© Ø´Ø±Ø§Ø¡ Ø§Ù„Ø¹Ù…Ù„Ø§Ø¡ Ù„Ù„Ù…Ù†ØªØ¬Ø§Øª ÙˆØ§Ù„Ø®Ø¯Ù…Ø§Øª Ø§Ù„Ø®Ø§ØµØ© Ø¨Ùƒ Ø§Ù„ØªÙŠ Ù‚Ù…Øª Ø¨Ø¹Ø±Ø¶Ù‡Ø§ Ù…Ù† Ø®Ù„Ø§Ù„ Ù…ÙˆØ¯ÙŠÙˆÙ„ &quot; Ø§Ù„Ù…Ù†ØªØ¬Ø§Øª ÙˆØ§Ù„Ø®Ø¯Ù…Ø§Øª&quot; Ø¹Ù† Ø·Ø±ÙŠÙ‚ Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ù…Ø¨Ø§Ø´Ø±Ø© ÙˆØ§ØµØ¯Ø§Ø± Ø§Ù„ÙÙˆØ§ØªÙŠØ± ÙˆØ¹Ù…Ù„ÙŠØ§Øª Ø§Ù„Ø¯ÙØ¹ Ø§Ù„Ù…Ø®ØªÙ„ÙØ© ÙˆØ§Ù„ÙƒØ«ÙŠØ± Ù…Ù† Ø§Ù„Ù…Ø²Ø§ÙŠØ§.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;3&quot;&gt;\r\n&lt;li&gt;Ù†Ø¸Ø§Ù… Ø§Ù„ØªØ°Ø§ÙƒØ± ÙˆØ§Ù„Ø¯Ø¹Ù… Ø§Ù„ÙÙ†ÙŠ&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;ÙŠÙˆÙØ± Ø§Ù…ÙƒØ§Ù†ÙŠØ© Ø¯Ø¹Ù… Ø¹Ù…Ù„Ø§Ø¤Ùƒ Ø¹Ù† Ø·Ø±ÙŠÙ‚ Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ù…Ø¨Ø§Ø´Ø±Ø© ÙˆØªÙ‚Ø¯ÙŠÙ… Ø§Ù„Ù…Ø³Ø§Ø¹Ø¯Ø© Ù„Ù‡Ù… Ø¹Ù† Ø·Ø±ÙŠÙ‚ Ù†Ø¸Ø§Ù… Ø§Ù„ØªØ°Ø§ÙƒØ± Ø§Ù„Ù…Ø®ØªÙ„ÙØ© ÙˆØ§ÙŠØ¶Ø§Ù‹ ØªÙ‚Ø³ÙŠÙ… Ø§Ù„ØªØ°Ø§ÙƒØ± Ø­Ø³Ø¨ Ø§Ù‚Ø³Ø§Ù… Ø§Ù„Ø´Ø±ÙƒØ© ÙˆØªØ®ØµØµØ§ØªÙ‡Ø§.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;4&quot;&gt;\r\n&lt;li&gt;Ø§Ù„Ø§Ø®Ø¨Ø§Ø±&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;ÙŠØªÙŠØ­ Ù„Ùƒ Ø§Ø¶Ø§ÙØ© Ø§Ù‚Ø³Ø§Ù… ÙˆØ§Ø®Ø¨Ø§Ø± Ù„Ø£Ø®Ø¨Ø§Ø± Ø´Ø±ÙƒØªÙƒ ÙˆØ¹Ø±Ø¶Ù‡Ø§ Ù„Ø¹Ù…Ù„Ø§Ø¦Ùƒ ÙˆØªØµÙ†ÙŠÙ Ø§Ù„Ø§Ø®Ø¨Ø§Ø± Ù…Ù† Ø­ÙŠØ« Ø§Ø®Ø¨Ø§Ø± Ù…Ù‡Ù…Ø© Ù…Ø«Ø¨ØªÙ‡ ÙˆØ§Ø®Ø¨Ø§Ø± Ø¹Ø§Ø¯ÙŠØ©.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;5&quot;&gt;\r\n&lt;li&gt;Ø§Ù„Ù…Ù‚Ø§Ù„Ø§Øª&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;ÙŠØªÙŠØ­ Ù„Ùƒ ÙƒØªØ§Ø¨Ø© Ù…Ù‚Ø§Ù„Ø§Øª Ø¹Ù† Ø§Ù„Ø´Ø±ÙƒØ© Ø§Ù„Ø®Ø§ØµØ© Ø¨Ùƒ ÙˆØ¹Ù† Ø§Ù†Ø´ØªØ·ØªÙ‡Ø§ ÙˆØªÙˆØ¬Ù‡Ø§ØªÙ‡Ø§ ÙˆÙƒÙ„Ù…Ø§Øª Ù…ÙˆØ¸ÙÙŠ Ø§Ù„Ø´Ø±ÙƒØ© ÙˆØ¹Ø±Ø¶Ù‡Ø§ Ù„Ù…Ø³ØªØ®Ø¯Ù… Ù…ÙˆÙ‚Ø¹Ùƒ.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;6&quot;&gt;\r\n&lt;li&gt;Ø§Ù„ÙÙŠØ¯ÙŠÙˆ&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;ÙŠØªÙŠØ­ Ù„Ùƒ Ø¹Ø±Ø¶ ÙÙŠØ¯ÙŠÙˆÙ‡Ø§Øª Ù„Ù„Ù…Ù†ØªØ¬Ø§Øª Ø§Ù„Ø®Ø§ØµØ© Ø¨Ùƒ ÙˆÙÙŠØ¯ÙŠÙˆÙ‡Ø§Øª Ø¹Ù† Ø§Ù„Ø´Ø±ÙƒØ© ÙˆØ¹Ù† Ø§Ø¹Ù…Ø§Ù„Ù‡Ø§ ÙˆØ¹Ù…Ù„Ø§Ø¦Ù‡Ø§ ÙˆØ·Ø§Ù‚Ù… Ø¹Ù…Ù„Ù‡Ø§ Ù„Ø¹Ø±Ø¶Ù‡Ø§ Ù„Ù„Ø¹Ù…Ù„Ø§Ø¡.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;7&quot;&gt;\r\n&lt;li&gt;Ø§Ù„Ù…Ø¯ÙˆÙ†Ø©&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;ØªØªÙŠØ­ Ù„Ùƒ Ø¯Ù…Ø¬ Ù…Ø¯ÙˆÙ†Ø© Ø®Ø§ØµØ© Ø¨Ø´Ø±ÙƒØªÙƒ Ø¥Ù„Ù‰ Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ø§Ù„Ø®Ø§Øµ Ø¨Ù‡Ø§ Ø¨ÙƒÙ„ Ø³Ù‡ÙˆÙ„Ø© Ù„ÙƒØªØ§Ø¨Ø© Ø§Ù„ØªØ¯ÙˆÙŠÙ†Ø§Øª Ø§Ù„Ù…Ø®ØªÙ„ÙØ©.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;8&quot;&gt;\r\n&lt;li&gt;Ø§Ù„Ù…Ù†ØªØ¯Ù‰&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;ÙŠØªÙŠØ­ Ù„Ùƒ ÙØªØ­ Ø³Ø§Ø­Ø§Øª Ø­ÙˆØ§Ø± Ø¨ÙŠÙ† Ø§Ù„Ø¹Ù…Ù„Ø§Ø¡ ÙˆÙ…ÙˆØ¸ÙÙŠ Ø§Ù„Ø´Ø±ÙƒØ© Ù„Ù„Ù…Ø´Ø§Ø±ÙƒØ© ÙÙŠ Ø§Ù„Ø§ÙÙƒØ§Ø± ÙˆØ§Ù„Ø§Ù‚ØªØ±Ø§Ø­Ø§Øª ÙˆØ§Ù„Ù†Ù‚Ø§Ø´Ø§Øª Ø­ÙˆÙ„ Ø§Ø¹Ù…Ø§Ù„ Ø§Ù„Ø´Ø±ÙƒØ© ÙˆØ®Ø¯Ù…Ø§ØªÙ‡Ø§ ÙˆÙ…Ø§ Ø¥Ù„Ù‰ Ø°Ù„Ùƒ.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;9&quot;&gt;\r\n&lt;li&gt;Ù…Ø¹Ø±Ø¶ Ø§Ù„Ø§Ø¹Ù…Ø§Ù„&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;ÙŠØªÙŠØ­ Ù„Ùƒ Ø§Ù…ÙƒØ§Ù†ÙŠØ© Ø¹Ø±Ø¶ Ø§Ù„Ø§Ø¹Ù…Ø§Ù„ Ø§Ù„Ø®Ø§ØµØ© Ø¨Ø§Ù„Ø´Ø±ÙƒØ© ÙˆØ¹Ù…Ù„Ø§Ø¦Ù‡Ø§ Ø¨Ø´ÙƒÙ„ Ù…Ø±ØªØ¨ ÙˆØªØµÙ†ÙŠÙÙ‡Ø§ Ø­Ø³Ø¨ Ø±ØºØ¨ØªÙƒ ÙˆØ­Ø³Ø¨ ØªÙˆØ¬Ù‡ Ø§Ù„Ø§Ø¹Ù…Ø§Ù„.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;10&quot;&gt;\r\n&lt;li&gt;Ø§Ù„Ø´Ù‡Ø§Ø¯Ø§Øª ÙˆØ§Ù„Ø§Ø¹ØªÙ…Ø§Ø¯Ø§Øª&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;ÙŠØªÙŠØ­ Ù„Ùƒ Ø¹Ø±Ø¶ Ø§Ù„Ø´Ù‡Ø§Ø¯Ø§Øª ÙˆØ§Ù„Ø§Ø¹ØªÙ…Ø§Ø¯Ø§Øª Ø§Ù„ØªÙŠ Ø­ØµÙ„Øª Ø¹Ù„ÙŠÙ‡Ø§ Ø§Ù„Ø´Ø±ÙƒØ© Ù„Ø¹Ù…Ù„Ø§Ø¦Ùƒ Ù„ÙƒÙŠ ØªØ²ÙŠØ¯ Ø«Ù‚Ù‡ Ø§Ù„Ø¹Ù…Ù„Ø§Ø¡ Ø¨Ø§Ù„Ø´Ø±ÙƒØ©.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;11&quot;&gt;\r\n&lt;li&gt;Ø¢Ø±Ø§Ø¡ Ø§Ù„Ø¹Ù…Ù„Ø§Ø¡&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;ÙŠÙ…ÙƒÙ†Ùƒ Ù…Ù† Ø§Ø¶Ø§ÙØ© Ø§Ø±Ø§Ø¡ Ø¹Ù…Ù„Ø§Ø¡ Ø´Ø±ÙƒØªÙƒ Ø¨Ø§Ù„Ø´Ø±ÙƒØ© ÙˆØ®Ø¯Ù…Ø§ØªÙ‡Ø§ ÙˆÙ…Ù†ØªØ¬Ø§ØªÙ‡Ø§ Ø¥Ù„Ù‰ Ù…ÙˆÙ‚Ø¹Ùƒ Ø¨Ø´ÙƒÙ„ Ø¬Ù…ÙŠÙ„ ÙˆØ¨Ø³ÙŠØ·.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;12&quot;&gt;\r\n&lt;li&gt;ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„ Ø¨Ù…ÙˆØ§Ù‚Ø¹ Ø§Ù„ØªÙˆØ§ØµÙ„ Ø§Ù„Ø§Ø¬ØªÙ…Ø§Ø¹ÙŠ&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;ÙŠÙ…ÙƒÙ†Ùƒ Ù…Ù† Ø§Ø¹Ø·Ø§Ø¡ Ø§Ù…ÙƒØ§Ù†ÙŠØ© ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¹Ù…Ù„Ø§Ø¡ ÙˆØªØ³Ø¬ÙŠÙ„ Ø¯Ø®ÙˆÙ„Ù‡Ù… Ù…Ù† Ø®Ù„Ø§Ù„ Ù…ÙˆØ§Ù‚Ø¹ Ø§Ù„ØªÙˆØ§ØµÙ„ Ø§Ù„Ø§Ø¬ØªÙ…Ø§Ø¹ÙŠ Ø§Ù„Ù…Ø®ØªÙ„ÙØ©ØŒ ÙˆÙ‡Ùˆ Ø§Ù„Ø£Ù…Ø± Ø§Ù„Ø°ÙŠ ÙŠØ¹Ø·ÙŠ Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠ Ù…ÙˆÙ‚Ø¹Ùƒ Ø³Ù‡ÙˆÙ„Ø© ÙÙŠ Ø§Ù„ØªØ³Ø¬ÙŠÙ„ Ø¨Ø§Ù„Ù…ÙˆÙ‚Ø¹.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;13&quot;&gt;\r\n&lt;li&gt;Ø±Ø¨Ø· Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ø¨Ù…ÙˆØ§Ù‚Ø¹ Ø§Ù„ØªÙˆØ§ØµÙ„ Ø§Ù„Ø§Ø¬ØªÙ…Ø§Ø¹ÙŠ&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;ÙŠÙ…ÙƒÙ†Ùƒ Ù…Ù† Ø±Ø¨Ø· Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ Ø¨Ø¬Ù…ÙŠØ¹ Ù…ÙˆØ§Ù‚Ø¹ Ø§Ù„ØªÙˆØ§ØµÙ„ Ø§Ù„Ø§Ø¬ØªÙ…Ø§Ø¹ÙŠ Ø§Ù„Ù…Ø®ØªÙ„ÙØ© ÙˆØ§Ù„ØµÙØ­Ø§Øª ÙˆØ§Ù„Ø­Ø³Ø§Ø¨Ø§Øª Ø§Ù„Ø®Ø§ØµØ© Ø¨Ø§Ù„Ø´Ø±ÙƒØ© Ø¹Ù„ÙŠÙ‡Ø§.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;";s:12:"pagemetadisc";s:0:"";s:11:"pagemetakey";s:0:"";s:8:"pagetags";s:0:"";}'),
(383, 'ar', 29, 'menu', 'Ø§Ù„Ø®Ø¯Ù…Ø§Øª', ''),
(384, 'ar', 1, 'menu', 'Ø§Ù„ØµÙØ­Ø§Øª', ''),
(385, 'ar', 5, 'menu', 'Ø§Ù„Ø±Ø¦ÙŠØ³ÙŠØ©', ''),
(386, 'ar', 4, 'menu', 'Ù…Ø±ÙƒØ² Ø§Ù„Ø§ØªØµØ§Ù„', ''),
(387, 'ar', 2, 'menu', 'Ø¬ÙˆØ¬Ù„', ''),
(388, 'ar', 25, 'menu', 'Ø§Ù„Ø§Ø®Ø¨Ø§Ø±', ''),
(389, 'ar', 32, 'menuchild', 'ØµÙØ­Ø© Ø¬Ø¯ÙŠØ¯Ø©', ''),
(390, 'ar', 2, 'menuchild', 'Ø§ØªÙØ§Ù‚ÙŠØ© Ø§Ù„Ø®Ø¯Ù…Ø©', ''),
(391, 'ar', 15, 'menuchild', 'Ø´Ø±ÙƒØ© ØªØ±Ø§ÙƒØ³ÙŠØ¯', ''),
(392, 'ar', 6, 'menu', 'Ø§Ù„ØµÙØ­Ø§Øª - Ø§Ù„ÙÙˆØªØ±', ''),
(393, 'ar', 7, 'menuchild', 'Ø¹Ù† Ø§Ù„Ø´Ø±ÙƒØ©', ''),
(394, 'ar', 8, 'menuchild', 'Ø§ØªÙØ§Ù‚ÙŠØ© Ø§Ù„Ø®Ø¯Ù…Ø©', ''),
(395, 'ar', 30, 'menu', 'Ø§Ø­Ù…Ø¯', ''),
(396, 'ar', 33, 'menuchild', 'Ù„ÙŠÙ†Ùƒ Ø§Ø­Ù…Ø¯ 1', ''),
(397, 'ar', 34, 'menuchild', 'Ù„ÙŠÙ†Ùƒ Ø§Ø­Ù…Ø¯ 2', ''),
(398, 'ar', 19, 'menu', 'Ù‚Ø§Ø¦Ù…Ø© Ø¬Ø§Ù†Ø¨ÙŠØ© 1', ''),
(399, 'ar', 21, 'menu', 'Ù‚Ø§Ø¦Ù…Ø© Ø¬Ø§Ù†Ø¨ÙŠØ© 3', ''),
(400, 'ar', 22, 'menu', 'Ù‚Ø§Ø¦Ù…Ø© Ø¬Ø§Ù†Ø¨ÙŠØ© 2', ''),
(401, 'ar', 9, 'menuchild', 'Ø§Ù„Ø±Ø¦ÙŠØ³ÙŠØ©', ''),
(402, 'ar', 31, 'menu', 'Ù‚Ø§Ø¦Ù…Ø© 1', ''),
(403, 'ar', 32, 'menu', 'Ù‚Ø§Ø¦Ù…Ø© 2', ''),
(404, 'ar', 4, 'menuchild', 'Ø§ØªØµÙ„ Ø¨Ù†Ø§', ''),
(405, 'ar', 33, 'menu', 'Ø§Ù„Ø®Ø¯Ù…Ø§Øª', ''),
(406, 'ar', 35, 'menuchild', 'Ø®Ø¯Ù…Ø§Øª Ø§Ù„Ø§Ø³ØªØ¶Ø§ÙØ©', ''),
(407, 'ar', 36, 'menuchild', 'Ø¨Ø±Ù†Ø§Ù…Ø¬ ØªØ±Ø§ÙƒØ³ÙŠØ¯ Ù„Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø´Ø±ÙƒØ§Øª', ''),
(408, 'ar', 37, 'menuchild', 'Ø®Ø¯Ù…Ø§Øª Ø§Ù„Ù†Ø·Ø§Ù‚Ø§Øª', ''),
(418, 'ar', 58, 'newsSection', 'Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø§ÙˆÙ„ ', 'a:4:{s:14:"sectionDescrip";s:177:"Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø§ÙˆÙ„  Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø§ÙˆÙ„ Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø§ÙˆÙ„ Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø§ÙˆÙ„ Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø§ÙˆÙ„ Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø§ÙˆÙ„ Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø§ÙˆÙ„ Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø§ÙˆÙ„ ";s:15:"sectionMetadisc";s:39:"Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø§ÙˆÙ„ Ù…ÙŠØªØ§ Ø¯ÙŠØ³Ùƒ";s:14:"sectionMetakey";s:35:"Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø§ÙˆÙ„ Ù…ÙŠØªØ§ ÙƒÙŠ";s:11:"sectionTags";s:30:"Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø§ÙˆÙ„ ØªØ§Ø¬Ø²";}'),
(419, 'ar', 59, 'newsSection', 'Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø«Ø§Ù†ÙŠ', 'a:4:{s:14:"sectionDescrip";s:216:"Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø«Ø§Ù†ÙŠ Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø«Ø§Ù†ÙŠ Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø«Ø§Ù†ÙŠ Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø«Ø§Ù†ÙŠ Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø«Ø§Ù†ÙŠ Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø«Ø§Ù†ÙŠ Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø«Ø§Ù†ÙŠ Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø«Ø§Ù†ÙŠ Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø«Ø§Ù†ÙŠ ";s:15:"sectionMetadisc";s:41:"Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø«Ø§Ù†ÙŠ Ù…ÙŠØªØ§ Ø¯ÙŠØ³Ùƒ";s:14:"sectionMetakey";s:37:"Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø«Ø§Ù†ÙŠ Ù…ÙŠØªØ§ ÙƒÙŠ";s:11:"sectionTags";s:32:"Ø§Ù„Ù‚Ø³Ù… Ø§Ù„Ø«Ø§Ù†ÙŠ ØªØ§Ø¬Ø²";}'),
(420, 'ar', 8, 'newsContent', 'Ø®Ø¨Ø± Ø¬Ø¯ÙŠØ¯ Ø¨Ø§Ù„Ø¹Ø±Ø¨ÙŠ', 'a:5:{s:9:"newsBrief";s:24:"Ø®Ø¨Ø± Ø¬Ø¯ÙŠØ¯ Ø¨Ø±ÙŠÙ";s:11:"newsContent";s:26:"Ø®Ø¨Ø± Ø¬Ø¯ÙŠØ¯ Ù…Ø­ØªÙˆÙ‰";s:12:"newsMetadisc";s:24:"Ù…ÙŠØªØ§ Ø®Ø¨Ø± Ø¬Ø¯ÙŠØ¯";s:11:"newsMetakey";s:30:"ÙƒÙŠ ÙˆØ±Ø¯Ø² Ø®Ø¨Ø± Ø¬Ø¯ÙŠØ¯ ";s:8:"newsTags";s:26:"ØªØ§Ø¬Ø§Øª Ø®Ø¨Ø± Ø¬Ø¯ÙŠØ¯";}'),
(421, 'ar', 29, 'newsContent', 'Ù‚Ø«ØµÙ„Ø«Ù‚Ù„Ø«Ù‚Ù„ØµØ«Ù‚Ù„Ù‚Ø«', 'a:5:{s:9:"newsBrief";s:18:"Ù‚Ø«Ù„Ø«Ù‚Ù„Ø«Ù‚Ù„";s:11:"newsContent";s:16:"Ø«Ù‚Ù„Ø«Ù‚Ù„Ø«Ù‚";s:12:"newsMetadisc";s:0:"";s:11:"newsMetakey";s:0:"";s:8:"newsTags";s:0:"";}');

-- --------------------------------------------------------

--
-- Table structure for table `pagemanager`
--

CREATE TABLE IF NOT EXISTS `pagemanager` (
`id` int(11) NOT NULL,
  `pagetitle` varchar(255) COLLATE utf8_bin NOT NULL,
  `pagebrief` text COLLATE utf8_bin NOT NULL,
  `pagecontent` text COLLATE utf8_bin NOT NULL,
  `pagemetadisc` text COLLATE utf8_bin NOT NULL,
  `pagemetakey` text COLLATE utf8_bin NOT NULL,
  `pagetags` text COLLATE utf8_bin NOT NULL,
  `pagewriter` varchar(255) COLLATE utf8_bin NOT NULL,
  `pagepubdate` date NOT NULL,
  `status` int(11) NOT NULL,
  `pageprivacy` varchar(5) COLLATE utf8_bin NOT NULL,
  `pagerestrto` int(11) DEFAULT NULL,
  `pageattachment` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=84 ;

--
-- Dumping data for table `pagemanager`
--

INSERT INTO `pagemanager` (`id`, `pagetitle`, `pagebrief`, `pagecontent`, `pagemetadisc`, `pagemetakey`, `pagetags`, `pagewriter`, `pagepubdate`, `status`, `pageprivacy`, `pagerestrto`, `pageattachment`) VALUES
(12, 'Privacy Policy', 'We consider our clients as business partners not customers since our most important investment is good reputation and common success ,Thus we deal with high flexibility with our business partners to maintain good relations.', '<h2>PrivacyÂ Policy</h2>\r\n<p class="statement">Your privacy is critically important to us. At Automattic we have a few fundamental principles:</p>\r\n<ul>\r\n<li>We donâ€™t ask you for personal information unless we truly need it. (We canâ€™t stand services that ask you for things like your gender or income level for no apparent reason.)</li>\r\n<li>We donâ€™t share your personal information with anyone except to comply with the law, develop our products, or protect our rights.</li>\r\n<li>We donâ€™t store personal information on our servers unless required for the on-going operation of one of our services.</li>\r\n<li>In our blogging products, we aim to make it as simple as possible for you to control whatâ€™s visible to the public, seen by search engines, kept private, and permanently deleted.</li>\r\n</ul>\r\n<p>Below is our privacy policy which incorporates these goals: (Note, weâ€™ve decided to make this privacy policy available under a<a href="http://creativecommons.org/licenses/by-sa/2.5/">Creative Commons Sharealike</a> license, which means youâ€™re more than welcome to steal it and repurpose it for your own use, just make sure to replace references to us with ones to you, and if you want weâ€™d appreciate a link to Automattic.com somewhere on your site. We spent a lot of money and time on the below, and other people shouldnâ€™t need to do the same.)</p>\r\n<p>If you have questions about deleting or correcting your personal data please contact our <a href="http://en.support.wordpress.com/">support team</a>.</p>\r\n<p>Automattic Inc. (â€œ<strong>Automattic</strong>â€) operates several websites including <a href="http://automattic.com/">automattic.com</a>, <a href="http://wordpress.com/">wordpress.com</a>, <a href="http://gravatar.com/">gravatar.com</a>,<a href="http://intensedebate.com/">intensedebate.com</a>, and <a href="http://akismet.com/">akismet.com</a>. It is Automatticâ€™s policy to respect your privacy regarding any information we may collect while operating our websites.</p>\r\n<h3>Website Visitors</h3>\r\n<p>Like most website operators, Automattic collects non-personally-identifying information of the sort that web browsers and servers typically make available, such as the browser type, language preference, referring site, and the date and time of each visitor request. Automatticâ€™s purpose in collecting non-personally identifying information is to better understand how Automatticâ€™s visitors use its website. From time to time, Automattic may release non-personally-identifying information in the aggregate, e.g., by publishing a report on trends in the usage of its website.</p>\r\n<p>Automattic also collects potentially personally-identifying information like Internet Protocol (IP) addresses for logged in users and for users leaving comments on WordPress.com blogs. Automattic only discloses logged in user and commenter IP addresses under the same circumstances that it uses and discloses personally-identifying information as described below, except that blog commenter IP addresses and email addresses are visible and disclosed to the administrators of the blog where the comment was left.</p>\r\n<h3>Gathering of Personally-Identifying Information</h3>\r\n<p>Certain visitors to Automatticâ€™s websites choose to interact with Automattic in ways that require Automattic to gather personally-identifying information. The amount and type of information that Automattic gathers depends on the nature of the interaction. For example, we ask visitors who sign up for a blog at <a href="http://wordpress.com/">WordPress.com</a> to provide a username and email address. Those who engage in transactions with Automattic â€“ by purchasing access to the Akismet comment spam prevention service, for example â€“ are asked to provide additional information, including as necessary the personal and financial information required to process those transactions. In each case, Automattic collects such information only insofar as is necessary or appropriate to fulfill the purpose of the visitorâ€™s interaction with Automattic. Automattic does not disclose personally-identifying information other than as described below. And visitors can always refuse to supply personally-identifying information, with the caveat that it may prevent them from engaging in certain website-related activities.</p>\r\n<h3>Aggregated Statistics</h3>\r\n<p>Automattic may collect statistics about the behavior of visitors to its websites. For instance, Automattic may monitor the most popular blogs on the WordPress.com site or use spam screened by the Akismet service to help identify spam. Automattic may display this information publicly or provide it to others. However, Automattic does not disclose personally-identifying information other than as described below.</p>\r\n<h3>Protection of Certain Personally-Identifying Information</h3>\r\n<p>Automattic discloses potentially personally-identifying and personally-identifying information only to those of its employees, contractors and affiliated organizations that (i) need to know that information in order to process it on Automatticâ€™s behalf or to provide services available at Automatticâ€™s websites, and (ii) that have agreed not to disclose it to others. Some of those employees, contractors and affiliated organizations may be located outside of your home country; by using Automatticâ€™s websites, you consent to the transfer of such information to them. Automattic will not rent or sell potentially personally-identifying and personally-identifying information to anyone. Other than to its employees, contractors and affiliated organizations, as described above, Automattic discloses potentially personally-identifying and personally-identifying information only in response to a subpoena, court order or other governmental request, or when Automattic believes in good faith that disclosure is reasonably necessary to protect the property or rights of Automattic, third parties or the public at large. If you are a registered user of an Automattic website and have supplied your email address, Automattic may occasionally send you an email to tell you about new features, solicit your feedback, or just keep you up to date with whatâ€™s going on with Automattic and our products. We primarily use our various product blogs to communicate this type of information, so we expect to keep this type of email to a minimum. If you send us a request (for example via a support email or via one of our feedback mechanisms), we reserve the right to publish it in order to help us clarify or respond to your request or to help us support other users. Automattic takes all measures reasonably necessary to protect against the unauthorized access, use, alteration or destruction of potentially personally-identifying and personally-identifying information.</p>\r\n<h3>Cookies</h3>\r\n<p>A cookie is a string of information that a website stores on a visitorâ€™s computer, and that the visitorâ€™s browser provides to the website each time the visitor returns. Automattic uses cookies to help Automattic identify and track visitors, their usage of Automattic website, and their website access preferences. Automattic visitors who do not wish to have cookies placed on their computers should set their browsers to refuse cookies before using Automatticâ€™s websites, with the drawback that certain features of Automatticâ€™s websites may not function properly without the aid of cookies.</p>\r\n<h3>Business Transfers</h3>\r\n<p>If Automattic, or substantially all of its assets, were acquired, or in the unlikely event that Automattic goes out of business or enters bankruptcy, user information would be one of the assets that is transferred or acquired by a third party. You acknowledge that such transfers may occur, and that any acquirer of Automattic may continue to use your personal information as set forth in this policy.</p>\r\n<h3>Ads</h3>\r\n<p>Ads appearing on any of our websites may be delivered to users by advertising partners, who may set cookies. These cookies allow the ad server to recognize your computer each time they send you an online advertisement to compile information about you or others who use your computer. This information allows ad networks to, among other things, deliver targeted advertisements that they believe will be of most interest to you. This Privacy Policy covers the use of cookies by Automattic and does not cover the use of cookies by any advertisers.</p>\r\n<h3>Comments</h3>\r\n<p>Comments and other content submitted to our Akismet anti-spam service are not saved on our servers unless they were marked as false positives, in which case we store them long enough to use them to improve the service to avoid future false positives.</p>\r\n<h3>Privacy Policy Changes</h3>\r\n<p>Although most changes are likely to be minor, Automattic may change its Privacy Policy from time to time, and in Automatticâ€™s sole discretion. Automattic encourages visitors to frequently check this page for any changes to its Privacy Policy. If you have a WordPress.com account, you should also check your blogâ€™s dashboard for alerts to these changes. Your continued use of this site after any change in this Privacy Policy will constitute your acceptance of such change.</p>\r\n<p><strong>Change log:</strong></p>\r\n<ul>\r\n<li><em>September 18, 2013:</em>Â  Added that blog commenter email addresses are disclosed to administrators of the blog where the comment was left.</li>\r\n<li><em>February 1, 2011:</em> Clarified subpoena language and added Business Transfers paragraph</li>\r\n<li><em>January 3, 2011:</em> Added court order and subpoena clarification</li>\r\n<li><em>July 1, 2010:</em> Revised paragraph about IP addresses to explain when they are collected and that commenter IPs are visible to blog administrators</li>\r\n<li><em>October 29, 2009:</em> Added Comments paragraph to explain Akismet comment storage policy</li>\r\n<li><em>March 10, 2009:</em> Added Ads paragraph to alert users that ads from third parties may use cookies</li>\r\n</ul>', '', '', '', 'Mohamed g', '0000-00-00', 0, 'ris', 3, ''),
(43, 'PHP - english', 'We consider our clients as business partners not customers since our most important investment is good reputation and common success ,Thus we deal with high flexibility with our business partners to maintain good relations.', '&lt;h3&gt;&lt;span id=&quot;PHP_3_and_4&quot; class=&quot;mw-headline&quot;&gt;PHP 3 and 4&lt;/span&gt;&lt;span class=&quot;mw-editsection&quot;&gt;&lt;span class=&quot;mw-editsection-bracket&quot;&gt;[&lt;/span&gt;&lt;a title=&quot;Edit section: PHP 3 and 4&quot; href=&quot;https://en.wikipedia.org/w/index.php?title=PHP&amp;amp;action=edit&amp;amp;section=3&quot;&gt;edit&lt;/a&gt;&lt;span class=&quot;mw-editsection-bracket&quot;&gt;]&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p&gt;&lt;a title=&quot;Zeev Suraski&quot; href=&quot;https://en.wikipedia.org/wiki/Zeev_Suraski&quot;&gt;Zeev Suraski&lt;/a&gt; and &lt;a title=&quot;Andi Gutmans&quot; href=&quot;https://en.wikipedia.org/wiki/Andi_Gutmans&quot;&gt;Andi Gutmans&lt;/a&gt; rewrote the &lt;a class=&quot;mw-redirect&quot; title=&quot;Parser&quot; href=&quot;https://en.wikipedia.org/wiki/Parser&quot;&gt;parser&lt;/a&gt; in 1997 and formed the base of PHP 3, changing the language''s name to the &lt;a title=&quot;Recursive acronym&quot; href=&quot;https://en.wikipedia.org/wiki/Recursive_acronym&quot;&gt;recursive acronym&lt;/a&gt; &lt;em&gt;PHP: Hypertext Preprocessor&lt;/em&gt;.&lt;sup id=&quot;cite_ref-about_PHP_5-2&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-about_PHP-5&quot;&gt;[5]&lt;/a&gt;&lt;/sup&gt; Afterwards, public testing of PHP 3 began, and the official launch came in June 1998. Suraski and Gutmans then started a new &lt;a title=&quot;Rewrite (programming)&quot; href=&quot;https://en.wikipedia.org/wiki/Rewrite_(programming)&quot;&gt;rewrite&lt;/a&gt; of PHP''s core, producing the &lt;a title=&quot;Zend Engine&quot; href=&quot;https://en.wikipedia.org/wiki/Zend_Engine&quot;&gt;Zend Engine&lt;/a&gt; in 1999.&lt;sup id=&quot;cite_ref-19&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-19&quot;&gt;[19]&lt;/a&gt;&lt;/sup&gt; They also founded &lt;a title=&quot;Zend Technologies&quot; href=&quot;https://en.wikipedia.org/wiki/Zend_Technologies&quot;&gt;Zend Technologies&lt;/a&gt; in &lt;a title=&quot;Ramat Gan&quot; href=&quot;https://en.wikipedia.org/wiki/Ramat_Gan&quot;&gt;Ramat Gan&lt;/a&gt;, Israel.&lt;sup id=&quot;cite_ref-about_PHP_5-3&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-about_PHP-5&quot;&gt;[5]&lt;/a&gt;&lt;/sup&gt;&lt;/p&gt;\r\n&lt;p&gt;On May 22, 2000, PHP 4, powered by the Zend Engine 1.0, was released.&lt;sup id=&quot;cite_ref-about_PHP_5-4&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-about_PHP-5&quot;&gt;[5]&lt;/a&gt;&lt;/sup&gt; As of August 2008 this branch reached version 4.4.9. PHP 4 is no longer under development nor will any security updates be released.&lt;sup id=&quot;cite_ref-2007_news_20-0&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-2007_news-20&quot;&gt;[20]&lt;/a&gt;&lt;/sup&gt;&lt;sup id=&quot;cite_ref-21&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-21&quot;&gt;[21]&lt;/a&gt;&lt;/sup&gt;&lt;/p&gt;\r\n&lt;h3&gt;&lt;span id=&quot;PHP_5&quot; class=&quot;mw-headline&quot;&gt;PHP 5&lt;/span&gt;&lt;span class=&quot;mw-editsection&quot;&gt;&lt;span class=&quot;mw-editsection-bracket&quot;&gt;[&lt;/span&gt;&lt;a title=&quot;Edit section: PHP 5&quot; href=&quot;https://en.wikipedia.org/w/index.php?title=PHP&amp;amp;action=edit&amp;amp;section=4&quot;&gt;edit&lt;/a&gt;&lt;span class=&quot;mw-editsection-bracket&quot;&gt;]&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p&gt;On July 13, 2004, PHP 5 was released, powered by the new Zend Engine II.&lt;sup id=&quot;cite_ref-about_PHP_5-5&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-about_PHP-5&quot;&gt;[5]&lt;/a&gt;&lt;/sup&gt; PHP 5 included new features such as improved support for &lt;a title=&quot;Object-oriented programming&quot; href=&quot;https://en.wikipedia.org/wiki/Object-oriented_programming&quot;&gt;object-oriented programming&lt;/a&gt;, the PHP Data Objects (PDO) extension (which defines a lightweight and consistent interface for accessing databases), and numerous performance enhancements.&lt;sup id=&quot;cite_ref-22&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-22&quot;&gt;[22]&lt;/a&gt;&lt;/sup&gt; In 2008 PHP 5 became the only stable version under development. &lt;a class=&quot;mw-redirect&quot; title=&quot;Late static binding&quot; href=&quot;https://en.wikipedia.org/wiki/Late_static_binding&quot;&gt;Late static binding&lt;/a&gt; had been missing from PHP and was added in version 5.3.&lt;sup id=&quot;cite_ref-23&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-23&quot;&gt;[23]&lt;/a&gt;&lt;/sup&gt;&lt;sup id=&quot;cite_ref-24&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-24&quot;&gt;[24]&lt;/a&gt;&lt;/sup&gt;&lt;/p&gt;\r\n&lt;p&gt;Many high-profile open-source projects ceased to support PHP 4 in new code as of February 5, 2008, because of the GoPHP5 initiative,&lt;sup id=&quot;cite_ref-gophp5_projects_25-0&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-gophp5_projects-25&quot;&gt;[25]&lt;/a&gt;&lt;/sup&gt; provided by a consortium of PHP developers promoting the transition from PHP 4 to PHP 5.&lt;sup id=&quot;cite_ref-gophp5_26-0&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-gophp5-26&quot;&gt;[26]&lt;/a&gt;&lt;/sup&gt;&lt;sup id=&quot;cite_ref-27&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-27&quot;&gt;[27]&lt;/a&gt;&lt;/sup&gt;&lt;/p&gt;\r\n&lt;p&gt;Over time, PHP interpreters became available on most existing &lt;a title=&quot;32-bit&quot; href=&quot;https://en.wikipedia.org/wiki/32-bit&quot;&gt;32-bit&lt;/a&gt; and &lt;a class=&quot;mw-redirect&quot; title=&quot;64-bit&quot; href=&quot;https://en.wikipedia.org/wiki/64-bit&quot;&gt;64-bit&lt;/a&gt; operating systems, either by building them from the PHP source code, or by using pre-built binaries.&lt;sup id=&quot;cite_ref-28&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-28&quot;&gt;[28]&lt;/a&gt;&lt;/sup&gt; For the PHP versions 5.3 and 5.4, the only available &lt;a title=&quot;Microsoft Windows&quot; href=&quot;https://en.wikipedia.org/wiki/Microsoft_Windows&quot;&gt;Microsoft Windows&lt;/a&gt; binary distributions were 32-bit &lt;a title=&quot;X86&quot; href=&quot;https://en.wikipedia.org/wiki/X86&quot;&gt;x86&lt;/a&gt; builds,&lt;sup id=&quot;cite_ref-29&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-29&quot;&gt;[29]&lt;/a&gt;&lt;/sup&gt;&lt;sup id=&quot;cite_ref-30&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-30&quot;&gt;[30]&lt;/a&gt;&lt;/sup&gt; requiring Windows 32-bit compatibility mode while using &lt;a title=&quot;Internet Information Services&quot; href=&quot;https://en.wikipedia.org/wiki/Internet_Information_Services&quot;&gt;Internet Information Services&lt;/a&gt; (IIS) on a 64-bit Windows platform. PHP version 5.5 made the 64-bit &lt;a title=&quot;X86-64&quot; href=&quot;https://en.wikipedia.org/wiki/X86-64&quot;&gt;x86-64&lt;/a&gt; builds available for Microsoft Windows.&lt;sup id=&quot;cite_ref-31&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-31&quot;&gt;[31]&lt;/a&gt;&lt;/sup&gt;&lt;/p&gt;\r\n&lt;h3&gt;&lt;span id=&quot;PHP_6_and_Unicode&quot; class=&quot;mw-headline&quot;&gt;&lt;span id=&quot;PHP6-UNICODE&quot;&gt;&lt;/span&gt;PHP 6 and Unicode&lt;/span&gt;&lt;span class=&quot;mw-editsection&quot;&gt;&lt;span class=&quot;mw-editsection-bracket&quot;&gt;[&lt;/span&gt;&lt;a title=&quot;Edit section: PHP 6 and Unicode&quot; href=&quot;https://en.wikipedia.org/w/index.php?title=PHP&amp;amp;action=edit&amp;amp;section=5&quot;&gt;edit&lt;/a&gt;&lt;span class=&quot;mw-editsection-bracket&quot;&gt;]&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p&gt;PHP received mixed reviews due to lacking native &lt;a title=&quot;Unicode&quot; href=&quot;https://en.wikipedia.org/wiki/Unicode&quot;&gt;Unicode&lt;/a&gt; support at the core language level.&lt;sup id=&quot;cite_ref-32&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-32&quot;&gt;[32]&lt;/a&gt;&lt;/sup&gt;&lt;sup id=&quot;cite_ref-33&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-33&quot;&gt;[33]&lt;/a&gt;&lt;/sup&gt; In 2005, a project headed by Andrei Zmievski was initiated to bring native Unicode support throughout PHP, by embedding the&lt;a title=&quot;International Components for Unicode&quot; href=&quot;https://en.wikipedia.org/wiki/International_Components_for_Unicode&quot;&gt;International Components for Unicode&lt;/a&gt; (ICU) library, and representing text strings as &lt;a title=&quot;UTF-16&quot; href=&quot;https://en.wikipedia.org/wiki/UTF-16&quot;&gt;UTF-16&lt;/a&gt; internally.&lt;sup id=&quot;cite_ref-34&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-34&quot;&gt;[34]&lt;/a&gt;&lt;/sup&gt; Since this would cause major changes both to the internals of the language and to user code, it was planned to release this as version 6.0 of the language, along with other major features then in development.&lt;sup id=&quot;cite_ref-35&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-35&quot;&gt;[35]&lt;/a&gt;&lt;/sup&gt;&lt;/p&gt;\r\n&lt;p&gt;However, a shortage of developers who understood the necessary changes, and performance problems arising from conversion to and from UTF-16, which is rarely used in a web context, led to delays in the project.&lt;sup id=&quot;cite_ref-36&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-36&quot;&gt;[36]&lt;/a&gt;&lt;/sup&gt; As a result, a PHP 5.3 release was created in 2009, with many non-Unicode features back-ported from PHP&amp;nbsp;6, notably namespaces. In March 2010, the project in its current form was officially abandoned, and a PHP&amp;nbsp;5.4 release was prepared containing most remaining non-Unicode features from PHP&amp;nbsp;6, such as traits and closure re-binding.&lt;sup id=&quot;cite_ref-37&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-37&quot;&gt;[37]&lt;/a&gt;&lt;/sup&gt; Initial hopes were that a new plan would be formed for Unicode integration, but as of 2014 none has been adopted.&lt;/p&gt;\r\n&lt;h3&gt;&lt;span id=&quot;PHP_7&quot; class=&quot;mw-headline&quot;&gt;&lt;span id=&quot;NG&quot;&gt;&lt;/span&gt;&lt;span id=&quot;ZE3&quot;&gt;&lt;/span&gt;&lt;span id=&quot;PHP7&quot;&gt;&lt;/span&gt;PHP 7&lt;/span&gt;&lt;span class=&quot;mw-editsection&quot;&gt;&lt;span class=&quot;mw-editsection-bracket&quot;&gt;[&lt;/span&gt;&lt;a title=&quot;Edit section: PHP 7&quot; href=&quot;https://en.wikipedia.org/w/index.php?title=PHP&amp;amp;action=edit&amp;amp;section=6&quot;&gt;edit&lt;/a&gt;&lt;span class=&quot;mw-editsection-bracket&quot;&gt;]&lt;/span&gt;&lt;/span&gt;&lt;/h3&gt;\r\n&lt;p&gt;As of 2015, work is underway on a new major PHP version numbered PHP&amp;nbsp;7. The numbering of this version involved some debate.&lt;sup id=&quot;cite_ref-38&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-38&quot;&gt;[38]&lt;/a&gt;&lt;/sup&gt; While the PHP&amp;nbsp;6 Unicode experiment had never been released, several articles and book titles referenced the PHP&amp;nbsp;6 name, which might have caused confusion if a new release were to reuse the name.&lt;sup id=&quot;cite_ref-39&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-39&quot;&gt;[39]&lt;/a&gt;&lt;/sup&gt; After a vote, the name PHP&amp;nbsp;7 was chosen.&lt;sup id=&quot;cite_ref-40&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-40&quot;&gt;[40]&lt;/a&gt;&lt;/sup&gt;&lt;/p&gt;\r\n&lt;p&gt;PHP&amp;nbsp;7 gets its foundations from an experimental PHP &lt;a class=&quot;mw-redirect&quot; title=&quot;Branching (revision control)&quot; href=&quot;https://en.wikipedia.org/wiki/Branching_(revision_control)&quot;&gt;branch&lt;/a&gt; that was originally named &lt;em&gt;phpng&lt;/em&gt; (&lt;em&gt;PHP next generation&lt;/em&gt;), which aims at optimizing PHP performance by refactoring the Zend Engine while retaining near-complete language compatibility.&lt;sup id=&quot;cite_ref-41&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-41&quot;&gt;[41]&lt;/a&gt;&lt;/sup&gt; As of 14 July 2014, &lt;a title=&quot;WordPress&quot; href=&quot;https://en.wikipedia.org/wiki/WordPress&quot;&gt;WordPress&lt;/a&gt;-based benchmarks, which serve as the main benchmark suite for the phpng project, show an almost 100% increase in performance. Changes from phpng are also expected to make it easier to improve performance in the future, as more compact data structures and other changes are seen as better suited for a successful migration to a &lt;a title=&quot;Just-in-time compilation&quot; href=&quot;https://en.wikipedia.org/wiki/Just-in-time_compilation&quot;&gt;just-in-time&lt;/a&gt; (JIT) compiler.&lt;sup id=&quot;cite_ref-phpng_42-0&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-phpng-42&quot;&gt;[42]&lt;/a&gt;&lt;/sup&gt; Because of the significant changes, this reworked Zend Engine will be called &lt;em&gt;Zend Engine&amp;nbsp;3&lt;/em&gt;, succeeding the Zend Engine&amp;nbsp;2 used in PHP&amp;nbsp;5.&lt;sup id=&quot;cite_ref-ZE2_43-0&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-ZE2-43&quot;&gt;[43]&lt;/a&gt;&lt;/sup&gt;&lt;/p&gt;\r\n&lt;p&gt;Because of phpng''s major internal changes, it would have to go into a new &lt;a title=&quot;Software versioning&quot; href=&quot;https://en.wikipedia.org/wiki/Software_versioning&quot;&gt;major version&lt;/a&gt; of PHP, rather than a minor 5.x release, according to PHP''s release process,&lt;sup id=&quot;cite_ref-releaseprocess_44-0&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-releaseprocess-44&quot;&gt;[44]&lt;/a&gt;&lt;/sup&gt; thus spawning PHP 7. Major versions of PHP are allowed to break code backwards-compatibility, and so PHP 7 presented an opportunity to make other improvements beyond phpng that require backwards-compatibility breaks. In particular, the following backwards-compatibility breaks were made:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Many &quot;fatal&quot; or &quot;recoverable&quot;-level legacy PHP &quot;errors&quot; were replaced with modern object-oriented &lt;a class=&quot;mw-redirect&quot; title=&quot;Exception (computer science)&quot; href=&quot;https://en.wikipedia.org/wiki/Exception_(computer_science)&quot;&gt;exceptions&lt;/a&gt;&lt;sup id=&quot;cite_ref-engine_exceptions_45-0&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-engine_exceptions-45&quot;&gt;[45]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;\r\n&lt;li&gt;The syntax for variable dereferencing was reworked to be more internally consistent and complete, allowing the use of &lt;code&gt;-&amp;gt;&lt;/code&gt;, &lt;code&gt;[]&lt;/code&gt;, &lt;code&gt;()&lt;/code&gt;, &lt;code&gt;{}&lt;/code&gt;, and &lt;code&gt;::&lt;/code&gt; operators with arbitrary meaningful left-hand-side expressions&lt;sup id=&quot;cite_ref-uvs_46-0&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-uvs-46&quot;&gt;[46]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;\r\n&lt;li&gt;Support for legacy PHP 4-style constructor methods was deprecated&lt;sup id=&quot;cite_ref-47&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-47&quot;&gt;[47]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;\r\n&lt;li&gt;The behaviour of the &lt;a title=&quot;Foreach loop&quot; href=&quot;https://en.wikipedia.org/wiki/Foreach_loop&quot;&gt;&lt;code&gt;foreach&lt;/code&gt; statement&lt;/a&gt; was changed to be more predictable&lt;sup id=&quot;cite_ref-48&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-48&quot;&gt;[48]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;\r\n&lt;li&gt;Constructors for the few classes built-in to PHP which returned null upon failure were changed to throw an exception instead, for consistency&lt;sup id=&quot;cite_ref-49&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-49&quot;&gt;[49]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;\r\n&lt;li&gt;Several unmaintained or deprecated &lt;a title=&quot;Server Application Programming Interface&quot; href=&quot;https://en.wikipedia.org/wiki/Server_Application_Programming_Interface&quot;&gt;SAPIs&lt;/a&gt; and extensions were removed from the PHP core, most notably the legacy &lt;code&gt;mysql&lt;/code&gt; extension&lt;sup id=&quot;cite_ref-50&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-50&quot;&gt;[50]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;\r\n&lt;li&gt;The behaviour of the &lt;code&gt;list()&lt;/code&gt; operator was changed to remove support for strings&lt;sup id=&quot;cite_ref-51&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-51&quot;&gt;[51]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;\r\n&lt;li&gt;Support for legacy ASP-style PHP code delimeters (&lt;code&gt;&amp;lt;%&lt;/code&gt; and &lt;code&gt;%&amp;gt;&lt;/code&gt;, &lt;code&gt;&amp;lt;script language=php&amp;gt;&lt;/code&gt; and &lt;code&gt;&amp;lt;/script&amp;gt;&lt;/code&gt;) was removed&lt;sup id=&quot;cite_ref-52&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-52&quot;&gt;[52]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;\r\n&lt;li&gt;An oversight allowing a &lt;a title=&quot;Switch statement&quot; href=&quot;https://en.wikipedia.org/wiki/Switch_statement&quot;&gt;switch statement&lt;/a&gt; to have multiple &lt;code&gt;default&lt;/code&gt; clauses was fixed&lt;sup id=&quot;cite_ref-53&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-53&quot;&gt;[53]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;\r\n&lt;li&gt;Support for hexadecimal number support in some implicit conversions from strings to number types was removed&lt;sup id=&quot;cite_ref-54&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-54&quot;&gt;[54]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;\r\n&lt;li&gt;The &lt;a class=&quot;mw-redirect&quot; title=&quot;Left-shift operator&quot; href=&quot;https://en.wikipedia.org/wiki/Left-shift_operator&quot;&gt;left-shift&lt;/a&gt; and &lt;a class=&quot;mw-redirect&quot; title=&quot;Right-shift operator&quot; href=&quot;https://en.wikipedia.org/wiki/Right-shift_operator&quot;&gt;right-shift&lt;/a&gt; operators were changed to behave more consistently across platforms&lt;sup id=&quot;cite_ref-integer_semantics_55-0&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-integer_semantics-55&quot;&gt;[55]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;\r\n&lt;li&gt;Conversions between integers and floating point numbers were tightened and made more consistent across platforms&lt;sup id=&quot;cite_ref-integer_semantics_55-1&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-integer_semantics-55&quot;&gt;[55]&lt;/a&gt;&lt;/sup&gt;&lt;sup id=&quot;cite_ref-56&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-56&quot;&gt;[56]&lt;/a&gt;&lt;/sup&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;PHP&amp;nbsp;7 also includes new language features. Most notably, it introduces return type declarations for functions,&lt;sup id=&quot;cite_ref-return-types_57-0&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-return-types-57&quot;&gt;[57]&lt;/a&gt;&lt;/sup&gt; which complement the existing parameter type declarations, and support for the scalar types (integer, float, string, and boolean) in parameter and return type declarations.&lt;sup id=&quot;cite_ref-scalar-types_58-0&quot; class=&quot;reference&quot;&gt;&lt;a href=&quot;https://en.wikipedia.org/wiki/PHP#cite_note-scalar-types-58&quot;&gt;[58]&lt;/a&gt;&lt;/sup&gt;&lt;/p&gt;', 'php history', 'php php php ', 'php', 'Mina Atif said', '0000-00-00', 1, 'pub', 0, '760457638.pdf'),
(54, 'mina is hereeeeee qwewefwe', 'We consider our clients as business partners not customers since our most important investment is good reputation and common success ,Thus we deal with high flexibility with our business partners to maintain good relations.', '&lt;p&gt;mina is here qweqwd&lt;/p&gt;', '', '', '', '', '0000-00-00', 0, 'pub', 0, ''),
(81, 'How to Forcefully Clear the Print Queue in Windows', 'This can happen for a number of reasons. Letâ€™s say you tried to print something a few hours back, but the printer was off. You ended up not needing the document and you forgot about it. Then you come back and try to print. The print job is added to the queue and if the previous job didnâ€™t get removed automatically, it will be behind that print job that never got printed', '&lt;div class=&quot;entry-content&quot;&gt;\r\n&lt;div class=&quot;adsense-block-wrap&quot;&gt;&amp;nbsp;Have you ever run into the situation where you try to print something and nothing happens? You wait for it to print, but the job doesn&amp;rsquo;t go through? There are a ton of reasons why a print job may not actually print, but one of the common causes is that the printer queue has a stuck print job.&lt;/div&gt;\r\n&lt;div class=&quot;KonaBody&quot;&gt;\r\n&lt;p&gt;This can happen for a number of reasons. Let&amp;rsquo;s say you tried to print something a few hours back, but the printer was off. You ended up not needing the document and you forgot about it. Then you come back and try to print. The print job is added to the queue and if the previous job didn&amp;rsquo;t get removed&amp;nbsp;automatically, it will be behind that print job that never got printed.&lt;/p&gt;\r\n&lt;p&gt;Sometimes you can manually go in and delete the print job, but sometimes you just can&amp;rsquo;t get rid of it! In this type of case, you have to clear the print queue manually. In this article, I&amp;rsquo;ll show you the steps to clear the print queue.&lt;/p&gt;\r\n&lt;h2&gt;Clear Print Queue in Windows&lt;/h2&gt;\r\n&lt;p&gt;In order to get the printing services back up and running, follow these steps:&lt;/p&gt;\r\n&lt;p&gt;1. Go to Start, Control Panel and &lt;strong&gt;Administrative Tools&lt;/strong&gt;. Double click on &lt;strong&gt;Services&lt;/strong&gt; icon.&lt;/p&gt;\r\n&lt;p&gt;&lt;a href=&quot;http://onlinetechtipscom.c.presscdn.com/wp-content/uploads/2007/03/services.png&quot;&gt;&lt;img class=&quot;lazy size-full wp-image-54343 aligncenter&quot; title=&quot;services&quot; src=&quot;http://onlinetechtipscom.c.presscdn.com/wp-content/uploads/2007/03/services.png&quot; alt=&quot;&quot; width=&quot;323&quot; height=&quot;232&quot; data-original=&quot;http://onlinetechtipscom.c.presscdn.com/wp-content/uploads/2007/03/services.png&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;2. Scroll down to the &lt;strong&gt;Print Spooler&lt;/strong&gt; service and right click on it and select &lt;strong&gt;Stop&lt;/strong&gt;. In order to do this, you need to be logged in as Administrator. At this point, no one will be able to print anything on any of the printers that are being hosted on this server.&lt;/p&gt;\r\n&lt;p&gt;&lt;a href=&quot;http://onlinetechtipscom.c.presscdn.com/wp-content/uploads/2007/03/print-spooler.png&quot;&gt;&lt;img class=&quot;lazy size-full wp-image-54344 aligncenter&quot; title=&quot;print spooler&quot; src=&quot;http://onlinetechtipscom.c.presscdn.com/wp-content/uploads/2007/03/print-spooler.png&quot; alt=&quot;&quot; width=&quot;343&quot; height=&quot;231&quot; data-original=&quot;http://onlinetechtipscom.c.presscdn.com/wp-content/uploads/2007/03/print-spooler.png&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;3. Next you need to go to the following directory: &lt;strong&gt;C:\\WINDOWS\\System32\\spool\\PRINTERS&lt;/strong&gt;. You can also type &lt;strong&gt;%windir%\\System32\\spool\\PRINTERS&lt;/strong&gt; into the address bar in Explorer if the C drive is not the default Windows partition.&amp;nbsp;Delete all the files in this folder.&lt;/p&gt;\r\n&lt;p&gt;This will clear all print queues (If you&amp;rsquo;re doing this on a server, it&amp;rsquo;s a good idea to first make sure there are no other print jobs being processed for&amp;nbsp;any of the other printers on the server because doing this step will delete those jobs also).&lt;/p&gt;\r\n&lt;p&gt;&lt;a href=&quot;http://onlinetechtipscom.c.presscdn.com/wp-content/uploads/2007/03/print-queue-clear.png&quot;&gt;&lt;img class=&quot;lazy size-full wp-image-54345 aligncenter&quot; title=&quot;print queue clear&quot; src=&quot;http://onlinetechtipscom.c.presscdn.com/wp-content/uploads/2007/03/print-queue-clear.png&quot; alt=&quot;&quot; width=&quot;569&quot; height=&quot;238&quot; data-original=&quot;http://onlinetechtipscom.c.presscdn.com/wp-content/uploads/2007/03/print-queue-clear.png&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;4. Now you can go back to the Services console and right-click and choose &lt;strong&gt;Start&lt;/strong&gt; for the Print Spooler service!&lt;/p&gt;\r\n&lt;p&gt;At this point, you should be able to print without a problem. If you prefer to use a script, i.e. for a server, then you can create a batch file with the commands below or just type them into the command prompt:&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;net stop spooler&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;del %systemroot%\\System32\\spool\\printers\\* /Q /F /S&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;net start spooler&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;The first and third commands are fairly obvious: they stop and start the print spooler service. The middle command deletes everything in the printers folder and the /Q is for quiet mode, which means you won&amp;rsquo;t get a prompt asking if you want to delete each file. /F will force delete all read-only files and /S will delete any subdirectories if those exist. Deleting content from this folder can never harm your computer, so don&amp;rsquo;t worry if you see some files or folders and aren&amp;rsquo;t sure waht they are for.&lt;/p&gt;\r\n&lt;p&gt;You can read my previous post if you want to know how to &lt;a href=&quot;http://www.online-tech-tips.com/computer-tips/create-windows-batch-files/&quot; target=&quot;_blank&quot;&gt;create a batch file&lt;/a&gt;. Then all you have to do is run the batch file anytime you want to clear out the print queue. Luckily, the procedure for clearing out the print queue is the same for Windows 8, Windows 7, Vista, and XP.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;', '', '', '', 'Mina Atif said', '0000-00-00', 1, 'pub', 0, ' '),
(82, 'MiNative company', 'MiNative company is designated by its eagerness to provide new products and services with the best technologies and in the best ways. The company management has been working in the field of information technology since 2006 and it has a long experience in managing and establishing companies but to say the truth, anyone&#39;s future is dependent on being self employed and the best means to success is the availability of sufficient knowledge and expertise to run such companies.', '&lt;p&gt;Is an Egyptian company registered at the Ministry of Investment to practice commercial and information technology activities as well as import and export.&lt;/p&gt;\r\n&lt;p&gt;MiNative company is designated by its eagerness to provide new products and services with the best technologies and in the best ways. The company management has been working in the field of information technology since 2006 and it has a long experience in managing and establishing companies but to say the truth, anyone''s future is dependent on being self employed and the best means to success is the availability of sufficient knowledge and expertise to run such companies.&lt;/p&gt;\r\n&lt;p&gt;MiNative entered the field of commerce, import and export in the beginning of 2015 but this wasn''t a spur of the moment decision, it was actually the product of three years of planning.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Why MiNative?&lt;/p&gt;\r\n&lt;p&gt;MiNative has full capabilities that qualify it to spread widely over the next three years whether in the field of information technology and software or in the field of commerce , import and export, and not only these fields but also in other fields we''re currently planning to start exploring after the current services have been stabilized.&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Most notably is that MiNative under the title of '' MiNative for commerce and information technology'' is the new name for the company starting 2015.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;MiNative team:&lt;/p&gt;\r\n&lt;p&gt;MiNative team consists of the best engineers and experts in the field of information technology, commerce, import and export, in addition to legal consultants, a team of technical support agents and a full team of customer service agents to offer our clients services on the highest levels of professionalism and advancement.&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Founder and CEO word:&lt;/p&gt;\r\n&lt;p&gt;''MiNative is a dream I had been having for over 10 long years during which I worked in the field of information technology. I have nothing to fear in the future because I''m convinced that Allah''s will is what moves us forward but our choices are what shows us the end of the road. MiNative is opening its arms for all investors and international factories to enter the Egyptian market through it by providing the best support for them and their products ... MiNative &quot;Towards a Better Tomorrow&quot;.''&lt;/p&gt;', 'about minative company', 'about,minative,company', 'about,minative,company', 'Mina Atif said', '2015-11-30', 1, 'pub', 0, ' ');
INSERT INTO `pagemanager` (`id`, `pagetitle`, `pagebrief`, `pagecontent`, `pagemetadisc`, `pagemetakey`, `pagetags`, `pagewriter`, `pagepubdate`, `status`, `pageprivacy`, `pagerestrto`, `pageattachment`) VALUES
(83, 'MiNative CMS - Company management system', 'MiNative CMS - Company management program, MiNative program:  is the number one program for managing your company in the best and easiest way with more than 20 additions of different specialties. You WILL be able to manage your company successfully.', '&lt;p&gt;Trackseed program: &amp;nbsp;is the number one program for managing your company in the best and easiest way with more than 20 additions of different specialties. You WILL be able to manage your company successfully.&lt;/p&gt;\r\n&lt;h4&gt;&lt;strong&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;What is Trackseed company management program?&lt;br /&gt;&lt;br /&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h4&gt;\r\n&lt;p&gt;It is a program to be installed on your website through which you can manage the different company aspects, sections and employees. You can add your products and allow clients to buy those products, you can also create a personal profile for every client / employee / company you deal with, in addition to a human resources system for your company with an account for every employee to register leaves / vacations, attendance, ... etc. You can also control all your website pages and create new pages in the easiest way and with the best advantages. You would no longer need a technician to run your website.&amp;nbsp;&amp;nbsp; &amp;nbsp;&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;\r\n&lt;h4&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;&lt;strong&gt;The best program for managing your company&lt;br /&gt;&lt;br /&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/h4&gt;\r\n&lt;p&gt;Trackseed is the best and easiest program for managing your company whether you are at the office or remotely, it also offers you numerous exclusive benefits which you will get when you receive your copy of the program and install it to your website.&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Key features:&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;Simple and Easy: easy to install and update.&lt;/li&gt;\r\n&lt;li&gt;Compatible and distinctive: compatible with all browsers, tablets, smart phones and all screen sizes.&lt;/li&gt;\r\n&lt;li&gt;Improve your company website: edit your company website style easily.&lt;/li&gt;\r\n&lt;li&gt;Monitor your employees: add all your employees to the system and follow-up on their work.&lt;/li&gt;\r\n&lt;li&gt;Get reports: create regular reports according to your needs for every department in the company as well as purchasing and sales operations.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;h4&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;Program benefits &lt;strong&gt;''infrastructure only without modules and plugins''&lt;/strong&gt;:&lt;/span&gt;&lt;/h4&gt;\r\n&lt;p&gt;This programs enjoys a vast amount of benefits and features which will promote your company and website for globalization and these benefits and features include but are not limited to:&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;Registering clients&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;The program allows you to grant your clients total freedom of registering to your website to keep track of your company''s latest news, purchase products, follow-up on delivery status, payments and manage their bills, in addition to, being able to contact you through a tickets system or through regular means of communication.&lt;/p&gt;\r\n&lt;ol start=&quot;2&quot;&gt;\r\n&lt;li&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;Registering employees&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;You can also register your company employees and grant each employee the privileges you desire, for example, you can grant permission to an employee to edit the website or answer tickets and so on. You can also link the employees registering system to your company human resources system so that each employee could have a profile on the company website through which they can keep track of their vacations, permissions, monthly salary and several other benefits.&lt;/p&gt;\r\n&lt;ol start=&quot;3&quot;&gt;\r\n&lt;li&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;User groups&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;User groups allow you to classify your website users into groups, for example, clients, employees, corporate clients, companies, distinctive clients ... etc, each user group would then be granted the privileges of your choice on your website. &amp;nbsp;&amp;nbsp;You can also add annoying clients to a certain user group so that they wouldn''t be able to do anything on the website like sending a contact form or making purchases, you can also prohibit them from viewing the website all together.&lt;/p&gt;\r\n&lt;ol start=&quot;4&quot;&gt;\r\n&lt;li&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;Pages manager&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;Your website pages manager is the one who has the ability to manage and add different pages to your website like adding new communication pages, services and privacy&amp;nbsp; agreements, company and employees information, products and services information, in addition to, editing, stopping, or deleting pages.&lt;/p&gt;\r\n&lt;ol start=&quot;5&quot;&gt;\r\n&lt;li&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;Mailing center&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;The mailing center allows visitors and users of your website to contact your company through 3 correspondence forms, the first one is designated to regular correspondence, the second is for applying for jobs at your company, the third is for asking for price quotes, as well&amp;nbsp; as being able to answer any of these messages and visitors / users can reply to your replies through the website as well.&lt;/p&gt;\r\n&lt;ol start=&quot;6&quot;&gt;\r\n&lt;li&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;Internal messages system&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;This system allows employees to send messages to each other or send group messages to clients through your website without needing an email, these messages can be replied. You can also stop this service from being used by a certain group and it can be used for internal announcements as well.&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;7&quot;&gt;\r\n&lt;li&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;Notifications system&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;This system is similar to the different social network websites notification systems as it notifies users or new website members when new products are added and notifies employees of new purchases as well as tickets, registrations, different updates and other notifications the system offers to users.&lt;/p&gt;\r\n&lt;ol start=&quot;8&quot;&gt;\r\n&lt;li&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;Modules and plugins systems&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;The company management program has been programmatically set up to receive different additions to provide new services on the website, the program infrastructure has been designed in a way that allows any programmer to design his addition according to the features available in the main core of the program, the programmer can also use all the functions and objects of the program within these additions. The programmer can design an addition that works as a shopping system for the website or a link between the website and social network websites. Trackseed also provides a variety of additions that perform different operations on your website.&lt;/p&gt;\r\n&lt;p&gt;Other benefits&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;Easy to install and upgrade to new releases&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;Easily and completely control the website settings&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;Easily add new different pages&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;Easily deal with the program style&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;Full control of activating and deactivating additions and modules&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;Full control of program registration settings&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;Full control of creating maps and sending them to search engines&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;Full control of the notifications and internal messaging settings&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;Full control of the website correspondence operations through the website correspondence system&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;&lt;span style=&quot;color: #06608f;&quot;&gt;Create backups of the website database through the program&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Design&lt;/p&gt;\r\n&lt;p&gt;Our program design is designated by several features, most important among which are:&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;The design depends on the Bootstrap work environment.&lt;/li&gt;\r\n&lt;li&gt;It is compatible with all tablets and smart phones of different screen sizes.&lt;/li&gt;\r\n&lt;li&gt;Easily editable files through the Editor on the program control panel.&lt;/li&gt;\r\n&lt;li&gt;The ability of changing the style in an easy, simple way.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;Modules and Plugins&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;Products and services&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;Allows you to add your different products and services and classify them into different categories of your choice and allows you to control the information that will be displayed for each product or section.&lt;/p&gt;\r\n&lt;ol start=&quot;2&quot;&gt;\r\n&lt;li&gt;Shopping cart&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;Provides the ability of purchasing the different products and services you display through the ''Products &amp;amp; services''&amp;nbsp; module via the website directly, it can also issue bills, offer different payment processes and many other benefits.&lt;/p&gt;\r\n&lt;ol start=&quot;3&quot;&gt;\r\n&lt;li&gt;Ticketing and technical support system&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;Enables you to support your clients directly through the website and assist them via the ticketing system. Through this system, you can also classify tickets according to company departments or specializations.&amp;nbsp;&lt;/p&gt;\r\n&lt;ol start=&quot;4&quot;&gt;\r\n&lt;li&gt;News&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;This allows you to add news and news sections to your company website and display them to your clients as well as classifying them into important sticky news and regular news.&lt;/p&gt;\r\n&lt;ol start=&quot;5&quot;&gt;\r\n&lt;li&gt;Articles&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;This allows you to write articles about your company, its activities, views and your employees'' testimonials then display them on your website.&lt;/p&gt;\r\n&lt;ol start=&quot;6&quot;&gt;\r\n&lt;li&gt;Videos&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;Allows you to display videos about your products, company, work, clients and team to display them to your clients.&lt;/p&gt;\r\n&lt;ol start=&quot;7&quot;&gt;\r\n&lt;li&gt;Blog&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;Allows you to merge a blog with your company on your website easily to write different posts.&lt;/p&gt;\r\n&lt;ol start=&quot;8&quot;&gt;\r\n&lt;li&gt;Forum&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;Allows you to open conversations between clients and employees to share ideas, suggestions and discussions about your company, its services, ... etc.&lt;/p&gt;\r\n&lt;ol start=&quot;9&quot;&gt;\r\n&lt;li&gt;Gallery&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;Displays your company work and clients in an organized manner and classifies them according to your desires.&lt;/p&gt;\r\n&lt;ol start=&quot;10&quot;&gt;\r\n&lt;li&gt;Certifications and accreditation&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;Displays certifications and accreditation the company got to your clients so that your clients confidence would increase with regards to your company.&lt;/p&gt;\r\n&lt;ol start=&quot;11&quot;&gt;\r\n&lt;li&gt;Clients'' reviews&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;Allows you to add clients'' reviews of your company, services and products to your website in a neat and simple manner.&lt;/p&gt;\r\n&lt;ol start=&quot;12&quot;&gt;\r\n&lt;li&gt;Signing in using social network websites credentials&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;You can grant users the ability to register and sign in to your website using the different social network websites credentials which makes it much easier&amp;nbsp; for your website users to register to your website.&lt;/p&gt;\r\n&lt;ol start=&quot;13&quot;&gt;\r\n&lt;li&gt;Linking the website to the different social network websites&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;You can link your website to all the different social network websites, pages or accounts of your company.&lt;/p&gt;', 'MiNative cms', 'minative,cms', 'minative,cms', 'Mina Atif said', '2015-11-30', 1, 'pub', 0, ' ');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `shortname` varchar(255) COLLATE utf8_bin NOT NULL,
  `perm_group` varchar(255) COLLATE utf8_bin NOT NULL,
  `admins` int(11) NOT NULL,
  `manager` int(11) NOT NULL,
  `member` int(11) NOT NULL,
  `guest` int(11) NOT NULL,
  `mail_confirm` int(11) NOT NULL,
  `admin_confirm` int(11) NOT NULL,
  `banned` int(11) NOT NULL,
  `editors` int(1) DEFAULT NULL,
  `clients` int(1) DEFAULT NULL,
  `mina` int(1) DEFAULT NULL,
  `minative_team` int(1) DEFAULT NULL,
  `aya` int(1) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=20 ;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `shortname`, `perm_group`, `admins`, `manager`, `member`, `guest`, `mail_confirm`, `admin_confirm`, `banned`, `editors`, `clients`, `mina`, `minative_team`, `aya`) VALUES
(1, 'View home', 'view_home', 'user_actions', 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1),
(2, 'Edit profile & settings', 'edit_profile', 'user_actions', 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1),
(3, 'Edit password & email', 'edit_pass_email', 'user_actions', 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0),
(4, 'Use user control panel', 'use_user_panel', 'user_actions', 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0),
(5, 'Submit contact message', 'submit_contact_message', 'ccenter', 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0),
(6, 'View contact message', 'view_contact_message', 'ccenter', 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0),
(7, 'Submit reply', 'submit_reply', 'ccenter', 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0),
(8, 'Log into control panel', 'log_to_control_panel', 'adminaction', 1, 1, 0, 0, 0, 0, 0, 1, NULL, 1, 0, 0),
(9, 'Edit settings', 'edit_settings', 'adminaction', 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 1, NULL, 0),
(10, 'User management', 'user_management', 'adminaction', 1, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0),
(11, 'User groups', 'user_groups', 'adminaction', 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0),
(12, 'Contact center', 'ccenter', 'adminaction', 1, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(13, 'Page manager', 'page_manager', 'adminaction', 1, 1, 0, 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL),
(15, 'Menus maker', 'menus_maker', 'adminaction', 1, 1, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(16, 'Blocks maker', 'blocks_maker', 'adminaction', 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(17, 'Tools', 'tools', 'adminaction', 1, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL),
(19, 'View pages', 'view_pages', 'pages', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE IF NOT EXISTS `plugins` (
  `filename` varchar(127) COLLATE utf8_bin NOT NULL DEFAULT '',
  `action` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`filename`, `action`) VALUES
('news.plugin.php', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pl_market_cats`
--

CREATE TABLE IF NOT EXISTS `pl_market_cats` (
`id` int(11) NOT NULL,
  `motherid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `pl_market_cats`
--

INSERT INTO `pl_market_cats` (`id`, `motherid`, `name`, `description`, `status`, `pic`) VALUES
(1, 0, 'Cat 1', 'Cat 1Cat 1Cat 1Cat 1Cat 1Cat 1Cat 1Cat 1', 1, ''),
(2, 0, 'Cat 2', 'Cat 2\r\nCat 2\r\nCat 2Cat 2', 1, ''),
(39, 0, 'erhreherh', 'erherhrhe', 1, 'ajax-loader.gif');

-- --------------------------------------------------------

--
-- Table structure for table `pl_news_contents`
--

CREATE TABLE IF NOT EXISTS `pl_news_contents` (
`id` int(11) NOT NULL,
  `newsParentId` int(11) NOT NULL,
  `newsTitle` varchar(255) COLLATE utf8_bin NOT NULL,
  `newsBrief` text COLLATE utf8_bin NOT NULL,
  `newsContent` text COLLATE utf8_bin NOT NULL,
  `newsMetadisc` text COLLATE utf8_bin NOT NULL,
  `newsMetakey` text COLLATE utf8_bin NOT NULL,
  `newsTags` text COLLATE utf8_bin NOT NULL,
  `newsWriter` varchar(255) COLLATE utf8_bin NOT NULL,
  `newsPubDate` date NOT NULL,
  `newsStatus` int(11) NOT NULL,
  `newsType` varchar(10) COLLATE utf8_bin NOT NULL,
  `newsFiles` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=30 ;

--
-- Dumping data for table `pl_news_contents`
--

INSERT INTO `pl_news_contents` (`id`, `newsParentId`, `newsTitle`, `newsBrief`, `newsContent`, `newsMetadisc`, `newsMetakey`, `newsTags`, `newsWriter`, `newsPubDate`, `newsStatus`, `newsType`, `newsFiles`) VALUES
(1, 58, 'News 1', 'News 1  brief  News 1  brief  News 1  brief  News 1  brief  News 1  brief  News 1  brief  News 1  brief  News 1  brief  ', 'News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;News 1 &nbsp;content &nbsp; &nbsp;', 'Meta discription', 'Meta discription', 'Tags', 'mina', '2015-12-07', 1, 'st', 'news_414826371.png,news_1153983277.png,news_268776505.png'),
(2, 59, 'News 2', 'News 2  brief  News 2  brief  News 2  brief  News 2  brief  News 2  brief  News 2  brief  News 2  brief  News 2  brief  News 2  brief  News 2  brief  News 2  brief  ', 'News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp;', 'Meta discription', 'Meta discription', 'Tags', 'mina', '2015-12-07', 1, 'st', 'news_802886974.png,news_225271374.png,news_1224856621.png'),
(3, 58, 'News 3', 'News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3', 'News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp;', 'Meta discription', 'Meta discription', 'Tags', 'mina', '2015-12-07', 1, 'st', 'news_105083609.jpg'),
(4, 59, 'News 3', 'News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3News 3', 'News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp;', 'Meta discription', 'Meta discription', 'Tags', 'mina', '2015-12-07', 1, 'imp', 'news_200786291.jpg'),
(5, 58, 'News important', 'News important  2  News important  2  News important  2  News important  2  News important  2  News important  2  News important  2  News important  2  News important  2  News important  2  News important  2  News important  2  News important  2  News important  2  News important  2  News important  2  News important  2  News important  2  News important  2  News important  2  News important  2  News important  2  News important  2  News important  2  ', 'News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp;', 'Meta discription', 'Meta discription', 'Tags', 'mina', '2015-12-07', 1, 'imp', 'news_384230774.jpg'),
(6, 59, 'hello ', 'hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 hello 3 ', 'News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp;', 'Meta discription', 'Meta discription', 'Tags', 'mina', '2015-12-07', 1, 'imp', 'news_493961816.jpg'),
(7, 58, 'wellcome', 'wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  wellcome  ', 'News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp; News 2&nbsp; content &nbsp;', 'Meta discription', 'Meta discription', 'Tags', 'mina', '2015-12-07', 1, 'imp', 'news_835935382.jpg'),
(8, 58, 'News 5465465', 'News 5465465', 'News 5465465', 'News 5465465', 'News 5465465', 'News 5465465', 'News 5465465', '2015-12-09', 1, 'st', 'news_778401891.jpg'),
(13, 58, 'ewwefwefwe', 'wefwefwef', '', '', '', '', '', '0000-00-00', 1, 'imp', 'default.jpg'),
(14, 58, 'wefwefwefwe', 'wefwefwe', 'wefwefwe', 'wefwe', 'fwef', 'wewefwef', 'wefwef', '2015-12-08', 1, 'imp', 'news_1341687907.png,news_1119859075.png,news_448950573.png'),
(15, 58, 'wefwefwe', 'wefwefwe', '', '', '', '', '', '0000-00-00', 1, 'imp', 'news_973809209.png'),
(24, 58, 'tyktyktyk', 'ytktyk', 'tyktyktyk', '', '', '', '', '0000-00-00', 1, 'st', 'news_329408285.png,news_854611175.png'),
(25, 58, 'tyktyktyk', 'ytktyk', 'tyktyktyk', '', '', '', '', '0000-00-00', 1, 'st', 'news_883915818.png,news_1235958821.png'),
(26, 58, 'ukuykyuk', 'yukyuk', 'yukyukyu', '', '', '', '', '0000-00-00', 1, 'st', 'news_1237335838.jpg,news_1400555384.jpg'),
(27, 58, 'ewfwe', 'fwefwef', 'ewfwef', '', '', '', '', '0000-00-00', 1, 'st', 'news_1344786195.jpg'),
(28, 58, 'wefwqwdwqd', 'efwef', 'wefwef', '', '', '', '', '0000-00-00', 1, 'st', 'news_243215627.jpg'),
(29, 58, 'ewfwefwef', 'wefwe', 'fwefwefew', '', '', '', '', '0000-00-00', 1, 'st', 'news_1122053696.png');

-- --------------------------------------------------------

--
-- Table structure for table `pl_news_sections`
--

CREATE TABLE IF NOT EXISTS `pl_news_sections` (
`id` int(11) NOT NULL,
  `sectionName` varchar(255) COLLATE utf8_bin NOT NULL,
  `sectionDescrip` text COLLATE utf8_bin NOT NULL,
  `sectionMetadisc` text COLLATE utf8_bin NOT NULL,
  `sectionMetakey` text COLLATE utf8_bin NOT NULL,
  `sectionTags` text COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL,
  `sectionPicture` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=66 ;

--
-- Dumping data for table `pl_news_sections`
--

INSERT INTO `pl_news_sections` (`id`, `sectionName`, `sectionDescrip`, `sectionMetadisc`, `sectionMetakey`, `sectionTags`, `status`, `sectionPicture`) VALUES
(58, 'MiNative Cms news', 'This section have a news about minative cms, and it&#39;s updates and new plugins and modules, This section have a news about minative cms, and it&#39;s updates and new plugins and modules, This section have a news about minative cms, and it&#39;s updates and new plugins and modules, This section have a news about minative cms, and it&#39;s updates and new plugins and modules, ', 'minative cms news section', 'minative,news,cms,allnews', 'minative,news,cms,allnews', 1, 'sec_1133543181.png'),
(59, 'Section 2', 'Section 2  Section 2  Section 2  Section 2  Section 2  Section 2  Section 2  Section 2  Section 2  ', 'Section 2  meta disc', 'Section 2  meta key', 'Section 2  tags', 1, 'default.jpg'),
(60, 'wefwef', 'wefwef', 'wefwe', 'wef', 'wefwefe', 1, 'default.jpg'),
(65, 'wefwef', 'wefwef', 'wefwe', 'fwef', 'wefwef', 1, 'sec_212318808.png');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
`id` int(255) NOT NULL,
  `grouptitle` varchar(255) COLLATE utf8_bin NOT NULL,
  `setname` varchar(255) COLLATE utf8_bin NOT NULL,
  `value` text COLLATE utf8_bin NOT NULL,
  `product` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=145 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `grouptitle`, `setname`, `value`, `product`) VALUES
(1, 'generalsettings', 'sitename', 'MiNative Ltd.', 'minative'),
(2, 'generalsettings', 'siteurl', 'http://localhost/', 'minative'),
(3, 'generalsettings', 'scriptfolder', 'minative/', 'minative'),
(4, 'generalsettings', 'adminmail', 'minaatifabduallah@gmail.com', 'minative'),
(5, 'generalsettings', 'closing', '0', 'minative'),
(6, 'generalsettings', 'closingmessage', 'We are sorry, we have some issues to be solved .. !\r\n\r\nThanks.', 'minative'),
(7, 'generalsettings', 'metadisc', 'mina atif programing trxeed ltd', 'minative'),
(8, 'generalsettings', 'metakey', 'mina,said,programin,keyword,mina,said', 'minative'),
(9, 'regsettings', 'enablereg', '1', 'minative'),
(10, 'regsettings', 'uniqueemail', '1', 'minative'),
(11, 'regsettings', 'uniqueusername', '1', 'minative'),
(12, 'regsettings', 'mailconfirm', '1', 'minative'),
(13, 'regsettings', 'adminconfirm', '', 'minative'),
(14, 'regsettings', 'disabledusernames', 'admin,sex,fuck,shit,damn,shhhh', 'minative'),
(15, 'regsettings', 'newusersgroup', '5', 'minative'),
(16, 'regsettings', 'uploaduseravator', '1', 'minative'),
(17, 'regsettings', 'avatortypes', 'image/png,image/gif,image/jpeg,image/pjpeg', 'minative'),
(18, 'regsettings', 'avatormaxsize', '2', 'minative'),
(19, 'regsettings', 'tosactivate', '1', 'minative'),
(20, 'regsettings', 'termspagelink', 'pages.php?page=9', 'minative'),
(21, 'regsettings', 'termscontent', 'MiNative On July 1, 1997, AOL posted revised terms of service to take effect July 31, 1997, without formally notifying its users of the changes made, most notably a new policy which would grant third-party business partners, including a marketing firm, access to its members&#39; telephone numbers. Several days before the changes were to take effect, an AOL member informed the media of the changes and the following news coverage incited a large influx of internet traffic on the AOL page which enabled users to opt-out of having their names and numbers on marketing lists, an AOL member informed the media of the changes and the following news coverage incited a large influx of internet traffic on the AOL page which enabled users to opt-out of having their names and numbers on marketing lists.On July 1, 1997, AOL posted revised terms of service to take effect July 31, 1997, without formally notifying its users of the changes made, most notably a new policy which would grant third-party business partners, including a marketing firm, access to its members&#39; telephone numbers. Several days before the changes were to take effect, an AOL member informed the media of the changes and the following news coverage incited a large influx of internet traffic on the AOL page which enabled users to opt-out of having their names and numbers on marketing lists, an AOL member informed the media of the changes and the following news coverage incited a large influx of internet traffic on the AOL page which enabled users to opt-out of having their names and numbers on marketing lists.', 'minative'),
(22, 'generalsettings', 'siteslogn', 'Exceeding limits', 'minative'),
(23, 'generalsettings', 'sitelogopath', '/styles/minative/images/logo.png', 'minative'),
(24, 'generalsettings', 'modreweiteen', '0', 'minative'),
(25, 'generalsettings', 'closeurl', 'http://Mina Atif.com', 'minative'),
(26, 'regsettings', 'sendwellcommail', '1', 'minative'),
(27, 'regsettings', 'editavator', '1', 'minative'),
(28, 'generalsettings', 'copyright', 'MiNative is registered under the C.L: 86385, All rightes reserved to minative.net and minative.com', 'minative'),
(29, 'generalsettings', 'copyrighten', '1', 'minative'),
(30, 'generalsettings', 'cacheen', '0', 'minative'),
(31, 'langstyle', 'mainlang', 'en', 'minative'),
(32, 'langstyle', 'allowlangswit', '1', 'minative'),
(33, 'langstyle', 'mainstyle', 'minative', 'minative'),
(34, 'langstyle', 'stylewidth', '1200', 'minative'),
(35, 'langstyle', 'allowstyleswit', '0', 'minative'),
(36, 'langstyle', 'overrideuserlangcache', '0', 'minative'),
(37, 'secsettings', 'captchaen', '0', 'minative'),
(38, 'secsettings', 'captchanumen', '0', 'minative'),
(39, 'secsettings', 'captchaupleten', '0', 'minative'),
(40, 'secsettings', 'captchasounden', '0', 'minative'),
(41, 'secsettings', 'captchareloaden', '1', 'minative'),
(42, 'secsettings', 'captchabackcol', '#000000', 'minative'),
(43, 'secsettings', 'captchafontcol', '#ffff80', 'minative'),
(44, 'secsettings', 'passgen', '0', 'minative'),
(45, 'secsettings', 'passlett', '1', 'minative'),
(46, 'secsettings', 'passuplett', '0', 'minative'),
(47, 'secsettings', 'passnum', '1', 'minative'),
(48, 'secsettings', 'passsym', '0', 'minative'),
(49, 'secsettings', 'passlength', '9', 'minative'),
(50, 'secsettings', 'cbruteforceen', '1', 'minative'),
(51, 'secsettings', 'cbruteip', '1', 'minative'),
(52, 'secsettings', 'attemptsn', '3', 'minative'),
(53, 'secsettings', 'attemptsblock', '2', 'minative'),
(54, 'secsettings', 'cbrutemailadmin', '1', 'minative'),
(55, 'secsettings', 'cbrutemailowner', '1', 'minative'),
(56, 'mailsettings', 'mailen', '1', 'minative'),
(57, 'mailsettings', 'mailmethod', 'phpmail', 'minative'),
(58, 'mailsettings', 'smtpserver', 'smtp.gmail.com', 'minative'),
(59, 'mailsettings', 'smtpuser', 'minaatifabduallah@gmail.com', 'minative'),
(60, 'mailsettings', 'smtppass', 'wefwe6465ewf', 'minative'),
(61, 'mailsettings', 'smtport', '465', 'minative'),
(62, 'mailsettings', 'smtpauthreq', '1', 'minative'),
(63, 'mailsettings', 'smtpauthrtype', 'SSL', 'minative'),
(64, 'mailsettings', 'sendermail', 'admin@minative.com', 'minative'),
(65, 'mailsettings', 'maildefsubj', 'MiNative Ltd.', 'minative'),
(66, 'mailsettings', 'defaultmailheader', '&lt;table class=&quot;body-wrap&quot; bgcolor=&quot;#f6f6f6&quot;&gt;\r\n  &lt;tr&gt;\r\n    &lt;td&gt;&lt;/td&gt;\r\n    &lt;td class=&quot;container&quot; bgcolor=&quot;#FFFFFF&quot;&gt;\r\n\r\n      &lt;!-- content --&gt;\r\n      &lt;div class=&quot;content&quot;&gt;\r\n      &lt;table&gt;\r\n        &lt;tr&gt;\r\n          &lt;td&gt;', 'minative'),
(67, 'mailsettings', 'defaultmailfooter', '          &lt;/td&gt;\r\n        &lt;/tr&gt;\r\n      &lt;/table&gt;\r\n      &lt;/div&gt;\r\n      &lt;!-- /content --&gt;\r\n      \r\n    &lt;/td&gt;\r\n    &lt;td&gt;&lt;/td&gt;\r\n  &lt;/tr&gt;\r\n&lt;/table&gt;\r\n&lt;!-- /body --&gt;\r\n\r\n&lt;!-- footer --&gt;\r\n&lt;table class=&quot;footer-wrap&quot;&gt;\r\n  &lt;tr&gt;\r\n    &lt;td&gt;&lt;/td&gt;\r\n    &lt;td class=&quot;container&quot;&gt;\r\n      \r\n      &lt;!-- content --&gt;\r\n      &lt;div class=&quot;content&quot;&gt;\r\n        &lt;table&gt;\r\n          &lt;tr&gt;\r\n            &lt;td align=&quot;center&quot;&gt;\r\n              &lt;p&gt;MiNative mail.\r\n              &lt;/p&gt;\r\n            &lt;/td&gt;\r\n          &lt;/tr&gt;\r\n        &lt;/table&gt;\r\n      &lt;/div&gt;\r\n      &lt;!-- /content --&gt;\r\n      \r\n    &lt;/td&gt;\r\n    &lt;td&gt;&lt;/td&gt;\r\n  &lt;/tr&gt;\r\n&lt;/table&gt;\r\n&lt;!-- /footer --&gt;', 'minative'),
(68, 'mailsettings', 'defaultmailbody', ' &lt;p&gt;Hi there, {$name}&lt;/p&gt;\r\n           {$message_content}', 'minative'),
(69, 'mailsettings', 'defaultmailcss', '/* -------------------------------------\r\n    GLOBAL\r\n------------------------------------- */\r\n* {\r\n  font-family: &#34;Helvetica Neue&#34;, &#34;Helvetica&#34;, Helvetica, Arial, sans-serif;\r\n  font-size: 100%;\r\n  line-height: 1.6em;\r\n  margin: 0;\r\n  padding: 0;\r\n}\r\n\r\nimg {\r\n  max-width: 600px;\r\n  width: 100%;\r\n}\r\n\r\nbody {\r\n  -webkit-font-smoothing: antialiased;\r\n  height: 100%;\r\n  -webkit-text-size-adjust: none;\r\n  width: 100% !important;\r\n  background: #f6f6f6;\r\n}\r\n\r\n\r\n/* -------------------------------------\r\n    ELEMENTS\r\n------------------------------------- */\r\na {\r\n  color: #348eda;\r\n}\r\n\r\n.btn-primary {\r\n  Margin-bottom: 10px;\r\n  width: auto !important;\r\n}\r\n\r\n.btn-primary td {\r\n  background-color: #348eda; \r\n  border-radius: 25px;\r\n  font-family: &#34;Helvetica Neue&#34;, Helvetica, Arial, &#34;Lucida Grande&#34;, sans-serif; \r\n  font-size: 14px; \r\n  text-align: center;\r\n  vertical-align: top; \r\n}\r\n\r\n.btn-primary td a {\r\n  background-color: #348eda;\r\n  border: solid 1px #348eda;\r\n  border-radius: 25px;\r\n  border-width: 10px 20px;\r\n  display: inline-block;\r\n  color: #ffffff;\r\n  cursor: pointer;\r\n  font-weight: bold;\r\n  line-height: 2;\r\n  text-decoration: none;\r\n}\r\n\r\n.last {\r\n  margin-bottom: 0;\r\n}\r\n\r\n.first {\r\n  margin-top: 0;\r\n}\r\n\r\n.padding {\r\n  padding: 10px 0;\r\n}\r\n\r\n\r\n/* -------------------------------------\r\n    BODY\r\n------------------------------------- */\r\ntable.body-wrap {\r\n  padding: 20px;\r\n  width: 100%;\r\n}\r\n\r\ntable.body-wrap .container {\r\n  border: 1px solid #f0f0f0;\r\n}\r\n\r\n\r\n/* -------------------------------------\r\n    FOOTER\r\n------------------------------------- */\r\ntable.footer-wrap {\r\n  clear: both !important;\r\n  width: 100%;  \r\n}\r\n\r\n.footer-wrap .container p {\r\n  color: #666666;\r\n  font-size: 12px;\r\n  \r\n}\r\n\r\ntable.footer-wrap a {\r\n  color: #999999;\r\n}\r\n\r\n\r\n/* -------------------------------------\r\n    TYPOGRAPHY\r\n------------------------------------- */\r\nh1, \r\nh2, \r\nh3 {\r\n  color: #111111;\r\n  font-family: &#34;Helvetica Neue&#34;, Helvetica, Arial, &#34;Lucida Grande&#34;, sans-serif;\r\n  font-weight: 200;\r\n  line-height: 1.2em;\r\n  margin: 40px 0 10px;\r\n}\r\n\r\nh1 {\r\n  font-size: 36px;\r\n}\r\nh2 {\r\n  font-size: 28px;\r\n}\r\nh3 {\r\n  font-size: 22px;\r\n}\r\n\r\np, \r\nul, \r\nol {\r\n  font-size: 14px;\r\n  font-weight: normal;\r\n  margin-bottom: 10px;\r\n}\r\n\r\nul li, \r\nol li {\r\n  margin-left: 5px;\r\n  list-style-position: inside;\r\n}\r\n\r\n/* ---------------------------------------------------\r\n    RESPONSIVENESS\r\n------------------------------------------------------ */\r\n\r\n/* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */\r\n.container {\r\n  clear: both !important;\r\n  display: block !important;\r\n  Margin: 0 auto !important;\r\n  max-width: 600px !important;\r\n}\r\n\r\n/* Set the padding on the td rather than the div for Outlook compatibility */\r\n.body-wrap .container {\r\n  padding: 20px;\r\n}\r\n\r\n/* This should also be a block element, so that it will fill 100% of the .container */\r\n.content {\r\n  display: block;\r\n  margin: 0 auto;\r\n  max-width: 600px;\r\n}\r\n\r\n/* Let&#39;s make sure tables in the content area are 100% wide */\r\n.content table {\r\n  width: 100%;\r\n}\r\n', 'minative'),
(70, 'compprofsettings', 'compfullname', 'MiNative for information systems co.', 'minative'),
(71, 'compprofsettings', 'compmanname', 'Mina Atif Said', 'minative'),
(72, 'compprofsettings', 'compmantit', 'Founder & General manager', 'minative'),
(73, 'compprofsettings', 'compcomlice', '86385', 'minative'),
(74, 'compprofsettings', 'compactivities', 'Budgeting\r\nEvery company creates a budget that dictates how revenue is utilized in daily operations and in the pursuit of future growth. Each department manager gives input on the costs of ongoing operations, and then a budget is created that allows the company to track all spending and revenue. The budget from the previous year is compared to that year&#39;s actual results to create a guideline for creating the next year&#39;s spending plan.\r\n\r\nAccounting\r\nAccounting is the process of managing the flow of money in and out of the company. Areas that come under the accounting group are accounts payable, accounts receivable, payroll, customer credit accounts, collections and tax accounting. Accounting reporting is responsible for annual tax filings, monitoring company costs and maintaining financial relationships with vendors and customers.\r\n\r\nRelated Reading: What Are the Basic HR Issues to Be Addressed by an International Business?\r\n\r\nMarketing\r\nMarketing helps to develop company and brand recognition in the marketplace as well as develop advertising pieces that the buying public would see. The marketing group develops comprehensive marketing plans that use sales projections to help determine the best way to use company resources to gain more exposure for the organization and its products.\r\n\r\nSales\r\nSales is the group that maintains direct contact with the customer base. The sales group reaches out to prospects to help expand the customer base while also maintaining relationships with existing clients to secure repeat sales. The sales force is skilled at matching up company solutions with customer needs to create product demand.\r\n\r\nHiring Employees\r\nThe human resources aspect of an organization is important to maintaining current operations as well as planning for future expansion. A company needs to actively search out qualified candidates whose qualifications match current available positions, or who can be kept available should a personnel need arise.\r\n\r\nCustomer Service\r\nCustomer service maintains corporate revenue by resolving customer issues and preserving the buying relationship. The customer service group does not proactively seek to expand the company&#39;s revenue base by providing solutions to customers. Proactive customer interaction is reserved for the sales group. The customer service department is who the customer calls when they have a shipping, product or billing issue.', 'minative'),
(75, 'compprofsettings', 'mainbrabadd', '13 washonton street, flat 4, Cairo, Egypt', 'minative'),
(76, 'compprofsettings', 'mainlandlinephone', '0020221808631', 'minative'),
(77, 'compprofsettings', 'mainmobilephone', '00201008347459', 'minative'),
(78, 'compprofsettings', 'mainfax', '0020221802563', 'minative'),
(79, 'compprofsettings', 'mainemail', 'mina@minative.com', 'minative'),
(80, 'compprofsettings', 'compfacebooklink', 'http://facebook.com/minative', 'minative'),
(81, 'compprofsettings', 'compfacebooklinken', '1', 'minative'),
(82, 'compprofsettings', 'comptwitterlink', 'http://twitter.com/@minativenet', 'minative'),
(83, 'compprofsettings', 'comptwitterlinken', '1', 'minative'),
(84, 'compprofsettings', 'compyoutubelink', 'http://youtube.com/minativecom', 'minative'),
(85, 'compprofsettings', 'compyoutubelinken', '1', 'minative'),
(86, 'compprofsettings', 'compskype', 'minative.com', 'minative'),
(87, 'compprofsettings', 'compgoogleplink', 'http://plus.google.com/minativecom', 'minative'),
(88, 'compprofsettings', 'compgoogleplinken', '1', 'minative'),
(89, 'compprofsettings', 'complinkedinlink', 'http://linkedin.com/minative', 'minative'),
(90, 'compprofsettings', 'complinkedinlinken', '1', 'minative'),
(91, 'compprofsettings', 'comppinterestlink', 'http://pinterest.com/minative', 'minative'),
(92, 'compprofsettings', 'comppinterestlinken', '1', 'minative'),
(93, 'ccentersettings', 'ccentermenuhead', '1', 'minative'),
(94, 'ccentersettings', 'ccenterlistusercp', '0', 'minative'),
(95, 'ccentersettings', 'ccentermesslett', '24', 'minative'),
(96, 'ccentersettings', 'attachmentmess', '0', 'minative'),
(97, 'ccentersettings', 'attachmentreply', '1', 'minative'),
(98, 'ccentersettings', 'ccenterattachmentnumber', '5', 'minative'),
(99, 'ccentersettings', 'ccenterattachmentsize', '7', 'minative'),
(100, 'ccentersettings', 'ccenterattachmenttypes', 'image/png,image/gif,,image/jpeg,image/pjpeg,text/plain,application/x-zip-compressed,application/pdf,application/msword,application/vnd.ms-excel', 'minative'),
(101, 'ccentersettings', 'ccenternotifymess', '1', 'minative'),
(102, 'ccentersettings', 'ccenternotifyreply', '1', 'minative'),
(103, 'ccentersettings', 'ccentereditorymess', '0', 'minative'),
(104, 'ccentersettings', 'ccentereditoryreply', '0', 'minative'),
(105, 'ccentersettings', 'ccentercloseauto', '1', 'minative'),
(106, 'ccentersettings', 'ccentercloseautotime', '48', 'minative'),
(107, 'ccentersettings', 'ccentercloseautoreply', 'Dear sir,\r\n\r\nThis message closed automatic due to no action.\r\n\r\nThanks', 'minative'),
(108, 'ccentersettings', 'ccentercloseautoreplyen', '1', 'minative'),
(109, 'ccentersettings', 'ccenterautoreplyen', '1', 'minative'),
(110, 'ccentersettings', 'ccenterautoreply', 'Hello,\r\n\r\nThank you for contact us, we will be with you soon.\r\n\r\nThanks', 'minative'),
(111, 'extrasettings', 'exsearchen', '1', 'minative'),
(112, 'extrasettings', 'exdatetimeen', '1', 'minative'),
(113, 'extrasettings', 'exwelmessen', '1', 'minative'),
(114, 'extrasettings', 'exwelmess', 'Hello, this is minative system', 'minative'),
(115, 'extrasettings', 'exweladven', '1', 'minative'),
(116, 'extrasettings', 'exweladv', 'This adv from minative ltd company and you are welcome to be here', 'minative'),
(117, 'secsettings', 'recaptchaen', '1', 'minative'),
(118, 'secsettings', 'recaptchasitekey', '6LdmbxETAAAAAEWeSj5RD2Zp4Z5pUZVVWuObhMbd', 'minative'),
(119, 'secsettings', 'recaptchasecretkey', '6LdmbxETAAAAAAOPScZt_2fnKdcGrOuNwoynfVMP', 'minative'),
(120, 'secsettings', 'recaptchaverifylink', 'https://www.google.com/recaptcha/api/siteverify', 'minative'),
(121, 'pmanagersettings', 'pmangen', '1', 'minative'),
(122, 'pmanagersettings', 'pmangmenuen', '1', 'minative'),
(123, 'pmanagersettings', 'pmangattachment', '1', 'minative'),
(125, 'pmanagersettings', 'pmangattachmentnumber', '6', 'minative'),
(126, 'pmanagersettings', 'pmangattachmentsize', '11', 'minative'),
(127, 'pmanagersettings', 'pmangattachmenttypes', 'image/png,image/gif,,image/jpeg,image/pjpeg,text/plain,application/x-zip-compressed,application/pdf,application/msword,application/vnd.ms-excel', 'minative'),
(128, 'pmanagersettings', 'pmangprint', '', 'minative'),
(129, 'pmanagersettings', 'pmangsaveas', '', 'minative'),
(130, 'pmanagersettings', 'pmangsaveaspdf', '', 'minative'),
(131, 'pmanagersettings', 'pmangeditor', '1', 'minative'),
(132, 'adminpanelsetting', 'adminmainstyle', 'minativeadmin', 'minative'),
(133, 'adminpanelsetting', 'adminmainlang', 'english', 'minative'),
(134, 'newssettings', 'stickyen', '1', 'news'),
(135, 'newssettings', 'stickynum', '5', 'news'),
(136, 'newssettings', 'normalen', '1', 'news'),
(137, 'newssettings', 'normalnum', '8', 'news'),
(138, 'newssettings', 'newsprint', '0', 'news'),
(139, 'newssettings', 'newssaveas', '0', 'news'),
(140, 'newssettings', 'newsattachmenten', '1', 'news'),
(141, 'newssettings', 'newsattachmentnum', '4', 'news'),
(142, 'newssettings', 'newsattachmentsize', '2', 'news'),
(143, 'newssettings', 'newsattachmenttypes', 'image/png,image/gif,,image/jpeg,image/pjpeg', 'news'),
(144, 'newssettings', 'newseditor', '1', 'news');

-- --------------------------------------------------------

--
-- Table structure for table `settingsgroup`
--

CREATE TABLE IF NOT EXISTS `settingsgroup` (
  `setgroupid` int(255) NOT NULL,
  `setgroupname` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `settingsgroup`
--

INSERT INTO `settingsgroup` (`setgroupid`, `setgroupname`) VALUES
(1, 'mainsettings'),
(2, 'langstylesettings'),
(3, 'regsettings');

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE IF NOT EXISTS `usergroups` (
`id` int(255) NOT NULL,
  `groupname` varchar(255) COLLATE utf8_bin NOT NULL,
  `shortname` varchar(255) COLLATE utf8_bin NOT NULL,
  `color` varchar(20) COLLATE utf8_bin NOT NULL,
  `usertitle` varchar(255) COLLATE utf8_bin NOT NULL,
  `product` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=51 ;

--
-- Dumping data for table `usergroups`
--

INSERT INTO `usergroups` (`id`, `groupname`, `shortname`, `color`, `usertitle`, `product`) VALUES
(1, 'Administrators', 'admins', '#FF0000', 'Admin', 'minative'),
(2, 'Managers', 'manager', '#30a5ff', 'Manager', 'minative'),
(3, 'Members', 'member', '#FFA722', 'Member', 'minative'),
(4, 'Guests', 'guest', '#000000', 'Guest', 'minative'),
(5, 'Awaiting mail confirm', 'mail_confirm', '#7B5A59', 'Awaiting mail confirm', 'minative'),
(6, 'Awaiting administration', 'admin_confirm', '#8E8686', 'Awaiting administration', 'minative'),
(7, 'Banned users', 'banned', '#cccccc', 'Banned', 'minative'),
(9, 'Editors', 'editors', '#000000', 'Editor', 'other'),
(33, 'Clients', 'clients', '#855695', 'MiNative Client', 'other'),
(42, 'mina', 'mina', '#ssssss', 'Mina Atif', 'other'),
(43, 'MiNative team', 'minative_team', 'orange', 'MiNative team', 'other'),
(50, 'aya', 'aya', '#fff000', 'aya', 'other');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `user` varchar(20) COLLATE utf8_bin NOT NULL,
  `dname` varchar(50) COLLATE utf8_bin NOT NULL,
  `country` int(5) NOT NULL,
  `city` varchar(20) COLLATE utf8_bin NOT NULL,
  `sex` int(5) NOT NULL,
  `bio` text COLLATE utf8_bin NOT NULL,
  `face` varchar(50) COLLATE utf8_bin NOT NULL,
  `twitter` varchar(50) COLLATE utf8_bin NOT NULL,
  `google` varchar(50) COLLATE utf8_bin NOT NULL,
  `skype` varchar(50) COLLATE utf8_bin NOT NULL,
  `linkedin` varchar(50) COLLATE utf8_bin NOT NULL,
  `yahoo` varchar(50) COLLATE utf8_bin NOT NULL,
  `avatar` varchar(50) COLLATE utf8_bin NOT NULL,
  `website` varchar(50) COLLATE utf8_bin NOT NULL,
  `reg_date` date NOT NULL,
  `group_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL,
  `ip_add` varchar(255) COLLATE utf8_bin NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_bin NOT NULL,
  `salt` varchar(128) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=87 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user`, `dname`, `country`, `city`, `sex`, `bio`, `face`, `twitter`, `google`, `skype`, `linkedin`, `yahoo`, `avatar`, `website`, `reg_date`, `group_id`, `last_login`, `ip_add`, `user_agent`, `salt`) VALUES
(49, 'Mina Atif said', 'minaatifabduallah@gmail.com', 'iioSuEgYGfIx2Lj6QnwpXvj3xqu4152biyv9Bdu/5Eg=', 'mina', 'Mina Atif mina', 63, 'cairo', 1, '                                         I have been dealing with Computers & Internet since 1997, I started taking courses in 2001, after that I started self-studying networks, computer systems & windows App. programming, then in 2006 I become interested in the Web field, I started it with learning HTML and Photoshop then I moved to design entire websites, after 2 years of studying and working as a freelancer, I started my own company specializing in webhosting. During this period, I was studying programing with PHP&MySQL and managing Linux servers, then I worked as a &#39;Technical Support&#39; specialist, finally, I specialized in ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Â¹Ãƒâ€¦Ã¢â‚¬Å“Linux servers administrationÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¾Ãƒâ€šÃ‚Â¢ and I have been working in this field since.\r\n                \r\n                ', 'http://facebook.com/Mina Atif', 'http://twitter.com/Mina Atif', 'http://google.com/Mina Atif', 'mina_said89', 'http://linkedin.com/Mina Atif', 'eng.3mina', '276780417.jpg', 'http://Mina Atif.com', '2015-01-14', '1', '2015-12-20 21:21:54', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', '568f143f418fa7b3810b271de5f256e79fb0069bf6344f012ce907169648b90bb36ea9ecb6e37857755fbef7ecf8f8d8a323981f45b722ef40b49a79f21ca1b2'),
(53, 'Ahmed said', 'wqdwd@yahoo.com', '5cUY8OFGou5hkQMlX6cgxkzDYcjRiAS56+5SUX/q64I=', 'ahmed', 'Ahmed said', 35, 'cairo', 1, '                                                                                                                                                                                    efgwe wefwefwe\r\n                \r\n                \r\n                \r\n                \r\n                \r\n                \r\n                \r\n                \r\n                ', 'ahmedsss', 'ahmedeee', 'ahmed6eefewf', 'ahmed5ee', 'ahmed8eewef', 'wewefee', '629856182.jpg', 'wefwefwe', '2015-07-13', '2', '2015-11-29 22:43:32', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36', '151d65b17b8006eabdff903738c07797d50a5e78d989cd29c0e909c4b6a8530ccdda274d24bf6ad0a7299525f1bd15f05f05335e0c7a1e4d14317085e4cef647'),
(56, 'Fatma', 'fatma@minative.net', 'aOh1dj1UYCNlRheRvf3NxRfkjg16wq/zUmR9+7OKEb4=', 'fatma', 'Fatma said', 6, 'cairo', 2, 'Snippet below inserts same values using Prepared Statement. As discussed earlier the Prepared statements are very effective against SQL injection, you should always use prepared statement in situations like this. Snippet below inserts same values using Prepared Statement. As discussed earlier the Prepared statements are very effective against SQL injection, you should always use prepared statement in situations like this.', 'http://facebook.com/fatma', 'http://twitter.com/fatma', 'http://google.com/fatma', 'fatma_said', 'http://linkedin.com/fatma', 'fatma.said', '', 'http://fatmasaid.com', '2015-09-08', '43', '2015-11-08 19:47:10', '', '', '2f53239f1c422ff4bc4f8a2aa94ca96f8074b4f8ec701187b33dd36935e3f87bc75656a26ec744a5410dae5aa4276748a4a0c0370e3adc62051a4788587b6587'),
(58, 'Aya mina', 'aya@gmail.com', '', 'Aya', 'Aya', 1, 'cairo', 1, '                ', '', '', '', '', '', '', '', '', '2015-01-21', '3', '0000-00-00 00:00:00', '', '', ''),
(69, 'Fayek', 'fayek@yahoo.com', 'e6613809455a1482daf8dab517de34fab26513de2ecaa6da2f3a97f0819c33b028ee4754f1ffcce1a244e5c4cdf076d4eb98b23fff709bf5886c767cba231e2f', 'fefo', 'EL 3ayek', 58, 'Kobenhagen', 1, 'hello i&#39;m fayek el 3ayek, i&#39;m from denmark kobenhagen', 'http://facebook.com/fayek', 'http://twitter.com/@fayek', 'http://plus.com/fayek', 'fefo_fofo', 'http://linkedin.com/fayek', 'fooof@yahoo.com', '', 'http://fefo.com', '2015-10-22', '33', '2015-10-22 20:35:21', '', '', 'c62f3ed7aa49a268d8a0a8abc220517d0cc2b266927a4a93514647bd0377f7b969445da95c665b83c1595ac798bc833ad7e648b07caf1368470309e432c5eff8'),
(73, 'Body said', 'body@yahoo.com', 'bc7c779cb03d9a21d84472f7ad1d52b8d0ac6efdf4ca294aa5bdfbf3aa15ba4dedde7040ebd70359b7f786046b341aa9cd730e23cda94a9592cbf3ec8a9bece3', 'body', 'Body bood', 63, 'cairo', 1, 'i&#39;m boooooooody i&#39;m boooody', 'http://facebook.com/body', 'http://twitter.com/@body', 'http://pluse.com/body', 'body_booood', 'http://linkedin.com/body', 'boody_body@yahoo.com', '', 'http://body-bood.com', '2015-10-31', '3', '0000-00-00 00:00:00', '', '', 'f149a9ccba6aa52bbb103cbe83f0dc3a1ad9af8386b6e8de1157c73d008f328dc8c253f10ffdc1c1862bdbf9392b12319d0a877614f1a785e9cb0385564e6c21'),
(76, 'aaawefwe', 'mina@mina.com', 'e84227c207020bf2306ad6fc2151ff627abfc51b435d0bd5b36ec995e3018bfc4fe11a134c9f96c123403a8ad9853f17828c8bba7553f27c2b736d78b5cbfb47', 'aewfe', 'wefew', 1, 'ewe', 1, '', '', '', '', '', '', '', '', '', '2015-11-08', '3', '2015-11-08 21:39:02', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '16470672002b9ffda73167ef8f5887a61f7534eb9c8d5cbf6cc7959cf67a5624c356c42cb0bed6451a4541e3da3bdfd6a5a672897c2f7af71b850357a66a84a7'),
(82, 'roza', 'roza@minative.com', '/LCVfRS11RFxX3zx22kFgfQXe1nwqu+sVY8ml9yisEI=', 'roza', 'roza', 63, 'cairo', 2, '', '', '', '', '', '', '', '', '', '2015-11-08', '5', '2015-11-08 22:47:07', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', '7d70329ce0d0c6a73e4108ea37b43cb23542ba66ac123e7821f4d6769eb3efa7c99f6230ec27e89ee4a6ca0d9a1eaf651543600ff5660d070ce1428c089b350e'),
(85, 'eqwfwefwef', 'ali.zahrani@hotmail.com', '7Je/2UsTdpFFEVfGBGI+uCGbjJWAE6/zeJ4DJp4N8+E=', 'awefwef', '', 187, 'SA', 1, '', '', '', '', '', '', '', ' ', '', '2015-12-02', '5', '2015-12-02 13:42:12', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36', 'b4fb8d60e532217d93053d6da8b2f620e24e2b656a2a23b0749cc87f7c6344b917a63168a29ddbda5614397872e7e099b0298a0a61919b3a6d3f3fee2b38d731'),
(86, 'wefwef', 'aaawef@ergwdwer.com', 'KJVwF5mRk45lTdbYKsSMwDh9J5GdD1nQ5n3VlL2/GFA=', 'wefwe', 'wefwef', 1, '', 1, '', '', '', '', '', '', '', 'default_user_male.jpg', '', '2015-12-05', '5', '2015-12-05 20:10:04', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36', '8f12be6583676e4adebcae83402849f945783769c36a45fb241b82ec346aca1004a4638a61290915c687f55087044eb53badf7ef8243d37b671cf0e416aec56b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactforms`
--
ALTER TABLE `contactforms`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_contact`
--
ALTER TABLE `form_contact`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `form_replies`
--
ALTER TABLE `form_replies`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_security`
--
ALTER TABLE `log_security`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus_child`
--
ALTER TABLE `menus_child`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_lang`
--
ALTER TABLE `multi_lang`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagemanager`
--
ALTER TABLE `pagemanager`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
 ADD PRIMARY KEY (`filename`);

--
-- Indexes for table `pl_market_cats`
--
ALTER TABLE `pl_market_cats`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_news_contents`
--
ALTER TABLE `pl_news_contents`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_news_sections`
--
ALTER TABLE `pl_news_sections`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
 ADD PRIMARY KEY (`id`), ADD KEY `grouptitle` (`grouptitle`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactforms`
--
ALTER TABLE `contactforms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `form_contact`
--
ALTER TABLE `form_contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `form_replies`
--
ALTER TABLE `form_replies`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `log_security`
--
ALTER TABLE `log_security`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `menus_child`
--
ALTER TABLE `menus_child`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `multi_lang`
--
ALTER TABLE `multi_lang`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=422;
--
-- AUTO_INCREMENT for table `pagemanager`
--
ALTER TABLE `pagemanager`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `pl_market_cats`
--
ALTER TABLE `pl_market_cats`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `pl_news_contents`
--
ALTER TABLE `pl_news_contents`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `pl_news_sections`
--
ALTER TABLE `pl_news_sections`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `usergroups`
--
ALTER TABLE `usergroups`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
