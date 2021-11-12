-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2021 at 02:14 PM
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
-- Database: `reklamen`
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
(5, 0, '', 'png', '2021-06-15-1.png', '2021-06-15-1', '2021-06-15-1', 'thumb/2021-06-15-1.png', '210 KB', '', '', '', 0, '', '', 0, 0, '', '', '2021-11-11 16:57:03', 1),
(6, 0, '/', 'png', '2021-06-15-1.png', '2021-06-15-1', '2021-06-15-1', 'thumb/2021-06-15-1.png', '210 KB', '1920 x 1080 px', '500 x 281', '', 0, '', '', 0, 0, '', '', '2021-11-11 16:57:22', 1),
(7, 0, '/', 'png', '2021-06-15-2.png', '2021-06-15-2', '2021-06-15-2', 'thumb/2021-06-15-2.png', '207 KB', '1920 x 1080 px', '500 x 281', '', 0, '', '', 0, 0, '', '', '2021-11-11 16:57:22', 1);

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
(1, 'main', 'main', '', '', '/thumb/2021-06-15-1.png', '', 0, 1, 1, '', '', 12, '', 1636649784);

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
(1, 1, '2021-06-15-1', '2021-06-15-1', '/2021-06-15-1.png', '/thumb/2021-06-15-1.png', '', '2021-06-15-1', '2021-11-11 16:57:22', '210 KB', 'PNG', '1920 x 1080 px', '500 x 281', 1, -1, 1, 0, 0, 0, 0, '', 0, 1636650081),
(2, 1, '2021-06-15-2', '2021-06-15-2', '/2021-06-15-2.png', '/thumb/2021-06-15-2.png', '', '2021-06-15-2', '2021-11-11 16:57:22', '207 KB', 'PNG', '1920 x 1080 px', '500 x 281', 1, 0, 1, 0, 0, 0, 0, '', 0, 1636650081);

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
(1, ' use_option_defaults=\"1\" type=\"gallery\" theme_id=\"1\" gallery_id=\"1\" tag=\"0\" gallery_type=\"thumbnails\" thumb_width=\"250\" thumb_height=\"140\" image_column_number=\"5\" image_enable_page=\"1\" images_per_page=\"30\" load_more_image_count=\"30\" sort_by=\"order\" order_by=\"asc\" show_search_box=\"0\" placeholder=\"Search\" search_box_width=\"330\" show_sort_images=\"0\" show_tag_box=\"0\" showthumbs_name=\"0\" show_gallery_description=\"0\" image_title=\"\" show_thumb_description=\"0\" play_icon=\"1\" gallery_download=\"0\" ecommerce_icon=\"\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"1\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"\" popup_effect_duration=\"0.1\" popup_autoplay=\"0\" popup_interval=\"2.5\" popup_enable_filmstrip=\"1\" popup_filmstrip_height=\"\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_comment=\"1\" popup_enable_email=\"1\" popup_enable_captcha=\"0\" gdpr_compliance=\"0\" comment_moderation=\"0\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"1\" autohide_lightbox_navigation=\"0\" popup_hit_counter=\"0\" popup_enable_rate=\"0\" popup_enable_zoom=\"0\" popup_enable_fullsize_image=\"0\" popup_enable_download=\"0\" show_image_counts=\"0\" enable_loop=\"1\" enable_addthis=\"0\" addthis_profile_id=\"\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" popup_enable_ecommerce=\"1\" watermark_type=\"none\" watermark_link=\"https://10web.io/\"'),
(2, ' gallery_type=\"slideshow\" theme_id=\"2\" use_option_defaults=\"1\" gallery_id=\"1\" tag=\"0\" slideshow_effect=\"fade\" slideshow_interval=\"5\" slideshow_width=\"800\" slideshow_height=\"500\" sort_by=\"order\" order_by=\"asc\" enable_slideshow_autoplay=\"0\" enable_slideshow_shuffle=\"0\" enable_slideshow_ctrl=\"1\" autohide_slideshow_navigation=\"1\" enable_slideshow_filmstrip=\"1\" slideshow_filmstrip_height=\"90\" slideshow_enable_title=\"0\" slideshow_title_position=\"top-right\" slideshow_title_full_width=\"0\" slideshow_enable_description=\"0\" slideshow_description_position=\"bottom-right\" enable_slideshow_music=\"0\" slideshow_music_url=\"\" slideshow_effect_duration=\"0.1\" gallery_download=\"0\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"1\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"fade\" popup_effect_duration=\"0.1\" popup_autoplay=\"0\" popup_interval=\"2.5\" popup_enable_filmstrip=\"1\" popup_filmstrip_height=\"60\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_comment=\"1\" popup_enable_email=\"1\" popup_enable_captcha=\"0\" gdpr_compliance=\"undefined\" comment_moderation=\"0\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"1\" autohide_lightbox_navigation=\"0\" popup_hit_counter=\"0\" popup_enable_rate=\"0\" popup_enable_zoom=\"0\" popup_enable_fullsize_image=\"0\" popup_enable_download=\"0\" show_image_counts=\"0\" enable_loop=\"1\" enable_addthis=\"0\" addthis_profile_id=\"\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" popup_enable_ecommerce=\"undefined\" watermark_type=\"none\" watermark_link=\"https://10web.io/\"');

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
(1, 1, 'Коментатор от WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-11-07 14:40:12', '2021-11-07 12:40:12', 'Привет, това е коментар.\nУправлението, промените, редактирането и триенето на коментарите става в секция Коментари на таблото.\nАватарите на потребителите, които коментират, идват от <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

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
(1, 'main', 'main', '/wp-content/gallery/main/', 'Main', '', 0, 0, 1, 22),
(2, 'main', 'main-2', '/wp-content/gallery/main-1/', 'main', '', 0, 0, 1, 31);

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
(4, 'screenshot_20170301-154340', 0, 1, 'Screenshot_20170301-154340.png', '', 'Screenshot_20170301-154340', '2021-11-11 16:36:55', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6NzIwLCJoZWlnaHQiOjEyODAsInNhdmVkIjp0cnVlLCJiYWNrdXAiOnsiZmlsZW5hbWUiOiJTY3JlZW5zaG90XzIwMTcwMzAxLTE1NDM0MC5wbmciLCJ3aWR0aCI6NzIwLCJoZWlnaHQiOjEyODAsImdlbmVyYXRlZCI6IjAuODEzNzY1MDAgMTYzNjY0ODYxNSJ9fQ==', 29, 1636648920),
(5, '20857a7e3183835fdff710771869df15', 0, 1, '20857a7e3183835fdff710771869df15.jpg', '', '20857a7e3183835fdff710771869df15', '2021-11-11 16:37:44', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6NzM2LCJoZWlnaHQiOjc2Mywic2F2ZWQiOnRydWUsImJhY2t1cCI6eyJmaWxlbmFtZSI6IjIwODU3YTdlMzE4MzgzNWZkZmY3MTA3NzE4NjlkZjE1LmpwZyIsIndpZHRoIjo3MzYsImhlaWdodCI6NzYzLCJnZW5lcmF0ZWQiOiIwLjU2NzA2NjAwIDE2MzY2NDg2NjQifX0=', 30, 1636648920),
(6, '84018df3c396cba391717f5c234a81b5', 0, 2, '84018df3c396cba391717f5c234a81b5.jpg', '', '84018df3c396cba391717f5c234a81b5', '2021-11-11 16:42:48', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6NzM2LCJoZWlnaHQiOjEwMzQsInNhdmVkIjp0cnVlLCJiYWNrdXAiOnsiZmlsZW5hbWUiOiI4NDAxOGRmM2MzOTZjYmEzOTE3MTdmNWMyMzRhODFiNS5qcGciLCJ3aWR0aCI6NzM2LCJoZWlnaHQiOjEwMzQsImdlbmVyYXRlZCI6IjAuNzU2MzA0MDAgMTYzNjY0ODk2OCJ9fQ==', 32, 1636648991),
(7, '20857a7e3183835fdff710771869df15-1', 0, 2, '20857a7e3183835fdff710771869df15.jpg', '', '20857a7e3183835fdff710771869df15', '2021-11-11 16:42:48', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6NzM2LCJoZWlnaHQiOjc2Mywic2F2ZWQiOnRydWUsImJhY2t1cCI6eyJmaWxlbmFtZSI6IjIwODU3YTdlMzE4MzgzNWZkZmY3MTA3NzE4NjlkZjE1LmpwZyIsIndpZHRoIjo3MzYsImhlaWdodCI6NzYzLCJnZW5lcmF0ZWQiOiIwLjc5NTQ2NjAwIDE2MzY2NDg5NjgifX0=', 33, 1636648991);

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
(1, 'siteurl', 'http://localhost/reklamen', 'yes'),
(2, 'home', 'http://localhost/reklamen', 'yes'),
(3, 'blogname', 'ReklamenSite', 'yes'),
(4, 'blogdescription', 'Поредният WordPress сайт', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'gigijiji@abv.bg', 'yes'),
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
(29, 'rewrite_rules', 'a:146:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"bwg_gallery/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"bwg_gallery/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"bwg_gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"bwg_gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"bwg_gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"bwg_gallery/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"bwg_gallery/([^/]+)/embed/?$\";s:44:\"index.php?bwg_gallery=$matches[1]&embed=true\";s:32:\"bwg_gallery/([^/]+)/trackback/?$\";s:38:\"index.php?bwg_gallery=$matches[1]&tb=1\";s:40:\"bwg_gallery/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?bwg_gallery=$matches[1]&paged=$matches[2]\";s:47:\"bwg_gallery/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?bwg_gallery=$matches[1]&cpage=$matches[2]\";s:36:\"bwg_gallery/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?bwg_gallery=$matches[1]&page=$matches[2]\";s:28:\"bwg_gallery/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"bwg_gallery/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"bwg_gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"bwg_gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"bwg_gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"bwg_gallery/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"bwg_album/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"bwg_album/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"bwg_album/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"bwg_album/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"bwg_album/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"bwg_album/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"bwg_album/([^/]+)/embed/?$\";s:42:\"index.php?bwg_album=$matches[1]&embed=true\";s:30:\"bwg_album/([^/]+)/trackback/?$\";s:36:\"index.php?bwg_album=$matches[1]&tb=1\";s:38:\"bwg_album/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?bwg_album=$matches[1]&paged=$matches[2]\";s:45:\"bwg_album/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?bwg_album=$matches[1]&cpage=$matches[2]\";s:34:\"bwg_album/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?bwg_album=$matches[1]&page=$matches[2]\";s:26:\"bwg_album/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"bwg_album/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"bwg_album/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"bwg_album/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"bwg_album/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"bwg_album/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"bwg_tag/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"bwg_tag/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"bwg_tag/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"bwg_tag/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"bwg_tag/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"bwg_tag/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"bwg_tag/([^/]+)/embed/?$\";s:40:\"index.php?bwg_tag=$matches[1]&embed=true\";s:28:\"bwg_tag/([^/]+)/trackback/?$\";s:34:\"index.php?bwg_tag=$matches[1]&tb=1\";s:48:\"bwg_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?bwg_tag=$matches[1]&feed=$matches[2]\";s:43:\"bwg_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?bwg_tag=$matches[1]&feed=$matches[2]\";s:36:\"bwg_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?bwg_tag=$matches[1]&paged=$matches[2]\";s:32:\"bwg_tag/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?bwg_tag=$matches[1]&page=$matches[2]\";s:24:\"bwg_tag/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"bwg_tag/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"bwg_tag/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"bwg_tag/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"bwg_tag/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"bwg_tag/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:31:\"photo-gallery/photo-gallery.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'reklamen', 'yes'),
(41, 'stylesheet', 'reklamen', 'yes'),
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
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
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
(91, 'admin_email_lifespan', '1651840812', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'bg_BG', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:179:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Последни публикации</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Последни коментари</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:148:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архив</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:158:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Категории</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1636659613;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1636677613;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1636720813;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1636720827;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1636720828;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1636980013;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1636472920;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(121, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:60:\"Грешка при потвърждаването на SSL.\";}s:19:\"bad_response_source\";a:1:{i:0;s:95:\"Изглежда отговорът на заявката не идва от този сайт.\";}}', 'yes'),
(130, '_site_transient_timeout_browser_5eb8549d6d937575268f040b88fdf37a', '1636893627', 'no'),
(131, '_site_transient_browser_5eb8549d6d937575268f040b88fdf37a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"95.0.4638.69\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(132, '_site_transient_timeout_php_check_75809dde56e3fe2c2fb740f1b55807ac', '1636893628', 'no'),
(133, '_site_transient_php_check_75809dde56e3fe2c2fb740f1b55807ac', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(137, 'can_compress_scripts', '1', 'no'),
(150, 'finished_updating_comment_type', '1', 'yes'),
(156, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":4,\"critical\":1}', 'yes'),
(172, 'current_theme', 'Reklamen site', 'yes'),
(173, 'theme_mods_reklamen', 'a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:8:\"top-menu\";i:2;}}', 'yes'),
(174, 'theme_switched', '', 'yes'),
(180, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(184, 'category_children', 'a:0:{}', 'yes'),
(185, 'recently_activated', 'a:1:{s:29:\"nextgen-gallery/nggallery.php\";i:1636649777;}', 'yes'),
(222, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1636649129;s:7:\"checked\";a:4:{s:8:\"reklamen\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(223, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.5.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1636561288;s:7:\"version\";s:5:\"5.5.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(231, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/bg_BG/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"bg_BG\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/bg_BG/wordpress-5.8.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1636649129;s:15:\"version_checked\";s:5:\"5.8.2\";s:12:\"translations\";a:0:{}}', 'no'),
(232, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:15:\"gigijiji@abv.bg\";s:7:\"version\";s:5:\"5.8.2\";s:9:\"timestamp\";i:1636645467;}', 'no'),
(233, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1636658271', 'no'),
(234, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:5228;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4772;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2739;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2607;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2019;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1873;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1864;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1530;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1529;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1511;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1505;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1501;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1477;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1310;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1300;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1292;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1243;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1166;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1134;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1073;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:981;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:943;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:920;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:908;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:888;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:846;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:826;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:822;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:821;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:804;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:765;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:758;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:739;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:737;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:729;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:728;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:718;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:693;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:682;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:677;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:669;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:667;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:666;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:666;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:661;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:656;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:605;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:603;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:596;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:593;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:580;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:576;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:571;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:571;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:565;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:565;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:565;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:564;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:558;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:556;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:553;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:542;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:534;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:525;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:515;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:515;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:508;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:502;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:502;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:491;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:488;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:482;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:480;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:477;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:476;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:473;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:455;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:451;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:447;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:444;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:437;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:427;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:426;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:424;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:415;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:413;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:409;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:403;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:401;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:392;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:392;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:391;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:385;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:383;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:382;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:381;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:373;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:372;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:363;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:362;}}', 'no'),
(236, '_site_transient_timeout_theme_roots', '1636649344', 'no'),
(237, '_site_transient_theme_roots', 'a:4:{s:8:\"reklamen\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(241, 'widget_ngg-images', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(242, 'widget_ngg-mrssw', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(243, 'widget_slideshow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(244, 'ngg_transient_groups', 'a:8:{s:9:\"__counter\";i:8;s:16:\"WordPress-Router\";a:2:{s:2:\"id\";i:2;s:7:\"enabled\";b:1;}s:15:\"col_in_wp_posts\";a:2:{s:2:\"id\";i:3;s:7:\"enabled\";b:1;}s:21:\"col_in_wp_ngg_gallery\";a:2:{s:2:\"id\";i:4;s:7:\"enabled\";b:1;}s:22:\"col_in_wp_ngg_pictures\";a:2:{s:2:\"id\";i:5;s:7:\"enabled\";b:1;}s:27:\"displayed_gallery_rendering\";a:2:{s:2:\"id\";i:6;s:7:\"enabled\";b:1;}s:19:\"col_in_wp_ngg_album\";a:2:{s:2:\"id\";i:7;s:7:\"enabled\";b:1;}s:25:\"random_widget_gallery_ids\";a:2:{s:2:\"id\";i:8;s:7:\"enabled\";b:1;}}', 'yes'),
(247, 'ngg_options', 'a:74:{s:11:\"gallerypath\";s:19:\"wp-content\\gallery\\\";s:9:\"deleteImg\";b:1;s:13:\"usePermalinks\";b:0;s:13:\"permalinkSlug\";s:9:\"nggallery\";s:14:\"graphicLibrary\";s:2:\"gd\";s:11:\"useMediaRSS\";b:0;s:18:\"galleries_in_feeds\";b:0;s:12:\"activateTags\";i:0;s:10:\"appendType\";s:4:\"tags\";s:9:\"maxImages\";i:7;s:14:\"relatedHeading\";s:24:\"<h3>Related Images:</h3>\";s:10:\"thumbwidth\";i:240;s:11:\"thumbheight\";i:160;s:8:\"thumbfix\";b:1;s:12:\"thumbquality\";i:100;s:8:\"imgWidth\";i:1800;s:9:\"imgHeight\";i:1200;s:10:\"imgQuality\";i:100;s:9:\"imgBackup\";b:1;s:13:\"imgAutoResize\";b:1;s:9:\"galImages\";s:2:\"24\";s:17:\"galPagedGalleries\";i:0;s:10:\"galColumns\";i:0;s:12:\"galShowSlide\";b:0;s:12:\"galTextSlide\";s:14:\"View Slideshow\";s:14:\"galTextGallery\";s:15:\"View Thumbnails\";s:12:\"galShowOrder\";s:7:\"gallery\";s:7:\"galSort\";s:9:\"sortorder\";s:10:\"galSortDir\";s:3:\"ASC\";s:10:\"galNoPages\";b:1;s:13:\"galImgBrowser\";i:0;s:12:\"galHiddenImg\";i:0;s:10:\"galAjaxNav\";i:1;s:11:\"thumbEffect\";s:14:\"simplelightbox\";s:9:\"thumbCode\";s:47:\"class=\"ngg-simplelightbox\" rel=\"%GALLERY_NAME%\"\";s:18:\"thumbEffectContext\";s:14:\"nextgen_images\";s:33:\"watermark_automatically_at_upload\";i:0;s:5:\"wmPos\";s:9:\"midCenter\";s:6:\"wmXpos\";i:15;s:6:\"wmYpos\";i:5;s:6:\"wmType\";s:4:\"text\";s:6:\"wmPath\";s:0:\"\";s:6:\"wmFont\";s:9:\"arial.ttf\";s:6:\"wmSize\";i:30;s:6:\"wmText\";s:12:\"ReklamenSite\";s:7:\"wmColor\";s:6:\"ffffff\";s:8:\"wmOpaque\";s:2:\"33\";s:7:\"slideFX\";s:4:\"fade\";s:7:\"irWidth\";i:750;s:8:\"irHeight\";i:500;s:12:\"irRotatetime\";i:5;s:11:\"activateCSS\";i:1;s:7:\"CSSfile\";s:13:\"nggallery.css\";s:28:\"always_enable_frontend_logic\";b:0;s:27:\"use_alternate_random_method\";b:0;s:19:\"disable_fontawesome\";b:0;s:21:\"disable_ngg_tags_page\";b:0;s:23:\"random_widget_cache_ttl\";i:30;s:22:\"router_param_separator\";s:2:\"--\";s:19:\"router_param_prefix\";s:0:\"\";s:17:\"router_param_slug\";s:9:\"nggallery\";s:11:\"wpmuCSSfile\";s:13:\"nggallery.css\";s:9:\"wpmuStyle\";b:0;s:9:\"wpmuRoles\";b:0;s:16:\"wpmuImportFolder\";b:0;s:13:\"wpmuZipUpload\";b:0;s:14:\"wpmuQuotaCheck\";b:0;s:17:\"datamapper_driver\";s:22:\"custom_post_datamapper\";s:20:\"maximum_entity_count\";i:500;s:22:\"dynamic_thumbnail_slug\";s:13:\"nextgen-image\";s:23:\"dynamic_stylesheet_slug\";s:12:\"nextgen-dcss\";s:11:\"installDate\";i:1636647561;s:13:\"gallery_count\";i:2;s:40:\"gallery_created_after_reviews_introduced\";b:1;}', 'yes'),
(249, 'photocrati_auto_update_admin_update_list', '', 'yes'),
(250, 'photocrati_auto_update_admin_check_date', '', 'yes'),
(251, 'ngg_db_version', '1.8.1', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(272, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1636649134;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.5.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.5.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:29:\"nextgen-gallery/nggallery.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/nextgen-gallery\";s:4:\"slug\";s:15:\"nextgen-gallery\";s:6:\"plugin\";s:29:\"nextgen-gallery/nggallery.php\";s:11:\"new_version\";s:4:\"3.17\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/nextgen-gallery/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/nextgen-gallery.3.17.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/nextgen-gallery/assets/icon-256x256.png?rev=2083961\";s:2:\"1x\";s:68:\"https://ps.w.org/nextgen-gallery/assets/icon-128x128.png?rev=2083961\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/nextgen-gallery/assets/banner-1544x500.png?rev=2083961\";s:2:\"1x\";s:70:\"https://ps.w.org/nextgen-gallery/assets/banner-772x250.png?rev=2083961\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"5.5.4\";}s:31:\"photo-gallery/photo-gallery.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/photo-gallery\";s:4:\"slug\";s:13:\"photo-gallery\";s:6:\"plugin\";s:31:\"photo-gallery/photo-gallery.php\";s:11:\"new_version\";s:6:\"1.5.85\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/photo-gallery/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/photo-gallery.1.5.85.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/photo-gallery/assets/icon-256x256.png?rev=2068745\";s:2:\"1x\";s:66:\"https://ps.w.org/photo-gallery/assets/icon-128x128.png?rev=2068745\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/photo-gallery/assets/banner-1544x500.png?rev=2068745\";s:2:\"1x\";s:68:\"https://ps.w.org/photo-gallery/assets/banner-772x250.png?rev=2068745\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:6:{s:19:\"akismet/akismet.php\";s:6:\"4.1.12\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.5.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:29:\"nextgen-gallery/nggallery.php\";s:4:\"3.17\";s:31:\"photo-gallery/photo-gallery.php\";s:6:\"1.5.85\";}}', 'no'),
(273, 'wd_bwg_version', '1.5.85', 'no'),
(274, 'wd_bwg_initial_version', '1.5.85', 'no'),
(275, 'wd_bwg_theme_version', '1.0.0', 'no'),
(276, 'widget_bwp_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(277, 'widget_bwp_gallery_slideshow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(278, 'bwg_admin_notice', 'a:1:{s:15:\"two_week_review\";a:2:{s:5:\"start\";s:10:\"11/25/2021\";s:3:\"int\";i:14;}}', 'yes'),
(279, 'bwg_wp_editor_state', 'editor_missing', 'yes');

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
(10, 5, '_menu_item_url', 'http://localhost/reklamen/'),
(12, 6, '_menu_item_type', 'post_type'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '2'),
(15, 6, '_menu_item_object', 'page'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', ''),
(21, 7, '_edit_last', '1'),
(22, 7, '_edit_lock', '1636539450:1'),
(25, 1, '_edit_lock', '1636551050:1'),
(26, 1, '_edit_last', '1'),
(29, 10, '_edit_last', '1'),
(30, 10, '_edit_lock', '1636647321:1'),
(31, 10, '_wp_page_template', 'default'),
(32, 12, '_menu_item_type', 'post_type'),
(33, 12, '_menu_item_menu_item_parent', '0'),
(34, 12, '_menu_item_object_id', '10'),
(35, 12, '_menu_item_object', 'page'),
(36, 12, '_menu_item_target', ''),
(37, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 12, '_menu_item_xfn', ''),
(39, 12, '_menu_item_url', ''),
(41, 13, '_form', '<label> Вашето име\n    [text* your-name] </label>\n\n<label> Вашият имейл\n    [email* your-email] </label>\n\n<label> Относно\n    [text* your-subject] </label>\n\n<label> Пол\n[select menu-297 \"мъж\" \"жена\"] </label>\n\n\n<label> Вашето съобщение (по избор)\n    [textarea your-message] </label>\n\n[submit \"Изпращане\"]'),
(42, 13, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:31:\"[_site_title] <gigijiji@abv.bg>\";s:9:\"recipient\";s:16:\"ogdodkgof@abv.bg\";s:4:\"body\";s:237:\"От: [your-name] <[your-email]>\nОтносно: [your-subject]\n\nТекст на съобщението:\n[your-message]\n\n-- \nТози имейл е изпратен от формата за контакт на [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(43, 13, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:31:\"[_site_title] <gigijiji@abv.bg>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:172:\"Текст на съобщението:\n[your-message]\n\n-- \nТози имейл е изпратен от формата за контакт на [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(44, 13, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:97:\"Благодарим ви за вашето съобщение. То беше изпратено.\";s:12:\"mail_sent_ng\";s:160:\"Възникна грешка при опит за изпращане на съобщението Ви. Моля, опитайте отново по-късно.\";s:16:\"validation_error\";s:126:\"Едно или повече полета имат грешка. Моля проверете и опитайте отново.\";s:4:\"spam\";s:160:\"Възникна грешка при опит за изпращане на съобщението Ви. Моля, опитайте отново по-късно.\";s:12:\"accept_terms\";s:143:\"Трябва да приемете условията за ползване преди да изпратите вашето съобщение.\";s:16:\"invalid_required\";s:46:\"Това поле е задължително.\";s:16:\"invalid_too_long\";s:51:\"Това поле е прекалено дълго.\";s:17:\"invalid_too_short\";s:53:\"Това поле е прекалено кратко.\";s:13:\"upload_failed\";s:93:\"Възникна неизвестна грешка при качването на файла.\";s:24:\"upload_file_type_invalid\";s:80:\"Нямате право да качвате файлове от този тип.\";s:21:\"upload_file_too_large\";s:46:\"Файлът е прекалено голям.\";s:23:\"upload_failed_php_error\";s:55:\"Грешка при качването на файла.\";s:12:\"invalid_date\";s:59:\"Форматът на датата е неправилен.\";s:14:\"date_too_early\";s:61:\"Датата е преди първата позволена.\";s:13:\"date_too_late\";s:65:\"Датата е след последната позволена.\";s:14:\"invalid_number\";s:57:\"Форма̀та на номера е невалиден.\";s:16:\"number_too_small\";s:77:\"Номерът е по-малък от минималния позволен.\";s:16:\"number_too_large\";s:79:\"Номерът е по-голям от максималния позволен.\";s:23:\"quiz_answer_not_correct\";s:59:\"Отговорът на теста е неправилен.\";s:13:\"invalid_email\";s:65:\"Въведеният имейл адрес е невалиден.\";s:11:\"invalid_url\";s:58:\"Въведеният URL адрес е невалиден.\";s:11:\"invalid_tel\";s:56:\"Телефонният номер е невалиден.\";}'),
(45, 13, '_additional_settings', ''),
(46, 13, '_locale', 'bg_BG'),
(47, 15, 'title', 'NextGEN Basic Thumbnails'),
(48, 15, 'module_id', 'photocrati-nextgen_basic_gallery'),
(49, 15, 'preview_image_relpath', 'photocrati-nextgen_basic_gallery#thumb_preview.jpg'),
(50, 15, 'default_source', 'galleries'),
(51, 15, 'view_order', '10000'),
(52, 15, 'name', 'photocrati-nextgen_basic_thumbnails'),
(53, 15, 'installed_at_version', '3.17'),
(54, 15, 'hidden_from_ui', ''),
(55, 15, 'hidden_from_igw', ''),
(56, 15, '__defaults_set', '1'),
(57, 15, 'filter', 'raw'),
(58, 15, 'entity_types', 'WyJpbWFnZSJd'),
(59, 15, 'aliases', 'WyJiYXNpY190aHVtYm5haWwiLCJiYXNpY190aHVtYm5haWxzIiwibmV4dGdlbl9iYXNpY190aHVtYm5haWxzIl0='),
(60, 15, 'id_field', 'ID'),
(61, 15, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiaW1hZ2VzX3Blcl9wYWdlIjoiMjQiLCJudW1iZXJfb2ZfY29sdW1ucyI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwic2hvd19hbGxfaW5fbGlnaHRib3giOjAsImFqYXhfcGFnaW5hdGlvbiI6MSwidXNlX2ltYWdlYnJvd3Nlcl9lZmZlY3QiOjAsInRlbXBsYXRlIjoiIiwiZGlzcGxheV9ub19pbWFnZXNfZXJyb3IiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwic2hvd19zbGlkZXNob3dfbGluayI6MCwic2xpZGVzaG93X2xpbmtfdGV4dCI6IlZpZXcgU2xpZGVzaG93Iiwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6IjEwMCIsInRodW1ibmFpbF9jcm9wIjoxLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(62, 16, 'title', 'NextGEN Basic Slideshow'),
(63, 16, 'module_id', 'photocrati-nextgen_basic_gallery'),
(64, 16, 'preview_image_relpath', 'photocrati-nextgen_basic_gallery#slideshow_preview.jpg'),
(65, 16, 'default_source', 'galleries'),
(66, 16, 'view_order', '10010'),
(67, 16, 'name', 'photocrati-nextgen_basic_slideshow'),
(68, 16, 'installed_at_version', '3.17'),
(69, 16, 'hidden_from_ui', ''),
(70, 16, 'hidden_from_igw', ''),
(71, 16, '__defaults_set', '1'),
(72, 16, 'filter', 'raw'),
(73, 16, 'entity_types', 'WyJpbWFnZSJd'),
(74, 16, 'aliases', 'WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJd'),
(75, 16, 'id_field', 'ID'),
(76, 16, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjo3NTAsImdhbGxlcnlfaGVpZ2h0Ijo1MDAsInNob3dfdGh1bWJuYWlsX2xpbmsiOjAsInRodW1ibmFpbF9saW5rX3RleHQiOiJWaWV3IFRodW1ibmFpbHMiLCJ0ZW1wbGF0ZSI6IiIsImRpc3BsYXlfdmlldyI6ImRlZmF1bHQiLCJhdXRvcGxheSI6MSwicGF1c2VvbmhvdmVyIjoxLCJhcnJvd3MiOjAsImludGVydmFsIjozMDAwLCJ0cmFuc2l0aW9uX3NwZWVkIjozMDAsInRyYW5zaXRpb25fc3R5bGUiOiJmYWRlIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(77, 17, 'title', 'NextGEN Basic ImageBrowser'),
(78, 17, 'preview_image_relpath', 'photocrati-nextgen_basic_imagebrowser#preview.jpg'),
(79, 17, 'default_source', 'galleries'),
(80, 17, 'view_order', '10020'),
(81, 17, 'name', 'photocrati-nextgen_basic_imagebrowser'),
(82, 17, 'installed_at_version', '3.17'),
(83, 17, 'hidden_from_ui', ''),
(84, 17, 'hidden_from_igw', ''),
(85, 17, '__defaults_set', '1'),
(86, 17, 'filter', 'raw'),
(87, 17, 'entity_types', 'WyJpbWFnZSJd'),
(88, 17, 'aliases', 'WyJiYXNpY19pbWFnZWJyb3dzZXIiLCJpbWFnZWJyb3dzZXIiLCJuZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3NlciJd'),
(89, 17, 'id_field', 'ID'),
(90, 17, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwidGVtcGxhdGUiOiIiLCJhamF4X3BhZ2luYXRpb24iOiIxIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(91, 18, 'title', 'NextGEN Basic SinglePic'),
(92, 18, 'preview_image_relpath', 'photocrati-nextgen_basic_singlepic#preview.gif'),
(93, 18, 'default_source', 'galleries'),
(94, 18, 'view_order', '10060'),
(95, 18, 'hidden_from_ui', '1'),
(96, 18, 'hidden_from_igw', '1'),
(97, 18, 'name', 'photocrati-nextgen_basic_singlepic'),
(98, 18, 'installed_at_version', '3.17'),
(99, 18, '__defaults_set', '1'),
(100, 18, 'filter', 'raw'),
(101, 18, 'entity_types', 'WyJpbWFnZSJd'),
(102, 18, 'aliases', 'WyJiYXNpY19zaW5nbGVwaWMiLCJzaW5nbGVwaWMiLCJuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpYyJd'),
(103, 18, 'id_field', 'ID'),
(104, 18, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ3aWR0aCI6IiIsImhlaWdodCI6IiIsIm1vZGUiOiIiLCJkaXNwbGF5X3dhdGVybWFyayI6MCwiZGlzcGxheV9yZWZsZWN0aW9uIjowLCJmbG9hdCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsInF1YWxpdHkiOjEwMCwiY3JvcCI6MCwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(105, 19, 'title', 'NextGEN Basic TagCloud'),
(106, 19, 'preview_image_relpath', 'photocrati-nextgen_basic_tagcloud#preview.gif'),
(107, 19, 'default_source', 'tags'),
(108, 19, 'view_order', '10100'),
(109, 19, 'name', 'photocrati-nextgen_basic_tagcloud'),
(110, 19, 'installed_at_version', '3.17'),
(111, 19, 'hidden_from_ui', ''),
(112, 19, 'hidden_from_igw', ''),
(113, 19, '__defaults_set', '1'),
(114, 19, 'filter', 'raw'),
(115, 19, 'entity_types', 'WyJpbWFnZSJd'),
(116, 19, 'aliases', 'WyJiYXNpY190YWdjbG91ZCIsInRhZ2Nsb3VkIiwibmV4dGdlbl9iYXNpY190YWdjbG91ZCJd'),
(117, 19, 'id_field', 'ID'),
(118, 19, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwibnVtYmVyIjo0NSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(119, 20, 'title', 'NextGEN Basic Compact Album'),
(120, 20, 'module_id', 'photocrati-nextgen_basic_album'),
(121, 20, 'preview_image_relpath', 'photocrati-nextgen_basic_album#compact_preview.jpg'),
(122, 20, 'default_source', 'albums'),
(123, 20, 'view_order', '10200'),
(124, 20, 'name', 'photocrati-nextgen_basic_compact_album'),
(125, 20, 'installed_at_version', '3.17'),
(126, 20, 'hidden_from_ui', ''),
(127, 20, 'hidden_from_igw', ''),
(128, 20, '__defaults_set', '1'),
(129, 20, 'filter', 'raw'),
(130, 20, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(131, 20, 'aliases', 'WyJiYXNpY19jb21wYWN0X2FsYnVtIiwibmV4dGdlbl9iYXNpY19hbGJ1bSIsImJhc2ljX2FsYnVtX2NvbXBhY3QiLCJjb21wYWN0X2FsYnVtIl0='),
(132, 20, 'id_field', 'ID'),
(133, 20, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6MCwidGVtcGxhdGUiOiIiLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MSwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(134, 21, 'title', 'NextGEN Basic Extended Album'),
(135, 21, 'module_id', 'photocrati-nextgen_basic_album'),
(136, 21, 'preview_image_relpath', 'photocrati-nextgen_basic_album#extended_preview.jpg'),
(137, 21, 'default_source', 'albums'),
(138, 21, 'view_order', '10210'),
(139, 21, 'name', 'photocrati-nextgen_basic_extended_album'),
(140, 21, 'installed_at_version', '3.17'),
(141, 21, 'hidden_from_ui', ''),
(142, 21, 'hidden_from_igw', ''),
(143, 21, '__defaults_set', '1'),
(144, 21, 'filter', 'raw'),
(145, 21, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(146, 21, 'aliases', 'WyJiYXNpY19leHRlbmRlZF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJleHRlbmRlZF9hbGJ1bSJd'),
(147, 21, 'id_field', 'ID'),
(148, 21, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6MCwidGVtcGxhdGUiOiIiLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MSwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsInRodW1ibmFpbF93aWR0aCI6MzAwLCJ0aHVtYm5haWxfaGVpZ2h0IjoyMDAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(170, 26, '_edit_last', '1'),
(171, 26, '_edit_lock', '1636657304:1'),
(172, 26, '_wp_page_template', 'default'),
(173, 28, '_menu_item_type', 'post_type'),
(174, 28, '_menu_item_menu_item_parent', '0'),
(175, 28, '_menu_item_object_id', '26'),
(176, 28, '_menu_item_object', 'page'),
(177, 28, '_menu_item_target', ''),
(178, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(179, 28, '_menu_item_xfn', ''),
(180, 28, '_menu_item_url', ''),
(182, 5, '_wp_old_date', '2021-11-10'),
(183, 6, '_wp_old_date', '2021-11-10'),
(184, 12, '_wp_old_date', '2021-11-10'),
(206, 22, '__defaults_set', '1'),
(207, 22, 'filter', 'raw'),
(208, 22, 'id_field', 'ID'),
(209, 29, '__defaults_set', '1'),
(210, 29, 'filter', 'raw'),
(211, 29, 'id_field', 'ID'),
(212, 30, '__defaults_set', '1'),
(213, 30, 'filter', 'raw'),
(214, 30, 'id_field', 'ID'),
(230, 31, '__defaults_set', '1'),
(231, 31, 'filter', 'raw'),
(232, 31, 'id_field', 'ID'),
(233, 32, '__defaults_set', '1'),
(234, 32, 'filter', 'raw'),
(235, 32, 'id_field', 'ID'),
(236, 33, '__defaults_set', '1'),
(237, 33, 'filter', 'raw'),
(238, 33, 'id_field', 'ID'),
(239, 34, 'title', 'NextGEN Basic Thumbnails'),
(240, 34, 'module_id', 'photocrati-nextgen_basic_gallery'),
(241, 34, 'preview_image_relpath', 'photocrati-nextgen_basic_gallery#thumb_preview.jpg'),
(242, 34, 'default_source', 'galleries'),
(243, 34, 'view_order', '10000'),
(244, 34, 'name', 'photocrati-nextgen_basic_thumbnails'),
(245, 34, 'installed_at_version', '3.17'),
(246, 34, 'hidden_from_ui', ''),
(247, 34, 'hidden_from_igw', ''),
(248, 34, '__defaults_set', '1'),
(249, 34, 'filter', 'raw'),
(250, 34, 'entity_types', 'WyJpbWFnZSJd'),
(251, 34, 'aliases', 'WyJiYXNpY190aHVtYm5haWwiLCJiYXNpY190aHVtYm5haWxzIiwibmV4dGdlbl9iYXNpY190aHVtYm5haWxzIl0='),
(252, 34, 'id_field', 'ID'),
(253, 34, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiaW1hZ2VzX3Blcl9wYWdlIjoiMjQiLCJudW1iZXJfb2ZfY29sdW1ucyI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwic2hvd19hbGxfaW5fbGlnaHRib3giOjAsImFqYXhfcGFnaW5hdGlvbiI6MSwidXNlX2ltYWdlYnJvd3Nlcl9lZmZlY3QiOjAsInRlbXBsYXRlIjoiIiwiZGlzcGxheV9ub19pbWFnZXNfZXJyb3IiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwic2hvd19zbGlkZXNob3dfbGluayI6MCwic2xpZGVzaG93X2xpbmtfdGV4dCI6IlZpZXcgU2xpZGVzaG93Iiwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6IjEwMCIsInRodW1ibmFpbF9jcm9wIjoxLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(254, 35, 'title', 'NextGEN Basic Slideshow'),
(255, 35, 'module_id', 'photocrati-nextgen_basic_gallery'),
(256, 35, 'preview_image_relpath', 'photocrati-nextgen_basic_gallery#slideshow_preview.jpg'),
(257, 35, 'default_source', 'galleries'),
(258, 35, 'view_order', '10010'),
(259, 35, 'name', 'photocrati-nextgen_basic_slideshow'),
(260, 35, 'installed_at_version', '3.17'),
(261, 35, 'hidden_from_ui', ''),
(262, 35, 'hidden_from_igw', ''),
(263, 35, '__defaults_set', '1'),
(264, 35, 'filter', 'raw'),
(265, 35, 'entity_types', 'WyJpbWFnZSJd'),
(266, 35, 'aliases', 'WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJd'),
(267, 35, 'id_field', 'ID'),
(268, 35, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjo3NTAsImdhbGxlcnlfaGVpZ2h0Ijo1MDAsInNob3dfdGh1bWJuYWlsX2xpbmsiOjAsInRodW1ibmFpbF9saW5rX3RleHQiOiJWaWV3IFRodW1ibmFpbHMiLCJ0ZW1wbGF0ZSI6IiIsImRpc3BsYXlfdmlldyI6ImRlZmF1bHQiLCJhdXRvcGxheSI6MSwicGF1c2VvbmhvdmVyIjoxLCJhcnJvd3MiOjAsImludGVydmFsIjozMDAwLCJ0cmFuc2l0aW9uX3NwZWVkIjozMDAsInRyYW5zaXRpb25fc3R5bGUiOiJmYWRlIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(269, 36, 'title', 'NextGEN Basic ImageBrowser'),
(270, 36, 'preview_image_relpath', 'photocrati-nextgen_basic_imagebrowser#preview.jpg'),
(271, 36, 'default_source', 'galleries'),
(272, 36, 'view_order', '10020'),
(273, 36, 'name', 'photocrati-nextgen_basic_imagebrowser'),
(274, 36, 'installed_at_version', '3.17'),
(275, 36, 'hidden_from_ui', ''),
(276, 36, 'hidden_from_igw', ''),
(277, 36, '__defaults_set', '1'),
(278, 36, 'filter', 'raw'),
(279, 36, 'entity_types', 'WyJpbWFnZSJd'),
(280, 36, 'aliases', 'WyJiYXNpY19pbWFnZWJyb3dzZXIiLCJpbWFnZWJyb3dzZXIiLCJuZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3NlciJd'),
(281, 36, 'id_field', 'ID'),
(282, 36, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwidGVtcGxhdGUiOiIiLCJhamF4X3BhZ2luYXRpb24iOiIxIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(283, 37, 'title', 'NextGEN Basic SinglePic'),
(284, 37, 'preview_image_relpath', 'photocrati-nextgen_basic_singlepic#preview.gif'),
(285, 37, 'default_source', 'galleries'),
(286, 37, 'view_order', '10060'),
(287, 37, 'hidden_from_ui', '1'),
(288, 37, 'hidden_from_igw', '1'),
(289, 37, 'name', 'photocrati-nextgen_basic_singlepic'),
(290, 37, 'installed_at_version', '3.17'),
(291, 37, '__defaults_set', '1'),
(292, 37, 'filter', 'raw'),
(293, 37, 'entity_types', 'WyJpbWFnZSJd'),
(294, 37, 'aliases', 'WyJiYXNpY19zaW5nbGVwaWMiLCJzaW5nbGVwaWMiLCJuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpYyJd'),
(295, 37, 'id_field', 'ID'),
(296, 37, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ3aWR0aCI6IiIsImhlaWdodCI6IiIsIm1vZGUiOiIiLCJkaXNwbGF5X3dhdGVybWFyayI6MCwiZGlzcGxheV9yZWZsZWN0aW9uIjowLCJmbG9hdCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsInF1YWxpdHkiOjEwMCwiY3JvcCI6MCwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(297, 38, 'title', 'NextGEN Basic TagCloud'),
(298, 38, 'preview_image_relpath', 'photocrati-nextgen_basic_tagcloud#preview.gif'),
(299, 38, 'default_source', 'tags'),
(300, 38, 'view_order', '10100'),
(301, 38, 'name', 'photocrati-nextgen_basic_tagcloud'),
(302, 38, 'installed_at_version', '3.17'),
(303, 38, 'hidden_from_ui', ''),
(304, 38, 'hidden_from_igw', ''),
(305, 38, '__defaults_set', '1'),
(306, 38, 'filter', 'raw'),
(307, 38, 'entity_types', 'WyJpbWFnZSJd'),
(308, 38, 'aliases', 'WyJiYXNpY190YWdjbG91ZCIsInRhZ2Nsb3VkIiwibmV4dGdlbl9iYXNpY190YWdjbG91ZCJd'),
(309, 38, 'id_field', 'ID'),
(310, 38, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwibnVtYmVyIjo0NSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(311, 39, 'title', 'NextGEN Basic Compact Album'),
(312, 39, 'module_id', 'photocrati-nextgen_basic_album'),
(313, 39, 'preview_image_relpath', 'photocrati-nextgen_basic_album#compact_preview.jpg'),
(314, 39, 'default_source', 'albums'),
(315, 39, 'view_order', '10200'),
(316, 39, 'name', 'photocrati-nextgen_basic_compact_album'),
(317, 39, 'installed_at_version', '3.17'),
(318, 39, 'hidden_from_ui', ''),
(319, 39, 'hidden_from_igw', ''),
(320, 39, '__defaults_set', '1'),
(321, 39, 'filter', 'raw'),
(322, 39, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(323, 39, 'aliases', 'WyJiYXNpY19jb21wYWN0X2FsYnVtIiwibmV4dGdlbl9iYXNpY19hbGJ1bSIsImJhc2ljX2FsYnVtX2NvbXBhY3QiLCJjb21wYWN0X2FsYnVtIl0='),
(324, 39, 'id_field', 'ID'),
(325, 39, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6MCwidGVtcGxhdGUiOiIiLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MSwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(326, 40, 'title', 'NextGEN Basic Extended Album'),
(327, 40, 'module_id', 'photocrati-nextgen_basic_album'),
(328, 40, 'preview_image_relpath', 'photocrati-nextgen_basic_album#extended_preview.jpg'),
(329, 40, 'default_source', 'albums'),
(330, 40, 'view_order', '10210'),
(331, 40, 'name', 'photocrati-nextgen_basic_extended_album'),
(332, 40, 'installed_at_version', '3.17'),
(333, 40, 'hidden_from_ui', ''),
(334, 40, 'hidden_from_igw', ''),
(335, 40, '__defaults_set', '1'),
(336, 40, 'filter', 'raw'),
(337, 40, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(338, 40, 'aliases', 'WyJiYXNpY19leHRlbmRlZF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJleHRlbmRlZF9hbGJ1bSJd'),
(339, 40, 'id_field', 'ID'),
(340, 40, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6MCwidGVtcGxhdGUiOiIiLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MSwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsInRodW1ibmFpbF93aWR0aCI6MzAwLCJ0aHVtYm5haWxfaGVpZ2h0IjoyMDAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(341, 41, '_wp_attached_file', '2021/11/2021-06-15-1.png'),
(342, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:24:\"2021/11/2021-06-15-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(343, 42, '_wp_attached_file', '2021/11/2021-06-15-2.png'),
(344, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:24:\"2021/11/2021-06-15-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

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
(1, 1, '2021-11-07 14:40:12', '2021-11-07 12:40:12', '<!-- wp:paragraph -->\r\n<p>Добре дошли в WordPress. Това е първата ви публикация. Редактирайте я или я изтрийте, след което започнете да пишете!</p>\r\n<!-- /wp:paragraph -->', 'Здравей, свят!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-11-10 12:20:07', '2021-11-10 10:20:07', '', 0, 'http://localhost/reklamen/?p=1', 0, 'post', '', 1),
(2, 1, '2021-11-07 14:40:12', '2021-11-07 12:40:12', '<!-- wp:paragraph -->\n<p>Това е примерна страница. Тя е различна от блог публикацията, защото ще стои на една позиция и ще се показва в навигацията на уебсайта (в повечето теми). Повечето хора стартират със страница „За нас“, която ги представя на потенциалните посетители на уебсайта. Съдържанието ѝ може да бъде следното:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Здравейте! Аз работя като куриер, уча за актьор и това е моят сайт. Живея в Пловдив, имам страхотно куче на име Мурджо и обичам бирата (и лошото време).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... или нещо такова:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Фирма АБВ е основана през 1991 г. и е известна с висококачествените джиджавки, които произвежда. Фирмата има над 2000 служители и е активно ангажирана в подобряването на средата за живеене у нас.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Като нов потребител на WordPress, отворете <a href=\"http://localhost/reklamen/wp-admin/\">таблото на сайта</a>, за да изтриете тази страница и да създадете нови за вашето съдържание. Приятна работа!</p>\n<!-- /wp:paragraph -->', 'Примерна страница', '', 'publish', 'closed', 'open', '', 'примерна-страница', '', '', '2021-11-07 14:40:12', '2021-11-07 12:40:12', '', 0, 'http://localhost/reklamen/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-11-07 14:40:12', '2021-11-07 12:40:12', '<!-- wp:heading --><h2>За нас</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предложен текст: </strong>Адресът на нашия сайт: http://localhost/reklamen.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Коментари</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предложен текст: </strong>Когато посетителите оставят коментари в сайта, ние събираме данните, показани във формуляра за коментари, както и IP адреса на посетителя и идентификатора на потребителския браузър, за да помогнат за откриването на спам.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимен низ, базиран на имейл адреса ви, може да бъде предоставен на услугат Gravatar, за да бъде проверено дали я използвате. Политиката за поверителност на Gravatar е тук: https://automattic.com/privacy/. След като коментарът ви бъде удобрен, профилната ви снимка ще бъде видима публично към него. </p><!-- /wp:paragraph --><!-- wp:heading --><h2>Файлове</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предложен текст: </strong>Ако качвате изображения в сайта, трябва да избягвате качването на изображения с вградени данни за местоположение (EXIF GPS). Посетителите на сайта могат да изтеглят и извлекат данни за местоположението от изображения в сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Бисквитки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предложен текст: </strong>Ако оставите коментар на нашия сайт, можете да разрешите запазването на вашите име, имейл адрес и уеб сайт в бисквитки. Те са за ваше удобство, така че да не е нужно да попълвате отново данните си, когато оставяте друг коментар. Тези бисквитки ще се пазят една година.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ако имате профил и влезете в този сайт, ще зададем временна бисквитка, за да определим дали браузърът ви приема бисквитки. Тази бисквитка не съдържа лични данни и се изтрива, когато затворите браузъра си.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Когато влезете в профила си на сайта още няколко бисквитки \nще запазят информацията ви за вход и предпочитанията ви какво да виждате на екрана. Бисквитките за вход изтичат след два дни, а за предпочитанията на екрана след година. Ако изберете опцията за запомняне, информацията ви за вход ще се пази две седмици. Ако излезете от профила си, бисквитките за вход ще бъдат изтрити. </p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ако редактирате или публикувате статия една допълнителна бисквитка ще бъде запазена в браузъра ви. Тя няма да съдържа лични данни, а просто ще добави идентификатора на публикацията, която току що сте редактирали. Изтича след един ден. </p><!-- /wp:paragraph --><!-- wp:heading --><h2>Вмъкнато съдържание от други уебсайтове</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предложен текст: </strong>Статиите на този сайт могат да бъдат вградени (видеа, изображения, съдържание и т.н.). Вграденото съдържание от други сайтове приема и се държи с посетителя на сайта като с посетител на собствения си сайт. </p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Тези сайтове могат да събират данни за вас, да използват бисквитки, да вграждат допълнителни инструменти за статистика от трети страни, да следят как работите с тези инструменти включително как потребявате вградено съдържание ако имате профил и сте влезли в него на сайта. </p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кого споделяме данните ви</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предложен текст: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Колко дълго държим личните ви данни</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предложен текст: </strong>Ако оставите коментар, коментарът и неговите метаданни се запазват за неопределено време. Това е така, за да можем автоматично да разпознаваме и одобряваме последващи ваши коментарите, вместо да ги задържаме в опашката за одобряване.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>За потребители, които се регистрират на нашия уебсайт (ако има такива), съхраняваме и личната информация, която предоставят в потребителския си профил. Всички потребители могат да виждат, редактират или изтриват личната си информация по всяко време (с изключение на това, че не могат да променят потребителското си име). Администраторите на уебсайта могат да виждат и редактират тази информация.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Вашите права над личните ви данни</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предложен текст: </strong>Ако имате профил в този сайт или сте оставяли коментари в него, можете да поискате да получите файл, съдържащ всички данни, които съхраняваме за вас, включително и данни, които сте ни предоставили. Също така можете да поискате да заличим личните данни, които съхраняваме за вас. Това обаче не включва данни, които сме задължени да съхраняваме с административни цели, за нуждите на сигурността на сайта, или по закон.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как използваме вашите данни</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предложен текст: </strong>Коментарите от посетителите могат да бъдат проверени чрез автоматична услуга за проверка за спам коментари.</p><!-- /wp:paragraph -->', 'Политика на поверителност', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-11-07 14:40:12', '2021-11-07 12:40:12', '', 0, 'http://localhost/reklamen/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-11-07 14:40:28', '0000-00-00 00:00:00', '', 'Автоматична Чернова', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-11-07 14:40:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/reklamen/?p=4', 0, 'post', '', 0),
(5, 1, '2021-11-11 18:33:44', '2021-11-10 10:04:02', '', 'Начало', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%b0%d1%87%d0%b0%d0%bb%d0%be', '', '', '2021-11-11 18:33:44', '2021-11-11 16:33:44', '', 0, 'http://localhost/reklamen/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2021-11-11 18:33:44', '2021-11-10 10:04:02', ' ', '', '', 'publish', 'closed', 'closed', '', '6', '', '', '2021-11-11 18:33:44', '2021-11-11 16:33:44', '', 0, 'http://localhost/reklamen/?p=6', 2, 'nav_menu_item', '', 0),
(7, 1, '2021-11-10 12:19:43', '2021-11-10 10:19:43', 'Some text', 'News number 1', '', 'publish', 'open', 'open', '', 'news-number-1', '', '', '2021-11-10 12:19:43', '2021-11-10 10:19:43', '', 0, 'http://localhost/reklamen/?p=7', 0, 'post', '', 0),
(8, 1, '2021-11-10 12:19:43', '2021-11-10 10:19:43', 'Some text', 'News number 1', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-11-10 12:19:43', '2021-11-10 10:19:43', '', 7, 'http://localhost/reklamen/?p=8', 0, 'revision', '', 0),
(9, 1, '2021-11-10 12:20:07', '2021-11-10 10:20:07', '<!-- wp:paragraph -->\r\n<p>Добре дошли в WordPress. Това е първата ви публикация. Редактирайте я или я изтрийте, след което започнете да пишете!</p>\r\n<!-- /wp:paragraph -->', 'Здравей, свят!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-11-10 12:20:07', '2021-11-10 10:20:07', '', 1, 'http://localhost/reklamen/?p=9', 0, 'revision', '', 0),
(10, 1, '2021-11-10 16:37:08', '2021-11-10 14:37:08', 'Contact with the company:\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id=\"13\" title=\"Форма за контакти 1\"]', 'Contacts', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2021-11-11 18:04:46', '2021-11-11 16:04:46', '', 0, 'http://localhost/reklamen/?page_id=10', 0, 'page', '', 0),
(11, 1, '2021-11-10 16:37:08', '2021-11-10 14:37:08', 'Contact with the company:', 'Contacts', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-11-10 16:37:08', '2021-11-10 14:37:08', '', 10, 'http://localhost/reklamen/?p=11', 0, 'revision', '', 0),
(12, 1, '2021-11-11 18:33:44', '2021-11-10 14:38:15', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2021-11-11 18:33:44', '2021-11-11 16:33:44', '', 0, 'http://localhost/reklamen/?p=12', 3, 'nav_menu_item', '', 0),
(13, 1, '2021-11-10 18:21:28', '2021-11-10 16:21:28', '<label> Вашето име\r\n    [text* your-name] </label>\r\n\r\n<label> Вашият имейл\r\n    [email* your-email] </label>\r\n\r\n<label> Относно\r\n    [text* your-subject] </label>\r\n\r\n<label> Пол\r\n[select menu-297 \"мъж\" \"жена\"] </label>\r\n\r\n\r\n<label> Вашето съобщение (по избор)\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Изпращане\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <gigijiji@abv.bg>\nogdodkgof@abv.bg\nОт: [your-name] <[your-email]>\r\nОтносно: [your-subject]\r\n\r\nТекст на съобщението:\r\n[your-message]\r\n\r\n-- \r\nТози имейл е изпратен от формата за контакт на [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <gigijiji@abv.bg>\n[your-email]\nТекст на съобщението:\r\n[your-message]\r\n\r\n-- \r\nТози имейл е изпратен от формата за контакт на [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nБлагодарим ви за вашето съобщение. То беше изпратено.\nВъзникна грешка при опит за изпращане на съобщението Ви. Моля, опитайте отново по-късно.\nЕдно или повече полета имат грешка. Моля проверете и опитайте отново.\nВъзникна грешка при опит за изпращане на съобщението Ви. Моля, опитайте отново по-късно.\nТрябва да приемете условията за ползване преди да изпратите вашето съобщение.\nТова поле е задължително.\nТова поле е прекалено дълго.\nТова поле е прекалено кратко.\nВъзникна неизвестна грешка при качването на файла.\nНямате право да качвате файлове от този тип.\nФайлът е прекалено голям.\nГрешка при качването на файла.\nФорматът на датата е неправилен.\nДатата е преди първата позволена.\nДатата е след последната позволена.\nФорма̀та на номера е невалиден.\nНомерът е по-малък от минималния позволен.\nНомерът е по-голям от максималния позволен.\nОтговорът на теста е неправилен.\nВъведеният имейл адрес е невалиден.\nВъведеният URL адрес е невалиден.\nТелефонният номер е невалиден.', 'Форма за контакти 1', '', 'publish', 'closed', 'closed', '', '%d1%84%d0%be%d1%80%d0%bc%d0%b0-%d0%b7%d0%b0-%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%b8-1', '', '', '2021-11-11 18:04:18', '2021-11-11 16:04:18', '', 0, 'http://localhost/reklamen/?post_type=wpcf7_contact_form&#038;p=13', 0, 'wpcf7_contact_form', '', 0),
(14, 1, '2021-11-11 18:04:46', '2021-11-11 16:04:46', 'Contact with the company:\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id=\"13\" title=\"Форма за контакти 1\"]', 'Contacts', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-11-11 18:04:46', '2021-11-11 16:04:46', '', 10, 'http://localhost/reklamen/?p=14', 0, 'revision', '', 0),
(22, 1, '2021-11-11 18:42:00', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-11-11 18:42:00', '2021-11-11 16:42:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/reklamen/?post_type=ngg_gallery&#038;p=22', 0, 'ngg_gallery', '', 0),
(26, 1, '2021-11-11 18:32:23', '2021-11-11 16:32:23', '[Best_Wordpress_Gallery id=\"2\" gal_title=\"main\"]', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2021-11-11 18:59:13', '2021-11-11 16:59:13', '', 0, 'http://localhost/reklamen/?page_id=26', 0, 'page', '', 0),
(27, 1, '2021-11-11 18:32:23', '2021-11-11 16:32:23', '[ngg src=\"galleries\" ids=\"1\" display=\"basic_thumbnail\" thumbnail_crop=\"0\"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-11-11 18:32:23', '2021-11-11 16:32:23', '', 26, 'http://localhost/reklamen/?p=27', 0, 'revision', '', 0),
(28, 1, '2021-11-11 18:33:44', '2021-11-11 16:33:44', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2021-11-11 18:33:44', '2021-11-11 16:33:44', '', 0, 'http://localhost/reklamen/?p=28', 4, 'nav_menu_item', '', 0),
(29, 1, '2021-11-11 18:42:00', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-11-11 18:42:00', '2021-11-11 16:42:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/reklamen/?p=29', 0, 'ngg_pictures', '', 0),
(30, 1, '2021-11-11 18:42:00', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-11-11 18:42:00', '2021-11-11 16:42:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/reklamen/?p=30', 0, 'ngg_pictures', '', 0),
(31, 1, '2021-11-11 18:43:11', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-11-11 18:43:11', '2021-11-11 16:43:11', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/reklamen/?post_type=ngg_gallery&#038;p=31', 0, 'ngg_gallery', '', 0),
(32, 1, '2021-11-11 18:43:11', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-11-11 18:43:11', '2021-11-11 16:43:11', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/reklamen/?p=32', 0, 'ngg_pictures', '', 0),
(33, 1, '2021-11-11 18:43:11', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-11-11 18:43:11', '2021-11-11 16:43:11', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/reklamen/?p=33', 0, 'ngg_pictures', '', 0),
(41, 1, '2021-11-11 18:57:00', '2021-11-11 16:57:00', '', '2021-06-15 (1)', '', 'inherit', 'open', 'closed', '', '2021-06-15-1', '', '', '2021-11-11 18:57:00', '2021-11-11 16:57:00', '', 0, 'http://localhost/reklamen/wp-content/uploads/2021/11/2021-06-15-1.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2021-11-11 18:57:00', '2021-11-11 16:57:00', '', '2021-06-15 (2)', '', 'inherit', 'open', 'closed', '', '2021-06-15-2', '', '', '2021-11-11 18:57:00', '2021-11-11 16:57:00', '', 0, 'http://localhost/reklamen/wp-content/uploads/2021/11/2021-06-15-2.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2021-11-11 18:57:30', '2021-11-11 16:57:30', '[Best_Wordpress_Gallery id=\"1\" gal_title=\"main\"]', 'main', '', 'publish', 'closed', 'closed', '', 'main', '', '', '2021-11-11 19:01:21', '2021-11-11 17:01:21', '', 0, 'http://localhost/reklamen/bwg_gallery/main/', 0, 'bwg_gallery', '', 0),
(44, 1, '2021-11-11 18:59:09', '2021-11-11 16:59:09', '[Best_Wordpress_Gallery id=\"2\" gal_title=\"main\"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-11-11 18:59:09', '2021-11-11 16:59:09', '', 26, 'http://localhost/reklamen/?p=44', 0, 'revision', '', 0);

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
(2, 'Menu 1', 'menu-1', 0),
(3, 'News', 'news', 0),
(4, 'Reviews', 'reviews', 0),
(5, 'Advice', 'advice', 0);

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
(1, 4, 0),
(5, 2, 0),
(6, 2, 0),
(7, 3, 0),
(12, 2, 0),
(28, 2, 0);

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
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 0);

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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"c240c61bf8d5a1a4a4848403e2fd331544716fb417fa4ae8143837d255ad57c2\";a:4:{s:10:\"expiration\";i:1636710759;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44\";s:5:\"login\";i:1636537959;}s:64:\"8975cf5985a4b6c1387fe50cec1dff996ed0694204285e52e924b3b49dfc37e4\";a:4:{s:10:\"expiration\";i:1636819270;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36 Edg/95.0.1020.44\";s:5:\"login\";i:1636646470;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'bwg_photo_gallery', '1'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1636649845');

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
(1, 'admin', '$P$BgYAxf.QrqS/8XUONhXmHmPvS2D5tg1', 'admin', 'gigijiji@abv.bg', 'http://localhost/reklamen', '2021-11-07 12:40:12', '', 0, 'admin');

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_bwg_gallery`
--
ALTER TABLE `wp_bwg_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_bwg_image`
--
ALTER TABLE `wp_bwg_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `pid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
