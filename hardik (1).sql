-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2022 at 10:05 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hardik`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quntity` int(11) NOT NULL DEFAULT 1,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(24, 'Chocolate', 'Available', 'uploads/1663477247chocolate.avif', '2022-09-11 04:40:58', '2022-09-11 04:40:58'),
(25, 'Butterscotch', 'Available', 'uploads/1663477429butterscotch_2.avif', '2022-09-11 04:42:03', '2022-09-11 04:42:03'),
(26, 'Blackforest', 'Available', 'uploads/1663477303black_forest_2.avif', '2022-09-11 04:43:01', '2022-09-11 04:43:01'),
(27, 'Mango', 'Available', 'uploads/1663477338mango_0.avif', '2022-09-15 10:14:34', '2022-09-15 10:14:34'),
(28, 'Red velvet', 'Available', 'uploads/1663477372red-velvet_2.avif', '2022-09-18 05:02:52', '2022-09-18 05:02:52'),
(29, 'Fruit', 'Available', 'uploads/1663477401fruit_2.avif', '2022-09-18 05:03:21', '2022-09-18 05:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `pro_image` varchar(255) NOT NULL,
  `pd_name` varchar(255) NOT NULL,
  `ingredient` text NOT NULL,
  `price` int(255) NOT NULL,
  `qnt` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pro_image`, `pd_name`, `ingredient`, `price`, `qnt`, `weight`, `created_at`, `updated_at`, `cat_id`) VALUES
(111, 'uploads/1663480767sq-snicker-chocolate-cake0028choc-AA.avif', 'Snicker chocolate', 'Snickers snickers all around! one of the healthiest', 605, '8', '500 gm.', '2022-09-18 05:59:27', '2022-09-18 05:59:27', 24),
(112, 'uploads/1663480921sq-choco-vanilla-cake0006chva-AA.avif', 'Half Chocolate Half Vanilla Cake', 'A toothsome treat for the sugar lovers who are just passionate about chocolate and relish the mushiness of cake', 540, '7', '500 gm.', '2022-09-18 06:02:01', '2022-09-18 06:02:01', 24),
(113, 'uploads/1663481028sq-fresh-fruit-cake0014frui-AA.avif', 'Assorted Fruit and Almond Cake', 'Freshly baked Vanilla cake, Whipped cream and bountiful tropical fruits come together to create a treat that is even tastier than it looks. ', 568, '8', '500 gm.', '2022-09-18 06:03:48', '2022-09-18 06:03:48', 29),
(114, 'uploads/1663481145sq-round-shaped-chocolate-fruits-cake-cake0650choc-A_0.avif', 'Round Shaped Chocolate Fruits Cake', 't’s time to bow down to this luscious creamy overdose of chocolate. Made with the layer of mushy chocolate cake and nicely topped with the loads of fresh fruits', 789, '5', '1 kg', '2022-09-18 06:05:45', '2022-09-18 06:05:45', 29),
(115, 'uploads/1663481226sq-mango-cake0020frui-A_2.avif', ' Topical Mango delight', 'Taste the terrific tropic mango cake with a zesty blend of mango and mushy rich cream. Made of three rich cream layers and mango fillings, this cake is a tantalizing treat', 499, '5', '500 gm.', '2022-09-18 06:07:06', '2022-09-18 06:07:06', 27),
(116, 'uploads/1663481292sq-red-velvet-cake0027reex-AA_0.avif', 'Red Velvet Cream Cake', 'This one is a southern classic! With a mild white chocolate flavour and extremely mushy layers, you just cannot resist its lavish redness, its delish white chocolate shavings and more so, its fresh creamy frosting.', 599, '7', '500 gm.', '2022-09-18 06:08:12', '2022-09-18 06:08:12', 28),
(117, 'uploads/1663481469sq-9E-Butterscotch-Jar-Cake-A_0.avif', 'Butterscotch Single Jar Cake', 'Crunchy butterscotch and smooth, creamy butterscotch flavoured bread confined into a cute little glass jar - This jar cake is a perfect charmer for a sweet luxury', 199, '5', '170 ml', '2022-09-18 06:11:09', '2022-09-18 06:11:09', 25),
(118, 'uploads/1663481683sq-red-velvet-cake-with-choco-sticks-cake1630redv-A_0.avif', 'Red Velvet Cake With Choco Sticks', 'Fill up on a yummy, creamy, frosted Red Velvet sprinkled cake with an evergreen classic vanilla icing base with not cherry but some much delicious chocolate sticks on top', 678, '6', '500 gm.', '2022-09-18 06:14:43', '2022-09-18 06:14:43', 28);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `rev_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `u_id`, `rev_id`, `comment`, `updated_at`, `created_at`) VALUES
(36, 14, 111, 'Very tasty!!', '2022-09-18 06:17:14', '2022-09-18 06:17:14'),
(37, 41, 112, 'Really liked the cake. delivery on time', '2022-09-18 06:17:39', '2022-09-18 06:17:39'),
(38, 42, 115, 'This was a good one. If you like a lot of whipped cream, chocolate and toffee flavor, this is the way to go!', '2022-09-18 06:18:02', '2022-09-18 06:18:02'),
(39, 43, 118, 'the team has delivered even during lock-down -excellent service - thanks for respecting our memories -thrice i have ordered through Bakingo-excellent', '2022-09-18 06:18:28', '2022-09-18 06:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `adress` text NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(255) NOT NULL DEFAULT 'USER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `email`, `password`, `adress`, `mobile`, `created_at`, `updated_at`, `role`) VALUES
(14, 'hardik', 'hardik@gmail.com', '123', 'ahmedabad', '8866858447', '2022-08-19 14:18:46', '2022-08-19 14:18:46', 'USER'),
(41, 'nishan patel', 'nishan@gmail.com', '123', 'ahmedabad', '8866858446', '2022-08-19 14:18:46', '2022-08-19 14:18:46', 'USER'),
(42, 'chintan', 'chintan@gmail.com', '123', 'ahmedabad', '8866858447', '2022-08-19 14:18:46', '2022-08-19 14:18:46', 'USER'),
(43, 'Niraj', 'niraj@gmail.com', '123', 'ahmedabad', '8866858440', '2022-08-19 14:18:46', '2022-08-19 14:18:46', 'USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `rev_id` (`rev_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `rev_id` FOREIGN KEY (`rev_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `u_id` FOREIGN KEY (`u_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
