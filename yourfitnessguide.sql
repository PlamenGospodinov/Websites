-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2021 at 12:13 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yourfitnessguide`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_album`
--

CREATE TABLE `wp_bwg_album` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview_image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `random_preview_image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `modified_date` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_album_gallery`
--

CREATE TABLE `wp_bwg_album_gallery` (
  `id` bigint(20) NOT NULL,
  `album_id` bigint(20) NOT NULL,
  `is_album` tinyint(1) NOT NULL,
  `alb_gal_id` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_file_paths`
--

CREATE TABLE `wp_bwg_file_paths` (
  `id` bigint(20) NOT NULL,
  `is_dir` tinyint(1) DEFAULT 0,
  `path` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resolution` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resolution_thumb` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aperture` int(10) DEFAULT NULL,
  `camera` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso` int(10) DEFAULT NULL,
  `orientation` int(10) DEFAULT NULL,
  `copyright` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `author` bigint(20) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_bwg_file_paths`
--

INSERT INTO `wp_bwg_file_paths` (`id`, `is_dir`, `path`, `type`, `name`, `filename`, `alt`, `thumb`, `size`, `resolution`, `resolution_thumb`, `credit`, `aperture`, `camera`, `caption`, `iso`, `orientation`, `copyright`, `tags`, `date_modified`, `author`) VALUES
(5, 0, '/', 'jpg', 'transformation1.jpg', 'transformation1', 'transformation1', 'thumb/transformation1.jpg', '279 KB', '1290 x 1290 px', '', '', 0, '', '', 0, 0, '', '', '2021-11-21 15:56:24', 1),
(6, 0, '/', 'jpg', 'transformation2.jpg', 'transformation2', 'transformation2', 'thumb/transformation2.jpg', '135 KB', '940 x 788 px', '', '', 0, '', '', 0, 0, '', '', '2021-11-21 15:56:24', 1),
(7, 0, '/', 'jpg', 'transformation3.jpg', 'transformation3', 'transformation3', 'thumb/transformation3.jpg', '160 KB', '1214 x 1212 px', '', '', 0, '', '', 0, 0, '', '', '2021-11-21 15:56:24', 1),
(8, 0, '/', 'jpg', 'transformation4.jpg', 'transformation4', 'transformation4', 'thumb/transformation4.jpg', '77 KB', '746 x 820 px', '', '', 0, '', '', 0, 0, '', '', '2021-11-21 15:56:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_gallery`
--

CREATE TABLE `wp_bwg_gallery` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_link` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview_image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `random_preview_image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `gallery_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_source` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `autogallery_image_number` int(4) NOT NULL,
  `update_flag` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_date` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_bwg_gallery`
--

INSERT INTO `wp_bwg_gallery` (`id`, `name`, `slug`, `description`, `page_link`, `preview_image`, `random_preview_image`, `order`, `author`, `published`, `gallery_type`, `gallery_source`, `autogallery_image_number`, `update_flag`, `modified_date`) VALUES
(1, 'main', 'main', '', '', '', '/thumb/transformation4.jpg', 0, 1, 1, '', '', 12, '', 1637510158);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image`
--

CREATE TABLE `wp_bwg_image` (
  `id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filetype` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolution` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolution_thumb` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `comment_count` bigint(20) NOT NULL,
  `avg_rating` float NOT NULL,
  `rate_count` bigint(20) NOT NULL,
  `hit_count` bigint(20) NOT NULL,
  `redirect_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pricelist_id` bigint(20) NOT NULL,
  `modified_date` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_bwg_image`
--

INSERT INTO `wp_bwg_image` (`id`, `gallery_id`, `slug`, `filename`, `image_url`, `thumb_url`, `description`, `alt`, `date`, `size`, `filetype`, `resolution`, `resolution_thumb`, `author`, `order`, `published`, `comment_count`, `avg_rating`, `rate_count`, `hit_count`, `redirect_url`, `pricelist_id`, `modified_date`) VALUES
(1, 1, 'transformation1', 'transformation1', '/transformation1.jpg', '/thumb/transformation1.jpg', '', 'transformation1', '2021-11-21 15:56:24', '279 KB', 'JPG', '1290 x 1290 px', '', 1, 1, 1, 0, 0, 0, 0, '', 0, 1637510252),
(2, 1, 'transformation2', 'transformation2', '/transformation2.jpg', '/thumb/transformation2.jpg', '', 'transformation2', '2021-11-21 15:56:24', '135 KB', 'JPG', '940 x 788 px', '', 1, 2, 1, 0, 0, 0, 0, '', 0, 1637510252),
(3, 1, 'transformation3', 'transformation3', '/transformation3.jpg', '/thumb/transformation3.jpg', '', 'transformation3', '2021-11-21 15:56:24', '160 KB', 'JPG', '1214 x 1212 px', '', 1, 3, 1, 0, 0, 0, 0, '', 0, 1637510252),
(4, 1, 'transformation4', 'transformation4', '/transformation4.jpg', '/thumb/transformation4.jpg', '', 'transformation4', '2021-11-21 15:56:24', '77 KB', 'JPG', '746 x 820 px', '', 1, 4, 1, 0, 0, 0, 0, '', 0, 1637510252);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_comment`
--

CREATE TABLE `wp_bwg_image_comment` (
  `id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_rate`
--

CREATE TABLE `wp_bwg_image_rate` (
  `id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `rate` float NOT NULL,
  `ip` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_tag`
--

CREATE TABLE `wp_bwg_image_tag` (
  `id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_shortcode`
--

CREATE TABLE `wp_bwg_shortcode` (
  `id` bigint(20) NOT NULL,
  `tagtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_bwg_shortcode`
--

INSERT INTO `wp_bwg_shortcode` (`id`, `tagtext`) VALUES
(1, ' gallery_type=\"slideshow\" theme_id=\"1\" use_option_defaults=\"1\" gallery_id=\"0\" tag=\"0\" slideshow_effect=\"fade\" slideshow_interval=\"5\" slideshow_width=\"800\" slideshow_height=\"500\" sort_by=\"order\" order_by=\"asc\" enable_slideshow_autoplay=\"0\" enable_slideshow_shuffle=\"0\" enable_slideshow_ctrl=\"1\" autohide_slideshow_navigation=\"1\" enable_slideshow_filmstrip=\"1\" slideshow_filmstrip_height=\"90\" slideshow_enable_title=\"0\" slideshow_title_position=\"top-right\" slideshow_title_full_width=\"0\" slideshow_enable_description=\"0\" slideshow_description_position=\"bottom-right\" enable_slideshow_music=\"0\" slideshow_music_url=\"\" slideshow_effect_duration=\"0.1\" gallery_download=\"0\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"1\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"fade\" popup_effect_duration=\"0.1\" popup_autoplay=\"0\" popup_interval=\"2.5\" popup_enable_filmstrip=\"1\" popup_filmstrip_height=\"60\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_comment=\"1\" popup_enable_email=\"1\" popup_enable_captcha=\"0\" gdpr_compliance=\"undefined\" comment_moderation=\"0\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"1\" autohide_lightbox_navigation=\"0\" popup_hit_counter=\"0\" popup_enable_rate=\"0\" popup_enable_zoom=\"0\" popup_enable_fullsize_image=\"0\" popup_enable_download=\"0\" show_image_counts=\"0\" enable_loop=\"1\" enable_addthis=\"0\" addthis_profile_id=\"\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" popup_enable_ecommerce=\"undefined\" watermark_type=\"none\" watermark_link=\"https://10web.io/\"'),
(2, ' use_option_defaults=\"1\" type=\"gallery\" theme_id=\"1\" gallery_id=\"1\" tag=\"0\" gallery_type=\"thumbnails\" thumb_width=\"250\" thumb_height=\"140\" image_column_number=\"5\" image_enable_page=\"1\" images_per_page=\"30\" load_more_image_count=\"30\" sort_by=\"order\" order_by=\"asc\" show_search_box=\"0\" placeholder=\"Search\" search_box_width=\"330\" show_sort_images=\"0\" show_tag_box=\"0\" showthumbs_name=\"0\" show_gallery_description=\"0\" image_title=\"\" show_thumb_description=\"0\" play_icon=\"1\" gallery_download=\"0\" ecommerce_icon=\"\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"1\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"\" popup_effect_duration=\"0.1\" popup_autoplay=\"0\" popup_interval=\"2.5\" popup_enable_filmstrip=\"1\" popup_filmstrip_height=\"\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_comment=\"1\" popup_enable_email=\"1\" popup_enable_captcha=\"0\" gdpr_compliance=\"0\" comment_moderation=\"0\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"1\" autohide_lightbox_navigation=\"0\" popup_hit_counter=\"0\" popup_enable_rate=\"0\" popup_enable_zoom=\"0\" popup_enable_fullsize_image=\"0\" popup_enable_download=\"0\" show_image_counts=\"0\" enable_loop=\"1\" enable_addthis=\"0\" addthis_profile_id=\"\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" popup_enable_ecommerce=\"1\" watermark_type=\"none\" watermark_link=\"https://10web.io/\"'),
(3, ' gallery_type=\"slideshow\" theme_id=\"1\" use_option_defaults=\"1\" gallery_id=\"1\" tag=\"0\" slideshow_effect=\"fade\" slideshow_interval=\"5\" slideshow_width=\"800\" slideshow_height=\"500\" sort_by=\"order\" order_by=\"asc\" enable_slideshow_autoplay=\"0\" enable_slideshow_shuffle=\"0\" enable_slideshow_ctrl=\"1\" autohide_slideshow_navigation=\"1\" enable_slideshow_filmstrip=\"1\" slideshow_filmstrip_height=\"90\" slideshow_enable_title=\"0\" slideshow_title_position=\"top-right\" slideshow_title_full_width=\"0\" slideshow_enable_description=\"0\" slideshow_description_position=\"bottom-right\" enable_slideshow_music=\"0\" slideshow_music_url=\"\" slideshow_effect_duration=\"0.1\" gallery_download=\"0\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"1\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"fade\" popup_effect_duration=\"0.1\" popup_autoplay=\"0\" popup_interval=\"2.5\" popup_enable_filmstrip=\"1\" popup_filmstrip_height=\"60\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_comment=\"1\" popup_enable_email=\"1\" popup_enable_captcha=\"0\" gdpr_compliance=\"undefined\" comment_moderation=\"0\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"1\" autohide_lightbox_navigation=\"0\" popup_hit_counter=\"0\" popup_enable_rate=\"0\" popup_enable_zoom=\"0\" popup_enable_fullsize_image=\"0\" popup_enable_download=\"0\" show_image_counts=\"0\" enable_loop=\"1\" enable_addthis=\"0\" addthis_profile_id=\"\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" popup_enable_ecommerce=\"undefined\" watermark_type=\"none\" watermark_link=\"https://10web.io/\"'),
(4, ' gallery_type=\"image_browser\" theme_id=\"1\" use_option_defaults=\"1\" gallery_id=\"1\" tag=\"0\" image_browser_width=\"800\" image_browser_title_enable=\"1\" image_browser_description_enable=\"1\" sort_by=\"order\" order_by=\"asc\" showthumbs_name=\"0\" show_gallery_description=\"0\" show_search_box=\"0\" show_sort_images=\"0\" show_tag_box=\"0\" placeholder=\"Search\" search_box_width=\"180\" gallery_download=\"0\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"1\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"fade\" popup_effect_duration=\"0.1\" popup_autoplay=\"0\" popup_interval=\"2.5\" popup_enable_filmstrip=\"1\" popup_filmstrip_height=\"60\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_comment=\"1\" popup_enable_email=\"1\" popup_enable_captcha=\"0\" gdpr_compliance=\"undefined\" comment_moderation=\"0\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"1\" autohide_lightbox_navigation=\"0\" popup_hit_counter=\"0\" popup_enable_rate=\"0\" popup_enable_zoom=\"0\" popup_enable_fullsize_image=\"0\" popup_enable_download=\"0\" show_image_counts=\"0\" enable_loop=\"1\" enable_addthis=\"0\" addthis_profile_id=\"\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" popup_enable_ecommerce=\"undefined\" watermark_type=\"none\" watermark_link=\"https://10web.io/\"');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_theme`
--

CREATE TABLE `wp_bwg_theme` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_theme` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_bwg_theme`
--

INSERT INTO `wp_bwg_theme` (`id`, `name`, `options`, `default_theme`) VALUES
(1, 'Light', '{\"album_compact_back_font_color\":\"323A45\",\"album_compact_back_font_size\":15,\"album_compact_back_font_style\":\"Ubuntu\",\"album_compact_back_font_weight\":\"bold\",\"album_compact_back_padding\":\"0\",\"album_compact_gal_title_align\":\"center\",\"album_compact_gal_title_font_color\":\"323A45\",\"album_compact_gal_title_font_size\":18,\"album_compact_gal_title_font_style\":\"Ubuntu\",\"album_compact_gal_title_font_weight\":\"bold\",\"album_compact_gal_title_margin\":\"0 2px 2px 2px\",\"album_compact_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_compact_thumb_align\":\"center\",\"album_compact_thumb_bg_color\":\"000000\",\"album_compact_thumb_bg_transparent\":0,\"album_compact_thumb_border_color\":\"CCCCCC\",\"album_compact_thumb_border_radius\":\"0\",\"album_compact_thumb_border_style\":\"none\",\"album_compact_thumb_border_width\":0,\"album_compact_thumb_box_shadow\":\"0px 0px 0px #888888\",\"album_compact_thumb_hover_effect\":\"zoom\",\"album_compact_thumb_hover_effect_value\":\"1.08\",\"album_compact_thumb_margin\":4,\"album_compact_thumb_padding\":0,\"album_compact_thumb_title_pos\":\"bottom\",\"album_compact_thumb_transition\":1,\"album_compact_thumb_transparent\":100,\"album_compact_thumb_bg_transparency\":30,\"album_compact_thumbs_bg_color\":\"FFFFFF\",\"album_compact_title_font_color\":\"323A45\",\"album_compact_title_font_color_hover\":\"FFFFFF\",\"album_compact_title_font_size\":16,\"album_compact_title_font_style\":\"Ubuntu\",\"album_compact_title_font_weight\":\"bold\",\"album_compact_title_margin\":\"2px\",\"album_compact_title_shadow\":\"0px 0px 0px #888888\",\"album_extended_back_font_color\":\"000000\",\"album_extended_back_font_size\":20,\"album_extended_back_font_style\":\"Ubuntu\",\"album_extended_back_font_weight\":\"bold\",\"album_extended_back_padding\":\"0\",\"album_extended_desc_font_color\":\"5C5C5C\",\"album_extended_desc_font_size\":16,\"album_extended_desc_font_style\":\"Ubuntu\",\"album_extended_desc_font_weight\":\"normal\",\"album_extended_desc_more_color\":\"007AFF\",\"album_extended_desc_more_size\":12,\"album_extended_desc_padding\":\"0px 0px 0px 0px\",\"album_extended_desc_span_border_color\":\"CCCCCC\",\"album_extended_desc_span_border_style\":\"none\",\"album_extended_desc_span_border_width\":0,\"album_extended_div_bg_color\":\"FAFAFA\",\"album_extended_div_bg_transparent\":0,\"album_extended_div_border_radius\":\"14px\",\"album_extended_div_margin\":\"20px 20px 0px 0px\",\"album_extended_div_padding\":0,\"album_extended_div_separator_color\":\"E0E0E0\",\"album_extended_div_separator_style\":\"solid\",\"album_extended_div_separator_width\":0,\"album_extended_gal_title_align\":\"right\",\"album_extended_gal_title_font_color\":\"CCCCCC\",\"album_extended_gal_title_font_size\":16,\"album_extended_gal_title_font_style\":\"Ubuntu\",\"album_extended_gal_title_font_weight\":\"bold\",\"album_extended_gal_title_margin\":\"2px\",\"album_extended_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_extended_text_div_bg_color\":\"FAFAFA\",\"album_extended_text_div_border_color\":\"E8E8E8\",\"album_extended_text_div_border_radius\":\"0\",\"album_extended_text_div_border_style\":\"none\",\"album_extended_text_div_border_width\":0,\"album_extended_text_div_padding\":\"16px\",\"album_extended_thumb_align\":\"left\",\"album_extended_thumb_bg_color\":\"FFFFFF\",\"album_extended_thumb_bg_transparent\":0,\"album_extended_thumb_border_color\":\"FAFAFA\",\"album_extended_thumb_border_radius\":\"10px\",\"album_extended_thumb_border_style\":\"none\",\"album_extended_thumb_border_width\":0,\"album_extended_thumb_box_shadow\":\"\",\"album_extended_thumb_div_bg_color\":\"FAFAFA\",\"album_extended_thumb_div_border_color\":\"E8E8E8\",\"album_extended_thumb_div_border_radius\":\"\",\"album_extended_thumb_div_border_style\":\"none\",\"album_extended_thumb_div_border_width\":0,\"album_extended_thumb_div_padding\":\"14px\",\"album_extended_thumb_hover_effect\":\"none\",\"album_extended_thumb_hover_effect_value\":\"1.03\",\"album_extended_thumb_margin\":0,\"album_extended_thumb_padding\":0,\"album_extended_thumb_transition\":0,\"album_extended_thumb_transparent\":100,\"album_extended_thumbs_bg_color\":\"FFFFFF\",\"album_extended_title_desc_alignment\":\"top\",\"album_extended_title_font_color\":\"000000\",\"album_extended_title_font_size\":22,\"album_extended_title_font_style\":\"Ubuntu\",\"album_extended_title_font_weight\":\"bold\",\"album_extended_title_margin_bottom\":0,\"album_extended_title_padding\":\"0px 0px 0px 0px\",\"album_extended_title_span_border_color\":\"CCCCCC\",\"album_extended_title_span_border_style\":\"none\",\"album_extended_title_span_border_width\":0,\"album_masonry_back_font_color\":\"323A45\",\"album_masonry_back_font_size\":15,\"album_masonry_back_font_style\":\"Ubuntu\",\"album_masonry_back_font_weight\":\"bold\",\"album_masonry_back_padding\":\"0\",\"album_masonry_container_margin\":1,\"album_masonry_gal_title_align\":\"center\",\"album_masonry_gal_title_font_color\":\"323A45\",\"album_masonry_gal_title_font_size\":18,\"album_masonry_gal_title_font_style\":\"Ubuntu\",\"album_masonry_gal_title_font_weight\":\"bold\",\"album_masonry_gal_title_margin\":\"0 2px 2px 2px\",\"album_masonry_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_masonry_thumb_align\":\"center\",\"album_masonry_thumb_bg_color\":\"000000\",\"album_masonry_thumb_bg_transparent\":0,\"album_masonry_thumb_border_color\":\"CCCCCC\",\"album_masonry_thumb_border_radius\":\"0\",\"album_masonry_thumb_border_style\":\"none\",\"album_masonry_thumb_border_width\":0,\"album_masonry_thumb_box_shadow\":\"\",\"album_masonry_thumb_hover_effect\":\"zoom\",\"album_masonry_thumb_hover_effect_value\":\"1.08\",\"album_masonry_thumb_margin\":0,\"album_masonry_thumb_padding\":4,\"album_masonry_thumb_title_font_color_hover\":\"FFFFFF\",\"album_masonry_thumb_title_pos\":\"bottom\",\"album_masonry_thumb_transition\":1,\"album_masonry_thumb_transparent\":100,\"album_masonry_thumbs_bg_color\":\"FFFFFF\",\"album_masonry_title_font_color\":\"323A45\",\"album_masonry_title_font_size\":16,\"album_masonry_title_font_style\":\"Ubuntu\",\"album_masonry_title_font_weight\":\"bold\",\"album_masonry_title_margin\":\"\",\"album_masonry_title_shadow\":\"0px 0px 0px #888888\",\"blog_style_align\":\"center\",\"blog_style_bg_color\":\"FFFFFF\",\"blog_style_border_color\":\"F5F5F5\",\"blog_style_border_radius\":\"0\",\"blog_style_border_style\":\"solid\",\"blog_style_border_width\":1,\"blog_style_box_shadow\":\"\",\"blog_style_gal_title_align\":\"center\",\"blog_style_gal_title_font_color\":\"323A45\",\"blog_style_gal_title_font_size\":16,\"blog_style_gal_title_font_style\":\"Ubuntu\",\"blog_style_gal_title_font_weight\":\"bold\",\"blog_style_gal_title_margin\":\"2px\",\"blog_style_gal_title_shadow\":\"0px 0px 0px #888888\",\"blog_style_img_font_color\":\"000000\",\"blog_style_img_font_family\":\"Ubuntu\",\"blog_style_img_font_size\":16,\"blog_style_margin\":\"2px\",\"blog_style_padding\":\"0\",\"blog_style_share_buttons_align\":\"right\",\"blog_style_share_buttons_bg_color\":\"FFFFFF\",\"blog_style_share_buttons_bg_transparent\":0,\"blog_style_share_buttons_border_color\":\"000000\",\"blog_style_share_buttons_border_radius\":\"0\",\"blog_style_share_buttons_border_style\":\"none\",\"blog_style_share_buttons_border_width\":0,\"blog_style_share_buttons_color\":\"B3AFAF\",\"blog_style_share_buttons_font_size\":20,\"blog_style_share_buttons_margin\":\"5px auto 10px auto\",\"blog_style_transparent\":80,\"carousel_caption_background_color\":\"000000\",\"carousel_caption_bottom\":0,\"carousel_caption_p_color\":\"FFFFFF\",\"carousel_caption_p_font_size\":14,\"carousel_caption_p_font_weight\":\"bold\",\"carousel_caption_p_mergin\":0,\"carousel_caption_p_pedding\":5,\"carousel_close_btn_transparent\":50,\"carousel_close_rl_btn_hover_color\":\"191919\",\"carousel_cont_bg_color\":\"000000\",\"carousel_cont_btn_transparent\":0,\"carousel_feature_border_color\":\"5D204F\",\"carousel_feature_border_style\":\"none\",\"carousel_feature_border_width\":2,\"carousel_font_family\":\"arial\",\"carousel_mergin_bottom\":\"0.5\",\"carousel_play_pause_btn_size\":25,\"carousel_rl_btn_bg_color\":\"FFFFFF\",\"carousel_rl_btn_border_color\":\"FFFFFF\",\"carousel_rl_btn_border_radius\":\"20px\",\"carousel_rl_btn_border_style\":\"none\",\"carousel_rl_btn_border_width\":0,\"carousel_rl_btn_color\":\"303030\",\"carousel_rl_btn_height\":35,\"carousel_rl_btn_size\":15,\"carousel_rl_btn_style\":\"bwg-icon-angle\",\"carousel_rl_btn_width\":35,\"carousel_title_border_radius\":\"5px\",\"carousel_title_opacity\":100,\"carousel_gal_title_align\":\"center\",\"carousel_gal_title_font_color\":\"323A45\",\"carousel_gal_title_font_size\":16,\"carousel_gal_title_font_style\":\"Ubuntu\",\"carousel_gal_title_font_weight\":\"bold\",\"carousel_gal_title_margin\":\"2px\",\"carousel_gal_title_shadow\":\"0px 0px 0px #888888\",\"compact_container_margin\":\"1\",\"container_margin\":\"1\",\"image_browser_align\":\"center\",\"image_browser_bg_color\":\"EBEBEB\",\"image_browser_border_color\":\"F5F5F5\",\"image_browser_border_radius\":\"0\",\"image_browser_border_style\":\"none\",\"image_browser_border_width\":1,\"image_browser_box_shadow\":\"\",\"image_browser_full_bg_color\":\"F5F5F5\",\"image_browser_full_border_color\":\"F7F7F7\",\"image_browser_full_border_radius\":\"0\",\"image_browser_full_border_style\":\"none\",\"image_browser_full_border_width\":2,\"image_browser_full_padding\":\"4px\",\"image_browser_full_transparent\":90,\"image_browser_gal_title_align\":\"center\",\"image_browser_gal_title_font_color\":\"323A45\",\"image_browser_gal_title_font_size\":16,\"image_browser_gal_title_font_style\":\"Ubuntu\",\"image_browser_gal_title_font_weight\":\"bold\",\"image_browser_gal_title_margin\":\"2px\",\"image_browser_gal_title_shadow\":\"0px 0px 0px #888888\",\"image_browser_image_description_align\":\"center\",\"image_browser_image_description_bg_color\":\"EBEBEB\",\"image_browser_image_description_border_color\":\"FFFFFF\",\"image_browser_image_description_border_radius\":\"0\",\"image_browser_image_description_border_style\":\"none\",\"image_browser_image_description_border_width\":1,\"image_browser_image_description_margin\":\"0px 5px 0px 5px\",\"image_browser_image_description_padding\":\"8px 8px 8px 8px\",\"image_browser_image_title_align\":\"top\",\"image_browser_img_font_color\":\"000000\",\"image_browser_img_font_family\":\"Ubuntu\",\"image_browser_img_font_size\":15,\"image_browser_margin\":\"2px auto\",\"image_browser_padding\":\"4px\",\"image_browser_transparent\":80,\"lightbox_bg_color\":\"FFFFFF\",\"lightbox_bg_transparent\":100,\"lightbox_close_btn_bg_color\":\"FFFFFF\",\"lightbox_close_btn_border_color\":\"FFFFFF\",\"lightbox_close_btn_border_radius\":\"16px\",\"lightbox_close_btn_border_style\":\"none\",\"lightbox_close_btn_border_width\":2,\"lightbox_close_btn_box_shadow\":\"\",\"lightbox_close_btn_color\":\"808080\",\"lightbox_close_btn_full_color\":\"000000\",\"lightbox_close_btn_height\":30,\"lightbox_close_btn_right\":\"-15\",\"lightbox_close_btn_size\":20,\"lightbox_close_btn_top\":\"-20\",\"lightbox_close_btn_transparent\":60,\"lightbox_close_btn_width\":30,\"lightbox_close_rl_btn_hover_color\":\"808080\",\"lightbox_comment_author_font_size\":14,\"lightbox_comment_bg_color\":\"FFFFFF\",\"lightbox_comment_body_font_size\":12,\"lightbox_comment_button_bg_color\":\"2F2F2F\",\"lightbox_comment_button_border_color\":\"666666\",\"lightbox_comment_button_border_radius\":\"7px\",\"lightbox_comment_button_border_style\":\"none\",\"lightbox_comment_button_border_width\":1,\"lightbox_comment_button_padding\":\"10px 10px\",\"lightbox_comment_date_font_size\":10,\"lightbox_comment_font_color\":\"7A7A7A\",\"lightbox_comment_font_size\":12,\"lightbox_comment_font_style\":\"Ubuntu\",\"lightbox_comment_input_bg_color\":\"F7F8F9\",\"lightbox_comment_input_border_color\":\"EBEBEB\",\"lightbox_comment_input_border_radius\":\"7px\",\"lightbox_comment_input_border_style\":\"none\",\"lightbox_comment_input_border_width\":2,\"lightbox_comment_input_padding\":\"5px\",\"lightbox_comment_pos\":\"left\",\"lightbox_comment_separator_color\":\"383838\",\"lightbox_comment_separator_style\":\"none\",\"lightbox_comment_separator_width\":20,\"lightbox_comment_share_button_color\":\"808080\",\"lightbox_comment_width\":350,\"lightbox_ctrl_btn_align\":\"center\",\"lightbox_ctrl_btn_color\":\"808080\",\"lightbox_ctrl_btn_height\":20,\"lightbox_ctrl_btn_margin_left\":7,\"lightbox_ctrl_btn_margin_top\":10,\"lightbox_ctrl_btn_pos\":\"bottom\",\"lightbox_ctrl_btn_transparent\":100,\"lightbox_ctrl_cont_bg_color\":\"FFFFFF\",\"lightbox_ctrl_cont_border_radius\":4,\"lightbox_ctrl_cont_transparent\":85,\"lightbox_description_color\":\"B0B0B0\",\"lightbox_description_font_size\":\"13\",\"lightbox_description_font_style\":\"Ubuntu\",\"lightbox_description_font_weight\":\"bold\",\"lightbox_filmstrip_pos\":\"bottom\",\"lightbox_filmstrip_rl_bg_color\":\"EBEBEB\",\"lightbox_filmstrip_rl_btn_color\":\"808080\",\"lightbox_filmstrip_rl_btn_size\":20,\"lightbox_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"lightbox_filmstrip_thumb_active_border_width\":0,\"lightbox_filmstrip_thumb_border_color\":\"000000\",\"lightbox_filmstrip_thumb_border_radius\":\"0\",\"lightbox_filmstrip_thumb_border_style\":\"none\",\"lightbox_filmstrip_thumb_border_width\":1,\"lightbox_filmstrip_thumb_deactive_transparent\":80,\"lightbox_filmstrip_thumb_margin\":\"0 1px\",\"lightbox_hit_align\":\"left\",\"lightbox_hit_bg_color\":\"000000\",\"lightbox_hit_bg_transparent\":\"70\",\"lightbox_hit_border_color\":\"000000\",\"lightbox_hit_border_radius\":\"5px\",\"lightbox_hit_border_style\":\"none\",\"lightbox_hit_border_width\":\"1\",\"lightbox_hit_color\":\"FFFFFF\",\"lightbox_hit_font_size\":14,\"lightbox_hit_font_style\":\"Ubuntu\",\"lightbox_hit_font_weight\":\"normal\",\"lightbox_hit_margin\":\"0 5px\",\"lightbox_hit_padding\":\"5px\",\"lightbox_hit_pos\":\"bottom\",\"lightbox_info_align\":\"left\",\"lightbox_info_bg_color\":\"FFFFFF\",\"lightbox_info_bg_transparent\":\"70\",\"lightbox_info_border_color\":\"000000\",\"lightbox_info_border_radius\":\"0px\",\"lightbox_info_border_style\":\"none\",\"lightbox_info_border_width\":\"1\",\"lightbox_info_margin\":\"10px 10px -5px 10px\",\"lightbox_info_padding\":\"10px 7px 44px 10px\",\"lightbox_info_pos\":\"bottom\",\"lightbox_overlay_bg_color\":\"EEEEEE\",\"lightbox_overlay_bg_transparent\":60,\"lightbox_rate_align\":\"left\",\"lightbox_rate_color\":\"F9D062\",\"lightbox_rate_hover_color\":\"F7B50E\",\"lightbox_rate_icon\":\"star\",\"lightbox_rate_padding\":\"15px\",\"lightbox_rate_pos\":\"top\",\"lightbox_rate_size\":\"20\",\"lightbox_rate_stars_count\":\"5\",\"lightbox_rl_btn_bg_color\":\"FFFFFF\",\"lightbox_rl_btn_border_color\":\"FFFFFF\",\"lightbox_rl_btn_border_radius\":\"20px\",\"lightbox_rl_btn_border_style\":\"none\",\"lightbox_rl_btn_border_width\":0,\"lightbox_rl_btn_box_shadow\":\"\",\"lightbox_rl_btn_color\":\"ADADAD\",\"lightbox_rl_btn_height\":35,\"lightbox_rl_btn_size\":25,\"lightbox_rl_btn_style\":\"bwg-icon-angle\",\"lightbox_rl_btn_transparent\":\"60\",\"lightbox_rl_btn_width\":35,\"lightbox_title_color\":\"808080\",\"lightbox_title_font_size\":\"16\",\"lightbox_title_font_style\":\"Ubuntu\",\"lightbox_title_font_weight\":\"bold\",\"lightbox_toggle_btn_height\":20,\"lightbox_toggle_btn_width\":100,\"masonry_container_margin\":\"1\",\"masonry_description_color\":\"323A45\",\"masonry_description_font_size\":16,\"masonry_description_font_style\":\"Ubuntu\",\"masonry_thumb_align\":\"center\",\"masonry_thumb_bg_color\":\"000000\",\"masonry_thumb_bg_transparent\":\"0\",\"masonry_thumb_border_color\":\"CCCCCC\",\"masonry_thumb_border_radius\":\"0\",\"masonry_thumb_border_style\":\"none\",\"masonry_thumb_border_width\":\"0\",\"masonry_thumb_gal_title_align\":\"center\",\"masonry_thumb_gal_title_font_color\":\"323A45\",\"masonry_thumb_gal_title_font_size\":16,\"masonry_thumb_gal_title_font_style\":\"Ubuntu\",\"masonry_thumb_gal_title_font_weight\":\"bold\",\"masonry_thumb_gal_title_margin\":\"2px\",\"masonry_thumb_gal_title_shadow\":\"\",\"masonry_thumb_hover_effect\":\"zoom\",\"masonry_thumb_hover_effect_value\":\"1.08\",\"masonry_thumb_padding\":\"4\",\"masonry_thumb_title_font_color\":\"323A45\",\"masonry_thumb_title_font_color_hover\":\"FFFFFF\",\"masonry_thumb_title_font_size\":16,\"masonry_thumb_title_font_style\":\"Ubuntu\",\"masonry_thumb_title_font_weight\":\"bold\",\"masonry_thumb_title_margin\":\"2px\",\"masonry_thumb_transition\":\"1\",\"masonry_thumb_transparent\":\"100\",\"masonry_thumb_bg_transparency\":\"30\",\"masonry_thumbs_bg_color\":\"FFFFFF\",\"mosaic_container_margin\":\"1\",\"mosaic_thumb_align\":\"center\",\"mosaic_thumb_bg_color\":\"000000\",\"mosaic_thumb_bg_transparent\":\"0\",\"mosaic_thumb_border_color\":\"CCCCCC\",\"mosaic_thumb_border_radius\":\"0\",\"mosaic_thumb_border_style\":\"none\",\"mosaic_thumb_border_width\":\"0\",\"mosaic_thumb_gal_title_align\":\"center\",\"mosaic_thumb_gal_title_font_color\":\"323A45\",\"mosaic_thumb_gal_title_font_size\":16,\"mosaic_thumb_gal_title_font_style\":\"Ubuntu\",\"mosaic_thumb_gal_title_font_weight\":\"bold\",\"mosaic_thumb_gal_title_margin\":\"2px\",\"mosaic_thumb_gal_title_shadow\":\"\",\"mosaic_thumb_hover_effect\":\"zoom\",\"mosaic_thumb_hover_effect_value\":\"1.08\",\"mosaic_thumb_padding\":\"2\",\"mosaic_thumb_title_font_color\":\"323A45\",\"mosaic_thumb_title_font_color_hover\":\"FFFFFF\",\"mosaic_thumb_title_font_size\":16,\"mosaic_thumb_title_font_style\":\"Ubuntu\",\"mosaic_thumb_title_font_weight\":\"bold\",\"mosaic_thumb_title_margin\":\"2px\",\"mosaic_thumb_title_shadow\":\"\",\"mosaic_thumb_transition\":\"1\",\"mosaic_thumb_transparent\":\"100\",\"mosaic_thumb_bg_transparency\":\"30\",\"mosaic_thumbs_bg_color\":\"FFFFFF\",\"page_nav_align\":\"center\",\"page_nav_border_color\":\"E3E3E3\",\"page_nav_border_radius\":\"0\",\"page_nav_border_style\":\"solid\",\"page_nav_border_width\":1,\"page_nav_box_shadow\":\"0\",\"page_nav_button_bg_color\":\"FFFFFF\",\"page_nav_button_bg_transparent\":100,\"page_nav_button_text\":0,\"page_nav_button_transition\":1,\"page_nav_font_color\":\"666666\",\"page_nav_font_size\":12,\"page_nav_font_style\":\"Ubuntu\",\"page_nav_font_weight\":\"bold\",\"page_nav_margin\":\"0\",\"page_nav_number\":0,\"page_nav_padding\":\"3px 6px\",\"page_nav_position\":\"bottom\",\"slideshow_close_btn_transparent\":100,\"slideshow_close_rl_btn_hover_color\":\"BABABA\",\"slideshow_cont_bg_color\":\"F2F2F2\",\"slideshow_description_background_color\":\"000000\",\"slideshow_description_border_radius\":\"0\",\"slideshow_description_color\":\"FFFFFF\",\"slideshow_description_font\":\"Ubuntu\",\"slideshow_description_font_size\":14,\"slideshow_description_opacity\":70,\"slideshow_description_padding\":\"5px 10px 5px 10px\",\"slideshow_dots_active_background_color\":\"FFFFFF\",\"slideshow_dots_active_border_color\":\"000000\",\"slideshow_dots_active_border_width\":1,\"slideshow_dots_background_color\":\"F2D22E\",\"slideshow_dots_border_radius\":\"5px\",\"slideshow_dots_height\":12,\"slideshow_dots_margin\":3,\"slideshow_dots_width\":12,\"slideshow_filmstrip_pos\":\"bottom\",\"slideshow_filmstrip_rl_bg_color\":\"F2F2F2\",\"slideshow_filmstrip_rl_btn_color\":\"BABABA\",\"slideshow_filmstrip_rl_btn_size\":20,\"slideshow_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"slideshow_filmstrip_thumb_active_border_width\":0,\"slideshow_filmstrip_thumb_border_color\":\"000000\",\"slideshow_filmstrip_thumb_border_radius\":\"0\",\"slideshow_filmstrip_thumb_border_style\":\"none\",\"slideshow_filmstrip_thumb_border_width\":0,\"slideshow_filmstrip_thumb_deactive_transparent\":100,\"slideshow_filmstrip_thumb_margin\":\"0px 2px 0 0 \",\"slideshow_play_pause_btn_size\":35,\"slideshow_rl_btn_bg_color\":\"FFFFFF\",\"slideshow_rl_btn_border_color\":\"FFFFFF\",\"slideshow_rl_btn_border_radius\":\"20px\",\"slideshow_rl_btn_border_style\":\"none\",\"slideshow_rl_btn_border_width\":0,\"slideshow_rl_btn_box_shadow\":\"\",\"slideshow_rl_btn_color\":\"D6D6D6\",\"slideshow_rl_btn_height\":37,\"slideshow_rl_btn_size\":12,\"slideshow_rl_btn_style\":\"bwg-icon-angle\",\"slideshow_rl_btn_width\":37,\"slideshow_title_background_color\":\"000000\",\"slideshow_title_border_radius\":\"5px\",\"slideshow_title_color\":\"FFFFFF\",\"slideshow_title_font\":\"Ubuntu\",\"slideshow_title_font_size\":16,\"slideshow_title_opacity\":70,\"slideshow_title_padding\":\"0 0 0 0\",\"thumb_align\":\"center\",\"thumb_bg_color\":\"000000\",\"thumb_bg_transparent\":0,\"thumb_border_color\":\"CCCCCC\",\"thumb_border_radius\":\"0\",\"thumb_border_style\":\"none\",\"thumb_border_width\":0,\"thumb_box_shadow\":\"\",\"thumb_gal_title_align\":\"center\",\"thumb_gal_title_font_color\":\"323A45\",\"thumb_gal_title_font_size\":18,\"thumb_gal_title_font_style\":\"Ubuntu\",\"thumb_gal_title_font_weight\":\"bold\",\"thumb_gal_title_margin\":\"2px\",\"thumb_gal_title_shadow\":\"\",\"thumb_hover_effect\":\"zoom\",\"thumb_hover_effect_value\":\"1.08\",\"thumb_margin\":\"4\",\"thumb_padding\":\"0\",\"thumb_title_font_color\":\"323A45\",\"thumb_title_font_color_hover\":\"FFFFFF\",\"thumb_title_font_size\":16,\"thumb_title_font_style\":\"Ubuntu\",\"thumb_title_font_weight\":\"bold\",\"thumb_title_margin\":\"2px\",\"thumb_description_font_color\":\"323A45\",\"thumb_description_font_style\":\"Ubuntu\",\"thumb_description_font_size\":12,\"thumb_title_pos\":\"bottom\",\"thumb_title_shadow\":\"\",\"thumb_transition\":1,\"thumb_transparent\":100,\"thumb_bg_transparency\":30,\"thumbs_bg_color\":\"FFFFFF\",\"tags_view\":1,\"tags_but_font_color\":\"323A45\",\"tags_but_font_size\":14,\"tags_but_font_style\":\"Ubuntu\",\"tags_but_font_weight\":\"normal\",\"tags_but_margin\":\"0px 5px 10px 5px\",\"tags_but_padding\":\"6px 6px 6px 6px\",\"tags_but_border_width\":0,\"tags_but_border_style\":\"none\",\"tags_but_border_color\":\"E9EBEE\",\"tags_but_border_radius\":\"4px\",\"tags_but_bg_color\":\"E9EBEE\",\"tags_but_active_bg_color\":\"2160B5\",\"tags_but_active_color\":\"FFFFFF\",\"tags_but_see_all_size\":14,\"tags_but_see_all_color\":\"323A45\",\"tags_but_see_all_back_color\":\"F8F8F8\",\"tags_but_see_all_border_w\":1,\"tags_but_see_all_border_s\":\"solid\",\"tags_but_see_all_border_c\":\"E5E5E5\",\"tags_but_see_all_border_r\":\"20px\"}', 1),
(2, 'Dark', '{\"album_compact_back_font_color\":\"323A45\",\"album_compact_back_font_size\":15,\"album_compact_back_font_style\":\"Ubuntu\",\"album_compact_back_font_weight\":\"normal\",\"album_compact_back_padding\":\"0\",\"album_compact_gal_title_align\":\"center\",\"album_compact_gal_title_font_color\":\"323A45\",\"album_compact_gal_title_font_size\":18,\"album_compact_gal_title_font_style\":\"Ubuntu\",\"album_compact_gal_title_font_weight\":\"bold\",\"album_compact_gal_title_margin\":\"0 2px 2px 2px\",\"album_compact_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_compact_thumb_align\":\"center\",\"album_compact_thumb_bg_color\":\"000000\",\"album_compact_thumb_bg_transparent\":100,\"album_compact_thumb_border_color\":\"000000\",\"album_compact_thumb_border_radius\":\"0\",\"album_compact_thumb_border_style\":\"none\",\"album_compact_thumb_border_width\":1,\"album_compact_thumb_box_shadow\":\"\",\"album_compact_thumb_hover_effect\":\"rotate\",\"album_compact_thumb_hover_effect_value\":\"2deg\",\"album_compact_thumb_margin\":4,\"album_compact_thumb_padding\":4,\"album_compact_thumb_title_pos\":\"bottom\",\"album_compact_thumb_transition\":1,\"album_compact_thumb_transparent\":100,\"album_compact_thumb_bg_transparency\":30,\"album_compact_thumbs_bg_color\":\"FFFFFF\",\"album_compact_title_font_color\":\"CCCCCC\",\"album_compact_title_font_color_hover\":\"FFFFFF\",\"album_compact_title_font_size\":16,\"album_compact_title_font_style\":\"Ubuntu\",\"album_compact_title_font_weight\":\"bold\",\"album_compact_title_margin\":\"5px\",\"album_compact_title_shadow\":\"\",\"album_extended_back_font_color\":\"323A45\",\"album_extended_back_font_size\":15,\"album_extended_back_font_style\":\"Ubuntu\",\"album_extended_back_font_weight\":\"bold\",\"album_extended_back_padding\":\"0\",\"album_extended_desc_font_color\":\"000000\",\"album_extended_desc_font_size\":14,\"album_extended_desc_font_style\":\"Ubuntu\",\"album_extended_desc_font_weight\":\"normal\",\"album_extended_desc_more_color\":\"FFC933\",\"album_extended_desc_more_size\":12,\"album_extended_desc_padding\":\"2px\",\"album_extended_desc_span_border_color\":\"CCCCCC\",\"album_extended_desc_span_border_style\":\"none\",\"album_extended_desc_span_border_width\":1,\"album_extended_div_bg_color\":\"FFFFFF\",\"album_extended_div_bg_transparent\":0,\"album_extended_div_border_radius\":\"\",\"album_extended_div_margin\":\"0 0 5px 0\",\"album_extended_div_padding\":10,\"album_extended_div_separator_color\":\"CCCCCC\",\"album_extended_div_separator_style\":\"none\",\"album_extended_div_separator_width\":1,\"album_extended_gal_title_align\":\"center\",\"album_extended_gal_title_font_color\":\"323A45\",\"album_extended_gal_title_font_size\":18,\"album_extended_gal_title_font_style\":\"Ubuntu\",\"album_extended_gal_title_font_weight\":\"bold\",\"album_extended_gal_title_margin\":\"0 2px 2px 2px\",\"album_extended_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_extended_text_div_bg_color\":\"FFFFFF\",\"album_extended_text_div_border_color\":\"CCCCCC\",\"album_extended_text_div_border_radius\":\"0\",\"album_extended_text_div_border_style\":\"none\",\"album_extended_text_div_border_width\":1,\"album_extended_text_div_padding\":\"5px\",\"album_extended_thumb_align\":\"left\",\"album_extended_thumb_bg_color\":\"E8E8E8\",\"album_extended_thumb_bg_transparent\":100,\"album_extended_thumb_border_color\":\"E8E8E8\",\"album_extended_thumb_border_radius\":\"0\",\"album_extended_thumb_border_style\":\"none\",\"album_extended_thumb_border_width\":4,\"album_extended_thumb_box_shadow\":\"\",\"album_extended_thumb_div_bg_color\":\"FFFFFF\",\"album_extended_thumb_div_border_color\":\"CCCCCC\",\"album_extended_thumb_div_border_radius\":\"\",\"album_extended_thumb_div_border_style\":\"none\",\"album_extended_thumb_div_border_width\":0,\"album_extended_thumb_div_padding\":\"0\",\"album_extended_thumb_hover_effect\":\"rotate\",\"album_extended_thumb_hover_effect_value\":\"2deg\",\"album_extended_thumb_margin\":2,\"album_extended_thumb_padding\":4,\"album_extended_thumb_transition\":0,\"album_extended_thumb_transparent\":100,\"album_extended_thumbs_bg_color\":\"FFFFFF\",\"album_extended_title_desc_alignment\":\"top\",\"album_extended_title_font_color\":\"000000\",\"album_extended_title_font_size\":16,\"album_extended_title_font_style\":\"Ubuntu\",\"album_extended_title_font_weight\":\"bold\",\"album_extended_title_margin_bottom\":2,\"album_extended_title_padding\":\"2px\",\"album_extended_title_span_border_color\":\"CCCCCC\",\"album_extended_title_span_border_style\":\"none\",\"album_extended_title_span_border_width\":1,\"album_masonry_back_font_color\":\"323A45\",\"album_masonry_back_font_size\":15,\"album_masonry_back_font_style\":\"Ubuntu\",\"album_masonry_back_font_weight\":\"normal\",\"album_masonry_back_padding\":\"0\",\"album_masonry_container_margin\":1,\"album_masonry_gal_title_align\":\"center\",\"album_masonry_gal_title_font_color\":\"323A45\",\"album_masonry_gal_title_font_size\":18,\"album_masonry_gal_title_font_style\":\"Ubuntu\",\"album_masonry_gal_title_font_weight\":\"bold\",\"album_masonry_gal_title_margin\":\"0 2px 2px 2px\",\"album_masonry_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_masonry_thumb_align\":\"center\",\"album_masonry_thumb_bg_color\":\"000000\",\"album_masonry_thumb_bg_transparent\":100,\"album_masonry_thumb_border_color\":\"000000\",\"album_masonry_thumb_border_radius\":\"0\",\"album_masonry_thumb_border_style\":\"none\",\"album_masonry_thumb_border_width\":1,\"album_masonry_thumb_box_shadow\":\"\",\"album_masonry_thumb_hover_effect\":\"zoom\",\"album_masonry_thumb_hover_effect_value\":\"2deg\",\"album_masonry_thumb_margin\":4,\"album_masonry_thumb_padding\":4,\"album_masonry_thumb_title_font_color_hover\":\"FFFFFF\",\"album_masonry_thumb_title_pos\":\"bottom\",\"album_masonry_thumb_transition\":1,\"album_masonry_thumb_transparent\":100,\"album_masonry_thumbs_bg_color\":\"FFFFFF\",\"album_masonry_title_font_color\":\"323A45\",\"album_masonry_title_font_size\":16,\"album_masonry_title_font_style\":\"Ubuntu\",\"album_masonry_title_font_weight\":\"bold\",\"album_masonry_title_margin\":\"5px\",\"album_masonry_title_shadow\":\"\",\"blog_style_align\":\"center\",\"blog_style_bg_color\":\"E8E8E8\",\"blog_style_border_color\":\"CCCCCC\",\"blog_style_border_radius\":\"0\",\"blog_style_border_style\":\"none\",\"blog_style_border_width\":1,\"blog_style_box_shadow\":\"\",\"blog_style_gal_title_align\":\"center\",\"blog_style_gal_title_font_color\":\"323A45\",\"blog_style_gal_title_font_size\":16,\"blog_style_gal_title_font_style\":\"Ubuntu\",\"blog_style_gal_title_font_weight\":\"bold\",\"blog_style_gal_title_margin\":\"2px\",\"blog_style_gal_title_shadow\":\"0px 0px 0px #888888\",\"blog_style_img_font_color\":\"000000\",\"blog_style_img_font_family\":\"Ubuntu\",\"blog_style_img_font_size\":16,\"blog_style_margin\":\"2px\",\"blog_style_padding\":\"4px\",\"blog_style_share_buttons_align\":\"right\",\"blog_style_share_buttons_bg_color\":\"FFFFFF\",\"blog_style_share_buttons_bg_transparent\":0,\"blog_style_share_buttons_border_color\":\"000000\",\"blog_style_share_buttons_border_radius\":\"0\",\"blog_style_share_buttons_border_style\":\"none\",\"blog_style_share_buttons_border_width\":0,\"blog_style_share_buttons_color\":\"A1A1A1\",\"blog_style_share_buttons_font_size\":20,\"blog_style_share_buttons_margin\":\"5px auto 10px auto\",\"blog_style_transparent\":70,\"carousel_caption_background_color\":\"000000\",\"carousel_caption_bottom\":0,\"carousel_caption_p_color\":\"FFFFFF\",\"carousel_caption_p_font_size\":14,\"carousel_caption_p_font_weight\":\"bold\",\"carousel_caption_p_mergin\":0,\"carousel_caption_p_pedding\":5,\"carousel_close_btn_transparent\":100,\"carousel_close_rl_btn_hover_color\":\"CCCCCC\",\"carousel_cont_bg_color\":\"000000\",\"carousel_cont_btn_transparent\":0,\"carousel_feature_border_color\":\"5D204F\",\"carousel_feature_border_style\":\"solid\",\"carousel_feature_border_width\":2,\"carousel_font_family\":\"Ubuntu\",\"carousel_mergin_bottom\":\"0.5\",\"carousel_play_pause_btn_size\":20,\"carousel_rl_btn_bg_color\":\"000000\",\"carousel_rl_btn_border_color\":\"FFFFFF\",\"carousel_rl_btn_border_radius\":\"20px\",\"carousel_rl_btn_border_style\":\"none\",\"carousel_rl_btn_border_width\":0,\"carousel_rl_btn_color\":\"FFFFFF\",\"carousel_rl_btn_height\":40,\"carousel_rl_btn_size\":20,\"carousel_rl_btn_style\":\"bwg-icon-chevron\",\"carousel_rl_btn_width\":40,\"carousel_title_border_radius\":\"5px\",\"carousel_title_opacity\":100,\"carousel_gal_title_align\":\"center\",\"carousel_gal_title_font_color\":\"323A45\",\"carousel_gal_title_font_size\":16,\"carousel_gal_title_font_style\":\"Ubuntu\",\"carousel_gal_title_font_weight\":\"bold\",\"carousel_gal_title_margin\":\"2px\",\"carousel_gal_title_shadow\":\"0px 0px 0px #888888\",\"compact_container_margin\":\"1\",\"container_margin\":\"1\",\"image_browser_align\":\"center\",\"image_browser_bg_color\":\"E8E8E8\",\"image_browser_border_color\":\"E8E8E8\",\"image_browser_border_radius\":\"2px\",\"image_browser_border_style\":\"none\",\"image_browser_border_width\":1,\"image_browser_box_shadow\":\"\",\"image_browser_full_bg_color\":\"FFFFFF\",\"image_browser_full_border_color\":\"EDEDED\",\"image_browser_full_border_radius\":\"0\",\"image_browser_full_border_style\":\"solid\",\"image_browser_full_border_width\":1,\"image_browser_full_padding\":\"4px\",\"image_browser_full_transparent\":90,\"image_browser_gal_title_align\":\"center\",\"image_browser_gal_title_font_color\":\"323A45\",\"image_browser_gal_title_font_size\":16,\"image_browser_gal_title_font_style\":\"Ubuntu\",\"image_browser_gal_title_font_weight\":\"bold\",\"image_browser_gal_title_margin\":\"2px\",\"image_browser_gal_title_shadow\":\"0px 0px 0px #888888\",\"image_browser_image_description_align\":\"center\",\"image_browser_image_description_bg_color\":\"E8E8E8\",\"image_browser_image_description_border_color\":\"FFFFFF\",\"image_browser_image_description_border_radius\":\"0\",\"image_browser_image_description_border_style\":\"none\",\"image_browser_image_description_border_width\":1,\"image_browser_image_description_margin\":\"24px 0px 0px 0px\",\"image_browser_image_description_padding\":\"8px 8px 8px 8px\",\"image_browser_image_title_align\":\"top\",\"image_browser_img_font_color\":\"000000\",\"image_browser_img_font_family\":\"Ubuntu\",\"image_browser_img_font_size\":14,\"image_browser_margin\":\"2px auto\",\"image_browser_padding\":\"4px\",\"image_browser_transparent\":80,\"lightbox_bg_color\":\"000000\",\"lightbox_bg_transparent\":100,\"lightbox_close_btn_bg_color\":\"000000\",\"lightbox_close_btn_border_color\":\"FFFFFF\",\"lightbox_close_btn_border_radius\":\"16px\",\"lightbox_close_btn_border_style\":\"none\",\"lightbox_close_btn_border_width\":0,\"lightbox_close_btn_box_shadow\":\"\",\"lightbox_close_btn_color\":\"FFFFFF\",\"lightbox_close_btn_full_color\":\"FFFFFF\",\"lightbox_close_btn_height\":20,\"lightbox_close_btn_right\":\"-10\",\"lightbox_close_btn_size\":10,\"lightbox_close_btn_top\":\"-10\",\"lightbox_close_btn_transparent\":95,\"lightbox_close_btn_width\":20,\"lightbox_close_rl_btn_hover_color\":\"FFFFFF\",\"lightbox_comment_author_font_size\":14,\"lightbox_comment_bg_color\":\"000000\",\"lightbox_comment_body_font_size\":12,\"lightbox_comment_button_bg_color\":\"333333\",\"lightbox_comment_button_border_color\":\"666666\",\"lightbox_comment_button_border_radius\":\"3px\",\"lightbox_comment_button_border_style\":\"none\",\"lightbox_comment_button_border_width\":1,\"lightbox_comment_button_padding\":\"3px 10px\",\"lightbox_comment_date_font_size\":10,\"lightbox_comment_font_color\":\"CCCCCC\",\"lightbox_comment_font_size\":12,\"lightbox_comment_font_style\":\"Ubuntu\",\"lightbox_comment_input_bg_color\":\"333333\",\"lightbox_comment_input_border_color\":\"666666\",\"lightbox_comment_input_border_radius\":\"0\",\"lightbox_comment_input_border_style\":\"none\",\"lightbox_comment_input_border_width\":1,\"lightbox_comment_input_padding\":\"3px\",\"lightbox_comment_pos\":\"left\",\"lightbox_comment_separator_color\":\"2B2B2B\",\"lightbox_comment_separator_style\":\"solid\",\"lightbox_comment_separator_width\":1,\"lightbox_comment_share_button_color\":\"FFFFFF\",\"lightbox_comment_width\":400,\"lightbox_ctrl_btn_align\":\"center\",\"lightbox_ctrl_btn_color\":\"FFFFFF\",\"lightbox_ctrl_btn_height\":20,\"lightbox_ctrl_btn_margin_left\":7,\"lightbox_ctrl_btn_margin_top\":10,\"lightbox_ctrl_btn_pos\":\"bottom\",\"lightbox_ctrl_btn_transparent\":80,\"lightbox_ctrl_cont_bg_color\":\"000000\",\"lightbox_ctrl_cont_border_radius\":4,\"lightbox_ctrl_cont_transparent\":80,\"lightbox_description_color\":\"FFFFFF\",\"lightbox_description_font_size\":14,\"lightbox_description_font_style\":\"Ubuntu\",\"lightbox_description_font_weight\":\"normal\",\"lightbox_filmstrip_pos\":\"top\",\"lightbox_filmstrip_rl_bg_color\":\"2B2B2B\",\"lightbox_filmstrip_rl_btn_color\":\"FFFFFF\",\"lightbox_filmstrip_rl_btn_size\":20,\"lightbox_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"lightbox_filmstrip_thumb_active_border_width\":0,\"lightbox_filmstrip_thumb_border_color\":\"000000\",\"lightbox_filmstrip_thumb_border_radius\":\"0\",\"lightbox_filmstrip_thumb_border_style\":\"none\",\"lightbox_filmstrip_thumb_border_width\":1,\"lightbox_filmstrip_thumb_deactive_transparent\":80,\"lightbox_filmstrip_thumb_margin\":\"0 1px\",\"lightbox_hit_align\":\"left\",\"lightbox_hit_bg_color\":\"000000\",\"lightbox_hit_bg_transparent\":70,\"lightbox_hit_border_color\":\"000000\",\"lightbox_hit_border_radius\":\"5px\",\"lightbox_hit_border_style\":\"none\",\"lightbox_hit_border_width\":1,\"lightbox_hit_color\":\"FFFFFF\",\"lightbox_hit_font_size\":14,\"lightbox_hit_font_style\":\"Ubuntu\",\"lightbox_hit_font_weight\":\"normal\",\"lightbox_hit_margin\":\"0 5px\",\"lightbox_hit_padding\":\"5px\",\"lightbox_hit_pos\":\"bottom\",\"lightbox_info_align\":\"right\",\"lightbox_info_bg_color\":\"000000\",\"lightbox_info_bg_transparent\":70,\"lightbox_info_border_color\":\"000000\",\"lightbox_info_border_radius\":\"5px\",\"lightbox_info_border_style\":\"none\",\"lightbox_info_border_width\":1,\"lightbox_info_margin\":\"15px\",\"lightbox_info_padding\":\"5px\",\"lightbox_info_pos\":\"top\",\"lightbox_overlay_bg_color\":\"000000\",\"lightbox_overlay_bg_transparent\":70,\"lightbox_rate_align\":\"right\",\"lightbox_rate_color\":\"F9D062\",\"lightbox_rate_hover_color\":\"F7B50E\",\"lightbox_rate_icon\":\"star\",\"lightbox_rate_padding\":\"15px\",\"lightbox_rate_pos\":\"bottom\",\"lightbox_rate_size\":20,\"lightbox_rate_stars_count\":5,\"lightbox_rl_btn_bg_color\":\"000000\",\"lightbox_rl_btn_border_color\":\"FFFFFF\",\"lightbox_rl_btn_border_radius\":\"20px\",\"lightbox_rl_btn_border_style\":\"none\",\"lightbox_rl_btn_border_width\":2,\"lightbox_rl_btn_box_shadow\":\"\",\"lightbox_rl_btn_color\":\"FFFFFF\",\"lightbox_rl_btn_height\":40,\"lightbox_rl_btn_size\":20,\"lightbox_rl_btn_style\":\"bwg-icon-chevron\",\"lightbox_rl_btn_transparent\":80,\"lightbox_rl_btn_width\":40,\"lightbox_title_color\":\"FFFFFF\",\"lightbox_title_font_size\":18,\"lightbox_title_font_style\":\"Ubuntu\",\"lightbox_title_font_weight\":\"bold\",\"lightbox_toggle_btn_height\":14,\"lightbox_toggle_btn_width\":100,\"masonry_container_margin\":\"1\",\"masonry_description_color\":\"323A45\",\"masonry_description_font_size\":16,\"masonry_description_font_style\":\"Ubuntu\",\"masonry_thumb_align\":\"center\",\"masonry_thumb_bg_color\":\"000000\",\"masonry_thumb_bg_transparent\":0,\"masonry_thumb_border_color\":\"CCCCCC\",\"masonry_thumb_border_radius\":\"2px\",\"masonry_thumb_border_style\":\"none\",\"masonry_thumb_border_width\":1,\"masonry_thumb_gal_title_align\":\"center\",\"masonry_thumb_gal_title_font_color\":\"323A45\",\"masonry_thumb_gal_title_font_size\":16,\"masonry_thumb_gal_title_font_style\":\"Ubuntu\",\"masonry_thumb_gal_title_font_weight\":\"bold\",\"masonry_thumb_gal_title_margin\":\"2px\",\"masonry_thumb_gal_title_shadow\":\"\",\"masonry_thumb_hover_effect\":\"zoom\",\"masonry_thumb_hover_effect_value\":\"1.08\",\"masonry_thumb_padding\":4,\"masonry_thumb_title_font_color\":\"323A45\",\"masonry_thumb_title_font_color_hover\":\"FFFFFF\",\"masonry_thumb_title_font_size\":16,\"masonry_thumb_title_font_style\":\"Ubuntu\",\"masonry_thumb_title_font_weight\":\"bold\",\"masonry_thumb_title_margin\":\"2px\",\"masonry_thumb_transition\":1,\"masonry_thumb_transparent\":80,\"masonry_thumb_bg_transparency\":30,\"masonry_thumbs_bg_color\":\"FFFFFF\",\"mosaic_container_margin\":\"1\",\"mosaic_thumb_align\":\"center\",\"mosaic_thumb_bg_color\":\"000000\",\"mosaic_thumb_bg_transparent\":0,\"mosaic_thumb_border_color\":\"CCCCCC\",\"mosaic_thumb_border_radius\":\"2px\",\"mosaic_thumb_border_style\":\"none\",\"mosaic_thumb_border_width\":1,\"mosaic_thumb_gal_title_align\":\"center\",\"mosaic_thumb_gal_title_font_color\":\"323A45\",\"mosaic_thumb_gal_title_font_size\":16,\"mosaic_thumb_gal_title_font_style\":\"Ubuntu\",\"mosaic_thumb_gal_title_font_weight\":\"bold\",\"mosaic_thumb_gal_title_margin\":\"2px\",\"mosaic_thumb_gal_title_shadow\":\"\",\"mosaic_thumb_hover_effect\":\"rotate\",\"mosaic_thumb_hover_effect_value\":\"2deg\",\"mosaic_thumb_padding\":4,\"mosaic_thumb_title_font_color\":\"323A45\",\"mosaic_thumb_title_font_color_hover\":\"FFFFFF\",\"mosaic_thumb_title_font_size\":16,\"mosaic_thumb_title_font_style\":\"Ubuntu\",\"mosaic_thumb_title_font_weight\":\"bold\",\"mosaic_thumb_title_margin\":\"2px\",\"mosaic_thumb_title_shadow\":\"0px 0px 0px #888888\",\"mosaic_thumb_transition\":1,\"mosaic_thumb_transparent\":80,\"mosaic_thumb_bg_transparency\":30,\"mosaic_thumbs_bg_color\":\"FFFFFF\",\"page_nav_align\":\"center\",\"page_nav_border_color\":\"E3E3E3\",\"page_nav_border_radius\":\"0\",\"page_nav_border_style\":\"none\",\"page_nav_border_width\":1,\"page_nav_box_shadow\":\"0\",\"page_nav_button_bg_color\":\"FCFCFC\",\"page_nav_button_bg_transparent\":100,\"page_nav_button_text\":0,\"page_nav_button_transition\":1,\"page_nav_font_color\":\"666666\",\"page_nav_font_size\":12,\"page_nav_font_style\":\"Ubuntu\",\"page_nav_font_weight\":\"bold\",\"page_nav_margin\":\"0\",\"page_nav_number\":0,\"page_nav_padding\":\"3px 6px\",\"page_nav_position\":\"bottom\",\"slideshow_close_btn_transparent\":100,\"slideshow_close_rl_btn_hover_color\":\"DBDBDB\",\"slideshow_cont_bg_color\":\"000000\",\"slideshow_description_background_color\":\"000000\",\"slideshow_description_border_radius\":\"0\",\"slideshow_description_color\":\"FFFFFF\",\"slideshow_description_font\":\"Ubuntu\",\"slideshow_description_font_size\":14,\"slideshow_description_opacity\":70,\"slideshow_description_padding\":\"5px 10px 5px 10px\",\"slideshow_dots_active_background_color\":\"292929\",\"slideshow_dots_active_border_color\":\"FFC933\",\"slideshow_dots_active_border_width\":2,\"slideshow_dots_background_color\":\"292929\",\"slideshow_dots_border_radius\":\"10px\",\"slideshow_dots_height\":10,\"slideshow_dots_margin\":1,\"slideshow_dots_width\":10,\"slideshow_filmstrip_pos\":\"bottom\",\"slideshow_filmstrip_rl_bg_color\":\"303030\",\"slideshow_filmstrip_rl_btn_color\":\"FFFFFF\",\"slideshow_filmstrip_rl_btn_size\":20,\"slideshow_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"slideshow_filmstrip_thumb_active_border_width\":0,\"slideshow_filmstrip_thumb_border_color\":\"000000\",\"slideshow_filmstrip_thumb_border_radius\":\"0\",\"slideshow_filmstrip_thumb_border_style\":\"none\",\"slideshow_filmstrip_thumb_border_width\":1,\"slideshow_filmstrip_thumb_deactive_transparent\":80,\"slideshow_filmstrip_thumb_margin\":\"0 1px\",\"slideshow_play_pause_btn_size\":60,\"slideshow_rl_btn_bg_color\":\"000000\",\"slideshow_rl_btn_border_color\":\"FFFFFF\",\"slideshow_rl_btn_border_radius\":\"20px\",\"slideshow_rl_btn_border_style\":\"none\",\"slideshow_rl_btn_border_width\":0,\"slideshow_rl_btn_box_shadow\":\"\",\"slideshow_rl_btn_color\":\"FFFFFF\",\"slideshow_rl_btn_height\":40,\"slideshow_rl_btn_size\":20,\"slideshow_rl_btn_style\":\"bwg-icon-arrow\",\"slideshow_rl_btn_width\":40,\"slideshow_title_background_color\":\"000000\",\"slideshow_title_border_radius\":\"5px\",\"slideshow_title_color\":\"FFFFFF\",\"slideshow_title_font\":\"Ubuntu\",\"slideshow_title_font_size\":16,\"slideshow_title_opacity\":70,\"slideshow_title_padding\":\"5px 10px 5px 10px\",\"thumb_align\":\"center\",\"thumb_bg_color\":\"000000\",\"thumb_bg_transparent\":0,\"thumb_border_color\":\"FFFFFF\",\"thumb_border_radius\":\"0\",\"thumb_border_style\":\"none\",\"thumb_border_width\":5,\"thumb_box_shadow\":\"\",\"thumb_gal_title_align\":\"center\",\"thumb_gal_title_font_color\":\"323A45\",\"thumb_gal_title_font_size\":18,\"thumb_gal_title_font_style\":\"Ubuntu\",\"thumb_gal_title_font_weight\":\"bold\",\"thumb_gal_title_margin\":\"2px\",\"thumb_gal_title_shadow\":\"\",\"thumb_hover_effect\":\"zoom\",\"thumb_hover_effect_value\":\"1.08\",\"thumb_margin\":\"4\",\"thumb_padding\":\"0\",\"thumb_title_font_color\":\"323A45\",\"thumb_title_font_color_hover\":\"FFFFFF\",\"thumb_title_font_size\":16,\"thumb_title_font_style\":\"Ubuntu\",\"thumb_title_font_weight\":\"bold\",\"thumb_title_margin\":\"5px\",\"thumb_description_font_color\":\"323A45\",\"thumb_description_font_style\":\"Ubuntu\",\"thumb_description_font_size\":12,\"thumb_title_pos\":\"bottom\",\"thumb_title_shadow\":\"\",\"thumb_transition\":1,\"thumb_transparent\":100,\"thumb_bg_transparency\":30,\"thumbs_bg_color\":\"FFFFFF\",\"tags_view\":1,\"tags_but_font_color\":\"323A45\",\"tags_but_font_size\":14,\"tags_but_font_style\":\"Ubuntu\",\"tags_but_font_weight\":\"normal\",\"tags_but_margin\":\"0px 5px 10px 5px\",\"tags_but_padding\":\"6px 6px 6px 6px\",\"tags_but_border_width\":0,\"tags_but_border_style\":\"none\",\"tags_but_border_color\":\"E9EBEE\",\"tags_but_border_radius\":\"4px\",\"tags_but_bg_color\":\"E9EBEE\",\"tags_but_active_bg_color\":\"2160B5\",\"tags_but_active_color\":\"FFFFFF\",\"tags_but_see_all_size\":14,\"tags_but_see_all_color\":\"323A45\",\"tags_but_see_all_back_color\":\"F8F8F8\",\"tags_but_see_all_border_w\":1,\"tags_but_see_all_border_s\":\"solid\",\"tags_but_see_all_border_c\":\"E5E5E5\",\"tags_but_see_all_border_r\":\"20px\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Коментатор от WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-11-15 21:59:55', '2021-11-15 19:59:55', 'Привет, това е коментар.\nУправлението, промените, редактирането и триенето на коментарите става в секция Коментари на таблото.\nАватарите на потребителите, които коментират, идват от <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_album`
--

CREATE TABLE `wp_ngg_album` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previewpic` bigint(20) NOT NULL DEFAULT 0,
  `albumdesc` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sortorder` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageid` bigint(20) NOT NULL DEFAULT 0,
  `extras_post_id` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_gallery`
--

CREATE TABLE `wp_ngg_gallery` (
  `gid` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `galdesc` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pageid` bigint(20) NOT NULL DEFAULT 0,
  `previewpic` bigint(20) NOT NULL DEFAULT 0,
  `author` bigint(20) NOT NULL DEFAULT 0,
  `extras_post_id` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_ngg_gallery`
--

INSERT INTO `wp_ngg_gallery` (`gid`, `name`, `slug`, `path`, `title`, `galdesc`, `pageid`, `previewpic`, `author`, `extras_post_id`) VALUES
(1, 'main', 'main', '/wp-content/gallery/main/', 'main', NULL, 0, 0, 1, 66),
(2, 'other', 'other', '/wp-content/gallery/other/', 'other', NULL, 0, 0, 1, 74);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_pictures`
--

CREATE TABLE `wp_ngg_pictures` (
  `pid` bigint(20) NOT NULL,
  `image_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) NOT NULL DEFAULT 0,
  `galleryid` bigint(20) NOT NULL DEFAULT 0,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alttext` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `exclude` tinyint(4) DEFAULT 0,
  `sortorder` bigint(20) NOT NULL DEFAULT 0,
  `meta_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras_post_id` bigint(20) NOT NULL DEFAULT 0,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_ngg_pictures`
--

INSERT INTO `wp_ngg_pictures` (`pid`, `image_slug`, `post_id`, `galleryid`, `filename`, `description`, `alttext`, `imagedate`, `exclude`, `sortorder`, `meta_data`, `extras_post_id`, `updated_at`) VALUES
(1, 'transformation1', 0, 1, 'transformation1.jpg', '', 'transformation1', '2021-11-21 09:54:51', 0, 1, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6MTI5MCwiaGVpZ2h0IjoxMjkwLCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoidHJhbnNmb3JtYXRpb24xLmpwZyIsIndpZHRoIjoxMjkwLCJoZWlnaHQiOjEyOTAsImdlbmVyYXRlZCI6IjAuMTM4MTE4MDAgMTYzNzQ4ODQ5MSJ9fQ==', 67, 1637488491),
(2, 'transformation4', 0, 1, 'transformation4.jpg', '', 'transformation4', '2021-11-21 09:54:51', 0, 2, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6NzQ2LCJoZWlnaHQiOjgyMCwic2F2ZWQiOnRydWUsImJhY2t1cCI6eyJmaWxlbmFtZSI6InRyYW5zZm9ybWF0aW9uNC5qcGciLCJ3aWR0aCI6NzQ2LCJoZWlnaHQiOjgyMCwiZ2VuZXJhdGVkIjoiMC4xODA0MTIwMCAxNjM3NDg4NDkxIn19', 68, 1637488491),
(3, 'transformation3', 0, 1, 'transformation3.jpg', '', 'transformation3', '2021-11-21 09:54:51', 0, 3, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6MTIxNCwiaGVpZ2h0IjoxMjEyLCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoidHJhbnNmb3JtYXRpb24zLmpwZyIsIndpZHRoIjoxMjE0LCJoZWlnaHQiOjEyMTIsImdlbmVyYXRlZCI6IjAuMjA2MjU0MDAgMTYzNzQ4ODQ5MSJ9fQ==', 69, 1637488491),
(4, 'transformation2', 0, 1, 'transformation2.jpg', '', 'transformation2', '2021-11-21 09:54:51', 0, 4, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6OTQwLCJoZWlnaHQiOjc4OCwic2F2ZWQiOnRydWUsImJhY2t1cCI6eyJmaWxlbmFtZSI6InRyYW5zZm9ybWF0aW9uMi5qcGciLCJ3aWR0aCI6OTQwLCJoZWlnaHQiOjc4OCwiZ2VuZXJhdGVkIjoiMC4yMTIxMDIwMCAxNjM3NDg4NDkxIn19', 70, 1637488491),
(5, 'transformation1-1', 0, 2, 'transformation1.jpg', '', 'transformation1', '2021-11-21 09:59:58', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6MTI5MCwiaGVpZ2h0IjoxMjkwLCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoidHJhbnNmb3JtYXRpb24xLmpwZyIsIndpZHRoIjoxMjkwLCJoZWlnaHQiOjEyOTAsImdlbmVyYXRlZCI6IjAuODEyMzcyMDAgMTYzNzQ4ODc5OCJ9fQ==', 75, 1637488798),
(6, 'transformation2-1', 0, 2, 'transformation2.jpg', '', 'transformation2', '2021-11-21 09:59:58', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6OTQwLCJoZWlnaHQiOjc4OCwic2F2ZWQiOnRydWUsImJhY2t1cCI6eyJmaWxlbmFtZSI6InRyYW5zZm9ybWF0aW9uMi5qcGciLCJ3aWR0aCI6OTQwLCJoZWlnaHQiOjc4OCwiZ2VuZXJhdGVkIjoiMC44MTExMTgwMCAxNjM3NDg4Nzk4In19', 76, 1637488798),
(7, 'transformation3-1', 0, 2, 'transformation3.jpg', '', 'transformation3', '2021-11-21 09:59:58', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6MTIxNCwiaGVpZ2h0IjoxMjEyLCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoidHJhbnNmb3JtYXRpb24zLmpwZyIsIndpZHRoIjoxMjE0LCJoZWlnaHQiOjEyMTIsImdlbmVyYXRlZCI6IjAuODIwNzU0MDAgMTYzNzQ4ODc5OCJ9fQ==', 77, 1637488798),
(8, 'transformation4-1', 0, 2, 'transformation4.jpg', '', 'transformation4', '2021-11-21 09:59:58', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6NzQ2LCJoZWlnaHQiOjgyMCwic2F2ZWQiOnRydWUsImJhY2t1cCI6eyJmaWxlbmFtZSI6InRyYW5zZm9ybWF0aW9uNC5qcGciLCJ3aWR0aCI6NzQ2LCJoZWlnaHQiOjgyMCwiZ2VuZXJhdGVkIjoiMC44NDU1MDYwMCAxNjM3NDg4Nzk4In19', 78, 1637488798);

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/yourfitnessguide', 'yes'),
(2, 'home', 'http://localhost/yourfitnessguide', 'yes'),
(3, 'blogname', 'Your Fitness Guide', 'yes'),
(4, 'blogdescription', 'Поредният WordPress сайт', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'rtrtrtr@abv.bg', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y G:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:270:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\"ngg_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?ngg_tag=$matches[1]&feed=$matches[2]\";s:43:\"ngg_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?ngg_tag=$matches[1]&feed=$matches[2]\";s:24:\"ngg_tag/([^/]+)/embed/?$\";s:40:\"index.php?ngg_tag=$matches[1]&embed=true\";s:36:\"ngg_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?ngg_tag=$matches[1]&paged=$matches[2]\";s:18:\"ngg_tag/([^/]+)/?$\";s:29:\"index.php?ngg_tag=$matches[1]\";s:37:\"ngg_album/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"ngg_album/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"ngg_album/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"ngg_album/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"ngg_album/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"ngg_album/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"ngg_album/([^/]+)/embed/?$\";s:42:\"index.php?ngg_album=$matches[1]&embed=true\";s:30:\"ngg_album/([^/]+)/trackback/?$\";s:36:\"index.php?ngg_album=$matches[1]&tb=1\";s:38:\"ngg_album/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?ngg_album=$matches[1]&paged=$matches[2]\";s:45:\"ngg_album/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?ngg_album=$matches[1]&cpage=$matches[2]\";s:34:\"ngg_album/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?ngg_album=$matches[1]&page=$matches[2]\";s:26:\"ngg_album/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"ngg_album/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"ngg_album/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"ngg_album/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"ngg_album/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"ngg_album/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"ngg_gallery/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"ngg_gallery/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"ngg_gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"ngg_gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"ngg_gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"ngg_gallery/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"ngg_gallery/([^/]+)/embed/?$\";s:44:\"index.php?ngg_gallery=$matches[1]&embed=true\";s:32:\"ngg_gallery/([^/]+)/trackback/?$\";s:38:\"index.php?ngg_gallery=$matches[1]&tb=1\";s:40:\"ngg_gallery/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?ngg_gallery=$matches[1]&paged=$matches[2]\";s:47:\"ngg_gallery/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?ngg_gallery=$matches[1]&cpage=$matches[2]\";s:36:\"ngg_gallery/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?ngg_gallery=$matches[1]&page=$matches[2]\";s:28:\"ngg_gallery/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"ngg_gallery/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"ngg_gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"ngg_gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"ngg_gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"ngg_gallery/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"ngg_pictures/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"ngg_pictures/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"ngg_pictures/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"ngg_pictures/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"ngg_pictures/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"ngg_pictures/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"ngg_pictures/([^/]+)/embed/?$\";s:45:\"index.php?ngg_pictures=$matches[1]&embed=true\";s:33:\"ngg_pictures/([^/]+)/trackback/?$\";s:39:\"index.php?ngg_pictures=$matches[1]&tb=1\";s:41:\"ngg_pictures/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?ngg_pictures=$matches[1]&paged=$matches[2]\";s:48:\"ngg_pictures/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?ngg_pictures=$matches[1]&cpage=$matches[2]\";s:37:\"ngg_pictures/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?ngg_pictures=$matches[1]&page=$matches[2]\";s:29:\"ngg_pictures/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"ngg_pictures/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"ngg_pictures/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"ngg_pictures/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"ngg_pictures/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"ngg_pictures/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"lightbox_library/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"lightbox_library/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"lightbox_library/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"lightbox_library/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"lightbox_library/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"lightbox_library/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"lightbox_library/([^/]+)/embed/?$\";s:49:\"index.php?lightbox_library=$matches[1]&embed=true\";s:37:\"lightbox_library/([^/]+)/trackback/?$\";s:43:\"index.php?lightbox_library=$matches[1]&tb=1\";s:45:\"lightbox_library/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?lightbox_library=$matches[1]&paged=$matches[2]\";s:52:\"lightbox_library/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?lightbox_library=$matches[1]&cpage=$matches[2]\";s:41:\"lightbox_library/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?lightbox_library=$matches[1]&page=$matches[2]\";s:33:\"lightbox_library/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"lightbox_library/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"lightbox_library/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"lightbox_library/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"lightbox_library/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"lightbox_library/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"displayed_gallery/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"displayed_gallery/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"displayed_gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"displayed_gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"displayed_gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"displayed_gallery/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"displayed_gallery/([^/]+)/embed/?$\";s:50:\"index.php?displayed_gallery=$matches[1]&embed=true\";s:38:\"displayed_gallery/([^/]+)/trackback/?$\";s:44:\"index.php?displayed_gallery=$matches[1]&tb=1\";s:46:\"displayed_gallery/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?displayed_gallery=$matches[1]&paged=$matches[2]\";s:53:\"displayed_gallery/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?displayed_gallery=$matches[1]&cpage=$matches[2]\";s:42:\"displayed_gallery/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?displayed_gallery=$matches[1]&page=$matches[2]\";s:34:\"displayed_gallery/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"displayed_gallery/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"displayed_gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"displayed_gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"displayed_gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"displayed_gallery/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"display_type/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"display_type/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"display_type/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"display_type/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"display_type/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"display_type/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"display_type/([^/]+)/embed/?$\";s:45:\"index.php?display_type=$matches[1]&embed=true\";s:33:\"display_type/([^/]+)/trackback/?$\";s:39:\"index.php?display_type=$matches[1]&tb=1\";s:41:\"display_type/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?display_type=$matches[1]&paged=$matches[2]\";s:48:\"display_type/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?display_type=$matches[1]&cpage=$matches[2]\";s:37:\"display_type/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?display_type=$matches[1]&page=$matches[2]\";s:29:\"display_type/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"display_type/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"display_type/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"display_type/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"display_type/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"display_type/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"gal_display_source/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:56:\"gal_display_source/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"gal_display_source/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"gal_display_source/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"gal_display_source/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"gal_display_source/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"gal_display_source/([^/]+)/embed/?$\";s:51:\"index.php?gal_display_source=$matches[1]&embed=true\";s:39:\"gal_display_source/([^/]+)/trackback/?$\";s:45:\"index.php?gal_display_source=$matches[1]&tb=1\";s:47:\"gal_display_source/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?gal_display_source=$matches[1]&paged=$matches[2]\";s:54:\"gal_display_source/([^/]+)/comment-page-([0-9]{1,})/?$\";s:58:\"index.php?gal_display_source=$matches[1]&cpage=$matches[2]\";s:43:\"gal_display_source/([^/]+)(?:/([0-9]+))?/?$\";s:57:\"index.php?gal_display_source=$matches[1]&page=$matches[2]\";s:35:\"gal_display_source/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"gal_display_source/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"gal_display_source/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"gal_display_source/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"gal_display_source/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"gal_display_source/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"bwg_gallery/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"bwg_gallery/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"bwg_gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"bwg_gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"bwg_gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"bwg_gallery/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"bwg_gallery/([^/]+)/embed/?$\";s:44:\"index.php?bwg_gallery=$matches[1]&embed=true\";s:32:\"bwg_gallery/([^/]+)/trackback/?$\";s:38:\"index.php?bwg_gallery=$matches[1]&tb=1\";s:40:\"bwg_gallery/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?bwg_gallery=$matches[1]&paged=$matches[2]\";s:47:\"bwg_gallery/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?bwg_gallery=$matches[1]&cpage=$matches[2]\";s:36:\"bwg_gallery/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?bwg_gallery=$matches[1]&page=$matches[2]\";s:28:\"bwg_gallery/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"bwg_gallery/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"bwg_gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"bwg_gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"bwg_gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"bwg_gallery/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"bwg_album/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"bwg_album/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"bwg_album/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"bwg_album/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"bwg_album/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"bwg_album/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"bwg_album/([^/]+)/embed/?$\";s:42:\"index.php?bwg_album=$matches[1]&embed=true\";s:30:\"bwg_album/([^/]+)/trackback/?$\";s:36:\"index.php?bwg_album=$matches[1]&tb=1\";s:38:\"bwg_album/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?bwg_album=$matches[1]&paged=$matches[2]\";s:45:\"bwg_album/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?bwg_album=$matches[1]&cpage=$matches[2]\";s:34:\"bwg_album/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?bwg_album=$matches[1]&page=$matches[2]\";s:26:\"bwg_album/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"bwg_album/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"bwg_album/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"bwg_album/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"bwg_album/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"bwg_album/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"bwg_tag/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"bwg_tag/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"bwg_tag/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"bwg_tag/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"bwg_tag/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"bwg_tag/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"bwg_tag/([^/]+)/embed/?$\";s:40:\"index.php?bwg_tag=$matches[1]&embed=true\";s:28:\"bwg_tag/([^/]+)/trackback/?$\";s:34:\"index.php?bwg_tag=$matches[1]&tb=1\";s:48:\"bwg_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?bwg_tag=$matches[1]&feed=$matches[2]\";s:43:\"bwg_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?bwg_tag=$matches[1]&feed=$matches[2]\";s:36:\"bwg_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?bwg_tag=$matches[1]&paged=$matches[2]\";s:32:\"bwg_tag/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?bwg_tag=$matches[1]&page=$matches[2]\";s:24:\"bwg_tag/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"bwg_tag/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"bwg_tag/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"bwg_tag/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"bwg_tag/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"bwg_tag/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:35:\"classic-widgets/classic-widgets.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:31:\"photo-gallery/photo-gallery.php\";i:4;s:29:\"nextgen-gallery/nggallery.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:77:\"C:\\xampp\\htdocs\\yourfitnessguide/wp-content/themes/yourfitnessguide/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'yourfitnessguide', 'yes'),
(41, 'stylesheet', 'yourfitnessguide', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:25:\"cf7-styler/cf7-styler.php\";a:2:{i:0;s:8:\"Freemius\";i:1;s:22:\"_uninstall_plugin_hook\";}}', 'no'),
(80, 'timezone_string', 'Europe/Sofia', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1652558395', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:81:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:15:\"edit_custom_css\";b:1;s:15:\"read_custom_css\";b:1;s:17:\"delete_custom_css\";b:1;s:16:\"edit_custom_csss\";b:1;s:23:\"edit_others_custom_csss\";b:1;s:19:\"publish_custom_csss\";b:1;s:18:\"delete_custom_csss\";b:1;s:28:\"delete_published_custom_csss\";b:1;s:25:\"delete_others_custom_csss\";b:1;s:26:\"edit_published_custom_csss\";b:1;s:24:\"NextGEN Attach Interface\";b:1;s:22:\"NextGEN Change options\";b:1;s:20:\"NextGEN Change style\";b:1;s:18:\"NextGEN Edit album\";b:1;s:24:\"NextGEN Gallery overview\";b:1;s:22:\"NextGEN Manage gallery\";b:1;s:29:\"NextGEN Manage others gallery\";b:1;s:19:\"NextGEN Manage tags\";b:1;s:21:\"NextGEN Upload images\";b:1;s:19:\"NextGEN Use TinyMCE\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:15:\"css_js_designer\";a:2:{s:4:\"name\";s:12:\"Web Designer\";s:12:\"capabilities\";a:10:{s:15:\"edit_custom_css\";b:1;s:15:\"read_custom_css\";b:1;s:17:\"delete_custom_css\";b:1;s:16:\"edit_custom_csss\";b:1;s:23:\"edit_others_custom_csss\";b:1;s:19:\"publish_custom_csss\";b:1;s:18:\"delete_custom_csss\";b:1;s:28:\"delete_published_custom_csss\";b:1;s:25:\"delete_others_custom_csss\";b:1;s:26:\"edit_published_custom_csss\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'bg_BG', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:179:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Последни публикации</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Последни коментари</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:148:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архив</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:158:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Категории</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"right-sidebar\";a:2:{i:0;s:10:\"calendar-2\";i:1;s:10:\"nav_menu-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1638530699;a:1:{s:29:\"ngg_delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"ngg_custom\";s:4:\"args\";a:0:{}s:8:\"interval\";i:900;}}}i:1638532796;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1638561596;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1638561612;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1638561614;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1638907196;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:2:{i:2;a:1:{s:8:\"nav_menu\";i:2;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1637049980;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(121, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:60:\"Грешка при потвърждаването на SSL.\";}s:19:\"bad_response_source\";a:1:{i:0;s:95:\"Изглежда отговорът на заявката не идва от този сайт.\";}}', 'yes'),
(137, 'can_compress_scripts', '1', 'no'),
(149, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:14:\"rtrtrtr@abv.bg\";s:7:\"version\";s:5:\"5.8.2\";s:9:\"timestamp\";i:1637006441;}', 'no'),
(152, 'finished_updating_comment_type', '1', 'yes'),
(162, 'current_theme', 'YourFitnessGuide theme', 'yes'),
(163, 'theme_mods_yourfitnessguide', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:8:\"top-menu\";i:2;}s:18:\"custom_css_post_id\";i:45;}', 'yes'),
(164, 'theme_switched', '', 'yes'),
(168, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(176, 'category_children', 'a:0:{}', 'yes'),
(177, 'recently_activated', 'a:0:{}', 'yes'),
(191, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":3,\"critical\":1}', 'yes'),
(220, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.5.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1637233212;s:7:\"version\";s:5:\"5.5.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(225, 'ccj__activation_time', '1637235382', 'yes'),
(226, 'ccj__version', '3.38', 'yes'),
(227, 'ccj_settings', 'a:5:{s:16:\"ccj_htmlentities\";b:0;s:17:\"ccj_htmlentities2\";b:0;s:16:\"ccj_autocomplete\";b:1;s:8:\"add_role\";b:1;s:15:\"remove_comments\";b:0;}', 'yes'),
(230, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(231, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(233, 'custom-css-js-tree', 'a:1:{s:28:\"frontend-css-header-external\";a:1:{i:0;s:13:\"50.css?v=3854\";}}', 'yes'),
(241, 'fs_active_plugins', 'O:8:\"stdClass\":0:{}', 'yes'),
(242, 'fs_debug_mode', '', 'yes'),
(243, 'fs_accounts', 'a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:4879;a:2:{s:4:\"slug\";s:10:\"cf7-styler\";s:4:\"type\";s:6:\"plugin\";}}s:11:\"plugin_data\";a:1:{s:10:\"cf7-styler\";a:17:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:9:\"prev_path\";s:25:\"cf7-styler/cf7-styler.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1637246023;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.4.2\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"1.4.1\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1637246023;s:7:\"version\";s:5:\"1.4.1\";}s:15:\"prev_is_premium\";b:0;s:21:\"is_pending_activation\";b:1;s:16:\"uninstall_reason\";O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"9\";s:4:\"info\";s:0:\"\";s:12:\"is_anonymous\";b:1;}}}s:13:\"file_slug_map\";a:1:{s:25:\"cf7-styler/cf7-styler.php\";s:10:\"cf7-styler\";}s:7:\"plugins\";a:1:{s:10:\"cf7-styler\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:24:\"WOW Style Contact Form 7\";s:4:\"slug\";s:10:\"cf7-styler\";s:12:\"premium_slug\";s:14:\"cf7-styler-pro\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";s:3:\"all\";s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:25:\"cf7-styler/cf7-styler.php\";s:7:\"version\";s:5:\"1.4.1\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:3:\"Pro\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_430f963531baceba1e271f3a35041\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"4879\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"2d96a6ed3fec3c9d12a60738763d68ef\";s:13:\"admin_notices\";a:1:{s:10:\"cf7-styler\";a:0:{}}}', 'yes'),
(244, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(245, 'fs_api_cache', 'a:0:{}', 'no'),
(248, 'cf7cstmzr_style_schemes', 'a:1:{s:7:\"default\";a:2:{s:5:\"title\";s:14:\"Default Scheme\";s:6:\"scheme\";a:3:{s:4:\"form\";a:4:{s:2:\"bg\";a:1:{s:5:\"color\";s:7:\"#e29700\";}s:7:\"padding\";a:4:{s:3:\"top\";s:2:\"20\";s:5:\"right\";s:2:\"20\";s:6:\"bottom\";s:2:\"20\";s:4:\"left\";s:2:\"20\";}s:6:\"margin\";a:2:{s:3:\"top\";s:2:\"15\";s:6:\"bottom\";s:2:\"15\";}s:6:\"border\";a:4:{s:5:\"width\";a:4:{s:3:\"top\";s:1:\"1\";s:5:\"right\";s:1:\"1\";s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:1:\"5\";}s:4:\"type\";s:6:\"dotted\";s:6:\"radius\";s:2:\"10\";s:5:\"color\";s:7:\"#1e73be\";}}s:5:\"input\";a:5:{s:10:\"full-width\";s:3:\"yes\";s:4:\"text\";a:1:{s:11:\"line-height\";s:3:\"1.6\";}s:2:\"bg\";a:1:{s:5:\"color\";s:7:\"#ffffff\";}s:7:\"padding\";a:4:{s:3:\"top\";s:1:\"5\";s:5:\"right\";s:2:\"10\";s:6:\"bottom\";s:1:\"5\";s:4:\"left\";s:2:\"10\";}s:6:\"border\";a:3:{s:5:\"width\";a:4:{s:3:\"top\";s:1:\"1\";s:5:\"right\";s:1:\"1\";s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:1:\"3\";}s:6:\"radius\";s:1:\"5\";s:5:\"color\";s:7:\"#1e73be\";}}s:6:\"button\";a:5:{s:7:\"padding\";s:1:\"5\";s:4:\"text\";a:3:{s:5:\"color\";s:7:\"#ffffff\";s:11:\"color-hover\";s:7:\"#1e73be\";s:11:\"line-height\";s:3:\"1.6\";}s:2:\"bg\";a:2:{s:5:\"color\";s:7:\"#a600c4\";s:11:\"color-hover\";s:7:\"#1e73be\";}s:6:\"border\";a:4:{s:5:\"width\";s:1:\"2\";s:6:\"radius\";s:2:\"10\";s:5:\"color\";s:7:\"#1e73be\";s:11:\"color-hover\";s:7:\"#1e73be\";}s:6:\"shadow\";a:6:{s:15:\"vertical-length\";s:1:\"5\";s:11:\"blur-radius\";s:1:\"5\";s:13:\"spread-radius\";s:2:\"-5\";s:5:\"color\";s:7:\"#000000\";s:7:\"opacity\";s:3:\"0.5\";s:8:\"position\";s:7:\"outline\";}}}}}', 'yes'),
(249, 'cf7cstmzr_welcome_done', '1', 'yes'),
(250, 'cf7cstmzr-preview-styled', '1', 'yes'),
(252, 'cf7cstmzr-split-mode', 'live-style', 'yes'),
(279, 'secret_key', 'DjuuPTm;ok{7acEs?a|B!U+-FFwcX{=z|iU2=lGw&$w>jQsJ&FM>F>rI)SWBD;Qv', 'no'),
(290, 'cf7cstmzr-preview-mode', 'split-mode', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(291, 'cf7cstmzr_style_schemes_preview', 'a:1:{s:7:\"preview\";a:2:{s:5:\"title\";s:7:\"preview\";s:6:\"scheme\";a:3:{s:4:\"form\";a:4:{s:2:\"bg\";a:1:{s:5:\"color\";s:7:\"#e29700\";}s:7:\"padding\";a:4:{s:3:\"top\";s:2:\"20\";s:5:\"right\";s:2:\"20\";s:6:\"bottom\";s:2:\"20\";s:4:\"left\";s:2:\"20\";}s:6:\"margin\";a:2:{s:3:\"top\";s:2:\"15\";s:6:\"bottom\";s:2:\"15\";}s:6:\"border\";a:4:{s:5:\"width\";a:4:{s:3:\"top\";s:1:\"1\";s:5:\"right\";s:1:\"1\";s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:1:\"5\";}s:4:\"type\";s:6:\"dotted\";s:6:\"radius\";s:2:\"10\";s:5:\"color\";s:7:\"#1e73be\";}}s:5:\"input\";a:5:{s:10:\"full-width\";s:3:\"yes\";s:4:\"text\";a:1:{s:11:\"line-height\";s:3:\"1.6\";}s:2:\"bg\";a:1:{s:5:\"color\";s:7:\"#ffffff\";}s:7:\"padding\";a:4:{s:3:\"top\";s:1:\"5\";s:5:\"right\";s:2:\"10\";s:6:\"bottom\";s:1:\"5\";s:4:\"left\";s:2:\"10\";}s:6:\"border\";a:3:{s:5:\"width\";a:4:{s:3:\"top\";s:1:\"1\";s:5:\"right\";s:1:\"1\";s:6:\"bottom\";s:1:\"1\";s:4:\"left\";s:1:\"3\";}s:6:\"radius\";s:1:\"5\";s:5:\"color\";s:7:\"#1e73be\";}}s:6:\"button\";a:5:{s:7:\"padding\";s:1:\"5\";s:4:\"text\";a:3:{s:5:\"color\";s:7:\"#ffffff\";s:11:\"color-hover\";s:7:\"#1e73be\";s:11:\"line-height\";s:3:\"1.6\";}s:2:\"bg\";a:2:{s:5:\"color\";s:7:\"#a600c4\";s:11:\"color-hover\";s:7:\"#1e73be\";}s:6:\"border\";a:4:{s:5:\"width\";s:1:\"2\";s:6:\"radius\";s:2:\"10\";s:5:\"color\";s:7:\"#1e73be\";s:11:\"color-hover\";s:7:\"#1e73be\";}s:6:\"shadow\";a:6:{s:15:\"vertical-length\";s:1:\"5\";s:11:\"blur-radius\";s:1:\"5\";s:13:\"spread-radius\";s:2:\"-5\";s:5:\"color\";s:7:\"#000000\";s:7:\"opacity\";s:3:\"0.5\";s:8:\"position\";s:7:\"outline\";}}}}}', 'yes'),
(330, 'widget_ngg-images', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(331, 'widget_ngg-mrssw', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(332, 'widget_slideshow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(333, 'ngg_transient_groups', 'a:7:{s:9:\"__counter\";i:7;s:16:\"WordPress-Router\";a:2:{s:2:\"id\";i:2;s:7:\"enabled\";b:1;}s:15:\"col_in_wp_posts\";a:2:{s:2:\"id\";i:3;s:7:\"enabled\";b:1;}s:21:\"col_in_wp_ngg_gallery\";a:2:{s:2:\"id\";i:4;s:7:\"enabled\";b:1;}s:22:\"col_in_wp_ngg_pictures\";a:2:{s:2:\"id\";i:5;s:7:\"enabled\";b:1;}s:27:\"displayed_gallery_rendering\";a:2:{s:2:\"id\";i:6;s:7:\"enabled\";b:1;}s:19:\"col_in_wp_ngg_album\";a:2:{s:2:\"id\";i:7;s:7:\"enabled\";b:1;}}', 'yes'),
(336, 'ngg_options', 'a:74:{s:11:\"gallerypath\";s:19:\"wp-content\\gallery\\\";s:9:\"deleteImg\";b:1;s:13:\"usePermalinks\";b:0;s:13:\"permalinkSlug\";s:9:\"nggallery\";s:14:\"graphicLibrary\";s:2:\"gd\";s:11:\"useMediaRSS\";b:0;s:18:\"galleries_in_feeds\";b:0;s:12:\"activateTags\";i:0;s:10:\"appendType\";s:4:\"tags\";s:9:\"maxImages\";i:7;s:14:\"relatedHeading\";s:24:\"<h3>Related Images:</h3>\";s:10:\"thumbwidth\";i:240;s:11:\"thumbheight\";i:160;s:8:\"thumbfix\";b:1;s:12:\"thumbquality\";i:100;s:8:\"imgWidth\";i:1800;s:9:\"imgHeight\";i:1200;s:10:\"imgQuality\";i:100;s:9:\"imgBackup\";b:1;s:13:\"imgAutoResize\";b:1;s:9:\"galImages\";s:2:\"24\";s:17:\"galPagedGalleries\";i:0;s:10:\"galColumns\";i:0;s:12:\"galShowSlide\";b:0;s:12:\"galTextSlide\";s:14:\"View Slideshow\";s:14:\"galTextGallery\";s:15:\"View Thumbnails\";s:12:\"galShowOrder\";s:7:\"gallery\";s:7:\"galSort\";s:9:\"sortorder\";s:10:\"galSortDir\";s:3:\"ASC\";s:10:\"galNoPages\";b:1;s:13:\"galImgBrowser\";i:0;s:12:\"galHiddenImg\";i:0;s:10:\"galAjaxNav\";i:1;s:11:\"thumbEffect\";s:14:\"simplelightbox\";s:9:\"thumbCode\";s:47:\"class=\"ngg-simplelightbox\" rel=\"%GALLERY_NAME%\"\";s:18:\"thumbEffectContext\";s:14:\"nextgen_images\";s:33:\"watermark_automatically_at_upload\";i:0;s:5:\"wmPos\";s:9:\"midCenter\";s:6:\"wmXpos\";i:15;s:6:\"wmYpos\";i:5;s:6:\"wmType\";s:4:\"text\";s:6:\"wmPath\";s:0:\"\";s:6:\"wmFont\";s:9:\"arial.ttf\";s:6:\"wmSize\";i:30;s:6:\"wmText\";s:18:\"Your Fitness Guide\";s:7:\"wmColor\";s:6:\"ffffff\";s:8:\"wmOpaque\";s:2:\"33\";s:7:\"slideFX\";s:4:\"fade\";s:7:\"irWidth\";i:750;s:8:\"irHeight\";i:500;s:12:\"irRotatetime\";i:5;s:11:\"activateCSS\";i:1;s:7:\"CSSfile\";s:13:\"nggallery.css\";s:28:\"always_enable_frontend_logic\";b:0;s:27:\"use_alternate_random_method\";b:0;s:19:\"disable_fontawesome\";b:0;s:21:\"disable_ngg_tags_page\";b:0;s:23:\"random_widget_cache_ttl\";i:30;s:22:\"router_param_separator\";s:2:\"--\";s:19:\"router_param_prefix\";s:0:\"\";s:17:\"router_param_slug\";s:9:\"nggallery\";s:11:\"wpmuCSSfile\";s:13:\"nggallery.css\";s:9:\"wpmuStyle\";b:0;s:9:\"wpmuRoles\";b:0;s:16:\"wpmuImportFolder\";b:0;s:13:\"wpmuZipUpload\";b:0;s:14:\"wpmuQuotaCheck\";b:0;s:17:\"datamapper_driver\";s:22:\"custom_post_datamapper\";s:20:\"maximum_entity_count\";i:500;s:22:\"dynamic_thumbnail_slug\";s:13:\"nextgen-image\";s:23:\"dynamic_stylesheet_slug\";s:12:\"nextgen-dcss\";s:11:\"installDate\";i:1637488142;s:13:\"gallery_count\";i:2;s:40:\"gallery_created_after_reviews_introduced\";b:1;}', 'yes'),
(338, 'photocrati_auto_update_admin_update_list', '', 'yes'),
(339, 'photocrati_auto_update_admin_check_date', '', 'yes'),
(340, 'ngg_db_version', '1.8.1', 'yes'),
(341, 'pope_module_list', 'a:37:{i:0;s:19:\"photocrati-fs|3.3.6\";i:1;s:22:\"photocrati-i18n|3.3.21\";i:2;s:29:\"photocrati-validation|3.1.4.2\";i:3;s:22:\"photocrati-router|3.13\";i:4;s:34:\"photocrati-wordpress_routing|3.1.8\";i:5;s:25:\"photocrati-security|3.1.8\";i:6;s:32:\"photocrati-nextgen_settings|3.10\";i:7;s:21:\"photocrati-mvc|3.3.21\";i:8;s:22:\"photocrati-ajax|3.3.21\";i:9;s:28:\"photocrati-datamapper|3.1.19\";i:10;s:31:\"photocrati-nextgen-legacy|3.7.1\";i:11;s:30:\"photocrati-nextgen-data|3.3.14\";i:12;s:30:\"photocrati-nextgen_block|3.7.2\";i:13;s:35:\"photocrati-dynamic_thumbnails|3.9.0\";i:14;s:30:\"photocrati-nextgen_admin|3.7.0\";i:15;s:41:\"photocrati-nextgen_gallery_display|3.3.21\";i:16;s:37:\"photocrati-frame_communication|3.3.21\";i:17;s:31:\"photocrati-attach_to_post|3.4.0\";i:18;s:42:\"photocrati-nextgen_addgallery_page|3.5.0.4\";i:19;s:39:\"photocrati-nextgen_other_options|3.3.21\";i:20;s:35:\"photocrati-nextgen_pagination|3.7.0\";i:21;s:35:\"photocrati-dynamic_stylesheet|3.0.0\";i:22;s:37:\"photocrati-nextgen_pro_upgrade|3.3.21\";i:23;s:22:\"photocrati-cache|3.0.0\";i:24;s:26:\"photocrati-lightbox|3.3.21\";i:25;s:42:\"photocrati-nextgen_basic_templates|3.0.0.2\";i:26;s:38:\"photocrati-nextgen_basic_gallery|3.9.0\";i:27;s:43:\"photocrati-nextgen_basic_imagebrowser|3.9.0\";i:28;s:40:\"photocrati-nextgen_basic_singlepic|3.9.0\";i:29;s:38:\"photocrati-nextgen_basic_tagcloud|3.10\";i:30;s:36:\"photocrati-nextgen_basic_album|3.9.0\";i:31;s:23:\"photocrati-widget|3.9.0\";i:32;s:38:\"photocrati-third_party_compat|3.1.11.1\";i:33;s:32:\"photocrati-nextgen_xmlrpc|3.2.19\";i:34;s:22:\"photocrati-wpcli|3.0.0\";i:35;s:27:\"photocrati-marketing|3.3.21\";i:36;s:25:\"photocrati-imagify|3.3.21\";}', 'yes'),
(379, 'wd_bwg_version', '1.5.86', 'no'),
(380, 'wd_bwg_initial_version', '1.5.86', 'no'),
(381, 'wd_bwg_theme_version', '1.0.0', 'no'),
(382, 'widget_bwp_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(383, 'widget_bwp_gallery_slideshow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(384, 'bwg_admin_notice', 'a:1:{s:15:\"two_week_review\";a:2:{s:5:\"start\";s:9:\"12/5/2021\";s:3:\"int\";i:14;}}', 'yes'),
(385, 'bwg_wp_editor_state', 'editor_missing', 'yes'),
(427, '_site_transient_timeout_php_check_75809dde56e3fe2c2fb740f1b55807ac', '1638568678', 'no'),
(428, '_site_transient_php_check_75809dde56e3fe2c2fb740f1b55807ac', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(448, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/bg_BG/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"bg_BG\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/bg_BG/wordpress-5.8.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1638527521;s:15:\"version_checked\";s:5:\"5.8.2\";s:12:\"translations\";a:0:{}}', 'no'),
(449, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1638527524;s:7:\"checked\";a:4:{s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";s:16:\"yourfitnessguide\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(503, '_transient_timeout_2__2951165530', '1638531823', 'no'),
(504, '_transient_2__2951165530', '[]', 'no'),
(506, '_site_transient_timeout_theme_roots', '1638529323', 'no'),
(507, '_site_transient_theme_roots', 'a:4:{s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:16:\"yourfitnessguide\";s:7:\"/themes\";}', 'no'),
(508, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1638527524;s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";b:0;}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.5.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.5.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";b:0;}s:31:\"custom-css-js/custom-css-js.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/custom-css-js\";s:4:\"slug\";s:13:\"custom-css-js\";s:6:\"plugin\";s:31:\"custom-css-js/custom-css-js.php\";s:11:\"new_version\";s:6:\"3.38.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/custom-css-js/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/custom-css-js.3.38.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/custom-css-js/assets/icon-128x128.png?rev=1303730\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/custom-css-js/assets/banner-1544x500.png?rev=1770945\";s:2:\"1x\";s:68:\"https://ps.w.org/custom-css-js/assets/banner-772x250.png?rev=1303730\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.0.1\";s:6:\"tested\";s:3:\"5.9\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:35:\"classic-widgets/classic-widgets.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/classic-widgets\";s:4:\"slug\";s:15:\"classic-widgets\";s:6:\"plugin\";s:35:\"classic-widgets/classic-widgets.php\";s:11:\"new_version\";s:3:\"0.2\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/classic-widgets/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/classic-widgets.0.2.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:59:\"https://s.w.org/plugins/geopattern-icon/classic-widgets.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:29:\"nextgen-gallery/nggallery.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/nextgen-gallery\";s:4:\"slug\";s:15:\"nextgen-gallery\";s:6:\"plugin\";s:29:\"nextgen-gallery/nggallery.php\";s:11:\"new_version\";s:4:\"3.17\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/nextgen-gallery/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/nextgen-gallery.3.17.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/nextgen-gallery/assets/icon-256x256.png?rev=2083961\";s:2:\"1x\";s:68:\"https://ps.w.org/nextgen-gallery/assets/icon-128x128.png?rev=2083961\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/nextgen-gallery/assets/banner-1544x500.png?rev=2083961\";s:2:\"1x\";s:70:\"https://ps.w.org/nextgen-gallery/assets/banner-772x250.png?rev=2083961\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"5.5.4\";}s:31:\"photo-gallery/photo-gallery.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/photo-gallery\";s:4:\"slug\";s:13:\"photo-gallery\";s:6:\"plugin\";s:31:\"photo-gallery/photo-gallery.php\";s:11:\"new_version\";s:6:\"1.5.86\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/photo-gallery/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/photo-gallery.1.5.86.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/photo-gallery/assets/icon-256x256.png?rev=2068745\";s:2:\"1x\";s:66:\"https://ps.w.org/photo-gallery/assets/icon-128x128.png?rev=2068745\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/photo-gallery/assets/banner-1544x500.png?rev=2068745\";s:2:\"1x\";s:68:\"https://ps.w.org/photo-gallery/assets/banner-772x250.png?rev=2068745\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:25:\"cf7-styler/cf7-styler.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/cf7-styler\";s:4:\"slug\";s:10:\"cf7-styler\";s:6:\"plugin\";s:25:\"cf7-styler/cf7-styler.php\";s:11:\"new_version\";s:5:\"1.4.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/cf7-styler/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/cf7-styler.1.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cf7-styler/assets/icon-256x256.png?rev=2306912\";s:2:\"1x\";s:63:\"https://ps.w.org/cf7-styler/assets/icon-256x256.png?rev=2306912\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/cf7-styler/assets/banner-1544x500.png?rev=2347710\";s:2:\"1x\";s:65:\"https://ps.w.org/cf7-styler/assets/banner-772x250.png?rev=2347710\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}}s:7:\"checked\";a:9:{s:19:\"akismet/akismet.php\";s:6:\"4.1.12\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:35:\"classic-widgets/classic-widgets.php\";s:3:\"0.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.5.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:29:\"nextgen-gallery/nggallery.php\";s:4:\"3.17\";s:31:\"photo-gallery/photo-gallery.php\";s:6:\"1.5.86\";s:31:\"custom-css-js/custom-css-js.php\";s:4:\"3.38\";s:25:\"cf7-styler/cf7-styler.php\";s:5:\"1.4.1\";}}', 'no'),
(516, '_transient_timeout_3__2899230903', '1638531203', 'no'),
(517, '_transient_3__2899230903', '[\"ID\",\"post_author\",\"post_date\",\"post_date_gmt\",\"post_content\",\"post_title\",\"post_excerpt\",\"post_status\",\"comment_status\",\"ping_status\",\"post_password\",\"post_name\",\"to_ping\",\"pinged\",\"post_modified\",\"post_modified_gmt\",\"post_content_filtered\",\"post_parent\",\"guid\",\"menu_order\",\"post_type\",\"post_mime_type\",\"comment_count\"]', 'no'),
(518, '_transient_timeout_4__2899230903', '1638531203', 'no'),
(519, '_transient_4__2899230903', '[\"gid\",\"name\",\"slug\",\"path\",\"title\",\"galdesc\",\"pageid\",\"previewpic\",\"author\",\"extras_post_id\"]', 'no'),
(520, '_transient_timeout_5__2899230903', '1638531203', 'no'),
(521, '_transient_5__2899230903', '[\"pid\",\"image_slug\",\"post_id\",\"galleryid\",\"filename\",\"description\",\"alttext\",\"imagedate\",\"exclude\",\"sortorder\",\"meta_data\",\"extras_post_id\",\"updated_at\"]', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://localhost/yourfitnessguide/'),
(21, 2, '_edit_lock', '1637228896:1'),
(22, 7, '_edit_last', '1'),
(23, 7, '_edit_lock', '1637964278:1'),
(26, 1, '_wp_trash_meta_status', 'publish'),
(27, 1, '_wp_trash_meta_time', '1637223953'),
(28, 1, '_wp_desired_post_slug', 'hello-world'),
(29, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(30, 10, '_edit_last', '1'),
(31, 10, '_edit_lock', '1637225553:1'),
(38, 17, '_edit_last', '1'),
(39, 17, '_edit_lock', '1637964269:1'),
(48, 20, '_edit_last', '1'),
(49, 20, '_edit_lock', '1638528584:1'),
(71, 5, '_wp_old_date', '2021-11-16'),
(90, 28, '_menu_item_type', 'custom'),
(91, 28, '_menu_item_menu_item_parent', '0'),
(92, 28, '_menu_item_object_id', '28'),
(93, 28, '_menu_item_object', 'custom'),
(94, 28, '_menu_item_target', ''),
(95, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 28, '_menu_item_xfn', ''),
(97, 28, '_menu_item_url', 'http://localhost/yourfitnessguide/#programs'),
(99, 29, '_menu_item_type', 'custom'),
(100, 29, '_menu_item_menu_item_parent', '0'),
(101, 29, '_menu_item_object_id', '29'),
(102, 29, '_menu_item_object', 'custom'),
(103, 29, '_menu_item_target', ''),
(104, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(105, 29, '_menu_item_xfn', ''),
(106, 29, '_menu_item_url', 'http://localhost/yourfitnessguide/#trainers'),
(108, 30, '_menu_item_type', 'custom'),
(109, 30, '_menu_item_menu_item_parent', '0'),
(110, 30, '_menu_item_object_id', '30'),
(111, 30, '_menu_item_object', 'custom'),
(112, 30, '_menu_item_target', ''),
(113, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(114, 30, '_menu_item_xfn', ''),
(115, 30, '_menu_item_url', 'http://localhost/yourfitnessguide/#schedule'),
(117, 31, '_edit_last', '1'),
(118, 31, '_edit_lock', '1637511233:1'),
(119, 33, '_menu_item_type', 'post_type'),
(120, 33, '_menu_item_menu_item_parent', '0'),
(121, 33, '_menu_item_object_id', '31'),
(122, 33, '_menu_item_object', 'page'),
(123, 33, '_menu_item_target', ''),
(124, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(125, 33, '_menu_item_xfn', ''),
(126, 33, '_menu_item_url', ''),
(128, 34, '_form', '<label> Вашето име(Три имена)\n    [text* your-name] </label>\n\n<label> Вашият имейл\n    [email* your-email] </label>\n\n<label> Относно\n    [text* your-subject] </label>\n\n<label> Вашето съобщение\n    [textarea your-message] </label>\n\n[submit \"Изпращане\"]'),
(129, 34, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:30:\"[_site_title] <rtrtrtr@abv.bg>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:237:\"От: [your-name] <[your-email]>\nОтносно: [your-subject]\n\nТекст на съобщението:\n[your-message]\n\n-- \nТози имейл е изпратен от формата за контакт на [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(130, 34, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:30:\"[_site_title] <rtrtrtr@abv.bg>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:172:\"Текст на съобщението:\n[your-message]\n\n-- \nТози имейл е изпратен от формата за контакт на [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(131, 34, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:97:\"Благодарим ви за вашето съобщение. То беше изпратено.\";s:12:\"mail_sent_ng\";s:160:\"Възникна грешка при опит за изпращане на съобщението Ви. Моля, опитайте отново по-късно.\";s:16:\"validation_error\";s:126:\"Едно или повече полета имат грешка. Моля проверете и опитайте отново.\";s:4:\"spam\";s:160:\"Възникна грешка при опит за изпращане на съобщението Ви. Моля, опитайте отново по-късно.\";s:12:\"accept_terms\";s:143:\"Трябва да приемете условията за ползване преди да изпратите вашето съобщение.\";s:16:\"invalid_required\";s:46:\"Това поле е задължително.\";s:16:\"invalid_too_long\";s:51:\"Това поле е прекалено дълго.\";s:17:\"invalid_too_short\";s:53:\"Това поле е прекалено кратко.\";s:13:\"upload_failed\";s:93:\"Възникна неизвестна грешка при качването на файла.\";s:24:\"upload_file_type_invalid\";s:80:\"Нямате право да качвате файлове от този тип.\";s:21:\"upload_file_too_large\";s:46:\"Файлът е прекалено голям.\";s:23:\"upload_failed_php_error\";s:55:\"Грешка при качването на файла.\";s:12:\"invalid_date\";s:59:\"Форматът на датата е неправилен.\";s:14:\"date_too_early\";s:61:\"Датата е преди първата позволена.\";s:13:\"date_too_late\";s:65:\"Датата е след последната позволена.\";s:14:\"invalid_number\";s:57:\"Форма̀та на номера е невалиден.\";s:16:\"number_too_small\";s:77:\"Номерът е по-малък от минималния позволен.\";s:16:\"number_too_large\";s:79:\"Номерът е по-голям от максималния позволен.\";s:23:\"quiz_answer_not_correct\";s:59:\"Отговорът на теста е неправилен.\";s:13:\"invalid_email\";s:65:\"Въведеният имейл адрес е невалиден.\";s:11:\"invalid_url\";s:58:\"Въведеният URL адрес е невалиден.\";s:11:\"invalid_tel\";s:56:\"Телефонният номер е невалиден.\";}'),
(132, 34, '_additional_settings', ''),
(133, 34, '_locale', 'bg_BG'),
(134, 44, '_wp_trash_meta_status', 'publish'),
(135, 44, '_wp_trash_meta_time', '1637235997'),
(136, 47, '_wp_trash_meta_status', 'publish'),
(137, 47, '_wp_trash_meta_time', '1637245304'),
(138, 50, '_edit_last', '1'),
(139, 50, 'options', 'a:5:{s:4:\"type\";s:6:\"header\";s:7:\"linking\";s:8:\"external\";s:8:\"priority\";s:1:\"5\";s:4:\"side\";s:8:\"frontend\";s:8:\"language\";s:3:\"css\";}'),
(140, 50, '_edit_lock', '1637245771:1'),
(141, 51, '_wp_trash_meta_status', 'publish'),
(142, 51, '_wp_trash_meta_time', '1637245827'),
(148, 34, 'cf7cstmzr_style_scheme', 'default'),
(149, 53, '_wp_trash_meta_status', 'publish'),
(150, 53, '_wp_trash_meta_time', '1637447785'),
(151, 55, '_wp_trash_meta_status', 'publish'),
(152, 55, '_wp_trash_meta_time', '1637450659'),
(153, 57, '_wp_trash_meta_status', 'publish'),
(154, 57, '_wp_trash_meta_time', '1637450878'),
(155, 59, 'title', 'NextGEN Basic Thumbnails'),
(156, 59, 'module_id', 'photocrati-nextgen_basic_gallery'),
(157, 59, 'preview_image_relpath', 'photocrati-nextgen_basic_gallery#thumb_preview.jpg'),
(158, 59, 'default_source', 'galleries'),
(159, 59, 'view_order', '10000'),
(160, 59, 'name', 'photocrati-nextgen_basic_thumbnails'),
(161, 59, 'installed_at_version', '3.17'),
(162, 59, 'hidden_from_ui', ''),
(163, 59, 'hidden_from_igw', ''),
(164, 59, '__defaults_set', '1'),
(165, 59, 'filter', 'raw'),
(166, 59, 'entity_types', 'WyJpbWFnZSJd'),
(167, 59, 'aliases', 'WyJiYXNpY190aHVtYm5haWwiLCJiYXNpY190aHVtYm5haWxzIiwibmV4dGdlbl9iYXNpY190aHVtYm5haWxzIl0='),
(168, 59, 'id_field', 'ID'),
(169, 59, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiaW1hZ2VzX3Blcl9wYWdlIjoiMjQiLCJudW1iZXJfb2ZfY29sdW1ucyI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwic2hvd19hbGxfaW5fbGlnaHRib3giOjAsImFqYXhfcGFnaW5hdGlvbiI6MSwidXNlX2ltYWdlYnJvd3Nlcl9lZmZlY3QiOjAsInRlbXBsYXRlIjoiIiwiZGlzcGxheV9ub19pbWFnZXNfZXJyb3IiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwic2hvd19zbGlkZXNob3dfbGluayI6MCwic2xpZGVzaG93X2xpbmtfdGV4dCI6IlZpZXcgU2xpZGVzaG93Iiwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6IjEwMCIsInRodW1ibmFpbF9jcm9wIjoxLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(170, 60, 'title', 'NextGEN Basic Slideshow'),
(171, 60, 'module_id', 'photocrati-nextgen_basic_gallery'),
(172, 60, 'preview_image_relpath', 'photocrati-nextgen_basic_gallery#slideshow_preview.jpg'),
(173, 60, 'default_source', 'galleries'),
(174, 60, 'view_order', '10010'),
(175, 60, 'name', 'photocrati-nextgen_basic_slideshow'),
(176, 60, 'installed_at_version', '3.17'),
(177, 60, 'hidden_from_ui', ''),
(178, 60, 'hidden_from_igw', ''),
(179, 60, '__defaults_set', '1'),
(180, 60, 'filter', 'raw'),
(181, 60, 'entity_types', 'WyJpbWFnZSJd'),
(182, 60, 'aliases', 'WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJd'),
(183, 60, 'id_field', 'ID'),
(184, 60, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjo3NTAsImdhbGxlcnlfaGVpZ2h0Ijo1MDAsInNob3dfdGh1bWJuYWlsX2xpbmsiOjAsInRodW1ibmFpbF9saW5rX3RleHQiOiJWaWV3IFRodW1ibmFpbHMiLCJ0ZW1wbGF0ZSI6IiIsImRpc3BsYXlfdmlldyI6ImRlZmF1bHQiLCJhdXRvcGxheSI6MSwicGF1c2VvbmhvdmVyIjoxLCJhcnJvd3MiOjAsImludGVydmFsIjozMDAwLCJ0cmFuc2l0aW9uX3NwZWVkIjozMDAsInRyYW5zaXRpb25fc3R5bGUiOiJmYWRlIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(185, 61, 'title', 'NextGEN Basic ImageBrowser'),
(186, 61, 'preview_image_relpath', 'photocrati-nextgen_basic_imagebrowser#preview.jpg'),
(187, 61, 'default_source', 'galleries'),
(188, 61, 'view_order', '10020'),
(189, 61, 'name', 'photocrati-nextgen_basic_imagebrowser'),
(190, 61, 'installed_at_version', '3.17'),
(191, 61, 'hidden_from_ui', ''),
(192, 61, 'hidden_from_igw', ''),
(193, 61, '__defaults_set', '1'),
(194, 61, 'filter', 'raw'),
(195, 61, 'entity_types', 'WyJpbWFnZSJd'),
(196, 61, 'aliases', 'WyJiYXNpY19pbWFnZWJyb3dzZXIiLCJpbWFnZWJyb3dzZXIiLCJuZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3NlciJd'),
(197, 61, 'id_field', 'ID'),
(198, 61, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwidGVtcGxhdGUiOiIiLCJhamF4X3BhZ2luYXRpb24iOiIxIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(199, 62, 'title', 'NextGEN Basic SinglePic'),
(200, 62, 'preview_image_relpath', 'photocrati-nextgen_basic_singlepic#preview.gif'),
(201, 62, 'default_source', 'galleries'),
(202, 62, 'view_order', '10060'),
(203, 62, 'hidden_from_ui', '1'),
(204, 62, 'hidden_from_igw', '1'),
(205, 62, 'name', 'photocrati-nextgen_basic_singlepic'),
(206, 62, 'installed_at_version', '3.17'),
(207, 62, '__defaults_set', '1'),
(208, 62, 'filter', 'raw'),
(209, 62, 'entity_types', 'WyJpbWFnZSJd'),
(210, 62, 'aliases', 'WyJiYXNpY19zaW5nbGVwaWMiLCJzaW5nbGVwaWMiLCJuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpYyJd'),
(211, 62, 'id_field', 'ID'),
(212, 62, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ3aWR0aCI6IiIsImhlaWdodCI6IiIsIm1vZGUiOiIiLCJkaXNwbGF5X3dhdGVybWFyayI6MCwiZGlzcGxheV9yZWZsZWN0aW9uIjowLCJmbG9hdCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsInF1YWxpdHkiOjEwMCwiY3JvcCI6MCwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(213, 63, 'title', 'NextGEN Basic TagCloud'),
(214, 63, 'preview_image_relpath', 'photocrati-nextgen_basic_tagcloud#preview.gif'),
(215, 63, 'default_source', 'tags'),
(216, 63, 'view_order', '10100'),
(217, 63, 'name', 'photocrati-nextgen_basic_tagcloud'),
(218, 63, 'installed_at_version', '3.17'),
(219, 63, 'hidden_from_ui', ''),
(220, 63, 'hidden_from_igw', ''),
(221, 63, '__defaults_set', '1'),
(222, 63, 'filter', 'raw'),
(223, 63, 'entity_types', 'WyJpbWFnZSJd'),
(224, 63, 'aliases', 'WyJiYXNpY190YWdjbG91ZCIsInRhZ2Nsb3VkIiwibmV4dGdlbl9iYXNpY190YWdjbG91ZCJd'),
(225, 63, 'id_field', 'ID'),
(226, 63, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwibnVtYmVyIjo0NSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(227, 64, 'title', 'NextGEN Basic Compact Album'),
(228, 64, 'module_id', 'photocrati-nextgen_basic_album'),
(229, 64, 'preview_image_relpath', 'photocrati-nextgen_basic_album#compact_preview.jpg'),
(230, 64, 'default_source', 'albums'),
(231, 64, 'view_order', '10200'),
(232, 64, 'name', 'photocrati-nextgen_basic_compact_album'),
(233, 64, 'installed_at_version', '3.17'),
(234, 64, 'hidden_from_ui', ''),
(235, 64, 'hidden_from_igw', ''),
(236, 64, '__defaults_set', '1'),
(237, 64, 'filter', 'raw'),
(238, 64, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(239, 64, 'aliases', 'WyJiYXNpY19jb21wYWN0X2FsYnVtIiwibmV4dGdlbl9iYXNpY19hbGJ1bSIsImJhc2ljX2FsYnVtX2NvbXBhY3QiLCJjb21wYWN0X2FsYnVtIl0='),
(240, 64, 'id_field', 'ID'),
(241, 64, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6MCwidGVtcGxhdGUiOiIiLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MSwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(242, 65, 'title', 'NextGEN Basic Extended Album'),
(243, 65, 'module_id', 'photocrati-nextgen_basic_album'),
(244, 65, 'preview_image_relpath', 'photocrati-nextgen_basic_album#extended_preview.jpg'),
(245, 65, 'default_source', 'albums'),
(246, 65, 'view_order', '10210'),
(247, 65, 'name', 'photocrati-nextgen_basic_extended_album'),
(248, 65, 'installed_at_version', '3.17'),
(249, 65, 'hidden_from_ui', ''),
(250, 65, 'hidden_from_igw', ''),
(251, 65, '__defaults_set', '1'),
(252, 65, 'filter', 'raw'),
(253, 65, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(254, 65, 'aliases', 'WyJiYXNpY19leHRlbmRlZF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJleHRlbmRlZF9hbGJ1bSJd'),
(255, 65, 'id_field', 'ID'),
(256, 65, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6MCwidGVtcGxhdGUiOiIiLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MSwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsInRodW1ibmFpbF93aWR0aCI6MzAwLCJ0aHVtYm5haWxfaGVpZ2h0IjoyMDAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(257, 66, '__defaults_set', '1'),
(258, 66, 'filter', 'raw'),
(259, 66, 'id_field', 'ID'),
(266, 67, '__defaults_set', '1'),
(267, 67, 'filter', 'raw'),
(268, 67, 'id_field', 'ID'),
(275, 68, '__defaults_set', '1'),
(276, 68, 'filter', 'raw'),
(277, 68, 'id_field', 'ID'),
(278, 69, '__defaults_set', '1'),
(279, 69, 'filter', 'raw'),
(280, 69, 'id_field', 'ID'),
(281, 70, '__defaults_set', '1'),
(282, 70, 'filter', 'raw'),
(283, 70, 'id_field', 'ID'),
(284, 71, '_edit_last', '1'),
(285, 71, '_edit_lock', '1637511074:1'),
(286, 73, '_menu_item_type', 'post_type'),
(287, 73, '_menu_item_menu_item_parent', '0'),
(288, 73, '_menu_item_object_id', '71'),
(289, 73, '_menu_item_object', 'page'),
(290, 73, '_menu_item_target', ''),
(291, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(292, 73, '_menu_item_xfn', ''),
(293, 73, '_menu_item_url', ''),
(295, 5, '_wp_old_date', '2021-11-18'),
(296, 28, '_wp_old_date', '2021-11-18'),
(297, 29, '_wp_old_date', '2021-11-18'),
(298, 30, '_wp_old_date', '2021-11-18'),
(299, 33, '_wp_old_date', '2021-11-18'),
(300, 74, '__defaults_set', '1'),
(301, 74, 'filter', 'raw'),
(302, 74, 'id_field', 'ID'),
(315, 76, '__defaults_set', '1'),
(316, 76, 'filter', 'raw'),
(317, 76, 'id_field', 'ID'),
(318, 75, '__defaults_set', '1'),
(319, 75, 'filter', 'raw'),
(320, 75, 'id_field', 'ID'),
(321, 77, '__defaults_set', '1'),
(322, 77, 'filter', 'raw'),
(323, 77, 'id_field', 'ID'),
(324, 78, '__defaults_set', '1'),
(325, 78, 'filter', 'raw'),
(326, 78, 'id_field', 'ID'),
(331, 89, '_edit_last', '1'),
(332, 89, '_edit_lock', '1638461627:1'),
(333, 89, '_wp_page_template', 'about.php'),
(334, 91, '_menu_item_type', 'post_type'),
(335, 91, '_menu_item_menu_item_parent', '0'),
(336, 91, '_menu_item_object_id', '89'),
(337, 91, '_menu_item_object', 'page'),
(338, 91, '_menu_item_target', ''),
(339, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(340, 91, '_menu_item_xfn', ''),
(341, 91, '_menu_item_url', ''),
(343, 5, '_wp_old_date', '2021-11-21'),
(344, 28, '_wp_old_date', '2021-11-21'),
(345, 29, '_wp_old_date', '2021-11-21'),
(346, 30, '_wp_old_date', '2021-11-21'),
(347, 73, '_wp_old_date', '2021-11-21'),
(348, 33, '_wp_old_date', '2021-11-21'),
(349, 92, '_wp_attached_file', '2021/12/second-trainer.jpg'),
(350, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:290;s:6:\"height\";i:220;s:4:\"file\";s:26:\"2021/12/second-trainer.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-11-15 21:59:55', '2021-11-15 19:59:55', '<!-- wp:paragraph -->\n<p>Добре дошли в WordPress. Това е първата ви публикация. Редактирайте я или я изтрийте, след което започнете да пишете!</p>\n<!-- /wp:paragraph -->', 'Здравей, свят!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2021-11-18 10:25:53', '2021-11-18 08:25:53', '', 0, 'http://localhost/yourfitnessguide/?p=1', 0, 'post', '', 1),
(2, 1, '2021-11-15 21:59:55', '2021-11-15 19:59:55', '<!-- wp:paragraph -->\n<p>Това е примерна страница. Тя е различна от блог публикацията, защото ще стои на една позиция и ще се показва в навигацията на уебсайта (в повечето теми). Повечето хора стартират със страница „За нас“, която ги представя на потенциалните посетители на уебсайта. Съдържанието ѝ може да бъде следното:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Здравейте! Аз работя като куриер, уча за актьор и това е моят сайт. Живея в Пловдив, имам страхотно куче на име Мурджо и обичам бирата (и лошото време).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... или нещо такова:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Фирма АБВ е основана през 1991 г. и е известна с висококачествените джиджавки, които произвежда. Фирмата има над 2000 служители и е активно ангажирана в подобряването на средата за живеене у нас.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Като нов потребител на WordPress, отворете <a href=\"http://localhost/yourfitnessguide/wp-admin/\">таблото на сайта</a>, за да изтриете тази страница и да създадете нови за вашето съдържание. Приятна работа!</p>\n<!-- /wp:paragraph -->', 'Примерна страница', '', 'publish', 'closed', 'open', '', 'примерна-страница', '', '', '2021-11-15 21:59:55', '2021-11-15 19:59:55', '', 0, 'http://localhost/yourfitnessguide/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-11-15 21:59:55', '2021-11-15 19:59:55', '<!-- wp:heading --><h2>За нас</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предложен текст: </strong>Адресът на нашия сайт: http://localhost/yourfitnessguide.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Коментари</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предложен текст: </strong>Когато посетителите оставят коментари в сайта, ние събираме данните, показани във формуляра за коментари, както и IP адреса на посетителя и идентификатора на потребителския браузър, за да помогнат за откриването на спам.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимен низ, базиран на имейл адреса ви, може да бъде предоставен на услугат Gravatar, за да бъде проверено дали я използвате. Политиката за поверителност на Gravatar е тук: https://automattic.com/privacy/. След като коментарът ви бъде удобрен, профилната ви снимка ще бъде видима публично към него. </p><!-- /wp:paragraph --><!-- wp:heading --><h2>Файлове</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предложен текст: </strong>Ако качвате изображения в сайта, трябва да избягвате качването на изображения с вградени данни за местоположение (EXIF GPS). Посетителите на сайта могат да изтеглят и извлекат данни за местоположението от изображения в сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Бисквитки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предложен текст: </strong>Ако оставите коментар на нашия сайт, можете да разрешите запазването на вашите име, имейл адрес и уеб сайт в бисквитки. Те са за ваше удобство, така че да не е нужно да попълвате отново данните си, когато оставяте друг коментар. Тези бисквитки ще се пазят една година.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ако имате профил и влезете в този сайт, ще зададем временна бисквитка, за да определим дали браузърът ви приема бисквитки. Тази бисквитка не съдържа лични данни и се изтрива, когато затворите браузъра си.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Когато влезете в профила си на сайта още няколко бисквитки \nще запазят информацията ви за вход и предпочитанията ви какво да виждате на екрана. Бисквитките за вход изтичат след два дни, а за предпочитанията на екрана след година. Ако изберете опцията за запомняне, информацията ви за вход ще се пази две седмици. Ако излезете от профила си, бисквитките за вход ще бъдат изтрити. </p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ако редактирате или публикувате статия една допълнителна бисквитка ще бъде запазена в браузъра ви. Тя няма да съдържа лични данни, а просто ще добави идентификатора на публикацията, която току що сте редактирали. Изтича след един ден. </p><!-- /wp:paragraph --><!-- wp:heading --><h2>Вмъкнато съдържание от други уебсайтове</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предложен текст: </strong>Статиите на този сайт могат да бъдат вградени (видеа, изображения, съдържание и т.н.). Вграденото съдържание от други сайтове приема и се държи с посетителя на сайта като с посетител на собствения си сайт. </p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Тези сайтове могат да събират данни за вас, да използват бисквитки, да вграждат допълнителни инструменти за статистика от трети страни, да следят как работите с тези инструменти включително как потребявате вградено съдържание ако имате профил и сте влезли в него на сайта. </p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кого споделяме данните ви</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предложен текст: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Колко дълго държим личните ви данни</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предложен текст: </strong>Ако оставите коментар, коментарът и неговите метаданни се запазват за неопределено време. Това е така, за да можем автоматично да разпознаваме и одобряваме последващи ваши коментарите, вместо да ги задържаме в опашката за одобряване.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>За потребители, които се регистрират на нашия уебсайт (ако има такива), съхраняваме и личната информация, която предоставят в потребителския си профил. Всички потребители могат да виждат, редактират или изтриват личната си информация по всяко време (с изключение на това, че не могат да променят потребителското си име). Администраторите на уебсайта могат да виждат и редактират тази информация.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Вашите права над личните ви данни</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предложен текст: </strong>Ако имате профил в този сайт или сте оставяли коментари в него, можете да поискате да получите файл, съдържащ всички данни, които съхраняваме за вас, включително и данни, които сте ни предоставили. Също така можете да поискате да заличим личните данни, които съхраняваме за вас. Това обаче не включва данни, които сме задължени да съхраняваме с административни цели, за нуждите на сигурността на сайта, или по закон.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как използваме вашите данни</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предложен текст: </strong>Коментарите от посетителите могат да бъдат проверени чрез автоматична услуга за проверка за спам коментари.</p><!-- /wp:paragraph -->', 'Политика на поверителност', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-11-15 21:59:55', '2021-11-15 19:59:55', '', 0, 'http://localhost/yourfitnessguide/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-12-02 18:16:59', '2021-11-16 09:56:58', '', 'Home', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%b0%d1%87%d0%b0%d0%bb%d0%be', '', '', '2021-12-02 18:16:59', '2021-12-02 16:16:59', '', 0, 'http://localhost/yourfitnessguide/?p=5', 1, 'nav_menu_item', '', 0),
(7, 1, '2021-11-16 12:59:49', '2021-11-16 10:59:49', 'This is our weight loss diet program prepared from a certified dietologist.\r\n\r\n&nbsp;\r\n\r\n<strong>67.99BGN</strong>', 'Weight loss diet program', '', 'publish', 'open', 'open', '', 'weight-loss-diet-program', '', '', '2021-11-18 10:56:56', '2021-11-18 08:56:56', '', 0, 'http://localhost/yourfitnessguide/?p=7', 0, 'post', '', 0),
(8, 1, '2021-11-16 12:59:45', '2021-11-16 10:59:45', 'This is our weight loss diet program prepared from a certified dietologist.\r\n\r\n<strong>67.99BGN</strong>', 'Weight loss diet program', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-11-16 12:59:45', '2021-11-16 10:59:45', '', 7, 'http://localhost/yourfitnessguide/?p=8', 0, 'revision', '', 0),
(9, 1, '2021-11-18 10:25:53', '2021-11-18 08:25:53', '<!-- wp:paragraph -->\n<p>Добре дошли в WordPress. Това е първата ви публикация. Редактирайте я или я изтрийте, след което започнете да пишете!</p>\n<!-- /wp:paragraph -->', 'Здравей, свят!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-11-18 10:25:53', '2021-11-18 08:25:53', '', 1, 'http://localhost/yourfitnessguide/?p=9', 0, 'revision', '', 0),
(10, 1, '2021-11-18 10:26:52', '2021-11-18 08:26:52', 'This is our weight gain diet program prepared from a certified dietologist + a fitness program that would fulfill your goals prepared from a certified trainer.\r\n\r\n<strong>167.99BGN </strong>', 'Weight gain diet program + fitness program', '', 'publish', 'open', 'open', '', 'weight-gain-diet-program', '', '', '2021-11-18 10:54:06', '2021-11-18 08:54:06', '', 0, 'http://localhost/yourfitnessguide/?p=10', 0, 'post', '', 0),
(11, 1, '2021-11-18 10:26:52', '2021-11-18 08:26:52', '', 'Weight gain diet program', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-11-18 10:26:52', '2021-11-18 08:26:52', '', 10, 'http://localhost/yourfitnessguide/?p=11', 0, 'revision', '', 0),
(14, 1, '2021-11-18 10:27:30', '2021-11-18 08:27:30', 'This is our weight gain diet program prepared from a certified dietologist.\r\n\r\n<strong>67.99BGN</strong>', 'Weight gain diet program', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-11-18 10:27:30', '2021-11-18 08:27:30', '', 10, 'http://localhost/yourfitnessguide/?p=14', 0, 'revision', '', 0),
(15, 1, '2021-11-18 10:47:41', '2021-11-18 08:47:41', 'This is our weight gain diet program prepared from a certified dietologist.\n\n<strong>67.99BGN</strong>', 'Weight gain diet program + fitness program', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2021-11-18 10:47:41', '2021-11-18 08:47:41', '', 10, 'http://localhost/yourfitnessguide/?p=15', 0, 'revision', '', 0),
(16, 1, '2021-11-18 10:48:51', '2021-11-18 08:48:51', 'This is our weight gain diet program prepared from a certified dietologist + a fitness program that would fulfill your goals prepared from a certified trainer.\r\n\r\n<strong>167.99BGN</strong>', 'Weight gain diet program + fitness program', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-11-18 10:48:51', '2021-11-18 08:48:51', '', 10, 'http://localhost/yourfitnessguide/?p=16', 0, 'revision', '', 0),
(17, 1, '2021-11-18 10:49:24', '2021-11-18 08:49:24', '&nbsp;\r\n\r\nThis is our weight gain diet program prepared from a certified dietologist.\r\n\r\n<strong>67.99BGN</strong>', 'Weight gain diet program', '', 'publish', 'open', 'open', '', 'weight-gain-diet-program-2', '', '', '2021-11-18 10:49:52', '2021-11-18 08:49:52', '', 0, 'http://localhost/yourfitnessguide/?p=17', 0, 'post', '', 0),
(18, 1, '2021-11-18 10:49:24', '2021-11-18 08:49:24', '&nbsp;\r\n\r\nThis is our weight gain diet program prepared from a certified dietologist.\r\n\r\n<strong>67.99BGN</strong>', 'Weight gain diet program', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-11-18 10:49:24', '2021-11-18 08:49:24', '', 17, 'http://localhost/yourfitnessguide/?p=18', 0, 'revision', '', 0),
(19, 1, '2021-11-18 10:54:06', '2021-11-18 08:54:06', 'This is our weight gain diet program prepared from a certified dietologist + a fitness program that would fulfill your goals prepared from a certified trainer.\r\n\r\n<strong>167.99BGN </strong>', 'Weight gain diet program + fitness program', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-11-18 10:54:06', '2021-11-18 08:54:06', '', 10, 'http://localhost/yourfitnessguide/?p=19', 0, 'revision', '', 0),
(20, 1, '2021-11-18 10:55:27', '2021-11-18 08:55:27', '<div class=\"right-content\">\r\n\r\nThis is our weight loss diet program prepared from a certified dietologist + a fitness program that would fulfill your goals prepared from a certified trainer.\r\n\r\n<strong>167.99BGN&nbsp;</strong>\r\n\r\n</div>', 'Weight Loss Diet Program + Fitness Program', '', 'publish', 'open', 'open', '', 'weight-loss-diet-program-fitness-program', '', '', '2021-11-27 00:07:26', '2021-11-26 22:07:26', '', 0, 'http://localhost/yourfitnessguide/?p=20', 0, 'post', '', 0),
(21, 1, '2021-11-18 10:55:27', '2021-11-18 08:55:27', '<div class=\"right-content\">\r\n\r\nThis is our weight loss diet program prepared from a certified dietologist + a fitness program that would fulfill your goals prepared from a certified trainer.\r\n\r\n<strong>167.99BGN </strong>\r\n\r\n</div>', 'Weight Loss Diet Program + Fitness Program', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-11-18 10:55:27', '2021-11-18 08:55:27', '', 20, 'http://localhost/yourfitnessguide/?p=21', 0, 'revision', '', 0),
(22, 1, '2021-11-18 10:56:05', '2021-11-18 08:56:05', '<div class=\"right-content\">\r\n<p style=\"text-align: center;\">This is our weight loss diet program prepared from a certified dietologist + a fitness program that would fulfill your goals prepared from a certified trainer.</p>\r\n<p style=\"text-align: center;\"><strong>167.99BGN </strong></p>\r\n\r\n</div>', 'Weight Loss Diet Program + Fitness Program', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-11-18 10:56:05', '2021-11-18 08:56:05', '', 20, 'http://localhost/yourfitnessguide/?p=22', 0, 'revision', '', 0),
(23, 1, '2021-11-18 10:56:21', '2021-11-18 08:56:21', '<div class=\"right-content\">\r\n<p style=\"text-align: left;\">This is our weight loss diet program prepared from a certified dietologist + a fitness program that would fulfill your goals prepared from a certified trainer.</p>\r\n<p style=\"text-align: left;\"><strong>167.99BGN </strong></p>\r\n\r\n</div>', 'Weight Loss Diet Program + Fitness Program', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-11-18 10:56:21', '2021-11-18 08:56:21', '', 20, 'http://localhost/yourfitnessguide/?p=23', 0, 'revision', '', 0),
(24, 1, '2021-11-18 10:56:56', '2021-11-18 08:56:56', 'This is our weight loss diet program prepared from a certified dietologist.\r\n\r\n&nbsp;\r\n\r\n<strong>67.99BGN</strong>', 'Weight loss diet program', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-11-18 10:56:56', '2021-11-18 08:56:56', '', 7, 'http://localhost/yourfitnessguide/?p=24', 0, 'revision', '', 0),
(28, 1, '2021-12-02 18:16:59', '2021-11-18 09:58:08', '', 'Programs', '', 'publish', 'closed', 'closed', '', 'programs', '', '', '2021-12-02 18:16:59', '2021-12-02 16:16:59', '', 0, 'http://localhost/yourfitnessguide/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2021-12-02 18:16:59', '2021-11-18 10:08:51', '', 'Trainers', '', 'publish', 'closed', 'closed', '', 'trainers', '', '', '2021-12-02 18:16:59', '2021-12-02 16:16:59', '', 0, 'http://localhost/yourfitnessguide/?p=29', 3, 'nav_menu_item', '', 0),
(30, 1, '2021-12-02 18:16:59', '2021-11-18 10:28:31', '', 'Schedule', '', 'publish', 'closed', 'closed', '', 'schedule', '', '', '2021-12-02 18:16:59', '2021-12-02 16:16:59', '', 0, 'http://localhost/yourfitnessguide/?p=30', 4, 'nav_menu_item', '', 0),
(31, 1, '2021-11-18 12:35:00', '2021-11-18 10:35:00', '<p style=\"text-align: center;\">[contact-form-7 id=\"34\" title=\"Форма за контакти 1\"]</p>', 'Contact us<style>h1{text-align: center;}</style>', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2021-11-21 18:13:52', '2021-11-21 16:13:52', '', 0, 'http://localhost/yourfitnessguide/?page_id=31', 0, 'page', '', 0),
(32, 1, '2021-11-18 12:34:56', '2021-11-18 10:34:56', 'Contact us here:', 'Contact us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-11-18 12:34:56', '2021-11-18 10:34:56', '', 31, 'http://localhost/yourfitnessguide/?p=32', 0, 'revision', '', 0),
(33, 1, '2021-12-02 18:16:59', '2021-11-18 10:35:22', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2021-12-02 18:16:59', '2021-12-02 16:16:59', '', 0, 'http://localhost/yourfitnessguide/?p=33', 6, 'nav_menu_item', '', 0),
(34, 1, '2021-11-18 13:00:12', '2021-11-18 11:00:12', '<label> Вашето име(Три имена)\r\n    [text* your-name] </label>\r\n\r\n<label> Вашият имейл\r\n    [email* your-email] </label>\r\n\r\n<label> Относно\r\n    [text* your-subject] </label>\r\n\r\n<label> Вашето съобщение\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Изпращане\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <rtrtrtr@abv.bg>\n[_site_admin_email]\nОт: [your-name] <[your-email]>\r\nОтносно: [your-subject]\r\n\r\nТекст на съобщението:\r\n[your-message]\r\n\r\n-- \r\nТози имейл е изпратен от формата за контакт на [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <rtrtrtr@abv.bg>\n[your-email]\nТекст на съобщението:\r\n[your-message]\r\n\r\n-- \r\nТози имейл е изпратен от формата за контакт на [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nБлагодарим ви за вашето съобщение. То беше изпратено.\nВъзникна грешка при опит за изпращане на съобщението Ви. Моля, опитайте отново по-късно.\nЕдно или повече полета имат грешка. Моля проверете и опитайте отново.\nВъзникна грешка при опит за изпращане на съобщението Ви. Моля, опитайте отново по-късно.\nТрябва да приемете условията за ползване преди да изпратите вашето съобщение.\nТова поле е задължително.\nТова поле е прекалено дълго.\nТова поле е прекалено кратко.\nВъзникна неизвестна грешка при качването на файла.\nНямате право да качвате файлове от този тип.\nФайлът е прекалено голям.\nГрешка при качването на файла.\nФорматът на датата е неправилен.\nДатата е преди първата позволена.\nДатата е след последната позволена.\nФорма̀та на номера е невалиден.\nНомерът е по-малък от минималния позволен.\nНомерът е по-голям от максималния позволен.\nОтговорът на теста е неправилен.\nВъведеният имейл адрес е невалиден.\nВъведеният URL адрес е невалиден.\nТелефонният номер е невалиден.', 'Форма за контакти 1', '', 'publish', 'closed', 'closed', '', '%d1%84%d0%be%d1%80%d0%bc%d0%b0-%d0%b7%d0%b0-%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%b8-1', '', '', '2021-11-18 20:43:02', '2021-11-18 18:43:02', '', 0, 'http://localhost/yourfitnessguide/?post_type=wpcf7_contact_form&#038;p=34', 0, 'wpcf7_contact_form', '', 0),
(35, 1, '2021-11-18 13:28:21', '2021-11-18 11:28:21', 'Contact us here:\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id=\"34\" title=\"Форма за контакти 1\"]', 'Contact us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-11-18 13:28:21', '2021-11-18 11:28:21', '', 31, 'http://localhost/yourfitnessguide/?p=35', 0, 'revision', '', 0),
(36, 1, '2021-11-18 13:30:22', '2021-11-18 11:30:22', '<p style=\"text-align: center;\">Contact us here:</p>\r\n<p style=\"text-align: center;\"></p>\r\n<p style=\"text-align: center;\">[contact-form-7 id=\"34\" title=\"Форма за контакти 1\"]</p>', 'Contact us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-11-18 13:30:22', '2021-11-18 11:30:22', '', 31, 'http://localhost/yourfitnessguide/?p=36', 0, 'revision', '', 0),
(37, 1, '2021-11-18 13:40:34', '2021-11-18 11:40:34', '<style>#34{background-color: #ed563b;}</style>\n<p style=\"text-align: center;\">Contact us here:</p>\n<p style=\"text-align: center;\">[contact-form-7 id=\"34\" title=\"Форма за контакти 1\"]</p>', 'Contact us', '', 'inherit', 'closed', 'closed', '', '31-autosave-v1', '', '', '2021-11-18 13:40:34', '2021-11-18 11:40:34', '', 31, 'http://localhost/yourfitnessguide/?p=37', 0, 'revision', '', 0),
(38, 1, '2021-11-18 13:32:22', '2021-11-18 11:32:22', '<p style=\"text-align: center;\">Contact us here:</p>\r\n<p style=\"text-align: center; background-color: orange;\">[contact-form-7 id=\"34\" title=\"Форма за контакти 1\"]</p>', 'Contact us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-11-18 13:32:22', '2021-11-18 11:32:22', '', 31, 'http://localhost/yourfitnessguide/?p=38', 0, 'revision', '', 0),
(40, 1, '2021-11-18 13:38:34', '2021-11-18 11:38:34', '<style>*{background-color: orange;}</style>\r\n<p style=\"text-align: center;\">Contact us here:</p>\r\n<p style=\"text-align: center; \">[contact-form-7 id=\"34\" title=\"Форма за контакти 1\"]</p>', 'Contact us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-11-18 13:38:34', '2021-11-18 11:38:34', '', 31, 'http://localhost/yourfitnessguide/?p=40', 0, 'revision', '', 0),
(41, 1, '2021-11-18 13:39:33', '2021-11-18 11:39:33', '<style>#34{background-color: #ed563b;}</style>\r\n<p style=\"text-align: center;\">Contact us here:</p>\r\n<p style=\"text-align: center; \">[contact-form-7 id=\"34\" title=\"Форма за контакти 1\"]</p>', 'Contact us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-11-18 13:39:33', '2021-11-18 11:39:33', '', 31, 'http://localhost/yourfitnessguide/?p=41', 0, 'revision', '', 0),
(42, 1, '2021-11-18 13:43:59', '2021-11-18 11:43:59', '<style>#34{background-color: #ed563b;}</style>\r\n<p style=\"text-align: center;\">Contact us here:</p>\r\n<p style=\"text-align: center;\">[contact-form-7 id=\"34\" title=\"Форма за контакти 1\"]</p>', 'Contact us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-11-18 13:43:59', '2021-11-18 11:43:59', '', 31, 'http://localhost/yourfitnessguide/?p=42', 0, 'revision', '', 0),
(43, 1, '2021-11-18 13:44:29', '2021-11-18 11:44:29', '<style>#34{background-color: #ed563b;}</style>\r\n<p style=\"text-align: center;\">[contact-form-7 id=\"34\" title=\"Форма за контакти 1\"]</p>', 'Contact us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-11-18 13:44:29', '2021-11-18 11:44:29', '', 31, 'http://localhost/yourfitnessguide/?p=43', 0, 'revision', '', 0),
(44, 1, '2021-11-18 13:46:37', '2021-11-18 11:46:37', '{\n    \"custom_css[yourfitnessguide]\": {\n        \"value\": \"[ht_message mstyle=\\u201dinfo\\u201d title=\\u201d\\u201d show_icon=\\u201d\\u201d id=\\u201d\\u201d class=\\u201d\\u201d style=\\u201d\\u201d ]div.wpcf7 {\\nbackground-color: #fbefde;\\nborder: 1px solid #f28f27;\\npadding:20px;\\n}\\n.wpcf7 input[type=\\u201dtext\\u201d],\\n.wpcf7 input[type=\\u201demail\\u201d],\\n.wpcf7 textarea {\\nbackground:#725f4c;\\ncolor:#FFF;\\nfont-family:lora, sans-serif;\\nfont-style:italic;\\n}\\n.wpcf7 input[type=\\u201dsubmit\\u201d],\\n.wpcf7 input[type=\\u201dbutton\\u201d] {\\nbackground-color:#725f4c;\\nwidth:100%;\\ntext-align:center;\\ntext-transform:uppercase;\\n}[/ht_message]\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-11-18 11:46:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '551970fa-eb5f-4dda-b731-708f11872087', '', '', '2021-11-18 13:46:37', '2021-11-18 11:46:37', '', 0, 'http://localhost/yourfitnessguide/2021/11/18/551970fa-eb5f-4dda-b731-708f11872087/', 0, 'customize_changeset', '', 0),
(45, 1, '2021-11-18 13:46:37', '2021-11-18 11:46:37', '.page-title {\ntext-align: center; !important\n}', 'yourfitnessguide', '', 'publish', 'closed', 'closed', '', 'yourfitnessguide', '', '', '2021-11-21 01:27:58', '2021-11-20 23:27:58', '', 0, 'http://localhost/yourfitnessguide/2021/11/18/yourfitnessguide/', 0, 'custom_css', '', 0),
(46, 1, '2021-11-18 13:46:37', '2021-11-18 11:46:37', '[ht_message mstyle=”info” title=”” show_icon=”” id=”” class=”” style=”” ]div.wpcf7 {\nbackground-color: #fbefde;\nborder: 1px solid #f28f27;\npadding:20px;\n}\n.wpcf7 input[type=”text”],\n.wpcf7 input[type=”email”],\n.wpcf7 textarea {\nbackground:#725f4c;\ncolor:#FFF;\nfont-family:lora, sans-serif;\nfont-style:italic;\n}\n.wpcf7 input[type=”submit”],\n.wpcf7 input[type=”button”] {\nbackground-color:#725f4c;\nwidth:100%;\ntext-align:center;\ntext-transform:uppercase;\n}[/ht_message]', 'yourfitnessguide', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2021-11-18 13:46:37', '2021-11-18 11:46:37', '', 45, 'http://localhost/yourfitnessguide/?p=46', 0, 'revision', '', 0),
(47, 1, '2021-11-18 16:21:44', '2021-11-18 14:21:44', '{\n    \"custom_css[yourfitnessguide]\": {\n        \"value\": \"div.wpcf7 {\\nbackground-color: #fbefde;\\nborder: 1px solid #f28f27;\\npadding:20px;\\n}\\n.wpcf7 input[type=\\u201dtext\\u201d],\\n.wpcf7 input[type=\\u201demail\\u201d],\\n.wpcf7 textarea {\\nbackground:#725f4c;\\ncolor:#FFF;\\nfont-family:lora, sans-serif;\\nfont-style:italic;\\n}\\n.wpcf7 input[type=\\u201dsubmit\\u201d],\\n.wpcf7 input[type=\\u201dbutton\\u201d] {\\nbackground-color:#725f4c;\\nwidth:100%;\\ntext-align:center;\\ntext-transform:uppercase;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-11-18 14:21:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '21ff505e-75fe-4201-9956-40bb7a59f197', '', '', '2021-11-18 16:21:44', '2021-11-18 14:21:44', '', 0, 'http://localhost/yourfitnessguide/2021/11/18/21ff505e-75fe-4201-9956-40bb7a59f197/', 0, 'customize_changeset', '', 0),
(48, 1, '2021-11-18 16:21:44', '2021-11-18 14:21:44', 'div.wpcf7 {\nbackground-color: #fbefde;\nborder: 1px solid #f28f27;\npadding:20px;\n}\n.wpcf7 input[type=”text”],\n.wpcf7 input[type=”email”],\n.wpcf7 textarea {\nbackground:#725f4c;\ncolor:#FFF;\nfont-family:lora, sans-serif;\nfont-style:italic;\n}\n.wpcf7 input[type=”submit”],\n.wpcf7 input[type=”button”] {\nbackground-color:#725f4c;\nwidth:100%;\ntext-align:center;\ntext-transform:uppercase;\n}', 'yourfitnessguide', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2021-11-18 16:21:44', '2021-11-18 14:21:44', '', 45, 'http://localhost/yourfitnessguide/?p=48', 0, 'revision', '', 0),
(49, 1, '2021-11-18 16:24:16', '2021-11-18 14:24:16', '\r\n<p style=\"text-align: center;\">[contact-form-7 id=\"34\" title=\"Форма за контакти 1\"]</p>', 'Contact us', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-11-18 16:24:16', '2021-11-18 14:24:16', '', 31, 'http://localhost/yourfitnessguide/?p=49', 0, 'revision', '', 0),
(50, 1, '2021-11-18 16:28:32', '2021-11-18 14:28:32', 'div.wpcf7 {\r\nbackground-color: #fbefde;\r\nborder: 1px solid #f28f27;\r\npadding:20px;\r\n}\r\n.wpcf7 input[type=”text”],\r\n.wpcf7 input[type=”email”],\r\n.wpcf7 textarea {\r\nbackground:#725f4c;\r\ncolor:#FFF;\r\nfont-family:lora, sans-serif;\r\nfont-style:italic;\r\n}\r\n.wpcf7 input[type=”submit”],\r\n.wpcf7 input[type=”button”] {\r\nbackground-color:#725f4c;\r\nwidth:100%;\r\ntext-align:center;\r\ntext-transform:uppercase;\r\n}', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2021-11-18 16:29:51', '2021-11-18 14:29:51', '', 0, 'http://localhost/yourfitnessguide/?post_type=custom-css-js&#038;p=50', 0, 'custom-css-js', '', 0),
(51, 1, '2021-11-18 16:30:27', '2021-11-18 14:30:27', '{\n    \"custom_css[yourfitnessguide]\": {\n        \"value\": \"wpcf7 {\\nbackground-color: #fbefde;\\nborder: 1px solid #f28f27;\\npadding:20px;\\n}\\n.wpcf7 input[type=\\u201dtext\\u201d],\\n.wpcf7 input[type=\\u201demail\\u201d],\\n.wpcf7 textarea {\\nbackground:#725f4c;\\ncolor:#FFF;\\nfont-family:lora, sans-serif;\\nfont-style:italic;\\n}\\n.wpcf7 input[type=\\u201dsubmit\\u201d],\\n.wpcf7 input[type=\\u201dbutton\\u201d] {\\nbackground-color:#725f4c;\\nwidth:100%;\\ntext-align:center;\\ntext-transform:uppercase;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-11-18 14:30:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'eedae197-eec8-46e1-89db-78151d5d3bc0', '', '', '2021-11-18 16:30:27', '2021-11-18 14:30:27', '', 0, 'http://localhost/yourfitnessguide/2021/11/18/eedae197-eec8-46e1-89db-78151d5d3bc0/', 0, 'customize_changeset', '', 0),
(52, 1, '2021-11-18 16:30:27', '2021-11-18 14:30:27', 'wpcf7 {\nbackground-color: #fbefde;\nborder: 1px solid #f28f27;\npadding:20px;\n}\n.wpcf7 input[type=”text”],\n.wpcf7 input[type=”email”],\n.wpcf7 textarea {\nbackground:#725f4c;\ncolor:#FFF;\nfont-family:lora, sans-serif;\nfont-style:italic;\n}\n.wpcf7 input[type=”submit”],\n.wpcf7 input[type=”button”] {\nbackground-color:#725f4c;\nwidth:100%;\ntext-align:center;\ntext-transform:uppercase;\n}', 'yourfitnessguide', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2021-11-18 16:30:27', '2021-11-18 14:30:27', '', 45, 'http://localhost/yourfitnessguide/?p=52', 0, 'revision', '', 0),
(53, 1, '2021-11-21 00:36:25', '2021-11-20 22:36:25', '{\n    \"custom_css[yourfitnessguide]\": {\n        \"value\": \".wpcf7\\n{\\n    background-color: #f7f7f7;\\n    border: 2px solid #0f0;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-11-20 22:36:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c60eca90-45f8-4390-833a-6e0b8642b24b', '', '', '2021-11-21 00:36:25', '2021-11-20 22:36:25', '', 0, 'http://localhost/yourfitnessguide/2021/11/21/c60eca90-45f8-4390-833a-6e0b8642b24b/', 0, 'customize_changeset', '', 0),
(54, 1, '2021-11-21 00:36:25', '2021-11-20 22:36:25', '.wpcf7\n{\n    background-color: #f7f7f7;\n    border: 2px solid #0f0;\n}', 'yourfitnessguide', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2021-11-21 00:36:25', '2021-11-20 22:36:25', '', 45, 'http://localhost/yourfitnessguide/?p=54', 0, 'revision', '', 0),
(55, 1, '2021-11-21 01:24:19', '2021-11-20 23:24:19', '{\n    \"custom_css[yourfitnessguide]\": {\n        \"value\": \".page-title {\\ntext-align: center;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-11-20 23:24:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7cd58f18-b7fd-4c9f-a560-66598e29833f', '', '', '2021-11-21 01:24:19', '2021-11-20 23:24:19', '', 0, 'http://localhost/yourfitnessguide/2021/11/21/7cd58f18-b7fd-4c9f-a560-66598e29833f/', 0, 'customize_changeset', '', 0),
(56, 1, '2021-11-21 01:24:19', '2021-11-20 23:24:19', '.page-title {\ntext-align: center;\n}', 'yourfitnessguide', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2021-11-21 01:24:19', '2021-11-20 23:24:19', '', 45, 'http://localhost/yourfitnessguide/?p=56', 0, 'revision', '', 0),
(57, 1, '2021-11-21 01:27:58', '2021-11-20 23:27:58', '{\n    \"custom_css[yourfitnessguide]\": {\n        \"value\": \".page-title {\\ntext-align: center; !important\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-11-20 23:27:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fc0ed7bc-574a-4cab-af25-028ae146f20a', '', '', '2021-11-21 01:27:58', '2021-11-20 23:27:58', '', 0, 'http://localhost/yourfitnessguide/2021/11/21/fc0ed7bc-574a-4cab-af25-028ae146f20a/', 0, 'customize_changeset', '', 0),
(58, 1, '2021-11-21 01:27:58', '2021-11-20 23:27:58', '.page-title {\ntext-align: center; !important\n}', 'yourfitnessguide', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2021-11-21 01:27:58', '2021-11-20 23:27:58', '', 45, 'http://localhost/yourfitnessguide/?p=58', 0, 'revision', '', 0),
(59, 1, '2021-11-21 11:49:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGh1bWJuYWlscyIsIm1vZHVsZV9pZCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19nYWxsZXJ5IiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19nYWxsZXJ5I3RodW1iX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAwMCwiYWxpYXNlcyI6WyJiYXNpY190aHVtYm5haWwiLCJiYXNpY190aHVtYm5haWxzIiwibmV4dGdlbl9iYXNpY190aHVtYm5haWxzIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMy4xNyIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiaW1hZ2VzX3Blcl9wYWdlIjoiMjQiLCJudW1iZXJfb2ZfY29sdW1ucyI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwic2hvd19hbGxfaW5fbGlnaHRib3giOjAsImFqYXhfcGFnaW5hdGlvbiI6MSwidXNlX2ltYWdlYnJvd3Nlcl9lZmZlY3QiOjAsInRlbXBsYXRlIjoiIiwiZGlzcGxheV9ub19pbWFnZXNfZXJyb3IiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwic2hvd19zbGlkZXNob3dfbGluayI6MCwic2xpZGVzaG93X2xpbmtfdGV4dCI6IlZpZXcgU2xpZGVzaG93Iiwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6IjEwMCIsInRodW1ibmFpbF9jcm9wIjoxLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsImhpZGRlbl9mcm9tX2lndyI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic Thumbnails', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-11-21 11:49:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGh1bWJuYWlscyIsIm1vZHVsZV9pZCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19nYWxsZXJ5IiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19nYWxsZXJ5I3RodW1iX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAwMCwiYWxpYXNlcyI6WyJiYXNpY190aHVtYm5haWwiLCJiYXNpY190aHVtYm5haWxzIiwibmV4dGdlbl9iYXNpY190aHVtYm5haWxzIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMy4xNyIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiaW1hZ2VzX3Blcl9wYWdlIjoiMjQiLCJudW1iZXJfb2ZfY29sdW1ucyI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwic2hvd19hbGxfaW5fbGlnaHRib3giOjAsImFqYXhfcGFnaW5hdGlvbiI6MSwidXNlX2ltYWdlYnJvd3Nlcl9lZmZlY3QiOjAsInRlbXBsYXRlIjoiIiwiZGlzcGxheV9ub19pbWFnZXNfZXJyb3IiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwic2hvd19zbGlkZXNob3dfbGluayI6MCwic2xpZGVzaG93X2xpbmtfdGV4dCI6IlZpZXcgU2xpZGVzaG93Iiwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6IjEwMCIsInRodW1ibmFpbF9jcm9wIjoxLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsImhpZGRlbl9mcm9tX2lndyI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://localhost/yourfitnessguide/?post_type=display_type&p=59', 0, 'display_type', '', 0),
(60, 1, '2021-11-21 11:49:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2xpZGVzaG93IiwibW9kdWxlX2lkIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2dhbGxlcnkiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2dhbGxlcnkjc2xpZGVzaG93X3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAxMCwiYWxpYXNlcyI6WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMy4xNyIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjo3NTAsImdhbGxlcnlfaGVpZ2h0Ijo1MDAsInNob3dfdGh1bWJuYWlsX2xpbmsiOjAsInRodW1ibmFpbF9saW5rX3RleHQiOiJWaWV3IFRodW1ibmFpbHMiLCJ0ZW1wbGF0ZSI6IiIsImRpc3BsYXlfdmlldyI6ImRlZmF1bHQiLCJhdXRvcGxheSI6MSwicGF1c2VvbmhvdmVyIjoxLCJhcnJvd3MiOjAsImludGVydmFsIjozMDAwLCJ0cmFuc2l0aW9uX3NwZWVkIjozMDAsInRyYW5zaXRpb25fc3R5bGUiOiJmYWRlIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN Basic Slideshow', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-11-21 11:49:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2xpZGVzaG93IiwibW9kdWxlX2lkIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2dhbGxlcnkiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2dhbGxlcnkjc2xpZGVzaG93X3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAxMCwiYWxpYXNlcyI6WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMy4xNyIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjo3NTAsImdhbGxlcnlfaGVpZ2h0Ijo1MDAsInNob3dfdGh1bWJuYWlsX2xpbmsiOjAsInRodW1ibmFpbF9saW5rX3RleHQiOiJWaWV3IFRodW1ibmFpbHMiLCJ0ZW1wbGF0ZSI6IiIsImRpc3BsYXlfdmlldyI6ImRlZmF1bHQiLCJhdXRvcGxheSI6MSwicGF1c2VvbmhvdmVyIjoxLCJhcnJvd3MiOjAsImludGVydmFsIjozMDAwLCJ0cmFuc2l0aW9uX3NwZWVkIjozMDAsInRyYW5zaXRpb25fc3R5bGUiOiJmYWRlIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, 'http://localhost/yourfitnessguide/?post_type=display_type&p=60', 0, 'display_type', '', 0),
(61, 1, '2021-11-21 11:49:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgSW1hZ2VCcm93c2VyIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIjcHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDIwLCJhbGlhc2VzIjpbImJhc2ljX2ltYWdlYnJvd3NlciIsImltYWdlYnJvd3NlciIsIm5leHRnZW5fYmFzaWNfaW1hZ2Vicm93c2VyIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfaW1hZ2Vicm93c2VyIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIzLjE3IiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc3BsYXlfdmlldyI6ImRlZmF1bHQtdmlldy5waHAiLCJ0ZW1wbGF0ZSI6IiIsImFqYXhfcGFnaW5hdGlvbiI6IjEiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsImhpZGRlbl9mcm9tX2lndyI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic ImageBrowser', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-11-21 11:49:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgSW1hZ2VCcm93c2VyIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIjcHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDIwLCJhbGlhc2VzIjpbImJhc2ljX2ltYWdlYnJvd3NlciIsImltYWdlYnJvd3NlciIsIm5leHRnZW5fYmFzaWNfaW1hZ2Vicm93c2VyIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfaW1hZ2Vicm93c2VyIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIzLjE3IiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc3BsYXlfdmlldyI6ImRlZmF1bHQtdmlldy5waHAiLCJ0ZW1wbGF0ZSI6IiIsImFqYXhfcGFnaW5hdGlvbiI6IjEiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsImhpZGRlbl9mcm9tX2lndyI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://localhost/yourfitnessguide/?post_type=display_type&p=61', 0, 'display_type', '', 0),
(62, 1, '2021-11-21 11:49:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2luZ2xlUGljIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zaW5nbGVwaWMjcHJldmlldy5naWYiLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDYwLCJoaWRkZW5fZnJvbV91aSI6dHJ1ZSwiaGlkZGVuX2Zyb21faWd3Ijp0cnVlLCJhbGlhc2VzIjpbImJhc2ljX3NpbmdsZXBpYyIsInNpbmdsZXBpYyIsIm5leHRnZW5fYmFzaWNfc2luZ2xlcGljIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2luZ2xlcGljIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIzLjE3IiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsIndpZHRoIjoiIiwiaGVpZ2h0IjoiIiwibW9kZSI6IiIsImRpc3BsYXlfd2F0ZXJtYXJrIjowLCJkaXNwbGF5X3JlZmxlY3Rpb24iOjAsImZsb2F0IjoiIiwibGluayI6IiIsImxpbmtfdGFyZ2V0IjoiX2JsYW5rIiwicXVhbGl0eSI6MTAwLCJjcm9wIjowLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic SinglePic', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-11-21 11:49:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2luZ2xlUGljIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zaW5nbGVwaWMjcHJldmlldy5naWYiLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDYwLCJoaWRkZW5fZnJvbV91aSI6dHJ1ZSwiaGlkZGVuX2Zyb21faWd3Ijp0cnVlLCJhbGlhc2VzIjpbImJhc2ljX3NpbmdsZXBpYyIsInNpbmdsZXBpYyIsIm5leHRnZW5fYmFzaWNfc2luZ2xlcGljIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2luZ2xlcGljIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIzLjE3IiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsIndpZHRoIjoiIiwiaGVpZ2h0IjoiIiwibW9kZSI6IiIsImRpc3BsYXlfd2F0ZXJtYXJrIjowLCJkaXNwbGF5X3JlZmxlY3Rpb24iOjAsImZsb2F0IjoiIiwibGluayI6IiIsImxpbmtfdGFyZ2V0IjoiX2JsYW5rIiwicXVhbGl0eSI6MTAwLCJjcm9wIjowLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://localhost/yourfitnessguide/?post_type=display_type&p=62', 0, 'display_type', '', 0),
(63, 1, '2021-11-21 11:49:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGFnQ2xvdWQiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkI3ByZXZpZXcuZ2lmIiwiZGVmYXVsdF9zb3VyY2UiOiJ0YWdzIiwidmlld19vcmRlciI6MTAxMDAsImFsaWFzZXMiOlsiYmFzaWNfdGFnY2xvdWQiLCJ0YWdjbG91ZCIsIm5leHRnZW5fYmFzaWNfdGFnY2xvdWQiXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190YWdjbG91ZCIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMy4xNyIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwibnVtYmVyIjo0NSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN Basic TagCloud', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-11-21 11:49:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGFnQ2xvdWQiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkI3ByZXZpZXcuZ2lmIiwiZGVmYXVsdF9zb3VyY2UiOiJ0YWdzIiwidmlld19vcmRlciI6MTAxMDAsImFsaWFzZXMiOlsiYmFzaWNfdGFnY2xvdWQiLCJ0YWdjbG91ZCIsIm5leHRnZW5fYmFzaWNfdGFnY2xvdWQiXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190YWdjbG91ZCIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMy4xNyIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwibnVtYmVyIjo0NSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJoaWRkZW5fZnJvbV9pZ3ciOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, 'http://localhost/yourfitnessguide/?post_type=display_type&p=63', 0, 'display_type', '', 0),
(64, 1, '2021-11-21 11:49:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgQ29tcGFjdCBBbGJ1bSIsIm1vZHVsZV9pZCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19hbGJ1bSIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2FsYnVtI2NvbXBhY3RfcHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImFsYnVtcyIsInZpZXdfb3JkZXIiOjEwMjAwLCJhbGlhc2VzIjpbImJhc2ljX2NvbXBhY3RfYWxidW0iLCJuZXh0Z2VuX2Jhc2ljX2FsYnVtIiwiYmFzaWNfYWxidW1fY29tcGFjdCIsImNvbXBhY3RfYWxidW0iXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19jb21wYWN0X2FsYnVtIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIzLjE3IiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc3BsYXlfdmlldyI6ImRlZmF1bHQtdmlldy5waHAiLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJlbmFibGVfZGVzY3JpcHRpb25zIjowLCJ0ZW1wbGF0ZSI6IiIsIm9wZW5fZ2FsbGVyeV9pbl9saWdodGJveCI6MCwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjoxLCJ0aHVtYm5haWxfcXVhbGl0eSI6MTAwLCJ0aHVtYm5haWxfY3JvcCI6MSwidGh1bWJuYWlsX3dhdGVybWFyayI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic Compact Album', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-11-21 11:49:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgQ29tcGFjdCBBbGJ1bSIsIm1vZHVsZV9pZCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19hbGJ1bSIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2FsYnVtI2NvbXBhY3RfcHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImFsYnVtcyIsInZpZXdfb3JkZXIiOjEwMjAwLCJhbGlhc2VzIjpbImJhc2ljX2NvbXBhY3RfYWxidW0iLCJuZXh0Z2VuX2Jhc2ljX2FsYnVtIiwiYmFzaWNfYWxidW1fY29tcGFjdCIsImNvbXBhY3RfYWxidW0iXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19jb21wYWN0X2FsYnVtIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIzLjE3IiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc3BsYXlfdmlldyI6ImRlZmF1bHQtdmlldy5waHAiLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJlbmFibGVfZGVzY3JpcHRpb25zIjowLCJ0ZW1wbGF0ZSI6IiIsIm9wZW5fZ2FsbGVyeV9pbl9saWdodGJveCI6MCwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjoxLCJ0aHVtYm5haWxfcXVhbGl0eSI6MTAwLCJ0aHVtYm5haWxfY3JvcCI6MSwidGh1bWJuYWlsX3dhdGVybWFyayI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/yourfitnessguide/?post_type=display_type&p=64', 0, 'display_type', '', 0),
(65, 1, '2021-11-21 11:49:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgRXh0ZW5kZWQgQWxidW0iLCJtb2R1bGVfaWQiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfYWxidW0iLCJlbnRpdHlfdHlwZXMiOlsiYWxidW0iLCJnYWxsZXJ5Il0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19hbGJ1bSNleHRlbmRlZF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMTAsImFsaWFzZXMiOlsiYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJuZXh0Z2VuX2Jhc2ljX2V4dGVuZGVkX2FsYnVtIiwiZXh0ZW5kZWRfYWxidW0iXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19leHRlbmRlZF9hbGJ1bSIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMy4xNyIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6MCwidGVtcGxhdGUiOiIiLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MSwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsInRodW1ibmFpbF93aWR0aCI6MzAwLCJ0aHVtYm5haWxfaGVpZ2h0IjoyMDAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsImhpZGRlbl9mcm9tX2lndyI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic Extended Album', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-11-21 11:49:01', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgRXh0ZW5kZWQgQWxidW0iLCJtb2R1bGVfaWQiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfYWxidW0iLCJlbnRpdHlfdHlwZXMiOlsiYWxidW0iLCJnYWxsZXJ5Il0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19hbGJ1bSNleHRlbmRlZF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMTAsImFsaWFzZXMiOlsiYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJuZXh0Z2VuX2Jhc2ljX2V4dGVuZGVkX2FsYnVtIiwiZXh0ZW5kZWRfYWxidW0iXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19leHRlbmRlZF9hbGJ1bSIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMy4xNyIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6MCwidGVtcGxhdGUiOiIiLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MSwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsInRodW1ibmFpbF93aWR0aCI6MzAwLCJ0aHVtYm5haWxfaGVpZ2h0IjoyMDAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsImhpZGRlbl9mcm9tX2lndyI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://localhost/yourfitnessguide/?post_type=display_type&p=65', 0, 'display_type', '', 0),
(66, 1, '2021-11-21 11:54:44', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-11-21 11:54:44', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/yourfitnessguide/?p=66', 0, 'ngg_gallery', '', 0),
(67, 1, '2021-11-21 11:54:51', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-11-21 11:54:51', '2021-11-21 09:54:51', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/yourfitnessguide/?p=67', 0, 'ngg_pictures', '', 0),
(68, 1, '2021-11-21 11:54:51', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-11-21 11:54:51', '2021-11-21 09:54:51', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/yourfitnessguide/?p=68', 0, 'ngg_pictures', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(69, 1, '2021-11-21 11:54:51', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-11-21 11:54:51', '2021-11-21 09:54:51', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/yourfitnessguide/?p=69', 0, 'ngg_pictures', '', 0),
(70, 1, '2021-11-21 11:54:51', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-11-21 11:54:51', '2021-11-21 09:54:51', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/yourfitnessguide/?p=70', 0, 'ngg_pictures', '', 0),
(71, 1, '2021-11-21 11:56:00', '2021-11-21 09:56:00', '[Best_Wordpress_Gallery id=\"4\" gal_title=\"main\"]', 'Gallery<style>h1{text-align: center;}</style>', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2021-11-21 18:13:35', '2021-11-21 16:13:35', '', 0, 'http://localhost/yourfitnessguide/?page_id=71', 0, 'page', '', 0),
(72, 1, '2021-11-21 11:55:54', '2021-11-21 09:55:54', '[ngg src=\"galleries\" ids=\"1\" display=\"basic_slideshow\"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2021-11-21 11:55:54', '2021-11-21 09:55:54', '', 71, 'http://localhost/yourfitnessguide/?p=72', 0, 'revision', '', 0),
(73, 1, '2021-12-02 18:16:59', '2021-11-21 09:56:26', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2021-12-02 18:16:59', '2021-12-02 16:16:59', '', 0, 'http://localhost/yourfitnessguide/?p=73', 5, 'nav_menu_item', '', 0),
(74, 1, '2021-11-21 11:59:54', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-11-21 11:59:54', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/yourfitnessguide/?p=74', 0, 'ngg_gallery', '', 0),
(75, 1, '2021-11-21 11:59:58', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-11-21 11:59:58', '2021-11-21 09:59:58', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/yourfitnessguide/?p=75', 0, 'ngg_pictures', '', 0),
(76, 1, '2021-11-21 11:59:58', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-11-21 11:59:58', '2021-11-21 09:59:58', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/yourfitnessguide/?p=76', 0, 'ngg_pictures', '', 0),
(77, 1, '2021-11-21 11:59:58', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-11-21 11:59:58', '2021-11-21 09:59:58', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/yourfitnessguide/?p=77', 0, 'ngg_pictures', '', 0),
(78, 1, '2021-11-21 11:59:58', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-11-21 11:59:58', '2021-11-21 09:59:58', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/yourfitnessguide/?p=78', 0, 'ngg_pictures', '', 0),
(79, 1, '2021-11-21 12:01:30', '2021-11-21 10:01:30', '[ngg src=\"galleries\" ids=\"1\" display=\"basic_thumbnail\" thumbnail_crop=\"0\"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2021-11-21 12:01:30', '2021-11-21 10:01:30', '', 71, 'http://localhost/yourfitnessguide/?p=79', 0, 'revision', '', 0),
(81, 1, '2021-11-21 17:56:15', '2021-11-21 15:56:15', '[Best_Wordpress_Gallery id=\"2\" gal_title=\"main\"]', 'main', '', 'publish', 'closed', 'closed', '', 'main', '', '', '2021-11-21 17:57:32', '2021-11-21 15:57:32', '', 0, 'http://localhost/yourfitnessguide/bwg_gallery/main/', 0, 'bwg_gallery', '', 0),
(82, 1, '2021-11-21 17:58:53', '2021-11-21 15:58:53', '[Best_Wordpress_Gallery id=\"4\" gal_title=\"main\"]\r\n\r\n[Best_Wordpress_Gallery id=\"4\" gal_title=\"main\"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2021-11-21 17:58:53', '2021-11-21 15:58:53', '', 71, 'http://localhost/yourfitnessguide/?p=82', 0, 'revision', '', 0),
(83, 1, '2021-11-21 18:00:08', '2021-11-21 16:00:08', '[Best_Wordpress_Gallery id=\"4\" gal_title=\"main\"]\r\n\r\n', 'Gallery', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2021-11-21 18:00:08', '2021-11-21 16:00:08', '', 71, 'http://localhost/yourfitnessguide/?p=83', 0, 'revision', '', 0),
(84, 1, '2021-11-21 18:11:54', '2021-11-21 16:11:54', '[Best_Wordpress_Gallery id=\"4\" gal_title=\"main\"]', 'Gallery<style>h1{text-align: center;}</style>', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2021-11-21 18:11:54', '2021-11-21 16:11:54', '', 71, 'http://localhost/yourfitnessguide/?p=84', 0, 'revision', '', 0),
(85, 1, '2021-11-21 18:13:45', '2021-11-21 16:13:45', '<p style=\"text-align: center;\">[contact-form-7 id=\"34\" title=\"Форма за контакти 1\"]</p>', 'Contact us<style>h1{text-align: center;}</style>', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-11-21 18:13:45', '2021-11-21 16:13:45', '', 31, 'http://localhost/yourfitnessguide/?p=85', 0, 'revision', '', 0),
(86, 1, '2021-11-27 00:07:14', '2021-11-26 22:07:14', '<div class=\"right-content\">\r\n\r\nThis is our weight loss diet program prepared from a certified dietologist + a fitness program that would fulfill your goals prepared from a certified trainer.\r\n<p style=\"text-align: left;\"><strong>167.99BGN&nbsp;</strong></p>\r\n\r\n</div>', 'Weight Loss Diet Program + Fitness Program', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-11-27 00:07:14', '2021-11-26 22:07:14', '', 20, 'http://localhost/yourfitnessguide/?p=86', 0, 'revision', '', 0),
(87, 1, '2021-11-27 00:07:26', '2021-11-26 22:07:26', '<div class=\"right-content\">\r\n\r\nThis is our weight loss diet program prepared from a certified dietologist + a fitness program that would fulfill your goals prepared from a certified trainer.\r\n\r\n<strong>167.99BGN&nbsp;</strong>\r\n\r\n</div>', 'Weight Loss Diet Program + Fitness Program', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-11-27 00:07:26', '2021-11-26 22:07:26', '', 20, 'http://localhost/yourfitnessguide/?p=87', 0, 'revision', '', 0),
(88, 1, '2021-12-02 14:48:02', '0000-00-00 00:00:00', '', 'Автоматична Чернова', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-02 14:48:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/yourfitnessguide/?page_id=88', 0, 'page', '', 0),
(89, 1, '2021-12-02 18:16:05', '2021-12-02 16:16:05', 'We are a team of professionals who strive to make people better so that they can look better and feel better. Our team consists of dietitians and trainers so we can provide full programs from A to Z to our clients. We guarantee that if you trust us and follow a program we give you according to your goals, you will achieve new heights!&nbsp;', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-12-02 18:16:05', '2021-12-02 16:16:05', '', 0, 'http://localhost/yourfitnessguide/?page_id=89', 0, 'page', '', 0),
(90, 1, '2021-12-02 18:16:05', '2021-12-02 16:16:05', 'We are a team of professionals who strive to make people better so that they can look better and feel better. Our team consists of dietitians and trainers so we can provide full programs from A to Z to our clients. We guarantee that if you trust us and follow a program we give you according to your goals, you will achieve new heights!&nbsp;', 'About us', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2021-12-02 18:16:05', '2021-12-02 16:16:05', '', 89, 'http://localhost/yourfitnessguide/?p=90', 0, 'revision', '', 0),
(91, 1, '2021-12-02 18:16:59', '2021-12-02 16:16:59', ' ', '', '', 'publish', 'closed', 'closed', '', '91', '', '', '2021-12-02 18:16:59', '2021-12-02 16:16:59', '', 0, 'http://localhost/yourfitnessguide/?p=91', 7, 'nav_menu_item', '', 0),
(92, 1, '2021-12-02 18:55:20', '2021-12-02 16:55:20', '', 'second-trainer', '', 'inherit', 'open', 'closed', '', 'second-trainer', '', '', '2021-12-02 18:55:20', '2021-12-02 16:55:20', '', 0, 'http://localhost/yourfitnessguide/wp-content/uploads/2021/12/second-trainer.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без категория', '%d0%b1%d0%b5%d0%b7-%d0%ba%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d0%b8%d1%8f', 0),
(2, 'main', 'main', 0),
(3, 'Programs', 'programs', 0),
(4, 'Basic exercises', 'basic-exercises', 0),
(5, 'Top coaches', 'top-coaches', 0),
(6, 'Schedule', 'schedule', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(7, 3, 0),
(10, 3, 0),
(17, 3, 0),
(20, 3, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(33, 2, 0),
(73, 2, 0),
(91, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'category', '', 0, 4),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"ac210546387206096a11336d8feec51ba7b1163cabbc56343ec1bbbcac462f13\";a:4:{s:10:\"expiration\";i:1638621724;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.41\";s:5:\"login\";i:1638448924;}s:64:\"5e816efd2883b56eefcbffaf05fbfa4f8d22384313d982eb1a30689a9c3315c4\";a:4:{s:10:\"expiration\";i:1638700334;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.41\";s:5:\"login\";i:1638527534;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse&advImgDetails=show'),
(22, 1, 'wp_user-settings-time', '1638527530'),
(23, 1, 'closedpostboxes_ngg-manage-gallery', 'a:0:{}'),
(24, 1, 'metaboxhidden_ngg-manage-gallery', 'a:0:{}'),
(25, 1, 'bwg_photo_gallery', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bz5E0QH8LKD3N4DqN7M7Fvlq2HXbXK/', 'admin', 'rtrtrtr@abv.bg', 'http://localhost/yourfitnessguide', '2021-11-15 19:59:55', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_bwg_album`
--
ALTER TABLE `wp_bwg_album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_album_gallery`
--
ALTER TABLE `wp_bwg_album_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_file_paths`
--
ALTER TABLE `wp_bwg_file_paths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_gallery`
--
ALTER TABLE `wp_bwg_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image`
--
ALTER TABLE `wp_bwg_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_comment`
--
ALTER TABLE `wp_bwg_image_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_rate`
--
ALTER TABLE `wp_bwg_image_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_tag`
--
ALTER TABLE `wp_bwg_image_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_shortcode`
--
ALTER TABLE `wp_bwg_shortcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_theme`
--
ALTER TABLE `wp_bwg_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_ngg_album`
--
ALTER TABLE `wp_ngg_album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `wp_ngg_gallery`
--
ALTER TABLE `wp_ngg_gallery`
  ADD PRIMARY KEY (`gid`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `wp_ngg_pictures`
--
ALTER TABLE `wp_ngg_pictures`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_bwg_album`
--
ALTER TABLE `wp_bwg_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bwg_album_gallery`
--
ALTER TABLE `wp_bwg_album_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bwg_file_paths`
--
ALTER TABLE `wp_bwg_file_paths`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_bwg_gallery`
--
ALTER TABLE `wp_bwg_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_bwg_image`
--
ALTER TABLE `wp_bwg_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_bwg_image_comment`
--
ALTER TABLE `wp_bwg_image_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bwg_image_rate`
--
ALTER TABLE `wp_bwg_image_rate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bwg_image_tag`
--
ALTER TABLE `wp_bwg_image_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_bwg_theme`
--
ALTER TABLE `wp_bwg_theme`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ngg_album`
--
ALTER TABLE `wp_ngg_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ngg_gallery`
--
ALTER TABLE `wp_ngg_gallery`
  MODIFY `gid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_ngg_pictures`
--
ALTER TABLE `wp_ngg_pictures`
  MODIFY `pid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=523;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
