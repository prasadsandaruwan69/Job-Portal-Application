-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: prasad.slhosted.lk:3306
-- Generation Time: Dec 02, 2024 at 06:34 AM 
-- Server version: 5.7.33
-- PHP Version: 8.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laraveljobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'afe5e35c-64a8-4a04-a017-07813b923927', 'database', 'default', '{\"uuid\":\"afe5e35c-64a8-4a04-a017-07813b923927\",\"displayName\":\"App\\\\Mail\\\\PurchaseMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:21:\\\"App\\\\Mail\\\\PurchaseMail\\\":4:{s:4:\\\"plan\\\";s:6:\\\"weekly\\\";s:11:\\\"billingEnds\\\";s:10:\\\"2024-11-19\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";s:8:\\\"prasad33\\\";s:7:\\\"address\\\";s:18:\\\"prasad33@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 'ErrorException: Trying to access array offset on value of type null in C:\\laragon\\www\\2modelarajobs\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\AbstractStream.php:91\nStack trace:\n#0 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(255): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Trying to acces...\', \'C:\\\\laragon\\\\www\\\\...\', 91)\n#1 C:\\laragon\\www\\2modelarajobs\\vendor\\symfony\\mailer\\Transport\\Smtp\\Stream\\AbstractStream.php(91): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Trying to acces...\', \'C:\\\\laragon\\\\www\\\\...\', 91)\n#2 C:\\laragon\\www\\2modelarajobs\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(346): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\AbstractStream->readLine()\n#3 C:\\laragon\\www\\2modelarajobs\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(196): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->getFullResponse()\n#4 C:\\laragon\\www\\2modelarajobs\\vendor\\symfony\\mailer\\Transport\\Smtp\\EsmtpTransport.php(118): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->executeCommand(\'NOOP\\r\\n\', Array)\n#5 C:\\laragon\\www\\2modelarajobs\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(316): Symfony\\Component\\Mailer\\Transport\\Smtp\\EsmtpTransport->executeCommand(\'NOOP\\r\\n\', Array)\n#6 C:\\laragon\\www\\2modelarajobs\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(205): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->ping()\n#7 C:\\laragon\\www\\2modelarajobs\\vendor\\symfony\\mailer\\Transport\\AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#8 C:\\laragon\\www\\2modelarajobs\\vendor\\symfony\\mailer\\Transport\\Smtp\\SmtpTransport.php(137): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#9 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(573): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#10 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(335): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#11 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(Object(Closure), Array, Object(Closure))\n#12 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#13 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#14 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#15 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#16 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#21 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#25 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#26 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#29 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#41 C:\\laragon\\www\\2modelarajobs\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\laragon\\www\\2modelarajobs\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\laragon\\www\\2modelarajobs\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\laragon\\www\\2modelarajobs\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\laragon\\www\\2modelarajobs\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\laragon\\www\\2modelarajobs\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 {main}', '2024-11-12 04:57:41');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"89c6109a-96ee-43e1-9535-80e17b004547\",\"displayName\":\"App\\\\Mail\\\\PurchaseMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:21:\\\"App\\\\Mail\\\\PurchaseMail\\\":4:{s:4:\\\"plan\\\";s:6:\\\"yearly\\\";s:11:\\\"billingEnds\\\";s:10:\\\"2025-12-02\\\";s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";s:8:\\\"prasad55\\\";s:7:\\\"address\\\";s:18:\\\"prasad55@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1733114881, 1733114881);

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_close_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `user_id`, `title`, `description`, `roles`, `job_type`, `address`, `application_close_date`, `created_at`, `updated_at`, `feature_image`, `slug`, `salary`) VALUES
(9, 45, 'developer', '<p>inr=tern developer<br></p>', '<p><b>nothing else</b><br></p>', 'Fulltime', 'btbtbtbttbtb', '2024-11-27', '2024-11-25 22:40:42', '2024-11-25 22:40:42', 'images/aYE2uXi8MorEVXePzQ6GTv7XNW2WbCmBkYdLq0AH.png', 'developer.5fbbea70-f3e6-43f9-823a-29e64230f8a7', '34000'),
(10, 47, 'React js', '<p>developing and maintaine peroject<br></p>', '<p>developing and maintaine peroject</p>', 'Fulltime', '1/uhhuyy/i8iikiki', '2024-12-31', '2024-11-27 00:03:37', '2024-11-27 00:03:37', 'images/ROsSpawVw9uhkpzReAbzrUjKX2MTWTdYEDXRiPPC.jpg', 'react-js.bc550b08-8030-425d-a98d-e1b2fe381435', '100000'),
(11, 45, 'administator', '<p>plate jobs<br></p>', '<p>ffdfffgdfg dgdgfgdfgdfgdfg<br></p>', 'Casual', 'rthhrthrthrthrth', '2024-11-30', '2024-11-28 01:44:35', '2024-11-28 01:44:35', 'images/8OAVlYrNz8F9urnyYFUsT23kwwYzuKcy6opaurpG.webp', 'administator.f185cd36-0e3d-46e7-922d-97be9479505e', '435443'),
(12, 45, 'view js', '<p>frond end<br></p>', '<p>eweweqwe<br></p>', 'Casual', 'rtytrytrytrytrgtvdf', '2024-12-28', '2024-11-30 03:24:32', '2024-11-30 03:24:32', 'images/bSJALEc6cKWc9GIcIUqmDkCCNgzqLwDZ0vDlN0UX.webp', 'view-js.e8ccba7b-0d66-4ba5-baa3-4248cce54ae1', '230000'),
(13, 45, 'digital marketing', '<p>social meadia <br></p>', '<p>faceebook </p><p>instagram<br></p>', 'Contract', 'e23er23ewed', '2024-12-28', '2024-11-30 03:25:33', '2024-11-30 03:25:33', 'images/ttPVPhKfyuAaSi3Laz2wVWmcC6YLq9tg1jFyIq9v.png', 'digital-marketing.5048f367-41f8-4120-835c-1109b7adbf90', '70000');

-- --------------------------------------------------------

--
-- Table structure for table `listing_user`
--

CREATE TABLE `listing_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `shortlisted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_user`
--

INSERT INTO `listing_user` (`id`, `listing_id`, `user_id`, `shortlisted`, `created_at`, `updated_at`) VALUES
(1, 9, 56, 0, '2024-11-29 03:46:19', '2024-11-29 03:46:19'),
(2, 10, 56, 0, '2024-11-29 04:49:44', '2024-11-29 04:49:44'),
(3, 11, 56, 0, '2024-11-29 04:49:50', '2024-11-29 04:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_12_034201_create_jobs_table', 2),
(6, '2024_11_13_040349_create_listings_table', 3),
(7, '2024_11_18_033327_add_feature_image_to_listings', 4),
(8, '2024_11_18_055839_add_slug_to_listings_table', 5),
(9, '2024_11_18_055656_add_slug_to_listing_table', 6),
(10, '2024_11_18_105426_add_salary_to_listings_table', 7),
(11, '2024_11_19_033132_add_salary_to_listings_table', 8),
(13, '2024_11_25_035529_create_listing_user_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_trial` date DEFAULT NULL,
  `billing_ends` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `about`, `profile_pic`, `user_type`, `resume`, `user_trial`, `billing_ends`, `status`, `plan`, `remember_token`, `created_at`, `updated_at`) VALUES
(45, 'prasad55', 'prasad55@gmail.com', '2024-11-10 22:24:55', '$2y$12$q0JZbEUW9j7i6Cj672SN6unnT50Hz.ipCnI45Cxv/ym8v0syyHBti', NULL, 'profile/2G6wZcohX0rfoc7ckJz2AWw3ilYpKIIf0vnp0v3n.png', 'employer', NULL, NULL, '2025-12-02', 'paid', 'yearly', NULL, '2024-11-10 22:23:33', '2024-12-01 23:17:58'),
(46, 'prasad', 'prasad66@gmail.com', '2024-11-10 22:28:18', '$2y$12$Y7DpVpHbhywvecwA/cKrQOwN5a384nMgJ9tK6peDq5QlMFjpb1Lhm', NULL, NULL, 'employer', NULL, '2024-10-18', '2024-10-18', 'NULL', 'NULL', NULL, '2024-11-10 22:27:44', '2024-11-10 22:28:18'),
(47, 'prasad77@gmail.com', 'prasad77@gmail.com', '2024-11-11 07:31:13', '$2y$12$.beL/eB/JhcTbgkqDhU0d.TE/IsSt9sBUemoQs9FJphbTNSfXeNGG', NULL, NULL, 'employer', NULL, '2024-10-18', '2024-10-18', 'paid', 'weekly', NULL, '2024-11-11 07:30:20', '2024-11-11 07:39:00'),
(48, 'prasad88', 'prasad88@gmail.com', '2024-11-11 11:10:28', '$2y$12$.LGPXPJf9c82OtrORKLs3OH6T28oQNM.mqow/9ai11YqoobwCh7Ju', NULL, NULL, 'employer', NULL, '2024-11-18', '2024-11-18', 'paid', 'weekly', NULL, '2024-11-11 11:09:45', '2024-11-11 11:11:53'),
(49, 'prasad99', 'prasad99@gmail.com', '2024-11-12 01:55:39', '$2y$12$dLyBUKXC18wheenju5U/QOBnishoMhVCajSr.mY9NbwBlOZZbLR9S', NULL, NULL, 'seeker', NULL, '2024-11-19', '2024-12-12', 'paid', 'monthly', NULL, '2024-11-12 01:54:50', '2024-11-12 01:57:48'),
(51, 'navoda', 'navoda@gmail.com', '2024-11-16 12:53:20', '$2y$12$61r6gTD/nuu3erMin18/SuT57QvwrzR2PS1/tIAEGK.AGaca0bSKi', NULL, NULL, 'employer', NULL, '2024-11-23', '2024-12-16', 'paid', 'monthly', NULL, '2024-11-16 12:53:06', '2024-11-16 12:56:28'),
(52, 'prasad100', 'prasad100@gmail.com', '2024-11-22 02:00:54', '$2y$12$dQFZP7LqrjTCbR2CqK5nq.90idTmjFhkxnTrjkMuHEutLnxlc.YnG', NULL, 'profile/Pds96Jei7Rm2IPHSC6b02w6LNVllzMOdgDdiP7hM.jpg', 'seeker', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-22 01:59:24', '2024-11-23 05:22:46'),
(53, 'prasad', 'admin@gmail.com', NULL, '$2y$12$hNepaY.AoyZX8cNv6pw/j.ZMMKrnPowMZeUkiRUJMtT1ICcVwbpTS', NULL, 'profile/ANqjPANiCJS8LqZCyP2sD6CRVtyBSjICyxdHWgJk.png', 'seeker', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-23 12:59:05', '2024-11-23 13:09:04'),
(54, 'Admin', 'Bdmin@gmail.com', '2024-11-25 01:08:02', '$2y$12$4wbQXFkuw08SQn3kqSCDdeLx.iP7G.8hcBtc2b76Np5psDakApgMq', NULL, 'profile/KgP3PQSxiGJALXRdacy8dyWYMR79LEYVqsN5BKSy.png', 'seeker', 'resume/iUh1KLUJCnAPn3r8853RDLf8Yad4GTDINwlvOcXc.pdf', NULL, NULL, NULL, NULL, NULL, '2024-11-25 01:06:29', '2024-11-25 01:08:53'),
(55, 'prasad', 'prasad1@gmail.com', '2024-11-25 22:46:49', '$2y$12$zRfdkQ/wAdrhgWyn5zyk7eH8vsejebh.P1bmxB4JpCMDUK/ZDNAAm', NULL, NULL, 'seeker', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-25 22:42:23', '2024-11-25 22:46:49'),
(56, 'serverclub', 'prasadjgunasir898@gmail.com', '2024-11-28 04:49:04', '$2y$12$mzgrEgljnsGvr2jDVqvD8udg3PoCuBceCCPj3KNoCEMx1.Wnx7sQW', NULL, 'profile/jSqWtkGNSPsH83UzYDWC8uR1jRfBkERE4YF3GkRS.webp', 'seeker', 'resume/9vhfsoKmdEC9zxIB6NIA70agVtkhnJpTDJoOcBv1.pdf', NULL, NULL, NULL, NULL, NULL, '2024-11-28 04:47:49', '2024-11-29 04:49:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_user`
--
ALTER TABLE `listing_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listing_user_listing_id_foreign` (`listing_id`),
  ADD KEY `listing_user_user_id_foreign` (`user_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `listing_user`
--
ALTER TABLE `listing_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `listing_user`
--
ALTER TABLE `listing_user`
  ADD CONSTRAINT `listing_user_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `listing_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
