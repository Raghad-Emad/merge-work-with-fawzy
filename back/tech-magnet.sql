-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2024 at 05:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tech-magnet`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ahmed', 'a12@gmail.com', '2024-05-22 07:26:09', '$2y$10$hXMxKhV3VJBtC1/1j3cM0e75Z1cdlfqQADvqEMpItuvCkFKht16PO', 'uwF4aFAYRq7QO7jvY6fKc08wmuoSi1SBKPBhTBba4Ih1PQ0hvnU0qZH6En05', '2024-05-22 07:26:07', '2024-05-22 07:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `deadline` datetime NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `title`, `description`, `deadline`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 'Build a Personal Portfolio Website', 'Design and Develop a personal portfolio website using HTML, CSS, and JavaScript,bootstrap', '2024-06-24 20:00:00', 1, '2024-05-27 15:08:27', '2024-05-27 15:46:14'),
(2, 'Responsive web design', 'create a Responsive web design usiing media query', '2024-06-28 12:00:00', 2, '2024-05-27 15:35:47', '2024-05-27 15:35:47'),
(3, 'Database design and implementation', 'Design a database schema for a real-world scenario and implement it using SQL.', '2024-06-30 14:00:00', 12, '2024-05-27 15:37:58', '2024-05-27 15:37:58'),
(4, 'API Development', 'Build a RESTful API using a backend framework of your choice (e.g., Node.js, Django, Ruby on Rails).', '2024-07-01 14:00:00', 12, '2024-05-27 15:38:49', '2024-05-27 15:38:49'),
(5, 'E-commerce Website', 'Create a full-stack e-commerce website with features like product listing, shopping cart, and payment integration.', '2024-07-10 19:00:00', 3, '2024-05-27 15:40:10', '2024-05-27 15:40:10'),
(6, 'Authentication and Authorization', 'Implement user authentication and authorization mechanisms in your full-stack application.', '2024-07-10 19:00:00', 3, '2024-05-27 15:44:18', '2024-05-27 15:44:18'),
(7, 'Authentication and Authorization', 'Implement user authentication and authorization mechanisms in your full-stack application.', '2024-07-10 19:00:00', 3, '2024-05-31 18:14:17', '2024-05-31 18:14:17'),
(8, 'Authentication and Authorization', 'Implement user authentication and authorization mechanisms in your full-stack application.', '2024-07-10 19:00:00', 3, '2024-05-31 18:14:31', '2024-05-31 18:14:31');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_user`
--

CREATE TABLE `assignment_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `assignment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignment_user`
--

INSERT INTO `assignment_user` (`id`, `file`, `date`, `assignment_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'database schema.pdf', '2024-03-06 00:00:00', 3, 12, '2024-05-29 13:10:55', '2024-05-29 13:11:03'),
(2, 'api development.pdf', '2024-03-06 00:00:00', 4, 11, '2024-05-29 18:11:40', '2024-05-29 18:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `attendance_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `user_id`, `course_id`, `date`, `attendance_status`, `created_at`, `updated_at`) VALUES
(1, 12, 1, '2024-06-05 19:30:00', 1, '2024-05-28 12:57:23', '2024-05-28 13:38:31'),
(2, 11, 2, '2024-06-05 19:30:00', 0, '2024-05-28 13:33:52', '2024-05-28 13:33:52'),
(3, 11, 2, '2024-06-05 19:30:00', 0, '2024-05-31 18:48:44', '2024-05-31 18:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Web Design in Front-End Development', 'Explore the significance of responsive web design in front-end development and how it enhances user experience across different devices', '2024-05-23 12:44:47', '2024-05-23 12:44:47'),
(2, 'Demystifying Backend Development', 'Delve into the world of backend development and understand its crucial role in powering web applications. Discover various backend technologies, frameworks, and databases, and learn how they work together to handle data, security, and business logic', '2024-05-23 12:48:49', '2024-05-23 12:48:49'),
(3, 'Unlocking the Potential of Artificial Intelligence', 'Discover the limitless possibilities of artificial intelligence (AI) in today\'s world. Explore real-world applications of AI in different industries, such as healthcare, finance', '2024-05-23 12:50:05', '2024-05-23 12:50:05'),
(4, 'Digital Marketing Strategies', 'Unleash the power of digital marketing to drive business growth in the digital era. Learn about various digital marketing channels', '2024-05-23 12:51:41', '2024-05-23 12:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Web Development', '2024-05-22 11:07:59', '2024-05-22 11:07:59'),
(2, 'Design', '2024-05-22 11:07:59', '2024-05-22 11:07:59'),
(3, 'Data Science', '2024-05-22 11:07:59', '2024-05-22 11:07:59'),
(4, 'Digital Marketing', '2024-05-22 11:07:59', '2024-05-22 11:07:59');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender` bigint(20) UNSIGNED NOT NULL,
  `receiver` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `sender`, `receiver`, `message`, `created_at`, `updated_at`) VALUES
(1, 12, 1, 'hello omar', '2024-05-29 16:43:05', '2024-05-29 16:43:05'),
(2, 12, 1, 'can i ask a question', '2024-05-29 16:45:32', '2024-05-29 16:45:32'),
(3, 12, 1, 'hello sir', '2024-05-29 16:46:13', '2024-05-29 16:46:13'),
(13, 12, 1, 'ok thank you', '2024-05-29 18:08:08', '2024-05-29 18:08:08'),
(14, 1, 17, 'do you have any problem with the task', '2024-05-31 18:39:50', '2024-05-31 18:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Alexandria', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(2, 'Aswan', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(3, 'Beheira', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(4, 'Assiut', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(5, 'Cairo', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(6, 'Daqahliya', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(7, 'Damietta', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(8, 'Fayoum', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(9, 'Gharbiya', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(10, 'Helwan', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(11, 'Ismailia', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(12, 'Kafr El Sheikh', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(13, 'Luxor', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(14, 'Bani Suef', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(15, 'Minya', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(16, 'Monofiya', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(17, 'North Sinai', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(18, 'Giza', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(19, 'Port Said', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(20, 'Qalioubiya', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(21, 'Qena', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(22, 'Marsa Matrouh', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(23, 'Sharqiya', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(24, 'New Valley', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(25, 'Sohag', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(26, 'Red Sea', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(27, 'Suez', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(28, 'South Sinai', '2024-05-22 11:09:35', '2024-05-22 11:09:35'),
(29, 'Tanta', '2024-05-22 11:09:35', '2024-05-22 11:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` double(8,2) NOT NULL,
  `hours` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `objective_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `description`, `price`, `hours`, `category_id`, `objective_id`, `created_at`, `updated_at`) VALUES
(1, 'Web development essentials', 'the fundamental building blocks of creating websites and web applications. It\'s like having a toolbox with the most important tools for this job.', 6000.00, 30, 1, 1, '2024-05-22 16:33:06', '2024-05-23 10:57:15'),
(2, 'Frontend course', 'designed to provide you with a comprehensive introduction to the essential concepts, tools, and techniques required to build modern and user-friendly websites', 6000.00, 80, 1, 2, '2024-05-22 17:15:50', '2024-05-23 10:57:29'),
(3, 'Full Stack Diploma', 'comprehensive program designed to equip you with the skills and knowledge required to build dynamic and interactive web applications', 12000.00, 140, 1, 3, '2024-05-22 17:28:29', '2024-05-23 10:57:48'),
(4, 'Graphic Desgin', 'This course focuses on developing your creativity and visual communication skills to create visually appealing and effective designs for various mediums.', 6000.00, 60, 2, 2, '2024-05-22 17:32:50', '2024-05-23 10:58:01'),
(5, 'UI/UX', 'The UI/UX Design Fundamentals course is designed to provide you with a comprehensive understanding of user interface (UI) and user experience (UX) design principles and practices.', 6000.00, 75, 2, 2, '2024-05-22 17:34:14', '2024-05-23 11:08:53'),
(6, 'Essentials of Python', 'The Essentials of Python course is designed to provide you with a comprehensive introduction to the Python programming language.<span style=\"background-color: rgb(247, 247, 247); color: rgb(0, 0, 0); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif; font-size: 18px;\">&nbsp;</span>&nbsp;Python is widely used for various applications, including web development, data analysis, scientific computing, and automation. This course is suitable for beginners with no prior programming experience as well as those with programming knowledge in other languages who want to learn Python', 6000.00, 55, 3, 1, '2024-05-22 17:38:08', '2024-05-23 10:58:53'),
(7, 'AI', 'AI is a rapidly growing field that focuses on creating intelligent systems capable of performing tasks that typically require human intelligence. This course aims to equip you with a foundational understanding of AI concepts and techniques.', 6000.00, 160, 3, 2, '2024-05-22 17:39:55', '2024-05-23 10:59:13'),
(8, 'Deep and Machine Learning', 'The Deep and Machine Learning Fundamentals course is designed to provide you with a comprehensive understanding of deep learning and machine learning techniques. Deep learning focuses on training artificial neural networks with multiple layers to learn representations of data', 10000.00, 100, 3, 2, '2024-05-22 17:42:25', '2024-05-23 10:59:23'),
(9, 'Data Scientist Diploma', 'The Data Scientist Diploma course is a comprehensive program designed to provide you with the knowledge and skills required to excel in the field of data science. Data science involves extracting insights and knowledge from large and complex datasets using various techniques, including statistical analysis, machine learning, and data visualization. This course covers a wide range of topics to equip you with the necessary skills to become a proficient data scientist.', 12000.00, 90, 3, 3, '2024-05-22 17:47:18', '2024-05-23 11:00:52'),
(10, 'Social media marketing Essentials', 'The Social Media Marketing Essentials course is designed to provide you with the knowledge and skills required to develop and implement effective social media marketing strategies. Social media platforms have become powerful tools for businesses to reach and engage with their target audience. This course will equip you with the essential techniques and best practices to leverage social media for marketing purposes.', 6000.00, 40, 4, 1, '2024-05-22 17:50:54', '2024-05-23 11:01:12'),
(11, 'Digital Marketing Diploma', 'The Digital Marketing Diploma is an extensive program designed to provide you with a comprehensive understanding of digital marketing strategies and techniques. In today\'s digital era, businesses rely on digital channels to reach and engage with their target audience. This course covers a wide range of topics to equip you with the necessary skills to plan, execute, and measure successful digital marketing campaigns.', 12000.00, 40, 4, 3, '2024-05-22 17:56:43', '2024-05-23 11:02:16'),
(12, 'Backend Course', 'The Backend Development Fundamentals course provides a comprehensive introduction to the principles, tools, and technologies involved in building the server-side of web applications. This course is designed for individuals who are interested in pursuing a career in backend development or seeking to enhance their existing programming skills', 6000.00, 140, 1, 2, '2024-05-22 18:06:05', '2024-05-23 11:01:51');

-- --------------------------------------------------------

--
-- Table structure for table `course_roadmap`
--

CREATE TABLE `course_roadmap` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `roadmap_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_roadmap`
--

INSERT INTO `course_roadmap` (`id`, `course_id`, `roadmap_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-05-27 19:33:02', '2024-05-27 19:33:02'),
(2, 2, 2, '2024-05-27 19:33:02', '2024-05-27 19:33:02'),
(3, 12, 3, '2024-05-27 19:34:08', '2024-05-27 19:34:08'),
(4, 4, 5, '2024-05-27 19:34:08', '2024-05-27 19:34:08'),
(5, 6, 7, '2024-05-27 19:35:02', '2024-05-27 19:35:02'),
(6, 7, 12, '2024-05-27 19:35:02', '2024-05-27 19:35:02'),
(7, 8, 8, '2024-05-27 19:36:41', '2024-05-27 19:36:41'),
(8, 9, 9, '2024-05-27 19:36:41', '2024-05-27 19:36:41'),
(9, 10, 10, '2024-05-27 19:37:52', '2024-05-27 19:37:52'),
(10, 11, 11, '2024-05-27 19:37:52', '2024-05-27 19:37:52'),
(11, 3, 4, '2024-05-27 19:38:33', '2024-05-27 19:38:33'),
(12, 1, 2, '2024-05-27 19:39:47', '2024-05-27 19:39:53'),
(13, 3, 3, '2024-05-27 19:40:01', '2024-05-27 19:40:01'),
(14, 3, 2, '2024-05-27 19:41:28', '2024-05-27 19:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `course_user`
--

CREATE TABLE `course_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_user`
--

INSERT INTO `course_user` (`id`, `user_id`, `course_id`, `date`, `status`, `created_at`, `updated_at`) VALUES
(1, 12, 1, '2024-06-01 20:00:00', 'pending', '2024-05-29 22:13:35', '2024-05-29 22:13:48'),
(2, 12, 2, '2024-06-01 21:00:00', 'pending', '2024-05-30 22:14:00', '2024-05-30 22:14:14'),
(3, 12, 2, '2024-06-01 21:00:00', 'approved', '2024-05-31 22:14:20', '2024-05-31 22:14:42');

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
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL,
  `imageable_type` varchar(255) NOT NULL,
  `imageable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `path`, `imageable_type`, `imageable_id`, `created_at`, `updated_at`) VALUES
(5, '2024-05-22-08-28-29.jpg', 'App\\Models\\Course', 4, '2024-05-22 17:28:29', '2024-05-22 17:28:29'),
(6, '2024-05-22-08-32-50.jpg', 'App\\Models\\Course', 5, '2024-05-22 17:32:50', '2024-05-22 17:32:50'),
(7, '2024-05-22-08-34-14.jpg', 'App\\Models\\Course', 6, '2024-05-22 17:34:14', '2024-05-22 17:34:14'),
(8, '2024-05-22-08-38-08.png', 'App\\Models\\Course', 7, '2024-05-22 17:38:08', '2024-05-22 17:38:08'),
(9, '2024-05-22-08-39-55.jpg', 'App\\Models\\Course', 8, '2024-05-22 17:39:55', '2024-05-22 17:39:55'),
(10, '2024-05-22-08-42-25.jpg', 'App\\Models\\Course', 9, '2024-05-22 17:42:25', '2024-05-22 17:42:25'),
(11, '2024-05-22-08-47-18.jpg', 'App\\Models\\Course', 10, '2024-05-22 17:47:18', '2024-05-22 17:47:18'),
(12, '2024-05-22-08-50-54.jpg', 'App\\Models\\Course', 11, '2024-05-22 17:50:54', '2024-05-22 17:50:54'),
(13, '2024-05-22-08-56-43.jpg', 'App\\Models\\Course', 12, '2024-05-22 17:56:43', '2024-05-22 17:56:43'),
(14, '2024-05-22-09-06-05.jpg', 'App\\Models\\Course', 13, '2024-05-22 18:06:05', '2024-05-22 18:06:05'),
(15, '2024-05-23-03-11-15.jpg', 'App\\Models\\Course', 2, '2024-05-23 12:11:15', '2024-05-23 12:11:15'),
(17, '2024-05-23-03-15-49.png', 'App\\Models\\Course', 3, '2024-05-23 12:15:49', '2024-05-23 12:15:49'),
(18, '2024-05-23-03-16-56.jpg', 'App\\Models\\Course', 1, '2024-05-23 12:16:56', '2024-05-23 12:16:56'),
(19, '2024-05-23-03-44-47.jpg', 'App\\Models\\Blog', 1, '2024-05-23 12:44:47', '2024-05-23 12:44:47'),
(20, '2024-05-23-03-48-49.jpg', 'App\\Models\\Blog', 2, '2024-05-23 12:48:49', '2024-05-23 12:48:49'),
(21, '2024-05-23-03-50-05.jpg', 'App\\Models\\Blog', 3, '2024-05-23 12:50:05', '2024-05-23 12:50:05'),
(22, '2024-05-23-03-51-41.jpg', 'App\\Models\\Blog', 4, '2024-05-23 12:51:42', '2024-05-23 12:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `file_type` varchar(50) NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `title`, `description`, `file`, `file_type`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 'Frontend Course Material', 'Frontend Course Material with gamified learning to enhace your skills', 'frontend course material.pdf', 'pdf', 2, '2024-05-29 04:17:55', '2024-05-29 04:17:55'),
(2, 'Backend Course Material', 'Backend Course Material with gamified learning to enhace your skills', 'backend course.pdf', 'pdf', 12, '2024-05-29 04:39:52', '2024-05-29 04:39:52'),
(3, 'Backend Course Material', 'Backend Course Material with gamified learning to enhace your skills', 'backend course.pdf', 'pdf', 12, '2024-05-31 18:36:19', '2024-05-31 18:36:19');

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
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_22_080616_create_admins_table', 1),
(6, '2024_05_22_081102_create_roles_table', 1),
(7, '2024_05_22_081312_create_cities_table', 1),
(8, '2024_05_22_081335_create_users_table', 1),
(9, '2024_05_22_085751_create_permissions_table', 2),
(10, '2024_05_22_085839_create_role_permission_table', 2),
(11, '2024_05_22_113618_create_categories_table', 3),
(12, '2024_05_22_114011_create_settings_table', 3),
(13, '2024_05_22_114300_create_blogs_table', 3),
(14, '2024_05_22_123851_create_images_table', 4),
(15, '2024_05_22_124239_create_chats_table', 5),
(16, '2024_05_22_141325_create_courses_table', 6),
(17, '2024_05_22_142039_create_objectives_table', 6),
(18, '2024_05_22_143154_create_quizzes_table', 7),
(19, '2024_05_22_143246_create_assignments_table', 7),
(20, '2024_05_22_144626_create_projects_table', 8),
(21, '2024_05_22_144725_create_portfolios_table', 8),
(22, '2024_05_22_150728_create_support_requests_table', 9),
(23, '2024_05_22_151830_create_recordings_table', 10),
(24, '2024_05_22_153339_create_super_skills_table', 11),
(25, '2024_05_22_153407_create_super_skills_table', 12),
(26, '2024_05_22_153434_create_skills_table', 12),
(27, '2024_05_22_155733_create_schedules_table', 13),
(28, '2024_05_22_155757_create_questions_table', 13),
(29, '2024_05_22_161137_create_roadmaps_table', 14),
(30, '2024_05_22_161717_create_course_roadmap_table', 14),
(31, '2024_05_23_133750_alter_courses_table', 15),
(32, '2024_05_25_124913_create_attendances_table', 16),
(33, '2024_05_25_125013_create_sessions_table', 16),
(34, '2024_05_25_125051_create_materials_table', 16),
(35, '2024_05_25_125125_create_course_user_table', 16),
(36, '2024_05_25_125147_create_assignment_user_table', 16),
(37, '2024_05_25_125204_create_quiz_user_table', 16),
(38, '2024_05_25_161947_create_student_progress_table', 17),
(39, '2024_05_26_142824_alter_settings_table', 18),
(40, '2018_08_08_100000_create_telescope_entries_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `objectives`
--

CREATE TABLE `objectives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `objectives`
--

INSERT INTO `objectives` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Master the Essentials', '2024-05-23 10:30:46', '2024-05-23 10:30:46'),
(2, 'Boost you Skills', '2024-05-23 10:30:46', '2024-05-23 10:30:46'),
(3, 'Tech Professionals', '2024-05-23 10:30:46', '2024-05-23 10:30:46');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'view-courses', '2024-05-25 17:01:10', '2024-05-25 17:01:10'),
(2, 'view-categories', '2024-05-25 17:01:10', '2024-05-25 17:01:10'),
(3, 'view-courseMaterial', '2024-05-25 17:01:10', '2024-05-25 17:01:10'),
(4, 'view-courseRecordings', '2024-05-25 17:01:10', '2024-05-25 17:01:10'),
(5, 'add-projects', '2024-05-25 17:01:10', '2024-05-25 17:01:10'),
(6, 'send-supportRequest', '2024-05-25 17:01:10', '2024-05-25 17:01:10'),
(7, 'add-projects', '2024-05-25 17:01:10', '2024-05-25 17:01:10'),
(8, 'view-quiz', '2024-05-25 17:01:10', '2024-05-25 17:01:10'),
(9, 'view-assignments', '2024-05-25 17:01:10', '2024-05-25 17:01:10'),
(10, 'create-courseMaterial', '2024-05-25 17:01:10', '2024-05-25 17:01:10'),
(11, 'create-onlineMeetings', '2024-05-25 17:01:10', '2024-05-25 17:01:10'),
(12, 'view-support-requests', '2024-05-25 17:01:10', '2024-05-25 17:01:10'),
(13, 'create-quizzes', '2024-05-25 17:01:10', '2024-05-25 17:01:10'),
(14, 'create-assignments', '2024-05-25 17:01:10', '2024-05-25 17:01:10'),
(15, 'create-attendance', '2024-05-25 17:01:10', '2024-05-25 17:01:10'),
(16, 'update-attendance', '2024-05-25 17:01:10', '2024-05-25 17:01:10'),
(17, 'view-projects', '2024-05-25 17:01:10', '2024-05-25 17:01:10'),
(18, 'view-studentProfiles', '2024-05-25 17:01:10', '2024-05-25 17:01:10');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) NOT NULL,
  `issue_date` datetime NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `file`, `issue_date`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 'mazen.pdf', '2024-06-01 00:00:00', 12, 12, '2024-05-29 08:24:46', '2024-05-29 08:24:46'),
(2, 'ramy adel.pdf', '2024-06-01 00:00:00', 11, 12, '2024-05-29 08:25:45', '2024-05-29 08:25:45'),
(3, 'youssef omar.pdf', '2024-06-01 00:00:00', 1, 12, '2024-05-31 18:31:36', '2024-05-31 18:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `file`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Backend course project.pdf', 'approved', 12, '2024-05-28 14:51:48', '2024-05-28 15:08:48'),
(2, 'full-stack course.pdf', 'pending', 11, '2024-05-28 15:31:14', '2024-05-28 15:31:14'),
(3, 'full-stack course.pdf', 'pending', 17, '2024-05-31 18:26:52', '2024-05-31 18:26:52');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_text` text NOT NULL,
  `answers` text NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_text`, `answers`, `quiz_id`, `created_at`, `updated_at`) VALUES
(1, 'What does HTML stand for?', 'Hyper Text Markup Language\nHome Tool Markup Language\nHyperlinks and Text Markup Language\nNone of the above', 1, '2024-05-27 14:11:26', '2024-05-27 14:11:26'),
(2, 'Which HTML tag is used to define an unordered list?', '<ul> <ol> <li> <list>', 1, '2024-05-27 14:26:56', '2024-05-27 14:26:56'),
(4, 'What is a primary key in a database?', 'A unique identifier for a record in a table   A key that allows duplicate values\nA foreign key in a different table \n A key used for encryption', 3, '2024-05-27 14:30:26', '2024-05-27 14:30:26'),
(5, 'Which SQL keyword is used to retrieve data from a database?', 'SELECT UPDATE  DELETE  INSERT', 3, '2024-05-27 14:32:04', '2024-05-27 14:32:04'),
(6, 'What is the purpose of a JavaScript framework?', 'To provide a set of tools and libraries for efficient web development   \nTo replace the need for JavaScript altogether\nTo enhance the performance of web servers', 2, '2024-05-27 14:35:00', '2024-05-27 14:35:00'),
(7, 'Which JavaScript framework is commonly used for building user interfaces?', 'React  Angular  Vue.js  Ember.js', 2, '2024-05-27 14:36:19', '2024-05-27 14:36:19'),
(8, 'Which JavaScript framework is commonly used for building user interfaces?', 'React  Angular  Vue.js  Ember.js', 2, '2024-05-31 18:00:31', '2024-05-31 18:00:31');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `name`, `description`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 'HTML Basics', 'test your knowledge of HTML Fundamentals', 2, '2024-05-27 12:59:13', '2024-05-27 13:03:41'),
(2, 'Java Script Framework', 'a quiz to evaluate you profiency in popular javascript framework', 3, '2024-05-27 13:26:59', '2024-05-27 13:26:59'),
(3, 'Database Concepts', 'a quiz to asses you understanding of database management system', 12, '2024-05-27 13:28:52', '2024-05-27 13:28:52'),
(4, 'Sass quiz', 'a quiz to asses you understanding of saa tools', 2, '2024-05-31 17:54:43', '2024-05-31 17:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_user`
--

CREATE TABLE `quiz_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `score` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_user`
--

INSERT INTO `quiz_user` (`id`, `score`, `date`, `quiz_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 20, '2024-06-02 00:00:00', 1, 12, '2024-05-30 22:14:51', '2024-05-30 22:14:56'),
(2, 20, '2024-06-02 00:00:00', 3, 17, '2024-05-31 22:15:01', '2024-05-31 22:15:10');

-- --------------------------------------------------------

--
-- Table structure for table `recordings`
--

CREATE TABLE `recordings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `video_src` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recordings`
--

INSERT INTO `recordings` (`id`, `title`, `description`, `video_src`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 'Backend Course Recording', 'this is the backend session recording', 'backend.mp4', 12, 12, '2024-05-29 10:37:29', '2024-05-29 10:37:29');

-- --------------------------------------------------------

--
-- Table structure for table `roadmaps`
--

CREATE TABLE `roadmaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roadmaps`
--

INSERT INTO `roadmaps` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Web Development Essentials', 'Learn the fundamental concepts and technologies required for web development, including HTML, CSS, and JavaScript', '2024-05-26 13:04:21', '2024-05-26 13:04:21'),
(2, 'Frontend Course', 'Explore advanced frontend development techniques, frameworks, and libraries such as React, Vue.js, and Angular.', '2024-05-26 13:04:21', '2024-05-26 13:04:21'),
(3, 'Backend Course', 'Focus on backend development, learning server-side programming languages, databases, API development, and security', '2024-05-26 13:04:21', '2024-05-26 13:04:21'),
(4, 'Full Stack Diploma', 'Become a full stack developer by mastering both frontend and backend technologies. Learn how to build complete web applications', '2024-05-26 13:04:21', '2024-05-26 13:04:21'),
(5, 'Graphic Design', 'Develop your skills in graphic design, including principles of design, typography, color theory, and popular design software', '2024-05-26 13:04:21', '2024-05-26 13:04:21'),
(6, 'UI/UX', 'Learn user interface (UI) and user experience (UX) design principles to create intuitive and visually appealing digital experiences', '2024-05-26 13:04:21', '2024-05-26 13:04:21'),
(7, 'Essentials of Python.AI', 'Discover the essentials of Python programming language and explore its applications in artificial intelligence and data analysis', '2024-05-26 13:04:21', '2024-05-26 13:04:21'),
(8, 'Deep and Machine Learning', 'Dive into the field of deep learning and machine learning, understanding algorithms, neural networks, and training models.', '2024-05-26 13:04:21', '2024-05-26 13:04:21'),
(9, 'Data Scientist Diploma', 'Acquire the skills and knowledge needed to become a data scientist, including data analysis, machine learning, and data visualization', '2024-05-26 13:04:21', '2024-05-26 13:04:21'),
(10, 'Social Media Marketing Essentials', 'Learn the basics of social media marketing, including strategies, content creation, audience targeting, and analytics', '2024-05-26 13:04:21', '2024-05-26 13:04:21'),
(11, 'Digital Marketing Diploma', 'Master the essentials of digital marketing, including search engine optimization (SEO), paid advertising, email marketing, and analytics', '2024-05-26 13:04:21', '2024-05-26 13:04:21'),
(12, 'AI', 'Explore the field of artificial intelligence, including machine learning, neural networks, natural language processing, and computer vision.', '2024-05-26 13:04:21', '2024-05-26 13:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Students', '2024-05-22 11:12:24', '2024-05-22 11:12:24'),
(2, 'Instructors', '2024-05-22 11:12:24', '2024-05-22 11:12:24'),
(3, 'Operations', '2024-05-22 11:12:24', '2024-05-22 11:12:24'),
(4, 'Educational-Consaltants', '2024-05-22 11:12:24', '2024-05-22 11:12:24'),
(5, 'Mentors', '2024-05-22 11:12:24', '2024-05-22 11:12:24'),
(6, 'Company', '2024-05-22 11:12:24', '2024-05-22 11:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-05-27 19:15:30', '2024-05-27 19:15:30'),
(2, 1, 2, '2024-05-27 19:15:30', '2024-05-27 19:15:30'),
(3, 1, 3, '2024-05-27 19:15:30', '2024-05-27 19:15:30'),
(4, 1, 8, '2024-05-27 19:15:30', '2024-05-27 19:15:30'),
(5, 1, 6, '2024-05-27 19:15:30', '2024-05-27 19:15:30'),
(6, 1, 7, '2024-05-27 19:15:30', '2024-05-27 19:15:30'),
(7, 2, 14, '2024-05-27 19:20:56', '2024-05-27 19:20:56'),
(8, 2, 13, '2024-05-27 19:20:56', '2024-05-27 19:20:56'),
(9, 2, 11, '2024-05-27 19:20:56', '2024-05-27 19:20:56'),
(10, 1, 4, '2024-05-27 19:20:56', '2024-05-27 19:20:56'),
(11, 3, 6, '2024-05-27 19:41:55', '2024-05-27 19:41:55'),
(12, 5, 15, '2024-05-27 19:41:55', '2024-05-27 19:41:55'),
(13, 5, 16, '2024-05-27 19:43:49', '2024-05-27 19:43:49'),
(14, 6, 18, '2024-05-27 19:43:49', '2024-05-27 19:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `start_date`, `end_date`, `course_id`, `created_at`, `updated_at`) VALUES
(1, '2024-06-01 00:00:00', '2024-08-01 00:00:00', 1, '2024-05-27 10:47:24', '2024-05-27 10:47:24'),
(2, '2024-06-04 00:00:00', '2024-08-07 00:00:00', 3, '2024-05-31 17:44:46', '2024-05-31 17:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `start_date` datetime NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` varchar(255) NOT NULL,
  `start_url` text NOT NULL,
  `join_url` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `topic`, `description`, `start_date`, `user_id`, `course_id`, `meeting_id`, `start_url`, `join_url`, `created_at`, `updated_at`) VALUES
(1, 'Laravel Basics', 'MVC Pattern', '2024-06-06 15:00:00', 1, 12, '88335979662', 'https://us05web.zoom.us/s/4514142989?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6IjVuUWhKUjR6UmFxanc2eUo0dk5jTXciLCJpc3MiOiJ3ZWIiLCJzayI6IjAiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsIm1udW0iOiI0NTE0MTQyOTg5IiwiZXhwIjoxNzE3NjY3NzY0LCJpYXQiOjE3MTc2NjA1NjQsImFpZCI6IjZ4UHBxX3Z1VHRLdUJDQjh0QWlVLVEiLCJjaWQiOiIifQ.RWhiOl2ef0Wwa9AOSewW8uPBcDwyzSsyNMFNzKq93-Y', 'https://us05web.zoom.us/j/4514142989?pwd=5SLcrLugQLG8ga8NSFa3KuU4i2pag1.1&omn=88335979662', '2024-06-06 07:56:03', '2024-06-06 07:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `location` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `email`, `phone`, `location`, `created_at`, `updated_at`) VALUES
(1, '2024-06-07-06-03-12.jpg', 'Techmagnet@gmail.com', '01000009999', 'Greek Campus', '2024-05-25 17:30:36', '2024-06-07 15:03:12');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `super_skill_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `title`, `content`, `super_skill_id`, `created_at`, `updated_at`) VALUES
(1, 'HTML Syntax', 'HTML is a Hyper Text Markup Language', 1, '2024-05-26 06:59:24', '2024-05-26 07:30:06'),
(2, 'Tags and Elements', 'HTML Tags like h1,h2,h3,h4,h6', 1, '2024-05-26 06:59:43', '2024-05-26 07:33:03'),
(3, 'HTML Forms', 'Html Forms with inputs,labels', 1, '2024-05-26 07:45:24', '2024-05-26 07:45:24'),
(4, 'HTML Tables', 'Tables inlcudes Table Head , Table Body , Table Footer', 1, '2024-05-26 07:48:47', '2024-05-26 07:48:47'),
(5, 'CSS Syntax', 'Cascading Stylesheet', 2, '2024-05-26 07:49:21', '2024-05-26 07:49:21'),
(6, 'CSS Selectors', 'CSS Selectors includes dot(class) , hash(id) , tag(p)', 2, '2024-05-26 07:50:36', '2024-05-26 07:50:36'),
(7, 'CSS Selectors', 'CSS Selectors includes dot(class) , hash(id) , tag(p)', 2, '2024-05-26 07:50:36', '2024-05-26 07:50:36'),
(8, 'Box Model', 'CSS Flexbox and GRID', 2, '2024-05-26 07:51:20', '2024-05-26 07:51:20'),
(9, 'Layout and Positioning', 'Position relative and absolute', 2, '2024-05-26 07:53:19', '2024-05-26 07:53:19'),
(10, 'CSS Responsive Design', 'CSS Media Query for all devices', 1, '2024-05-26 07:54:30', '2024-05-26 07:54:30'),
(11, 'CSS Frameworks (e.g., Bootstrap)', 'Bootstrap 5 For CSS Web Design', 2, '2024-05-26 07:56:22', '2024-05-26 07:56:22'),
(12, 'JavaScript Syntax', 'JS Syntax  From A to Z', 3, '2024-05-26 07:58:14', '2024-05-26 07:58:14'),
(13, 'JS Variables and Data Types', 'JS Variables Syntax and its datatypes', 3, '2024-05-26 08:01:09', '2024-05-26 08:01:09'),
(14, 'Functions', 'JS Functions Syntax', 3, '2024-05-26 08:01:40', '2024-05-26 08:01:40'),
(15, 'DOM Manipulation', 'JS DOM as Selecting HTML Elements BY ID, Class Name', 3, '2024-05-26 08:07:33', '2024-05-26 08:07:33'),
(16, 'Event Handling', 'JS Events and ACTIONS', 3, '2024-05-26 08:08:21', '2024-05-26 08:08:21'),
(17, 'HTML Syntax', 'HMTL Basics', 4, '2024-05-26 08:12:01', '2024-05-26 08:12:01'),
(18, 'CSS Syntax', 'CSS Syntax With external, internal, inline', 4, '2024-05-26 08:16:19', '2024-05-26 08:16:19'),
(19, 'Selectors and Styling', 'CSS Styling and selecting by id, tag,  class', 4, '2024-05-26 08:17:31', '2024-05-26 08:17:31'),
(20, 'Responsive Design', 'CSS Media Query Responsive Design', 4, '2024-05-26 08:18:00', '2024-05-26 08:18:00'),
(21, 'JavaScript Basics', 'JavaScript Basics in Details', 5, '2024-05-26 08:19:07', '2024-05-26 08:19:07'),
(22, 'DOM Manipulation and Event Handling', 'DOM Manipulation and Event Handling Best Techniques', 5, '2024-05-26 08:19:35', '2024-05-26 08:19:35'),
(23, 'Frontend Frameworks (e.g., React, Angular, Vue.js)', 'Frontend Frameworks To Create Responsive Web Designs', 5, '2024-05-26 08:21:08', '2024-05-26 08:21:08'),
(24, 'State Management , API Integration', 'Learn State Management , API Integration From Scratch', 5, '2024-05-26 08:22:10', '2024-05-26 08:22:10'),
(25, 'HTML, CSS, JavaScript', 'HTML, CSS, JavaScript These Technologies at Least Enable you to create web designs', 6, '2024-05-26 08:23:37', '2024-05-26 08:23:37'),
(26, 'Frontend Frameworks', 'Frontend Frameworks eg(React JS ,Vue JS , Angular)', 6, '2024-05-26 08:24:49', '2024-05-26 08:24:49'),
(27, 'Server-side Languages', 'Server-side Programming (e.g., Node.js, PHP, C#)', 7, '2024-05-26 08:25:32', '2024-05-26 08:25:32'),
(28, 'Database Management Systems', 'Databases Management Systems(e.g., MYSQL, MongoDB)', 7, '2024-05-26 08:26:28', '2024-05-26 08:26:28'),
(29, 'API Development and Integration', 'API Development and Integration with Third Party', 7, '2024-05-26 08:26:58', '2024-05-26 08:26:58'),
(30, 'Authentication and Authorization', 'Authentication and Authorization in details to enhance Security', 7, '2024-05-26 08:27:34', '2024-05-26 08:27:34'),
(31, 'Server Side Framework', 'Server Side Framework eg(Laravel, JS Express, ASP.Net)', 7, '2024-05-26 08:29:50', '2024-05-26 08:29:50'),
(32, 'Color Theory and Color Schemes', 'Color Theory and Color Schemes in details', 8, '2024-05-26 08:31:07', '2024-05-26 08:31:07'),
(33, 'Typography and Fonts', 'Typography and Fonts in details', 8, '2024-05-26 08:31:24', '2024-05-26 08:31:24'),
(34, 'Adobe Photoshop ,Adobe Illustrator', 'Adobe Photoshop, Adobe Illustrator in details', 9, '2024-05-26 08:31:59', '2024-05-26 08:31:59'),
(35, 'Print Design Principles Digital Design', 'Print Design Principles\r\nDigital Design for Web and Mobile in details', 10, '2024-05-26 08:33:04', '2024-05-26 08:33:04'),
(36, 'Packaging Design Advertising Design', 'Packaging Design\r\nAdvertising Design in details', 10, '2024-05-26 08:33:31', '2024-05-26 08:33:31'),
(37, 'User Interviews and Surveys Personas', 'User Interviews and Surveys\r\nPersonas and User Stories in details', 11, '2024-05-26 08:34:06', '2024-05-26 08:34:06'),
(38, 'Competitive Analysis Usability Testing', 'Competitive Analysis\r\nUsability Testing in details', 11, '2024-05-26 08:34:28', '2024-05-26 08:34:28'),
(39, 'Sketching and Paper Prototyping Wireframing Tool', 'Sketching and Paper Prototyping\r\nWireframing Tools (e.g., Sketch, Adobe XD) in details', 12, '2024-05-26 08:35:09', '2024-05-26 08:35:09'),
(40, 'UI Design Principles Visual Design Guidelines', 'UI Design Principles\r\nVisual Design Guidelines in details', 13, '2024-05-26 08:36:08', '2024-05-26 08:36:08'),
(41, 'Iconography and Illustration Motion Design', 'Iconography and Illustration\r\nMotion Design and Animation in details', 13, '2024-05-26 08:36:39', '2024-05-26 08:36:39'),
(42, 'Python Syntax and Data Types Control structure', 'Python Syntax and Data Types\r\nControl Flow and Loops with practice', 14, '2024-05-26 08:37:23', '2024-05-26 08:37:23'),
(43, 'File Handling and Error Handling and Exceptions', 'File Handling and Error Handling and Exceptions with practice', 14, '2024-05-26 08:38:51', '2024-05-26 08:38:51'),
(44, 'NumPy and Pandas Libraries Data Cleaning', 'NumPy and Pandas Libraries\r\nData Cleaning and Preprocessing  in details', 15, '2024-05-26 08:39:40', '2024-05-26 08:39:40'),
(45, 'Supervised Learning Algorithms', 'Supervised Learning Algorithms (e.g., Linear Regression, Decision Trees)\r\nModel Evaluation and Validation', 16, '2024-05-26 08:40:24', '2024-05-26 08:40:24'),
(46, 'Feature Engineering and Selection', 'Feature Engineering and Selection in details', 16, '2024-05-26 08:40:58', '2024-05-26 08:40:58'),
(47, 'Regression and Classification Algorithms', 'Regression and Classification Algorithms\r\nSupport Vector Machines (SVM)\r\nClustering Algorithms\r\nDimensionality Reduction', 17, '2024-05-26 08:41:47', '2024-05-26 08:41:47'),
(48, 'Neural Networks Architecture', 'Neural Networks Architecture\r\nDeep Learning Frameworks (e.g., TensorFlow, PyTorch)\r\nConvolutional Neural Networks (CNN)\r\nRecurrent Neural Networks (RNN)\r\nTransfer Learning and Fine-Tuning', 18, '2024-05-26 08:42:34', '2024-05-26 08:42:34'),
(49, 'Performance Metrics', 'Performance Metrics (e.g., Accuracy, Precision, Recall, F1-Score)\r\nCross-Validation Techniques\r\nHyperparameter Tuning\r\nOverfitting and Regularization\r\nModel Interpretation and Explainability', 19, '2024-05-26 08:43:09', '2024-05-26 08:43:09'),
(50, 'Handling Missing Data and Data Imputation', 'Handling Missing Data\r\nData Imputation\r\nOutlier Detection and Treatment\r\nData Scaling and Normalization\r\nFeature Encoding and Transformation', 20, '2024-05-26 08:44:39', '2024-05-26 08:44:39'),
(51, 'Descriptive Statistics Data Visualization', 'Descriptive Statistics\r\nData Visualization Techniques\r\nCorrelation and Covariance Analysis\r\nFeature Selection and Importance\r\nStatistical Tests and Hypothesis Testing', 21, '2024-05-26 08:45:05', '2024-05-26 08:45:05'),
(52, 'Advanced Regression and Classification Algorithms', 'Advanced Regression and Classification Algorithms\r\nEnsemble Methods (e.g., Bagging, Boosting)\r\nTime Series Analysis and Forecasting\r\nUnsupervised Learning (e.g., Clustering, Dimensionality Reduction)\r\nNatural Language Processing (NLP) Techniques', 22, '2024-05-26 08:45:27', '2024-05-26 08:45:27'),
(53, 'Audience Research and Targeting', 'Audience Research and Targeting\r\nContent Strategy Development\r\nSocial Media Campaign Planning\r\nSocial Media Analytics and Insights', 23, '2024-05-26 08:47:05', '2024-05-26 08:47:05'),
(54, 'Content Writing and Copywriting', 'Content Writing and Copywriting\r\nVisual Content Creation (e.g., Graphics, Videos)\r\nContent Curation and Scheduling\r\nSocial Media Management Tools\r\nCommunity Engagement and Moderation', 24, '2024-05-26 08:47:35', '2024-05-26 08:47:35'),
(55, 'Influencer Identification and Outreach Influencer', 'Influencer Identification and Outreach\r\nInfluencer Partnerships and Campaigns\r\nNegotiation and Contracting\r\nPerformance Tracking and ROI Analysis', 25, '2024-05-26 08:48:41', '2024-05-26 08:48:41'),
(56, 'Keyword Research and Analysis', 'Keyword Research and Analysis\r\nOn-Page and Off-Page Optimization\r\nTechnical SEO\r\nSEO Auditing and Reporting\r\nSEO Tools and Analytics', 26, '2024-05-26 08:49:28', '2024-05-26 08:49:28'),
(57, 'Google Ads and Bing Ads', 'Campaign Planning and Management\r\nKeyword Bidding and Ad Copywriting\r\nAd Performance Tracking and Optimization', 27, '2024-05-26 08:50:40', '2024-05-26 08:50:40'),
(58, 'Email Campaign Strategy and Planning', 'Email List Building and Segmentation\r\nEmail Copywriting and Design\r\nMarketing Automation Tools\r\nEmail Analytics and Conversion Tracking', 28, '2024-05-26 08:51:06', '2024-05-26 08:51:06'),
(59, 'Backend Language (e.g., Node.js, Laravel, C#)', 'API Development (e.g., RESTful APIs)\r\nDatabase Integration (e.g., SQL, MongoDB)\r\nAuthentication and Authorization\r\nError Handling and Logging', 29, '2024-05-26 08:51:56', '2024-05-26 08:51:56'),
(60, 'Relational Databases , NoSQL Databases', 'Relational Databases (e.g., SQL)\r\nNoSQL Databases (e.g., MongoDB)\r\nDatabase Design and Optimization\r\nSQL Querying and Indexing\r\nData Modeling and Schema Design', 30, '2024-05-26 08:54:18', '2024-05-26 08:54:18'),
(61, 'Caching and Load Balancing', 'Caching and Load Balancing\r\nQuery Optimization\r\nServer Optimization Techniques\r\nScalable Architecture Design\r\nMonitoring and Performance Testing', 31, '2024-05-26 08:54:59', '2024-05-26 08:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `student_progress`
--

CREATE TABLE `student_progress` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rank` int(11) NOT NULL,
  `points_earned` int(11) NOT NULL,
  `total_points` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_progress`
--

INSERT INTO `student_progress` (`id`, `rank`, `points_earned`, `total_points`, `date`, `user_id`, `course_id`, `skill_id`, `created_at`, `updated_at`) VALUES
(1, 1, 30, 50, '2024-07-03 18:30:00', 12, 1, 1, '2024-05-28 18:39:14', '2024-05-28 18:39:14'),
(2, 3, 15, 30, '2024-08-05 12:00:00', 11, 2, 2, '2024-05-28 18:46:52', '2024-05-28 19:02:05'),
(3, 4, 5, 20, '2024-08-01 14:00:00', 11, 2, 2, '2024-05-31 18:50:43', '2024-05-31 18:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `super_skills`
--

CREATE TABLE `super_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `super_skills`
--

INSERT INTO `super_skills` (`id`, `name`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 'HTML Basics', 1, '2024-05-25 19:27:25', '2024-05-25 20:21:19'),
(2, 'CSS Basics', 1, '2024-05-25 20:21:38', '2024-05-25 20:21:38'),
(3, 'Java Script Basics', 1, '2024-05-25 20:21:58', '2024-05-25 20:21:58'),
(4, 'HTML and CSS Fundamentals', 2, '2024-05-26 05:50:26', '2024-05-26 06:36:35'),
(5, 'JavaScript and Frontend Frameworks', 2, '2024-05-26 05:51:11', '2024-05-26 06:36:17'),
(6, 'Frontend Development', 3, '2024-05-26 05:51:53', '2024-05-26 06:37:21'),
(7, 'Backend Development', 3, '2024-05-26 05:52:13', '2024-05-26 06:37:46'),
(8, 'Design Principles and Concepts', 4, '2024-05-26 05:52:30', '2024-05-26 06:38:31'),
(9, 'Graphic Design Software', 4, '2024-05-26 05:52:59', '2024-05-26 06:38:48'),
(10, 'Print and Digital Design', 4, '2024-05-26 05:53:30', '2024-05-26 06:39:14'),
(11, 'User Research and Analysis', 5, '2024-05-26 05:53:52', '2024-05-26 06:39:41'),
(12, 'Wireframing and Prototyping', 5, '2024-05-26 05:54:25', '2024-05-26 06:40:19'),
(13, 'Visual and Interaction Design', 5, '2024-05-26 05:54:56', '2024-05-26 06:40:43'),
(14, 'Python Fundamentals', 6, '2024-05-26 06:41:25', '2024-05-26 06:41:25'),
(15, 'Data Manipulation and Analysis', 6, '2024-05-26 06:41:59', '2024-05-26 06:41:59'),
(16, 'Machine Learning Basics', 6, '2024-05-26 06:42:17', '2024-05-26 06:42:17'),
(17, 'Machine Learning Algorithms', 8, '2024-05-26 06:42:47', '2024-05-26 06:42:47'),
(18, 'Deep Learning Fundamentals', 8, '2024-05-26 06:43:06', '2024-05-26 06:43:06'),
(19, 'Model Evaluation and Optimization', 8, '2024-05-26 06:46:15', '2024-05-26 06:46:15'),
(20, 'Data Cleaning and Preprocessing', 9, '2024-05-26 06:48:25', '2024-05-26 06:48:25'),
(21, 'Exploratory Data Analysis (EDA)', 1, '2024-05-26 06:49:21', '2024-05-26 06:49:32'),
(22, 'Advanced Machine Learning', 9, '2024-05-26 06:50:24', '2024-05-26 06:50:24'),
(23, 'Social Media Strategy and Planning', 10, '2024-05-26 06:50:47', '2024-05-26 06:50:47'),
(24, 'Content Creation and Management', 10, '2024-05-26 06:51:12', '2024-05-26 06:51:12'),
(25, 'Influencer Marketing and Collaboration', 10, '2024-05-26 06:51:40', '2024-05-26 06:51:40'),
(26, 'Search Engine Optimization (SEO)', 11, '2024-05-26 06:52:05', '2024-05-26 06:52:05'),
(27, 'Search Engine Marketing (SEM) and PPC Advertising', 11, '2024-05-26 06:52:58', '2024-05-26 06:52:58'),
(28, 'Email Marketing and Automation', 10, '2024-05-26 06:53:18', '2024-05-26 06:53:18'),
(29, 'Introduction to Server-side Programming', 12, '2024-05-26 06:54:21', '2024-05-26 06:54:21'),
(30, 'Database Management', 12, '2024-05-26 06:56:44', '2024-05-26 06:56:44'),
(31, 'Performance Optimization and Scalability', 1, '2024-05-26 06:57:00', '2024-05-26 06:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `support_requests`
--

CREATE TABLE `support_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `problem_description` text NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_requests`
--

INSERT INTO `support_requests` (`id`, `problem_description`, `date`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'i will not attend the lecture tomorrow', '2024-07-10 19:00:00', 'pending', 12, '2024-05-28 17:58:02', '2024-05-28 17:58:02');

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `batch_id` char(36) NOT NULL,
  `family_hash` varchar(255) DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(20) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telescope_entries`
--

INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(1, '9c39510b-7778-4db0-a952-1236c112f68d', '9c39510b-8b1c-40c9-b899-b865f3c46edc', '0335e99bf8da887f98e44dae2faa475a', 1, 'exception', '{\"class\":\"Illuminate\\\\Database\\\\QueryException\",\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":829,\"message\":\"SQLSTATE[42S01]: Base table or view already exists: 1050 Table \'objectives\' already exists (Connection: mysql, SQL: create table `objectives` (`id` bigint unsigned not null auto_increment primary key, `name` varchar(50) not null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\')\",\"context\":null,\"trace\":[{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":783},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":576},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Schema\\\\Blueprint.php\",\"line\":110},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Schema\\\\Builder.php\",\"line\":602},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Schema\\\\Builder.php\",\"line\":456},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\Facades\\\\Facade.php\",\"line\":355},{\"file\":\"D:\\\\tech-magnet\\\\database\\\\migrations\\\\2024_05_21_183210_create_objectives_table.php\",\"line\":14},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":493},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":410},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":419},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":216},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Console\\\\View\\\\Components\\\\Task.php\",\"line\":37},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":756},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":216},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":181},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":124},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Console\\\\Migrations\\\\MigrateCommand.php\",\"line\":90},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":633},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Console\\\\Migrations\\\\MigrateCommand.php\",\"line\":83},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":36},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Util.php\",\"line\":41},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":93},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":35},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Container.php\",\"line\":662},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Console\\\\Command.php\",\"line\":211},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\symfony\\\\console\\\\Command\\\\Command.php\",\"line\":326},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Console\\\\Command.php\",\"line\":180},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":1096},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":324},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":175},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Console\\\\Kernel.php\",\"line\":201},{\"file\":\"D:\\\\tech-magnet\\\\artisan\",\"line\":35}],\"line_preview\":{\"820\":\"        \\/\\/ message to include the bindings with SQL, which will make this exception a\",\"821\":\"        \\/\\/ lot more helpful to the developer instead of just the database\'s errors.\",\"822\":\"        catch (Exception $e) {\",\"823\":\"            if ($this->isUniqueConstraintError($e)) {\",\"824\":\"                throw new UniqueConstraintViolationException(\",\"825\":\"                    $this->getName(), $query, $this->prepareBindings($bindings), $e\",\"826\":\"                );\",\"827\":\"            }\",\"828\":\"\",\"829\":\"            throw new QueryException(\",\"830\":\"                $this->getName(), $query, $this->prepareBindings($bindings), $e\",\"831\":\"            );\",\"832\":\"        }\",\"833\":\"    }\",\"834\":\"\",\"835\":\"    \\/**\",\"836\":\"     * Determine if the given database exception was caused by a unique constraint violation.\",\"837\":\"     *\",\"838\":\"     * @param  \\\\Exception  $exception\",\"839\":\"     * @return bool\"},\"hostname\":\"DESKTOP-359TRFP\",\"occurrences\":1}', '2024-06-06 21:51:07'),
(2, '9c39510a-da5a-4e0c-8bd9-ac9619e9c2a7', '9c39510b-8b1c-40c9-b899-b865f3c46edc', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select table_name as `name`, (data_length + index_length) as `size`, table_comment as `comment`, engine as `engine`, table_collation as `collation` from information_schema.tables where table_schema = \'tech-magnet\' and table_type in (\'BASE TABLE\', \'SYSTEM VERSIONED\') order by table_name\",\"time\":\"91.01\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\artisan\",\"line\":35,\"hash\":\"e258a6bc3ce69da785702d6bfffdae19\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:51:07'),
(3, '9c39510a-e090-49a0-869e-a6a815241bc4', '9c39510b-8b1c-40c9-b899-b865f3c46edc', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select table_name as `name`, (data_length + index_length) as `size`, table_comment as `comment`, engine as `engine`, table_collation as `collation` from information_schema.tables where table_schema = \'tech-magnet\' and table_type in (\'BASE TABLE\', \'SYSTEM VERSIONED\') order by table_name\",\"time\":\"2.16\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\artisan\",\"line\":35,\"hash\":\"e258a6bc3ce69da785702d6bfffdae19\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:51:07'),
(4, '9c39510a-e438-4e46-8f8f-96fed22d5a86', '9c39510b-8b1c-40c9-b899-b865f3c46edc', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"1.77\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\artisan\",\"line\":35,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:51:07'),
(5, '9c39510a-e5d4-4d58-963a-b9ebaaa0ed34', '9c39510b-8b1c-40c9-b899-b865f3c46edc', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.77\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\artisan\",\"line\":35,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:51:07'),
(6, '9c39510a-e747-469a-9686-800b7fbee635', '9c39510b-8b1c-40c9-b899-b865f3c46edc', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`batch`) as aggregate from `migrations`\",\"time\":\"1.66\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\artisan\",\"line\":35,\"hash\":\"06e60d7b3d1a0c2de504de4e6f27735e\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:51:07'),
(7, '9c39510b-06d2-4595-8d7a-4f9b62a7340b', '9c39510b-8b1c-40c9-b899-b865f3c46edc', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_entries` (`sequence` bigint unsigned not null auto_increment primary key, `uuid` char(36) not null, `batch_id` char(36) not null, `family_hash` varchar(255) null, `should_display_on_index` tinyint(1) not null default \'1\', `type` varchar(20) not null, `content` longtext not null, `created_at` datetime null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"60.70\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":24,\"hash\":\"d9429550f8856c1af1c89f24a6440cb5\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:51:07'),
(8, '9c39510b-0e2f-4674-be7f-2f424cdb57be', '9c39510b-8b1c-40c9-b899-b865f3c46edc', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add unique `telescope_entries_uuid_unique`(`uuid`)\",\"time\":\"18.10\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":24,\"hash\":\"9fb859ae1faff74c6b9e0b70dfd8eea9\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:51:07'),
(9, '9c39510b-1286-4dae-9858-861b2f8cc51a', '9c39510b-8b1c-40c9-b899-b865f3c46edc', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_batch_id_index`(`batch_id`)\",\"time\":\"10.35\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":24,\"hash\":\"2b075509a9242d6e3f622536c5ccca07\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:51:07'),
(10, '9c39510b-179c-425c-a1e8-9e85fa819f06', '9c39510b-8b1c-40c9-b899-b865f3c46edc', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_family_hash_index`(`family_hash`)\",\"time\":\"12.37\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":24,\"hash\":\"3d25a2a244bd2028dfa0326d3dbf7f4c\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:51:07'),
(11, '9c39510b-1bd0-4451-9962-a544fc2d0c60', '9c39510b-8b1c-40c9-b899-b865f3c46edc', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_created_at_index`(`created_at`)\",\"time\":\"10.09\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":24,\"hash\":\"7352e7f84460fb7ffc450e7ea4de9dc7\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:51:07'),
(12, '9c39510b-1fc9-442d-b2c6-8094a25d983f', '9c39510b-8b1c-40c9-b899-b865f3c46edc', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_type_should_display_on_index_index`(`type`, `should_display_on_index`)\",\"time\":\"9.54\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":24,\"hash\":\"7317a4cad2dfa1a5167548a6acd0b6a5\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:51:07'),
(13, '9c39510b-23ab-4124-811a-182c5ce63c51', '9c39510b-8b1c-40c9-b899-b865f3c46edc', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_entries_tags` (`entry_uuid` char(36) not null, `tag` varchar(255) not null, primary key (`entry_uuid`, `tag`)) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"8.49\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":41,\"hash\":\"f8c7e1e3c3d557b70e7a918609f839f2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:51:07'),
(14, '9c39510b-3d89-4463-b78a-8c26ab3f7e43', '9c39510b-8b1c-40c9-b899-b865f3c46edc', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries_tags` add index `telescope_entries_tags_tag_index`(`tag`)\",\"time\":\"65.54\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":41,\"hash\":\"0bdb35d17e876d6225a7774a2c17647d\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:51:07'),
(15, '9c39510b-5f7b-4e5e-840b-8547f1401ac2', '9c39510b-8b1c-40c9-b899-b865f3c46edc', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries_tags` add constraint `telescope_entries_tags_entry_uuid_foreign` foreign key (`entry_uuid`) references `telescope_entries` (`uuid`) on delete cascade\",\"time\":\"86.10\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":41,\"hash\":\"662a818f80a3a9ba2570081fd7a6af2f\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:51:07'),
(16, '9c39510b-699d-4ba9-a7fa-eb7cb3aeb9f5', '9c39510b-8b1c-40c9-b899-b865f3c46edc', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_monitoring` (`tag` varchar(255) not null, primary key (`tag`)) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"24.79\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\database\\\\migrations\\\\2018_08_08_100000_create_telescope_entries_table.php\",\"line\":54,\"hash\":\"18d1fa09eade84a80848982d91caec5c\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:51:07'),
(17, '9c39510b-6c7d-463d-93a5-b268acb5ee00', '9c39510b-8b1c-40c9-b899-b865f3c46edc', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2018_08_08_100000_create_telescope_entries_table\', 19)\",\"time\":\"1.95\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\artisan\",\"line\":35,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:51:07'),
(18, '9c39510b-6f8b-4a38-879b-9a6ffe0ac59b', '9c39510b-8b1c-40c9-b899-b865f3c46edc', NULL, 1, 'command', '{\"command\":\"migrate\",\"exit_code\":1,\"arguments\":{\"command\":\"migrate\"},\"options\":{\"database\":null,\"force\":false,\"path\":[],\"realpath\":false,\"schema-path\":null,\"pretend\":false,\"seed\":false,\"seeder\":null,\"step\":false,\"isolated\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:51:07'),
(19, '9c395186-d494-421f-bd0b-020fa15576ed', '9c395187-0817-4675-8338-73839ff915ca', NULL, 1, 'debugbar', '{\"requestId\":\"X7a2ab4ab0fe4785e4928d491b7c87e0d\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:52:28'),
(20, '9c395187-05c1-4fba-b70c-587290c8f288', '9c395187-0817-4675-8338-73839ff915ca', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/home\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\HomeController@index\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlJqRVdpQ25IaFZpUjBTK0ZMVGwvcUE9PSIsInZhbHVlIjoiVG14UXBnMmlpUlRvTUNCOVVQemlBM01rOWtQMEtXUTYzQ3VZSm03bGQ3UnNxbHNDRjB5NXVGMm4rSW9pZDdwN3RrcWdONGhxdERrSEk0T0hRVjJQWkFWd3JxZjV0bXlxdWRZcmh3bElKdisrNHlvVUxtaTN4U0lLbFQxMjlueUEiLCJtYWMiOiI1YjU4ZmFkNjBlZjAxNTE2NGJhY2UxOGQxODM4MThjZTdiNjVjODM4NTZmZTFlNmI3MmI4NDljMWNlNzkxOGYwIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjJ4cGJjRlA4RXIxYUw1V011UGxvenc9PSIsInZhbHVlIjoiTjF0aStaanhLTEE1MFU4M3k4TDFwK05ydkdXZ05DTUZLK3ZqdGNOZ2xjcVZvWE4zNG5jMlA2NHMwRUlhR2ErQzd4dVNiSytsUnJLUmJMbmhoRkt1MlEzN3ZSRExvNmxZMWxLSjlUSkJNS2g3eldUbUtEYmZLb3Q4K3FBQ2E4UVEiLCJtYWMiOiJiZGUzZWMyYjM4NTVmOTJkNzNmYTg1NjNhYjNmZmYxOWNjNGIyMjQxOWVjYTVlM2I1YTQ3NTE5YjFlMDcwOTQ4IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"cFIcFj5FbibgxZ4bWHVWSChdnWaUdI5NjU5TY33k\",\"_flash\":{\"old\":[],\"new\":[]},\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/home\"},\"url\":{\"intended\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/home\"},\"PHPDEBUGBAR_STACK_DATA\":{\"X7a2ab4ab0fe4785e4928d491b7c87e0d\":null}},\"response_status\":302,\"response\":\"Redirected to http:\\/\\/tech-magnet.edu:81\\/login\",\"duration\":659,\"memory\":24,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:52:28'),
(21, '9c395187-9d09-48ee-9637-a861ca897008', '9c395188-da47-41fc-9678-e92957454495', NULL, 1, 'cache', '{\"type\":\"missed\",\"key\":\"94d92f976fd06fd3e8cf53ec4e03d646\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:52:29'),
(22, '9c395187-afc5-4d6d-a9f3-de2b642df0d2', '9c395188-da47-41fc-9678-e92957454495', NULL, 1, 'view', '{\"name\":\"auth.login\",\"path\":\"\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:52:29'),
(23, '9c395188-c2d9-44f9-84cc-fc22feec904e', '9c395188-da47-41fc-9678-e92957454495', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"94d92f976fd06fd3e8cf53ec4e03d646\",\"value\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:52:29'),
(24, '9c395188-cf79-49a6-a244-0bcd5e417434', '9c395188-da47-41fc-9678-e92957454495', NULL, 1, 'debugbar', '{\"requestId\":\"X21e008eb747eec6e8e6ca21dbe355537\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:52:29'),
(25, '9c395188-d06a-4d33-9ee5-34e9202bce39', '9c395188-da47-41fc-9678-e92957454495', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/login\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Auth\\\\LoginController@showLoginForm\",\"middleware\":[\"web\",\"guest:admin\",\"throttle:login\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlQxK3kvTWFqVlpCSGVhL2U2aEdUNGc9PSIsInZhbHVlIjoiV2hQYW5NajRoangyaFZWT1pVT0k3eVJFSjB6eUZITU9MYTNGeEFMaFpXWm10U3NySk1ERlJZUHZ1MnFwNENZdzNUVEU0ZFpnYjdpcGhaT01hVUs5cFdRd1ZWa0xCT283Y0dvSERxQjZLSzc0ekZmSmVhVTJLVE83dHJXT2cwRlAiLCJtYWMiOiJjODA0NWM0N2FlNmRmZDA4Nzc0NjI2NzEzMjRhNDE0ZWMyNzU5MzdkNTE4ZjVmZTQ4MTFiYjc3NzY0MmU5YTkyIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IldjNWZ1eWdsanBKTjdHc3lLdVQxVXc9PSIsInZhbHVlIjoiY2x1V3FGVDlpMGRBcjlHMHRuVUppendlZHkrVGlaTndVZDB5MENZcVN5dUp4VkxJK2ZlTU5FQ3dtbFhON3pCbkx0L0dhbUxsRkRRZzVlUHkrOWFGQjRiYkVKU2pQcVlCdWt3eW82L2NBZlg2ODJERlJJM21pWnJvUHZwakRPa0oiLCJtYWMiOiJiMWYzNjE1NTc2ZmYyY2IxMTk1NDE0OTZkZmVkN2JlY2M0ZjNlOWRkMzIwM2JiYzIxNTI2OGRlOTNmZWQxYjNkIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"cFIcFj5FbibgxZ4bWHVWSChdnWaUdI5NjU5TY33k\",\"_flash\":{\"old\":[],\"new\":[]},\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/login\"},\"url\":{\"intended\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/home\"},\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[]},\"duration\":1165,\"memory\":24,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:52:29'),
(26, '9c39519a-b125-43f5-b03d-563fcb13e48b', '9c39519b-1183-49c7-ad79-7b8d073c21c4', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"94d92f976fd06fd3e8cf53ec4e03d646\",\"value\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:52:41'),
(27, '9c39519a-c990-4c33-8490-f8517d4a50cb', '9c39519b-1183-49c7-ad79-7b8d073c21c4', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `email` = \'a12@gmail.com\' limit 1\",\"time\":\"12.78\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Auth\\\\LoginController.php\",\"line\":52,\"hash\":\"0b1e37fc6482f6b003de3251f34064ca\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:52:41'),
(28, '9c39519a-caec-408c-8364-5b7b8b329650', '9c39519b-1183-49c7-ad79-7b8d073c21c4', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:52:41'),
(29, '9c39519a-fd81-40d4-9c88-4fce4f37e1c4', '9c39519b-1183-49c7-ad79-7b8d073c21c4', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"94d92f976fd06fd3e8cf53ec4e03d646\",\"value\":2,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:52:41'),
(30, '9c39519b-0505-47ee-a28e-568d858b98c7', '9c39519b-1183-49c7-ad79-7b8d073c21c4', NULL, 1, 'debugbar', '{\"requestId\":\"Xe39d7b46fb868e34bd638d6618b42f74\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:52:41'),
(31, '9c39519b-0ed2-4316-af2c-45a21e763f34', '9c39519b-1183-49c7-ad79-7b8d073c21c4', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/login\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Auth\\\\LoginController@login\",\"middleware\":[\"web\",\"guest:admin\",\"throttle:login\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"content-length\":\"99\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"origin\":\"http:\\/\\/tech-magnet.edu:81\",\"content-type\":\"application\\/x-www-form-urlencoded\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/login\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IkZUc2xMUUJHbEdVOEZmc25keFVRS2c9PSIsInZhbHVlIjoiSlNJaHFJR05tQm1Oc3FkaWUzWXY3L0xUbVR0bjd6LytUaG5RcGltZ3JUUEFsc09LekpvSHJmRVlzNm53bHRZOS82eHd1MFdEaG5JMTMrNmJaaTJVV0xDSTlNejIzQjlHam9YVzF4VDFoUHBJVkcydUtnbGE1Z2NXYytITThFL2QiLCJtYWMiOiIxODE4ODMzOTI5ZTVhMjg2ZWU5MDlkZTJkYTk0ODAwNTBkYzYzNWVjNTIzODllMDhkODQ4NTU1Y2M4MTY5Mzc3IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImFWWWNIRnQydG5WTjVYczI5UmdsYUE9PSIsInZhbHVlIjoiLzJKT2ZIR3JrNEdiTmdhd3haZnQzN3JqTjBIM1RRR1JlcjJGSkNIOW9BUE45Uk9xcEdVaHZKYjh5d2V2TXl1cnFYR2g2blVkTXkxcEQ4bEJYWDZlbGtrYW5qbDZPb2dNZGh1L2R2R2gxTDhyK1c1aEhSa0dPdkhNbDlQUHF3ZlgiLCJtYWMiOiIxNzVmMTgxNDcwMjA2Y2MxMTUwZjFhY2IzODEzZWMwZjgxMDMzYmNkNDMwMDU5ZTM5ZWMwYzM5MGI0MDc2MDA0IiwidGFnIjoiIn0%3D\"},\"payload\":{\"_token\":\"cFIcFj5FbibgxZ4bWHVWSChdnWaUdI5NjU5TY33k\",\"email\":\"a12@gmail.com\",\"password\":\"********\",\"remember\":\"on\"},\"session\":{\"_token\":\"4mPElVvfeLGIdfwSvsxMKzvt59HPow3JsC1aeWyD\",\"_flash\":{\"old\":[\"message\"],\"new\":[]},\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/login\"},\"url\":[],\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"message\":\"Welcome Administrator\",\"PHPDEBUGBAR_STACK_DATA\":{\"Xe39d7b46fb868e34bd638d6618b42f74\":null}},\"response_status\":302,\"response\":\"Redirected to http:\\/\\/tech-magnet.edu:81\\/admin\\/home\",\"duration\":753,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:52:41'),
(32, '9c39519b-9cc3-4249-8f0e-1fdf0667ab25', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"2.92\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:52:42'),
(33, '9c39519b-a065-4da4-9fc1-b6bdd6aacf15', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:52:42'),
(34, '9c39519b-a3d4-47da-8a6e-710b963eab9b', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `courses`\",\"time\":\"1.21\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":19,\"hash\":\"3c8c698f59a23e785490347ccf9abc89\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:42'),
(35, '9c39519b-a592-43e9-b209-09fcbd5e0a2a', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `blogs`\",\"time\":\"1.18\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":22,\"hash\":\"4b32d88c746db4e89f34760372fb0b5f\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:42'),
(36, '9c39519b-a799-4666-bf89-4c3f63b9dc50', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `categories`\",\"time\":\"1.37\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":25,\"hash\":\"e9e8c8e147366a96f2b9a9a91870ee32\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:42'),
(37, '9c39519b-a9d4-4c24-af5d-4a6ba9e36ff6', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `users`\",\"time\":\"1.22\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":28,\"hash\":\"6c5274cfac96d79f6367317dfb756038\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:42'),
(38, '9c39519b-ab24-4355-9d24-24451f0a9cbb', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `courses` where month(`created_at`) = \'05\'\",\"time\":\"0.98\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":30,\"hash\":\"41519cd53f70253ac2b679a8b197a3bb\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:42'),
(39, '9c39519b-aca7-40eb-8394-4798798cedd8', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Course\",\"count\":12,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:42'),
(40, '9c39519b-ae55-49b3-b655-e433f5452696', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `categories` where `categories`.`id` in (1, 2, 3, 4)\",\"time\":\"0.58\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":30,\"hash\":\"6ea351314dfabb33b6bba13f136f3cda\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:42'),
(41, '9c39519b-af85-47c3-af5c-205c396b91f7', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Category\",\"count\":4,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:42'),
(42, '9c39519b-b0da-4e6d-818e-622a6288795d', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `objectives` where `objectives`.`id` in (1, 2, 3)\",\"time\":\"1.28\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":30,\"hash\":\"3c47781b5bfa5a6fd05a6b3ecb66fcd1\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:42'),
(43, '9c39519b-b305-4b10-ad4a-e7dcc4ac9286', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Objective\",\"count\":3,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:42'),
(44, '9c39519b-b585-49ca-a56c-adbbe9181a77', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `images` where `images`.`imageable_id` in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12) and `images`.`imageable_type` = \'App\\\\Models\\\\Course\'\",\"time\":\"1.83\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":30,\"hash\":\"92aabdcbd23bca6cee0447e615aa6d4d\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:42'),
(45, '9c39519b-b6a9-4462-87c0-25ca274518f1', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Image\",\"count\":12,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:42'),
(46, '9c39519b-b974-4fec-a951-25dbb5b2a598', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'view', '{\"name\":\"home\",\"path\":\"\\\\resources\\\\views\\/home.blade.php\",\"data\":[\"courses\",\"blogs\",\"categories\",\"enrollments\",\"coursesThisMonth\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:42'),
(47, '9c39519b-dc4c-414a-bc4f-70b528b46759', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'view', '{\"name\":\"layouts.messages\",\"path\":\"\\\\resources\\\\views\\/layouts\\/messages.blade.php\",\"data\":[\"courses\",\"blogs\",\"categories\",\"enrollments\",\"coursesThisMonth\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:42'),
(48, '9c39519b-dddf-400a-a3db-6cab92c01e30', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'view', '{\"name\":\"layouts.master\",\"path\":\"\\\\resources\\\\views\\/layouts\\/master.blade.php\",\"data\":[\"courses\",\"blogs\",\"categories\",\"enrollments\",\"coursesThisMonth\",\"__currentLoopData\",\"course\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:42'),
(49, '9c39519b-debc-45d1-a404-79942e2087cd', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'view', '{\"name\":\"layouts.sidebar\",\"path\":\"\\\\resources\\\\views\\/layouts\\/sidebar.blade.php\",\"data\":[\"courses\",\"blogs\",\"categories\",\"enrollments\",\"coursesThisMonth\",\"__currentLoopData\",\"course\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:42'),
(50, '9c39519b-e10a-442c-9e3a-b474d28a9450', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'view', '{\"name\":\"layouts.footer\",\"path\":\"\\\\resources\\\\views\\/layouts\\/footer.blade.php\",\"data\":[\"courses\",\"blogs\",\"categories\",\"enrollments\",\"coursesThisMonth\",\"__currentLoopData\",\"course\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:42'),
(51, '9c39519b-e85a-4cbf-a6ff-623fe1fecfdd', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'debugbar', '{\"requestId\":\"Xe16f05871daf762b5b2e6e85983f6dd5\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:52:42'),
(52, '9c39519b-ef40-41ce-bd1e-77c9a6a59883', '9c39519b-f19b-4e52-81f3-20415d31020c', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/home\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\HomeController@index\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/login\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlNqMGkrU041MGNyUUc3cXZUemI3SXc9PSIsInZhbHVlIjoiTmUzeEV3M2VjY1RyRU1rZnZTS1hUOHovTlFmcytNaEV3WHNpbDNkWTNiQXlqbVROVnpVUnJ5WmRPSnRTbHBkOVUxUFNRTHV1eDAra0NsOWpabzNJbUJNcklSRVpvbHBYVGFPZFp4V1hKeEFZOFd1RGdiTnV5RWxsbUJWOTFuZU4iLCJtYWMiOiI4YWQxYzc4MzA1NmVjYjliYjMwZGY5MTQxM2I5MDc2ZGFlOTViZmE1M2E3ZmM2MDQ3YWM1NGE5NDIyZGU1NTgwIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjdIWjJ5RW1GSUpjQmZEc0ZiM0pqS1E9PSIsInZhbHVlIjoiLzZtdmlyWkhTTnJqcFFhdHR4blVwYk1GYVVBblBLWlBSRDJYbXhNcnh4c1pjTzR4elVzTHZyaEV1d1dxWVVyNVlXOVlpdm1qV1MxMkpZaVo5alMzbXVPTTM0aUpUTEMyZ3ZtN1g0L1JSYmxtN2tUWklrd3VVaGZzN0NsbXhjbkkiLCJtYWMiOiI5Nzg0N2FiZDQzMjdiYTE4MDk5NGUyM2UzNTVmMDI0NDE5YmM2ZTY5Y2I4ZDk2MTI0ZDhlYjdiOWI2YWU0Mjg0IiwidGFnIjoiIn0%3D; remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6ImVnY0ZIcWdhc1hCbEVrVkFjYldKT1E9PSIsInZhbHVlIjoieWRYeng1TThFQVh5K3RNQzVtb1RDaDlpK2JGYzdwVjBHSUZTSXZOUkRCMmMxMkNVTllCNnhWd2RyaUx0OVlsZmYzVDdqalhSQk1PQzZDbzdDZEh2dzRRaWZTdkE3cUFwdGxUSmQvQ2F1THBZTUtwVDRXQUJFRXFjTVhrVHovZ29TZXphaEtOeXZ3Ymh5c2N2blhOemRTQ2NaVXEvd3lQUVJNTmxTaUF4bC9CS2Q1OW9OdG9yaXpKUFB2MlVtZGZ0TDE1MThoeXJpRUg2eHRtaDJXVHBvdElPdDk0MEhJWFVORlNiM084OW00dz0iLCJtYWMiOiI1ZjZlMjk5OTRiMzVkOTA3MThlYzFmN2Y4NzUzMjVlY2Y5YjdiYmFiZWRjYjI0OWJiNDcyMzBlNjUyMjUyYjIzIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"4mPElVvfeLGIdfwSvsxMKzvt59HPow3JsC1aeWyD\",\"_flash\":{\"old\":[],\"new\":[]},\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/home\"},\"url\":[],\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/home.blade.php\",\"data\":{\"courses\":12,\"blogs\":4,\"categories\":4,\"enrollments\":21,\"coursesThisMonth\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"name\":\"Web development essentials\",\"description\":\"the fundamental building blocks of creating websites and web applications. It\'s like having a toolbox with the most important tools for this job.\",\"price\":6000,\"hours\":30,\"category_id\":1,\"objective_id\":1,\"created_at\":\"2024-05-22T16:33:06.000000Z\",\"updated_at\":\"2024-05-23T10:57:15.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":1,\"name\":\"Master the Essentials\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":18,\"path\":\"2024-05-23-03-16-56.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":1,\"created_at\":\"2024-05-23T12:16:56.000000Z\",\"updated_at\":\"2024-05-23T12:16:56.000000Z\"}},{\"id\":2,\"name\":\"Frontend course\",\"description\":\"designed to provide you with a comprehensive introduction to the essential concepts, tools, and techniques required to build modern and user-friendly websites\",\"price\":6000,\"hours\":80,\"category_id\":1,\"objective_id\":2,\"created_at\":\"2024-05-22T17:15:50.000000Z\",\"updated_at\":\"2024-05-23T10:57:29.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":15,\"path\":\"2024-05-23-03-11-15.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":2,\"created_at\":\"2024-05-23T12:11:15.000000Z\",\"updated_at\":\"2024-05-23T12:11:15.000000Z\"}},{\"id\":3,\"name\":\"Full Stack Diploma\",\"description\":\"comprehensive program designed to equip you with the skills and knowledge required to build dynamic and interactive web applications\",\"price\":12000,\"hours\":140,\"category_id\":1,\"objective_id\":3,\"created_at\":\"2024-05-22T17:28:29.000000Z\",\"updated_at\":\"2024-05-23T10:57:48.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":3,\"name\":\"Tech Professionals\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":17,\"path\":\"2024-05-23-03-15-49.png\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":3,\"created_at\":\"2024-05-23T12:15:49.000000Z\",\"updated_at\":\"2024-05-23T12:15:49.000000Z\"}},{\"id\":4,\"name\":\"Graphic Desgin\",\"description\":\"This course focuses on developing your creativity and visual communication skills to create visually appealing and effective designs for various mediums.\",\"price\":6000,\"hours\":60,\"category_id\":2,\"objective_id\":2,\"created_at\":\"2024-05-22T17:32:50.000000Z\",\"updated_at\":\"2024-05-23T10:58:01.000000Z\",\"category\":{\"id\":2,\"name\":\"Design\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":5,\"path\":\"2024-05-22-08-28-29.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":4,\"created_at\":\"2024-05-22T17:28:29.000000Z\",\"updated_at\":\"2024-05-22T17:28:29.000000Z\"}},{\"id\":5,\"name\":\"UI\\/UX\",\"description\":\"The UI\\/UX Design Fundamentals course is designed to provide you with a comprehensive understanding of user interface (UI) and user experience (UX) design principles and practices.\",\"price\":6000,\"hours\":75,\"category_id\":2,\"objective_id\":2,\"created_at\":\"2024-05-22T17:34:14.000000Z\",\"updated_at\":\"2024-05-23T11:08:53.000000Z\",\"category\":{\"id\":2,\"name\":\"Design\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":6,\"path\":\"2024-05-22-08-32-50.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":5,\"created_at\":\"2024-05-22T17:32:50.000000Z\",\"updated_at\":\"2024-05-22T17:32:50.000000Z\"}},{\"id\":6,\"name\":\"Essentials of Python\",\"description\":\"The Essentials of Python course is designed to provide you with a comprehensive introduction to the Python programming language.<span style=\\\"background-color: rgb(247, 247, 247); color: rgb(0, 0, 0); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif; font-size: 18px;\\\">&nbsp;<\\/span>&nbsp;Python is widely used for various applications, including web development, data analysis, scientific computing, and automation. This course is suitable for beginners with no prior programming experience as well as those with programming knowledge in other languages who want to learn Python\",\"price\":6000,\"hours\":55,\"category_id\":3,\"objective_id\":1,\"created_at\":\"2024-05-22T17:38:08.000000Z\",\"updated_at\":\"2024-05-23T10:58:53.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":1,\"name\":\"Master the Essentials\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":7,\"path\":\"2024-05-22-08-34-14.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":6,\"created_at\":\"2024-05-22T17:34:14.000000Z\",\"updated_at\":\"2024-05-22T17:34:14.000000Z\"}},{\"id\":7,\"name\":\"AI\",\"description\":\"AI is a rapidly growing field that focuses on creating intelligent systems capable of performing tasks that typically require human intelligence. This course aims to equip you with a foundational understanding of AI concepts and techniques.\",\"price\":6000,\"hours\":160,\"category_id\":3,\"objective_id\":2,\"created_at\":\"2024-05-22T17:39:55.000000Z\",\"updated_at\":\"2024-05-23T10:59:13.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":8,\"path\":\"2024-05-22-08-38-08.png\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":7,\"created_at\":\"2024-05-22T17:38:08.000000Z\",\"updated_at\":\"2024-05-22T17:38:08.000000Z\"}},{\"id\":8,\"name\":\"Deep and Machine Learning\",\"description\":\"The Deep and Machine Learning Fundamentals course is designed to provide you with a comprehensive understanding of deep learning and machine learning techniques. Deep learning focuses on training artificial neural networks with multiple layers to learn representations of data\",\"price\":10000,\"hours\":100,\"category_id\":3,\"objective_id\":2,\"created_at\":\"2024-05-22T17:42:25.000000Z\",\"updated_at\":\"2024-05-23T10:59:23.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":9,\"path\":\"2024-05-22-08-39-55.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":8,\"created_at\":\"2024-05-22T17:39:55.000000Z\",\"updated_at\":\"2024-05-22T17:39:55.000000Z\"}},{\"id\":9,\"name\":\"Data Scientist Diploma\",\"description\":\"The Data Scientist Diploma course is a comprehensive program designed to provide you with the knowledge and skills required to excel in the field of data science. Data science involves extracting insights and knowledge from large and complex datasets using various techniques, including statistical analysis, machine learning, and data visualization. This course covers a wide range of topics to equip you with the necessary skills to become a proficient data scientist.\",\"price\":12000,\"hours\":90,\"category_id\":3,\"objective_id\":3,\"created_at\":\"2024-05-22T17:47:18.000000Z\",\"updated_at\":\"2024-05-23T11:00:52.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":3,\"name\":\"Tech Professionals\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":10,\"path\":\"2024-05-22-08-42-25.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":9,\"created_at\":\"2024-05-22T17:42:25.000000Z\",\"updated_at\":\"2024-05-22T17:42:25.000000Z\"}},{\"id\":10,\"name\":\"Social media marketing Essentials\",\"description\":\"The Social Media Marketing Essentials course is designed to provide you with the knowledge and skills required to develop and implement effective social media marketing strategies. Social media platforms have become powerful tools for businesses to reach and engage with their target audience. This course will equip you with the essential techniques and best practices to leverage social media for marketing purposes.\",\"price\":6000,\"hours\":40,\"category_id\":4,\"objective_id\":1,\"created_at\":\"2024-05-22T17:50:54.000000Z\",\"updated_at\":\"2024-05-23T11:01:12.000000Z\",\"category\":{\"id\":4,\"name\":\"Digital Marketing\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":1,\"name\":\"Master the Essentials\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":11,\"path\":\"2024-05-22-08-47-18.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":10,\"created_at\":\"2024-05-22T17:47:18.000000Z\",\"updated_at\":\"2024-05-22T17:47:18.000000Z\"}},{\"id\":11,\"name\":\"Digital Marketing Diploma\",\"description\":\"The Digital Marketing Diploma is an extensive program designed to provide you with a comprehensive understanding of digital marketing strategies and techniques. In today\'s digital era, businesses rely on digital channels to reach and engage with their target audience. This course covers a wide range of topics to equip you with the necessary skills to plan, execute, and measure successful digital marketing campaigns.\",\"price\":12000,\"hours\":40,\"category_id\":4,\"objective_id\":3,\"created_at\":\"2024-05-22T17:56:43.000000Z\",\"updated_at\":\"2024-05-23T11:02:16.000000Z\",\"category\":{\"id\":4,\"name\":\"Digital Marketing\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":3,\"name\":\"Tech Professionals\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":12,\"path\":\"2024-05-22-08-50-54.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":11,\"created_at\":\"2024-05-22T17:50:54.000000Z\",\"updated_at\":\"2024-05-22T17:50:54.000000Z\"}},{\"id\":12,\"name\":\"Backend Course\",\"description\":\"The Backend Development Fundamentals course provides a comprehensive introduction to the principles, tools, and technologies involved in building the server-side of web applications. This course is designed for individuals who are interested in pursuing a career in backend development or seeking to enhance their existing programming skills\",\"price\":6000,\"hours\":140,\"category_id\":1,\"objective_id\":2,\"created_at\":\"2024-05-22T18:06:05.000000Z\",\"updated_at\":\"2024-05-23T11:01:51.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":13,\"path\":\"2024-05-22-08-56-43.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":12,\"created_at\":\"2024-05-22T17:56:43.000000Z\",\"updated_at\":\"2024-05-22T17:56:43.000000Z\"}}]}}},\"duration\":566,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:42'),
(53, '9c3951a3-8d2c-474b-ab6f-5e173969f314', '9c3951a3-ff32-45b0-97c8-b18454c467c8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"3.96\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:52:47');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(54, '9c3951a3-90b1-4875-8c25-f137341775c7', '9c3951a3-ff32-45b0-97c8-b18454c467c8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:52:47'),
(55, '9c3951a3-9351-4151-9f5f-9be80748b6ce', '9c3951a3-ff32-45b0-97c8-b18454c467c8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `categories`\",\"time\":\"0.68\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\CategoryController.php\",\"line\":16,\"hash\":\"ffdaa4ffbc3a31c3f7eb10d4bde8e569\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:47'),
(56, '9c3951a3-9433-4d4f-88ad-2b9b9b57349c', '9c3951a3-ff32-45b0-97c8-b18454c467c8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Category\",\"count\":4,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:47'),
(57, '9c3951a3-96b9-403e-92d5-41667c52c4ca', '9c3951a3-ff32-45b0-97c8-b18454c467c8', NULL, 1, 'view', '{\"name\":\"categories.index\",\"path\":\"\\\\resources\\\\views\\/categories\\/index.blade.php\",\"data\":[\"categories\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:47'),
(58, '9c3951a3-f23d-48cc-aa27-96703d96b86f', '9c3951a3-ff32-45b0-97c8-b18454c467c8', NULL, 1, 'view', '{\"name\":\"layouts.messages\",\"path\":\"\\\\resources\\\\views\\/layouts\\/messages.blade.php\",\"data\":[\"categories\",\"__empty_1\",\"__currentLoopData\",\"category\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:47'),
(59, '9c3951a3-f2b0-4b7d-864d-4dc66b2a9cba', '9c3951a3-ff32-45b0-97c8-b18454c467c8', NULL, 1, 'view', '{\"name\":\"layouts.master\",\"path\":\"\\\\resources\\\\views\\/layouts\\/master.blade.php\",\"data\":[\"categories\",\"__empty_1\",\"__currentLoopData\",\"category\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:47'),
(60, '9c3951a3-f328-4ac9-be5a-a5d0790b0cf4', '9c3951a3-ff32-45b0-97c8-b18454c467c8', NULL, 1, 'view', '{\"name\":\"layouts.sidebar\",\"path\":\"\\\\resources\\\\views\\/layouts\\/sidebar.blade.php\",\"data\":[\"categories\",\"__empty_1\",\"__currentLoopData\",\"category\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:47'),
(61, '9c3951a3-f449-476a-b6db-945a0be526be', '9c3951a3-ff32-45b0-97c8-b18454c467c8', NULL, 1, 'view', '{\"name\":\"layouts.footer\",\"path\":\"\\\\resources\\\\views\\/layouts\\/footer.blade.php\",\"data\":[\"categories\",\"__empty_1\",\"__currentLoopData\",\"category\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:47'),
(62, '9c3951a3-fb34-4f14-a377-ab581fe8a6fa', '9c3951a3-ff32-45b0-97c8-b18454c467c8', NULL, 1, 'debugbar', '{\"requestId\":\"X0325ee27445b7415bc977ffe94349a68\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 21:52:47'),
(63, '9c3951a3-fc86-44cb-bd94-fd6039769d45', '9c3951a3-ff32-45b0-97c8-b18454c467c8', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/categories\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\CategoryController@index\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/home\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6ImVnY0ZIcWdhc1hCbEVrVkFjYldKT1E9PSIsInZhbHVlIjoieWRYeng1TThFQVh5K3RNQzVtb1RDaDlpK2JGYzdwVjBHSUZTSXZOUkRCMmMxMkNVTllCNnhWd2RyaUx0OVlsZmYzVDdqalhSQk1PQzZDbzdDZEh2dzRRaWZTdkE3cUFwdGxUSmQvQ2F1THBZTUtwVDRXQUJFRXFjTVhrVHovZ29TZXphaEtOeXZ3Ymh5c2N2blhOemRTQ2NaVXEvd3lQUVJNTmxTaUF4bC9CS2Q1OW9OdG9yaXpKUFB2MlVtZGZ0TDE1MThoeXJpRUg2eHRtaDJXVHBvdElPdDk0MEhJWFVORlNiM084OW00dz0iLCJtYWMiOiI1ZjZlMjk5OTRiMzVkOTA3MThlYzFmN2Y4NzUzMjVlY2Y5YjdiYmFiZWRjYjI0OWJiNDcyMzBlNjUyMjUyYjIzIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IlZlbm01ZWxUZHIzQTJ3cmpITEE2RHc9PSIsInZhbHVlIjoiK1VxOS8zcFZxemhjNFdmVHlScVhzSllpd3NLS0g4U3ZQd0QrbExwc0dLY3IxNERvQ0Q0cnA2Q1lhVHNzZnlUVlhqbFRicGZlNm5qdGpPTWVxSEhCSlhidlNSVUE3NGcxR1BnQm5HY3llREk2Z2NWT0NIUVNiTUtkb1hGMWlRdW8iLCJtYWMiOiJjM2Q4YWYwZjQzNDExZTA2MGZlMzgzNTJlNWIwYmY5MWNmNjEyNzFhODkzOWJlNzczZWYxNTJjODMwNTM5NDEzIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImZ2Nkh0aXpySG02NDk0cVFpWUlueXc9PSIsInZhbHVlIjoiRXJFYWJ2dmNqVEltMHV3WlJrOFFwUkZodjNrY09tMlpLTTR3OUVsMWNPQmJCV0IySVM0ZGIxUG5kWUJOcVZaU3BXakF0aXZDUUVJNWJTeS91MXhUcUNsL3g0aGF0Y2FSQy8vKzA2RXRGeE5paVlFZUR3dmpEQ3RGdTV4dCtBWXAiLCJtYWMiOiIzZmYxYTcxYTQ4ZWIwOTVhYmNjNDMwOTIxMzgwYTUzOWMwNWEyYmY5ZGZkZTQ4ODQzMWJlNTgwNGMwOWJkMWFlIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"4mPElVvfeLGIdfwSvsxMKzvt59HPow3JsC1aeWyD\",\"_flash\":{\"old\":[],\"new\":[]},\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/categories\"},\"url\":[],\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/categories\\/index.blade.php\",\"data\":{\"categories\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},{\"id\":2,\"name\":\"Design\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},{\"id\":4,\"name\":\"Digital Marketing\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"}]}}},\"duration\":642,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 21:52:47'),
(64, '9c395496-7d83-45d0-a21f-5cd6bc86f135', '9c395496-c0dd-4ee3-8a56-2e0b468e93ef', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"17.89\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 22:01:02'),
(65, '9c395496-8168-4d6e-9a82-904dbcf4e354', '9c395496-c0dd-4ee3-8a56-2e0b468e93ef', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 22:01:02'),
(66, '9c395496-84c4-4e01-848f-1140200435fa', '9c395496-c0dd-4ee3-8a56-2e0b468e93ef', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `courses`\",\"time\":\"0.77\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\CourseController.php\",\"line\":17,\"hash\":\"76c75bd7a737aa4efeaa1f03213fef29\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 22:01:02'),
(67, '9c395496-85e1-41b0-8e0b-3afa4a07da1b', '9c395496-c0dd-4ee3-8a56-2e0b468e93ef', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Course\",\"count\":12,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 22:01:02'),
(68, '9c395496-87b8-413e-b21b-5ecfbe81c2d1', '9c395496-c0dd-4ee3-8a56-2e0b468e93ef', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `categories` where `categories`.`id` in (1, 2, 3, 4)\",\"time\":\"0.76\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\CourseController.php\",\"line\":17,\"hash\":\"6ea351314dfabb33b6bba13f136f3cda\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 22:01:02'),
(69, '9c395496-88e9-4100-8977-6de7c7fb0725', '9c395496-c0dd-4ee3-8a56-2e0b468e93ef', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Category\",\"count\":4,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 22:01:02'),
(70, '9c395496-8a32-4603-87f3-eb4cf3d881cf', '9c395496-c0dd-4ee3-8a56-2e0b468e93ef', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `objectives` where `objectives`.`id` in (1, 2, 3)\",\"time\":\"1.12\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\CourseController.php\",\"line\":17,\"hash\":\"3c47781b5bfa5a6fd05a6b3ecb66fcd1\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 22:01:02'),
(71, '9c395496-8b50-4f40-99e9-5598c1230ff3', '9c395496-c0dd-4ee3-8a56-2e0b468e93ef', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Objective\",\"count\":3,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 22:01:02'),
(72, '9c395496-8d45-4851-8122-853fabebf2a6', '9c395496-c0dd-4ee3-8a56-2e0b468e93ef', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `images` where `images`.`imageable_id` in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12) and `images`.`imageable_type` = \'App\\\\Models\\\\Course\'\",\"time\":\"0.87\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\CourseController.php\",\"line\":17,\"hash\":\"92aabdcbd23bca6cee0447e615aa6d4d\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 22:01:02'),
(73, '9c395496-8e6f-43a5-9dc6-fe7c5598a82a', '9c395496-c0dd-4ee3-8a56-2e0b468e93ef', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Image\",\"count\":12,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 22:01:02'),
(74, '9c395496-9181-4cc4-8eab-afc4b9d74248', '9c395496-c0dd-4ee3-8a56-2e0b468e93ef', NULL, 1, 'view', '{\"name\":\"courses.index\",\"path\":\"\\\\resources\\\\views\\/courses\\/index.blade.php\",\"data\":[\"courses\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 22:01:02'),
(75, '9c395496-9bf9-4994-b5a9-dccbc1e80db1', '9c395496-c0dd-4ee3-8a56-2e0b468e93ef', NULL, 1, 'view', '{\"name\":\"layouts.messages\",\"path\":\"\\\\resources\\\\views\\/layouts\\/messages.blade.php\",\"data\":[\"courses\",\"__empty_1\",\"__currentLoopData\",\"course\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 22:01:02'),
(76, '9c395496-9c7d-4e56-ba65-04e3aa16e22f', '9c395496-c0dd-4ee3-8a56-2e0b468e93ef', NULL, 1, 'view', '{\"name\":\"layouts.master\",\"path\":\"\\\\resources\\\\views\\/layouts\\/master.blade.php\",\"data\":[\"courses\",\"__empty_1\",\"__currentLoopData\",\"course\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 22:01:02'),
(77, '9c395496-9d26-4604-9bde-7e55c58b7130', '9c395496-c0dd-4ee3-8a56-2e0b468e93ef', NULL, 1, 'view', '{\"name\":\"layouts.sidebar\",\"path\":\"\\\\resources\\\\views\\/layouts\\/sidebar.blade.php\",\"data\":[\"courses\",\"__empty_1\",\"__currentLoopData\",\"course\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 22:01:02'),
(78, '9c395496-9e51-4b59-896b-14862da6a49e', '9c395496-c0dd-4ee3-8a56-2e0b468e93ef', NULL, 1, 'view', '{\"name\":\"layouts.footer\",\"path\":\"\\\\resources\\\\views\\/layouts\\/footer.blade.php\",\"data\":[\"courses\",\"__empty_1\",\"__currentLoopData\",\"course\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 22:01:02'),
(79, '9c395496-a7bc-47d8-9bbb-65b516c0373d', '9c395496-c0dd-4ee3-8a56-2e0b468e93ef', NULL, 1, 'debugbar', '{\"requestId\":\"X4c80110252184ccefc0beb71853e6779\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 22:01:02'),
(80, '9c395496-b8e9-484b-ae02-040a64bde516', '9c395496-c0dd-4ee3-8a56-2e0b468e93ef', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/courses\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\CourseController@index\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/categories\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6ImVnY0ZIcWdhc1hCbEVrVkFjYldKT1E9PSIsInZhbHVlIjoieWRYeng1TThFQVh5K3RNQzVtb1RDaDlpK2JGYzdwVjBHSUZTSXZOUkRCMmMxMkNVTllCNnhWd2RyaUx0OVlsZmYzVDdqalhSQk1PQzZDbzdDZEh2dzRRaWZTdkE3cUFwdGxUSmQvQ2F1THBZTUtwVDRXQUJFRXFjTVhrVHovZ29TZXphaEtOeXZ3Ymh5c2N2blhOemRTQ2NaVXEvd3lQUVJNTmxTaUF4bC9CS2Q1OW9OdG9yaXpKUFB2MlVtZGZ0TDE1MThoeXJpRUg2eHRtaDJXVHBvdElPdDk0MEhJWFVORlNiM084OW00dz0iLCJtYWMiOiI1ZjZlMjk5OTRiMzVkOTA3MThlYzFmN2Y4NzUzMjVlY2Y5YjdiYmFiZWRjYjI0OWJiNDcyMzBlNjUyMjUyYjIzIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IkMvc1psczdTSC9HMHduK3dsN2xORmc9PSIsInZhbHVlIjoiNFl4VnpiaGczbEFuTXB2cDNzck1oWG1DSFp4eEJveXdOS0tGbE1jbXEvOUt5SC93Y3dieVVkSmR4VzhEbUF3WWhIdllwcWs5NG1CblpSSitLWTEycjZiWnY2Z2g4ZWdJZDZtTUVIQkVlZXpiektGVUdWNHhjZkxCRnRzaFRLRlQiLCJtYWMiOiIwNGU1NmE0MzI5YjRkMDYwZjAzZjM3ZWQ4YmZjZDE5ZDkzYTJkZTZjZGY1MmFkNDE2Y2I5ZWQ3ZDMxM2E0NGJiIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjBZMTk0Znl3cXRmR1BjUE80TDFpanc9PSIsInZhbHVlIjoiOElzMzRLMWRCSXZDc3VVWXN0NWsrUTdERm9LTEtObDVveUExeGVXT1NBZE9vMjlqZTJvRC9QeklYTVh3WVpBZ2FKaGF0eFZEL2pFUXlFZlIxZHR6aU56eHdYTXgvZ2VrSVNLYUtpTDdHeDlaaXk0Uk82bzJpbi9QYmFvRmhabGgiLCJtYWMiOiJmZDk5NzE0ZWVmODE1MDY1MjY5YThiYjBlOGExNzk3ZGU4MmM3YmRhZWEzZTgyOGUwM2FkZGU0NjY3NDcwOWRiIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"4mPElVvfeLGIdfwSvsxMKzvt59HPow3JsC1aeWyD\",\"_flash\":{\"old\":[],\"new\":[]},\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/courses\"},\"url\":[],\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/courses\\/index.blade.php\",\"data\":{\"courses\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"name\":\"Web development essentials\",\"description\":\"the fundamental building blocks of creating websites and web applications. It\'s like having a toolbox with the most important tools for this job.\",\"price\":6000,\"hours\":30,\"category_id\":1,\"objective_id\":1,\"created_at\":\"2024-05-22T16:33:06.000000Z\",\"updated_at\":\"2024-05-23T10:57:15.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":1,\"name\":\"Master the Essentials\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":18,\"path\":\"2024-05-23-03-16-56.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":1,\"created_at\":\"2024-05-23T12:16:56.000000Z\",\"updated_at\":\"2024-05-23T12:16:56.000000Z\"}},{\"id\":2,\"name\":\"Frontend course\",\"description\":\"designed to provide you with a comprehensive introduction to the essential concepts, tools, and techniques required to build modern and user-friendly websites\",\"price\":6000,\"hours\":80,\"category_id\":1,\"objective_id\":2,\"created_at\":\"2024-05-22T17:15:50.000000Z\",\"updated_at\":\"2024-05-23T10:57:29.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":15,\"path\":\"2024-05-23-03-11-15.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":2,\"created_at\":\"2024-05-23T12:11:15.000000Z\",\"updated_at\":\"2024-05-23T12:11:15.000000Z\"}},{\"id\":3,\"name\":\"Full Stack Diploma\",\"description\":\"comprehensive program designed to equip you with the skills and knowledge required to build dynamic and interactive web applications\",\"price\":12000,\"hours\":140,\"category_id\":1,\"objective_id\":3,\"created_at\":\"2024-05-22T17:28:29.000000Z\",\"updated_at\":\"2024-05-23T10:57:48.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":3,\"name\":\"Tech Professionals\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":17,\"path\":\"2024-05-23-03-15-49.png\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":3,\"created_at\":\"2024-05-23T12:15:49.000000Z\",\"updated_at\":\"2024-05-23T12:15:49.000000Z\"}},{\"id\":4,\"name\":\"Graphic Desgin\",\"description\":\"This course focuses on developing your creativity and visual communication skills to create visually appealing and effective designs for various mediums.\",\"price\":6000,\"hours\":60,\"category_id\":2,\"objective_id\":2,\"created_at\":\"2024-05-22T17:32:50.000000Z\",\"updated_at\":\"2024-05-23T10:58:01.000000Z\",\"category\":{\"id\":2,\"name\":\"Design\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":5,\"path\":\"2024-05-22-08-28-29.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":4,\"created_at\":\"2024-05-22T17:28:29.000000Z\",\"updated_at\":\"2024-05-22T17:28:29.000000Z\"}},{\"id\":5,\"name\":\"UI\\/UX\",\"description\":\"The UI\\/UX Design Fundamentals course is designed to provide you with a comprehensive understanding of user interface (UI) and user experience (UX) design principles and practices.\",\"price\":6000,\"hours\":75,\"category_id\":2,\"objective_id\":2,\"created_at\":\"2024-05-22T17:34:14.000000Z\",\"updated_at\":\"2024-05-23T11:08:53.000000Z\",\"category\":{\"id\":2,\"name\":\"Design\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":6,\"path\":\"2024-05-22-08-32-50.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":5,\"created_at\":\"2024-05-22T17:32:50.000000Z\",\"updated_at\":\"2024-05-22T17:32:50.000000Z\"}},{\"id\":6,\"name\":\"Essentials of Python\",\"description\":\"The Essentials of Python course is designed to provide you with a comprehensive introduction to the Python programming language.<span style=\\\"background-color: rgb(247, 247, 247); color: rgb(0, 0, 0); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif; font-size: 18px;\\\">&nbsp;<\\/span>&nbsp;Python is widely used for various applications, including web development, data analysis, scientific computing, and automation. This course is suitable for beginners with no prior programming experience as well as those with programming knowledge in other languages who want to learn Python\",\"price\":6000,\"hours\":55,\"category_id\":3,\"objective_id\":1,\"created_at\":\"2024-05-22T17:38:08.000000Z\",\"updated_at\":\"2024-05-23T10:58:53.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":1,\"name\":\"Master the Essentials\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":7,\"path\":\"2024-05-22-08-34-14.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":6,\"created_at\":\"2024-05-22T17:34:14.000000Z\",\"updated_at\":\"2024-05-22T17:34:14.000000Z\"}},{\"id\":7,\"name\":\"AI\",\"description\":\"AI is a rapidly growing field that focuses on creating intelligent systems capable of performing tasks that typically require human intelligence. This course aims to equip you with a foundational understanding of AI concepts and techniques.\",\"price\":6000,\"hours\":160,\"category_id\":3,\"objective_id\":2,\"created_at\":\"2024-05-22T17:39:55.000000Z\",\"updated_at\":\"2024-05-23T10:59:13.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":8,\"path\":\"2024-05-22-08-38-08.png\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":7,\"created_at\":\"2024-05-22T17:38:08.000000Z\",\"updated_at\":\"2024-05-22T17:38:08.000000Z\"}},{\"id\":8,\"name\":\"Deep and Machine Learning\",\"description\":\"The Deep and Machine Learning Fundamentals course is designed to provide you with a comprehensive understanding of deep learning and machine learning techniques. Deep learning focuses on training artificial neural networks with multiple layers to learn representations of data\",\"price\":10000,\"hours\":100,\"category_id\":3,\"objective_id\":2,\"created_at\":\"2024-05-22T17:42:25.000000Z\",\"updated_at\":\"2024-05-23T10:59:23.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":9,\"path\":\"2024-05-22-08-39-55.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":8,\"created_at\":\"2024-05-22T17:39:55.000000Z\",\"updated_at\":\"2024-05-22T17:39:55.000000Z\"}},{\"id\":9,\"name\":\"Data Scientist Diploma\",\"description\":\"The Data Scientist Diploma course is a comprehensive program designed to provide you with the knowledge and skills required to excel in the field of data science. Data science involves extracting insights and knowledge from large and complex datasets using various techniques, including statistical analysis, machine learning, and data visualization. This course covers a wide range of topics to equip you with the necessary skills to become a proficient data scientist.\",\"price\":12000,\"hours\":90,\"category_id\":3,\"objective_id\":3,\"created_at\":\"2024-05-22T17:47:18.000000Z\",\"updated_at\":\"2024-05-23T11:00:52.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":3,\"name\":\"Tech Professionals\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":10,\"path\":\"2024-05-22-08-42-25.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":9,\"created_at\":\"2024-05-22T17:42:25.000000Z\",\"updated_at\":\"2024-05-22T17:42:25.000000Z\"}},{\"id\":10,\"name\":\"Social media marketing Essentials\",\"description\":\"The Social Media Marketing Essentials course is designed to provide you with the knowledge and skills required to develop and implement effective social media marketing strategies. Social media platforms have become powerful tools for businesses to reach and engage with their target audience. This course will equip you with the essential techniques and best practices to leverage social media for marketing purposes.\",\"price\":6000,\"hours\":40,\"category_id\":4,\"objective_id\":1,\"created_at\":\"2024-05-22T17:50:54.000000Z\",\"updated_at\":\"2024-05-23T11:01:12.000000Z\",\"category\":{\"id\":4,\"name\":\"Digital Marketing\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":1,\"name\":\"Master the Essentials\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":11,\"path\":\"2024-05-22-08-47-18.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":10,\"created_at\":\"2024-05-22T17:47:18.000000Z\",\"updated_at\":\"2024-05-22T17:47:18.000000Z\"}},{\"id\":11,\"name\":\"Digital Marketing Diploma\",\"description\":\"The Digital Marketing Diploma is an extensive program designed to provide you with a comprehensive understanding of digital marketing strategies and techniques. In today\'s digital era, businesses rely on digital channels to reach and engage with their target audience. This course covers a wide range of topics to equip you with the necessary skills to plan, execute, and measure successful digital marketing campaigns.\",\"price\":12000,\"hours\":40,\"category_id\":4,\"objective_id\":3,\"created_at\":\"2024-05-22T17:56:43.000000Z\",\"updated_at\":\"2024-05-23T11:02:16.000000Z\",\"category\":{\"id\":4,\"name\":\"Digital Marketing\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":3,\"name\":\"Tech Professionals\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":12,\"path\":\"2024-05-22-08-50-54.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":11,\"created_at\":\"2024-05-22T17:50:54.000000Z\",\"updated_at\":\"2024-05-22T17:50:54.000000Z\"}},{\"id\":12,\"name\":\"Backend Course\",\"description\":\"The Backend Development Fundamentals course provides a comprehensive introduction to the principles, tools, and technologies involved in building the server-side of web applications. This course is designed for individuals who are interested in pursuing a career in backend development or seeking to enhance their existing programming skills\",\"price\":6000,\"hours\":140,\"category_id\":1,\"objective_id\":2,\"created_at\":\"2024-05-22T18:06:05.000000Z\",\"updated_at\":\"2024-05-23T11:01:51.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":13,\"path\":\"2024-05-22-08-56-43.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":12,\"created_at\":\"2024-05-22T17:56:43.000000Z\",\"updated_at\":\"2024-05-22T17:56:43.000000Z\"}}]}}},\"duration\":595,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-06 22:01:02'),
(81, '9c395557-6aec-4a81-b0e3-06b2347c51a9', '9c395557-82a4-4cfa-9a62-59aa6e201318', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"3.25\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Auth\\\\LoginController.php\",\"line\":63,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 22:03:08'),
(82, '9c395557-6f89-4b07-8a67-47b2a4bac046', '9c395557-82a4-4cfa-9a62-59aa6e201318', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 22:03:08'),
(83, '9c395557-722b-4e1a-8e04-a338a9ed05c9', '9c395557-82a4-4cfa-9a62-59aa6e201318', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `admins` set `remember_token` = \'3vTWvR43TQIvXKiT5YUfupUhhUPIbOK0Yh0pKavAXDkf6pq27sG3Qq3H6hoe\' where `id` = 1\",\"time\":\"1.97\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Auth\\\\LoginController.php\",\"line\":63,\"hash\":\"235de4d93bd975d3360fec6f245f78e0\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 22:03:08'),
(84, '9c395557-7360-4c92-8c21-bbb8e70c22a4', '9c395557-82a4-4cfa-9a62-59aa6e201318', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Admin:1\",\"changes\":{\"remember_token\":\"3vTWvR43TQIvXKiT5YUfupUhhUPIbOK0Yh0pKavAXDkf6pq27sG3Qq3H6hoe\"},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 22:03:08'),
(85, '9c395557-7f09-4004-84b0-56ee7365871d', '9c395557-82a4-4cfa-9a62-59aa6e201318', NULL, 1, 'debugbar', '{\"requestId\":\"X4a31efdd07e1da1210a6e7bd393847f3\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 22:03:08'),
(86, '9c395557-8071-453b-b94d-5f18f2c9786d', '9c395557-82a4-4cfa-9a62-59aa6e201318', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/logout\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Auth\\\\LoginController@logout\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"content-length\":\"47\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"origin\":\"http:\\/\\/tech-magnet.edu:81\",\"content-type\":\"application\\/x-www-form-urlencoded\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/courses\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6ImVnY0ZIcWdhc1hCbEVrVkFjYldKT1E9PSIsInZhbHVlIjoieWRYeng1TThFQVh5K3RNQzVtb1RDaDlpK2JGYzdwVjBHSUZTSXZOUkRCMmMxMkNVTllCNnhWd2RyaUx0OVlsZmYzVDdqalhSQk1PQzZDbzdDZEh2dzRRaWZTdkE3cUFwdGxUSmQvQ2F1THBZTUtwVDRXQUJFRXFjTVhrVHovZ29TZXphaEtOeXZ3Ymh5c2N2blhOemRTQ2NaVXEvd3lQUVJNTmxTaUF4bC9CS2Q1OW9OdG9yaXpKUFB2MlVtZGZ0TDE1MThoeXJpRUg2eHRtaDJXVHBvdElPdDk0MEhJWFVORlNiM084OW00dz0iLCJtYWMiOiI1ZjZlMjk5OTRiMzVkOTA3MThlYzFmN2Y4NzUzMjVlY2Y5YjdiYmFiZWRjYjI0OWJiNDcyMzBlNjUyMjUyYjIzIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6ImlBYngzQ0x0bm9vUGVGQU9KMlk4WHc9PSIsInZhbHVlIjoieXI4cGxHVHVCNDVqc0Jja3RUZUZhQzNVQnRaazRzdUFFMEZQWW02RzVMSFYvNDFTdjdicytJWlRkYTBWSjgzY1NsUzZnYlA2T2tSSElPL0RRUmt0dXQ3UGp1dDZ3bXVQS0Vsa2hxZ2RnaTh4NTNPQlhRTkRWMzBrZUZmN0lGL2kiLCJtYWMiOiIyOTIyZTA2OWRkYmJjMDg2MzY0NzZlMWM2NTM4NzMwYWI3MDRmNDA4YTMwOTY0MjY5NmYwMTJlZmQ2YTg3YWQxIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IlQyZFUvUzg1S1cwSnpXYVN2eHhNTWc9PSIsInZhbHVlIjoiY01Qa1N0b3l1VzM1OURza3VWMU5FQnJEcnZvbXNzbDVVNzdmeitTQlhrWDlndTdKVTdtb3g5YVUrYkFiSmd5OHFaTTQ1Yk54STdrdHVUKzlEclBqd2h5OTh4WDFPQkJONFRHMlZaUTdPSVFKMmVqVEdjWmRYMkxxRGpXa25DU0siLCJtYWMiOiI2NGY5ZjI0Mjg4MzAwM2Y1MzZiY2U0ZDcwYmNhYjA4YjgxZGE4ZTcwYjJmNTJkOWY5ZmE4MzBkYWIyYmYxZTcyIiwidGFnIjoiIn0%3D\"},\"payload\":{\"_token\":\"4mPElVvfeLGIdfwSvsxMKzvt59HPow3JsC1aeWyD\"},\"session\":{\"_token\":\"Hgd7IvkNDpSp8V0KlQXoqzF2Erj7POmRwKS0bEnd\",\"_flash\":{\"old\":[],\"new\":[]},\"PHPDEBUGBAR_STACK_DATA\":{\"X4a31efdd07e1da1210a6e7bd393847f3\":null}},\"response_status\":302,\"response\":\"Redirected to http:\\/\\/tech-magnet.edu:81\\/login\",\"duration\":729,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 22:03:08'),
(87, '9c395558-2587-42fc-97fc-49bfd942980a', '9c395558-3fe7-44d0-b1a0-6341b51a2b0f', NULL, 1, 'cache', '{\"type\":\"missed\",\"key\":\"94d92f976fd06fd3e8cf53ec4e03d646\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 22:03:09'),
(88, '9c395558-30d4-45cf-b6a0-cf2b257ffa6c', '9c395558-3fe7-44d0-b1a0-6341b51a2b0f', NULL, 1, 'view', '{\"name\":\"auth.login\",\"path\":\"\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 22:03:09'),
(89, '9c395558-3466-48e2-97b1-6476f9a211c5', '9c395558-3fe7-44d0-b1a0-6341b51a2b0f', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"94d92f976fd06fd3e8cf53ec4e03d646\",\"value\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 22:03:09'),
(90, '9c395558-3b9a-43d3-963a-f41f26a45569', '9c395558-3fe7-44d0-b1a0-6341b51a2b0f', NULL, 1, 'debugbar', '{\"requestId\":\"X58f8b19a7efbf770d11bd7786f11c2d1\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 22:03:09'),
(91, '9c395558-3cb1-4843-8bfb-bf68c1f25107', '9c395558-3fe7-44d0-b1a0-6341b51a2b0f', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/login\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Auth\\\\LoginController@showLoginForm\",\"middleware\":[\"web\",\"guest:admin\",\"throttle:login\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/courses\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6InZKUmI5Wi9SQ1NNU2JWVUl2Zy9iQkE9PSIsInZhbHVlIjoiZUQvOVlMZldmcVRTdmFDUnpPcGc2bWE3T2NEeWtTRWFwY2RRZmhOVUVyWmhOZzlHbFd6S2hOYUNBMHFrakE5VXBtRnBIQzN1L3E0U29oVjhhcmVGbC9ITEp5VktwRCtlZDkzZnh4UFhwWnkwWGErMytBcWlMTUJrSEtXVSt0ejMiLCJtYWMiOiI0NzRkNTY5NGExNjRkNjEyZWRjZjAzOWEzM2M1ZmY0ZTVlMTU4YmY1Y2YxZmRkZTI4OGZkNWJiOWFjMzU4YjYxIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6Ikowem5OVWFuQjBjY1E1ZTBjWGdWV0E9PSIsInZhbHVlIjoieU1ic0srVG9lRXZzcUJTdmorL3dkaTNQa1pNQ0o1ckZBaTJ5QkRSd2k2NEMwWTg1cmNnNkNqU3RMaFN4eGRQc2x5em9NbVhkS2g1eGZ3S1p3Z2Y4TmNZRS8xQUl6ZVJObjkxRFdBMWNSU0w1dU1VQktEUGI0ZnpaY0tpS3FCUHAiLCJtYWMiOiI0YjU0MGFiOTQzMjZmM2I1OTFjZTZlN2M1OTAwMWFlNThhOTZkNThjYmVlYjA5YTNmMzQ3ZGI5MDM2OWEzMzY5IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"Hgd7IvkNDpSp8V0KlQXoqzF2Erj7POmRwKS0bEnd\",\"_flash\":{\"old\":[],\"new\":[]},\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/login\"},\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[]},\"duration\":474,\"memory\":24,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-06 22:03:09'),
(92, '9c3afe9a-0fba-47a5-bf75-7277ecf74860', '9c3afe9c-f6a4-42f4-98be-212d02517c88', NULL, 1, 'debugbar', '{\"requestId\":\"X4d4973d130b49bcc1c563d6a7d7d3632\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:16'),
(93, '9c3afe9c-833d-4236-93d9-42efa1406aea', '9c3afe9c-f6a4-42f4-98be-212d02517c88', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/home\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\HomeController@index\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\"},\"payload\":[],\"session\":{\"_token\":\"UWQRKJ1FPu64DsqCmoSdpUJ6dpz5SGPgJJZwncGG\",\"url\":{\"intended\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/home\"},\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/home\"},\"_flash\":{\"old\":[],\"new\":[]},\"PHPDEBUGBAR_STACK_DATA\":{\"X4d4973d130b49bcc1c563d6a7d7d3632\":null}},\"response_status\":302,\"response\":\"Redirected to http:\\/\\/tech-magnet.edu:81\\/login\",\"duration\":30082,\"memory\":24,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:17'),
(94, '9c3afe9d-e99e-4190-8213-a0b4274e6d9d', '9c3afe9f-a651-4533-b9c4-023ac6c6b7c2', NULL, 1, 'cache', '{\"type\":\"missed\",\"key\":\"94d92f976fd06fd3e8cf53ec4e03d646\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:17'),
(95, '9c3afe9e-5185-4437-9593-280fc11768fb', '9c3afe9f-a651-4533-b9c4-023ac6c6b7c2', NULL, 1, 'view', '{\"name\":\"auth.login\",\"path\":\"\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:18'),
(96, '9c3afe9f-6f7f-44c7-8f2b-d6b059d183dc', '9c3afe9f-a651-4533-b9c4-023ac6c6b7c2', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"94d92f976fd06fd3e8cf53ec4e03d646\",\"value\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:18'),
(97, '9c3afe9f-a030-4882-a4d0-ab3f000d3346', '9c3afe9f-a651-4533-b9c4-023ac6c6b7c2', NULL, 1, 'debugbar', '{\"requestId\":\"X220839cf858c44528c8908085f243ff4\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:19'),
(98, '9c3afe9f-a286-4457-a3b9-4a1f7fe96df7', '9c3afe9f-a651-4533-b9c4-023ac6c6b7c2', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/login\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Auth\\\\LoginController@showLoginForm\",\"middleware\":[\"web\",\"guest:admin\",\"throttle:login\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlZHWDBRMnU3MUpJb2k2VEpFOEdnemc9PSIsInZhbHVlIjoiK2FWczdKUVBiaDlMdWZzSzhjUWNmM3ZDK0c2TFUxVVZEYTBDdFhQQ3lZdE9mbisrSm1VcVBwRE9BR1VxdkJubUtqdmNsOVFZSWYwMkhQR2RPdWphS3owRmxTVDEyTXNHUUpqV0F6T2tnZ3k2d3FLbCs2SlNFSmR6d1FjSnNUbG8iLCJtYWMiOiIzMjlmZTlhYjJiMTE5OWY0NTIxMGM5M2FiNjA0NDNkNDZjMDJkNTExMGRhMDg4YjAwYzliOTc1NWMxYmI2Y2IyIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InJRa3ZsMk52UGlqMTV6K1BnQmxGa0E9PSIsInZhbHVlIjoiUEg5TlBDRnBNZitISklycFdNQ0RLdmVPMWs2cUpuLzNiVWVpSUNudjY4WFZUZmtHZU12VkFHdFFvYm9uN1FKREpHaUdSSUFzazJTQ0JaVXVkam92QmRSY3h3bEN5L0NxUVFCR1JzSzkwQ002bEFFcERtSncrRndtMndScEpoN0siLCJtYWMiOiJkNzQ1ZTg0NzM1YTkxN2NmMTZjM2JkMzFiMjQ2NzhjODY2OTQyMjY4NDFlMzEyY2RhY2Q2YTAxYzE4OWJhMGUxIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"UWQRKJ1FPu64DsqCmoSdpUJ6dpz5SGPgJJZwncGG\",\"url\":{\"intended\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/home\"},\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/login\"},\"_flash\":{\"old\":[],\"new\":[]},\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[]},\"duration\":1993,\"memory\":24,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:19'),
(99, '9c3afea6-1a4a-437c-ae55-67c574eae918', '9c3afea8-92d5-4f5f-8f90-16514cd670cc', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"94d92f976fd06fd3e8cf53ec4e03d646\",\"value\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:23'),
(100, '9c3afea7-fb47-4d8f-be0a-638e7f18aed7', '9c3afea8-92d5-4f5f-8f90-16514cd670cc', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `email` = \'a12@gmail.com\' limit 1\",\"time\":\"21.27\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Auth\\\\LoginController.php\",\"line\":52,\"hash\":\"0b1e37fc6482f6b003de3251f34064ca\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:24'),
(101, '9c3afea7-fcd2-4fad-aca9-d5e1a7e8bd29', '9c3afea8-92d5-4f5f-8f90-16514cd670cc', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:24'),
(102, '9c3afea8-8747-415b-a5ce-cc0442461529', '9c3afea8-92d5-4f5f-8f90-16514cd670cc', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"94d92f976fd06fd3e8cf53ec4e03d646\",\"value\":3,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:24'),
(103, '9c3afea8-8f27-4311-bf88-05a92a9f6713', '9c3afea8-92d5-4f5f-8f90-16514cd670cc', NULL, 1, 'debugbar', '{\"requestId\":\"X663cead4825406f4e3347f293fca16f8\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:24'),
(104, '9c3afea8-9057-47d2-af95-3b99b2a1c6cc', '9c3afea8-92d5-4f5f-8f90-16514cd670cc', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/login\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Auth\\\\LoginController@login\",\"middleware\":[\"web\",\"guest:admin\",\"throttle:login\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"content-length\":\"99\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"origin\":\"http:\\/\\/tech-magnet.edu:81\",\"content-type\":\"application\\/x-www-form-urlencoded\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/login\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IkkwSWpkb0NqaUdkZ2xDMUFQSXNBTnc9PSIsInZhbHVlIjoiWTlzeGdTR0VGUXpNNENUYVkyQ1g5QWtEZkNaUE9GdngrVTVWWHVCUWpNYWZhU003VVN1V2duKy9vcUV5ZWwzcUVwMGV4WDkwL1pkUUFQYlo4Y0tSTVBsZ25od3NXOUlHalF4a0U0T2VDRkhqYjR2azVuRk5kL3VuOGtLd2Y1SlgiLCJtYWMiOiI1NTgwNDJlNTI4YmI3NzUyOTIxOWMyMmMzNWY5MDZlYjNhMjcyNjk1YjA5ZGFmNmZlYjdiMjBmYmM2NTNiMmUxIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IldVSDlwcXVUL0RBM3drV1dHanRWQWc9PSIsInZhbHVlIjoiajI3MmhNeGkxL0NwQjhBQ01CSytkUHZIdG5LcFdvTlIvdkZ2b0NUcEllMGtsTk43RlZhaEF3MkRaOWhYM01Ed0xPZUdieDIzV3pqVlQwaThjQ3hOdEM3KzQ2R3Z3WVdLRDlxbW0vb3BWT1hFZjJ0SzFWZExHZERIRStmY2RRZkciLCJtYWMiOiJiYzM0MzFkNTk2MTBkZGQxMWIwZTNmMDQ5ZWRiY2NlYjczODMwODdlNDYzMDFkMTZlZjRiYTA5ZjA1ZDU3Yzk1IiwidGFnIjoiIn0%3D\"},\"payload\":{\"_token\":\"UWQRKJ1FPu64DsqCmoSdpUJ6dpz5SGPgJJZwncGG\",\"email\":\"a12@gmail.com\",\"password\":\"********\",\"remember\":\"on\"},\"session\":{\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"url\":[],\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/login\"},\"_flash\":{\"old\":[\"message\"],\"new\":[]},\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"message\":\"Welcome Administrator\",\"PHPDEBUGBAR_STACK_DATA\":{\"X663cead4825406f4e3347f293fca16f8\":null}},\"response_status\":302,\"response\":\"Redirected to http:\\/\\/tech-magnet.edu:81\\/admin\\/home\",\"duration\":2062,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:24'),
(105, '9c3afea6-153d-4a0e-aecd-76f275a88c35', '9c3afea8-92dc-4dfe-9bb4-af660bda53b8', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"94d92f976fd06fd3e8cf53ec4e03d646\",\"value\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:23'),
(106, '9c3afea7-fb48-4185-b7ef-913eb5b48e69', '9c3afea8-92dc-4dfe-9bb4-af660bda53b8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `email` = \'a12@gmail.com\' limit 1\",\"time\":\"21.09\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Auth\\\\LoginController.php\",\"line\":52,\"hash\":\"0b1e37fc6482f6b003de3251f34064ca\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:24'),
(107, '9c3afea7-fcc2-49a7-9c5d-ff41c405ddb9', '9c3afea8-92dc-4dfe-9bb4-af660bda53b8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:24'),
(108, '9c3afea8-8741-4c6c-ae8f-994cf462a697', '9c3afea8-92dc-4dfe-9bb4-af660bda53b8', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"94d92f976fd06fd3e8cf53ec4e03d646\",\"value\":3,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:24'),
(109, '9c3afea8-8f4e-4359-971a-c6865ebe2bee', '9c3afea8-92dc-4dfe-9bb4-af660bda53b8', NULL, 1, 'debugbar', '{\"requestId\":\"X6ea7071bca064bd948c0df5ff7862736\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:24');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(110, '9c3afea8-9059-4c90-ba51-f59b968e3c20', '9c3afea8-92dc-4dfe-9bb4-af660bda53b8', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/login\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Auth\\\\LoginController@login\",\"middleware\":[\"web\",\"guest:admin\",\"throttle:login\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"content-length\":\"99\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"origin\":\"http:\\/\\/tech-magnet.edu:81\",\"content-type\":\"application\\/x-www-form-urlencoded\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/login\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IkkwSWpkb0NqaUdkZ2xDMUFQSXNBTnc9PSIsInZhbHVlIjoiWTlzeGdTR0VGUXpNNENUYVkyQ1g5QWtEZkNaUE9GdngrVTVWWHVCUWpNYWZhU003VVN1V2duKy9vcUV5ZWwzcUVwMGV4WDkwL1pkUUFQYlo4Y0tSTVBsZ25od3NXOUlHalF4a0U0T2VDRkhqYjR2azVuRk5kL3VuOGtLd2Y1SlgiLCJtYWMiOiI1NTgwNDJlNTI4YmI3NzUyOTIxOWMyMmMzNWY5MDZlYjNhMjcyNjk1YjA5ZGFmNmZlYjdiMjBmYmM2NTNiMmUxIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IldVSDlwcXVUL0RBM3drV1dHanRWQWc9PSIsInZhbHVlIjoiajI3MmhNeGkxL0NwQjhBQ01CSytkUHZIdG5LcFdvTlIvdkZ2b0NUcEllMGtsTk43RlZhaEF3MkRaOWhYM01Ed0xPZUdieDIzV3pqVlQwaThjQ3hOdEM3KzQ2R3Z3WVdLRDlxbW0vb3BWT1hFZjJ0SzFWZExHZERIRStmY2RRZkciLCJtYWMiOiJiYzM0MzFkNTk2MTBkZGQxMWIwZTNmMDQ5ZWRiY2NlYjczODMwODdlNDYzMDFkMTZlZjRiYTA5ZjA1ZDU3Yzk1IiwidGFnIjoiIn0%3D\"},\"payload\":{\"_token\":\"UWQRKJ1FPu64DsqCmoSdpUJ6dpz5SGPgJJZwncGG\",\"email\":\"a12@gmail.com\",\"password\":\"********\",\"remember\":\"on\"},\"session\":{\"_token\":\"buCWrwNt0u7oXEpQXt19tsdXXoU99kc1mzcWbLLY\",\"url\":[],\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/login\"},\"_flash\":{\"old\":[\"message\"],\"new\":[]},\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"message\":\"Welcome Administrator\",\"PHPDEBUGBAR_STACK_DATA\":{\"X6ea7071bca064bd948c0df5ff7862736\":null}},\"response_status\":302,\"response\":\"Redirected to http:\\/\\/tech-magnet.edu:81\\/admin\\/home\",\"duration\":2099,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:24'),
(111, '9c3afea9-6164-4da8-bcc9-a215d25c5f93', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"11.15\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:25'),
(112, '9c3afea9-6740-4b60-971e-3c21c5ce64ec', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:25'),
(113, '9c3afea9-a056-4d96-8b51-6a4694d71014', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `courses`\",\"time\":\"1.47\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":19,\"hash\":\"3c8c698f59a23e785490347ccf9abc89\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:25'),
(114, '9c3afea9-bc10-494d-8726-44ea35ca74b0', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `blogs`\",\"time\":\"0.64\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":22,\"hash\":\"4b32d88c746db4e89f34760372fb0b5f\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:25'),
(115, '9c3afea9-c3a9-47f8-8601-c6667e60fae2', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `categories`\",\"time\":\"0.74\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":25,\"hash\":\"e9e8c8e147366a96f2b9a9a91870ee32\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:25'),
(116, '9c3afea9-da2d-4304-8c6f-c26295e84291', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `users`\",\"time\":\"0.66\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":28,\"hash\":\"6c5274cfac96d79f6367317dfb756038\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:25'),
(117, '9c3afea9-ddad-4768-8040-7eabacd6b158', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `courses` where month(`created_at`) = \'05\'\",\"time\":\"6.02\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":30,\"hash\":\"41519cd53f70253ac2b679a8b197a3bb\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:25'),
(118, '9c3afea9-de81-466c-962d-d05130593ad9', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Course\",\"count\":12,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:25'),
(119, '9c3afeaa-3aaf-4480-9f51-1b5fa998ef3c', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `categories` where `categories`.`id` in (1, 2, 3, 4)\",\"time\":\"0.74\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":30,\"hash\":\"6ea351314dfabb33b6bba13f136f3cda\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:26'),
(120, '9c3afeaa-3be3-49d8-8a37-ed8884eacc2f', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Category\",\"count\":4,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:26'),
(121, '9c3afeaa-75cb-43b3-9b68-4ddc069fa1b5', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `objectives` where `objectives`.`id` in (1, 2, 3)\",\"time\":\"0.73\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":30,\"hash\":\"3c47781b5bfa5a6fd05a6b3ecb66fcd1\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:26'),
(122, '9c3afeaa-7725-4cad-a4db-a8f9e75a8234', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Objective\",\"count\":3,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:26'),
(123, '9c3afeab-2f8d-448e-9521-70cb665c7aaa', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `images` where `images`.`imageable_id` in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12) and `images`.`imageable_type` = \'App\\\\Models\\\\Course\'\",\"time\":\"1.10\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":30,\"hash\":\"92aabdcbd23bca6cee0447e615aa6d4d\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:26'),
(124, '9c3afeab-326f-4ea2-a087-819ec2b6a9cf', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Image\",\"count\":12,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:26'),
(125, '9c3afeab-3cf8-4854-a961-ecdf1d3bf87e', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'view', '{\"name\":\"home\",\"path\":\"\\\\resources\\\\views\\/home.blade.php\",\"data\":[\"courses\",\"blogs\",\"categories\",\"enrollments\",\"coursesThisMonth\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:26'),
(126, '9c3afeab-90e0-4172-be75-950d30625f5e', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'view', '{\"name\":\"layouts.messages\",\"path\":\"\\\\resources\\\\views\\/layouts\\/messages.blade.php\",\"data\":[\"courses\",\"blogs\",\"categories\",\"enrollments\",\"coursesThisMonth\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:26'),
(127, '9c3afeab-9dc5-4083-b8ac-bde875d926fd', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'view', '{\"name\":\"layouts.master\",\"path\":\"\\\\resources\\\\views\\/layouts\\/master.blade.php\",\"data\":[\"courses\",\"blogs\",\"categories\",\"enrollments\",\"coursesThisMonth\",\"__currentLoopData\",\"course\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:26'),
(128, '9c3afeab-c8fc-4213-a27c-42ef1059a52d', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'view', '{\"name\":\"layouts.sidebar\",\"path\":\"\\\\resources\\\\views\\/layouts\\/sidebar.blade.php\",\"data\":[\"courses\",\"blogs\",\"categories\",\"enrollments\",\"coursesThisMonth\",\"__currentLoopData\",\"course\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:27'),
(129, '9c3afeac-2cd2-4da2-90b7-ab5e9f658fe2', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'view', '{\"name\":\"layouts.footer\",\"path\":\"\\\\resources\\\\views\\/layouts\\/footer.blade.php\",\"data\":[\"courses\",\"blogs\",\"categories\",\"enrollments\",\"coursesThisMonth\",\"__currentLoopData\",\"course\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:27'),
(130, '9c3afeac-5b16-47ce-a982-2287e4ec84ae', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'debugbar', '{\"requestId\":\"Xc8788c028914444dc8561ccc404ec80f\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:27'),
(131, '9c3afeac-6381-4fc1-90c1-1ea734b6f9e4', '9c3afeac-6691-448f-b965-a7b99e16ba5f', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/home\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\HomeController@index\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/login\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImVteC9qdUY4YytTaCtXTUZNMXEwa3c9PSIsInZhbHVlIjoiUi9BL2NRc1djZFdvWXBmRE5HeThETS9SQ0IvWUNvN1F2RVllcmxqd3RRZWVWd3I5MkhQREFyR2FSd05TSTZDZTRWSGQ4ZDZKWTJ5d2NodGNsdkdqMG9ib0VrdTMwcytlUGM2RWNzd053b3dZRzh0c0lnQWsxbkJHeUY5RlpzMy8iLCJtYWMiOiJlZTRhNjE1MmMyMGRhZTg5NjVmYjlmY2U3MmY5ZDM5MjIyMjIzZTg2N2JmNmYyNmRmNmNlYWU5YjcxZTY5Y2Y3IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InUrbHpHQi9kQSt3akhEQjN1Qk5xSnc9PSIsInZhbHVlIjoiQkZIM3BaRkY0cXp4VEVwdm9KUUl0YnVZR2Z0RTdNNTdkb3hUQlBPbFY0MmxwMU05Uy96N3I5aU1wMzhxSGNVbUE1b3ZBbTdzbDhvbjFPaXJlZkNUS0ZDbjMya3pDaERpeGZrTEgxWE1NcjFqelRpQVpSeCtNbVh0cy9rNHQ3V0siLCJtYWMiOiI4NjZmZjRlMTk3OGIxZmI4NDJjNzZmZjU5MTlhMDRmNTNlNTYzMTlmMGU1NzQ5NzE2MDg2NTEzM2YxYWViZmI3IiwidGFnIjoiIn0%3D; remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"url\":[],\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/home\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/home.blade.php\",\"data\":{\"courses\":12,\"blogs\":4,\"categories\":4,\"enrollments\":21,\"coursesThisMonth\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"name\":\"Web development essentials\",\"description\":\"the fundamental building blocks of creating websites and web applications. It\'s like having a toolbox with the most important tools for this job.\",\"price\":6000,\"hours\":30,\"category_id\":1,\"objective_id\":1,\"created_at\":\"2024-05-22T16:33:06.000000Z\",\"updated_at\":\"2024-05-23T10:57:15.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":1,\"name\":\"Master the Essentials\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":18,\"path\":\"2024-05-23-03-16-56.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":1,\"created_at\":\"2024-05-23T12:16:56.000000Z\",\"updated_at\":\"2024-05-23T12:16:56.000000Z\"}},{\"id\":2,\"name\":\"Frontend course\",\"description\":\"designed to provide you with a comprehensive introduction to the essential concepts, tools, and techniques required to build modern and user-friendly websites\",\"price\":6000,\"hours\":80,\"category_id\":1,\"objective_id\":2,\"created_at\":\"2024-05-22T17:15:50.000000Z\",\"updated_at\":\"2024-05-23T10:57:29.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":15,\"path\":\"2024-05-23-03-11-15.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":2,\"created_at\":\"2024-05-23T12:11:15.000000Z\",\"updated_at\":\"2024-05-23T12:11:15.000000Z\"}},{\"id\":3,\"name\":\"Full Stack Diploma\",\"description\":\"comprehensive program designed to equip you with the skills and knowledge required to build dynamic and interactive web applications\",\"price\":12000,\"hours\":140,\"category_id\":1,\"objective_id\":3,\"created_at\":\"2024-05-22T17:28:29.000000Z\",\"updated_at\":\"2024-05-23T10:57:48.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":3,\"name\":\"Tech Professionals\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":17,\"path\":\"2024-05-23-03-15-49.png\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":3,\"created_at\":\"2024-05-23T12:15:49.000000Z\",\"updated_at\":\"2024-05-23T12:15:49.000000Z\"}},{\"id\":4,\"name\":\"Graphic Desgin\",\"description\":\"This course focuses on developing your creativity and visual communication skills to create visually appealing and effective designs for various mediums.\",\"price\":6000,\"hours\":60,\"category_id\":2,\"objective_id\":2,\"created_at\":\"2024-05-22T17:32:50.000000Z\",\"updated_at\":\"2024-05-23T10:58:01.000000Z\",\"category\":{\"id\":2,\"name\":\"Design\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":5,\"path\":\"2024-05-22-08-28-29.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":4,\"created_at\":\"2024-05-22T17:28:29.000000Z\",\"updated_at\":\"2024-05-22T17:28:29.000000Z\"}},{\"id\":5,\"name\":\"UI\\/UX\",\"description\":\"The UI\\/UX Design Fundamentals course is designed to provide you with a comprehensive understanding of user interface (UI) and user experience (UX) design principles and practices.\",\"price\":6000,\"hours\":75,\"category_id\":2,\"objective_id\":2,\"created_at\":\"2024-05-22T17:34:14.000000Z\",\"updated_at\":\"2024-05-23T11:08:53.000000Z\",\"category\":{\"id\":2,\"name\":\"Design\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":6,\"path\":\"2024-05-22-08-32-50.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":5,\"created_at\":\"2024-05-22T17:32:50.000000Z\",\"updated_at\":\"2024-05-22T17:32:50.000000Z\"}},{\"id\":6,\"name\":\"Essentials of Python\",\"description\":\"The Essentials of Python course is designed to provide you with a comprehensive introduction to the Python programming language.<span style=\\\"background-color: rgb(247, 247, 247); color: rgb(0, 0, 0); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif; font-size: 18px;\\\">&nbsp;<\\/span>&nbsp;Python is widely used for various applications, including web development, data analysis, scientific computing, and automation. This course is suitable for beginners with no prior programming experience as well as those with programming knowledge in other languages who want to learn Python\",\"price\":6000,\"hours\":55,\"category_id\":3,\"objective_id\":1,\"created_at\":\"2024-05-22T17:38:08.000000Z\",\"updated_at\":\"2024-05-23T10:58:53.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":1,\"name\":\"Master the Essentials\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":7,\"path\":\"2024-05-22-08-34-14.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":6,\"created_at\":\"2024-05-22T17:34:14.000000Z\",\"updated_at\":\"2024-05-22T17:34:14.000000Z\"}},{\"id\":7,\"name\":\"AI\",\"description\":\"AI is a rapidly growing field that focuses on creating intelligent systems capable of performing tasks that typically require human intelligence. This course aims to equip you with a foundational understanding of AI concepts and techniques.\",\"price\":6000,\"hours\":160,\"category_id\":3,\"objective_id\":2,\"created_at\":\"2024-05-22T17:39:55.000000Z\",\"updated_at\":\"2024-05-23T10:59:13.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":8,\"path\":\"2024-05-22-08-38-08.png\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":7,\"created_at\":\"2024-05-22T17:38:08.000000Z\",\"updated_at\":\"2024-05-22T17:38:08.000000Z\"}},{\"id\":8,\"name\":\"Deep and Machine Learning\",\"description\":\"The Deep and Machine Learning Fundamentals course is designed to provide you with a comprehensive understanding of deep learning and machine learning techniques. Deep learning focuses on training artificial neural networks with multiple layers to learn representations of data\",\"price\":10000,\"hours\":100,\"category_id\":3,\"objective_id\":2,\"created_at\":\"2024-05-22T17:42:25.000000Z\",\"updated_at\":\"2024-05-23T10:59:23.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":9,\"path\":\"2024-05-22-08-39-55.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":8,\"created_at\":\"2024-05-22T17:39:55.000000Z\",\"updated_at\":\"2024-05-22T17:39:55.000000Z\"}},{\"id\":9,\"name\":\"Data Scientist Diploma\",\"description\":\"The Data Scientist Diploma course is a comprehensive program designed to provide you with the knowledge and skills required to excel in the field of data science. Data science involves extracting insights and knowledge from large and complex datasets using various techniques, including statistical analysis, machine learning, and data visualization. This course covers a wide range of topics to equip you with the necessary skills to become a proficient data scientist.\",\"price\":12000,\"hours\":90,\"category_id\":3,\"objective_id\":3,\"created_at\":\"2024-05-22T17:47:18.000000Z\",\"updated_at\":\"2024-05-23T11:00:52.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":3,\"name\":\"Tech Professionals\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":10,\"path\":\"2024-05-22-08-42-25.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":9,\"created_at\":\"2024-05-22T17:42:25.000000Z\",\"updated_at\":\"2024-05-22T17:42:25.000000Z\"}},{\"id\":10,\"name\":\"Social media marketing Essentials\",\"description\":\"The Social Media Marketing Essentials course is designed to provide you with the knowledge and skills required to develop and implement effective social media marketing strategies. Social media platforms have become powerful tools for businesses to reach and engage with their target audience. This course will equip you with the essential techniques and best practices to leverage social media for marketing purposes.\",\"price\":6000,\"hours\":40,\"category_id\":4,\"objective_id\":1,\"created_at\":\"2024-05-22T17:50:54.000000Z\",\"updated_at\":\"2024-05-23T11:01:12.000000Z\",\"category\":{\"id\":4,\"name\":\"Digital Marketing\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":1,\"name\":\"Master the Essentials\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":11,\"path\":\"2024-05-22-08-47-18.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":10,\"created_at\":\"2024-05-22T17:47:18.000000Z\",\"updated_at\":\"2024-05-22T17:47:18.000000Z\"}},{\"id\":11,\"name\":\"Digital Marketing Diploma\",\"description\":\"The Digital Marketing Diploma is an extensive program designed to provide you with a comprehensive understanding of digital marketing strategies and techniques. In today\'s digital era, businesses rely on digital channels to reach and engage with their target audience. This course covers a wide range of topics to equip you with the necessary skills to plan, execute, and measure successful digital marketing campaigns.\",\"price\":12000,\"hours\":40,\"category_id\":4,\"objective_id\":3,\"created_at\":\"2024-05-22T17:56:43.000000Z\",\"updated_at\":\"2024-05-23T11:02:16.000000Z\",\"category\":{\"id\":4,\"name\":\"Digital Marketing\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":3,\"name\":\"Tech Professionals\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":12,\"path\":\"2024-05-22-08-50-54.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":11,\"created_at\":\"2024-05-22T17:50:54.000000Z\",\"updated_at\":\"2024-05-22T17:50:54.000000Z\"}},{\"id\":12,\"name\":\"Backend Course\",\"description\":\"The Backend Development Fundamentals course provides a comprehensive introduction to the principles, tools, and technologies involved in building the server-side of web applications. This course is designed for individuals who are interested in pursuing a career in backend development or seeking to enhance their existing programming skills\",\"price\":6000,\"hours\":140,\"category_id\":1,\"objective_id\":2,\"created_at\":\"2024-05-22T18:06:05.000000Z\",\"updated_at\":\"2024-05-23T11:01:51.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":13,\"path\":\"2024-05-22-08-56-43.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":12,\"created_at\":\"2024-05-22T17:56:43.000000Z\",\"updated_at\":\"2024-05-22T17:56:43.000000Z\"}}]}}},\"duration\":2496,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:27'),
(132, '9c3afeb6-8e26-42d7-aac9-9dc07ad50d4c', '9c3afeb8-be5a-4879-ac9c-af72fff987ec', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"3.78\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:34'),
(133, '9c3afeb6-914f-4c82-8214-0161b499d795', '9c3afeb8-be5a-4879-ac9c-af72fff987ec', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:34'),
(134, '9c3afeb8-0dbc-4195-8c27-c4c12d366466', '9c3afeb8-be5a-4879-ac9c-af72fff987ec', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings`\",\"time\":\"0.64\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\SettingController.php\",\"line\":14,\"hash\":\"9a0c1b1878c6704a2df2ae90c2a24cef\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:35'),
(135, '9c3afeb8-0e97-4e23-ba5f-b96f37784113', '9c3afeb8-be5a-4879-ac9c-af72fff987ec', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:35'),
(136, '9c3afeb8-29fa-4be3-8cf7-86eb03744a5c', '9c3afeb8-be5a-4879-ac9c-af72fff987ec', NULL, 1, 'view', '{\"name\":\"settings.index\",\"path\":\"\\\\resources\\\\views\\/settings\\/index.blade.php\",\"data\":[\"settings\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:35'),
(137, '9c3afeb8-ad0f-4866-95a2-57f01aeb99f2', '9c3afeb8-be5a-4879-ac9c-af72fff987ec', NULL, 1, 'view', '{\"name\":\"layouts.messages\",\"path\":\"\\\\resources\\\\views\\/layouts\\/messages.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:35'),
(138, '9c3afeb8-ad7e-4444-8bf9-77f0d1f7a0e8', '9c3afeb8-be5a-4879-ac9c-af72fff987ec', NULL, 1, 'view', '{\"name\":\"layouts.master\",\"path\":\"\\\\resources\\\\views\\/layouts\\/master.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:35'),
(139, '9c3afeb8-adf0-45ce-ae7b-0180ca3294dd', '9c3afeb8-be5a-4879-ac9c-af72fff987ec', NULL, 1, 'view', '{\"name\":\"layouts.sidebar\",\"path\":\"\\\\resources\\\\views\\/layouts\\/sidebar.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:35'),
(140, '9c3afeb8-af48-49e4-a822-b657f11e8ad8', '9c3afeb8-be5a-4879-ac9c-af72fff987ec', NULL, 1, 'view', '{\"name\":\"layouts.footer\",\"path\":\"\\\\resources\\\\views\\/layouts\\/footer.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:35'),
(141, '9c3afeb8-b87d-4e7a-9be5-d51ef6861a42', '9c3afeb8-be5a-4879-ac9c-af72fff987ec', NULL, 1, 'debugbar', '{\"requestId\":\"X24184576d441791a646319029f0ac9fa\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:35'),
(142, '9c3afeb8-bb8c-4b46-9429-cf4272afd5b0', '9c3afeb8-be5a-4879-ac9c-af72fff987ec', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/settings\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\SettingController@index\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/home\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6InJkbWZsVTVvWFhZeUZlVXdabEs3UWc9PSIsInZhbHVlIjoiV0JlMU0zelBIN2dBbVY4Nnc0Qzh6SDR1VnI1N1JiVStVeUdSem9QZzJJa3hPMkMzTEZhRVl2dW1IcFFFcUxOSlM2SXQ1Mlg5b0RnclNaWWNPbVJYVFVjeVlXd1FuSEhYRVRWb0xKeUJGTmdRUEg2U0dMQTh1WW5oalVmSzNZRXkiLCJtYWMiOiI0YTQ2ZDQ5ZDUxZDllYjBjMjlkODNlYzE0ODM0OGI5MDE5ZDNjODViNzg0YzE5ZDZlMjJmZWI5ZjhlNmY2NDQ4IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IkpBTnhBenhQbERTQXlKMjlwdFlRWmc9PSIsInZhbHVlIjoiL3lUZ1J3TE9JYUpuSzRESDV1V1dxc1Iwazdpa1JVRFBTYnltUXduL21aYUM3eUlpaEhHWFpwMngvV1FhV2xQTUJyeERyZFlDR2p5d0JPQ0I4RkxQN0UxSFpScE1XajdYWGs0eVBENjNiTUxIUlYvcGNjTys5bVVtT0xrRThaOGciLCJtYWMiOiJlODE3NDViNWFkMzcxYmViZDIyYmRjOTI1NmFmZDlkNTQ0OTBmOTBiZjU5MDFiMzI5NTZmMzdhYWM2YzUxYTQyIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"url\":[],\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/settings\\/index.blade.php\",\"data\":{\"settings\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"logo\":\"2024-05-25-08-30-36.jpg\",\"email\":\"Techmagnet@gmail.com\",\"phone\":\"01000009999\",\"location\":\"Greek Campus\",\"created_at\":\"2024-05-25T17:30:36.000000Z\",\"updated_at\":\"2024-05-26T11:47:25.000000Z\"}]}}},\"duration\":2677,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:35'),
(143, '9c3afebe-8b93-4974-bb5d-2e3dfb9376bf', '9c3afebf-348c-4a40-82d3-29ab6b428969', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"2.88\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:39'),
(144, '9c3afebe-8eba-4d5e-bb72-23b669554015', '9c3afebf-348c-4a40-82d3-29ab6b428969', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:39'),
(145, '9c3afebe-90f3-4d0a-aa70-8c51a03bf24d', '9c3afebf-348c-4a40-82d3-29ab6b428969', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings` where `id` = \'1\' limit 1\",\"time\":\"1.14\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"f05948e3792aaea5b38c596b4dee89cf\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:39'),
(146, '9c3afebe-91d2-4da0-b655-73747c01fbfd', '9c3afebf-348c-4a40-82d3-29ab6b428969', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:39'),
(147, '9c3afebe-94d5-4346-a394-3a45069a1032', '9c3afebf-348c-4a40-82d3-29ab6b428969', NULL, 1, 'view', '{\"name\":\"settings.edit\",\"path\":\"\\\\resources\\\\views\\/settings\\/edit.blade.php\",\"data\":[\"setting\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:39'),
(148, '9c3afebf-1c11-4560-b695-02ca62351028', '9c3afebf-348c-4a40-82d3-29ab6b428969', NULL, 1, 'view', '{\"name\":\"layouts.master\",\"path\":\"\\\\resources\\\\views\\/layouts\\/master.blade.php\",\"data\":[\"setting\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:39'),
(149, '9c3afebf-1c92-4cab-ac3a-c02e31de5762', '9c3afebf-348c-4a40-82d3-29ab6b428969', NULL, 1, 'view', '{\"name\":\"layouts.sidebar\",\"path\":\"\\\\resources\\\\views\\/layouts\\/sidebar.blade.php\",\"data\":[\"setting\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:39'),
(150, '9c3afebf-1d91-4261-8bf5-0226497303a8', '9c3afebf-348c-4a40-82d3-29ab6b428969', NULL, 1, 'view', '{\"name\":\"layouts.footer\",\"path\":\"\\\\resources\\\\views\\/layouts\\/footer.blade.php\",\"data\":[\"setting\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:39'),
(151, '9c3afebf-241b-47b9-9d99-96b9ab811654', '9c3afebf-348c-4a40-82d3-29ab6b428969', NULL, 1, 'debugbar', '{\"requestId\":\"X0896dbf86a7bc0f58fcb1557f50db81c\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:52:39'),
(152, '9c3afebf-3244-41c0-b781-6491d3325611', '9c3afebf-348c-4a40-82d3-29ab6b428969', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/settings\\/1\\/edit\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\SettingController@edit\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6Ik5naTQ1bW94NE40cUpveTNBbGdkVmc9PSIsInZhbHVlIjoiQ0ZoWHRhUjk4UWhCTjlZcjNVYm5IMFZ5c3o0UE5wYVZEc2Fob0t5OGVtL01KYWI4Z3BsaWxFbTlVT25uZVZYZ0puZDFzZDVibVdYT1V1amwwVVNFQnNvSDZUQlZCdVhnL2o5aTVqQnlYVTZ5Mm51ak1nSU9obGF3WmptWUZ5ZloiLCJtYWMiOiI4NzM2MTE0YjAzZWZlZTg1ZGRhMjc1Y2U1N2RmYjIwZmVlYzA0YWVlMTgzZDVkZTFhMDQzYjRiYmVhNzljODdiIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImVjMHpZcjQ2ejd6VlJid0RrbnZPS3c9PSIsInZhbHVlIjoidWQyazNQa0phd2pqSFBqNTNKZW0rK3lVSzVOTEpZbVUzcmdRdnN3Z3ZPNUhqQVhhM3VRYlJ3eUlXc3RKLzMrTVByTUxTbUp1akNuR056WWdEMko1aTc4SDdCc0RCM0prNlRDb0R6dmQwcjZHeCtOaGc5NUxFUjBwSDhDMkhibXEiLCJtYWMiOiJkYTFmMWFkNjI3YzlhMWE0ODAxNmQyOTM4YzgwNmY2ZDBmMmU1MWJhZDMyYzRmMmI1M2RkNjEyZWRhZDU5ZWY4IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"url\":[],\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\\/1\\/edit\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/settings\\/edit.blade.php\",\"data\":{\"setting\":\"App\\\\Models\\\\Setting:1\"}},\"duration\":811,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:52:39'),
(153, '9c3aff22-4489-448e-92c2-15155a2752c6', '9c3aff24-3945-469b-9e8b-189dd95b0b56', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"28.98\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:53:44'),
(154, '9c3aff22-4893-4d81-8301-ccbeeb05627f', '9c3aff24-3945-469b-9e8b-189dd95b0b56', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:53:44'),
(155, '9c3aff22-4adb-458e-9cb6-be68210287a3', '9c3aff24-3945-469b-9e8b-189dd95b0b56', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings` where `id` = \'1\' limit 1\",\"time\":\"0.70\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"f05948e3792aaea5b38c596b4dee89cf\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:53:44'),
(156, '9c3aff22-4bc8-47cf-9f6c-fe9e23421ac6', '9c3aff24-3945-469b-9e8b-189dd95b0b56', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:53:44'),
(157, '9c3aff24-1c2d-4c45-971a-b5ff0c9115a0', '9c3aff24-3945-469b-9e8b-189dd95b0b56', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `settings` set `logo` = \'2024-06-07-05-53-45.jpg\', `settings`.`updated_at` = \'2024-06-07 17:53:45\' where `id` = 1\",\"time\":\"2.61\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\SettingController.php\",\"line\":96,\"hash\":\"4870c57e576f007c58e345aff52140db\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:53:45'),
(158, '9c3aff24-1d50-4c2a-a980-ab2c53f46af6', '9c3aff24-3945-469b-9e8b-189dd95b0b56', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Setting:1\",\"changes\":{\"logo\":\"2024-06-07-05-53-45.jpg\",\"updated_at\":\"2024-06-07 17:53:45\"},\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:53:45'),
(159, '9c3aff24-35e5-40e3-bacd-dcd6f6f66815', '9c3aff24-3945-469b-9e8b-189dd95b0b56', NULL, 1, 'debugbar', '{\"requestId\":\"X5f154f0cfba7d48510818a897c9844af\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:53:45'),
(160, '9c3aff24-36c4-4d25-8054-93e7bbf4fd87', '9c3aff24-3945-469b-9e8b-189dd95b0b56', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/settings\\/1\",\"method\":\"PUT\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\SettingController@update\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"content-length\":\"5928\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"origin\":\"http:\\/\\/tech-magnet.edu:81\",\"content-type\":\"multipart\\/form-data; boundary=----WebKitFormBoundary7NvBAFG448Gw7gle\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\\/1\\/edit\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6Ik05a0Y3VDc4R2l2Q2VwbXZQZ3NCSEE9PSIsInZhbHVlIjoiRTZYS0VVU1IwQzJTajJKQjFoTUJkd1dOSUl5MGFMcEpsZGJVbWUxTEt1eTdqdUVzc3ZEZEszTUtvZmRMbGlXcktEMC9SRHdSckZORHFoelRIRmcxanEwNmMrV1VOUFFKbVd3Zzl4eW1MUWhvZFdTNE5pTm1EblRQa2ttbEx1Y0kiLCJtYWMiOiJmOTU5YTcxNzViYTBmOTQ4ZmRjOTY4MGRhNjQwMWY4MWVmYTkzNTU1ZWVkNGFmM2ZlODgxYzRkYjA5M2JmZmM1IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IlpJVkwwZlB4VW9Zd3VnYnFkMXVlK2c9PSIsInZhbHVlIjoiYkh5THpJdG1IcUpuQ25HTU9MVGlBY3lMSXR2QnQzRUhleGxqM0FqOGZWOG1lMTEzZkJoYVV4NFJETitFSWdXd1V6UzhMWDhMcTRXNE05eUJWaUxLaGVCYWRmd1NsdlMvd1dzSDJjaE5acnRvYWhGc2dkY0RnOVdXVHNlbVFBZUoiLCJtYWMiOiJkY2UwZGUwMGE4MWRjYzZkYzFkYTY2MGYzMzE3NWNjMzMxY2Q4ZDMyMTY5MDlkMzI2YzAzNjBmNjNkODEyYTM2IiwidGFnIjoiIn0%3D\"},\"payload\":{\"_method\":\"PUT\",\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"email\":\"Techmagnet@gmail.com\",\"phone\":\"01000009999\",\"location\":\"Greek Campus\",\"logo\":{\"name\":\"photo_2024-06-07_17-53-26.jpg\",\"size\":\"5.173KB\"}},\"session\":{\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"url\":[],\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\\/1\\/edit\"},\"_flash\":{\"old\":[\"message\",\"_old_input\"],\"new\":[]},\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"message\":\"Setting is Updated Successfully\",\"_old_input\":{\"_method\":\"PUT\",\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"email\":\"Techmagnet@gmail.com\",\"phone\":\"01000009999\",\"location\":\"Greek Campus\"},\"PHPDEBUGBAR_STACK_DATA\":{\"X5f154f0cfba7d48510818a897c9844af\":null}},\"response_status\":302,\"response\":\"Redirected to http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\",\"duration\":1979,\"memory\":30,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:53:45'),
(161, '9c3aff24-ccb2-4e52-bc15-c66485d40357', '9c3aff24-e266-4984-95c5-470034e4cc41', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"23.98\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:53:46'),
(162, '9c3aff24-d026-41b1-a97a-2d49bb836836', '9c3aff24-e266-4984-95c5-470034e4cc41', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:53:46'),
(163, '9c3aff24-d2c3-43b7-94ac-5c358d12ffc0', '9c3aff24-e266-4984-95c5-470034e4cc41', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings`\",\"time\":\"0.63\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\SettingController.php\",\"line\":14,\"hash\":\"9a0c1b1878c6704a2df2ae90c2a24cef\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:53:46'),
(164, '9c3aff24-d39d-49ff-9be9-a3a759390c6b', '9c3aff24-e266-4984-95c5-470034e4cc41', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:53:46'),
(165, '9c3aff24-d5ec-4ec4-bc83-fbf35b33d49a', '9c3aff24-e266-4984-95c5-470034e4cc41', NULL, 1, 'view', '{\"name\":\"settings.index\",\"path\":\"\\\\resources\\\\views\\/settings\\/index.blade.php\",\"data\":[\"settings\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:53:46'),
(166, '9c3aff24-d7da-4a0f-87a3-9883f1bedcf4', '9c3aff24-e266-4984-95c5-470034e4cc41', NULL, 1, 'view', '{\"name\":\"layouts.messages\",\"path\":\"\\\\resources\\\\views\\/layouts\\/messages.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:53:46');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(167, '9c3aff24-d845-4d34-8c4d-3da1ce28c5b4', '9c3aff24-e266-4984-95c5-470034e4cc41', NULL, 1, 'view', '{\"name\":\"layouts.master\",\"path\":\"\\\\resources\\\\views\\/layouts\\/master.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:53:46'),
(168, '9c3aff24-d8b2-472c-9499-bd97879be458', '9c3aff24-e266-4984-95c5-470034e4cc41', NULL, 1, 'view', '{\"name\":\"layouts.sidebar\",\"path\":\"\\\\resources\\\\views\\/layouts\\/sidebar.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:53:46'),
(169, '9c3aff24-d9b3-4935-a1db-c5ca458fa68a', '9c3aff24-e266-4984-95c5-470034e4cc41', NULL, 1, 'view', '{\"name\":\"layouts.footer\",\"path\":\"\\\\resources\\\\views\\/layouts\\/footer.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:53:46'),
(170, '9c3aff24-df0e-409e-a7b3-d91f7410925f', '9c3aff24-e266-4984-95c5-470034e4cc41', NULL, 1, 'debugbar', '{\"requestId\":\"X4ce3f6a6019a06bbd1a72e3705c86ef8\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:53:46'),
(171, '9c3aff24-e04b-4b09-9c1b-b78248cdc770', '9c3aff24-e266-4984-95c5-470034e4cc41', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/settings\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\SettingController@index\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\\/1\\/edit\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6ImpXeTBpNHJlbW10YTB2ZHpybEkyWmc9PSIsInZhbHVlIjoiMzJzdThieEtHbENlN3JiR1o2aFNVMTMveE1qQzBhdGQyd1FrdkpLRXMrY0l2TFN2L01CRjc2Vk9YWGlWTFRSbEZKd3NWb05KQ0VCYzU1REgzUE1BRHhuSmpvdFViZjZReFhTaEtPaEhQamNnYnVSc1h2M1gyZzZaeFBRMHZlUzMiLCJtYWMiOiJkZGM1MDc0MTU0ZDQyMWJkOGJmNjJhMDk2MmRjY2E1OGVlZTY1YmNlMjc5YmRiYzg0MWZiMzc0ODQ5MTEzMTcxIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImxqR1BjdU9hajZlMWtndlVRZW1mVXc9PSIsInZhbHVlIjoibjJSWm5zdFFEZ2RHUWVNcVJ1T3dFU2dVamFhVG04ODhXSE54dGFqTjVrc3A3RERhUnBabUhlY24xRzhlRXRpVkxCM0pXMDBRYjNOLzlwdjNGN0k3TkpWOHAxYUwzNzcwNCtBZ0lWbHhMSjNtT1V1bVdlS0gxcU02TnlTUVc5UVIiLCJtYWMiOiIzN2Q1NDNjZDFjZjYzYjkxM2M0MGUyMDAyN2MxY2VmODllNzVlYWI3ODE3MjYzNzJlNmJhN2IyYzEwMTUxYjQzIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"url\":[],\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/settings\\/index.blade.php\",\"data\":{\"settings\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"logo\":\"2024-06-07-05-53-45.jpg\",\"email\":\"Techmagnet@gmail.com\",\"phone\":\"01000009999\",\"location\":\"Greek Campus\",\"created_at\":\"2024-05-25T17:30:36.000000Z\",\"updated_at\":\"2024-06-07T14:53:45.000000Z\"}]}}},\"duration\":425,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:53:46'),
(172, '9c3aff26-4501-415e-b59e-62829369b622', '9c3aff26-b3b1-4c4b-970f-f2eca94ab812', NULL, 1, 'view', '{\"name\":\"errors::404\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/404.blade.php\",\"data\":[\"exception\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:53:47'),
(173, '9c3aff26-6622-4760-9e76-cb917517a2fc', '9c3aff26-b3b1-4c4b-970f-f2eca94ab812', NULL, 1, 'view', '{\"name\":\"errors::minimal\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/minimal.blade.php\",\"data\":[\"exception\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:53:47'),
(174, '9c3aff26-b03c-4924-a5d4-4677933fad95', '9c3aff26-b3b1-4c4b-970f-f2eca94ab812', NULL, 1, 'debugbar', '{\"requestId\":\"Xc2dcbe454de0146e538e78919c07d803\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:53:47'),
(175, '9c3aff26-b1ac-4aea-b09e-323208e3132e', '9c3aff26-b3b1-4c4b-970f-f2eca94ab812', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/storage\\/2024-06-07-05-53-45.jpg\",\"method\":\"GET\",\"controller_action\":null,\"middleware\":[],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6Im9Xek5EK0ZDR3ZIbm0veDBqZ0lXcFE9PSIsInZhbHVlIjoiSGN6d2JvZXRQRGgzK2hkZVludWV6VUQ4USt4Qmh4cS9ZcVZaaFpUWlh5aVg4V1BPWUo3cjV5NW5IRzAwaXFuRkxFVTBLZm8zamtzOTZBMmtyWHpSRkNwTXRUN3RqY1ZDQkh2V05aVXkveEt1N0QwcGJqRkVmaGNOOW1aSXNXS3ciLCJtYWMiOiIyZWQ5MWMwZmY3ZjNmZTlmNjg2NmQ1MGFiMDEzMDgyN2JkNGFhMjkxYjM0NzQzMTEwNDk2NjZiMDJiZTQ0YWU3IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImxweFJWSUFBVUlvYW1LOHZYUGRXekE9PSIsInZhbHVlIjoib0tLRC9kNWwzaGhkNm92OXhQcVVrZ1k2VWhVZU5Qcjc0MUZJV3ByNGt0eTRTUTJxeDFFYmJNZjBtSEVTYUdWTlZTTUpycXpiMFRFQkd6dm9yU2ZhT0p5MVFOaFdKQk96a1ZkellZVnJzY2tudG9DclZKNkMyMDcxdjJnaGQ1cWMiLCJtYWMiOiJkNzlmMTMwYWUzNjEwNDBhMTNiZmJhNDM3NTAyNGRiYWVjYjBlNzljYWU4ZWI3ZjQ2MzA5ZDMxNGNlYjVhNjQ2IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":404,\"response\":\"HTML Response\",\"duration\":1134,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:53:47'),
(176, '9c3aff51-b113-4433-a341-799174118744', '9c3aff51-caf5-43e3-b214-d77fb6ff7255', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"3.08\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:54:15'),
(177, '9c3aff51-b436-41cc-9c4e-bb81eddf8641', '9c3aff51-caf5-43e3-b214-d77fb6ff7255', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:54:15'),
(178, '9c3aff51-b74f-44fa-a0f1-5a0d681fb546', '9c3aff51-caf5-43e3-b214-d77fb6ff7255', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings`\",\"time\":\"0.68\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\SettingController.php\",\"line\":14,\"hash\":\"9a0c1b1878c6704a2df2ae90c2a24cef\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:54:15'),
(179, '9c3aff51-b82a-4a84-9d2f-f2ce8ba6932b', '9c3aff51-caf5-43e3-b214-d77fb6ff7255', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:54:15'),
(180, '9c3aff51-ba48-47de-82ce-9ac34f8f431a', '9c3aff51-caf5-43e3-b214-d77fb6ff7255', NULL, 1, 'view', '{\"name\":\"settings.index\",\"path\":\"\\\\resources\\\\views\\/settings\\/index.blade.php\",\"data\":[\"settings\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:54:15'),
(181, '9c3aff51-bcc4-4566-a4b7-4015e7f08373', '9c3aff51-caf5-43e3-b214-d77fb6ff7255', NULL, 1, 'view', '{\"name\":\"layouts.messages\",\"path\":\"\\\\resources\\\\views\\/layouts\\/messages.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:54:15'),
(182, '9c3aff51-bd32-4657-bc18-95e322df2a8d', '9c3aff51-caf5-43e3-b214-d77fb6ff7255', NULL, 1, 'view', '{\"name\":\"layouts.master\",\"path\":\"\\\\resources\\\\views\\/layouts\\/master.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:54:15'),
(183, '9c3aff51-bdb4-4738-9098-f7d106842495', '9c3aff51-caf5-43e3-b214-d77fb6ff7255', NULL, 1, 'view', '{\"name\":\"layouts.sidebar\",\"path\":\"\\\\resources\\\\views\\/layouts\\/sidebar.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:54:15'),
(184, '9c3aff51-beb1-40a7-b83b-c45e96eb3fb6', '9c3aff51-caf5-43e3-b214-d77fb6ff7255', NULL, 1, 'view', '{\"name\":\"layouts.footer\",\"path\":\"\\\\resources\\\\views\\/layouts\\/footer.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:54:15'),
(185, '9c3aff51-c42d-4ed0-a311-9156eaab669d', '9c3aff51-caf5-43e3-b214-d77fb6ff7255', NULL, 1, 'debugbar', '{\"requestId\":\"Xb139053c7f6e5ca44ecb80f5fdc466cc\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:54:15'),
(186, '9c3aff51-c86a-4b15-8512-d1b9cd52e2c2', '9c3aff51-caf5-43e3-b214-d77fb6ff7255', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/settings\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\SettingController@index\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\\/1\\/edit\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6Im9Xek5EK0ZDR3ZIbm0veDBqZ0lXcFE9PSIsInZhbHVlIjoiSGN6d2JvZXRQRGgzK2hkZVludWV6VUQ4USt4Qmh4cS9ZcVZaaFpUWlh5aVg4V1BPWUo3cjV5NW5IRzAwaXFuRkxFVTBLZm8zamtzOTZBMmtyWHpSRkNwTXRUN3RqY1ZDQkh2V05aVXkveEt1N0QwcGJqRkVmaGNOOW1aSXNXS3ciLCJtYWMiOiIyZWQ5MWMwZmY3ZjNmZTlmNjg2NmQ1MGFiMDEzMDgyN2JkNGFhMjkxYjM0NzQzMTEwNDk2NjZiMDJiZTQ0YWU3IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImxweFJWSUFBVUlvYW1LOHZYUGRXekE9PSIsInZhbHVlIjoib0tLRC9kNWwzaGhkNm92OXhQcVVrZ1k2VWhVZU5Qcjc0MUZJV3ByNGt0eTRTUTJxeDFFYmJNZjBtSEVTYUdWTlZTTUpycXpiMFRFQkd6dm9yU2ZhT0p5MVFOaFdKQk96a1ZkellZVnJzY2tudG9DclZKNkMyMDcxdjJnaGQ1cWMiLCJtYWMiOiJkNzlmMTMwYWUzNjEwNDBhMTNiZmJhNDM3NTAyNGRiYWVjYjBlNzljYWU4ZWI3ZjQ2MzA5ZDMxNGNlYjVhNjQ2IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"url\":[],\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/settings\\/index.blade.php\",\"data\":{\"settings\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"logo\":\"2024-06-07-05-53-45.jpg\",\"email\":\"Techmagnet@gmail.com\",\"phone\":\"01000009999\",\"location\":\"Greek Campus\",\"created_at\":\"2024-05-25T17:30:36.000000Z\",\"updated_at\":\"2024-06-07T14:53:45.000000Z\"}]}}},\"duration\":458,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:54:15'),
(187, '9c3aff52-a617-441c-8f13-b95d45a60a57', '9c3aff52-c43d-453e-b179-acafc59e7721', NULL, 1, 'view', '{\"name\":\"errors::404\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/404.blade.php\",\"data\":[\"exception\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:54:16'),
(188, '9c3aff52-a9e0-4553-aa57-3538daf34647', '9c3aff52-c43d-453e-b179-acafc59e7721', NULL, 1, 'view', '{\"name\":\"errors::minimal\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/minimal.blade.php\",\"data\":[\"exception\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:54:16'),
(189, '9c3aff52-c057-4b1e-b377-1b6cc145633b', '9c3aff52-c43d-453e-b179-acafc59e7721', NULL, 1, 'debugbar', '{\"requestId\":\"X49ed2d10e89dd0293e0fa16aaca02561\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:54:16'),
(190, '9c3aff52-c208-41a5-9ec6-80539b9f860f', '9c3aff52-c43d-453e-b179-acafc59e7721', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/storage\\/2024-06-07-05-53-45.jpg\",\"method\":\"GET\",\"controller_action\":null,\"middleware\":[],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6ImZVbXVDd2pvU1ZqMlgrOWZmL2RKdHc9PSIsInZhbHVlIjoiUmxJMUV4R1F5bk91V0o3VUY5UEZwTjZLZ25BVVQ2Smd0KzRIeFhpd1l3Yy9yVHdqV25YaWt0dnBzMHp5citUMkhMdDY4R1ZCVEQ3ZldDaVJaeDdTSjFqR1pHNnZoc3JrVjU1cnc2TERaMU9CZmxRanFDYS9DK3RwQ1g3WUNrZGYiLCJtYWMiOiJlMWQxZTllOGRlNjU2NzZjYjhiZmZkZTA4OTlmNzE5ZWM1ZjljN2MyOThjMmM0MDZhMzYzZTIwMDk5YTQ4NzlmIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IlBFb0ZoWHMvcTdqb2FMUjY3L0VCbkE9PSIsInZhbHVlIjoieGRoVitKWEJwK0Z2b0twWnUwc3I5N3A2bXRBWkdpZWYwNE9pb0g4U2V6NzJnSVlVS2tWeGRPd3hzMWZyN1dhWkpPMEZqekJuSTVicTQ2ZEM0bFM1Q1FESHVQNnpiNDJWekM4eCtaV1JWODZ4OE9DRmlQaU9Bdk1sM0JHVGJ5aDYiLCJtYWMiOiI1ZDE4Mzc3YjJjZGZjMmRiZWQxMTYxN2EwZGFjOWIwMzJlODVmOGFhOGFjMzUwNGIzZDJmYTc1MDY1NmE5NjgwIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":404,\"response\":\"HTML Response\",\"duration\":587,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:54:16'),
(191, '9c3aff7b-8e69-43b8-8cb6-4ddfe7716904', '9c3aff7b-aaba-4468-a917-6c82c2afb672', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"15.07\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:54:43'),
(192, '9c3aff7b-92c6-45ca-87ad-64cded998041', '9c3aff7b-aaba-4468-a917-6c82c2afb672', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:54:43'),
(193, '9c3aff7b-96c5-46e1-a1df-14b2c59121d1', '9c3aff7b-aaba-4468-a917-6c82c2afb672', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings`\",\"time\":\"0.53\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\SettingController.php\",\"line\":14,\"hash\":\"9a0c1b1878c6704a2df2ae90c2a24cef\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:54:43'),
(194, '9c3aff7b-97d4-4f91-bb1d-246f8f59b08c', '9c3aff7b-aaba-4468-a917-6c82c2afb672', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:54:43'),
(195, '9c3aff7b-9a56-42d5-a087-5693be77b573', '9c3aff7b-aaba-4468-a917-6c82c2afb672', NULL, 1, 'view', '{\"name\":\"settings.index\",\"path\":\"\\\\resources\\\\views\\/settings\\/index.blade.php\",\"data\":[\"settings\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:54:43'),
(196, '9c3aff7b-9db3-4649-a166-92523c2f2770', '9c3aff7b-aaba-4468-a917-6c82c2afb672', NULL, 1, 'view', '{\"name\":\"layouts.messages\",\"path\":\"\\\\resources\\\\views\\/layouts\\/messages.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:54:43'),
(197, '9c3aff7b-9e31-4803-9cfe-44d07e7d9de7', '9c3aff7b-aaba-4468-a917-6c82c2afb672', NULL, 1, 'view', '{\"name\":\"layouts.master\",\"path\":\"\\\\resources\\\\views\\/layouts\\/master.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:54:43'),
(198, '9c3aff7b-9eb1-4b53-a4e2-105c526d9f8f', '9c3aff7b-aaba-4468-a917-6c82c2afb672', NULL, 1, 'view', '{\"name\":\"layouts.sidebar\",\"path\":\"\\\\resources\\\\views\\/layouts\\/sidebar.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:54:43'),
(199, '9c3aff7b-9fbb-4b0f-8a78-49cfc5fc6365', '9c3aff7b-aaba-4468-a917-6c82c2afb672', NULL, 1, 'view', '{\"name\":\"layouts.footer\",\"path\":\"\\\\resources\\\\views\\/layouts\\/footer.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:54:43'),
(200, '9c3aff7b-a67a-43d6-a5b5-a74d7bff9ece', '9c3aff7b-aaba-4468-a917-6c82c2afb672', NULL, 1, 'debugbar', '{\"requestId\":\"X483e84a64a04427eabc88f55c2b353f9\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:54:43'),
(201, '9c3aff7b-a80f-422e-9b33-dbbe8a7a316a', '9c3aff7b-aaba-4468-a917-6c82c2afb672', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/settings\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\SettingController@index\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\\/1\\/edit\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6ImZVbXVDd2pvU1ZqMlgrOWZmL2RKdHc9PSIsInZhbHVlIjoiUmxJMUV4R1F5bk91V0o3VUY5UEZwTjZLZ25BVVQ2Smd0KzRIeFhpd1l3Yy9yVHdqV25YaWt0dnBzMHp5citUMkhMdDY4R1ZCVEQ3ZldDaVJaeDdTSjFqR1pHNnZoc3JrVjU1cnc2TERaMU9CZmxRanFDYS9DK3RwQ1g3WUNrZGYiLCJtYWMiOiJlMWQxZTllOGRlNjU2NzZjYjhiZmZkZTA4OTlmNzE5ZWM1ZjljN2MyOThjMmM0MDZhMzYzZTIwMDk5YTQ4NzlmIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IlBFb0ZoWHMvcTdqb2FMUjY3L0VCbkE9PSIsInZhbHVlIjoieGRoVitKWEJwK0Z2b0twWnUwc3I5N3A2bXRBWkdpZWYwNE9pb0g4U2V6NzJnSVlVS2tWeGRPd3hzMWZyN1dhWkpPMEZqekJuSTVicTQ2ZEM0bFM1Q1FESHVQNnpiNDJWekM4eCtaV1JWODZ4OE9DRmlQaU9Bdk1sM0JHVGJ5aDYiLCJtYWMiOiI1ZDE4Mzc3YjJjZGZjMmRiZWQxMTYxN2EwZGFjOWIwMzJlODVmOGFhOGFjMzUwNGIzZDJmYTc1MDY1NmE5NjgwIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"url\":[],\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/settings\\/index.blade.php\",\"data\":{\"settings\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"logo\":\"2024-06-07-05-53-45.jpg\",\"email\":\"Techmagnet@gmail.com\",\"phone\":\"01000009999\",\"location\":\"Greek Campus\",\"created_at\":\"2024-05-25T17:30:36.000000Z\",\"updated_at\":\"2024-06-07T14:53:45.000000Z\"}]}}},\"duration\":534,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 17:54:43'),
(202, '9c3aff7c-69c9-4bcf-8f81-a4d7798f4d35', '9c3aff7c-81e9-45bd-919c-aa4d05b93c6b', NULL, 1, 'view', '{\"name\":\"errors::404\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/404.blade.php\",\"data\":[\"exception\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:54:43'),
(203, '9c3aff7c-6eb4-486b-ac82-2c93dde80a06', '9c3aff7c-81e9-45bd-919c-aa4d05b93c6b', NULL, 1, 'view', '{\"name\":\"errors::minimal\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/minimal.blade.php\",\"data\":[\"exception\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:54:43'),
(204, '9c3aff7c-7e61-4ed6-97fd-4c495056adfb', '9c3aff7c-81e9-45bd-919c-aa4d05b93c6b', NULL, 1, 'debugbar', '{\"requestId\":\"X2cf636a97eaa4e8d10fa1dcd65252b93\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:54:43'),
(205, '9c3aff7c-8015-4e7f-a66c-2ff64c427a33', '9c3aff7c-81e9-45bd-919c-aa4d05b93c6b', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/storage\\/2024-06-07-05-53-45.jpg\",\"method\":\"GET\",\"controller_action\":null,\"middleware\":[],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IjVpeW9KM2lhR3FHNHJIN1BQdGRxeXc9PSIsInZhbHVlIjoibm1FREEzQ1dTUkR6OGtaek5aZDlEYTV0eGNWQkxySmJtZWxtQmxWKy8rWnNTU2hSZ0FQSXEyYy9ycnlVSDJaR3pBQW0zZVpEczRUb24rWWFVWlhzcnhpaDNXdENHdCtTOVRVUkFSbnVVMGhxKytlVW9FdnBQQkJuMkg1djFDTXoiLCJtYWMiOiIyMGM5MDdlMDc1MjdkM2JhYjZiZTRlOWUzYWIwZjVhNmY1YzI5ZGEzMTFiMTViNGE3ZWY1NzA5NDQwZjRiMDc2IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6Ik0yNHVSWDFteUUvaFVqVzFFMXdHMEE9PSIsInZhbHVlIjoiWlZLMTJkc2VaMHhCNWcxL0haTDIxS3ZRZG5mblhMRTRzM1QwaCthNGtLT2NuQU5SNC85MENFU29IOXBlL2VmZWlxbW9pRm1idGxzSUhDdjlyN2JaK2NTRW9xL1N3TEJIa3BHaWF4MnJIWE1mbm1oSEsrQWw5NHAzeVF0cVdKcWUiLCJtYWMiOiJhOWEzNTAyMzAwZDM2Y2E2NGE2NjY3NmY2ODE0MDFlM2I1NGJmNGY4MDM5MGUwZTllNTUyNzdiNWM0Yzg0MDY2IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":404,\"response\":\"HTML Response\",\"duration\":498,\"memory\":24,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:54:43'),
(206, '9c3b015d-26db-4a90-b18a-7677a86ab282', '9c3b015d-49a1-49e8-9c23-fb0f8b0cec7b', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:59:58'),
(207, '9c3b015d-cdee-4b83-b630-1f3cdb93f975', '9c3b015e-1f63-49ac-b84a-8f79d2e3219f', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:59:59'),
(208, '9c3b015e-3d81-416f-a616-2b89690c0050', '9c3b015e-986b-40f5-a125-73a14a5f2fdc', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:59:59'),
(209, '9c3b015e-7a34-45ad-9d2b-052ecbbe202b', '9c3b015e-c6a6-4091-b018-808395ca1b1f', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:59:59'),
(210, '9c3b015e-987f-40d2-a6e7-687e43523ba1', '9c3b015e-d25d-4283-ab79-6312e12282ba', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:59:59'),
(211, '9c3b0160-d6b1-4434-8ba9-5f25301de3e8', '9c3b0160-f3a6-454c-9ffc-fe1654a8f2a0', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:01'),
(212, '9c3b015e-cd97-4714-9a59-bc1d4842334a', '9c3b0161-3d4e-49ee-9d91-496676f72459', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:00'),
(213, '9c3b015e-9a21-4138-aae3-7b0b9d4e6529', '9c3b0161-e1f9-4223-b00f-db3741305abd', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 17:59:59'),
(214, '9c3b0160-1a90-4b09-a92a-13bd871d49c6', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:00'),
(215, '9c3b0162-619e-4e96-a83c-f1e77550264b', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` limit 1\",\"time\":\"143.16\",\"slow\":true,\"file\":\"Command line code\",\"line\":1,\"hash\":\"4e3ac28faeeb88928cb0b8333b289c45\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:02'),
(216, '9c3b0162-623d-415e-9c82-e60c6b6417a5', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:02'),
(217, '9c3b0162-b7cb-4218-8c42-d53b4bc60e1f', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `assignments` limit 1\",\"time\":\"130.78\",\"slow\":true,\"file\":\"Command line code\",\"line\":1,\"hash\":\"517f79a0011ce91c603a40ae87b028bf\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:02'),
(218, '9c3b0162-b823-4cd3-b7e8-cc5821c57e3b', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Assignment\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:02'),
(219, '9c3b0163-31c7-44a3-81de-e0adec1338f0', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `attendances` limit 1\",\"time\":\"297.96\",\"slow\":true,\"file\":\"Command line code\",\"line\":1,\"hash\":\"006c5e08276aad8557f56d1450143f96\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:02'),
(220, '9c3b0163-322a-41d1-bae9-7b87656d27fd', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Attendance\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:02'),
(221, '9c3b0163-3881-4a0d-91fe-85dcf188f1b6', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `blogs` limit 1\",\"time\":\"1.14\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"00fb6bb17b98eed9804c9f4abd5a0556\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:02'),
(222, '9c3b0163-38e3-45d5-83bf-9c6470401567', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Blog\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:02'),
(223, '9c3b0163-3f3e-4f04-882a-6efc50687dae', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `categories` limit 1\",\"time\":\"0.73\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"1987c517c92f01ecebc79e41fa5b235f\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:02'),
(224, '9c3b0163-3f9f-405d-97a5-19f02e32b47a', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Category\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:02'),
(225, '9c3b0163-462c-4587-90b3-ea724040d5e5', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `chats` limit 1\",\"time\":\"1.48\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"3726f5b313d2e3709da012a702ef47b6\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:02'),
(226, '9c3b0163-46ab-4330-b7fd-484bebeb52e2', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Chat\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:02'),
(227, '9c3b0163-4cd5-4be0-9ec1-5bbd13b064d6', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `cities` limit 1\",\"time\":\"0.94\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"269e6705c221f4d90d70a97969c821e7\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:02'),
(228, '9c3b0163-4d30-46ab-9425-e0a4fa4ab166', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\City\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:02'),
(229, '9c3b0163-6da1-464f-95ea-8041558fe421', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `courses` limit 1\",\"time\":\"69.75\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"24d25b6d0de144c5278dccce44176f98\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:02'),
(230, '9c3b0163-6dff-4714-b40c-32db2b22e8e1', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Course\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:02'),
(231, '9c3b0163-f967-4d3f-83e6-3187a7767ead', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `images` limit 1\",\"time\":\"339.31\",\"slow\":true,\"file\":\"Command line code\",\"line\":1,\"hash\":\"15639a2dc6daad0d4453c786ad5fe7ec\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(232, '9c3b0163-f9ff-47bd-936f-c5006359de05', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Image\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(233, '9c3b0164-21f4-4e62-8a69-70536cba1121', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `materials` limit 1\",\"time\":\"80.03\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"689c2ef4d49cf06afdb32ad7a46af973\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(234, '9c3b0164-2258-4f88-9c1a-46490162c693', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Material\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(235, '9c3b0164-28f2-4f5b-ad5e-366dfd9e1e92', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `objectives` limit 1\",\"time\":\"1.04\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"6fa2af8d5152b50f461bc08336ab8b66\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(236, '9c3b0164-2952-449c-a711-1dc93df1aa3b', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Objective\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(237, '9c3b0164-30ad-48d8-9dcf-c2675054998b', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `permissions` limit 1\",\"time\":\"1.22\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"51e9d969f17c78f90d8e7681004a1de9\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(238, '9c3b0164-3117-469f-9b75-0b40e7419d87', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Permission\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(239, '9c3b0164-37c9-4fed-b60b-12e1c0fdea71', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `portfolios` limit 1\",\"time\":\"1.44\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"eacdca4b9d1f09a29d90c08f1558e889\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(240, '9c3b0164-3833-4bdc-ac3a-0b2599e1bc09', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Portfolio\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(241, '9c3b0164-627e-4ca1-9d40-411e8bb28f98', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `projects` limit 1\",\"time\":\"92.00\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"ab5539b5c81f6bce8d9a0876b9fcbeb1\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(242, '9c3b0164-62ee-4cd5-8426-813d1a932de3', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Project\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(243, '9c3b0164-802e-450b-acc2-2501ba9bbf8c', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `questions` limit 1\",\"time\":\"57.95\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"823df4ea3c5beee511273cecde5fe170\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(244, '9c3b0164-808f-418b-ae0a-cfd9ef29460f', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Question\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(245, '9c3b0164-8723-4b49-95a2-5f0ecee2b1a6', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `quizzes` limit 1\",\"time\":\"1.48\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"0f9cf2965c9481cd6546d0e5788625cd\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(246, '9c3b0164-8799-4b30-99f2-613bba2883f7', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Quiz\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(247, '9c3b0164-a9a9-4e2f-a381-e16bc55f32f3', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `recordings` limit 1\",\"time\":\"70.92\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"7715216264953b60c64597019b808a30\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(248, '9c3b0164-aa06-4821-b689-dbf7f63e8f0b', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Recording\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(249, '9c3b0164-caa7-4f27-a7b4-ffc216d4ba52', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `roadmaps` limit 1\",\"time\":\"66.17\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"5b873386a951750a47be14bd1fccdf8e\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(250, '9c3b0164-cb0c-4cf1-b836-bf3f7a999903', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Roadmap\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(251, '9c3b0164-fe3e-4d4d-bfee-e109e34bcb0d', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `roles` limit 1\",\"time\":\"113.69\",\"slow\":true,\"file\":\"Command line code\",\"line\":1,\"hash\":\"7b92920f696a1378bfc848f6d6479bb6\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(252, '9c3b0164-fe96-4bf2-abd3-f388d1310ebb', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Role\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:03'),
(253, '9c3b0165-0b0b-460b-b920-e4e7867ad713', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `schedules` limit 1\",\"time\":\"17.63\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"a9a20bc48e1d5dab9dd3cfb8f5cc297a\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:04'),
(254, '9c3b0165-0b68-4b21-8429-782441656d13', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Schedule\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:04'),
(255, '9c3b0165-1265-48e9-9342-5aac78a0a6d0', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sessions` limit 1\",\"time\":\"1.83\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"5700c04403bd455f3d8f29c063bec0a5\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:04'),
(256, '9c3b0165-12c4-4219-9207-f1294ee499a5', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Session\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:04'),
(257, '9c3b0165-19fa-47b9-a195-5a2c956d0e0f', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings` limit 1\",\"time\":\"0.84\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"fa0ff947d644db0afa39e9f3fd6a5cf9\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:04'),
(258, '9c3b0165-1a5d-425b-a674-fa81de271115', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:04'),
(259, '9c3b0165-3882-43d1-a650-2463f001ea69', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `skills` limit 1\",\"time\":\"58.32\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"ccb2e89705f54c4b01083b3c60fe4629\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:04'),
(260, '9c3b0165-38ea-41d8-baf3-8d76b6c1eb60', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Skill\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:04'),
(261, '9c3b0165-57e0-4704-b1a0-b206ca3593e4', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `student_progress` limit 1\",\"time\":\"61.32\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"0737d183c9d5ad32091094f8d0b37d0b\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:04'),
(262, '9c3b0165-5840-47a7-9b8c-fefb98b682dd', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\StudentProgress\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:04'),
(263, '9c3b0165-7082-4068-8019-94cb9103ea78', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `super_skills` limit 1\",\"time\":\"45.86\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"ca13d86010e4eb2c7e4679db342281ac\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:04'),
(264, '9c3b0165-70e3-4b7b-b798-ce5e1e99822d', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\SuperSkill\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:04'),
(265, '9c3b0165-84bf-4f0c-b02b-5b565de369c9', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `support_requests` limit 1\",\"time\":\"33.44\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"a670d200107a7d03ec8459bd70b6b101\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:04');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(266, '9c3b0165-852e-4d75-9962-dd66baf77e17', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\SupportRequest\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:04'),
(267, '9c3b0165-8f42-47cc-a385-556e545cb8aa', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` limit 1\",\"time\":\"9.34\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"26d128571acc3ade5f7d4401c1737345\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:04'),
(268, '9c3b0165-8fc3-45c0-9310-645ae2e9b64e', '9c3b0165-99cf-4492-bab6-e039d8be0dc8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\User\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:04'),
(269, '9c3b0168-88f7-4a9f-a208-91267fc4c785', '9c3b0168-a715-4cc5-b766-49a2a72cdce2', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:06'),
(270, '9c3b0169-8002-445d-a11b-f42d31f72b56', '9c3b0169-8788-458c-b664-26e8942dcb59', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:06'),
(271, '9c3b016c-1ff0-4b29-ade2-fe04374f5ed4', '9c3b0171-e9c8-44d8-aa93-6afd9d4f80fa', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:08'),
(272, '9c3b0174-6b54-4965-a181-5a4ba9cd91e7', '9c3b0174-7d12-48ff-9fd9-9c9566d6e059', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:14'),
(273, '9c3b0191-7172-4626-ba55-c0236c491440', '9c3b0192-a6b8-41db-a785-e98f6de02849', '23a5e7b84a41f282c67d364595f09303', 0, 'exception', '{\"class\":\"Symfony\\\\Component\\\\Console\\\\Exception\\\\NamespaceNotFoundException\",\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":669,\"message\":\"There are no commands defined in the \\\"ide-helper\\\" namespace.\",\"context\":null,\"trace\":[{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":720},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":266},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":175},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Console\\\\Kernel.php\",\"line\":201},{\"file\":\"D:\\\\tech-magnet\\\\artisan\",\"line\":35}],\"line_preview\":{\"660\":\"                if (1 == \\\\count($alternatives)) {\",\"661\":\"                    $message .= \\\"\\\\n\\\\nDid you mean this?\\\\n    \\\";\",\"662\":\"                } else {\",\"663\":\"                    $message .= \\\"\\\\n\\\\nDid you mean one of these?\\\\n    \\\";\",\"664\":\"                }\",\"665\":\"\",\"666\":\"                $message .= implode(\\\"\\\\n    \\\", $alternatives);\",\"667\":\"            }\",\"668\":\"\",\"669\":\"            throw new NamespaceNotFoundException($message, $alternatives);\",\"670\":\"        }\",\"671\":\"\",\"672\":\"        $exact = \\\\in_array($namespace, $namespaces, true);\",\"673\":\"        if (\\\\count($namespaces) > 1 && !$exact) {\",\"674\":\"            throw new NamespaceNotFoundException(sprintf(\\\"The namespace \\\\\\\"%s\\\\\\\" is ambiguous.\\\\nDid you mean one of these?\\\\n%s.\\\", $namespace, $this->getAbbreviationSuggestions(array_values($namespaces))), array_values($namespaces));\",\"675\":\"        }\",\"676\":\"\",\"677\":\"        return $exact ? $namespace : reset($namespaces);\",\"678\":\"    }\",\"679\":\"\"},\"hostname\":\"DESKTOP-359TRFP\",\"occurrences\":1}', '2024-06-07 18:00:33'),
(274, '9c3b0197-72e4-453b-b8fe-5a2841c31baf', '9c3b0197-7b35-4fe9-9edb-4d4c5ab19b0c', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:37'),
(275, '9c3b01ae-fbd6-4416-9dba-527b3037f4e1', '9c3b01af-06dc-4405-83a4-31e47d852a48', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:52'),
(276, '9c3b01af-528a-4a37-99cd-18ae7a7b5ba5', '9c3b01af-61ea-4246-9a69-499fa2ade7a9', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:00:52'),
(277, '9c3b020a-2825-4c5f-88c5-144aea06058d', '9c3b020a-3365-4a3e-a755-9fe8dd5ce90e', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:01:52'),
(278, '9c3b020c-1598-4152-a056-139813a670bf', '9c3b020c-1bc1-4a2f-a3d6-6c287e99e5cd', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:01:53'),
(279, '9c3b0250-420c-4978-8357-1a767aa016ea', '9c3b0250-4c18-4ef3-b89d-85c7c7f50020', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:38'),
(280, '9c3b0250-6336-4f4d-892b-97708b2a3e48', '9c3b0250-854e-4b21-94c6-36a46bd01a0a', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:38'),
(281, '9c3b0250-6a7c-4117-abae-e15356c6ec01', '9c3b0250-8c78-47cb-b362-658ec67c1264', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:38'),
(282, '9c3b0250-91ac-495d-9a62-90c8b1d1c613', '9c3b0250-9b86-45b7-a855-896321e1035e', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:38'),
(283, '9c3b0250-6a7b-431f-aeb0-fd9b532f4fd2', '9c3b0250-a870-46d9-8c07-994f2797355a', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:38'),
(284, '9c3b0250-c69f-4137-822d-d511a5eccdc9', '9c3b0250-e029-4a12-a880-e88cab12eeb2', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:38'),
(285, '9c3b0250-e839-4f05-b1d2-d7e053c81852', '9c3b0250-feff-4ab7-a20f-d3e52343ab85', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:38'),
(286, '9c3b0251-be95-4bec-b102-f1975dc721e8', '9c3b0251-cfbe-49b9-95c8-5e927a3b3d5e', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:39'),
(287, '9c3b0252-05d0-4aa9-ba05-1d30696e1a46', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:39'),
(288, '9c3b0252-35e0-4c8e-b27f-65a0afe3edc1', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` limit 1\",\"time\":\"6.62\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"4e3ac28faeeb88928cb0b8333b289c45\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:39'),
(289, '9c3b0252-3778-49fe-bb9c-4fb9a84edd1c', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:39'),
(290, '9c3b0252-6046-4a40-801c-a86c122600b4', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `assignments` limit 1\",\"time\":\"55.95\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"517f79a0011ce91c603a40ae87b028bf\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:39'),
(291, '9c3b0252-60b3-4bdb-9a1b-1c3e3c3ac766', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Assignment\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:39'),
(292, '9c3b0252-756d-4abf-b4c8-808b0803daee', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `attendances` limit 1\",\"time\":\"36.65\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"006c5e08276aad8557f56d1450143f96\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:39'),
(293, '9c3b0252-75c9-420a-a3d3-c08ae596d4c3', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Attendance\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:39'),
(294, '9c3b0252-879a-42ce-a226-1e94385d7c71', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `blogs` limit 1\",\"time\":\"24.78\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"00fb6bb17b98eed9804c9f4abd5a0556\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:39'),
(295, '9c3b0252-880b-4567-9dc0-8116c1b45476', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Blog\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:39'),
(296, '9c3b0252-9ad0-4859-bba0-de02aaf62a6a', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `categories` limit 1\",\"time\":\"29.80\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"1987c517c92f01ecebc79e41fa5b235f\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:39'),
(297, '9c3b0252-9b32-4750-a398-9ce4b4452e7e', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Category\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:39'),
(298, '9c3b0252-c21c-471f-a5d1-093eb34810ff', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `chats` limit 1\",\"time\":\"83.28\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"3726f5b313d2e3709da012a702ef47b6\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:39'),
(299, '9c3b0252-c276-4dcb-8a24-dbe844c629cc', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Chat\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:39'),
(300, '9c3b0252-dae8-4e1a-b47f-68d500826f5c', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `cities` limit 1\",\"time\":\"46.34\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"269e6705c221f4d90d70a97969c821e7\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:39'),
(301, '9c3b0252-db3a-4eb5-8453-0481411d81d0', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\City\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:39'),
(302, '9c3b0253-0139-4d36-831d-29e192364328', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `courses` limit 1\",\"time\":\"83.35\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"24d25b6d0de144c5278dccce44176f98\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:39'),
(303, '9c3b0253-01c9-4eb7-a17e-399cb5e9895f', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Course\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:39'),
(304, '9c3b0253-152d-4875-b623-a31c2bbcd4f0', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `images` limit 1\",\"time\":\"31.03\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"15639a2dc6daad0d4453c786ad5fe7ec\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(305, '9c3b0253-15ad-439c-b290-ce540f70a4f5', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Image\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(306, '9c3b0253-25fe-45c6-b8d5-6ee3d12e05cf', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `materials` limit 1\",\"time\":\"25.25\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"689c2ef4d49cf06afdb32ad7a46af973\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(307, '9c3b0253-2652-4aa9-a370-8aa58ccba83e', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Material\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(308, '9c3b0253-2e48-40cd-8aca-5118087f17fa', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `objectives` limit 1\",\"time\":\"6.80\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"6fa2af8d5152b50f461bc08336ab8b66\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(309, '9c3b0253-2eae-4887-92f7-31c49fc7f166', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Objective\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(310, '9c3b0253-4c6e-44bc-aa9a-c627a4804334', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `permissions` limit 1\",\"time\":\"60.03\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"51e9d969f17c78f90d8e7681004a1de9\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(311, '9c3b0253-4ceb-432d-b16a-dff0bbf84f8b', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Permission\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(312, '9c3b0253-67ae-4cd3-b196-9923d6a0d47f', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `portfolios` limit 1\",\"time\":\"51.37\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"eacdca4b9d1f09a29d90c08f1558e889\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(313, '9c3b0253-680e-4e32-bea6-be276e48a2a3', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Portfolio\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(314, '9c3b0253-7aea-455d-89e1-81ebc64b57d8', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `projects` limit 1\",\"time\":\"30.95\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"ab5539b5c81f6bce8d9a0876b9fcbeb1\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(315, '9c3b0253-7b4c-4e10-b8f6-d4a3af28a58e', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Project\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(316, '9c3b0253-90ed-4dfc-bf07-20d7a63f7cd9', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `questions` limit 1\",\"time\":\"40.32\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"823df4ea3c5beee511273cecde5fe170\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(317, '9c3b0253-914d-4dee-9f7c-565cc4e28a45', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Question\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(318, '9c3b0253-a565-465c-8e5c-1ae8068d4131', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `quizzes` limit 1\",\"time\":\"36.26\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"0f9cf2965c9481cd6546d0e5788625cd\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(319, '9c3b0253-a5bd-4631-be00-635b9b9eb5ae', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Quiz\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(320, '9c3b0253-bb93-479c-b91a-844f50e8b579', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `recordings` limit 1\",\"time\":\"40.36\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"7715216264953b60c64597019b808a30\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(321, '9c3b0253-bbf4-43f2-ad42-f519d58b7522', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Recording\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(322, '9c3b0253-dbac-4d9a-bfa0-097ff046121c', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `roadmaps` limit 1\",\"time\":\"64.02\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"5b873386a951750a47be14bd1fccdf8e\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(323, '9c3b0253-dc05-4f60-ae30-75221c24d61f', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Roadmap\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(324, '9c3b0253-f5b6-497d-8179-c7cd2124a0c2', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `roles` limit 1\",\"time\":\"51.99\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"7b92920f696a1378bfc848f6d6479bb6\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(325, '9c3b0253-f613-42a6-9aee-17419c41fda3', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Role\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(326, '9c3b0254-0f96-4aed-9dea-cb6ec172e7e1', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `schedules` limit 1\",\"time\":\"50.26\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"a9a20bc48e1d5dab9dd3cfb8f5cc297a\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(327, '9c3b0254-0fee-4c6b-a9fa-f2e808d2780e', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Schedule\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(328, '9c3b0254-29aa-4c5f-9274-21e09d544f76', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sessions` limit 1\",\"time\":\"50.50\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"5700c04403bd455f3d8f29c063bec0a5\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(329, '9c3b0254-2a25-49c3-93a9-f1e40ed2a33b', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Session\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(330, '9c3b0254-4263-454d-b51b-ef487ab3f4e3', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings` limit 1\",\"time\":\"43.27\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"fa0ff947d644db0afa39e9f3fd6a5cf9\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(331, '9c3b0254-42ca-4b25-bac4-335e594d46eb', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(332, '9c3b0254-49c0-45f1-a2a8-cf92c109f5b7', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `skills` limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"ccb2e89705f54c4b01083b3c60fe4629\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(333, '9c3b0254-4a25-48a8-b986-6f394fbc3d3d', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Skill\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(334, '9c3b0254-5004-4bbe-bf0a-9f1c9c2a1709', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `student_progress` limit 1\",\"time\":\"0.73\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"0737d183c9d5ad32091094f8d0b37d0b\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(335, '9c3b0254-5060-45e4-930f-5e47ec82dd27', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\StudentProgress\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(336, '9c3b0254-601e-4677-9175-113a8c9515d5', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `super_skills` limit 1\",\"time\":\"23.03\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"ca13d86010e4eb2c7e4679db342281ac\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(337, '9c3b0254-6082-4127-afc3-974021fe9e88', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\SuperSkill\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(338, '9c3b0254-6c74-45be-a053-c54248aff02f', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `support_requests` limit 1\",\"time\":\"13.78\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"a670d200107a7d03ec8459bd70b6b101\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(339, '9c3b0254-6cc5-4634-969b-7d2c980056c1', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\SupportRequest\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(340, '9c3b0254-7bab-4271-a3aa-15e2a39f70a2', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` limit 1\",\"time\":\"24.28\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"26d128571acc3ade5f7d4401c1737345\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(341, '9c3b0254-7c0a-48b7-b5a3-0d0104a1e0f5', '9c3b0254-84a5-4d4a-ae09-1f54b81f1453', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\User\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:40'),
(342, '9c3b0255-df19-4fa2-a2c9-33de514a1b01', '9c3b0256-19c6-4e70-83c2-181fef8ca8c0', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:41'),
(343, '9c3b0255-e592-4031-bd7b-c321659c2e5c', '9c3b0256-0a8e-4d75-b99c-645cbd07cbe6', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:41'),
(344, '9c3b025d-070f-40d7-867a-c1daf4e4a88b', '9c3b025d-17b3-4098-b520-b65bf29b7999', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:46'),
(345, '9c3b0260-2278-4580-8a87-dfc8c4065a17', '9c3b0260-3087-4d59-b5e5-1e9e8e4b6584', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:02:48'),
(346, '9c3b0265-14a9-481c-ad00-0086aefa45cc', '9c3b0265-269d-4962-9f96-2157f309aa2b', '23a5e7b84a41f282c67d364595f09303', 0, 'exception', '{\"class\":\"Symfony\\\\Component\\\\Console\\\\Exception\\\\NamespaceNotFoundException\",\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":669,\"message\":\"There are no commands defined in the \\\"ide-helper\\\" namespace.\",\"context\":null,\"trace\":[{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":720},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":266},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":175},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Console\\\\Kernel.php\",\"line\":201},{\"file\":\"D:\\\\tech-magnet\\\\artisan\",\"line\":35}],\"line_preview\":{\"660\":\"                if (1 == \\\\count($alternatives)) {\",\"661\":\"                    $message .= \\\"\\\\n\\\\nDid you mean this?\\\\n    \\\";\",\"662\":\"                } else {\",\"663\":\"                    $message .= \\\"\\\\n\\\\nDid you mean one of these?\\\\n    \\\";\",\"664\":\"                }\",\"665\":\"\",\"666\":\"                $message .= implode(\\\"\\\\n    \\\", $alternatives);\",\"667\":\"            }\",\"668\":\"\",\"669\":\"            throw new NamespaceNotFoundException($message, $alternatives);\",\"670\":\"        }\",\"671\":\"\",\"672\":\"        $exact = \\\\in_array($namespace, $namespaces, true);\",\"673\":\"        if (\\\\count($namespaces) > 1 && !$exact) {\",\"674\":\"            throw new NamespaceNotFoundException(sprintf(\\\"The namespace \\\\\\\"%s\\\\\\\" is ambiguous.\\\\nDid you mean one of these?\\\\n%s.\\\", $namespace, $this->getAbbreviationSuggestions(array_values($namespaces))), array_values($namespaces));\",\"675\":\"        }\",\"676\":\"\",\"677\":\"        return $exact ? $namespace : reset($namespaces);\",\"678\":\"    }\",\"679\":\"\"},\"hostname\":\"DESKTOP-359TRFP\",\"occurrences\":2}', '2024-06-07 18:02:51'),
(347, '9c3b0278-cc52-4829-8ac6-f6c5799f9f8a', '9c3b0279-20d6-48f3-89d3-f966964211a8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"6.73\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:03:04'),
(348, '9c3b0278-d862-4bb9-a28f-fa2040501b93', '9c3b0279-20d6-48f3-89d3-f966964211a8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:03:04'),
(349, '9c3b0278-e36c-4189-8138-a0146fd102e9', '9c3b0279-20d6-48f3-89d3-f966964211a8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings` where `id` = \'1\' limit 1\",\"time\":\"0.87\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"f05948e3792aaea5b38c596b4dee89cf\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:03:04'),
(350, '9c3b0278-e481-488f-b05d-de88ca0e3f5c', '9c3b0279-20d6-48f3-89d3-f966964211a8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:03:04'),
(351, '9c3b0278-f1b3-4fcd-85c5-367385b408d5', '9c3b0279-20d6-48f3-89d3-f966964211a8', NULL, 1, 'view', '{\"name\":\"settings.edit\",\"path\":\"\\\\resources\\\\views\\/settings\\/edit.blade.php\",\"data\":[\"setting\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:03:04'),
(352, '9c3b0278-f9de-40f8-9221-fd4d2e01668c', '9c3b0279-20d6-48f3-89d3-f966964211a8', NULL, 1, 'view', '{\"name\":\"layouts.master\",\"path\":\"\\\\resources\\\\views\\/layouts\\/master.blade.php\",\"data\":[\"setting\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:03:04'),
(353, '9c3b0278-fa73-471b-a993-445b16a6ae8b', '9c3b0279-20d6-48f3-89d3-f966964211a8', NULL, 1, 'view', '{\"name\":\"layouts.sidebar\",\"path\":\"\\\\resources\\\\views\\/layouts\\/sidebar.blade.php\",\"data\":[\"setting\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:03:04'),
(354, '9c3b0278-fb9a-4516-bc2c-f68d67ebbb84', '9c3b0279-20d6-48f3-89d3-f966964211a8', NULL, 1, 'view', '{\"name\":\"layouts.footer\",\"path\":\"\\\\resources\\\\views\\/layouts\\/footer.blade.php\",\"data\":[\"setting\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:03:04'),
(355, '9c3b0279-16f9-44f7-b49d-3d9a0299e960', '9c3b0279-20d6-48f3-89d3-f966964211a8', NULL, 1, 'debugbar', '{\"requestId\":\"Xb08238b9eb99bab795c0214a613f0c13\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:03:04'),
(356, '9c3b0279-1e87-4589-aff2-f3d3acba88e0', '9c3b0279-20d6-48f3-89d3-f966964211a8', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/settings\\/1\\/edit\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\SettingController@edit\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IjVpeW9KM2lhR3FHNHJIN1BQdGRxeXc9PSIsInZhbHVlIjoibm1FREEzQ1dTUkR6OGtaek5aZDlEYTV0eGNWQkxySmJtZWxtQmxWKy8rWnNTU2hSZ0FQSXEyYy9ycnlVSDJaR3pBQW0zZVpEczRUb24rWWFVWlhzcnhpaDNXdENHdCtTOVRVUkFSbnVVMGhxKytlVW9FdnBQQkJuMkg1djFDTXoiLCJtYWMiOiIyMGM5MDdlMDc1MjdkM2JhYjZiZTRlOWUzYWIwZjVhNmY1YzI5ZGEzMTFiMTViNGE3ZWY1NzA5NDQwZjRiMDc2IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6Ik0yNHVSWDFteUUvaFVqVzFFMXdHMEE9PSIsInZhbHVlIjoiWlZLMTJkc2VaMHhCNWcxL0haTDIxS3ZRZG5mblhMRTRzM1QwaCthNGtLT2NuQU5SNC85MENFU29IOXBlL2VmZWlxbW9pRm1idGxzSUhDdjlyN2JaK2NTRW9xL1N3TEJIa3BHaWF4MnJIWE1mbm1oSEsrQWw5NHAzeVF0cVdKcWUiLCJtYWMiOiJhOWEzNTAyMzAwZDM2Y2E2NGE2NjY3NmY2ODE0MDFlM2I1NGJmNGY4MDM5MGUwZTllNTUyNzdiNWM0Yzg0MDY2IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"url\":[],\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\\/1\\/edit\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/settings\\/edit.blade.php\",\"data\":{\"setting\":\"App\\\\Models\\\\Setting:1\"}},\"duration\":1511,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:03:04'),
(357, '9c3b0284-ae67-46ed-9cd9-ae9022d7917f', '9c3b0285-6cb2-4ff9-9e3a-09115649654c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"3.93\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:03:12'),
(358, '9c3b0284-b7c0-4cf6-a571-6fcf7b76077a', '9c3b0285-6cb2-4ff9-9e3a-09115649654c', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:03:12'),
(359, '9c3b0284-b9db-40e2-856f-3e48023da0da', '9c3b0285-6cb2-4ff9-9e3a-09115649654c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings` where `id` = \'1\' limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"f05948e3792aaea5b38c596b4dee89cf\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:03:12'),
(360, '9c3b0284-bac7-42b3-b1c3-1527536c7b14', '9c3b0285-6cb2-4ff9-9e3a-09115649654c', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:03:12'),
(361, '9c3b0285-5bfc-4d44-bb28-35c410c6dd07', '9c3b0285-6cb2-4ff9-9e3a-09115649654c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `settings` set `logo` = \'2024-06-07-06-03-12.jpg\', `settings`.`updated_at` = \'2024-06-07 18:03:12\' where `id` = 1\",\"time\":\"2.49\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\SettingController.php\",\"line\":97,\"hash\":\"4870c57e576f007c58e345aff52140db\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:03:12'),
(362, '9c3b0285-5d27-48d5-a9ec-0defaa9f98eb', '9c3b0285-6cb2-4ff9-9e3a-09115649654c', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Setting:1\",\"changes\":{\"logo\":\"2024-06-07-06-03-12.jpg\",\"updated_at\":\"2024-06-07 18:03:12\"},\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:03:12'),
(363, '9c3b0285-6968-4950-bd73-5022f93d3738', '9c3b0285-6cb2-4ff9-9e3a-09115649654c', NULL, 1, 'debugbar', '{\"requestId\":\"Xd3db22d8f05e7555c76ae41b90e8fbdd\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:03:13'),
(364, '9c3b0285-6a4a-40af-9e06-02f76504093c', '9c3b0285-6cb2-4ff9-9e3a-09115649654c', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/settings\\/1\",\"method\":\"PUT\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\SettingController@update\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"content-length\":\"5928\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"origin\":\"http:\\/\\/tech-magnet.edu:81\",\"content-type\":\"multipart\\/form-data; boundary=----WebKitFormBoundaryNxBSqkj9hFM7o1md\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\\/1\\/edit\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IlFRU3Qvci9zbVVoRzRhYjljNjJTVHc9PSIsInZhbHVlIjoiak5RYWg1dURMV1BNRXQ3WkdtMGxtTy9ZTnhGU0dhQ2dVY2daMXMyQVhwa0Q0SXZrQlk1aFU4OXhHYkpJdUpmOVNocXF0b1pjcnowNnNXTE5pNTBNdjYxUDdrYkpZSnl3aU56OGdNa01LN3hYR2o4cGhtZVppaTRHdmJXdlBkUDkiLCJtYWMiOiJkOWM4MjM0ZGJhN2MyMmI4NzcyNGYzNWNmNGJiMjUzMTQ4ZmJkODI2OTgwOGZiNzY4ZjBjNjY2YTAwNTFkYWMzIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IkM5QTlNWENFaTMwUjMwSTBGMDU3Q3c9PSIsInZhbHVlIjoiUkdOUGtmamorKytMYzdMajcwUXFScHpJQk0yanIvWXBjY2ZYMGtmOCtuRnZ2eTc0UGhnb3hDb2puM3B6UzgybEtDZVYrY0VnWDNvMnpJZWdKWVBFZ1U1MzVnYTZNaWhuN205Y3haWVVpTjNlMTRzd21ERWI2US9HaTVnN002MjUiLCJtYWMiOiI5YzljNGJiMjFjZWYwOTgzZjNjY2QyMzEwZjVhNWNjYTRlNjg4MGZiM2IxOTJmNDg2NDY1MjE1MmM2NDMyNDhhIiwidGFnIjoiIn0%3D\"},\"payload\":{\"_method\":\"PUT\",\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"email\":\"Techmagnet@gmail.com\",\"phone\":\"01000009999\",\"location\":\"Greek Campus\",\"logo\":{\"name\":\"photo_2024-06-07_17-53-26.jpg\",\"size\":\"5.173KB\"}},\"session\":{\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"url\":[],\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\\/1\\/edit\"},\"_flash\":{\"old\":[\"message\",\"_old_input\"],\"new\":[]},\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"message\":\"Setting is Updated Successfully\",\"_old_input\":{\"_method\":\"PUT\",\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"email\":\"Techmagnet@gmail.com\",\"phone\":\"01000009999\",\"location\":\"Greek Campus\"},\"PHPDEBUGBAR_STACK_DATA\":{\"Xd3db22d8f05e7555c76ae41b90e8fbdd\":null}},\"response_status\":302,\"response\":\"Redirected to http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\",\"duration\":1088,\"memory\":30,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:03:13'),
(365, '9c3b0285-fb4d-4a57-8da5-890cbede5060', '9c3b0286-1492-47f1-8883-53f361297fe6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"22.83\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:03:13'),
(366, '9c3b0285-ffc9-469f-8851-ab12da1dfd32', '9c3b0286-1492-47f1-8883-53f361297fe6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:03:13'),
(367, '9c3b0286-0282-4916-834e-dcf1baa35510', '9c3b0286-1492-47f1-8883-53f361297fe6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings`\",\"time\":\"0.63\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\SettingController.php\",\"line\":15,\"hash\":\"9a0c1b1878c6704a2df2ae90c2a24cef\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:03:13'),
(368, '9c3b0286-0366-4260-8389-760ddf1f617d', '9c3b0286-1492-47f1-8883-53f361297fe6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:03:13'),
(369, '9c3b0286-05c0-4c2f-9efb-fb3b9f8eb3de', '9c3b0286-1492-47f1-8883-53f361297fe6', NULL, 1, 'view', '{\"name\":\"settings.index\",\"path\":\"\\\\resources\\\\views\\/settings\\/index.blade.php\",\"data\":[\"settings\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:03:13'),
(370, '9c3b0286-07b5-4d69-a50a-7059c2594d1e', '9c3b0286-1492-47f1-8883-53f361297fe6', NULL, 1, 'view', '{\"name\":\"layouts.messages\",\"path\":\"\\\\resources\\\\views\\/layouts\\/messages.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:03:13'),
(371, '9c3b0286-082a-4bb9-9aef-8b9fd6bd67d9', '9c3b0286-1492-47f1-8883-53f361297fe6', NULL, 1, 'view', '{\"name\":\"layouts.master\",\"path\":\"\\\\resources\\\\views\\/layouts\\/master.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:03:13'),
(372, '9c3b0286-0898-4bcc-9639-bcf5e1304015', '9c3b0286-1492-47f1-8883-53f361297fe6', NULL, 1, 'view', '{\"name\":\"layouts.sidebar\",\"path\":\"\\\\resources\\\\views\\/layouts\\/sidebar.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:03:13'),
(373, '9c3b0286-0995-41fa-98d4-3f7e8ed522f5', '9c3b0286-1492-47f1-8883-53f361297fe6', NULL, 1, 'view', '{\"name\":\"layouts.footer\",\"path\":\"\\\\resources\\\\views\\/layouts\\/footer.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:03:13'),
(374, '9c3b0286-113f-41f8-bbd7-9a999ce77497', '9c3b0286-1492-47f1-8883-53f361297fe6', NULL, 1, 'debugbar', '{\"requestId\":\"Xd1b64ae3124774ba1f4733958af201a8\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:03:13');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(375, '9c3b0286-1260-4c4f-bff8-3185ca4152a1', '9c3b0286-1492-47f1-8883-53f361297fe6', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/settings\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\SettingController@index\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\\/1\\/edit\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IkJ0RTZXMzNGd0hRQzVKZ09Vc2l1dVE9PSIsInZhbHVlIjoicnRsWHZvNXM4T3JzRjMzZVZGdEhZUTVqaUdjMlZiaWU1eWhMNEFpWWZmUFY5RDFvTC9QYXh5TjVqeTNEZ2xQY0JWSnlLMHlXMTRXZjZ5ZjJZUDRaMlhjWVpkalVMZ3dxLzlsWG5kaHZ0THhaTTNMbFZxdENxTGt1dktPWWJIQW8iLCJtYWMiOiJkYzliOWU2M2M1MzhmNzU1MGVlMzliMzdlOWIyZjE2ODc1YmZmNTZlOWU2MmQwMGUzYjFjZmE4ZGFlOTZjMmEwIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6Ilp2dk1HVWYzaUgvYjVlL0hYN1RjTGc9PSIsInZhbHVlIjoiOHFZR2ovRFRRYXJHOVRNRitCSVFWcEhRVWdvMm5Gd0U1Wk9LQW1JQm1ZNG55Uk1qWGJqN2NiY3Iwd0VEZVlXZWg0MUNPTjAwUjE4YkhYUmtoWFBGSUt1eWJrUitNNFdRZmxKeU90Z0JyT3IyellSRGVMS2JDM3F6eDd6akljNFAiLCJtYWMiOiI4MmEwNmNjODZmZGZlZWUyYTcxNDM0ZGJjZjk5NDJiNThhZTI1MWMyNzViODc0Njc3ZTU0ODc1ZTFjM2IxZTc2IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"url\":[],\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/settings\\/index.blade.php\",\"data\":{\"settings\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"logo\":\"2024-06-07-06-03-12.jpg\",\"email\":\"Techmagnet@gmail.com\",\"phone\":\"01000009999\",\"location\":\"Greek Campus\",\"created_at\":\"2024-05-25T17:30:36.000000Z\",\"updated_at\":\"2024-06-07T15:03:12.000000Z\"}]}}},\"duration\":422,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:03:13'),
(376, '9c3b0286-f6d4-43e7-a517-7ac8f0350621', '9c3b0287-26fd-4b4a-a000-a2d39c12d023', NULL, 1, 'view', '{\"name\":\"errors::404\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/404.blade.php\",\"data\":[\"exception\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:03:14'),
(377, '9c3b0286-fa78-4b7c-a19f-fb54e809174f', '9c3b0287-26fd-4b4a-a000-a2d39c12d023', NULL, 1, 'view', '{\"name\":\"errors::minimal\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/minimal.blade.php\",\"data\":[\"exception\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:03:14'),
(378, '9c3b0287-106b-4336-a3b3-4ec54989a51b', '9c3b0287-26fd-4b4a-a000-a2d39c12d023', NULL, 1, 'debugbar', '{\"requestId\":\"Xd7a138a2b0790af75c3f805e0c98c49b\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:03:14'),
(379, '9c3b0287-2522-48c2-aa56-8a3edc1660d5', '9c3b0287-26fd-4b4a-a000-a2d39c12d023', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/storage\\/2024-06-07-06-03-12.jpg\",\"method\":\"GET\",\"controller_action\":null,\"middleware\":[],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IkkxSENtNzZrQTNlQVFwV0lWTmxBWEE9PSIsInZhbHVlIjoiRkdrMHRSc3lOaDBSZUJLM2FLdVNuNm1uRnFKUVpSQVRhbnVobGwvLzRSTHE3ZFVuQ1lyWTZPNkpYZXhkRTRRc05TMlN0UG5ZRnFSeE4zTmZ3eVVkazdnRFpvQlllbVByTnFRdFBJbzQ4cUZ0MFRlS2hwR2ZyR0VMQ29VVkJxaFgiLCJtYWMiOiJmMWFkMDZmNjA0NjYwYWQ4MDU2YWNmNDYzNGUzMDNkMmU3ZTdlMWQwNWMxYWE4NGQxZGQzODNlNWMxZmQyYTk4IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IlZQTm5sV3JTMmxUckRKRGltM1hvQVE9PSIsInZhbHVlIjoiVFJhd0wzTXJxUUZRbXRScGlpTW9RMmppcjU2M3c3WXJrZWRacTBMTlh4VDBNSEFwVHZYZFVXU3dxWEs2SjZ3enhHckhxbTNQSzl4aUk5Qlp4MGUwL2JpT09POHVldEtHaWxKV1JVTTdlS0h6WTFQR2Q1a21xSWFFTCtCTTBBSVkiLCJtYWMiOiI5MTFmZDYwNmY4YmRkMzExZjA5ZTdlNjAyZjU1ZGM1ZWYzMGM5ZmUzZTQ0NjU4MzU3ZDkyNzA3MDY3MDMzNWVjIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":404,\"response\":\"HTML Response\",\"duration\":656,\"memory\":24,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:03:14'),
(380, '9c3b03c3-eedf-4780-b7f6-6cbea5b5c7c1', '9c3b03c4-ef47-45c2-b1bb-5ddbc17e1fae', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:42'),
(381, '9c3b03c3-eedf-48c7-910a-b85deb3b39e6', '9c3b03c5-0be4-4133-8c5e-0315af37ec90', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:42'),
(382, '9c3b03c3-eea6-4ec2-b965-dbd133aa23ed', '9c3b03c4-9b2c-4938-ba59-db4f475f9e01', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:42'),
(383, '9c3b03c3-ef1d-47d2-899a-8f8dbc3ae850', '9c3b03c4-9b25-4e75-a5b0-3dadc6ce1150', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:42'),
(384, '9c3b03c3-ef13-44c6-88ac-8bcf31f68149', '9c3b03c4-9b27-462e-8bff-4c935191d318', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:42'),
(385, '9c3b03c3-eea8-4edc-8c8a-9880f89676b3', '9c3b03c4-9b48-4d37-88ec-4bf0ac88dab2', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:42'),
(386, '9c3b03c3-eea6-4e8f-a284-e0b045339012', '9c3b03c5-2136-4a16-9f7d-7e90e78c3e07', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:42'),
(387, '9c3b03c3-ef12-4995-9237-3ac12e91ca5c', '9c3b03c4-fc38-4bd3-93e8-16e2e8078879', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:42'),
(388, '9c3b03c3-eeaa-410d-ad13-f05257cd8983', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:42'),
(389, '9c3b03c5-786d-4408-bf43-8db8040a19c9', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` limit 1\",\"time\":\"35.84\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"4e3ac28faeeb88928cb0b8333b289c45\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:42'),
(390, '9c3b03c5-7a23-482b-ab4b-0ac88962be26', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:42'),
(391, '9c3b03c5-a6b9-4522-af4e-9da16dba3879', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `assignments` limit 1\",\"time\":\"14.64\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"517f79a0011ce91c603a40ae87b028bf\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:42'),
(392, '9c3b03c5-a728-4e25-b777-87fc0fdadb05', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Assignment\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:42'),
(393, '9c3b03c5-b35c-4fc5-ad4c-1f5aed82bd62', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `attendances` limit 1\",\"time\":\"1.05\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"006c5e08276aad8557f56d1450143f96\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:42'),
(394, '9c3b03c5-b3c2-47df-9ae0-4f4ba5feb608', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Attendance\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:42'),
(395, '9c3b03c5-be26-46cd-a5a9-f6a3db713313', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `blogs` limit 1\",\"time\":\"7.24\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"00fb6bb17b98eed9804c9f4abd5a0556\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:42'),
(396, '9c3b03c5-bebe-487d-bf4f-0f9c4fca6fc1', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Blog\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:42'),
(397, '9c3b03c5-ca1c-438f-b353-91a57a402e36', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `categories` limit 1\",\"time\":\"10.41\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"1987c517c92f01ecebc79e41fa5b235f\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:42'),
(398, '9c3b03c5-ca8e-42ae-960d-adab30d12509', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Category\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:42'),
(399, '9c3b03c5-dc45-47ff-b3a6-179bf919055f', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `chats` limit 1\",\"time\":\"22.43\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"3726f5b313d2e3709da012a702ef47b6\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(400, '9c3b03c5-dcb0-4336-be1d-1f07967da9db', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Chat\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(401, '9c3b03c5-ea2a-42e5-b508-0bb9f8b0c04b', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `cities` limit 1\",\"time\":\"14.71\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"269e6705c221f4d90d70a97969c821e7\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(402, '9c3b03c5-ea99-4feb-bb6c-8017369e9daa', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\City\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(403, '9c3b03c5-f603-4814-a3d2-57a6f82424bd', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `courses` limit 1\",\"time\":\"10.70\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"24d25b6d0de144c5278dccce44176f98\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(404, '9c3b03c5-f66e-458f-b7a5-c027c9f279a0', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Course\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(405, '9c3b03c6-0083-4b3b-8b1b-9b7332ace424', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `images` limit 1\",\"time\":\"4.83\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"15639a2dc6daad0d4453c786ad5fe7ec\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(406, '9c3b03c6-00ec-4a4a-9861-5b7634139edd', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Image\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(407, '9c3b03c6-0aa6-47a7-ad70-c24e27e6d23d', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `materials` limit 1\",\"time\":\"5.49\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"689c2ef4d49cf06afdb32ad7a46af973\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(408, '9c3b03c6-0b0e-49fa-984b-fa96d46ad5fd', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Material\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(409, '9c3b03c6-14c7-4020-abad-9b79492f33ab', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `objectives` limit 1\",\"time\":\"7.31\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"6fa2af8d5152b50f461bc08336ab8b66\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(410, '9c3b03c6-1528-4b3b-a3fc-88aa6380c866', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Objective\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(411, '9c3b03c6-1d98-4a64-a576-5c0abc8c9ec7', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `permissions` limit 1\",\"time\":\"3.10\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"51e9d969f17c78f90d8e7681004a1de9\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(412, '9c3b03c6-1e0d-40ad-a17e-24f49d62e49d', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Permission\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(413, '9c3b03c6-2b11-408f-8031-cd97d828044e', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `portfolios` limit 1\",\"time\":\"15.99\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"eacdca4b9d1f09a29d90c08f1558e889\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(414, '9c3b03c6-2b95-43cf-8ec1-99d5dc824e12', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Portfolio\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(415, '9c3b03c6-37b3-41af-a7c9-a89b9e0e38dd', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `projects` limit 1\",\"time\":\"13.21\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"ab5539b5c81f6bce8d9a0876b9fcbeb1\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(416, '9c3b03c6-380b-4b3e-9322-03f47b75368c', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Project\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(417, '9c3b03c6-3f00-44b5-8e7d-8ab9c23dd996', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `questions` limit 1\",\"time\":\"2.55\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"823df4ea3c5beee511273cecde5fe170\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(418, '9c3b03c6-3f6d-45a0-a148-3ffebb396619', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Question\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(419, '9c3b03c6-4622-4f15-9ec4-2c6279e6cf14', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `quizzes` limit 1\",\"time\":\"1.42\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"0f9cf2965c9481cd6546d0e5788625cd\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(420, '9c3b03c6-468b-4041-8daa-fbb9c74ea229', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Quiz\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(421, '9c3b03c6-5a58-4e44-b7e1-f7134bdb7d0b', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `recordings` limit 1\",\"time\":\"34.89\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"7715216264953b60c64597019b808a30\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(422, '9c3b03c6-5adb-4b6a-a91d-9348eba7185c', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Recording\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(423, '9c3b03c6-64d1-4b66-99dd-4dc725dcdef6', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `roadmaps` limit 1\",\"time\":\"10.34\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"5b873386a951750a47be14bd1fccdf8e\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(424, '9c3b03c6-6537-489d-afd5-3755cbdb8fdc', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Roadmap\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(425, '9c3b03c6-6bef-46bc-8174-e597fcf9a246', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `roles` limit 1\",\"time\":\"1.05\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"7b92920f696a1378bfc848f6d6479bb6\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(426, '9c3b03c6-6c48-43fc-a46f-fb215f44289d', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Role\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(427, '9c3b03c6-7269-4676-bf19-0e6ad257bded', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `schedules` limit 1\",\"time\":\"0.85\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"a9a20bc48e1d5dab9dd3cfb8f5cc297a\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(428, '9c3b03c6-72c8-4011-8575-6a593207ccae', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Schedule\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(429, '9c3b03c6-7a2d-4318-ae32-66d29c6e2af9', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sessions` limit 1\",\"time\":\"2.01\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"5700c04403bd455f3d8f29c063bec0a5\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(430, '9c3b03c6-7a93-472d-b039-ba2d4dc11eb9', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Session\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(431, '9c3b03c6-84e4-4e7a-9656-67be61d5265b', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings` limit 1\",\"time\":\"10.21\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"fa0ff947d644db0afa39e9f3fd6a5cf9\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(432, '9c3b03c6-8552-41cf-977c-4a8df9ac2aee', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(433, '9c3b03c6-8e8e-4e5a-bf83-43f65d202694', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `skills` limit 1\",\"time\":\"4.86\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"ccb2e89705f54c4b01083b3c60fe4629\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(434, '9c3b03c6-8efe-4dc7-90f8-0103f063033a', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Skill\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(435, '9c3b03c6-9784-4eb5-9eac-06bd21c541a9', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `student_progress` limit 1\",\"time\":\"3.75\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"0737d183c9d5ad32091094f8d0b37d0b\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(436, '9c3b03c6-97e5-4c9c-88b1-41da49ccc718', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\StudentProgress\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(437, '9c3b03c6-9f56-4e14-81cf-00a70843d7f4', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `super_skills` limit 1\",\"time\":\"1.31\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"ca13d86010e4eb2c7e4679db342281ac\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(438, '9c3b03c6-9fb6-4adb-a460-73479e32eae0', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\SuperSkill\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(439, '9c3b03c6-a754-4e94-b71f-3b600b76d589', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `support_requests` limit 1\",\"time\":\"2.43\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"a670d200107a7d03ec8459bd70b6b101\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(440, '9c3b03c6-a7ba-4c04-a0d8-f290e4bd417d', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\SupportRequest\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(441, '9c3b03c6-b0de-4d39-b66e-5370b33530d8', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` limit 1\",\"time\":\"4.28\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"26d128571acc3ade5f7d4401c1737345\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(442, '9c3b03c6-b146-41c3-8a8a-ba3c23ad13a6', '9c3b03c6-ba2f-4c79-90f0-828667cc4af6', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\User\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:43'),
(443, '9c3b03c7-c410-4402-b230-898b9306e69a', '9c3b03c7-d215-4628-8d50-ee1047ebcf0d', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:44'),
(444, '9c3b03c9-9e83-45f8-bb99-c075ca2b9575', '9c3b03c9-aca0-48cf-adb6-a39a633ced88', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:45'),
(445, '9c3b03cb-0424-415a-904f-65c6621ac4bf', '9c3b03cb-eefb-4c56-9080-c7dc686b4968', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:46'),
(446, '9c3b03cd-3997-48ac-95a1-c8f4866c38de', '9c3b03cd-4165-4a1a-be95-c9e6e088b6e5', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:06:47'),
(447, '9c3b0407-3ce4-4ee4-b43c-caeb6858b952', '9c3b0407-4594-4e7c-9e15-ca027e5a6287', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:07:25'),
(448, '9c3b0407-4457-4252-b2cf-3ba38bdd0951', '9c3b0407-54bf-4ee5-a2b1-0a7c1dfb2520', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:07:25'),
(449, '9c3b0439-04db-4fd1-bedc-9b5fb44a790b', '9c3b0439-2c39-4570-afe5-e9dd8893de8a', '23a5e7b84a41f282c67d364595f09303', 0, 'exception', '{\"class\":\"Symfony\\\\Component\\\\Console\\\\Exception\\\\NamespaceNotFoundException\",\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":669,\"message\":\"There are no commands defined in the \\\"ide-helper\\\" namespace.\",\"context\":null,\"trace\":[{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":720},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":266},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":175},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Console\\\\Kernel.php\",\"line\":201},{\"file\":\"D:\\\\tech-magnet\\\\artisan\",\"line\":35}],\"line_preview\":{\"660\":\"                if (1 == \\\\count($alternatives)) {\",\"661\":\"                    $message .= \\\"\\\\n\\\\nDid you mean this?\\\\n    \\\";\",\"662\":\"                } else {\",\"663\":\"                    $message .= \\\"\\\\n\\\\nDid you mean one of these?\\\\n    \\\";\",\"664\":\"                }\",\"665\":\"\",\"666\":\"                $message .= implode(\\\"\\\\n    \\\", $alternatives);\",\"667\":\"            }\",\"668\":\"\",\"669\":\"            throw new NamespaceNotFoundException($message, $alternatives);\",\"670\":\"        }\",\"671\":\"\",\"672\":\"        $exact = \\\\in_array($namespace, $namespaces, true);\",\"673\":\"        if (\\\\count($namespaces) > 1 && !$exact) {\",\"674\":\"            throw new NamespaceNotFoundException(sprintf(\\\"The namespace \\\\\\\"%s\\\\\\\" is ambiguous.\\\\nDid you mean one of these?\\\\n%s.\\\", $namespace, $this->getAbbreviationSuggestions(array_values($namespaces))), array_values($namespaces));\",\"675\":\"        }\",\"676\":\"\",\"677\":\"        return $exact ? $namespace : reset($namespaces);\",\"678\":\"    }\",\"679\":\"\"},\"hostname\":\"DESKTOP-359TRFP\",\"occurrences\":3}', '2024-06-07 18:07:58'),
(450, '9c3b0440-4d2d-4a85-97fa-e90705618857', '9c3b0440-5489-4bea-885d-a81840c5f34d', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:08:03'),
(451, '9c3b0454-f4fa-445f-9be4-09236a96788a', '9c3b0455-03cc-436f-9ac1-7994b272d740', '23a5e7b84a41f282c67d364595f09303', 1, 'exception', '{\"class\":\"Symfony\\\\Component\\\\Console\\\\Exception\\\\NamespaceNotFoundException\",\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":669,\"message\":\"There are no commands defined in the \\\"ide-helper\\\" namespace.\",\"context\":null,\"trace\":[{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":720},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":266},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":175},{\"file\":\"D:\\\\tech-magnet\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Console\\\\Kernel.php\",\"line\":201},{\"file\":\"D:\\\\tech-magnet\\\\artisan\",\"line\":35}],\"line_preview\":{\"660\":\"                if (1 == \\\\count($alternatives)) {\",\"661\":\"                    $message .= \\\"\\\\n\\\\nDid you mean this?\\\\n    \\\";\",\"662\":\"                } else {\",\"663\":\"                    $message .= \\\"\\\\n\\\\nDid you mean one of these?\\\\n    \\\";\",\"664\":\"                }\",\"665\":\"\",\"666\":\"                $message .= implode(\\\"\\\\n    \\\", $alternatives);\",\"667\":\"            }\",\"668\":\"\",\"669\":\"            throw new NamespaceNotFoundException($message, $alternatives);\",\"670\":\"        }\",\"671\":\"\",\"672\":\"        $exact = \\\\in_array($namespace, $namespaces, true);\",\"673\":\"        if (\\\\count($namespaces) > 1 && !$exact) {\",\"674\":\"            throw new NamespaceNotFoundException(sprintf(\\\"The namespace \\\\\\\"%s\\\\\\\" is ambiguous.\\\\nDid you mean one of these?\\\\n%s.\\\", $namespace, $this->getAbbreviationSuggestions(array_values($namespaces))), array_values($namespaces));\",\"675\":\"        }\",\"676\":\"\",\"677\":\"        return $exact ? $namespace : reset($namespaces);\",\"678\":\"    }\",\"679\":\"\"},\"hostname\":\"DESKTOP-359TRFP\",\"occurrences\":4}', '2024-06-07 18:08:16'),
(452, '9c3b045c-ab31-4361-ab6a-ed4678a02fa8', '9c3b045c-b353-4fb1-85ad-9f1c8c4111d8', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:08:21'),
(453, '9c3b0462-bd88-47de-8902-e449bba27a6b', '9c3b0462-c72b-47dd-8358-001e0c944fa0', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:08:25'),
(454, '9c3b0462-bdb5-487b-8752-3d69457d73d9', '9c3b0462-d074-4707-9862-564709064de2', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:08:25'),
(455, '9c3b09b2-49b2-4dca-aca8-b9b90d0a56dc', '9c3b09b2-a232-4bef-8b57-1c1d7a4b4a01', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"18.29\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:23:16'),
(456, '9c3b09b2-4e4e-4bb6-bcf9-338db82a1ec2', '9c3b09b2-a232-4bef-8b57-1c1d7a4b4a01', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:23:16'),
(457, '9c3b09b2-5923-456a-a226-b5e3b603a7f9', '9c3b09b2-a232-4bef-8b57-1c1d7a4b4a01', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings`\",\"time\":\"0.58\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\SettingController.php\",\"line\":15,\"hash\":\"9a0c1b1878c6704a2df2ae90c2a24cef\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:23:16'),
(458, '9c3b09b2-5a2a-4b70-a84e-cc59555e67b1', '9c3b09b2-a232-4bef-8b57-1c1d7a4b4a01', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:23:16'),
(459, '9c3b09b2-6620-40ee-ad65-489c9cf017c2', '9c3b09b2-a232-4bef-8b57-1c1d7a4b4a01', NULL, 1, 'view', '{\"name\":\"settings.index\",\"path\":\"\\\\resources\\\\views\\/settings\\/index.blade.php\",\"data\":[\"settings\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:23:16'),
(460, '9c3b09b2-6dfa-4cce-9b59-a742372b9ace', '9c3b09b2-a232-4bef-8b57-1c1d7a4b4a01', NULL, 1, 'view', '{\"name\":\"layouts.messages\",\"path\":\"\\\\resources\\\\views\\/layouts\\/messages.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:23:16'),
(461, '9c3b09b2-6e81-49a4-8e06-7b63e8cc7c1c', '9c3b09b2-a232-4bef-8b57-1c1d7a4b4a01', NULL, 1, 'view', '{\"name\":\"layouts.master\",\"path\":\"\\\\resources\\\\views\\/layouts\\/master.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:23:16'),
(462, '9c3b09b2-6f04-41b6-9e7a-e3e8b1cac585', '9c3b09b2-a232-4bef-8b57-1c1d7a4b4a01', NULL, 1, 'view', '{\"name\":\"layouts.sidebar\",\"path\":\"\\\\resources\\\\views\\/layouts\\/sidebar.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:23:16'),
(463, '9c3b09b2-701c-4a89-bc67-f256f03ac927', '9c3b09b2-a232-4bef-8b57-1c1d7a4b4a01', NULL, 1, 'view', '{\"name\":\"layouts.footer\",\"path\":\"\\\\resources\\\\views\\/layouts\\/footer.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:23:16'),
(464, '9c3b09b2-9e24-43a1-98be-8d170573b8f5', '9c3b09b2-a232-4bef-8b57-1c1d7a4b4a01', NULL, 1, 'debugbar', '{\"requestId\":\"X5a3365854db6c1cd53fc6cd361fca739\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:23:17'),
(465, '9c3b09b2-9fb9-48a2-976d-394b72776d13', '9c3b09b2-a232-4bef-8b57-1c1d7a4b4a01', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/settings\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\SettingController@index\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\\/1\\/edit\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IkkxSENtNzZrQTNlQVFwV0lWTmxBWEE9PSIsInZhbHVlIjoiRkdrMHRSc3lOaDBSZUJLM2FLdVNuNm1uRnFKUVpSQVRhbnVobGwvLzRSTHE3ZFVuQ1lyWTZPNkpYZXhkRTRRc05TMlN0UG5ZRnFSeE4zTmZ3eVVkazdnRFpvQlllbVByTnFRdFBJbzQ4cUZ0MFRlS2hwR2ZyR0VMQ29VVkJxaFgiLCJtYWMiOiJmMWFkMDZmNjA0NjYwYWQ4MDU2YWNmNDYzNGUzMDNkMmU3ZTdlMWQwNWMxYWE4NGQxZGQzODNlNWMxZmQyYTk4IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IlZQTm5sV3JTMmxUckRKRGltM1hvQVE9PSIsInZhbHVlIjoiVFJhd0wzTXJxUUZRbXRScGlpTW9RMmppcjU2M3c3WXJrZWRacTBMTlh4VDBNSEFwVHZYZFVXU3dxWEs2SjZ3enhHckhxbTNQSzl4aUk5Qlp4MGUwL2JpT09POHVldEtHaWxKV1JVTTdlS0h6WTFQR2Q1a21xSWFFTCtCTTBBSVkiLCJtYWMiOiI5MTFmZDYwNmY4YmRkMzExZjA5ZTdlNjAyZjU1ZGM1ZWYzMGM5ZmUzZTQ0NjU4MzU3ZDkyNzA3MDY3MDMzNWVjIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"url\":[],\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/settings\\/index.blade.php\",\"data\":{\"settings\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"logo\":\"2024-06-07-06-03-12.jpg\",\"email\":\"Techmagnet@gmail.com\",\"phone\":\"01000009999\",\"location\":\"Greek Campus\",\"created_at\":\"2024-05-25T17:30:36.000000Z\",\"updated_at\":\"2024-06-07T15:03:12.000000Z\"}]}}},\"duration\":1327,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:23:17'),
(466, '9c3b09b3-9fcc-4886-8a89-d4d01e3c8d0f', '9c3b09b3-c99a-4f3f-9874-837e607f6b95', NULL, 1, 'view', '{\"name\":\"errors::404\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/404.blade.php\",\"data\":[\"exception\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:23:17'),
(467, '9c3b09b3-a752-4bec-8183-5de85a50226d', '9c3b09b3-c99a-4f3f-9874-837e607f6b95', NULL, 1, 'view', '{\"name\":\"errors::minimal\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/minimal.blade.php\",\"data\":[\"exception\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:23:17'),
(468, '9c3b09b3-c16d-47b7-a103-851f3c998cad', '9c3b09b3-c99a-4f3f-9874-837e607f6b95', NULL, 1, 'debugbar', '{\"requestId\":\"Xf5258a953635737222fa0bc01ada33c7\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:23:17'),
(469, '9c3b09b3-c50b-4047-8729-9696eb793a87', '9c3b09b3-c99a-4f3f-9874-837e607f6b95', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/storage\\/2024-06-07-06-03-12.jpg\",\"method\":\"GET\",\"controller_action\":null,\"middleware\":[],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6InVGKzI2dlBYVXFxWi9KbVU5SmNHV1E9PSIsInZhbHVlIjoiZGxobGFNbmpsWHVlbXJzaGRyZXNNNnRVL0t0aGVXY1R6dktiR1FzZ2RpMVIxWW1wME9XSStEQTB2a1FTaTlIZzFkMWYrR1BhM2hKYmZrR0lSU1pnR28raGpoc3VzMEJxaG1TalRKcnllSkRDVW05SERsWE5qaGoybjM1SGFDN1YiLCJtYWMiOiIzZDcyNTFkNTdiNWRmZDc3YzVhODM0ODllYTNkZWY0OTBkOTNmZmMzODc1MDdjNWMzYzM4NjFhMDY1MDU2YzZjIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImhNWWxlRThMWDFSNUVjMzNxUHNuaFE9PSIsInZhbHVlIjoiSXFEVWttaGVrQXN0V3h3RC9TSU84Z091Y2JKTXdOa1hReHpTUE84UjdzdmFRRUh4SzhTUTZMZnAvVnVmTDk4VnJrWENHZ3J6ZmN4dWxoODNRa3d3aU9oMnVlcXBZR2thMEowMXg5Y2RJNmhhZ3ZoUFBkTEFnNkxMaCszRVRUcEUiLCJtYWMiOiIxYTU3ZTMzNDRlOGYzMjI4MzNlNjhjMzJkMzhjMTJlNmUyMDk3NGQ1ZTc4MWE2ZWM1ZGRhNTMwZWZiMmVkMWMwIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":404,\"response\":\"HTML Response\",\"duration\":696,\"memory\":24,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:23:17'),
(470, '9c3b0a89-62a3-4fea-bb9f-b1d06dc62c51', '9c3b0a8a-3719-471f-9e05-2d0071799c73', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"6.40\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:25:37'),
(471, '9c3b0a89-6d4c-4d07-9aac-dbf6da6be25a', '9c3b0a8a-3719-471f-9e05-2d0071799c73', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:25:37'),
(472, '9c3b0a89-8abc-497c-b690-0d3e359e60b6', '9c3b0a8a-3719-471f-9e05-2d0071799c73', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `courses`\",\"time\":\"1.07\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\CourseController.php\",\"line\":17,\"hash\":\"76c75bd7a737aa4efeaa1f03213fef29\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:37'),
(473, '9c3b0a89-8bcd-4843-ba70-f38befca5301', '9c3b0a8a-3719-471f-9e05-2d0071799c73', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Course\",\"count\":12,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:37'),
(474, '9c3b0a89-a384-4973-b01e-d1a7e4482094', '9c3b0a8a-3719-471f-9e05-2d0071799c73', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `categories` where `categories`.`id` in (1, 2, 3, 4)\",\"time\":\"1.24\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\CourseController.php\",\"line\":17,\"hash\":\"6ea351314dfabb33b6bba13f136f3cda\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:37'),
(475, '9c3b0a89-a4c7-4f1d-aef7-39b979c33dc7', '9c3b0a8a-3719-471f-9e05-2d0071799c73', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Category\",\"count\":4,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:37'),
(476, '9c3b0a89-a5c5-4e90-840b-17232e520412', '9c3b0a8a-3719-471f-9e05-2d0071799c73', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `objectives` where `objectives`.`id` in (1, 2, 3)\",\"time\":\"0.77\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\CourseController.php\",\"line\":17,\"hash\":\"3c47781b5bfa5a6fd05a6b3ecb66fcd1\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:37'),
(477, '9c3b0a89-a6e9-4286-889b-e5a81e15096e', '9c3b0a8a-3719-471f-9e05-2d0071799c73', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Objective\",\"count\":3,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:37');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(478, '9c3b0a89-ccff-40ad-83ed-464caf7f3e43', '9c3b0a8a-3719-471f-9e05-2d0071799c73', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `images` where `images`.`imageable_id` in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12) and `images`.`imageable_type` = \'App\\\\Models\\\\Course\'\",\"time\":\"11.98\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\CourseController.php\",\"line\":17,\"hash\":\"92aabdcbd23bca6cee0447e615aa6d4d\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:38'),
(479, '9c3b0a89-ce25-486a-9c28-5ccbdb4dd419', '9c3b0a8a-3719-471f-9e05-2d0071799c73', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Image\",\"count\":12,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:38'),
(480, '9c3b0a89-de2c-42d9-90cd-745d3ffc3efe', '9c3b0a8a-3719-471f-9e05-2d0071799c73', NULL, 1, 'view', '{\"name\":\"courses.index\",\"path\":\"\\\\resources\\\\views\\/courses\\/index.blade.php\",\"data\":[\"courses\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:38'),
(481, '9c3b0a89-f273-4960-a389-1b094dc62394', '9c3b0a8a-3719-471f-9e05-2d0071799c73', NULL, 1, 'view', '{\"name\":\"layouts.messages\",\"path\":\"\\\\resources\\\\views\\/layouts\\/messages.blade.php\",\"data\":[\"courses\",\"__empty_1\",\"__currentLoopData\",\"course\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:38'),
(482, '9c3b0a89-f2fe-4aa7-ae94-13efc3669657', '9c3b0a8a-3719-471f-9e05-2d0071799c73', NULL, 1, 'view', '{\"name\":\"layouts.master\",\"path\":\"\\\\resources\\\\views\\/layouts\\/master.blade.php\",\"data\":[\"courses\",\"__empty_1\",\"__currentLoopData\",\"course\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:38'),
(483, '9c3b0a89-ff84-4adc-8341-3d60c4e2ec94', '9c3b0a8a-3719-471f-9e05-2d0071799c73', NULL, 1, 'view', '{\"name\":\"layouts.sidebar\",\"path\":\"\\\\resources\\\\views\\/layouts\\/sidebar.blade.php\",\"data\":[\"courses\",\"__empty_1\",\"__currentLoopData\",\"course\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:38'),
(484, '9c3b0a8a-00f7-4dda-98c7-f80410265b34', '9c3b0a8a-3719-471f-9e05-2d0071799c73', NULL, 1, 'view', '{\"name\":\"layouts.footer\",\"path\":\"\\\\resources\\\\views\\/layouts\\/footer.blade.php\",\"data\":[\"courses\",\"__empty_1\",\"__currentLoopData\",\"course\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:38'),
(485, '9c3b0a8a-15c5-40fa-a229-0a6c2a4d8f0b', '9c3b0a8a-3719-471f-9e05-2d0071799c73', NULL, 1, 'debugbar', '{\"requestId\":\"Xd907ba6792b5e00440ec9b375b614652\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:25:38'),
(486, '9c3b0a8a-2441-419b-b9d4-eec0f1ecba27', '9c3b0a8a-3719-471f-9e05-2d0071799c73', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/courses\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\CourseController@index\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6InVGKzI2dlBYVXFxWi9KbVU5SmNHV1E9PSIsInZhbHVlIjoiZGxobGFNbmpsWHVlbXJzaGRyZXNNNnRVL0t0aGVXY1R6dktiR1FzZ2RpMVIxWW1wME9XSStEQTB2a1FTaTlIZzFkMWYrR1BhM2hKYmZrR0lSU1pnR28raGpoc3VzMEJxaG1TalRKcnllSkRDVW05SERsWE5qaGoybjM1SGFDN1YiLCJtYWMiOiIzZDcyNTFkNTdiNWRmZDc3YzVhODM0ODllYTNkZWY0OTBkOTNmZmMzODc1MDdjNWMzYzM4NjFhMDY1MDU2YzZjIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImhNWWxlRThMWDFSNUVjMzNxUHNuaFE9PSIsInZhbHVlIjoiSXFEVWttaGVrQXN0V3h3RC9TSU84Z091Y2JKTXdOa1hReHpTUE84UjdzdmFRRUh4SzhTUTZMZnAvVnVmTDk4VnJrWENHZ3J6ZmN4dWxoODNRa3d3aU9oMnVlcXBZR2thMEowMXg5Y2RJNmhhZ3ZoUFBkTEFnNkxMaCszRVRUcEUiLCJtYWMiOiIxYTU3ZTMzNDRlOGYzMjI4MzNlNjhjMzJkMzhjMTJlNmUyMDk3NGQ1ZTc4MWE2ZWM1ZGRhNTMwZWZiMmVkMWMwIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"url\":[],\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/courses\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/courses\\/index.blade.php\",\"data\":{\"courses\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"name\":\"Web development essentials\",\"description\":\"the fundamental building blocks of creating websites and web applications. It\'s like having a toolbox with the most important tools for this job.\",\"price\":6000,\"hours\":30,\"category_id\":1,\"objective_id\":1,\"created_at\":\"2024-05-22T16:33:06.000000Z\",\"updated_at\":\"2024-05-23T10:57:15.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":1,\"name\":\"Master the Essentials\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":18,\"path\":\"2024-05-23-03-16-56.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":1,\"created_at\":\"2024-05-23T12:16:56.000000Z\",\"updated_at\":\"2024-05-23T12:16:56.000000Z\"}},{\"id\":2,\"name\":\"Frontend course\",\"description\":\"designed to provide you with a comprehensive introduction to the essential concepts, tools, and techniques required to build modern and user-friendly websites\",\"price\":6000,\"hours\":80,\"category_id\":1,\"objective_id\":2,\"created_at\":\"2024-05-22T17:15:50.000000Z\",\"updated_at\":\"2024-05-23T10:57:29.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":15,\"path\":\"2024-05-23-03-11-15.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":2,\"created_at\":\"2024-05-23T12:11:15.000000Z\",\"updated_at\":\"2024-05-23T12:11:15.000000Z\"}},{\"id\":3,\"name\":\"Full Stack Diploma\",\"description\":\"comprehensive program designed to equip you with the skills and knowledge required to build dynamic and interactive web applications\",\"price\":12000,\"hours\":140,\"category_id\":1,\"objective_id\":3,\"created_at\":\"2024-05-22T17:28:29.000000Z\",\"updated_at\":\"2024-05-23T10:57:48.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":3,\"name\":\"Tech Professionals\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":17,\"path\":\"2024-05-23-03-15-49.png\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":3,\"created_at\":\"2024-05-23T12:15:49.000000Z\",\"updated_at\":\"2024-05-23T12:15:49.000000Z\"}},{\"id\":4,\"name\":\"Graphic Desgin\",\"description\":\"This course focuses on developing your creativity and visual communication skills to create visually appealing and effective designs for various mediums.\",\"price\":6000,\"hours\":60,\"category_id\":2,\"objective_id\":2,\"created_at\":\"2024-05-22T17:32:50.000000Z\",\"updated_at\":\"2024-05-23T10:58:01.000000Z\",\"category\":{\"id\":2,\"name\":\"Design\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":5,\"path\":\"2024-05-22-08-28-29.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":4,\"created_at\":\"2024-05-22T17:28:29.000000Z\",\"updated_at\":\"2024-05-22T17:28:29.000000Z\"}},{\"id\":5,\"name\":\"UI\\/UX\",\"description\":\"The UI\\/UX Design Fundamentals course is designed to provide you with a comprehensive understanding of user interface (UI) and user experience (UX) design principles and practices.\",\"price\":6000,\"hours\":75,\"category_id\":2,\"objective_id\":2,\"created_at\":\"2024-05-22T17:34:14.000000Z\",\"updated_at\":\"2024-05-23T11:08:53.000000Z\",\"category\":{\"id\":2,\"name\":\"Design\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":6,\"path\":\"2024-05-22-08-32-50.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":5,\"created_at\":\"2024-05-22T17:32:50.000000Z\",\"updated_at\":\"2024-05-22T17:32:50.000000Z\"}},{\"id\":6,\"name\":\"Essentials of Python\",\"description\":\"The Essentials of Python course is designed to provide you with a comprehensive introduction to the Python programming language.<span style=\\\"background-color: rgb(247, 247, 247); color: rgb(0, 0, 0); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif; font-size: 18px;\\\">&nbsp;<\\/span>&nbsp;Python is widely used for various applications, including web development, data analysis, scientific computing, and automation. This course is suitable for beginners with no prior programming experience as well as those with programming knowledge in other languages who want to learn Python\",\"price\":6000,\"hours\":55,\"category_id\":3,\"objective_id\":1,\"created_at\":\"2024-05-22T17:38:08.000000Z\",\"updated_at\":\"2024-05-23T10:58:53.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":1,\"name\":\"Master the Essentials\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":7,\"path\":\"2024-05-22-08-34-14.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":6,\"created_at\":\"2024-05-22T17:34:14.000000Z\",\"updated_at\":\"2024-05-22T17:34:14.000000Z\"}},{\"id\":7,\"name\":\"AI\",\"description\":\"AI is a rapidly growing field that focuses on creating intelligent systems capable of performing tasks that typically require human intelligence. This course aims to equip you with a foundational understanding of AI concepts and techniques.\",\"price\":6000,\"hours\":160,\"category_id\":3,\"objective_id\":2,\"created_at\":\"2024-05-22T17:39:55.000000Z\",\"updated_at\":\"2024-05-23T10:59:13.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":8,\"path\":\"2024-05-22-08-38-08.png\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":7,\"created_at\":\"2024-05-22T17:38:08.000000Z\",\"updated_at\":\"2024-05-22T17:38:08.000000Z\"}},{\"id\":8,\"name\":\"Deep and Machine Learning\",\"description\":\"The Deep and Machine Learning Fundamentals course is designed to provide you with a comprehensive understanding of deep learning and machine learning techniques. Deep learning focuses on training artificial neural networks with multiple layers to learn representations of data\",\"price\":10000,\"hours\":100,\"category_id\":3,\"objective_id\":2,\"created_at\":\"2024-05-22T17:42:25.000000Z\",\"updated_at\":\"2024-05-23T10:59:23.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":9,\"path\":\"2024-05-22-08-39-55.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":8,\"created_at\":\"2024-05-22T17:39:55.000000Z\",\"updated_at\":\"2024-05-22T17:39:55.000000Z\"}},{\"id\":9,\"name\":\"Data Scientist Diploma\",\"description\":\"The Data Scientist Diploma course is a comprehensive program designed to provide you with the knowledge and skills required to excel in the field of data science. Data science involves extracting insights and knowledge from large and complex datasets using various techniques, including statistical analysis, machine learning, and data visualization. This course covers a wide range of topics to equip you with the necessary skills to become a proficient data scientist.\",\"price\":12000,\"hours\":90,\"category_id\":3,\"objective_id\":3,\"created_at\":\"2024-05-22T17:47:18.000000Z\",\"updated_at\":\"2024-05-23T11:00:52.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":3,\"name\":\"Tech Professionals\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":10,\"path\":\"2024-05-22-08-42-25.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":9,\"created_at\":\"2024-05-22T17:42:25.000000Z\",\"updated_at\":\"2024-05-22T17:42:25.000000Z\"}},{\"id\":10,\"name\":\"Social media marketing Essentials\",\"description\":\"The Social Media Marketing Essentials course is designed to provide you with the knowledge and skills required to develop and implement effective social media marketing strategies. Social media platforms have become powerful tools for businesses to reach and engage with their target audience. This course will equip you with the essential techniques and best practices to leverage social media for marketing purposes.\",\"price\":6000,\"hours\":40,\"category_id\":4,\"objective_id\":1,\"created_at\":\"2024-05-22T17:50:54.000000Z\",\"updated_at\":\"2024-05-23T11:01:12.000000Z\",\"category\":{\"id\":4,\"name\":\"Digital Marketing\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":1,\"name\":\"Master the Essentials\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":11,\"path\":\"2024-05-22-08-47-18.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":10,\"created_at\":\"2024-05-22T17:47:18.000000Z\",\"updated_at\":\"2024-05-22T17:47:18.000000Z\"}},{\"id\":11,\"name\":\"Digital Marketing Diploma\",\"description\":\"The Digital Marketing Diploma is an extensive program designed to provide you with a comprehensive understanding of digital marketing strategies and techniques. In today\'s digital era, businesses rely on digital channels to reach and engage with their target audience. This course covers a wide range of topics to equip you with the necessary skills to plan, execute, and measure successful digital marketing campaigns.\",\"price\":12000,\"hours\":40,\"category_id\":4,\"objective_id\":3,\"created_at\":\"2024-05-22T17:56:43.000000Z\",\"updated_at\":\"2024-05-23T11:02:16.000000Z\",\"category\":{\"id\":4,\"name\":\"Digital Marketing\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":3,\"name\":\"Tech Professionals\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":12,\"path\":\"2024-05-22-08-50-54.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":11,\"created_at\":\"2024-05-22T17:50:54.000000Z\",\"updated_at\":\"2024-05-22T17:50:54.000000Z\"}},{\"id\":12,\"name\":\"Backend Course\",\"description\":\"The Backend Development Fundamentals course provides a comprehensive introduction to the principles, tools, and technologies involved in building the server-side of web applications. This course is designed for individuals who are interested in pursuing a career in backend development or seeking to enhance their existing programming skills\",\"price\":6000,\"hours\":140,\"category_id\":1,\"objective_id\":2,\"created_at\":\"2024-05-22T18:06:05.000000Z\",\"updated_at\":\"2024-05-23T11:01:51.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":13,\"path\":\"2024-05-22-08-56-43.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":12,\"created_at\":\"2024-05-22T17:56:43.000000Z\",\"updated_at\":\"2024-05-22T17:56:43.000000Z\"}}]}}},\"duration\":3967,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:38'),
(487, '9c3b0a9e-7b75-4769-9a1a-0079a13b876d', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"3.79\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:25:51'),
(488, '9c3b0a9e-7f5a-4906-b872-e468dfd36c86', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:25:51'),
(489, '9c3b0a9e-838d-42e6-9352-7aeab3e3f819', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `courses`\",\"time\":\"2.12\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":19,\"hash\":\"3c8c698f59a23e785490347ccf9abc89\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:51'),
(490, '9c3b0a9e-851e-42e6-872a-d3bf458917b5', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `blogs`\",\"time\":\"0.74\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":22,\"hash\":\"4b32d88c746db4e89f34760372fb0b5f\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:51'),
(491, '9c3b0a9e-86de-4b40-b3ab-bf85f8236a62', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `categories`\",\"time\":\"0.87\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":25,\"hash\":\"e9e8c8e147366a96f2b9a9a91870ee32\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:51'),
(492, '9c3b0a9e-911e-4ce1-b458-d4c5aa8e2c7f', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `users`\",\"time\":\"2.50\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":28,\"hash\":\"6c5274cfac96d79f6367317dfb756038\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:51'),
(493, '9c3b0a9e-9428-44a4-b747-8184547da770', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `courses` where month(`created_at`) = \'05\'\",\"time\":\"5.43\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":30,\"hash\":\"41519cd53f70253ac2b679a8b197a3bb\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:51'),
(494, '9c3b0a9e-9501-4f4f-8a7c-0fb7ba591107', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Course\",\"count\":12,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:51'),
(495, '9c3b0a9e-96a0-4d9e-abeb-e78c63cb3e4b', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `categories` where `categories`.`id` in (1, 2, 3, 4)\",\"time\":\"0.75\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":30,\"hash\":\"6ea351314dfabb33b6bba13f136f3cda\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:51'),
(496, '9c3b0a9e-97d8-4846-94e2-19ed39aada49', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Category\",\"count\":4,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:51'),
(497, '9c3b0a9e-98d1-4873-bba0-3ca1bc70b76c', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `objectives` where `objectives`.`id` in (1, 2, 3)\",\"time\":\"0.70\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":30,\"hash\":\"3c47781b5bfa5a6fd05a6b3ecb66fcd1\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:51'),
(498, '9c3b0a9e-9a3b-46e3-91fd-9daef2cc4a81', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Objective\",\"count\":3,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:51'),
(499, '9c3b0a9e-9c4b-4e8f-9778-a2fb1d03c4fa', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `images` where `images`.`imageable_id` in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12) and `images`.`imageable_type` = \'App\\\\Models\\\\Course\'\",\"time\":\"0.87\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":30,\"hash\":\"92aabdcbd23bca6cee0447e615aa6d4d\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:51'),
(500, '9c3b0a9e-9d6b-414d-8309-7d6523b603b4', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Image\",\"count\":12,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:51'),
(501, '9c3b0a9e-a03a-401b-a63a-bd012ab9e55a', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'view', '{\"name\":\"home\",\"path\":\"\\\\resources\\\\views\\/home.blade.php\",\"data\":[\"courses\",\"blogs\",\"categories\",\"enrollments\",\"coursesThisMonth\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:51'),
(502, '9c3b0a9e-a7a0-4588-b17c-8dc7a78ebd80', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'view', '{\"name\":\"layouts.messages\",\"path\":\"\\\\resources\\\\views\\/layouts\\/messages.blade.php\",\"data\":[\"courses\",\"blogs\",\"categories\",\"enrollments\",\"coursesThisMonth\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:51'),
(503, '9c3b0a9e-a948-4df7-b76f-84eee52089fe', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'view', '{\"name\":\"layouts.master\",\"path\":\"\\\\resources\\\\views\\/layouts\\/master.blade.php\",\"data\":[\"courses\",\"blogs\",\"categories\",\"enrollments\",\"coursesThisMonth\",\"__currentLoopData\",\"course\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:51'),
(504, '9c3b0a9e-a9d4-4db4-ae74-1fdccdf5e4e3', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'view', '{\"name\":\"layouts.sidebar\",\"path\":\"\\\\resources\\\\views\\/layouts\\/sidebar.blade.php\",\"data\":[\"courses\",\"blogs\",\"categories\",\"enrollments\",\"coursesThisMonth\",\"__currentLoopData\",\"course\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:51'),
(505, '9c3b0a9e-ab4b-45a4-9e11-b204937d02ec', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'view', '{\"name\":\"layouts.footer\",\"path\":\"\\\\resources\\\\views\\/layouts\\/footer.blade.php\",\"data\":[\"courses\",\"blogs\",\"categories\",\"enrollments\",\"coursesThisMonth\",\"__currentLoopData\",\"course\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:51'),
(506, '9c3b0a9e-b28d-41c8-88a7-50d1bbf70b4e', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'debugbar', '{\"requestId\":\"X5faa730f638bc991703b11b660b70ecd\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:25:51'),
(507, '9c3b0a9e-c598-410f-81fb-677332790522', '9c3b0a9e-c762-4b8b-b94a-302a216ea598', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/home\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\HomeController@index\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/courses\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IlFnb1ZsL3hJNXJKOW5lY2J1cW95YXc9PSIsInZhbHVlIjoiS1JmaWd3bWl6UDcyNVVaV0FKQmNJbmxIRXoxbTBaQTAzL3FHYlpHaGJNNSs0VXhwVmZuTTN2VktGRDdUSS93OWVJQzZFVkk1V1JwU3Fyd2liRmszZFRFV3hnVWNqRCtabkRkampQeVZZQXFYNGt0bm0xSDdjY1dTb0xRTVBDVFUiLCJtYWMiOiI5ZWZhMGEzMGNkMjBkNDk4ODUwMmFlMjBlOThjYzRlM2Y5NDdjYzU4NTliOTVhYmQ3NTI2YzI4YTZhMzE4YWRlIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InpaYmZyWFpNQUFNMWNhUlFOOXZXaGc9PSIsInZhbHVlIjoidWZ6YnBmQ1hRYXMzREc1UjZlUzdTd2kvZzhHZVhaQWllNXRzWTRsMHRCd1MydDI2dlFOYktheDJaaDV0M3dxbWRkN2Jac2MxakdnWElLb1hjamUyWmdCWDZ3NG1tTHJHcHZoYVVGK2ljWWpsVTh3R3N1ZlFRT1NQTWZ5V0RGeWEiLCJtYWMiOiIzOTEyYTc1ZTJhY2M4NmY0YThkMmY4OTcyODc0NDhhMDVmMWJiOWQ3MDRkMTM3MmQ1NDZiMmI5OTYxZGEzN2U1IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"url\":[],\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/home\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/home.blade.php\",\"data\":{\"courses\":12,\"blogs\":4,\"categories\":4,\"enrollments\":21,\"coursesThisMonth\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"name\":\"Web development essentials\",\"description\":\"the fundamental building blocks of creating websites and web applications. It\'s like having a toolbox with the most important tools for this job.\",\"price\":6000,\"hours\":30,\"category_id\":1,\"objective_id\":1,\"created_at\":\"2024-05-22T16:33:06.000000Z\",\"updated_at\":\"2024-05-23T10:57:15.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":1,\"name\":\"Master the Essentials\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":18,\"path\":\"2024-05-23-03-16-56.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":1,\"created_at\":\"2024-05-23T12:16:56.000000Z\",\"updated_at\":\"2024-05-23T12:16:56.000000Z\"}},{\"id\":2,\"name\":\"Frontend course\",\"description\":\"designed to provide you with a comprehensive introduction to the essential concepts, tools, and techniques required to build modern and user-friendly websites\",\"price\":6000,\"hours\":80,\"category_id\":1,\"objective_id\":2,\"created_at\":\"2024-05-22T17:15:50.000000Z\",\"updated_at\":\"2024-05-23T10:57:29.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":15,\"path\":\"2024-05-23-03-11-15.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":2,\"created_at\":\"2024-05-23T12:11:15.000000Z\",\"updated_at\":\"2024-05-23T12:11:15.000000Z\"}},{\"id\":3,\"name\":\"Full Stack Diploma\",\"description\":\"comprehensive program designed to equip you with the skills and knowledge required to build dynamic and interactive web applications\",\"price\":12000,\"hours\":140,\"category_id\":1,\"objective_id\":3,\"created_at\":\"2024-05-22T17:28:29.000000Z\",\"updated_at\":\"2024-05-23T10:57:48.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":3,\"name\":\"Tech Professionals\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":17,\"path\":\"2024-05-23-03-15-49.png\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":3,\"created_at\":\"2024-05-23T12:15:49.000000Z\",\"updated_at\":\"2024-05-23T12:15:49.000000Z\"}},{\"id\":4,\"name\":\"Graphic Desgin\",\"description\":\"This course focuses on developing your creativity and visual communication skills to create visually appealing and effective designs for various mediums.\",\"price\":6000,\"hours\":60,\"category_id\":2,\"objective_id\":2,\"created_at\":\"2024-05-22T17:32:50.000000Z\",\"updated_at\":\"2024-05-23T10:58:01.000000Z\",\"category\":{\"id\":2,\"name\":\"Design\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":5,\"path\":\"2024-05-22-08-28-29.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":4,\"created_at\":\"2024-05-22T17:28:29.000000Z\",\"updated_at\":\"2024-05-22T17:28:29.000000Z\"}},{\"id\":5,\"name\":\"UI\\/UX\",\"description\":\"The UI\\/UX Design Fundamentals course is designed to provide you with a comprehensive understanding of user interface (UI) and user experience (UX) design principles and practices.\",\"price\":6000,\"hours\":75,\"category_id\":2,\"objective_id\":2,\"created_at\":\"2024-05-22T17:34:14.000000Z\",\"updated_at\":\"2024-05-23T11:08:53.000000Z\",\"category\":{\"id\":2,\"name\":\"Design\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":6,\"path\":\"2024-05-22-08-32-50.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":5,\"created_at\":\"2024-05-22T17:32:50.000000Z\",\"updated_at\":\"2024-05-22T17:32:50.000000Z\"}},{\"id\":6,\"name\":\"Essentials of Python\",\"description\":\"The Essentials of Python course is designed to provide you with a comprehensive introduction to the Python programming language.<span style=\\\"background-color: rgb(247, 247, 247); color: rgb(0, 0, 0); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif; font-size: 18px;\\\">&nbsp;<\\/span>&nbsp;Python is widely used for various applications, including web development, data analysis, scientific computing, and automation. This course is suitable for beginners with no prior programming experience as well as those with programming knowledge in other languages who want to learn Python\",\"price\":6000,\"hours\":55,\"category_id\":3,\"objective_id\":1,\"created_at\":\"2024-05-22T17:38:08.000000Z\",\"updated_at\":\"2024-05-23T10:58:53.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":1,\"name\":\"Master the Essentials\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":7,\"path\":\"2024-05-22-08-34-14.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":6,\"created_at\":\"2024-05-22T17:34:14.000000Z\",\"updated_at\":\"2024-05-22T17:34:14.000000Z\"}},{\"id\":7,\"name\":\"AI\",\"description\":\"AI is a rapidly growing field that focuses on creating intelligent systems capable of performing tasks that typically require human intelligence. This course aims to equip you with a foundational understanding of AI concepts and techniques.\",\"price\":6000,\"hours\":160,\"category_id\":3,\"objective_id\":2,\"created_at\":\"2024-05-22T17:39:55.000000Z\",\"updated_at\":\"2024-05-23T10:59:13.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":8,\"path\":\"2024-05-22-08-38-08.png\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":7,\"created_at\":\"2024-05-22T17:38:08.000000Z\",\"updated_at\":\"2024-05-22T17:38:08.000000Z\"}},{\"id\":8,\"name\":\"Deep and Machine Learning\",\"description\":\"The Deep and Machine Learning Fundamentals course is designed to provide you with a comprehensive understanding of deep learning and machine learning techniques. Deep learning focuses on training artificial neural networks with multiple layers to learn representations of data\",\"price\":10000,\"hours\":100,\"category_id\":3,\"objective_id\":2,\"created_at\":\"2024-05-22T17:42:25.000000Z\",\"updated_at\":\"2024-05-23T10:59:23.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":9,\"path\":\"2024-05-22-08-39-55.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":8,\"created_at\":\"2024-05-22T17:39:55.000000Z\",\"updated_at\":\"2024-05-22T17:39:55.000000Z\"}},{\"id\":9,\"name\":\"Data Scientist Diploma\",\"description\":\"The Data Scientist Diploma course is a comprehensive program designed to provide you with the knowledge and skills required to excel in the field of data science. Data science involves extracting insights and knowledge from large and complex datasets using various techniques, including statistical analysis, machine learning, and data visualization. This course covers a wide range of topics to equip you with the necessary skills to become a proficient data scientist.\",\"price\":12000,\"hours\":90,\"category_id\":3,\"objective_id\":3,\"created_at\":\"2024-05-22T17:47:18.000000Z\",\"updated_at\":\"2024-05-23T11:00:52.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":3,\"name\":\"Tech Professionals\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":10,\"path\":\"2024-05-22-08-42-25.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":9,\"created_at\":\"2024-05-22T17:42:25.000000Z\",\"updated_at\":\"2024-05-22T17:42:25.000000Z\"}},{\"id\":10,\"name\":\"Social media marketing Essentials\",\"description\":\"The Social Media Marketing Essentials course is designed to provide you with the knowledge and skills required to develop and implement effective social media marketing strategies. Social media platforms have become powerful tools for businesses to reach and engage with their target audience. This course will equip you with the essential techniques and best practices to leverage social media for marketing purposes.\",\"price\":6000,\"hours\":40,\"category_id\":4,\"objective_id\":1,\"created_at\":\"2024-05-22T17:50:54.000000Z\",\"updated_at\":\"2024-05-23T11:01:12.000000Z\",\"category\":{\"id\":4,\"name\":\"Digital Marketing\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":1,\"name\":\"Master the Essentials\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":11,\"path\":\"2024-05-22-08-47-18.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":10,\"created_at\":\"2024-05-22T17:47:18.000000Z\",\"updated_at\":\"2024-05-22T17:47:18.000000Z\"}},{\"id\":11,\"name\":\"Digital Marketing Diploma\",\"description\":\"The Digital Marketing Diploma is an extensive program designed to provide you with a comprehensive understanding of digital marketing strategies and techniques. In today\'s digital era, businesses rely on digital channels to reach and engage with their target audience. This course covers a wide range of topics to equip you with the necessary skills to plan, execute, and measure successful digital marketing campaigns.\",\"price\":12000,\"hours\":40,\"category_id\":4,\"objective_id\":3,\"created_at\":\"2024-05-22T17:56:43.000000Z\",\"updated_at\":\"2024-05-23T11:02:16.000000Z\",\"category\":{\"id\":4,\"name\":\"Digital Marketing\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":3,\"name\":\"Tech Professionals\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":12,\"path\":\"2024-05-22-08-50-54.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":11,\"created_at\":\"2024-05-22T17:50:54.000000Z\",\"updated_at\":\"2024-05-22T17:50:54.000000Z\"}},{\"id\":12,\"name\":\"Backend Course\",\"description\":\"The Backend Development Fundamentals course provides a comprehensive introduction to the principles, tools, and technologies involved in building the server-side of web applications. This course is designed for individuals who are interested in pursuing a career in backend development or seeking to enhance their existing programming skills\",\"price\":6000,\"hours\":140,\"category_id\":1,\"objective_id\":2,\"created_at\":\"2024-05-22T18:06:05.000000Z\",\"updated_at\":\"2024-05-23T11:01:51.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":13,\"path\":\"2024-05-22-08-56-43.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":12,\"created_at\":\"2024-05-22T17:56:43.000000Z\",\"updated_at\":\"2024-05-22T17:56:43.000000Z\"}}]}}},\"duration\":661,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:25:51'),
(508, '9c3b0ba7-2aba-4d98-9ff2-b7813a807734', '9c3b0ba7-3283-4c2b-aad4-762466c4df3b', NULL, 1, 'command', '{\"command\":\"storage:link\",\"exit_code\":0,\"arguments\":{\"command\":\"storage:link\"},\"options\":{\"relative\":false,\"force\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:28:45'),
(509, '9c3b0bf1-dfe9-44b0-9f42-6edbf94b2b71', '9c3b0bf2-5067-4b35-a587-5252e69f36ee', NULL, 1, 'event', '{\"name\":\"cache:clearing\",\"payload\":[null,[]],\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:29:34'),
(510, '9c3b0bf2-41f5-48b8-9417-c6d440769126', '9c3b0bf2-5067-4b35-a587-5252e69f36ee', NULL, 1, 'event', '{\"name\":\"cache:cleared\",\"payload\":[null,[]],\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:29:34'),
(511, '9c3b0bf2-4f28-4148-93ee-113bab49b41c', '9c3b0bf2-5067-4b35-a587-5252e69f36ee', NULL, 1, 'command', '{\"command\":\"cache:clear\",\"exit_code\":0,\"arguments\":{\"command\":\"cache:clear\",\"store\":null},\"options\":{\"tags\":null,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:29:34'),
(512, '9c3b0bf8-0d22-45b1-b577-a218632ef03b', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"20.00\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:29:38'),
(513, '9c3b0bf8-1109-4945-a504-092fc281c900', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:29:38'),
(514, '9c3b0bf8-14dc-40d9-90e8-8d1679a0d110', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `courses`\",\"time\":\"0.62\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":19,\"hash\":\"3c8c698f59a23e785490347ccf9abc89\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:38'),
(515, '9c3b0bf8-165c-4368-8a0c-6e80fd2543c3', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `blogs`\",\"time\":\"0.71\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":22,\"hash\":\"4b32d88c746db4e89f34760372fb0b5f\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:38'),
(516, '9c3b0bf8-17a8-4c83-b1c4-9539cf9308b6', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `categories`\",\"time\":\"0.62\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":25,\"hash\":\"e9e8c8e147366a96f2b9a9a91870ee32\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:38'),
(517, '9c3b0bf8-190e-4f15-bda9-60e9cda1bb9f', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `users`\",\"time\":\"0.62\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":28,\"hash\":\"6c5274cfac96d79f6367317dfb756038\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:38'),
(518, '9c3b0bf8-1b33-4866-83fa-35ce220be47d', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `courses` where month(`created_at`) = \'05\'\",\"time\":\"1.57\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":30,\"hash\":\"41519cd53f70253ac2b679a8b197a3bb\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:38'),
(519, '9c3b0bf8-1c09-4d84-a181-de353c9e68b5', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Course\",\"count\":12,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:38'),
(520, '9c3b0bf8-1da4-4e35-89c3-aa580587c13e', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `categories` where `categories`.`id` in (1, 2, 3, 4)\",\"time\":\"0.73\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":30,\"hash\":\"6ea351314dfabb33b6bba13f136f3cda\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:38'),
(521, '9c3b0bf8-1ede-400f-8734-a6b2fad46738', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Category\",\"count\":4,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:38');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(522, '9c3b0bf8-1fe3-41db-ac2e-e48a5591f0a0', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `objectives` where `objectives`.`id` in (1, 2, 3)\",\"time\":\"0.74\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":30,\"hash\":\"3c47781b5bfa5a6fd05a6b3ecb66fcd1\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:38'),
(523, '9c3b0bf8-21ff-4b5a-8cbf-ad1c9bc4d57c', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Objective\",\"count\":3,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:38'),
(524, '9c3b0bf8-23fb-41f9-8bf0-42c99e63f08c', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `images` where `images`.`imageable_id` in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12) and `images`.`imageable_type` = \'App\\\\Models\\\\Course\'\",\"time\":\"0.95\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\HomeController.php\",\"line\":30,\"hash\":\"92aabdcbd23bca6cee0447e615aa6d4d\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:38'),
(525, '9c3b0bf8-251e-4bbf-9ebb-9eb2590e94b7', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Image\",\"count\":12,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:38'),
(526, '9c3b0bf8-285f-442e-9da3-7f8ccaf7eb8c', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'view', '{\"name\":\"home\",\"path\":\"\\\\resources\\\\views\\/home.blade.php\",\"data\":[\"courses\",\"blogs\",\"categories\",\"enrollments\",\"coursesThisMonth\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:38'),
(527, '9c3b0bf8-2953-401a-8bf7-2013dff05a5d', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'view', '{\"name\":\"layouts.messages\",\"path\":\"\\\\resources\\\\views\\/layouts\\/messages.blade.php\",\"data\":[\"courses\",\"blogs\",\"categories\",\"enrollments\",\"coursesThisMonth\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:38'),
(528, '9c3b0bf8-2aea-45b8-8789-d17096717199', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'view', '{\"name\":\"layouts.master\",\"path\":\"\\\\resources\\\\views\\/layouts\\/master.blade.php\",\"data\":[\"courses\",\"blogs\",\"categories\",\"enrollments\",\"coursesThisMonth\",\"__currentLoopData\",\"course\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:38'),
(529, '9c3b0bf8-2b6d-4592-87a8-149731c9165f', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'view', '{\"name\":\"layouts.sidebar\",\"path\":\"\\\\resources\\\\views\\/layouts\\/sidebar.blade.php\",\"data\":[\"courses\",\"blogs\",\"categories\",\"enrollments\",\"coursesThisMonth\",\"__currentLoopData\",\"course\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:38'),
(530, '9c3b0bf8-2cf6-4a17-9f3a-5d6b95cef69b', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'view', '{\"name\":\"layouts.footer\",\"path\":\"\\\\resources\\\\views\\/layouts\\/footer.blade.php\",\"data\":[\"courses\",\"blogs\",\"categories\",\"enrollments\",\"coursesThisMonth\",\"__currentLoopData\",\"course\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:38'),
(531, '9c3b0bf8-3404-4da4-973a-48d2ebafbaca', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'debugbar', '{\"requestId\":\"X1f5f676aeb6aa4133941054ba0967e16\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:29:38'),
(532, '9c3b0bf8-602a-4bd0-a110-2ed6c1a01bb8', '9c3b0bf8-62b3-4dcd-a942-4086d26f8334', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/home\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\HomeController@index\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/courses\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IjRjVlhOcmVCNzJQVCtiL1VEaEQzT2c9PSIsInZhbHVlIjoiNlcrTFh3ODB6eFhOTkpSaGU4L3VHZUVNNElQQzhmSXFSZ0s0NmpQd08vd0ViNmgrZGdublhQQjBVa0JtNFozMUZ6dVBXWEhadk9XckR0bWJLcGZXNzdpdWJOa2h4M0lkbjJvSmZDSGRUeWtUdVBpZlZrckJKcFJIUWRQZjJ3VGsiLCJtYWMiOiIwMzE2OThmYzQ3YmFiYWZiODdiNjI1MTFhYWYyYzdiNDg3MzdjYmU0NzY4NGVlYjg1NGZjZTc0NjAzMGNlYzkwIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImJCUkg0WHZhZGNRdmIyQWxtVGFNS1E9PSIsInZhbHVlIjoialJ2UlJiTDZ1aVpDSFl6RzkzNkFra0UrK3c4MkxqaVJPTG1remYwRnVZcnVTQUNFM29YTEpCMDNMNTEwS0FYSDFvOUpaTXZjMFpBYUk2RnpmdUFLMU9iRWkzajAxTkM5ODF4QmtyZ2llK1gzL2RrRWZjYW81Mjg2WGVFWXB1dnciLCJtYWMiOiI5NGQwMDM3MzZlY2I5ODI1OGJhZjA2MjZkMTMxZjMzYzAwNTBjMWUzNWFiY2M3MGE3ZGZhYTIwOTA0ZjkzYTIyIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"url\":[],\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/home\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/home.blade.php\",\"data\":{\"courses\":12,\"blogs\":4,\"categories\":4,\"enrollments\":21,\"coursesThisMonth\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"name\":\"Web development essentials\",\"description\":\"the fundamental building blocks of creating websites and web applications. It\'s like having a toolbox with the most important tools for this job.\",\"price\":6000,\"hours\":30,\"category_id\":1,\"objective_id\":1,\"created_at\":\"2024-05-22T16:33:06.000000Z\",\"updated_at\":\"2024-05-23T10:57:15.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":1,\"name\":\"Master the Essentials\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":18,\"path\":\"2024-05-23-03-16-56.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":1,\"created_at\":\"2024-05-23T12:16:56.000000Z\",\"updated_at\":\"2024-05-23T12:16:56.000000Z\"}},{\"id\":2,\"name\":\"Frontend course\",\"description\":\"designed to provide you with a comprehensive introduction to the essential concepts, tools, and techniques required to build modern and user-friendly websites\",\"price\":6000,\"hours\":80,\"category_id\":1,\"objective_id\":2,\"created_at\":\"2024-05-22T17:15:50.000000Z\",\"updated_at\":\"2024-05-23T10:57:29.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":15,\"path\":\"2024-05-23-03-11-15.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":2,\"created_at\":\"2024-05-23T12:11:15.000000Z\",\"updated_at\":\"2024-05-23T12:11:15.000000Z\"}},{\"id\":3,\"name\":\"Full Stack Diploma\",\"description\":\"comprehensive program designed to equip you with the skills and knowledge required to build dynamic and interactive web applications\",\"price\":12000,\"hours\":140,\"category_id\":1,\"objective_id\":3,\"created_at\":\"2024-05-22T17:28:29.000000Z\",\"updated_at\":\"2024-05-23T10:57:48.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":3,\"name\":\"Tech Professionals\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":17,\"path\":\"2024-05-23-03-15-49.png\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":3,\"created_at\":\"2024-05-23T12:15:49.000000Z\",\"updated_at\":\"2024-05-23T12:15:49.000000Z\"}},{\"id\":4,\"name\":\"Graphic Desgin\",\"description\":\"This course focuses on developing your creativity and visual communication skills to create visually appealing and effective designs for various mediums.\",\"price\":6000,\"hours\":60,\"category_id\":2,\"objective_id\":2,\"created_at\":\"2024-05-22T17:32:50.000000Z\",\"updated_at\":\"2024-05-23T10:58:01.000000Z\",\"category\":{\"id\":2,\"name\":\"Design\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":5,\"path\":\"2024-05-22-08-28-29.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":4,\"created_at\":\"2024-05-22T17:28:29.000000Z\",\"updated_at\":\"2024-05-22T17:28:29.000000Z\"}},{\"id\":5,\"name\":\"UI\\/UX\",\"description\":\"The UI\\/UX Design Fundamentals course is designed to provide you with a comprehensive understanding of user interface (UI) and user experience (UX) design principles and practices.\",\"price\":6000,\"hours\":75,\"category_id\":2,\"objective_id\":2,\"created_at\":\"2024-05-22T17:34:14.000000Z\",\"updated_at\":\"2024-05-23T11:08:53.000000Z\",\"category\":{\"id\":2,\"name\":\"Design\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":6,\"path\":\"2024-05-22-08-32-50.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":5,\"created_at\":\"2024-05-22T17:32:50.000000Z\",\"updated_at\":\"2024-05-22T17:32:50.000000Z\"}},{\"id\":6,\"name\":\"Essentials of Python\",\"description\":\"The Essentials of Python course is designed to provide you with a comprehensive introduction to the Python programming language.<span style=\\\"background-color: rgb(247, 247, 247); color: rgb(0, 0, 0); font-family: -apple-system, system-ui, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif; font-size: 18px;\\\">&nbsp;<\\/span>&nbsp;Python is widely used for various applications, including web development, data analysis, scientific computing, and automation. This course is suitable for beginners with no prior programming experience as well as those with programming knowledge in other languages who want to learn Python\",\"price\":6000,\"hours\":55,\"category_id\":3,\"objective_id\":1,\"created_at\":\"2024-05-22T17:38:08.000000Z\",\"updated_at\":\"2024-05-23T10:58:53.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":1,\"name\":\"Master the Essentials\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":7,\"path\":\"2024-05-22-08-34-14.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":6,\"created_at\":\"2024-05-22T17:34:14.000000Z\",\"updated_at\":\"2024-05-22T17:34:14.000000Z\"}},{\"id\":7,\"name\":\"AI\",\"description\":\"AI is a rapidly growing field that focuses on creating intelligent systems capable of performing tasks that typically require human intelligence. This course aims to equip you with a foundational understanding of AI concepts and techniques.\",\"price\":6000,\"hours\":160,\"category_id\":3,\"objective_id\":2,\"created_at\":\"2024-05-22T17:39:55.000000Z\",\"updated_at\":\"2024-05-23T10:59:13.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":8,\"path\":\"2024-05-22-08-38-08.png\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":7,\"created_at\":\"2024-05-22T17:38:08.000000Z\",\"updated_at\":\"2024-05-22T17:38:08.000000Z\"}},{\"id\":8,\"name\":\"Deep and Machine Learning\",\"description\":\"The Deep and Machine Learning Fundamentals course is designed to provide you with a comprehensive understanding of deep learning and machine learning techniques. Deep learning focuses on training artificial neural networks with multiple layers to learn representations of data\",\"price\":10000,\"hours\":100,\"category_id\":3,\"objective_id\":2,\"created_at\":\"2024-05-22T17:42:25.000000Z\",\"updated_at\":\"2024-05-23T10:59:23.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":9,\"path\":\"2024-05-22-08-39-55.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":8,\"created_at\":\"2024-05-22T17:39:55.000000Z\",\"updated_at\":\"2024-05-22T17:39:55.000000Z\"}},{\"id\":9,\"name\":\"Data Scientist Diploma\",\"description\":\"The Data Scientist Diploma course is a comprehensive program designed to provide you with the knowledge and skills required to excel in the field of data science. Data science involves extracting insights and knowledge from large and complex datasets using various techniques, including statistical analysis, machine learning, and data visualization. This course covers a wide range of topics to equip you with the necessary skills to become a proficient data scientist.\",\"price\":12000,\"hours\":90,\"category_id\":3,\"objective_id\":3,\"created_at\":\"2024-05-22T17:47:18.000000Z\",\"updated_at\":\"2024-05-23T11:00:52.000000Z\",\"category\":{\"id\":3,\"name\":\"Data Science\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":3,\"name\":\"Tech Professionals\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":10,\"path\":\"2024-05-22-08-42-25.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":9,\"created_at\":\"2024-05-22T17:42:25.000000Z\",\"updated_at\":\"2024-05-22T17:42:25.000000Z\"}},{\"id\":10,\"name\":\"Social media marketing Essentials\",\"description\":\"The Social Media Marketing Essentials course is designed to provide you with the knowledge and skills required to develop and implement effective social media marketing strategies. Social media platforms have become powerful tools for businesses to reach and engage with their target audience. This course will equip you with the essential techniques and best practices to leverage social media for marketing purposes.\",\"price\":6000,\"hours\":40,\"category_id\":4,\"objective_id\":1,\"created_at\":\"2024-05-22T17:50:54.000000Z\",\"updated_at\":\"2024-05-23T11:01:12.000000Z\",\"category\":{\"id\":4,\"name\":\"Digital Marketing\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":1,\"name\":\"Master the Essentials\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":11,\"path\":\"2024-05-22-08-47-18.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":10,\"created_at\":\"2024-05-22T17:47:18.000000Z\",\"updated_at\":\"2024-05-22T17:47:18.000000Z\"}},{\"id\":11,\"name\":\"Digital Marketing Diploma\",\"description\":\"The Digital Marketing Diploma is an extensive program designed to provide you with a comprehensive understanding of digital marketing strategies and techniques. In today\'s digital era, businesses rely on digital channels to reach and engage with their target audience. This course covers a wide range of topics to equip you with the necessary skills to plan, execute, and measure successful digital marketing campaigns.\",\"price\":12000,\"hours\":40,\"category_id\":4,\"objective_id\":3,\"created_at\":\"2024-05-22T17:56:43.000000Z\",\"updated_at\":\"2024-05-23T11:02:16.000000Z\",\"category\":{\"id\":4,\"name\":\"Digital Marketing\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":3,\"name\":\"Tech Professionals\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":12,\"path\":\"2024-05-22-08-50-54.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":11,\"created_at\":\"2024-05-22T17:50:54.000000Z\",\"updated_at\":\"2024-05-22T17:50:54.000000Z\"}},{\"id\":12,\"name\":\"Backend Course\",\"description\":\"The Backend Development Fundamentals course provides a comprehensive introduction to the principles, tools, and technologies involved in building the server-side of web applications. This course is designed for individuals who are interested in pursuing a career in backend development or seeking to enhance their existing programming skills\",\"price\":6000,\"hours\":140,\"category_id\":1,\"objective_id\":2,\"created_at\":\"2024-05-22T18:06:05.000000Z\",\"updated_at\":\"2024-05-23T11:01:51.000000Z\",\"category\":{\"id\":1,\"name\":\"Web Development\",\"created_at\":\"2024-05-22T11:07:59.000000Z\",\"updated_at\":\"2024-05-22T11:07:59.000000Z\"},\"objective\":{\"id\":2,\"name\":\"Boost you Skills\",\"created_at\":\"2024-05-23T10:30:46.000000Z\",\"updated_at\":\"2024-05-23T10:30:46.000000Z\"},\"image\":{\"id\":13,\"path\":\"2024-05-22-08-56-43.jpg\",\"imageable_type\":\"App\\\\Models\\\\Course\",\"imageable_id\":12,\"created_at\":\"2024-05-22T17:56:43.000000Z\",\"updated_at\":\"2024-05-22T17:56:43.000000Z\"}}]}}},\"duration\":666,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:38'),
(533, '9c3b0bfe-81ad-40f7-864f-75ecc67cab5e', '9c3b0bfe-a43f-42f9-b81e-5203daa53537', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"4.35\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:29:42'),
(534, '9c3b0bfe-86d4-49a9-abb9-61c71673a948', '9c3b0bfe-a43f-42f9-b81e-5203daa53537', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:29:42'),
(535, '9c3b0bfe-8a0e-4d02-9825-3e514d8681e0', '9c3b0bfe-a43f-42f9-b81e-5203daa53537', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings`\",\"time\":\"1.56\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\SettingController.php\",\"line\":15,\"hash\":\"9a0c1b1878c6704a2df2ae90c2a24cef\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:42'),
(536, '9c3b0bfe-8aec-4e03-af40-ae1cedb25cc9', '9c3b0bfe-a43f-42f9-b81e-5203daa53537', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:42'),
(537, '9c3b0bfe-8f50-4554-84c1-7be1ea1c3f2a', '9c3b0bfe-a43f-42f9-b81e-5203daa53537', NULL, 1, 'view', '{\"name\":\"settings.index\",\"path\":\"\\\\resources\\\\views\\/settings\\/index.blade.php\",\"data\":[\"settings\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:42'),
(538, '9c3b0bfe-9933-472d-8f85-d697ad616e87', '9c3b0bfe-a43f-42f9-b81e-5203daa53537', NULL, 1, 'view', '{\"name\":\"layouts.messages\",\"path\":\"\\\\resources\\\\views\\/layouts\\/messages.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:42'),
(539, '9c3b0bfe-999c-42f2-9a6b-b6a7dc4137d8', '9c3b0bfe-a43f-42f9-b81e-5203daa53537', NULL, 1, 'view', '{\"name\":\"layouts.master\",\"path\":\"\\\\resources\\\\views\\/layouts\\/master.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:42'),
(540, '9c3b0bfe-9a0b-4af0-b4f8-404cbb1c7b74', '9c3b0bfe-a43f-42f9-b81e-5203daa53537', NULL, 1, 'view', '{\"name\":\"layouts.sidebar\",\"path\":\"\\\\resources\\\\views\\/layouts\\/sidebar.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:42'),
(541, '9c3b0bfe-9b07-4316-9296-12f6f23ae66b', '9c3b0bfe-a43f-42f9-b81e-5203daa53537', NULL, 1, 'view', '{\"name\":\"layouts.footer\",\"path\":\"\\\\resources\\\\views\\/layouts\\/footer.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:42'),
(542, '9c3b0bfe-a0bd-4e1a-96d4-00e78658aab1', '9c3b0bfe-a43f-42f9-b81e-5203daa53537', NULL, 1, 'debugbar', '{\"requestId\":\"X500b0bdb068b7a8b424a935a9c6f252b\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:29:42'),
(543, '9c3b0bfe-a1f2-41c0-ba07-96e10f632e93', '9c3b0bfe-a43f-42f9-b81e-5203daa53537', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/settings\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\SettingController@index\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/home\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6Ilg3SGtTVHlCaWFYWGFtbE8ybFh4K0E9PSIsInZhbHVlIjoiclRpbnpnRWVxOFNlVHphTExETmVOMkRpaWFScXBaWXBWTDJFd2JtcGIxYS9zY2d2OEhTYjhqdVBLWStiUFZVOGVUc09IelVOYlFBYnFkKzJOdUFCTC9lbG03ZTZIY1BZVGVQOTQ2YVR2TVZySU51SjcvNkpjM2Nmdmg0Q2thNTMiLCJtYWMiOiJlOWExZjUyNzliMTIyZjMzMTA4MzljN2NhNDkwZmJmY2E5NWM1OTA1ZTAyYzkwNTE4YzBlMTMxNGYxODQ4MjFhIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IkRGbE4yS1grQ25lbEVLV205YnA5YlE9PSIsInZhbHVlIjoiV2tjTk9KNGpFV2U3QzFTMVJkOUE3M2VaZGY5NG44aThwK3dRVEgwSy9qdTNKQmpNaVpTSys3UThMa2lHNkx6WXhLV2RmVVZlK2hVY3VpVGlEZ2wvb29WRVlQNjhqSm11ZThVNmQxcVJ4OWNMV3pDdW8xeGhjRVNNSjlJZGYzVUEiLCJtYWMiOiJiZGE0NjM5NDE5NWRmZjdmZDc4MGNjNzVjZmM3ZDgxMGZlNjUwOWVjNjFmYzE3ZTk4MzI3MzI1ZTVjMDVhMDRmIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"url\":[],\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/settings\\/index.blade.php\",\"data\":{\"settings\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"logo\":\"2024-06-07-06-03-12.jpg\",\"email\":\"Techmagnet@gmail.com\",\"phone\":\"01000009999\",\"location\":\"Greek Campus\",\"created_at\":\"2024-05-25T17:30:36.000000Z\",\"updated_at\":\"2024-06-07T15:03:12.000000Z\"}]}}},\"duration\":443,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:29:42'),
(544, '9c3b0bff-8a70-4ec5-a11b-cc5a21446994', '9c3b0bff-d082-4f19-8f95-a9df4a27165e', NULL, 1, 'view', '{\"name\":\"errors::404\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/404.blade.php\",\"data\":[\"exception\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:29:43'),
(545, '9c3b0bff-9bb2-41a8-91dc-518a376f64c2', '9c3b0bff-d082-4f19-8f95-a9df4a27165e', NULL, 1, 'view', '{\"name\":\"errors::minimal\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/minimal.blade.php\",\"data\":[\"exception\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:29:43'),
(546, '9c3b0bff-bf30-4635-bc55-800765bfaf6a', '9c3b0bff-d082-4f19-8f95-a9df4a27165e', NULL, 1, 'debugbar', '{\"requestId\":\"X0a876fe57cb023fa71ef3ceb31bda1d6\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:29:43'),
(547, '9c3b0bff-cdb2-47e2-b1b7-ae412e3440b1', '9c3b0bff-d082-4f19-8f95-a9df4a27165e', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/storage\\/2024-06-07-06-03-12.jpg\",\"method\":\"GET\",\"controller_action\":null,\"middleware\":[],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IlArL3dQbmZrNllPSU00MStyRkhiUVE9PSIsInZhbHVlIjoiNzh5T2tLeVJxR0t1OVlTdEx0ZFJ1RERydGJUZ2VjUmt5ekxwaTdickFuZUNTdDF2OEg1bUpHeFo5L1Q4S3RQK2lXdk5BNzNOYUFLQ3Q0anUrTXhrWDhWTTZrN21wQW1QNTdtTTQrbGdNdXpkVEQzZFptQVhsdFdmc3MxaTRhQXMiLCJtYWMiOiIzNGQ0NDc5ZWM5OGJkZDIzNGRlMjZkNjc3YzNjODBlOTA2ZDNkODExM2RiYTMxYjNmZTdjOTM2MjI2MDhhZTdhIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjVlWmZNK3MvcGV0OUdLemF4MGJyOEE9PSIsInZhbHVlIjoia0hyMGlNNEhSbWUwbmw1c2RmUVVBem9qSHRKV29EN25VTzFNWXd1UzFsaXJTc1hqSUNNZTNhOEpvVFdNOUpwbXo2cWp5MGwrVUVQYUo3ajMxZlRiU20vcHR1Nk5uVU5pRTkvQXBSRWFJVGdDYm85VW5Ra2RDeXJMOXZuUnJlNzMiLCJtYWMiOiI0YTgzOWQ3YjZkODM2NDExNmE1ODA5NTI0ODQ5Yzc3MWIzZTIxNmY5MjA2NjZmMDQxN2IzOWUxMWEwZDVjNmU3IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":404,\"response\":\"HTML Response\",\"duration\":712,\"memory\":24,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:29:43'),
(548, '9c3b0c58-71dd-44be-abad-d34e44d5e64b', '9c3b0c58-7c42-4c53-ba7d-db0438b5c7ab', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:41'),
(549, '9c3b0c5b-d0fd-4747-b96b-a33ee12e7c30', '9c3b0c5b-e36a-4976-8331-88d47fe808e8', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:43'),
(550, '9c3b0c5b-c26e-4904-adc2-360aa3b6b403', '9c3b0c5b-f1fb-441e-ab2a-39ebb6c272fd', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:43'),
(551, '9c3b0c5b-ee6b-473b-8008-293b73c36f82', '9c3b0c5b-ff3d-426e-8541-9cebe568c109', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:43'),
(552, '9c3b0c5c-444b-430d-98fb-9922513458c7', '9c3b0c5c-73a7-43df-91ae-2c008bab3f56', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:43'),
(553, '9c3b0c5c-8566-490e-a815-06d0ac75e1d4', '9c3b0c5c-a103-4199-895a-62e5bcdc048c', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:43'),
(554, '9c3b0c5c-56c1-481f-87d7-cffe71d81e6b', '9c3b0c5c-b96c-43b9-95c9-4a0761eaa2fb', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:43'),
(555, '9c3b0c67-8484-4a6b-ba42-00e6e1d17be4', '9c3b0c67-9e96-4e0f-8d92-ef3e9b1b03f0', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(556, '9c3b0c66-637e-4dc4-8192-ec4e5cb5edee', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:50'),
(557, '9c3b0c66-c596-41ce-818f-731cdf7ff0f7', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` limit 1\",\"time\":\"5.90\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"4e3ac28faeeb88928cb0b8333b289c45\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:50'),
(558, '9c3b0c66-c62a-49b5-a478-9ea2052f21b9', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:50'),
(559, '9c3b0c66-d991-4743-8607-ef9a9d43c9a6', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `assignments` limit 1\",\"time\":\"21.40\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"517f79a0011ce91c603a40ae87b028bf\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:50'),
(560, '9c3b0c66-da0b-420b-957c-aa613f2bd709', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Assignment\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:50'),
(561, '9c3b0c67-0303-4dc7-926f-7e9ab8c0edad', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `attendances` limit 1\",\"time\":\"86.08\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"006c5e08276aad8557f56d1450143f96\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:50'),
(562, '9c3b0c67-037a-445d-b87e-d02eaab246aa', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Attendance\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:50'),
(563, '9c3b0c67-0b02-4261-bc71-d36a223f05ee', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `blogs` limit 1\",\"time\":\"1.06\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"00fb6bb17b98eed9804c9f4abd5a0556\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:50'),
(564, '9c3b0c67-0b71-41e3-882b-7494949c688b', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Blog\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:50'),
(565, '9c3b0c67-338e-4f6f-9c1c-af50b1ddca05', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `categories` limit 1\",\"time\":\"82.73\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"1987c517c92f01ecebc79e41fa5b235f\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:50'),
(566, '9c3b0c67-33e9-41b1-b986-348a9ef74a6f', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Category\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:50'),
(567, '9c3b0c67-645e-4cad-81f0-62a04131c1c1', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `chats` limit 1\",\"time\":\"108.14\",\"slow\":true,\"file\":\"Command line code\",\"line\":1,\"hash\":\"3726f5b313d2e3709da012a702ef47b6\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(568, '9c3b0c67-64be-4983-a207-bf5ca32f8cc1', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Chat\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(569, '9c3b0c67-6dde-46bc-a169-9fbdab37084f', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `cities` limit 1\",\"time\":\"3.96\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"269e6705c221f4d90d70a97969c821e7\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(570, '9c3b0c67-6e86-4c42-a8c6-52781c041ed2', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\City\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(571, '9c3b0c67-a075-43b7-b145-1cd2582c37bc', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `courses` limit 1\",\"time\":\"107.17\",\"slow\":true,\"file\":\"Command line code\",\"line\":1,\"hash\":\"24d25b6d0de144c5278dccce44176f98\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(572, '9c3b0c67-a115-4741-a088-5e0cc2465c9a', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Course\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(573, '9c3b0c67-d1df-46fd-b161-5e0e7f68093d', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `images` limit 1\",\"time\":\"105.31\",\"slow\":true,\"file\":\"Command line code\",\"line\":1,\"hash\":\"15639a2dc6daad0d4453c786ad5fe7ec\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(574, '9c3b0c67-d236-408e-a993-0f5f24ecc744', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Image\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(575, '9c3b0c67-daa1-4bd1-9d83-3f9596b7b06e', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `materials` limit 1\",\"time\":\"2.14\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"689c2ef4d49cf06afdb32ad7a46af973\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(576, '9c3b0c67-db0a-4584-8870-aa1bda5082bf', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Material\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(577, '9c3b0c67-e3f2-4d75-96cc-6e6177833c58', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `objectives` limit 1\",\"time\":\"0.85\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"6fa2af8d5152b50f461bc08336ab8b66\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(578, '9c3b0c67-e4c1-4eb4-88c5-f783506c693b', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Objective\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(579, '9c3b0c67-fe15-4819-81da-7becdf72c89d', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `permissions` limit 1\",\"time\":\"46.10\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"51e9d969f17c78f90d8e7681004a1de9\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(580, '9c3b0c67-fe7c-4bd1-91c2-489cfd435062', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Permission\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(581, '9c3b0c68-05e7-4eb1-b6d6-4d35bf77a1b1', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `portfolios` limit 1\",\"time\":\"2.21\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"eacdca4b9d1f09a29d90c08f1558e889\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(582, '9c3b0c68-064c-4ef4-918c-d9ee3c24bdb0', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Portfolio\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(583, '9c3b0c68-0cf6-4a2b-aea9-5733561ad6d7', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `projects` limit 1\",\"time\":\"1.90\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"ab5539b5c81f6bce8d9a0876b9fcbeb1\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(584, '9c3b0c68-0d5a-4b37-a83f-0c9fee34ac6b', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Project\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(585, '9c3b0c68-23b9-4bff-8d38-2b04c106a00c', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `questions` limit 1\",\"time\":\"40.62\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"823df4ea3c5beee511273cecde5fe170\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(586, '9c3b0c68-2411-4931-b5a3-090afecd0a63', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Question\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(587, '9c3b0c68-2ac8-4c1c-9866-14d400a48c26', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `quizzes` limit 1\",\"time\":\"1.62\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"0f9cf2965c9481cd6546d0e5788625cd\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(588, '9c3b0c68-2b27-45a1-93ff-a2cbbd738383', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Quiz\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(589, '9c3b0c68-329e-4ed5-b293-18597e86baf8', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `recordings` limit 1\",\"time\":\"1.82\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"7715216264953b60c64597019b808a30\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(590, '9c3b0c68-32f9-4a03-b9d7-974351ca38ec', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Recording\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(591, '9c3b0c68-4bbd-4750-8203-dd4b3a9f5f1d', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `roadmaps` limit 1\",\"time\":\"46.64\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"5b873386a951750a47be14bd1fccdf8e\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(592, '9c3b0c68-4c1d-429a-b914-aba4de18d9d8', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Roadmap\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(593, '9c3b0c68-5fb5-45ca-a2d4-399ea06696c3', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `roles` limit 1\",\"time\":\"33.75\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"7b92920f696a1378bfc848f6d6479bb6\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(594, '9c3b0c68-6024-432b-81d8-aa4fc5a43e8d', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Role\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(595, '9c3b0c68-69a3-48e3-b8ec-74e1fd5d759e', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `schedules` limit 1\",\"time\":\"7.48\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"a9a20bc48e1d5dab9dd3cfb8f5cc297a\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(596, '9c3b0c68-6a26-42f7-9c07-f7ce7172f900', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Schedule\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(597, '9c3b0c68-7207-449b-b44f-fdc3c22b6188', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sessions` limit 1\",\"time\":\"2.80\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"5700c04403bd455f3d8f29c063bec0a5\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(598, '9c3b0c68-7276-474b-9900-a46a631e06c3', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Session\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(599, '9c3b0c68-7ace-4160-9702-a9c4018b5fb2', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings` limit 1\",\"time\":\"0.87\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"fa0ff947d644db0afa39e9f3fd6a5cf9\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(600, '9c3b0c68-7b35-4e5f-8b1a-8284945ff608', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(601, '9c3b0c68-8484-471b-992b-82c3f435c0d1', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `skills` limit 1\",\"time\":\"4.26\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"ccb2e89705f54c4b01083b3c60fe4629\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(602, '9c3b0c68-84f1-44a5-a306-7445a81faa55', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Skill\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(603, '9c3b0c68-8c22-4b83-8eda-4e8738437afd', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `student_progress` limit 1\",\"time\":\"2.12\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"0737d183c9d5ad32091094f8d0b37d0b\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(604, '9c3b0c68-8c87-4c49-9bc7-658c11bafb11', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\StudentProgress\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(605, '9c3b0c68-9c05-40ac-a09e-9fff0dd5eb22', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `super_skills` limit 1\",\"time\":\"12.93\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"ca13d86010e4eb2c7e4679db342281ac\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(606, '9c3b0c68-9c6d-4733-8e9b-536c142d6f01', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\SuperSkill\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(607, '9c3b0c68-abb8-4e00-9c2c-316acaec6033', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `support_requests` limit 1\",\"time\":\"20.52\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"a670d200107a7d03ec8459bd70b6b101\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(608, '9c3b0c68-ac1c-42fe-8f39-3b5a92024498', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\SupportRequest\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(609, '9c3b0c68-b6b4-4af7-ac3c-c560f2efac11', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` limit 1\",\"time\":\"7.36\",\"slow\":false,\"file\":\"Command line code\",\"line\":1,\"hash\":\"26d128571acc3ade5f7d4401c1737345\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(610, '9c3b0c68-b720-456e-a780-64ff70359b77', '9c3b0c68-c13d-436c-a977-c398819b0bd3', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\User\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:51'),
(611, '9c3b0c69-7b55-45ca-9030-ba5391ed86a5', '9c3b0c69-a8aa-4811-8866-53366125047f', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:52'),
(612, '9c3b0c69-9936-43fc-9332-350801879f0c', '9c3b0c69-b737-4b88-aeea-e350e466853e', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:52'),
(613, '9c3b0c72-3e42-40f9-ac45-e85964b92f47', '9c3b0c7b-9023-4756-b9f6-6500af1ce7b9', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:30:58'),
(614, '9c3b0c7f-1be9-4048-a875-bc792a5aac21', '9c3b0c7f-2306-4713-a660-d791eeed0470', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:31:06'),
(615, '9c3b0cb5-63e1-46c0-83d5-6e2fdd8d8060', '9c3b0cb5-6dd6-4e79-8757-0e455a995864', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:31:42'),
(616, '9c3b0cb5-a314-4c49-88a6-3fce70036ab9', '9c3b0cb5-dc4b-49e1-ac00-2056cf2aa788', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:31:42'),
(617, '9c3b0d10-bcaa-4bbb-bd5e-08cf68ef4123', '9c3b0d10-cd7a-4994-a5b2-fc1b8d6a1c12', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:32:42'),
(618, '9c3b0d11-0fa8-466f-81e8-d0ff1997a528', '9c3b0d11-18db-43e4-bf09-26e6d94adfaf', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:32:42'),
(619, '9c3b0d6c-0f3f-42e5-811e-2d11d845c868', '9c3b0d6c-1ea3-4a1d-a282-bfecef500bd0', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:33:41'),
(620, '9c3b0d6c-22b9-49f4-a9c7-afdcc0071395', '9c3b0d6c-2aec-45a9-84bd-3acdaff1ed0d', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:33:41'),
(621, '9c3b0dc8-107e-44ac-86f5-ba8264432a7d', '9c3b0dc8-1bcf-4462-b8fe-7add0c6d8bcc', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:34:42'),
(622, '9c3b0dc8-13e1-41df-a040-cb005b2e7d87', '9c3b0dc8-2a78-4ce5-9e09-915780199181', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:34:42'),
(623, '9c3b0e22-d6ff-4523-acce-f3a6712519df', '9c3b0e22-ded7-4858-be5e-faf811377f93', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:35:41'),
(624, '9c3b0e22-d483-4c05-9f8e-b1ac996f83ca', '9c3b0e22-e12c-412b-8040-5f0cce49078e', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:35:41'),
(625, '9c3b0e7e-9405-4e69-9006-d489cc88f929', '9c3b0e7e-a1c9-43fd-b39f-d855f790d48f', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:36:41'),
(626, '9c3b0e7e-d5b8-44ca-8ce6-3deb8dfb488f', '9c3b0e7e-dbcc-4160-b248-5b10a445de4b', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:36:41'),
(627, '9c3b0ed9-e84f-4d0f-966a-d9ffe5484636', '9c3b0ed9-f544-4e9e-a0ec-bcd7b263dd74', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:37:41'),
(628, '9c3b0ed9-f25f-44c3-b7b3-5b2d6e198354', '9c3b0ed9-f922-491b-88ad-b43e764c0d57', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:37:41'),
(629, '9c3b0f35-931e-4527-8076-3e6878693e6a', '9c3b0f35-9a5d-4bd1-b9f2-0dd882794abf', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:38:41'),
(630, '9c3b0f35-9b29-4da2-a071-ac1046f3f02f', '9c3b0f35-a863-4dae-bc6e-bcbe3e47348f', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:38:41'),
(631, '9c3b0f91-0bff-4864-83ea-16c767dcec34', '9c3b0f91-1750-43b3-af74-1e206178382a', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:39:41'),
(632, '9c3b0f91-916b-46f1-ac8d-6faa9c84abc3', '9c3b0f91-9d6c-47af-ad9e-9e377ad0b134', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:39:42'),
(633, '9c3b0fed-2909-42d5-83ec-7814ebe014b9', '9c3b0fed-3007-4b62-8c36-d66a90e62026', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:40:42'),
(634, '9c3b0fed-2e6e-4a3b-82cb-6487237d8dd3', '9c3b0fed-3c9a-44de-9383-16aa36aec9d9', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:40:42'),
(635, '9c3b0ff1-8bc8-437c-819c-099791bd2362', '9c3b0ff1-9206-4d4e-a99f-8047b11b8fad', NULL, 1, 'command', '{\"command\":\"list\",\"exit_code\":0,\"arguments\":{\"command\":\"list\",\"namespace\":null},\"options\":{\"raw\":false,\"format\":\"txt\",\"short\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:40:44'),
(636, '9c3b0ff3-aae0-4db1-b80d-5ead331bbe64', '9c3b0ff4-1f28-4fb4-bf85-8f53e62df497', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"7.74\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:40:46'),
(637, '9c3b0ff3-af1e-4fd3-a0bd-1aac5c4364d2', '9c3b0ff4-1f28-4fb4-bf85-8f53e62df497', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:40:46'),
(638, '9c3b0ff3-cf73-4975-8f56-66077591eac3', '9c3b0ff4-1f28-4fb4-bf85-8f53e62df497', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings`\",\"time\":\"1.63\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Admin\\\\SettingController.php\",\"line\":15,\"hash\":\"9a0c1b1878c6704a2df2ae90c2a24cef\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:40:46'),
(639, '9c3b0ff3-d076-4102-852f-5892a3d78009', '9c3b0ff4-1f28-4fb4-bf85-8f53e62df497', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:40:46'),
(640, '9c3b0ff3-db06-4a75-b63e-3137c6f3919d', '9c3b0ff4-1f28-4fb4-bf85-8f53e62df497', NULL, 1, 'view', '{\"name\":\"settings.index\",\"path\":\"\\\\resources\\\\views\\/settings\\/index.blade.php\",\"data\":[\"settings\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:40:46'),
(641, '9c3b0ff3-ebec-43b7-a9d9-4757844e5d50', '9c3b0ff4-1f28-4fb4-bf85-8f53e62df497', NULL, 1, 'view', '{\"name\":\"layouts.messages\",\"path\":\"\\\\resources\\\\views\\/layouts\\/messages.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:40:46'),
(642, '9c3b0ff3-ec87-4373-b0d2-ad6ce9da9ba8', '9c3b0ff4-1f28-4fb4-bf85-8f53e62df497', NULL, 1, 'view', '{\"name\":\"layouts.master\",\"path\":\"\\\\resources\\\\views\\/layouts\\/master.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:40:46'),
(643, '9c3b0ff3-f1b2-40cc-a3bb-39ae381bb504', '9c3b0ff4-1f28-4fb4-bf85-8f53e62df497', NULL, 1, 'view', '{\"name\":\"layouts.sidebar\",\"path\":\"\\\\resources\\\\views\\/layouts\\/sidebar.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:40:46'),
(644, '9c3b0ff3-f332-4916-a06e-19e93a03fbbb', '9c3b0ff4-1f28-4fb4-bf85-8f53e62df497', NULL, 1, 'view', '{\"name\":\"layouts.footer\",\"path\":\"\\\\resources\\\\views\\/layouts\\/footer.blade.php\",\"data\":[\"settings\",\"__currentLoopData\",\"setting\",\"loop\"],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:40:46'),
(645, '9c3b0ff4-19c0-411c-81d3-eb483b4acf1c', '9c3b0ff4-1f28-4fb4-bf85-8f53e62df497', NULL, 1, 'debugbar', '{\"requestId\":\"Xeae8eb7130fb31c2f964cbdfdaf08a26\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:40:46'),
(646, '9c3b0ff4-1b31-4ec1-80fc-017dad423fdb', '9c3b0ff4-1f28-4fb4-bf85-8f53e62df497', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/settings\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Admin\\\\SettingController@index\",\"middleware\":[\"web\",\"auth:admin\",\"Language\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/home\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IlArL3dQbmZrNllPSU00MStyRkhiUVE9PSIsInZhbHVlIjoiNzh5T2tLeVJxR0t1OVlTdEx0ZFJ1RERydGJUZ2VjUmt5ekxwaTdickFuZUNTdDF2OEg1bUpHeFo5L1Q4S3RQK2lXdk5BNzNOYUFLQ3Q0anUrTXhrWDhWTTZrN21wQW1QNTdtTTQrbGdNdXpkVEQzZFptQVhsdFdmc3MxaTRhQXMiLCJtYWMiOiIzNGQ0NDc5ZWM5OGJkZDIzNGRlMjZkNjc3YzNjODBlOTA2ZDNkODExM2RiYTMxYjNmZTdjOTM2MjI2MDhhZTdhIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjVlWmZNK3MvcGV0OUdLemF4MGJyOEE9PSIsInZhbHVlIjoia0hyMGlNNEhSbWUwbmw1c2RmUVVBem9qSHRKV29EN25VTzFNWXd1UzFsaXJTc1hqSUNNZTNhOEpvVFdNOUpwbXo2cWp5MGwrVUVQYUo3ajMxZlRiU20vcHR1Nk5uVU5pRTkvQXBSRWFJVGdDYm85VW5Ra2RDeXJMOXZuUnJlNzMiLCJtYWMiOiI0YTgzOWQ3YjZkODM2NDExNmE1ODA5NTI0ODQ5Yzc3MWIzZTIxNmY5MjA2NjZmMDQxN2IzOWUxMWEwZDVjNmU3IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\",\"url\":[],\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1,\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/settings\\/index.blade.php\",\"data\":{\"settings\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":1,\"logo\":\"2024-06-07-06-03-12.jpg\",\"email\":\"Techmagnet@gmail.com\",\"phone\":\"01000009999\",\"location\":\"Greek Campus\",\"created_at\":\"2024-05-25T17:30:36.000000Z\",\"updated_at\":\"2024-06-07T15:03:12.000000Z\"}]}}},\"duration\":1493,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":1,\"name\":\"ahmed\",\"email\":\"a12@gmail.com\"}}', '2024-06-07 18:40:46'),
(647, '9c3b1005-6577-41ca-837f-4067c6edcbbe', '9c3b1005-c3b0-4006-8964-27de130bf206', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `admins` where `id` = 1 limit 1\",\"time\":\"3.04\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Auth\\\\LoginController.php\",\"line\":63,\"hash\":\"7f9f4d7e04190956dac445c21d68a2d2\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:40:57'),
(648, '9c3b1005-6906-4ec5-a09f-a8b38298fdef', '9c3b1005-c3b0-4006-8964-27de130bf206', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Admin\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:40:57'),
(649, '9c3b1005-7f0c-49f5-83b8-311a2b23c225', '9c3b1005-c3b0-4006-8964-27de130bf206', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `admins` set `remember_token` = \'uwF4aFAYRq7QO7jvY6fKc08wmuoSi1SBKPBhTBba4Ih1PQ0hvnU0qZH6En05\' where `id` = 1\",\"time\":\"2.80\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Auth\\\\LoginController.php\",\"line\":63,\"hash\":\"235de4d93bd975d3360fec6f245f78e0\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:40:57'),
(650, '9c3b1005-8ce2-4636-b355-91cd348658bf', '9c3b1005-c3b0-4006-8964-27de130bf206', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Admin:1\",\"changes\":{\"remember_token\":\"uwF4aFAYRq7QO7jvY6fKc08wmuoSi1SBKPBhTBba4Ih1PQ0hvnU0qZH6En05\"},\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:40:58'),
(651, '9c3b1005-be03-41bc-8123-56ad627b3570', '9c3b1005-c3b0-4006-8964-27de130bf206', NULL, 1, 'debugbar', '{\"requestId\":\"X25777c7a0fe232e6628756e213011028\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:40:58'),
(652, '9c3b1005-c0d6-4a9c-8825-3cf392e5854a', '9c3b1005-c3b0-4006-8964-27de130bf206', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/logout\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Auth\\\\LoginController@logout\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"content-length\":\"47\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"origin\":\"http:\\/\\/tech-magnet.edu:81\",\"content-type\":\"application\\/x-www-form-urlencoded\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InEzSjgvZFJQOUVYK0NrWDRGcEFEUVE9PSIsInZhbHVlIjoiYXJ0T2NacmlVUDNHRk5LMTlHTWJ5STVpN0w1M2dUQnFyanNmMGtOSnlRSXBTTkpZQTVPRkh0REYyQ3FCcXorZzFnQnNNNTZPNUM0M3JZYnVBL1dWZWFUNUdtRkxOL0dwclpUcWg5YnZPSXZxMy9rQzM0WUpEVlVRL3VPeWtIRDUrOElLR3lSeXYzZXlDcjhoS3Rhcm5UV05pZEI2YlVHLzk3S1FtRHQwSGZWcEg0UUJKazZGZGN3MElnLzJ5Z0JmTytNK2lSRmhPVUxPY21PZ2pLY3dpRDBIV2ZmMHViV3RaQUx1cS9INlBhVT0iLCJtYWMiOiIzYTc2YjFjNTlkZjRiZGJjNjExZjM3ZjBhMmJmYmRlZjdiNmY3MjA4NGMzOTY1MGUzOTQ1OTM2NjRmMDA0OGMwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6InBqRk03alZ6czVqMEd3SzlUUU1qVEE9PSIsInZhbHVlIjoiU01rc1FOZUduc25FL3Z6TGpVbG5BOUd2TklUTFJLbzJLemVVeGxWcWZWbEQ2OVJQR3dObGlBaUpHekNoa21STUUrTE1sNzVSaWNXL3VhQWVwMHBUZGQxQXFpTXFpT3kzaUthM1kwSmtXYkp2Tk11ei9iWElZZWg2bkIxMm5kTkkiLCJtYWMiOiJiNjRkYjMxNmQxODRhZmU2ZGM1MWQwYTk3MGM3Nzc1MDQ5NWVjNGY5YjgxMTIyNmNkMjU5YmU4YTljOTViZjMzIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6ImR5VWZNK1AydVhOcGcvTFJncC80M2c9PSIsInZhbHVlIjoiMGZ5eTRPSFF5TWo5YjVVcXNzTnZmRmV4M29tY2FIMmoxYzJtUi9pT0htaTFWLzZ3U0U4YTRXalU3WjU5UldEMTdhcXdNNUtjaXFIeFNaeWlLWCtYdkR4aU13NDAxclllVVJCeVZKUHVZZDQrYzd6VW9qUUpudzRkZlMwY0c1VXMiLCJtYWMiOiI2NzNjM2I2N2E2Y2M4ZDBjOGQ4MDg2N2QyM2VhODFkZDE5YWVhOWVhYTZmZTY2YTZhYWZjOTVmZjQyZjM4ZjU0IiwidGFnIjoiIn0%3D\"},\"payload\":{\"_token\":\"rFAsX4f2ffi3ruMwFYxrBqn23i7PwVckAW7QgbIm\"},\"session\":{\"_token\":\"P5rA6AAAtZipsjNicoadXJh5EdzbbRmi8tjfKxIR\",\"_flash\":{\"old\":[],\"new\":[]},\"PHPDEBUGBAR_STACK_DATA\":{\"X25777c7a0fe232e6628756e213011028\":null}},\"response_status\":302,\"response\":\"Redirected to http:\\/\\/tech-magnet.edu:81\\/login\",\"duration\":814,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:40:58'),
(653, '9c3b1007-0218-4ee1-bb17-cd2b9c1d7ae4', '9c3b1007-68d7-47f5-9111-48b0879fd06e', NULL, 1, 'cache', '{\"type\":\"missed\",\"key\":\"94d92f976fd06fd3e8cf53ec4e03d646\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:40:58'),
(654, '9c3b1007-355c-4882-89f2-00bfc7962fc0', '9c3b1007-68d7-47f5-9111-48b0879fd06e', NULL, 1, 'view', '{\"name\":\"auth.login\",\"path\":\"\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[],\"composers\":[{\"name\":\"Closure at D:\\\\tech-magnet\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[240:242]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:40:59'),
(655, '9c3b1007-5e40-4017-869d-eb37d3bc2d60', '9c3b1007-68d7-47f5-9111-48b0879fd06e', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"94d92f976fd06fd3e8cf53ec4e03d646\",\"value\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:40:59'),
(656, '9c3b1007-64fd-4176-9f3f-7b6c2572eb21', '9c3b1007-68d7-47f5-9111-48b0879fd06e', NULL, 1, 'debugbar', '{\"requestId\":\"X2e60db2dbe54382999cccfe114cd1c1d\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:40:59'),
(657, '9c3b1007-6630-4a79-98a2-47dbac126b2c', '9c3b1007-68d7-47f5-9111-48b0879fd06e', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/login\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Auth\\\\LoginController@showLoginForm\",\"middleware\":[\"web\",\"guest:admin\",\"throttle:login\"],\"headers\":{\"host\":\"tech-magnet.edu:81\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/125.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"referer\":\"http:\\/\\/tech-magnet.edu:81\\/admin\\/settings\",\"accept-encoding\":\"gzip, deflate\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlY2U2loZUJVT3djNnExK2dXTEVPbFE9PSIsInZhbHVlIjoidzlHMXR1M1dTd3VWeXQ0cFFCYm1XTTBabmZ1bEYvNGVNbnJKYWVCUWJFZG5YN3lGQlFuQUl0L0xTVXo5cTg1VmYwTmdHRTUwSytSb0RLbEVQSmFTSTdVYnpjS3JPdERIekVGQ1pOV2VwT2VaSFlWditLNHY2ampnSk5DTEVHUzUiLCJtYWMiOiJiMzQ0NzZlZmVkMTYyMTNkMTUyNzMxZWFmODYwOWU3N2Y1ZWUzZTFiMWI5NGFhOWJhMDBmYThiODUxZGMzZDM4IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IkRwNmhya09iUzlnQnZhN1JkalFoVEE9PSIsInZhbHVlIjoiM1JQVFgwdE0yUHpuNDZabkZFNU0rWTNWNFJtOHlQc0NhQm5CQWo3anRMdEZINzhnZGVvQ0hnZ1hnRittMVkrU2czZGdvc1R6VllDWTlDOW9tOXRDTHlBaUYxR2E5TUVNV1NvOExJNlVNNjdHbklIZFdUUmJBYjZ0T1VFWm13OCsiLCJtYWMiOiIxNGQ5Mjg5ZTBiMmViZjkwMjUyYjI3OWNiZTljNzQ2NzlhZjc4NjdmZDU1MmM2ZDE0YWY3Yzg0OWQxYWZiMzdlIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"P5rA6AAAtZipsjNicoadXJh5EdzbbRmi8tjfKxIR\",\"_flash\":{\"old\":[],\"new\":[]},\"_previous\":{\"url\":\"http:\\/\\/tech-magnet.edu:81\\/login\"},\"PHPDEBUGBAR_STACK_DATA\":[]},\"response_status\":200,\"response\":{\"view\":\"D:\\\\tech-magnet\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[]},\"duration\":927,\"memory\":24,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:40:59'),
(658, '9c3b10fd-188f-4b99-9f80-9277e51af118', '9c3b10ff-fb45-450d-96ad-269119bb5917', NULL, 1, 'cache', '{\"type\":\"missed\",\"key\":\"a75f3f172bfb296f2e10cbfc6dfc1883\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:43:40'),
(659, '9c3b10fd-29d3-49ed-a67e-e040cb3d0c9c', '9c3b10ff-fb45-450d-96ad-269119bb5917', NULL, 1, 'cache', '{\"type\":\"missed\",\"key\":\"94d92f976fd06fd3e8cf53ec4e03d646\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:43:40'),
(660, '9c3b10ff-0ab9-412f-827f-e198773c4aa2', '9c3b10ff-fb45-450d-96ad-269119bb5917', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `email` = \'operation@gmail.com\' limit 1\",\"time\":\"6.38\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Api\\\\AuthController.php\",\"line\":65,\"hash\":\"747ef04de752900539e8a3a1aee036ac\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:43:41'),
(661, '9c3b10ff-0c77-4f04-9e00-55bbfdf6b39b', '9c3b10ff-fb45-450d-96ad-269119bb5917', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\User\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:43:41'),
(662, '9c3b10ff-f415-4b49-a430-2751e03a722c', '9c3b10ff-fb45-450d-96ad-269119bb5917', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"94d92f976fd06fd3e8cf53ec4e03d646\",\"value\":1,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":5,\"name\":\"laila\",\"email\":\"operation@gmail.com\"}}', '2024-06-07 18:43:42'),
(663, '9c3b10ff-f484-4f2e-940b-120c67859e75', '9c3b10ff-fb45-450d-96ad-269119bb5917', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"a75f3f172bfb296f2e10cbfc6dfc1883\",\"value\":1,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":5,\"name\":\"laila\",\"email\":\"operation@gmail.com\"}}', '2024-06-07 18:43:42'),
(664, '9c3b10ff-f74d-4945-b1c3-ee4907182da8', '9c3b10ff-fb45-450d-96ad-269119bb5917', NULL, 1, 'debugbar', '{\"requestId\":\"X5cba86a64201d31885653dd358f02b9e\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:43:42'),
(665, '9c3b10ff-f8f1-41fe-bccb-cd2afc0bc9db', '9c3b10ff-fb45-450d-96ad-269119bb5917', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/login\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\AuthController@login\",\"middleware\":[\"api\",\"throttle:login\"],\"headers\":{\"accept\":\"application\\/json\",\"authorization\":\"********\",\"user-agent\":\"PostmanRuntime\\/7.39.0\",\"postman-token\":\"b9c33d76-f2f6-4a53-88a8-a9c52f5eed31\",\"host\":\"127.0.0.1:8000\",\"accept-encoding\":\"gzip, deflate, br\",\"connection\":\"keep-alive\",\"content-type\":\"multipart\\/form-data; boundary=--------------------------198171781808035122260123\",\"content-length\":\"297\"},\"payload\":{\"email\":\"operation@gmail.com\",\"password\":\"********\"},\"session\":[],\"response_status\":200,\"response\":{\"status\":200,\"message\":\"Login Successfully\",\"user\":{\"id\":5,\"name\":\"laila\",\"email\":\"operation@gmail.com\",\"email_verified_at\":\"2024-05-23T14:20:27.000000Z\",\"phone\":\"01084747835\",\"city_id\":5,\"role_id\":3,\"status\":\"active\",\"created_at\":\"2024-05-23T11:47:38.000000Z\",\"updated_at\":\"2024-05-23T11:47:38.000000Z\"},\"token\":\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYXBpL2xvZ2luIiwiaWF0IjoxNzE3Nzc1MDIxLCJleHAiOjE3MTc3Nzg2MjEsIm5iZiI6MTcxNzc3NTAyMSwianRpIjoiYlVmQTZZTmRxRG45d1llOCIsInN1YiI6IjUiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.aJ3C7H1QfRKr0bj83D57HqsQyco0uMeNPNofUHy8hxA\",\"token_type\":\"bearer\",\"expires_in\":3600},\"duration\":2530,\"memory\":28,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":5,\"name\":\"laila\",\"email\":\"operation@gmail.com\"}}', '2024-06-07 18:43:42'),
(666, '9c3b1170-b8f3-4cd5-853a-831e193c8209', '9c3b1170-de37-4e49-bfc2-157b80240ba8', NULL, 1, 'cache', '{\"type\":\"missed\",\"key\":\"bUfA6YNdqDn9wYe8\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:44:56'),
(667, '9c3b1170-be2b-46e2-a220-1c4671470443', '9c3b1170-de37-4e49-bfc2-157b80240ba8', NULL, 1, 'cache', '{\"type\":\"missed\",\"key\":\"bUfA6YNdqDn9wYe8\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:44:56'),
(668, '9c3b1170-c5d2-463b-a972-4dad2c41b45b', '9c3b1170-de37-4e49-bfc2-157b80240ba8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = \'5\' limit 1\",\"time\":\"4.17\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\public\\\\index.php\",\"line\":51,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:44:56'),
(669, '9c3b1170-c6d8-47a5-8b59-70a14ec1529d', '9c3b1170-de37-4e49-bfc2-157b80240ba8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\User\",\"count\":2,\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:44:56'),
(670, '9c3b1170-c836-4abf-a2bb-b8d874620556', '9c3b1170-de37-4e49-bfc2-157b80240ba8', NULL, 1, 'cache', '{\"type\":\"missed\",\"key\":\"df21bfa12c4e294c70f64916c0fbc9a5\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":5,\"name\":\"laila\",\"email\":\"operation@gmail.com\"}}', '2024-06-07 18:44:56'),
(671, '9c3b1170-cfb2-4978-b817-77c2c037f556', '9c3b1170-de37-4e49-bfc2-157b80240ba8', NULL, 1, 'cache', '{\"type\":\"missed\",\"key\":\"bUfA6YNdqDn9wYe8\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":5,\"name\":\"laila\",\"email\":\"operation@gmail.com\"}}', '2024-06-07 18:44:56'),
(672, '9c3b1170-d05a-44ac-965d-35e4a09c7da3', '9c3b1170-de37-4e49-bfc2-157b80240ba8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = \'5\' limit 1\",\"time\":\"0.77\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Middleware\\\\JWTMiddleware.php\",\"line\":20,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":5,\"name\":\"laila\",\"email\":\"operation@gmail.com\"}}', '2024-06-07 18:44:56'),
(673, '9c3b1170-d205-42a6-9637-f512e5c5e1cf', '9c3b1170-de37-4e49-bfc2-157b80240ba8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings`\",\"time\":\"0.75\",\"slow\":false,\"file\":\"D:\\\\tech-magnet\\\\app\\\\Http\\\\Controllers\\\\Api\\\\SettingController.php\",\"line\":13,\"hash\":\"9a0c1b1878c6704a2df2ae90c2a24cef\",\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":5,\"name\":\"laila\",\"email\":\"operation@gmail.com\"}}', '2024-06-07 18:44:56'),
(674, '9c3b1170-d317-438c-abbd-6b6321c1dcb3', '9c3b1170-de37-4e49-bfc2-157b80240ba8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":1,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":5,\"name\":\"laila\",\"email\":\"operation@gmail.com\"}}', '2024-06-07 18:44:56'),
(675, '9c3b1170-d8ac-4094-87b3-a865ad1dcc8c', '9c3b1170-de37-4e49-bfc2-157b80240ba8', NULL, 1, 'cache', '{\"type\":\"hit\",\"key\":\"df21bfa12c4e294c70f64916c0fbc9a5\",\"value\":1,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":5,\"name\":\"laila\",\"email\":\"operation@gmail.com\"}}', '2024-06-07 18:44:56'),
(676, '9c3b1170-db07-4605-98a5-3054a9f1e92f', '9c3b1170-de37-4e49-bfc2-157b80240ba8', NULL, 1, 'debugbar', '{\"requestId\":\"Xc89e32d2dcbdebd5a89cd8dd2ba921ab\",\"hostname\":\"DESKTOP-359TRFP\"}', '2024-06-07 18:44:56'),
(677, '9c3b1170-dc34-443c-9ecd-7a1bd769d8e6', '9c3b1170-de37-4e49-bfc2-157b80240ba8', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/settings\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\SettingController@index\",\"middleware\":[\"api\",\"jwt-verify\",\"auth:api\"],\"headers\":{\"authorization\":\"********\",\"user-agent\":\"PostmanRuntime\\/7.39.0\",\"accept\":\"*\\/*\",\"postman-token\":\"b441ea4b-0290-4b1b-8f27-f1325d19ae2d\",\"host\":\"127.0.0.1:8000\",\"accept-encoding\":\"gzip, deflate, br\",\"connection\":\"keep-alive\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":[{\"id\":1,\"logo\":\"2024-06-07-06-03-12.jpg\",\"email\":\"Techmagnet@gmail.com\",\"phone\":\"01000009999\",\"location\":\"Greek Campus\",\"created_at\":\"2024-05-25T17:30:36.000000Z\",\"updated_at\":\"2024-06-07T15:03:12.000000Z\"}],\"duration\":847,\"memory\":26,\"hostname\":\"DESKTOP-359TRFP\",\"user\":{\"id\":5,\"name\":\"laila\",\"email\":\"operation@gmail.com\"}}', '2024-06-07 18:44:56');

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) NOT NULL,
  `tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telescope_entries_tags`
--

INSERT INTO `telescope_entries_tags` (`entry_uuid`, `tag`) VALUES
('9c39519a-caec-408c-8364-5b7b8b329650', 'App\\Models\\Admin'),
('9c39519b-a065-4da4-9fc1-b6bdd6aacf15', 'App\\Models\\Admin'),
('9c39519b-a3d4-47da-8a6e-710b963eab9b', 'Auth:1'),
('9c39519b-a592-43e9-b209-09fcbd5e0a2a', 'Auth:1'),
('9c39519b-a799-4666-bf89-4c3f63b9dc50', 'Auth:1'),
('9c39519b-a9d4-4c24-af5d-4a6ba9e36ff6', 'Auth:1'),
('9c39519b-ab24-4355-9d24-24451f0a9cbb', 'Auth:1'),
('9c39519b-aca7-40eb-8394-4798798cedd8', 'App\\Models\\Course'),
('9c39519b-aca7-40eb-8394-4798798cedd8', 'Auth:1'),
('9c39519b-ae55-49b3-b655-e433f5452696', 'Auth:1'),
('9c39519b-af85-47c3-af5c-205c396b91f7', 'App\\Models\\Category'),
('9c39519b-af85-47c3-af5c-205c396b91f7', 'Auth:1'),
('9c39519b-b0da-4e6d-818e-622a6288795d', 'Auth:1'),
('9c39519b-b305-4b10-ad4a-e7dcc4ac9286', 'App\\Models\\Objective'),
('9c39519b-b305-4b10-ad4a-e7dcc4ac9286', 'Auth:1'),
('9c39519b-b585-49ca-a56c-adbbe9181a77', 'Auth:1'),
('9c39519b-b6a9-4462-87c0-25ca274518f1', 'App\\Models\\Image'),
('9c39519b-b6a9-4462-87c0-25ca274518f1', 'Auth:1'),
('9c39519b-b974-4fec-a951-25dbb5b2a598', 'Auth:1'),
('9c39519b-dc4c-414a-bc4f-70b528b46759', 'Auth:1'),
('9c39519b-dddf-400a-a3db-6cab92c01e30', 'Auth:1'),
('9c39519b-debc-45d1-a404-79942e2087cd', 'Auth:1'),
('9c39519b-e10a-442c-9e3a-b474d28a9450', 'Auth:1'),
('9c39519b-ef40-41ce-bd1e-77c9a6a59883', 'Auth:1'),
('9c3951a3-90b1-4875-8c25-f137341775c7', 'App\\Models\\Admin'),
('9c3951a3-9351-4151-9f5f-9be80748b6ce', 'Auth:1'),
('9c3951a3-9433-4d4f-88ad-2b9b9b57349c', 'App\\Models\\Category'),
('9c3951a3-9433-4d4f-88ad-2b9b9b57349c', 'Auth:1'),
('9c3951a3-96b9-403e-92d5-41667c52c4ca', 'Auth:1'),
('9c3951a3-f23d-48cc-aa27-96703d96b86f', 'Auth:1'),
('9c3951a3-f2b0-4b7d-864d-4dc66b2a9cba', 'Auth:1'),
('9c3951a3-f328-4ac9-be5a-a5d0790b0cf4', 'Auth:1'),
('9c3951a3-f449-476a-b6db-945a0be526be', 'Auth:1'),
('9c3951a3-fc86-44cb-bd94-fd6039769d45', 'Auth:1'),
('9c395496-8168-4d6e-9a82-904dbcf4e354', 'App\\Models\\Admin'),
('9c395496-84c4-4e01-848f-1140200435fa', 'Auth:1'),
('9c395496-85e1-41b0-8e0b-3afa4a07da1b', 'App\\Models\\Course'),
('9c395496-85e1-41b0-8e0b-3afa4a07da1b', 'Auth:1'),
('9c395496-87b8-413e-b21b-5ecfbe81c2d1', 'Auth:1'),
('9c395496-88e9-4100-8977-6de7c7fb0725', 'App\\Models\\Category'),
('9c395496-88e9-4100-8977-6de7c7fb0725', 'Auth:1'),
('9c395496-8a32-4603-87f3-eb4cf3d881cf', 'Auth:1'),
('9c395496-8b50-4f40-99e9-5598c1230ff3', 'App\\Models\\Objective'),
('9c395496-8b50-4f40-99e9-5598c1230ff3', 'Auth:1'),
('9c395496-8d45-4851-8122-853fabebf2a6', 'Auth:1'),
('9c395496-8e6f-43a5-9dc6-fe7c5598a82a', 'App\\Models\\Image'),
('9c395496-8e6f-43a5-9dc6-fe7c5598a82a', 'Auth:1'),
('9c395496-9181-4cc4-8eab-afc4b9d74248', 'Auth:1'),
('9c395496-9bf9-4994-b5a9-dccbc1e80db1', 'Auth:1'),
('9c395496-9c7d-4e56-ba65-04e3aa16e22f', 'Auth:1'),
('9c395496-9d26-4604-9bde-7e55c58b7130', 'Auth:1'),
('9c395496-9e51-4b59-896b-14862da6a49e', 'Auth:1'),
('9c395496-b8e9-484b-ae02-040a64bde516', 'Auth:1'),
('9c395557-6f89-4b07-8a67-47b2a4bac046', 'App\\Models\\Admin'),
('9c395557-7360-4c92-8c21-bbb8e70c22a4', 'App\\Models\\Admin:1'),
('9c3afea7-fcc2-49a7-9c5d-ff41c405ddb9', 'App\\Models\\Admin'),
('9c3afea7-fcd2-4fad-aca9-d5e1a7e8bd29', 'App\\Models\\Admin'),
('9c3afea9-6740-4b60-971e-3c21c5ce64ec', 'App\\Models\\Admin'),
('9c3afea9-a056-4d96-8b51-6a4694d71014', 'Auth:1'),
('9c3afea9-bc10-494d-8726-44ea35ca74b0', 'Auth:1'),
('9c3afea9-c3a9-47f8-8601-c6667e60fae2', 'Auth:1'),
('9c3afea9-da2d-4304-8c6f-c26295e84291', 'Auth:1'),
('9c3afea9-ddad-4768-8040-7eabacd6b158', 'Auth:1'),
('9c3afea9-de81-466c-962d-d05130593ad9', 'App\\Models\\Course'),
('9c3afea9-de81-466c-962d-d05130593ad9', 'Auth:1'),
('9c3afeaa-3aaf-4480-9f51-1b5fa998ef3c', 'Auth:1'),
('9c3afeaa-3be3-49d8-8a37-ed8884eacc2f', 'App\\Models\\Category'),
('9c3afeaa-3be3-49d8-8a37-ed8884eacc2f', 'Auth:1'),
('9c3afeaa-75cb-43b3-9b68-4ddc069fa1b5', 'Auth:1'),
('9c3afeaa-7725-4cad-a4db-a8f9e75a8234', 'App\\Models\\Objective'),
('9c3afeaa-7725-4cad-a4db-a8f9e75a8234', 'Auth:1'),
('9c3afeab-2f8d-448e-9521-70cb665c7aaa', 'Auth:1'),
('9c3afeab-326f-4ea2-a087-819ec2b6a9cf', 'App\\Models\\Image'),
('9c3afeab-326f-4ea2-a087-819ec2b6a9cf', 'Auth:1'),
('9c3afeab-3cf8-4854-a961-ecdf1d3bf87e', 'Auth:1'),
('9c3afeab-90e0-4172-be75-950d30625f5e', 'Auth:1'),
('9c3afeab-9dc5-4083-b8ac-bde875d926fd', 'Auth:1'),
('9c3afeab-c8fc-4213-a27c-42ef1059a52d', 'Auth:1'),
('9c3afeac-2cd2-4da2-90b7-ab5e9f658fe2', 'Auth:1'),
('9c3afeac-6381-4fc1-90c1-1ea734b6f9e4', 'Auth:1'),
('9c3afeb6-914f-4c82-8214-0161b499d795', 'App\\Models\\Admin'),
('9c3afeb8-0dbc-4195-8c27-c4c12d366466', 'Auth:1'),
('9c3afeb8-0e97-4e23-ba5f-b96f37784113', 'App\\Models\\Setting'),
('9c3afeb8-0e97-4e23-ba5f-b96f37784113', 'Auth:1'),
('9c3afeb8-29fa-4be3-8cf7-86eb03744a5c', 'Auth:1'),
('9c3afeb8-ad0f-4866-95a2-57f01aeb99f2', 'Auth:1'),
('9c3afeb8-ad7e-4444-8bf9-77f0d1f7a0e8', 'Auth:1'),
('9c3afeb8-adf0-45ce-ae7b-0180ca3294dd', 'Auth:1'),
('9c3afeb8-af48-49e4-a822-b657f11e8ad8', 'Auth:1'),
('9c3afeb8-bb8c-4b46-9429-cf4272afd5b0', 'Auth:1'),
('9c3afebe-8eba-4d5e-bb72-23b669554015', 'App\\Models\\Admin'),
('9c3afebe-90f3-4d0a-aa70-8c51a03bf24d', 'Auth:1'),
('9c3afebe-91d2-4da0-b655-73747c01fbfd', 'App\\Models\\Setting'),
('9c3afebe-91d2-4da0-b655-73747c01fbfd', 'Auth:1'),
('9c3afebe-94d5-4346-a394-3a45069a1032', 'Auth:1'),
('9c3afebf-1c11-4560-b695-02ca62351028', 'Auth:1'),
('9c3afebf-1c92-4cab-ac3a-c02e31de5762', 'Auth:1'),
('9c3afebf-1d91-4261-8bf5-0226497303a8', 'Auth:1'),
('9c3afebf-3244-41c0-b781-6491d3325611', 'Auth:1'),
('9c3aff22-4893-4d81-8301-ccbeeb05627f', 'App\\Models\\Admin'),
('9c3aff22-4adb-458e-9cb6-be68210287a3', 'Auth:1'),
('9c3aff22-4bc8-47cf-9f6c-fe9e23421ac6', 'App\\Models\\Setting'),
('9c3aff22-4bc8-47cf-9f6c-fe9e23421ac6', 'Auth:1'),
('9c3aff24-1c2d-4c45-971a-b5ff0c9115a0', 'Auth:1'),
('9c3aff24-1d50-4c2a-a980-ab2c53f46af6', 'App\\Models\\Setting:1'),
('9c3aff24-1d50-4c2a-a980-ab2c53f46af6', 'Auth:1'),
('9c3aff24-36c4-4d25-8054-93e7bbf4fd87', 'Auth:1'),
('9c3aff24-d026-41b1-a97a-2d49bb836836', 'App\\Models\\Admin'),
('9c3aff24-d2c3-43b7-94ac-5c358d12ffc0', 'Auth:1'),
('9c3aff24-d39d-49ff-9be9-a3a759390c6b', 'App\\Models\\Setting'),
('9c3aff24-d39d-49ff-9be9-a3a759390c6b', 'Auth:1'),
('9c3aff24-d5ec-4ec4-bc83-fbf35b33d49a', 'Auth:1'),
('9c3aff24-d7da-4a0f-87a3-9883f1bedcf4', 'Auth:1'),
('9c3aff24-d845-4d34-8c4d-3da1ce28c5b4', 'Auth:1'),
('9c3aff24-d8b2-472c-9499-bd97879be458', 'Auth:1'),
('9c3aff24-d9b3-4935-a1db-c5ca458fa68a', 'Auth:1'),
('9c3aff24-e04b-4b09-9c1b-b78248cdc770', 'Auth:1'),
('9c3aff51-b436-41cc-9c4e-bb81eddf8641', 'App\\Models\\Admin'),
('9c3aff51-b74f-44fa-a0f1-5a0d681fb546', 'Auth:1'),
('9c3aff51-b82a-4a84-9d2f-f2ce8ba6932b', 'App\\Models\\Setting'),
('9c3aff51-b82a-4a84-9d2f-f2ce8ba6932b', 'Auth:1'),
('9c3aff51-ba48-47de-82ce-9ac34f8f431a', 'Auth:1'),
('9c3aff51-bcc4-4566-a4b7-4015e7f08373', 'Auth:1'),
('9c3aff51-bd32-4657-bc18-95e322df2a8d', 'Auth:1'),
('9c3aff51-bdb4-4738-9098-f7d106842495', 'Auth:1'),
('9c3aff51-beb1-40a7-b83b-c45e96eb3fb6', 'Auth:1'),
('9c3aff51-c86a-4b15-8512-d1b9cd52e2c2', 'Auth:1'),
('9c3aff7b-92c6-45ca-87ad-64cded998041', 'App\\Models\\Admin'),
('9c3aff7b-96c5-46e1-a1df-14b2c59121d1', 'Auth:1'),
('9c3aff7b-97d4-4f91-bb1d-246f8f59b08c', 'App\\Models\\Setting'),
('9c3aff7b-97d4-4f91-bb1d-246f8f59b08c', 'Auth:1'),
('9c3aff7b-9a56-42d5-a087-5693be77b573', 'Auth:1'),
('9c3aff7b-9db3-4649-a166-92523c2f2770', 'Auth:1'),
('9c3aff7b-9e31-4803-9cfe-44d07e7d9de7', 'Auth:1'),
('9c3aff7b-9eb1-4b53-a4e2-105c526d9f8f', 'Auth:1'),
('9c3aff7b-9fbb-4b0f-8a78-49cfc5fc6365', 'Auth:1'),
('9c3aff7b-a80f-422e-9b33-dbbe8a7a316a', 'Auth:1'),
('9c3b0162-619e-4e96-a83c-f1e77550264b', 'slow'),
('9c3b0162-623d-415e-9c82-e60c6b6417a5', 'App\\Models\\Admin'),
('9c3b0162-b7cb-4218-8c42-d53b4bc60e1f', 'slow'),
('9c3b0162-b823-4cd3-b7e8-cc5821c57e3b', 'App\\Models\\Assignment'),
('9c3b0163-31c7-44a3-81de-e0adec1338f0', 'slow'),
('9c3b0163-322a-41d1-bae9-7b87656d27fd', 'App\\Models\\Attendance'),
('9c3b0163-38e3-45d5-83bf-9c6470401567', 'App\\Models\\Blog'),
('9c3b0163-3f9f-405d-97a5-19f02e32b47a', 'App\\Models\\Category'),
('9c3b0163-46ab-4330-b7fd-484bebeb52e2', 'App\\Models\\Chat'),
('9c3b0163-4d30-46ab-9425-e0a4fa4ab166', 'App\\Models\\City'),
('9c3b0163-6dff-4714-b40c-32db2b22e8e1', 'App\\Models\\Course'),
('9c3b0163-f967-4d3f-83e6-3187a7767ead', 'slow'),
('9c3b0163-f9ff-47bd-936f-c5006359de05', 'App\\Models\\Image'),
('9c3b0164-2258-4f88-9c1a-46490162c693', 'App\\Models\\Material'),
('9c3b0164-2952-449c-a711-1dc93df1aa3b', 'App\\Models\\Objective'),
('9c3b0164-3117-469f-9b75-0b40e7419d87', 'App\\Models\\Permission'),
('9c3b0164-3833-4bdc-ac3a-0b2599e1bc09', 'App\\Models\\Portfolio'),
('9c3b0164-62ee-4cd5-8426-813d1a932de3', 'App\\Models\\Project'),
('9c3b0164-808f-418b-ae0a-cfd9ef29460f', 'App\\Models\\Question'),
('9c3b0164-8799-4b30-99f2-613bba2883f7', 'App\\Models\\Quiz'),
('9c3b0164-aa06-4821-b689-dbf7f63e8f0b', 'App\\Models\\Recording'),
('9c3b0164-cb0c-4cf1-b836-bf3f7a999903', 'App\\Models\\Roadmap'),
('9c3b0164-fe3e-4d4d-bfee-e109e34bcb0d', 'slow'),
('9c3b0164-fe96-4bf2-abd3-f388d1310ebb', 'App\\Models\\Role'),
('9c3b0165-0b68-4b21-8429-782441656d13', 'App\\Models\\Schedule'),
('9c3b0165-12c4-4219-9207-f1294ee499a5', 'App\\Models\\Session'),
('9c3b0165-1a5d-425b-a674-fa81de271115', 'App\\Models\\Setting'),
('9c3b0165-38ea-41d8-baf3-8d76b6c1eb60', 'App\\Models\\Skill'),
('9c3b0165-5840-47a7-9b8c-fefb98b682dd', 'App\\Models\\StudentProgress'),
('9c3b0165-70e3-4b7b-b798-ce5e1e99822d', 'App\\Models\\SuperSkill'),
('9c3b0165-852e-4d75-9962-dd66baf77e17', 'App\\Models\\SupportRequest'),
('9c3b0165-8fc3-45c0-9310-645ae2e9b64e', 'App\\Models\\User'),
('9c3b0252-3778-49fe-bb9c-4fb9a84edd1c', 'App\\Models\\Admin'),
('9c3b0252-60b3-4bdb-9a1b-1c3e3c3ac766', 'App\\Models\\Assignment'),
('9c3b0252-75c9-420a-a3d3-c08ae596d4c3', 'App\\Models\\Attendance'),
('9c3b0252-880b-4567-9dc0-8116c1b45476', 'App\\Models\\Blog'),
('9c3b0252-9b32-4750-a398-9ce4b4452e7e', 'App\\Models\\Category'),
('9c3b0252-c276-4dcb-8a24-dbe844c629cc', 'App\\Models\\Chat'),
('9c3b0252-db3a-4eb5-8453-0481411d81d0', 'App\\Models\\City'),
('9c3b0253-01c9-4eb7-a17e-399cb5e9895f', 'App\\Models\\Course'),
('9c3b0253-15ad-439c-b290-ce540f70a4f5', 'App\\Models\\Image'),
('9c3b0253-2652-4aa9-a370-8aa58ccba83e', 'App\\Models\\Material'),
('9c3b0253-2eae-4887-92f7-31c49fc7f166', 'App\\Models\\Objective'),
('9c3b0253-4ceb-432d-b16a-dff0bbf84f8b', 'App\\Models\\Permission'),
('9c3b0253-680e-4e32-bea6-be276e48a2a3', 'App\\Models\\Portfolio'),
('9c3b0253-7b4c-4e10-b8f6-d4a3af28a58e', 'App\\Models\\Project'),
('9c3b0253-914d-4dee-9f7c-565cc4e28a45', 'App\\Models\\Question'),
('9c3b0253-a5bd-4631-be00-635b9b9eb5ae', 'App\\Models\\Quiz'),
('9c3b0253-bbf4-43f2-ad42-f519d58b7522', 'App\\Models\\Recording'),
('9c3b0253-dc05-4f60-ae30-75221c24d61f', 'App\\Models\\Roadmap'),
('9c3b0253-f613-42a6-9aee-17419c41fda3', 'App\\Models\\Role'),
('9c3b0254-0fee-4c6b-a9fa-f2e808d2780e', 'App\\Models\\Schedule'),
('9c3b0254-2a25-49c3-93a9-f1e40ed2a33b', 'App\\Models\\Session'),
('9c3b0254-42ca-4b25-bac4-335e594d46eb', 'App\\Models\\Setting'),
('9c3b0254-4a25-48a8-b986-6f394fbc3d3d', 'App\\Models\\Skill'),
('9c3b0254-5060-45e4-930f-5e47ec82dd27', 'App\\Models\\StudentProgress'),
('9c3b0254-6082-4127-afc3-974021fe9e88', 'App\\Models\\SuperSkill'),
('9c3b0254-6cc5-4634-969b-7d2c980056c1', 'App\\Models\\SupportRequest'),
('9c3b0254-7c0a-48b7-b5a3-0d0104a1e0f5', 'App\\Models\\User'),
('9c3b0278-d862-4bb9-a28f-fa2040501b93', 'App\\Models\\Admin'),
('9c3b0278-e36c-4189-8138-a0146fd102e9', 'Auth:1'),
('9c3b0278-e481-488f-b05d-de88ca0e3f5c', 'App\\Models\\Setting'),
('9c3b0278-e481-488f-b05d-de88ca0e3f5c', 'Auth:1'),
('9c3b0278-f1b3-4fcd-85c5-367385b408d5', 'Auth:1'),
('9c3b0278-f9de-40f8-9221-fd4d2e01668c', 'Auth:1'),
('9c3b0278-fa73-471b-a993-445b16a6ae8b', 'Auth:1'),
('9c3b0278-fb9a-4516-bc2c-f68d67ebbb84', 'Auth:1'),
('9c3b0279-1e87-4589-aff2-f3d3acba88e0', 'Auth:1'),
('9c3b0284-b7c0-4cf6-a571-6fcf7b76077a', 'App\\Models\\Admin'),
('9c3b0284-b9db-40e2-856f-3e48023da0da', 'Auth:1'),
('9c3b0284-bac7-42b3-b1c3-1527536c7b14', 'App\\Models\\Setting'),
('9c3b0284-bac7-42b3-b1c3-1527536c7b14', 'Auth:1'),
('9c3b0285-5bfc-4d44-bb28-35c410c6dd07', 'Auth:1'),
('9c3b0285-5d27-48d5-a9ec-0defaa9f98eb', 'App\\Models\\Setting:1'),
('9c3b0285-5d27-48d5-a9ec-0defaa9f98eb', 'Auth:1'),
('9c3b0285-6a4a-40af-9e06-02f76504093c', 'Auth:1'),
('9c3b0285-ffc9-469f-8851-ab12da1dfd32', 'App\\Models\\Admin'),
('9c3b0286-0282-4916-834e-dcf1baa35510', 'Auth:1'),
('9c3b0286-0366-4260-8389-760ddf1f617d', 'App\\Models\\Setting'),
('9c3b0286-0366-4260-8389-760ddf1f617d', 'Auth:1'),
('9c3b0286-05c0-4c2f-9efb-fb3b9f8eb3de', 'Auth:1'),
('9c3b0286-07b5-4d69-a50a-7059c2594d1e', 'Auth:1'),
('9c3b0286-082a-4bb9-9aef-8b9fd6bd67d9', 'Auth:1'),
('9c3b0286-0898-4bcc-9639-bcf5e1304015', 'Auth:1'),
('9c3b0286-0995-41fa-98d4-3f7e8ed522f5', 'Auth:1'),
('9c3b0286-1260-4c4f-bff8-3185ca4152a1', 'Auth:1'),
('9c3b03c5-7a23-482b-ab4b-0ac88962be26', 'App\\Models\\Admin'),
('9c3b03c5-a728-4e25-b777-87fc0fdadb05', 'App\\Models\\Assignment'),
('9c3b03c5-b3c2-47df-9ae0-4f4ba5feb608', 'App\\Models\\Attendance'),
('9c3b03c5-bebe-487d-bf4f-0f9c4fca6fc1', 'App\\Models\\Blog'),
('9c3b03c5-ca8e-42ae-960d-adab30d12509', 'App\\Models\\Category'),
('9c3b03c5-dcb0-4336-be1d-1f07967da9db', 'App\\Models\\Chat'),
('9c3b03c5-ea99-4feb-bb6c-8017369e9daa', 'App\\Models\\City'),
('9c3b03c5-f66e-458f-b7a5-c027c9f279a0', 'App\\Models\\Course'),
('9c3b03c6-00ec-4a4a-9861-5b7634139edd', 'App\\Models\\Image'),
('9c3b03c6-0b0e-49fa-984b-fa96d46ad5fd', 'App\\Models\\Material'),
('9c3b03c6-1528-4b3b-a3fc-88aa6380c866', 'App\\Models\\Objective'),
('9c3b03c6-1e0d-40ad-a17e-24f49d62e49d', 'App\\Models\\Permission'),
('9c3b03c6-2b95-43cf-8ec1-99d5dc824e12', 'App\\Models\\Portfolio'),
('9c3b03c6-380b-4b3e-9322-03f47b75368c', 'App\\Models\\Project'),
('9c3b03c6-3f6d-45a0-a148-3ffebb396619', 'App\\Models\\Question'),
('9c3b03c6-468b-4041-8daa-fbb9c74ea229', 'App\\Models\\Quiz'),
('9c3b03c6-5adb-4b6a-a91d-9348eba7185c', 'App\\Models\\Recording'),
('9c3b03c6-6537-489d-afd5-3755cbdb8fdc', 'App\\Models\\Roadmap'),
('9c3b03c6-6c48-43fc-a46f-fb215f44289d', 'App\\Models\\Role'),
('9c3b03c6-72c8-4011-8575-6a593207ccae', 'App\\Models\\Schedule'),
('9c3b03c6-7a93-472d-b039-ba2d4dc11eb9', 'App\\Models\\Session'),
('9c3b03c6-8552-41cf-977c-4a8df9ac2aee', 'App\\Models\\Setting'),
('9c3b03c6-8efe-4dc7-90f8-0103f063033a', 'App\\Models\\Skill'),
('9c3b03c6-97e5-4c9c-88b1-41da49ccc718', 'App\\Models\\StudentProgress'),
('9c3b03c6-9fb6-4adb-a460-73479e32eae0', 'App\\Models\\SuperSkill'),
('9c3b03c6-a7ba-4c04-a0d8-f290e4bd417d', 'App\\Models\\SupportRequest'),
('9c3b03c6-b146-41c3-8a8a-ba3c23ad13a6', 'App\\Models\\User'),
('9c3b09b2-4e4e-4bb6-bcf9-338db82a1ec2', 'App\\Models\\Admin'),
('9c3b09b2-5923-456a-a226-b5e3b603a7f9', 'Auth:1'),
('9c3b09b2-5a2a-4b70-a84e-cc59555e67b1', 'App\\Models\\Setting'),
('9c3b09b2-5a2a-4b70-a84e-cc59555e67b1', 'Auth:1'),
('9c3b09b2-6620-40ee-ad65-489c9cf017c2', 'Auth:1'),
('9c3b09b2-6dfa-4cce-9b59-a742372b9ace', 'Auth:1'),
('9c3b09b2-6e81-49a4-8e06-7b63e8cc7c1c', 'Auth:1'),
('9c3b09b2-6f04-41b6-9e7a-e3e8b1cac585', 'Auth:1'),
('9c3b09b2-701c-4a89-bc67-f256f03ac927', 'Auth:1'),
('9c3b09b2-9fb9-48a2-976d-394b72776d13', 'Auth:1'),
('9c3b0a89-6d4c-4d07-9aac-dbf6da6be25a', 'App\\Models\\Admin'),
('9c3b0a89-8abc-497c-b690-0d3e359e60b6', 'Auth:1'),
('9c3b0a89-8bcd-4843-ba70-f38befca5301', 'App\\Models\\Course'),
('9c3b0a89-8bcd-4843-ba70-f38befca5301', 'Auth:1'),
('9c3b0a89-a384-4973-b01e-d1a7e4482094', 'Auth:1'),
('9c3b0a89-a4c7-4f1d-aef7-39b979c33dc7', 'App\\Models\\Category'),
('9c3b0a89-a4c7-4f1d-aef7-39b979c33dc7', 'Auth:1'),
('9c3b0a89-a5c5-4e90-840b-17232e520412', 'Auth:1'),
('9c3b0a89-a6e9-4286-889b-e5a81e15096e', 'App\\Models\\Objective'),
('9c3b0a89-a6e9-4286-889b-e5a81e15096e', 'Auth:1'),
('9c3b0a89-ccff-40ad-83ed-464caf7f3e43', 'Auth:1'),
('9c3b0a89-ce25-486a-9c28-5ccbdb4dd419', 'App\\Models\\Image'),
('9c3b0a89-ce25-486a-9c28-5ccbdb4dd419', 'Auth:1'),
('9c3b0a89-de2c-42d9-90cd-745d3ffc3efe', 'Auth:1'),
('9c3b0a89-f273-4960-a389-1b094dc62394', 'Auth:1'),
('9c3b0a89-f2fe-4aa7-ae94-13efc3669657', 'Auth:1'),
('9c3b0a89-ff84-4adc-8341-3d60c4e2ec94', 'Auth:1'),
('9c3b0a8a-00f7-4dda-98c7-f80410265b34', 'Auth:1'),
('9c3b0a8a-2441-419b-b9d4-eec0f1ecba27', 'Auth:1'),
('9c3b0a9e-7f5a-4906-b872-e468dfd36c86', 'App\\Models\\Admin'),
('9c3b0a9e-838d-42e6-9352-7aeab3e3f819', 'Auth:1'),
('9c3b0a9e-851e-42e6-872a-d3bf458917b5', 'Auth:1'),
('9c3b0a9e-86de-4b40-b3ab-bf85f8236a62', 'Auth:1'),
('9c3b0a9e-911e-4ce1-b458-d4c5aa8e2c7f', 'Auth:1'),
('9c3b0a9e-9428-44a4-b747-8184547da770', 'Auth:1'),
('9c3b0a9e-9501-4f4f-8a7c-0fb7ba591107', 'App\\Models\\Course'),
('9c3b0a9e-9501-4f4f-8a7c-0fb7ba591107', 'Auth:1'),
('9c3b0a9e-96a0-4d9e-abeb-e78c63cb3e4b', 'Auth:1'),
('9c3b0a9e-97d8-4846-94e2-19ed39aada49', 'App\\Models\\Category'),
('9c3b0a9e-97d8-4846-94e2-19ed39aada49', 'Auth:1'),
('9c3b0a9e-98d1-4873-bba0-3ca1bc70b76c', 'Auth:1'),
('9c3b0a9e-9a3b-46e3-91fd-9daef2cc4a81', 'App\\Models\\Objective'),
('9c3b0a9e-9a3b-46e3-91fd-9daef2cc4a81', 'Auth:1'),
('9c3b0a9e-9c4b-4e8f-9778-a2fb1d03c4fa', 'Auth:1'),
('9c3b0a9e-9d6b-414d-8309-7d6523b603b4', 'App\\Models\\Image'),
('9c3b0a9e-9d6b-414d-8309-7d6523b603b4', 'Auth:1'),
('9c3b0a9e-a03a-401b-a63a-bd012ab9e55a', 'Auth:1'),
('9c3b0a9e-a7a0-4588-b17c-8dc7a78ebd80', 'Auth:1'),
('9c3b0a9e-a948-4df7-b76f-84eee52089fe', 'Auth:1'),
('9c3b0a9e-a9d4-4db4-ae74-1fdccdf5e4e3', 'Auth:1'),
('9c3b0a9e-ab4b-45a4-9e11-b204937d02ec', 'Auth:1'),
('9c3b0a9e-c598-410f-81fb-677332790522', 'Auth:1'),
('9c3b0bf8-1109-4945-a504-092fc281c900', 'App\\Models\\Admin'),
('9c3b0bf8-14dc-40d9-90e8-8d1679a0d110', 'Auth:1'),
('9c3b0bf8-165c-4368-8a0c-6e80fd2543c3', 'Auth:1'),
('9c3b0bf8-17a8-4c83-b1c4-9539cf9308b6', 'Auth:1'),
('9c3b0bf8-190e-4f15-bda9-60e9cda1bb9f', 'Auth:1'),
('9c3b0bf8-1b33-4866-83fa-35ce220be47d', 'Auth:1'),
('9c3b0bf8-1c09-4d84-a181-de353c9e68b5', 'App\\Models\\Course'),
('9c3b0bf8-1c09-4d84-a181-de353c9e68b5', 'Auth:1'),
('9c3b0bf8-1da4-4e35-89c3-aa580587c13e', 'Auth:1'),
('9c3b0bf8-1ede-400f-8734-a6b2fad46738', 'App\\Models\\Category'),
('9c3b0bf8-1ede-400f-8734-a6b2fad46738', 'Auth:1'),
('9c3b0bf8-1fe3-41db-ac2e-e48a5591f0a0', 'Auth:1'),
('9c3b0bf8-21ff-4b5a-8cbf-ad1c9bc4d57c', 'App\\Models\\Objective'),
('9c3b0bf8-21ff-4b5a-8cbf-ad1c9bc4d57c', 'Auth:1'),
('9c3b0bf8-23fb-41f9-8bf0-42c99e63f08c', 'Auth:1'),
('9c3b0bf8-251e-4bbf-9ebb-9eb2590e94b7', 'App\\Models\\Image'),
('9c3b0bf8-251e-4bbf-9ebb-9eb2590e94b7', 'Auth:1'),
('9c3b0bf8-285f-442e-9da3-7f8ccaf7eb8c', 'Auth:1'),
('9c3b0bf8-2953-401a-8bf7-2013dff05a5d', 'Auth:1'),
('9c3b0bf8-2aea-45b8-8789-d17096717199', 'Auth:1'),
('9c3b0bf8-2b6d-4592-87a8-149731c9165f', 'Auth:1'),
('9c3b0bf8-2cf6-4a17-9f3a-5d6b95cef69b', 'Auth:1'),
('9c3b0bf8-602a-4bd0-a110-2ed6c1a01bb8', 'Auth:1'),
('9c3b0bfe-86d4-49a9-abb9-61c71673a948', 'App\\Models\\Admin'),
('9c3b0bfe-8a0e-4d02-9825-3e514d8681e0', 'Auth:1'),
('9c3b0bfe-8aec-4e03-af40-ae1cedb25cc9', 'App\\Models\\Setting'),
('9c3b0bfe-8aec-4e03-af40-ae1cedb25cc9', 'Auth:1'),
('9c3b0bfe-8f50-4554-84c1-7be1ea1c3f2a', 'Auth:1'),
('9c3b0bfe-9933-472d-8f85-d697ad616e87', 'Auth:1'),
('9c3b0bfe-999c-42f2-9a6b-b6a7dc4137d8', 'Auth:1'),
('9c3b0bfe-9a0b-4af0-b4f8-404cbb1c7b74', 'Auth:1'),
('9c3b0bfe-9b07-4316-9296-12f6f23ae66b', 'Auth:1'),
('9c3b0bfe-a1f2-41c0-ba07-96e10f632e93', 'Auth:1'),
('9c3b0c66-c62a-49b5-a478-9ea2052f21b9', 'App\\Models\\Admin'),
('9c3b0c66-da0b-420b-957c-aa613f2bd709', 'App\\Models\\Assignment'),
('9c3b0c67-037a-445d-b87e-d02eaab246aa', 'App\\Models\\Attendance'),
('9c3b0c67-0b71-41e3-882b-7494949c688b', 'App\\Models\\Blog'),
('9c3b0c67-33e9-41b1-b986-348a9ef74a6f', 'App\\Models\\Category'),
('9c3b0c67-645e-4cad-81f0-62a04131c1c1', 'slow'),
('9c3b0c67-64be-4983-a207-bf5ca32f8cc1', 'App\\Models\\Chat'),
('9c3b0c67-6e86-4c42-a8c6-52781c041ed2', 'App\\Models\\City'),
('9c3b0c67-a075-43b7-b145-1cd2582c37bc', 'slow'),
('9c3b0c67-a115-4741-a088-5e0cc2465c9a', 'App\\Models\\Course'),
('9c3b0c67-d1df-46fd-b161-5e0e7f68093d', 'slow'),
('9c3b0c67-d236-408e-a993-0f5f24ecc744', 'App\\Models\\Image'),
('9c3b0c67-db0a-4584-8870-aa1bda5082bf', 'App\\Models\\Material'),
('9c3b0c67-e4c1-4eb4-88c5-f783506c693b', 'App\\Models\\Objective'),
('9c3b0c67-fe7c-4bd1-91c2-489cfd435062', 'App\\Models\\Permission'),
('9c3b0c68-064c-4ef4-918c-d9ee3c24bdb0', 'App\\Models\\Portfolio'),
('9c3b0c68-0d5a-4b37-a83f-0c9fee34ac6b', 'App\\Models\\Project'),
('9c3b0c68-2411-4931-b5a3-090afecd0a63', 'App\\Models\\Question'),
('9c3b0c68-2b27-45a1-93ff-a2cbbd738383', 'App\\Models\\Quiz'),
('9c3b0c68-32f9-4a03-b9d7-974351ca38ec', 'App\\Models\\Recording'),
('9c3b0c68-4c1d-429a-b914-aba4de18d9d8', 'App\\Models\\Roadmap'),
('9c3b0c68-6024-432b-81d8-aa4fc5a43e8d', 'App\\Models\\Role'),
('9c3b0c68-6a26-42f7-9c07-f7ce7172f900', 'App\\Models\\Schedule'),
('9c3b0c68-7276-474b-9900-a46a631e06c3', 'App\\Models\\Session'),
('9c3b0c68-7b35-4e5f-8b1a-8284945ff608', 'App\\Models\\Setting'),
('9c3b0c68-84f1-44a5-a306-7445a81faa55', 'App\\Models\\Skill'),
('9c3b0c68-8c87-4c49-9bc7-658c11bafb11', 'App\\Models\\StudentProgress'),
('9c3b0c68-9c6d-4733-8e9b-536c142d6f01', 'App\\Models\\SuperSkill'),
('9c3b0c68-ac1c-42fe-8f39-3b5a92024498', 'App\\Models\\SupportRequest'),
('9c3b0c68-b720-456e-a780-64ff70359b77', 'App\\Models\\User'),
('9c3b0ff3-af1e-4fd3-a0bd-1aac5c4364d2', 'App\\Models\\Admin'),
('9c3b0ff3-cf73-4975-8f56-66077591eac3', 'Auth:1'),
('9c3b0ff3-d076-4102-852f-5892a3d78009', 'App\\Models\\Setting'),
('9c3b0ff3-d076-4102-852f-5892a3d78009', 'Auth:1'),
('9c3b0ff3-db06-4a75-b63e-3137c6f3919d', 'Auth:1'),
('9c3b0ff3-ebec-43b7-a9d9-4757844e5d50', 'Auth:1'),
('9c3b0ff3-ec87-4373-b0d2-ad6ce9da9ba8', 'Auth:1'),
('9c3b0ff3-f1b2-40cc-a3bb-39ae381bb504', 'Auth:1'),
('9c3b0ff3-f332-4916-a06e-19e93a03fbbb', 'Auth:1'),
('9c3b0ff4-1b31-4ec1-80fc-017dad423fdb', 'Auth:1'),
('9c3b1005-6906-4ec5-a09f-a8b38298fdef', 'App\\Models\\Admin'),
('9c3b1005-8ce2-4636-b355-91cd348658bf', 'App\\Models\\Admin:1'),
('9c3b10ff-0c77-4f04-9e00-55bbfdf6b39b', 'App\\Models\\User'),
('9c3b10ff-f415-4b49-a430-2751e03a722c', 'Auth:5'),
('9c3b10ff-f484-4f2e-940b-120c67859e75', 'Auth:5'),
('9c3b10ff-f8f1-41fe-bccb-cd2afc0bc9db', 'Auth:5'),
('9c3b1170-c6d8-47a5-8b59-70a14ec1529d', 'App\\Models\\User'),
('9c3b1170-c836-4abf-a2bb-b8d874620556', 'Auth:5'),
('9c3b1170-cfb2-4978-b817-77c2c037f556', 'Auth:5'),
('9c3b1170-d05a-44ac-965d-35e4a09c7da3', 'Auth:5'),
('9c3b1170-d205-42a6-9637-f512e5c5e1cf', 'Auth:5'),
('9c3b1170-d317-438c-abbd-6b6321c1dcb3', 'App\\Models\\Setting'),
('9c3b1170-d317-438c-abbd-6b6321c1dcb3', 'Auth:5'),
('9c3b1170-d8ac-4094-87b3-a865ad1dcc8c', 'Auth:5'),
('9c3b1170-dc34-443c-9ecd-7a1bd769d8e6', 'Auth:5');

-- --------------------------------------------------------

--
-- Table structure for table `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `city_id`, `role_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'omar', 'instructor@gmail.com', '2024-05-23 14:19:30', '$2y$10$ArG3TAZTfBQSvzz7G9OCcuX95Lqi6ClB8EFsMSzZLQfqffHZdEazq', '01243279475', 5, 2, 'active', NULL, '2024-05-23 11:41:50', '2024-05-30 09:54:24'),
(2, 'seif', 'instructor-2@hotmail.com', '2024-05-23 14:19:40', '$2y$10$/it.GUhsYkbwV5oXbWERaOH/W5iHCyMvOB5/5X2dQioRdgsOdvE0S', '01074657586', 1, 2, 'active', NULL, '2024-05-23 11:44:22', '2024-05-23 11:44:22'),
(3, 'youssef', 'instructor-3@hotmail.com', '2024-05-23 14:19:58', '$2y$10$WcxKYCzxVNTDK8568GgIe.WtH5Oh5A1fkxqyWmXDFnZPkVObVUGcK', '01074675893', 5, 2, 'active', NULL, '2024-05-23 11:45:38', '2024-05-23 11:45:38'),
(4, 'moaz', 'instructor-4@hotmail.com', '2024-05-23 14:20:18', '$2y$10$dQCrOewRCTczN1O.FVOoFuaPW4.OKF7KU.x8.QxQ8w0q0OEALw9se', '01184760445', 10, 2, 'active', NULL, '2024-05-23 11:46:29', '2024-05-23 11:46:29'),
(5, 'laila', 'operation@gmail.com', '2024-05-23 14:20:27', '$2y$10$CqbvslxjKgb4tBUGzDROhOqBFLhuTsx7YDSd8qAivvP8246yPH65W', '01084747835', 5, 3, 'active', NULL, '2024-05-23 11:47:38', '2024-05-23 11:47:38'),
(6, 'wael', 'operation-2@gmail.com', '2024-05-23 14:20:35', '$2y$10$x63WWklG7mjJ04GsAO7vwO3QIhmnBz6CRiKfLAQElQdZs3AECsM9u', '01235789645', 2, 3, 'active', NULL, '2024-05-23 11:50:50', '2024-05-23 11:55:26'),
(7, 'sara', 'education-consultant@gmail.com', '2024-05-23 14:20:44', '$2y$10$ivA34XLfE6O7970OVZL8u.i7UCQq.v957wXQNSgQTELWUl.DU6tq6', '01184736364', 5, 4, 'active', NULL, '2024-05-23 11:57:16', '2024-05-23 11:57:16'),
(8, 'sama', 'education-consultant-2@gmail.com', '2024-05-23 14:20:51', '$2y$10$9CWT0zgGIHgyandDPk4rZe7qpM2WEreQj2O/4CKmr1nje9JvP.NhK', '01149577065', 4, 4, 'active', NULL, '2024-05-23 12:53:16', '2024-05-23 12:53:16'),
(9, 'yassin', 'mentor@gmail.com', '2024-05-23 14:21:01', '$2y$10$oHeyGjppsxlT/9Fke4l0ZuiFVE/Uqy8eoebU.WN/CAP2TFWy.ecCy', '01249576339', 11, 5, 'active', NULL, '2024-05-23 12:54:57', '2024-05-23 12:54:57'),
(10, 'ramez', 'mentor-2@gmail.com', '2024-05-23 14:21:09', '$2y$10$pyXbN.sWFuifxNNXfLghLuz1qRDIfPKerbe70/TpXvxGlfhRArMCm', '01073763435', 18, 5, 'active', NULL, '2024-05-23 12:55:47', '2024-05-23 12:55:47'),
(11, 'youssef', 'youssef@gmail.com', NULL, '$2y$10$FA7zuys0Rq7Ws1Xfjy6PB.wgINZQOAMI4OJwPocs1R8wQKMfkFSDa', '01053456647', 4, 1, 'active', NULL, '2024-05-26 15:41:03', '2024-05-26 15:41:03'),
(12, 'mazen', 'mazen@gmail.com', NULL, '$2y$10$qHL8xGY1tAXOXEceUm2fg.XpMfK.hlzABYHwTcs0xNyzCUqYa59ze', '01018477664', 6, 1, 'active', NULL, '2024-05-27 06:40:54', '2024-05-27 06:40:54'),
(13, 'wael', 'wael123@gmail.com', NULL, '$2y$10$CWHz8KlshMprwQrpe.BK6evAfwQ.Kz5j1OqF1vZ71v/LsfGcuq1dC', '01018477664', 3, 6, 'active', NULL, '2024-05-29 18:17:39', '2024-05-30 04:51:03'),
(14, 'saleh', 'saleh@gmail.com', NULL, '$2y$10$2AnYFiYi.Po8eykyEgwh4eh/LwtrsvHhf/Im6gGntP7qPFJbbC/2S', '01283510979', 5, 1, 'active', NULL, '2024-05-30 05:23:52', '2024-05-30 05:23:52'),
(15, 'amin', 'amin@gmail.com', NULL, '$2y$10$Y/4LmsMACHuvCtNJVebe3uZspVsO7so.pN9.o9LfyrVxkXx31g8VC', '016664950', 8, 6, 'active', NULL, '2024-05-30 11:26:42', '2024-05-30 11:26:42'),
(16, 'malek', 'malek@gmail.com', NULL, '$2y$10$TvR.RbIcOC3TELkwPZv.9OZhrdQzRD7vqWBIwxECZlviSywEPIKdm', '01065649506', 8, 6, 'active', NULL, '2024-05-31 17:11:22', '2024-05-31 17:11:22'),
(17, 'maged', 'maged@gmail.com', NULL, '$2y$10$8iH4srZlRao7xIJAXdwR2e1wgiMErkYOTjmCCg43bDHtgSAyO/ocy', '01076456389', 5, 1, 'active', NULL, '2024-05-31 17:13:15', '2024-05-31 17:13:15'),
(18, 'malak', 'malak@gmail.com', NULL, '$2y$10$cWMrEFyDzRrip7VLPXAbC.M1qbYVtm7kUzs7RzU9mb8lDp8ef3hEC', '01076456389', 8, 6, 'active', NULL, '2024-05-31 18:33:13', '2024-05-31 18:33:13'),
(19, 'yasser', 'yasser@gmail.com', NULL, '$2y$10$s9ELhx3oOk3oyLk.WOJUKuFumbPDe2R0UusvhCc0CTtPsyW.mdbh6', '01076456389', 10, 1, 'active', NULL, '2024-05-31 18:45:19', '2024-05-31 18:45:19'),
(20, 'yasmin', 'mentor-4@gmail.com', NULL, '$2y$10$LbahJJ0FfeGDUpL/aNL5.uzrKJ4JKi8S7DTYTLogjg/dI8WokbUFy', '01076456389', 10, 5, 'active', NULL, '2024-05-31 18:47:35', '2024-05-31 18:47:35'),
(21, 'samir', 'samir12@gmail.com', NULL, '$2y$10$2cBD2RkMnMxM.cU.WIRtfuDS5RYj2gABtfbUkzOfX/XEqiWcAxScm', '01094858776', 10, 1, 'active', NULL, '2024-05-31 18:54:13', '2024-05-31 18:57:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignments_course_id_index` (`course_id`);

--
-- Indexes for table `assignment_user`
--
ALTER TABLE `assignment_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignment_user_assignment_id_index` (`assignment_id`),
  ADD KEY `assignment_user_user_id_index` (`user_id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_user_id_index` (`user_id`),
  ADD KEY `attendances_course_id_index` (`course_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_sender_index` (`sender`),
  ADD KEY `chats_receiver_index` (`receiver`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_category_id_index` (`category_id`),
  ADD KEY `courses_objective_id_index` (`objective_id`);

--
-- Indexes for table `course_roadmap`
--
ALTER TABLE `course_roadmap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_roadmap_course_id_index` (`course_id`),
  ADD KEY `course_roadmap_roadmap_id_index` (`roadmap_id`);

--
-- Indexes for table `course_user`
--
ALTER TABLE `course_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_user_user_id_index` (`user_id`),
  ADD KEY `course_user_course_id_index` (`course_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_imageable_type_imageable_id_index` (`imageable_type`,`imageable_id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materials_course_id_index` (`course_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `objectives`
--
ALTER TABLE `objectives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolios_user_id_index` (`user_id`),
  ADD KEY `portfolios_course_id_index` (`course_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_user_id_index` (`user_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_quiz_id_index` (`quiz_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizzes_course_id_index` (`course_id`);

--
-- Indexes for table `quiz_user`
--
ALTER TABLE `quiz_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_user_quiz_id_index` (`quiz_id`),
  ADD KEY `quiz_user_user_id_index` (`user_id`);

--
-- Indexes for table `recordings`
--
ALTER TABLE `recordings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recordings_user_id_index` (`user_id`),
  ADD KEY `recordings_course_id_index` (`course_id`);

--
-- Indexes for table `roadmaps`
--
ALTER TABLE `roadmaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_permission_role_id_index` (`role_id`),
  ADD KEY `role_permission_permission_id_index` (`permission_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_course_id_index` (`course_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_course_id_index` (`course_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skills_super_skill_id_index` (`super_skill_id`);

--
-- Indexes for table `student_progress`
--
ALTER TABLE `student_progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_progress_user_id_index` (`user_id`),
  ADD KEY `student_progress_course_id_index` (`course_id`),
  ADD KEY `student_progress_skill_id_index` (`skill_id`);

--
-- Indexes for table `super_skills`
--
ALTER TABLE `super_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `super_skills_course_id_index` (`course_id`);

--
-- Indexes for table `support_requests`
--
ALTER TABLE `support_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_requests_user_id_index` (`user_id`);

--
-- Indexes for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`),
  ADD KEY `telescope_entries_created_at_index` (`created_at`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`);

--
-- Indexes for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD PRIMARY KEY (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Indexes for table `telescope_monitoring`
--
ALTER TABLE `telescope_monitoring`
  ADD PRIMARY KEY (`tag`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_city_id_index` (`city_id`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `assignment_user`
--
ALTER TABLE `assignment_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `course_roadmap`
--
ALTER TABLE `course_roadmap`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `course_user`
--
ALTER TABLE `course_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `objectives`
--
ALTER TABLE `objectives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quiz_user`
--
ALTER TABLE `quiz_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `recordings`
--
ALTER TABLE `recordings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roadmaps`
--
ALTER TABLE `roadmaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `student_progress`
--
ALTER TABLE `student_progress`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `super_skills`
--
ALTER TABLE `super_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `support_requests`
--
ALTER TABLE `support_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=678;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assignment_user`
--
ALTER TABLE `assignment_user`
  ADD CONSTRAINT `assignment_user_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assignment_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_receiver_foreign` FOREIGN KEY (`receiver`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chats_sender_foreign` FOREIGN KEY (`sender`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_objective_id_foreign` FOREIGN KEY (`objective_id`) REFERENCES `objectives` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_roadmap`
--
ALTER TABLE `course_roadmap`
  ADD CONSTRAINT `course_roadmap_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_roadmap_roadmap_id_foreign` FOREIGN KEY (`roadmap_id`) REFERENCES `roadmaps` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_user`
--
ALTER TABLE `course_user`
  ADD CONSTRAINT `course_user_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `materials`
--
ALTER TABLE `materials`
  ADD CONSTRAINT `materials_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `portfolios_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_user`
--
ALTER TABLE `quiz_user`
  ADD CONSTRAINT `quiz_user_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quiz_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recordings`
--
ALTER TABLE `recordings`
  ADD CONSTRAINT `recordings_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recordings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD CONSTRAINT `role_permission_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_permission_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sessions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_super_skill_id_foreign` FOREIGN KEY (`super_skill_id`) REFERENCES `super_skills` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_progress`
--
ALTER TABLE `student_progress`
  ADD CONSTRAINT `student_progress_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_progress_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_progress_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `super_skills`
--
ALTER TABLE `super_skills`
  ADD CONSTRAINT `super_skills_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `support_requests`
--
ALTER TABLE `support_requests`
  ADD CONSTRAINT `support_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
