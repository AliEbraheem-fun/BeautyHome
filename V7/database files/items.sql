-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: fdb24.awardspace.net
-- Generation Time: Feb 29, 2020 at 03:53 PM
-- Server version: 5.7.20-log
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `3331719_beautyhome`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `category` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'makeup',
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'لايوجد',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `thumbnail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url6` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url7` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url8` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `category`, `name`, `description`, `price`, `hidden`, `thumbnail`, `url1`, `url2`, `url3`, `url4`, `url5`, `url6`, `url7`, `url8`) VALUES
(1, 'makeup', 'جلات', 'جلات لتسبيل الشعر.', '1500', 0, 'https://i.imgur.com/LMSvQ81m.jpg', 'https://i.imgur.com/LMSvQ81.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'makeup', 'زيت جونسون', 'زيت جونسون للأطفال والغني عن التعريف.', '2000', 0, 'https://i.imgur.com/tPzitpSm.jpg', 'https://i.imgur.com/tPzitpS.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'makeup', 'صبغة شعر زيزانيا', 'صبغة شعر ذات جودة عالية وألوان مميزة.', '1100', 0, 'https://i.imgur.com/AKSTrgBm.jpg', 'https://i.imgur.com/AKSTrgB.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'makeup', 'أسيتون', 'أسيتون عالي الجودة.', '600', 0, 'https://i.imgur.com/R1Omw23m.jpg', 'https://i.imgur.com/R1Omw23.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'makeup', 'فازلين', 'كريم فازلين 400 مل.', '400', 0, 'https://i.imgur.com/vnEyyrwm.jpg', 'https://i.imgur.com/vnEyyrw.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'makeup', 'شمع العسل', 'لمسة ناعمة خالية من الشعر الزائد.', '350', 0, 'https://i.imgur.com/iAX1Ntkm.jpg', 'https://i.imgur.com/iAX1Ntk.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'makeup', 'حليب مبيض', 'حليب مبيض ومرطب للبشرة.', '500', 0, 'https://i.imgur.com/ny7HsQym.jpg', 'https://i.imgur.com/ny7HsQy.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'makeup', 'شبة', 'شبة لإزالة التعرق وبأربع روائح.', '200', 0, 'https://i.imgur.com/2ml8YuPm.jpg', 'https://i.imgur.com/2ml8YuP.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'makeup', 'مزيل شعر', 'مزيل شعر للحصول على بشرة حريرية ناعمة.', '300', 0, 'https://i.imgur.com/xeNlaajm.jpg', 'https://i.imgur.com/xeNlaaj.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'makeup', 'كريم دوف', 'كربم دوف ملطف ومغذي للبشرة حجم 100 مل.', '250', 0, 'https://i.imgur.com/EBc9Dlzm.jpg', 'https://i.imgur.com/EBc9Dlz.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'makeup', 'تاتش', 'جل تاتش معقم ومطهر لليدين.', '150', 0, 'https://i.imgur.com/YvVHF0Km.jpg', 'https://i.imgur.com/YvVHF0K.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'makeup', 'ألوفيرا', 'جل ملطف و مهدئ ومغذي لكل أنواع البشرة.', '1500', 0, 'https://i.imgur.com/yUJs4Uqm.jpg', 'https://i.imgur.com/yUJs4Uq.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'makeup', 'كريم مصفف للشعر', 'كريم شمعي مصفف وملمع للشعر.', '900', 0, 'https://i.imgur.com/8v2tv6Im.jpg', 'https://i.imgur.com/8v2tv6I.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'makeup', 'قلم حواجب زيبرا', 'قلم حواجب زيبرا الأصلي.', '1000', 0, 'https://i.imgur.com/xH4opzJm.jpg', 'https://i.imgur.com/xH4opzJ.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'makeup', 'بروتين + كيراتين + كولاجين', 'منتج مميز لتغذية وتسبيل الشعر.', '2500', 0, 'https://i.imgur.com/oSwrvK9m.jpg', 'https://i.imgur.com/oSwrvK9.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'makeup', 'كريم الشعر كوبرا', 'كريم الشعر كوبرا لشعر ومظهر أنيق.', '500', 0, 'https://i.imgur.com/rA1kwcNm.jpg', 'https://i.imgur.com/rA1kwcN.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'makeup', 'جيل الشعر كوبرا', 'جيل الشعر كوبرا لتبيت قوي للشعر ومظهر جذاب.', '600', 0, 'https://i.imgur.com/dytZy0im.jpg', 'https://i.imgur.com/dytZy0i.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'makeup', 'صبغة كاب كولور', 'صبغة الشعر الغنية عن التعريف كاب كولور الحجم الكبير.', '1100', 0, 'https://i.imgur.com/Oow2b07m.jpg', 'https://i.imgur.com/Oow2b07.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'makeup', 'لوشن إنشانتر', 'لوشن إنشانتر المرطب والمغذي للبشرة.', '500', 0, 'https://i.imgur.com/JpWDil5m.jpg', 'https://i.imgur.com/JpWDil5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'makeup', 'حمرة فلورمار', 'قلم حمرة فلورمار بمختلف الدرجات والألوان.', '400', 0, 'https://i.imgur.com/2Lb3Xrzm.jpg', 'https://i.imgur.com/2Lb3Xrz.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'makeup', 'بودرة إنشانتر', 'بودرة انشانتر المميزة بروائح مختلفة.', '500', 0, 'https://i.imgur.com/5mo3PzUm.jpg', 'https://i.imgur.com/5mo3PzU.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'makeup', 'فوند ميبيلين فيت مي', 'فوند من الماركة العالمية ميبيلين يمتاز بتغطبته الواسعة للوجه وبدون لمعة.', '1500', 0, 'https://i.imgur.com/rhaTIitm.jpg', 'https://i.imgur.com/rhaTIit.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'makeup', 'برايمر هدى بيوتي', 'يوضع على البشرة قبل تطبيق المكياج، يعمل على تصغير المسام،وتثبيت المكياج، ويسهل مد كريم الأساس على البشرة، كما يساعد على التخفيف من حب الشباب.', '2000', 0, 'https://i.imgur.com/193wGNkm.jpg', 'https://i.imgur.com/193wGNk.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'makeup', 'بودرة سيفورا', 'للحصول على بشرة بمظهر طبيعي خالية من اللمعة وذات لون متجانس.', '1500', 0, 'https://i.imgur.com/F7qfFdim.jpg', 'https://i.imgur.com/F7qfFdi.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'makeup', 'بودرة ميبيلين', 'بودرة الوجه ميبيلين المميزة والغنية عن التعريف', '1600', 0, 'https://i.imgur.com/babHxGPm.jpg', 'https://i.imgur.com/babHxGP.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'makeup', 'بودرة ميبيلين سوبر ستاي', 'بودرة ميبيلين المميزة والتي تدوم لفترة طويلة.', '1500', 0, 'https://i.imgur.com/21W7GQUm.jpg', 'https://i.imgur.com/21W7GQU.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'makeup', 'بودرة مانهاتن', 'بودرة تتميز بتغطيتها المميزة وملمس مخملي رائع للبشرة.', '1100', 0, 'https://i.imgur.com/tjw09Djm.jpg', 'https://i.imgur.com/tjw09Dj.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'makeup', 'علبة ظل فاشن', 'علبة ظل ١٠ ألوان ومراية وفرشاية و عالسعر القديم.', '800', 0, 'https://i.imgur.com/c2hzozpm.jpg', 'https://i.imgur.com/c2hzozp.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'makeup', 'علبة ظل ٥ الوان', 'علبة ظل خمس الوان متنوعة و نوعية ممتازة.', '800', 0, 'https://i.imgur.com/mlMKj9em.jpg', 'https://i.imgur.com/mlMKj9e.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'makeup', 'علبة ظل مونتانا', 'علبة ظل مونتانا لون واحد..', '400', 0, 'https://i.imgur.com/shMkJOzm.jpg', 'https://i.imgur.com/shMkJOzt.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'makeup', 'حمرة ماكس', 'حمرة سائلة ثابتة .. ألوان مميزة وثباتية عالية..', '800', 0, 'https://i.imgur.com/CLatvffm.jpg', 'https://i.imgur.com/CLatvff.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'makeup', 'حمرة فينتي بيوتي', 'حمرة سائلة بتدوم ٢٤ ساعة.', '700', 0, 'https://i.imgur.com/QFolTzom.jpg', 'https://i.imgur.com/QFolTzo.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'makeup', 'حمرة هدى بيوتي', 'حمرة سائلة ثابتة نوعية مميزة..', '600', 0, 'https://i.imgur.com/YeqnQsKm.jpg', 'https://i.imgur.com/YeqnQsK.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'makeup', 'قلم فلورمار رفيع', 'قلم حمرة رفيع ماركة فلور مار المعروفة.', '400', 0, 'https://i.imgur.com/djRWC4nm.jpg', 'https://i.imgur.com/djRWC4n.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'makeup', 'قلم فلورمار عريض', '.قلم حمرة فلورمار الاصلي العريض', '600', 0, 'https://i.imgur.com/o64LoMZm.jpg', 'https://i.imgur.com/o64LoMZ.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'makeup', 'قلم فلورمار رفيع تقليد', 'قلم فلورمار رفيع تقليد', '250', 0, 'https://i.imgur.com/RQPDHpYm.jpg', 'https://i.imgur.com/RQPDHpY.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'makeup', 'قلم حواجب MN', 'قلم حواجب MN الحلو والرخيص متوفر أسود وبني.', '250', 0, 'https://i.imgur.com/GxdMSNPm.jpg', 'https://i.imgur.com/GxdMSNP.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'makeup', 'قلم غليتر', 'قلم غليتر ثباتية عالية وألوان مميزة.', '500', 0, 'https://i.imgur.com/SjO4xfNm.jpg', 'https://i.imgur.com/SjO4xfN.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'makeup', 'مسكرة اسنس', 'مسكرة اسنس المميزة بأنواع مختلفة لكثافة وطول مميز ولون اسود رائع', '1500', 0, 'https://i.imgur.com/tWQgaS4m.jpg', 'https://i.imgur.com/tWQgaS4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'makeup', 'ايلاينر بلاك', 'ايلاينر نوعية ممتازة.', '800', 0, 'https://i.imgur.com/tUQ5HG3m.jpg', 'https://i.imgur.com/tUQ5HG3.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'makeup', 'ايلاينر  كاريتي', 'ايلاينر نوعية ممتازة.', '800', 0, 'https://i.imgur.com/R4YUu5rm.jpg', 'https://i.imgur.com/R4YUu5r.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'makeup', 'ايلاينر كيس بيوتي', 'ايلاينر نوعية ممتازة.', '800', 0, 'https://i.imgur.com/xaYTAzym.jpg', 'https://i.imgur.com/xaYTAzy.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'makeup', 'ايلاينر داي نير', 'ايلاينر نوعية ممتازة.', '800', 0, 'https://i.imgur.com/LbXCb2sm.jpg', 'https://i.imgur.com/LbXCb2s.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'makeup', 'قلم حواجب بورتوا', 'قلم حواجب غني عن التعريف متوفر بلون بني.', '900', 0, 'https://i.imgur.com/KLScDFTm.jpg', 'https://i.imgur.com/KLScDFT.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'perfumes', 'علبة عطر بخاخ', 'علبة عطر بخاخ جامبو', '600', 0, 'https://i.imgur.com/6bouS5em.jpg', 'https://i.imgur.com/6bouS5e.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'perfumes', 'رول كبير', 'رول زيت عطري حجم كبير', '350', 0, 'https://i.imgur.com/gHC5i5Im.jpg', 'https://i.imgur.com/gHC5i5I.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'perfumes', 'رول صغير', 'رول زيت عطري حجم صغير', '250', 0, 'https://i.imgur.com/fxH5t5ym.jpg', 'https://i.imgur.com/fxH5t5y.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'perfumes', 'سبلاش', 'سبلاش بروائح مميزة ومتنوعة.', '500', 0, 'https://i.imgur.com/M9LApdTm.jpg', 'https://i.imgur.com/M9LApdT.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'perfumes', 'كولونيا أطفال', 'كولونيا أطفال حجم ٢٥٠ مل بثلاثة  روائح لانتعاش وترطيب يدوم طويلا.', '700', 0, 'https://i.imgur.com/NxE6U95m.jpg', 'https://i.imgur.com/NxE6U95.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'clothes', 'بنطال جينز ماركة', 'بنطال جينز ذو نوعية مميزة وقماشة مميزة.', '7000', 0, 'https://i.imgur.com/y6IJhNim.jpg', 'https://i.imgur.com/y6IJhNi.jpg', 'https://i.imgur.com/bLSmqaJ.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'clothes', 'بنطال جينز اسود', 'بنطال جينز لون اسود قماشة جيدة .', '4000', 0, 'https://i.imgur.com/kWAGdELm.jpg', 'https://i.imgur.com/kWAGdEL.jpg', '', '', '', '', '', NULL, NULL),
(52, 'clothes', 'بيجامات قطعتين', 'بيجامات شتوية قطن قطعتين بتدفي وبسعر مناسب للجميع.', '3700', 0, 'https://i.imgur.com/OHfoVSOm.jpg', 'https://i.imgur.com/OHfoVSO.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'clothes', 'بيجاما بناتية', 'بيجامات بناتية نوعية حلوة و موديل حلو وبسعر حلو..', '2500', 0, 'https://i.imgur.com/rC9htuJm.jpg', 'https://i.imgur.com/rC9htuJ.jpg', NULL, 'https://i.imgur.com/nCF1oN6.jpg', 'https://i.imgur.com/uLvIaRf.jpg', 'https://i.imgur.com/ml7zDhK.jpg', 'https://i.imgur.com/wk2zYLx.jpg', NULL, NULL),
(54, 'clothes', 'بيجاما بناتية', 'بيجامات بناتية نوعية جيدة وموديل حلو والسعر حلو.', '2500', 0, 'https://i.imgur.com/HkJHcckm.jpg', 'https://i.imgur.com/HkJHcck.jpg', 'https://i.imgur.com/5qcKV1o.jpg', 'https://i.imgur.com/P71a8ex.jpg', 'https://i.imgur.com/KlxSylK.jpg', NULL, NULL, NULL, NULL),
(55, 'clothes', 'كيلوتات ملونة', 'كيلوتات ملونة قياسات لارج. و اكس لارج و اميين لارج.', '500', 0, 'https://i.imgur.com/UOFiPdLm.jpg', 'https://i.imgur.com/UOFiPdL.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'clothes', 'روب نوم مع سليب', 'روب نوم مع سليب بألوان مختلفة.', '2000', 0, 'https://i.imgur.com/DTxgpIhm.jpg', 'https://i.imgur.com/DTxgpIh.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'clothes', 'بروتيل مع شورت', 'بروتيل مع شورت مميزين جدا و بألوان مختلفة.', '2000', 0, 'https://i.imgur.com/ZN0Rt4Mm.jpg', 'https://i.imgur.com/ZN0Rt4M.jpg', '', '', NULL, NULL, NULL, NULL, NULL),
(58, 'clothes', 'روب نوم تايغر', 'روب نوم تايغر قياسات كبيرة و صغيرة.', '1500', 0, 'https://i.imgur.com/WrFG9UEm.jpg', 'https://i.imgur.com/WrFG9UE.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'clothes', 'كيلوت دانتيل', 'كيلوت دانتيل قطن بمختلف الألوان.', '800', 0, 'https://i.imgur.com/ZufBmtam.jpg', 'https://i.imgur.com/ZufBmta.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'clothes', 'كيلوت مطبع', 'كيلوت قطن مطبع قلوب بألوان مختلفة.', '700', 0, 'https://i.imgur.com/5nScL4pm.jpg', 'https://i.imgur.com/5nScL4p.jpg', 'https://i.imgur.com/TAGqOxY.jpg', 'https://i.imgur.com/x5OjXso.jpg', NULL, NULL, NULL, NULL, NULL),
(61, 'clothes', 'بيجاما ربيعية', 'بيجامات ربيعية ٣ قياسات ١و٢و٣ ولونين .', '4200', 0, 'https://i.imgur.com/lYTheh3m.jpg', 'https://i.imgur.com/lYTheh3.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'clothes', 'بيجاما ربيعية ٣ قطع', 'بيجاما ربيعية قطن ٣ قطع قياسين و الوان متنوعة.', '4000', 0, 'https://i.imgur.com/6IgmWVem.jpg', 'https://i.imgur.com/6IgmWVe.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'clothes', 'بيجاما ربيعية', 'بيجامات ربيعية تلت قياسات ١و٢و٣ و تلت ألوان.', '4200', 0, 'https://i.imgur.com/SWn04yKm.jpg', 'https://i.imgur.com/SWn04yK.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'clothes', 'بيجاما ربيعية أزرار', 'بيجامات ربيعية أزرار ٣ قياسات ١و٢و٣ و ٣ الوان.', '4500', 0, 'https://i.imgur.com/HTqd2UKm.jpg', 'https://i.imgur.com/HTqd2UK.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'clothes', 'سوتيان', 'سوتيان صناعة وطنية حشوة دبل والقياسات من ٧٥ ل ٩٠.', '2200', 0, 'https://i.imgur.com/AG11gUdm.jpg', 'https://i.imgur.com/AG11gUd.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'clothes', 'بريجيت', 'الأرقام 136 و 502 و 103 و 501 و 221.', '2500', 0, 'https://i.imgur.com/y964eEkm.jpg', 'https://i.imgur.com/y964eEk.jpg', 'https://i.imgur.com/OdVoAO5.jpg', 'https://i.imgur.com/eQPUFRv.jpg', 'https://i.imgur.com/Ig2Tl95.jpg', 'https://i.imgur.com/G1aLZ9D.jpg', NULL, NULL, NULL),
(67, 'clothes', 'بريجيت', 'بريجيت رقم 240.', '3000', 0, 'https://i.imgur.com/MdBdJTim.jpg', 'https://i.imgur.com/MdBdJTi.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'clothes', 'لانجري', 'مجموعة من اللانجري والتياب العراسية.', '2500', 0, 'https://i.imgur.com/qwreuJ1m.jpg', 'https://i.imgur.com/qwreuJ1.jpg', 'https://i.imgur.com/848mB51.jpg', 'https://i.imgur.com/nGqrDvB.jpg', NULL, NULL, NULL, NULL, NULL),
(69, 'shoes', 'رانج', 'رانج بناتي مميز بثلاثة ألوان :اسود و عسلي وأخضر.', '3200', 0, 'https://i.imgur.com/PWbQ1rym.jpg', 'https://i.imgur.com/PWbQ1ry.jpg', 'https://i.imgur.com/WHYL7Z8.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'shoes', 'جزمة جلد شتوية', 'جزمة جلد شتوية متوفرة ب ٣ ألوان :اسود و عسلي و شوكو. و بسعر مناسب جدا..', '3600', 0, 'https://i.imgur.com/nmwH4qBm.jpg', 'https://i.imgur.com/nmwH4qB.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'shoes', 'حذاء ربيعي', 'حذاء ربيعي لون أحمر والنمر من ٣٧ ل ٤٠.', '3000', 0, 'https://i.imgur.com/Ci5fUnnm.jpg', 'https://i.imgur.com/Ci5fUnn.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'accessories', 'جزدان وسط', 'جزدان بناتي وسط بألوان متعددة ... عملي و بسعر مميز.', '2000', 0, 'https://i.imgur.com/y9RmVt9m.jpg', 'https://i.imgur.com/y9RmVt9.jpg', 'https://i.imgur.com/CGQlYVB.jpg', 'https://i.imgur.com/MRMqk7T.jpg', 'https://i.imgur.com/Yvmp7xG.jpg', NULL, NULL, NULL, NULL),
(73, 'accessories', 'فراشي خدود', 'فراشي خدود مميزين بالجودة واللون.', '500', 0, 'https://i.imgur.com/KkuGskzm.jpg', 'https://i.imgur.com/KkuGskz.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'accessories', 'جزدان حجم كبير', 'جزدان حجم كبير باللونين الأسود والعسلي.', '3500', 0, 'https://i.imgur.com/jlYqQS3m.jpg', 'https://i.imgur.com/jlYqQS3.jpg', 'https://i.imgur.com/zqpljET.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'accessories', 'فرشاة شعر', 'فرشاة شعر بلاستيكية وبالوان متعددة.', '300', 0, 'https://i.imgur.com/IaTx7onm.jpg', 'https://i.imgur.com/IaTx7on.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'accessories', 'شكلة وسط', 'شكلة ماليزية وسط ملونة.', '200', 0, 'https://i.imgur.com/ZGnvpetm.jpg', 'https://i.imgur.com/ZGnvpet.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'accessories', 'شكلة وسط', 'شكلة وردة وسط.', '150', 0, 'https://i.imgur.com/kv87Evpm.jpg', 'https://i.imgur.com/kv87Evp.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'accessories', 'شكلة كبيرة', 'شكلة قياس كبير ألوان غامقة.', '250', 0, 'https://i.imgur.com/ay7PFRcm.jpg', 'https://i.imgur.com/ay7PFRc.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'accessories', 'شكلة وسط', 'شكلة وسط.', '200', 0, 'https://i.imgur.com/v8Muoqe.jpg', 'https://i.imgur.com/v8Muoqem.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'accessories', 'شكلة كبيرة', 'شكلة حجم كبير صناعة وطنية.', '150', 0, 'https://i.imgur.com/4FtutLtm.jpg', 'https://i.imgur.com/4FtutLt.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'accessories', 'كوكينا قياس ٤', 'كوكينا قياس ٤.', '300', 0, 'https://i.imgur.com/xRwvefSm.jpg', 'https://i.imgur.com/xRwvefS.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'accessories', 'كوكينا قياس ٥', 'كوكينا قياس ٥.', '350', 0, 'https://i.imgur.com/xRwvefS.jpg', 'https://i.imgur.com/xRwvefSm.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'accessories', 'حشوة شعر', 'حشوة شعر.', '300', 0, 'https://i.imgur.com/3JkrnEzm.jpg', 'https://i.imgur.com/3JkrnEz.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'accessories', 'عود صيني', 'عود صيني.', '200', 0, 'https://i.imgur.com/B5SnS7K.jpg', 'https://i.imgur.com/B5SnS7Km.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'accessories', 'شكلة سمكة صغيرة', 'شكلة سمكة صغيرة.', '175', 0, 'https://i.imgur.com/V3E96nVm.jpg', 'https://i.imgur.com/V3E96nV.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'accessories', 'مشط ملون', 'مشط بلاستيك بألوان متنوعة.', '150', 0, 'https://i.imgur.com/IV8JTpym.jpg', 'https://i.imgur.com/IV8JTpy.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'accessories', 'مشط بلاستيك', 'مشط بلاستيك لون اسود.', '100', 0, 'https://i.imgur.com/2tPiAdNm.jpg', 'https://i.imgur.com/2tPiAdN.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'accessories', 'مشط بلاستيك ماليزي', 'مشط بلاستيك شكل مميز ولون مميز.', '150', 0, 'https://i.imgur.com/QvM2vX9m.jpg', 'https://i.imgur.com/QvM2vX9.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'accessories', 'حباسات ملونة', 'حباسات شعر بألوان مختلفة.', '150', 0, 'https://i.imgur.com/UPzomFom.jpg', 'https://i.imgur.com/UPzomFo.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'accessories', 'رباطة أرنب ألماز', 'رباطة أرنب ألماز بألوان مختلفة.', '150', 0, 'https://i.imgur.com/DZzwvpCm.jpg', 'https://i.imgur.com/DZzwvpC.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'accessories', 'جزدان حجم كبير', 'جزدان جلد نوعية ممتازة حجم كبير باللونين الأسود والعسلي.', '4500', 0, 'https://i.imgur.com/NoEbQvmm.jpg', 'https://i.imgur.com/NoEbQvm.jpg', 'https://i.imgur.com/RrNjLSq.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'accessories', 'قوس مورد', 'قوس مورد بسعر حلو.', '300', 0, 'https://i.imgur.com/Hf5b9elm.jpg', 'https://i.imgur.com/Hf5b9el.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'accessories', 'قوس ملون', 'قوس ملون بسعر حلو.', '300', 0, 'https://i.imgur.com/DMGMTjXm.jpg', 'https://i.imgur.com/DMGMTjX.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'accessories', 'قوس', 'أقواس مميزة بالشكل والنوعية.', '600', 0, 'https://i.imgur.com/bMHxLt7m.jpg', 'https://i.imgur.com/bMHxLt7.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'accessories', 'بوند ملون', 'بوندات ملونة حلوة ومتنوعة.', '300', 0, 'https://i.imgur.com/NVsO0Fsm.jpg', 'https://i.imgur.com/NVsO0Fs.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'shoes', 'حذاء أديداس', 'حذاء ربيعي وصيفي لون زهر ةالنمر 39 و 40.', '2500', 0, 'https://i.imgur.com/eRsPlqDm.jpg', 'https://i.imgur.com/eRsPlqD.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'accessories', 'رموش صناعية', 'رموش صناعية، 3أزواج نوعية ممتازة.', '800', 0, 'https://i.imgur.com/bJhhnNum.jpg', 'https://i.imgur.com/bJhhnNu.jpg', 'https://i.imgur.com/g6kYuGD.jpg', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
