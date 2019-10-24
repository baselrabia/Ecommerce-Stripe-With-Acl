-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2019 at 04:50 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce-stripe`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_10_11_125847_create_roles_table', 1),
(4, '2019_10_11_125902_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `description`, `created_at`, `updated_at`) VALUES
(13, 'Eum molestiae.', 'default.png', 5543, 'Saepe culpa et sed natus aspernatur recusandae. Non numquam qui minus dicta. Et amet neque iste rerum ut numquam. Doloribus voluptatem et voluptatem enim expedita provident. Totam sunt expedita distinctio fugiat qui.', '2019-10-14 20:32:06', '2019-10-14 20:32:06'),
(14, 'Eaque ea qui.', 'default.png', 5180, 'Accusantium recusandae aut saepe facilis consequatur repellendus amet itaque. Odio at qui itaque impedit. Vitae sunt perspiciatis voluptatem voluptates eligendi. Quia quo et sed perferendis nesciunt adipisci. Nulla dicta animi doloribus.', '2019-10-14 20:32:06', '2019-10-14 20:32:06'),
(15, 'Ipsum et facilis enim.', 'default.png', 9680, 'Quibusdam eveniet sit qui ipsa enim deserunt neque nihil. Unde vel ratione eum quibusdam natus. Consequuntur voluptate nulla tenetur accusamus voluptas dignissimos reprehenderit. Voluptates qui repudiandae placeat tempore et accusamus doloremque ut. Inventore a nostrum dolor qui. Eveniet sunt dolor voluptas quibusdam necessitatibus voluptatem temporibus ut.', '2019-10-14 20:32:06', '2019-10-14 20:32:06'),
(16, 'Architecto consectetur rerum.', 'default.png', 4694, 'Minima aliquam perspiciatis eum quia. Enim rerum aspernatur eos sapiente labore nesciunt. Est ipsum placeat qui non placeat ut aliquid. Labore ut quia velit placeat.', '2019-10-14 20:32:06', '2019-10-14 20:32:06'),
(17, 'Nisi ipsa expedita provident.', 'default.png', 6636, 'Et et aut fugiat enim optio ab. Non molestiae in mollitia est facilis pariatur cupiditate. Laborum quisquam cum blanditiis expedita eos unde corrupti. Sint voluptas voluptatem quia non sit labore. Ab id magnam saepe necessitatibus enim culpa.', '2019-10-14 20:32:06', '2019-10-14 20:32:06'),
(18, 'Sed enim corporis.', 'default.png', 1131, 'Placeat delectus maxime sed. Necessitatibus sequi tenetur dicta rem aliquam ea aspernatur eligendi. Eum corporis non aspernatur molestias non ducimus maxime. Quia debitis dolorum reprehenderit placeat. Aut beatae ut cum enim rem corrupti qui.', '2019-10-14 20:32:06', '2019-10-14 20:32:06'),
(19, 'Eveniet suscipit corrupti.', 'default.png', 8263, 'Architecto eveniet et illo nemo asperiores ut. Soluta labore consectetur provident et sit pariatur. Deserunt nihil sit et doloremque aut. Esse aliquid deleniti aperiam a laborum qui. In maiores est itaque tenetur. Illum minima magni officia quod cumque quia.', '2019-10-14 20:32:06', '2019-10-14 20:32:06'),
(20, 'Sit itaque rerum ea.', 'default.png', 7743, 'Fugiat blanditiis ratione velit et. Laborum nihil sed et ut maiores. Sit quis corrupti quidem aut dolorum suscipit eum delectus. Impedit voluptatem quia iure aut error quia velit. Atque labore sed voluptas eligendi voluptate.', '2019-10-14 20:32:06', '2019-10-14 20:32:06'),
(21, 'Fugiat velit voluptate.', 'default.png', 4866, 'Voluptatum voluptatum vel perspiciatis omnis magnam autem est. Ipsam qui facilis praesentium ipsa rem omnis. Facilis blanditiis quis dolores quis assumenda expedita dolore qui. Atque vitae eos saepe omnis atque. Est voluptate deserunt ut eos eos.', '2019-10-14 20:32:06', '2019-10-14 20:32:06'),
(22, 'Voluptatibus qui eos delectus.', 'default.png', 338, 'Autem voluptates voluptatem quis quo sit ullam. Libero non nihil facere dolorem consectetur ut. Ab consectetur nam qui alias nihil et laboriosam. Et voluptas in molestiae consectetur porro.', '2019-10-14 20:32:06', '2019-10-14 20:32:06'),
(23, 'Ut dolores odio.', 'default.png', 7965, 'Est dolorem velit nisi soluta. Ab exercitationem eos eos consequuntur. Repudiandae voluptatem deleniti aliquam reiciendis eveniet vel. Rem quod excepturi omnis ea ut. Sint amet repudiandae error laboriosam consequatur.', '2019-10-14 20:32:06', '2019-10-14 20:32:06'),
(24, 'Corporis sapiente aperiam soluta.', 'default.png', 8836, 'Amet praesentium rerum nobis. Neque officiis sit deserunt dolorum quisquam impedit suscipit illo. In esse consequatur adipisci veniam cum voluptatum. Ullam officia nulla veniam debitis quas quis. Ea repellat odit provident quae esse nesciunt.', '2019-10-14 20:32:06', '2019-10-14 20:32:06'),
(25, 'Qui illo repudiandae et.', 'default.png', 4301, 'Velit error incidunt optio repudiandae. Error ex est odit voluptas et. Corrupti nulla accusamus in sit qui. Debitis sit in totam qui eius neque.', '2019-10-14 20:32:06', '2019-10-14 20:32:06'),
(26, 'Consequatur ad ratione.', 'default.png', 7581, 'Itaque iusto et et modi quam. Sed ex in dicta. Nam aperiam qui odit in aspernatur nihil delectus sint.', '2019-10-14 20:32:06', '2019-10-14 20:32:06'),
(27, 'Sit enim ut iusto.', 'default.png', 5212, 'Qui et fuga eaque vero. Voluptas eos rerum non repellat sit. Eum minima nihil officia similique aspernatur commodi quisquam.', '2019-10-14 20:32:06', '2019-10-14 20:32:06'),
(28, 'Doloribus saepe.', 'default.png', 5640, 'Fugiat deleniti voluptas consequatur et. Nostrum eius maxime qui. Recusandae blanditiis consequatur ab.', '2019-10-14 20:32:07', '2019-10-14 20:32:07'),
(29, 'Consequatur qui delectus ratione.', 'default.png', 2831, 'Rerum eum voluptas molestiae ex sint quae ullam est. Aut quam vero mollitia aliquam. Reiciendis aut aspernatur aut deserunt libero occaecati. Fugiat ad odio omnis natus impedit earum ipsa.', '2019-10-14 20:32:07', '2019-10-14 20:32:07'),
(30, 'Omnis unde ut.', 'default.png', 342, 'Omnis natus dolorem fugit voluptatem reiciendis. Sint aliquam omnis ab sint eaque enim. Tempore magnam magnam iste velit. Nulla quae voluptates suscipit voluptas at et.', '2019-10-14 20:32:07', '2019-10-14 20:32:07'),
(31, 'Fugit totam voluptas qui.', 'default.png', 1714, 'Aut qui dolorum qui repellendus pariatur ipsam voluptas. Molestiae laborum porro similique beatae. Temporibus ducimus voluptatem corporis reprehenderit nihil.', '2019-10-14 20:32:07', '2019-10-14 20:32:07'),
(32, 'Qui velit velit.', 'default.png', 2036, 'Ut enim itaque accusamus et. Beatae a recusandae cupiditate culpa molestias cum. Repellat atque iste ut ex assumenda aut. Nihil soluta officia eum consequuntur quia facere. Perspiciatis est nobis iste beatae molestiae.', '2019-10-14 20:32:07', '2019-10-14 20:32:07'),
(33, 'Ipsa quod cupiditate.', 'default.png', 9074, 'Consequatur aperiam excepturi explicabo perspiciatis error et unde. Facilis facilis ut voluptatibus quidem. Et rerum est omnis. Sint vitae fuga aut quisquam veritatis. Sit officia ipsa voluptatem molestias et assumenda laborum.', '2019-10-14 20:32:07', '2019-10-14 20:32:07'),
(34, 'Iure fugit est.', 'default.png', 7836, 'Quo maxime eaque animi voluptates tempora sed aut. Blanditiis consectetur est et voluptatem et. Mollitia laborum consequatur tempore tenetur distinctio rerum. Eum dolorem qui ut incidunt odit eius quae. Sit accusantium blanditiis libero incidunt labore soluta et.', '2019-10-14 20:32:07', '2019-10-14 20:32:07'),
(35, 'Consequatur atque suscipit.', 'default.png', 3835, 'Aut placeat recusandae et et autem voluptatibus. Asperiores rem dolore ipsum eius est. Aliquam ex odio dolore sit et. Magnam non inventore non doloribus repellat et fuga.', '2019-10-14 20:32:07', '2019-10-14 20:32:07'),
(36, 'Nihil voluptatem enim.', 'default.png', 4535, 'Consequatur magnam aliquam et facilis commodi in et qui. Molestias et quia eveniet hic tempora a. Et modi quasi asperiores esse distinctio autem adipisci. Dignissimos ratione enim vitae velit quia error eius. Rerum qui omnis explicabo debitis. Eaque ea quam magni cupiditate fugit nostrum minus sit.', '2019-10-14 20:32:07', '2019-10-14 20:32:07'),
(37, 'Adipisci praesentium veritatis voluptatibus.', 'default.png', 3919, 'Cum iure sit voluptas ipsa cumque omnis omnis. Consequatur voluptas dolores consequatur laborum. Voluptates et quis voluptatem sunt delectus placeat tempore. Omnis explicabo consequatur necessitatibus. Nemo et unde modi fugiat sed natus vero.', '2019-10-14 20:32:07', '2019-10-14 20:32:07'),
(38, 'Soluta quia natus qui illo.', 'default.png', 7958, 'Voluptate est tempora labore ducimus vitae delectus dignissimos. Dignissimos sit sunt qui quo libero ducimus. Veritatis tempore quibusdam ut ipsa illum. Accusamus corrupti animi qui ipsa. Aut hic ab nemo porro. Pariatur consequatur itaque qui voluptas.', '2019-10-14 20:32:07', '2019-10-14 20:32:07'),
(39, 'Reprehenderit aut sint.', 'default.png', 7433, 'Ut odit iure cupiditate saepe ut qui voluptatem. Ducimus ad voluptates sequi sed. Est qui earum officia assumenda. Molestiae ut facilis necessitatibus autem perspiciatis similique soluta. Ex non dolorum doloremque non.', '2019-10-14 20:32:07', '2019-10-14 20:32:07'),
(40, 'Quaerat ipsa vel dignissimos.', 'default.png', 3443, 'Nemo sint voluptatum id quas est id nisi. Et eos iste blanditiis sunt deserunt ipsum aut. Ducimus recusandae eius placeat vero sed. Aut nemo odit ea laborum. Praesentium aut aut nihil.', '2019-10-14 20:32:07', '2019-10-14 20:32:07'),
(41, 'Eos dicta ea ut.', 'default.png', 1439, 'Sed officia dolores dicta impedit est quaerat. Rerum odit autem exercitationem id vel aut. Blanditiis mollitia atque explicabo distinctio enim voluptates asperiores. Non iste sed nostrum illum. Quis aperiam est blanditiis necessitatibus quia enim.', '2019-10-14 20:32:07', '2019-10-14 20:32:07'),
(42, 'Totam et nobis molestiae.', 'default.png', 5825, 'Numquam veritatis quia tenetur quasi iusto quo non dolorem. Molestiae dignissimos iusto nostrum repellendus. Quibusdam voluptatem quos autem alias. Ipsum dolorum expedita sed quidem et commodi fugiat. Accusantium ut doloremque quam aperiam impedit numquam officiis.', '2019-10-14 20:32:07', '2019-10-14 20:32:07'),
(44, 'Code Your Own Games', '157185851661P07hjuZwL._SX384_BO1,204,203,200_.jpg', 30, 'Become a super-coder and create your very own computer games using Scratch—a free software developed by MIT.\r\nCalling all creative young gamers! With its easy-to-follow, illustrated step-by-step instructions, this book will teach you key concepts—like drawing shapes—so you can code your own games. By the end, any kid will be able to make 20 popular games, from Snake to Brick Bouncer.', '2019-10-23 17:21:56', '2019-10-23 17:21:56'),
(46, 'Clean Code Agile Software', '1571858755515iEcDr1GL._SX385_BO1,204,203,200_.jpg', 40, 'Clean Code is divided into three parts. The first describes the principles, patterns, and practices of writing clean code. The second part consists of several case studies of increasing complexity. Each case study is an exercise in cleaning up code—of transforming a code base that has some problems into one that is sound and efficient. The third part is the payoff: a single chapter containing a list of heuristics and “smells” gathered while creating the case studies.', '2019-10-23 17:25:55', '2019-10-23 17:25:55'),
(47, 'Computer Programming', '157185885851DuvrIIURL._SX331_BO1,204,203,200_.jpg', 65, 'The best guide to computer programming fundamentals. This book will give you a solid foundation if you are new to programming.\r\nFor a beginner, programming can seem like something scary or hard to do. With all the technical terms and concepts out there, as well as the numerous programming languages available at your disposal, it is so important - now more than ever before - to build a strong foundation. When you understand the fundamentals of programming, learning any programming language is a piece of cake. In addition, programming is not just all about coding; it is also about knowing how to plan your work, how to set deadlines, how to communicate with team members, how to use existing components, how to debug existing codes and fix issues, how to build secure systems, how to use the right tools, etc.', '2019-10-23 17:27:38', '2019-10-24 12:41:51'),
(48, 'The Art of Computer Programming 4th edition book', '1571858909410H2IHR3vL._SY429_BO1,204,203,200_.jpg', 180, 'The bible of all fundamental algorithms and the work that taught many of today’s software developers most of what they know about computer programming.\r\n\r\n—Byte, September 1995\r\n\r\n \r\n\r\nCountless readers have spoken about the profound personal influence of Knuth’s work. Scientists have marveled at the beauty and elegance of his analysis, while ordinary programmers have successfully applied his “cookbook” solutions to their day-to-day problems. All have admired Knuth for the breadth, clarity, accuracy, and good humor found in his books.\r\n\r\n \r\n\r\nI can’t begin to tell you how many pleasurable hours of study and recreation they have afforded me! I have pored over them in cars, restaurants, at work, at home… and even at a Little League game when my son wasn’t in the line-up.\r\n\r\n—Charles Long\r\n\r\n \r\n\r\nPrimarily written as a reference, some people have nevertheless found it possible and interesting to read each volume from beginning to end. A programmer in China even compared the experience to reading a poem.', '2019-10-23 17:55:29', '2019-10-23 17:55:30'),
(50, 'The C++ Programming Language', '157185899951KEqIsBa4L._SX370_BO1,204,203,200_.jpg', 42, 'This book features an enhanced, layflat binding, which allows the book to stay open more easily when placed on a flat surface. This special binding method—noticeable by a small space inside the spine—also increases durability. C++11 has arrived: thoroughly master it, with the definitive new guide from C++ creator Bjarne Stroustrup, C++ Programming Language, Fourth Edition! The brand-new edition of the worlds most trusted and widely read guide to C++, it has been comprehensively updated for the long-awaited C++11 standard. Extensively rewritten to present the C++11 language, standard library, and key design techniques as an integrated whole, Stroustrup thoroughly addresses changes that make C++11 feel like a whole new language, offering definitive guidance for leveraging its improvements in performance, reliability, and clarity. C++ programmers around the world recognize Bjarne Stoustrup as the go-to expert for the absolutely authoritative and exceptionally useful information they need to write outstanding C++ programs.', '2019-10-23 17:29:59', '2019-10-23 17:29:59'),
(52, 'Cracking the Coding Interview', '1571859884fdsf dsfs fds323.jpg', 35, 'I am not a recruiter. I am a software engineer. And as such, I know what it\'s like to be asked to whip up brilliant algorithms on the spot and then write flawless code on a whiteboard. I\'ve been through this as a candidate and as an interviewer.\r\n\r\nCracking the Coding Interview, 6th Edition is here to help you through this process, teaching you what you need to know and enabling you to perform at your very best. I\'ve coached and interviewed hundreds of software engineers. The result is this book.\r\n\r\nLearn how to uncover the hints and hidden details in a question, discover how to break down a problem into manageable chunks, develop techniques to unstick yourself when stuck, learn (or re-learn) core computer science concepts, and practice on 189 interview questions and solutions.', '2019-10-23 17:44:44', '2019-10-23 17:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator ', NULL, NULL, NULL),
(2, 'user', 'Normal User', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `permissions`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'captain99', 'baselrabia2008@gmail.com', NULL, NULL, '$2y$10$dEfzROxLDk/9l7dOiVxex.sgJp8e90jHErLM5qchsJzScoT6T6SsW', NULL, '2019-10-11 17:42:27', '2019-10-11 17:42:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
