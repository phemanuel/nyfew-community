-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2025 at 10:09 PM
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
(1, 'Dinah my.', 'Why, I do hope it\'ll make me smaller, I can guess that,\' she added aloud. \'Do.', 'default.png', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(2, 'I know!\'.', 'Said the mouse to the Knave. The Knave shook his grey locks, \'I kept all my.', 'default.png', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(3, 'Alice, a.', 'Queen in front of the suppressed guinea-pigs, filled the air, and came back.', 'default.png', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(4, 'Dormouse.', 'King eagerly, and he hurried off. Alice thought decidedly uncivil. \'But.', 'default.png', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(5, 'For this.', 'Alice indignantly. \'Ah! then yours wasn\'t a bit of the others all joined in.', 'default.png', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(6, 'They had.', 'Alice, and tried to look for her, and she was peering about anxiously among.', 'default.png', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(7, 'On which.', 'Alice thought to herself, rather sharply; \'I advise you to learn?\' \'Well.', 'default.png', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(8, 'Cat, and.', 'Hatter hurriedly left the court, \'Bring me the truth: did you call him.', 'default.png', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(9, 'Cheshire.', 'I eat or drink anything; so I\'ll just see what the moral of that is, but I.', 'default.png', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(10, 'The next.', 'She pitied him deeply. \'What is his sorrow?\' she asked the Mock Turtle. \'No.', 'default.png', '2025-06-18 04:57:20', '2025-06-18 04:57:20');

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
(1, 'I suppose it were nine o\'clock in the pictures.', 'Hatter. \'Stolen!\' the King eagerly, and he poured a little irritated at the.', NULL, 1, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(2, 'Hatter hurriedly left the court, without even.', 'Elsie, Lacie, and Tillie; and they sat down again very sadly and quietly, and.', NULL, 1, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(3, 'Caterpillar. \'Is that all?\' said the cook.', 'The Cat seemed to be executed for having cheated herself in a minute or two.', 1, 1, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(4, 'I THINK,\' said Alice. \'I\'ve read that in some.', 'It\'s the most confusing thing I ask! It\'s always six o\'clock now.\' A bright.', 1, 1, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(5, 'Alice, she went on, half to herself, for she.', 'She was walking by the fire, stirring a large one, but the three gardeners.', 2, 1, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(6, 'Gryphon said to the Knave of Hearts, carrying.', 'YOU, and no one else seemed inclined to say it any longer than that,\' said the.', 2, 1, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(7, 'VERY wide, but she felt a very poor speaker,\'.', 'March Hare. \'Sixteenth,\' added the Gryphon, and the poor child, \'for I never.', NULL, 2, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(8, 'Let me see: that would happen: \'\"Miss Alice!.', 'Hatter grumbled: \'you shouldn\'t have put it more clearly,\' Alice replied in a.', NULL, 2, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(9, 'Alice. \'It must have been changed for any.', 'Dinah stop in the chimney as she could have told you that.\' \'If I\'d been the.', 7, 2, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(10, 'Mock Turtle repeated thoughtfully. \'I should.', 'Alice as she could, and soon found herself in the pool of tears which she had.', 7, 2, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(11, 'I can\'t take more.\' \'You mean you can\'t swim.', 'Alice glanced rather anxiously at the number of executions the Queen ordering.', 8, 2, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(12, 'Hatter, \'when the Queen to-day?\' \'I should like.', 'Time!\' \'Perhaps not,\' Alice cautiously replied, not feeling at all.', 8, 2, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(13, 'Alice, with a deep sigh, \'I was a dead silence.', 'Queen added to one of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus.', NULL, 3, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(14, 'For some minutes the whole head appeared, and.', 'Hatter: \'let\'s all move one place on.\' He moved on as he came, \'Oh! the.', NULL, 3, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(15, 'However, on the floor, and a large mustard-mine.', 'HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT.', 13, 3, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(16, 'English, who wanted leaders, and had just begun.', 'Caterpillar. \'Well, I\'ve tried to fancy to herself that perhaps it was out of.', 13, 3, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(17, 'Because he knows it teases.\' CHORUS. (In which.', 'Alice thought), and it was done. They had a little bit, and said \'That\'s very.', 14, 3, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(18, 'March Hare and the Gryphon never learnt it.\'.', 'Hatter said, tossing his head contemptuously. \'I dare say you never tasted an.', 14, 3, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(19, 'CHAPTER II. The Pool of Tears \'Curiouser and.', 'Time as well say this), \'to go on for some time in silence: at last it.', NULL, 4, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(20, 'Alice to herself, \'Now, what am I to do?\' said.', 'The Cat\'s head began fading away the time. Alice had no reason to be sure.', NULL, 4, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(21, 'Hatter. \'You MUST remember,\' remarked the King.', 'At this moment the King, \'that only makes the matter worse. You MUST have.', 19, 4, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(22, 'In a minute or two. \'They couldn\'t have wanted.', 'It\'s high time to see if he doesn\'t begin.\' But she did not like to drop the.', 19, 4, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(23, 'Dodo solemnly presented the thimble, saying \'We.', 'She carried the pepper-box in her own mind (as well as she went slowly after.', 20, 4, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(24, 'ONE.\' \'One, indeed!\' said Alice, (she had grown.', 'Alice panted as she could, and soon found out that she let the jury--\' \'If any.', 20, 4, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(25, 'Alice panted as she went to him,\' said Alice.', 'Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can guess that,\'.', NULL, 5, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(26, 'English coast you find a pleasure in all.', 'I used--and I don\'t like it, yer honour, at all, as the other.\' As soon as.', NULL, 5, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(27, 'See how eagerly the lobsters to the Mock Turtle.', 'Lizard, who seemed too much frightened that she knew she had never seen such a.', 25, 5, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(28, 'I was thinking I should frighten them out of the.', 'Yet you turned a corner, \'Oh my ears and the baby at her feet as the hall was.', 25, 5, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(29, 'THAT in a trembling voice:-- \'I passed by his.', 'Alice did not much larger than a real nose; also its eyes by this time.).', 26, 5, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(30, 'The Mouse only shook its head impatiently, and.', 'The Queen had only one way of expecting nothing but out-of-the-way things to.', 26, 5, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(31, 'When the pie was all finished, the Owl, as a.', 'There was no one else seemed inclined to say \"HOW DOTH THE LITTLE BUSY BEE,\".', NULL, 6, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(32, 'Alice, and her eyes filled with cupboards and.', 'Alice called after her. \'I\'ve something important to say!\' This sounded.', NULL, 6, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(33, 'King: \'however, it may kiss my hand if it wasn\'t.', 'Beautiful, beautiful Soup! \'Beautiful Soup! Who cares for fish, Game, or any.', 31, 6, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(34, 'THAT. Then again--\"BEFORE SHE HAD THIS FIT--\".', 'Alice, surprised at her for a minute or two she stood watching them, and then.', 31, 6, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(35, 'Alice took up the fan and the Queen\'s hedgehog.', 'Will you, won\'t you, will you join the dance. Would not, could not, could not.', 32, 6, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(36, 'It was the fan she was now the right way to.', 'Some of the March Hare. \'I didn\'t know it to annoy, Because he knows it.', 32, 6, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(37, 'Story \'You can\'t think how glad I am in the pool.', 'So she began: \'O Mouse, do you know I\'m mad?\' said Alice. \'I\'m a--I\'m a--\'.', NULL, 7, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(38, 'It\'s the most curious thing I ever was at in all.', 'Alice very politely; but she did so, very carefully, with one finger pressed.', NULL, 7, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(39, 'Which shall sing?\' \'Oh, YOU sing,\' said the Mock.', 'Gryphon, and the fall was over. However, when they liked, so that by the fire.', 37, 7, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(40, 'Caterpillar sternly. \'Explain yourself!\' \'I.', 'Dormouse sulkily remarked, \'If you do. I\'ll set Dinah at you!\' There was.', 37, 7, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(41, 'White Rabbit returning, splendidly dressed, with.', 'Gryphon never learnt it.\' \'Hadn\'t time,\' said the Cat. \'I said pig,\' replied.', 38, 7, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(42, 'Queen. \'I never heard it say to itself, half to.', 'Alice sadly. \'Hand it over afterwards, it occurred to her that she had nothing.', 38, 7, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(43, 'Alice sadly. \'Hand it over a little bird as soon.', 'Soup, so rich and green, Waiting in a ring, and begged the Mouse was bristling.', NULL, 8, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(44, 'ARE OLD, FATHER WILLIAM,\"\' said the Hatter; \'so.', 'Alice, \'shall I NEVER get any older than I am very tired of this. I vote the.', NULL, 8, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(45, 'Next came the guests, mostly Kings and Queens.', 'That\'s all.\' \'Thank you,\' said the Hatter: \'but you could only hear whispers.', 43, 8, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(46, 'The Mouse only shook its head impatiently, and.', 'Will you, won\'t you, will you, won\'t you, will you join the dance? \"You can.', 43, 8, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(47, 'I dare say you\'re wondering why I don\'t want to.', 'How brave they\'ll all think me at home! Why, I do it again and again.\' \'You.', 44, 8, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(48, 'Gryphon. \'Then, you know,\' the Hatter went on.', 'Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Hatter: \'but you could.', 44, 8, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(49, 'Alice, \'Have you guessed the riddle yet?\' the.', 'I shall think nothing of the miserable Mock Turtle. \'She can\'t explain MYSELF.', NULL, 9, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(50, 'I must have been a holiday?\' \'Of course it is,\'.', 'I suppose you\'ll be asleep again before it\'s done.\' \'Once upon a low curtain.', NULL, 9, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(51, 'Improve his shining tail, And pour the waters of.', 'Dormouse!\' And they pinched it on both sides of it; so, after hunting all.', 49, 9, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(52, 'And with that she was a most extraordinary noise.', 'Alice went timidly up to the company generally, \'You are all pardoned.\' \'Come.', 49, 9, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(53, 'King, who had followed him into the court.', 'Mock Turtle, and to stand on your shoes and stockings for you now, dears? I\'m.', 50, 9, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(54, 'Then came a little timidly, \'why you are.', 'As soon as it was too much of it at all,\' said the Caterpillar. \'I\'m afraid I.', 50, 9, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(55, 'Alice replied thoughtfully. \'They have their.', 'March Hare said in a moment: she looked down at them, and was going on rather.', NULL, 10, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(56, 'I hadn\'t to bring tears into her face, and was.', 'The Mouse gave a sudden leap out of a sea of green leaves that lay far below.', NULL, 10, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(57, 'Rabbit came up to them to sell,\' the Hatter went.', 'Said the mouse to the game. CHAPTER IX. The Mock Turtle went on, \'--likely to.', 55, 10, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(58, 'VERY nearly at the March Hare. \'He denies it,\'.', 'This seemed to have got altered.\' \'It is wrong from beginning to feel which.', 55, 10, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(59, 'Alice an excellent opportunity for making her.', 'VERY long claws and a great hurry, muttering to himself as he spoke, and then.', 56, 10, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(60, 'Alice remarked. \'Oh, you foolish Alice!\' she.', 'Hatter, and here the Mock Turtle said with a knife, it usually bleeds; and she.', 56, 10, '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(61, 'Alice looked at Alice, as she spoke--fancy.', 'Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the.', NULL, 11, '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(62, 'I hadn\'t begun my tea--not above a week or.', 'Gryphon said, in a ring, and begged the Mouse was speaking, and this he handed.', NULL, 12, '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(63, 'Let me see--how IS it to annoy, Because he knows.', 'There was a child,\' said the Lory, who at last the Mock Turtle, suddenly.', NULL, 13, '2025-06-18 04:57:20', '2025-06-18 04:57:20');

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
(1, 'Mary Ann, and.', 'Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the.', 'private', 'blank.png', 14, '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(2, 'This was not.', 'There could be beheaded, and that he shook his head sadly. \'Do I look like.', 'public', 'blank.png', 15, '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(3, 'Gryphon said.', 'Then she went round the table, but it did not get hold of this remark, and.', 'public', 'blank.png', 16, '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(4, 'QUITE as much.', 'Gryphon. \'They can\'t have anything to say, she simply bowed, and took the.', 'private', 'blank.png', 17, '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(5, 'And the moral.', 'I\'m grown up now,\' she added in a voice she had felt quite strange at first.', 'public', 'blank.png', 18, '2025-06-18 04:57:20', '2025-06-18 04:57:20');

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
(1, 1, 11, 'member', NULL, NULL),
(2, 1, 3, 'member', NULL, NULL),
(3, 1, 15, 'member', NULL, NULL),
(4, 1, 10, 'member', NULL, NULL),
(5, 1, 4, 'member', NULL, NULL),
(6, 2, 7, 'member', NULL, NULL),
(7, 2, 2, 'member', NULL, NULL),
(8, 2, 6, 'member', NULL, NULL),
(9, 2, 1, 'member', NULL, NULL),
(10, 2, 4, 'member', NULL, NULL),
(11, 3, 2, 'member', NULL, NULL),
(12, 3, 14, 'member', NULL, NULL),
(13, 3, 3, 'member', NULL, NULL),
(14, 3, 4, 'member', NULL, NULL),
(15, 3, 11, 'member', NULL, NULL),
(16, 4, 3, 'member', NULL, NULL),
(17, 4, 10, 'member', NULL, NULL),
(18, 4, 7, 'member', NULL, NULL),
(19, 4, 12, 'member', NULL, NULL),
(20, 4, 16, 'member', NULL, NULL),
(21, 5, 16, 'member', NULL, NULL),
(22, 5, 18, 'member', NULL, NULL),
(23, 5, 4, 'member', NULL, NULL),
(24, 5, 13, 'member', NULL, NULL),
(25, 5, 10, 'member', NULL, NULL);

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
(1, 1, 'Dormouse.', 'Latitude was, or Longitude I\'ve got to do,\' said the Hatter: \'as the things.', 34, 'digital', 'default.png', 'available', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(2, 1, 'Said his.', 'Hatter said, tossing his head contemptuously. \'I dare say there may be.', 327, 'physical', 'default.png', 'available', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(3, 1, 'Then the.', 'The rabbit-hole went straight on like a tunnel for some way, and then the.', 368, 'physical', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(4, 2, 'I shan\'t.', 'Duchess, \'and that\'s the jury-box,\' thought Alice, \'to speak to this mouse?.', 469, 'digital', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(5, 3, 'But, now.', 'I must have prizes.\' \'But who is Dinah, if I like being that person, I\'ll come.', 436, 'digital', 'default.png', 'available', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(6, 3, 'Off with.', 'Let me see--how IS it to annoy, Because he knows it teases.\' CHORUS. (In which.', 294, 'physical', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(7, 4, 'For, you.', 'White Rabbit: it was a table in the sand with wooden spades, then a row of.', 426, 'physical', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(8, 4, 'And will.', 'Alice was too small, but at last she spread out her hand, and a sad tale!\'.', 349, 'digital', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(9, 4, 'Rabbit\'s.', 'THE KING AND QUEEN OF HEARTS. Alice was so small as this before, never! And I.', 125, 'physical', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(10, 5, 'She soon.', 'Mock Turtle. \'And how many hours a day is very confusing.\' \'It isn\'t,\' said.', 212, 'physical', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(11, 5, 'Allow me.', 'I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go on. \'And so these.', 446, 'physical', 'default.png', 'available', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(12, 6, 'He moved.', 'I am in the pool rippling to the Caterpillar, just as the hall was very like a.', 16, 'digital', 'default.png', 'available', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(13, 6, 'Bill had.', 'Mouse\'s tail; \'but why do you know why it\'s called a whiting?\' \'I never was so.', 71, 'digital', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(14, 7, 'YOU must.', 'Cat, she was holding, and she tried to speak, but for a few minutes that she.', 25, 'physical', 'default.png', 'available', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(15, 8, 'Dormouse.', 'Alice; \'I daresay it\'s a set of verses.\' \'Are they in the flurry of the.', 252, 'digital', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(16, 8, 'I wonder.', 'Dormouse. \'Don\'t talk nonsense,\' said Alice more boldly: \'you know you\'re.', 54, 'digital', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(17, 8, 'Dormouse.', 'It did so indeed, and much sooner than she had wept when she had felt quite.', 222, 'physical', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(18, 9, 'Oh dear!.', 'I\'ve kept her eyes anxiously fixed on it, or at any rate: go and live in that.', 145, 'physical', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(19, 9, 'Cat went.', 'Poor Alice! It was opened by another footman in livery, with a great many more.', 232, 'physical', 'default.png', 'available', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(20, 10, 'I should.', 'SOME change in my life!\' Just as she could, and soon found an opportunity of.', 210, 'digital', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(21, 10, 'Queen in.', 'Majesty?\' he asked. \'Begin at the beginning,\' the King added in a solemn tone.', 160, 'physical', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(22, 11, 'Dormouse.', 'First, she dreamed of little animals and birds waiting outside. The poor.', 121, 'physical', 'default.png', 'available', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(23, 11, 'So Alice.', 'Alice. \'Then you should say \"With what porpoise?\"\' \'Don\'t you mean that you.', 126, 'digital', 'default.png', 'available', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(24, 11, 'Duck and.', 'Dodo, \'the best way to change them--\' when she was about a whiting to a snail.', 320, 'digital', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(25, 12, 'But they.', 'And beat him when he sneezes; For he can thoroughly enjoy The pepper when he.', 212, 'physical', 'default.png', 'available', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(26, 13, 'For this.', 'There was a large one, but it had no pictures or conversations in it, \'and.', 375, 'digital', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(27, 13, 'You MUST.', 'Hatter: \'as the things between whiles.\' \'Then you should say \"With what.', 48, 'digital', 'default.png', 'available', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(28, 14, 'Cat went.', 'Alice. \'Nothing WHATEVER?\' persisted the King. (The jury all wrote down all.', 402, 'physical', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(29, 14, 'And beat.', 'Lobster Quadrille, that she was saying, and the executioner went off like an.', 96, 'digital', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(30, 14, 'Alice in.', 'Turtle.\' These words were followed by a row of lamps hanging from the change.', 390, 'digital', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(31, 15, 'Rabbit\'s.', 'See how eagerly the lobsters to the fifth bend, I think?\' he said in a rather.', 66, 'physical', 'default.png', 'available', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(32, 15, 'THE KING.', 'I to do it.\' (And, as you say \"What a pity!\"?\' the Rabbit hastily interrupted.', 193, 'digital', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(33, 15, 'The jury.', 'Alice hastily replied; \'at least--at least I mean what I was going to begin.', 106, 'physical', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(34, 16, 'She felt.', 'Why, I do it again and again.\' \'You are old,\' said the Hatter, who turned pale.', 110, 'digital', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(35, 16, 'And they.', 'Number One,\' said Alice. \'Of course not,\' said Alice as she had made the whole.', 459, 'physical', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(36, 17, 'Dormouse.', 'CHAPTER VI. Pig and Pepper For a minute or two she walked on in these words.', 392, 'physical', 'default.png', 'available', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(37, 18, 'Mouse to.', 'Why, I wouldn\'t say anything about it, you know.\' \'Who is it I can\'t show it.', 160, 'digital', 'default.png', 'sold', '2025-06-18 04:57:21', '2025-06-18 04:57:21'),
(38, 18, 'I should.', 'Queen, but she did not wish to offend the Dormouse went on, \'you see, a dog.', 108, 'digital', 'default.png', 'available', '2025-06-18 04:57:21', '2025-06-18 04:57:21');

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
(25, '2025_06_18_200531_add_user_type_to_users_table', 2);

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
(1, 1, 'That he met in the common way. So they went on growing, and growing, and very neatly and simply arranged; the only difficulty was, that if something wasn\'t done about it in a tone of great surprise.', 'https://via.placeholder.com/640x480.png/0000ff?text=cats+Post+accusamus', 'image', 'friends', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(2, 1, 'Hatter, and he went on again: \'Twenty-four hours, I THINK; or is it directed to?\' said one of the e--e--evening, Beautiful, beautiful Soup! \'Beautiful Soup! Who cares for you?\' said the Caterpillar.', 'https://via.placeholder.com/640x480.png/004433?text=cats+Post+dolorem', 'video', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(3, 1, 'Don\'t let him know she liked them best, For this must be off, then!\' said the Mock Turtle a little timidly, for she felt unhappy. \'It was much pleasanter at home,\' thought poor Alice, \'when one.', 'https://via.placeholder.com/640x480.png/0011ff?text=cats+Post+deleniti', 'text', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(4, 2, 'Alice desperately: \'he\'s perfectly idiotic!\' And she kept on good terms with him, he\'d do almost anything you liked with the game,\' the Queen added to one of the Rabbit\'s voice along--\'Catch him.', 'https://via.placeholder.com/640x480.png/00ffbb?text=cats+Post+ipsam', 'text', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(5, 2, 'White Rabbit, \'but it seems to be sure; but I don\'t care which happens!\' She ate a little way forwards each time and a scroll of parchment in the flurry of the e--e--evening, Beautiful, beautiful.', 'https://via.placeholder.com/640x480.png/00dd55?text=cats+Post+laborum', 'text', 'friends', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(6, 2, 'I to do it.\' (And, as you liked.\' \'Is that the best thing to nurse--and she\'s such a dreadful time.\' So Alice got up this morning, but I THINK I can listen all day about it!\' Last came a little.', 'https://via.placeholder.com/640x480.png/00ee88?text=cats+Post+qui', 'video', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(7, 3, 'There was certainly English. \'I don\'t think it\'s at all like the tone of great relief. \'Call the next witness. It quite makes my forehead ache!\' Alice watched the White Rabbit: it was talking in his.', 'https://via.placeholder.com/640x480.png/004433?text=cats+Post+commodi', 'image', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(8, 3, 'Dinah\'ll be sending me on messages next!\' And she went back to them, they set to work at once set to work nibbling at the sudden change, but very politely: \'Did you speak?\' \'Not I!\' said the Lory.', 'https://via.placeholder.com/640x480.png/000044?text=cats+Post+at', 'text', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(9, 3, 'ARE OLD, FATHER WILLIAM,\' to the Queen. \'Can you play croquet?\' The soldiers were silent, and looked at it gloomily: then he dipped it into his plate. Alice did not quite sure whether it was too.', 'https://via.placeholder.com/640x480.png/00ee77?text=cats+Post+fuga', 'image', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(10, 4, 'Eaglet. \'I don\'t believe you do lessons?\' said Alice, timidly; \'some of the moment they saw her, they hurried back to the Queen, \'Really, my dear, YOU must cross-examine the next witness.\' And he.', 'https://via.placeholder.com/640x480.png/00bb66?text=cats+Post+ut', 'video', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(11, 4, 'I hadn\'t cried so much!\' Alas! it was her dream:-- First, she dreamed of little cartwheels, and the soldiers had to pinch it to be no sort of idea that they must needs come wriggling down from the.', 'https://via.placeholder.com/640x480.png/007777?text=cats+Post+voluptatem', 'video', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(12, 4, 'Alice ventured to ask. \'Suppose we change the subject. \'Ten hours the first to speak. \'What size do you know what you would have called him a fish)--and rapped loudly at the Hatter, and he went on.', 'https://via.placeholder.com/640x480.png/004444?text=cats+Post+saepe', 'image', 'friends', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(13, 5, 'Bill!\' then the puppy jumped into the air, and came back again. \'Keep your temper,\' said the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice very politely; but she knew.', 'https://via.placeholder.com/640x480.png/00ffff?text=cats+Post+quo', 'video', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(14, 5, 'But here, to Alice\'s great surprise, the Duchess\'s knee, while plates and dishes crashed around it--once more the pig-baby was sneezing and howling alternately without a moment\'s pause. The only.', 'https://via.placeholder.com/640x480.png/000077?text=cats+Post+a', 'text', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(15, 5, 'Alice, that she might as well as she spoke--fancy CURTSEYING as you\'re falling through the neighbouring pool--she could hear him sighing as if she was in managing her flamingo: she succeeded in.', 'https://via.placeholder.com/640x480.png/00cc99?text=cats+Post+occaecati', 'text', 'friends', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(16, 6, 'I can\'t quite follow it as you liked.\' \'Is that the best cat in the last concert!\' on which the words a little, and then sat upon it.) \'I\'m glad I\'ve seen that done,\' thought Alice. \'I wonder what.', 'https://via.placeholder.com/640x480.png/002255?text=cats+Post+id', 'video', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(17, 6, 'And she began looking at them with one elbow against the door, and tried to open her mouth; but she felt certain it must make me grow large again, for this time with the words all coming different.', 'https://via.placeholder.com/640x480.png/0099aa?text=cats+Post+doloremque', 'text', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(18, 6, 'Alice dodged behind a great interest in questions of eating and drinking. \'They lived on treacle,\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, that she had never done such a.', 'https://via.placeholder.com/640x480.png/0088ff?text=cats+Post+provident', 'video', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(19, 7, 'Queen. \'Never!\' said the Duchess, as she spoke. Alice did not venture to go on crying in this affair, He trusts to you how it was very deep, or she should meet the real Mary Ann, what ARE you.', 'https://via.placeholder.com/640x480.png/00dd11?text=cats+Post+sed', 'image', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(20, 7, 'Then came a little of her going, though she knew she had not noticed before, and she jumped up in great disgust, and walked off; the Dormouse went on, \'I must go by the whole she thought there was.', 'https://via.placeholder.com/640x480.png/005588?text=cats+Post+illum', 'video', 'friends', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(21, 7, 'King. \'Shan\'t,\' said the Cat, \'if you only kept on puzzling about it while the Mock Turtle to the other: the only one who had spoken first. \'That\'s none of YOUR adventures.\' \'I could tell you his.', 'https://via.placeholder.com/640x480.png/0011ee?text=cats+Post+velit', 'image', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(22, 8, 'I am to see its meaning. \'And just as well wait, as she went on, looking anxiously round to see the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. \'I wasn\'t asleep,\' he.', 'https://via.placeholder.com/640x480.png/0033ff?text=cats+Post+provident', 'image', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(23, 8, 'Alice. \'Who\'s making personal remarks now?\' the Hatter went on, looking anxiously round to see you again, you dear old thing!\' said Alice, \'but I know THAT well enough; don\'t be particular--Here.', 'https://via.placeholder.com/640x480.png/00cc66?text=cats+Post+qui', 'video', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(24, 8, 'I never was so much about a whiting before.\' \'I can tell you more than that, if you cut your finger VERY deeply with a kind of thing that would happen: \'\"Miss Alice! Come here directly, and get.', 'https://via.placeholder.com/640x480.png/0055ee?text=cats+Post+odio', 'image', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(25, 9, 'Five and Seven said nothing, but looked at her side. She was moving them about as curious as it can\'t possibly make me larger, it must be on the top with its eyelids, so he did,\' said the Cat. \'I.', 'https://via.placeholder.com/640x480.png/008811?text=cats+Post+quis', 'text', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(26, 9, 'For, you see, as she could not help thinking there MUST be more to come, so she tried to curtsey as she went on, \'What HAVE you been doing here?\' \'May it please your Majesty,\' the Hatter and the.', 'https://via.placeholder.com/640x480.png/00bbbb?text=cats+Post+odio', 'text', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(27, 9, 'King. (The jury all brightened up again.) \'Please your Majesty,\' he began. \'You\'re a very deep well. Either the well was very provoking to find her way into that lovely garden. First, however, she.', 'https://via.placeholder.com/640x480.png/00bbee?text=cats+Post+sed', 'text', 'friends', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(28, 10, 'For he can thoroughly enjoy The pepper when he sneezes: He only does it to half-past one as long as I get SOMEWHERE,\' Alice added as an unusually large saucepan flew close by her. There was a large.', 'https://via.placeholder.com/640x480.png/00ff22?text=cats+Post+molestias', 'text', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(29, 10, 'Next came an angry tone, \'Why, Mary Ann, and be turned out of THIS!\' (Sounds of more energetic remedies--\' \'Speak English!\' said the Lory. Alice replied very gravely. \'What else had you to leave off.', 'https://via.placeholder.com/640x480.png/004411?text=cats+Post+nihil', 'video', 'friends', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(30, 10, 'Hatter began, in a deep sigh, \'I was a sound of a well?\' The Dormouse again took a great interest in questions of eating and drinking. \'They lived on treacle,\' said the March Hare. \'Then it ought to.', 'https://via.placeholder.com/640x480.png/00aa11?text=cats+Post+quidem', 'video', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(31, 1, 'It\'s the most interesting, and perhaps after all it might tell her something about the temper of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that he shook.', 'https://via.placeholder.com/640x480.png/00ccdd?text=cats+Post+ipsam', 'image', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(32, 1, 'FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she had grown up,\' she said to the Classics master, though. He was looking at the March Hare said to the door, staring.', 'https://via.placeholder.com/640x480.png/007722?text=cats+Post+repellendus', 'text', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(33, 1, 'After a while, finding that nothing more to be sure! However, everything is to-day! And yesterday things went on just as well go in ringlets at all; and I\'m sure _I_ shan\'t be beheaded!\' said Alice.', 'https://via.placeholder.com/640x480.png/0011dd?text=cats+Post+accusamus', 'image', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(34, 2, 'I needn\'t be afraid of them!\' \'And who is to do anything but sit with its eyelids, so he with his head!\' or \'Off with his nose, and broke to pieces against one of the court,\" and I had it written.', 'https://via.placeholder.com/640x480.png/0055bb?text=cats+Post+numquam', 'text', 'friends', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(35, 2, 'Alice, \'and if it likes.\' \'I\'d rather finish my tea,\' said the Mock Turtle recovered his voice, and, with tears running down his cheeks, he went on all the creatures order one about, and crept a.', 'https://via.placeholder.com/640x480.png/0011ff?text=cats+Post+enim', 'image', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(36, 2, 'Mouse had changed his mind, and was just in time to wash the things being alive; for instance, there\'s the arch I\'ve got to grow up again! Let me think: was I the same side of the Shark, But, when.', 'https://via.placeholder.com/640x480.png/000033?text=cats+Post+enim', 'image', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(37, 3, 'I must go by the pope, was soon submitted to by the White Rabbit read:-- \'They told me he was speaking, so that by the little golden key was lying under the sea--\' (\'I haven\'t,\' said Alice)--\'and.', 'https://via.placeholder.com/640x480.png/00aabb?text=cats+Post+quas', 'text', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(38, 3, 'I got up and went on planning to herself \'This is Bill,\' she gave one sharp kick, and waited till she heard the Queen in front of them, and just as well go in at all?\' said Alice, as she heard one.', 'https://via.placeholder.com/640x480.png/005533?text=cats+Post+quod', 'image', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(39, 3, 'Mock Turtle replied, counting off the mushroom, and raised herself to about two feet high, and her eyes immediately met those of a tree. \'Did you say pig, or fig?\' said the Gryphon: and it sat down.', 'https://via.placeholder.com/640x480.png/0099ff?text=cats+Post+sed', 'text', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(40, 4, 'Duchess sneezed occasionally; and as it went, \'One side of the house if it had grown to her ear, and whispered \'She\'s under sentence of execution.\' \'What for?\' said the Duchess; \'I never said I.', 'https://via.placeholder.com/640x480.png/00bb33?text=cats+Post+nostrum', 'image', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(41, 4, 'MUST be more to come, so she sat still just as if his heart would break. She pitied him deeply. \'What is it?\' Alice panted as she did not appear, and after a fashion, and this time the Queen in.', 'https://via.placeholder.com/640x480.png/008822?text=cats+Post+deleniti', 'video', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(42, 4, 'I shan\'t grow any more--As it is, I suppose?\' \'Yes,\' said Alice, very much at first, the two creatures, who had meanwhile been examining the roses. \'Off with her head!\' about once in her lessons in.', 'https://via.placeholder.com/640x480.png/00cc22?text=cats+Post+neque', 'image', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(43, 5, 'Alice, always ready to agree to everything that Alice quite hungry to look through into the garden door. Poor Alice! It was high time to be rude, so she went down on their slates, and then sat upon.', 'https://via.placeholder.com/640x480.png/005577?text=cats+Post+assumenda', 'video', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(44, 5, 'Mock Turtle persisted. \'How COULD he turn them out with his head!\' or \'Off with their heads!\' and the little golden key was lying on the other players, and shouting \'Off with her face in her pocket.', 'https://via.placeholder.com/640x480.png/006622?text=cats+Post+magnam', 'image', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(45, 5, 'I was sent for.\' \'You ought to go nearer till she shook the house, and wondering whether she ought to tell its age, there was no longer to be afraid of it. She stretched herself up and walking away.', 'https://via.placeholder.com/640x480.png/005511?text=cats+Post+minima', 'image', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(46, 6, 'He was an uncomfortably sharp chin. However, she got to go after that savage Queen: so she went back to yesterday, because I was sent for.\' \'You ought to be sure! However, everything is queer.', 'https://via.placeholder.com/640x480.png/00ffbb?text=cats+Post+iure', 'image', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(47, 6, 'I\'ve fallen by this very sudden change, but she saw maps and pictures hung upon pegs. She took down a good thing!\' she said this, she came upon a low voice, \'Your Majesty must cross-examine THIS.', 'https://via.placeholder.com/640x480.png/006622?text=cats+Post+quis', 'text', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(48, 6, 'Duchess: \'flamingoes and mustard both bite. And the Gryphon in an offended tone. And the muscular strength, which it gave to my right size: the next moment a shower of little Alice herself, and.', 'https://via.placeholder.com/640x480.png/0044bb?text=cats+Post+iste', 'image', 'friends', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(49, 7, 'THAT\'S a good deal worse off than before, as the Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came back again. \'Keep your.', 'https://via.placeholder.com/640x480.png/00ee00?text=cats+Post+dolorem', 'image', 'friends', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(50, 7, 'I the same tone, exactly as if she had got its neck nicely straightened out, and was just saying to herself \'This is Bill,\' she gave her answer. \'They\'re done with a soldier on each side to guard.', 'https://via.placeholder.com/640x480.png/0000ff?text=cats+Post+at', 'image', 'friends', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(51, 7, 'Majesty,\' he began, \'for bringing these in: but I grow up, I\'ll write one--but I\'m grown up now,\' she added in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an unusually large saucepan.', 'https://via.placeholder.com/640x480.png/009933?text=cats+Post+repudiandae', 'image', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(52, 8, 'Suppress him! Pinch him! Off with his nose, and broke off a head unless there was not even room for YOU, and no one listening, this time, and was just saying to herself \'It\'s the first figure!\' said.', 'https://via.placeholder.com/640x480.png/00ff11?text=cats+Post+qui', 'video', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(53, 8, 'Hatter trembled so, that Alice had no pictures or conversations?\' So she called softly after it, and found herself lying on their hands and feet at once, she found she could see it trying in a.', 'https://via.placeholder.com/640x480.png/00ee66?text=cats+Post+dolorem', 'video', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(54, 8, 'I needn\'t be so easily offended, you know!\' The Mouse did not dare to laugh; and, as there was silence for some time in silence: at last it unfolded its arms, took the watch and looked at the.', 'https://via.placeholder.com/640x480.png/001111?text=cats+Post+facere', 'image', 'friends', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(55, 9, 'Oh dear! I\'d nearly forgotten that I\'ve got to go nearer till she heard the Rabbit in a tone of great relief. \'Now at OURS they had to run back into the open air. \'IF I don\'t know,\' he went on.', 'https://via.placeholder.com/640x480.png/00ff99?text=cats+Post+earum', 'image', 'friends', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(56, 9, 'Gryphon. \'They can\'t have anything to say, she simply bowed, and took the cauldron of soup off the cake. * * * * * * * * * * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice.', 'https://via.placeholder.com/640x480.png/00ccaa?text=cats+Post+neque', 'video', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(57, 9, 'VERY turn-up nose, much more like a Jack-in-the-box, and up I goes like a tunnel for some time after the birds! Why, she\'ll eat a little more conversation with her arms folded, quietly smoking a.', 'https://via.placeholder.com/640x480.png/00aa66?text=cats+Post+rerum', 'video', 'friends', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(58, 10, 'Gryphon. \'The reason is,\' said the cook. \'Treacle,\' said the Gryphon, \'you first form into a chrysalis--you will some day, you know--and then after that savage Queen: so she helped herself to about.', 'https://via.placeholder.com/640x480.png/0055cc?text=cats+Post+recusandae', 'video', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(59, 10, 'Duchess: \'what a clear way you go,\' said the Mock Turtle. Alice was more than that, if you could see it pop down a good deal until she made some tarts, All on a branch of a muchness\"--did you ever.', 'https://via.placeholder.com/640x480.png/0055cc?text=cats+Post+magni', 'video', 'private', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(60, 10, 'The pepper when he sneezes: He only does it to speak with. Alice waited till the Pigeon the opportunity of saying to herself, \'to be going messages for a minute, trying to explain the mistake it had.', 'https://via.placeholder.com/640x480.png/0099aa?text=cats+Post+commodi', 'video', 'public', '2025-06-18 04:57:19', '2025-06-18 04:57:19');

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
(1, 1, '1971-05-25', 'male', '804.338.9172', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/keeling.com\\\\\\/pariatur-aliquam-possimus-aperiam-eos.html\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/www.considine.biz\\\\\\/aspernatur-enim-et-aut-impedit-deserunt-expedita-fugiat\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/turcotte.com\\\\\\/porro-id-ipsum-ut-repudiandae-earum-ea\\\"}\"', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(2, 2, '1988-07-04', 'male', '+1-402-701-9092', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/hyatt.com\\\\\\/animi-cupiditate-quos-earum-odio\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/russel.com\\\\\\/odit-cupiditate-fugiat-consequatur-expedita-veritatis-eos-omnis-consequatur.html\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/towne.net\\\\\\/\\\"}\"', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(3, 3, '1998-01-31', 'female', '+1 (563) 435-3757', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/www.carter.com\\\\\\/sint-et-voluptas-omnis-dolores.html\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/www.hamill.com\\\\\\/odit-beatae-id-voluptas-incidunt.html\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/volkman.com\\\\\\/\\\"}\"', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(4, 4, '1988-12-04', 'other', '+1-551-531-0957', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/kihn.com\\\\\\/nostrum-velit-enim-perferendis-odit\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/www.nikolaus.com\\\\\\/maiores-neque-minima-architecto-tenetur-est-consequatur-placeat-nemo.html\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/schuppe.biz\\\\\\/in-praesentium-architecto-provident-cumque\\\"}\"', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(5, 5, '1982-11-14', 'male', '1-725-740-9037', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/ruecker.com\\\\\\/voluptas-occaecati-alias-corrupti-ex-placeat-molestiae-et\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/www.dibbert.com\\\\\\/reprehenderit-quia-earum-eaque-vero-illum-optio-facere\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.fadel.com\\\\\\/qui-aut-excepturi-quia-perspiciatis-molestias-odit-odio\\\"}\"', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(6, 6, '2004-02-16', 'other', '+13026718986', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/mitchell.com\\\\\\/necessitatibus-nostrum-debitis-impedit-eius\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/skiles.com\\\\\\/voluptatem-voluptatem-consequatur-iste-unde-aut\\\",\\\"linkedin\\\":\\\"https:\\\\\\/\\\\\\/www.lind.info\\\\\\/itaque-tempore-iusto-similique-eligendi-ipsam-error-hic\\\"}\"', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(7, 7, '1992-12-18', 'other', '(732) 474-3454', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/www.hintz.com\\\\\\/ratione-sit-minus-autem-qui-fugiat\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/www.ebert.com\\\\\\/quidem-corporis-dolorem-suscipit-quo-accusamus\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/jast.org\\\\\\/\\\"}\"', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(8, 8, '2005-01-03', 'female', '+1.781.757.6141', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/www.nader.biz\\\\\\/nemo-alias-explicabo-autem-nulla.html\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/www.walsh.com\\\\\\/quia-voluptate-ex-sed-error-dolorem-excepturi\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/konopelski.net\\\\\\/eius-velit-labore-consectetur-incidunt-velit-ut-ratione-dolorem\\\"}\"', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(9, 9, '1992-08-25', 'other', '772-210-6109', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/pouros.org\\\\\\/libero-minima-facilis-ut-modi-tenetur-temporibus-aut.html\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/www.maggio.org\\\\\\/\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.heaney.com\\\\\\/\\\"}\"', '2025-06-18 04:57:19', '2025-06-18 04:57:19'),
(10, 10, '1978-08-26', 'other', '(215) 262-7616', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/www.bednar.com\\\\\\/\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/www.dubuque.com\\\\\\/\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/brown.com\\\\\\/et-ea-earum-est-modi-harum\\\"}\"', '2025-06-18 04:57:19', '2025-06-18 04:57:19');

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
(1, 'Novice', 1, 0, '2025-06-18 04:57:15', '2025-06-18 04:57:15');

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
('6uowUwKdfGe2Js9AG0OqYAKx2vuuGGkEjm12mBWP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2JxMW1EeFowd2RPcFoxeWJuN2sxb0N4VVl5TGx5RnNvd1hMNVRVZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1750270262),
('BMSYDJ5BKikck5oF2CuGQLJUXhGS21VotvFnLyDX', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYjRxRDFhQnRKNjIzejVXbFZGQWozRnNDYkJRNmRNZmVrN3Zla2NzUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1750276949);

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
(1, 61, 5, 'That he met in the night? Let me see: that would.', 'Rerum error nam autem harum qui. Doloribus sequi eius ut ad magnam. Dignissimos sed enim veniam accusantium rerum sed. Fugiat nesciunt in tenetur vel maiores occaecati.\n\nIpsa non delectus aspernatur quo excepturi recusandae. Quibusdam error qui et laborum assumenda. Quidem dolore consequuntur et quos eum perspiciatis. Debitis tenetur nihil est quia ut commodi occaecati consequatur.\n\nImpedit est enim quis quis corporis. Veritatis et facere rem dolor veritatis dolores amet voluptatem. Laudantium aut debitis laborum facere dicta autem quibusdam labore. Est asperiores ut labore suscipit reiciendis iure nisi voluptas.', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(2, 61, 5, 'As they walked off together, Alice heard the.', 'Praesentium necessitatibus architecto laboriosam optio quos. Beatae quos suscipit non autem quia omnis. Natus delectus et omnis odit ut.\n\nConsectetur doloribus occaecati maiores et omnis eos. Facilis non veritatis ducimus doloremque nihil ut. Vero nobis ullam itaque possimus earum.\n\nLaborum ea explicabo in quis expedita. Eos distinctio dolores dignissimos. Eligendi consequuntur porro nulla nemo est dicta voluptatem.', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(3, 62, 1, 'I ask! It\'s always six o\'clock now.\' A bright.', 'Sunt sunt omnis velit. Fugit est blanditiis sit ut. Sed aliquid sed provident suscipit. Quo est ipsa rerum modi quas praesentium officiis.\n\nPorro exercitationem rerum assumenda quis ea aliquid esse ut. Minima culpa facilis velit velit qui unde minima. Eos iure ducimus qui in cupiditate sed.\n\nEt aut beatae odio. Non tenetur molestiae praesentium provident. Esse itaque sit repellat velit dolorem eveniet qui. Cumque quaerat quis error consequatur.', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(4, 62, 1, 'He says it kills all the first to break the.', 'Quam voluptatem odit labore quia et fugit iusto aut. Adipisci earum rerum dolores mollitia ut. Tenetur qui tempora consequatur ad voluptatem eaque quaerat.\n\nAccusamus voluptate dolorem quaerat error quos. Corporis sunt dolor et praesentium voluptatem quisquam ut. Est est id vitae perspiciatis.\n\nFacere tempora sit occaecati molestiae cumque aliquam qui velit. Deleniti totam exercitationem aut quia maiores eveniet. Et occaecati ut mollitia minus odio. Impedit non cupiditate eos minus qui voluptatum. Perspiciatis rem enim pariatur qui.', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(5, 63, 9, 'Cat, \'a dog\'s not mad. You grant that?\' \'I.', 'Nostrum rem illum voluptatibus quis. Quidem sint fugit accusamus voluptates. Quis iusto natus vel voluptas eos eaque fuga. Ut aliquam ut ipsa est praesentium qui.\n\nQui autem magnam corporis ab odio labore. Perspiciatis natus ad veritatis facilis id. Repudiandae recusandae ut vel repudiandae doloremque omnis rerum.\n\nAut iusto voluptatem unde et sunt animi ipsam. Id nobis quia quidem eveniet doloremque sunt quibusdam. Minus ad suscipit labore reiciendis eveniet. Dicta et voluptatem quae unde vel non unde.', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(6, 63, 9, 'Panther received knife and fork with a yelp of.', 'Esse est enim sequi molestias ullam. Et occaecati accusamus ut molestiae consectetur illo atque. Illum reprehenderit tempora quia expedita rerum quia provident. Quia omnis possimus qui ipsa.\n\nMinus ut consequatur et dicta. Dicta distinctio id quasi doloribus nulla. Dolorem inventore illum autem ex dolorem. Et repudiandae autem qui.\n\nOfficia eius natus architecto et pariatur iure. Est excepturi molestiae reprehenderit quam ea amet illum.', '2025-06-18 04:57:20', '2025-06-18 04:57:20');

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
(1, 'Von', 'Kennedi', 'Nicole', 'zboncak.pansy@example.org', 1, '$2y$12$JT3uL7mp6Zx5H97ol5hlwe.Fv3j95DmjJxIPfLjGCwmchWHwDm7mi', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-18 04:57:17', 'Zlzldz1rWqmtZFXk5WJGQFHTQZAUpcmFzrbPpLUbkTvTvlXvw0ps2uWk8KE1', '2025-06-18 04:57:18', '2025-06-18 04:57:18'),
(2, 'Renner', 'Johan', 'Cameron', 'walter.witting@example.org', 1, '$2y$12$JT3uL7mp6Zx5H97ol5hlwe.Fv3j95DmjJxIPfLjGCwmchWHwDm7mi', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-18 04:57:18', 'Du1Jq5VgfI', '2025-06-18 04:57:18', '2025-06-18 04:57:18'),
(3, 'Legros', 'Makayla', NULL, 'margarete22@example.org', 1, '$2y$12$JT3uL7mp6Zx5H97ol5hlwe.Fv3j95DmjJxIPfLjGCwmchWHwDm7mi', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-18 04:57:18', 'Kyv9QSCCra', '2025-06-18 04:57:18', '2025-06-18 04:57:18'),
(4, 'Erdman', 'Delphine', 'Gaylord', 'stoltenberg.stuart@example.org', 1, '$2y$12$JT3uL7mp6Zx5H97ol5hlwe.Fv3j95DmjJxIPfLjGCwmchWHwDm7mi', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-18 04:57:18', 'ImSK1iygIJf1DqYFmBrOnvxBbVBbXCPFBcxEoEom8YB0pVz5qe7anIugvOLO', '2025-06-18 04:57:18', '2025-06-18 04:57:18'),
(5, 'Becker', 'Jaden', 'Alexanne', 'carrie.morar@example.org', 1, '$2y$12$JT3uL7mp6Zx5H97ol5hlwe.Fv3j95DmjJxIPfLjGCwmchWHwDm7mi', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-18 04:57:18', 'JpsyQUBrPK', '2025-06-18 04:57:18', '2025-06-18 04:57:18'),
(6, 'Swaniawski', 'Arjun', 'Dedric', 'mjacobi@example.net', 1, '$2y$12$JT3uL7mp6Zx5H97ol5hlwe.Fv3j95DmjJxIPfLjGCwmchWHwDm7mi', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-18 04:57:18', 'HloR9wOvHT', '2025-06-18 04:57:18', '2025-06-18 04:57:18'),
(7, 'Wunsch', 'Leopoldo', NULL, 'bhegmann@example.com', 1, '$2y$12$JT3uL7mp6Zx5H97ol5hlwe.Fv3j95DmjJxIPfLjGCwmchWHwDm7mi', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-18 04:57:18', 'bXsdnKeixW', '2025-06-18 04:57:18', '2025-06-18 04:57:18'),
(8, 'Stamm', 'Teagan', NULL, 'schmitt.josh@example.com', 1, '$2y$12$JT3uL7mp6Zx5H97ol5hlwe.Fv3j95DmjJxIPfLjGCwmchWHwDm7mi', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-18 04:57:18', 'l5BF1UYucV', '2025-06-18 04:57:18', '2025-06-18 04:57:18'),
(9, 'Collier', 'Trevor', 'Myles', 'kyra22@example.org', 1, '$2y$12$JT3uL7mp6Zx5H97ol5hlwe.Fv3j95DmjJxIPfLjGCwmchWHwDm7mi', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-18 04:57:18', 'YtGGXj8ERg', '2025-06-18 04:57:18', '2025-06-18 04:57:18'),
(10, 'Flatley', 'Ethyl', 'Otho', 'fred.prosacco@example.com', 1, '$2y$12$JT3uL7mp6Zx5H97ol5hlwe.Fv3j95DmjJxIPfLjGCwmchWHwDm7mi', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-18 04:57:18', 'hZNe8UjQJd', '2025-06-18 04:57:18', '2025-06-18 04:57:18'),
(11, 'Boehm', 'Bettie', 'Alaina', 'nader.monroe@example.org', 1, '$2y$12$JT3uL7mp6Zx5H97ol5hlwe.Fv3j95DmjJxIPfLjGCwmchWHwDm7mi', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-18 04:57:20', 'sAwNuhCFcQ', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(12, 'Wunsch', 'Gaston', 'Tyrel', 'yesenia20@example.com', 1, '$2y$12$JT3uL7mp6Zx5H97ol5hlwe.Fv3j95DmjJxIPfLjGCwmchWHwDm7mi', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-18 04:57:20', 'WBhdyZofbS', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(13, 'Steuber', 'Electa', NULL, 'rpagac@example.org', 1, '$2y$12$JT3uL7mp6Zx5H97ol5hlwe.Fv3j95DmjJxIPfLjGCwmchWHwDm7mi', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-18 04:57:20', 'YXe1DTUJyv', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(14, 'Stracke', 'Flavie', NULL, 'gunnar23@example.org', 1, '$2y$12$JT3uL7mp6Zx5H97ol5hlwe.Fv3j95DmjJxIPfLjGCwmchWHwDm7mi', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-18 04:57:20', 'AfjDSAyx80', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(15, 'Schowalter', 'Alysa', 'Waylon', 'celestine48@example.org', 1, '$2y$12$JT3uL7mp6Zx5H97ol5hlwe.Fv3j95DmjJxIPfLjGCwmchWHwDm7mi', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-18 04:57:20', 'joIU0g0Z9A', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(16, 'Cronin', 'Liam', NULL, 'jovan.mckenzie@example.net', 1, '$2y$12$JT3uL7mp6Zx5H97ol5hlwe.Fv3j95DmjJxIPfLjGCwmchWHwDm7mi', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-18 04:57:20', 'GZyV1CeSuu', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(17, 'Lehner', 'Dax', NULL, 'grover99@example.net', 1, '$2y$12$JT3uL7mp6Zx5H97ol5hlwe.Fv3j95DmjJxIPfLjGCwmchWHwDm7mi', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-18 04:57:20', 'BnaFmvijga', '2025-06-18 04:57:20', '2025-06-18 04:57:20'),
(18, 'Reichert', 'Karen', NULL, 'wunsch.agustin@example.net', 1, '$2y$12$JT3uL7mp6Zx5H97ol5hlwe.Fv3j95DmjJxIPfLjGCwmchWHwDm7mi', 'blank.png', NULL, NULL, NULL, 0, NULL, 1, '2025-06-18 04:57:20', 'yiPC1XDj8Y', '2025-06-18 04:57:20', '2025-06-18 04:57:20');

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
(1, 6, 1, NULL, NULL),
(2, 9, 1, NULL, NULL),
(3, 5, 2, NULL, NULL),
(4, 7, 2, NULL, NULL),
(5, 6, 3, NULL, NULL),
(6, 10, 3, NULL, NULL),
(7, 7, 4, NULL, NULL),
(8, 8, 4, NULL, NULL),
(9, 9, 5, NULL, NULL),
(10, 10, 5, NULL, NULL),
(11, 6, 6, NULL, NULL),
(12, 9, 6, NULL, NULL),
(13, 7, 7, NULL, NULL),
(14, 3, 7, NULL, NULL),
(15, 9, 8, NULL, NULL),
(16, 3, 8, NULL, NULL),
(17, 1, 9, NULL, NULL),
(18, 7, 9, NULL, NULL),
(19, 9, 10, NULL, NULL),
(20, 2, 10, NULL, NULL),
(21, 2, 11, NULL, NULL),
(22, 9, 11, NULL, NULL),
(23, 7, 12, NULL, NULL),
(24, 1, 12, NULL, NULL),
(25, 5, 13, NULL, NULL),
(26, 6, 13, NULL, NULL),
(27, 10, 14, NULL, NULL),
(28, 8, 14, NULL, NULL),
(29, 7, 15, NULL, NULL),
(30, 8, 15, NULL, NULL),
(31, 7, 16, NULL, NULL),
(32, 2, 16, NULL, NULL),
(33, 10, 17, NULL, NULL),
(34, 6, 17, NULL, NULL),
(35, 3, 18, NULL, NULL),
(36, 9, 18, NULL, NULL);

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
-- AUTO_INCREMENT for table `marketplace_items`
--
ALTER TABLE `marketplace_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `marketplace_orders`
--
ALTER TABLE `marketplace_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
