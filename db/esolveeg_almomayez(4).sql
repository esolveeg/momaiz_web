-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 15, 2020 at 10:02 AM
-- Server version: 10.3.22-MariaDB-1
-- PHP Version: 7.3.15-3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esolveeg_almomayez`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-10-14 10:46:33', '2020-10-14 10:46:33'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-10-14 10:46:34', '2020-10-14 10:46:34'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-10-14 10:46:34', '2020-10-14 10:46:34');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `breif` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `breif_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `name_ar`, `breif`, `breif_ar`, `icon`, `order`, `featured`, `created_at`, `updated_at`) VALUES
(1, 'Cardiology', 'طب القلب', 'The specialty of cardiology provides care across the spectrum of cardiovascular diseases from prevention to end-of-life supportive care.', 'يوفر تخصص أمراض القلب الرعاية عبر مجموعة متنوعة من أمراض القلب والأوعية الدموية من الوقاية إلى الرعاية الداعمة في نهاية العمر', 'cardiology', 1, 1, NULL, NULL),
(2, 'Pulmonology', 'أمراض الرئة', 'Pulmonary care refers to the medical specialty devoted to the lungs. ', 'تشير الرعاية الرئوية إلى التخصص الطبي المخصص للرئتين.', 'vagina', 1, 1, NULL, NULL),
(3, 'Gynecology', 'أمراض النساء', 'The Department of Obstetrics and Gynecology at Almomayez hospital offers the finest in medical technology available in the Middle East.', 'قدم قسم أمراض النساء والولادة في مستشفى المميز أرقى التقنيات الطبية المتوفرة في الشرق الأوسط.', 'neurology', 1, 1, NULL, NULL),
(4, 'Neurology', 'علم الأعصاب', 'The Neurology department in the Saudi Al momayez hospital operates through well trained and experienced consultants, ', 'يعمل قسم الأمراض العصبية في مستشفى المميز السعودي من خلال استشاريين مدربين وذوي خبرة جيدة ،', 'lungs', 1, 1, NULL, NULL),
(5, 'Urology', 'جراحة المسالك البولية', 'Al momayez Hospital - Cairo offers a wide range of medical and surgical services related to the urinary system (kidneys, bladder and urethra), the genital system and prostate.', 'تقدم مستشفى المميز بالقاهرة مجموعة واسعة من الخدمات الطبية والجراحية المتعلقة بالجهاز البولي (الكلى والمثانة والإحليل) والجهاز التناسلي والبروستاتا.', 'kidneys', 1, 1, NULL, NULL),
(6, 'Gastrology', 'أمراض المعدة', 'Our distinguished gastroenterologists are dealing with almost all related disease conditions in the outpatient department as well as the inpatient section depending on the severity of the case.', 'يتعامل أخصائيو الجهاز الهضمي المتميزون لدينا مع جميع الحالات المرضية ذات الصلة تقريبًا في قسم العيادات الخارجية بالإضافة إلى قسم المرضى الداخليين اعتمادًا على شدة الحالة.', 'heart', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `breif` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `breif_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `order` tinyint(4) NOT NULL DEFAULT 1,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `name_ar`, `breif`, `breif_ar`, `title`, `image`, `featured`, `order`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed rafat', 'محمد رافت', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ', 'Prof. & HOD', 'doctors/1.jpg', 1, 1, 1, NULL, NULL),
(2, 'Sara Ahmed', 'سارة احمد', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ', 'Asst.Prof', 'doctors/2.jpg', 1, 1, 2, NULL, NULL),
(3, 'Islam abousmara', 'اسلام ابوسمرة', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ', 'Asso. Prof', 'doctors/3.jpg', 1, 1, 3, NULL, NULL),
(4, 'Momen youssef', 'مؤمن يوسف', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ', 'Prof. & HOD', 'doctors/4.jpg', 1, 1, 4, NULL, NULL),
(5, 'Mai Mohamed', 'مي محمد', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ', 'Asst.Prof', 'doctors/5.jpg', 0, 1, 5, NULL, NULL),
(6, 'Abdelrahman Hussein', 'عبدالرحمن حسين', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ', 'Professor', 'doctors/6.jpg', 0, 1, 6, NULL, NULL),
(7, 'Yassen Ahmed', 'ياسين احمد', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ', 'Asso. Prof', 'doctors/7.jpg', 0, 1, 1, NULL, NULL),
(8, 'Khaled Yaheia', 'خالد يحي', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ', 'Asso. Prof', 'doctors/8.jpg', 0, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `question_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `answer_ar` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `question_ar`, `answer`, `answer_ar`, `created_at`, `updated_at`) VALUES
(13, 'Can a family member spend the night with me?', 'هل يمكن لأحد أفراد الأسرة قضاء الليلة معي؟', 'Adequate rest is important for you. However, arrangements can be made for a family member to spend the night with you and many rooms include pull-out couches.', 'الراحة الكافية مهمة بالنسبة لك. ومع ذلك ، يمكن إجراء الترتيبات اللازمة لقضاء أحد أفراد الأسرة الليلة معك وتشمل العديد من الغرف أرائك قابلة للطي.', NULL, NULL),
(14, 'Why can\'t I use my own medications when I\'m in the hospital?', 'ماذا لا يمكنني استخدام الأدوية الخاصة بي عندما أكون في المستشفى؟', 'Our Pharmacy is committed to making sure patients use prescription drugs safely. When you bring medication from home, we don\'t know if the drug has been properly stored or is otherwise safe. To make sure our patients receive medication in the exact dosage needed, they are given only those medications ordered by their doctor from the hospital Pharmacy.Medication brought from home must be stored in the Pharmacy or returned home', 'تلتزم الصيدلية لدينا بالتأكد من أن المرضى يستخدمون الأدوية الموصوفة بأمان. عند إحضار الأدوية من المنزل ، لا نعرف ما إذا كان قد تم تخزين الدواء بشكل صحيح أم أنه آمن. للتأكد من حصول مرضانا على الدواء بالجرعة المطلوبة ، لا يتم إعطاؤهم سوى تلك الأدوية التي طلبها الطبيب من صيدلية المستشفى.\n\n                يجب تخزين الأدوية التي يتم إحضارها من المنزل في الصيدلية أو إعادتها إلى المنزل', NULL, NULL),
(15, 'When are meals served?', 'متى يتم تقديم الوجبات؟', 'Mealtime depends on the location of your room. Between-meal snacks are available from the nursing unit pantries or room service. Check with your nurse for specific mealtimes and assistance with room service. Guest trays are available for one visitor per room. To order a guest tray, dial extension 4939 one hour before mealtime. A fee is charged and is not covered by insurance. A folder listing room service and guest tray menus is in your bedside table. Guest trays are not available in ICU or Garden Pavilion; dining at the Fountain Court Café is encouraged for visitors.', 'يعتمد وقت تناول الطعام على موقع غرفتك. تتوفر الوجبات الخفيفة بين الوجبات في مخازن وحدة التمريض أو خدمة الغرف. تحقق مع ممرضتك لمعرفة أوقات الوجبات المحددة والمساعدة في خدمة الغرف.\n                تتوفر صواني الضيوف لزائر واحد لكل غرفة. لطلب صينية ضيف ، اطلب الرقم الداخلي 4939 قبل ساعة واحدة من موعد الوجبة. يتم فرض رسوم ولا يغطيها التأمين. يوجد مجلد يسرد خدمة الغرف وقوائم علبة الضيوف في طاولة السرير الخاصة بك. لا تتوفر صواني الضيوف في وحدة العناية المركزة أو Garden Pavilion ؛ يتم تشجيع تناول الطعام في Fountain Court Café للزوار.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `alt`, `created_at`, `updated_at`) VALUES
(1, 'gallery/1.jpg', 'Al momayez', NULL, NULL),
(2, 'gallery/2.jpg', 'Al momayez', NULL, NULL),
(3, 'gallery/3.jpg', 'Al momayez', NULL, NULL),
(4, 'gallery/4.jpg', 'Al momayez', NULL, NULL),
(5, 'gallery/5.jpg', 'Al momayez', NULL, NULL),
(6, 'gallery/6.jpg', 'Al momayez', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-10-14 10:46:35', '2020-10-14 10:46:35');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-10-14 10:46:36', '2020-10-14 10:46:36', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2020-10-14 10:46:36', '2020-10-14 10:46:36', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-10-14 10:46:36', '2020-10-14 10:46:36', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-10-14 10:46:36', '2020-10-14 10:46:36', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-10-14 10:46:36', '2020-10-14 10:46:36', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2020-10-14 10:46:36', '2020-10-14 10:46:36', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2020-10-14 10:46:36', '2020-10-14 10:46:36', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2020-10-14 10:46:36', '2020-10-14 10:46:36', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2020-10-14 10:46:36', '2020-10-14 10:46:36', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2020-10-14 10:46:36', '2020-10-14 10:46:36', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2020-10-14 10:46:41', '2020-10-14 10:46:41', 'voyager.hooks', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2020_10_14_003127_create_departments_table', 1),
(25, '2020_10_14_003605_create_services_table', 1),
(26, '2020_10_14_003956_create_postions_table', 1),
(27, '2020_10_14_004014_create_doctors_table', 1),
(28, '2020_10_14_061938_create_sliders_table', 1),
(29, '2020_10_14_062500_create_testemonials_table', 1),
(30, '2020_10_14_152709_create_faqs_table', 2),
(31, '2020_10_14_172237_create_galleries_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-10-14 10:46:37', '2020-10-14 10:46:37'),
(2, 'browse_bread', NULL, '2020-10-14 10:46:37', '2020-10-14 10:46:37'),
(3, 'browse_database', NULL, '2020-10-14 10:46:37', '2020-10-14 10:46:37'),
(4, 'browse_media', NULL, '2020-10-14 10:46:37', '2020-10-14 10:46:37'),
(5, 'browse_compass', NULL, '2020-10-14 10:46:37', '2020-10-14 10:46:37'),
(6, 'browse_menus', 'menus', '2020-10-14 10:46:37', '2020-10-14 10:46:37'),
(7, 'read_menus', 'menus', '2020-10-14 10:46:37', '2020-10-14 10:46:37'),
(8, 'edit_menus', 'menus', '2020-10-14 10:46:37', '2020-10-14 10:46:37'),
(9, 'add_menus', 'menus', '2020-10-14 10:46:37', '2020-10-14 10:46:37'),
(10, 'delete_menus', 'menus', '2020-10-14 10:46:37', '2020-10-14 10:46:37'),
(11, 'browse_roles', 'roles', '2020-10-14 10:46:37', '2020-10-14 10:46:37'),
(12, 'read_roles', 'roles', '2020-10-14 10:46:37', '2020-10-14 10:46:37'),
(13, 'edit_roles', 'roles', '2020-10-14 10:46:37', '2020-10-14 10:46:37'),
(14, 'add_roles', 'roles', '2020-10-14 10:46:37', '2020-10-14 10:46:37'),
(15, 'delete_roles', 'roles', '2020-10-14 10:46:38', '2020-10-14 10:46:38'),
(16, 'browse_users', 'users', '2020-10-14 10:46:38', '2020-10-14 10:46:38'),
(17, 'read_users', 'users', '2020-10-14 10:46:38', '2020-10-14 10:46:38'),
(18, 'edit_users', 'users', '2020-10-14 10:46:38', '2020-10-14 10:46:38'),
(19, 'add_users', 'users', '2020-10-14 10:46:38', '2020-10-14 10:46:38'),
(20, 'delete_users', 'users', '2020-10-14 10:46:38', '2020-10-14 10:46:38'),
(21, 'browse_settings', 'settings', '2020-10-14 10:46:38', '2020-10-14 10:46:38'),
(22, 'read_settings', 'settings', '2020-10-14 10:46:38', '2020-10-14 10:46:38'),
(23, 'edit_settings', 'settings', '2020-10-14 10:46:38', '2020-10-14 10:46:38'),
(24, 'add_settings', 'settings', '2020-10-14 10:46:38', '2020-10-14 10:46:38'),
(25, 'delete_settings', 'settings', '2020-10-14 10:46:38', '2020-10-14 10:46:38'),
(26, 'browse_hooks', NULL, '2020-10-14 10:46:41', '2020-10-14 10:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `postions`
--

CREATE TABLE `postions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-10-14 10:46:36', '2020-10-14 10:46:36'),
(2, 'user', 'Normal User', '2020-10-14 10:46:36', '2020-10-14 10:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `breif` text COLLATE utf8_unicode_ci NOT NULL,
  `breif_ar` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `name_ar`, `breif`, `breif_ar`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Opthalmology', 'طب العيون', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور  أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد  أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس  أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت  نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا  كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم', 'services/1.jpg', NULL, NULL),
(2, 'Laboratory', 'مختبر', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور  أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد  أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس  أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت  نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا  كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم', 'services/2.jpg', NULL, NULL),
(3, 'Cardiac Clinic', 'عيادة القلب', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور  أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد  أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس  أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت  نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا  كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم', 'services/3.jpg', NULL, NULL),
(4, 'OutPatient', 'العيادات الخارجية', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور  أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد  أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس  أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت  نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا  كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم', 'services/4.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Al Momayez Hospital', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Welcome to almomayez hospital', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/October2020/JactNA3q3nD13wJSM0LL.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 11, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.email', 'email', 'info@almomayezhospital.com', '{\r\n    \"validation\": {\r\n        \"rule\": \"required|email\"\r\n    }\r\n}', 'text', 4, 'Site'),
(12, 'site.phone', 'phone', '01022052546', NULL, 'text', 6, 'Site'),
(13, 'site.address', 'address', '12 Orabi St', NULL, 'text', 7, 'Site'),
(14, 'site.facebook', 'facebook', 'facebook.com/', NULL, 'text', 8, 'Site'),
(15, 'site.twitter', 'twitter', 'twitter.com/', NULL, 'text', 9, 'Site'),
(16, 'site.linkedin', 'linkedin', 'linkedin.com/', NULL, 'text', 10, 'Site'),
(17, 'site.address2', 'address2', 'Mohandseen Cairo ,Egypt', NULL, 'text', 12, 'Site'),
(18, 'site.ambulancephone', 'ambulance phone', '19084', NULL, 'text', 13, 'Site'),
(19, 'site.addressar', 'arabic address', '12 شارع احمد عرابي', NULL, 'text', 14, 'Site'),
(20, 'site.addressar2', 'arabic address 2', 'المهندسين , القاهرة , مصر', NULL, 'text', 15, 'Site'),
(21, 'site.titlear', 'arabic title', 'مستشفي المميز التخصصي', NULL, 'text', 16, 'Site'),
(22, 'site.descriptionar', 'arabic description', 'اهلا بكم ف مستفي المميز التخصصي', NULL, 'text', 17, 'Site'),
(23, 'site.about', 'about', 'The relentless service of Almomayez in the past 25 years taken health care to the most modern levels in the region catering to urban & rural.', NULL, 'text', 18, 'Site'),
(24, 'site.about2', 'about2', 'A Health Care Provider of Western Approach, Almomayez is the most trusted multispecialty hospital.', NULL, 'text', 19, 'Site'),
(25, 'site.aboutar', 'arabic about', 'خدمة المميز التي لا هوادة فيها خلال الـ 25 عامًا الماضية جعلت الرعاية الصحية على أحدث المستويات في المنطقة', NULL, 'text', 20, 'Site'),
(26, 'site.aboutar2', 'arabic about 2', 'موفر رعاية صحية من النهج الغربي ، المميز هو أكثر المستشفيات متعددة التخصصات ثقة.', NULL, 'text', 21, 'Site'),
(27, 'site.mission', 'mission', 'The Mission of Almomayez Hospital is to provide compassionate, accessible, high quality, cost effective healthcare to the community; to promote health; to educate healthcare professionals; and to participate in appropriate clinical research', NULL, 'text', 22, 'Site'),
(28, 'site.vision', 'vision', 'Al Momayez Hospital will be an innovative, leading regional health system dedicated to advancing the health and transforming the lives of the people we serve through excellent clinical quality; accessible, patient-centered, caring service; and unmatched physician and employee commitment.', NULL, 'text', 23, 'Site'),
(29, 'site.values', 'values', 'We\'re committed to setting ambitious goals and move healthcare and our communities forward , Acting in honest, forthright and fiscally responsible ways', NULL, 'text', 24, 'Site'),
(30, 'site.missionar', 'arabic mission', 'تتمثل مهمة مستشفى المميز في توفير رعاية صحية رحيمة ، ويمكن الوصول إليها ، وعالية الجودة ، وفعالة من حيث التكلفة للمجتمع ؛ لتعزيز الصحة ؛ لتثقيف المتخصصين في الرعاية الصحية ؛ والمشاركة في البحوث السريرية المناسبة', NULL, 'text', 25, 'Site'),
(31, 'site.visionar', 'arabic vision', 'ستكون مستشفى المميز نظامًا صحيًا إقليميًا مبتكرًا ورائدًا مكرسًا للنهوض بالصحة وتحويل حياة الأشخاص الذين نخدمهم من خلال الجودة السريرية الممتازة ؛ خدمة رعاية يمكن الوصول إليها وتركز على المريض ؛ والتزام لا مثيل له من قبل الطبيب والموظف.', NULL, 'text', 26, 'Site'),
(32, 'site.valuesar', 'arabic values', 'نحن ملتزمون بوضع أهداف طموحة ودفع الرعاية الصحية ومجتمعاتنا إلى الأمام ، والتصرف بطرق صادقة وصريحة ومسؤولة ماليًا', NULL, 'text', 27, 'Site'),
(33, 'site.aboutimage', 'image inside about page', 'settings/October2020/IS6U7yeePEnQDZtV4ySm.jpg', NULL, 'image', 28, 'Site'),
(34, 'site.headerimage', 'header image', 'settings/October2020/31wzpp91qtaa5x5jxMEF.jpg', NULL, 'image', 29, 'Site'),
(35, 'site.servicesimage', 'services main image', 'settings/October2020/2dBjtw4GtFugFtYxfx1I.jpg', NULL, 'image', 30, 'Site'),
(36, 'site.servicesimage2', 'services secondary image', 'settings/October2020/xo9uZfTdybZqzK0UnfSS.jpg', NULL, 'image', 31, 'Site'),
(37, 'site.icon', 'icon', 'settings/October2020/Bkas1tluo0mehqESxL9E.png', NULL, 'image', 32, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `title_ar`, `content`, `content_ar`, `image`, `created_at`, `updated_at`) VALUES
(1, '<h1>\n                Almomayez providing total<br />\n                healthcare <span>Solutions.</span>\n              </h1>', '<h1>\n                تقدم مسشفي المميز<br />\n                رعاية صحية <span>كاملة.</span>\n              </h1>', ' <p>\n                Ensuring excellence of quality of care through evidence based on practices.\n                Denouncing pleasure and praising pain was born and we will\n                <br />through evidence based on practices.\n              </p>', '<p>العمل الجاد لإرضاء موظفينا وكذلك عملائنا.\n                ضمان التميز في جودة الرعاية من خلال <br>الأدلة القائمة على الممارسات.</p>', 'sliders/1.jpg', NULL, NULL),
(2, '<h1>\n                Almomayez providing total<br />\n                healthcare <span>Solutions.</span>\n              </h1>', '<h1>\n                تقدم مسشفي المميز<br />\n                رعاية صحية <span>كاملة.</span>\n              </h1>', ' <p>\n                Ensuring excellence of quality of care through evidence based on practices.\n                Denouncing pleasure and praising pain was born and we will\n                <br />through evidence based on practices.\n              </p>', '<p>العمل الجاد لإرضاء موظفينا وكذلك عملائنا.\n                ضمان التميز في جودة الرعاية من خلال <br>الأدلة القائمة على الممارسات.</p>', 'sliders/2.jpg', NULL, NULL),
(3, '<h1>\n                Almomayez providing total<br />\n                healthcare <span>Solutions.</span>\n              </h1>', '<h1>\n                تقدم مسشفي المميز<br />\n                رعاية صحية <span>كاملة.</span>\n              </h1>', ' <p>\n                Ensuring excellence of quality of care through evidence based on practices.\n                Denouncing pleasure and praising pain was born and we will\n                <br />through evidence based on practices.\n              </p>', '<p>العمل الجاد لإرضاء موظفينا وكذلك عملائنا.\n                ضمان التميز في جودة الرعاية من خلال <br>الأدلة القائمة على الممارسات.</p>', 'sliders/3.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testemonials`
--

CREATE TABLE `testemonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testemonials`
--

INSERT INTO `testemonials` (`id`, `name`, `title`, `title_ar`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Ahmed Youssef', 'Patient', 'مريض', 'Mistaken idea of denouncing pleasure and praising pain was\n                born and I will give you a complete account of the system.', 'testemonials/1.png', NULL, NULL),
(2, 'Mayar mohamed', 'Doctor', 'طبيبة', 'Mistaken idea of denouncing pleasure and praising pain was\n                born and I will give you a complete account of the system.', 'testemonials/2.png', NULL, NULL),
(3, 'Menna Ahmed', 'Researcher', 'باحثة', 'Mistaken idea of denouncing pleasure and praising pain was\n                born and I will give you a complete account of the system.', 'testemonials/3.png', NULL, NULL),
(4, 'Ahmed Youssef', 'Patient', 'مريض', 'Mistaken idea of denouncing pleasure and praising pain was\n                born and I will give you a complete account of the system.', 'testemonials/4.png', NULL, NULL),
(5, 'Ahmed Youssef', 'Patient', 'مريض', 'Mistaken idea of denouncing pleasure and praising pain was\n                born and I will give you a complete account of the system.', 'testemonials/1.png', NULL, NULL),
(6, 'Mayar mohamed', 'Doctor', 'طبيبة', 'Mistaken idea of denouncing pleasure and praising pain was\n                born and I will give you a complete account of the system.', 'testemonials/2.png', NULL, NULL),
(7, 'Menna Ahmed', 'Researcher', 'باحثة', 'Mistaken idea of denouncing pleasure and praising pain was\n                born and I will give you a complete account of the system.', 'testemonials/3.png', NULL, NULL),
(8, 'Ahmed Youssef', 'Patient', 'مريض', 'Mistaken idea of denouncing pleasure and praising pain was\n                born and I will give you a complete account of the system.', 'testemonials/4.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@almomayezhospital.com', 'users/default.png', NULL, '$2y$10$K8nKn7s2UQmPAH1s3HgoluzAZjd.uHruyB1wZFDDO5hEGitUzzsgS', 'qbfPAiTUP6SesQYdDQ939OSAhs15yQRtVkqYdxnZiAenzqflEYujXI5H85IM', NULL, '2020-10-14 10:46:41', '2020-10-14 10:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `postions`
--
ALTER TABLE `postions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testemonials`
--
ALTER TABLE `testemonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `postions`
--
ALTER TABLE `postions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testemonials`
--
ALTER TABLE `testemonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
