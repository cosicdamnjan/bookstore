-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 12:21 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `www_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text COLLATE latin1_general_ci DEFAULT NULL,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`) VALUES
('054156496', 'Pride and Prejudice', 'Jane Austen', 'knjiga-Pride-and-Prejudice.jpg', 'One of the most famous novels of all time, Pride And Prejudice details the courtship of two opposed characters in a world where manners and courtesy are of the utmost importance.', '9.90', 1),
('10541054', 'The Book Thief', 'Markus Zusak', 'knjiga-The-Book-Thief.jpg', 'Set in Germany during 1939, The Book Thief follows Liesel as she rescues books from the tyranny of Nazi rule. Meanwhile, her family has hidden a Jewish fighter in their basement and death looks down on the family, narrating our tale. Experience bravery that is rarely found in the world, and friendship that is formed in the most unlikely of situations.', '15.00', 5),
('1114325234', 'Song of Solomon', 'Toni Morrison', 'knjiga-Song of Solomon.jpg', 'One must always read a novel by this Nobel Prize winning author.', '16.00', 5),
('150856321', 'Death and the Dervish', 'Meša Selimovi?', 'knjiga-Death-and-the-Dervish.jpg', 'Born in Tuzla (Bosnia and Herzegovina), Meša Sealimovi? was nonetheless quick to identify as a Serb and commit his work to the annals of Serbian literature. His best known work is undoubtedly Death and the Dervish, a 1966 novel about a man coming to terms with the seemingly random arrest of his brother. Questions of life, power, and justice torment the religious everyman in the tale, which was made into a feature length film in 1974.', '10.90', 2),
('346880675', 'The Houses of Belgrade', 'Borislav Peki?', 'knjiga-The-Houses-of-Belgrade.jpg', 'Borislav Peki?’s place in history was assured long before he helped establish the Democratic Party in Serbia. The Houses of Belgrade was first published in 1970, and it looks at unrest throughout various points in 20th century Serbia and the way all of the riots are linked. A Belgrade house builder plays the primary role, a man whose deep love for the houses of the city is all that stands between him and insanity.', '10.00', 4),
('357656765', 'The Bridge on the Drina', 'Ivo Andri?', 'knjiga-The-Bridge-on-the-Drina.jpg', 'The Bridge on the Drina isn’t just the Big Daddy of Serbian literature, it holds that position when it comes to all fiction from this part of the world, full stop. Andri? was the only Yugoslav to win the Nobel Prize in Literature, and it was his iconic telling of life in Ottoman Bosnia that brought the prize to his home in Belgrade. If you only read one piece of fiction before visiting the Balkans, you have to make a pretty compelling argument for it not to be The Bridge on the Drina.', '25.00', 1),
('41296965496', 'The Hobbit', 'J.R.R. Tolkien', 'knjiga-The-Hobbit.jpg', 'Although the movies are inexplicably long, The Hobbit was originally written as a short children’s book. Meet your favourite characters for the first time as the unforgettable Bilbo Baggins traverses the harsh landscapes of Middle Earth to challenge a dragon.', '15.00', 4),
('43453645645654', 'The Lord of the Rings', 'J.R.R. Tolkien', 'knjiga-The-Lord-of-the-Rings.jpg', 'Middle Earth is a wonderful, expansive fantasy world filled with turmoil, heroes, evil and innocence. Although our protagonist Frodo Baggins’ quest seems impossible to complete, this trilogy is a tale of triumph in the most impossible circumstances.', '19.90', 6),
('4545445545435', 'Frankenstein', 'Mary Shelley', 'knjiga-Frankenstein.jpg', 'Written when Mary Shelley was just 18 years old, but don’t let that depress you. Frankenstein is a Gothic masterpiece with entertaining set pieces aplenty.', '18.50', 3),
('54110005645', 'The Diary Of A Young Girl', 'Anne Frank', 'knjiga-The-Diary-Of-A-Young-Girl.jpg', 'Unforgettable and deeply influential, Anne Frank’s diary is a raw account of a young girl’s life as she hides from the Nazis. Despite her circumstances, Anne believes that people are still good at heart and that the world is full of beauty: she will change your life.', '18.90', 2),
('5858', '1984', 'George Orwell', 'knjiga-1984.jpg', 'Although 1984 has passed us by, George Orwell’s dystopian, totalitarian world of control, fear and lies has never been more relevant. Delve into the life of Winston Smith as he struggles with his developing human nature in a world where individuality, freewill and love are forbidden.', '17.50', 4),
('658768576', 'War and Peace', 'Leo Tolstoy', 'knjiga-War and Peace.jpg', 'A legendary masterpiece, this book is synonymous with difficult reading, so why not challenge yourshelf.', '20.80', 6),
('66184984', 'The Great Gatsby', 'F. Scott Fitzgerald', 'knjiga-The-Great-Gatsby.jpg', 'Published in 1925, Fitzgerald’s The Great Gatsby explores the decadence of the Jazz Age, and one man’s introduction into a world where even those with the most indulgent lives cannot earn love.', '24.95', 2),
('806596345', 'Business Adventures', 'John Brooks', 'knjiga-Business-Adventures.jpg', 'Berkshire Hathaway CEO Buffett shared this book with Microsoft co-founder Gates in 1991, and the book quickly became Gates’s go-to business book. “Today, more than two decades after Warren lent it to me — and more than four decades after it was first published — Business Adventures remains the best business book I’ve ever read,” Gates writes on GatesNotes.com. “Brooks’s deeper insights about business are just as relevant today as they were back then.”', '30.00', 3),
('978-1-0045-075-6', 'To Kill a Mockingbird', 'Harper Lee', 'knjiga-ubiti-pticu-rugalicu.jpg', 'Published in 1960, this timeless classic explores human behaviour and the collective conscience of The Deep South in the early 20th century. Humour entwines the delicate strands of prejudice, hatred, hypocrisy, love and innocence to create one of the best novels ever written.', '15.90', 3),
('978-1-484216-40-8', 'Android Studio New Media Fundamentals', 'Wallace Jackson', 'android_studio.jpg', 'Android Studio New Media Fundamentals is a new media primer covering concepts central to multimedia production for Android including digital imagery, digital audio, digital video, digital illustration and 3D, using open source software packages such as GIMP, Audacity, Blender, and Inkscape. These professional software packages are used for this book because they are free for commercial use. The book builds on the foundational concepts of raster, vector, and waveform (audio), and gets more advanced as chapters progress, covering what new media assets are best for use with Android Studio as well as key factors regarding the data footprint optimization work process and why new media content and new media data optimization is so important.', '20.00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(1, 'a', 'a', 'a', 'a', 'a'),
(2, 'b', 'b', 'b', 'b', 'b'),
(3, 'test', '123 test', '12121', 'test', 'test'),
(4, 'fdsfds', 'fdsfdsfsd', 'fdsfsdf', 'dsfdsfds', 'fdsfds'),
(5, 'Damnjan Cosic', 'Vojvode Stepe, 206', 'Beograd', '11042', 'Serbia');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(1, 1, '60.00', '2015-12-03 13:30:12', 'a', 'a', 'a', 'a', 'a'),
(2, 2, '60.00', '2015-12-03 13:31:12', 'b', 'b', 'b', 'b', 'b'),
(3, 3, '20.00', '2015-12-03 19:34:21', 'test', '123 test', '12121', 'test', 'test'),
(4, 1, '20.00', '2015-12-04 10:19:14', 'a', 'a', 'a', 'a', 'a'),
(5, 4, '40.00', '2021-06-13 20:05:55', 'fdsfds', 'fdsfdsfsd', 'fdsfsdf', 'dsfdsfds', 'fdsfds'),
(6, 5, '20.00', '2021-06-21 13:09:01', 'Damnjan Cosic', 'Vojvode Stepe, 206', 'Beograd', '11042', 'Serbia'),
(7, 5, '19.90', '2021-06-21 22:16:38', 'Damnjan Cosic', 'Vojvode Stepe, 206', 'Beograd', '11042', 'Serbia'),
(8, 5, '18.50', '2021-06-21 22:17:02', 'Damnjan Cosic', 'Vojvode Stepe, 206', 'Beograd', '11042', 'Serbia');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', '20.00', 1),
(1, '978-1-44937-019-0', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(2, '978-1-118-94924-5', '20.00', 1),
(2, '978-1-44937-019-0', '20.00', 1),
(2, '978-1-49192-706-9', '20.00', 1),
(3, '978-0-321-94786-4', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(5, '978-0-321-94786-4', '20.00', 1),
(5, '978-1-1180-2669-4', '20.00', 1),
(6, '978-1-484217-26-9', '20.00', 1),
(6, '43453645645654', '19.90', 1),
(6, '4545445545435', '18.50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Wrox'),
(2, 'Wiley'),
(3, 'O\'Reilly Media'),
(4, 'Apress'),
(5, 'Packt Publishing'),
(6, 'Addison-Wesley');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
