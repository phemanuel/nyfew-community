-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2025 at 08:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nyfew-community`
--

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `name`, `description`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'When the.', 'This time there were three little sisters--they were learning to draw, you.', 'default.png', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(2, 'Him, and.', 'Mock Turtle\'s heavy sobs. Lastly, she pictured to herself in a trembling.', 'default.png', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(3, 'Who ever.', 'Duchess: \'flamingoes and mustard both bite. And the moral of that is--\"Oh.', 'default.png', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(4, 'Dormouse.', 'Gryphon added \'Come, let\'s try Geography. London is the same tone, exactly as.', 'default.png', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(5, 'Said his.', 'Footman continued in the window?\' \'Sure, it\'s an arm for all that.\' \'Well.', 'default.png', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(6, 'King and.', 'They had not gone far before they saw her, they hurried back to my jaw, Has.', 'default.png', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(7, 'And here.', 'Alice; but she added, \'and the moral of that dark hall, and close to them.', 'default.png', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(8, 'Then she.', 'IS it to annoy, Because he knows it teases.\' CHORUS. (In which the March Hare.', 'default.png', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(9, 'I should.', 'Alice could think of nothing better to say anything. \'Why,\' said the Knave, \'I.', 'default.png', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(10, 'King put.', 'Dinn may be,\' said the Dormouse, and repeated her question. \'Why did they live.', 'default.png', '2025-06-13 01:09:03', '2025-06-13 01:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_logs`
--

CREATE TABLE `credit_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `title`, `description`, `parent_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Alice thought to herself. Imagine her surprise.', 'Dinah, if I fell off the cake. * * * * * * * * CHAPTER II. The Pool of Tears.', NULL, 1, '2025-06-13 01:09:02', '2025-06-13 01:09:02'),
(2, 'Shall I try the effect: the next moment a shower.', 'I ever saw one that size? Why, it fills the whole pack rose up into a sort of.', NULL, 1, '2025-06-13 01:09:02', '2025-06-13 01:09:02'),
(3, 'MYSELF, I\'m afraid, but you might do something.', 'I would talk on such a thing I ever saw in another moment, when she looked up.', 1, 1, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(4, 'Dinah, if I shall only look up in her face, with.', 'Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the.', 1, 1, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(5, 'He got behind Alice as he spoke, and added with.', 'Rabbit in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up.', 2, 1, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(6, 'I\'d been the whiting,\' said Alice, quite.', 'Ma!\' said the Mock Turtle sighed deeply, and drew the back of one flapper.', 2, 1, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(7, 'In another moment it was YOUR table,\' said.', 'Alice for protection. \'You shan\'t be beheaded!\' \'What for?\' said Alice. \'Why?\'.', NULL, 2, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(8, 'Rabbit whispered in a hurry to change them--\'.', 'Alice could see this, as she did not get hold of anything, but she remembered.', NULL, 2, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(9, 'THAT direction,\' the Cat said, waving its tail.', 'Alice started to her ear. \'You\'re thinking about something, my dear, YOU must.', 7, 2, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(10, 'White Rabbit; \'in fact, there\'s nothing written.', 'Hatter trembled so, that Alice said; but was dreadfully puzzled by the way.', 7, 2, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(11, 'I must go and take it away!\' There was a.', 'King added in an undertone, \'important--unimportant--unimportant--important--\'.', 8, 2, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(12, 'Alice waited till she too began dreaming after a.', 'WAS a narrow escape!\' said Alice, quite forgetting in the air: it puzzled her.', 8, 2, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(13, 'After a time she had brought herself down to her.', 'Gryphon, \'you first form into a pig,\' Alice quietly said, just as well. The.', NULL, 3, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(14, 'Northumbria--\"\' \'Ugh!\' said the Mock Turtle.', 'I\'ll go round and get ready to agree to everything that was lying under the.', NULL, 3, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(15, 'After a minute or two, they began moving about.', 'Alice tried to curtsey as she could, \'If you do. I\'ll set Dinah at you!\' There.', 13, 3, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(16, 'King said, with a soldier on each side, and.', 'Majesty!\' the Duchess replied, in a twinkling! Half-past one, time for.', 13, 3, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(17, 'Pig!\' She said this she looked up, and began to.', 'Alice. \'Come on, then,\' said the King. On this the White Rabbit blew three.', 14, 3, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(18, 'YET,\' she said to herself, as she was ready to.', 'WHAT things?\' said the Pigeon; \'but if they do, why then they\'re a kind of.', 14, 3, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(19, 'Alice. \'Who\'s making personal remarks now?\' the.', 'I look like one, but it puzzled her a good way off, panting, with its tongue.', NULL, 4, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(20, 'Caterpillar sternly. \'Explain yourself!\' \'I.', 'Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Dormouse: \'not in that.', NULL, 4, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(21, 'Alice, as she tucked it away under her arm, that.', 'Alice ventured to taste it, and very soon finished it off. \'If everybody.', 19, 4, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(22, 'The first thing she heard a voice sometimes.', 'So Alice got up this morning? I almost wish I\'d gone to see that the way out.', 19, 4, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(23, 'I\'ll tell you more than Alice could not answer.', 'Alice. \'Come on, then,\' said Alice, (she had kept a piece of bread-and-butter.', 20, 4, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(24, 'When the Mouse heard this, it turned round and.', 'Even the Duchess was sitting on a three-legged stool in the lap of her own.', 20, 4, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(25, 'Alice, who felt very lonely and low-spirited. In.', 'Queen of Hearts, and I had our Dinah here, I know who I WAS when I got up and.', NULL, 5, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(26, 'I suppose.\' So she set off at once, in a long.', 'I can find out the Fish-Footman was gone, and, by the way, was the matter on.', NULL, 5, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(27, 'Knave of Hearts, who only bowed and smiled in.', 'I should say \"With what porpoise?\"\' \'Don\'t you mean that you had been found.', 25, 5, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(28, 'Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO.', 'March Hare: she thought it had no very clear notion how delightful it will be.', 25, 5, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(29, 'Allow me to him: She gave me a pair of white kid.', 'French mouse, come over with fright. \'Oh, I beg your pardon,\' said Alice.', 26, 5, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(30, 'Queen: so she turned to the end: then stop.\'.', 'I do so like that curious song about the temper of your flamingo. Shall I try.', 26, 5, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(31, 'Which way?\', holding her hand again, and we put.', 'The door led right into a graceful zigzag, and was going a journey, I should.', NULL, 6, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(32, 'Alice, rather alarmed at the end.\' \'If you.', 'I didn\'t!\' interrupted Alice. \'You are,\' said the last word with such sudden.', NULL, 6, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(33, 'Rabbit\'s voice; and Alice joined the procession.', 'Hatter. \'It isn\'t directed at all,\' said the King. \'Nothing whatever,\' said.', 31, 6, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(34, 'March Hare took the cauldron of soup off the top.', 'I\'ve seen that done,\' thought Alice. \'Now we shall have to fly; and the.', 31, 6, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(35, 'I\'ve finished.\' So they couldn\'t get them out.', 'Alice heard the King and the whole pack of cards, after all. \"--SAID I COULD.', 32, 6, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(36, 'Alice\'s shoulder as she could have told you.', 'Let me see--how IS it to half-past one as long as I tell you, you coward!\' and.', 32, 6, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(37, 'NOT!\' cried the Mock Turtle, \'but if they do.', 'Gryphon, with a yelp of delight, which changed into alarm in another moment.', NULL, 7, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(38, 'She had just begun to dream that she tipped over.', 'NEVER get any older than you, and must know better\'; and this he handed over.', NULL, 7, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(39, 'Alice herself, and fanned herself with one eye.', 'March Hare. Alice was silent. The Dormouse again took a great deal to come.', 37, 7, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(40, 'NOT be an advantage,\' said Alice, \'because I\'m.', 'Alice remarked. \'Right, as usual,\' said the King said, turning to the other.', 37, 7, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(41, 'WHATEVER?\' persisted the King. \'Then it doesn\'t.', 'MUST have meant some mischief, or else you\'d have signed your name like an.', 38, 7, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(42, 'March Hare meekly replied. \'Yes, but I don\'t.', 'English, who wanted leaders, and had no pictures or conversations?\' So she.', 38, 7, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(43, 'Dormouse; \'--well in.\' This answer so confused.', 'Mock Turtle in a languid, sleepy voice. \'Who are YOU?\' Which brought them back.', NULL, 8, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(44, 'Dormouse again, so that her shoulders were.', 'Duck and a piece of it had struck her foot! She was close behind it was all.', NULL, 8, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(45, 'Dodo could not help bursting out laughing: and.', 'But the snail replied \"Too far, too far!\" and gave a little of it?\' said the.', 43, 8, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(46, 'She was moving them about as much as she could.', 'SIT down,\' the King sharply. \'Do you play croquet with the other: the only.', 43, 8, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(47, 'Shakespeare, in the distance, sitting sad and.', 'Alice. \'Off with his whiskers!\' For some minutes it seemed quite dull and.', 44, 8, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(48, 'The hedgehog was engaged in a low voice, to the.', 'I only knew how to spell \'stupid,\' and that he shook both his shoes on. \'--and.', 44, 8, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(49, 'Dormouse,\' the Queen said--\' \'Get to your.', 'ARE OLD, FATHER WILLIAM,\' to the end of every line: \'Speak roughly to your.', NULL, 9, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(50, 'Queen, tossing her head in the flurry of the.', 'Dormouse followed him: the March Hare took the opportunity of saying to.', NULL, 9, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(51, 'Alice sharply, for she was up to her feet, they.', 'Alice joined the procession, wondering very much confused, \'I don\'t think it\'s.', 49, 9, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(52, 'Very soon the Rabbit say, \'A barrowful will do.', 'Gryphon. \'We can do no more, whatever happens. What WILL become of it; and the.', 49, 9, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(53, 'PLEASE mind what you\'re talking about,\' said.', 'Why, there\'s hardly room to open them again, and put it into his plate. Alice.', 50, 9, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(54, 'Then it got down off the top of the game, the.', 'Alice to herself, \'after such a new pair of the jurymen. \'No, they\'re not,\'.', 50, 9, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(55, 'Caterpillar was the Duchess\'s cook. She carried.', 'When the Mouse replied rather impatiently: \'any shrimp could have told you.', NULL, 10, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(56, 'Alice started to her that she was considering in.', 'I shall never get to the heads of the Lobster Quadrille?\' the Gryphon hastily.', NULL, 10, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(57, 'At last the Caterpillar called after it; and as.', 'Alice, and she went down on their slates, \'SHE doesn\'t believe there\'s an atom.', 55, 10, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(58, 'The rabbit-hole went straight on like a tunnel.', 'Alice began to get into her eyes; and once she remembered that she knew that.', 55, 10, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(59, 'She said this she looked up and saying, \'Thank.', 'I can guess that,\' she added in a dreamy sort of idea that they had a little.', 56, 10, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(60, 'I\'m angry. Therefore I\'m mad.\' \'I call it sad?\'.', 'VERY wide, but she heard it say to itself \'Then I\'ll go round and look up and.', 56, 10, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(61, 'But I\'ve got to grow larger again, and Alice.', 'Duchess, who seemed to think to herself, \'the way all the party sat silent and.', NULL, 11, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(62, 'Duchess, digging her sharp little chin. \'I\'ve a.', 'Alice. \'Now we shall have to ask the question?\' said the Rabbit\'s little white.', NULL, 12, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(63, 'Mouse, who seemed ready to sink into the garden.', 'PROVES his guilt,\' said the King, the Queen, tossing her head down to the.', NULL, 13, '2025-06-13 01:09:03', '2025-06-13 01:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'public',
  `avatar` varchar(255) DEFAULT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `type`, `avatar`, `owner_id`, `created_at`, `updated_at`) VALUES
(1, 'And I declare.', 'Let me see: that would be like, \'--for they haven\'t got much evidence YET,\'.', 'public', 'blank.png', 14, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(2, 'Who ever saw.', 'I haven\'t been invited yet.\' \'You\'ll see me there,\' said the March Hare said.', 'public', 'blank.png', 15, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(3, 'When she got.', 'Duchess began in a deep voice, \'are done with blacking, I believe.\' \'Boots and.', 'private', 'blank.png', 16, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(4, 'Magpie began.', 'Alice. \'That\'s very curious.\' \'It\'s all her riper years, the simple and loving.', 'private', 'blank.png', 17, '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(5, 'Dormouse was.', 'She went on in these words: \'Yes, we went to work very diligently to write.', 'private', 'blank.png', 18, '2025-06-13 01:09:03', '2025-06-13 01:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE `group_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'member',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`id`, `group_id`, `user_id`, `role`, `created_at`, `updated_at`) VALUES
(1, 1, 15, 'member', NULL, NULL),
(2, 1, 8, 'member', NULL, NULL),
(3, 1, 2, 'member', NULL, NULL),
(4, 1, 10, 'member', NULL, NULL),
(5, 1, 7, 'member', NULL, NULL),
(6, 2, 3, 'member', NULL, NULL),
(7, 2, 15, 'member', NULL, NULL),
(8, 2, 6, 'member', NULL, NULL),
(9, 2, 1, 'member', NULL, NULL),
(10, 2, 16, 'member', NULL, NULL),
(11, 3, 2, 'member', NULL, NULL),
(12, 3, 15, 'member', NULL, NULL),
(13, 3, 11, 'member', NULL, NULL),
(14, 3, 12, 'member', NULL, NULL),
(15, 3, 17, 'member', NULL, NULL),
(16, 4, 16, 'member', NULL, NULL),
(17, 4, 8, 'member', NULL, NULL),
(18, 4, 15, 'member', NULL, NULL),
(19, 4, 14, 'member', NULL, NULL),
(20, 4, 1, 'member', NULL, NULL),
(21, 5, 13, 'member', NULL, NULL),
(22, 5, 11, 'member', NULL, NULL),
(23, 5, 15, 'member', NULL, NULL),
(24, 5, 5, 'member', NULL, NULL),
(25, 5, 4, 'member', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `group_posts`
--

CREATE TABLE `group_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketplace_items`
--

CREATE TABLE `marketplace_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marketplace_items`
--

INSERT INTO `marketplace_items` (`id`, `user_id`, `title`, `description`, `price`, `type`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cat, and.', 'I\'ll kick you down stairs!\' \'That is not said right,\' said the Gryphon went on.', 287, 'digital', 'default.png', 'sold', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(2, 1, 'IT TO BE.', 'Mock Turtle: \'why, if a dish or kettle had been of late much accustomed to.', 480, 'physical', 'default.png', 'available', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(3, 2, 'Dormouse.', 'Majesty!\' the Duchess was sitting on the Duchess\'s knee, while plates and.', 101, 'digital', 'default.png', 'sold', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(4, 3, 'They are.', 'Alice was a good deal: this fireplace is narrow, to be sure! However.', 59, 'digital', 'default.png', 'available', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(5, 3, 'For some.', 'No, no! You\'re a serpent; and there\'s no use in waiting by the fire, licking.', 292, 'physical', 'default.png', 'available', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(6, 3, 'King put.', 'YOU must cross-examine THIS witness.\' \'Well, if I fell off the mushroom, and.', 244, 'digital', 'default.png', 'sold', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(7, 4, 'King. On.', 'So you see, so many different sizes in a natural way again. \'I should have.', 310, 'physical', 'default.png', 'sold', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(8, 4, 'Duchess!.', 'Alice, thinking it was not otherwise than what you like,\' said the King. The.', 282, 'digital', 'default.png', 'sold', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(9, 4, 'Cat in a.', 'Gryphon. Alice did not seem to have him with them,\' the Mock Turtle said: \'I\'m.', 494, 'physical', 'default.png', 'available', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(10, 5, 'I almost.', 'Alice glanced rather anxiously at the door--I do wish I hadn\'t quite finished.', 17, 'digital', 'default.png', 'sold', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(11, 6, 'THE KING.', 'Queen. First came ten soldiers carrying clubs; these were ornamented all over.', 454, 'physical', 'default.png', 'available', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(12, 6, 'Dinah my.', 'Alice, \'but I haven\'t had a large caterpillar, that was said, and went in. The.', 130, 'physical', 'default.png', 'available', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(13, 6, 'HAVE you.', 'I\'d gone to see that queer little toss of her childhood: and how she would.', 459, 'physical', 'default.png', 'available', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(14, 7, 'She felt.', 'White Rabbit returning, splendidly dressed, with a kind of authority among.', 55, 'digital', 'default.png', 'sold', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(15, 7, 'I wonder.', 'Gryphon said to herself, \'Why, they\'re only a child!\' The Queen smiled and.', 121, 'physical', 'default.png', 'sold', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(16, 8, 'I to get.', 'Queen to play with, and oh! ever so many different sizes in a fight with.', 309, 'physical', 'default.png', 'available', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(17, 8, 'I know I.', 'Dormouse indignantly. However, he consented to go and get ready to sink into.', 92, 'digital', 'default.png', 'available', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(18, 9, 'I was, I.', 'Rabbit asked. \'No, I give you fair warning,\' shouted the Queen to play croquet.', 188, 'digital', 'default.png', 'sold', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(19, 9, 'They all.', 'Please, Ma\'am, is this New Zealand or Australia?\' (and she tried to beat them.', 122, 'digital', 'default.png', 'available', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(20, 9, 'I should.', 'HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\'.', 133, 'digital', 'default.png', 'available', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(21, 10, 'I\'ve got.', 'Queen, who were giving it a bit, if you were all writing very busily on.', 243, 'digital', 'default.png', 'sold', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(22, 10, 'They had.', 'However, she got up, and began staring at the door-- Pray, what is the capital.', 491, 'digital', 'default.png', 'sold', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(23, 11, 'Dormouse.', 'I think--\' (for, you see, as she spoke. \'I must be kind to them,\' thought.', 51, 'digital', 'default.png', 'sold', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(24, 11, 'It\'s the.', 'White Rabbit blew three blasts on the floor, as it lasted.) \'Then the words.', 147, 'digital', 'default.png', 'sold', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(25, 11, 'Sing her.', 'Lobster Quadrille?\' the Gryphon only answered \'Come on!\' cried the Gryphon.', 414, 'digital', 'default.png', 'available', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(26, 12, 'Turtle.\'.', 'Hatter: \'it\'s very rude.\' The Hatter was the Duchess\'s knee, while plates and.', 99, 'physical', 'default.png', 'sold', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(27, 12, 'They all.', 'Alice looked at the cook took the place where it had entirely disappeared; so.', 20, 'digital', 'default.png', 'sold', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(28, 12, 'It means.', 'Who would not give all else for two Pennyworth only of beautiful Soup?.', 131, 'physical', 'default.png', 'sold', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(29, 13, 'Off with.', 'Hatter: \'it\'s very easy to take the hint; but the three gardeners, oblong and.', 46, 'digital', 'default.png', 'available', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(30, 13, 'She felt.', 'Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse.', 31, 'physical', 'default.png', 'available', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(31, 14, 'Rabbit\'s.', 'Alice! Come here directly, and get in at all?\' said Alice, who felt very.', 377, 'physical', 'default.png', 'available', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(32, 14, 'I know I.', 'Mock Turtle angrily: \'really you are very dull!\' \'You ought to be an old.', 33, 'digital', 'default.png', 'available', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(33, 15, 'M?\' said.', 'THIS FIT--\" you never to lose YOUR temper!\' \'Hold your tongue!\' said the.', 152, 'physical', 'default.png', 'available', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(34, 15, 'When the.', 'Alice cautiously replied: \'but I haven\'t been invited yet.\' \'You\'ll see me.', 215, 'physical', 'default.png', 'sold', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(35, 16, 'Alice as.', 'Alice as he could go. Alice took up the fan she was quite tired of swimming.', 445, 'physical', 'default.png', 'sold', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(36, 16, 'I should.', 'Dormouse go on in a piteous tone. And she thought there was a bright brass.', 220, 'digital', 'default.png', 'available', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(37, 17, 'ONE with.', 'Alice. \'Of course it was,\' the March Hare,) \'--it was at in all directions.', 258, 'digital', 'default.png', 'sold', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(38, 17, 'She took.', 'THAT direction,\' the Cat in a mournful tone, \'he won\'t do a thing before, but.', 488, 'physical', 'default.png', 'available', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(39, 17, 'HIS time.', 'Cheshire Cat,\' said Alice: \'allow me to introduce it.\' \'I don\'t think they.', 258, 'digital', 'default.png', 'available', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(40, 18, 'Alice to.', 'LESS,\' said the Cat again, sitting on a bough of a globe of goldfish she had.', 159, 'physical', 'default.png', 'sold', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(41, 18, 'I hadn\'t.', 'I breathe\"!\' \'It IS the same size: to be Number One,\' said Alice. \'Why, you.', 86, 'physical', 'default.png', 'available', '2025-06-13 01:09:04', '2025-06-13 01:09:04'),
(42, 18, 'Rabbit\'s.', 'ARE a simpleton.\' Alice did not venture to go among mad people,\' Alice.', 429, 'physical', 'default.png', 'sold', '2025-06-13 01:09:04', '2025-06-13 01:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `marketplace_orders`
--

CREATE TABLE `marketplace_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '0001_01_01_000002_create_jobs_table', 1),
(3, '2025_06_12_000000_create_ranks_table', 1),
(4, '2025_06_12_000001_create_users_table', 1),
(5, '2025_06_12_145625_create_profiles_table', 1),
(6, '2025_06_12_145637_create_timeline_activities_table', 1),
(7, '2025_06_12_145648_create_posts_table', 1),
(8, '2025_06_12_145700_create_post_comments_table', 1),
(9, '2025_06_12_145713_create_post_likes_table', 1),
(10, '2025_06_12_145723_create_groups_table', 1),
(11, '2025_06_12_145732_create_group_members_table', 1),
(12, '2025_06_12_145742_create_group_posts_table', 1),
(13, '2025_06_12_145755_create_badges_table', 1),
(14, '2025_06_12_145805_create_user_badges_table', 1),
(15, '2025_06_12_145816_create_quests_table', 1),
(16, '2025_06_12_145828_create_user_quests_table', 1),
(17, '2025_06_12_145950_create_forums_table', 1),
(18, '2025_06_12_150001_create_threads_table', 1),
(19, '2025_06_12_150014_create_thread_replies_table', 1),
(20, '2025_06_12_150024_create_credit_logs_table', 1),
(21, '2025_06_12_150033_create_marketplace_items_table', 1),
(22, '2025_06_12_150045_create_marketplace_orders_table', 1),
(23, '2025_06_12_161419_add_user_id_to_forums_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `visibility` varchar(255) NOT NULL DEFAULT 'public',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`, `image`, `type`, `visibility`, `created_at`, `updated_at`) VALUES
(1, 1, 'Alice found at first she thought it over here,\' said the King, the Queen, who was gently brushing away some dead leaves that lay far below her. \'What CAN all that green stuff be?\' said Alice. \'I.', 'https://via.placeholder.com/640x480.png/007744?text=cats+Post+magni', 'image', 'public', '2025-06-13 01:09:02', '2025-06-13 01:09:02'),
(2, 1, 'I think that there was no \'One, two, three, and away,\' but they all moved off, and she ran off as hard as she heard her sentence three of the crowd below, and there stood the Queen of Hearts, she.', 'https://via.placeholder.com/640x480.png/0066ff?text=cats+Post+repudiandae', 'text', 'friends', '2025-06-13 01:09:02', '2025-06-13 01:09:02'),
(3, 1, 'Alice did not at all a proper way of keeping up the other, and growing sometimes taller and sometimes shorter, until she had been to the Knave of Hearts, she made out what it was: at first she.', 'https://via.placeholder.com/640x480.png/00cc99?text=cats+Post+numquam', 'text', 'private', '2025-06-13 01:09:02', '2025-06-13 01:09:02'),
(4, 2, 'At this moment Alice appeared, she was playing against herself, for this time the Queen said to Alice, flinging the baby joined):-- \'Wow! wow! wow!\' \'Here! you may nurse it a bit, if you drink much.', 'https://via.placeholder.com/640x480.png/00ffdd?text=cats+Post+dolores', 'text', 'public', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(5, 2, 'France-- Then turn not pale, beloved snail, but come and join the dance? Will you, won\'t you join the dance? Will you, won\'t you, will you, won\'t you join the dance? Will you, won\'t you, will you.', 'https://via.placeholder.com/640x480.png/00aa22?text=cats+Post+quia', 'text', 'public', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(6, 2, 'I shall have to beat time when I got up this morning, but I grow at a king,\' said Alice. The King looked anxiously at the moment, \'My dear! I shall fall right THROUGH the earth! How funny it\'ll.', 'https://via.placeholder.com/640x480.png/007755?text=cats+Post+qui', 'video', 'friends', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(7, 3, 'I hadn\'t to bring tears into her eyes; and once again the tiny hands were clasped upon her arm, and timidly said \'Consider, my dear: she is such a neck as that! No, no! You\'re a serpent; and there\'s.', 'https://via.placeholder.com/640x480.png/0044cc?text=cats+Post+sequi', 'text', 'public', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(8, 3, 'Mouse was swimming away from him, and said to herself that perhaps it was not a bit afraid of them!\' \'And who are THESE?\' said the cook. \'Treacle,\' said the White Rabbit returning, splendidly.', 'https://via.placeholder.com/640x480.png/0066ee?text=cats+Post+maxime', 'video', 'friends', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(9, 3, 'King, \'and don\'t look at all a proper way of settling all difficulties, great or small. \'Off with their hands and feet at the Duchess said after a minute or two, they began running when they passed.', 'https://via.placeholder.com/640x480.png/00ff55?text=cats+Post+est', 'image', 'public', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(10, 4, 'The King looked anxiously at the window.\' \'THAT you won\'t\' thought Alice, \'they\'re sure to kill it in with the lobsters, out to be a LITTLE larger, sir, if you like!\' the Duchess to play croquet.', 'https://via.placeholder.com/640x480.png/00aa55?text=cats+Post+error', 'text', 'public', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(11, 4, 'Alice\'s first thought was that she was now, and she at once and put it to be beheaded!\' \'What for?\' said the Queen had only one who got any advantage from the sky! Ugh, Serpent!\' \'But I\'m NOT a.', 'https://via.placeholder.com/640x480.png/00ffbb?text=cats+Post+perspiciatis', 'image', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(12, 4, 'Queen, who was beginning to grow to my jaw, Has lasted the rest were quite silent, and looked into its face was quite a crowd of little Alice and all the things I used to come upon them THIS size.', 'https://via.placeholder.com/640x480.png/0099ee?text=cats+Post+pariatur', 'text', 'public', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(13, 5, 'Dodo managed it.) First it marked out a race-course, in a tone of delight, and rushed at the Cat\'s head with great curiosity, and this Alice thought she might as well wait, as she left her, leaning.', 'https://via.placeholder.com/640x480.png/008899?text=cats+Post+natus', 'video', 'friends', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(14, 5, 'She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have to whisper a hint to Time, and round the rosetree; for, you see, so many different sizes in a tone of great surprise. \'Of.', 'https://via.placeholder.com/640x480.png/00aa11?text=cats+Post+cupiditate', 'image', 'friends', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(15, 5, 'Who ever saw one that size? Why, it fills the whole she thought it had finished this short speech, they all moved off, and she hurried out of the house till she shook the house, and the pool.', 'https://via.placeholder.com/640x480.png/008822?text=cats+Post+recusandae', 'video', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(16, 6, 'Bill! I wouldn\'t be in before the trial\'s over!\' thought Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can go back by railway,\' she said to the little magic bottle had now had its full.', 'https://via.placeholder.com/640x480.png/00cc55?text=cats+Post+non', 'text', 'public', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(17, 6, 'Alice heard it before,\' said Alice,) and round goes the clock in a very poor speaker,\' said the Mock Turtle went on, \'and most things twinkled after that--only the March Hare and the Gryphon.', 'https://via.placeholder.com/640x480.png/003388?text=cats+Post+quas', 'text', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(18, 6, 'They all sat down at once, in a very difficult question. However, at last it sat down at her feet, for it flashed across her mind that she was nine feet high, and her eyes to see what was the cat.).', 'https://via.placeholder.com/640x480.png/0044aa?text=cats+Post+maiores', 'image', 'public', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(19, 7, 'Alice,) and round goes the clock in a sort of knot, and then quietly marched off after the candle is like after the candle is like after the rest of the what?\' said the White Rabbit, jumping up and.', 'https://via.placeholder.com/640x480.png/001111?text=cats+Post+ut', 'text', 'friends', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(20, 7, 'Cat said, waving its right paw round, \'lives a Hatter: and in a sorrowful tone, \'I\'m afraid I can\'t get out of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\'.', 'https://via.placeholder.com/640x480.png/00aa00?text=cats+Post+aut', 'image', 'friends', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(21, 7, 'Alice kept her waiting!\' Alice felt a little wider. \'Come, it\'s pleased so far,\' said the Lory, with a sudden burst of tears, until there was nothing on it (as she had been broken to pieces.', 'https://via.placeholder.com/640x480.png/000022?text=cats+Post+unde', 'text', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(22, 8, 'Alice opened the door between us. For instance, if you like!\' the Duchess sneezed occasionally; and as for the accident of the ground, Alice soon began talking to herself, and shouted out, \'You\'d.', 'https://via.placeholder.com/640x480.png/00bb88?text=cats+Post+animi', 'image', 'public', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(23, 8, 'King, \'that saves a world of trouble, you know, upon the other queer noises, would change (she knew) to the part about her and to stand on their slates, when the White Rabbit. She was a little.', 'https://via.placeholder.com/640x480.png/0099ff?text=cats+Post+est', 'image', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(24, 8, 'I\'m certain! I must sugar my hair.\" As a duck with its wings. \'Serpent!\' screamed the Gryphon. \'--you advance twice--\' \'Each with a great deal of thought, and looked at them with the words don\'t FIT.', 'https://via.placeholder.com/640x480.png/00ccff?text=cats+Post+et', 'image', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(25, 9, 'French mouse, come over with William the Conqueror.\' (For, with all their simple joys, remembering her own ears for having missed their turns, and she looked down, was an uncomfortably sharp chin.', 'https://via.placeholder.com/640x480.png/0000ee?text=cats+Post+deleniti', 'video', 'public', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(26, 9, 'I beg your pardon!\' she exclaimed in a twinkling! Half-past one, time for dinner!\' (\'I only wish it was,\' said the Pigeon in a few minutes that she remained the same as they used to call him.', 'https://via.placeholder.com/640x480.png/006699?text=cats+Post+sit', 'image', 'public', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(27, 9, 'HE went mad, you know--\' She had just begun to dream that she did not seem to see how the game was in managing her flamingo: she succeeded in curving it down \'important,\' and some \'unimportant.\'.', 'https://via.placeholder.com/640x480.png/00ccee?text=cats+Post+aspernatur', 'image', 'public', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(28, 10, 'WAS a narrow escape!\' said Alice, (she had kept a piece of rudeness was more than that, if you were down here with me! There are no mice in the world! Oh, my dear Dinah! I wonder what I say--that\'s.', 'https://via.placeholder.com/640x480.png/0077ee?text=cats+Post+sit', 'text', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(29, 10, 'King. Here one of the pack, she could not possibly reach it: she could have been ill.\' \'So they were,\' said the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her waiting!\' Alice felt so.', 'https://via.placeholder.com/640x480.png/00dd11?text=cats+Post+atque', 'text', 'friends', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(30, 10, 'I am very tired of being such a rule at processions; \'and besides, what would happen next. First, she tried to fancy to herself how this same little sister of hers would, in the other. \'I beg your.', 'https://via.placeholder.com/640x480.png/0044ff?text=cats+Post+veritatis', 'text', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(31, 1, 'Alice thought to herself \'Now I can remember feeling a little while, however, she waited for a baby: altogether Alice did not sneeze, were the two creatures, who had got burnt, and eaten up by wild.', 'https://via.placeholder.com/640x480.png/0066aa?text=cats+Post+ex', 'image', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(32, 1, 'M, such as mouse-traps, and the others took the least idea what to say when I got up this morning, but I THINK I can go back by railway,\' she said to the tarts on the spot.\' This did not wish to.', 'https://via.placeholder.com/640x480.png/001177?text=cats+Post+quia', 'text', 'friends', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(33, 1, 'Caterpillar, just as if she did not at all comfortable, and it sat for a baby: altogether Alice did not notice this question, but hurriedly went on, \'and most things twinkled after that--only the.', 'https://via.placeholder.com/640x480.png/00ffee?text=cats+Post+laborum', 'image', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(34, 2, 'Mouse was swimming away from her as she could, for her to wink with one finger for the baby, it was a very curious to know your history, you know,\' said the Dodo. Then they all spoke at once, she.', 'https://via.placeholder.com/640x480.png/00bb66?text=cats+Post+animi', 'video', 'friends', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(35, 2, 'So she began: \'O Mouse, do you like the look of the officers: but the Hatter said, turning to Alice: he had to double themselves up and down in an impatient tone: \'explanations take such a dear.', 'https://via.placeholder.com/640x480.png/001100?text=cats+Post+eos', 'image', 'public', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(36, 2, 'What happened to you? Tell us all about it!\' and he poured a little now and then; such as, that a moment\'s delay would cost them their lives. All the time they had a consultation about this, and she.', 'https://via.placeholder.com/640x480.png/00ee77?text=cats+Post+corporis', 'image', 'public', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(37, 3, 'Mock Turtle a little startled by seeing the Cheshire Cat: now I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look!.', 'https://via.placeholder.com/640x480.png/0088cc?text=cats+Post+dolores', 'video', 'friends', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(38, 3, 'Mouse, turning to the end: then stop.\' These were the two sides of it; then Alice dodged behind a great crash, as if she meant to take out of the crowd below, and there they lay sprawling about.', 'https://via.placeholder.com/640x480.png/003377?text=cats+Post+assumenda', 'text', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(39, 3, 'I don\'t like it, yer honour, at all, at all!\' \'Do as I do,\' said the Hatter: \'as the things between whiles.\' \'Then you shouldn\'t talk,\' said the Gryphon replied rather crossly: \'of course you know.', 'https://via.placeholder.com/640x480.png/007744?text=cats+Post+officia', 'image', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(40, 4, 'Pigeon went on, turning to Alice. \'Nothing,\' said Alice. The poor little juror (it was Bill, the Lizard) could not help bursting out laughing: and when she had sat down again very sadly and quietly.', 'https://via.placeholder.com/640x480.png/00bbee?text=cats+Post+veritatis', 'image', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(41, 4, 'They are waiting on the hearth and grinning from ear to ear. \'Please would you like the largest telescope that ever was! Good-bye, feet!\' (for when she was trying to fix on one, the cook till his.', 'https://via.placeholder.com/640x480.png/000044?text=cats+Post+labore', 'text', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(42, 4, 'I can\'t put it into his plate. Alice did not sneeze, were the cook, and a great deal to ME,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you call it sad?\' And she began nibbling.', 'https://via.placeholder.com/640x480.png/0033cc?text=cats+Post+praesentium', 'text', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(43, 5, 'By the use of this was of very little way off, and had just begun to dream that she was playing against herself, for she had never done such a curious plan!\' exclaimed Alice. \'That\'s the first.', 'https://via.placeholder.com/640x480.png/0000dd?text=cats+Post+ut', 'video', 'friends', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(44, 5, 'Go on!\' \'I\'m a poor man,\' the Hatter went on, looking anxiously round to see you again, you dear old thing!\' said the Duchess, \'and that\'s why. Pig!\' She said it to be lost, as she could. The next.', 'https://via.placeholder.com/640x480.png/00ee55?text=cats+Post+ut', 'video', 'public', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(45, 5, 'Alice; \'I might as well to introduce some other subject of conversation. While she was quite silent for a minute or two sobs choked his voice. \'Same as if a dish or kettle had been jumping about.', 'https://via.placeholder.com/640x480.png/003322?text=cats+Post+optio', 'video', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(46, 6, 'Why, there\'s hardly enough of it at all,\' said Alice: \'three inches is such a curious dream, dear, certainly: but now run in to your places!\' shouted the Queen, and Alice, were in custody and under.', 'https://via.placeholder.com/640x480.png/0077ff?text=cats+Post+asperiores', 'text', 'public', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(47, 6, 'Queen to-day?\' \'I should think you might like to show you! A little bright-eyed terrier, you know, upon the other ladder?--Why, I hadn\'t begun my tea--not above a week or so--and what with the next.', 'https://via.placeholder.com/640x480.png/00bbbb?text=cats+Post+praesentium', 'image', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(48, 6, 'This time there were any tears. No, there were no tears. \'If you\'re going to say,\' said the young Crab, a little faster?\" said a whiting to a shriek, \'and just as I used--and I don\'t care which.', 'https://via.placeholder.com/640x480.png/00dd88?text=cats+Post+optio', 'image', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(49, 7, 'Alice, \'to pretend to be executed for having missed their turns, and she felt that it had made. \'He took me for a little shaking among the trees had a little wider. \'Come, it\'s pleased so far,\' said.', 'https://via.placeholder.com/640x480.png/00ff99?text=cats+Post+ut', 'video', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(50, 7, 'Alice could bear: she got into a pig,\' Alice quietly said, just as well as she leant against a buttercup to rest her chin upon Alice\'s shoulder, and it put the Lizard in head downwards, and the.', 'https://via.placeholder.com/640x480.png/004499?text=cats+Post+neque', 'video', 'public', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(51, 7, 'Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, the Lizard) could not think of anything else. CHAPTER V. Advice from a Caterpillar The Caterpillar and Alice was just possible it had.', 'https://via.placeholder.com/640x480.png/00aacc?text=cats+Post+laborum', 'image', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(52, 8, 'Dormouse was sitting next to her. \'I wish I hadn\'t quite finished my tea when I was going to happen next. First, she tried her best to climb up one of the month, and doesn\'t tell what o\'clock it.', 'https://via.placeholder.com/640x480.png/002266?text=cats+Post+optio', 'video', 'public', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(53, 8, 'Father William replied to his ear. Alice considered a little, half expecting to see what the flame of a large mushroom growing near her, she began, in rather a complaining tone, \'and they drew all.', 'https://via.placeholder.com/640x480.png/00ddcc?text=cats+Post+exercitationem', 'video', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(54, 8, 'It doesn\'t look like one, but the Mouse was swimming away from him, and said to herself how this same little sister of hers would, in the pool a little quicker. \'What a pity it wouldn\'t stay!\'.', 'https://via.placeholder.com/640x480.png/00aa66?text=cats+Post+facere', 'image', 'friends', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(55, 9, 'White Rabbit blew three blasts on the slate. \'Herald, read the accusation!\' said the Caterpillar. Alice thought to herself, as she added, to herself, rather sharply; \'I advise you to set them free.', 'https://via.placeholder.com/640x480.png/007799?text=cats+Post+quia', 'text', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(56, 9, 'Alice very politely; but she remembered the number of changes she had asked it aloud; and in despair she put her hand on the spot.\' This did not notice this question, but hurriedly went on, \'What\'s.', 'https://via.placeholder.com/640x480.png/00eeff?text=cats+Post+similique', 'video', 'friends', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(57, 9, 'Footman went on in the last words out loud, and the arm that was linked into hers began to say anything. \'Why,\' said the Gryphon: and it set to work nibbling at the picture.) \'Up, lazy thing!\' said.', 'https://via.placeholder.com/640x480.png/002266?text=cats+Post+explicabo', 'text', 'friends', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(58, 10, 'CAN all that stuff,\' the Mock Turtle in a moment. \'Let\'s go on crying in this affair, He trusts to you never had to sing you a present of everything I\'ve said as yet.\' \'A cheap sort of present!\'.', 'https://via.placeholder.com/640x480.png/0088ff?text=cats+Post+omnis', 'video', 'friends', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(59, 10, 'Alice again, in a tone of delight, which changed into alarm in another moment, when she heard something like it,\' said Alice, surprised at this, she came upon a little before she had nibbled some.', 'https://via.placeholder.com/640x480.png/007799?text=cats+Post+beatae', 'video', 'private', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(60, 10, 'At last the Gryphon whispered in a soothing tone: \'don\'t be angry about it. And yet I wish you would have done that, you know,\' said Alice in a tone of great curiosity. \'It\'s a mineral, I THINK,\'.', 'https://via.placeholder.com/640x480.png/000055?text=cats+Post+expedita', 'text', 'friends', '2025-06-13 01:09:03', '2025-06-13 01:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `social_links` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`social_links`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `dob`, `gender`, `phone`, `social_links`, `created_at`, `updated_at`) VALUES
(1, 1, '1973-12-28', 'male', '+1-931-400-9331', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/wolff.com\\\\\\/in-similique-ea-dolorem-in-ut-autem.html\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/ritchie.biz\\\\\\/\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/lynch.com\\\\\\/nihil-mollitia-minus-cupiditate-in-doloribus.html\\\"}\"', '2025-06-13 01:09:02', '2025-06-13 01:09:02'),
(2, 2, '1997-09-12', 'other', '1-269-763-2910', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/jacobs.com\\\\\\/est-ea-ut-consequuntur-distinctio-sapiente\\\",\\\"twitter\\\":\\\"https:\\\\\\/\\\\\\/kulas.com\\\\\\/eum-beatae-voluptas-eum-eum-eaque.html\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.schmeler.com\\\\\\/non-et-assumenda-exercitationem-ipsa-perferendis\\\"}\"', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(3, 3, '1976-04-07', 'other', '+1 (754) 786-7705', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/www.blanda.com\\\\\\/soluta-rem-asperiores-dolor-aperiam-corrupti.html\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/leannon.com\\\\\\/rerum-sit-ullam-error\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.hansen.net\\\\\\/dolor-deserunt-itaque-quia-saepe-ea-est\\\"}\"', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(4, 4, '2004-08-08', 'male', '+1.918.870.9340', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/www.wunsch.com\\\\\\/\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/www.mraz.info\\\\\\/in-ut-qui-rem-expedita\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.walsh.biz\\\\\\/soluta-non-atque-ad-est-quae-qui-excepturi-cupiditate\\\"}\"', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(5, 5, '1973-02-24', 'other', '+1 (720) 819-3680', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/www.ondricka.net\\\\\\/\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/kertzmann.com\\\\\\/aliquam-magni-dolore-quas-consequuntur-tempora-quod-aliquam\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.ullrich.net\\\\\\/aut-qui-fugit-autem-natus\\\"}\"', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(6, 6, '1989-07-29', 'other', '1-432-668-9297', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/www.roberts.info\\\\\\/incidunt-velit-dolor-rem-velit-voluptatum-quisquam.html\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/www.lockman.org\\\\\\/eaque-dignissimos-rem-asperiores-nihil-laboriosam.html\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.west.info\\\\\\/omnis-modi-eos-voluptas-quas-occaecati-qui\\\"}\"', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(7, 7, '2005-03-18', 'other', '973.891.1641', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/rolfson.info\\\\\\/\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/www.larson.com\\\\\\/et-cumque-qui-quis-nesciunt-aliquid-dolor.html\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/collins.org\\\\\\/laboriosam-illo-in-incidunt-sequi-perferendis-necessitatibus\\\"}\"', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(8, 8, '1976-03-15', 'other', '203-370-2450', '\"{\\\"facebook\\\":\\\"https:\\\\\\/\\\\\\/www.lockman.com\\\\\\/minus-velit-maxime-quaerat-omnis\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/wehner.net\\\\\\/voluptates-nulla-doloribus-neque-rem-ut-et-accusantium\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/wehner.biz\\\\\\/quia-fugiat-sint-veritatis-ullam-voluptas-qui-ab.html\\\"}\"', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(9, 9, '1996-02-11', 'male', '+1.629.612.8627', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/cummings.net\\\\\\/veritatis-eligendi-expedita-laudantium-reiciendis-excepturi-impedit\\\",\\\"twitter\\\":\\\"https:\\\\\\/\\\\\\/www.nikolaus.com\\\\\\/necessitatibus-voluptas-et-sed-est\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.quitzon.com\\\\\\/ut-magni-veniam-autem\\\"}\"', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(10, 10, '1976-07-16', 'female', '1-712-874-1371', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/www.hilpert.info\\\\\\/aut-atque-autem-quo-aliquam-fuga-possimus-iste\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/schulist.com\\\\\\/tempora-in-tempora-deleniti-est-deserunt\\\",\\\"linkedin\\\":\\\"https:\\\\\\/\\\\\\/lubowitz.biz\\\\\\/perferendis-et-nam-enim-quo-iure-eligendi.html\\\"}\"', '2025-06-13 01:09:03', '2025-06-13 01:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `quests`
--

CREATE TABLE `quests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `reward_credit` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ranks`
--

CREATE TABLE `ranks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `min_credit` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ranks`
--

INSERT INTO `ranks` (`id`, `name`, `level`, `min_credit`, `created_at`, `updated_at`) VALUES
(1, 'Novice', 1, 0, '2025-06-13 01:09:02', '2025-06-13 01:09:02');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `forum_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`id`, `forum_id`, `user_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 61, 1, 'I tell you, you coward!\' and at once took up the.', 'In qui qui ipsum illo perferendis modi. Nihil a animi quod quis praesentium. Est eos occaecati ut natus eum. Qui a nihil quia rerum.\n\nUt reiciendis deserunt vero. Commodi nihil earum veniam est excepturi velit. Eos suscipit est vero nihil pariatur sit ea nemo. Saepe facere et velit velit.\n\nSint blanditiis voluptatem eos voluptates aut voluptatem. Dolorem mollitia maxime quasi voluptatum. Quae dolores maiores velit consequatur. Aperiam beatae qui eum vero minus illum perferendis.', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(2, 61, 1, 'Gryphon went on eagerly: \'There is such a noise.', 'Ut autem quos accusantium. Quae veniam dolorum quas sit doloribus velit sequi nulla. Iusto quia quaerat est occaecati occaecati architecto.\n\nEsse maxime voluptatem veritatis consequatur ipsum optio sapiente. Nam fugit rerum id nemo ut corrupti.\n\nVoluptatem officiis nostrum velit provident ea quo. Impedit ullam veritatis optio. Velit quas quos et voluptas.', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(3, 62, 6, 'The jury all wrote down on her spectacles, and.', 'Quibusdam blanditiis nihil ea dignissimos. Deleniti ducimus quaerat labore adipisci esse. Quae sequi non officia modi cum voluptatem vel.\n\nSaepe odio ad quis dicta nobis modi. Ducimus est possimus sint amet neque soluta. Rerum et in aperiam quidem. Est ut saepe similique.\n\nMolestiae sunt et maxime suscipit placeat dolorum. Ut qui consequatur similique quibusdam omnis eum. Officiis tempora itaque dolore perspiciatis ea. Occaecati repellendus eius aut dolorum aliquam omnis velit distinctio. Esse minima laborum voluptate in dolore fugiat error ut.', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(4, 62, 6, 'I shall only look up in spite of all her.', 'Consequatur sunt vero quos iure sed quia. Cum laborum quaerat est sapiente rerum animi saepe. Qui eos id aspernatur veritatis eveniet. Laboriosam itaque ducimus tempora et quo velit maiores.\n\nAut qui excepturi nemo est. Nihil ut dolorem dolorem maiores quisquam aspernatur corporis. Dolorem accusamus ut veritatis voluptatem sunt ullam soluta. Dolor libero voluptates voluptatem sint.\n\nQuidem asperiores assumenda tempora sit molestiae. Mollitia quia aliquid aut et sunt laudantium. Eum mollitia architecto accusamus quibusdam aut soluta. Voluptates blanditiis et voluptatem eos reprehenderit.', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(5, 63, 10, 'Alice a little scream, half of anger, and tried.', 'Illo commodi ut at veniam aut qui. Dicta nesciunt illum aliquam atque tempore quae qui.\n\nInventore rerum qui consectetur consequatur soluta ea. Officiis officiis nihil recusandae placeat consequatur. Reprehenderit impedit nam quia error sed.\n\nEst non cumque earum accusamus ipsa corporis. Veritatis cumque nihil consectetur aliquam sequi ea. Modi mollitia iusto rerum quia culpa. Quis omnis impedit iusto in totam dignissimos. In qui ratione excepturi quia et qui.', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(6, 63, 10, 'Where CAN I have ordered\'; and she jumped up on.', 'Atque rerum magni voluptas magnam reprehenderit quibusdam. Autem numquam minus voluptatum sit occaecati esse et. Qui neque et qui aut repudiandae officia rerum. Repudiandae sit doloremque aliquid nihil necessitatibus.\n\nDolorem tenetur ipsam sunt aut natus natus. Cumque dolorem error aut quam doloremque. Corporis id voluptatem harum nihil sunt possimus. Consequatur voluptatem omnis doloremque quia.\n\nExpedita rerum hic omnis inventore. Quidem doloremque necessitatibus quos. Officiis voluptatem ea ut voluptate omnis nemo sed enim. Deserunt cupiditate veritatis accusamus atque illum.', '2025-06-13 01:09:03', '2025-06-13 01:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `thread_replies`
--

CREATE TABLE `thread_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thread_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timeline_activities`
--

CREATE TABLE `timeline_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `rank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `credit` int(11) NOT NULL DEFAULT 0,
  `login_attempts` int(11) DEFAULT NULL,
  `email_verified_status` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `last_name`, `first_name`, `middle_name`, `email`, `password`, `avatar`, `bio`, `location`, `rank_id`, `credit`, `login_attempts`, `email_verified_status`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'O\'Hara', 'Kraig', NULL, 'ytowne@example.org', '$2y$12$.BLefFgBgeQLnvo1sXQMbuT27Y2K.L/J/fCrOrSjO4rM/1vqdlj56', 'blank.png', NULL, NULL, NULL, 0, NULL, NULL, '2025-06-13 01:09:02', 'YBn4Rp0rlD', '2025-06-13 01:09:02', '2025-06-13 01:09:02'),
(2, 'Hudson', 'Koby', NULL, 'alanis.waelchi@example.net', '$2y$12$.BLefFgBgeQLnvo1sXQMbuT27Y2K.L/J/fCrOrSjO4rM/1vqdlj56', 'blank.png', NULL, NULL, NULL, 0, NULL, NULL, '2025-06-13 01:09:02', 'xsws11C8LC', '2025-06-13 01:09:02', '2025-06-13 01:09:02'),
(3, 'Hahn', 'Fleta', NULL, 'harvey.raymundo@example.net', '$2y$12$.BLefFgBgeQLnvo1sXQMbuT27Y2K.L/J/fCrOrSjO4rM/1vqdlj56', 'blank.png', NULL, NULL, NULL, 0, NULL, NULL, '2025-06-13 01:09:02', 'eD2donUoNL', '2025-06-13 01:09:02', '2025-06-13 01:09:02'),
(4, 'Cassin', 'Raymond', 'Dorris', 'rogahn.orrin@example.org', '$2y$12$.BLefFgBgeQLnvo1sXQMbuT27Y2K.L/J/fCrOrSjO4rM/1vqdlj56', 'blank.png', NULL, NULL, NULL, 0, NULL, NULL, '2025-06-13 01:09:02', 'KbFZKzdiGD', '2025-06-13 01:09:02', '2025-06-13 01:09:02'),
(5, 'Torp', 'Earlene', 'Horace', 'stanton.miles@example.org', '$2y$12$.BLefFgBgeQLnvo1sXQMbuT27Y2K.L/J/fCrOrSjO4rM/1vqdlj56', 'blank.png', NULL, NULL, NULL, 0, NULL, NULL, '2025-06-13 01:09:02', 'iK2psjgzL7', '2025-06-13 01:09:02', '2025-06-13 01:09:02'),
(6, 'Koch', 'Elsie', 'Shanel', 'simeon.davis@example.net', '$2y$12$.BLefFgBgeQLnvo1sXQMbuT27Y2K.L/J/fCrOrSjO4rM/1vqdlj56', 'blank.png', NULL, NULL, NULL, 0, NULL, NULL, '2025-06-13 01:09:02', 'ihhvEDl39X', '2025-06-13 01:09:02', '2025-06-13 01:09:02'),
(7, 'Marvin', 'Daija', NULL, 'faustino66@example.net', '$2y$12$.BLefFgBgeQLnvo1sXQMbuT27Y2K.L/J/fCrOrSjO4rM/1vqdlj56', 'blank.png', NULL, NULL, NULL, 0, NULL, NULL, '2025-06-13 01:09:02', 'CjYLQQsava', '2025-06-13 01:09:02', '2025-06-13 01:09:02'),
(8, 'Pagac', 'Nadia', 'Guillermo', 'nikolaus.dexter@example.org', '$2y$12$.BLefFgBgeQLnvo1sXQMbuT27Y2K.L/J/fCrOrSjO4rM/1vqdlj56', 'blank.png', NULL, NULL, NULL, 0, NULL, NULL, '2025-06-13 01:09:02', 'r2uBAnA5oR', '2025-06-13 01:09:02', '2025-06-13 01:09:02'),
(9, 'Davis', 'Federico', NULL, 'pete93@example.com', '$2y$12$.BLefFgBgeQLnvo1sXQMbuT27Y2K.L/J/fCrOrSjO4rM/1vqdlj56', 'blank.png', NULL, NULL, NULL, 0, NULL, NULL, '2025-06-13 01:09:02', 'vvGrh7RHFv', '2025-06-13 01:09:02', '2025-06-13 01:09:02'),
(10, 'O\'Reilly', 'Ashlynn', 'Emely', 'ltowne@example.org', '$2y$12$.BLefFgBgeQLnvo1sXQMbuT27Y2K.L/J/fCrOrSjO4rM/1vqdlj56', 'blank.png', NULL, NULL, NULL, 0, NULL, NULL, '2025-06-13 01:09:02', 'JD3FNdlnvD', '2025-06-13 01:09:02', '2025-06-13 01:09:02'),
(11, 'Spinka', 'Dorian', NULL, 'mtillman@example.com', '$2y$12$.BLefFgBgeQLnvo1sXQMbuT27Y2K.L/J/fCrOrSjO4rM/1vqdlj56', 'blank.png', NULL, NULL, NULL, 0, NULL, NULL, '2025-06-13 01:09:03', 'iBCL5QI9VL', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(12, 'Christiansen', 'Pink', 'Graciela', 'domenico.larkin@example.net', '$2y$12$.BLefFgBgeQLnvo1sXQMbuT27Y2K.L/J/fCrOrSjO4rM/1vqdlj56', 'blank.png', NULL, NULL, NULL, 0, NULL, NULL, '2025-06-13 01:09:03', '99iIjvI8kS', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(13, 'Simonis', 'Rosie', NULL, 'claudie96@example.net', '$2y$12$.BLefFgBgeQLnvo1sXQMbuT27Y2K.L/J/fCrOrSjO4rM/1vqdlj56', 'blank.png', NULL, NULL, NULL, 0, NULL, NULL, '2025-06-13 01:09:03', 'iqeym9e05p', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(14, 'Gleichner', 'Sabryna', NULL, 'dashawn.mueller@example.org', '$2y$12$.BLefFgBgeQLnvo1sXQMbuT27Y2K.L/J/fCrOrSjO4rM/1vqdlj56', 'blank.png', NULL, NULL, NULL, 0, NULL, NULL, '2025-06-13 01:09:03', 'Kqi4dUzTbq', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(15, 'Carroll', 'Marilie', NULL, 'cremin.nico@example.org', '$2y$12$.BLefFgBgeQLnvo1sXQMbuT27Y2K.L/J/fCrOrSjO4rM/1vqdlj56', 'blank.png', NULL, NULL, NULL, 0, NULL, NULL, '2025-06-13 01:09:03', 'TrZtxcAKim', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(16, 'Johnston', 'Annamarie', 'Javonte', 'brown.keshaun@example.net', '$2y$12$.BLefFgBgeQLnvo1sXQMbuT27Y2K.L/J/fCrOrSjO4rM/1vqdlj56', 'blank.png', NULL, NULL, NULL, 0, NULL, NULL, '2025-06-13 01:09:03', 'b6mO4ZmTgP', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(17, 'Ernser', 'Levi', 'Dallin', 'elsie64@example.com', '$2y$12$.BLefFgBgeQLnvo1sXQMbuT27Y2K.L/J/fCrOrSjO4rM/1vqdlj56', 'blank.png', NULL, NULL, NULL, 0, NULL, NULL, '2025-06-13 01:09:03', 'JPOj047UJV', '2025-06-13 01:09:03', '2025-06-13 01:09:03'),
(18, 'Murray', 'Nichole', 'Makayla', 'arch.spencer@example.com', '$2y$12$.BLefFgBgeQLnvo1sXQMbuT27Y2K.L/J/fCrOrSjO4rM/1vqdlj56', 'blank.png', NULL, NULL, NULL, 0, NULL, NULL, '2025-06-13 01:09:03', 'ZoeOGbD1xX', '2025-06-13 01:09:03', '2025-06-13 01:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_badges`
--

CREATE TABLE `user_badges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `badge_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_badges`
--

INSERT INTO `user_badges` (`id`, `badge_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, NULL, NULL),
(2, 10, 1, NULL, NULL),
(3, 7, 2, NULL, NULL),
(4, 8, 2, NULL, NULL),
(5, 4, 3, NULL, NULL),
(6, 10, 3, NULL, NULL),
(7, 4, 4, NULL, NULL),
(8, 7, 4, NULL, NULL),
(9, 6, 5, NULL, NULL),
(10, 8, 5, NULL, NULL),
(11, 1, 6, NULL, NULL),
(12, 3, 6, NULL, NULL),
(13, 9, 7, NULL, NULL),
(14, 2, 7, NULL, NULL),
(15, 5, 8, NULL, NULL),
(16, 9, 8, NULL, NULL),
(17, 7, 9, NULL, NULL),
(18, 10, 9, NULL, NULL),
(19, 7, 10, NULL, NULL),
(20, 1, 10, NULL, NULL),
(21, 3, 11, NULL, NULL),
(22, 6, 11, NULL, NULL),
(23, 9, 12, NULL, NULL),
(24, 2, 12, NULL, NULL),
(25, 7, 13, NULL, NULL),
(26, 4, 13, NULL, NULL),
(27, 4, 14, NULL, NULL),
(28, 6, 14, NULL, NULL),
(29, 1, 15, NULL, NULL),
(30, 6, 15, NULL, NULL),
(31, 4, 16, NULL, NULL),
(32, 3, 16, NULL, NULL),
(33, 3, 17, NULL, NULL),
(34, 8, 17, NULL, NULL),
(35, 7, 18, NULL, NULL),
(36, 1, 18, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_quests`
--

CREATE TABLE `user_quests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quest_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `credit_logs`
--
ALTER TABLE `credit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credit_logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forums_parent_id_foreign` (`parent_id`),
  ADD KEY `forums_user_id_foreign` (`user_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_members_group_id_foreign` (`group_id`),
  ADD KEY `group_members_user_id_foreign` (`user_id`);

--
-- Indexes for table `group_posts`
--
ALTER TABLE `group_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_posts_group_id_foreign` (`group_id`),
  ADD KEY `group_posts_user_id_foreign` (`user_id`),
  ADD KEY `group_posts_post_id_foreign` (`post_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketplace_items`
--
ALTER TABLE `marketplace_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marketplace_items_user_id_foreign` (`user_id`);

--
-- Indexes for table `marketplace_orders`
--
ALTER TABLE `marketplace_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marketplace_orders_buyer_id_foreign` (`buyer_id`),
  ADD KEY `marketplace_orders_item_id_foreign` (`item_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_likes_post_id_foreign` (`post_id`),
  ADD KEY `post_likes_user_id_foreign` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `quests`
--
ALTER TABLE `quests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `threads_forum_id_foreign` (`forum_id`),
  ADD KEY `threads_user_id_foreign` (`user_id`);

--
-- Indexes for table `thread_replies`
--
ALTER TABLE `thread_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thread_replies_thread_id_foreign` (`thread_id`),
  ADD KEY `thread_replies_user_id_foreign` (`user_id`);

--
-- Indexes for table `timeline_activities`
--
ALTER TABLE `timeline_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timeline_activities_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_rank_id_foreign` (`rank_id`);

--
-- Indexes for table `user_badges`
--
ALTER TABLE `user_badges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_badges_badge_id_foreign` (`badge_id`),
  ADD KEY `user_badges_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_quests`
--
ALTER TABLE `user_quests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_quests_quest_id_foreign` (`quest_id`),
  ADD KEY `user_quests_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `credit_logs`
--
ALTER TABLE `credit_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `group_posts`
--
ALTER TABLE `group_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketplace_items`
--
ALTER TABLE `marketplace_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `marketplace_orders`
--
ALTER TABLE `marketplace_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quests`
--
ALTER TABLE `quests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ranks`
--
ALTER TABLE `ranks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `thread_replies`
--
ALTER TABLE `thread_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timeline_activities`
--
ALTER TABLE `timeline_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_badges`
--
ALTER TABLE `user_badges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user_quests`
--
ALTER TABLE `user_quests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `credit_logs`
--
ALTER TABLE `credit_logs`
  ADD CONSTRAINT `credit_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forums`
--
ALTER TABLE `forums`
  ADD CONSTRAINT `forums_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `forums` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `forums_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `group_members`
--
ALTER TABLE `group_members`
  ADD CONSTRAINT `group_members_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `group_posts`
--
ALTER TABLE `group_posts`
  ADD CONSTRAINT `group_posts_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `marketplace_items`
--
ALTER TABLE `marketplace_items`
  ADD CONSTRAINT `marketplace_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `marketplace_orders`
--
ALTER TABLE `marketplace_orders`
  ADD CONSTRAINT `marketplace_orders_buyer_id_foreign` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marketplace_orders_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `marketplace_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD CONSTRAINT `post_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `threads`
--
ALTER TABLE `threads`
  ADD CONSTRAINT `threads_forum_id_foreign` FOREIGN KEY (`forum_id`) REFERENCES `forums` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `threads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `thread_replies`
--
ALTER TABLE `thread_replies`
  ADD CONSTRAINT `thread_replies_thread_id_foreign` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `thread_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `timeline_activities`
--
ALTER TABLE `timeline_activities`
  ADD CONSTRAINT `timeline_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_rank_id_foreign` FOREIGN KEY (`rank_id`) REFERENCES `ranks` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `user_badges`
--
ALTER TABLE `user_badges`
  ADD CONSTRAINT `user_badges_badge_id_foreign` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_badges_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_quests`
--
ALTER TABLE `user_quests`
  ADD CONSTRAINT `user_quests_quest_id_foreign` FOREIGN KEY (`quest_id`) REFERENCES `quests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_quests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
