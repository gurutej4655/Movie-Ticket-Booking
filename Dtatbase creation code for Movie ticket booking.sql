-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Feb 15, 2023 at 05:47 AM
-- Server version: 5.0.41
-- PHP Version: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `mtb`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `bookings`
-- 

CREATE TABLE `bookings` (
  `bookingId` int(20) NOT NULL,
  `movieId` varchar(10) NOT NULL,
  `theaterId` int(10) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `numberOfSeats` varchar(10) NOT NULL,
  `date` varchar(10) NOT NULL,
  `price` varchar(10) NOT NULL,
  PRIMARY KEY  (`bookingId`),
  KEY `movieId` (`movieId`,`theaterId`,`userName`),
  KEY `theaterId` (`theaterId`),
  KEY `userName` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `bookings`
-- 

INSERT INTO `bookings` (`bookingId`, `movieId`, `theaterId`, `userName`, `numberOfSeats`, `date`, `price`) VALUES 
(5, '01', 2, 'om123', '3', '2022-12-16', '1500'),
(6, '03', 6, 'akash123', '2', '2022-12-14', '400'),
(7, '04', 5, 'akash123', '5', '2022-12-10', '1500'),
(8, '03', 8, 'akash123', '4', '2022-12-10', '1000'),
(9, '03', 6, 'akash123', '4', '2022-12-21', '800'),
(10, '03', 6, 'akash123', '2', '2022-12-10', '400'),
(11, '03', 6, 'om123', '3', '2023-01-04', '600');

-- --------------------------------------------------------

-- 
-- Table structure for table `city`
-- 

CREATE TABLE `city` (
  `name` varchar(20) NOT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `city`
-- 

INSERT INTO `city` (`name`) VALUES 
('Belgavi'),
('Dharwad'),
('Gulbarga'),
('Honnavar'),
('Hubli'),
('Kumta'),
('Sirsi');

-- --------------------------------------------------------

-- 
-- Table structure for table `customer`
-- 

CREATE TABLE `customer` (
  `userFullName` varchar(20) NOT NULL,
  `userMail` varchar(20) NOT NULL,
  `userAge` varchar(20) NOT NULL,
  `userPassword` varchar(20) NOT NULL,
  `userPhoneNumber` varchar(20) NOT NULL,
  `userName` varchar(20) NOT NULL,
  PRIMARY KEY  (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `customer`
-- 

INSERT INTO `customer` (`userFullName`, `userMail`, `userAge`, `userPassword`, `userPhoneNumber`, `userName`) VALUES 
('Akash Dalawayi', 'aka@gmail.com', '20', '1234', '9878665643', 'akash123'),
('gurutej', 'guruT@yahoo.com', '34', '12345', '9878665643', 'guru'),
('omprabhu', 'om@gmail.com', '12', '1234', '9606112474', 'om123'),
('Raghvendra', 'Ragu@gmail.com', '23', '1234', '86608374321', 'Ragu123');

-- --------------------------------------------------------

-- 
-- Table structure for table `movies`
-- 

CREATE TABLE `movies` (
  `movieId` varchar(10) NOT NULL,
  `movieName` varchar(20) NOT NULL,
  `movieImageLink` varchar(1000) NOT NULL,
  `movieYear` varchar(6) NOT NULL,
  `movieDesc` varchar(1200) NOT NULL,
  `movieTrailerLink` varchar(300) NOT NULL,
  `movieBackgroudImage` varchar(300) NOT NULL,
  `movieGenere` varchar(3) NOT NULL,
  PRIMARY KEY  (`movieId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `movies`
-- 

INSERT INTO `movies` (`movieId`, `movieName`, `movieImageLink`, `movieYear`, `movieDesc`, `movieTrailerLink`, `movieBackgroudImage`, `movieGenere`) VALUES 
('01', 'Drishyam 2', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQICBWG1KvK71q503QeKg1W7Nx_SHfcDO6hCWpDdUCFpT_76NpZ', '2022', 'Drishyam 2 (transl.?Visual 2) is a 2022 Indian Hindi-language crime thriller film based on the 2021 Malayalam film of th', 'https://youtu.be/cxA2y9Tgl7o', 'https://static-koimoi.akamaized.net/wp-content/new-galleries/2022/11/drishyam-2-movie-review-02.jpg', 'T'),
('02', 'blackPanther', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSzNzI5w3iKM-KdasCDvlOEUgD2ojlf7IW5b-e3tqFmhW2JRSCz', '2022', 'Queen Ramonda, Shuri, M''Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in t', 'https://youtu.be/_Z3QKkl1WyM', 'https://www.koimoi.com/wp-content/new-galleries/2022/11/black-panther-wakanda-forever-box-office-day-6-early-trends-it-continues-to-stay-consistent-but-is-it-enough-read-on-001.jpg', 'A'),
('03', 'Kantara', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSM83aeidFD0qdNTQY7P9s8kjRKn1ziSiNLI_tfKV8QAswYWerd', '2022', 'Kantara (transl.?Mystical Forest) is a 2022 Indian Kannada-language action drama film[3] written and directed by Rishab ', 'https://youtu.be/MTECjlKUgEE', 'https://www.koimoi.com/wp-content/new-galleries/2022/10/hombale-films-kantara-sees-a-huge-jump-in-the-box-office-on-monday-due-to-a-drop-in-ticket-prices-001.jpg', 'T'),
('04', 'Gandhdagudi', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS9MpNYStdcsjueINuxAJcnOzA6GrKXHh71GZqNWGjATmd_JDa5', '2022', 'Mega superstar Dr. Puneeth Rajkumar teams up with passionate wildlife filmmaker Amoghavarsha to explore the marvels of h', 'https://youtu.be/UdPisHeGMQM', 'https://d2vbj8g7upsspg.cloudfront.net/fit-in/1280x960/filters:format(webp)/newsdrum-in/media/post_banners/NBofUzbTCAUvyrNLwKKB.jpg', 'AD'),
('05', 'Bhramstra', 'https://upload.wikimedia.org/wikipedia/en/thumb/4/40/Brahmastra_Teaser.jpeg/220px-Brahmastra_Teaser.jpeg', '2021', 'A young man on the brink of falling in love gets his world turned upside down when he discovers he has the power to cont', 'https://youtu.be/BUjXzrgntcY', 'https://indtoday.com/wp-content/uploads/2022/06/Brahmastra-trailer.jpg', 'A'),
('06', 'Black Adam', 'https://res.cloudinary.com/jerrick/image/upload/f_jpg,fl_progressive,q_auto,w_1024/6352db8ea7c51b001c116672.jpg', '2022', 'In ancient Kahndaq, Teth Adam was bestowed the almighty powers of the gods. After using these powers for vengeance, he w', 'https://youtu.be/mkomfZHG5q4', 'https://i0.wp.com/thefutureoftheforce.com/wp-content/uploads/2022/09/Black-Adam-Heroes-Poster-Header.jpg?fit=1932%2C1092&ssl=1', 'A'),
('07', 'Bhediya', 'https://content.jdmagicbox.com/movies/centralized_100451072022_11_18_07_39_57_220.jpg', '2022', 'Bhaskar finds himself changing after being bitten by a wolf in the forests of Arunachal. While Bhaskar begins to transfo', 'https://youtu.be/d_BPlvbw_ok', 'https://twistarticle.com/wp-content/uploads/2021/11/Varun-Dhawan-Turn-Werewolf-Look-for-Bhediya.jpg', 'A'),
('08', 'Attack', 'https://static.toiimg.com/thumb/msid-70225539,width-219,height-317,imgsize-15670/70225539.jpg', '2022', 'A terrorist attack renders Arjun paralysed and distraught with the thoughts of his dead lover. So, when the attacker returns, Arjun participates in an experiment to seek revenge.', 'https://youtu.be/AFoflf-hass', 'https://assets-in.bmscdn.com/iedb/movies/images/mobile/listing/xxlarge/attack--part-1-et00107994-25-03-2022-11-48-08.jpg', 'A'),
('09', 'Jurassic World:Domin', 'https://popcornusa.s3.amazonaws.com/movies/650/10044-38759-Jurassicjpg', '2022', 'Two worlds collide as the epic saga that began with Jurassic Park comes full circle in Jurassic World Dominion. Four yea', 'https://youtu.be/fb5ELWi-ekk', 'http://cdn.shopify.com/s/files/1/0037/8008/3782/products/IMG_0810.jpg?v=1652535308', 'T'),
('10', 'Avatar 2', 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:oi-discovery-catalog@@icons@@like_202006280402.png,ox-24,oy-617,ow-29:ote-Mjc5LjRLIGxpa2Vz,ots-29,otc-FFFFFF,oy-612,ox-70:q-80/et00037264-bvuyspjwsc-portrait.jpg', '2023', 'From Academy Award® winning director James Cameron comes Avatar, the story of an ex-Marine who finds himself thrust into', 'https://youtu.be/o5F8MOz_IDw', 'https://bangladeshpost.net/webroot/uploads/featureimage/2022-03/621f831aedb37.jpg', 'T'),
('11', 'BlackFriday', 'https://images.fandango.com/ImageRenderer/400/0/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/226023/Black-Friday_Theatrical-Poster.jpg', '2021', 'On Thanksgiving night, a group of disgruntled toy store employees begrudgingly arrive for work to open the store at midn', 'https://youtu.be/M3H5Ye2BvUk', 'https://cafecomnerd.com.br/wp-content/uploads/2021/11/Black-Friday-com-Bruce-Campbell-Um-grupo-de-empregados-deve-proteger-se-de-compradores-infectados-por-parasitas.jpg', ''),
('12', 'Thor : Love of thund', 'https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/thor-love-and-thunder-et00302403-24-05-2022-12-00-43.jpg', '2021', 'Thor embarks on a journey unlike anything he''s ever faced -- a quest for inner peace. However, his retirement gets inter', 'https://youtu.be/Go8nTmfrQd8', 'https://images-na.ssl-images-amazon.com/images/S/pv-target-images/bcbd796abfa59e9749ad62b926369acedbd807f46adfc7a7ffa20d823df5dd2a._SX1080_.jpg', 'R'),
('13', 'Adhi purush', 'https://m.media-amazon.com/images/M/MV5BNmM5NzQ5ZWItYmU2MS00MzNmLWI5ZTEtMmYwYjViNjI3ZGQxXkEyXkFqcGdeQXVyMTE0MTY2Mzk2._V1_.jpg', '2022', 'Adipurush is an upcoming Indian epic Hindu mythological film based on Ramayana. The film is written and directed by Om R', 'https://youtu.be/jF5rJAXUY4A', 'https://images.indianexpress.com/2022/10/Adipurush-1200.jpg', 'A'),
('14', 'After Ever Happy', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS3pYk0JZT8QQ31ib0QiB-mfHfscyPPlYf8m-UY-cSj0W-Badhn', '2022', 'As a shocking truth about a couple''s families emerges, the two lovers discover they are not so different from each other. Tessa is no longer the sweet, simple girl she was when she met Hardin.', 'https://youtu.be/hLQ-5exgctI', 'https://static1.moviewebimages.com/wordpress/wp-content/uploads/2022/03/cover.jpg', 'R'),
('15', 'The Lost City', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQXIMgLLwjmhmTZIbMnn86CPbd0em0GW0GTEbnTonZBcvYppm5z', '2022', 'Reclusive author Loretta Sage writes about exotic places in her popular adventure novels that feature a handsome cover model named Alan. While on tour promoting her new book with Alan, Loretta gets kidnapped by an eccentric billionaire who hopes she can lead him to an ancient city''s lost treasure from her latest story. Determined to prove he can be a hero in real life and not just on the pages of her books, Alan sets off to rescue her.', 'https://youtu.be/nfKO9rYDmE8', 'https://static.digit.in/OTT/v2/images/tr:w-1200/the-lost-city-of-d-763835.jpg', 'R'),
('16', 'The In Between', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT5Q0kLx_BPDlNZhS9Djz7kE5BmCWuB7mFAWBbOd6V8A6getBu7', '2022', 'Tessa doesn''t believe she deserves her own love story until she meets Skylar, a true romantic. When a car accident kills Skylar, Tessa searches for answers and thinks that Skylar is trying to connect with her from the afterworld. Tessa tries to contact Skylar one last time so their love story can have the ending it deserves.', 'https://youtu.be/XpRmKWeLpjc', 'https://www.soundtrackfind.com/wp-content/uploads/2022/04/the-in-between-soundtrack.webp', 'R'),
('17', 'Top Gun', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRLeDZOOOe39EylZoDSJteMkbX8lqS4JT-SvEZ8W2M6s1DRBZMd', '2022', 'After more than 30 years of service as one of the Navy''s top aviators, Pete "Maverick" Mitchell is where he belongs, pushing the envelope as a courageous test pilot and dodging the advancement in rank that would ground him. Training a detachment of graduates for a special assignment, Maverick must confront the ghosts of his past and his deepest fears, culminating in a mission that demands the ultimate sacrifice from those who choose to fly it.', 'https://youtu.be/g4U4BQW9OEk', 'https://www.koimoi.com/wp-content/new-galleries/2022/06/box-office-top-gun-maverick-has-a-fair-second-week-still-has-a-shot-at-30-crores-lifetime-in-india-001.jpg', 'A'),
('18', 'Moonfall', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS7C2bzVPvk-gzYLDuz3Yvo0UjMZ5R6C02G7R2s9NFg0mWU4wpo', '2021', 'A mysterious force throws the moon out of orbit and hurtles it on a collision course toward earth. However, three astronauts are sent on a mission to discern the issue and prevent the loss of life.', 'https://youtu.be/ivIwdQBlS10', 'https://wallpapercave.com/wp/wp10569247.jpg', 'AD');

-- --------------------------------------------------------

-- 
-- Table structure for table `theaterowner`
-- 

CREATE TABLE `theaterowner` (
  `ownerUserName` varchar(20) NOT NULL,
  `ownerPassword` varchar(20) NOT NULL,
  `ownerName` varchar(20) NOT NULL,
  `ownerPhoneNumber` varchar(12) NOT NULL,
  `ownerGmail` varchar(30) NOT NULL,
  PRIMARY KEY  (`ownerUserName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `theaterowner`
-- 

INSERT INTO `theaterowner` (`ownerUserName`, `ownerPassword`, `ownerName`, `ownerPhoneNumber`, `ownerGmail`) VALUES 
('admin123', '1234', 'admin', '9898776754', 'admin@gmail.com'),
('om123', '1234', 'om', '9898665643', 'om@gmail.com'),
('ragu123', '1234', 'Raghavendra', '9898776754', 'ragu@gmail.com');

-- --------------------------------------------------------

-- 
-- Table structure for table `theaters`
-- 

CREATE TABLE `theaters` (
  `theaterId` int(10) NOT NULL,
  `theaterName` varchar(40) NOT NULL,
  `theaterCity` varchar(20) NOT NULL,
  `threaterAdress` varchar(80) NOT NULL,
  `ownerUserName` varchar(20) NOT NULL,
  `movieId` varchar(10) NOT NULL,
  `theaterSeats` varchar(4) NOT NULL,
  `price` varchar(5) NOT NULL,
  PRIMARY KEY  (`theaterId`),
  KEY `ownerUserName` (`ownerUserName`),
  KEY `movieId` (`movieId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `theaters`
-- 

INSERT INTO `theaters` (`theaterId`, `theaterName`, `theaterCity`, `threaterAdress`, `ownerUserName`, `movieId`, `theaterSeats`, `price`) VALUES 
(2, 'om theater', 'Hubli', 'vidya nnagar', 'om123', '01', '1500', '500'),
(3, 'Nataraj Theater', 'Sirsi', 'C P bazar, nataraj road', 'om123', '02', '500', '200'),
(4, 'Raghu Theater', 'Kumta', 'vidhynagar cross No 23', 'om123', '02', '250', '500'),
(5, 'Prime Theater', 'Hubli', 'CBT, Hubli ', 'ragu123', '04', '1000', '300'),
(6, 'Kishan Theater', 'Hubli', 'Navanagar, Hubli', 'ragu123', '05', '600', '200'),
(7, 'Karthik Theater', 'Dharwad', 'Gandhi nagar', 'ragu123', '03', '500', '250'),
(8, 'Ganesh Theater', 'Hubli', 'Durgad Bail', 'admin123', '02', '500', '250'),
(9, 'Modern Theater', 'Dharwad', 'Court Circle', 'admin123', '04', '600', '150'),
(10, 'Akash Theater', 'Sirsi', 'Shanti Nagar', 'admin123', '06', '400', '100'),
(11, 'sudha theater', 'Kumta', 'KHB colony', 'admin123', '03', '300', '150');

-- --------------------------------------------------------

-- 
-- Table structure for table `theatertiming`
-- 

CREATE TABLE `theatertiming` (
  `theaterId` int(10) NOT NULL,
  `time` varchar(10) NOT NULL,
  `currentSeats` varchar(5) NOT NULL,
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `theatertiming`
-- 

INSERT INTO `theatertiming` (`theaterId`, `time`, `currentSeats`) VALUES 
(2, '10:00AM', '1500'),
(2, '1:00PM', '1500'),
(2, '5:00PM', '300'),
(3, '10:00AM', '500'),
(3, '5:00PM', '498'),
(3, '2:00PM', '500'),
(4, '10:00AM', '250'),
(4, '5:00PM', '250'),
(4, '2:00PM', '250'),
(5, '11:00AM', '1000'),
(5, '5:00PM', '1000'),
(5, '2:00PM', '995'),
(7, '11:00AM', '500'),
(7, '1:00PM', '500'),
(7, '5:00PM', '500'),
(9, '6:00PM', '600'),
(9, '11:00AM', '600'),
(9, '3:00PM', '600'),
(10, '7:00PM', '400'),
(10, '11:00AM', '400'),
(10, '2:00PM', '400'),
(10, '5:00PM', '300'),
(10, '10:00AM', '300'),
(10, '2:00PM', '300'),
(11, '10:00AM', '300'),
(11, '2:00PM', '300'),
(11, '4:00PM', '300'),
(8, '2:00PM', '500'),
(8, '11:00AM', '500'),
(8, '4:00PM', '500'),
(6, '12:00PM', '600'),
(6, '8:00PM', '600');

-- --------------------------------------------------------

-- 
-- Table structure for table `timing`
-- 

CREATE TABLE `timing` (
  `time` varchar(10) NOT NULL,
  PRIMARY KEY  (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `timing`
-- 

INSERT INTO `timing` (`time`) VALUES 
('10:00AM'),
('11:00AM'),
('12:00PM'),
('1:00PM'),
('2:00PM'),
('3:00PM'),
('4:00PM'),
('5:00PM'),
('6:00PM'),
('7:00PM'),
('8:00PM'),
('9:00PM');

-- 
-- Constraints for dumped tables
-- 

-- 
-- Constraints for table `bookings`
-- 
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`movieId`) REFERENCES `movies` (`movieId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`userName`) REFERENCES `customer` (`userName`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `bookings_ibfk_4` FOREIGN KEY (`theaterId`) REFERENCES `theaters` (`theaterId`);

-- 
-- Constraints for table `theaters`
-- 
ALTER TABLE `theaters`
  ADD CONSTRAINT `theaters_ibfk_1` FOREIGN KEY (`ownerUserName`) REFERENCES `theaterowner` (`ownerUserName`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `theaters_ibfk_2` FOREIGN KEY (`movieId`) REFERENCES `movies` (`movieId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Constraints for table `theatertiming`
-- 
ALTER TABLE `theatertiming`
  ADD CONSTRAINT `theatertiming_ibfk_1` FOREIGN KEY (`time`) REFERENCES `timing` (`time`) ON DELETE NO ACTION ON UPDATE NO ACTION;
