-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2025 at 01:14 AM
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
(1, 'For some.', 'Alice, \'or perhaps they won\'t walk the way out of the way--\' \'THAT generally.', 'default.png', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(2, 'Tortoise.', 'I!\' he replied. \'We quarrelled last March--just before HE went mad, you.', 'default.png', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(3, 'You MUST.', 'Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can do without.', 'default.png', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(4, 'Alice, a.', 'King, and the pair of white kid gloves in one hand and a crash of broken.', 'default.png', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(5, 'Latitude.', 'Gryphon interrupted in a moment to be a great deal to come upon them THIS.', 'default.png', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(6, 'Dormouse.', 'Five! Don\'t go splashing paint over me like that!\' By this time it vanished.', 'default.png', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(7, 'Said the.', 'First, because I\'m on the bank--the birds with draggled feathers, the animals.', 'default.png', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(8, 'They had.', 'Alice, in a very little! Besides, SHE\'S she, and I\'m I, and--oh dear, how.', 'default.png', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(9, 'And have.', 'Caterpillar. This was such a dear quiet thing,\' Alice went on, \'if you only.', 'default.png', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(10, 'Even the.', 'I never was so much frightened that she wanted to send the hedgehog had.', 'default.png', '2025-06-20 05:26:23', '2025-06-20 05:26:23');

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
-- Table structure for table `failed_logins`
--

CREATE TABLE `failed_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, 'Alice could only see her. She is such a simple.', 'But, now that I\'m perfectly sure I have none, Why, I wouldn\'t be in before the.', NULL, 11, '2025-06-20 05:22:22', '2025-06-20 05:22:22'),
(2, 'Caterpillar. Here was another long passage, and.', 'I wonder who will put on your shoes and stockings for you now, dears? I\'m sure.', NULL, 11, '2025-06-20 05:22:22', '2025-06-20 05:22:22'),
(3, 'Alice, very earnestly. \'I\'ve had nothing yet,\'.', 'Alice waited a little, and then treading on my tail. See how eagerly the.', 1, 11, '2025-06-20 05:22:22', '2025-06-20 05:22:22'),
(4, 'Dinah, tell me your history, she do.\' \'I\'ll tell.', 'Alice very humbly: \'you had got burnt, and eaten up by a very fine day!\' said.', 1, 11, '2025-06-20 05:22:22', '2025-06-20 05:22:22'),
(5, 'As they walked off together, Alice heard it.', 'Duck and a Long Tale They were indeed a queer-looking party that assembled on.', 2, 11, '2025-06-20 05:22:22', '2025-06-20 05:22:22'),
(6, 'Now you know.\' \'Not at first, perhaps,\' said the.', 'Alice replied, so eagerly that the way the people that walk with their hands.', 2, 11, '2025-06-20 05:22:22', '2025-06-20 05:22:22'),
(7, 'I don\'t understand. Where did they draw?\' said.', 'For, you see, Miss, we\'re doing our best, afore she comes, to--\' At this.', NULL, 12, '2025-06-20 05:22:45', '2025-06-20 05:22:45'),
(8, 'Alice, \'we learned French and music.\' \'And.', 'There was a little startled when she noticed that they would call after her.', NULL, 12, '2025-06-20 05:22:45', '2025-06-20 05:22:45'),
(9, 'Hatter, \'when the Queen furiously, throwing an.', 'Then she went slowly after it: \'I never went to school every day--\' \'I\'VE been.', 7, 12, '2025-06-20 05:22:45', '2025-06-20 05:22:45'),
(10, 'Alice, very much at first, the two creatures.', 'There are no mice in the air. This time there were no tears. \'If you\'re going.', 7, 12, '2025-06-20 05:22:45', '2025-06-20 05:22:45'),
(11, 'Queen, and in another moment down went Alice.', 'It doesn\'t look like it?\' he said. \'Fifteenth,\' said the King: \'however, it.', 8, 12, '2025-06-20 05:22:45', '2025-06-20 05:22:45'),
(12, 'The Panther took pie-crust, and gravy, and meat.', 'Five! Don\'t go splashing paint over me like that!\' By this time she saw them.', 8, 12, '2025-06-20 05:22:45', '2025-06-20 05:22:45'),
(13, 'WHAT are you?\' said the March Hare. Alice sighed.', 'Hatter, \'or you\'ll be telling me next that you think you could keep it to the.', NULL, 13, '2025-06-20 05:22:52', '2025-06-20 05:22:52'),
(14, 'Alice started to her great delight it fitted!.', 'Alice)--\'and perhaps you haven\'t found it so quickly that the cause of this.', NULL, 13, '2025-06-20 05:22:52', '2025-06-20 05:22:52'),
(15, 'And yet I don\'t know one,\' said Alice. \'I\'m.', 'I am in the prisoner\'s handwriting?\' asked another of the ground--and I should.', 13, 13, '2025-06-20 05:22:52', '2025-06-20 05:22:52'),
(16, 'Which way?\', holding her hand on the trumpet.', 'It was all about, and crept a little ledge of rock, and, as the other.\' As.', 13, 13, '2025-06-20 05:22:52', '2025-06-20 05:22:52'),
(17, 'For really this morning I\'ve nothing to do: once.', 'However, this bottle does. I do wonder what CAN have happened to you? Tell us.', 14, 13, '2025-06-20 05:22:52', '2025-06-20 05:22:52'),
(18, 'FIT you,\' said the Queen, turning purple. \'I.', 'You see the Hatter went on, taking first one side and up the little glass box.', 14, 13, '2025-06-20 05:22:52', '2025-06-20 05:22:52'),
(19, 'The poor little Lizard, Bill, was in March.\' As.', 'THE KING AND QUEEN OF HEARTS. Alice was very hot, she kept fanning herself all.', NULL, 14, '2025-06-20 05:22:56', '2025-06-20 05:22:56'),
(20, 'Dormouse shall!\' they both bowed low, and their.', 'So she began shrinking directly. As soon as there seemed to follow, except a.', NULL, 14, '2025-06-20 05:22:56', '2025-06-20 05:22:56'),
(21, 'This seemed to her feet as the Lory hastily. \'I.', 'All the time he was going to shrink any further: she felt sure it would not.', 19, 14, '2025-06-20 05:22:56', '2025-06-20 05:22:56'),
(22, 'Alice. \'I\'m glad they don\'t give birthday.', 'I wonder?\' And here poor Alice began to say \'creatures,\' you see, so many.', 19, 14, '2025-06-20 05:22:56', '2025-06-20 05:22:56'),
(23, 'Cat said, waving its right ear and left off.', 'Hatter: \'but you could only see her. She is such a rule at processions; \'and.', 20, 14, '2025-06-20 05:22:56', '2025-06-20 05:22:56'),
(24, 'Alice cautiously replied, not feeling at all the.', 'Hatter: \'but you could keep it to his son, \'I feared it might belong to one of.', 20, 14, '2025-06-20 05:22:56', '2025-06-20 05:22:56'),
(25, 'Hatter, it woke up again with a bound into the.', 'Alice. \'Now we shall have to ask any more HERE.\' \'But then,\' thought Alice.', NULL, 15, '2025-06-20 05:23:04', '2025-06-20 05:23:04'),
(26, 'Alice, in a trembling voice:-- \'I passed by his.', 'I didn\'t!\' interrupted Alice. \'You are,\' said the Hatter, it woke up again as.', NULL, 15, '2025-06-20 05:23:04', '2025-06-20 05:23:04'),
(27, 'If they had any dispute with the end of your.', 'Mock Turtle Soup is made from,\' said the voice. \'Fetch me my gloves this.', 25, 15, '2025-06-20 05:23:04', '2025-06-20 05:23:04'),
(28, 'There are no mice in the distance. \'Come on!\'.', 'Cheshire Cat sitting on the bank, and of having the sentence first!\' \'Hold.', 25, 15, '2025-06-20 05:23:04', '2025-06-20 05:23:04'),
(29, 'Hatter. \'Stolen!\' the King said to the porpoise.', 'Alice had no very clear notion how long ago anything had happened.) So she.', 26, 15, '2025-06-20 05:23:04', '2025-06-20 05:23:04'),
(30, 'Alice looked all round her at the Queen, \'and he.', 'Alice again, in a very little way forwards each time and a large pool all.', 26, 15, '2025-06-20 05:23:04', '2025-06-20 05:23:04'),
(31, 'Alice, \'as all the jelly-fish out of that.', 'YOU.--Come, I\'ll take no denial; We must have been was not quite sure whether.', NULL, 16, '2025-06-20 05:23:08', '2025-06-20 05:23:08'),
(32, 'Duchess,\' she said this, she was not going to.', 'Duchess sang the second thing is to France-- Then turn not pale, beloved.', NULL, 16, '2025-06-20 05:23:08', '2025-06-20 05:23:08'),
(33, 'NOT be an old Turtle--we used to know. Let me.', 'Mouse, who was beginning to end,\' said the Queen of Hearts were seated on.', 31, 16, '2025-06-20 05:23:08', '2025-06-20 05:23:08'),
(34, 'Mock Turtle with a sudden leap out of its mouth.', 'He says it kills all the children she knew, who might do something better with.', 31, 16, '2025-06-20 05:23:08', '2025-06-20 05:23:08'),
(35, 'Pigeon, but in a minute, nurse! But I\'ve got.', 'I get\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I.', 32, 16, '2025-06-20 05:23:08', '2025-06-20 05:23:08'),
(36, 'Alice was not a VERY turn-up nose, much more.', 'Gryphon. \'Of course,\' the Gryphon only answered \'Come on!\' and ran till she.', 32, 16, '2025-06-20 05:23:08', '2025-06-20 05:23:08'),
(37, 'Rabbit say to itself, \'Oh dear! Oh dear! I shall.', 'Bill,\' thought Alice,) \'Well, I hardly know--No more, thank ye; I\'m better.', NULL, 17, '2025-06-20 05:23:22', '2025-06-20 05:23:22'),
(38, 'No, I\'ve made up my mind about it; if I\'m not.', 'It\'s by far the most interesting, and perhaps as this before, never! And I.', NULL, 17, '2025-06-20 05:23:22', '2025-06-20 05:23:22'),
(39, 'Caucus-race.\' \'What IS the same age as herself.', 'Trims his belt and his friends shared their never-ending meal, and the roof.', 37, 17, '2025-06-20 05:23:22', '2025-06-20 05:23:22'),
(40, 'No, there were three gardeners instantly threw.', 'Oh, my dear Dinah! I wonder what Latitude was, or Longitude I\'ve got to grow.', 37, 17, '2025-06-20 05:23:22', '2025-06-20 05:23:22'),
(41, 'I beg your pardon!\' cried Alice (she was obliged.', 'The judge, by the prisoner to--to somebody.\' \'It must have got into the.', 38, 17, '2025-06-20 05:23:22', '2025-06-20 05:23:22'),
(42, 'Cat: now I shall have somebody to talk to.\' \'How.', 'When she got up this morning? I almost think I can do no more, whatever.', 38, 17, '2025-06-20 05:23:22', '2025-06-20 05:23:22'),
(43, 'I can\'t see you?\' She was moving them about as.', 'No, there were a Duck and a crash of broken glass. \'What a pity it wouldn\'t.', NULL, 18, '2025-06-20 05:23:41', '2025-06-20 05:23:41'),
(44, 'I\'ve got to the door. \'Call the first to speak.', 'Now you know.\' \'Not at all,\' said Alice: \'she\'s so extremely--\' Just then she.', NULL, 18, '2025-06-20 05:23:41', '2025-06-20 05:23:41'),
(45, 'Mock Turtle. \'Hold your tongue!\' said the King.', 'I must be getting home; the night-air doesn\'t suit my throat!\' and a pair of.', 43, 18, '2025-06-20 05:23:41', '2025-06-20 05:23:41'),
(46, 'The twelve jurors were writing down \'stupid.', 'March Hare. \'Then it ought to tell them something more. \'You promised to tell.', 43, 18, '2025-06-20 05:23:41', '2025-06-20 05:23:41'),
(47, 'Queen furiously, throwing an inkstand at the.', 'Alice said to Alice, and she went on growing, and very soon finished off the.', 44, 18, '2025-06-20 05:23:41', '2025-06-20 05:23:41'),
(48, 'They had a large arm-chair at one end of the.', 'So she began again. \'I wonder if I was, I shouldn\'t want YOURS: I don\'t like.', 44, 18, '2025-06-20 05:23:41', '2025-06-20 05:23:41'),
(49, 'I should think it was,\' he said. (Which he.', 'Cat. \'I don\'t believe it,\' said the March Hare. Alice was very deep, or she.', NULL, 19, '2025-06-20 05:23:49', '2025-06-20 05:23:49'),
(50, 'Queen had ordered. They very soon finished it.', 'All the time they had to kneel down on one side, to look for her, and she soon.', NULL, 19, '2025-06-20 05:23:49', '2025-06-20 05:23:49'),
(51, 'Mock Turtle: \'crumbs would all wash off in the.', 'March Hare said in a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER.', 49, 19, '2025-06-20 05:23:50', '2025-06-20 05:23:50'),
(52, 'When they take us up and down, and nobody spoke.', 'Majesty?\' he asked. \'Begin at the frontispiece if you hold it too long; and.', 49, 19, '2025-06-20 05:23:50', '2025-06-20 05:23:50'),
(53, 'This was such a long hookah, and taking not the.', 'For instance, if you please! \"William the Conqueror, whose cause was favoured.', 50, 19, '2025-06-20 05:23:50', '2025-06-20 05:23:50'),
(54, 'Then it got down off the subjects on his.', 'She said it to be a Caucus-race.\' \'What IS the same thing,\' said the Gryphon.', 50, 19, '2025-06-20 05:23:50', '2025-06-20 05:23:50'),
(55, 'YOUR temper!\' \'Hold your tongue!\' said the.', 'This was such a thing before, but she ran out of the Shark, But, when the race.', NULL, 20, '2025-06-20 05:23:54', '2025-06-20 05:23:54'),
(56, 'Mary Ann, and be turned out of the other end of.', 'Pigeon had finished. \'As if it had been, it suddenly appeared again.', NULL, 20, '2025-06-20 05:23:54', '2025-06-20 05:23:54'),
(57, 'The long grass rustled at her feet as the March.', 'Christmas.\' And she began fancying the sort of chance of this, so that her.', 55, 20, '2025-06-20 05:23:54', '2025-06-20 05:23:54'),
(58, 'This time there were a Duck and a large pigeon.', 'Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, but you might like to have.', 55, 20, '2025-06-20 05:23:54', '2025-06-20 05:23:54'),
(59, 'Alice said very politely, feeling quite pleased.', 'Alice for some time in silence: at last it sat down and saying to her that she.', 56, 20, '2025-06-20 05:23:55', '2025-06-20 05:23:55'),
(60, 'She went on eagerly: \'There is such a nice soft.', 'I should say what you had been (Before she had nibbled some more tea,\' the.', 56, 20, '2025-06-20 05:23:55', '2025-06-20 05:23:55'),
(61, 'King sharply. \'Do you play croquet with the.', 'It\'s the most curious thing I know. Silence all round, if you like!\' the.', NULL, 21, '2025-06-20 05:26:22', '2025-06-20 05:26:22'),
(62, 'First, she dreamed of little animals and birds.', 'Alice, in a natural way. \'I thought it must be getting somewhere near the.', NULL, 22, '2025-06-20 05:26:22', '2025-06-20 05:26:22'),
(63, 'On various pretexts they all crowded round it.', 'Alice felt a violent blow underneath her chin: it had been, it suddenly.', NULL, 23, '2025-06-20 05:26:23', '2025-06-20 05:26:23');

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
(1, 'Alice)--\'and.', 'King. \'It began with the lobsters and the sounds will take care of.', 'public', 'blank.png', 24, '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(2, 'HAVE you been.', 'So Alice got up and rubbed its eyes: then it chuckled. \'What fun!\' said the.', 'public', 'blank.png', 25, '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(3, 'Oh dear! I\'d.', 'CHAPTER VI. Pig and Pepper For a minute or two she stood looking at them with.', 'public', 'blank.png', 26, '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(4, 'Alice thought.', 'Lobster; I heard him declare, \"You have baked me too brown, I must be kind to.', 'public', 'blank.png', 27, '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(5, 'For the Mouse.', 'King eagerly, and he checked himself suddenly: the others took the place of.', 'private', 'blank.png', 28, '2025-06-20 05:26:23', '2025-06-20 05:26:23');

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
(1, 1, 28, 'member', NULL, NULL),
(2, 1, 19, 'member', NULL, NULL),
(3, 1, 8, 'member', NULL, NULL),
(4, 1, 9, 'member', NULL, NULL),
(5, 1, 10, 'member', NULL, NULL),
(6, 2, 3, 'member', NULL, NULL),
(7, 2, 17, 'member', NULL, NULL),
(8, 2, 18, 'member', NULL, NULL),
(9, 2, 19, 'member', NULL, NULL),
(10, 2, 8, 'member', NULL, NULL),
(11, 3, 3, 'member', NULL, NULL),
(12, 3, 22, 'member', NULL, NULL),
(13, 3, 27, 'member', NULL, NULL),
(14, 3, 19, 'member', NULL, NULL),
(15, 3, 8, 'member', NULL, NULL),
(16, 4, 8, 'member', NULL, NULL),
(17, 4, 12, 'member', NULL, NULL),
(18, 4, 18, 'member', NULL, NULL),
(19, 4, 3, 'member', NULL, NULL),
(20, 4, 10, 'member', NULL, NULL),
(21, 5, 5, 'member', NULL, NULL),
(22, 5, 2, 'member', NULL, NULL),
(23, 5, 23, 'member', NULL, NULL),
(24, 5, 18, 'member', NULL, NULL),
(25, 5, 6, 'member', NULL, NULL);

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
-- Table structure for table `log_activities`
--

CREATE TABLE `log_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `activity` text NOT NULL,
  `activity_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_activities`
--

INSERT INTO `log_activities` (`id`, `user_id`, `ip_address`, `activity`, `activity_date`, `created_at`, `updated_at`) VALUES
(1, 5, '127.0.0.1', 'User logged in', '2025-06-20 05:51:09', '2025-06-20 05:51:09', '2025-06-20 05:51:09');

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
(1, 1, 'THAT\'S a.', 'Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at her.', 104, 'digital', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(2, 1, 'Said the.', 'Queen. \'Well, I shan\'t go, at any rate,\' said Alice: \'I don\'t like the wind.', 151, 'digital', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(3, 1, 'I know!\'.', 'How she longed to change them--\' when she found herself lying on the stairs.', 102, 'digital', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(4, 2, 'King and.', 'How I wonder what you\'re doing!\' cried Alice, jumping up in her haste, she had.', 228, 'digital', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(5, 2, 'Dormouse.', 'THAT direction,\' waving the other guinea-pig cheered, and was coming back to.', 267, 'physical', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(6, 3, 'Lory, as.', 'Mouse, in a hoarse, feeble voice: \'I heard every word you fellows were.', 288, 'physical', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(7, 3, 'Queen in.', 'So she stood looking at the cook was leaning over the list, feeling very.', 490, 'digital', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(8, 3, 'Alice as.', 'Alice; not that she was exactly three inches high). \'But I\'m not used to queer.', 85, 'digital', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(9, 4, 'Knave of.', 'Duchess said to one of the accident, all except the Lizard, who seemed to.', 89, 'digital', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(10, 4, 'For some.', 'King, and the fan, and skurried away into the wood. \'If it had fallen into a.', 341, 'digital', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(11, 5, 'Dormouse.', 'Alice thought this must be the right thing to eat some of them didn\'t know.', 393, 'physical', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(12, 5, 'Oh dear!.', 'Alice did not appear, and after a few minutes it seemed quite natural); but.', 121, 'digital', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(13, 5, 'Alice in.', 'And so she went on, turning to the door, staring stupidly up into the air, I\'m.', 134, 'physical', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(14, 6, 'I\'d been.', 'How I wonder what Latitude was, or Longitude either, but thought they were all.', 167, 'digital', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(15, 6, 'Cat went.', 'Queen. \'I never said I could shut up like a serpent. She had already heard her.', 225, 'digital', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(16, 7, 'HE was.\'.', 'Soup, so rich and green, Waiting in a hurry to change the subject,\' the March.', 135, 'physical', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(17, 8, 'And then.', 'YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, in a.', 109, 'physical', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(18, 8, 'I\'ve got.', 'Hatter went on in a pleased tone. \'Pray don\'t trouble yourself to say which).', 129, 'physical', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(19, 8, 'Alice as.', 'Queen had only one who had been anxiously looking across the garden, where.', 69, 'physical', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(20, 9, 'Two. Two.', 'There was no more to be otherwise than what you mean,\' the March Hare. \'I.', 37, 'physical', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(21, 9, 'I hadn\'t.', 'Hatter. \'Nor I,\' said the King, and the March Hare was said to herself.', 352, 'physical', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(22, 10, 'The King.', 'On various pretexts they all crowded together at one corner of it: \'No room!.', 451, 'physical', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(23, 10, 'Dormouse.', 'So she tucked her arm affectionately into Alice\'s, and they went on planning.', 18, 'digital', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(24, 10, 'When the.', 'CAN all that green stuff be?\' said Alice. \'You are,\' said the Caterpillar.', 443, 'digital', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(25, 11, 'Cheshire.', 'Alice with one of them.\' In another minute the whole thing very absurd, but.', 384, 'physical', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(26, 11, 'I\'ve had.', 'I look like it?\' he said. (Which he certainly did NOT, being made entirely of.', 112, 'digital', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(27, 12, 'Alice, a.', 'William\'s conduct at first was moderate. But the insolence of his shrill.', 229, 'digital', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(28, 13, 'DOTH THE.', 'The Duchess took no notice of them can explain it,\' said Alice. \'Oh, don\'t.', 111, 'digital', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(29, 13, 'So Alice.', 'Alice remarked. \'Right, as usual,\' said the voice. \'Fetch me my gloves this.', 405, 'digital', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(30, 13, 'I wonder.', 'Alice opened the door between us. For instance, suppose it were white, but.', 167, 'digital', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(31, 14, 'I to get.', 'NOT, being made entirely of cardboard.) \'All right, so far,\' said the Hatter.', 67, 'physical', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(32, 14, 'The long.', 'If they had settled down again, the Dodo managed it.) First it marked out a.', 453, 'physical', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(33, 15, 'Then the.', 'Alice looked up, and began an account of the Rabbit\'s voice; and the Hatter.', 73, 'physical', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(34, 16, 'Oh dear!.', 'Cat, and vanished. Alice was not a bit afraid of them!\' \'And who is Dinah, if.', 210, 'physical', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(35, 16, 'Bill had.', 'Caterpillar; and it was certainly English. \'I don\'t quite understand you,\' she.', 415, 'digital', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(36, 17, 'YOU, and.', 'King, \'that only makes the matter on, What would become of it; so, after.', 27, 'digital', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(37, 17, 'Knave of.', 'Alice! Come here directly, and get ready for your interesting story,\' but she.', 87, 'physical', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(38, 17, 'I hadn\'t.', 'Alice, and she ran with all their simple sorrows, and find a number of.', 128, 'physical', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(39, 18, 'King and.', 'Alice opened the door began sneezing all at once. The Dormouse shook itself.', 151, 'physical', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(40, 18, 'When the.', 'No, it\'ll never do to hold it. As soon as the March Hare went on. \'I do,\'.', 453, 'digital', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(41, 19, 'I wonder.', 'March Hare meekly replied. \'Yes, but I grow up, I\'ll write one--but I\'m grown.', 299, 'physical', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(42, 20, 'For this.', 'Alice was more and more sounds of broken glass. \'What a number of bathing.', 30, 'digital', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(43, 20, 'Dodo had.', 'Dormouse! Turn that Dormouse out of breath, and said \'No, never\') \'--so you.', 428, 'digital', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(44, 20, 'YOURS: I.', 'Hatter was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time.', 422, 'digital', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(45, 21, 'I should.', 'Gryphon said to the Knave. The Knave of Hearts, who only bowed and smiled in.', 395, 'digital', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(46, 22, 'Queen of.', 'All this time she went on for some time busily writing in his throat,\' said.', 451, 'digital', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(47, 22, 'Dormouse.', 'Hatter went on, \'you throw the--\' \'The lobsters!\' shouted the Queen. \'You make.', 149, 'digital', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(48, 22, 'When the.', 'Knave was standing before them, in chains, with a large fan in the distance.', 262, 'physical', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(49, 23, 'I had it.', 'Ann! Mary Ann!\' said the Footman. \'That\'s the judge,\' she said to herself. \'I.', 100, 'physical', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(50, 23, 'The next.', 'Alice quietly said, just as well look and see how he can EVEN finish, if he.', 35, 'digital', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(51, 23, 'I find a.', 'Pigeon; \'but if they do, why then they\'re a kind of authority over Alice.', 82, 'digital', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(52, 24, 'I wonder.', 'I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious.', 105, 'physical', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(53, 24, 'Alice in.', 'Let me think: was I the same tone, exactly as if it makes me grow smaller, I.', 175, 'physical', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(54, 24, 'Cheshire.', 'I think?\' \'I had NOT!\' cried the Mouse, frowning, but very politely: \'Did you.', 244, 'digital', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(55, 25, 'Allow me.', 'The Fish-Footman began by producing from under his arm a great letter, nearly.', 243, 'physical', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(56, 25, 'Laughing.', 'But the snail replied \"Too far, too far!\" and gave a little house in it about.', 235, 'digital', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(57, 26, 'It means.', 'I meant,\' the King had said that day. \'That PROVES his guilt,\' said the Mouse.', 420, 'physical', 'default.png', 'sold', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(58, 27, 'SOMEBODY.', 'Mock Turtle, suddenly dropping his voice; and Alice thought to herself. \'Of.', 308, 'physical', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(59, 28, 'Queen of.', 'Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Gryphon. \'They can\'t.', 438, 'digital', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(60, 28, 'She felt.', 'I almost think I should understand that better,\' Alice said nothing: she had.', 274, 'digital', 'default.png', 'available', '2025-06-20 05:26:23', '2025-06-20 05:26:23');

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
(23, '2025_06_12_161419_add_user_id_to_forums_table', 1),
(24, '2025_06_12_181225_create_failed_logins_table', 1),
(25, '2025_06_18_200531_add_user_type_to_users_table', 1),
(26, '2025_06_19_221708_create_log_activities_table', 1),
(27, '2025_06_19_221749_add_video_to_posts_table', 1);

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
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`image`)),
  `video` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `visibility` varchar(255) NOT NULL DEFAULT 'public',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`, `image`, `video`, `type`, `visibility`, `created_at`, `updated_at`) VALUES
(1, 11, 'Alice heard the Queen said to itself \'The Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have to turn into a small passage, not.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\"]\"', 'video', 'private', '2025-06-20 05:22:22', '2025-06-20 05:22:22'),
(2, 11, 'This seemed to be a comfort, one way--never to be told so. \'It\'s really dreadful,\' she muttered to herself, \'after such a curious dream, dear, certainly: but now run in to your places!\' shouted the.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'video', 'private', '2025-06-20 05:22:22', '2025-06-20 05:22:22'),
(3, 11, 'White Rabbit returning, splendidly dressed, with a little irritated at the jury-box, and saw that, in her head, she tried to say \'I once tasted--\' but checked herself hastily. \'I don\'t quite.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_V23n7Ht3VP.jpg\\\"]\"', NULL, 'image', 'friends', '2025-06-20 05:22:22', '2025-06-20 05:22:22'),
(4, 12, 'King said to herself, (not in a minute. Alice began to cry again, for she was talking. \'How CAN I have done just as usual. \'Come, there\'s no harm in trying.\' So she went nearer to watch them, and he.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_7bqSnWj9qW.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_GSz6drmKUw.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_XBOHlTPHG5.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_oRb0hWHTv1.jpg\\\"]\"', NULL, 'image', 'private', '2025-06-20 05:22:45', '2025-06-20 05:22:45'),
(5, 12, 'Mock Turtle at last, they must needs come wriggling down from the Queen said severely \'Who is it twelve? I--\' \'Oh, don\'t bother ME,\' said Alice very politely; but she got up this morning, but I.', NULL, NULL, 'text', 'friends', '2025-06-20 05:22:45', '2025-06-20 05:22:45'),
(6, 12, 'I needn\'t be afraid of it. She stretched herself up closer to Alice\'s side as she went on again:-- \'You may not have lived much under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you were or.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_9sbg1Ajmf1.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_qGSlOiVLvT.jpg\\\"]\"', '\"[\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'image+video', 'private', '2025-06-20 05:22:45', '2025-06-20 05:22:45'),
(7, 13, 'King; \'and don\'t be particular--Here, Bill! catch hold of this ointment--one shilling the box-- Allow me to sell you a couple?\' \'You are not the smallest notice of her age knew the name of nearly.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_3o73ooRsM7.jpg\\\"]\"', '\"[\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'image+video', 'friends', '2025-06-20 05:22:52', '2025-06-20 05:22:52'),
(8, 13, 'Footman, and began by producing from under his arm a great crash, as if it began ordering people about like mad things all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was not.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\"]\"', 'video', 'public', '2025-06-20 05:22:52', '2025-06-20 05:22:52'),
(9, 13, 'Yet you finished the goose, with the dream of Wonderland of long ago: and how she would get up and saying, \'Thank you, sir, for your interesting story,\' but she did not venture to say \'I once.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_F8DNeROdsy.jpg\\\"]\"', '\"[\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'image+video', 'public', '2025-06-20 05:22:52', '2025-06-20 05:22:52'),
(10, 14, 'Rabbit, and had just begun \'Well, of all her knowledge of history, Alice had been anything near the right house, because the Duchess asked, with another hedgehog, which seemed to have finished,\'.', NULL, NULL, 'text', 'public', '2025-06-20 05:22:56', '2025-06-20 05:22:56'),
(11, 14, 'Dormouse turned out, and, by the carrier,\' she thought; \'and how funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_SpRrjCUfBr.jpg\\\"]\"', NULL, 'image', 'private', '2025-06-20 05:22:56', '2025-06-20 05:22:56'),
(12, 14, 'March Hare. The Hatter was the Rabbit came up to her feet, for it was looking at it again: but he could think of nothing else to do, and in despair she put her hand again, and she could not remember.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'video', 'private', '2025-06-20 05:22:56', '2025-06-20 05:22:56'),
(13, 15, 'Dodo managed it.) First it marked out a race-course, in a great deal too far off to the executioner: \'fetch her here.\' And the muscular strength, which it gave to my right size: the next witness.\'.', NULL, NULL, 'text', 'friends', '2025-06-20 05:23:04', '2025-06-20 05:23:04'),
(14, 15, 'Queen\'s voice in the chimney close above her: then, saying to herself \'It\'s the stupidest tea-party I ever heard!\' \'Yes, I think I can guess that,\' she added in a low voice, \'Why the fact is, you.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_vI8sbQxYfe.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_avrap4e3i8.jpg\\\"]\"', '\"[\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'image+video', 'private', '2025-06-20 05:23:04', '2025-06-20 05:23:04'),
(15, 15, 'The judge, by the Queen in front of them, and all dripping wet, cross, and uncomfortable. The first witness was the first to break the silence. \'What day of the hall; but, alas! the little golden.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_1mb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'video', 'friends', '2025-06-20 05:23:04', '2025-06-20 05:23:04'),
(16, 16, 'Rabbit, and had no pictures or conversations in it, and they repeated their arguments to her, And mentioned me to him: She gave me a pair of white kid gloves: she took up the little glass box that.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'video', 'public', '2025-06-20 05:23:08', '2025-06-20 05:23:08'),
(17, 16, 'Hatter. He came in sight of the way I ought to have no sort of knot, and then she looked down at her as hard as he could go. Alice took up the little golden key in the chimney as she could do to.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_RIcl7oFzwh.jpg\\\"]\"', '\"[\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_1mb.mp4\\\"]\"', 'image+video', 'private', '2025-06-20 05:23:08', '2025-06-20 05:23:08'),
(18, 16, 'SOMETHING interesting is sure to make ONE respectable person!\' Soon her eye fell on a branch of a feather flock together.\"\' \'Only mustard isn\'t a bird,\' Alice remarked. \'Oh, you foolish Alice!\' she.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_1mb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'video', 'friends', '2025-06-20 05:23:08', '2025-06-20 05:23:08'),
(19, 17, 'Ugh, Serpent!\' \'But I\'m not Ada,\' she said, as politely as she did not wish to offend the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Gryphon. \'We can do no more.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_TWSo7gAkrt.jpg\\\"]\"', NULL, 'image', 'private', '2025-06-20 05:23:22', '2025-06-20 05:23:22'),
(20, 17, 'CURTSEYING as you\'re falling through the little door: but, alas! the little passage: and THEN--she found herself at last she stretched her arms folded, frowning like a wild beast, screamed \'Off with.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_xkrNgW8dYt.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_IH6o2Wj7DT.jpg\\\"]\"', '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\"]\"', 'image+video', 'public', '2025-06-20 05:23:22', '2025-06-20 05:23:22'),
(21, 17, 'Alice ventured to remark. \'Tut, tut, child!\' said the Cat. \'I don\'t much care where--\' said Alice. \'Come on, then,\' said Alice, as she couldn\'t answer either question, it didn\'t sound at all.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_RiHHBUWGTz.jpg\\\"]\"', NULL, 'image', 'private', '2025-06-20 05:23:22', '2025-06-20 05:23:22'),
(22, 18, 'Never heard of one,\' said Alice, \'and those twelve creatures,\' (she was obliged to write this down on one knee as he said to herself, \'I don\'t see,\' said the Mock Turtle: \'why, if a dish or kettle.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_BXBUu10P8y.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_sGhqugCu71.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_nJJgU4ZWGk.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_pWYWahpM3J.jpg\\\"]\"', NULL, 'image', 'private', '2025-06-20 05:23:41', '2025-06-20 05:23:41'),
(23, 18, 'No, no! You\'re a serpent; and there\'s no use speaking to a mouse, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried her best to climb up one of the baby, and not to her, one.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\"]\"', 'video', 'private', '2025-06-20 05:23:41', '2025-06-20 05:23:41'),
(24, 18, 'Queen shouted at the top of her own ears for having missed their turns, and she felt sure she would keep, through all her knowledge of history, Alice had begun to dream that she never knew whether.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_kWB9xK8x2T.jpg\\\"]\"', '\"[\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'image+video', 'public', '2025-06-20 05:23:41', '2025-06-20 05:23:41'),
(25, 19, 'HERE.\' \'But then,\' thought she, \'what would become of me? They\'re dreadfully fond of beheading people here; the great hall, with the words all coming different, and then said, \'It WAS a curious.', NULL, NULL, 'text', 'public', '2025-06-20 05:23:49', '2025-06-20 05:23:49'),
(26, 19, 'XII. Alice\'s Evidence \'Here!\' cried Alice, jumping up in a very curious thing, and she went on for some time after the birds! Why, she\'ll eat a little way forwards each time and a sad tale!\' said.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_IlhnEfUchc.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_JG337l19IS.jpg\\\"]\"', '\"[\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_1mb.mp4\\\"]\"', 'image+video', 'friends', '2025-06-20 05:23:49', '2025-06-20 05:23:49'),
(27, 19, 'King laid his hand upon her arm, and timidly said \'Consider, my dear: she is of mine, the less there is of mine, the less there is of yours.\"\' \'Oh, I beg your pardon!\' cried Alice hastily, afraid.', NULL, NULL, 'text', 'private', '2025-06-20 05:23:49', '2025-06-20 05:23:49'),
(28, 20, 'Mouse to Alice as he spoke. \'A cat may look at it!\' This speech caused a remarkable sensation among the people near the King had said that day. \'No, no!\' said the Gryphon. \'We can do no more.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_TvrP9LcMFV.jpg\\\"]\"', NULL, 'image', 'public', '2025-06-20 05:23:53', '2025-06-20 05:23:53'),
(29, 20, 'Mock Turtle said: \'I\'m too stiff. And the moral of THAT is--\"Take care of the crowd below, and there was no one listening, this time, and was going to begin lessons: you\'d only have to whisper a.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\"]\"', 'video', 'friends', '2025-06-20 05:23:54', '2025-06-20 05:23:54'),
(30, 20, 'I--\' \'Oh, don\'t talk about her pet: \'Dinah\'s our cat. And she\'s such a nice little histories about children who had spoken first. \'That\'s none of my life.\' \'You are old, Father William,\' the young.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\"]\"', 'video', 'friends', '2025-06-20 05:23:54', '2025-06-20 05:23:54'),
(31, 1, 'What happened to me! When I used to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, I meant,\' the King.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_tcGYbuijDM.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_zss8yv3mO0.jpg\\\"]\"', NULL, 'image', 'friends', '2025-06-20 05:24:16', '2025-06-20 05:24:16'),
(32, 1, 'Alice felt a little before she gave a little way out of it, and very neatly and simply arranged; the only one way of speaking to it,\' she said to Alice, \'Have you seen the Mock Turtle in a low.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_EJzuhtwOsH.jpg\\\"]\"', NULL, 'image', 'friends', '2025-06-20 05:24:16', '2025-06-20 05:24:16'),
(33, 1, 'King, rubbing his hands; \'so now let the jury--\' \'If any one left alive!\' She was a general clapping of hands at this: it was good manners for her to begin.\' He looked at poor Alice, \'when one.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_4aDBcWqGEF.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_9bH2rYErvc.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_P543nfrR2D.jpg\\\"]\"', NULL, 'image', 'private', '2025-06-20 05:24:16', '2025-06-20 05:24:16'),
(34, 2, 'Alice. \'That\'s the judge,\' she said this, she noticed that they could not make out exactly what they WILL do next! As for pulling me out of that is--\"The more there is of mine, the less there is of.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_m7BNBDyFyH.jpg\\\"]\"', '\"[\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_1mb.mp4\\\"]\"', 'image+video', 'public', '2025-06-20 05:24:27', '2025-06-20 05:24:27'),
(35, 2, 'Pinch him! Off with his knuckles. It was the White Rabbit returning, splendidly dressed, with a teacup in one hand, and a Dodo, a Lory and an old woman--but then--always to have it explained,\' said.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_8LGXSfWbUV.jpg\\\"]\"', NULL, 'image', 'private', '2025-06-20 05:24:27', '2025-06-20 05:24:27'),
(36, 2, 'March Hare said in a voice of the crowd below, and there was hardly room to open it; but, as the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice to herself, rather.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_LFesdKhGgt.jpg\\\"]\"', NULL, 'image', 'public', '2025-06-20 05:24:27', '2025-06-20 05:24:27'),
(37, 3, 'Alice said to herself; \'his eyes are so VERY remarkable in that; nor did Alice think it was,\' he said. \'Fifteenth,\' said the Mock Turtle to the three gardeners, but she added, to herself, \'after.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_GJ4j8VrCNR.jpg\\\"]\"', '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\"]\"', 'image+video', 'friends', '2025-06-20 05:24:31', '2025-06-20 05:24:31'),
(38, 3, 'Alice. \'Nothing WHATEVER?\' persisted the King. (The jury all looked so good, that it was a real Turtle.\' These words were followed by a row of lodging houses, and behind them a railway station.).', NULL, '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_1mb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'video', 'private', '2025-06-20 05:24:31', '2025-06-20 05:24:31'),
(39, 3, 'With gently smiling jaws!\' \'I\'m sure I\'m not looking for eggs, I know I have to whisper a hint to Time, and round Alice, every now and then the other, trying every door, she walked off, leaving.', NULL, NULL, 'text', 'public', '2025-06-20 05:24:31', '2025-06-20 05:24:31'),
(40, 4, 'I suppose it were white, but there were ten of them, with her head! Off--\' \'Nonsense!\' said Alice, (she had grown in the lock, and to her ear. \'You\'re thinking about something, my dear, YOU must.', NULL, NULL, 'text', 'private', '2025-06-20 05:24:31', '2025-06-20 05:24:31'),
(41, 4, 'Dinah, if I can reach the key; and if it began ordering people about like mad things all this time. \'I want a clean cup,\' interrupted the Gryphon. Alice did not much like keeping so close to her.', NULL, NULL, 'text', 'public', '2025-06-20 05:24:31', '2025-06-20 05:24:31'),
(42, 4, 'Queen\'s Croquet-Ground A large rose-tree stood near the door, she walked off, leaving Alice alone with the lobsters and the blades of grass, but she thought it had some kind of authority over Alice.', NULL, NULL, 'text', 'public', '2025-06-20 05:24:31', '2025-06-20 05:24:31'),
(43, 5, 'Duchess said to Alice, and she went hunting about, and crept a little nervous about this; \'for it might not escape again, and Alice was not even room for this, and Alice could speak again. The.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_KxRsmaiu57.jpg\\\"]\"', NULL, 'image', 'public', '2025-06-20 05:24:34', '2025-06-20 05:24:34'),
(44, 5, 'Mock Turtle, \'but if you\'ve seen them so shiny?\' Alice looked all round her head. \'If I eat or drink anything; so I\'ll just see what the next witness would be very likely it can talk: at any rate.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_1mb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'video', 'private', '2025-06-20 05:24:34', '2025-06-20 05:24:34'),
(45, 5, 'Caucus-race.\' \'What IS the use of this remark, and thought it would be offended again. \'Mine is a raven like a telescope.\' And so it was all ridges and furrows; the balls were live hedgehogs, the.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_1mb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'video', 'public', '2025-06-20 05:24:34', '2025-06-20 05:24:34'),
(46, 6, 'Alice replied thoughtfully. \'They have their tails in their proper places--ALL,\' he repeated with great emphasis, looking hard at Alice the moment she quite forgot you didn\'t sign it,\' said the King.', NULL, NULL, 'text', 'public', '2025-06-20 05:24:46', '2025-06-20 05:24:46'),
(47, 6, 'Alice coming. \'There\'s PLENTY of room!\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who is Dinah, if I chose,\' the Duchess by this time?\' she said this, she.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'video', 'public', '2025-06-20 05:24:46', '2025-06-20 05:24:46'),
(48, 6, 'English. \'I don\'t know one,\' said Alice, \'I\'ve often seen a rabbit with either a waistcoat-pocket, or a worm. The question is, Who in the pictures of him), while the Mouse to tell me who YOU are.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_AsttaSCpol.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_9k0BJpHkFQ.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_CYNDomqZ7i.jpg\\\"]\"', NULL, 'image', 'private', '2025-06-20 05:24:46', '2025-06-20 05:24:46'),
(49, 7, 'And the muscular strength, which it gave to my jaw, Has lasted the rest waited in silence. At last the Caterpillar took the cauldron of soup off the mushroom, and her eyes anxiously fixed on it, and.', NULL, NULL, 'text', 'public', '2025-06-20 05:24:49', '2025-06-20 05:24:49'),
(50, 7, 'Alice gently remarked; \'they\'d have been changed for Mabel! I\'ll try and say \"How doth the little--\"\' and she walked off, leaving Alice alone with the distant sobs of the e--e--evening, Beautiful.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_1Rn3dehQZo.jpg\\\"]\"', NULL, 'image', 'private', '2025-06-20 05:24:49', '2025-06-20 05:24:49'),
(51, 7, 'All the time it vanished quite slowly, beginning with the name of the evening, beautiful Soup! Soup of the officers of the Mock Turtle recovered his voice, and, with tears running down his face, as.', NULL, NULL, 'text', 'private', '2025-06-20 05:24:49', '2025-06-20 05:24:49'),
(52, 8, 'Alice. \'Nothing WHATEVER?\' persisted the King. The next witness would be so proud as all that.\' \'With extras?\' asked the Mock Turtle. \'She can\'t explain it,\' said Alice. \'I wonder if I fell off the.', NULL, NULL, 'text', 'private', '2025-06-20 05:24:57', '2025-06-20 05:24:57'),
(53, 8, 'ARE OLD, FATHER WILLIAM,\"\' said the Hatter: \'as the things between whiles.\' \'Then you should say what you mean,\' the March Hare: she thought it would,\' said the Duchess, who seemed to think to.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\"]\"', 'video', 'private', '2025-06-20 05:24:57', '2025-06-20 05:24:57'),
(54, 8, 'Footman remarked, \'till tomorrow--\' At this moment the door with his head!\' she said, \'for her hair goes in such confusion that she was quite pale (with passion, Alice thought), and it was empty.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_YyqZOuvwiE.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_4IPLdB0qx3.jpg\\\"]\"', NULL, 'image', 'private', '2025-06-20 05:24:57', '2025-06-20 05:24:57'),
(55, 9, 'Alice as he spoke, and then raised himself upon tiptoe, put his mouth close to her chin in salt water. Her first idea was that you have just been reading about; and when she first saw the Mock.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_32Zoov1KCj.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_TBufySMY5Q.jpg\\\"]\"', '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\"]\"', 'image+video', 'public', '2025-06-20 05:25:08', '2025-06-20 05:25:08'),
(56, 9, 'She was looking for it, while the Mock Turtle\'s Story \'You can\'t think how glad I am in the direction it pointed to, without trying to touch her. \'Poor little thing!\' It did so indeed, and much.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_1mb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'video', 'private', '2025-06-20 05:25:08', '2025-06-20 05:25:08'),
(57, 9, 'March Hare was said to herself, and nibbled a little nervous about this; \'for it might tell her something about the twentieth time that day. \'That PROVES his guilt,\' said the Caterpillar. This was.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_WKtOoGpPZS.jpg\\\"]\"', NULL, 'image', 'friends', '2025-06-20 05:25:08', '2025-06-20 05:25:08'),
(58, 10, 'CHAPTER IX. The Mock Turtle interrupted, \'if you only walk long enough.\' Alice felt a very small cake, on which the March Hare. \'Sixteenth,\' added the March Hare moved into the wood. \'If it had VERY.', NULL, NULL, 'text', 'public', '2025-06-20 05:25:08', '2025-06-20 05:25:08'),
(59, 10, 'I do hope it\'ll make me grow large again, for she could see it written down: but I don\'t care which happens!\' She ate a little before she gave a sudden leap out of the court. \'What do you know the.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_1mb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'video', 'public', '2025-06-20 05:25:08', '2025-06-20 05:25:08'),
(60, 10, 'The baby grunted again, and made believe to worry it; then Alice, thinking it was done. They had not long to doubt, for the end of the miserable Mock Turtle. \'No, no! The adventures first,\' said the.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_1mb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'video', 'public', '2025-06-20 05:25:08', '2025-06-20 05:25:08'),
(61, 11, 'Alice, \'as all the things being alive; for instance, there\'s the arch I\'ve got to do,\' said Alice to find herself still in sight, and no more of it altogether; but after a minute or two, looking for.', NULL, NULL, 'text', 'private', '2025-06-20 05:25:08', '2025-06-20 05:25:08'),
(62, 11, 'Dormouse,\' the Queen in front of them, and considered a little while, however, she waited for a good thing!\' she said to the King, and he says it\'s so useful, it\'s worth a hundred pounds! He says it.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'video', 'friends', '2025-06-20 05:25:08', '2025-06-20 05:25:08'),
(63, 11, 'I believe.\' \'Boots and shoes under the circumstances. There was no time to go, for the pool of tears which she concluded that it was labelled \'ORANGE MARMALADE\', but to open it; but, as the White.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_1mb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'video', 'private', '2025-06-20 05:25:08', '2025-06-20 05:25:08'),
(64, 12, 'The baby grunted again, and we put a stop to this,\' she said to the King, \'that only makes the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an arrow. The.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_fkcSfR1kSR.jpg\\\"]\"', '\"[\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_1mb.mp4\\\"]\"', 'image+video', 'private', '2025-06-20 05:25:15', '2025-06-20 05:25:15'),
(65, 12, 'Alice, that she knew that were of the garden: the roses growing on it (as she had put on one knee as he spoke, and the other birds tittered audibly. \'What I was going on, as she said this she looked.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_3An8SpjEQl.jpg\\\"]\"', NULL, 'image', 'friends', '2025-06-20 05:25:15', '2025-06-20 05:25:15'),
(66, 12, 'Alice, as she went in without knocking, and hurried upstairs, in great disgust, and walked a little quicker. \'What a number of cucumber-frames there must be!\' thought Alice. \'Now we shall get on.', NULL, NULL, 'text', 'private', '2025-06-20 05:25:15', '2025-06-20 05:25:15'),
(67, 13, 'Caterpillar, just as I\'d taken the highest tree in front of them, with her head!\' the Queen had never before seen a cat without a cat! It\'s the most confusing thing I ever was at the sides of it.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_1mb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'video', 'friends', '2025-06-20 05:25:18', '2025-06-20 05:25:18'),
(68, 13, 'ARE OLD, FATHER WILLIAM,\"\' said the Dodo, \'the best way to explain the paper. \'If there\'s no use in knocking,\' said the Mock Turtle; \'but it doesn\'t matter much,\' thought Alice, as she did not.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_lWYZxF8cJ0.jpg\\\"]\"', NULL, 'image', 'friends', '2025-06-20 05:25:18', '2025-06-20 05:25:18'),
(69, 13, 'After a minute or two, she made out that it might happen any minute, \'and then,\' thought she, \'if people had all to lie down on their slates, and she could see, as well be at school at once.\'.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_1mb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'video', 'private', '2025-06-20 05:25:18', '2025-06-20 05:25:18'),
(70, 14, 'CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the right distance--but then I wonder what was going on, as she could, and soon found herself in a whisper.) \'That would be.', NULL, NULL, 'text', 'friends', '2025-06-20 05:25:25', '2025-06-20 05:25:25'),
(71, 14, 'Suddenly she came up to the fifth bend, I think?\' he said do. Alice looked very anxiously into her head. \'If I eat one of the house if it makes me grow larger, I can do no more, whatever happens.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_Udlabk3haz.jpg\\\"]\"', NULL, 'image', 'public', '2025-06-20 05:25:25', '2025-06-20 05:25:25'),
(72, 14, 'Said the mouse to the Knave was standing before them, in chains, with a whiting. Now you know.\' \'I DON\'T know,\' said Alice in a tone of this rope--Will the roof was thatched with fur. It was as.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_bUBbspcqpN.jpg\\\"]\"', NULL, 'image', 'friends', '2025-06-20 05:25:25', '2025-06-20 05:25:25'),
(73, 15, 'Alice turned and came back again. \'Keep your temper,\' said the Gryphon: and it was labelled \'ORANGE MARMALADE\', but to open her mouth; but she got to the executioner: \'fetch her here.\' And the.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_1mb.mp4\\\",\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'video', 'friends', '2025-06-20 05:25:29', '2025-06-20 05:25:29'),
(74, 15, 'She pitied him deeply. \'What is his sorrow?\' she asked the Mock Turtle. Alice was only the pepper that makes people hot-tempered,\' she went on, turning to Alice, she went on at last, they must needs.', NULL, NULL, 'text', 'private', '2025-06-20 05:25:29', '2025-06-20 05:25:29'),
(75, 15, 'What made you so awfully clever?\' \'I have answered three questions, and that in about half no time! Take your choice!\' The Duchess took no notice of them can explain it,\' said the King, \'that only.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_hTyS2AWl3J.jpg\\\"]\"', '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\"]\"', 'image+video', 'friends', '2025-06-20 05:25:29', '2025-06-20 05:25:29'),
(76, 16, 'Caterpillar was the first minute or two, which gave the Pigeon went on, \'that they\'d let Dinah stop in the common way. So they got settled down again very sadly and quietly, and looked into its face.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_Od5KxrfzjO.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_G6bTg9Xr7D.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_iejFhezewh.jpg\\\"]\"', NULL, 'image', 'friends', '2025-06-20 05:25:42', '2025-06-20 05:25:42'),
(77, 16, 'I\'m pleased, and wag my tail when it\'s pleased. Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'You must be,\' said the Cat, \'or you wouldn\'t keep.', NULL, NULL, 'text', 'friends', '2025-06-20 05:25:42', '2025-06-20 05:25:42'),
(78, 16, 'At this moment Five, who had spoken first. \'That\'s none of them at dinn--\' she checked herself hastily, and said to herself, being rather proud of it: \'No room! No room!\' they cried out when they.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_1Z5QthsMDy.jpg\\\"]\"', NULL, 'image', 'public', '2025-06-20 05:25:42', '2025-06-20 05:25:42'),
(79, 17, 'Mouse\'s tail; \'but why do you know that you\'re mad?\' \'To begin with,\' the Mock Turtle, and to stand on your shoes and stockings for you now, dears? I\'m sure _I_ shan\'t be beheaded!\' said Alice.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_4rrc3ixCPx.jpg\\\"]\"', '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\"]\"', 'image+video', 'friends', '2025-06-20 05:25:53', '2025-06-20 05:25:53'),
(80, 17, 'But I\'ve got to grow up any more HERE.\' \'But then,\' thought she, \'if people had all to lie down on one side, to look down and cried. \'Come, there\'s no harm in trying.\' So she began: \'O Mouse, do you.', NULL, NULL, 'text', 'public', '2025-06-20 05:25:53', '2025-06-20 05:25:53'),
(81, 17, 'Dormouse; \'VERY ill.\' Alice tried to get out at all this time. \'I want a clean cup,\' interrupted the Hatter: \'I\'m on the other side of WHAT? The other side of the wood to listen. The Fish-Footman.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_6nZymRW1g5.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_NZzM5ggeXZ.jpg\\\"]\"', '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\"]\"', 'image+video', 'public', '2025-06-20 05:25:53', '2025-06-20 05:25:53'),
(82, 18, 'Alice, in a confused way, \'Prizes! Prizes!\' Alice had no very clear notion how long ago anything had happened.) So she began thinking over other children she knew that it would all come wrong, and.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_n4JZXhg4Jf.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_O03P9DKgX5.jpg\\\"]\"', NULL, 'image', 'friends', '2025-06-20 05:26:03', '2025-06-20 05:26:03'),
(83, 18, 'Alice felt so desperate that she was a good many little girls in my life!\' She had quite a commotion in the schoolroom, and though this was not a bit of the trees had a pencil that squeaked. This of.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_4PcGlo4dcR.jpg\\\"]\"', NULL, 'image', 'private', '2025-06-20 05:26:03', '2025-06-20 05:26:03'),
(84, 18, 'However, the Multiplication Table doesn\'t signify: let\'s try the first sentence in her life before, and behind it, it occurred to her great delight it fitted! Alice opened the door began sneezing.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\"]\"', 'video', 'private', '2025-06-20 05:26:03', '2025-06-20 05:26:03'),
(85, 19, 'For really this morning I\'ve nothing to do: once or twice she had quite a large kitchen, which was sitting between them, fast asleep, and the March Hare. \'He denies it,\' said Alice. \'Why not?\' said.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_T7pmYUAr1l.jpg\\\",\\\"uploads\\\\\\/posts\\\\\\/post_8nc6HWwJi1.jpg\\\"]\"', NULL, 'image', 'public', '2025-06-20 05:26:19', '2025-06-20 05:26:19'),
(86, 19, 'IN the well,\' Alice said to herself. Imagine her surprise, when the White Rabbit; \'in fact, there\'s nothing written on the slate. \'Herald, read the accusation!\' said the Caterpillar, and the little.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_81HkVMUlvw.jpg\\\"]\"', '\"[\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'image+video', 'friends', '2025-06-20 05:26:19', '2025-06-20 05:26:19'),
(87, 19, 'I can guess that,\' she added in a trembling voice to a lobster--\' (Alice began to repeat it, but her head was so much into the book her sister kissed her, and said, \'It WAS a curious feeling!\' said.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_vgXLV5sFLY.jpg\\\"]\"', NULL, 'image', 'private', '2025-06-20 05:26:19', '2025-06-20 05:26:19'),
(88, 20, 'WAISTCOAT-POCKET, and looked at the Footman\'s head: it just now.\' \'It\'s the oldest rule in the air. She did not seem to be\"--or if you\'d rather not.\' \'We indeed!\' cried the Mouse, who was talking.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_10mb.mp4\\\"]\"', 'video', 'public', '2025-06-20 05:26:22', '2025-06-20 05:26:22'),
(89, 20, 'King, and the m--\' But here, to Alice\'s side as she ran; but the Hatter began, in a low, weak voice. \'Now, I give you fair warning,\' shouted the Gryphon, before Alice could bear: she got up, and.', '\"[\\\"uploads\\\\\\/posts\\\\\\/post_P7rqyXyOpv.jpg\\\"]\"', '\"[\\\"https:\\\\\\/\\\\\\/www.w3schools.com\\\\\\/html\\\\\\/mov_bbb.mp4\\\"]\"', 'image+video', 'friends', '2025-06-20 05:26:22', '2025-06-20 05:26:22'),
(90, 20, 'Queen\'s Croquet-Ground A large rose-tree stood near the centre of the trees behind him. \'--or next day, maybe,\' the Footman remarked, \'till tomorrow--\' At this moment the door as you might catch a.', NULL, '\"[\\\"https:\\\\\\/\\\\\\/sample-videos.com\\\\\\/video123\\\\\\/mp4\\\\\\/720\\\\\\/big_buck_bunny_720p_1mb.mp4\\\"]\"', 'video', 'private', '2025-06-20 05:26:22', '2025-06-20 05:26:22');

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
(1, 1, '1994-04-22', 'female', '831-492-3402', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/hirthe.net\\\\\\/cumque-commodi-sequi-enim-reprehenderit-itaque.html\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/hamill.com\\\\\\/\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/keeling.com\\\\\\/sint-dicta-voluptatem-ipsum-unde\\\"}\"', '2025-06-20 05:20:08', '2025-06-20 05:20:08'),
(2, 11, '1989-09-02', 'female', '+1-812-214-5297', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/runolfsdottir.com\\\\\\/\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/reichert.com\\\\\\/et-rerum-ad-repellat-et-iure\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.gerlach.com\\\\\\/a-placeat-eveniet-facere-fugiat\\\"}\"', '2025-06-20 05:22:18', '2025-06-20 05:22:18'),
(3, 12, '1987-05-12', 'other', '(434) 707-2376', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/beier.net\\\\\\/et-eos-magnam-culpa-labore-aliquid-ab.html\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/schamberger.org\\\\\\/\\\",\\\"linkedin\\\":\\\"https:\\\\\\/\\\\\\/cormier.com\\\\\\/commodi-ex-qui-sapiente-totam-ea-voluptatum-repudiandae.html\\\"}\"', '2025-06-20 05:22:22', '2025-06-20 05:22:22'),
(4, 13, '1981-08-23', 'other', '+16895170171', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/schmidt.com\\\\\\/totam-molestiae-sit-sit-quia-sit-unde\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/lakin.com\\\\\\/animi-vel-dolores-architecto-pariatur-non\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.deckow.net\\\\\\/amet-deleniti-aut-molestiae-aut-praesentium\\\"}\"', '2025-06-20 05:22:45', '2025-06-20 05:22:45'),
(5, 14, '1986-10-26', 'male', '+1.810.651.7078', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/www.ritchie.net\\\\\\/\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/spinka.com\\\\\\/quis-doloremque-rerum-quia-velit-nulla-aut-minima-unde\\\",\\\"linkedin\\\":\\\"https:\\\\\\/\\\\\\/torphy.biz\\\\\\/mollitia-eum-quae-nihil.html\\\"}\"', '2025-06-20 05:22:52', '2025-06-20 05:22:52'),
(6, 15, '1987-08-09', 'female', '520-485-1895', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/www.kub.com\\\\\\/cum-atque-exercitationem-est-dolor\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/www.oconner.net\\\\\\/\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.schowalter.com\\\\\\/\\\"}\"', '2025-06-20 05:22:56', '2025-06-20 05:22:56'),
(7, 16, '1999-11-30', 'male', '754.879.9291', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/www.pacocha.biz\\\\\\/\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/www.prosacco.info\\\\\\/vel-ut-quia-dolor-molestiae-tempore-ipsum-est\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/windler.com\\\\\\/debitis-ut-sint-eos-assumenda-possimus-alias-ratione\\\"}\"', '2025-06-20 05:23:04', '2025-06-20 05:23:04'),
(8, 17, '1987-04-24', 'female', '+17866659085', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/www.lind.net\\\\\\/\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/zboncak.com\\\\\\/sint-ad-repellendus-laudantium-et-magni-nesciunt-vitae-ut.html\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.braun.org\\\\\\/\\\"}\"', '2025-06-20 05:23:08', '2025-06-20 05:23:08'),
(9, 18, '2000-12-04', 'female', '463-864-9756', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/little.net\\\\\\/\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/www.schneider.com\\\\\\/voluptatem-labore-non-sit-recusandae\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.green.com\\\\\\/placeat-quaerat-in-nesciunt-placeat-iure\\\"}\"', '2025-06-20 05:23:22', '2025-06-20 05:23:22'),
(10, 19, '1984-12-30', 'female', '+12234315234', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/dare.org\\\\\\/odio-et-veritatis-sequi-nihil.html\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/www.donnelly.com\\\\\\/\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/anderson.com\\\\\\/fugiat-nobis-omnis-et-quos-sit-ea\\\"}\"', '2025-06-20 05:23:41', '2025-06-20 05:23:41'),
(11, 20, '1986-12-11', 'male', '1-479-386-1156', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/kassulke.org\\\\\\/voluptates-et-voluptates-sed-voluptatibus-sit-minima\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/predovic.com\\\\\\/\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.watsica.com\\\\\\/dicta-odio-id-unde-voluptatum-non-iure-quod\\\"}\"', '2025-06-20 05:23:50', '2025-06-20 05:23:50');

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
(1, 'Novice', 1, 0, '2025-06-20 05:20:08', '2025-06-20 05:20:08'),
(2, 'Novice', 1, 0, '2025-06-20 05:22:17', '2025-06-20 05:22:17');

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

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('FvZ0XRwEgFgLmVe0zjrHLHDRVK6p0jdpEfTTtJ9G', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZWdvZ21ud25ZY3ZRVGU2NWQ3RjJIZEJseUpUVTI3N2xtNnN3SnpGMiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyODoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2xvZ291dCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvdXNlci9mZWVkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTt9', 1750374637);

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
(1, 61, 12, 'Mock Turtle: \'crumbs would all wash off in the.', 'Adipisci quia molestiae doloribus sint sit sed dolores ex. Laudantium ut dicta et saepe omnis aut.\n\nCommodi voluptatibus consectetur quia excepturi perspiciatis voluptatum deserunt. Quo laboriosam voluptate reprehenderit alias quod adipisci dolores. Sed ullam dolor et aliquid sequi aliquid. Eveniet beatae reprehenderit eum mollitia.\n\nNecessitatibus quam inventore vitae est nihil voluptas distinctio. Atque voluptatem est voluptates itaque quibusdam eos aperiam in. Corporis nostrum ab quis fugit omnis.', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(2, 61, 12, 'Alice. \'And where HAVE my shoulders got to? And.', 'Autem rerum expedita et eaque repudiandae minima vel architecto. Veniam quisquam unde inventore tenetur sapiente. Perferendis rem iste velit maiores a dolorum dolorem. Dignissimos velit ut aliquam labore.\n\nFugit alias dolorem qui reprehenderit temporibus numquam. Quam harum ut sapiente reiciendis sint magni dolorem. Sint qui dolores reiciendis placeat accusamus voluptas iure. Quis voluptates et voluptatem est non. Voluptatem sunt commodi et sapiente optio.\n\nOdio vel perferendis voluptates commodi. Modi ut qui amet quam. Ab molestiae deserunt aut voluptatem occaecati fuga voluptatum.', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(3, 62, 9, 'Alice, \'it\'s very rude.\' The Hatter was the.', 'Veritatis voluptatem odit omnis aspernatur. Natus quia non sit non. Pariatur tempora dolorem fugit et eum atque. Non praesentium doloribus magnam. Veniam quas soluta omnis provident rem.\n\nDolores atque accusamus itaque autem doloribus sequi. Provident voluptates et veritatis ad tempore consectetur modi. Corporis eligendi ex sit cupiditate nostrum maxime optio cupiditate.\n\nEt veniam earum tenetur sed. Quod voluptates repellendus aut. Eligendi aut quasi dolorum deleniti aut ducimus.', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(4, 62, 9, 'The baby grunted again, so she set off at once.', 'Exercitationem a voluptate id asperiores. Atque quod est nobis eum. Architecto voluptas sequi cum sequi odit odit.\n\nConsectetur nulla sapiente debitis nam dolorum sed. Ut quam suscipit odit recusandae. Fuga adipisci quidem ipsam hic.\n\nConsequuntur minima dolor unde. Sint in voluptatem illum sit. Ut dolorum magnam sit qui reprehenderit autem. Error consequatur amet aperiam quo expedita reiciendis at.', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(5, 63, 4, 'Laughing and Grief, they used to call him.', 'Facere architecto magnam veniam dicta pariatur. Aspernatur nam nemo ut nihil repellendus quia.\n\nEst illum asperiores omnis nisi. Nisi autem eius itaque consequuntur accusamus tenetur. Nobis sint quia totam temporibus ullam laudantium optio. Accusantium in facere distinctio maxime illo deserunt.\n\nQuis ducimus et veritatis sequi est natus ut est. Exercitationem et consectetur occaecati perferendis eius qui nihil voluptatem. Ut nostrum dolorem ut possimus distinctio.', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(6, 63, 4, 'Duchess, as she listened, or seemed to Alice.', 'Ut qui officiis eum voluptates debitis quae. Ad quae fugiat aspernatur sint consequuntur. Aut vitae quibusdam est aspernatur cumque porro.\n\nQuas quaerat rerum quia voluptate quaerat sit ut. Exercitationem maxime eveniet ea veritatis qui. Deserunt impedit perferendis iusto ut quo cumque. Molestiae consequatur explicabo sunt qui. Est ea nulla quisquam delectus molestiae.\n\nQuia enim eligendi omnis in voluptatem. Magni et natus molestiae. Quia omnis qui iste illo quo ea aut.', '2025-06-20 05:26:23', '2025-06-20 05:26:23');

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
  `user_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Member, 2=Admin, 3=Superadmin',
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

INSERT INTO `users` (`id`, `last_name`, `first_name`, `middle_name`, `email`, `user_type`, `password`, `avatar`, `bio`, `location`, `rank_id`, `credit`, `login_attempts`, `email_verified_status`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Blanda', 'Destinee', 'Lesly', 'hudson.lexus@example.net', 1, '$2y$12$IAHOixgYrOW.6g03Jpvfa.Zng6m0VOcauLW5LcnoPGcbiy6Mx32FW', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:20:08', 'STBdEFpZrK6gom01mYlhgWgv5sPGMUgX4Af5P0tYRK9zs0po72VpRE5zB1JT', '2025-06-20 05:20:08', '2025-06-20 05:20:08'),
(2, 'Bradtke', 'Ansley', NULL, 'germaine.romaguera@example.org', 1, '$2y$12$IAHOixgYrOW.6g03Jpvfa.Zng6m0VOcauLW5LcnoPGcbiy6Mx32FW', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:20:08', 'XE2K0Os7OU', '2025-06-20 05:20:08', '2025-06-20 05:20:08'),
(3, 'Klein', 'Jordane', NULL, 'jalen64@example.net', 1, '$2y$12$IAHOixgYrOW.6g03Jpvfa.Zng6m0VOcauLW5LcnoPGcbiy6Mx32FW', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:20:08', 'wZB4mJwUHZ', '2025-06-20 05:20:08', '2025-06-20 05:20:08'),
(4, 'Franecki', 'Mercedes', 'Assunta', 'lflatley@example.com', 1, '$2y$12$IAHOixgYrOW.6g03Jpvfa.Zng6m0VOcauLW5LcnoPGcbiy6Mx32FW', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:20:08', '0s7TsU4D4A', '2025-06-20 05:20:08', '2025-06-20 05:20:08'),
(5, 'Lang', 'Sandy', 'Opal', 'norval52@example.org', 1, '$2y$12$IAHOixgYrOW.6g03Jpvfa.Zng6m0VOcauLW5LcnoPGcbiy6Mx32FW', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:20:08', 'OL4HEKpLaG', '2025-06-20 05:20:08', '2025-06-20 05:20:08'),
(6, 'Dibbert', 'Elenor', NULL, 'mohr.bessie@example.com', 1, '$2y$12$IAHOixgYrOW.6g03Jpvfa.Zng6m0VOcauLW5LcnoPGcbiy6Mx32FW', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:20:08', 'P0UvIEItFJ', '2025-06-20 05:20:08', '2025-06-20 05:20:08'),
(7, 'Veum', 'Sheridan', NULL, 'qtromp@example.org', 1, '$2y$12$IAHOixgYrOW.6g03Jpvfa.Zng6m0VOcauLW5LcnoPGcbiy6Mx32FW', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:20:08', '1F2SrsP0ol', '2025-06-20 05:20:08', '2025-06-20 05:20:08'),
(8, 'Sawayn', 'Kamryn', NULL, 'roob.sage@example.org', 1, '$2y$12$IAHOixgYrOW.6g03Jpvfa.Zng6m0VOcauLW5LcnoPGcbiy6Mx32FW', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:20:08', 'EcHzNUtW1r', '2025-06-20 05:20:08', '2025-06-20 05:20:08'),
(9, 'Kunze', 'Orrin', 'Kariane', 'vena.larson@example.net', 1, '$2y$12$IAHOixgYrOW.6g03Jpvfa.Zng6m0VOcauLW5LcnoPGcbiy6Mx32FW', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:20:08', 'Lc7PjXbUNv', '2025-06-20 05:20:08', '2025-06-20 05:20:08'),
(10, 'Hegmann', 'Sylvan', 'Luciano', 'jovany63@example.org', 1, '$2y$12$IAHOixgYrOW.6g03Jpvfa.Zng6m0VOcauLW5LcnoPGcbiy6Mx32FW', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:20:08', 'ynYibbVHJe', '2025-06-20 05:20:08', '2025-06-20 05:20:08'),
(11, 'Krajcik', 'Valentina', 'Darion', 'jerod.hermiston@example.net', 1, '$2y$12$LEa4FSa2yaW8TjnDpve7ceeU7EvtXQWN3yh2GNR6Wyurh9iFDDNo.', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:22:17', 'Q0ApeXHKva', '2025-06-20 05:22:18', '2025-06-20 05:22:18'),
(12, 'O\'Connell', 'Isaias', NULL, 'amara.wyman@example.com', 1, '$2y$12$LEa4FSa2yaW8TjnDpve7ceeU7EvtXQWN3yh2GNR6Wyurh9iFDDNo.', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:22:18', 'jyACOWldYy', '2025-06-20 05:22:18', '2025-06-20 05:22:18'),
(13, 'Lind', 'Melissa', 'Pearl', 'alice.cronin@example.net', 1, '$2y$12$LEa4FSa2yaW8TjnDpve7ceeU7EvtXQWN3yh2GNR6Wyurh9iFDDNo.', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:22:18', 'PvuLxy5dMt', '2025-06-20 05:22:18', '2025-06-20 05:22:18'),
(14, 'Stokes', 'Leanna', NULL, 'pmccullough@example.net', 1, '$2y$12$LEa4FSa2yaW8TjnDpve7ceeU7EvtXQWN3yh2GNR6Wyurh9iFDDNo.', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:22:18', '781uW43srj', '2025-06-20 05:22:18', '2025-06-20 05:22:18'),
(15, 'Beer', 'Destini', NULL, 'aracely22@example.net', 1, '$2y$12$LEa4FSa2yaW8TjnDpve7ceeU7EvtXQWN3yh2GNR6Wyurh9iFDDNo.', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:22:18', 'AK9rsY8ANU', '2025-06-20 05:22:18', '2025-06-20 05:22:18'),
(16, 'Turner', 'Rocky', NULL, 'nabernathy@example.com', 1, '$2y$12$LEa4FSa2yaW8TjnDpve7ceeU7EvtXQWN3yh2GNR6Wyurh9iFDDNo.', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:22:18', 'lUSUdlwZHG', '2025-06-20 05:22:18', '2025-06-20 05:22:18'),
(17, 'Monahan', 'Theodora', 'Jennie', 'leon87@example.com', 1, '$2y$12$LEa4FSa2yaW8TjnDpve7ceeU7EvtXQWN3yh2GNR6Wyurh9iFDDNo.', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:22:18', '4O1MzcXWZH', '2025-06-20 05:22:18', '2025-06-20 05:22:18'),
(18, 'Cummings', 'Leila', NULL, 'padberg.korbin@example.net', 1, '$2y$12$LEa4FSa2yaW8TjnDpve7ceeU7EvtXQWN3yh2GNR6Wyurh9iFDDNo.', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:22:18', 'V5H9Lh2At9', '2025-06-20 05:22:18', '2025-06-20 05:22:18'),
(19, 'Hamill', 'Jennifer', 'Aurelio', 'russell.mosciski@example.org', 1, '$2y$12$LEa4FSa2yaW8TjnDpve7ceeU7EvtXQWN3yh2GNR6Wyurh9iFDDNo.', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:22:18', 'IXFRIyiE8m', '2025-06-20 05:22:18', '2025-06-20 05:22:18'),
(20, 'Ritchie', 'Pietro', 'Deshawn', 'ihane@example.org', 1, '$2y$12$LEa4FSa2yaW8TjnDpve7ceeU7EvtXQWN3yh2GNR6Wyurh9iFDDNo.', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:22:18', 'BOgQSurylM', '2025-06-20 05:22:18', '2025-06-20 05:22:18'),
(21, 'Lockman', 'Gregorio', NULL, 'omitchell@example.com', 1, '$2y$12$LEa4FSa2yaW8TjnDpve7ceeU7EvtXQWN3yh2GNR6Wyurh9iFDDNo.', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:26:22', 'ZkPrAb9DPf', '2025-06-20 05:26:22', '2025-06-20 05:26:22'),
(22, 'West', 'Jasper', NULL, 'rlebsack@example.net', 1, '$2y$12$LEa4FSa2yaW8TjnDpve7ceeU7EvtXQWN3yh2GNR6Wyurh9iFDDNo.', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:26:22', 'c8n31rk8UY', '2025-06-20 05:26:22', '2025-06-20 05:26:22'),
(23, 'Jerde', 'Jaquan', NULL, 'hturcotte@example.com', 1, '$2y$12$LEa4FSa2yaW8TjnDpve7ceeU7EvtXQWN3yh2GNR6Wyurh9iFDDNo.', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:26:22', 'coSZLvLpUr', '2025-06-20 05:26:22', '2025-06-20 05:26:22'),
(24, 'Streich', 'Jairo', 'Missouri', 'bernier.matt@example.com', 1, '$2y$12$LEa4FSa2yaW8TjnDpve7ceeU7EvtXQWN3yh2GNR6Wyurh9iFDDNo.', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:26:23', '26XALbPVDB', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(25, 'Stracke', 'Jaycee', 'Arely', 'murray.syble@example.com', 1, '$2y$12$LEa4FSa2yaW8TjnDpve7ceeU7EvtXQWN3yh2GNR6Wyurh9iFDDNo.', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:26:23', '41vCZESJrS', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(26, 'O\'Reilly', 'Leonardo', 'Edythe', 'harvey.karson@example.net', 1, '$2y$12$LEa4FSa2yaW8TjnDpve7ceeU7EvtXQWN3yh2GNR6Wyurh9iFDDNo.', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:26:23', 'eqR2lzBFjD', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(27, 'Hickle', 'Jena', 'Rosa', 'zboncak.ubaldo@example.net', 1, '$2y$12$LEa4FSa2yaW8TjnDpve7ceeU7EvtXQWN3yh2GNR6Wyurh9iFDDNo.', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:26:23', 'uihxFNdsTz', '2025-06-20 05:26:23', '2025-06-20 05:26:23'),
(28, 'Walsh', 'Maribel', NULL, 'dejuan24@example.org', 1, '$2y$12$LEa4FSa2yaW8TjnDpve7ceeU7EvtXQWN3yh2GNR6Wyurh9iFDDNo.', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-20 05:26:23', 'F966l0ymwF', '2025-06-20 05:26:23', '2025-06-20 05:26:23');

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
(1, 10, 1, NULL, NULL),
(2, 5, 1, NULL, NULL),
(3, 6, 2, NULL, NULL),
(4, 5, 2, NULL, NULL),
(5, 7, 3, NULL, NULL),
(6, 5, 3, NULL, NULL),
(7, 10, 4, NULL, NULL),
(8, 7, 4, NULL, NULL),
(9, 9, 5, NULL, NULL),
(10, 7, 5, NULL, NULL),
(11, 1, 6, NULL, NULL),
(12, 8, 6, NULL, NULL),
(13, 4, 7, NULL, NULL),
(14, 3, 7, NULL, NULL),
(15, 8, 8, NULL, NULL),
(16, 9, 8, NULL, NULL),
(17, 5, 9, NULL, NULL),
(18, 8, 9, NULL, NULL),
(19, 6, 10, NULL, NULL),
(20, 9, 10, NULL, NULL),
(21, 2, 11, NULL, NULL),
(22, 8, 11, NULL, NULL),
(23, 1, 12, NULL, NULL),
(24, 3, 12, NULL, NULL),
(25, 1, 13, NULL, NULL),
(26, 10, 13, NULL, NULL),
(27, 1, 14, NULL, NULL),
(28, 4, 14, NULL, NULL),
(29, 7, 15, NULL, NULL),
(30, 4, 15, NULL, NULL),
(31, 2, 16, NULL, NULL),
(32, 10, 16, NULL, NULL),
(33, 7, 17, NULL, NULL),
(34, 2, 17, NULL, NULL),
(35, 4, 18, NULL, NULL),
(36, 7, 18, NULL, NULL),
(37, 8, 19, NULL, NULL),
(38, 1, 19, NULL, NULL),
(39, 4, 20, NULL, NULL),
(40, 9, 20, NULL, NULL),
(41, 4, 21, NULL, NULL),
(42, 6, 21, NULL, NULL),
(43, 2, 22, NULL, NULL),
(44, 8, 22, NULL, NULL),
(45, 9, 23, NULL, NULL),
(46, 10, 23, NULL, NULL),
(47, 7, 24, NULL, NULL),
(48, 9, 24, NULL, NULL),
(49, 10, 25, NULL, NULL),
(50, 9, 25, NULL, NULL),
(51, 10, 26, NULL, NULL),
(52, 6, 26, NULL, NULL),
(53, 10, 27, NULL, NULL),
(54, 1, 27, NULL, NULL),
(55, 6, 28, NULL, NULL),
(56, 9, 28, NULL, NULL);

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
-- Indexes for table `failed_logins`
--
ALTER TABLE `failed_logins`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `log_activities`
--
ALTER TABLE `log_activities`
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
-- AUTO_INCREMENT for table `failed_logins`
--
ALTER TABLE `failed_logins`
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
-- AUTO_INCREMENT for table `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `marketplace_items`
--
ALTER TABLE `marketplace_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `marketplace_orders`
--
ALTER TABLE `marketplace_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `quests`
--
ALTER TABLE `quests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ranks`
--
ALTER TABLE `ranks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user_badges`
--
ALTER TABLE `user_badges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

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
