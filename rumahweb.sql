-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table rumahweb.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table rumahweb.products: ~5 rows (approximately)
INSERT INTO `products` (`id`, `item_name`, `quantity`, `price`, `createdAt`, `updatedAt`) VALUES
	(2, 'Pulpen', 10, 5000, '2024-12-04 03:07:42', '2024-12-04 03:38:36'),
	(3, 'Pensil', 5, 2000, '2024-12-04 03:35:41', '2024-12-04 03:35:41'),
	(4, 'Penghapus', 15, 3000, '2024-12-04 03:36:16', '2024-12-04 03:36:16'),
	(5, 'Penggaris', 5, 2500, '2024-12-04 03:37:28', '2024-12-04 03:37:28'),
	(6, 'Spidol', 5, 2000, '2024-12-04 03:40:44', '2024-12-04 03:40:44');

-- Dumping structure for table rumahweb.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table rumahweb.users: ~1 rows (approximately)
INSERT INTO `users` (`id`, `username`, `password`, `createdAt`, `updatedAt`) VALUES
	(1, 'budi', '$2b$10$Mi7KrclQgze1jhXLIpGqBeuUdVqkI2pThTxLzeGRyyzx0DluFku/G', '2024-12-04 03:25:24', '2024-12-04 03:25:24');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
