-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 25, 2014 at 07:57 PM
-- Server version: 5.5.38
-- PHP Version: 5.3.10-1ubuntu3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sharell_blog`
--
CREATE DATABASE `sharell_blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sharell_blog`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `author`, `body`, `created`) VALUES
(1, 'Article 1', 'Author 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sit amet risus vitae turpis aliquet consequat. Sed tempus purus diam, sed vulputate nisi pulvinar dictum. Etiam tristique elementum mi vel tempor. Integer scelerisque aliquet nisi sed viverra. Nunc adipiscing nisl ut augue sodales porta. In at diam ipsum. Maecenas lobortis interdum lorem, ornare tristique velit dictum a. Ut fringilla risus sem, quis semper eros dictum eu. Sed et consequat libero, ut gravida arcu. Nam pretium massa sit amet ligula fringilla, vitae vulputate mauris volutpat. Aliquam interdum arcu sit amet lectus accumsan gravida. Vivamus adipiscing mi a placerat ultricies. Suspendisse ullamcorper, odio in suscipit tempor, velit nulla cursus nunc, dictum iaculis massa elit nec nunc.', '2014-07-25 15:09:38'),
(2, 'Article 2', 'Author 2', 'In imperdiet gravida nulla non hendrerit. Integer in dictum leo. Integer cursus lectus viverra dui tincidunt, at semper risus faucibus. Nam mollis commodo vestibulum. Nunc massa tellus, vestibulum sed pretium sit amet, pellentesque non velit. Aenean malesuada purus sit amet vestibulum scelerisque. Vestibulum eget augue bibendum neque porttitor imperdiet id vitae augue. Nullam a eros eget enim ornare consectetur. Quisque id libero ornare, condimentum ligula ac, rhoncus nisi. Pellentesque consequat neque eu ipsum pulvinar adipiscing. Etiam vitae dui sapien. Maecenas eget ultrices tellus. Ut quis velit fermentum, feugiat mi in, sagittis felis. In ac vestibulum odio. Sed suscipit ante fermentum dapibus luctus. Aenean est nibh, ullamcorper quis lacinia vel, suscipit ac libero.', '2014-07-25 15:10:00'),
(3, 'Article 3', 'Author 3', 'Ut ultrices purus fringilla, cursus sapien in, luctus tortor. Nunc commodo sagittis lorem, quis vehicula magna dignissim non. Pellentesque in sagittis felis. Sed dapibus sed mi sit amet rutrum. Integer accumsan justo id rutrum venenatis. Praesent pharetra ultrices enim, vitae congue lorem eleifend sed. Etiam ultrices purus et nunc placerat aliquet. Vestibulum quis nibh in orci tincidunt posuere. Nam ut metus sed mauris posuere posuere. Aliquam erat volutpat. Nunc dignissim arcu nunc, in molestie justo mattis ut.', '2014-07-25 15:10:16'),
(4, 'Article 4', 'Author 4', 'Nunc in interdum risus, eu sodales odio. Cras fermentum ligula sit amet ultricies bibendum. Donec facilisis enim ac mauris pellentesque, et luctus lorem tempor. Pellentesque dictum sed justo id aliquet. Sed ipsum massa, ornare congue consequat eget, ornare eu sapien. Etiam viverra massa eget libero pretium eleifend. In dapibus tellus et tellus lobortis euismod. Mauris ac facilisis lorem, ac hendrerit est. Nunc sit amet porttitor sapien, ut fringilla urna. Quisque eget augue auctor, hendrerit turpis ac, tempor augue. Vestibulum posuere viverra augue, eu tristique nunc scelerisque in.', '2014-07-25 15:10:26'),
(5, 'Article  5', 'Article 5', 'Curabitur vitae tincidunt ante, ac adipiscing purus. Vestibulum ac orci est. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus faucibus malesuada lacus nec dapibus. Suspendisse potenti. Suspendisse ut vehicula nibh, at lobortis felis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque at est non diam tristique gravida in ut nunc. Aliquam a imperdiet purus, ut consectetur dolor.\r\n', '2014-07-25 15:10:39');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
