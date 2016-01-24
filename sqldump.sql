
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `developer_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `file` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `name`, `file`, `user_id`) VALUES
(1, 'ceriumhybrid', 'ceriumhybrid23135.jpg', 1),
(2, 'punishmentimplicit', 'punishmentimplicit234.gif', 2),
(3, 'monkeyslabcoat', 'monkeyslabcoat1235.png', 3),
(4, 'aliendispatch', 'taliendispatchbanner.png', 3);

-- --------------------------------------------------------

--
-- Table structure for table `statistic`
--

CREATE TABLE IF NOT EXISTS `statistic` (
  `id` bigint(21) NOT NULL AUTO_INCREMENT,
  `banner_id` bigint(21) NOT NULL,
  `impression` int(11) NOT NULL,
  `amount` float DEFAULT NULL,
  `day` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `day` (`day`),
  KEY `banner_id` (`banner_id`,`day`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1224 ;

--
-- Dumping data for table `statistic`
--

INSERT INTO `statistic` (`id`, `banner_id`, `impression`, `amount`, `day`) VALUES
(1, 2, 15948, 82, '2013-09-26'),
(2, 1, 6997, 28, '2013-09-26'),
(3, 1, 6816, 28, '2013-09-26'),
(4, 2, 15947, 83, '2013-09-26'),
(8, 1, 6993, 37, '2013-09-27'),
(9, 1, 6999, 36, '2013-09-27'),
(10, 1, 6636, 13, '2013-09-27'),
(11, 2, 15950, 64, '2013-09-27'),
(15, 1, 6605, 8, '2013-09-28'),
(16, 1, 6934, 48, '2013-09-28'),
(17, 1, 6892, 25, '2013-09-28'),
(18, 2, 15917, 63, '2013-09-28'),
(19, 1, 6763, 48, '2013-09-29'),
(20, 1, 6598, 1, '2013-09-29'),
(21, 1, 6971, 49, '2013-09-29'),
(22, 2, 16000, 96, '2013-09-29'),
(24, 1, 6788, 33, '2013-09-30'),
(25, 1, 6963, 26, '2013-09-30'),
(26, 1, 6625, 37, '2013-09-30'),
(27, 2, 15990, 66, '2013-09-30'),
(29, 1, 3703, 30, '2013-10-01'),
(30, 1, 6086, 29, '2013-10-01'),
(31, 1, 6969, 2, '2013-10-01'),
(32, 2, 15904, 93, '2013-10-01'),
(34, 1, 6873, 18, '2013-10-01'),
(35, 1, 6651, 20, '2013-10-01'),
(36, 1, 6982, 14, '2013-10-02'),
(37, 2, 15945, 99, '2013-10-10'),
(40, 1, 6529, 40, '2013-10-03'),
(41, 1, 6796, 28, '2013-10-03'),
(42, 1, 6985, 40, '2013-10-03'),
(43, 1, 6837, 16, '2013-10-03'),
(44, 2, 15824, 89, '2013-10-03'),
(48, 1, 6618, 49, '2013-10-04'),
(49, 1, 6708, 6, '2013-10-04'),
(50, 1, 6964, 25, '2013-10-04'),
(51, 2, 15984, 55, '2013-10-04'),
(55, 1, 6775, 34, '2013-10-05'),
(56, 1, 6619, 35, '2013-10-05'),
(57, 1, 6790, 21, '2013-10-05'),
(58, 2, 15968, 99, '2013-10-05'),
(62, 1, 6862, 17, '2013-10-06'),
(63, 1, 6709, 2, '2013-10-06'),
(64, 1, 6632, 13, '2013-10-06'),
(65, 2, 15992, 54, '2013-10-06'),
(69, 1, 6898, 1, '2013-10-07'),
(70, 1, 6109, 29, '2013-10-07'),
(71, 1, 6846, 3, '2013-10-07'),
(72, 2, 15976, 89, '2013-10-07'),
(77, 1, 6810, 1, '2013-10-08'),
(78, 1, 6510, 47, '2013-10-08'),
(79, 1, 5986, 22, '2013-10-08'),
(80, 2, 15829, 86, '2013-10-08'),
(85, 1, 6559, 35, '2013-10-09'),
(86, 1, 6369, 33, '2013-10-09'),
(87, 1, 6354, 34, '2013-10-09'),
(88, 2, 15994, 92, '2013-10-09'),
(93, 1, 6860, 9, '2013-10-10'),
(94, 1, 5461, 15, '2013-10-10'),
(95, 1, 6176, 45, '2013-10-10'),
(96, 2, 15938, 73, '2013-10-10'),
(101, 1, 6601, 36, '2013-10-01'),
(102, 1, 6953, 3, '2013-10-11'),
(103, 1, 6622, 18, '2013-10-11'),
(104, 2, 15935, 86, '2013-10-11'),
(109, 1, 6917, 47, '2013-10-12'),
(110, 1, 4758, 28, '2013-10-12'),
(111, 1, 6857, 37, '2013-10-12'),
(112, 2, 15806, 62, '2013-10-12'),
(117, 1, 6683, 17, '2013-10-13'),
(118, 1, 6930, 31, '2013-10-13'),
(119, 1, 6716, 43, '2013-10-13'),
(120, 2, 15986, 54, '2013-10-13'),
(125, 1, 6995, 20, '2013-10-10'),
(126, 1, 5956, 38, '2013-10-14'),
(127, 1, 6557, 47, '2013-10-14'),
(128, 2, 15897, 69, '2013-10-14'),
(135, 1, 5422, 16, '2013-10-15'),
(136, 1, 6711, 32, '2013-10-15'),
(137, 1, 6853, 31, '2013-10-15'),
(138, 2, 15989, 61, '2013-10-15'),
(145, 1, 6600, 16, '2013-10-16'),
(146, 1, 6681, 20, '2013-10-16'),
(147, 1, 6990, 2, '2013-10-16'),
(148, 2, 15988, 78, '2013-10-16'),
(155, 1, 6644, 49, '2013-10-17'),
(156, 1, 6210, 2, '2013-10-17'),
(157, 1, 6284, 38, '2013-10-17'),
(158, 2, 15996, 85, '2013-10-17'),
(165, 1, 6743, 9, '2013-10-18'),
(166, 1, 6931, 36, '2013-10-18'),
(167, 1, 6749, 18, '2013-10-18'),
(168, 2, 15909, 79, '2013-10-18'),
(175, 1, 6581, 40, '2013-10-19'),
(176, 1, 6973, 26, '2013-10-19'),
(177, 1, 7000, 27, '2013-10-19'),
(178, 2, 15983, 84, '2013-10-19'),
(185, 1, 6828, 6, '2013-10-20'),
(186, 1, 6762, 31, '2013-10-20'),
(187, 1, 6700, 2, '2013-10-20'),
(188, 2, 15981, 80, '2013-10-20'),
(195, 1, 6072, 39, '2013-10-21'),
(196, 1, 6528, 41, '2013-10-21'),
(197, 1, 6150, 15, '2013-10-21'),
(198, 2, 15960, 89, '2013-10-21'),
(209, 1, 4189, 2, '2013-10-22'),
(210, 1, 5663, 39, '2013-10-22'),
(211, 1, 4828, 42, '2013-10-22'),
(212, 2, 15977, 68, '2013-10-22'),
(226, 1, 6764, 9, '2013-10-23'),
(227, 1, 6356, 43, '2013-10-23'),
(228, 1, 6807, 43, '2013-10-23'),
(229, 2, 15979, 90, '2013-10-23'),
(243, 1, 6724, 11, '2013-10-24'),
(244, 1, 6728, 20, '2013-10-24'),
(245, 1, 6896, 37, '2013-10-24'),
(246, 2, 15970, 79, '2013-10-24'),
(263, 4, 25605, 195, '2013-10-24'),
(264, 3, 25416, 103, '2013-10-24'),
(265, 1, 6856, 40, '2013-10-24'),
(266, 1, 6950, 6, '2013-10-24'),
(267, 1, 6911, 20, '2013-10-24'),
(268, 1, 6989, 18, '2013-10-25'),
(269, 1, 6924, 32, '2013-10-25'),
(270, 1, 6906, 27, '2013-10-25'),
(271, 2, 15941, 98, '2013-10-25'),
(288, 4, 25585, 138, '2013-10-25'),
(289, 3, 25587, 200, '2013-10-25'),
(290, 1, 6863, 3, '2013-10-25'),
(291, 1, 6923, 38, '2013-10-25'),
(292, 1, 6574, 26, '2013-10-25'),
(293, 1, 6835, 20, '2013-10-26'),
(294, 1, 6671, 32, '2013-10-26'),
(295, 1, 6942, 27, '2013-10-26'),
(296, 2, 15961, 70, '2013-10-26'),
(313, 4, 25560, 190, '2013-10-26'),
(314, 3, 25591, 130, '2013-10-26'),
(315, 1, 6461, 28, '2013-10-26'),
(316, 1, 6647, 40, '2013-10-26'),
(317, 1, 6317, 15, '2013-10-26'),
(343, 1, 6620, 29, '2013-10-27'),
(344, 1, 6742, 46, '2013-10-27'),
(345, 1, 6782, 21, '2013-10-27'),
(346, 2, 15795, 82, '2013-10-27'),
(363, 4, 25572, 103, '2013-10-27'),
(364, 3, 25339, 133, '2013-10-27'),
(365, 1, 6994, 26, '2013-10-27'),
(366, 1, 6756, 31, '2013-10-27'),
(367, 1, 6890, 35, '2013-10-27'),
(368, 1, 6887, 13, '2013-10-28'),
(369, 1, 6750, 42, '2013-10-28'),
(370, 1, 6253, 36, '2013-10-28'),
(371, 2, 15864, 82, '2013-10-28'),
(388, 4, 25530, 139, '2013-10-28'),
(389, 3, 25519, 144, '2013-10-28'),
(390, 1, 6368, 3, '2013-10-28'),
(391, 1, 6592, 47, '2013-10-28'),
(392, 1, 6904, 13, '2013-10-28'),
(393, 1, 6545, 12, '2013-10-29'),
(394, 1, 6628, 13, '2013-10-29'),
(395, 1, 6699, 13, '2013-10-29'),
(396, 2, 15898, 83, '2013-10-29'),
(413, 4, 25137, 110, '2013-10-29'),
(414, 3, 25399, 139, '2013-10-29'),
(415, 1, 6984, 17, '2013-10-29'),
(416, 1, 6966, 7, '2013-10-29'),
(417, 1, 5725, 0, '2013-10-29'),
(418, 1, 6673, 47, '2013-10-30'),
(419, 1, 6481, 16, '2013-10-30'),
(420, 1, 6390, 17, '2013-10-30'),
(421, 2, 15900, 94, '2013-10-30'),
(438, 4, 25163, 123, '2013-10-30'),
(439, 3, 25400, 178, '2013-10-30'),
(440, 1, 6484, 15, '2013-10-30'),
(441, 1, 5716, 11, '2013-10-30'),
(442, 1, 6439, 1, '2013-10-30'),
(443, 1, 6304, 26, '2013-10-31'),
(444, 1, 6360, 30, '2013-10-31'),
(445, 1, 6297, 33, '2013-10-31'),
(446, 2, 15971, 95, '2013-10-31'),
(463, 4, 25557, 126, '2013-10-31'),
(464, 3, 25549, 138, '2013-10-31'),
(465, 1, 6884, 15, '2013-10-31'),
(466, 1, 6126, 43, '2013-10-31'),
(467, 1, 6558, 44, '2013-10-31'),
(468, 1, 6453, 19, '2013-10-31'),
(469, 1, 6909, 14, '2013-10-31'),
(470, 1, 6498, 39, '2013-10-31'),
(471, 1, 6957, 45, '2013-10-31'),
(472, 1, 6217, 32, '2013-11-01'),
(473, 1, 6017, 24, '2013-11-01'),
(474, 1, 6771, 28, '2013-11-01'),
(475, 2, 15964, 50, '2013-11-01'),
(492, 4, 25503, 173, '2013-11-01'),
(493, 3, 25471, 194, '2013-11-01'),
(494, 1, 6712, 13, '2013-11-01'),
(495, 1, 6725, 38, '2013-11-01'),
(496, 1, 6948, 38, '2013-11-01'),
(497, 1, 6977, 45, '2013-11-01'),
(498, 1, 6830, 44, '2013-11-01'),
(499, 1, 6633, 1, '2013-11-01'),
(500, 1, 6025, 25, '2013-11-01'),
(501, 1, 6527, 45, '2013-11-02'),
(502, 1, 6052, 38, '2013-11-02'),
(503, 1, 6662, 45, '2013-11-02'),
(504, 2, 15863, 50, '2013-11-02'),
(521, 4, 25602, 136, '2013-11-02'),
(522, 3, 25525, 195, '2013-11-02'),
(523, 1, 6329, 23, '2013-11-02'),
(524, 1, 5775, 45, '2013-11-02'),
(525, 1, 6891, 31, '2013-11-02'),
(526, 1, 6774, 43, '2013-11-02'),
(527, 1, 5980, 11, '2013-11-02'),
(528, 1, 6848, 2, '2013-11-02'),
(529, 1, 6854, 5, '2013-11-02'),
(530, 1, 6858, 24, '2013-11-03'),
(531, 1, 6246, 46, '2013-11-03'),
(532, 1, 6642, 16, '2013-11-03'),
(533, 2, 15915, 53, '2013-11-03'),
(550, 4, 25601, 136, '2013-11-03'),
(551, 3, 25534, 144, '2013-11-03'),
(552, 1, 6443, 12, '2013-11-03'),
(553, 1, 6968, 0, '2013-11-03'),
(554, 1, 6871, 41, '2013-11-03'),
(555, 1, 6761, 32, '2013-11-03'),
(556, 1, 6416, 32, '2013-11-03'),
(557, 1, 6960, 34, '2013-11-03'),
(558, 1, 5976, 49, '2013-11-03'),
(559, 1, 6680, 32, '2013-11-04'),
(560, 1, 5855, 43, '2013-11-04'),
(561, 1, 6658, 20, '2013-11-04'),
(562, 2, 15943, 77, '2013-11-04'),
(579, 4, 25483, 152, '2013-11-04'),
(580, 3, 25556, 110, '2013-11-04'),
(581, 1, 5793, 41, '2013-11-04'),
(582, 1, 5774, 31, '2013-11-04'),
(583, 1, 6920, 38, '2013-11-04'),
(584, 1, 6845, 13, '2013-11-04'),
(585, 1, 6418, 36, '2013-11-04'),
(586, 1, 6836, 24, '2013-11-04'),
(587, 1, 6352, 39, '2013-11-04'),
(588, 1, 5251, 49, '2013-11-05'),
(589, 1, 6659, 26, '2013-11-05'),
(590, 1, 6981, 23, '2013-11-05'),
(591, 2, 15980, 85, '2013-11-05'),
(608, 4, 25465, 131, '2013-11-05'),
(609, 3, 25500, 136, '2013-11-05'),
(610, 1, 6627, 47, '2013-11-05'),
(611, 1, 6937, 43, '2013-11-05'),
(612, 1, 6714, 28, '2013-11-05'),
(613, 1, 5925, 33, '2013-11-05'),
(614, 1, 5975, 8, '2013-11-05'),
(615, 1, 6826, 6, '2013-11-05'),
(616, 1, 6213, 14, '2013-11-05'),
(617, 1, 6432, 43, '2013-11-05'),
(618, 1, 6902, 16, '2013-11-06'),
(619, 1, 6684, 43, '2013-11-06'),
(620, 1, 6972, 6, '2013-11-06'),
(621, 2, 15954, 81, '2013-11-06'),
(638, 4, 25615, 135, '2013-11-06'),
(639, 3, 25578, 135, '2013-11-06'),
(640, 1, 6938, 4, '2013-11-06'),
(641, 1, 6380, 40, '2013-11-06'),
(642, 1, 6483, 25, '2013-11-06'),
(643, 1, 6560, 3, '2013-11-06'),
(644, 1, 6362, 3, '2013-11-06'),
(645, 1, 6704, 38, '2013-11-06'),
(646, 1, 6616, 29, '2013-11-06'),
(647, 1, 6406, 42, '2013-11-06'),
(648, 1, 6292, 13, '2013-11-06'),
(649, 1, 6992, 9, '2013-11-07'),
(650, 1, 6806, 0, '2013-11-07'),
(651, 1, 6100, 35, '2013-11-07'),
(652, 2, 15985, 55, '2013-11-07'),
(669, 4, 25301, 184, '2013-11-07'),
(670, 3, 25484, 184, '2013-11-07'),
(671, 1, 6962, 26, '2013-11-07'),
(672, 1, 6579, 0, '2013-11-07'),
(673, 1, 6458, 35, '2013-11-07'),
(674, 1, 5831, 43, '2013-11-07'),
(675, 1, 6564, 3, '2013-11-07'),
(676, 1, 6820, 0, '2013-11-07'),
(677, 1, 6805, 12, '2013-11-07'),
(678, 1, 6289, 47, '2013-11-07'),
(679, 1, 6903, 45, '2013-11-07'),
(680, 1, 6951, 15, '2013-11-07'),
(681, 1, 6690, 47, '2013-11-08'),
(682, 1, 6405, 11, '2013-11-08'),
(683, 1, 6766, 14, '2013-11-08'),
(684, 2, 15999, 91, '2013-11-08'),
(701, 4, 25539, 123, '2013-11-08'),
(702, 3, 25548, 187, '2013-11-08'),
(703, 1, 6945, 29, '2013-11-08'),
(704, 1, 4826, 9, '2013-11-08'),
(705, 1, 6660, 38, '2013-11-08'),
(706, 1, 6947, 9, '2013-11-08'),
(707, 1, 6185, 19, '2013-11-08'),
(708, 1, 6949, 30, '2013-11-08'),
(709, 1, 6965, 1, '2013-11-08'),
(710, 1, 6978, 36, '2013-11-08'),
(711, 1, 6569, 45, '2013-11-08'),
(712, 1, 6908, 35, '2013-11-08'),
(713, 1, 6867, 22, '2013-11-09'),
(714, 1, 5781, 26, '2013-11-09'),
(715, 1, 6404, 31, '2013-11-09'),
(716, 2, 15957, 54, '2013-11-09'),
(733, 4, 25459, 134, '2013-11-09'),
(734, 3, 25499, 105, '2013-11-09'),
(735, 1, 6506, 30, '2013-11-09'),
(736, 1, 6910, 32, '2013-11-09'),
(737, 1, 6899, 11, '2013-11-09'),
(738, 1, 6593, 2, '2013-11-09'),
(739, 1, 6955, 25, '2013-11-09'),
(740, 1, 6821, 39, '2013-11-09'),
(741, 1, 5848, 14, '2013-11-09'),
(742, 1, 6831, 11, '2013-11-09'),
(743, 1, 6833, 30, '2013-11-09'),
(744, 1, 6888, 15, '2013-11-09'),
(745, 1, 5765, 30, '2013-11-10'),
(746, 1, 6299, 26, '2013-11-10'),
(747, 1, 6893, 47, '2013-11-10'),
(748, 2, 15995, 97, '2013-11-10'),
(765, 4, 25532, 145, '2013-11-10'),
(766, 3, 25424, 133, '2013-11-10'),
(767, 1, 5757, 30, '2013-11-10'),
(768, 1, 6588, 18, '2013-11-10'),
(769, 1, 6870, 15, '2013-11-10'),
(770, 1, 6913, 27, '2013-11-10'),
(771, 1, 6976, 36, '2013-11-10'),
(772, 1, 6789, 15, '2013-11-10'),
(773, 1, 6386, 6, '2013-11-10'),
(774, 1, 6502, 2, '2013-11-10'),
(775, 1, 6489, 13, '2013-11-10'),
(776, 1, 6986, 10, '2013-11-10'),
(777, 1, 5817, 48, '2013-11-11'),
(778, 1, 6928, 39, '2013-11-11'),
(779, 1, 5700, 20, '2013-11-11'),
(780, 2, 15972, 73, '2013-11-11'),
(797, 4, 25506, 169, '2013-11-11'),
(798, 3, 25541, 154, '2013-11-11'),
(799, 1, 5566, 25, '2013-11-11'),
(800, 1, 6570, 19, '2013-11-11'),
(801, 1, 6654, 49, '2013-11-11'),
(802, 1, 6657, 9, '2013-11-11'),
(803, 1, 6438, 25, '2013-11-11'),
(804, 1, 6804, 27, '2013-11-11'),
(805, 1, 6104, 39, '2013-11-11'),
(806, 1, 5179, 46, '2013-11-11'),
(807, 1, 6798, 19, '2013-11-11'),
(808, 1, 6634, 36, '2013-11-11'),
(809, 1, 6855, 6, '2013-11-12'),
(810, 1, 6939, 41, '2013-11-12'),
(811, 1, 6384, 32, '2013-11-12'),
(812, 2, 15949, 51, '2013-11-12'),
(829, 4, 25333, 113, '2013-11-12'),
(830, 3, 25584, 141, '2013-11-12'),
(831, 1, 5580, 41, '2013-11-12'),
(832, 1, 6335, 42, '2013-11-12'),
(833, 1, 6800, 30, '2013-11-12'),
(834, 1, 6000, 4, '2013-11-12'),
(835, 1, 6626, 39, '2013-11-12'),
(836, 1, 6565, 6, '2013-11-12'),
(837, 1, 6983, 17, '2013-11-12'),
(838, 1, 6707, 38, '2013-11-12'),
(839, 1, 6083, 29, '2013-11-12'),
(840, 1, 6116, 32, '2013-11-12'),
(841, 1, 6886, 43, '2013-11-13'),
(842, 1, 6866, 3, '2013-11-13'),
(843, 1, 6841, 13, '2013-11-13'),
(844, 2, 15924, 62, '2013-11-13'),
(861, 4, 25158, 159, '2013-11-13'),
(862, 3, 25597, 123, '2013-11-13'),
(863, 1, 6770, 30, '2013-11-13'),
(864, 1, 6929, 5, '2013-11-13'),
(865, 1, 6454, 29, '2013-11-13'),
(866, 1, 6242, 2, '2013-11-13'),
(867, 1, 4547, 37, '2013-11-13'),
(868, 1, 5870, 40, '2013-11-13'),
(869, 1, 6776, 48, '2013-11-13'),
(870, 1, 6799, 25, '2013-11-13'),
(871, 1, 6513, 29, '2013-11-13'),
(872, 1, 6026, 9, '2013-11-13'),
(873, 1, 6894, 35, '2013-11-13'),
(874, 1, 5557, 14, '2013-11-14'),
(875, 1, 6974, 47, '2013-11-14'),
(876, 1, 6693, 17, '2013-11-14'),
(877, 2, 15978, 78, '2013-11-14'),
(894, 4, 25502, 163, '2013-11-14'),
(895, 3, 25588, 111, '2013-11-14'),
(896, 1, 6781, 33, '2013-11-14'),
(897, 1, 6434, 19, '2013-11-14'),
(898, 1, 6961, 35, '2013-11-14'),
(899, 1, 6607, 4, '2013-11-14'),
(900, 1, 5145, 17, '2013-11-14'),
(901, 1, 6918, 5, '2013-11-14'),
(902, 1, 6672, 1, '2013-11-14'),
(903, 1, 6472, 24, '2013-11-14'),
(904, 1, 6905, 15, '2013-11-14'),
(905, 1, 6927, 37, '2013-11-14'),
(906, 1, 6907, 9, '2013-11-14'),
(907, 1, 6653, 43, '2013-11-15'),
(908, 1, 6656, 41, '2013-11-15'),
(909, 1, 6958, 35, '2013-11-15'),
(910, 2, 15963, 97, '2013-11-15'),
(927, 4, 25592, 136, '2013-11-15'),
(928, 3, 25448, 120, '2013-11-15'),
(929, 1, 6350, 21, '2013-11-15'),
(930, 1, 6735, 8, '2013-11-15'),
(931, 1, 6494, 2, '2013-11-15'),
(932, 1, 6783, 43, '2013-11-15'),
(933, 1, 6490, 23, '2013-11-15'),
(934, 1, 6818, 11, '2013-11-15'),
(935, 1, 6377, 10, '2013-11-15'),
(936, 1, 6516, 1, '2013-11-15'),
(937, 1, 6163, 21, '2013-11-15'),
(938, 1, 5397, 5, '2013-11-15'),
(939, 1, 6808, 1, '2013-11-15'),
(940, 1, 6991, 42, '2013-11-16'),
(941, 1, 6936, 49, '2013-11-16'),
(942, 1, 6639, 5, '2013-11-16'),
(943, 2, 15912, 59, '2013-11-16'),
(960, 4, 25531, 193, '2013-11-16'),
(961, 3, 25320, 132, '2013-11-16'),
(962, 1, 6824, 12, '2013-11-16'),
(963, 1, 6663, 14, '2013-11-16'),
(964, 1, 6926, 14, '2013-11-16'),
(965, 1, 6979, 48, '2013-11-16'),
(966, 1, 6674, 27, '2013-11-16'),
(967, 1, 6470, 16, '2013-11-16'),
(968, 1, 6809, 8, '2013-11-16'),
(969, 1, 6941, 13, '2013-11-16'),
(970, 1, 6840, 21, '2013-11-16'),
(971, 1, 6878, 41, '2013-11-16'),
(972, 1, 6996, 46, '2013-11-16'),
(973, 1, 6895, 33, '2013-11-17'),
(974, 1, 6877, 23, '2013-11-17'),
(975, 1, 5820, 36, '2013-11-17'),
(976, 2, 15973, 82, '2013-11-17'),
(993, 4, 25564, 163, '2013-11-17'),
(994, 3, 25594, 184, '2013-11-17'),
(995, 1, 6436, 8, '2013-11-17'),
(996, 1, 6550, 47, '2013-11-17'),
(997, 1, 6575, 36, '2013-11-17'),
(998, 1, 6885, 0, '2013-11-17'),
(999, 1, 6865, 35, '2013-11-17'),
(1000, 1, 6412, 35, '2013-11-17'),
(1001, 1, 5598, 10, '2013-11-17'),
(1002, 1, 4496, 30, '2013-11-17'),
(1003, 1, 6844, 49, '2013-11-17'),
(1004, 1, 5600, 0, '2013-11-17'),
(1005, 1, 5385, 17, '2013-11-17'),
(1006, 1, 6114, 9, '2013-11-18'),
(1007, 1, 6430, 36, '2013-11-18'),
(1008, 1, 6838, 47, '2013-11-18'),
(1009, 2, 15910, 51, '2013-11-18'),
(1026, 4, 25616, 133, '2013-11-18'),
(1027, 3, 25565, 188, '2013-11-18'),
(1028, 1, 6554, 14, '2013-11-18'),
(1029, 1, 6916, 7, '2013-11-18'),
(1030, 1, 6925, 30, '2013-11-18'),
(1031, 1, 6492, 11, '2013-11-18'),
(1032, 1, 6414, 15, '2013-11-18'),
(1033, 1, 6326, 19, '2013-11-18'),
(1034, 1, 6346, 7, '2013-11-18'),
(1035, 1, 6765, 22, '2013-11-18'),
(1036, 1, 6881, 34, '2013-11-18'),
(1037, 1, 6842, 3, '2013-11-18'),
(1038, 1, 6741, 10, '2013-11-18'),
(1039, 1, 6959, 44, '2013-11-19'),
(1040, 1, 6703, 16, '2013-11-19'),
(1041, 1, 5766, 25, '2013-11-19'),
(1042, 2, 15997, 97, '2013-11-19'),
(1059, 4, 25514, 113, '2013-11-19'),
(1060, 3, 25174, 121, '2013-11-19'),
(1061, 1, 6745, 18, '2013-11-19'),
(1062, 1, 6801, 1, '2013-11-19'),
(1063, 1, 6456, 37, '2013-11-19'),
(1064, 1, 5360, 21, '2013-11-19'),
(1065, 1, 6306, 40, '2013-11-19'),
(1066, 1, 6048, 12, '2013-11-19'),
(1067, 1, 6900, 20, '2013-11-19'),
(1068, 1, 5683, 2, '2013-11-19'),
(1069, 1, 6760, 18, '2013-11-19'),
(1070, 1, 6872, 31, '2013-11-19'),
(1071, 1, 6591, 6, '2013-11-19'),
(1072, 1, 6748, 23, '2013-11-20'),
(1073, 1, 6954, 21, '2013-11-20'),
(1074, 1, 6495, 21, '2013-11-20'),
(1075, 1, 6342, 41, '2013-11-20'),
(1076, 1, 6695, 17, '2013-11-20'),
(1077, 2, 15998, 66, '2013-11-20'),
(1094, 4, 25523, 122, '2013-11-20'),
(1095, 3, 25551, 165, '2013-11-20'),
(1096, 1, 6445, 8, '2013-11-20'),
(1097, 1, 6803, 4, '2013-11-20'),
(1098, 1, 6975, 35, '2013-11-20'),
(1099, 1, 6020, 46, '2013-11-20'),
(1100, 1, 6897, 21, '2013-11-20'),
(1101, 1, 6998, 9, '2013-11-20'),
(1102, 1, 6912, 3, '2013-11-20'),
(1103, 1, 6718, 3, '2013-11-20'),
(1104, 1, 6876, 39, '2013-11-20'),
(1105, 1, 6353, 14, '2013-11-20'),
(1106, 1, 6793, 23, '2013-11-20'),
(1107, 1, 6879, 37, '2013-11-21'),
(1108, 1, 6577, 14, '2013-11-21'),
(1109, 1, 5985, 31, '2013-11-21'),
(1110, 1, 5989, 43, '2013-11-21'),
(1111, 2, 15987, 65, '2013-11-21'),
(1128, 4, 25552, 160, '2013-11-21'),
(1129, 3, 25450, 193, '2013-11-21'),
(1130, 1, 6290, 21, '2013-11-21'),
(1131, 1, 6802, 29, '2013-11-21'),
(1132, 1, 6988, 26, '2013-11-21'),
(1133, 1, 6875, 39, '2013-11-21'),
(1134, 1, 6245, 40, '2013-11-21'),
(1135, 1, 6980, 16, '2013-11-21'),
(1136, 1, 6791, 34, '2013-11-21'),
(1137, 1, 6823, 3, '2013-11-21'),
(1138, 1, 6476, 36, '2013-11-21'),
(1139, 1, 5392, 43, '2013-11-21'),
(1140, 1, 6629, 39, '2013-11-21'),
(1141, 1, 6675, 30, '2013-11-22'),
(1142, 1, 6943, 32, '2013-11-22'),
(1143, 1, 6829, 32, '2013-11-22'),
(1144, 2, 15982, 80, '2013-11-22'),
(1161, 4, 25480, 165, '2013-11-22'),
(1162, 3, 25290, 136, '2013-11-22'),
(1163, 1, 6932, 34, '2013-11-22'),
(1164, 1, 6970, 10, '2013-11-22'),
(1165, 1, 6814, 9, '2013-11-22'),
(1166, 1, 6542, 23, '2013-11-22'),
(1167, 1, 5623, 26, '2013-11-22'),
(1168, 1, 6946, 7, '2013-11-22'),
(1169, 1, 6921, 35, '2013-11-22'),
(1170, 1, 6655, 31, '2013-11-22'),
(1171, 1, 6519, 33, '2013-11-22'),
(1172, 1, 6736, 29, '2013-11-22'),
(1173, 1, 5286, 4, '2013-11-22'),
(1174, 1, 6676, 35, '2013-11-23'),
(1175, 1, 6715, 40, '2013-11-23'),
(1176, 1, 6880, 15, '2013-11-23'),
(1177, 2, 15946, 92, '2013-11-23'),
(1194, 4, 25603, 141, '2013-11-23'),
(1195, 3, 24891, 188, '2013-11-23'),
(1196, 1, 6608, 27, '2013-11-23'),
(1197, 1, 6689, 21, '2013-11-23'),
(1198, 1, 5910, 29, '2013-11-23'),
(1199, 1, 6987, 24, '2013-11-23'),
(1200, 1, 6596, 44, '2013-11-23'),
(1201, 1, 6914, 2, '2013-11-23'),
(1202, 1, 6721, 35, '2013-11-23'),
(1203, 1, 5022, 28, '2013-11-23'),
(1204, 1, 6621, 22, '2013-11-23'),
(1205, 1, 5622, 45, '2013-11-23'),
(1206, 1, 6410, 46, '2013-11-23'),
(1207, 1, 6587, 49, '2013-11-24'),
(1208, 1, 6720, 46, '2013-11-24'),
(1209, 1, 6156, 7, '2013-11-24'),
(1210, 2, 15813, 99, '2013-11-24');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(85) NOT NULL,
  `email` varchar(45) NOT NULL,
  `active` tinyint(2) NOT NULL,
  `registered` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `active` (`active`,`registered`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `active`, `registered`) VALUES
(1, 'crawlgloomy', 'test1@crawlgloomy.com', 1, '2016-01-28 17:41:43'),
(2, 'modulebugbear', 'modulebugbear@randomthings.com', 1, '2016-01-28 17:41:43'),
(3, 'velocityenteral', 'velocityenteral@grabme.com', 1, '2016-01-28 17:41:43');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
