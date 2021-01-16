-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 26 Oca 2020, 14:09:03
-- Sunucu sürümü: 10.3.16-MariaDB
-- PHP Sürümü: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `script_database`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ban_list`
--

CREATE TABLE `ban_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `unique_id` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banned` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `whitelist`
--

CREATE TABLE `whitelist` (
  `id` int(10) UNSIGNED NOT NULL,
  `guid` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo için tablo yapısı `evler`
--

CREATE TABLE `evler` (
  `id` int(11) NOT NULL,
  `ev_id` int(11) DEFAULT NULL,
  `guid` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `z` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pw_admin_permler`
--

CREATE TABLE `pw_admin_permler` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guid` int(11) NOT NULL,
  `gold` int(11) NOT NULL DEFAULT 0,
  `kick` int(11) NOT NULL DEFAULT 0,
  `temp_ban` int(11) NOT NULL DEFAULT 0,
  `perm_ban` int(11) NOT NULL DEFAULT 0,
  `kill_fade` int(11) NOT NULL DEFAULT 0,
  `freeze` int(11) NOT NULL DEFAULT 0,
  `teleport_self` int(11) NOT NULL DEFAULT 0,
  `admin_items` int(11) NOT NULL DEFAULT 0,
  `heal_self` int(11) NOT NULL DEFAULT 0,
  `godlike_troop` int(11) DEFAULT 0,
  `ships` int(11) NOT NULL DEFAULT 0,
  `announce` int(11) NOT NULL DEFAULT 0,
  `override_poll` int(11) NOT NULL DEFAULT 0,
  `all_items` int(11) NOT NULL DEFAULT 0,
  `mute` int(11) NOT NULL DEFAULT 0,
  `animals` int(11) NOT NULL,
  `factions` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pw_oyuncular`
--

CREATE TABLE `pw_oyuncular` (
  `id` int(10) UNSIGNED NOT NULL,
  `unique_id` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_scene` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banka` int(11) NOT NULL DEFAULT 0,
  `at_can` int(11) NOT NULL DEFAULT -1,
  `can` int(11) NOT NULL DEFAULT 0,
  `pos_x` int(11) NOT NULL DEFAULT 0,
  `pos_y` int(11) NOT NULL DEFAULT 0,
  `pos_z` int(11) NOT NULL DEFAULT 0,
  `ustundeki_gold` int(11) NOT NULL DEFAULT 0,
  `meslek` int(11) NOT NULL DEFAULT 0,
  `faction` int(11) NOT NULL DEFAULT 0,
  `item_0` int(11) NOT NULL DEFAULT -1,
  `item_1` int(11) NOT NULL DEFAULT -1,
  `item_2` int(11) NOT NULL DEFAULT -1,
  `item_3` int(11) NOT NULL DEFAULT -1,
  `govde_zirhi` int(11) NOT NULL DEFAULT -1,
  `kask` int(11) NOT NULL DEFAULT -1,
  `ayak_zirhi` int(11) NOT NULL DEFAULT -1,
  `eldiven` int(11) NOT NULL DEFAULT -1,
  `entry_point` int(11) NOT NULL DEFAULT 0,
  `at` int(11) NOT NULL DEFAULT -1,
  `aclik` int(11) NOT NULL DEFAULT 0,
  `oynama_suresi` int(11) DEFAULT NULL,
  `olme` int(11) NOT NULL DEFAULT 0,
  `oldurme` int(11) NOT NULL DEFAULT 0,
  `exited` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ban_list`
--
ALTER TABLE `ban_list`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `evler`
--
ALTER TABLE `evler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pw_admin_permler`
--
ALTER TABLE `pw_admin_permler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pw_oyuncular`
--
ALTER TABLE `pw_oyuncular`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pw_oyuncular_unique_id_unique` (`unique_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ban_list`
--
ALTER TABLE `ban_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pw_admin_permler`
--
ALTER TABLE `pw_admin_permler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pw_oyuncular`
--
ALTER TABLE `pw_oyuncular`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
