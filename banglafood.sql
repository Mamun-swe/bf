-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 17, 2020 at 06:03 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banglafood`
--

-- --------------------------------------------------------

--
-- Table structure for table `bangla_foods`
--

CREATE TABLE `bangla_foods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bangla_foods`
--

INSERT INTO `bangla_foods` (`id`, `category`, `product_name`, `total_item`, `product_price`, `item_details`, `product_status`, `product_image`, `created_at`, `updated_at`) VALUES
(7, 'breakfast', 'hello', '2', '415', 'asdf', '1', '1586438954.jpg', '2020-04-09 07:29:14', '2020-04-09 07:29:19'),
(8, 'launce', 'sda', '2', '144', 'hmm', '1', '1586438973.jpg', '2020-04-09 07:29:33', '2020-04-09 07:29:33'),
(9, 'dinner', 'hello', '5', '15', 'fdsf', '1', '1586438985.JPG', '2020-04-09 07:29:45', '2020-04-09 07:29:45');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_title`, `banner_description`, `banner_image`, `created_at`, `updated_at`) VALUES
(1, 'ব্যানার টাইটেল', 'মিত্তির পাড়ায় আমার বাস,\r\nনা, এখন মাথায় ছাদ নেই, আগে ছিল।\r\nকয়েক বছর আগে, সেই যে প্রবল বর্ষা এলো, ভেঙে পড়লো।\r\nএখন খোলা আকাশ।\r\nঅনেক সুখ, দুঃখ, হাসি, কান্না পৌঁছে দিয়েছি,\r\nএঘর থেকে ওঘর।\r\nকত স্বপ্ন, আশাকে পাঠিয়েছি কোন তেপান্তরে।\r\nপুরো পাড়াটা যেন আমাকে পরিবারের সদস্য ভাবতো,', '1598825123.png', '2020-08-30 16:05:23', '2020-08-30 16:05:23'),
(2, 'ব্যানার টাইটেল', 'মিত্তির পাড়ায় আমার বাস,\r\nনা, এখন মাথায় ছাদ নেই, আগে ছিল।\r\nকয়েক বছর আগে, সেই যে প্রবল বর্ষা এলো, ভেঙে পড়লো।\r\nএখন খোলা আকাশ।\r\nঅনেক সুখ, দুঃখ, হাসি, কান্না পৌঁছে দিয়েছি,\r\nএঘর থেকে ওঘর।\r\nকত স্বপ্ন, আশাকে পাঠিয়েছি কোন তেপান্তরে।\r\nপুরো পাড়াটা যেন আমাকে পরিবারের সদস্য ভাবতো,', '1598825145.jpg', '2020-08-30 16:05:45', '2020-08-30 16:05:45'),
(3, 'ব্যানার টাইটেল', 'মিত্তির পাড়ায় আমার বাস,\r\nনা, এখন মাথায় ছাদ নেই, আগে ছিল।\r\nকয়েক বছর আগে, সেই যে প্রবল বর্ষা এলো, ভেঙে পড়লো।\r\nএখন খোলা আকাশ।\r\nঅনেক সুখ, দুঃখ, হাসি, কান্না পৌঁছে দিয়েছি,\r\nএঘর থেকে ওঘর।\r\nকত স্বপ্ন, আশাকে পাঠিয়েছি কোন তেপান্তরে।\r\nপুরো পাড়াটা যেন আমাকে পরিবারের সদস্য ভাবতো,', '1598825170.png', '2020-08-30 16:06:10', '2020-08-30 16:06:10');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL DEFAULT 1,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unordered',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(39, 2, 1, 2, 'accepted', '2020-08-30 16:13:30', '2020-08-30 16:14:45'),
(40, 2, 2, 1, 'accepted', '2020-08-30 16:13:38', '2020-08-30 16:14:45'),
(41, 2, 6, 1, 'ordered', '2020-12-16 03:23:03', '2020-12-16 07:02:51'),
(42, 2, 5, 1, 'ordered', '2020-12-16 07:02:38', '2020-12-16 07:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `created_at`, `updated_at`) VALUES
(1, 'Juice', '2020-08-30 16:07:55', '2020-08-30 16:08:15'),
(2, 'Drinks', '2020-08-30 16:08:02', '2020-08-30 16:08:02'),
(3, 'break-fast', '2020-08-30 16:17:15', '2020-08-30 16:17:15'),
(4, 'lunch', '2020-08-30 16:17:22', '2020-08-30 16:17:22'),
(5, 'dinner', '2020-08-30 16:17:29', '2020-08-30 16:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(67, '2020_03_25_162124_create_carts_table', 2),
(69, '2020_04_06_153523_create_bangla_foods_table', 3),
(70, '2014_10_12_000000_create_users_table', 4),
(71, '2014_10_12_100000_create_password_resets_table', 4),
(72, '2019_08_19_000000_create_failed_jobs_table', 4),
(73, '2020_03_22_150744_create_categories_table', 4),
(74, '2020_03_22_161200_create_products_table', 4),
(75, '2020_03_23_154708_create_banners_table', 4),
(76, '2020_03_23_162648_create_testimonials_table', 4),
(77, '2020_03_27_135826_create_orders_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) NOT NULL,
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_name`, `phone`, `location`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Sakil', 1533592610, 'campus', 'acceptd', '2020-08-30 16:14:07', '2020-08-30 16:14:45'),
(2, 2, 'Sakil', 1533592610, 'yksg-ext-1', 'pending', '2020-12-16 07:02:51', '2020-12-16 07:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `item_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` bigint(20) NOT NULL,
  `product_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_items` bigint(20) NOT NULL,
  `item_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `item_type`, `product_name`, `product_price`, `product_type`, `total_items`, `item_details`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Juice', 'Mango Juice', 50, 'new', 10, 'none', '1598825366.png', 1, '2020-08-30 16:09:26', '2020-08-30 16:09:41'),
(3, 3, 'break-fast', 'Elish', 20, 'regular', 3, 'none', '1598825901.jpg', 1, '2020-08-30 16:18:21', '2020-08-30 16:18:21'),
(4, 4, 'lunch', 'Ellish', 200, 'regular', 1, 'none', '1598826332.jpg', 1, '2020-08-30 16:25:32', '2020-08-30 16:25:32'),
(5, 1, 'Juice', 'test juice', 40, 'hot', 10, 'none', '1598868000.png', 1, '2020-08-31 04:00:00', '2020-08-31 04:00:00'),
(6, 1, 'Juice', 'test juice', 30, 'new', 10, 'none', '1598868034.jpg', 1, '2020-08-31 04:00:34', '2020-08-31 04:00:34'),
(7, 1, 'Juice', 'test juice', 60, 'regular', 1, 'none', '1598868078.png', 1, '2020-08-31 04:01:18', '2020-08-31 04:01:18'),
(8, 2, 'Drinks', 'speed', 25, 'regular', 100, 'none', '1598868120.png', 1, '2020-08-31 04:02:00', '2020-08-31 04:02:00'),
(9, 2, 'Drinks', 'dew', 30, 'regular', 100, 'none', '1598868161.png', 1, '2020-08-31 04:02:41', '2020-08-31 04:02:41'),
(10, 2, 'Drinks', 'test drinks', 40, 'regular', 100, 'none', '1598868210.png', 1, '2020-08-31 04:03:30', '2020-08-31 04:03:30'),
(11, 2, 'Drinks', 'Magic moment', 600, 'hot', 10, 'none', '1598868314.jpg', 1, '2020-08-31 04:05:14', '2020-08-31 04:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Abdullah Al Mamun', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book.', '1598867690.png', '2020-08-31 03:54:50', '2020-08-31 03:54:50'),
(2, 'Hasan Talukder', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book.', '1598867708.png', '2020-08-31 03:55:08', '2020-08-31 03:55:08'),
(3, 'Sabur Khan', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book.', '1598867720.png', '2020-08-31 03:55:20', '2020-08-31 03:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `admin`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mamun', 'mamun.swe.277@gmail.com', '1', NULL, '$2y$10$.x.GTLXhQWvFvgJ5.VjCd.f7DA3sP925UL7h6zkVfJ6aJ.vwUpN7q', NULL, '2020-08-30 14:30:34', '2020-08-31 04:28:59'),
(2, 'Sakil', 'sakil@gmail.com', '0', NULL, '$2y$10$MV1vwaNEdBpbZRmWg2ZL/Oe6PePlLqadZluFAn/OqG7FlR3qI0Lga', NULL, '2020-08-30 16:12:48', '2020-08-30 16:12:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bangla_foods`
--
ALTER TABLE `bangla_foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_cat_name_unique` (`cat_name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `bangla_foods`
--
ALTER TABLE `bangla_foods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
