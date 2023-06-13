-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 05, 2022 at 04:01 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spa`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `imageURl` longtext NOT NULL,
  `price` float NOT NULL,
  `category` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `imageURl`, `price`, `category`) VALUES
(1, 'LAVENDER VANILLA', 'What it smells like: a dreamy bedside bouquet.\r\n\r\nFragrance notes: lavender oil (inspires tranquility) and vanilla absolute (calms the mind to encourage relaxation).', 'https://cdn-fsly.yottaa.net/5d669b394f1bbf7cb77826ae/www.bathandbodyworks.com/v~4b.20f/dw/image/v2/BBDL_PRD/on/demandware.static/-/Sites-master-catalog/default/dwc67b8472/hires/026360035.jpg?sh=471&yocs=o_s_', 7.5, 'Latest Products'),
(2, 'FRESH VANILLA', 'What it smells like: a dreamy bedside bouquet.\r\n\r\nFragrance notes: lavender oil (inspires tranquility) and vanilla absolute (calms the mind to encourage relaxation).', 'https://cdn-fsly.yottaa.net/5d669b394f1bbf7cb77826ae/www.bathandbodyworks.com/v~4b.20f/dw/image/v2/BBDL_PRD/on/demandware.static/-/Sites-master-catalog/default/dw8871f12e/hires/026353202.jpg?sh=471&yocs=o_s_', 14.5, 'On Sale'),
(5, 'EUCALYPTUS SPEARMINT', 'What it smells like: a day at the spa with your fresh, herbal favorites.\r\n\r\nFragrance notes: eucalyptus oil (clears the mind) and spearmint oil (soothes and uplifts).', 'https://cdn-fsly.yottaa.net/5d669b394f1bbf7cb77826ae/www.bathandbodyworks.com/v~4b.20f/dw/image/v2/BBDL_PRD/on/demandware.static/-/Sites-master-catalog/default/dw03cbefc8/hires/026353200.jpg?sh=471&yocs=o_s_', 14.5, 'Latest Products'),
(6, 'LAVENDER MINT TEA', 'What it smells like: a perfectly steeped, fresh, floral brew.\r\n\r\nFragrance notes: tea extract and lavender and mint essential oils.', 'https://cdn-fsly.yottaa.net/5d669b394f1bbf7cb77826ae/www.bathandbodyworks.com/v~4b.20f/dw/image/v2/BBDL_PRD/on/demandware.static/-/Sites-master-catalog/default/dw8f3f9cd1/hires/026439072.jpg?sh=471&yocs=o_s_', 14.5, 'Latest Products'),
(7, 'ORANGE GINGER', 'What it smells like: a fruity, spiced refresher.\r\n\r\nFragrance notes: orange oil (invigorates and uplifts) and ginger oil (energizes your senses).', 'https://cdn-fsly.yottaa.net/5d669b394f1bbf7cb77826ae/www.bathandbodyworks.com/v~4b.20f/dw/image/v2/BBDL_PRD/on/demandware.static/-/Sites-master-catalog/default/dw8b70c796/hires/026353204.jpg?sh=471&yocs=o_s_', 14.5, 'Latest Products'),
(8, 'BUTTERFLY\r\nFine Fragrance Mist', 'What it smells like: an inspiring flight through sweet, floral spring air.\r\n\r\nFragrance notes: raspberry nectar, iris petals and airy vanilla.', 'https://cdn-fsly.yottaa.net/5d669b394f1bbf7cb77826ae/www.bathandbodyworks.com/v~4b.20f/dw/image/v2/BBDL_PRD/on/demandware.static/-/Sites-master-catalog/default/dwffa949d1/hires/026414639.jpg?sh=471&yocs=o_s_', 17.5, 'On Sale'),
(9, 'BUTTERFLY\r\n3-Wick Candle', 'What it smells like: an inspiring flight through sweet, floral spring air.\r\n\r\nFragrance notes: raspberry nectar, iris petals and airy vanilla.', 'https://cdn-fsly.yottaa.net/5d669b394f1bbf7cb77826ae/www.bathandbodyworks.com/v~4b.20f/dw/image/v2/BBDL_PRD/on/demandware.static/-/Sites-master-catalog/default/dw35f789dd/hires/026473987.jpg?sh=471&yocs=o_s_', 26.5, 'Home Fragrance'),
(10, 'ICED LEMON POUND CAKE', 'What it smells like: a rich, tangy teatime dessert.\r\n\r\nFragrance notes: sugary glazed icing, pure lemon zest, fluffy pound cake and whipped cream.', 'https://cdn-fsly.yottaa.net/5d669b394f1bbf7cb77826ae/www.bathandbodyworks.com/v~4b.20f/dw/image/v2/BBDL_PRD/on/demandware.static/-/Sites-master-catalog/default/dw16f6c9b2/hires/026467605.jpg?sh=471&yocs=o_s_', 26.5, 'Home Fragrance'),
(11, 'RASPBERRY MIMOSA', 'What it smells like: your favorite morning cocktail\'s fruitier, bubblier cousin.\r\n\r\nFragrance notes: sweet raspberries, rosé sorbet and a splash of champagne.', 'https://cdn-fsly.yottaa.net/5d669b394f1bbf7cb77826ae/www.bathandbodyworks.com/v~4b.20f/dw/image/v2/BBDL_PRD/on/demandware.static/-/Sites-master-catalog/default/dwe1083767/hires/026480790.jpg?sh=471&yocs=o_s_', 15.5, 'Home Fragrance'),
(12, 'STRAWBERRY POUND CAKE', 'What it smells like: the sweet, airy treat you love.\r\n\r\nFragrance notes: fresh strawberries, golden shortcake and whipped cream.', 'https://cdn-fsly.yottaa.net/5d669b394f1bbf7cb77826ae/www.bathandbodyworks.com/v~4b.20f/dw/image/v2/BBDL_PRD/on/demandware.static/-/Sites-master-catalog/default/dw2d7d3f8e/hires/026458600.jpg?sh=471&yocs=o_s_', 24.5, 'Home Fragrance'),
(13, 'BUTTERFLY\r\nUltimate Hydration Body Cream', 'What it smells like: an inspiring flight through sweet, floral spring air.\r\n\r\nFragrance notes: raspberry nectar, iris petals and airy vanilla.', 'https://cdn-fsly.yottaa.net/5d669b394f1bbf7cb77826ae/www.bathandbodyworks.com/v~4b.20f/dw/image/v2/BBDL_PRD/on/demandware.static/-/Sites-master-catalog/default/dw2d820c8f/hires/026414641.jpg?sh=471&yocs=o_s_', 16.5, 'Body care'),
(14, 'LAVENDER VANILLA', 'What it smells like: a dreamy bedside bouquet.\r\n\r\nFragrance notes: lavender oil (inspires tranquility) and vanilla absolute (calms the mind to encourage relaxation).', 'https://cdn-fsly.yottaa.net/5d669b394f1bbf7cb77826ae/www.bathandbodyworks.com/v~4b.20f/dw/image/v2/BBDL_PRD/on/demandware.static/-/Sites-master-catalog/default/dw8b9b82cb/hires/026353222.jpg?sh=471&yocs=o_s_', 16.5, 'Body care'),
(15, 'EUCALYPTUS SPEARMINT\r\nUltimate Hydration Body Cream', 'What it smells like: a day at the spa with your fresh, herbal favorites.\r\n\r\nFragrance notes: eucalyptus oil (clears the mind) and spearmint oil (soothes and uplifts).', 'https://cdn-fsly.yottaa.net/5d669b394f1bbf7cb77826ae/www.bathandbodyworks.com/v~4b.20f/dw/image/v2/BBDL_PRD/on/demandware.static/-/Sites-master-catalog/default/dw5f145177/hires/026353220.jpg?sh=471&yocs=o_s_', 16.5, 'Body care'),
(16, 'EUCALYPTUS SPEARMINT\r\nMoisturizing Body Lotion', 'What it smells like: a day at the spa with your fresh, herbal favorites.\r\n\r\nFragrance notes: eucalyptus oil (clears the mind) and spearmint oil (soothes and uplifts).', 'https://cdn-fsly.yottaa.net/5d669b394f1bbf7cb77826ae/www.bathandbodyworks.com/v~4b.20f/dw/image/v2/BBDL_PRD/on/demandware.static/-/Sites-master-catalog/default/dw5518c3d6/hires/026353210.jpg?sh=471&yocs=o_s_', 15.5, 'Body care');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
