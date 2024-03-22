-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2022 at 09:42 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(130, 14, 18, 'red tulipa', 11, 1, 'red tulipa.jpg'),
(132, 15, 13, 'pink rose', 10, 1, 'pink roses.jpg'),
(151, 18, 31, 'Reddish ', 150, 1, 'wed1.jpg'),
(152, 16, 25, 'BirthdayBouquet', 800, 1, 'bir2.jpg'),
(153, 18, 37, 'peachFlower', 90, 1, 'than3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(14, 16, 'Pratiksha Phadatare', 'pratiksha01@gmail.com', '9146896545', 'i got a fresh flowers thank you!!');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(19, 16, 'Samrudhi Jain', '9876789056', 'sam02@gmail.com', 'cash on delivery', 'flat no. 507, JSPM road, pune, india - 411028', ', pink rose (1) ', 12, '20-Jul-2022', 'completed'),
(20, 16, 'Ruhi Yadv', '9876543210', 'ruhi01@gmail.com', 'cash on delivery', 'flat no. 507, JSPM road, pune, india - 415609', ', Yellow Bouquet (1) ', 789, '02-Aug-2022', 'pending'),
(21, 16, 'Pratiksha Phadatare', '9923467866', 'pratikshaphadatare914@gmail.com', 'cash on delivery', 'flat no. 607, sinhgad road, pune, india - 456789', ', LavendorFlowers (1) ', 1200, '03-Aug-2022', 'pending'),
(22, 16, 'Pratiksha Phadatare', '9146896535', 'pratikshaphadatare9146@gmail.com', 'cash on delivery', 'flat no. 507, JSPM road, pune, india - 415503', ', Red White Combo (1) ', 80, '03-Aug-2022', 'completed'),
(23, 16, 'Samrudhi Jain', '9923466855', 'sam02@gmail.com', 'cash on delivery', 'flat no. 607, JSPM road, satara, india - 435678', ', LavendorFlowers (1) , tulip (1) ', 1290, '03-Aug-2022', 'completed'),
(24, 16, 'Samrudhi Jain', '9878908970', 'sam02@gmail.com', 'cash on delivery', 'flat no. 507, JSPM road, pune, india - 87690', ', Jasmin (1) ', 100, '06-Aug-2022', 'pending'),
(25, 18, 'Mayuri Tilekr', '7385211741', 'tilekarmayuri56@gmail.com', 'cash on delivery', 'flat no. 8, manajingr, pune, india - 411041', ', LavendorFlowers (1) ', 1200, '09-Aug-2022', 'pending'),
(26, 19, 'Mayuri tilekar', '7385211741', 'tilekarmayuri56@gmail.com', 'cash on delivery', 'flat no. 507, manajingr, pune, india - 415523', ', Yellow Bouquet (1) , peachFlower (1) ', 880, '09-Sep-2022', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `type` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`, `type`) VALUES
(23, 'Yellow Bouquet', 'Marigold Tagetes. Marigolds are popular annuals. Their popularity likely comes from their bright colors and ability to bloom all summer long. They have carnation-like flower heads with thick layers of ruffled petals.', 790, 'cong3.jpg', 'bouquet'),
(24, 'LavendorFlowers', 'Lavender is grown in northern Africa and the Mediterranean mountains, often for extraction of its essential oils. The medicinal benefits of using lavender to treat anxiety, fungal infections, hair loss, and wounds have been demonstrated.', 1200, 'bir1.jpg', 'Birthday'),
(25, 'BirthdayBouquet', ' There is so much variation in this flower that you are virtually guaranteed to find one you like. The lily also represents happiness and positivity. There are very few other flowers that are so cheerful', 800, 'bir2.jpg', 'Birthday'),
(26, 'Red Rose', 'A rose is either a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears. There are over three hundred species and tens of thousands of cultivars', 1234, 'bir3.jpg', 'Birthday'),
(27, 'lightPink', 'This package of pretty pink roses is our most budget-friendly option, giving you the best variety the farm has to offer. Perfect for anyone who wants pink roses and isn\'t particular about a certain variety.', 30, 'cong1.jpg', 'congratulations'),
(28, 'Red White Combo', 'The combination of red and white roses symbolizes unity, which makes it a popular choice for weddings and celebrations of partnership.', 80, 'cong2.jpg', 'congratulations'),
(29, 'yellow flowers', 'Goldenrods are a deep yellow color that are in full bloom in late summer. Their tall spikes of bright yellow flowers help them stand out.', 100, 'cong3.jpg', 'congratulations'),
(30, 'Pink queen', 'pink shade that symbolizes femininity. They grow in a shrub-like shape and are often used to create a curtain of privacy.', 120, 'cong4.jpg', 'congratulations'),
(31, 'Reddish ', 'Red roses stand for passion, true love and desire. This is the reason why it is the most popular choice on Valentine’s Day as red roses symbolize love and admiration at its purest form. ', 150, 'wed1.jpg', 'Wedding'),
(32, 'weddingFlower', 'Red roses stand for passion, true love and desire. This is the reason why it is the most popular choice on Valentine’s Day as red roses symbolize love and admiration at its purest form. ', 200, 'wed2.jpg', 'Wedding'),
(33, 'StylishPink', 'Excelling the beauty of nature with its astounding pink appearance, buy now this beautiful Pink Rose Hand Bouquet to surprise your loved ones.', 300, 'wed4.jpg', 'Wedding'),
(34, 'Pink Rose', 'This package of pretty pink roses is our most budget-friendly option, giving you the best variety the farm has to offer. Perfect for anyone who wants pink roses and isn\'t particular about a certain variety.', 30, 'cong1.jpg', 'bouquet'),
(35, 'LavendorQueen', 'Lavender is grown in northern Africa and the Mediterranean mountains, often for extraction of its essential oils. The medicinal benefits of using lavender to treat anxiety,', 200, 'bir1.jpg', 'bouquet'),
(36, 'WhitePink', 'These stunning pink flowers also come in white and deep red. They got their name from their long spindly stamen that ', 50, 'than1.jpg', 'ThankYou'),
(37, 'peachFlower', 'Peach roses with their light red-orange hue symbolize sincerity, genuineness, gratitude, and sweetness. And because of their stunning color, they\'ve become a popular addition to many spring or summer weddings.', 90, 'than3.jpg', 'ThankYou'),
(38, 'WhitishPink', 'The color of frivolity lives between red and white. Pink takes all the passion and energy of red and tempers it with the purity of white, leaving us with the color of tenderness and affection', 90, 'than4.jpg', 'ThankYou'),
(39, 'tulip', 'Tulips (Tulipa) are a genus of spring-blooming perennial herbaceous bulbiferous geophytes (having bulbs as storage organs). The flowers are usually large, ', 90, 'bouquet-yellow-tulips.jpeg', 'ThankYou'),
(40, 'Jasmin', 'The health benefits of mogra are many. They tend to reduce stress and depression just by being in an area near you. It was also used as a medicine in the earlier days because it can heal wounds', 100, 'mogra.jpg', 'bouquet');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(10, 'admin A', 'admin01@gmail.com', 'Admin@1', 'admin'),
(16, 'Pratiksha Phadatare', 'pratiksha01@gmail.com', 'pratiksha01', 'user'),
(18, 'Mayuri tilekr', 'mayu01@gmail.com', 'mayuri01', 'user'),
(19, 'Mayuri tilekar', 'tilekarmayuri56@gmail.com', 'Mayuri@123', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(60, 14, 19, 'pink bouquet', 15, 'pink bouquet.jpg'),
(65, 16, 24, 'LavendorFlowers', 1200, 'bir1.jpg'),
(66, 19, 28, 'Red White Combo', 80, 'cong2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
