-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2015 at 04:32 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `coddatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `cardpayment`
--

CREATE TABLE IF NOT EXISTS `cardpayment` (
  `Payment_ID` int(11) NOT NULL,
  `CardHolderName` varchar(30) COLLATE utf8_bin NOT NULL,
  `CardNumber` varchar(16) COLLATE utf8_bin NOT NULL,
  `SecurityCode` varchar(30) COLLATE utf8_bin NOT NULL,
  `ExpiryDate` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cardpayment`
--

INSERT INTO `cardpayment` (`Payment_ID`, `CardHolderName`, `CardNumber`, `SecurityCode`, `ExpiryDate`) VALUES
(1, 'J TRAN', '4547873423834536', '[C@9a6a0f8', '2/19'),
(2, 'E SHERZAD', '4547239423942763', '[C@1548e15', '2/18');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`ID` int(11) NOT NULL,
  `VIPMembership_ID` int(11) DEFAULT NULL,
  `FirstName` varchar(30) COLLATE utf8_bin NOT NULL,
  `Surname` varchar(30) COLLATE utf8_bin NOT NULL,
  `EmailAddress` varchar(200) COLLATE utf8_bin NOT NULL,
  `CustomerPassword` varchar(30) COLLATE utf8_bin NOT NULL,
  `PhoneNumber` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `DateRegistered` varchar(10) COLLATE utf8_bin NOT NULL,
  `IsLogged` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID`, `VIPMembership_ID`, `FirstName`, `Surname`, `EmailAddress`, `CustomerPassword`, `PhoneNumber`, `DateRegistered`, `IsLogged`) VALUES
(1, NULL, 'Jackie', 'Tran', 'jackie@hotmail.com', '123', '', '2015/03/19', 0),
(2, NULL, 'Ehsan', 'Sherzad', 'ehsan@hotmail.com', '123', '', '2015/03/19', 0),
(3, NULL, 'Geervesh', 'Peenith', 'geervesh@hotmail.com', '123', '', '2015/03/19', 0),
(4, NULL, 'Ramshad', 'Muhammad', 'ramshad@hotmail.com', '123', '', '2015/03/21', 0),
(5, NULL, 'Naveed', 'Shihab', 'navs64@gmail.com', '123', '07939200336', '2015/03/30', 0),
(6, NULL, 'Fella', 'A', 'fella@hotmail.com', '123', '', '2015/04/07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
`ID` int(11) NOT NULL,
  `Name` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `Description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Type` varchar(30) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ID`, `Name`, `Description`, `Price`, `Type`) VALUES
(1, 'Lemony radish & kennel salad', 'radish with squeezed lemon with side salad', 6.59, 'Breakfast'),
(4, 'The ultimate makeover: Full English breakfast', 'fried egg, two sausages, beans, hash brown, two toasts and three slices of bacon ', 13, 'Breakfast'),
(5, 'Cinnamon buckwheat pancakes with cherries', 'three pancakes with cherries and whip cream', 7.2, 'Breakfast'),
(6, 'Rye bread with almond butter & pink grapefruit segments', 'two rye bread with almond butter with quarter grapefruit', 4.89, 'Breakfast'),
(7, 'Smoky rashers & tomatoes on toast', 'bacon rashers with tomatoes on toast', 4.89, 'Breakfast'),
(8, 'Cinnamon pancakes with compote & maple syrup', 'three cinnamon pancakes covered in maple syrup and compote', 7.2, 'Breakfast'),
(9, 'Cheesy scrambled egg croissants', 'scrambled egg mixed with cheese with one croissants', 3.75, 'Breakfast'),
(10, 'Mini prawn & sweetcorn cakes', 'mini prawns with mushy sweetcorn cake', 4.8, 'Lunch Starter'),
(11, 'Pea & savory soup', 'bowl of soup with peas and onions and chopped savory', 3.5, 'Lunch Starter'),
(12, 'Beetroot, goat''s cheese & anchovy salad', 'sliced beetroot with goat''s cheese and salad on the side', 4.59, 'Lunch Starter'),
(13, 'One-pan duck with savoy cabbage', 'delicious duck breasts with cabbage and potatoes', 9.89, 'Lunch Main'),
(14, 'Pan-fried salmon', 'salmon with with watercress, polenta croutons & capers ', 10.59, 'Lunch Main'),
(15, 'Slow-roast pork belly with celeriac & pear mash', 'prok belly, celeriac and mashed pear', 9.75, 'Lunch Main'),
(16, 'Peach Melba Trifle', 'peach trifle with vanilla custard and double cream', 4.3, 'Lunch Dessert'),
(17, 'Blueberry & lime cheesecake', 'cheesecake with blueberry and lime', 4.97, 'Lunch Dessert'),
(25, 'Dippy eggs with Marmite soldiers ', 'egg, marmite', 5.5, 'Breakfast'),
(26, 'Breakfast tea', 'tea, sugar, milk', 1.3, 'Breakfast Drink'),
(27, 'Latte/cappuccino', NULL, 2.5, 'Breakfast Drink'),
(28, 'Flat White', NULL, 2.2, 'Breakfast Drink'),
(29, 'Mocha', NULL, 3, 'Breakfast Drink'),
(30, 'Espresso', NULL, 1.75, 'Breakfast Drink'),
(31, 'Hot Chocolate', NULL, 1.75, 'Breakfast Drink'),
(32, 'Spring Water', NULL, 0.85, 'Breakfast Drink'),
(33, 'Sparkling Water', NULL, 1.1, 'Breakfast Drink'),
(34, 'Orange Juice', NULL, 2.5, 'Breakfast Drink'),
(36, 'Apple Juice', NULL, 2.5, 'Breakfast Drink'),
(37, 'Carrot Juice ', NULL, 3, 'Breakfast Drink'),
(38, 'Warm salad of asparagus, bacon, duck egg & hazelnuts', NULL, 6.95, 'Lunch Starter'),
(39, 'Poule au pot with stuffing balls & garlic cream', 'garlic, chicken, carrots, potatoes ', 8.2, 'Lunch Main'),
(40, 'Squash, ricotta, & sage pasta bake', 'squash, ricotta, sage leaves,', 8.45, 'Lunch Main'),
(41, 'Dark Chocolate Brownie Sundae', 'Dark Chocolate Brownie, vanilla Ice cream', 5, 'Lunch Dessert'),
(42, 'Red Velvet Cake', NULL, 5, 'Lunch Dessert'),
(43, 'Tomato & Mushroom Soup', 'Tomato, Mushroom', 3.75, 'Dinner Starter'),
(44, 'Crisp lobster croquettes roasted pepper', NULL, 8.5, 'Dinner Starter'),
(45, 'Scottish salmon, scallion and apple ceviche popped rice and lemon', 'scottish salmon, scallion, rice and apple ceviche', 6.5, 'Dinner Starter'),
(46, 'Braised chicken wings', 'chicken wings, five spice, honey, lavender', 5.2, 'Dinner Starter'),
(47, 'Cheeseburger', 'Smoked Cheddar, gherkins, with chips on the side', 15, 'Dinner Main'),
(48, 'Roasted Pork Loin', ' Roasted pork loin, prunes, salk baked potatoes, grilled spring onions, marjoram', 17, 'Dinner Main'),
(49, 'Thyme & Garlic lamb', 'Lamb steaks, thyme and garlic', 17, 'Dinner Main'),
(50, 'The Fish Dish', 'Roasted sea bass on fried artichokes and crab', 15, 'Dinner Main'),
(51, 'Smoked haddock kedegeree', 'smoked haddock, soft boiled egg, pea shoots', 14, 'Dinner Main'),
(52, 'Toffee apple', 'Toffee apple pecan strung, clotted cream', 5.85, 'Dinner Dessert'),
(53, 'Almond Merringue', 'Raspberries, almond cream, meringue, and pistachios', 5.75, 'Dinner Dessert'),
(54, 'soufflé', 'Peach soufflé raspberry ripple ice cream', 6.2, 'Dinner Dessert'),
(55, 'Tea', 'black tea, sugar, milk', 1.3, 'Drinks'),
(56, 'Mint Tea', NULL, 1.75, 'Drinks'),
(57, 'Latte/cappuccino', NULL, 2.5, 'Drinks'),
(58, 'Flat White', NULL, 2.2, 'Drinks'),
(59, 'Mocha', NULL, 3, 'Drinks'),
(60, 'Espresso', NULL, 1.75, 'Drinks'),
(61, 'Hot Chocolate', NULL, 3.4, 'Drinks'),
(62, 'Spring Water', NULL, 0.85, 'Drinks'),
(63, 'Orange Juice', NULL, 2.5, 'Drinks'),
(64, 'Carrot Juice', NULL, 3, 'Drinks'),
(65, 'Coca-Cola', NULL, 2.95, 'Drinks'),
(66, 'Fanta', NULL, 2.95, 'Drinks'),
(67, 'Lemonade', NULL, 2.45, 'Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `itemorder`
--

CREATE TABLE IF NOT EXISTS `itemorder` (
`Order_ID` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `OrderDate` date NOT NULL,
  `OrderTime` time NOT NULL,
  `OrderPriority` tinyint(1) NOT NULL,
  `Staff_ID` int(11) DEFAULT NULL,
  `OrderStatus` varchar(30) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `itemorder`
--

INSERT INTO `itemorder` (`Order_ID`, `Customer_ID`, `OrderDate`, `OrderTime`, `OrderPriority`, `Staff_ID`, `OrderStatus`) VALUES
(1, 1, '2015-04-07', '21:05:10', 1, NULL, 'pending'),
(2, 2, '2015-04-07', '22:01:34', 1, NULL, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
`ID` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `Amount` float DEFAULT NULL,
  `PaymentDate` varchar(30) COLLATE utf8_bin NOT NULL,
  `PaymentTime` varchar(30) COLLATE utf8_bin NOT NULL,
  `ItemOrder_ID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`ID`, `Customer_ID`, `Amount`, `PaymentDate`, `PaymentTime`, `ItemOrder_ID`) VALUES
(1, 1, 13.65, '2015-04-07', '21:05:10', 1),
(2, 2, 6.97, '2015-04-07', '22:01:34', 2);

-- --------------------------------------------------------

--
-- Table structure for table `refund`
--

CREATE TABLE IF NOT EXISTS `refund` (
`ID` int(11) NOT NULL,
  `ItemOrder_ID` int(11) NOT NULL,
  `OrderDate` date NOT NULL,
  `OrderTime` time NOT NULL,
  `Amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
`ID` int(11) NOT NULL,
  `FirstName` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `Surname` varchar(30) COLLATE utf8_bin NOT NULL,
  `EmailAddress` varchar(30) COLLATE utf8_bin NOT NULL,
  `StaffPassword` varchar(30) COLLATE utf8_bin NOT NULL,
  `Role` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `IsLogged` tinyint(1) DEFAULT NULL,
  `DateRegistered` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`ID`, `FirstName`, `Surname`, `EmailAddress`, `StaffPassword`, `Role`, `IsLogged`, `DateRegistered`) VALUES
(1, 'Harry', 'White', 'Harry.White@gmail.com', 'harry123', 'Employee', 0, ''),
(2, 'Daniel', 'Willbury', 'D.willbury@hotmail.com', 'daniel123', 'Manager', 0, ''),
(3, 'Matthew', 'Shankard', 'Shankardm@hotmail.com', 'mshankard1', 'Employee', 0, ''),
(4, 'David', 'Neko', 'neko@hotmail.com', '123', 'Owner', 0, ''),
(5, 'Jigar', 'Polra', 'jigar@hotmail.com', '123', 'Employee', 0, '2015/04/03');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
`ID` int(11) NOT NULL,
  `Name` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`ID`, `Name`, `Quantity`) VALUES
(3, 'Bread Roll', 10),
(4, 'Ciabatta', 10),
(5, 'Salmon', 10),
(6, 'Mackerel', 10),
(7, 'Crab', 10),
(8, 'King Prawn', 10),
(9, 'Lobster', 10),
(10, 'Beef', 10),
(11, 'Chicken', 10),
(12, 'Turkey', 10),
(13, 'Turkey', 10),
(14, 'Pork Belly', 10),
(15, 'Pork Sausage', 10),
(16, 'Duck Meat', 10),
(17, 'Bacon', 10),
(18, 'Mushrooms', 10),
(19, 'Rocket', 10),
(20, 'Fennel', 10),
(21, 'Carrot', 10),
(22, 'Spring Onion', 10),
(23, 'Onion', 10),
(24, 'Apple', 10),
(25, 'Orange', 10),
(26, 'Strawberry', 10),
(27, 'Peach', 10),
(28, 'Milk', 10),
(29, 'Mozarella Cheese', 10),
(30, 'Goat''s Cheese', 10),
(31, 'Yogurt', 10),
(32, 'Coke', 10),
(33, 'Diet Coke', 10),
(34, 'Fanta', 10),
(35, 'Sprite', 10),
(36, 'Lemonade', 10),
(37, 'Sparkling Water', 10),
(38, 'Spring Water', 10),
(39, 'Feta Cheese', 10),
(40, 'Cheddar Cheese', 10),
(41, 'Cucumber', 10),
(43, 'Bagel', 10);

-- --------------------------------------------------------

--
-- Table structure for table `vipmembership`
--

CREATE TABLE IF NOT EXISTS `vipmembership` (
`ID` int(11) NOT NULL,
  `MembeshipStatus` varchar(30) COLLATE utf8_bin NOT NULL,
  `CurrentSpending` double DEFAULT NULL,
  `Customer_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cardpayment`
--
ALTER TABLE `cardpayment`
 ADD KEY `Payment_ID` (`Payment_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`ID`), ADD KEY `VIPMembership_ID` (`VIPMembership_ID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `itemorder`
--
ALTER TABLE `itemorder`
 ADD PRIMARY KEY (`Order_ID`), ADD KEY `Customer_ID` (`Customer_ID`), ADD KEY `Staff_ID` (`Staff_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
 ADD PRIMARY KEY (`ID`), ADD KEY `Customer_ID` (`Customer_ID`), ADD KEY `ItemOrder_ID` (`ItemOrder_ID`);

--
-- Indexes for table `refund`
--
ALTER TABLE `refund`
 ADD PRIMARY KEY (`ID`), ADD KEY `ItemOrder_ID` (`ItemOrder_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vipmembership`
--
ALTER TABLE `vipmembership`
 ADD PRIMARY KEY (`ID`), ADD KEY `Customer_ID` (`Customer_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `itemorder`
--
ALTER TABLE `itemorder`
MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `refund`
--
ALTER TABLE `refund`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `vipmembership`
--
ALTER TABLE `vipmembership`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cardpayment`
--
ALTER TABLE `cardpayment`
ADD CONSTRAINT `cardpayment_ibfk_1` FOREIGN KEY (`Payment_ID`) REFERENCES `payment` (`ID`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`VIPMembership_ID`) REFERENCES `vipmembership` (`ID`);

--
-- Constraints for table `itemorder`
--
ALTER TABLE `itemorder`
ADD CONSTRAINT `itemorder_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`ID`) ON DELETE CASCADE,
ADD CONSTRAINT `itemorder_ibfk_2` FOREIGN KEY (`Staff_ID`) REFERENCES `staff` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`ID`),
ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`ItemOrder_ID`) REFERENCES `itemorder` (`Order_ID`);

--
-- Constraints for table `refund`
--
ALTER TABLE `refund`
ADD CONSTRAINT `refund_ibfk_1` FOREIGN KEY (`ItemOrder_ID`) REFERENCES `itemorder` (`Order_ID`);

--
-- Constraints for table `vipmembership`
--
ALTER TABLE `vipmembership`
ADD CONSTRAINT `vipmembership_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
